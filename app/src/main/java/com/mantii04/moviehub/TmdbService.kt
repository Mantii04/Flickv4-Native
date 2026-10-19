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
                val separator = if (path.contains("?")) "&" else "?"
                val request = Request.Builder().url("$BASE_URL$path${separator}api_key=$API_KEY").build()
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

    fun getTrending(page: Int = 1, onResult: (List<MediaItem>) -> Unit) = fetch("/trending/all/day?page=$page") { onResult(parseResults(it)) }
    fun getPopularMovies(page: Int = 1, onResult: (List<MediaItem>) -> Unit) = fetch("/movie/popular?page=$page") { onResult(parseResults(it)) }
    
    fun search(query: String, onResult: (List<MediaItem>) -> Unit) {
        val encodedQuery = java.net.URLEncoder.encode(query, "UTF-8")
        fetch("/search/multi?query=$encodedQuery") { onResult(parseResults(it)) }
    }

    fun getDetails(id: Int, isTv: Boolean, onResult: (MediaDetail?) -> Unit) {
        val type = if (isTv) "tv" else "movie"
        fetch("/$type/$id?append_to_response=credits,similar") { json ->
            if (json == null) { onResult(null); return@fetch }
            
            val cast = mutableListOf<CastMember>()
            json.optJSONObject("credits")?.optJSONArray("cast")?.let { castArray ->
                for (i in 0 until minOf(castArray.length(), 15)) {
                    val c = castArray.getJSONObject(i)
                    cast.add(CastMember(c.optString("name"), c.optString("character"), c.optString("profile_path")))
                }
            }
            
            val similar = mutableListOf<MediaItem>()
            json.optJSONObject("similar")?.optJSONArray("results")?.let { simArray ->
                for (i in 0 until minOf(simArray.length(), 10)) {
                    val s = simArray.getJSONObject(i)
                    similar.add(MediaItem(
                        id = s.optInt("id"),
                        title = if (isTv) s.optString("name") else s.optString("title"),
                        posterPath = s.optString("poster_path"),
                        backdropPath = s.optString("backdrop_path"),
                        isTv = isTv,
                        year = (if (isTv) s.optString("first_air_date") else s.optString("release_date")).take(4)
                    ))
                }
            }

            val seasons = mutableListOf<Season>()
            if (isTv) {
                json.optJSONArray("seasons")?.let { sArr ->
                    for (i in 0 until sArr.length()) {
                        val s = sArr.getJSONObject(i)
                        if (s.optInt("season_number") > 0) {
                            seasons.add(Season(s.optInt("season_number"), s.optInt("episode_count")))
                        }
                    }
                }
            }
            
            onResult(MediaDetail(
                id = id,
                title = if (isTv) json.optString("name") else json.optString("title"),
                overview = json.optString("overview"),
                backdropPath = json.optString("backdrop_path"),
                posterPath = json.optString("poster_path"),
                year = (if (isTv) json.optString("first_air_date") else json.optString("release_date")).take(4),
                rating = json.optDouble("vote_average", 0.0),
                isTv = isTv,
                cast = cast,
                seasons = seasons,
                similar = similar
            ))
        }
    }

    fun getEpisodes(id: Int, seasonNum: Int, onResult: (List<Episode>) -> Unit) {
        fetch("/tv/$id/season/$seasonNum") { json ->
            val eps = mutableListOf<Episode>()
            json?.optJSONArray("episodes")?.let { eArr ->
                for (i in 0 until eArr.length()) {
                    val e = eArr.getJSONObject(i)
                    eps.add(Episode(
                        epNum = e.optInt("episode_number"),
                        title = e.optString("name"),
                        overview = e.optString("overview"),
                        stillPath = e.optString("still_path")
                    ))
                }
            }
            onResult(eps)
        }
    }

    fun discoverByGenre(genreId: String, onResult: (List<MediaItem>) -> Unit) =
        fetch("/discover/movie?with_genres=$genreId&sort_by=popularity.desc") { onResult(parseResults(it)) }

    fun getImdbId(tmdbId: Int, isTv: Boolean, onResult: (String?) -> Unit) {
        val type = if (isTv) "tv" else "movie"
        fetch("/$type/$tmdbId/external_ids") { json ->
            onResult(json?.optString("imdb_id"))
        }
    }

    private fun parseResults(json: JSONObject?): List<MediaItem> {
        val list = mutableListOf<MediaItem>()
        val results = json?.optJSONArray("results") ?: return list
        for (i in 0 until results.length()) {
            val obj = results.getJSONObject(i)
            val type = obj.optString("media_type")
            if (type == "person") continue 
            
            val isTv = type == "tv" || obj.has("first_air_date")
            val title = if (isTv) obj.optString("name") else obj.optString("title")
            val date = if (isTv) obj.optString("first_air_date") else obj.optString("release_date")
            
            if (title.isNotEmpty()) {
                list.add(MediaItem(
                    id = obj.optInt("id"),
                    title = title,
                    posterPath = obj.optString("poster_path"),
                    backdropPath = obj.optString("backdrop_path"),
                    isTv = isTv,
                    year = date.take(4)
                ))
            }
        }
        return list
    }
}

data class MediaItem(val id: Int, val title: String, val posterPath: String, val backdropPath: String, val isTv: Boolean, val year: String)
data class MediaDetail(val id: Int, val title: String, val overview: String, val backdropPath: String, val posterPath: String, val year: String, val rating: Double, val isTv: Boolean, val cast: List<CastMember>, val seasons: List<Season>, val similar: List<MediaItem>)
data class CastMember(val name: String, val character: String, val profilePath: String)
data class Season(val number: Int, val episodeCount: Int)
data class Episode(val epNum: Int, val title: String, val overview: String, val stillPath: String)
