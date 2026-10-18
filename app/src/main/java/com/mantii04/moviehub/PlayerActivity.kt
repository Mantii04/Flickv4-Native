package com.mantii04.moviehub

import android.annotation.SuppressLint
import android.content.pm.ActivityInfo
import android.os.Bundle
import android.os.Handler
import android.os.Looper
import android.view.ViewGroup
import android.webkit.WebResourceRequest
import android.webkit.WebView
import android.webkit.WebViewClient
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.compose.foundation.background
import androidx.compose.foundation.gestures.detectTapGestures
import androidx.compose.foundation.layout.*
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.darkColorScheme
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.input.pointer.pointerInput
import androidx.compose.ui.viewinterop.AndroidView
import androidx.core.view.WindowCompat
import androidx.core.view.WindowInsetsCompat
import androidx.core.view.WindowInsetsControllerCompat
import androidx.media3.common.MediaItem
import androidx.media3.exoplayer.ExoPlayer
import androidx.media3.ui.AspectRatioFrameLayout
import androidx.media3.ui.PlayerView

class PlayerActivity : ComponentActivity() {
    private var exoPlayer: ExoPlayer? = null

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        requestedOrientation = ActivityInfo.SCREEN_ORIENTATION_LANDSCAPE
        WindowCompat.setDecorFitsSystemWindows(window, false)
        WindowInsetsControllerCompat(window, window.decorView).apply {
            hide(WindowInsetsCompat.Type.systemBars())
            systemBarsBehavior = WindowInsetsControllerCompat.BEHAVIOR_SHOW_TRANSIENT_BARS_BY_SWIPE
        }

        val embedUrl = intent.getStringExtra("EMBED_URL")

        setContent {
            var streamUrl by remember { mutableStateOf<String?>(null) }

            MaterialTheme(colorScheme = darkColorScheme(background = Color.Black)) {
                if (streamUrl == null) {
                    WebViewResolver(embedUrl = embedUrl ?: "") { url -> streamUrl = url }
                } else {
                    ExoPlayerView(url = streamUrl!!)
                }
            }
        }
    }

    override fun onDestroy() { exoPlayer?.release(); exoPlayer = null; super.onDestroy() }

    @Composable
    fun ExoPlayerView(url: String) {
        LaunchedEffect(url) {
            if (exoPlayer == null) {
                exoPlayer = ExoPlayer.Builder(this@PlayerActivity).build().apply {
                    setMediaItem(MediaItem.fromUri(url))
                    prepare()
                    playWhenReady = true
                    play()
                }
            }
        }

        Box(modifier = Modifier.fillMaxSize().background(Color.Black)) {
            AndroidView(
                factory = { context ->
                    PlayerView(context).apply {
                        player = exoPlayer
                        layoutParams = ViewGroup.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT)
                        resizeMode = AspectRatioFrameLayout.RESIZE_MODE_FILL
                        keepScreenOn = true
                        useController = true
                        controllerShowTimeoutMs = 3000
                    }
                },
                update = { view -> view.player = exoPlayer },
                modifier = Modifier.fillMaxSize()
            )

            // Invisible Double Tap Overlays
            Row(modifier = Modifier.fillMaxSize()) {
                // Left Rewind Zone
                Box(modifier = Modifier.weight(0.3f).fillMaxHeight().pointerInput(Unit) {
                    detectTapGestures(onDoubleTap = { exoPlayer?.seekTo((exoPlayer?.currentPosition ?: 0) - 10000) })
                })
                // Center Native Controls Zone (doesn't intercept)
                Box(modifier = Modifier.weight(0.4f).fillMaxHeight())
                // Right Forward Zone
                Box(modifier = Modifier.weight(0.3f).fillMaxHeight().pointerInput(Unit) {
                    detectTapGestures(onDoubleTap = { exoPlayer?.seekTo((exoPlayer?.currentPosition ?: 0) + 10000) })
                })
            }
        }
    }
}

@SuppressLint("SetJavaScriptEnabled")
@Composable
fun WebViewResolver(embedUrl: String, onStreamFound: (String) -> Unit) {
    AndroidView(
        factory = { context ->
            WebView(context).apply {
                layoutParams = ViewGroup.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT)
                settings.javaScriptEnabled = true
                settings.domStorageEnabled = true
                settings.userAgentString = "Mozilla/5.0 (Linux; Android 14; Pixel 8) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Mobile Safari/537.36"
                webViewClient = object : WebViewClient() {
                    override fun shouldInterceptRequest(view: WebView?, request: WebResourceRequest?): android.webkit.WebResourceResponse? {
                        val url = request?.url.toString()
                        if (url.contains(".m3u8") || url.contains(".mp4")) {
                            Handler(Looper.getMainLooper()).post { onStreamFound(url) }
                        }
                        return super.shouldInterceptRequest(view, request)
                    }
                }
                loadUrl(embedUrl)
            }
        },
        modifier = Modifier.fillMaxSize()
    )
}
