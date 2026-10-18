package com.mantii04.moviehub

import android.content.Context
import androidx.room.*
import kotlinx.coroutines.flow.Flow

@Entity(tableName = "watch_history")
data class HistoryEntity(
    @PrimaryKey val id: Int,
    val title: String,
    val posterPath: String,
    val isTv: Boolean,
    val progress: Long, // in milliseconds
    val duration: Long,
    val lastWatched: Long = System.currentTimeMillis()
)

@Entity(tableName = "my_list")
data class MyListEntity(
    @PrimaryKey val id: Int,
    val title: String,
    val posterPath: String,
    val isTv: Boolean
)

@Dao
interface MediaDao {
    @Query("SELECT * FROM watch_history ORDER BY lastWatched DESC LIMIT 10")
    fun getHistory(): Flow<List<HistoryEntity>>

    @Insert(onConflict = OnConflictStrategy.REPLACE)
    suspend fun saveProgress(entity: HistoryEntity)

    @Query("DELETE FROM watch_history WHERE id = :id")
    suspend fun removeFromHistory(id: Int)

    @Query("SELECT * FROM my_list ORDER BY id DESC")
    fun getMyList(): Flow<List<MyListEntity>>

    @Insert(onConflict = OnConflictStrategy.REPLACE)
    suspend fun addToMyList(entity: MyListEntity)

    @Query("DELETE FROM my_list WHERE id = :id")
    suspend fun removeFromMyList(id: Int)

    @Query("SELECT EXISTS(SELECT 1 FROM my_list WHERE id = :id)")
    suspend fun isInMyList(id: Int): Boolean
}

@Database(entities = [HistoryEntity::class, MyListEntity::class], version = 1, exportSchema = false)
abstract class AppDatabase : RoomDatabase() {
    abstract fun mediaDao(): MediaDao

    companion object {
        @Volatile private var INSTANCE: AppDatabase? = null
        fun getDatabase(context: Context): AppDatabase {
            return INSTANCE ?: synchronized(this) {
                val instance = Room.databaseBuilder(
                    context.applicationContext,
                    AppDatabase::class.java,
                    "movie_hub_database"
                ).build()
                INSTANCE = instance
                instance
            }
        }
    }
}
