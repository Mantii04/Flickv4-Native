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
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Home
import androidx.compose.material.icons.filled.Search
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
                Scaffold(
                    bottomBar = {
                        NavigationBar(containerColor = Color.Black, contentColor = Color.White) {
                            NavigationBarItem(
                                icon = { Icon(Icons.Default.Home, contentDescription = "Home") },
                                label = { Text("Home") },
                                selected = navController.currentDestination?.route == "home",
                                onClick = { navController.navigate("home") }
                            )
                            NavigationBarItem(
                                icon = { Icon(Icons.Default.Search, contentDescription = "Search") },
                                label = { Text("Search") },
                                selected = navController.currentDestination?.route == "search",
                                onClick = { navController.navigate("search") }
                            )
                        }
                    }
                ) { padding ->
                    NavHost(navController, startDestination = "home", modifier = Modifier.padding(padding)) {
                        composable("home") { HomeScreen(navController) }
                        composable("search") { SearchScreen(navController) }
                        composable("detail/{id}") { backStackEntry ->
                            val id = backStackEntry.arguments?.getString("id")?.toInt() ?: 0
                            DetailScreen(id, navController)
                        }
                    }
                }
            }
        }
    }
}

@Composable
fun HomeScreen(navController: NavHostController) {
    var trending by remember { mutableStateOf<List<MediaItem>>(emptyList()) }
    var popularMovies by remember { mutableStateOf<List<MediaItem>>(emptyList()) }

    LaunchedEffect(Unit) {
        TmdbService.getTrending { trending = it }
        TmdbService.getPopularMovies { popularMovies = it }
    }

    LazyColumn(modifier = Modifier.fillMaxSize().background(Color(0xFF141414))) {
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
                            Brush.verticalGradient(colors = listOf(Color.Transparent, Color(0xFF141414)), startY = 300f)
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
                                onClick = { navController.navigate("detail/${hero.id}") },
                                colors = ButtonDefaults.buttonColors(containerColor = Color.White, contentColor = Color.Black)
                            ) {
                                Text("▶ Play", fontWeight = FontWeight.Bold)
                            }
                        }
                    }
                }
            }
        }
        item { CarouselRow("Popular Movies", popularMovies, navController) }
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
                        .clickable { navController.navigate("detail/${item.id}") }
                )
            }
        }
    }
}

@Composable
fun SearchScreen(navController: NavHostController) {
    var query by remember { mutableStateOf("") }
    var results by remember { mutableStateOf<List<MediaItem>>(emptyList()) }
    var isSearching by remember { mutableStateOf(false) }

    Column(modifier = Modifier.fillMaxSize().background(Color(0xFF141414)).padding(16.dp)) {
        TextField(
            value = query,
            onValueChange = { query = it },
            placeholder = { Text("Search movies, TV shows...", color = Color.Gray) },
            modifier = Modifier.fillMaxWidth().background(Color(0xFF222222), RoundedCornerShape(8.dp)),
            colors = TextFieldDefaults.colors(focusedContainerColor = Color(0xFF222222), unfocusedContainerColor = Color(0xFF222222), focusedTextColor = Color.White, unfocusedTextColor = Color.White)
        )
        Spacer(modifier = Modifier.height(8.dp))
        Button(onClick = {
            isSearching = true
            TmdbService.search(query) { 
                results = it
                isSearching = false
            }
        }) {
            Text("Search")
        }
        Spacer(modifier = Modifier.height(16.dp))
        
        if (isSearching) {
            CircularProgressIndicator(color = Color.Red)
        } else {
            LazyColumn {
                items(results) { item ->
                    Row(
                        modifier = Modifier.fillMaxWidth().padding(vertical = 8.dp).clickable { navController.navigate("detail/${item.id}") },
                        verticalAlignment = Alignment.CenterVertically
                    ) {
                        AsyncImage(
                            model = TmdbService.IMG_BASE + "w92" + item.posterPath,
                            contentDescription = null,
                            modifier = Modifier.width(60.dp).height(90.dp).clip(RoundedCornerShape(4.dp))
                        )
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
fun DetailScreen(id: Int, navController: NavHostController) {
    var overview by remember { mutableStateOf("Loading...") }
    
    LaunchedEffect(id) {
        TmdbService.getMovieDetails(id) { ov -> overview = ov }
    }

    Column(modifier = Modifier.fillMaxSize().background(Color(0xFF141414)).padding(16.dp)) {
        Text("Movie Details (ID: $id)", color = Color.White, fontSize = 24.sp, fontWeight = FontWeight.Bold)
        Spacer(modifier = Modifier.height(16.dp))
        Text(overview, color = Color.Gray)
        Spacer(modifier = Modifier.height(24.dp))
        Button(
            onClick = {
                val intent = Intent(navController.context, PlayerActivity::class.java)
                intent.putExtra("EMBED_URL", "https://vixsrc.to/movie/$id")
                navController.context.startActivity(intent)
            },
            modifier = Modifier.fillMaxWidth().height(50.dp),
            colors = ButtonDefaults.buttonColors(containerColor = Color.White, contentColor = Color.Black)
        ) {
            Text("▶ Play Movie", fontSize = 18.sp, fontWeight = FontWeight.Bold)
        }
    }
}
