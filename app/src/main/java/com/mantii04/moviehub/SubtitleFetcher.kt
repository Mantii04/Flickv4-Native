package com.mantii04.moviehub

import okhttp3.OkHttpClient
import okhttp3.Request
import org.json.JSONArray
import org.json.JSONObject
import java.util.concurrent.TimeUnit

data class SubItem(val language: String, val display: String, val url: String)

object SubtitleFetcher {
    private val client = OkHttpClient.Builder()
        .connectTimeout(10, TimeUnit.SECONDS)
        .readTimeout(10, TimeUnit.SECONDS)
        .build()

    fun fetch(imdbId: String, isTv: Boolean, season: Int?, episode: Int?, onResult: (List<SubItem>) -> Unit) {
        Thread {
            try {
                val url = if (isTv) "https://subs.wyzie.ru/search?id=$imdbId&season=${season ?: 1}&episode=${episode ?: 1}"
                          else "https://subs.wyzie.ru/search?id=$imdbId"
                val req = Request.Builder().url(url).build()
                val resp = client.newCall(req).execute().use { it.body?.string() ?: "[]" }
                val arr = JSONArray(resp)
                val list = mutableListOf<SubItem>()
                for (i in 0 until arr.length()) {
                    val obj = arr.getJSONObject(i)
                    list.add(SubItem(
                        language = obj.optString("language", "en"),
                        display = obj.optString("display", "English"),
                        url = obj.optString("url", "")
                    ))
                }
                onResult(list)
            } catch (e: Exception) {
                onResult(emptyList())
            }
        }.start()
    }

    fun downloadVtt(url: String): String? {
        return try {
            val req = Request.Builder().url(url).build()
            client.newCall(req).execute().use { it.body?.string() }
        } catch (e: Exception) { null }
    }
}
