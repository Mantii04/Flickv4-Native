package com.mantii04.moviehub

import okhttp3.OkHttpClient
import okhttp3.Request
import org.json.JSONObject
import java.net.URLEncoder
import java.util.concurrent.Executors
import java.util.concurrent.TimeUnit

object VidemResolver {
    private val client = OkHttpClient.Builder()
        .connectTimeout(15, TimeUnit.SECONDS)
        .readTimeout(15, TimeUnit.SECONDS)
        .followRedirects(true)
        .build()
    private val executor = Executors.newSingleThreadExecutor()
    private const val UA = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 Chrome/124.0.0.0 Safari/537.36"

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
                val id = if (isTv && !imdbId.isNullOrEmpty()) imdbId else tmdbId.toString()
                val embedUrl = if (isTv) "https://videm.xyz/embed/tv/$id/$season/$episode" else "https://videm.xyz/embed/movie/$id"

                val r1 = client.newCall(Request.Builder().url(embedUrl).header("User-Agent", UA).build()).execute()
                val html = r1.body?.string() ?: throw Exception("Empty")

                val qStart = html.indexOf("var Q = ")
                if (qStart == -1) throw Exception("Q not found")
                val qEnd = html.indexOf("};", qStart)
                val qJson = JSONObject(html.substring(qStart + 8, qEnd + 1))

                val t = qJson.optString("t")
                val servers = qJson.optJSONObject("ssr")?.optJSONArray("servers")
                
                if (servers == null || servers.length() == 0) throw Exception("No servers")

                val ref = servers.getJSONObject(0).optString("ref")
                val apiUrl = "https://videm.xyz/api.php?a=play&ref=${URLEncoder.encode(ref, "UTF-8")}&t=${URLEncoder.encode(t, "UTF-8")}"

                val r2 = client.newCall(
                    Request.Builder().url(apiUrl)
                        .header("User-Agent", UA)
                        .header("Referer", embedUrl)
                        .build()
                ).execute()

                val body = r2.body?.string() ?: ""
                val json = JSONObject(body)
                
                if (json.has("url")) {
                    val streamPath = json.getString("url")
                    val m3u8Url = "https://videm.xyz$streamPath"
                    onResult(StreamData(m3u8Url, emptyList(), "videm"), null)
                } else {
                    throw Exception("No url in response")
                }
            } catch (e: Exception) {
                onResult(null, e.message)
            }
        }
    }
}
