.class public Lflix/com/vision/materialsearchview/db/HistoryProvider;
.super Landroid/content/ContentProvider;
.source "SourceFile"


# static fields
.field public static final e:Landroid/content/UriMatcher;


# instance fields
.field public b:Lflix/com/vision/materialsearchview/db/HistoryDbHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lflix/com/vision/materialsearchview/db/HistoryProvider;->buildUriMatcher()Landroid/content/UriMatcher;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lflix/com/vision/materialsearchview/db/HistoryProvider;->e:Landroid/content/UriMatcher;

    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static buildUriMatcher()Landroid/content/UriMatcher;
    .locals 4

    .line 1
    sget-object v0, Lflix/com/vision/materialsearchview/db/HistoryContract;->a:Landroid/net/Uri;

    .line 2
    .line 3
    new-instance v0, Landroid/content/UriMatcher;

    .line 4
    .line 5
    const/4 v1, -0x1

    .line 6
    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    .line 7
    .line 8
    .line 9
    const-string v1, "history"

    .line 10
    .line 11
    const/16 v2, 0x64

    .line 12
    .line 13
    const-string v3, "flix.com.vision.materialsearchview.searchhistorydatabase"

    .line 14
    .line 15
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 16
    .line 17
    .line 18
    const/16 v1, 0x65

    .line 19
    .line 20
    const-string v2, "history/#"

    .line 21
    .line 22
    invoke-virtual {v0, v3, v2, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 23
    .line 24
    .line 25
    const/16 v1, 0x66

    .line 26
    .line 27
    invoke-virtual {v0, v3, v2, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 28
    .line 29
    .line 30
    const/16 v1, 0x67

    .line 31
    .line 32
    invoke-virtual {v0, v3, v2, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 33
    .line 34
    .line 35
    return-object v0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lflix/com/vision/materialsearchview/db/HistoryProvider;->b:Lflix/com/vision/materialsearchview/db/HistoryDbHelper;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lflix/com/vision/materialsearchview/db/HistoryProvider;->e:Landroid/content/UriMatcher;

    .line 8
    .line 9
    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/16 v2, 0x64

    .line 14
    .line 15
    if-ne v1, v2, :cond_2

    .line 16
    .line 17
    const-string v1, "SEARCH_HISTORY"

    .line 18
    .line 19
    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    move-result p3

    .line 23
    if-eqz p2, :cond_0

    .line 24
    .line 25
    if-eqz p3, :cond_1

    .line 26
    .line 27
    :cond_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    if-eqz p2, :cond_1

    .line 32
    .line 33
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    const/4 v0, 0x0

    .line 38
    invoke-virtual {p2, p1, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    return p3

    .line 42
    :cond_2
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    .line 43
    .line 44
    const-string p3, "Unknown uri: "

    .line 45
    .line 46
    invoke-static {p3, p1}, Lb/c;->k(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-direct {p2, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p2
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lflix/com/vision/materialsearchview/db/HistoryProvider;->e:Landroid/content/UriMatcher;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 11
    .line 12
    const-string v1, "Uknown Uri: "

    .line 13
    .line 14
    invoke-static {v1, p1}, Lb/c;->k(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw v0

    .line 22
    :pswitch_0
    sget-object p1, Lflix/com/vision/materialsearchview/db/HistoryContract$HistoryEntry;->c:Ljava/lang/String;

    .line 23
    .line 24
    return-object p1

    .line 25
    :pswitch_1
    sget-object p1, Lflix/com/vision/materialsearchview/db/HistoryContract$HistoryEntry;->b:Ljava/lang/String;

    .line 26
    .line 27
    return-object p1

    .line 28
    nop

    .line 29
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 4

    .line 1
    iget-object v0, p0, Lflix/com/vision/materialsearchview/db/HistoryProvider;->b:Lflix/com/vision/materialsearchview/db/HistoryDbHelper;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lflix/com/vision/materialsearchview/db/HistoryProvider;->e:Landroid/content/UriMatcher;

    .line 8
    .line 9
    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/16 v2, 0x64

    .line 14
    .line 15
    if-ne v1, v2, :cond_1

    .line 16
    .line 17
    const-string v1, "SEARCH_HISTORY"

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-virtual {v0, v1, v2, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 21
    .line 22
    .line 23
    move-result-wide v0

    .line 24
    const-wide/16 v2, 0x0

    .line 25
    .line 26
    cmp-long p2, v0, v2

    .line 27
    .line 28
    if-lez p2, :cond_0

    .line 29
    .line 30
    invoke-static {v0, v1}, Lflix/com/vision/materialsearchview/db/HistoryContract$HistoryEntry;->buildHistoryUri(J)Landroid/net/Uri;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    return-object p1

    .line 35
    :cond_0
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    .line 36
    .line 37
    const-string v0, "Unable to insert rows into: "

    .line 38
    .line 39
    invoke-static {v0, p1}, Lb/c;->k(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-direct {p2, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw p2

    .line 47
    :cond_1
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    .line 48
    .line 49
    const-string v0, "Unknown uri: "

    .line 50
    .line 51
    invoke-static {v0, p1}, Lb/c;->k(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-direct {p2, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p2
.end method

.method public onCreate()Z
    .locals 2

    .line 1
    new-instance v0, Lflix/com/vision/materialsearchview/db/HistoryDbHelper;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Lflix/com/vision/materialsearchview/db/HistoryDbHelper;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lflix/com/vision/materialsearchview/db/HistoryProvider;->b:Lflix/com/vision/materialsearchview/db/HistoryDbHelper;

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9

    .line 1
    iget-object v0, p0, Lflix/com/vision/materialsearchview/db/HistoryProvider;->b:Lflix/com/vision/materialsearchview/db/HistoryDbHelper;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    sget-object v0, Lflix/com/vision/materialsearchview/db/HistoryProvider;->e:Landroid/content/UriMatcher;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    .line 17
    .line 18
    const-string p3, "Unknown Uri: "

    .line 19
    .line 20
    invoke-static {p3, p1}, Lb/c;->k(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-direct {p2, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p2

    .line 28
    :pswitch_0
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    .line 29
    .line 30
    .line 31
    move-result-wide p3

    .line 32
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p3

    .line 36
    filled-new-array {p3}, [Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    const/4 v6, 0x0

    .line 41
    const/4 v7, 0x0

    .line 42
    const-string v2, "SEARCH_HISTORY"

    .line 43
    .line 44
    const-string v4, "is_history = ?"

    .line 45
    .line 46
    move-object v3, p2

    .line 47
    move-object v8, p5

    .line 48
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    goto :goto_0

    .line 53
    :pswitch_1
    move-object v3, p2

    .line 54
    move-object v8, p5

    .line 55
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    .line 56
    .line 57
    .line 58
    move-result-wide p2

    .line 59
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    filled-new-array {p2}, [Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    const/4 v6, 0x0

    .line 68
    const/4 v7, 0x0

    .line 69
    const-string v2, "SEARCH_HISTORY"

    .line 70
    .line 71
    const-string v4, "_id = ?"

    .line 72
    .line 73
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    goto :goto_0

    .line 78
    :pswitch_2
    move-object v3, p2

    .line 79
    move-object v8, p5

    .line 80
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    .line 81
    .line 82
    .line 83
    move-result-wide p2

    .line 84
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    filled-new-array {p2}, [Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v5

    .line 92
    const/4 v6, 0x0

    .line 93
    const/4 v7, 0x0

    .line 94
    const-string v2, "SEARCH_HISTORY"

    .line 95
    .line 96
    const-string v4, "insert_date = ?"

    .line 97
    .line 98
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    goto :goto_0

    .line 103
    :pswitch_3
    move-object v3, p2

    .line 104
    move-object v8, p5

    .line 105
    const/4 v6, 0x0

    .line 106
    const/4 v7, 0x0

    .line 107
    const-string v2, "SEARCH_HISTORY"

    .line 108
    .line 109
    move-object v4, p3

    .line 110
    move-object v5, p4

    .line 111
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    :goto_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 116
    .line 117
    .line 118
    move-result-object p3

    .line 119
    if-eqz p3, :cond_0

    .line 120
    .line 121
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 122
    .line 123
    .line 124
    move-result-object p3

    .line 125
    invoke-interface {p2, p3, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 126
    .line 127
    .line 128
    :cond_0
    return-object p2

    .line 129
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lflix/com/vision/materialsearchview/db/HistoryProvider;->b:Lflix/com/vision/materialsearchview/db/HistoryDbHelper;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lflix/com/vision/materialsearchview/db/HistoryProvider;->e:Landroid/content/UriMatcher;

    .line 8
    .line 9
    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/16 v2, 0x64

    .line 14
    .line 15
    if-ne v1, v2, :cond_1

    .line 16
    .line 17
    const-string v1, "SEARCH_HISTORY"

    .line 18
    .line 19
    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    if-eqz p2, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object p3

    .line 29
    if-eqz p3, :cond_0

    .line 30
    .line 31
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 32
    .line 33
    .line 34
    move-result-object p3

    .line 35
    const/4 p4, 0x0

    .line 36
    invoke-virtual {p3, p1, p4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    return p2

    .line 40
    :cond_1
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    .line 41
    .line 42
    const-string p3, "Unknown uri: "

    .line 43
    .line 44
    invoke-static {p3, p1}, Lb/c;->k(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-direct {p2, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p2
.end method
