package com.mantii04.moviehub

import android.content.Intent
import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.unit.sp
import androidx.navigation.compose.*

class MainActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContent {
            MaterialTheme(colorScheme = darkColorScheme(primary = Color.Red, background = Color(0xFF141414))) {
                val navController = rememberNavController()
                NavHost(navController, startDestination = "home") {
                    composable("home") { HomeScreen(navController) }
                    composable("search") { SearchScreen(navController) }
                }
            }
        }
    }
}

@Composable
fun HomeScreen(navController: NavHostController) {
    Column(modifier = Modifier.fillMaxSize().background(Color(0xFF141414))) {
        Text("Netflix Clone (Home)", color = Color.White, fontSize = 24.sp, modifier = Modifier.padding(16.dp))
        Spacer(modifier = Modifier.weight(1f))
        
        Button(
            onClick = { 
                val intent = Intent(Intent.ACTION_VIEW)
                // We will test the native player with Inception (TMDB: 27205)
                val context = navController.context
                intent.setClass(context, PlayerActivity::class.java)
                intent.putExtra("EMBED_URL", "https://vixsrc.to/movie/27205")
                context.startActivity(intent)
            },
            modifier = Modifier.padding(16.dp)
        ) {
            Text("Test Native Player (Inception)")
        }
    }
}

@Composable
fun SearchScreen(navController: NavHostController) {
    Column(modifier = Modifier.fillMaxSize().background(Color(0xFF141414))) {
        Text("Netflix Clone (Search)", color = Color.White, fontSize = 24.sp, modifier = Modifier.padding(16.dp))
    }
}
