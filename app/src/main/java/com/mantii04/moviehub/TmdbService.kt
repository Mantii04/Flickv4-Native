package com.mantii04.moviehub

import android.os.Handler
import android.os.Looper
import okhttp3.OkHttpClient
import okhttp3.Request
import org.json.JSONObject
import java.util.concurrent.Executors

object TmdbService {
    private const val API_KEY = "49d5c25978104677e47887dce958c9c0" 
    private const val BASE_URL = "https://api.themoviedb.org/3"
    const val IMG_BASE = "https://image.tmdb.org/t/p/"
    
    private val client = OkHttpClient()
    private val executor = Executors.newSingleThreadExecutor()
    private val mainHandler = Handler(Looper.getMainLooper())

    private fun fetch(path: String, onResult: (JSONObject?) -> Unit) {
        executor.execute {
            try {
                val request = Request.Builder().url("$BASE_URL$path?api_key=$API_KEY").build()
                client.newCall(request).execute().use { response ->
                    if (response.isSuccessful) {
                        val json = JSONObject(response.body?.string() ?: "")
                        mainHandler.post { onResult(json) }
                    } else {
                        mainHandler.post { onResult(null) }
                    }
                }
            } catch (e: Exception) {
                mainHandler.post { onResult(null) }
            }
        }
    }

    fun getTrending(onResult: (List<MediaItem>) -> Unit) = fetch("/trending/all/day") { onResult(parseResults(it)) }
    fun getPopularMovies(onResult: (List<MediaItem>) -> Unit) = fetch("/movie/popular") { onResult(parseResults(it)) }
    
    fun search(query: String, onResult: (List<MediaItem>) -> Unit) {
        val encodedQuery = java.net.URLEncoder.encode(query, "UTF-8")
        fetch("/search/multi?query=$encodedQuery") { onResult(parseResults(it)) }
    }

    fun getMovieDetails(id: Int, onResult: (String) -> Unit) {
        fetch("/movie/$id") { json ->
            onResult(json?.optString("overview") ?: "No synopsis available.")
        }
    }

    private fun parseResults(json: JSONObject?): List<MediaItem> {
        val list = mutableListOf<MediaItem>()
        val results = json?.optJSONArray("results") ?: return list
        for (i in 0 until results.length()) {
            val obj = results.getJSONObject(i)
            val isTv = obj.optString("media_type") == "tv" || obj.has("first_air_date")
            val title = if (isTv) obj.optString("name") else obj.optString("title")
            val date = if (isTv) obj.optString("first_air_date") else obj.optString("release_date")
            
            list.add(MediaItem(
                id = obj.optInt("id"),
                title = title,
                posterPath = obj.optString("poster_path"),
                backdropPath = obj.optString("backdrop_path"),
                isTv = isTv,
                year = date.take(4)
            ))
        }
        return list
    }
}

data class MediaItem(
    val id: Int,
    val title: String,
    val posterPath: String,
    val backdropPath: String,
    val isTv: Boolean,
    val year: String
)
