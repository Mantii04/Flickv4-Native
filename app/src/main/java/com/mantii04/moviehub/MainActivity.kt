package com.mantii04.moviehub

import android.content.Intent
import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.compose.foundation.ExperimentalFoundationApi
import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.LazyRow
import androidx.compose.foundation.lazy.items
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
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.platform.LocalConfiguration
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.text.SpanStyle
import androidx.compose.ui.text.buildAnnotatedString
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.text.withStyle
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import coil.compose.AsyncImage
import androidx.navigation.NavHostController
import androidx.navigation.compose.*
import kotlinx.coroutines.delay
import kotlinx.coroutines.launch

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
                            NavigationBar(containerColor = NfBlack) {
                                NavigationBarItem(
                                    icon = { Icon(Icons.Default.Home, contentDescription = "Home") },
                                    label = { Text("Home") },
                                    selected = currentRoute == "home",
                                    onClick = { navController.navigate("home") { popUpTo("home") { inclusive = true } } },
                                    colors = NavigationBarItemDefaults.colors(selectedIconColor = Color.White, selectedTextColor = Color.White, unselectedIconColor = NfMuted, unselectedTextColor = NfMuted, indicatorColor = Color.Transparent)
                                )
                                NavigationBarItem(
                                    icon = { Icon(Icons.Default.Search, contentDescription = "Search") },
                                    label = { Text("Search") },
                                    selected = currentRoute == "search",
                                    onClick = { navController.navigate("search") { popUpTo("home") } },
                                    colors = NavigationBarItemDefaults.colors(selectedIconColor = Color.White, selectedTextColor = Color.White, unselectedIconColor = NfMuted, unselectedTextColor = NfMuted, indicatorColor = Color.Transparent)
                                )
                                NavigationBarItem(
                                    icon = { Icon(Icons.Default.List, contentDescription = "My List") },
                                    label = { Text("My List") },
                                    selected = currentRoute == "mylist",
                                    onClick = { navController.navigate("mylist") { popUpTo("home") } },
                                    colors = NavigationBarItemDefaults.colors(selectedIconColor = Color.White, selectedTextColor = Color.White, unselectedIconColor = NfMuted, unselectedTextColor = NfMuted, indicatorColor = Color.Transparent)
                                )
                            }
                        }
                    }
                ) { padding ->
                    NavHost(navController, startDestination = "home", modifier = Modifier.padding(padding)) {
                        composable("home") { HomeScreen(navController, db) }
                        composable("search") { SearchScreen(navController) }
                        composable("mylist") { MyListScreen(navController, db) }
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

@OptIn(ExperimentalFoundationApi::class)
@Composable
fun HomeScreen(navController: NavHostController, db: AppDatabase) {
    var trending by remember { mutableStateOf<List<MediaItem>>(emptyList()) }
    var history by remember { mutableStateOf<List<HistoryEntity>>(emptyList()) }
    var myList by remember { mutableStateOf<List<MyListEntity>>(emptyList()) }
    val pagerState = rememberPagerState(pageCount = { trending.take(5).size })
    val screenHeight = LocalConfiguration.current.screenHeightDp.dp
    val heroHeight = screenHeight * 0.55f

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
            pagerState.animateScrollToPage(next)
        }
    }

    LazyColumn(modifier = Modifier.fillMaxSize().background(NfBlack)) {
        item {
            Box(modifier = Modifier.fillMaxWidth().height(heroHeight)) {
                if (trending.isNotEmpty()) {
                    HorizontalPager(state = pagerState, modifier = Modifier.fillMaxSize()) { page ->
                        AsyncImage(
                            model = TmdbService.IMG_BASE + "original" + trending[page].backdropPath,
                            contentDescription = null,
                            contentScale = ContentScale.Crop,
                            modifier = Modifier.fillMaxSize()
                        )
                    }
                    // 3-stop gradient like Flickv4
                    Box(modifier = Modifier.fillMaxSize().background(
                        Brush.verticalGradient(
                            0.0f to NfBlack.copy(alpha = 0.3f),
                            0.35f to Color.Transparent,
                            1.0f to NfBlack
                        )
                    ))
                    Column(
                        modifier = Modifier.align(Alignment.BottomCenter).padding(16.dp),
                        horizontalAlignment = Alignment.CenterHorizontally
                    ) {
                        Text(
                            trending[pagerState.currentPage].title,
                            color = Color.White,
                            fontSize = 32.sp,
                            fontWeight = FontWeight.ExtraBold,
                            textAlign = TextAlign.Center
                        )
                        Spacer(modifier = Modifier.height(16.dp))
                        Row(horizontalArrangement = Arrangement.spacedBy(12.dp)) {
                            Button(
                                onClick = { navController.navigate("detail/${trending[pagerState.currentPage].id}/${trending[pagerState.currentPage].isTv}") },
                                colors = ButtonDefaults.buttonColors(containerColor = Color.White, contentColor = NfBlack),
                                shape = RoundedCornerShape(4.dp)
                            ) {
                                Icon(Icons.Default.PlayArrow, contentDescription = null)
                                Text("Play", fontWeight = FontWeight.Bold)
                            }
                            Button(
                                onClick = { navController.navigate("detail/${trending[pagerState.currentPage].id}/${trending[pagerState.currentPage].isTv}") },
                                colors = ButtonDefaults.buttonColors(containerColor = Color.White.copy(alpha = 0.25f), contentColor = Color.White),
                                shape = RoundedCornerShape(4.dp)
                            ) {
                                Icon(Icons.Default.Info, contentDescription = null)
                                Text("More Info", fontWeight = FontWeight.Bold)
                            }
                        }
                    }
                }
            }
        }

        if (history.isNotEmpty()) {
            item { RowLabel("Continue Watching") }
            item {
                LazyRow(contentPadding = PaddingValues(horizontal = 16.dp), horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                    items(history) { item ->
                        Column(modifier = Modifier.width(130.dp).clickable { navController.navigate("detail/${item.id}/${item.isTv}") }) {
                            Box(modifier = Modifier.height(195.dp).fillMaxWidth()) {
                                AsyncImage(
                                    model = TmdbService.IMG_BASE + "w342" + item.posterPath,
                                    contentDescription = null,
                                    contentScale = ContentScale.Crop,
                                    modifier = Modifier.fillMaxSize().clip(RoundedCornerShape(4.dp))
                                )
                                val fraction = if (item.duration > 0) item.progress.toFloat() / item.duration else 0f
                                LinearProgressIndicator(
                                    progress = { fraction },
                                    modifier = Modifier.align(Alignment.BottomCenter).fillMaxWidth().height(3.dp),
                                    color = NfRed,
                                    trackColor = Color.DarkGray
                                )
                            }
                            Text(item.title, color = Color.White, fontSize = 12.sp, maxLines = 1, overflow = TextOverflow.Ellipsis, modifier = Modifier.padding(top = 6.dp))
                        }
                    }
                }
            }
        }

        if (myList.isNotEmpty()) {
            item { RowLabel("My List") }
            item {
                LazyRow(contentPadding = PaddingValues(horizontal = 16.dp), horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                    items(myList) { item ->
                        AsyncImage(
                            model = TmdbService.IMG_BASE + "w342" + item.posterPath,
                            contentDescription = null,
                            contentScale = ContentScale.Crop,
                            modifier = Modifier.width(130.dp).height(195.dp).clip(RoundedCornerShape(4.dp))
                                .clickable { navController.navigate("detail/${item.id}/${item.isTv}") }
                        )
                    }
                }
            }
        }

        item { RowLabel("Trending Now") }
        item {
            LazyRow(contentPadding = PaddingValues(horizontal = 16.dp), horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                items(trending) { item ->
                    AsyncImage(
                        model = TmdbService.IMG_BASE + "w342" + item.posterPath,
                        contentDescription = null,
                        contentScale = ContentScale.Crop,
                        modifier = Modifier.width(130.dp).height(195.dp).clip(RoundedCornerShape(4.dp))
                            .clickable { navController.navigate("detail/${item.id}/${item.isTv}") }
                    )
                }
            }
        }

        item { Spacer(modifier = Modifier.height(32.dp)) }
    }
}

@Composable
private fun RowLabel(text: String) {
    Text(
        text,
        color = Color.White,
        fontSize = 18.sp,
        fontWeight = FontWeight.Bold,
        modifier = Modifier.padding(horizontal = 16.dp, vertical = 12.dp)
    )
}

@Composable
fun MyListScreen(navController: NavHostController, db: AppDatabase) {
    var myList by remember { mutableStateOf<List<MyListEntity>>(emptyList()) }
    LaunchedEffect(Unit) { db.mediaDao().getMyList().collect { myList = it } }

    Column(modifier = Modifier.fillMaxSize().background(NfBlack).padding(16.dp)) {
        Text("My List", color = Color.White, fontSize = 24.sp, fontWeight = FontWeight.Bold)
        Spacer(modifier = Modifier.height(16.dp))
        if (myList.isEmpty()) {
            Text("Your list is empty.", color = NfMuted)
        } else {
            LazyColumn(verticalArrangement = Arrangement.spacedBy(8.dp)) {
                items(myList) { item ->
                    Row(
                        modifier = Modifier.fillMaxWidth().clickable { navController.navigate("detail/${item.id}/${item.isTv}") },
                        verticalAlignment = Alignment.CenterVertically
                    ) {
                        AsyncImage(
                            model = TmdbService.IMG_BASE + "w92" + item.posterPath,
                            contentDescription = null,
                            modifier = Modifier.width(60.dp).height(90.dp).clip(RoundedCornerShape(4.dp))
                        )
                        Spacer(modifier = Modifier.width(16.dp))
                        Text(item.title, color = Color.White, fontWeight = FontWeight.Bold)
                    }
                }
            }
        }
    }
}

@Composable
fun SearchScreen(navController: NavHostController) {
    var query by remember { mutableStateOf("") }
    var results by remember { mutableStateOf<List<MediaItem>>(emptyList()) }

    LaunchedEffect(query) {
        if (query.length < 2) { results = emptyList(); return@LaunchedEffect }
        delay(500)
        TmdbService.search(query) { results = it }
    }

    Column(modifier = Modifier.fillMaxSize().background(NfBlack).padding(16.dp)) {
        TextField(
            value = query, onValueChange = { query = it },
            placeholder = { Text("Search movies, TV shows...", color = NfMuted) },
            modifier = Modifier.fillMaxWidth().background(NfSurface, RoundedCornerShape(8.dp)),
            colors = TextFieldDefaults.colors(
                focusedContainerColor = NfSurface, unfocusedContainerColor = NfSurface,
                focusedTextColor = Color.White, unfocusedTextColor = Color.White,
                focusedIndicatorColor = Color.Transparent, unfocusedIndicatorColor = Color.Transparent
            ),
            leadingIcon = { Icon(Icons.Default.Search, contentDescription = null, tint = NfMuted) }
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
                        Text("${item.year} · ${if (item.isTv) "TV" else "Movie"}", color = NfMuted, fontSize = 12.sp)
                    }
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

    if (detail == null) {
        Box(modifier = Modifier.fillMaxSize().background(NfBlack), contentAlignment = Alignment.Center) {
            CircularProgressIndicator(color = NfRed)
        }
        return
    }
    val d = detail!!

    LazyColumn(modifier = Modifier.fillMaxSize().background(NfBlack)) {
        // Hero backdrop + 3-stop gradient + back button
        item {
            Box(modifier = Modifier.fillMaxWidth().height(heroHeight)) {
                AsyncImage(
                    model = TmdbService.IMG_BASE + "original" + d.backdropPath,
                    contentDescription = null,
                    contentScale = ContentScale.Crop,
                    modifier = Modifier.fillMaxSize()
                )
                Box(modifier = Modifier.fillMaxSize().background(
                    Brush.verticalGradient(
                        0.0f to NfBlack.copy(alpha = 0.4f),
                        0.4f to Color.Transparent,
                        1.0f to NfBlack
                    )
                ))
                IconButton(
                    onClick = { navController.popBackStack() },
                    modifier = Modifier.padding(16.dp).background(Color.Black.copy(alpha = 0.5f), CircleShape)
                ) {
                    Icon(Icons.Default.ArrowBack, contentDescription = "Back", tint = Color.White)
                }
            }
        }

        // Title + metadata + play
        item {
            Column(modifier = Modifier.padding(horizontal = 16.dp)) {
                Text(
                    d.title,
                    color = Color.White,
                    fontSize = 32.sp,
                    fontWeight = FontWeight.ExtraBold,
                    lineHeight = 36.sp
                )
                Spacer(modifier = Modifier.height(8.dp))
                Row(verticalAlignment = Alignment.CenterVertically, horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                    Text(d.year, color = NfMuted, fontSize = 14.sp)
                    Box(modifier = Modifier.border(1.dp, NfMuted, RoundedCornerShape(2.dp)).padding(horizontal = 4.dp, vertical = 1.dp)) {
                        Text("HD", color = NfMuted, fontSize = 10.sp)
                    }
                    Text(if (isTv) "TV Series" else "Movie", color = NfMuted, fontSize = 14.sp)
                }
                Spacer(modifier = Modifier.height(12.dp))
                Row(verticalAlignment = Alignment.CenterVertically, horizontalArrangement = Arrangement.spacedBy(4.dp)) {
                    Icon(Icons.Default.Star, contentDescription = null, tint = NfRed, modifier = Modifier.size(16.dp))
                    Text(String.format("%.1f", d.rating), color = Color.White, fontSize = 14.sp, fontWeight = FontWeight.Bold)
                }
                Spacer(modifier = Modifier.height(16.dp))
                Button(
                    onClick = {
                        val intent = Intent(navController.context, PlayerActivity::class.java)
                        val url = if (isTv) "https://vixsrc.to/tv/$id/1/1" else "https://vixsrc.to/movie/$id"
                        intent.putExtra("EMBED_URL", url)
                        intent.putExtra("ID", id)
                        intent.putExtra("TITLE", d.title)
                        intent.putExtra("POSTER", d.posterPath)
                        intent.putExtra("IS_TV", isTv)
                        navController.context.startActivity(intent)
                    },
                    colors = ButtonDefaults.buttonColors(containerColor = Color.White, contentColor = NfBlack),
                    modifier = Modifier.fillMaxWidth().height(48.dp),
                    shape = RoundedCornerShape(4.dp)
                ) {
                    Icon(Icons.Default.PlayArrow, contentDescription = null, tint = NfBlack)
                    Spacer(modifier = Modifier.width(6.dp))
                    Text("Play", fontWeight = FontWeight.Bold, fontSize = 17.sp)
                }
            }
        }

        // Overview
        item {
            Text(d.overview, color = Color.White, fontSize = 14.sp, lineHeight = 20.sp, modifier = Modifier.padding(horizontal = 16.dp, vertical = 16.dp))
        }

        // Starring
        if (d.cast.isNotEmpty()) {
            item {
                val starring = d.cast.take(4).joinToString(", ") { it.name }
                val hasMore = d.cast.size > 4
                Text(
                    text = buildAnnotatedString {
                        withStyle(SpanStyle(color = NfMuted)) { append("Starring: ") }
                        withStyle(SpanStyle(color = Color.White)) { append(starring) }
                        if (hasMore) withStyle(SpanStyle(color = NfRed, fontWeight = FontWeight.SemiBold)) { append("  ... more") }
                    },
                    fontSize = 13.sp,
                    modifier = Modifier.padding(horizontal = 16.dp)
                )
                Spacer(modifier = Modifier.height(4.dp))
            }
        }

        // Action icons row
        item {
            Row(
                modifier = Modifier.fillMaxWidth().padding(vertical = 16.dp),
                horizontalArrangement = Arrangement.SpaceEvenly
            ) {
                DetailActionIcon(
                    icon = if (isInList) Icons.Default.Check else Icons.Default.Add,
                    label = "My List",
                    active = isInList
                ) {
                    scope.launch {
                        if (isInList) {
                            db.mediaDao().removeFromMyList(id)
                            isInList = false
                        } else {
                            db.mediaDao().addToMyList(MyListEntity(id, d.title, d.posterPath, isTv))
                            isInList = true
                        }
                    }
                }
                DetailActionIcon(icon = Icons.Default.Share, label = "Share") { }
                DetailActionIcon(icon = Icons.Default.People, label = "Watch Party") { }
            }
        }

        // Tabs
        item {
            TabRow(
                selectedTabIndex = selectedTab,
                containerColor = NfBlack,
                contentColor = Color.White,
                divider = { HorizontalDivider(color = NfSurface) }
            ) {
                Tab(selected = selectedTab == 0, onClick = { selectedTab = 0 }, text = { Text(if (isTv) "Episodes" else "Details", fontSize = 14.sp) })
                Tab(selected = selectedTab == 1, onClick = { selectedTab = 1 }, text = { Text("More Like This", fontSize = 14.sp) })
            }
        }

        // Episodes / Similar
        if (selectedTab == 0 && isTv) {
            item {
                var expanded by remember { mutableStateOf(false) }
                Box(modifier = Modifier.padding(16.dp)) {
                    Button(
                        onClick = { expanded = true },
                        colors = ButtonDefaults.buttonColors(containerColor = NfSurface),
                        shape = RoundedCornerShape(4.dp)
                    ) { Text("Season $selectedSeason") }
                    DropdownMenu(expanded = expanded, onDismissRequest = { expanded = false }, modifier = Modifier.background(NfSurface)) {
                        d.seasons.forEach { s ->
                            DropdownMenuItem(
                                text = { Text("Season ${s.number}", color = Color.White) },
                                onClick = {
                                    expanded = false
                                    selectedSeason = s.number
                                    TmdbService.getEpisodes(id, s.number) { eps -> episodes = eps }
                                }
                            )
                        }
                    }
                }
            }
            items(episodes) { ep ->
                Row(
                    modifier = Modifier.fillMaxWidth().clickable {
                        val intent = Intent(navController.context, PlayerActivity::class.java)
                        intent.putExtra("EMBED_URL", "https://vixsrc.to/tv/$id/$selectedSeason/${ep.epNum}")
                        intent.putExtra("ID", id)
                        intent.putExtra("TITLE", "${d.title} S${selectedSeason}E${ep.epNum}")
                        intent.putExtra("POSTER", d.posterPath)
                        intent.putExtra("IS_TV", true)
                        intent.putExtra("SEASON", selectedSeason)
                        intent.putExtra("EPISODE", ep.epNum)
                        navController.context.startActivity(intent)
                    }.padding(horizontal = 16.dp, vertical = 10.dp),
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    AsyncImage(
                        model = TmdbService.IMG_BASE + "w300" + ep.stillPath,
                        contentDescription = null,
                        contentScale = ContentScale.Crop,
                        modifier = Modifier.width(130.dp).height(74.dp).clip(RoundedCornerShape(4.dp))
                    )
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
                Row(
                    modifier = Modifier.fillMaxWidth().padding(horizontal = 16.dp, vertical = 6.dp),
                    horizontalArrangement = Arrangement.spacedBy(8.dp)
                ) {
                    rowItems.forEach { item ->
                        AsyncImage(
                            model = TmdbService.IMG_BASE + "w342" + item.posterPath,
                            contentDescription = null,
                            contentScale = ContentScale.Crop,
                            modifier = Modifier.weight(1f).aspectRatio(0.66f).clip(RoundedCornerShape(4.dp))
                                .clickable { navController.navigate("detail/${item.id}/${item.isTv}") }
                        )
                    }
                    repeat(3 - rowItems.size) { Spacer(modifier = Modifier.weight(1f)) }
                }
            }
        }

        item { Spacer(modifier = Modifier.height(24.dp)) }
    }
}

@Composable
private fun DetailActionIcon(icon: androidx.compose.ui.graphics.vector.ImageVector, label: String, active: Boolean = false, onClick: () -> Unit) {
    Column(
        horizontalAlignment = Alignment.CenterHorizontally,
        modifier = Modifier.clickable { onClick() }.padding(8.dp)
    ) {
        Icon(icon, contentDescription = label, tint = if (active) NfRed else Color.White, modifier = Modifier.size(24.dp))
        Spacer(modifier = Modifier.height(4.dp))
        Text(label, color = NfMuted, fontSize = 11.sp)
    }
}
