package P4;

import android.annotation.SuppressLint;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.util.Log;
import android.widget.Toast;
import flix.com.vision.App;
import flix.com.vision.models.Anime;
import flix.com.vision.models.C4913m;
import flix.com.vision.models.ChannelTv;
import flix.com.vision.models.Drama;
import flix.com.vision.models.HistoryTVLink;
import flix.com.vision.models.Movie;
import flix.com.vision.models.adult.AdultVideo;
import io.reactivex.android.schedulers.AndroidSchedulers;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Objects;

/* loaded from: classes2.dex */
public final class e {

    /* renamed from: a, reason: collision with root package name */
    public final Context f2722a;

    /* renamed from: b, reason: collision with root package name */
    public c f2723b;

    public e(Context context) {
        this.f2723b = new c(context);
        this.f2722a = context;
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x012b A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:48:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean AddAnimeItem(java.util.ArrayList<flix.com.vision.models.AnimeItem> r15) {
        /*
            Method dump skipped, instructions count: 301
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: P4.e.AddAnimeItem(java.util.ArrayList):boolean");
    }

    public final void a(Drama drama, String str) {
        try {
            c cVar = c.getInstance(App.getInstance());
            this.f2723b = cVar;
            try {
                SQLiteDatabase writableDatabase = cVar.getWritableDatabase();
                if (writableDatabase == null) {
                    Toast.makeText(this.f2722a, "Operation failed. retry", 0).show();
                    return;
                }
                ContentValues contentValues = new ContentValues();
                contentValues.put("drama_title", drama.title);
                contentValues.put("drama_url", drama.url);
                contentValues.put("drama_img_url", drama.image_url);
                contentValues.put("drama_year", drama.year);
                contentValues.put("drama_title_year", drama.title_with_year);
                contentValues.put("drama_is_series", Boolean.valueOf(drama.is_series));
                writableDatabase.insertWithOnConflict(str, str, contentValues, 5);
                writableDatabase.close();
            } catch (Exception e3) {
                e3.printStackTrace();
            }
        } catch (Exception e7) {
            b.c.t(e7, new StringBuilder("Error in addDramas: "), "MyDB");
        }
    }

    public boolean addAdultHistory(AdultVideo adultVideo) {
        SQLiteDatabase writableDatabase;
        if (!App.getInstance().f14440s.getBoolean("pref_adult_zone_keep_history", true)) {
            return false;
        }
        try {
            c cVar = new c(App.getInstance());
            this.f2723b = cVar;
            try {
                writableDatabase = cVar.getWritableDatabase();
            } catch (Exception e3) {
                e3.printStackTrace();
                return false;
            }
        } catch (Exception e7) {
            b.c.t(e7, new StringBuilder("Error in addAdultHistory: "), "MyDB");
        }
        if (writableDatabase == null) {
            Toast.makeText(this.f2722a, "Operation failed. retry", 0).show();
            return false;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("adult_title", adultVideo.title);
        contentValues.put("adult_url", adultVideo.url);
        contentValues.put("adult_img_url", adultVideo.img_url);
        writableDatabase.insertWithOnConflict("adult_history", "adult_history", contentValues, 5);
        writableDatabase.close();
        return true;
    }

    public boolean addChannelToFavorites(ChannelTv channelTv) {
        try {
            c cVar = c.getInstance(App.getInstance());
            this.f2723b = cVar;
            try {
                SQLiteDatabase writableDatabase = cVar.getWritableDatabase();
                if (writableDatabase == null) {
                    Toast.makeText(this.f2722a, "Operation failed. retry", 0).show();
                    return false;
                }
                ContentValues contentValues = new ContentValues();
                contentValues.put("channel_label_", channelTv.label);
                contentValues.put("channel_logo_", channelTv.logoUrl);
                contentValues.put("channel_url_", channelTv.url);
                writableDatabase.insertWithOnConflict("fav_channels", "fav_channels", contentValues, 5);
                writableDatabase.close();
                return true;
            } catch (Exception e3) {
                Log.e("MyDB", "Error getting writable database in addChannelToFavorites: " + e3.getMessage());
                e3.printStackTrace();
                return false;
            }
        } catch (Exception e7) {
            b.c.t(e7, new StringBuilder("Error in addChannelToFavorites: "), "MyDB");
            return true;
        }
    }

    public void addDramaToContinue(Drama drama) {
        a(drama, "drama_continue");
    }

    public void addDramaToFavorites(Drama drama) {
        a(drama, "drama_favorites");
    }

    public void addDramaToHistory(Drama drama) {
        a(drama, "drama_history");
    }

    public boolean addFavoritesAdult(AdultVideo adultVideo) {
        try {
            c cVar = new c(App.getInstance());
            this.f2723b = cVar;
            try {
                SQLiteDatabase writableDatabase = cVar.getWritableDatabase();
                if (writableDatabase == null) {
                    Toast.makeText(this.f2722a, "Operation failed. retry", 0).show();
                    return false;
                }
                ContentValues contentValues = new ContentValues();
                contentValues.put("adult_title", adultVideo.title);
                contentValues.put("adult_url", adultVideo.url);
                contentValues.put("adult_img_url", adultVideo.img_url);
                writableDatabase.insertWithOnConflict("adult_favorites", "adult_favorites", contentValues, 5);
                writableDatabase.close();
                return true;
            } catch (Exception e3) {
                e3.printStackTrace();
                return false;
            }
        } catch (Exception e7) {
            b.c.t(e7, new StringBuilder("Error in addFavoritesAdult: "), "MyDB");
            return true;
        }
    }

    public boolean addHistoryIPTV(HistoryTVLink historyTVLink) {
        c cVar = new c(App.getInstance());
        this.f2723b = cVar;
        try {
            SQLiteDatabase writableDatabase = cVar.getWritableDatabase();
            if (writableDatabase == null) {
                Toast.makeText(this.f2722a, "Operation failed. retry", 0).show();
                return false;
            }
            try {
                ContentValues contentValues = new ContentValues();
                contentValues.put("label_name_", historyTVLink.name);
                contentValues.put("history_url_", historyTVLink.url);
                contentValues.put("history_type_", historyTVLink.type);
                writableDatabase.insertWithOnConflict("iptv_history", "iptv_history", contentValues, 5);
                writableDatabase.close();
                return true;
            } catch (Exception e3) {
                b.c.t(e3, new StringBuilder("Error in addHistoryIPTV: "), "MyDB");
                return true;
            }
        } catch (Exception e7) {
            e7.printStackTrace();
            return false;
        }
    }

    public boolean addMovieFavorites(Movie movie) {
        SQLiteDatabase writableDatabase;
        try {
            try {
                if (App.getInstance().f14440s.getBoolean("add_favorites_on", true)) {
                    if (App.getInstance().f14440s.getBoolean("trakt_user_logged_in", false)) {
                        App.getInstance().f14438q.addToCollection(movie).observeOn(AndroidSchedulers.mainThread()).subscribe(new d(movie, 0), new A4.c(12));
                    }
                    if (App.getInstance().f14440s.getBoolean("trakt_user_logged_in", false)) {
                        App.getInstance().f14438q.addToWatchlist(movie).observeOn(AndroidSchedulers.mainThread()).subscribe(new d(movie, 1), new A4.c(13));
                    }
                }
            } catch (Exception e3) {
                e3.printStackTrace();
            }
            c cVar = c.getInstance(App.getInstance());
            this.f2723b = cVar;
            try {
                writableDatabase = cVar.getWritableDatabase();
            } catch (Exception e7) {
                e7.printStackTrace();
            }
        } catch (Exception e8) {
            b.c.t(e8, new StringBuilder("Error in addMovieFavorites (local DB operation): "), "MyDB");
        }
        if (writableDatabase == null) {
            Toast.makeText(this.f2722a, "Operation failed. retry", 0).show();
            return false;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("image_url", movie.getImage_url());
        contentValues.put("url", movie.getUrl());
        contentValues.put("info_url", movie.getInfo_url());
        contentValues.put("rating", movie.getRating());
        contentValues.put(C4913m.f14513m, movie.getQuality());
        contentValues.put("_title", movie.getTitle());
        contentValues.put("plot_", movie.getOverview());
        contentValues.put("server_", movie.getServer());
        contentValues.put("cast_", movie.getCast());
        contentValues.put("server_number_", movie.getServerNumberNew());
        contentValues.put("_season", movie.season);
        contentValues.put("_year", movie.year);
        contentValues.put("movie_id", Long.valueOf(movie.getMovieId()));
        contentValues.put("movie_type", Integer.valueOf(movie.getType()));
        contentValues.put("movie_backdrop", movie.backdrop);
        writableDatabase.insertWithOnConflict("favorites", "favorites", contentValues, 5);
        writableDatabase.close();
        return true;
    }

    public boolean addMovieFavorites_Anime(Movie movie) {
        try {
            c cVar = c.getInstance(App.getInstance());
            this.f2723b = cVar;
            try {
                SQLiteDatabase writableDatabase = cVar.getWritableDatabase();
                if (writableDatabase == null) {
                    Toast.makeText(this.f2722a, "Operation failed. retry", 0).show();
                    return false;
                }
                ContentValues contentValues = new ContentValues();
                contentValues.put("image_url", movie.getImage_url());
                contentValues.put("url", movie.getUrl());
                contentValues.put("info_url", movie.getInfo_url());
                contentValues.put("rating", movie.getRating());
                contentValues.put(C4913m.f14513m, movie.getQuality());
                contentValues.put("_title", movie.getTitle());
                contentValues.put("plot_", movie.getPlot());
                contentValues.put("server_", movie.getServer());
                contentValues.put("cast_", movie.getCast());
                contentValues.put("server_number_", movie.getServerNumberNew());
                writableDatabase.insertWithOnConflict("anime_favorites", "anime_favorites", contentValues, 5);
                writableDatabase.close();
                return true;
            } catch (Exception e3) {
                e3.printStackTrace();
                return false;
            }
        } catch (Exception e7) {
            b.c.t(e7, new StringBuilder("Error in addMovieFavorites_Anime: "), "MyDB");
            return true;
        }
    }

    public boolean addMovieHistory_ANIME(Movie movie) {
        try {
            c cVar = c.getInstance(App.getInstance());
            this.f2723b = cVar;
            try {
                SQLiteDatabase writableDatabase = cVar.getWritableDatabase();
                if (writableDatabase == null) {
                    Toast.makeText(this.f2722a, "Operation failed. retry", 0).show();
                    return false;
                }
                ContentValues contentValues = new ContentValues();
                contentValues.put("image_url", movie.getImage_url());
                contentValues.put("url", movie.getUrl());
                contentValues.put("info_url", movie.getInfo_url());
                contentValues.put("rating", movie.getRating());
                contentValues.put(C4913m.f14513m, movie.getQuality());
                contentValues.put("_title", movie.getTitle());
                contentValues.put("plot_", movie.getPlot());
                contentValues.put("server_", movie.getServer());
                contentValues.put("cast_", movie.getCast());
                contentValues.put("server_number_", movie.getServerNumberNew());
                contentValues.put("_season", movie.season);
                contentValues.put("_year", movie.year);
                writableDatabase.insertWithOnConflict("anime_history", "anime_history", contentValues, 5);
                writableDatabase.close();
                return true;
            } catch (Exception e3) {
                Log.e("MyDB", "Error getting writable database in addMovieHistory_ANIME: " + e3.getMessage());
                e3.printStackTrace();
                return false;
            }
        } catch (Exception e7) {
            b.c.t(e7, new StringBuilder("Error in addMovieHistory_ANIME: "), "MyDB");
            return true;
        }
    }

    public boolean addtoWatched(Movie movie) {
        SQLiteDatabase writableDatabase;
        if (movie.anime) {
            return true;
        }
        try {
            c cVar = c.getInstance(App.getInstance());
            this.f2723b = cVar;
            try {
                writableDatabase = cVar.getWritableDatabase();
            } catch (Exception e3) {
                Log.e("MyDB", "Error getting writable database in addtoWatched: " + e3.getMessage());
                e3.printStackTrace();
                return false;
            }
        } catch (Exception e7) {
            b.c.t(e7, new StringBuilder("Error in addtoWatched (local DB operation): "), "MyDB");
        }
        if (writableDatabase == null) {
            Toast.makeText(this.f2722a, "Operation failed. retry", 0).show();
            return false;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("image_url", movie.getImage_url());
        contentValues.put("url", movie.getUrl());
        contentValues.put("info_url", movie.getInfo_url());
        contentValues.put("rating", movie.getRating());
        contentValues.put(C4913m.f14513m, movie.getDuration() + "");
        contentValues.put("_title", movie.getTitle());
        contentValues.put("plot_", movie.getOverview());
        contentValues.put("server_", movie.getServer());
        contentValues.put("cast_", movie.getCast());
        contentValues.put("server_number_", movie.getServerNumberNew());
        contentValues.put("_season", movie.season);
        contentValues.put("_year", movie.year);
        contentValues.put("movie_id", Long.valueOf(movie.getMovieId()));
        contentValues.put("movie_type", Integer.valueOf(movie.getType()));
        contentValues.put("movie_backdrop", movie.backdrop);
        writableDatabase.insertWithOnConflict("history", "history", contentValues, 5);
        writableDatabase.close();
        return true;
    }

    public boolean addtoWatching(Movie movie) {
        if (!movie.anime && !movie.drama) {
            try {
                c cVar = c.getInstance(App.getInstance());
                this.f2723b = cVar;
                try {
                    SQLiteDatabase writableDatabase = cVar.getWritableDatabase();
                    if (writableDatabase == null) {
                        Toast.makeText(this.f2722a, "Operation failed. retry", 0).show();
                        return false;
                    }
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("image_url", movie.getImage_url());
                    contentValues.put("url", movie.getUrl());
                    contentValues.put("info_url", movie.getInfo_url());
                    contentValues.put("rating", movie.getRating());
                    contentValues.put(C4913m.f14513m, movie.getDuration() + "");
                    contentValues.put("_title", movie.getTitle());
                    contentValues.put("plot_", movie.getOverview());
                    contentValues.put("server_", movie.getServer());
                    contentValues.put("cast_", movie.getCast());
                    contentValues.put("server_number_", movie.getServerNumberNew());
                    contentValues.put("_season", movie.season);
                    contentValues.put("_year", movie.year);
                    contentValues.put("movie_id", Long.valueOf(movie.getMovieId()));
                    contentValues.put("movie_type", Integer.valueOf(movie.getType()));
                    contentValues.put("movie_backdrop", movie.backdrop);
                    writableDatabase.insertWithOnConflict("watching", "watching", contentValues, 5);
                    writableDatabase.close();
                } catch (Exception e3) {
                    Log.e("MyDB", "Error getting writable database in addtoWatching: " + e3.getMessage());
                    e3.printStackTrace();
                    return false;
                }
            } catch (Exception e7) {
                b.c.t(e7, new StringBuilder("Error in addtoWatching (local DB operation): "), "MyDB");
            }
        }
        return true;
    }

    public final void b(AdultVideo adultVideo, String str) {
        try {
            c cVar = c.getInstance(App.getInstance());
            this.f2723b = cVar;
            SQLiteDatabase writableDatabase = cVar.getWritableDatabase();
            if (writableDatabase == null) {
                Toast.makeText(this.f2722a, "Operation failed. retry", 0).show();
            } else {
                writableDatabase.delete(str, "adult_url LIKE ?", new String[]{String.valueOf(adultVideo.url)});
                writableDatabase.close();
            }
        } catch (Exception e3) {
            b.c.t(e3, new StringBuilder("Error in deleteAdult: "), "MyDB");
        }
    }

    public final void c(Drama drama, String str) {
        try {
            c cVar = c.getInstance(App.getInstance());
            this.f2723b = cVar;
            SQLiteDatabase writableDatabase = cVar.getWritableDatabase();
            if (writableDatabase == null) {
                Toast.makeText(this.f2722a, "Operation failed. retry", 0).show();
            } else {
                writableDatabase.delete(str, "drama_url LIKE ?", new String[]{String.valueOf(drama.url)});
                writableDatabase.close();
            }
        } catch (Exception e3) {
            b.c.t(e3, new StringBuilder("Error in deleteDrama: "), "MyDB");
        }
    }

    public boolean clearFavorites() {
        try {
            c cVar = c.getInstance(App.getInstance());
            this.f2723b = cVar;
            SQLiteDatabase writableDatabase = cVar.getWritableDatabase();
            if (writableDatabase == null) {
                Toast.makeText(this.f2722a, "Operation failed. retry", 0).show();
                return false;
            }
            writableDatabase.execSQL("delete from favorites");
            writableDatabase.close();
            return true;
        } catch (SQLException e3) {
            Log.e("MyDB", "Error in clearFavorites: " + e3.getMessage());
            return true;
        }
    }

    public boolean clearHistory() {
        try {
            c cVar = c.getInstance(App.getInstance());
            this.f2723b = cVar;
            SQLiteDatabase writableDatabase = cVar.getWritableDatabase();
            if (writableDatabase == null) {
                Toast.makeText(this.f2722a, "Operation failed. retry", 0).show();
                return false;
            }
            writableDatabase.execSQL("delete from history");
            writableDatabase.close();
            return true;
        } catch (SQLException e3) {
            Log.e("MyDB", "Error in clearHistory: " + e3.getMessage());
            return true;
        }
    }

    public boolean clearHistoryAdult() {
        try {
            c cVar = c.getInstance(App.getInstance());
            this.f2723b = cVar;
            SQLiteDatabase writableDatabase = cVar.getWritableDatabase();
            if (writableDatabase == null) {
                Toast.makeText(this.f2722a, "Operation failed. retry", 0).show();
                return false;
            }
            writableDatabase.execSQL("delete from adult_history");
            writableDatabase.close();
            return true;
        } catch (SQLException e3) {
            Log.e("MyDB", "Error in clearHistoryAdult: " + e3.getMessage());
            return true;
        }
    }

    public boolean clearHistoryAnime() {
        try {
            c cVar = c.getInstance(App.getInstance());
            this.f2723b = cVar;
            SQLiteDatabase writableDatabase = cVar.getWritableDatabase();
            if (writableDatabase == null) {
                Toast.makeText(this.f2722a, "Operation failed. retry", 0).show();
                return false;
            }
            writableDatabase.execSQL("delete from anime_history");
            writableDatabase.close();
            return true;
        } catch (SQLException e3) {
            Log.e("MyDB", "Error in clearHistoryAnime: " + e3.getMessage());
            return true;
        }
    }

    public boolean clearHistoryDrama() {
        try {
            c cVar = c.getInstance(App.getInstance());
            this.f2723b = cVar;
            SQLiteDatabase writableDatabase = cVar.getWritableDatabase();
            if (writableDatabase == null) {
                Toast.makeText(this.f2722a, "Operation failed. retry", 0).show();
                return false;
            }
            writableDatabase.execSQL("delete from drama_history");
            writableDatabase.close();
            return true;
        } catch (SQLException e3) {
            Log.e("MyDB", "Error in clearHistoryDrama: " + e3.getMessage());
            return true;
        }
    }

    public boolean clearHistory_Anime() {
        try {
            c cVar = c.getInstance(App.getInstance());
            this.f2723b = cVar;
            SQLiteDatabase writableDatabase = cVar.getWritableDatabase();
            if (writableDatabase == null) {
                Toast.makeText(this.f2722a, "Operation failed. retry", 0).show();
                return false;
            }
            writableDatabase.execSQL("delete from anime_history");
            writableDatabase.close();
            return true;
        } catch (SQLException e3) {
            Log.e("MyDB", "Error in clearHistory_Anime: " + e3.getMessage());
            return true;
        }
    }

    public void deletDramaFromContinue(Drama drama) {
        c(drama, "drama_continue");
    }

    public void deletDramaFromFavorites(Drama drama) {
        c(drama, "drama_favorites");
    }

    public void deleteAdultFromFavorites(AdultVideo adultVideo) {
        b(adultVideo, "adult_favorites");
    }

    public void deleteAdultFromHistory(AdultVideo adultVideo) {
        b(adultVideo, "adult_history");
    }

    public void deleteChannelFromFavorites(ChannelTv channelTv) {
        try {
            c cVar = c.getInstance(App.getInstance());
            this.f2723b = cVar;
            SQLiteDatabase writableDatabase = cVar.getWritableDatabase();
            if (writableDatabase == null) {
                Toast.makeText(this.f2722a, "Operation failed. retry", 0).show();
            } else {
                writableDatabase.delete("fav_channels", "channel_label_ LIKE ?", new String[]{String.valueOf(channelTv.label)});
                writableDatabase.close();
            }
        } catch (Exception e3) {
            b.c.t(e3, new StringBuilder("Error in deleteChannelFromFavorites: "), "MyDB");
        }
    }

    public void deleteFavoriteAdultVideo(AdultVideo adultVideo) {
        try {
            c cVar = c.getInstance(App.getInstance());
            this.f2723b = cVar;
            SQLiteDatabase writableDatabase = cVar.getWritableDatabase();
            if (writableDatabase == null) {
                Toast.makeText(this.f2722a, "Operation failed. retry", 0).show();
            } else {
                writableDatabase.delete("adult_favorites", "adult_url LIKE ?", new String[]{String.valueOf(adultVideo)});
                writableDatabase.close();
            }
        } catch (Exception e3) {
            b.c.t(e3, new StringBuilder("Error in deleteFavoriteAdultVideo: "), "MyDB");
        }
    }

    public void deleteFavoriteMovie(Movie movie) {
        try {
            c cVar = c.getInstance(App.getInstance());
            this.f2723b = cVar;
            SQLiteDatabase writableDatabase = cVar.getWritableDatabase();
            if (writableDatabase == null) {
                Toast.makeText(this.f2722a, "Operation failed. retry", 0).show();
            } else {
                writableDatabase.delete("favorites", "_title LIKE ?", new String[]{String.valueOf(movie.getTitle())});
                writableDatabase.close();
            }
        } catch (Exception e3) {
            b.c.t(e3, new StringBuilder("Error in deleteFavoriteMovie (local DB operation): "), "MyDB");
        }
    }

    public void deleteFavoriteMovie_ANIME(Movie movie) {
        try {
            c cVar = c.getInstance(App.getInstance());
            this.f2723b = cVar;
            SQLiteDatabase writableDatabase = cVar.getWritableDatabase();
            if (writableDatabase == null) {
                Toast.makeText(this.f2722a, "Operation failed. retry", 0).show();
            } else {
                writableDatabase.delete("anime_favorites", "_title LIKE ?", new String[]{String.valueOf(movie.getTitle())});
                writableDatabase.close();
            }
        } catch (Exception e3) {
            b.c.t(e3, new StringBuilder("Error in deleteFavoriteMovie_ANIME: "), "MyDB");
        }
    }

    public void deleteHistoryIptvItem(HistoryTVLink historyTVLink) {
        try {
            c cVar = new c(App.getInstance());
            this.f2723b = cVar;
            SQLiteDatabase readableDatabase = cVar.getReadableDatabase();
            if (readableDatabase == null) {
                Toast.makeText(this.f2722a, "Operation failed. retry", 0).show();
            } else {
                readableDatabase.delete("iptv_history", "history_url_ LIKE ?", new String[]{String.valueOf(historyTVLink.url)});
                readableDatabase.close();
            }
        } catch (Exception e3) {
            b.c.t(e3, new StringBuilder("Error in deleteHistoryIptvItem: "), "MyDB");
        }
    }

    @SuppressLint({"Range"})
    public ArrayList<AdultVideo> getAdultHistoryFromDb() {
        ArrayList<AdultVideo> arrayList = new ArrayList<>();
        try {
            SQLiteDatabase readableDatabase = this.f2723b.getReadableDatabase();
            if (readableDatabase == null) {
                Toast.makeText(this.f2722a, "Operation failed. retry", 0).show();
                return null;
            }
            Cursor query = readableDatabase.query("adult_history", new String[]{"_id", "adult_title", "adult_img_url", "adult_url"}, null, null, null, null, null);
            query.moveToFirst();
            while (!query.isAfterLast()) {
                AdultVideo adultVideo = new AdultVideo();
                adultVideo.title = query.getString(query.getColumnIndex("adult_title"));
                adultVideo.url = query.getString(query.getColumnIndex("adult_url"));
                adultVideo.img_url = query.getString(query.getColumnIndex("adult_img_url"));
                arrayList.add(adultVideo);
                query.moveToNext();
            }
            readableDatabase.close();
            Collections.reverse(arrayList);
            return arrayList;
        } catch (Exception e3) {
            b.c.t(e3, new StringBuilder("Error in getAdultHistoryFromDb: "), "MyDB");
            return arrayList;
        }
    }

    @SuppressLint({"Range"})
    public ArrayList<AdultVideo> getAdultVideosFavoritesFromDb() {
        ArrayList<AdultVideo> arrayList = new ArrayList<>();
        try {
            SQLiteDatabase readableDatabase = this.f2723b.getReadableDatabase();
            if (readableDatabase == null) {
                Toast.makeText(this.f2722a, "Operation failed. retry", 0).show();
                return null;
            }
            Cursor query = readableDatabase.query("adult_favorites", new String[]{"_id", "adult_title", "adult_img_url", "adult_url"}, null, null, null, null, null);
            query.moveToFirst();
            while (!query.isAfterLast()) {
                AdultVideo adultVideo = new AdultVideo();
                adultVideo.title = query.getString(query.getColumnIndex("adult_title"));
                adultVideo.url = query.getString(query.getColumnIndex("adult_url"));
                adultVideo.img_url = query.getString(query.getColumnIndex("adult_img_url"));
                arrayList.add(adultVideo);
                query.moveToNext();
            }
            readableDatabase.close();
            Collections.reverse(arrayList);
            return arrayList;
        } catch (Exception e3) {
            b.c.t(e3, new StringBuilder("Error in getAdultVideosFromDb: "), "MyDB");
            return arrayList;
        }
    }

    public ArrayList<Drama> getDramaContinue() {
        return getDramas("drama_continue");
    }

    public ArrayList<Drama> getDramaFavorites() {
        return getDramas("drama_favorites");
    }

    public ArrayList<Drama> getDramaHistory() {
        return getDramas("drama_history");
    }

    @SuppressLint({"Range"})
    public ArrayList<Drama> getDramas(String str) {
        ArrayList<Drama> arrayList = new ArrayList<>();
        try {
            SQLiteDatabase writableDatabase = this.f2723b.getWritableDatabase();
            if (writableDatabase == null) {
                Toast.makeText(this.f2722a, "Operation failed. retry", 0).show();
                return arrayList;
            }
            Cursor query = writableDatabase.query(str, new String[]{"_id", "drama_title", "drama_img_url", "drama_url", "drama_is_series", "drama_year", "drama_title_year"}, null, null, null, null, null);
            query.moveToFirst();
            while (!query.isAfterLast()) {
                Drama drama = new Drama();
                drama.title = query.getString(query.getColumnIndex("drama_title"));
                drama.url = query.getString(query.getColumnIndex("drama_url"));
                drama.image_url = query.getString(query.getColumnIndex("drama_img_url"));
                drama.is_series = Objects.equals(query.getString(query.getColumnIndex("drama_is_series")), "1");
                drama.year = query.getString(query.getColumnIndex("drama_year"));
                drama.title_with_year = query.getString(query.getColumnIndex("drama_title_year"));
                arrayList.add(drama);
                query.moveToNext();
            }
            writableDatabase.close();
            Collections.reverse(arrayList);
            return arrayList;
        } catch (Exception e3) {
            b.c.t(e3, new StringBuilder("Error in getDramas: "), "MyDB");
            return arrayList;
        }
    }

    @SuppressLint({"Range"})
    public ArrayList<ChannelTv> getFavoritesChannels() {
        ArrayList<ChannelTv> arrayList = new ArrayList<>();
        try {
            SQLiteDatabase writableDatabase = this.f2723b.getWritableDatabase();
            if (writableDatabase == null) {
                Toast.makeText(this.f2722a, "Operation failed. retry", 0).show();
                return null;
            }
            Cursor query = writableDatabase.query("fav_channels", new String[]{"_id", "channel_logo_", "channel_url_", "channel_label_"}, null, null, null, null, null);
            query.moveToFirst();
            while (!query.isAfterLast()) {
                ChannelTv channelTv = new ChannelTv();
                channelTv.url = query.getString(query.getColumnIndex("channel_url_"));
                channelTv.label = query.getString(query.getColumnIndex("channel_label_"));
                channelTv.logoUrl = query.getString(query.getColumnIndex("channel_logo_"));
                arrayList.add(channelTv);
                query.moveToNext();
            }
            writableDatabase.close();
            Collections.reverse(arrayList);
            return arrayList;
        } catch (Exception e3) {
            b.c.t(e3, new StringBuilder("Error in getFavoritesChannels: "), "MyDB");
            return arrayList;
        }
    }

    @SuppressLint({"Range"})
    public ArrayList<Movie> getFavoritesMoviesFromDb() {
        ArrayList<Movie> arrayList = new ArrayList<>();
        try {
            SQLiteDatabase writableDatabase = this.f2723b.getWritableDatabase();
            if (writableDatabase == null) {
                Toast.makeText(this.f2722a, "Operation failed. retry", 0).show();
                return arrayList;
            }
            Cursor query = writableDatabase.query("favorites", new String[]{"_id", "_title", "image_url", "info_url", C4913m.f14513m, "rating", "url", "plot_", "cast_", "server_", "server_number_", "_year", "_season", "movie_type", "movie_id"}, null, null, null, null, null);
            query.moveToFirst();
            while (!query.isAfterLast()) {
                Movie movie = new Movie();
                movie.isFavorite = true;
                movie.setTitle(query.getString(query.getColumnIndex("_title")));
                movie.setUrl(query.getString(query.getColumnIndex("url")));
                movie.setInfo_url(query.getString(query.getColumnIndex("info_url")));
                movie.setImage_url(query.getString(query.getColumnIndex("image_url")));
                movie.setRating(query.getString(query.getColumnIndex("rating")));
                movie.setQuality(query.getString(query.getColumnIndex(C4913m.f14513m)));
                movie.setCast(query.getString(query.getColumnIndex("cast_")));
                movie.setServer(query.getString(query.getColumnIndex("server_")));
                movie.setOverview(query.getString(query.getColumnIndex("plot_")));
                movie.season = query.getString(query.getColumnIndex("_season"));
                movie.year = query.getString(query.getColumnIndex("_year"));
                movie.setType(Integer.parseInt(query.getString(query.getColumnIndex("movie_type"))));
                movie.setMovieId(Integer.parseInt(query.getString(query.getColumnIndex("movie_id"))));
                arrayList.add(movie);
                query.moveToNext();
            }
            writableDatabase.close();
            Collections.reverse(arrayList);
            return arrayList;
        } catch (NumberFormatException e3) {
            Log.e("MyDB", "NumberFormatException in getFavoritesMoviesFromDb: " + e3.getMessage());
            return arrayList;
        } catch (Exception e7) {
            b.c.t(e7, new StringBuilder("Error in getFavoritesMoviesFromDb: "), "MyDB");
            return arrayList;
        }
    }

    @SuppressLint({"Range"})
    public ArrayList<Anime> getFavoritesMoviesFromDb_Anime() {
        ArrayList<Anime> arrayList = new ArrayList<>();
        try {
            SQLiteDatabase writableDatabase = this.f2723b.getWritableDatabase();
            if (writableDatabase == null) {
                Toast.makeText(this.f2722a, "Operation failed. retry", 0).show();
                return null;
            }
            Cursor query = writableDatabase.query("anime_favorites", new String[]{"_id", "_title", "image_url", "info_url", C4913m.f14513m, "rating", "url", "plot_", "cast_", "server_", "server_number_", "_year", "_season"}, null, null, null, null, null);
            query.moveToFirst();
            while (!query.isAfterLast()) {
                Movie movie = new Movie();
                movie.setTitle(query.getString(query.getColumnIndex("_title")));
                movie.setUrl(query.getString(query.getColumnIndex("url")));
                movie.setInfo_url(query.getString(query.getColumnIndex("info_url")));
                movie.setImage_url(query.getString(query.getColumnIndex("image_url")));
                movie.setRating(query.getString(query.getColumnIndex("rating")));
                movie.setQuality(query.getString(query.getColumnIndex(C4913m.f14513m)));
                movie.setCast(query.getString(query.getColumnIndex("cast_")));
                movie.setServer(query.getString(query.getColumnIndex("server_")));
                movie.setPlot(query.getString(query.getColumnIndex("plot_")));
                movie.season = query.getString(query.getColumnIndex("_season"));
                movie.year = query.getString(query.getColumnIndex("_year"));
                movie.setServerNumberNew();
                movie.parseYearfromTitle();
                arrayList.add(movie.toAnime());
                query.moveToNext();
            }
            writableDatabase.close();
            Collections.reverse(arrayList);
            return arrayList;
        } catch (Exception e3) {
            b.c.t(e3, new StringBuilder("Error in getFavoritesMoviesFromDb_Anime: "), "MyDB");
            return arrayList;
        }
    }

    @SuppressLint({"Range"})
    public ArrayList<Anime> getGoAnime(String str, String str2, String str3, int i2) {
        String str4;
        Context context = this.f2722a;
        ArrayList<Anime> arrayList = new ArrayList<>();
        try {
            try {
                SQLiteDatabase writableDatabase = this.f2723b.getWritableDatabase();
                if (writableDatabase == null) {
                    Toast.makeText(context, "Operation failed. retry", 0).show();
                    return new ArrayList<>();
                }
                int i7 = i2 * 30;
                if (str == null || str.trim().isEmpty()) {
                    str4 = null;
                } else {
                    str4 = "where go_anime_genres like '%" + str + "%'";
                }
                if (str3 != null && !str3.trim().isEmpty()) {
                    if (str3.equalsIgnoreCase("dubbed")) {
                        str3 = "Dub";
                    }
                    if (str4 != null) {
                        if (str3.equalsIgnoreCase("subbed")) {
                            str4 = str4.concat(" and go_anime_title not like '%Dub%'");
                        } else if (str3.equalsIgnoreCase("dub")) {
                            str4 = str4 + " and go_anime_title like '%" + str3 + "%'";
                        }
                    } else if (str3.equalsIgnoreCase("subbed")) {
                        str4 = "where go_anime_title not like '%Dub%'";
                    } else if (str3.equalsIgnoreCase("dub")) {
                        str4 = "where go_anime_title like '%Dub%'";
                    }
                }
                if (str2 != null && !str2.trim().isEmpty()) {
                    if (str4 != null) {
                        str4 = str4 + " and go_anime_title_year like '%" + str2 + "%'";
                    } else {
                        str4 = "where go_anime_title_year like '%" + str2 + "%'";
                    }
                }
                if (str4 == null) {
                    str4 = "";
                }
                try {
                    Cursor rawQuery = writableDatabase.rawQuery("select * from go_anime_table " + str4 + " order by _id asc limit 30 offset " + i7, null);
                    rawQuery.moveToFirst();
                    while (!rawQuery.isAfterLast()) {
                        Anime anime = new Anime();
                        anime.server = "gogoanime";
                        anime.url = rawQuery.getString(rawQuery.getColumnIndex("go_anime_url"));
                        anime.title = rawQuery.getString(rawQuery.getColumnIndex("go_anime_title"));
                        anime.plot = rawQuery.getString(rawQuery.getColumnIndex("go_anime_plot"));
                        anime.genres = rawQuery.getString(rawQuery.getColumnIndex("go_anime_genres"));
                        anime.image_url = rawQuery.getString(rawQuery.getColumnIndex("go_anime_img_url"));
                        arrayList.add(anime);
                        rawQuery.moveToNext();
                    }
                    writableDatabase.close();
                    Collections.reverse(arrayList);
                    return arrayList;
                } catch (Exception e3) {
                    Log.e("MyDB", "Error rawQuery in getGoAnime: " + e3.getMessage());
                    return new ArrayList<>();
                }
            } catch (Exception e7) {
                Log.e("MyDB", "Error getting writable database in getGoAnime: " + e7.getMessage());
                Toast.makeText(context, "Operation failed. please retry", 0).show();
                return new ArrayList<>();
            }
        } catch (Exception e8) {
            b.c.t(e8, new StringBuilder("Error in getGoAnime: "), "MyDB");
            return arrayList;
        }
    }

    @SuppressLint({"Range"})
    public ArrayList<HistoryTVLink> getHistoryIPTVFromDb() {
        ArrayList<HistoryTVLink> arrayList = new ArrayList<>();
        try {
            SQLiteDatabase readableDatabase = this.f2723b.getReadableDatabase();
            if (readableDatabase == null) {
                Toast.makeText(this.f2722a, "Operation failed. retry", 0).show();
                return null;
            }
            Cursor query = readableDatabase.query("iptv_history", new String[]{"_id", "label_name_", "history_url_", "history_type_"}, null, null, null, null, null);
            query.moveToFirst();
            while (!query.isAfterLast()) {
                HistoryTVLink historyTVLink = new HistoryTVLink();
                historyTVLink.name = query.getString(query.getColumnIndex("label_name_"));
                historyTVLink.url = query.getString(query.getColumnIndex("history_url_"));
                historyTVLink.type = query.getString(query.getColumnIndex("history_type_"));
                arrayList.add(historyTVLink);
                query.moveToNext();
            }
            readableDatabase.close();
            Collections.reverse(arrayList);
            return arrayList;
        } catch (Exception e3) {
            b.c.t(e3, new StringBuilder("Error in getHistoryIPTVFromDb: "), "MyDB");
            return arrayList;
        }
    }

    @SuppressLint({"Range"})
    public ArrayList<Movie> getWatchedMoviesFromDb() {
        ArrayList<Movie> arrayList = new ArrayList<>();
        try {
            SQLiteDatabase writableDatabase = this.f2723b.getWritableDatabase();
            if (writableDatabase == null) {
                Toast.makeText(this.f2722a, "Operation failed. retry", 0).show();
                return arrayList;
            }
            Cursor query = writableDatabase.query("history", new String[]{"_id", "_title", "image_url", "info_url", C4913m.f14513m, "rating", "url", "plot_", "cast_", "server_", "server_number_", "_year", "_season", "movie_id", "movie_type"}, null, null, null, null, null);
            query.moveToFirst();
            while (!query.isAfterLast()) {
                Movie movie = new Movie();
                movie.setTitle(query.getString(query.getColumnIndex("_title")));
                movie.setUrl(query.getString(query.getColumnIndex("url")));
                movie.setInfo_url(query.getString(query.getColumnIndex("info_url")));
                movie.setImage_url(query.getString(query.getColumnIndex("image_url")));
                movie.setRating(query.getString(query.getColumnIndex("rating")));
                movie.setDuration(Integer.parseInt(query.getString(query.getColumnIndex(C4913m.f14513m))));
                movie.setCast(query.getString(query.getColumnIndex("cast_")));
                movie.setServer(query.getString(query.getColumnIndex("server_")));
                movie.setOverview(query.getString(query.getColumnIndex("plot_")));
                movie.season = query.getString(query.getColumnIndex("_season"));
                movie.year = query.getString(query.getColumnIndex("_year"));
                movie.setType(Integer.parseInt(query.getString(query.getColumnIndex("movie_type"))));
                movie.setMovieId(Integer.parseInt(query.getString(query.getColumnIndex("movie_id"))));
                movie.setServerNumberNew();
                movie.parseYearfromTitle();
                arrayList.add(movie);
                query.moveToNext();
            }
            writableDatabase.close();
            Collections.reverse(arrayList);
            return arrayList;
        } catch (NumberFormatException e3) {
            Log.e("MyDB", "NumberFormatException in getWatchedMoviesFromDb: " + e3.getMessage());
            return arrayList;
        } catch (Exception e7) {
            b.c.t(e7, new StringBuilder("Error in getWatchedMoviesFromDb: "), "MyDB");
            return arrayList;
        }
    }

    @SuppressLint({"Range"})
    public ArrayList<Anime> getWatchedMoviesFromDb_Anime() {
        ArrayList<Anime> arrayList = new ArrayList<>();
        try {
            SQLiteDatabase writableDatabase = this.f2723b.getWritableDatabase();
            if (writableDatabase == null) {
                Toast.makeText(this.f2722a, "Operation failed. retry", 0).show();
                return arrayList;
            }
            Cursor query = writableDatabase.query("anime_history", new String[]{"_id", "_title", "image_url", "info_url", C4913m.f14513m, "rating", "url", "plot_", "cast_", "server_", "server_number_", "_year", "_season"}, null, null, null, null, null);
            query.moveToFirst();
            while (!query.isAfterLast()) {
                Movie movie = new Movie();
                movie.setTitle(query.getString(query.getColumnIndex("_title")));
                movie.setUrl(query.getString(query.getColumnIndex("url")));
                movie.setInfo_url(query.getString(query.getColumnIndex("info_url")));
                movie.setImage_url(query.getString(query.getColumnIndex("image_url")));
                movie.setRating(query.getString(query.getColumnIndex("rating")));
                movie.setQuality(query.getString(query.getColumnIndex(C4913m.f14513m)));
                movie.setCast(query.getString(query.getColumnIndex("cast_")));
                movie.setServer(query.getString(query.getColumnIndex("server_")));
                movie.setPlot(query.getString(query.getColumnIndex("plot_")));
                movie.season = query.getString(query.getColumnIndex("_season"));
                movie.year = query.getString(query.getColumnIndex("_year"));
                movie.setServerNumberNew();
                movie.parseYearfromTitle();
                arrayList.add(movie.toAnime());
                query.moveToNext();
            }
            writableDatabase.close();
            Collections.reverse(arrayList);
            return arrayList;
        } catch (Exception e3) {
            b.c.t(e3, new StringBuilder("Error in getWatchedMoviesFromDb_Anime: "), "MyDB");
            return arrayList;
        }
    }

    @SuppressLint({"Range"})
    public ArrayList<Movie> getWatchingMoviesFromDb() {
        ArrayList<Movie> arrayList = new ArrayList<>();
        try {
            SQLiteDatabase writableDatabase = this.f2723b.getWritableDatabase();
            if (writableDatabase == null) {
                Toast.makeText(this.f2722a, "Operation failed. retry", 0).show();
                return arrayList;
            }
            Cursor query = writableDatabase.query("watching", new String[]{"_id", "_title", "image_url", "info_url", C4913m.f14513m, "rating", "url", "plot_", "cast_", "server_", "server_number_", "_year", "_season", "movie_id", "movie_type", "movie_backdrop"}, null, null, null, null, null);
            query.moveToFirst();
            while (!query.isAfterLast()) {
                Movie movie = new Movie();
                movie.setTitle(query.getString(query.getColumnIndex("_title")));
                movie.setUrl(query.getString(query.getColumnIndex("url")));
                movie.setInfo_url(query.getString(query.getColumnIndex("info_url")));
                movie.setImage_url(query.getString(query.getColumnIndex("image_url")));
                movie.setRating(query.getString(query.getColumnIndex("rating")));
                movie.setDuration(Integer.parseInt(query.getString(query.getColumnIndex(C4913m.f14513m))));
                movie.setCast(query.getString(query.getColumnIndex("cast_")));
                movie.setServer(query.getString(query.getColumnIndex("server_")));
                movie.setOverview(query.getString(query.getColumnIndex("plot_")));
                movie.season = query.getString(query.getColumnIndex("_season"));
                movie.year = query.getString(query.getColumnIndex("_year"));
                movie.setType(Integer.parseInt(query.getString(query.getColumnIndex("movie_type"))));
                movie.setMovieId(Integer.parseInt(query.getString(query.getColumnIndex("movie_id"))));
                movie.backdrop = query.getString(query.getColumnIndex("movie_backdrop"));
                movie.setServerNumberNew();
                movie.parseYearfromTitle();
                arrayList.add(movie);
                query.moveToNext();
            }
            writableDatabase.close();
            Collections.reverse(arrayList);
            return arrayList;
        } catch (NumberFormatException e3) {
            Log.e("MyDB", "NumberFormatException in getWatchingMoviesFromDb: " + e3.getMessage());
            return arrayList;
        } catch (Exception e7) {
            b.c.t(e7, new StringBuilder("Error in getWatchingMoviesFromDb: "), "MyDB");
            return arrayList;
        }
    }

    public boolean isAdultVideoFavorited(AdultVideo adultVideo) {
        SQLiteDatabase writableDatabase;
        try {
            c cVar = c.getInstance(App.getInstance());
            this.f2723b = cVar;
            try {
                try {
                    writableDatabase = cVar.getWritableDatabase();
                } catch (SQLiteDatabaseLockedException e3) {
                    Log.e("MyDB", "SQLiteDatabaseLockedException in isAdultVideoFavorited: " + e3.getMessage());
                    return false;
                }
            } catch (Exception e7) {
                Log.e("MyDB", "Error getting writable database in isAdultVideoFavorited: " + e7.getMessage());
                return false;
            }
        } catch (Exception e8) {
            b.c.t(e8, new StringBuilder("Error in isAdultVideoFavorited: "), "MyDB");
        }
        if (writableDatabase == null) {
            Toast.makeText(this.f2722a, "Operation failed. retry", 0).show();
            return false;
        }
        String[] strArr = {"_id", "adult_title", "adult_url", "adult_img_url"};
        String str = adultVideo.url;
        String[] strArr2 = {str};
        if (str == null) {
            return false;
        }
        Cursor query = writableDatabase.query("adult_favorites", strArr, "adult_url=?", strArr2, null, null, null);
        query.moveToFirst();
        if (query.isAfterLast()) {
            writableDatabase.close();
            return false;
        }
        writableDatabase.close();
        query.moveToNext();
        return true;
    }

    public boolean isChannelFavorited(ChannelTv channelTv) {
        SQLiteDatabase writableDatabase;
        try {
            c cVar = c.getInstance(App.getInstance());
            this.f2723b = cVar;
            try {
                writableDatabase = cVar.getWritableDatabase();
            } catch (Exception e3) {
                Log.e("MyDB", "Error getting writable database in isChannelFavorited: " + e3.getMessage());
                return false;
            }
        } catch (Exception e7) {
            b.c.t(e7, new StringBuilder("Error in isChannelFavorited: "), "MyDB");
        }
        if (writableDatabase == null) {
            Toast.makeText(this.f2722a, "Operation failed. retry", 0).show();
            return false;
        }
        String[] strArr = {"_id", "channel_logo_", "channel_url_", "channel_label_"};
        String str = channelTv.label;
        String[] strArr2 = {str};
        if (str == null) {
            return false;
        }
        Cursor query = writableDatabase.query("fav_channels", strArr, "channel_label_=?", strArr2, null, null, null);
        query.moveToFirst();
        if (query.isAfterLast()) {
            writableDatabase.close();
            return false;
        }
        writableDatabase.close();
        query.moveToNext();
        return true;
    }

    public boolean isDramaFavorited(Drama drama) {
        SQLiteDatabase writableDatabase;
        try {
            c cVar = c.getInstance(App.getInstance());
            this.f2723b = cVar;
            try {
                try {
                    writableDatabase = cVar.getWritableDatabase();
                } catch (SQLiteDatabaseLockedException e3) {
                    Log.e("MyDB", "SQLiteDatabaseLockedException in isDramaFavorited: " + e3.getMessage());
                    return false;
                }
            } catch (Exception e7) {
                Log.e("MyDB", "Error getting writable database in isDramaFavorited: " + e7.getMessage());
                return false;
            }
        } catch (Exception e8) {
            b.c.t(e8, new StringBuilder("Error in isDramaFavorited: "), "MyDB");
        }
        if (writableDatabase == null) {
            Toast.makeText(this.f2722a, "Operation failed. retry", 0).show();
            return false;
        }
        String[] strArr = {"_id", "drama_title", "drama_img_url", "drama_url", "drama_is_series", "drama_year", "drama_title_year"};
        String str = drama.url;
        String[] strArr2 = {str};
        if (str == null) {
            return false;
        }
        Cursor query = writableDatabase.query("drama_favorites", strArr, "drama_url=?", strArr2, null, null, null);
        query.moveToFirst();
        if (query.isAfterLast()) {
            writableDatabase.close();
            return false;
        }
        writableDatabase.close();
        query.moveToNext();
        return true;
    }

    public boolean isMovieFavorited(Movie movie) {
        SQLiteDatabase writableDatabase;
        try {
            c cVar = c.getInstance(App.getInstance());
            this.f2723b = cVar;
            try {
                try {
                    writableDatabase = cVar.getWritableDatabase();
                } catch (SQLiteDatabaseLockedException e3) {
                    Log.e("MyDB", "SQLiteDatabaseLockedException in isMovieFavorited: " + e3.getMessage());
                    return false;
                }
            } catch (Exception e7) {
                Log.e("MyDB", "Error getting writable database in isMovieFavorited: " + e7.getMessage());
                return false;
            }
        } catch (Exception e8) {
            b.c.t(e8, new StringBuilder("Error in isMovieFavorited: "), "MyDB");
        }
        if (writableDatabase == null) {
            Toast.makeText(this.f2722a, "Operation failed. retry", 0).show();
            return false;
        }
        String[] strArr = {"_id", "_title", "image_url", "info_url", C4913m.f14513m, "rating", "url", "plot_", "cast_", "server_", "server_number_"};
        String[] strArr2 = {movie.getTitle()};
        if (movie.getTitle() == null) {
            return false;
        }
        Cursor query = writableDatabase.query("favorites", strArr, "_title=?", strArr2, null, null, null);
        query.moveToFirst();
        if (query.isAfterLast()) {
            writableDatabase.close();
            return false;
        }
        writableDatabase.close();
        query.moveToNext();
        return true;
    }

    public boolean isMovieFavorited_ANIME(Movie movie) {
        SQLiteDatabase writableDatabase;
        try {
            c cVar = c.getInstance(App.getInstance());
            this.f2723b = cVar;
            try {
                try {
                    writableDatabase = cVar.getWritableDatabase();
                } catch (SQLiteDatabaseLockedException e3) {
                    Log.e("MyDB", "SQLiteDatabaseLockedException in isMovieFavorited_ANIME: " + e3.getMessage());
                    return false;
                }
            } catch (Exception e7) {
                Log.e("MyDB", "Error getting writable database in isMovieFavorited_ANIME: " + e7.getMessage());
                return false;
            }
        } catch (Exception e8) {
            b.c.t(e8, new StringBuilder("Error in isMovieFavorited_ANIME: "), "MyDB");
        }
        if (writableDatabase == null) {
            Toast.makeText(this.f2722a, "Operation failed. retry", 0).show();
            return false;
        }
        String[] strArr = {"_id", "_title", "image_url", "info_url", C4913m.f14513m, "rating", "url", "plot_", "cast_", "server_", "server_number_"};
        String[] strArr2 = {movie.getTitle()};
        if (movie.getTitle() == null) {
            return false;
        }
        Cursor query = writableDatabase.query("anime_favorites", strArr, "_title=?", strArr2, null, null, null);
        query.moveToFirst();
        if (query.isAfterLast()) {
            writableDatabase.close();
            return false;
        }
        writableDatabase.close();
        query.moveToNext();
        return true;
    }

    public boolean isMovieWatching(Movie movie) {
        SQLiteDatabase writableDatabase;
        try {
            c cVar = c.getInstance(App.getInstance());
            this.f2723b = cVar;
            try {
                writableDatabase = cVar.getWritableDatabase();
            } catch (Exception e3) {
                Log.e("MyDB", "Error getting writable database in isMovieWatching: " + e3.getMessage());
                return false;
            }
        } catch (Exception e7) {
            b.c.t(e7, new StringBuilder("Error in isMovieWatching: "), "MyDB");
        }
        if (writableDatabase == null) {
            Toast.makeText(this.f2722a, "Operation failed. retry", 0).show();
            return false;
        }
        String[] strArr = {"_id", "_title", "image_url", "info_url", C4913m.f14513m, "rating", "url", "plot_", "cast_", "server_", "server_number_"};
        String[] strArr2 = {movie.getTitle()};
        if (movie.getTitle() == null) {
            return false;
        }
        Cursor query = writableDatabase.query("watching", strArr, "_title=?", strArr2, null, null, null);
        query.moveToFirst();
        if (query.isAfterLast()) {
            writableDatabase.close();
            return false;
        }
        writableDatabase.close();
        query.moveToNext();
        return true;
    }

    public void markAsWatched(Movie movie) {
        SQLiteDatabase writableDatabase;
        if (movie.anime || movie.drama) {
            return;
        }
        if (App.getInstance().f14440s.getBoolean("trakt_user_logged_in", false)) {
            App.getInstance().f14438q.addToHistory(movie).observeOn(AndroidSchedulers.mainThread()).subscribe(new d(movie, 2), new A4.c(14));
        }
        try {
            App.getInstance().f14440s.edit().remove(movie.getMovieId() + "").apply();
        } catch (Exception e3) {
            b.c.t(e3, new StringBuilder("Error removing from prefs in markAsWatched: "), "MyDB");
        }
        try {
            c cVar = c.getInstance(App.getInstance());
            this.f2723b = cVar;
            writableDatabase = cVar.getWritableDatabase();
        } catch (Exception e7) {
            b.c.t(e7, new StringBuilder("Error in markAsWatched (local DB operation): "), "MyDB");
        }
        if (writableDatabase == null) {
            Toast.makeText(this.f2722a, "Operation failed. retry", 0).show();
            return;
        }
        writableDatabase.delete("watching", "_title LIKE ?", new String[]{String.valueOf(movie.getTitle())});
        writableDatabase.close();
        addtoWatched(movie);
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0073 -> B:11:0x007d). Please report as a decompilation issue!!! */
    public void removeFromWaching(Movie movie) {
        if (movie.anime || movie.drama) {
            return;
        }
        try {
            App.getInstance().f14440s.edit().remove(movie.getMovieId() + "").apply();
        } catch (Exception e3) {
            b.c.t(e3, new StringBuilder("Error removing from prefs in removeFromWaching: "), "MyDB");
        }
        try {
            c cVar = c.getInstance(App.getInstance());
            this.f2723b = cVar;
            SQLiteDatabase writableDatabase = cVar.getWritableDatabase();
            if (writableDatabase == null) {
                Toast.makeText(this.f2722a, "Operation failed. retry", 0).show();
            } else {
                writableDatabase.delete("watching", "_title LIKE ?", new String[]{String.valueOf(movie.getTitle())});
                writableDatabase.close();
            }
        } catch (Exception e7) {
            b.c.t(e7, new StringBuilder("Error in removeFromWaching: "), "MyDB");
        }
    }

    public void removeFromWatched(Movie movie) {
        if (movie.anime || movie.drama) {
            return;
        }
        try {
            c cVar = c.getInstance(App.getInstance());
            this.f2723b = cVar;
            SQLiteDatabase writableDatabase = cVar.getWritableDatabase();
            if (writableDatabase == null) {
                Toast.makeText(this.f2722a, "Operation failed. retry", 0).show();
            } else {
                writableDatabase.delete("history", "_title LIKE ?", new String[]{String.valueOf(movie.getTitle())});
                writableDatabase.close();
            }
        } catch (Exception e3) {
            b.c.t(e3, new StringBuilder("Error in removeFromWatched: "), "MyDB");
        }
    }

    @SuppressLint({"Range"})
    public ArrayList<Anime> searchGoAnime(String str) {
        ArrayList<Anime> arrayList = new ArrayList<>();
        try {
            SQLiteDatabase writableDatabase = this.f2723b.getWritableDatabase();
            if (writableDatabase == null) {
                Toast.makeText(this.f2722a, "Operation failed. retry", 0).show();
                return null;
            }
            try {
                Cursor rawQuery = writableDatabase.rawQuery("select * from go_anime_table where go_anime_title like '%" + str + "%' order by _id asc limit 30", null);
                rawQuery.moveToFirst();
                while (!rawQuery.isAfterLast()) {
                    Anime anime = new Anime();
                    anime.server = "gogoanime";
                    anime.url = rawQuery.getString(rawQuery.getColumnIndex("go_anime_url"));
                    anime.title = rawQuery.getString(rawQuery.getColumnIndex("go_anime_title"));
                    anime.plot = rawQuery.getString(rawQuery.getColumnIndex("go_anime_plot"));
                    anime.genres = rawQuery.getString(rawQuery.getColumnIndex("go_anime_genres"));
                    anime.image_url = rawQuery.getString(rawQuery.getColumnIndex("go_anime_img_url"));
                    arrayList.add(anime);
                    rawQuery.moveToNext();
                }
                writableDatabase.close();
                Collections.reverse(arrayList);
                return arrayList;
            } catch (Exception e3) {
                Log.e("MyDB", "Error rawQuery in searchGoAnime: " + e3.getMessage());
                return new ArrayList<>();
            }
        } catch (Exception e7) {
            b.c.t(e7, new StringBuilder("Error in searchGoAnime: "), "MyDB");
            return arrayList;
        }
    }
}
