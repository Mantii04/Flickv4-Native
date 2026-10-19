package com.mantii04.moviehub

import android.os.Handler
import android.os.Looper
import okhttp3.OkHttpClient
import okhttp3.Request
import org.json.JSONObject
import java.util.concurrent.Executors
import java.util.concurrent.TimeUnit

object VideasyResolver {
    private val client = OkHttpClient.Builder()
        .connectTimeout(15, TimeUnit.SECONDS)
        .readTimeout(15, TimeUnit.SECONDS)
        .build()
    private val executor = Executors.newSingleThreadExecutor()
    private val mainHandler = Handler(Looper.getMainLooper())

    fun resolve(
        title: String,
        year: String,
        tmdbId: Int,
        imdbId: String? = null,
        isTv: Boolean,
        season: Int?,
        episode: Int?,
        onResult: (StreamData?, String?) -> Unit
    ) {
        executor.execute {
            try {
                val apiUrl = if (isTv) {
                    "https://api.videasy.net/tv/$tmdbId/$season/$episode"
                } else {
                    "https://api.videasy.net/movie/$tmdbId"
                }

                val req = Request.Builder()
                    .url(apiUrl)
                    .header("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36")
                    .header("Origin", "https://player.videasy.to")
                    .header("Referer", "https://player.videasy.to/")
                    .build()

                val resp = client.newCall(req).execute()
                if (!resp.isSuccessful) throw Exception("Videasy HTTP ${resp.code}")
                
                val bodyString = resp.body?.string() ?: ""
                val json = JSONObject(bodyString)
                
                val playlist = json.optString("playlist", json.optString("source", ""))
                if (playlist.isEmpty()) throw Exception("Playlist empty or encrypted")

                val subtitles = mutableListOf<SubtitleTrack>()
                val subsArray = json.optJSONArray("subtitles")
                if (subsArray != null) {
                    for (i in 0 until subsArray.length()) {
                        val sub = subsArray.getJSONObject(i)
                        subtitles.add(SubtitleTrack(sub.optString("label", "Unknown"), sub.optString("file")))
                    }
                }

                mainHandler.post { onResult(StreamData(playlist, subtitles), null) }

            } catch (e: Exception) {
                mainHandler.post { onResult(null, e.message) }
            }
        }
    }
}
