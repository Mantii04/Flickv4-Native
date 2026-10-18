package com.mantii04.moviehub

import android.os.Handler
import android.os.Looper
import android.util.Base64
import okhttp3.OkHttpClient
import okhttp3.Request
import org.json.JSONObject
import java.util.concurrent.Executors
import javax.crypto.Cipher
import javax.crypto.spec.GCMParameterSpec
import javax.crypto.spec.SecretKeySpec

object VidRockResolver {
    private const val KEY_HEX = "7f3e9c2a8b5d1f4e6a9c3b7d2e5f8a1c4b6d9e2f5a8c1b4d7e9f2a5c8b1d4e7f"
    private const val BASE_URL = "https://vidrock.net/api"

    private val client = OkHttpClient()
    private val executor = Executors.newSingleThreadExecutor()
    private val mainHandler = Handler(Looper.getMainLooper())
    private val key: ByteArray = hexToBytes(KEY_HEX)

    fun resolve(
        tmdbId: Int,
        isTv: Boolean,
        season: Int?,
        episode: Int?,
        onResult: (String?, String?) -> Unit
    ) {
        executor.execute {
            try {
                val path = if (isTv && season != null && episode != null)
                    "/tv/$tmdbId/$season/$episode"
                else
                    "/movie/$tmdbId"

                val request = Request.Builder()
                    .url("$BASE_URL$path")
                    .header("User-Agent", "Mozilla/5.0 (Linux; Android 14; Pixel 8) AppleWebKit/537.36")
                    .build()

                client.newCall(request).execute().use { response ->
                    if (!response.isSuccessful) {
                        mainHandler.post { onResult(null, "API ${response.code}") }
                        return@execute
                    }
                    val json = JSONObject(response.body?.string() ?: "{}")

                    var encrypted: String? = null
                    var serverName = ""
                    // Try Atlas first (we just verified it works), then others
                    for (server in listOf("Atlas", "Orion", "Luna", "Nova", "Astra")) {
                        val url = json.optJSONObject(server)?.optString("url")
                        if (!url.isNullOrEmpty()) {
                            encrypted = url
                            serverName = server
                            break
                        }
                    }
                    if (encrypted == null) {
                        mainHandler.post { onResult(null, "No server returned a URL") }
                        return@execute
                    }

                    try {
                        val decrypted = decrypt(encrypted)
                        mainHandler.post { onResult(decrypted, null) }
                    } catch (e: Exception) {
                        mainHandler.post { onResult(null, "Decrypt failed ($serverName): ${e.message}") }
                    }
                }
            } catch (e: Exception) {
                mainHandler.post { onResult(null, "Network: ${e.message}") }
            }
        }
    }

    private fun decrypt(encoded: String): String {
        val normalized = encoded.replace('-', '+').replace('_', '/')
        val padded = normalized + "=".repeat((4 - normalized.length % 4) % 4)
        val raw = Base64.decode(padded, Base64.DEFAULT)
        if (raw.size < 28) throw IllegalStateException("Ciphertext too short")

        val iv = raw.copyOfRange(0, 12)
        val ctAndTag = raw.copyOfRange(12, raw.size)

        val cipher = Cipher.getInstance("AES/GCM/NoPadding")
        cipher.init(
            Cipher.DECRYPT_MODE,
            SecretKeySpec(key, "AES"),
            GCMParameterSpec(128, iv)
        )
        return String(cipher.doFinal(ctAndTag), Charsets.UTF_8)
    }

    private fun hexToBytes(hex: String): ByteArray {
        val out = ByteArray(hex.length / 2)
        for (i in out.indices) {
            out[i] = ((Character.digit(hex[i * 2], 16) shl 4) +
                    Character.digit(hex[i * 2 + 1], 16)).toByte()
        }
        return out
    }
}
