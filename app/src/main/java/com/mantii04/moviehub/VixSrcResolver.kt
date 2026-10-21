package com.mantii04.moviehub

import okhttp3.OkHttpClient
import okhttp3.Request
import org.json.JSONObject
import java.net.URLEncoder
import java.util.concurrent.Executors
import java.util.concurrent.TimeUnit

object VixSrcResolver {
    private val client = OkHttpClient.Builder()
        .connectTimeout(15, TimeUnit.SECONDS)
        .readTimeout(15, TimeUnit.SECONDS)
        .build()
    private val executor = Executors.newSingleThreadExecutor()
    private const val UA = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 Chrome/124.0.0.0 Safari/537.36"

    fun resolve(
        imdbId: String,
        isTv: Boolean,
        season: Int?,
        episode: Int?,
        onResult: (StreamData?, String?) -> Unit
    ) {
        executor.execute {
            try {
                val apiUrl = if (isTv) {
                    "https://vixsrc.to/api/tv/$imdbId/${season ?: 1}/${episode ?: 1}"
                } else {
                    "https://vixsrc.to/api/movie/$imdbId"
                }

                val r1 = client.newCall(Request.Builder().url(apiUrl).header("User-Agent", UA).build()).execute()
                val srcJson = JSONObject(r1.body?.string() ?: "{}")
                val srcPath = srcJson.optString("src")
                if (srcPath.isEmpty()) throw Exception("No src")

                val embedUrl = "https://vixsrc.to$srcPath"
                val r2 = client.newCall(Request.Builder().url(embedUrl).header("User-Agent", UA).build()).execute()
                val html = r2.body?.string() ?: ""

                val streamMatch = Regex("""url:\s*['"]([^'"]+)['"]""").find(html)
                val tokenMatch = Regex("""'token':\s*'([^']+)'""").find(html)
                val expiresMatch = Regex("""'expires':\s*'([^']+)'""").find(html)

                if (streamMatch != null && tokenMatch != null && expiresMatch != null) {
                    val streamUrl = streamMatch.groupValues[1].replace("\\/", "/")
                    val token = tokenMatch.groupValues[1]
                    val expires = expiresMatch.groupValues[1]
                    val finalUrl = if (streamUrl.contains("?")) "$streamUrl&token=$token&expires=$expires&h=1" else "$streamUrl?token=$token&expires=$expires&h=1"
                    
                    onResult(StreamData(finalUrl, emptyList(), "vixsrc"), null)
                } else {
                    throw Exception("Failed to parse playlist")
                }
            } catch (e: Exception) {
                onResult(null, e.message)
            }
        }
    }
}
