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

data class StreamData(val videoUrl: String, val subtitles: List<SubtitleTrack>)
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
        imdbId: String?,
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

                // 2. Fetch Encrypted Text
                val encTitle = URLEncoder.encode(URLEncoder.encode(title, "UTF-8"), "UTF-8")
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
                if (!encResp.isSuccessful) throw Exception("Videasy HTTP ${encResp.code}")
                val encText = encResp.body?.string() ?: ""

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
                if (playlist.isEmpty()) throw Exception("No playlist in decrypted data")

                val subtitles = mutableListOf<SubtitleTrack>()
                val subsArray = result.optJSONArray("subtitles")
                if (subsArray != null) {
                    for (i in 0 until subsArray.length()) {
                        val sub = subsArray.getJSONObject(i)
                        subtitles.add(SubtitleTrack(sub.optString("lang"), sub.optString("url")))
                    }
                }

                mainHandler.post { onResult(StreamData(playlist, subtitles), null) }

            } catch (e: Exception) {
                mainHandler.post { onResult(null, "Videasy Error: ${e.message}") }
            }
        }
    }
}
