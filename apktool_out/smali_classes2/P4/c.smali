.class public final LP4/c;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# static fields
.field public static b:LP4/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/16 v1, 0x21

    .line 3
    .line 4
    const-string v2, "FlixVision.db"

    .line 5
    .line 6
    invoke-direct {p0, p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)LP4/c;
    .locals 2

    .line 1
    const-class v0, LP4/c;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, LP4/c;->b:LP4/c;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, LP4/c;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-direct {v1, p0}, LP4/c;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    sput-object v1, LP4/c;->b:LP4/c;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    sget-object p0, LP4/c;->b:LP4/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    monitor-exit v0

    .line 25
    return-object p0

    .line 26
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    throw p0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 1
    const-string v0, "CREATE TABLE IF NOT EXISTS favorites (_id INTEGER PRIMARY KEY,url TEXT,_title TEXT,info_url TEXT,image_url TEXT,quality TEXT,rating TEXT,cast_ TEXT,server_ TEXT,plot_ TEXT,_year TEXT,_season TEXT,server_number_ TEXT,movie_id TEXT UNIQUE ,movie_type TEXT,movie_backdrop TEXT )"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "CREATE TABLE IF NOT EXISTS history (_id INTEGER PRIMARY KEY,url TEXT,_title TEXT,info_url TEXT,image_url TEXT,quality TEXT,rating TEXT,cast_ TEXT,server_ TEXT,plot_ TEXT,_year TEXT,_season TEXT,server_number_ TEXT,movie_id TEXT UNIQUE ,movie_type TEXT,movie_backdrop TEXT )"

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "CREATE TABLE IF NOT EXISTS watching (_id INTEGER PRIMARY KEY,url TEXT,_title TEXT,info_url TEXT,image_url TEXT,quality TEXT,rating TEXT,cast_ TEXT,server_ TEXT,plot_ TEXT,_year TEXT,_season TEXT,server_number_ TEXT,movie_id TEXT UNIQUE ,movie_type TEXT,movie_backdrop TEXT )"

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "CREATE TABLE IF NOT EXISTS anime_history (_id INTEGER PRIMARY KEY,url TEXT UNIQUE,_title TEXT,info_url TEXT,image_url TEXT,quality TEXT,rating TEXT,cast_ TEXT,server_ TEXT,plot_ TEXT,_year TEXT,_season TEXT,server_number_ TEXT )"

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "CREATE TABLE IF NOT EXISTS anime_favorites (_id INTEGER PRIMARY KEY,url TEXT UNIQUE,_title TEXT,info_url TEXT,image_url TEXT,quality TEXT,rating TEXT,cast_ TEXT,server_ TEXT,plot_ TEXT,_year TEXT,_season TEXT,server_number_ TEXT )"

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v0, "CREATE TABLE IF NOT EXISTS iptv_history (_id INTEGER PRIMARY KEY,label_name_ TEXT,history_url_ TEXT UNIQUE ,history_type_ TEXT )"

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string v0, "CREATE TABLE IF NOT EXISTS fav_channels (_id INTEGER PRIMARY KEY,channel_url_ TEXT,channel_label_ TEXT UNIQUE ,channel_logo_ TEXT )"

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string v0, "CREATE TABLE IF NOT EXISTS go_anime_table (_id INTEGER PRIMARY KEY,go_anime_title TEXT,go_anime_title_year TEXT,go_anime_url TEXT UNIQUE ,go_anime_code TEXT,go_anime_img_url TEXT,go_anime_plot TEXT,go_anime_genres TEXT,go_anime_year TEXT )"

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const-string v0, "CREATE TABLE IF NOT EXISTS adult_favorites (_id INTEGER PRIMARY KEY,adult_title TEXT,adult_url TEXT UNIQUE ,adult_img_url TEXT )"

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const-string v0, "CREATE TABLE IF NOT EXISTS adult_history (_id INTEGER PRIMARY KEY,adult_title TEXT,adult_url TEXT UNIQUE ,adult_img_url TEXT )"

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const-string v0, "CREATE TABLE IF NOT EXISTS channels_imports (_id INTEGER PRIMARY KEY,channel_url_ TEXT,channel_label_ TEXT UNIQUE ,channel_logo_ TEXT,channel_source_uri_ TEXT )"

    .line 52
    .line 53
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const-string v0, "CREATE TABLE IF NOT EXISTS drama_continue (_id INTEGER PRIMARY KEY,drama_url TEXT UNIQUE,drama_title TEXT,drama_year TEXT,drama_img_url TEXT,drama_title_year TEXT,drama_is_series TEXT )"

    .line 57
    .line 58
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    const-string v0, "CREATE TABLE IF NOT EXISTS drama_favorites (_id INTEGER PRIMARY KEY,drama_url TEXT UNIQUE,drama_title TEXT,drama_year TEXT,drama_img_url TEXT,drama_title_year TEXT,drama_is_series TEXT )"

    .line 62
    .line 63
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    const-string v0, "CREATE TABLE IF NOT EXISTS drama_history (_id INTEGER PRIMARY KEY,drama_url TEXT UNIQUE,drama_title TEXT,drama_year TEXT,drama_img_url TEXT,drama_title_year TEXT,drama_is_series TEXT )"

    .line 67
    .line 68
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, LP4/c;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LP4/c;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
