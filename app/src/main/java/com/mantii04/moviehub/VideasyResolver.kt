package com.mantii04.moviehub

import android.os.Handler
import android.os.Looper
import okhttp3.MediaType.Companion.toMediaType
import okhttp3.OkHttpClient
import okhttp3.Request
import okhttp3.RequestBody.Companion.toRequestBody
import org.json.JSONObject
import java.net.URLEncoder
import java.util.concurrent.Executors

data class StreamData(val videoUrl: String, val subtitles: List<SubtitleTrack>, val provider: String = "vidsrc")
data class SubtitleTrack(val language: String, val url: String)

object VideasyResolver {
    private val client = OkHttpClient()
    private val executor = Executors.newSingleThreadExecutor()
    private val mainHandler = Handler(Looper.getMainLooper())
    private const val API = "https://enc-dec.app/api/dec-videasy"

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
                // 1. Get Seed
                val seedUrl = "https://api.wecollege.net/seed?mediaId=$tmdbId"
                val seedReq = Request.Builder().url(seedUrl).header("User-Agent", "Mozilla/5.0").build()
                val seedResp = client.newCall(seedReq).execute()
                if (!seedResp.isSuccessful) throw Exception("Seed HTTP ${seedResp.code}")
                val seed = JSONObject(seedResp.body?.string() ?: "{}").optString("seed")

                // 2. Fetch Encrypted Text (SINGLE ENCODE)
                val encTitle = URLEncoder.encode(title, "UTF-8") 
                val type = if (isTv) "tv" else "movie"
                var apiUrl = "https://api.wecollege.net/miami/sources?title=$encTitle&mediaType=$type&year=$year&tmdbId=$tmdbId&enc=2&seed=$seed"
                if (!imdbId.isNullOrEmpty()) apiUrl += "&imdbId=$imdbId"
                if (isTv && season != null && episode != null) apiUrl += "&seasonId=$season&episodeId=$episode"

                val encReq = Request.Builder()
                    .url(apiUrl)
                    .header("User-Agent", "Mozilla/5.0")
                    .header("Origin", "https://player.videasy.to")
                    .header("Referer", "https://player.videasy.to/")
                    .build()
                
                val encResp = client.newCall(encReq).execute()
                val encText = encResp.body?.string() ?: ""

                // Catch the exact error message from Videasy
                if (!encResp.isSuccessful) {
                    try {
                        val errorJson = JSONObject(encText)
                        val msg = errorJson.optString("message", "Unknown API error")
                        throw Exception("Videasy: $msg")
                    } catch (e: Exception) {
                        throw Exception("Videasy HTTP ${encResp.code}")
                    }
                }

                // 3. Decrypt via enc-dec.app
                val jsonBody = JSONObject().apply {
                    put("text", encText)
                    put("id", tmdbId.toString())
                    put("seed", seed)
                }.toString()

                val decReq = Request.Builder()
                    .url(API)
                    .post(jsonBody.toRequestBody("application/json".toMediaType()))
                    .header("User-Agent", "Mozilla/5.0")
                    .build()

                val decResp = client.newCall(decReq).execute()
                val decJson = JSONObject(decResp.body?.string() ?: "{}")
                if (decJson.optInt("status") != 200) throw Exception("Decrypt failed: ${decJson.optString("error")}")

                // 4. Parse Result
                val result = decJson.getJSONObject("result")
                val playlist = result.optString("playlist")
                if (playlist.isEmpty()) throw Exception("Playlist empty")

                val subtitles = mutableListOf<SubtitleTrack>()
                val subsArray = result.optJSONArray("subtitles")
                if (subsArray != null) {
                    for (i in 0 until subsArray.length()) {
                        val sub = subsArray.getJSONObject(i)
                        subtitles.add(SubtitleTrack(sub.optString("label", "Unknown"), sub.optString("file")))
                    }
                }

                mainHandler.post { onResult(StreamData(playlist, subtitles, "videasy"), null) }
            } catch (e: Exception) {
                mainHandler.post { onResult(null, e.message) }
            }
        }
    }
}
