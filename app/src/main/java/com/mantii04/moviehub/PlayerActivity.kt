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
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.viewinterop.AndroidView
import androidx.core.view.WindowCompat
import androidx.core.view.WindowInsetsCompat
import androidx.core.view.WindowInsetsControllerCompat
import androidx.media3.common.MediaItem
import androidx.media3.common.Player
import androidx.media3.exoplayer.ExoPlayer
import androidx.media3.exoplayer.trackselection.DefaultTrackSelector
import androidx.media3.ui.AspectRatioFrameLayout
import androidx.media3.ui.PlayerView
import kotlinx.coroutines.delay

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
        val id = intent.getIntExtra("ID", 0)
        val title = intent.getStringExtra("TITLE") ?: ""
        val poster = intent.getStringExtra("POSTER") ?: ""
        val isTv = intent.getBooleanExtra("IS_TV", false)

        setContent {
            var streamUrl by remember { mutableStateOf<String?>(null) }
            val context = LocalContext.current
            val db = AppDatabase.getDatabase(context)

            MaterialTheme(colorScheme = darkColorScheme(background = Color.Black)) {
                if (streamUrl == null) {
                    WebViewResolver(embedUrl = embedUrl ?: "") { url -> streamUrl = url }
                } else {
                    ExoPlayerView(url = streamUrl!!, id = id, title = title, poster = poster, isTv = isTv, db = db)
                }
            }
        }
    }

    override fun onDestroy() { exoPlayer?.release(); exoPlayer = null; super.onDestroy() }

    @Composable
    fun ExoPlayerView(url: String, id: Int, title: String, poster: String, isTv: Boolean, db: AppDatabase) {
        val scope = rememberCoroutineScope()

        LaunchedEffect(url) {
            if (exoPlayer == null) {
                val trackSelector = DefaultTrackSelector(this@PlayerActivity).apply {
                    parameters = buildUponParameters().setMaxVideoSize(1920, 1080).setForceHighestSupportedBitrate(true).build()
                }

                exoPlayer = ExoPlayer.Builder(this@PlayerActivity).setTrackSelector(trackSelector).build().apply {
                    setMediaItem(MediaItem.fromUri(url))
                    prepare()
                    playWhenReady = true
                    play()
                }

                // Save progress every 5 seconds
                while (true) {
                    delay(5000)
                    val pos = exoPlayer?.currentPosition ?: 0L
                    val dur = exoPlayer?.duration ?: 0L
                    if (pos > 0 && dur > 0) {
                        db.mediaDao().saveProgress(HistoryEntity(id, title, poster, isTv, pos, dur))
                    }
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

            Row(modifier = Modifier.fillMaxSize()) {
                Box(modifier = Modifier.weight(0.3f).fillMaxHeight().pointerInput(Unit) {
                    detectTapGestures(onDoubleTap = { exoPlayer?.seekTo((exoPlayer?.currentPosition ?: 0) - 10000) })
                })
                Box(modifier = Modifier.weight(0.4f).fillMaxHeight())
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
