package com.mantii04.moviehub

import android.os.Handler
import android.os.Looper
import okhttp3.OkHttpClient
import okhttp3.Request
import org.json.JSONArray
import java.util.concurrent.Executors

data class Subtitle(val language: String, val label: String, val url: String, val format: String)

object SubtitleService {
    private val client = OkHttpClient()
    private val executor = Executors.newSingleThreadExecutor()
    private val mainHandler = Handler(Looper.getMainLooper())

    fun fetchSubtitles(tmdbId: Int, season: Int?, episode: Int?, onResult: (List<Subtitle>) -> Unit) {
        executor.execute {
            val list = mutableListOf<Subtitle>()
            try {
                // Wyzie free subtitle API (works for movies and TV)
                val url = if (season != null && episode != null) {
                    "https://sub.wyzie.io/search?id=$tmdbId&season=$season&episode=$episode&format=srt"
                } else {
                    "https://sub.wyzie.io/search?id=$tmdbId&format=srt"
                }
                val request = Request.Builder()
                    .url(url)
                    .header("User-Agent", "MovieHub/1.0")
                    .build()
                client.newCall(request).execute().use { response ->
                    if (response.isSuccessful) {
                        val body = response.body?.string() ?: ""
                        val arr = JSONArray(body)
                        for (i in 0 until arr.length()) {
                            val obj = arr.getJSONObject(i)
                            list.add(Subtitle(
                                language = obj.optString("language", "en"),
                                label = obj.optString("display", obj.optString("language", "English")),
                                url = obj.optString("url"),
                                format = "srt"
                            ))
                        }
                    }
                }
            } catch (_: Exception) {}
            mainHandler.post { onResult(list) }
        }
    }
}
