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
        // 1. Resolve IMDB ID first (VidSrc prefers it for TV)
        TmdbService.getImdbId(tmdbId, isTv) { imdbId ->
            VidSrcResolver.resolve(tmdbId, imdbId, isTv, season, episode) { stream, err ->
                if (stream != null) {
                    onResult(listOf(stream), null)
                } else {
                    // 2. Fallback to Videasy
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
                        else onResult(emptyList(), "All providers failed: ${ferr ?: err}")
                    }
                }
            }
        }
    }
}
