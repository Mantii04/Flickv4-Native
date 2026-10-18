package com.mantii04.moviehub

import android.content.Intent
import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyRow
import androidx.compose.foundation.lazy.grid.*
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Home
import androidx.compose.material.icons.filled.Search
import androidx.compose.material.icons.filled.ArrowBack
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
            MaterialTheme(colorScheme = darkColorScheme(primary = Color.Red, background = Color(0xFF141414))) {
                val navController = rememberNavController()
                Scaffold(
                    bottomBar = {
                        if (navController.currentDestination?.route != "detail/{id}/{isTv}") {
                            NavigationBar(containerColor = Color.Black) {
                                NavigationBarItem(
                                    icon = { Icon(Icons.Default.Home, contentDescription = null) },
                                    label = { Text("Home") },
                                    selected = navController.currentDestination?.route == "home",
                                    onClick = { navController.navigate("home") }
                                )
                                NavigationBarItem(
                                    icon = { Icon(Icons.Default.Search, contentDescription = null) },
                                    label = { Text("Search") },
                                    selected = navController.currentDestination?.route == "search",
                                    onClick = { navController.navigate("search") }
                                )
                            }
                        }
                    }
                ) { padding ->
                    NavHost(navController, startDestination = "home", modifier = Modifier.padding(padding)) {
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
}

@Composable
fun HomeScreen(navController: NavHostController) {
    var items by remember { mutableStateOf<List<MediaItem>>(emptyList()) }
    var hero by remember { mutableStateOf<MediaItem?>(null) }
    var page by remember { mutableStateOf(1) }
    var isLoading by remember { mutableStateOf(false) }
    var hasMore by remember { mutableStateOf(true) }
    val gridState = rememberLazyGridState()

    // Initial load
    LaunchedEffect(Unit) {
        isLoading = true
        TmdbService.getTrending(1) { 
            hero = it.firstOrNull()
            items = it
            isLoading = false
        }
    }

    // Infinite scroll trigger
    val shouldLoadMore by remember {
        derivedStateOf {
            val lastVisible = gridState.layoutInfo.visibleItemsInfo.lastOrNull()?.index ?: 0
            lastVisible >= items.size - 5 && !isLoading && hasMore
        }
    }

    LaunchedEffect(shouldLoadMore) {
        if (shouldLoadMore) {
            isLoading = true
            page++
            TmdbService.getTrending(page) { newItems ->
                if (newItems.isEmpty()) {
                    hasMore = false
                } else {
                    items = items + newItems
                }
                isLoading = false
            }
        }
    }

    LazyVerticalGrid(
        state = gridState,
        columns = GridCells.Adaptive(minSize = 110.dp),
        contentPadding = PaddingValues(bottom = 32.dp),
        modifier = Modifier.fillMaxSize().background(Color(0xFF141414))
    ) {
        // Hero Banner
        item(span = { GridItemSpan(maxLineSpan) }) {
            if (hero != null) {
                Box(modifier = Modifier.fillMaxWidth().height(500.dp)) {
                    AsyncImage(model = TmdbService.IMG_BASE + "original" + hero!!.backdropPath, contentDescription = null, contentScale = ContentScale.Crop, modifier = Modifier.fillMaxSize())
                    Box(modifier = Modifier.fillMaxSize().background(Brush.verticalGradient(colors = listOf(Color.Transparent, Color(0xFF141414)), startY = 300f)))
                    Column(modifier = Modifier.align(Alignment.BottomCenter).padding(16.dp), horizontalAlignment = Alignment.CenterHorizontally) {
                        Text(hero!!.title, color = Color.White, fontSize = 32.sp, fontWeight = FontWeight.Bold)
                        Spacer(modifier = Modifier.height(16.dp))
                        Button(onClick = { navController.navigate("detail/${hero!!.id}/${hero!!.isTv}") }, colors = ButtonDefaults.buttonColors(containerColor = Color.White, contentColor = Color.Black)) {
                            Text("▶ Play", fontWeight = FontWeight.Bold)
                        }
                    }
                }
            }
        }

        // Title for the grid
        item(span = { GridItemSpan(maxLineSpan) }) {
            Text("Trending Now", color = Color.White, fontSize = 20.sp, fontWeight = FontWeight.Bold, modifier = Modifier.padding(16.dp))
        }

        // The Infinite Grid
        items(items) { item ->
            AsyncImage(
                model = TmdbService.IMG_BASE + "w342" + item.posterPath,
                contentDescription = item.title,
                contentScale = ContentScale.Crop,
                modifier = Modifier
                    .padding(4.dp)
                    .aspectRatio(0.66f)
                    .clip(RoundedCornerShape(8.dp))
                    .clickable { navController.navigate("detail/${item.id}/${item.isTv}") }
            )
        }

        // Loading Spinner at bottom
        if (isLoading) {
            item(span = { GridItemSpan(maxLineSpan) }) {
                Box(modifier = Modifier.fillMaxWidth().padding(16.dp), contentAlignment = Alignment.Center) {
                    CircularProgressIndicator(color = Color.Red)
                }
            }
        }
    }
}

@Composable
fun SearchScreen(navController: NavHostController) {
    var query by remember { mutableStateOf("") }
    var results by remember { mutableStateOf<List<MediaItem>>(emptyList()) }
    var isSearching by remember { mutableStateOf(false) }

    LaunchedEffect(query) {
        if (query.length < 2) { results = emptyList(); isSearching = false; return@LaunchedEffect }
        isSearching = true
        delay(500) // Debounce
        TmdbService.search(query) { results = it; isSearching = false }
    }

    Column(modifier = Modifier.fillMaxSize().background(Color(0xFF141414)).padding(16.dp)) {
        TextField(value = query, onValueChange = { query = it }, placeholder = { Text("Search movies, TV shows...", color = Color.Gray) }, modifier = Modifier.fillMaxWidth().background(Color(0xFF222222), RoundedCornerShape(8.dp)), colors = TextFieldDefaults.colors(focusedContainerColor = Color(0xFF222222), unfocusedContainerColor = Color(0xFF222222), focusedTextColor = Color.White, unfocusedTextColor = Color.White))
        Spacer(modifier = Modifier.height(16.dp))
        
        if (isSearching) { 
            CircularProgressIndicator(color = Color.Red, modifier = Modifier.align(Alignment.CenterHorizontally)) 
        } else {
            LazyColumn {
                items(results) { item ->
                    Row(modifier = Modifier.fillMaxWidth().padding(vertical = 8.dp).clickable { navController.navigate("detail/${item.id}/${item.isTv}") }, verticalAlignment = Alignment.CenterVertically) {
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
}

@Composable
fun DetailScreen(id: Int, isTv: Boolean, navController: NavHostController) {
    var detail by remember { mutableStateOf<MediaDetail?>(null) }
    var episodes by remember { mutableStateOf<List<Episode>>(emptyList()) }
    var selectedSeason by remember { mutableStateOf(1) }
    var hasError by remember { mutableStateOf(false) }

    LaunchedEffect(id) {
        TmdbService.getDetails(id, isTv) { d ->
            if (d == null) {
                hasError = true
            } else {
                detail = d
                if (isTv && d.seasons.isNotEmpty()) {
                    selectedSeason = d.seasons.first().number
                    TmdbService.getEpisodes(id, selectedSeason) { eps -> episodes = eps }
                }
            }
        }
    }

    if (hasError) {
        Box(modifier = Modifier.fillMaxSize().background(Color(0xFF141414)), contentAlignment = Alignment.Center) {
            Text("Failed to load details. Check connection.", color = Color.Red)
        }
        return
    }

    if (detail == null) { 
        Box(modifier = Modifier.fillMaxSize().background(Color(0xFF141414)), contentAlignment = Alignment.Center) { 
            CircularProgressIndicator(color = Color.Red) 
        } 
        return 
    }

    val d = detail!!
    LazyColumn(modifier = Modifier.fillMaxSize().background(Color(0xFF141414))) {
        item {
            Box(modifier = Modifier.fillMaxWidth().height(400.dp)) {
                AsyncImage(model = TmdbService.IMG_BASE + "original" + d.backdropPath, contentDescription = null, contentScale = ContentScale.Crop, modifier = Modifier.fillMaxSize())
                Box(modifier = Modifier.fillMaxSize().background(Brush.verticalGradient(colors = listOf(Color.Transparent, Color(0xFF141414)), startY = 200f)))
                IconButton(onClick = { navController.popBackStack() }, modifier = Modifier.padding(16.dp).background(Color.Black.copy(alpha = 0.5f), RoundedCornerShape(50))) {
                    Icon(Icons.Default.ArrowBack, contentDescription = "Back", tint = Color.White)
                }
            }
        }
        item {
            Row(modifier = Modifier.padding(16.dp)) {
                AsyncImage(model = TmdbService.IMG_BASE + "w342" + d.posterPath, contentDescription = null, contentScale = ContentScale.Crop, modifier = Modifier.width(120.dp).height(180.dp).clip(RoundedCornerShape(8.dp)))
                Spacer(modifier = Modifier.width(16.dp))
                Column {
                    Text(d.title, color = Color.White, fontSize = 24.sp, fontWeight = FontWeight.Bold)
                    Spacer(modifier = Modifier.height(8.dp))
                    Text("${d.year} · ⭐ ${String.format("%.1f", d.rating)}", color = Color.Gray)
                    Spacer(modifier = Modifier.height(16.dp))
                    Button(onClick = {
                        val intent = Intent(navController.context, PlayerActivity::class.java)
                        val url = if (isTv) "https://vixsrc.to/tv/$id/1/1" else "https://vixsrc.to/movie/$id"
                        intent.putExtra("EMBED_URL", url)
                        navController.context.startActivity(intent)
                    }, colors = ButtonDefaults.buttonColors(containerColor = Color.White, contentColor = Color.Black), modifier = Modifier.fillMaxWidth()) {
                        Text("▶ Play", fontWeight = FontWeight.Bold)
                    }
                }
            }
        }
        item { Text(d.overview, color = Color.White, modifier = Modifier.padding(horizontal = 16.dp)) }
        
        if (d.cast.isNotEmpty()) {
            item { Spacer(modifier = Modifier.height(24.dp)); Text("Cast", color = Color.White, fontSize = 20.sp, fontWeight = FontWeight.Bold, modifier = Modifier.padding(horizontal = 16.dp)); Spacer(modifier = Modifier.height(8.dp)) }
            item {
                LazyRow(contentPadding = PaddingValues(horizontal = 16.dp), horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                    items(d.cast) { c ->
                        Column(horizontalAlignment = Alignment.CenterHorizontally, modifier = Modifier.width(80.dp)) {
                            AsyncImage(model = TmdbService.IMG_BASE + "w185" + c.profilePath, contentDescription = null, contentScale = ContentScale.Crop, modifier = Modifier.size(70.dp).clip(RoundedCornerShape(50)))
                            Text(c.name, color = Color.White, fontSize = 12.sp, maxLines = 1, modifier = Modifier.padding(top = 4.dp))
                        }
                    }
                }
            }
        }

        if (isTv && d.seasons.isNotEmpty()) {
            item {
                Spacer(modifier = Modifier.height(24.dp))
                var expanded by remember { mutableStateOf(false) }
                Box(modifier = Modifier.padding(horizontal = 16.dp)) {
                    Button(onClick = { expanded = true }, colors = ButtonDefaults.buttonColors(containerColor = Color(0xFF222222))) { Text("Season $selectedSeason") }
                    DropdownMenu(expanded = expanded, onDismissRequest = { expanded = false }) {
                        d.seasons.forEach { s ->
                            DropdownMenuItem(text = { Text("Season ${s.number}") }, onClick = { 
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
        }
    }
}
