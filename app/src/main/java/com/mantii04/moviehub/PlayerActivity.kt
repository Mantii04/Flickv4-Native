package com.mantii04.moviehub

import android.annotation.SuppressLint
import android.content.pm.ActivityInfo
import android.os.Bundle
import android.os.Handler
import android.os.Looper
import android.view.GestureDetector
import android.view.MotionEvent
import android.view.ViewGroup
import android.webkit.WebResourceRequest
import android.webkit.WebView
import android.webkit.WebViewClient
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.darkColorScheme
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
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
                    WebViewResolver(embedUrl = embedUrl ?: "") { url ->
                        streamUrl = url
                    }
                } else {
                    ExoPlayerView(url = streamUrl!!)
                }
            }
        }
    }

    override fun onDestroy() {
        exoPlayer?.release()
        exoPlayer = null
        super.onDestroy()
    }

    @Composable
    fun ExoPlayerView(url: String) {
        AndroidView(
            factory = { context ->
                if (exoPlayer == null) {
                    exoPlayer = ExoPlayer.Builder(context).build().apply {
                        setMediaItem(MediaItem.fromUri(url))
                        prepare()
                        playWhenReady = true
                        play()
                    }
                }

                val gestureDetector = GestureDetector(context, object : GestureDetector.SimpleOnGestureListener() {
                    override fun onDoubleTap(e: MotionEvent): Boolean {
                        val screenWidth = e.x
                        if (screenWidth < context.resources.displayMetrics.widthPixels * 0.3) {
                            exoPlayer?.seekTo((exoPlayer?.currentPosition ?: 0) - 10000)
                        } else if (screenWidth > context.resources.displayMetrics.widthPixels * 0.7) {
                            exoPlayer?.seekTo((exoPlayer?.currentPosition ?: 0) + 10000)
                        }
                        return true
                    }
                })

                PlayerView(context).apply {
                    player = exoPlayer
                    layoutParams = ViewGroup.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT)
                    resizeMode = AspectRatioFrameLayout.RESIZE_MODE_FILL
                    keepScreenOn = true
                    useController = true
                    controllerShowTimeoutMs = 3000
                    
                    setOnTouchListener { _, event ->
                        gestureDetector.onTouchEvent(event)
                        false 
                    }
                }
            },
            update = { view ->
                view.player = exoPlayer
                exoPlayer?.playWhenReady = true
                exoPlayer?.play()
            },
            modifier = Modifier.fillMaxSize().background(Color.Black)
        )
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
