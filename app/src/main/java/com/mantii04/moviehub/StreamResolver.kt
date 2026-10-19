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
        // 1. Try VidRock First
        VidRockResolver.resolve(tmdbId, isTv, season, episode) { urls, error ->
            if (urls.isNotEmpty()) {
                // VidRock found URLs. Map them to StreamData (no subtitles from VidRock)
                val streams = urls.map { StreamData(it, emptyList()) }
                onResult(streams, null)
            } else {
                // 2. VidRock failed. Fallback to Videasy.
                // First, we need the IMDB ID for Videasy
                TmdbService.getImdbId(tmdbId, isTv) { imdbId ->
                    VideasyResolver.resolve(
                        title = title,
                        year = year,
                        tmdbId = tmdbId,
                        imdbId = imdbId,
                        isTv = isTv,
                        season = season,
                        episode = episode
                    ) { streamData, videasyError ->
                        if (streamData != null) {
                            onResult(listOf(streamData), null)
                        } else {
                            onResult(emptyList(), "All providers failed. Last error: $videasyError")
                        }
                    }
                }
            }
        }
    }
}
