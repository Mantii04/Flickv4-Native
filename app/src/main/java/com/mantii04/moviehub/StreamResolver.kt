package com.mantii04.moviehub

object StreamResolver {
    fun resolve(
        title: String,
        year: String,
        tmdbId: Int,
        isTv: Boolean,
        season: Int?,
        episode: Int?,
        onResult: (List<StreamData>, String?) -> Unit
    ) {
        // Fetch IMDB ID first
        TmdbService.getImdbId(tmdbId, isTv) { imdbId ->
            // VidSrc prefers IMDB for TV, TMDB for Movies
            VidSrcResolver.resolve(tmdbId, imdbId, isTv, season, episode) { stream, err ->
                if (stream != null) {
                    onResult(listOf(stream), null)
                } else {
                    // Fallback to Videasy
                    VideasyResolver.resolve(
                        title = title,
                        year = year,
                        tmdbId = tmdbId,
                        imdbId = imdbId,
                        isTv = isTv,
                        season = season,
                        episode = episode
                    ) { fallback, ferr ->
                        if (fallback != null) onResult(listOf(fallback), null)
                        else onResult(emptyList(), "VidSrc: $err | Videasy: $ferr")
                    }
                }
            }
        }
    }
}
