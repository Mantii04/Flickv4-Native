package com.mantii04.moviehub

import android.os.Handler
import android.os.Looper
import android.util.Base64
import okhttp3.MediaType.Companion.toMediaType
import okhttp3.OkHttpClient
import okhttp3.Request
import okhttp3.RequestBody.Companion.toRequestBody
import java.util.concurrent.Executors
import javax.crypto.Cipher
import javax.crypto.spec.GCMParameterSpec
import javax.crypto.spec.SecretKeySpec

object VidCoreResolver {
    private val client = OkHttpClient()
    private val executor = Executors.newSingleThreadExecutor()
    private val mainHandler = Handler(Looper.getMainLooper())
    private const val BASE_URL = "https://vidcore.io"
    private const val UA = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36"

    fun resolve(
        tmdbId: Int,
        isTv: Boolean,
        season: Int?,
        episode: Int?,
        onResult: (StreamData?, String?) -> Unit
    ) {
        executor.execute {
            try {
                val path = if (isTv) "/tv/$tmdbId/${season ?: 1}/${episode ?: 1}" else "/movie/$tmdbId"
                val pageUrl = "$BASE_URL$path"

                // 1. Fetch HTML to find buildId
                val html = client.newCall(Request.Builder().url(pageUrl).header("User-Agent", UA).build())
                    .execute().use { it.body?.string() ?: "" }
                
                val buildId = Regex(""""buildId":"([^"]+)"""")
                    .find(html)?.groupValues?.get(1) ?: throw Exception("No buildId")

                // 2. Fetch the page JS chunk to find the Server Action UUID
                val chunkRegex = Regex("""/_next/static/chunks/app/(movie|tv)/%5Bid%5D/page-[a-f0-9]+\.js""")
                val chunkPath = chunkRegex.find(html)?.value ?: throw Exception("No page chunk")
                
                val js = client.newCall(Request.Builder().url("$BASE_URL$chunkPath").header("User-Agent", UA).build())
                    .execute().use { it.body?.string() ?: "" }
                
                // The Action ID is a 36-char UUID
                val actionRegex = Regex("""["']([a-f0-9-]{36})["']""")
                val actionId = actionRegex.find(js)?.groupValues?.get(1) ?: throw Exception("No actionId")

                // 3. POST to the Next.js Server Action
                val actionUrl = "$BASE_URL/$buildId/$actionId"
                val payload = if (isTv) """["$tmdbId", $season, $episode]""" else """["$tmdbId"]"""
                val body = payload.toRequestBody("text/plain;charset=UTF-8".toMediaType())
                
                val req = Request.Builder()
                    .url(actionUrl)
                    .header("User-Agent", UA)
                    .header("Next-Action", actionId)
                    .post(body)
                    .build()

                val enc = client.newCall(req).execute().use { it.body?.string() ?: throw Exception("Empty action response") }

                // 4. Decrypt with extracted AES Keys
                val keys = listOf(
                    "a5d40b30e81411ddba2f0800200c9a66",
                    "d08a4f1810f34a82b6c832d8aba183d3",
                    "a2394f525a9b4f14a2446c427c648df4",
                    "8974dbce7be74c5184f97148f9882554",
                    "d4807ef2ca3946958e5426cb9e46a79f"
                )
                
                var decrypted = ""
                for (key in keys) {
                    try {
                        val raw = Base64.decode(enc, Base64.DEFAULT)
                        val iv = raw.copyOfRange(0, 12)
                        val ct = raw.copyOfRange(12, raw.size - 16)
                        val tag = raw.copyOfRange(raw.size - 16, raw.size)
                        
                        val cipher = Cipher.getInstance("AES/GCM/NoPadding")
                        cipher.init(Cipher.DECRYPT_MODE, SecretKeySpec(hexToBytes(key), "AES"), GCMParameterSpec(128, iv))
                        decrypted = String(cipher.doFinal(ct + tag))
                        break
                    } catch (e: Exception) { /* Try next key */ }
                }
                
                if (decrypted.isEmpty()) throw Exception("Decryption failed")

                // 5. Extract the final m3u8 URL
                val urlRegex = Regex("""https://moon\.zenoak\.top/vd/[^"\\]+/master\.m3u8""")
                val finalUrl = urlRegex.find(decrypted)?.value ?: throw Exception("m3u8 not found in decrypted text")

                mainHandler.post { onResult(StreamData(finalUrl, emptyList(), "vidcore"), null) }

            } catch (e: Exception) {
                mainHandler.post { onResult(null, e.message) }
            }
        }
    }

    private fun hexToBytes(hex: String): ByteArray {
        val out = ByteArray(hex.length / 2)
        for (i in out.indices) {
            out[i] = ((Character.digit(hex[i * 2], 16) shl 4) + Character.digit(hex[i * 2 + 1], 16)).toByte()
        }
        return out
    }
}
