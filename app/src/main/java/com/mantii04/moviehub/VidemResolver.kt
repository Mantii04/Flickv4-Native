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

                val r1 = client.newCall(
                    Request.Builder().url(embedUrl)
                        .header("User-Agent", UA)
                        .header("Referer", "https://videm.xyz/")
                        .build()
                ).execute()
                val html = r1.body?.string() ?: throw Exception("Empty embed response")

                val qJson = extractObject(html, "var Q = ") ?: throw Exception("Q object not found")
                val obj = JSONObject(qJson)

                val t = obj.optString("t")
                if (t.isEmpty()) throw Exception("No t token")
                val servers = obj.optJSONObject("ssr")?.optJSONArray("servers")
                if (servers == null || servers.length() == 0) throw Exception("No servers")
                val ref = servers.getJSONObject(0).optString("ref")
                if (ref.isEmpty()) throw Exception("No ref in server[0]")

                val apiUrl = "https://videm.xyz/api.php?a=play&ref=${URLEncoder.encode(ref, "UTF-8")}&t=${URLEncoder.encode(t, "UTF-8")}"

                val r2 = client.newCall(
                    Request.Builder().url(apiUrl)
                        .header("User-Agent", UA)
                        .header("Referer", embedUrl)
                        .header("Origin", "https://videm.xyz")
                        .build()
                ).execute()

                val body = r2.body?.string() ?: ""
                val json = JSONObject(body)
                val streamPath = json.optString("url")
                if (streamPath.isEmpty()) throw Exception("No url in api response")

                val cleanPath = streamPath.replace("\\/", "/")
                val m3u8Url = if (cleanPath.startsWith("http")) cleanPath else "https://videm.xyz$cleanPath"

                onResult(StreamData(m3u8Url, emptyList(), "videm"), null)
            } catch (e: Exception) {
                onResult(null, e.message)
            }
        }
    }

    // Brace-counting extractor. Finds `marker`, then scans forward balancing
    // curly braces. Ignores braces inside double-quoted strings and honors
    // backslash escapes. Returns the complete {...} substring, or null.
    // Replaces the old indexOf("};") approach, which broke on embeds where
    // "};" appears inside a JSON string value before the real closing brace.
    private fun extractObject(html: String, marker: String): String? {
        val start = html.indexOf(marker)
        if (start < 0) return null
        val braceStart = html.indexOf('{', start + marker.length)
        if (braceStart < 0) return null
        var depth = 0
        var inString = false
        var escaped = false
        var i = braceStart
        while (i < html.length) {
            val c = html[i]
            if (escaped) { escaped = false; i++; continue }
            if (c == '\\' && inString) { escaped = true; i++; continue }
            if (c == '"') { inString = !inString; i++; continue }
            if (!inString) {
                when (c) {
                    '{' -> depth++
                    '}' -> {
                        depth--
                        if (depth == 0) return html.substring(braceStart, i + 1)
                    }
                }
            }
            i++
        }
        return null
    }
}
