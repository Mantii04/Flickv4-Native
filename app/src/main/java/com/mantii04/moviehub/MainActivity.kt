package com.mantii04.moviehub

import android.content.Intent
import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.compose.foundation.ExperimentalFoundationApi
import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.LazyRow
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.pager.HorizontalPager
import androidx.compose.foundation.pager.rememberPagerState
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.ArrowBack
import androidx.compose.material.icons.filled.PlayArrow
import androidx.compose.material.icons.filled.Search
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import coil.compose.AsyncImage
import androidx.navigation.NavHostController
import androidx.navigation.compose.*
import kotlinx.coroutines.delay

class MainActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContent {
            MaterialTheme(colorScheme = darkColorScheme(primary = Color(0xFFE50914), background = Color.Black)) {
                val navController = rememberNavController()
                NavHost(navController, startDestination = "home") {
                    composable("home") { HomeScreen(navController) }
                    composable("search") { SearchScreen(navController) }
                    composable("detail/{id}/{isTv}") { backStackEntry ->
                        val id = backStackEntry.arguments?.getString("id")?.toInt() ?: 0
                        val isTv = backStackEntry.arguments?.getString("isTv")?.toBoolean() ?: false
                        DetailScreen(id, isTv, navController)
                    }
                }
            }
        }
    }
}

@OptIn(ExperimentalFoundationApi::class)
@Composable
fun HomeScreen(navController: NavHostController) {
    var trending by remember { mutableStateOf<List<MediaItem>>(emptyList()) }
    var popular by remember { mutableStateOf<List<MediaItem>>(emptyList()) }
    val pagerState = rememberPagerState(pageCount = { trending.take(5).size })

    LaunchedEffect(Unit) {
        TmdbService.getTrending { trending = it }
        TmdbService.getPopularMovies { popular = it }
    }

    // Auto-scroll hero
    LaunchedEffect(pagerState) {
        while (true) {
            delay(5000)
            if (pagerState.currentPage < trending.take(5).size - 1) {
                pagerState.animateScrollToPage(pagerState.currentPage + 1)
            } else {
                pagerState.animateScrollToPage(0)
            }
        }
    }

    LazyColumn(modifier = Modifier.fillMaxSize().background(Color.Black)) {
        // Hero Carousel
        item {
            Box(modifier = Modifier.fillMaxWidth().height(500.dp)) {
                if (trending.isNotEmpty()) {
                    HorizontalPager(state = pagerState, modifier = Modifier.fillMaxSize()) { page ->
                        val item = trending[page]
                        AsyncImage(
                            model = TmdbService.IMG_BASE + "original" + item.backdropPath,
                            contentDescription = null,
                            contentScale = ContentScale.Crop,
                            modifier = Modifier.fillMaxSize()
                        )
                    }
                    Box(modifier = Modifier.fillMaxSize().background(
                        Brush.verticalGradient(colors = listOf(Color.Transparent, Color.Black), startY = 300f)
                    ))
                    
                    Column(
                        modifier = Modifier.align(Alignment.BottomCenter).padding(16.dp),
                        horizontalAlignment = Alignment.CenterHorizontally
                    ) {
                        Text(trending[pagerState.currentPage].title, color = Color.White, fontSize = 28.sp, fontWeight = FontWeight.Bold)
                        Spacer(modifier = Modifier.height(16.dp))
                        Button(
                            onClick = { navController.navigate("detail/${trending[pagerState.currentPage].id}/${trending[pagerState.currentPage].isTv}") },
                            colors = ButtonDefaults.buttonColors(containerColor = Color.White, contentColor = Color.Black),
                            shape = RoundedCornerShape(4.dp)
                        ) {
                            Icon(Icons.Default.PlayArrow, contentDescription = null)
                            Spacer(modifier = Modifier.width(4.dp))
                            Text("Play", fontWeight = FontWeight.Bold)
                        }
                    }
                }
            }
        }

        // Carousels
        item { Carousel("Trending Now", trending, navController) }
        item { Carousel("Popular Movies", popular, navController) }
    }
}

@Composable
fun Carousel(title: String, items: List<MediaItem>, navController: NavHostController) {
    if (items.isEmpty()) return
    Column(modifier = Modifier.padding(vertical = 16.dp)) {
        Text(title, color = Color.White, fontSize = 18.sp, fontWeight = FontWeight.Bold, modifier = Modifier.padding(horizontal = 16.dp))
        Spacer(modifier = Modifier.height(8.dp))
        LazyRow(contentPadding = PaddingValues(horizontal = 16.dp), horizontalArrangement = Arrangement.spacedBy(8.dp)) {
            items(items) { item ->
                AsyncImage(
                    model = TmdbService.IMG_BASE + "w342" + item.posterPath,
                    contentDescription = null,
                    contentScale = ContentScale.Crop,
                    modifier = Modifier
                        .width(110.dp)
                        .height(165.dp)
                        .clip(RoundedCornerShape(4.dp))
                        .clickable { navController.navigate("detail/${item.id}/${item.isTv}") }
                )
            }
        }
    }
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun SearchScreen(navController: NavHostController) {
    var query by remember { mutableStateOf("") }
    var results by remember { mutableStateOf<List<MediaItem>>(emptyList()) }

    LaunchedEffect(query) {
        if (query.length < 2) { results = emptyList(); return@LaunchedEffect }
        delay(500)
        TmdbService.search(query) { results = it }
    }

    Column(modifier = Modifier.fillMaxSize().background(Color.Black).padding(16.dp)) {
        TextField(
            value = query,
            onValueChange = { query = it },
            placeholder = { Text("Search movies, TV shows...", color = Color.Gray) },
            modifier = Modifier.fillMaxWidth().background(Color(0xFF141414), RoundedCornerShape(8.dp)),
            colors = TextFieldDefaults.colors(
                focusedContainerColor = Color(0xFF141414),
                unfocusedContainerColor = Color(0xFF141414),
                focusedTextColor = Color.White,
                unfocusedTextColor = Color.White,
                focusedIndicatorColor = Color.Transparent,
                unfocusedIndicatorColor = Color.Transparent
            ),
            leadingIcon = { Icon(Icons.Default.Search, contentDescription = null, tint = Color.Gray) }
        )
        Spacer(modifier = Modifier.height(16.dp))
        LazyColumn {
            items(results) { item ->
                Row(
                    modifier = Modifier.fillMaxWidth().padding(vertical = 8.dp).clickable { navController.navigate("detail/${item.id}/${item.isTv}") },
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    AsyncImage(model = TmdbService.IMG_BASE + "w92" + item.posterPath, contentDescription = null, modifier = Modifier.width(60.dp).height(90.dp).clip(RoundedCornerShape(4.dp)))
                    Spacer(modifier = Modifier.width(16.dp))
                    Column {
                        Text(item.title, color = Color.White, fontWeight = FontWeight.Bold)
                        Text("${item.year} · ${if (item.isTv) "TV" else "Movie"}", color = Color.Gray, fontSize = 12.sp)
                    }
                }
            }
        }
    }
}

@Composable
fun DetailScreen(id: Int, isTv: Boolean, navController: NavHostController) {
    var detail by remember { mutableStateOf<MediaDetail?>(null) }
    var episodes by remember { mutableStateOf<List<Episode>>(emptyList()) }
    var selectedSeason by remember { mutableStateOf(1) }
    var selectedTab by remember { mutableStateOf(0) } // 0: Episodes, 1: More Like This

    LaunchedEffect(id) {
        TmdbService.getDetails(id, isTv) { d ->
            detail = d
            if (isTv && d?.seasons?.isNotEmpty() == true) {
                selectedSeason = d.seasons.first().number
                TmdbService.getEpisodes(id, selectedSeason) { eps -> episodes = eps }
            }
        }
    }

    if (detail == null) return
    val d = detail!!

    LazyColumn(modifier = Modifier.fillMaxSize().background(Color.Black)) {
        // Backdrop & Gradient
        item {
            Box(modifier = Modifier.fillMaxWidth().height(400.dp)) {
                AsyncImage(model = TmdbService.IMG_BASE + "original" + d.backdropPath, contentDescription = null, contentScale = ContentScale.Crop, modifier = Modifier.fillMaxSize())
                Box(modifier = Modifier.fillMaxSize().background(Brush.verticalGradient(colors = listOf(Color.Transparent, Color.Black), startY = 200f)))
                IconButton(onClick = { navController.popBackStack() }, modifier = Modifier.padding(16.dp).background(Color.Black.copy(alpha = 0.5f), RoundedCornerShape(50))) {
                    Icon(Icons.Default.ArrowBack, contentDescription = "Back", tint = Color.White)
                }
            }
        }
        // Metadata and Play Button
        item {
            Row(modifier = Modifier.padding(horizontal = 16.dp).offset(y = (-40).dp)) {
                AsyncImage(model = TmdbService.IMG_BASE + "w342" + d.posterPath, contentDescription = null, contentScale = ContentScale.Crop, modifier = Modifier.width(110.dp).height(165.dp).clip(RoundedCornerShape(8.dp)))
                Spacer(modifier = Modifier.width(16.dp))
                Column {
                    Text(d.title, color = Color.White, fontSize = 24.sp, fontWeight = FontWeight.Bold)
                    Spacer(modifier = Modifier.height(8.dp))
                    Text("${d.year} · ⭐ ${String.format("%.1f", d.rating)}", color = Color.Gray, fontSize = 14.sp)
                    Spacer(modifier = Modifier.height(16.dp))
                    Button(
                        onClick = { 
                            val intent = Intent(navController.context, PlayerActivity::class.java)
                            val url = if (isTv) "https://vixsrc.to/tv/$id/1/1" else "https://vixsrc.to/movie/$id"
                            intent.putExtra("EMBED_URL", url)
                            navController.context.startActivity(intent)
                        },
                        colors = ButtonDefaults.buttonColors(containerColor = Color.White, contentColor = Color.Black),
                        modifier = Modifier.fillMaxWidth().height(40.dp)
                    ) {
                        Icon(Icons.Default.PlayArrow, contentDescription = null)
                        Text("Play", fontWeight = FontWeight.Bold)
                    }
                }
            }
        }
        // Overview
        item {
            Text(d.overview, color = Color.White, modifier = Modifier.padding(horizontal = 16.dp), fontSize = 14.sp)
            Spacer(modifier = Modifier.height(24.dp))
        }
        // Cast Row
        if (d.cast.isNotEmpty()) {
            item {
                Text("Cast", color = Color.White, fontSize = 18.sp, fontWeight = FontWeight.Bold, modifier = Modifier.padding(horizontal = 16.dp))
                Spacer(modifier = Modifier.height(8.dp))
                LazyRow(contentPadding = PaddingValues(horizontal = 16.dp), horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                    items(d.cast) { c ->
                        Column(horizontalAlignment = Alignment.CenterHorizontally, modifier = Modifier.width(70.dp)) {
                            AsyncImage(model = TmdbService.IMG_BASE + "w185" + c.profilePath, contentDescription = null, contentScale = ContentScale.Crop, modifier = Modifier.size(60.dp).clip(RoundedCornerShape(50)))
                            Text(c.name, color = Color.White, fontSize = 11.sp, maxLines = 1, modifier = Modifier.padding(top = 4.dp))
                        }
                    }
                }
                Spacer(modifier = Modifier.height(24.dp))
            }
        }
        // Tabs
        item {
            TabRow(selectedTabIndex = selectedTab, containerColor = Color.Black, contentColor = Color.White) {
                Tab(selected = selectedTab == 0, onClick = { selectedTab = 0 }, text = { Text(if (isTv) "Episodes" else "Trailers") })
                Tab(selected = selectedTab == 1, onClick = { selectedTab = 1 }, text = { Text("More Like This") })
            }
        }
        // Tab Content
        if (selectedTab == 0 && isTv) {
            item {
                var expanded by remember { mutableStateOf(false) }
                Box(modifier = Modifier.padding(16.dp)) {
                    Button(onClick = { expanded = true }, colors = ButtonDefaults.buttonColors(containerColor = Color(0xFF141414))) { Text("Season $selectedSeason") }
                    DropdownMenu(expanded = expanded, onDismissRequest = { expanded = false }, modifier = Modifier.background(Color(0xFF141414))) {
                        d.seasons.forEach { s ->
                            DropdownMenuItem(text = { Text("Season ${s.number}", color = Color.White) }, onClick = { 
                                expanded = false; selectedSeason = s.number
                                TmdbService.getEpisodes(id, s.number) { eps -> episodes = eps }
                            })
                        }
                    }
                }
            }
            items(episodes) { ep ->
                Row(modifier = Modifier.fillMaxWidth().padding(horizontal = 16.dp, vertical = 8.dp).clickable { 
                    val intent = Intent(navController.context, PlayerActivity::class.java)
                    intent.putExtra("EMBED_URL", "https://vixsrc.to/tv/$id/$selectedSeason/${ep.epNum}")
                    navController.context.startActivity(intent)
                }, verticalAlignment = Alignment.CenterVertically) {
                    AsyncImage(model = TmdbService.IMG_BASE + "w300" + ep.stillPath, contentDescription = null, contentScale = ContentScale.Crop, modifier = Modifier.width(120.dp).height(70.dp).clip(RoundedCornerShape(4.dp)))
                    Spacer(modifier = Modifier.width(16.dp))
                    Column {
                        Text("${ep.epNum}. ${ep.title}", color = Color.White, fontWeight = FontWeight.Bold)
                        Text(ep.overview, color = Color.Gray, maxLines = 2, fontSize = 12.sp)
                    }
                }
            }
        } else if (selectedTab == 1) {
            items(d.similar.chunked(3)) { rowItems ->
                Row(modifier = Modifier.fillMaxWidth().padding(horizontal = 16.dp, vertical = 8.dp), horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                    rowItems.forEach { item ->
                        AsyncImage(
                            model = TmdbService.IMG_BASE + "w342" + item.posterPath,
                            contentDescription = null,
                            contentScale = ContentScale.Crop,
                            modifier = Modifier.weight(1f).aspectRatio(0.66f).clip(RoundedCornerShape(4.dp)).clickable { navController.navigate("detail/${item.id}/${item.isTv}") }
                        )
                    }
                    repeat(3 - rowItems.size) { Spacer(modifier = Modifier.weight(1f)) }
                }
            }
        }
    }
}
