.class public final synthetic LD4/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Action;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:LD4/h;

.field public final synthetic f:Lflix/com/vision/models/Movie;


# direct methods
.method public synthetic constructor <init>(LD4/h;Lflix/com/vision/models/Movie;I)V
    .locals 0

    .line 1
    iput p3, p0, LD4/e;->b:I

    iput-object p1, p0, LD4/e;->e:LD4/h;

    iput-object p2, p0, LD4/e;->f:Lflix/com/vision/models/Movie;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, LD4/e;->b:I

    .line 4
    .line 5
    packed-switch v1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, LD4/e;->e:LD4/h;

    .line 9
    .line 10
    invoke-virtual {v1}, LD4/h;->a()V

    .line 11
    .line 12
    .line 13
    iget-object v2, v1, LD4/h;->a:Lcom/uwetrottmann/trakt5/TraktV2;

    .line 14
    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    new-instance v2, Lcom/uwetrottmann/trakt5/entities/SyncItems;

    .line 19
    .line 20
    invoke-direct {v2}, Lcom/uwetrottmann/trakt5/entities/SyncItems;-><init>()V

    .line 21
    .line 22
    .line 23
    iget-object v3, v0, LD4/e;->f:Lflix/com/vision/models/Movie;

    .line 24
    .line 25
    invoke-virtual {v3}, Lflix/com/vision/models/Movie;->isSeries()Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-eqz v4, :cond_1

    .line 30
    .line 31
    new-instance v4, Lcom/uwetrottmann/trakt5/entities/SyncShow;

    .line 32
    .line 33
    invoke-direct {v4}, Lcom/uwetrottmann/trakt5/entities/SyncShow;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3}, Lflix/com/vision/models/Movie;->getMovieId()J

    .line 37
    .line 38
    .line 39
    move-result-wide v5

    .line 40
    long-to-int v3, v5

    .line 41
    invoke-static {v3}, Lcom/uwetrottmann/trakt5/entities/ShowIds;->tmdb(I)Lcom/uwetrottmann/trakt5/entities/ShowIds;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v4, v3}, Lcom/uwetrottmann/trakt5/entities/SyncShow;->id(Lcom/uwetrottmann/trakt5/entities/ShowIds;)Lcom/uwetrottmann/trakt5/entities/SyncShow;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {v2, v3}, Lcom/uwetrottmann/trakt5/entities/SyncItems;->shows(Lcom/uwetrottmann/trakt5/entities/SyncShow;)Lcom/uwetrottmann/trakt5/entities/SyncItems;

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    new-instance v4, Lcom/uwetrottmann/trakt5/entities/SyncMovie;

    .line 54
    .line 55
    invoke-direct {v4}, Lcom/uwetrottmann/trakt5/entities/SyncMovie;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3}, Lflix/com/vision/models/Movie;->getMovieId()J

    .line 59
    .line 60
    .line 61
    move-result-wide v5

    .line 62
    long-to-int v3, v5

    .line 63
    invoke-static {v3}, Lcom/uwetrottmann/trakt5/entities/MovieIds;->tmdb(I)Lcom/uwetrottmann/trakt5/entities/MovieIds;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-virtual {v4, v3}, Lcom/uwetrottmann/trakt5/entities/SyncMovie;->id(Lcom/uwetrottmann/trakt5/entities/MovieIds;)Lcom/uwetrottmann/trakt5/entities/SyncMovie;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-virtual {v2, v3}, Lcom/uwetrottmann/trakt5/entities/SyncItems;->movies(Lcom/uwetrottmann/trakt5/entities/SyncMovie;)Lcom/uwetrottmann/trakt5/entities/SyncItems;

    .line 72
    .line 73
    .line 74
    :goto_0
    iget-object v1, v1, LD4/h;->a:Lcom/uwetrottmann/trakt5/TraktV2;

    .line 75
    .line 76
    invoke-virtual {v1}, Lcom/uwetrottmann/trakt5/TraktV2;->sync()Lcom/uwetrottmann/trakt5/services/Sync;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-interface {v1, v2}, Lcom/uwetrottmann/trakt5/services/Sync;->addItemsToWatchlist(Lcom/uwetrottmann/trakt5/entities/SyncItems;)Lretrofit2/Call;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-interface {v1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-virtual {v1}, Lretrofit2/Response;->isSuccessful()Z

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    if-eqz v2, :cond_2

    .line 93
    .line 94
    :goto_1
    return-void

    .line 95
    :cond_2
    new-instance v2, Ljava/io/IOException;

    .line 96
    .line 97
    new-instance v3, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    const-string v4, "Trakt Watchlist Error: "

    .line 100
    .line 101
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1}, Lretrofit2/Response;->code()I

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    throw v2

    .line 119
    :pswitch_0
    iget-object v1, v0, LD4/e;->e:LD4/h;

    .line 120
    .line 121
    invoke-virtual {v1}, LD4/h;->a()V

    .line 122
    .line 123
    .line 124
    iget-object v2, v1, LD4/h;->a:Lcom/uwetrottmann/trakt5/TraktV2;

    .line 125
    .line 126
    if-nez v2, :cond_3

    .line 127
    .line 128
    goto :goto_3

    .line 129
    :cond_3
    new-instance v2, Lcom/uwetrottmann/trakt5/entities/SyncItems;

    .line 130
    .line 131
    invoke-direct {v2}, Lcom/uwetrottmann/trakt5/entities/SyncItems;-><init>()V

    .line 132
    .line 133
    .line 134
    iget-object v3, v0, LD4/e;->f:Lflix/com/vision/models/Movie;

    .line 135
    .line 136
    invoke-virtual {v3}, Lflix/com/vision/models/Movie;->isSeries()Z

    .line 137
    .line 138
    .line 139
    move-result v4

    .line 140
    if-eqz v4, :cond_4

    .line 141
    .line 142
    new-instance v4, Lcom/uwetrottmann/trakt5/entities/SyncShow;

    .line 143
    .line 144
    invoke-direct {v4}, Lcom/uwetrottmann/trakt5/entities/SyncShow;-><init>()V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v3}, Lflix/com/vision/models/Movie;->getMovieId()J

    .line 148
    .line 149
    .line 150
    move-result-wide v5

    .line 151
    long-to-int v3, v5

    .line 152
    invoke-static {v3}, Lcom/uwetrottmann/trakt5/entities/ShowIds;->tmdb(I)Lcom/uwetrottmann/trakt5/entities/ShowIds;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    invoke-virtual {v4, v3}, Lcom/uwetrottmann/trakt5/entities/SyncShow;->id(Lcom/uwetrottmann/trakt5/entities/ShowIds;)Lcom/uwetrottmann/trakt5/entities/SyncShow;

    .line 157
    .line 158
    .line 159
    move-result-object v3

    .line 160
    invoke-virtual {v2, v3}, Lcom/uwetrottmann/trakt5/entities/SyncItems;->shows(Lcom/uwetrottmann/trakt5/entities/SyncShow;)Lcom/uwetrottmann/trakt5/entities/SyncItems;

    .line 161
    .line 162
    .line 163
    goto :goto_2

    .line 164
    :cond_4
    new-instance v4, Lcom/uwetrottmann/trakt5/entities/SyncMovie;

    .line 165
    .line 166
    invoke-direct {v4}, Lcom/uwetrottmann/trakt5/entities/SyncMovie;-><init>()V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v3}, Lflix/com/vision/models/Movie;->getMovieId()J

    .line 170
    .line 171
    .line 172
    move-result-wide v5

    .line 173
    long-to-int v3, v5

    .line 174
    invoke-static {v3}, Lcom/uwetrottmann/trakt5/entities/MovieIds;->tmdb(I)Lcom/uwetrottmann/trakt5/entities/MovieIds;

    .line 175
    .line 176
    .line 177
    move-result-object v3

    .line 178
    invoke-virtual {v4, v3}, Lcom/uwetrottmann/trakt5/entities/SyncMovie;->id(Lcom/uwetrottmann/trakt5/entities/MovieIds;)Lcom/uwetrottmann/trakt5/entities/SyncMovie;

    .line 179
    .line 180
    .line 181
    move-result-object v3

    .line 182
    invoke-static {}, Lorg/threeten/bp/OffsetDateTime;->now()Lorg/threeten/bp/OffsetDateTime;

    .line 183
    .line 184
    .line 185
    move-result-object v4

    .line 186
    invoke-virtual {v3, v4}, Lcom/uwetrottmann/trakt5/entities/SyncMovie;->watchedAt(Lorg/threeten/bp/OffsetDateTime;)Lcom/uwetrottmann/trakt5/entities/SyncMovie;

    .line 187
    .line 188
    .line 189
    move-result-object v3

    .line 190
    invoke-virtual {v2, v3}, Lcom/uwetrottmann/trakt5/entities/SyncItems;->movies(Lcom/uwetrottmann/trakt5/entities/SyncMovie;)Lcom/uwetrottmann/trakt5/entities/SyncItems;

    .line 191
    .line 192
    .line 193
    :goto_2
    iget-object v1, v1, LD4/h;->a:Lcom/uwetrottmann/trakt5/TraktV2;

    .line 194
    .line 195
    invoke-virtual {v1}, Lcom/uwetrottmann/trakt5/TraktV2;->sync()Lcom/uwetrottmann/trakt5/services/Sync;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    invoke-interface {v1, v2}, Lcom/uwetrottmann/trakt5/services/Sync;->addItemsToWatchedHistory(Lcom/uwetrottmann/trakt5/entities/SyncItems;)Lretrofit2/Call;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    invoke-interface {v1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    invoke-virtual {v1}, Lretrofit2/Response;->isSuccessful()Z

    .line 208
    .line 209
    .line 210
    move-result v2

    .line 211
    if-eqz v2, :cond_5

    .line 212
    .line 213
    :goto_3
    return-void

    .line 214
    :cond_5
    new-instance v2, Ljava/io/IOException;

    .line 215
    .line 216
    new-instance v3, Ljava/lang/StringBuilder;

    .line 217
    .line 218
    const-string v4, "Trakt History Error: "

    .line 219
    .line 220
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v1}, Lretrofit2/Response;->code()I

    .line 224
    .line 225
    .line 226
    move-result v1

    .line 227
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v1

    .line 234
    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    throw v2

    .line 238
    :pswitch_1
    iget-object v1, v0, LD4/e;->e:LD4/h;

    .line 239
    .line 240
    invoke-virtual {v1}, LD4/h;->a()V

    .line 241
    .line 242
    .line 243
    iget-object v2, v1, LD4/h;->a:Lcom/uwetrottmann/trakt5/TraktV2;

    .line 244
    .line 245
    if-nez v2, :cond_6

    .line 246
    .line 247
    goto/16 :goto_5

    .line 248
    .line 249
    :cond_6
    invoke-virtual {v2}, Lcom/uwetrottmann/trakt5/TraktV2;->checkin()Lcom/uwetrottmann/trakt5/services/Checkin;

    .line 250
    .line 251
    .line 252
    move-result-object v2

    .line 253
    invoke-interface {v2}, Lcom/uwetrottmann/trakt5/services/Checkin;->deleteActiveCheckin()Lretrofit2/Call;

    .line 254
    .line 255
    .line 256
    move-result-object v2

    .line 257
    invoke-interface {v2}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    .line 258
    .line 259
    .line 260
    iget-object v2, v0, LD4/e;->f:Lflix/com/vision/models/Movie;

    .line 261
    .line 262
    invoke-virtual {v2}, Lflix/com/vision/models/Movie;->getImdbID()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v3

    .line 266
    const/4 v4, 0x1

    .line 267
    if-eqz v3, :cond_7

    .line 268
    .line 269
    invoke-virtual {v2}, Lflix/com/vision/models/Movie;->getImdbID()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v3

    .line 273
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 274
    .line 275
    .line 276
    move-result v3

    .line 277
    if-nez v3, :cond_7

    .line 278
    .line 279
    iget-object v3, v1, LD4/h;->a:Lcom/uwetrottmann/trakt5/TraktV2;

    .line 280
    .line 281
    invoke-virtual {v3}, Lcom/uwetrottmann/trakt5/TraktV2;->search()Lcom/uwetrottmann/trakt5/services/Search;

    .line 282
    .line 283
    .line 284
    move-result-object v5

    .line 285
    sget-object v6, Lcom/uwetrottmann/trakt5/enums/IdType;->IMDB:Lcom/uwetrottmann/trakt5/enums/IdType;

    .line 286
    .line 287
    invoke-virtual {v2}, Lflix/com/vision/models/Movie;->getImdbID()Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v7

    .line 291
    sget-object v8, Lcom/uwetrottmann/trakt5/enums/Type;->MOVIE:Lcom/uwetrottmann/trakt5/enums/Type;

    .line 292
    .line 293
    sget-object v9, Lcom/uwetrottmann/trakt5/enums/Extended;->FULL:Lcom/uwetrottmann/trakt5/enums/Extended;

    .line 294
    .line 295
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 296
    .line 297
    .line 298
    move-result-object v10

    .line 299
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 300
    .line 301
    .line 302
    move-result-object v11

    .line 303
    invoke-interface/range {v5 .. v11}, Lcom/uwetrottmann/trakt5/services/Search;->idLookup(Lcom/uwetrottmann/trakt5/enums/IdType;Ljava/lang/String;Lcom/uwetrottmann/trakt5/enums/Type;Lcom/uwetrottmann/trakt5/enums/Extended;Ljava/lang/Integer;Ljava/lang/Integer;)Lretrofit2/Call;

    .line 304
    .line 305
    .line 306
    move-result-object v3

    .line 307
    invoke-interface {v3}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    .line 308
    .line 309
    .line 310
    move-result-object v3

    .line 311
    goto :goto_4

    .line 312
    :cond_7
    iget-object v3, v1, LD4/h;->a:Lcom/uwetrottmann/trakt5/TraktV2;

    .line 313
    .line 314
    invoke-virtual {v3}, Lcom/uwetrottmann/trakt5/TraktV2;->search()Lcom/uwetrottmann/trakt5/services/Search;

    .line 315
    .line 316
    .line 317
    move-result-object v5

    .line 318
    sget-object v6, Lcom/uwetrottmann/trakt5/enums/Type;->MOVIE:Lcom/uwetrottmann/trakt5/enums/Type;

    .line 319
    .line 320
    invoke-virtual {v2}, Lflix/com/vision/models/Movie;->getSimpleNameClean()Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v7

    .line 324
    invoke-virtual {v2}, Lflix/com/vision/models/Movie;->getYear()Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v8

    .line 328
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 329
    .line 330
    .line 331
    move-result-object v15

    .line 332
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 333
    .line 334
    .line 335
    move-result-object v16

    .line 336
    const/4 v11, 0x0

    .line 337
    const/4 v12, 0x0

    .line 338
    const/4 v9, 0x0

    .line 339
    const/4 v10, 0x0

    .line 340
    const/4 v13, 0x0

    .line 341
    const/4 v14, 0x0

    .line 342
    invoke-interface/range {v5 .. v16}, Lcom/uwetrottmann/trakt5/services/Search;->textQuery(Lcom/uwetrottmann/trakt5/enums/Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/uwetrottmann/trakt5/enums/Extended;Ljava/lang/Integer;Ljava/lang/Integer;)Lretrofit2/Call;

    .line 343
    .line 344
    .line 345
    move-result-object v3

    .line 346
    invoke-interface {v3}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    .line 347
    .line 348
    .line 349
    move-result-object v3

    .line 350
    :goto_4
    invoke-virtual {v3}, Lretrofit2/Response;->isSuccessful()Z

    .line 351
    .line 352
    .line 353
    move-result v4

    .line 354
    if-eqz v4, :cond_8

    .line 355
    .line 356
    invoke-virtual {v3}, Lretrofit2/Response;->body()Ljava/lang/Object;

    .line 357
    .line 358
    .line 359
    move-result-object v4

    .line 360
    if-eqz v4, :cond_8

    .line 361
    .line 362
    invoke-virtual {v3}, Lretrofit2/Response;->body()Ljava/lang/Object;

    .line 363
    .line 364
    .line 365
    move-result-object v4

    .line 366
    check-cast v4, Ljava/util/List;

    .line 367
    .line 368
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 369
    .line 370
    .line 371
    move-result v4

    .line 372
    if-nez v4, :cond_8

    .line 373
    .line 374
    invoke-virtual {v3}, Lretrofit2/Response;->body()Ljava/lang/Object;

    .line 375
    .line 376
    .line 377
    move-result-object v3

    .line 378
    check-cast v3, Ljava/util/List;

    .line 379
    .line 380
    const/4 v4, 0x0

    .line 381
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 382
    .line 383
    .line 384
    move-result-object v3

    .line 385
    check-cast v3, Lcom/uwetrottmann/trakt5/entities/SearchResult;

    .line 386
    .line 387
    new-instance v4, Lcom/uwetrottmann/trakt5/entities/MovieCheckin$Builder;

    .line 388
    .line 389
    new-instance v5, Lcom/uwetrottmann/trakt5/entities/SyncMovie;

    .line 390
    .line 391
    invoke-direct {v5}, Lcom/uwetrottmann/trakt5/entities/SyncMovie;-><init>()V

    .line 392
    .line 393
    .line 394
    iget-object v3, v3, Lcom/uwetrottmann/trakt5/entities/SearchResult;->movie:Lcom/uwetrottmann/trakt5/entities/Movie;

    .line 395
    .line 396
    iget-object v3, v3, Lcom/uwetrottmann/trakt5/entities/Movie;->ids:Lcom/uwetrottmann/trakt5/entities/MovieIds;

    .line 397
    .line 398
    invoke-virtual {v5, v3}, Lcom/uwetrottmann/trakt5/entities/SyncMovie;->id(Lcom/uwetrottmann/trakt5/entities/MovieIds;)Lcom/uwetrottmann/trakt5/entities/SyncMovie;

    .line 399
    .line 400
    .line 401
    move-result-object v3

    .line 402
    invoke-static {}, Lorg/threeten/bp/OffsetDateTime;->now()Lorg/threeten/bp/OffsetDateTime;

    .line 403
    .line 404
    .line 405
    move-result-object v5

    .line 406
    invoke-virtual {v3, v5}, Lcom/uwetrottmann/trakt5/entities/SyncMovie;->watchedAt(Lorg/threeten/bp/OffsetDateTime;)Lcom/uwetrottmann/trakt5/entities/SyncMovie;

    .line 407
    .line 408
    .line 409
    move-result-object v3

    .line 410
    const-string v5, "Flix Vision"

    .line 411
    .line 412
    const-string v6, ""

    .line 413
    .line 414
    invoke-direct {v4, v3, v5, v6}, Lcom/uwetrottmann/trakt5/entities/MovieCheckin$Builder;-><init>(Lcom/uwetrottmann/trakt5/entities/SyncMovie;Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    .line 416
    .line 417
    new-instance v3, Ljava/lang/StringBuilder;

    .line 418
    .line 419
    const-string v5, "Watching "

    .line 420
    .line 421
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 422
    .line 423
    .line 424
    invoke-virtual {v2}, Lflix/com/vision/models/Movie;->getTitle()Ljava/lang/String;

    .line 425
    .line 426
    .line 427
    move-result-object v2

    .line 428
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    .line 430
    .line 431
    const-string v2, " on @FlixVisionApp"

    .line 432
    .line 433
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    .line 435
    .line 436
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 437
    .line 438
    .line 439
    move-result-object v2

    .line 440
    invoke-virtual {v4, v2}, Lcom/uwetrottmann/trakt5/entities/MovieCheckin$Builder;->message(Ljava/lang/String;)Lcom/uwetrottmann/trakt5/entities/MovieCheckin$Builder;

    .line 441
    .line 442
    .line 443
    move-result-object v2

    .line 444
    invoke-virtual {v2}, Lcom/uwetrottmann/trakt5/entities/MovieCheckin$Builder;->build()Lcom/uwetrottmann/trakt5/entities/MovieCheckin;

    .line 445
    .line 446
    .line 447
    move-result-object v2

    .line 448
    iget-object v1, v1, LD4/h;->a:Lcom/uwetrottmann/trakt5/TraktV2;

    .line 449
    .line 450
    invoke-virtual {v1}, Lcom/uwetrottmann/trakt5/TraktV2;->checkin()Lcom/uwetrottmann/trakt5/services/Checkin;

    .line 451
    .line 452
    .line 453
    move-result-object v1

    .line 454
    invoke-interface {v1, v2}, Lcom/uwetrottmann/trakt5/services/Checkin;->checkin(Lcom/uwetrottmann/trakt5/entities/MovieCheckin;)Lretrofit2/Call;

    .line 455
    .line 456
    .line 457
    move-result-object v1

    .line 458
    invoke-interface {v1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    .line 459
    .line 460
    .line 461
    :cond_8
    :goto_5
    return-void

    .line 462
    :pswitch_2
    iget-object v1, v0, LD4/e;->e:LD4/h;

    .line 463
    .line 464
    invoke-virtual {v1}, LD4/h;->a()V

    .line 465
    .line 466
    .line 467
    iget-object v2, v1, LD4/h;->a:Lcom/uwetrottmann/trakt5/TraktV2;

    .line 468
    .line 469
    if-nez v2, :cond_9

    .line 470
    .line 471
    goto :goto_7

    .line 472
    :cond_9
    new-instance v2, Lcom/uwetrottmann/trakt5/entities/SyncItems;

    .line 473
    .line 474
    invoke-direct {v2}, Lcom/uwetrottmann/trakt5/entities/SyncItems;-><init>()V

    .line 475
    .line 476
    .line 477
    iget-object v3, v0, LD4/e;->f:Lflix/com/vision/models/Movie;

    .line 478
    .line 479
    invoke-virtual {v3}, Lflix/com/vision/models/Movie;->isSeries()Z

    .line 480
    .line 481
    .line 482
    move-result v4

    .line 483
    if-eqz v4, :cond_a

    .line 484
    .line 485
    new-instance v4, Lcom/uwetrottmann/trakt5/entities/SyncShow;

    .line 486
    .line 487
    invoke-direct {v4}, Lcom/uwetrottmann/trakt5/entities/SyncShow;-><init>()V

    .line 488
    .line 489
    .line 490
    invoke-virtual {v3}, Lflix/com/vision/models/Movie;->getMovieId()J

    .line 491
    .line 492
    .line 493
    move-result-wide v5

    .line 494
    long-to-int v3, v5

    .line 495
    invoke-static {v3}, Lcom/uwetrottmann/trakt5/entities/ShowIds;->tmdb(I)Lcom/uwetrottmann/trakt5/entities/ShowIds;

    .line 496
    .line 497
    .line 498
    move-result-object v3

    .line 499
    invoke-virtual {v4, v3}, Lcom/uwetrottmann/trakt5/entities/SyncShow;->id(Lcom/uwetrottmann/trakt5/entities/ShowIds;)Lcom/uwetrottmann/trakt5/entities/SyncShow;

    .line 500
    .line 501
    .line 502
    move-result-object v3

    .line 503
    invoke-virtual {v2, v3}, Lcom/uwetrottmann/trakt5/entities/SyncItems;->shows(Lcom/uwetrottmann/trakt5/entities/SyncShow;)Lcom/uwetrottmann/trakt5/entities/SyncItems;

    .line 504
    .line 505
    .line 506
    goto :goto_6

    .line 507
    :cond_a
    new-instance v4, Lcom/uwetrottmann/trakt5/entities/SyncMovie;

    .line 508
    .line 509
    invoke-direct {v4}, Lcom/uwetrottmann/trakt5/entities/SyncMovie;-><init>()V

    .line 510
    .line 511
    .line 512
    invoke-virtual {v3}, Lflix/com/vision/models/Movie;->getMovieId()J

    .line 513
    .line 514
    .line 515
    move-result-wide v5

    .line 516
    long-to-int v3, v5

    .line 517
    invoke-static {v3}, Lcom/uwetrottmann/trakt5/entities/MovieIds;->tmdb(I)Lcom/uwetrottmann/trakt5/entities/MovieIds;

    .line 518
    .line 519
    .line 520
    move-result-object v3

    .line 521
    invoke-virtual {v4, v3}, Lcom/uwetrottmann/trakt5/entities/SyncMovie;->id(Lcom/uwetrottmann/trakt5/entities/MovieIds;)Lcom/uwetrottmann/trakt5/entities/SyncMovie;

    .line 522
    .line 523
    .line 524
    move-result-object v3

    .line 525
    invoke-virtual {v2, v3}, Lcom/uwetrottmann/trakt5/entities/SyncItems;->movies(Lcom/uwetrottmann/trakt5/entities/SyncMovie;)Lcom/uwetrottmann/trakt5/entities/SyncItems;

    .line 526
    .line 527
    .line 528
    :goto_6
    iget-object v1, v1, LD4/h;->a:Lcom/uwetrottmann/trakt5/TraktV2;

    .line 529
    .line 530
    invoke-virtual {v1}, Lcom/uwetrottmann/trakt5/TraktV2;->sync()Lcom/uwetrottmann/trakt5/services/Sync;

    .line 531
    .line 532
    .line 533
    move-result-object v1

    .line 534
    invoke-interface {v1, v2}, Lcom/uwetrottmann/trakt5/services/Sync;->addItemsToCollection(Lcom/uwetrottmann/trakt5/entities/SyncItems;)Lretrofit2/Call;

    .line 535
    .line 536
    .line 537
    move-result-object v1

    .line 538
    invoke-interface {v1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    .line 539
    .line 540
    .line 541
    move-result-object v1

    .line 542
    invoke-virtual {v1}, Lretrofit2/Response;->isSuccessful()Z

    .line 543
    .line 544
    .line 545
    move-result v2

    .line 546
    if-eqz v2, :cond_b

    .line 547
    .line 548
    :goto_7
    return-void

    .line 549
    :cond_b
    new-instance v2, Ljava/io/IOException;

    .line 550
    .line 551
    new-instance v3, Ljava/lang/StringBuilder;

    .line 552
    .line 553
    const-string v4, "Trakt Error: "

    .line 554
    .line 555
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 556
    .line 557
    .line 558
    invoke-virtual {v1}, Lretrofit2/Response;->code()I

    .line 559
    .line 560
    .line 561
    move-result v1

    .line 562
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 563
    .line 564
    .line 565
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 566
    .line 567
    .line 568
    move-result-object v1

    .line 569
    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 570
    .line 571
    .line 572
    throw v2

    .line 573
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
