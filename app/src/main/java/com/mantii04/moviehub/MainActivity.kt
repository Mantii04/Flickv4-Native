package com.mantii04.moviehub

import android.content.Intent
import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.compose.animation.core.animateFloatAsState
import androidx.compose.foundation.ExperimentalFoundationApi
import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.LazyRow
import androidx.compose.foundation.lazy.grid.GridCells
import androidx.compose.foundation.lazy.grid.LazyVerticalGrid
import androidx.compose.foundation.lazy.grid.items
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.lazy.rememberLazyListState
import androidx.compose.foundation.pager.HorizontalPager
import androidx.compose.foundation.pager.rememberPagerState
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.draw.scale
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.platform.LocalConfiguration
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import coil.compose.AsyncImage
import androidx.navigation.NavHostController
import androidx.navigation.compose.*
import kotlinx.coroutines.delay
import kotlinx.coroutines.launch
import androidx.compose.ui.text.withStyle
import androidx.compose.ui.text.SpanStyle
import androidx.compose.ui.text.buildAnnotatedString
import androidx.compose.ui.text.TextStyle
import androidx.compose.animation.core.tween

private val NfBlack = Color(0xFF000000)
private val NfSurface = Color(0xFF141414)
private val NfRed = Color(0xFFE50914)
private val NfMuted = Color(0xFFB3B3B3)

class MainActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContent {
            val context = LocalContext.current
            val db = AppDatabase.getDatabase(context)
            MaterialTheme(colorScheme = darkColorScheme(primary = NfRed, background = NfBlack)) {
                val navController = rememberNavController()
                val navBackStackEntry by navController.currentBackStackEntryAsState()
                val currentRoute = navBackStackEntry?.destination?.route

                Scaffold(
                    containerColor = NfBlack,
                    bottomBar = {
                        if (currentRoute != "detail/{id}/{isTv}") {
                            NavigationBar(containerColor = NfBlack, tonalElevation = 0.dp) {
                                val items = listOf(
                                    Triple("home", Icons.Default.Home, "Home"),
                                    Triple("search", Icons.Default.Search, "Search"),
                                    Triple("live", Icons.Default.LiveTv, "Live"),
                                    Triple("downloads", Icons.Default.Download, "Downloads"),
                                    Triple("settings", Icons.Default.Settings, "Settings")
                                )
                                items.forEach { (route, icon, label) ->
                                    NavigationBarItem(
                                        icon = { Icon(icon, contentDescription = label) },
                                        label = { Text(label, fontSize = 10.sp) },
                                        selected = currentRoute == route,
                                        onClick = { navController.navigate(route) { popUpTo("home") { saveState = true }; launchSingleTop = true; restoreState = true } },
                                        colors = NavigationBarItemDefaults.colors(selectedIconColor = NfRed, selectedTextColor = NfRed, unselectedIconColor = NfMuted, unselectedTextColor = NfMuted, indicatorColor = Color.Transparent)
                                    )
                                }
                            }
                        }
                    }
                ) { padding ->
                    NavHost(navController, startDestination = "home", modifier = Modifier.padding(padding)) {
                        composable("home") { HomeScreen(navController, db) }
                        composable("search") { SearchScreen(navController) }
                        composable("live") { LiveScreen() }
                        composable("downloads") { DownloadsScreen() }
                        composable("settings") { SettingsScreen() }
                        composable("genre/{name}") { backStackEntry ->
                            val name = backStackEntry.arguments?.getString("name") ?: ""
                            GenreScreen(name, navController)
                        }
                        composable("detail/{id}/{isTv}") { backStackEntry ->
                            val id = backStackEntry.arguments?.getString("id")?.toInt() ?: 0
                            val isTv = backStackEntry.arguments?.getString("isTv")?.toBoolean() ?: false
                            DetailScreen(id, isTv, navController, db)
                        }
                    }
                }
            }
        }
    }
}

@Composable
fun LiveScreen() {
    Column(modifier = Modifier.fillMaxSize().background(NfBlack).padding(16.dp)) {
        Text("Live TV", color = Color.White, fontSize = 24.sp, fontWeight = FontWeight.Bold)
        Spacer(modifier = Modifier.height(16.dp))
        Text("Live TV channels coming in the next build.", color = NfMuted, fontSize = 14.sp)
    }
}

@Composable
fun DownloadsScreen() {
    Column(modifier = Modifier.fillMaxSize().background(NfBlack).padding(16.dp)) {
        Text("Downloads", color = Color.White, fontSize = 24.sp, fontWeight = FontWeight.Bold)
        Spacer(modifier = Modifier.height(16.dp))
        Text("Offline downloads coming in the next build.", color = NfMuted, fontSize = 14.sp)
    }
}

@Composable
fun SettingsScreen() {
    Column(modifier = Modifier.fillMaxSize().background(NfBlack).padding(16.dp)) {
        Text("Settings", color = Color.White, fontSize = 24.sp, fontWeight = FontWeight.Bold)
        Spacer(modifier = Modifier.height(16.dp))
        Row(modifier = Modifier.fillMaxWidth().background(NfSurface, androidx.compose.foundation.shape.RoundedCornerShape(8.dp)).padding(16.dp), horizontalArrangement = Arrangement.SpaceBetween) {
            Text("App Version", color = Color.White)
            Text("1.0.0", color = NfMuted)
        }
        Spacer(modifier = Modifier.height(8.dp))
        Row(modifier = Modifier.fillMaxWidth().background(NfSurface, androidx.compose.foundation.shape.RoundedCornerShape(8.dp)).padding(16.dp), horizontalArrangement = Arrangement.SpaceBetween) {
            Text("Built with", color = Color.White)
            Text("Kotlin · Jetpack Compose · Media3", color = NfMuted, fontSize = 12.sp)
        }
        Spacer(modifier = Modifier.height(8.dp))
        Row(modifier = Modifier.fillMaxWidth().background(NfSurface, androidx.compose.foundation.shape.RoundedCornerShape(8.dp)).padding(16.dp), horizontalArrangement = Arrangement.SpaceBetween) {
            Text("Data Source", color = Color.White)
            Text("TMDB", color = NfMuted)
        }
        Spacer(modifier = Modifier.height(8.dp))
        Row(modifier = Modifier.fillMaxWidth().background(NfSurface, androidx.compose.foundation.shape.RoundedCornerShape(8.dp)).padding(16.dp), horizontalArrangement = Arrangement.SpaceBetween) {
            Text("Stream Resolver", color = Color.White)
            Text("VixSrc", color = NfMuted)
        }
    }
}

@OptIn(ExperimentalFoundationApi::class)
@Composable
fun HomeScreen(navController: NavHostController, db: AppDatabase) {
    var trending by remember { mutableStateOf<List<MediaItem>>(emptyList()) }
    var history by remember { mutableStateOf<List<HistoryEntity>>(emptyList()) }
    var myList by remember { mutableStateOf<List<MyListEntity>>(emptyList()) }
    val pagerState = rememberPagerState(pageCount = { trending.take(5).size })
    val screenHeight = LocalConfiguration.current.screenHeightDp.dp
    val screenWidth = LocalConfiguration.current.screenWidthDp.dp
    val heroHeight = screenHeight * 0.60f
    val listState = rememberLazyListState()
    val headerProgress by animateFloatAsState(targetValue = (listState.firstVisibleItemScrollOffset / 200f).coerceIn(0f, 1f), label = "header")

    LaunchedEffect(Unit) {
        TmdbService.getTrending { trending = it }
        db.mediaDao().getHistory().collect { history = it }
        db.mediaDao().getMyList().collect { myList = it }
    }

    LaunchedEffect(pagerState, trending) {
        if (trending.size < 2) return@LaunchedEffect
        while (true) {
            delay(6000)
            val next = if (pagerState.currentPage < trending.take(5).size - 1) pagerState.currentPage + 1 else 0
            pagerState.animateScrollToPage(next, animationSpec = tween(durationMillis = 700))
        }
    }

    val genres = listOf("Action", "Animation", "Adventure", "Comedy", "Crime", "Documentary", "Drama", "Family", "Fantasy", "History", "Horror", "Music", "Mystery", "Romance", "Sci-Fi", "Thriller")

    Box(modifier = Modifier.fillMaxSize().background(NfBlack)) {
        LazyColumn(state = listState, modifier = Modifier.fillMaxSize()) {
            // 1. Hero Carousel
            item {
                Box(modifier = Modifier.fillMaxWidth().height(heroHeight)) {
                    if (trending.isNotEmpty()) {
                        HorizontalPager(state = pagerState, modifier = Modifier.fillMaxSize()) { page ->
                            AsyncImage(model = TmdbService.IMG_BASE + "original" + trending[page].backdropPath, contentDescription = null, contentScale = ContentScale.Crop, modifier = Modifier.fillMaxSize())
                        }
                        Box(modifier = Modifier.fillMaxSize().background(Brush.verticalGradient(0.0f to NfBlack.copy(alpha = 0.3f), 0.5f to Color.Transparent, 1.0f to NfBlack)))
                        
                        Column(modifier = Modifier.align(Alignment.BottomCenter).padding(horizontal = 16.dp, vertical = 20.dp), horizontalAlignment = Alignment.CenterHorizontally) {
                            Text(trending[pagerState.currentPage].title, color = Color.White, fontSize = 36.sp, fontWeight = FontWeight.ExtraBold, textAlign = TextAlign.Center)
                            Spacer(modifier = Modifier.height(8.dp))
                            Text("Watch the latest trending movies and TV shows.", color = Color.LightGray, fontSize = 12.sp, textAlign = TextAlign.Center, maxLines = 2, overflow = TextOverflow.Ellipsis)
                            Spacer(modifier = Modifier.height(16.dp))
                            Row(horizontalArrangement = Arrangement.spacedBy(12.dp)) {
                                Button(
                                    onClick = { navController.navigate("detail/${trending[pagerState.currentPage].id}/${trending[pagerState.currentPage].isTv}") },
                                    colors = ButtonDefaults.buttonColors(containerColor = Color.White, contentColor = NfBlack),
                                    shape = RoundedCornerShape(4.dp),
                                    modifier = Modifier.weight(1f).height(44.dp)
                                ) {
                                    Icon(Icons.Default.PlayArrow, contentDescription = null)
                                    Text("Play", fontWeight = FontWeight.Bold)
                                }
                                IconButton(
                                    onClick = { /* Add to list */ },
                                    modifier = Modifier.size(44.dp).background(Color(0xFF333333), RoundedCornerShape(4.dp))
                                ) {
                                    Icon(Icons.Default.Add, contentDescription = "Add to list", tint = Color.White)
                                }
                            }
                            Spacer(modifier = Modifier.height(16.dp))
                            // Dots
                            Row(horizontalArrangement = Arrangement.spacedBy(4.dp)) {
                                repeat(trending.take(5).size) { i ->
                                    Box(modifier = Modifier.width(if (i == pagerState.currentPage) 16.dp else 6.dp).height(6.dp).clip(RoundedCornerShape(3.dp)).background(if (i == pagerState.currentPage) NfRed else NfMuted.copy(alpha = 0.6f)))
                                }
                            }
                        }
                    }
                }
            }

            // 2. Filter Chips
            item {
                LazyRow(contentPadding = PaddingValues(horizontal = 16.dp, vertical = 12.dp), horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                    item { FilterChip(selected = true, onClick = {}, label = "United States", icon = Icons.Default.Language) }
                    item { FilterChip(selected = false, onClick = {}, label = "Top 10 Movies") }
                    item { FilterChip(selected = false, onClick = {}, label = "Top 10 TV") }
                    item { FilterChip(selected = false, onClick = {}, label = "Worldwide") }
                }
            }

            // 3. Genres Grid (tap to filter)
            item {
                var genreExpanded by remember { mutableStateOf(false) }
                Column(modifier = Modifier.padding(horizontal = 16.dp)) {
                    Row(modifier = Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.SpaceBetween, verticalAlignment = Alignment.CenterVertically) {
                        Text("Genres", color = Color.White, fontSize = 18.sp, fontWeight = FontWeight.Bold)
                        Text("Tap to filter", color = NfMuted, fontSize = 11.sp)
                    }
                    Spacer(modifier = Modifier.height(12.dp))
                    for (chunk in genres.chunked(3)) {
                        Row(modifier = Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                            chunk.forEach { genre ->
                                Row(
                                    modifier = Modifier.weight(1f).background(NfSurface, RoundedCornerShape(8.dp)).clickable {
                                        navController.navigate("genre/$genre")
                                    }.padding(12.dp),
                                    verticalAlignment = Alignment.CenterVertically
                                ) {
                                    Icon(Icons.Default.Movie, contentDescription = null, tint = NfRed, modifier = Modifier.size(16.dp))
                                    Spacer(modifier = Modifier.width(8.dp))
                                    Text(genre, color = Color.White, fontSize = 12.sp)
                                }
                            }
                            repeat(3 - chunk.size) { Spacer(modifier = Modifier.weight(1f)) }
                        }
                        Spacer(modifier = Modifier.height(8.dp))
                    }
                }
            }

            // 4. Continue Watching
            if (history.isNotEmpty()) {
                item { FlickRowHeader("Continue Watching") }
                item {
                    LazyRow(contentPadding = PaddingValues(horizontal = 16.dp), horizontalArrangement = Arrangement.spacedBy(12.dp)) {
                        items(history) { item ->
                            FlickCard(title = item.title, posterPath = item.posterPath, width = (screenWidth - 32.dp - 24.dp) / 3f, progress = if (item.duration > 0) item.progress.toFloat() / item.duration else 0f) { navController.navigate("detail/${item.id}/${item.isTv}") }
                        }
                    }
                }
            }

            // 5. My List
            if (myList.isNotEmpty()) {
                item { FlickRowHeader("My List") }
                item {
                    LazyRow(contentPadding = PaddingValues(horizontal = 16.dp), horizontalArrangement = Arrangement.spacedBy(12.dp)) {
                        items(myList) { item ->
                            FlickCard(title = item.title, posterPath = item.posterPath, width = (screenWidth - 32.dp - 24.dp) / 3f) { navController.navigate("detail/${item.id}/${item.isTv}") }
                        }
                    }
                }
            }

            // 6. Top 10 Movies (with giant numbers)
            item { FlickRowHeader("Top 10 Movies in United States") }
            item {
                LazyRow(contentPadding = PaddingValues(horizontal = 16.dp), horizontalArrangement = Arrangement.spacedBy(-20.dp)) { // Negative spacing for overlap
                    items(trending.take(10).mapIndexed { index, item -> index to item }) { (index, item) ->
                        Top10Card(number = index + 1, item = item, width = (screenWidth - 32.dp) / 2.5f) { navController.navigate("detail/${item.id}/${item.isTv}") }
                    }
                }
            }

            // 7. Popular on Netflix
            item { FlickRowHeader("Popular on Netflix") }
            item {
                LazyRow(contentPadding = PaddingValues(horizontal = 16.dp), horizontalArrangement = Arrangement.spacedBy(12.dp)) {
                    items(trending.reversed()) { item ->
                        FlickCard(title = item.title, posterPath = item.posterPath, width = (screenWidth - 32.dp - 24.dp) / 3f) { navController.navigate("detail/${item.id}/${item.isTv}") }
                    }
                }
            }

            item { Spacer(modifier = Modifier.height(32.dp)) }
        }

        // Sticky Header
        Row(
            modifier = Modifier.fillMaxWidth().height(64.dp)
                .background(if (headerProgress > 0.9f) NfBlack else Color.Transparent)
                .padding(horizontal = 16.dp),
            verticalAlignment = Alignment.CenterVertically
        ) {
            Text("FLICK", color = NfRed, fontSize = 28.sp, fontWeight = FontWeight.ExtraBold, modifier = Modifier.scale(1.1f - (0.1f * headerProgress)))
            Spacer(modifier = Modifier.width(4.dp))
            Text("v2.3.4", color = NfMuted, fontSize = 10.sp)
        }
    }
}

@Composable
fun FilterChip(selected: Boolean, onClick: () -> Unit, label: String, icon: androidx.compose.ui.graphics.vector.ImageVector? = null) {
    Row(
        modifier = Modifier.clip(RoundedCornerShape(20.dp))
            .background(if (selected) NfRed else NfSurface)
            .border(1.dp, if (selected) NfRed else Color.DarkGray, RoundedCornerShape(20.dp))
            .clickable { onClick() }
            .padding(horizontal = 12.dp, vertical = 8.dp),
        verticalAlignment = Alignment.CenterVertically
    ) {
        if (icon != null) {
            Icon(icon, contentDescription = null, tint = Color.White, modifier = Modifier.size(14.dp))
            Spacer(modifier = Modifier.width(6.dp))
        }
        Text(label, color = Color.White, fontSize = 12.sp, fontWeight = FontWeight.SemiBold)
    }
}

@Composable
fun FlickRowHeader(title: String) {
    Row(modifier = Modifier.fillMaxWidth().padding(horizontal = 16.dp, vertical = 16.dp), verticalAlignment = Alignment.CenterVertically, horizontalArrangement = Arrangement.SpaceBetween) {
        Row(verticalAlignment = Alignment.CenterVertically) {
            Box(modifier = Modifier.width(4.dp).height(20.dp).clip(RoundedCornerShape(2.dp)).background(NfRed))
            Spacer(modifier = Modifier.width(8.dp))
            Text(title, color = Color.White, fontSize = 18.sp, fontWeight = FontWeight.Bold)
        }
        Row(verticalAlignment = Alignment.CenterVertically) {
            Text("View More", color = NfMuted, fontSize = 12.sp)
            Icon(Icons.Default.ChevronRight, contentDescription = null, tint = NfMuted, modifier = Modifier.size(16.dp))
        }
    }
}

@Composable
fun FlickCard(title: String, posterPath: String, width: androidx.compose.ui.unit.Dp, progress: Float? = null, onClick: () -> Unit) {
    Column(modifier = Modifier.width(width).clickable { onClick() }) {
        Box(modifier = Modifier.fillMaxWidth().aspectRatio(1f/1.5f).clip(RoundedCornerShape(6.dp)).background(NfSurface)) {
            AsyncImage(model = TmdbService.IMG_BASE + "w342" + posterPath, contentDescription = null, contentScale = ContentScale.Crop, modifier = Modifier.fillMaxSize())
            if (progress != null && progress > 0f) {
                LinearProgressIndicator(progress = { progress }, modifier = Modifier.align(Alignment.BottomCenter).fillMaxWidth().height(3.dp), color = NfRed, trackColor = Color.DarkGray)
            }
        }
        Spacer(modifier = Modifier.height(6.dp))
        Text(title, color = Color.White, fontSize = 12.sp, maxLines = 2, overflow = TextOverflow.Ellipsis, textAlign = TextAlign.Start, modifier = Modifier.fillMaxWidth())
    }
}

@Composable
fun Top10Card(number: Int, item: MediaItem, width: androidx.compose.ui.unit.Dp, onClick: () -> Unit) {
    Box(modifier = Modifier.width(width).height(width * 1.6f).clickable { onClick() }) {
        // Giant number
        Text(
            text = number.toString(),
            fontSize = 120.sp,
            fontWeight = FontWeight.Black,
            style = TextStyle(
                color = NfMuted.copy(alpha = 0.4f),
                drawStyle = androidx.compose.ui.graphics.drawscope.Stroke(width = 2f)
            ),
            modifier = Modifier.align(Alignment.BottomStart).offset(x = (-10).dp, y = 10.dp)
        )
        // Poster
        Box(modifier = Modifier.align(Alignment.CenterEnd).width(width * 0.65f).fillMaxHeight().clip(RoundedCornerShape(6.dp)).background(NfSurface)) {
            AsyncImage(model = TmdbService.IMG_BASE + "w342" + item.posterPath, contentDescription = null, contentScale = ContentScale.Crop, modifier = Modifier.fillMaxSize())
        }
    }
}

@Composable
fun SearchScreen(navController: NavHostController) {
    var query by remember { mutableStateOf("") }
    var results by remember { mutableStateOf<List<MediaItem>>(emptyList()) }
    var trending by remember { mutableStateOf<List<MediaItem>>(emptyList()) }
    val screenWidth = LocalConfiguration.current.screenWidthDp.dp

    LaunchedEffect(Unit) { TmdbService.getTrending { trending = it } }
    LaunchedEffect(query) {
        if (query.length < 2) { results = emptyList(); return@LaunchedEffect }
        delay(500)
        TmdbService.search(query) { results = it }
    }

    val isSearching = query.length >= 2
    val displayData = if (isSearching) results else trending

    Column(modifier = Modifier.fillMaxSize().background(NfBlack).padding(16.dp)) {
        TextField(
            value = query, onValueChange = { query = it },
            placeholder = { Text("Search movies & TV shows", color = NfMuted, fontSize = 14.sp) },
            modifier = Modifier.fillMaxWidth().height(50.dp).background(NfSurface, RoundedCornerShape(25.dp)),
            colors = TextFieldDefaults.colors(
                focusedContainerColor = NfSurface, unfocusedContainerColor = NfSurface,
                focusedTextColor = Color.White, unfocusedTextColor = Color.White,
                focusedIndicatorColor = Color.Transparent, unfocusedIndicatorColor = Color.Transparent
            ),
            leadingIcon = { Icon(Icons.Default.Search, contentDescription = null, tint = NfMuted) }
        )
        Spacer(modifier = Modifier.height(16.dp))

        if (!isSearching && displayData.isNotEmpty()) {
            Text("Trending now", color = Color.White, fontSize = 18.sp, fontWeight = FontWeight.Bold, modifier = Modifier.padding(bottom = 12.dp))
        }

        val columns = 4
        val gap = 8.dp
        val cardWidth = (screenWidth - 32.dp - (gap * (columns - 1))) / columns

        LazyVerticalGrid(columns = GridCells.Fixed(columns), horizontalArrangement = Arrangement.spacedBy(gap), verticalArrangement = Arrangement.spacedBy(16.dp)) {
            items(displayData) { item ->
                Column(modifier = Modifier.clickable { navController.navigate("detail/${item.id}/${item.isTv}") }) {
                    Box(modifier = Modifier.fillMaxWidth().aspectRatio(1f/1.5f).clip(RoundedCornerShape(4.dp)).background(NfSurface)) {
                        AsyncImage(model = TmdbService.IMG_BASE + "w342" + item.posterPath, contentDescription = null, contentScale = ContentScale.Crop, modifier = Modifier.fillMaxSize())
                    }
                    Spacer(modifier = Modifier.height(4.dp))
                    Text(item.title, color = Color.White, fontSize = 11.sp, maxLines = 2, overflow = TextOverflow.Ellipsis)
                }
            }
        }
    }
}

@Composable
fun MyListScreen(navController: NavHostController, db: AppDatabase) {
    var myList by remember { mutableStateOf<List<MyListEntity>>(emptyList()) }
    LaunchedEffect(Unit) { db.mediaDao().getMyList().collect { myList = it } }
    val screenWidth = LocalConfiguration.current.screenWidthDp.dp
    val columns = 3
    val gap = 12.dp
    val cardWidth = (screenWidth - 32.dp - (gap * (columns - 1))) / columns

    Column(modifier = Modifier.fillMaxSize().background(NfBlack).padding(16.dp)) {
        Text("My List", color = Color.White, fontSize = 24.sp, fontWeight = FontWeight.Bold)
        Spacer(modifier = Modifier.height(16.dp))
        if (myList.isEmpty()) {
            Text("Your list is empty.", color = NfMuted)
        } else {
            LazyVerticalGrid(columns = GridCells.Fixed(columns), horizontalArrangement = Arrangement.spacedBy(gap), verticalArrangement = Arrangement.spacedBy(gap)) {
                items(myList) { item ->
                    FlickCard(title = item.title, posterPath = item.posterPath, width = cardWidth) { navController.navigate("detail/${item.id}/${item.isTv}") }
                }
            }
        }
    }
}

@Composable
fun DetailScreen(id: Int, isTv: Boolean, navController: NavHostController, db: AppDatabase) {
    var detail by remember { mutableStateOf<MediaDetail?>(null) }
    var episodes by remember { mutableStateOf<List<Episode>>(emptyList()) }
    var selectedSeason by remember { mutableStateOf(1) }
    var selectedTab by remember { mutableStateOf(0) }
    var isInList by remember { mutableStateOf(false) }
    val scope = rememberCoroutineScope()
    val screenHeight = LocalConfiguration.current.screenHeightDp.dp
    val heroHeight = screenHeight * 0.42f

    LaunchedEffect(id) {
        TmdbService.getDetails(id, isTv) { d ->
            detail = d
            if (isTv && d?.seasons?.isNotEmpty() == true) {
                selectedSeason = d.seasons.first().number
                TmdbService.getEpisodes(id, selectedSeason) { eps -> episodes = eps }
            }
        }
        isInList = db.mediaDao().isInMyList(id)
    }

    if (detail == null) { Box(modifier = Modifier.fillMaxSize().background(NfBlack), contentAlignment = Alignment.Center) { CircularProgressIndicator(color = NfRed) }; return }
    val d = detail!!

    LazyColumn(modifier = Modifier.fillMaxSize().background(NfBlack)) {
        item {
            Box(modifier = Modifier.fillMaxWidth().height(heroHeight)) {
                AsyncImage(model = TmdbService.IMG_BASE + "original" + d.backdropPath, contentDescription = null, contentScale = ContentScale.Crop, modifier = Modifier.fillMaxSize())
                Box(modifier = Modifier.fillMaxSize().background(Brush.verticalGradient(0.0f to NfBlack.copy(alpha = 0.4f), 0.4f to Color.Transparent, 1.0f to NfBlack)))
                IconButton(onClick = { navController.popBackStack() }, modifier = Modifier.padding(16.dp).background(Color.Black.copy(alpha = 0.5f), CircleShape)) { Icon(Icons.Default.ArrowBack, contentDescription = "Back", tint = Color.White) }
            }
        }
        item {
            Column(modifier = Modifier.padding(horizontal = 16.dp)) {
                Text(d.title, color = Color.White, fontSize = 32.sp, fontWeight = FontWeight.ExtraBold, lineHeight = 36.sp)
                Spacer(modifier = Modifier.height(8.dp))
                Row(verticalAlignment = Alignment.CenterVertically, horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                    Text(d.year, color = NfMuted, fontSize = 14.sp)
                    Box(modifier = Modifier.border(1.dp, NfMuted, RoundedCornerShape(2.dp)).padding(horizontal = 4.dp, vertical = 1.dp)) { Text("HD", color = NfMuted, fontSize = 10.sp) }
                    Text(if (isTv) "TV Series" else "Movie", color = NfMuted, fontSize = 14.sp)
                }
                Spacer(modifier = Modifier.height(12.dp))
                Row(verticalAlignment = Alignment.CenterVertically, horizontalArrangement = Arrangement.spacedBy(4.dp)) {
                    Icon(Icons.Default.Star, contentDescription = null, tint = NfRed, modifier = Modifier.size(16.dp))
                    Text(String.format("%.1f", d.rating), color = Color.White, fontSize = 14.sp, fontWeight = FontWeight.Bold)
                }
                Spacer(modifier = Modifier.height(16.dp))
                Row(horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                    Button(
                        onClick = {
                            val intent = Intent(navController.context, PlayerActivity::class.java)
                            val url = if (isTv) "https://vidrock.net/tv/$id/1/1?autoplay=true&download=false&theme=e50914" else "https://vidrock.net/movie/$id?autoplay=true&download=false&theme=e50914"
                            intent.putExtra("EMBED_URL", url)
                            intent.putExtra("ID", id)
                            intent.putExtra("TITLE", d.title)
                            intent.putExtra("POSTER", d.posterPath)
                            intent.putExtra("IS_TV", isTv)
                            navController.context.startActivity(intent)
                        },
                        colors = ButtonDefaults.buttonColors(containerColor = Color.White, contentColor = NfBlack),
                        modifier = Modifier.weight(1f).height(48.dp),
                        shape = RoundedCornerShape(4.dp)
                    ) {
                        Icon(Icons.Default.PlayArrow, contentDescription = null, tint = NfBlack)
                        Spacer(modifier = Modifier.width(6.dp))
                        Text("Play", fontWeight = FontWeight.Bold, fontSize = 17.sp)
                    }
                    IconButton(onClick = { scope.launch { if (isInList) { db.mediaDao().removeFromMyList(id); isInList = false } else { db.mediaDao().addToMyList(MyListEntity(id, d.title, d.posterPath, isTv)); isInList = true } } }, modifier = Modifier.size(48.dp).background(NfSurface, RoundedCornerShape(4.dp))) {
                        Icon(if (isInList) Icons.Default.Check else Icons.Default.Add, contentDescription = "My List", tint = Color.White)
                    }
                }
            }
        }
        item { Text(d.overview, color = Color.White, fontSize = 14.sp, lineHeight = 20.sp, modifier = Modifier.padding(16.dp)) }
        if (d.cast.isNotEmpty()) {
            item {
                val starring = d.cast.take(4).joinToString(", ") { it.name }
                Text(text = buildAnnotatedString { withStyle(SpanStyle(color = NfMuted)) { append("Starring: ") }; withStyle(SpanStyle(color = Color.White)) { append(starring) } }, fontSize = 13.sp, modifier = Modifier.padding(horizontal = 16.dp))
                Spacer(modifier = Modifier.height(16.dp))
            }
        }
        item {
            Row(modifier = Modifier.fillMaxWidth().padding(vertical = 16.dp), horizontalArrangement = Arrangement.SpaceEvenly) {
                Column(horizontalAlignment = Alignment.CenterHorizontally, modifier = Modifier.clickable { scope.launch { if (isInList) { db.mediaDao().removeFromMyList(id); isInList = false } else { db.mediaDao().addToMyList(MyListEntity(id, d.title, d.posterPath, isTv)); isInList = true } } }) {
                    Icon(if (isInList) Icons.Default.Check else Icons.Default.Add, contentDescription = "My List", tint = if (isInList) NfRed else Color.White, modifier = Modifier.size(24.dp))
                    Spacer(modifier = Modifier.height(4.dp))
                    Text("My List", color = NfMuted, fontSize = 11.sp)
                }
                Column(horizontalAlignment = Alignment.CenterHorizontally, modifier = Modifier.clickable { }) {
                    Icon(Icons.Default.Share, contentDescription = "Share", tint = Color.White, modifier = Modifier.size(24.dp))
                    Spacer(modifier = Modifier.height(4.dp))
                    Text("Share", color = NfMuted, fontSize = 11.sp)
                }
            }
        }
        item {
            TabRow(selectedTabIndex = selectedTab, containerColor = NfBlack, contentColor = Color.White, divider = { HorizontalDivider(color = NfSurface) }) {
                Tab(selected = selectedTab == 0, onClick = { selectedTab = 0 }, text = { Text(if (isTv) "Episodes" else "Details", fontSize = 14.sp) })
                Tab(selected = selectedTab == 1, onClick = { selectedTab = 1 }, text = { Text("More Like This", fontSize = 14.sp) })
            }
        }
        if (selectedTab == 0 && isTv) {
            item {
                var expanded by remember { mutableStateOf(false) }
                Box(modifier = Modifier.padding(16.dp)) {
                    Button(onClick = { expanded = true }, colors = ButtonDefaults.buttonColors(containerColor = NfSurface), shape = RoundedCornerShape(4.dp)) { Text("Season $selectedSeason") }
                    DropdownMenu(expanded = expanded, onDismissRequest = { expanded = false }, modifier = Modifier.background(NfSurface)) {
                        d.seasons.forEach { s -> DropdownMenuItem(text = { Text("Season ${s.number}", color = Color.White) }, onClick = { expanded = false; selectedSeason = s.number; TmdbService.getEpisodes(id, s.number) { eps -> episodes = eps } }) }
                    }
                }
            }
            items(episodes) { ep ->
                Row(modifier = Modifier.fillMaxWidth().clickable {
                    val intent = Intent(navController.context, PlayerActivity::class.java)
                    intent.putExtra("EMBED_URL", "https://vidrock.net/tv/$id/$selectedSeason/${ep.epNum}?autoplay=true&download=false&theme=e50914")
                    intent.putExtra("ID", id); intent.putExtra("TITLE", "${d.title} S${selectedSeason}E${ep.epNum}"); intent.putExtra("POSTER", d.posterPath); intent.putExtra("IS_TV", true)
                    navController.context.startActivity(intent)
                }.padding(horizontal = 16.dp, vertical = 10.dp), verticalAlignment = Alignment.CenterVertically) {
                    AsyncImage(model = TmdbService.IMG_BASE + "w300" + ep.stillPath, contentDescription = null, contentScale = ContentScale.Crop, modifier = Modifier.width(130.dp).height(74.dp).clip(RoundedCornerShape(4.dp)))
                    Spacer(modifier = Modifier.width(12.dp))
                    Column(modifier = Modifier.weight(1f)) {
                        Text("${ep.epNum}. ${ep.title}", color = Color.White, fontWeight = FontWeight.Bold, fontSize = 14.sp, maxLines = 2)
                        Spacer(modifier = Modifier.height(4.dp))
                        Text(ep.overview, color = NfMuted, maxLines = 2, overflow = TextOverflow.Ellipsis, fontSize = 12.sp)
                    }
                    Icon(Icons.Default.PlayArrow, contentDescription = null, tint = NfRed, modifier = Modifier.padding(start = 8.dp))
                }
            }
        } else if (selectedTab == 1) {
            items(d.similar.chunked(3)) { rowItems ->
                Row(modifier = Modifier.fillMaxWidth().padding(horizontal = 16.dp, vertical = 6.dp), horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                    rowItems.forEach { item -> AsyncImage(model = TmdbService.IMG_BASE + "w342" + item.posterPath, contentDescription = null, contentScale = ContentScale.Crop, modifier = Modifier.weight(1f).aspectRatio(0.66f).clip(RoundedCornerShape(4.dp)).clickable { navController.navigate("detail/${item.id}/${item.isTv}") }) }
                    repeat(3 - rowItems.size) { Spacer(modifier = Modifier.weight(1f)) }
                }
            }
        }
        item { Spacer(modifier = Modifier.height(24.dp)) }
    }
}


@Composable
fun GenreScreen(genreName: String, navController: NavHostController) {
    var items by remember { mutableStateOf<List<MediaItem>>(emptyList()) }
    var loading by remember { mutableStateOf(true) }
    val screenWidth = LocalConfiguration.current.screenWidthDp.dp

    val genreIds = mapOf(
        "Action" to "28", "Adventure" to "12", "Animation" to "16", "Comedy" to "35",
        "Crime" to "80", "Documentary" to "99", "Drama" to "18", "Family" to "10751",
        "Fantasy" to "14", "History" to "36", "Horror" to "27", "Music" to "10402",
        "Mystery" to "9648", "Romance" to "10749", "Sci-Fi" to "878", "Thriller" to "53"
    )

    LaunchedEffect(genreName) {
        val id = genreIds[genreName] ?: return@LaunchedEffect
        TmdbService.discoverByGenre(id) { items = it; loading = false }
    }

    Column(modifier = Modifier.fillMaxSize().background(NfBlack)) {
        Row(modifier = Modifier.fillMaxWidth().padding(16.dp), verticalAlignment = Alignment.CenterVertically) {
            IconButton(onClick = { navController.popBackStack() }) {
                Icon(Icons.Default.ArrowBack, contentDescription = "Back", tint = Color.White)
            }
            Spacer(modifier = Modifier.width(8.dp))
            Text(genreName, color = Color.White, fontSize = 24.sp, fontWeight = FontWeight.Bold)
        }
        if (loading) {
            Box(modifier = Modifier.fillMaxSize(), contentAlignment = Alignment.Center) {
                CircularProgressIndicator(color = NfRed)
            }
        } else if (items.isEmpty()) {
            Box(modifier = Modifier.fillMaxSize(), contentAlignment = Alignment.Center) {
                Text("No results for $genreName", color = NfMuted)
            }
        } else {
            val gap = 8.dp
            val columns = 3
            val cardWidth = (screenWidth - 32.dp - (gap * (columns - 1))) / columns
            LazyVerticalGrid(
                columns = GridCells.Fixed(columns),
                contentPadding = PaddingValues(16.dp),
                horizontalArrangement = Arrangement.spacedBy(gap),
                verticalArrangement = Arrangement.spacedBy(gap)
            ) {
                items(items) { item ->
                    FlickCard(
                        title = item.title,
                        posterPath = item.posterPath,
                        width = cardWidth
                    ) { navController.navigate("detail/${item.id}/${item.isTv}") }
                }
            }
        }
    }
}
