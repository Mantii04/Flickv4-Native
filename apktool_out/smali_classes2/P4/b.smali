.class public abstract LP4/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/gson/Gson;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/gson/Gson;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, LP4/b;->a:Lcom/google/gson/Gson;

    .line 7
    .line 8
    return-void
.end method

.method public static getBackupJson()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Lflix/com/vision/models/PreferencesModel;

    .line 2
    .line 3
    invoke-direct {v0}, Lflix/com/vision/models/PreferencesModel;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    iget-object v1, v1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 11
    .line 12
    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_3

    .line 29
    .line 30
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Ljava/util/Map$Entry;

    .line 35
    .line 36
    new-instance v3, Lflix/com/vision/models/PreferenceEntry;

    .line 37
    .line 38
    invoke-direct {v3}, Lflix/com/vision/models/PreferenceEntry;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    check-cast v4, Ljava/lang/String;

    .line 46
    .line 47
    iput-object v4, v3, Lflix/com/vision/models/PreferenceEntry;->key:Ljava/lang/String;

    .line 48
    .line 49
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    instance-of v4, v2, Ljava/lang/Boolean;

    .line 54
    .line 55
    if-eqz v4, :cond_0

    .line 56
    .line 57
    sget-object v4, Lflix/com/vision/models/PreferenceEntry$Type;->BOOLEAN:Lflix/com/vision/models/PreferenceEntry$Type;

    .line 58
    .line 59
    iput-object v4, v3, Lflix/com/vision/models/PreferenceEntry;->type:Lflix/com/vision/models/PreferenceEntry$Type;

    .line 60
    .line 61
    check-cast v2, Ljava/lang/Boolean;

    .line 62
    .line 63
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    iput-boolean v2, v3, Lflix/com/vision/models/PreferenceEntry;->bool_value:Z

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_0
    instance-of v4, v2, Ljava/lang/String;

    .line 71
    .line 72
    if-eqz v4, :cond_1

    .line 73
    .line 74
    sget-object v4, Lflix/com/vision/models/PreferenceEntry$Type;->STRING:Lflix/com/vision/models/PreferenceEntry$Type;

    .line 75
    .line 76
    iput-object v4, v3, Lflix/com/vision/models/PreferenceEntry;->type:Lflix/com/vision/models/PreferenceEntry$Type;

    .line 77
    .line 78
    check-cast v2, Ljava/lang/String;

    .line 79
    .line 80
    iput-object v2, v3, Lflix/com/vision/models/PreferenceEntry;->string_value:Ljava/lang/String;

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_1
    instance-of v4, v2, Ljava/lang/Integer;

    .line 84
    .line 85
    if-eqz v4, :cond_2

    .line 86
    .line 87
    sget-object v4, Lflix/com/vision/models/PreferenceEntry$Type;->INTEGER:Lflix/com/vision/models/PreferenceEntry$Type;

    .line 88
    .line 89
    iput-object v4, v3, Lflix/com/vision/models/PreferenceEntry;->type:Lflix/com/vision/models/PreferenceEntry$Type;

    .line 90
    .line 91
    check-cast v2, Ljava/lang/Integer;

    .line 92
    .line 93
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    iput v2, v3, Lflix/com/vision/models/PreferenceEntry;->int_value:I

    .line 98
    .line 99
    :cond_2
    :goto_1
    iget-object v2, v0, Lflix/com/vision/models/PreferencesModel;->entries:Ljava/util/ArrayList;

    .line 100
    .line 101
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_3
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    iget-object v1, v1, Lflix/com/vision/App;->r:LP4/e;

    .line 110
    .line 111
    invoke-virtual {v1}, LP4/e;->getFavoritesMoviesFromDb()Ljava/util/ArrayList;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    iput-object v1, v0, Lflix/com/vision/models/PreferencesModel;->favorites:Ljava/util/ArrayList;

    .line 116
    .line 117
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    iget-object v1, v1, Lflix/com/vision/App;->r:LP4/e;

    .line 122
    .line 123
    invoke-virtual {v1}, LP4/e;->getWatchingMoviesFromDb()Ljava/util/ArrayList;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    iput-object v1, v0, Lflix/com/vision/models/PreferencesModel;->watching:Ljava/util/ArrayList;

    .line 128
    .line 129
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    iget-object v1, v1, Lflix/com/vision/App;->r:LP4/e;

    .line 134
    .line 135
    invoke-virtual {v1}, LP4/e;->getWatchedMoviesFromDb()Ljava/util/ArrayList;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    iput-object v1, v0, Lflix/com/vision/models/PreferencesModel;->watched:Ljava/util/ArrayList;

    .line 140
    .line 141
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    iget-object v1, v1, Lflix/com/vision/App;->r:LP4/e;

    .line 146
    .line 147
    invoke-virtual {v1}, LP4/e;->getAdultHistoryFromDb()Ljava/util/ArrayList;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    iput-object v1, v0, Lflix/com/vision/models/PreferencesModel;->adultVideosHistory:Ljava/util/ArrayList;

    .line 152
    .line 153
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    iget-object v1, v1, Lflix/com/vision/App;->r:LP4/e;

    .line 158
    .line 159
    invoke-virtual {v1}, LP4/e;->getAdultVideosFavoritesFromDb()Ljava/util/ArrayList;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    iput-object v1, v0, Lflix/com/vision/models/PreferencesModel;->adultVideosFavories:Ljava/util/ArrayList;

    .line 164
    .line 165
    sget-object v1, LP4/b;->a:Lcom/google/gson/Gson;

    .line 166
    .line 167
    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    return-object v0
.end method

.method public static restoreFromJson(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .line 1
    :try_start_0
    sget-object p0, LP4/b;->a:Lcom/google/gson/Gson;

    .line 2
    .line 3
    const-class v0, Lflix/com/vision/models/PreferencesModel;

    .line 4
    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lflix/com/vision/models/PreferencesModel;

    .line 10
    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    goto/16 :goto_6

    .line 14
    .line 15
    :cond_0
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 20
    .line 21
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iget-object v0, p0, Lflix/com/vision/models/PreferencesModel;->entries:Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_5

    .line 36
    .line 37
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Lflix/com/vision/models/PreferenceEntry;

    .line 42
    .line 43
    iget-object v2, v1, Lflix/com/vision/models/PreferenceEntry;->type:Lflix/com/vision/models/PreferenceEntry$Type;

    .line 44
    .line 45
    if-nez v2, :cond_1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    sget-object v3, LP4/a;->a:[I

    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    aget v2, v3, v2

    .line 55
    .line 56
    const/4 v3, 0x1

    .line 57
    if-eq v2, v3, :cond_4

    .line 58
    .line 59
    const/4 v3, 0x2

    .line 60
    if-eq v2, v3, :cond_3

    .line 61
    .line 62
    const/4 v3, 0x3

    .line 63
    if-eq v2, v3, :cond_2

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    iget-object v2, v1, Lflix/com/vision/models/PreferenceEntry;->key:Ljava/lang/String;

    .line 67
    .line 68
    iget v1, v1, Lflix/com/vision/models/PreferenceEntry;->int_value:I

    .line 69
    .line 70
    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_3
    iget-object v2, v1, Lflix/com/vision/models/PreferenceEntry;->key:Ljava/lang/String;

    .line 75
    .line 76
    iget-object v1, v1, Lflix/com/vision/models/PreferenceEntry;->string_value:Ljava/lang/String;

    .line 77
    .line 78
    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_4
    iget-object v2, v1, Lflix/com/vision/models/PreferenceEntry;->key:Ljava/lang/String;

    .line 83
    .line 84
    iget-boolean v1, v1, Lflix/com/vision/models/PreferenceEntry;->bool_value:Z

    .line 85
    .line 86
    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_5
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 91
    .line 92
    .line 93
    iget-object p1, p0, Lflix/com/vision/models/PreferencesModel;->favorites:Ljava/util/ArrayList;

    .line 94
    .line 95
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    if-eqz v0, :cond_6

    .line 104
    .line 105
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    check-cast v0, Lflix/com/vision/models/Movie;

    .line 110
    .line 111
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    iget-object v1, v1, Lflix/com/vision/App;->r:LP4/e;

    .line 116
    .line 117
    invoke-virtual {v1, v0}, LP4/e;->addMovieFavorites(Lflix/com/vision/models/Movie;)Z

    .line 118
    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_6
    iget-object p1, p0, Lflix/com/vision/models/PreferencesModel;->watched:Ljava/util/ArrayList;

    .line 122
    .line 123
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    if-eqz v0, :cond_7

    .line 132
    .line 133
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    check-cast v0, Lflix/com/vision/models/Movie;

    .line 138
    .line 139
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    iget-object v1, v1, Lflix/com/vision/App;->r:LP4/e;

    .line 144
    .line 145
    invoke-virtual {v1, v0}, LP4/e;->addtoWatched(Lflix/com/vision/models/Movie;)Z

    .line 146
    .line 147
    .line 148
    goto :goto_2

    .line 149
    :cond_7
    iget-object p1, p0, Lflix/com/vision/models/PreferencesModel;->watching:Ljava/util/ArrayList;

    .line 150
    .line 151
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    if-eqz v0, :cond_8

    .line 160
    .line 161
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    check-cast v0, Lflix/com/vision/models/Movie;

    .line 166
    .line 167
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    iget-object v1, v1, Lflix/com/vision/App;->r:LP4/e;

    .line 172
    .line 173
    invoke-virtual {v1, v0}, LP4/e;->addtoWatching(Lflix/com/vision/models/Movie;)Z

    .line 174
    .line 175
    .line 176
    goto :goto_3

    .line 177
    :cond_8
    iget-object p1, p0, Lflix/com/vision/models/PreferencesModel;->adultVideosHistory:Ljava/util/ArrayList;

    .line 178
    .line 179
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 184
    .line 185
    .line 186
    move-result v0

    .line 187
    if-eqz v0, :cond_9

    .line 188
    .line 189
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    check-cast v0, Lflix/com/vision/models/adult/AdultVideo;

    .line 194
    .line 195
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    iget-object v1, v1, Lflix/com/vision/App;->r:LP4/e;

    .line 200
    .line 201
    invoke-virtual {v1, v0}, LP4/e;->addAdultHistory(Lflix/com/vision/models/adult/AdultVideo;)Z

    .line 202
    .line 203
    .line 204
    goto :goto_4

    .line 205
    :cond_9
    iget-object p0, p0, Lflix/com/vision/models/PreferencesModel;->adultVideosFavories:Ljava/util/ArrayList;

    .line 206
    .line 207
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 208
    .line 209
    .line 210
    move-result-object p0

    .line 211
    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 212
    .line 213
    .line 214
    move-result p1

    .line 215
    if-eqz p1, :cond_a

    .line 216
    .line 217
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    check-cast p1, Lflix/com/vision/models/adult/AdultVideo;

    .line 222
    .line 223
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    iget-object v0, v0, Lflix/com/vision/App;->r:LP4/e;

    .line 228
    .line 229
    invoke-virtual {v0, p1}, LP4/e;->addFavoritesAdult(Lflix/com/vision/models/adult/AdultVideo;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    .line 231
    .line 232
    goto :goto_5

    .line 233
    :catch_0
    move-exception p0

    .line 234
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 235
    .line 236
    .line 237
    :cond_a
    :goto_6
    return-void
.end method
