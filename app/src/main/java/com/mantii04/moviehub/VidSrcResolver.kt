package com.mantii04.moviehub

import okhttp3.OkHttpClient
import okhttp3.Request
import org.json.JSONObject
import java.net.URLEncoder
import java.util.concurrent.Executors
import java.util.concurrent.TimeUnit

object VidSrcResolver {
    private val client = OkHttpClient.Builder()
        .connectTimeout(15, TimeUnit.SECONDS)
        .readTimeout(15, TimeUnit.SECONDS)
        .followRedirects(true)
        .build()
    private val executor = Executors.newSingleThreadExecutor()
    private const val UA = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36"

    fun resolve(
        tmdbId: Int,
        imdbId: String?,
        isTv: Boolean,
        season: Int?,
        episode: Int?,
        onResult: (StreamData?, String?) -> Unit
    ) {
        executor.execute {
            try {
                var finalImdbId = imdbId
                if (isTv && finalImdbId.isNullOrEmpty()) {
                    val tmdbUrl = "https://api.themoviedb.org/3/tv/$tmdbId/external_ids?api_key=49d5c25978104677e47887dce958c9c0"
                    val tr = client.newCall(Request.Builder().url(tmdbUrl).build()).execute()
                    finalImdbId = JSONObject(tr.body?.string() ?: "{}").optString("imdb_id")
                }

                val id = if (isTv && !finalImdbId.isNullOrEmpty()) finalImdbId else tmdbId.toString()
                val s = season ?: 1
                val e = episode ?: 1
                val embedUrl = if (isTv) {
                    "https://vidsrc.buzz/embed/tv/$id/$s/$e"
                } else {
                    "https://vidsrc.buzz/embed/movie/$id"
                }

                val r1 = client.newCall(
                    Request.Builder().url(embedUrl)
                        .header("User-Agent", UA)
                        .header("Accept", "text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,*/*;q=0.8")
                        .header("Accept-Language", "en-US,en;q=0.5")
                        .header("Sec-Fetch-Dest", "iframe")
                        .header("Sec-Fetch-Mode", "navigate")
                        .header("Sec-Fetch-Site", "cross-site")
                        .build()
                ).execute()
                
                val html = r1.body?.string() ?: throw Exception("Embed page empty")

                val qStart = html.indexOf("var Q = ")
                if (qStart == -1) throw Exception("Q not found (Len: ${html.length})")
                val qEnd = html.indexOf("};", qStart)
                if (qEnd == -1) throw Exception("Q end not found")
                
                val qStr = html.substring(qStart + 8, qEnd + 1)
                val qJson = JSONObject(qStr)

                val t = qJson.optString("t")
                val servers = qJson.optJSONObject("ssr")?.optJSONArray("servers")
                
                if (t.isEmpty() || servers == null || servers.length() == 0) {
                    throw Exception("No servers available for this title")
                }

                var bestUrl: String? = null
                var bestHeight = 0
                var lastError = "No streams"

                // Try each server and find the one with the highest resolution
                for (i in 0 until servers.length()) {
                    try {
                        val server = servers.getJSONObject(i)
                        val ref = server.optString("ref")
                        if (ref.isEmpty()) continue

                        val apiUrl = "https://vidsrc.buzz/pl/api.php?a=play" +
                                "&ref=${URLEncoder.encode(ref, "UTF-8")}" +
                                "&t=${URLEncoder.encode(t, "UTF-8")}"

                        val r2 = client.newCall(
                            Request.Builder().url(apiUrl)
                                .header("User-Agent", UA)
                                .header("Referer", embedUrl)
                                .header("Origin", "https://vidsrc.buzz")
                                .header("X-Requested-With", "XMLHttpRequest")
                                .header("Accept", "application/json, text/javascript, */*; q=0.01")
                                .build()
                        ).execute()

                        val body = r2.body?.string() ?: ""
                        val json = JSONObject(body)

                        if (json.has("url") && json.optString("type") == "hls") {
                            val streamPath = json.getString("url")
                            val m3u8Url = "https://vidsrc.buzz$streamPath"
                            
                            // Fetch the m3u8 to check its resolution
                            val m3u8Resp = client.newCall(Request.Builder().url(m3u8Url).header("User-Agent", UA).build()).execute()
                            val m3u8Text = m3u8Resp.body?.string() ?: ""
                            
                            // Extract resolution (e.g., RESOLUTION=1920x1080)
                            val resRegex = Regex("""RESOLUTION=\d+x(\d+)""")
                            val heights = resRegex.findAll(m3u8Text).map { it.groupValues[1].toInt() }.toList()
                            val maxHeight = heights.maxOrNull() ?: 0

                            // If we find 1080p or higher, we can stop early. Otherwise, keep the best one found so far.
                            if (maxHeight > bestHeight || bestUrl == null) {
                                bestHeight = maxHeight
                                bestUrl = m3u8Url
                            }
                            
                            if (bestHeight >= 1080) {
                                break // Found 1080p, stop checking other servers
                            }
                        }
                    } catch (e: Exception) {
                        lastError = e.message ?: "server $i failed"
                    }
                }
                
                if (bestUrl != null) {
                    onResult(StreamData(bestUrl, emptyList(), "vidsrc"), null)
                } else {
                    onResult(null, lastError)
                }
            } catch (e: Exception) {
                onResult(null, e.message)
            }
        }
    }
}
