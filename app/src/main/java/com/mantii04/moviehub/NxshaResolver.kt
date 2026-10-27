package com.mantii04.moviehub

import android.os.Handler
import android.os.Looper
import okhttp3.OkHttpClient
import okhttp3.Request
import org.json.JSONObject
import java.net.URLEncoder
import java.security.MessageDigest
import java.util.concurrent.Executors
import java.util.concurrent.TimeUnit
import javax.crypto.Cipher
import javax.crypto.spec.IvParameterSpec
import javax.crypto.spec.SecretKeySpec

object NxshaResolver {
    private val client = OkHttpClient.Builder()
        .connectTimeout(15, TimeUnit.SECONDS)
        .readTimeout(20, TimeUnit.SECONDS)
        .build()
    private val executor = Executors.newSingleThreadExecutor()
    private val mainHandler = Handler(Looper.getMainLooper())
    private const val BASE_URL = "https://nxsha.space"
    private const val UA = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36"
    private const val PASSPHRASE = "f4488ab4da401203d23baa129fc546153898162524635d6776826d0c867ccaa3"
    private val PROVIDERS = listOf("nitro", "castle", "rive-citadel", "vixolity")

    fun resolve(
        tmdbId: Int,
        isTv: Boolean,
        season: Int?,
        episode: Int?,
        onResult: (StreamData?, String?) -> Unit
    ) {
        executor.execute {
            var lastErr: String? = null
            for (scraper in PROVIDERS) {
                try {
                    val result = tryProvider(scraper, tmdbId, isTv, season ?: 1, episode ?: 1)
                    if (result != null && result.isNotEmpty()) {
                        val best = pickBest(result)
                        if (best != null) {
                            mainHandler.post {
                                onResult(StreamData(best, emptyList(), "nxsha-$scraper"), null)
                            }
                            return@execute
                        }
                    }
                } catch (e: Exception) {
                    lastErr = scraper + ": " + e.message
                }
            }
            mainHandler.post { onResult(null, lastErr ?: "All nxsha providers failed") }
        }
    }

    private fun tryProvider(scraper: String, tmdbId: Int, isTv: Boolean, season: Int, episode: Int): List<JSONObject>? {
        val payload = JSONObject().apply {
            put("provider", scraper)
            put("tmdbId", tmdbId)
            put("imdb_id", "")
            put("type", if (isTv) "tv" else "movie")
            put("season", season)
            put("episode", episode)
        }
        val q = encryptPayload(payload.toString())
        val url = BASE_URL + "/api/sources?q=" + URLEncoder.encode(q, "UTF-8")

        val req = Request.Builder()
            .url(url)
            .header("User-Agent", UA)
            .header("Referer", BASE_URL + "/")
            .header("Accept", "application/json")
            .build()

        val resp = client.newCall(req).execute().use { it.body?.string() ?: return null }
        val json = JSONObject(resp)
        val hash = json.optString("_hash")
        if (hash.isEmpty()) return null

        val decrypted = decryptPayload(hash) ?: return null
        val obj = JSONObject(decrypted)
        val sources = obj.optJSONArray("sources") ?: return null

        val out = mutableListOf<JSONObject>()
        for (i in 0 until sources.length()) {
            out.add(sources.getJSONObject(i))
        }
        return out
    }

    private fun pickBest(sources: List<JSONObject>): String? {
        var best1080: String? = null
        var best720: String? = null
        var fallback: String? = null

        for (src in sources) {
            val url = src.optString("url").ifEmpty { src.optString("file") }
            if (url.isEmpty() || !url.startsWith("http")) continue
            if (!url.contains(".m3u8") && !url.contains("/hls/")) continue
            if (fallback == null) fallback = url
            val q = (src.optString("quality") + src.optString("label")).lowercase()
            if (best1080 == null && (q.contains("1080") || q.contains("fhd") || q.contains("4k"))) best1080 = url
            if (best720 == null && q.contains("720")) best720 = url
        }
        return best1080 ?: best720 ?: fallback
    }

    private fun encryptPayload(plaintext: String): String {
        val salt = ByteArray(8).also { java.security.SecureRandom().nextBytes(it) }
        val (key, iv) = evpBytesToKey(PASSPHRASE.toByteArray(), salt)

        val cipher = Cipher.getInstance("AES/CBC/PKCS5Padding")
        cipher.init(Cipher.ENCRYPT_MODE, SecretKeySpec(key, "AES"), IvParameterSpec(iv))
        val ct = cipher.doFinal(plaintext.toByteArray(Charsets.UTF_8))

        val raw = ByteArray(8 + 8 + ct.size)
        System.arraycopy("Salted__".toByteArray(), 0, raw, 0, 8)
        System.arraycopy(salt, 0, raw, 8, 8)
        System.arraycopy(ct, 0, raw, 16, ct.size)

        return android.util.Base64.encodeToString(raw, android.util.Base64.NO_WRAP)
    }

    private fun decryptPayload(hash: String): String? {
        return try {
            val std = hash.replace("-", "+").replace("_", "/")
                .let { it + "=".repeat((4 - it.length % 4) % 4) }
            val raw = android.util.Base64.decode(std, android.util.Base64.NO_WRAP)
            if (raw.size < 16 || String(raw, 0, 8) != "Salted__") return null
            val salt = raw.copyOfRange(8, 16)
            val ct = raw.copyOfRange(16, raw.size)
            val (key, iv) = evpBytesToKey(PASSPHRASE.toByteArray(), salt)

            val cipher = Cipher.getInstance("AES/CBC/PKCS5Padding")
            cipher.init(Cipher.DECRYPT_MODE, SecretKeySpec(key, "AES"), IvParameterSpec(iv))
            String(cipher.doFinal(ct), Charsets.UTF_8)
        } catch (e: Exception) {
            null
        }
    }

    private fun evpBytesToKey(password: ByteArray, salt: ByteArray): Pair<ByteArray, ByteArray> {
        val out = ByteArray(48)
        var prev = ByteArray(0)
        var offset = 0
        val md5 = MessageDigest.getInstance("MD5")
        while (offset < 48) {
            md5.reset()
            md5.update(prev)
            md5.update(password)
            md5.update(salt)
            prev = md5.digest()
            val n = minOf(prev.size, 48 - offset)
            System.arraycopy(prev, 0, out, offset, n)
            offset += n
        }
        return Pair(out.copyOfRange(0, 32), out.copyOfRange(32, 48))
    }
}
