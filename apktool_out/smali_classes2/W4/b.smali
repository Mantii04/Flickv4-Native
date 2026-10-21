.class public final LW4/b;
.super Landroidx/leanback/widget/C0;
.source "SourceFile"


# instance fields
.field public a:Landroid/widget/ProgressBar;

.field public final b:Ljava/util/ArrayList;

.field public final c:Landroid/app/Activity;

.field public final d:Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Landroid/app/Activity;Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lflix/com/vision/models/Movie;",
            ">;",
            "Landroid/app/Activity;",
            "Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/leanback/widget/C0;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LW4/b;->b:Ljava/util/ArrayList;

    .line 5
    .line 6
    iput-object p2, p0, LW4/b;->c:Landroid/app/Activity;

    .line 7
    .line 8
    iput-object p3, p0, LW4/b;->d:Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/leanback/widget/A0;Ljava/lang/Object;)V
    .locals 10

    .line 1
    check-cast p2, Lflix/com/vision/models/Movie;

    .line 2
    .line 3
    iget-object v0, p1, Landroidx/leanback/widget/A0;->a:Landroid/view/View;

    .line 4
    .line 5
    sget v1, Lflix/com/vision/R$id;->poster_image:I

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/ImageView;

    .line 12
    .line 13
    sget v1, Lflix/com/vision/R$id;->episode_title_card:I

    .line 14
    .line 15
    iget-object p1, p1, Landroidx/leanback/widget/A0;->a:Landroid/view/View;

    .line 16
    .line 17
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Landroid/widget/TextView;

    .line 22
    .line 23
    sget v2, Lflix/com/vision/R$id;->progress_card:I

    .line 24
    .line 25
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Landroid/widget/ProgressBar;

    .line 30
    .line 31
    iput-object v2, p0, LW4/b;->a:Landroid/widget/ProgressBar;

    .line 32
    .line 33
    invoke-virtual {p2}, Lflix/com/vision/models/Movie;->isSeries()Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    const-string v3, ""

    .line 38
    .line 39
    const/4 v4, -0x1

    .line 40
    const/4 v5, 0x0

    .line 41
    if-eqz v2, :cond_1

    .line 42
    .line 43
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2}, Lflix/com/vision/models/Movie;->getMovieId()J

    .line 49
    .line 50
    .line 51
    move-result-wide v6

    .line 52
    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v6, "watched_season_index"

    .line 56
    .line 57
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    iget-object v6, v6, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 69
    .line 70
    invoke-interface {v6, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-le v2, v4, :cond_4

    .line 75
    .line 76
    const/4 v4, 0x1

    .line 77
    add-int/2addr v2, v4

    .line 78
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 79
    .line 80
    .line 81
    move-result-object v6

    .line 82
    iget-object v6, v6, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 83
    .line 84
    new-instance v7, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2}, Lflix/com/vision/models/Movie;->getMovieId()J

    .line 90
    .line 91
    .line 92
    move-result-wide v8

    .line 93
    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v8, "season"

    .line 97
    .line 98
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string v8, "episode"

    .line 105
    .line 106
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v7

    .line 116
    invoke-interface {v6, v7, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 117
    .line 118
    .line 119
    move-result v6

    .line 120
    add-int/2addr v6, v4

    .line 121
    new-instance v7, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p2}, Lflix/com/vision/models/Movie;->getMovieId()J

    .line 127
    .line 128
    .line 129
    move-result-wide v8

    .line 130
    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const-string v8, "s"

    .line 134
    .line 135
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    const-string v8, "e"

    .line 142
    .line 143
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    const-string v8, "title"

    .line 150
    .line 151
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v7

    .line 158
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 159
    .line 160
    .line 161
    move-result-object v8

    .line 162
    iget-object v8, v8, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 163
    .line 164
    invoke-interface {v8, v7, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v3

    .line 168
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 169
    .line 170
    .line 171
    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    const-string v8, "E"

    .line 173
    .line 174
    const-string v9, "S"

    .line 175
    .line 176
    if-le v7, v4, :cond_0

    .line 177
    .line 178
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 179
    .line 180
    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    const-string v2, ": "

    .line 193
    .line 194
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v2

    .line 204
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    .line 206
    .line 207
    goto :goto_0

    .line 208
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 209
    .line 210
    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v2

    .line 226
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    .line 228
    .line 229
    :goto_0
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 230
    .line 231
    .line 232
    goto/16 :goto_2

    .line 233
    .line 234
    :cond_1
    const/16 v2, 0x8

    .line 235
    .line 236
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 237
    .line 238
    .line 239
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 240
    .line 241
    .line 242
    move-result-object v2

    .line 243
    iget-object v2, v2, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 244
    .line 245
    new-instance v6, Ljava/lang/StringBuilder;

    .line 246
    .line 247
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 248
    .line 249
    .line 250
    invoke-virtual {p2}, Lflix/com/vision/models/Movie;->getMovieId()J

    .line 251
    .line 252
    .line 253
    move-result-wide v7

    .line 254
    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v3

    .line 264
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 265
    .line 266
    .line 267
    move-result v2

    .line 268
    if-lez v2, :cond_4

    .line 269
    .line 270
    iget-object v3, p0, LW4/b;->b:Ljava/util/ArrayList;

    .line 271
    .line 272
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 273
    .line 274
    .line 275
    move-result-object v3

    .line 276
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 277
    .line 278
    .line 279
    move-result v4

    .line 280
    if-eqz v4, :cond_4

    .line 281
    .line 282
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object v4

    .line 286
    check-cast v4, Lflix/com/vision/models/Movie;

    .line 287
    .line 288
    invoke-virtual {v4}, Lflix/com/vision/models/Movie;->getMovieId()J

    .line 289
    .line 290
    .line 291
    move-result-wide v6

    .line 292
    invoke-virtual {p2}, Lflix/com/vision/models/Movie;->getMovieId()J

    .line 293
    .line 294
    .line 295
    move-result-wide v8

    .line 296
    cmp-long v4, v6, v8

    .line 297
    .line 298
    if-nez v4, :cond_2

    .line 299
    .line 300
    invoke-virtual {p2}, Lflix/com/vision/models/Movie;->getDuration()I

    .line 301
    .line 302
    .line 303
    move-result v4

    .line 304
    if-lez v4, :cond_2

    .line 305
    .line 306
    iget-object v3, p0, LW4/b;->a:Landroid/widget/ProgressBar;

    .line 307
    .line 308
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 309
    .line 310
    .line 311
    invoke-virtual {p2}, Lflix/com/vision/models/Movie;->getDuration()I

    .line 312
    .line 313
    .line 314
    move-result v3

    .line 315
    const v4, 0xea60

    .line 316
    .line 317
    .line 318
    mul-int/2addr v3, v4

    .line 319
    mul-int/lit8 v6, v2, 0x64

    .line 320
    .line 321
    int-to-float v6, v6

    .line 322
    int-to-float v3, v3

    .line 323
    div-float/2addr v6, v3

    .line 324
    float-to-double v6, v6

    .line 325
    double-to-int v3, v6

    .line 326
    iget-object v6, p0, LW4/b;->a:Landroid/widget/ProgressBar;

    .line 327
    .line 328
    invoke-virtual {v6, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 329
    .line 330
    .line 331
    :try_start_2
    invoke-virtual {p2}, Lflix/com/vision/models/Movie;->getDuration()I

    .line 332
    .line 333
    .line 334
    move-result v3

    .line 335
    div-int/2addr v2, v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 336
    sub-int/2addr v3, v2

    .line 337
    const/16 v2, 0x3c

    .line 338
    .line 339
    const-string v4, "m"

    .line 340
    .line 341
    if-le v3, v2, :cond_3

    .line 342
    .line 343
    :try_start_3
    new-instance v6, Ljava/lang/StringBuilder;

    .line 344
    .line 345
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 346
    .line 347
    .line 348
    div-int/lit8 v7, v3, 0x3c

    .line 349
    .line 350
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    .line 353
    const-string v7, "h "

    .line 354
    .line 355
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    .line 357
    .line 358
    rem-int/2addr v3, v2

    .line 359
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 360
    .line 361
    .line 362
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object v2

    .line 369
    goto :goto_1

    .line 370
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 371
    .line 372
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 373
    .line 374
    .line 375
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 376
    .line 377
    .line 378
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    .line 380
    .line 381
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object v2

    .line 385
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 386
    .line 387
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 388
    .line 389
    .line 390
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    .line 392
    .line 393
    const-string v2, " remaining"

    .line 394
    .line 395
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    .line 397
    .line 398
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object v2

    .line 402
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 403
    .line 404
    .line 405
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 406
    .line 407
    .line 408
    :catch_0
    :cond_4
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 409
    .line 410
    const-string v2, "https://www.themoviedb.org/t/p/w780"

    .line 411
    .line 412
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 413
    .line 414
    .line 415
    iget-object v2, p2, Lflix/com/vision/models/Movie;->backdrop:Ljava/lang/String;

    .line 416
    .line 417
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    .line 419
    .line 420
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 421
    .line 422
    .line 423
    move-result-object v1

    .line 424
    iget-object v2, p2, Lflix/com/vision/models/Movie;->backdrop:Ljava/lang/String;

    .line 425
    .line 426
    if-eqz v2, :cond_5

    .line 427
    .line 428
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 429
    .line 430
    .line 431
    move-result v2

    .line 432
    const/16 v3, 0xa

    .line 433
    .line 434
    if-le v2, v3, :cond_5

    .line 435
    .line 436
    :try_start_4
    invoke-static {}, Lm4/D;->get()Lm4/D;

    .line 437
    .line 438
    .line 439
    move-result-object v2

    .line 440
    invoke-virtual {v2, v1}, Lm4/D;->load(Ljava/lang/String;)Lm4/J;

    .line 441
    .line 442
    .line 443
    move-result-object v1

    .line 444
    invoke-virtual {v1}, Lm4/J;->fit()Lm4/J;

    .line 445
    .line 446
    .line 447
    move-result-object v1

    .line 448
    invoke-virtual {v1}, Lm4/J;->centerCrop()Lm4/J;

    .line 449
    .line 450
    .line 451
    move-result-object v1

    .line 452
    sget v2, Lflix/com/vision/R$drawable;->ic_movie:I

    .line 453
    .line 454
    invoke-virtual {v1, v2}, Lm4/J;->error(I)Lm4/J;

    .line 455
    .line 456
    .line 457
    move-result-object v1

    .line 458
    invoke-virtual {v1, v0}, Lm4/J;->into(Landroid/widget/ImageView;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 459
    .line 460
    .line 461
    goto :goto_3

    .line 462
    :catch_1
    move-exception v0

    .line 463
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 464
    .line 465
    .line 466
    goto :goto_3

    .line 467
    :cond_5
    invoke-static {}, Lm4/D;->get()Lm4/D;

    .line 468
    .line 469
    .line 470
    move-result-object v1

    .line 471
    sget v2, Lflix/com/vision/R$drawable;->ic_movie:I

    .line 472
    .line 473
    invoke-virtual {v1, v2}, Lm4/D;->load(I)Lm4/J;

    .line 474
    .line 475
    .line 476
    move-result-object v1

    .line 477
    invoke-virtual {v1}, Lm4/J;->fit()Lm4/J;

    .line 478
    .line 479
    .line 480
    move-result-object v1

    .line 481
    invoke-virtual {v1}, Lm4/J;->centerCrop()Lm4/J;

    .line 482
    .line 483
    .line 484
    move-result-object v1

    .line 485
    invoke-virtual {v1, v0}, Lm4/J;->into(Landroid/widget/ImageView;)V

    .line 486
    .line 487
    .line 488
    :goto_3
    new-instance v0, LC4/i;

    .line 489
    .line 490
    const/4 v1, 0x3

    .line 491
    invoke-direct {v0, v1, p0, p2}, LC4/i;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 492
    .line 493
    .line 494
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 495
    .line 496
    .line 497
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;)Landroidx/leanback/widget/A0;
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget v1, Lflix/com/vision/R$layout;->movie_item_view_card:I

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    const/16 v3, 0x14

    .line 27
    .line 28
    invoke-static {v2, v3}, Lh5/d;->getWidthInPercent(Landroid/content/Context;I)I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    const/16 v2, 0x11

    .line 39
    .line 40
    invoke-static {p1, v2}, Lh5/d;->getHeightInPercent(Landroid/content/Context;I)I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    iput p1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 45
    .line 46
    const/16 p1, 0x18

    .line 47
    .line 48
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    .line 53
    .line 54
    new-instance p1, Landroidx/leanback/widget/A0;

    .line 55
    .line 56
    invoke-direct {p1, v0}, Landroidx/leanback/widget/A0;-><init>(Landroid/view/View;)V

    .line 57
    .line 58
    .line 59
    return-object p1
.end method

.method public onUnbindViewHolder(Landroidx/leanback/widget/A0;)V
    .locals 0

    .line 1
    return-void
.end method
