package com.mantii04.moviehub

import okhttp3.OkHttpClient
import okhttp3.Request
import org.json.JSONObject
import java.util.concurrent.TimeUnit

data class SubItem(val language: String, val display: String, val url: String)

object SubtitleFetcher {
    private val client = OkHttpClient.Builder()
        .connectTimeout(10, TimeUnit.SECONDS)
        .readTimeout(10, TimeUnit.SECONDS)
        .build()

    fun fetch(imdbId: String, isTv: Boolean, season: Int?, episode: Int?, onResult: (List<SubItem>) -> Unit) {
        if (imdbId.isBlank()) { onResult(emptyList()); return }
        Thread {
            try {
                val cleanImdb = imdbId.removePrefix("tt")
                val base = "https://api.thesubtitledb.org/v1/by-imdb/$cleanImdb"
                val url = if (isTv) "$base/season/${season ?: 1}/episode/${episode ?: 1}?client=app" 
                          else "$base?client=app"
                
                val req = Request.Builder()
                    .url(url)
                    .header("User-Agent", "Mozilla/5.0")
                    .build()
                
                val resp = client.newCall(req).execute().use { it.body?.string() ?: "{}" }
                val json = JSONObject(resp)
                
                val list = mutableListOf<SubItem>()
                val items = json.optJSONObject("subtitles")?.optJSONArray("items")
                
                if (items != null) {
                    for (i in 0 until items.length()) {
                        val obj = items.getJSONObject(i)
                        list.add(SubItem(
                            language = obj.optString("language", "en"),
                            display = obj.optString("release_name", "English"),
                            url = obj.optString("download_url", "")
                        ))
                    }
                }
                onResult(list)
            } catch (e: Exception) {
                onResult(emptyList())
            }
        }.start()
    }

    fun downloadVtt(url: String): String? {
        return try {
            val req = Request.Builder().url(url).header("User-Agent", "Mozilla/5.0").build()
            var text = client.newCall(req).execute().use { it.body?.string() }
            // Strip BOM if present
            if (text != null && text.startsWith("\uFEFF")) text = text.substring(1)
            text
        } catch (e: Exception) { null }
    }
}
