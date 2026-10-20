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
    
    // Full Chrome headers to bypass Cloudflare bot protection
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
                
                // Fallback: Fetch IMDB ID directly if it's missing
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

                // Fetch embed page with full browser headers
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

                // Extract var Q
                val qStart = html.indexOf("var Q = ")
                if (qStart == -1) {
                    // If Cloudflare blocked us, it returns a short HTML page.
                    throw Exception("Q not found (Len: ${html.length})")
                }
                val qEnd = html.indexOf("};", qStart)
                if (qEnd == -1) throw Exception("Q end not found")
                
                val qStr = html.substring(qStart + 8, qEnd + 1)
                val qJson = JSONObject(qStr)

                val t = qJson.optString("t")
                val servers = qJson.optJSONObject("ssr")?.optJSONArray("servers")
                
                if (t.isEmpty() || servers == null || servers.length() == 0) {
                    throw Exception("No servers available for this title")
                }

                var lastError = "No streams"

                // Try each server
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
                            onResult(StreamData(m3u8Url, emptyList(), "vidsrc"), null)
                            return@execute
                        }
                    } catch (e: Exception) {
                        lastError = e.message ?: "server $i failed"
                    }
                }
                onResult(null, lastError)
            } catch (e: Exception) {
                onResult(null, e.message)
            }
        }
    }
}
