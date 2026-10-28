package com.mantii04.moviehub

import android.content.Context
import okhttp3.OkHttpClient
import okhttp3.Request
import org.json.JSONObject
import java.io.File
import java.util.concurrent.TimeUnit

data class SubItem(val language: String, val display: String, val url: String, val durationSec: Long = 0L)

object SubtitleFetcher {
    private val client = OkHttpClient.Builder()
        .connectTimeout(10, TimeUnit.SECONDS)
        .readTimeout(10, TimeUnit.SECONDS)
        .build()

    fun fetch(imdbId: String, isTv: Boolean, season: Int?, episode: Int?, onResult: (List<SubItem>) -> Unit) {
        if (imdbId.isBlank()) { onResult(emptyList()); return }
        Thread {
            try {
                val cleanImdb = imdbId.removePrefix("tt")
                val base = "https://api.thesubtitledb.org/v1/by-imdb/$cleanImdb"
                // Added &lang=en to force English only
                val url = if (isTv) "$base/season/${season ?: 1}/episode/${episode ?: 1}?client=app&limit=100" 
                          else "$base?client=app&limit=100"
                
                val req = Request.Builder().url(url).header("User-Agent", "Mozilla/5.0").build()
                val resp = client.newCall(req).execute().use { it.body?.string() ?: "{}" }
                val json = JSONObject(resp)
                
                val list = mutableListOf<SubItem>()
                val items = json.optJSONObject("subtitles")?.optJSONArray("items")
                
                if (items != null) {
                    for (i in 0 until items.length()) {
                        val obj = items.getJSONObject(i)
                        val langCode = obj.optString("language", "en")
                        // Translate "en" to "English", "ar" to "Arabic", etc.
                        val langName = java.util.Locale(langCode).getDisplayLanguage(java.util.Locale.ENGLISH)
                            .replaceFirstChar { if (it.isLowerCase()) it.titlecase(java.util.Locale.ENGLISH) else it.toString() }
                            
                        list.add(SubItem(
                            language = langCode,
                            display = langName,
                            url = obj.optString("download_url", ""),
                            durationSec = obj.optLong("duration_s", 0L)
                        ))
                    }
                }
                onResult(list.sortedBy { it.display })
            } catch (e: Exception) {
                onResult(emptyList())
            }
        }.start()
    }

    // Downloads the SRT and saves it to a real file in the cache directory
    fun downloadToCache(context: Context, url: String): File? {
        android.util.Log.d("SUBFIX", "downloadToCache START: $url")
        return try {
            val req = Request.Builder().url(url).header("User-Agent", "Mozilla/5.0").build()
            var body = client.newCall(req).execute().use { it.body?.bytes() }
            android.util.Log.d("SUBFIX", "downloadToCache RAW bytes=${body?.size ?: 0}")
            if (body != null) {
                if (body.size >= 3 && body[0] == 0xEF.toByte() && body[1] == 0xBB.toByte() && body[2] == 0xBF.toByte()) {
                    body = body.copyOfRange(3, body.size)
                    android.util.Log.d("SUBFIX", "BOM stripped, new size=${body.size}")
                }
                val tempFile = File(context.cacheDir, "temp_sub.srt")
                tempFile.writeBytes(body)
                android.util.Log.d("SUBFIX", "FILE WRITTEN: ${tempFile.absolutePath} size=${tempFile.length()}")
                android.util.Log.d("SUBFIX", "FIRST 200 CHARS: ${String(body).take(200)}")
                tempFile
            } else {
                android.util.Log.e("SUBFIX", "BODY NULL")
                null
            }
        } catch (e: Exception) {
            android.util.Log.e("SUBFIX", "downloadToCache EXCEPTION: ${e.message}", e)
            null
        }
    }
}
