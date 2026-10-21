.class public final synthetic LD4/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Action;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:LD4/h;


# direct methods
.method public synthetic constructor <init>(LD4/h;I)V
    .locals 0

    .line 1
    iput p2, p0, LD4/g;->b:I

    iput-object p1, p0, LD4/g;->e:LD4/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget v0, p0, LD4/g;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, LD4/g;->e:LD4/h;

    .line 7
    .line 8
    invoke-virtual {v0}, LD4/h;->a()V

    .line 9
    .line 10
    .line 11
    iget-object v1, v0, LD4/h;->a:Lcom/uwetrottmann/trakt5/TraktV2;

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    goto/16 :goto_1

    .line 16
    .line 17
    :cond_0
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iget-object v1, v1, Lflix/com/vision/App;->r:LP4/e;

    .line 22
    .line 23
    invoke-virtual {v1}, LP4/e;->getWatchedMoviesFromDb()Ljava/util/ArrayList;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    if-eqz v1, :cond_a

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    goto/16 :goto_1

    .line 36
    .line 37
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .line 41
    .line 42
    new-instance v3, Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-eqz v4, :cond_5

    .line 56
    .line 57
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    check-cast v4, Lflix/com/vision/models/Movie;

    .line 62
    .line 63
    invoke-virtual {v4}, Lflix/com/vision/models/Movie;->isSeries()Z

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    const-wide/16 v6, 0x0

    .line 68
    .line 69
    if-eqz v5, :cond_3

    .line 70
    .line 71
    invoke-virtual {v4}, Lflix/com/vision/models/Movie;->getMovieId()J

    .line 72
    .line 73
    .line 74
    move-result-wide v8

    .line 75
    cmp-long v5, v8, v6

    .line 76
    .line 77
    if-lez v5, :cond_2

    .line 78
    .line 79
    new-instance v5, Lcom/uwetrottmann/trakt5/entities/SyncShow;

    .line 80
    .line 81
    invoke-direct {v5}, Lcom/uwetrottmann/trakt5/entities/SyncShow;-><init>()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v4}, Lflix/com/vision/models/Movie;->getMovieId()J

    .line 85
    .line 86
    .line 87
    move-result-wide v6

    .line 88
    long-to-int v4, v6

    .line 89
    invoke-static {v4}, Lcom/uwetrottmann/trakt5/entities/ShowIds;->tmdb(I)Lcom/uwetrottmann/trakt5/entities/ShowIds;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    invoke-virtual {v5, v4}, Lcom/uwetrottmann/trakt5/entities/SyncShow;->id(Lcom/uwetrottmann/trakt5/entities/ShowIds;)Lcom/uwetrottmann/trakt5/entities/SyncShow;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_3
    invoke-virtual {v4}, Lflix/com/vision/models/Movie;->getMovieId()J

    .line 102
    .line 103
    .line 104
    move-result-wide v8

    .line 105
    cmp-long v5, v8, v6

    .line 106
    .line 107
    if-lez v5, :cond_4

    .line 108
    .line 109
    new-instance v5, Lcom/uwetrottmann/trakt5/entities/SyncMovie;

    .line 110
    .line 111
    invoke-direct {v5}, Lcom/uwetrottmann/trakt5/entities/SyncMovie;-><init>()V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v4}, Lflix/com/vision/models/Movie;->getMovieId()J

    .line 115
    .line 116
    .line 117
    move-result-wide v6

    .line 118
    long-to-int v4, v6

    .line 119
    invoke-static {v4}, Lcom/uwetrottmann/trakt5/entities/MovieIds;->tmdb(I)Lcom/uwetrottmann/trakt5/entities/MovieIds;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    invoke-virtual {v5, v4}, Lcom/uwetrottmann/trakt5/entities/SyncMovie;->id(Lcom/uwetrottmann/trakt5/entities/MovieIds;)Lcom/uwetrottmann/trakt5/entities/SyncMovie;

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    invoke-static {}, Lorg/threeten/bp/OffsetDateTime;->now()Lorg/threeten/bp/OffsetDateTime;

    .line 128
    .line 129
    .line 130
    move-result-object v5

    .line 131
    invoke-virtual {v4, v5}, Lcom/uwetrottmann/trakt5/entities/SyncMovie;->watchedAt(Lorg/threeten/bp/OffsetDateTime;)Lcom/uwetrottmann/trakt5/entities/SyncMovie;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_4
    invoke-virtual {v4}, Lflix/com/vision/models/Movie;->getImdbID()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v5

    .line 143
    if-eqz v5, :cond_2

    .line 144
    .line 145
    invoke-virtual {v4}, Lflix/com/vision/models/Movie;->getImdbID()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v5

    .line 149
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 150
    .line 151
    .line 152
    move-result v5

    .line 153
    if-nez v5, :cond_2

    .line 154
    .line 155
    new-instance v5, Lcom/uwetrottmann/trakt5/entities/SyncMovie;

    .line 156
    .line 157
    invoke-direct {v5}, Lcom/uwetrottmann/trakt5/entities/SyncMovie;-><init>()V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v4}, Lflix/com/vision/models/Movie;->getImdbID()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v4

    .line 164
    invoke-static {v4}, Lcom/uwetrottmann/trakt5/entities/MovieIds;->imdb(Ljava/lang/String;)Lcom/uwetrottmann/trakt5/entities/MovieIds;

    .line 165
    .line 166
    .line 167
    move-result-object v4

    .line 168
    invoke-virtual {v5, v4}, Lcom/uwetrottmann/trakt5/entities/SyncMovie;->id(Lcom/uwetrottmann/trakt5/entities/MovieIds;)Lcom/uwetrottmann/trakt5/entities/SyncMovie;

    .line 169
    .line 170
    .line 171
    move-result-object v4

    .line 172
    invoke-static {}, Lorg/threeten/bp/OffsetDateTime;->now()Lorg/threeten/bp/OffsetDateTime;

    .line 173
    .line 174
    .line 175
    move-result-object v5

    .line 176
    invoke-virtual {v4, v5}, Lcom/uwetrottmann/trakt5/entities/SyncMovie;->watchedAt(Lorg/threeten/bp/OffsetDateTime;)Lcom/uwetrottmann/trakt5/entities/SyncMovie;

    .line 177
    .line 178
    .line 179
    move-result-object v4

    .line 180
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    goto/16 :goto_0

    .line 184
    .line 185
    :cond_5
    new-instance v1, Lcom/uwetrottmann/trakt5/entities/SyncItems;

    .line 186
    .line 187
    invoke-direct {v1}, Lcom/uwetrottmann/trakt5/entities/SyncItems;-><init>()V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 191
    .line 192
    .line 193
    move-result v4

    .line 194
    if-nez v4, :cond_6

    .line 195
    .line 196
    invoke-virtual {v1, v2}, Lcom/uwetrottmann/trakt5/entities/SyncItems;->movies(Ljava/util/List;)Lcom/uwetrottmann/trakt5/entities/SyncItems;

    .line 197
    .line 198
    .line 199
    :cond_6
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 200
    .line 201
    .line 202
    move-result v4

    .line 203
    if-nez v4, :cond_7

    .line 204
    .line 205
    invoke-virtual {v1, v3}, Lcom/uwetrottmann/trakt5/entities/SyncItems;->shows(Ljava/util/List;)Lcom/uwetrottmann/trakt5/entities/SyncItems;

    .line 206
    .line 207
    .line 208
    :cond_7
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 209
    .line 210
    .line 211
    move-result v2

    .line 212
    if-eqz v2, :cond_8

    .line 213
    .line 214
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 215
    .line 216
    .line 217
    move-result v2

    .line 218
    if-nez v2, :cond_a

    .line 219
    .line 220
    :cond_8
    iget-object v0, v0, LD4/h;->a:Lcom/uwetrottmann/trakt5/TraktV2;

    .line 221
    .line 222
    invoke-virtual {v0}, Lcom/uwetrottmann/trakt5/TraktV2;->sync()Lcom/uwetrottmann/trakt5/services/Sync;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    invoke-interface {v0, v1}, Lcom/uwetrottmann/trakt5/services/Sync;->addItemsToWatchedHistory(Lcom/uwetrottmann/trakt5/entities/SyncItems;)Lretrofit2/Call;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    invoke-interface {v0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    invoke-virtual {v0}, Lretrofit2/Response;->isSuccessful()Z

    .line 235
    .line 236
    .line 237
    move-result v1

    .line 238
    if-eqz v1, :cond_9

    .line 239
    .line 240
    const-string v0, "TraktAPI"

    .line 241
    .line 242
    const-string v1, "History Sync Successful"

    .line 243
    .line 244
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    .line 246
    .line 247
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 252
    .line 253
    const-string v1, "user_movies_history_synced_with_trakt"

    .line 254
    .line 255
    const/4 v2, 0x1

    .line 256
    invoke-static {v0, v1, v2}, LA/i;->x(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 257
    .line 258
    .line 259
    goto :goto_1

    .line 260
    :cond_9
    new-instance v1, Ljava/io/IOException;

    .line 261
    .line 262
    new-instance v2, Ljava/lang/StringBuilder;

    .line 263
    .line 264
    const-string v3, "Trakt Server Error: "

    .line 265
    .line 266
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v0}, Lretrofit2/Response;->code()I

    .line 270
    .line 271
    .line 272
    move-result v0

    .line 273
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    throw v1

    .line 284
    :cond_a
    :goto_1
    return-void

    .line 285
    :pswitch_0
    iget-object v0, p0, LD4/g;->e:LD4/h;

    .line 286
    .line 287
    invoke-virtual {v0}, LD4/h;->a()V

    .line 288
    .line 289
    .line 290
    iget-object v0, v0, LD4/h;->a:Lcom/uwetrottmann/trakt5/TraktV2;

    .line 291
    .line 292
    if-eqz v0, :cond_b

    .line 293
    .line 294
    invoke-virtual {v0}, Lcom/uwetrottmann/trakt5/TraktV2;->checkin()Lcom/uwetrottmann/trakt5/services/Checkin;

    .line 295
    .line 296
    .line 297
    move-result-object v0

    .line 298
    invoke-interface {v0}, Lcom/uwetrottmann/trakt5/services/Checkin;->deleteActiveCheckin()Lretrofit2/Call;

    .line 299
    .line 300
    .line 301
    move-result-object v0

    .line 302
    invoke-interface {v0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    .line 303
    .line 304
    .line 305
    :cond_b
    return-void

    .line 306
    nop

    .line 307
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
