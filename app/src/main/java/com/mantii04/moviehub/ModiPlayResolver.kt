package com.mantii04.moviehub

import okhttp3.OkHttpClient
import okhttp3.Request
import org.json.JSONObject
import java.util.concurrent.Executors
import java.util.concurrent.TimeUnit

object ModiPlayResolver {
    private val client = OkHttpClient.Builder()
        .connectTimeout(15, TimeUnit.SECONDS)
        .readTimeout(15, TimeUnit.SECONDS)
        .followRedirects(true)
        .build()
    private val executor = Executors.newSingleThreadExecutor()
    private const val UA = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 Chrome/124.0.0.0 Safari/537.36"
    private const val BASE = "https://rozgarlelo.modiplay.xyz"

    fun resolve(tmdbId: Int, isTv: Boolean, season: Int?, episode: Int?, onResult: (StreamData?, String?) -> Unit) {
        executor.execute {
            try {
                // 1. Fetch Embed HTML to find the iframe proxy URL
                val embedUrl = if (isTv) "$BASE/embed/tmdb/tv?id=$tmdbId&s=${season ?: 1}&e=${episode ?: 1}" else "$BASE/embed/tmdb/movie?id=$tmdbId"
                val req1 = Request.Builder().url(embedUrl).header("User-Agent", UA).build()
                val html1 = client.newCall(req1).execute().body?.string() ?: ""

                val iframeRegex = Regex("""id="playerFrame"\s+src="([^"]+)"""")
                val iframeMatch = iframeRegex.find(html1)
                
                if (iframeMatch != null) {
                    // TV Shows (and some movies) path: Proxy Iframe -> var src
                    val apiUrl = BASE + iframeMatch.groupValues[1].replace("&amp;", "&")
                    val req2 = Request.Builder().url(apiUrl).header("User-Agent", UA).header("Referer", embedUrl).build()
                    val html2 = client.newCall(req2).execute().body?.string() ?: ""

                    val srcRegex = Regex("""var\s+src\s*=\s*"([^"]+)"""")
                    val srcMatch = srcRegex.find(html2)

                    if (srcMatch != null) {
                        val rawUrl = srcMatch.groupValues[1].replace("\\/", "/").replace("&amp;", "&")
                        onResult(StreamData(rawUrl, emptyList(), "modiplay"), null)
                        return@execute
                    }
                }

                // Fallback: Movies path (streamhg -> packed JS)
                val cMatch = Regex("""c=([a-z0-9]+)""").find(html1)
                if (cMatch != null) {
                    val cId = cMatch.groupValues[1]
                    val apiUrl = "$BASE/proxy.php?p=streamhg&c=$cId&title=Movie&site_ref=$BASE%2F&noredirect=1"
                    val req3 = Request.Builder().url(apiUrl).header("User-Agent", UA).header("Referer", "$BASE/").build()
                    val html3 = client.newCall(req3).execute().body?.string() ?: ""

                    val pattern = Regex("""eval\(function\(p,a,c,k,e,d\)\{.*?\}\('(.*?)',(\d+),(\d+),'(.*?)'\.split\('\|'\)\)\)""", RegexOption.DOT_MATCHES_ALL)
                    val match = pattern.find(html3)
                    if (match != null) {
                        val packed = match.groupValues[1]
                        val base = match.groupValues[2].toInt()
                        val dict = match.groupValues[4].split("|")
                        val unpacked = Regex("""\b[0-9a-zA-Z]+\b""").replace(packed) { m ->
                            try {
                                val idx = Integer.parseInt(m.value, base)
                                if (idx in dict.indices && dict[idx].isNotEmpty()) dict[idx] else m.value
                            } catch (e: Exception) { m.value }
                        }
                        val linksMatch = Regex("""var\s+links=\{(.*?)\};""").find(unpacked)
                        if (linksMatch != null) {
                            val linksJson = JSONObject("{${linksMatch.groupValues[1]}}")
                            val hls4 = linksJson.optString("hls4")
                            val hls2 = linksJson.optString("hls2")
                            val finalUrl = if (hls4.isNotEmpty()) "$BASE$hls4" else hls2
                            if (finalUrl.isNotEmpty()) {
                                onResult(StreamData(finalUrl, emptyList(), "modiplay"), null)
                                return@execute
                            }
                        }
                    }
                }
                
                onResult(null, "ModiPlay: Could not extract stream URL")
            } catch (e: Exception) {
                onResult(null, "ModiPlay Error: ${e.message}")
            }
        }
    }
}
