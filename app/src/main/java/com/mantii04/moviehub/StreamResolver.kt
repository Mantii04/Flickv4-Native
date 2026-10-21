package com.mantii04.moviehub

import java.util.concurrent.CountDownLatch
import java.util.concurrent.TimeUnit
import java.util.Collections

object StreamResolver {
    private val executor = java.util.concurrent.Executors.newSingleThreadExecutor()

    fun resolve(
        title: String, year: String, tmdbId: Int, isTv: Boolean,
        season: Int?, episode: Int?,
        onResult: (List<StreamData>, String?) -> Unit
    ) {
        TmdbService.getImdbId(tmdbId, isTv) { imdbId ->
            val results = Collections.synchronizedList(mutableListOf<StreamData>())
            val latch = CountDownLatch(5)

            VidSrcResolver.resolve(tmdbId, imdbId, isTv, season, episode) { s, _ ->
                if (s != null) results.add(s.copy(provider = "vidsrc"))
                latch.countDown()
            }
            VidemResolver.resolve(tmdbId, imdbId, isTv, season, episode) { s, _ ->
                if (s != null) results.add(s.copy(provider = "videm"))
                latch.countDown()
            }
            if (!imdbId.isNullOrEmpty()) {
                VixSrcResolver.resolve(imdbId, isTv, season, episode) { s, _ ->
                    if (s != null) results.add(s.copy(provider = "vixsrc"))
                    latch.countDown()
                }
            } else { latch.countDown() }
            
            VideasyResolver.resolve(title, year, tmdbId, imdbId, isTv, season, episode) { s, _ ->
                if (s != null) results.add(s.copy(provider = "videasy"))
                latch.countDown()
            }
            
            // NEW: ModiPlay
            ModiPlayResolver.resolve(tmdbId, isTv, season, episode) { s, _ ->
                if (s != null) results.add(s.copy(provider = "modiplay"))
                latch.countDown()
            }

            executor.execute {
                try {
                    latch.await(20, TimeUnit.SECONDS)
                    if (results.isNotEmpty()) onResult(results, null) else onResult(emptyList(), "All providers failed")
                } catch (e: Exception) {
                    onResult(emptyList(), e.message)
                }
            }
        }
    }
}
