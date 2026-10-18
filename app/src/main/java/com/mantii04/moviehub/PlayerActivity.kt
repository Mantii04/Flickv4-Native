package com.mantii04.moviehub

import android.annotation.SuppressLint
import android.content.pm.ActivityInfo
import android.os.Bundle
import android.os.Handler
import android.os.Looper
import android.view.ViewGroup
import android.webkit.WebResourceRequest
import android.webkit.WebResourceResponse
import android.webkit.WebView
import android.webkit.WebViewClient
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.compose.animation.AnimatedVisibility
import androidx.compose.foundation.background
import androidx.compose.foundation.gestures.detectTapGestures
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.input.pointer.pointerInput
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.compose.ui.viewinterop.AndroidView
import androidx.core.view.WindowCompat
import androidx.core.view.WindowInsetsCompat
import androidx.core.view.WindowInsetsControllerCompat
import androidx.media3.common.C
import androidx.media3.common.MediaItem
import androidx.media3.common.Player
import androidx.media3.common.TrackSelectionOverride
import androidx.media3.common.TrackSelectionParameters
import androidx.media3.common.Tracks
import androidx.media3.datasource.DefaultHttpDataSource
import androidx.media3.exoplayer.ExoPlayer
import androidx.media3.exoplayer.hls.HlsMediaSource
import androidx.media3.exoplayer.source.ProgressiveMediaSource
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

        val embedUrl = intent.getStringExtra("EMBED_URL") ?: ""
        val id = intent.getIntExtra("ID", 0)
        val title = intent.getStringExtra("TITLE") ?: ""
        val poster = intent.getStringExtra("POSTER") ?: ""
        val isTv = intent.getBooleanExtra("IS_TV", false)

        setContent {
            var streamUrl by remember { mutableStateOf<String?>(null) }
            var timeout by remember { mutableStateOf(false) }
            var debugUrls by remember { mutableStateOf(0) }
            val context = LocalContext.current
            val db = AppDatabase.getDatabase(context)

            LaunchedEffect(Unit) {
                delay(25000) // 25 second timeout
                if (streamUrl == null) timeout = true
            }

            MaterialTheme(colorScheme = darkColorScheme(primary = Color(0xFFE50914), background = Color.Black)) {
                if (streamUrl == null) {
                    Box(modifier = Modifier.fillMaxSize().background(Color.Black), contentAlignment = Alignment.Center) {
                        AndroidView(
                            factory = { ctx ->
                                WebView(ctx).apply {
                                    alpha = 0f // Hide the WebView
                                    layoutParams = ViewGroup.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT)
                                    settings.javaScriptEnabled = true
                                    settings.domStorageEnabled = true
                                    settings.mediaPlaybackRequiresUserGesture = false
                                    settings.userAgentString = "Mozilla/5.0 (Linux; Android 14; Pixel 8) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Mobile Safari/537.36"

                                    webViewClient = object : WebViewClient() {
                                        override fun shouldInterceptRequest(view: WebView?, request: WebResourceRequest?): WebResourceResponse? {
                                            val u = request?.url?.toString() ?: return super.shouldInterceptRequest(view, request)
                                            if (u.contains(".m3u8") || u.contains(".mp4")) {
                                                Handler(Looper.getMainLooper()).post { 
                                                    if (streamUrl == null) {
                                                        streamUrl = u
                                                    }
                                                }
                                            }
                                            return super.shouldInterceptRequest(view, request)
                                        }
                                        override fun onPageFinished(view: WebView?, url: String?) {
                                            super.onPageFinished(view, url)
                                            view?.evaluateJavascript(MUTE_SCRIPT, null)
                                        }
                                    }
                                    loadUrl(embedUrl)
                                }
                            },
                            modifier = Modifier.fillMaxSize()
                        )
                        Column(horizontalAlignment = Alignment.CenterHorizontally) {
                            CircularProgressIndicator(color = Color(0xFFE50914), strokeWidth = 3.dp)
                            Spacer(modifier = Modifier.height(20.dp))
                            Text(if (timeout) "Timed out. Tap Cancel." else "Resolving VidRock stream…", color = Color.White, fontSize = 15.sp)
                            if (timeout) {
                                Spacer(modifier = Modifier.height(16.dp))
                                OutlinedButton(onClick = { finish() }) { Text("Cancel") }
                            }
                        }
                    }
                } else {
                    ExoPlayerView(url = streamUrl!!, id = id, title = title, poster = poster, isTv = isTv, db = db)
                }
            }
        }
    }

    override fun onDestroy() { exoPlayer?.release(); exoPlayer = null; super.onDestroy() }

    @Composable
    fun ExoPlayerView(url: String, id: Int, title: String, poster: String, isTv: Boolean, db: AppDatabase) {
        var isPlaying by remember { mutableStateOf(false) }
        var position by remember { mutableStateOf(0L) }
        var duration by remember { mutableStateOf(1L) }
        var controlsVisible by remember { mutableStateOf(true) }
        var videoHeight by remember { mutableStateOf(0) }
        var playError by remember { mutableStateOf<String?>(null) }

        LaunchedEffect(url) {
            if (exoPlayer == null) {
                val trackSelector = DefaultTrackSelector(this@PlayerActivity)
                
                // VidRock CDN headers (Referer is the iframe URL)
                val dataSourceFactory = DefaultHttpDataSource.Factory()
                    .setDefaultRequestProperties(mapOf(
                        "Referer" to "https://vidrock.net/",
                        "Origin" to "https://vidrock.net",
                        "User-Agent" to "Mozilla/5.0 (Linux; Android 14; Pixel 8) AppleWebKit/537.36"
                    ))

                val mediaItem = MediaItem.fromUri(url)
                val mediaSource = if (url.contains(".m3u8")) {
                    HlsMediaSource.Factory(dataSourceFactory).createMediaSource(mediaItem)
                } else {
                    ProgressiveMediaSource.Factory(dataSourceFactory).createMediaSource(mediaItem)
                }

                val player = ExoPlayer.Builder(this@PlayerActivity).setTrackSelector(trackSelector).build()
                player.setMediaSource(mediaSource)
                player.prepare()
                player.playWhenReady = true
                player.play()
                exoPlayer = player

                player.addListener(object : Player.Listener {
                    override fun onPlaybackStateChanged(state: Int) {
                        if (state == Player.STATE_READY) player.play()
                    }
                    override fun onPlayerError(error: androidx.media3.common.PlaybackException) {
                        playError = error.errorCodeName
                    }
                    override fun onVideoSizeChanged(videoSize: androidx.media3.common.VideoSize) {
                        videoHeight = videoSize.height
                    }
                    override fun onTracksChanged(tracks: Tracks) {
                        val videoGroups = tracks.groups.filter { it.type == C.TRACK_TYPE_VIDEO }
                        if (videoGroups.isEmpty()) return
                        var bestGroup: Tracks.Group? = null
                        var bestHeight = 0
                        var bestTrackIndex = 0
                        for (group in videoGroups) {
                            for (i in 0 until group.length) {
                                val h = group.getTrackFormat(i).height ?: 0
                                if (h > bestHeight) { bestHeight = h; bestGroup = group; bestTrackIndex = i }
                            }
                        }
                        bestGroup?.let { group ->
                            try {
                                val override = TrackSelectionOverride(group.mediaTrackGroup, bestTrackIndex)
                                val params = (player.trackSelectionParameters ?: TrackSelectionParameters.Builder(this@PlayerActivity).build())
                                    .buildUpon().setOverrideForType(override).build()
                                player.trackSelectionParameters = params
                            } catch (_: Exception) {}
                        }
                    }
                })

                while (true) {
                    delay(1000)
                    isPlaying = player.isPlaying
                    position = player.currentPosition
                    duration = if (player.duration > 0) player.duration else 1L
                    if (position > 0) db.mediaDao().saveProgress(HistoryEntity(id, title, poster, isTv, position, duration))
                }
            }
        }

        LaunchedEffect(controlsVisible, isPlaying) {
            if (controlsVisible && isPlaying) { delay(3000); controlsVisible = false }
        }

        Box(modifier = Modifier.fillMaxSize().background(Color.Black).pointerInput(Unit) {
            detectTapGestures(
                onTap = { controlsVisible = !controlsVisible },
                onDoubleTap = { offset ->
                    val w = size.width
                    if (offset.x < w * 0.3) exoPlayer?.seekTo((exoPlayer?.currentPosition ?: 0) - 10000)
                    else if (offset.x > w * 0.7) exoPlayer?.seekTo((exoPlayer?.currentPosition ?: 0) + 10000)
                    else if (isPlaying) exoPlayer?.pause() else exoPlayer?.play()
                }
            )
        }) {
            AndroidView(
                factory = { ctx ->
                    PlayerView(ctx).apply {
                        player = exoPlayer
                        layoutParams = ViewGroup.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT)
                        resizeMode = AspectRatioFrameLayout.RESIZE_MODE_ZOOM
                        keepScreenOn = true
                        useController = false
                    }
                },
                modifier = Modifier.fillMaxSize()
            )

            AnimatedVisibility(visible = controlsVisible, modifier = Modifier.fillMaxSize()) {
                Box(modifier = Modifier.fillMaxSize().background(Color.Black.copy(alpha = 0.4f))) {
                    Row(modifier = Modifier.fillMaxWidth().padding(16.dp), verticalAlignment = Alignment.CenterVertically) {
                        IconButton(onClick = { finish() }) { Icon(Icons.Default.ArrowBack, contentDescription = "Back", tint = Color.White) }
                        Text(title, color = Color.White, fontSize = 18.sp, fontWeight = FontWeight.Bold, modifier = Modifier.weight(1f).padding(start = 8.dp))
                        Text(
                            when {
                                playError != null -> "ERR"
                                videoHeight > 0 -> "${videoHeight}p"
                                else -> "..."
                            },
                            color = if (playError != null) Color.Yellow else Color(0xFFE50914),
                            fontSize = 12.sp,
                            modifier = Modifier.padding(end = 8.dp)
                        )
                    }
                    Row(modifier = Modifier.align(Alignment.Center), horizontalArrangement = Arrangement.spacedBy(32.dp), verticalAlignment = Alignment.CenterVertically) {
                        IconButton(onClick = { exoPlayer?.seekTo((exoPlayer?.currentPosition ?: 0) - 10000) }, modifier = Modifier.size(56.dp).background(Color.Black.copy(alpha = 0.6f), CircleShape)) { Icon(Icons.Default.Replay10, contentDescription = "-10s", tint = Color.White, modifier = Modifier.size(32.dp)) }
                        IconButton(onClick = { if (isPlaying) exoPlayer?.pause() else exoPlayer?.play() }, modifier = Modifier.size(80.dp).background(Color.Black.copy(alpha = 0.8f), CircleShape)) { Icon(if (isPlaying) Icons.Default.Pause else Icons.Default.PlayArrow, contentDescription = "Play", tint = Color.White, modifier = Modifier.size(48.dp)) }
                        IconButton(onClick = { exoPlayer?.seekTo((exoPlayer?.currentPosition ?: 0) + 10000) }, modifier = Modifier.size(56.dp).background(Color.Black.copy(alpha = 0.6f), CircleShape)) { Icon(Icons.Default.Forward10, contentDescription = "+10s", tint = Color.White, modifier = Modifier.size(32.dp)) }
                    }
                    Column(modifier = Modifier.align(Alignment.BottomCenter).fillMaxWidth().padding(24.dp)) {
                        Slider(value = position.toFloat(), onValueChange = { exoPlayer?.seekTo(it.toLong()) }, valueRange = 0f..duration.toFloat(), colors = SliderDefaults.colors(thumbColor = Color(0xFFE50914), activeTrackColor = Color(0xFFE50914), inactiveTrackColor = Color.DarkGray))
                        Row(modifier = Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.SpaceBetween) {
                            val cM = (position / 1000) / 60; val cS = (position / 1000) % 60; val dM = (duration / 1000) / 60; val dS = (duration / 1000) % 60
                            Text(String.format("%02d:%02d", cM, cS), color = Color.White, fontSize = 12.sp)
                            Text(String.format("%02d:%02d", dM, dS), color = Color.Gray, fontSize = 12.sp)
                        }
                    }
                    if (playError != null) {
                        Box(modifier = Modifier.fillMaxSize(), contentAlignment = Alignment.Center) {
                            Column(horizontalAlignment = Alignment.CenterHorizontally, modifier = Modifier.padding(24.dp).background(Color.Black.copy(alpha = 0.85f), androidx.compose.foundation.shape.RoundedCornerShape(8.dp)).padding(16.dp)) {
                                Text("Playback error", color = Color.White, fontWeight = FontWeight.Bold, fontSize = 16.sp)
                                Spacer(modifier = Modifier.height(8.dp))
                                Text(playError!!, color = Color.Yellow, fontSize = 12.sp)
                                Spacer(modifier = Modifier.height(12.dp))
                                Button(onClick = { finish() }) { Text("Back") }
                            }
                        }
                    }
                }
            }
        }
    }
}

private const val MUTE_SCRIPT = """
(function() {
  try {
    var vd = Object.getOwnPropertyDescriptor(HTMLMediaElement.prototype, 'volume');
    if (vd && vd.set) {
      Object.defineProperty(HTMLMediaElement.prototype, 'volume', {
        get: function() { return 0; },
        set: function() {}
      });
    }
    function mute() {
      try { document.querySelectorAll('video,audio').forEach(function(el) { el.muted = true; el.volume = 0; }); } catch(e) {}
    }
    mute();
    setInterval(mute, 300);
  } catch(e) {}
})();
"""
