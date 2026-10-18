package com.mantii04.moviehub

import android.content.Intent
import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.LazyRow
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import coil.compose.AsyncImage
import androidx.navigation.NavHostController
import androidx.navigation.compose.*

class MainActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContent {
            MaterialTheme(colorScheme = darkColorScheme(primary = Color.Red, background = Color(0xFF141414))) {
                val navController = rememberNavController()
                NavHost(navController, startDestination = "home") {
                    composable("home") { HomeScreen(navController) }
                }
            }
        }
    }
}

@Composable
fun HomeScreen(navController: NavHostController) {
    var trending by remember { mutableStateOf<List<MediaItem>>(emptyList()) }
    var popularMovies by remember { mutableStateOf<List<MediaItem>>(emptyList()) }
    var popularTv by remember { mutableStateOf<List<MediaItem>>(emptyList()) }

    LaunchedEffect(Unit) {
        TmdbService.getTrending { trending = it }
        TmdbService.getPopularMovies { popularMovies = it }
        TmdbService.getPopularTv { popularTv = it }
    }

    LazyColumn(
        modifier = Modifier.fillMaxSize().background(Color(0xFF141414)),
        contentPadding = PaddingValues(bottom = 32.dp)
    ) {
        item {
            if (trending.isNotEmpty()) {
                val hero = trending.first()
                Box(modifier = Modifier.fillMaxWidth().height(450.dp)) {
                    AsyncImage(
                        model = TmdbService.IMG_BASE + "original" + hero.backdropPath,
                        contentDescription = null,
                        contentScale = ContentScale.Crop,
                        modifier = Modifier.fillMaxSize()
                    )
                    Box(
                        modifier = Modifier.fillMaxSize().background(
                            Brush.verticalGradient(
                                colors = listOf(Color.Transparent, Color(0xFF141414)),
                                startY = 300f
                            )
                        )
                    )
                    Column(
                        modifier = Modifier.align(Alignment.BottomCenter).padding(16.dp),
                        horizontalAlignment = Alignment.CenterHorizontally
                    ) {
                        Text(hero.title, color = Color.White, fontSize = 32.sp, fontWeight = FontWeight.Bold)
                        Spacer(modifier = Modifier.height(16.dp))
                        Row {
                            Button(
                                onClick = {
                                    val intent = Intent(navController.context, PlayerActivity::class.java)
                                    val url = if (hero.isTv) "https://vixsrc.to/tv/${hero.id}/1/1" else "https://vixsrc.to/movie/${hero.id}"
                                    intent.putExtra("EMBED_URL", url)
                                    navController.context.startActivity(intent)
                                },
                                colors = ButtonDefaults.buttonColors(containerColor = Color.White, contentColor = Color.Black)
                            ) {
                                Text("▶ Play", fontWeight = FontWeight.Bold)
                            }
                        }
                    }
                }
            } else {
                Box(modifier = Modifier.fillMaxWidth().height(450.dp), contentAlignment = Alignment.Center) {
                    CircularProgressIndicator(color = Color.Red)
                }
            }
        }

        item { CarouselRow("Popular Movies", popularMovies, navController) }
        item { CarouselRow("Popular TV Shows", popularTv, navController) }
        item { CarouselRow("Trending Now", trending, navController) }
    }
}

@Composable
fun CarouselRow(title: String, items: List<MediaItem>, navController: NavHostController) {
    if (items.isEmpty()) return
    Column(modifier = Modifier.padding(vertical = 16.dp)) {
        Text(title, color = Color.White, fontSize = 20.sp, fontWeight = FontWeight.Bold, modifier = Modifier.padding(horizontal = 16.dp))
        Spacer(modifier = Modifier.height(8.dp))
        LazyRow(contentPadding = PaddingValues(horizontal = 16.dp), horizontalArrangement = Arrangement.spacedBy(8.dp)) {
            items(items) { item ->
                AsyncImage(
                    model = TmdbService.IMG_BASE + "w342" + item.posterPath,
                    contentDescription = item.title,
                    contentScale = ContentScale.Crop,
                    modifier = Modifier
                        .width(120.dp)
                        .height(180.dp)
                        .clip(RoundedCornerShape(8.dp))
                        .clickable {
                            val intent = Intent(navController.context, PlayerActivity::class.java)
                            val url = if (item.isTv) "https://vixsrc.to/tv/${item.id}/1/1" else "https://vixsrc.to/movie/${item.id}"
                            intent.putExtra("EMBED_URL", url)
                            navController.context.startActivity(intent)
                        }
                )
            }
        }
    }
}
