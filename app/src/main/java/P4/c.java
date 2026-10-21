package P4;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

/* loaded from: classes2.dex */
public final class c extends SQLiteOpenHelper {

    /* renamed from: b, reason: collision with root package name */
    public static c f2719b;

    public c(Context context) {
        super(context, "FlixVision.db", (SQLiteDatabase.CursorFactory) null, 33);
    }

    public static synchronized c getInstance(Context context) {
        c cVar;
        synchronized (c.class) {
            try {
                if (f2719b == null) {
                    f2719b = new c(context.getApplicationContext());
                }
                cVar = f2719b;
            } catch (Throwable th) {
                throw th;
            }
        }
        return cVar;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS favorites (_id INTEGER PRIMARY KEY,url TEXT,_title TEXT,info_url TEXT,image_url TEXT,quality TEXT,rating TEXT,cast_ TEXT,server_ TEXT,plot_ TEXT,_year TEXT,_season TEXT,server_number_ TEXT,movie_id TEXT UNIQUE ,movie_type TEXT,movie_backdrop TEXT )");
        sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS history (_id INTEGER PRIMARY KEY,url TEXT,_title TEXT,info_url TEXT,image_url TEXT,quality TEXT,rating TEXT,cast_ TEXT,server_ TEXT,plot_ TEXT,_year TEXT,_season TEXT,server_number_ TEXT,movie_id TEXT UNIQUE ,movie_type TEXT,movie_backdrop TEXT )");
        sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS watching (_id INTEGER PRIMARY KEY,url TEXT,_title TEXT,info_url TEXT,image_url TEXT,quality TEXT,rating TEXT,cast_ TEXT,server_ TEXT,plot_ TEXT,_year TEXT,_season TEXT,server_number_ TEXT,movie_id TEXT UNIQUE ,movie_type TEXT,movie_backdrop TEXT )");
        sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS anime_history (_id INTEGER PRIMARY KEY,url TEXT UNIQUE,_title TEXT,info_url TEXT,image_url TEXT,quality TEXT,rating TEXT,cast_ TEXT,server_ TEXT,plot_ TEXT,_year TEXT,_season TEXT,server_number_ TEXT )");
        sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS anime_favorites (_id INTEGER PRIMARY KEY,url TEXT UNIQUE,_title TEXT,info_url TEXT,image_url TEXT,quality TEXT,rating TEXT,cast_ TEXT,server_ TEXT,plot_ TEXT,_year TEXT,_season TEXT,server_number_ TEXT )");
        sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS iptv_history (_id INTEGER PRIMARY KEY,label_name_ TEXT,history_url_ TEXT UNIQUE ,history_type_ TEXT )");
        sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS fav_channels (_id INTEGER PRIMARY KEY,channel_url_ TEXT,channel_label_ TEXT UNIQUE ,channel_logo_ TEXT )");
        sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS go_anime_table (_id INTEGER PRIMARY KEY,go_anime_title TEXT,go_anime_title_year TEXT,go_anime_url TEXT UNIQUE ,go_anime_code TEXT,go_anime_img_url TEXT,go_anime_plot TEXT,go_anime_genres TEXT,go_anime_year TEXT )");
        sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS adult_favorites (_id INTEGER PRIMARY KEY,adult_title TEXT,adult_url TEXT UNIQUE ,adult_img_url TEXT )");
        sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS adult_history (_id INTEGER PRIMARY KEY,adult_title TEXT,adult_url TEXT UNIQUE ,adult_img_url TEXT )");
        sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS channels_imports (_id INTEGER PRIMARY KEY,channel_url_ TEXT,channel_label_ TEXT UNIQUE ,channel_logo_ TEXT,channel_source_uri_ TEXT )");
        sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS drama_continue (_id INTEGER PRIMARY KEY,drama_url TEXT UNIQUE,drama_title TEXT,drama_year TEXT,drama_img_url TEXT,drama_title_year TEXT,drama_is_series TEXT )");
        sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS drama_favorites (_id INTEGER PRIMARY KEY,drama_url TEXT UNIQUE,drama_title TEXT,drama_year TEXT,drama_img_url TEXT,drama_title_year TEXT,drama_is_series TEXT )");
        sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS drama_history (_id INTEGER PRIMARY KEY,drama_url TEXT UNIQUE,drama_title TEXT,drama_year TEXT,drama_img_url TEXT,drama_title_year TEXT,drama_is_series TEXT )");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i2, int i7) {
        onUpgrade(sQLiteDatabase, i2, i7);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i2, int i7) {
        onCreate(sQLiteDatabase);
    }
}
