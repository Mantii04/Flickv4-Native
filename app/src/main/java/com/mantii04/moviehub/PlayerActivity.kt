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
import androidx.compose.animation.AnimatedVisibility
import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.gestures.detectTapGestures
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
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
import androidx.compose.ui.text.style.TextAlign
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
        val season = intent.getIntExtra("SEASON", 0).takeIf { it > 0 }
        val episode = intent.getIntExtra("EPISODE", 0).takeIf { it > 0 }
        val nextTitle = intent.getStringExtra("NEXT_TITLE")

        setContent {
            var streamUrl by remember { mutableStateOf<String?>(null) }
            val context = LocalContext.current
            val db = AppDatabase.getDatabase(context)

            MaterialTheme(colorScheme = darkColorScheme(primary = Color(0xFFE50914), background = Color.Black)) {
                if (streamUrl == null) {
                    WebViewResolver(embedUrl = embedUrl ?: "") { url -> streamUrl = url }
                } else {
                    ExoPlayerView(
                        url = streamUrl!!, id = id, title = title, poster = poster,
                        isTv = isTv, season = season, episode = episode,
                        nextTitle = nextTitle, db = db
                    )
                }
            }
        }
    }

    override fun onDestroy() { exoPlayer?.release(); exoPlayer = null; super.onDestroy() }

    @Composable
    fun ExoPlayerView(
        url: String, id: Int, title: String, poster: String, isTv: Boolean,
        season: Int?, episode: Int?, nextTitle: String?, db: AppDatabase
    ) {
        var isPlaying by remember { mutableStateOf(true) }
        var position by remember { mutableStateOf(0L) }
        var duration by remember { mutableStateOf(1L) }
        var controlsVisible by remember { mutableStateOf(true) }
        var subtitles by remember { mutableStateOf<List<Subtitle>>(emptyList()) }
        var showSubtitleSheet by remember { mutableStateOf(false) }
        var selectedSubtitle by remember { mutableStateOf<Subtitle?>(null) }
        var showUpNext by remember { mutableStateOf(false) }
        var upNextCountdown by remember { mutableStateOf(10) }
        var upNextCancelled by remember { mutableStateOf(false) }
        var selectedQuality by remember { mutableStateOf<Int?>(null) }

        LaunchedEffect(url) {
            if (exoPlayer == null) {
                val trackSelector = DefaultTrackSelector(this@PlayerActivity).apply {
                    parameters = buildUponParameters()
                        .setMaxVideoSize(1920, 1080)
                        .setMaxVideoBitrate(Int.MAX_VALUE)
                        .setForceHighestSupportedBitrate(true)
                        .setAllowVideoMixedMimeTypeAdaptiveness(true)
                        .setAllowVideoNonSeamlessAdaptiveness(true)
                        .build()
                }
                exoPlayer = ExoPlayer.Builder(this@PlayerActivity)
                    .setTrackSelector(trackSelector)
                    .build().apply {
                        setMediaItem(MediaItem.fromUri(url))
                        prepare()
                        playWhenReady = true
                        play()
                    }

                // THE FIX: force 1080p the moment tracks are known
                exoPlayer?.addListener(object : Player.Listener {
                    override fun onTracksChanged(tracks: Tracks) {
                        val videoGroups = tracks.groups.filter { it.type == C.TRACK_TYPE_VIDEO }
                        if (videoGroups.isEmpty()) return
                        var bestGroup: Tracks.Group? = null
                        var bestHeight = 0
                        var bestTrackIndex = 0
                        for (group in videoGroups) {
                            for (i in 0 until group.length) {
                                val height = group.getTrackFormat(i).height ?: 0
                                if (height > bestHeight) {
                                    bestHeight = height
                                    bestGroup = group
                                    bestTrackIndex = i
                                }
                            }
                        }
                        bestGroup?.let { group ->
                            try {
                                val override = TrackSelectionOverride(group.mediaTrackGroup, bestTrackIndex)
                                val params = (exoPlayer?.trackSelectionParameters
                                    ?: TrackSelectionParameters.Builder(this@PlayerActivity).build())
                                    .buildUpon()
                                    .setOverrideForType(override)
                                    .build()
                                exoPlayer?.trackSelectionParameters = params
                                selectedQuality = bestHeight
                            } catch (_: Exception) {}
                        }
                    }
                })

                SubtitleService.fetchSubtitles(id, season, episode) { subtitles = it }

                while (true) {
                    delay(1000)
                    exoPlayer?.let {
                        isPlaying = it.isPlaying
                        position = it.currentPosition
                        duration = if (it.duration > 0) it.duration else 1L
                        if (position > 0) {
                            db.mediaDao().saveProgress(HistoryEntity(id, title, poster, isTv, position, duration))
                        }
                        if (nextTitle != null && !upNextCancelled && !showUpNext) {
                            val remaining = duration - position
                            if (remaining in 1..20000 && duration > 60000) {
                                showUpNext = true
                            }
                        }
                    }
                }
            }
        }

        LaunchedEffect(showUpNext, upNextCountdown) {
            if (showUpNext) {
                if (upNextCountdown > 0) { delay(1000); upNextCountdown-- }
                else { finish() }
            }
        }

        LaunchedEffect(controlsVisible, isPlaying, showUpNext) {
            if (controlsVisible && isPlaying && !showUpNext) {
                delay(3000)
                controlsVisible = false
            }
        }

        Box(
            modifier = Modifier
                .fillMaxSize()
                .background(Color.Black)
                .pointerInput(Unit) {
                    detectTapGestures(
                        onTap = { controlsVisible = !controlsVisible },
                        onDoubleTap = { offset ->
                            val w = size.width
                            if (offset.x < w * 0.3) exoPlayer?.seekTo((exoPlayer?.currentPosition ?: 0) - 10000)
                            else if (offset.x > w * 0.7) exoPlayer?.seekTo((exoPlayer?.currentPosition ?: 0) + 10000)
                            else if (isPlaying) exoPlayer?.pause() else exoPlayer?.play()
                        }
                    )
                }
        ) {
            AndroidView(
                factory = { context ->
                    PlayerView(context).apply {
                        player = exoPlayer
                        layoutParams = ViewGroup.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT)
                        // THE FIX: ZOOM fills the screen (crop edges, no distortion, no bars) — this is what Netflix/Flickv4 use
                        resizeMode = AspectRatioFrameLayout.RESIZE_MODE_ZOOM
                        keepScreenOn = true
                        useController = false
                    }
                },
                modifier = Modifier.fillMaxSize()
            )

            if (showUpNext && nextTitle != null) {
                Box(modifier = Modifier.fillMaxSize().background(Color.Black.copy(alpha = 0.85f))) {
                    Column(
                        modifier = Modifier.align(Alignment.Center).padding(32.dp),
                        horizontalAlignment = Alignment.CenterHorizontally
                    ) {
                        Text("Up Next", color = Color.Gray, fontSize = 14.sp)
                        Spacer(modifier = Modifier.height(8.dp))
                        Text(nextTitle, color = Color.White, fontSize = 20.sp, fontWeight = FontWeight.Bold, textAlign = TextAlign.Center)
                        Spacer(modifier = Modifier.height(24.dp))
                        Text("Playing in $upNextCountdown...", color = Color.White, fontSize = 16.sp)
                        Spacer(modifier = Modifier.height(24.dp))
                        Row(horizontalArrangement = Arrangement.spacedBy(16.dp)) {
                            OutlinedButton(
                                onClick = { showUpNext = false; upNextCancelled = true },
                                colors = ButtonDefaults.outlinedButtonColors(contentColor = Color.White)
                            ) { Text("Cancel") }
                            Button(
                                onClick = { finish() },
                                colors = ButtonDefaults.buttonColors(containerColor = Color.White, contentColor = Color.Black)
                            ) { Text("Play Now", fontWeight = FontWeight.Bold) }
                        }
                    }
                }
            }

            AnimatedVisibility(visible = controlsVisible && !showUpNext, modifier = Modifier.fillMaxSize()) {
                Box(modifier = Modifier.fillMaxSize().background(Color.Black.copy(alpha = 0.4f))) {
                    Row(modifier = Modifier.fillMaxWidth().padding(16.dp), verticalAlignment = Alignment.CenterVertically) {
                        IconButton(onClick = { finish() }) {
                            Icon(Icons.Default.ArrowBack, contentDescription = "Back", tint = Color.White)
                        }
                        Text(title, color = Color.White, fontSize = 18.sp, fontWeight = FontWeight.Bold, modifier = Modifier.weight(1f).padding(start = 8.dp))
                        if (selectedQuality != null) {
                            Text("${selectedQuality}p", color = Color(0xFFE50914), fontSize = 12.sp, modifier = Modifier.padding(end = 8.dp))
                        }
                        if (subtitles.isNotEmpty()) {
                            IconButton(onClick = { showSubtitleSheet = true }) {
                                Icon(Icons.Default.Subtitles, contentDescription = "Subtitles", tint = if (selectedSubtitle != null) Color(0xFFE50914) else Color.White)
                            }
                        }
                    }

                    Row(modifier = Modifier.align(Alignment.Center), horizontalArrangement = Arrangement.spacedBy(32.dp), verticalAlignment = Alignment.CenterVertically) {
                        IconButton(
                            onClick = { exoPlayer?.seekTo((exoPlayer?.currentPosition ?: 0) - 10000) },
                            modifier = Modifier.size(56.dp).background(Color.Black.copy(alpha = 0.6f), CircleShape)
                        ) { Icon(Icons.Default.Replay10, contentDescription = "-10s", tint = Color.White, modifier = Modifier.size(32.dp)) }
                        IconButton(
                            onClick = { if (isPlaying) exoPlayer?.pause() else exoPlayer?.play() },
                            modifier = Modifier.size(80.dp).background(Color.Black.copy(alpha = 0.8f), CircleShape)
                        ) { Icon(if (isPlaying) Icons.Default.Pause else Icons.Default.PlayArrow, contentDescription = "Play/Pause", tint = Color.White, modifier = Modifier.size(48.dp)) }
                        IconButton(
                            onClick = { exoPlayer?.seekTo((exoPlayer?.currentPosition ?: 0) + 10000) },
                            modifier = Modifier.size(56.dp).background(Color.Black.copy(alpha = 0.6f), CircleShape)
                        ) { Icon(Icons.Default.Forward10, contentDescription = "+10s", tint = Color.White, modifier = Modifier.size(32.dp)) }
                    }

                    Column(modifier = Modifier.align(Alignment.BottomCenter).fillMaxWidth().padding(24.dp)) {
                        Slider(
                            value = position.toFloat(),
                            onValueChange = { exoPlayer?.seekTo(it.toLong()) },
                            valueRange = 0f..duration.toFloat(),
                            colors = SliderDefaults.colors(
                                thumbColor = Color(0xFFE50914),
                                activeTrackColor = Color(0xFFE50914),
                                inactiveTrackColor = Color.DarkGray
                            )
                        )
                        Row(modifier = Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.SpaceBetween) {
                            val curMin = (position / 1000) / 60
                            val curSec = (position / 1000) % 60
                            val durMin = (duration / 1000) / 60
                            val durSec = (duration / 1000) % 60
                            Text(String.format("%02d:%02d", curMin, curSec), color = Color.White, fontSize = 12.sp)
                            Text(String.format("%02d:%02d", durMin, durSec), color = Color.Gray, fontSize = 12.sp)
                        }
                    }
                }
            }

            if (showSubtitleSheet) {
                Box(
                    modifier = Modifier.fillMaxSize().background(Color.Black.copy(alpha = 0.7f)).clickable { showSubtitleSheet = false },
                    contentAlignment = Alignment.Center
                ) {
                    Column(
                        modifier = Modifier.fillMaxWidth(0.6f).background(Color(0xFF141414), RoundedCornerShape(12.dp)).padding(16.dp)
                    ) {
                        Text("Subtitles", color = Color.White, fontSize = 18.sp, fontWeight = FontWeight.Bold)
                        Spacer(modifier = Modifier.height(12.dp))
                        LazyColumn {
                            item {
                                Row(
                                    modifier = Modifier.fillMaxWidth().clickable {
                                        selectedSubtitle = null
                                        showSubtitleSheet = false
                                    }.padding(vertical = 12.dp, horizontal = 4.dp),
                                    verticalAlignment = Alignment.CenterVertically
                                ) { Text("Off", color = Color.White, fontSize = 15.sp) }
                            }
                            items(subtitles) { sub ->
                                Row(
                                    modifier = Modifier.fillMaxWidth().clickable {
                                        selectedSubtitle = sub
                                        showSubtitleSheet = false
                                    }.padding(vertical = 12.dp, horizontal = 4.dp),
                                    verticalAlignment = Alignment.CenterVertically
                                ) {
                                    Text(sub.label, color = if (selectedSubtitle == sub) Color(0xFFE50914) else Color.White, fontSize = 15.sp)
                                }
                            }
                        }
                    }
                }
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
