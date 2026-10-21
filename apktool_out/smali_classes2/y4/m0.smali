.class public final synthetic Ly4/m0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Lflix/com/vision/activities/MovieDetailActivity;


# direct methods
.method public synthetic constructor <init>(Lflix/com/vision/activities/MovieDetailActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Ly4/m0;->b:I

    iput-object p1, p0, Ly4/m0;->e:Lflix/com/vision/activities/MovieDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 12

    .line 1
    const/4 v0, 0x2

    .line 2
    const/16 v1, 0x12

    .line 3
    .line 4
    const/4 v2, 0x1

    .line 5
    const-string v3, ""

    .line 6
    .line 7
    const/4 v4, 0x0

    .line 8
    iget-object v5, p0, Ly4/m0;->e:Lflix/com/vision/activities/MovieDetailActivity;

    .line 9
    .line 10
    iget v6, p0, Ly4/m0;->b:I

    .line 11
    .line 12
    check-cast p1, Lcom/google/gson/JsonElement;

    .line 13
    .line 14
    packed-switch v6, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    sget v0, Lflix/com/vision/activities/MovieDetailActivity;->S0:I

    .line 18
    .line 19
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Lflix/com/vision/utils/JsonUtils;->availableOnStreamingServices(Lcom/google/gson/JsonElement;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    iget-object p1, v5, Lflix/com/vision/activities/MovieDetailActivity;->D:Landroid/widget/TextView;

    .line 29
    .line 30
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 31
    .line 32
    .line 33
    goto :goto_2

    .line 34
    :cond_0
    iget-object p1, v5, Lflix/com/vision/activities/MovieDetailActivity;->l0:Lflix/com/vision/models/Movie;

    .line 35
    .line 36
    invoke-virtual {p1}, Lflix/com/vision/models/Movie;->isSeries()Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-nez p1, :cond_3

    .line 41
    .line 42
    iget-object p1, v5, Lflix/com/vision/activities/MovieDetailActivity;->l0:Lflix/com/vision/models/Movie;

    .line 43
    .line 44
    iget-object p1, p1, Lflix/com/vision/models/Movie;->rawReleaseDate:Ljava/lang/String;

    .line 45
    .line 46
    if-eqz p1, :cond_2

    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-eqz p1, :cond_1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    :try_start_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 56
    .line 57
    const/16 v0, 0x1a

    .line 58
    .line 59
    if-lt p1, v0, :cond_2

    .line 60
    .line 61
    invoke-static {}, Lt2/a;->i()Ljava/time/format/DateTimeFormatter;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    iget-object v0, v5, Lflix/com/vision/activities/MovieDetailActivity;->l0:Lflix/com/vision/models/Movie;

    .line 66
    .line 67
    iget-object v0, v0, Lflix/com/vision/models/Movie;->rawReleaseDate:Ljava/lang/String;

    .line 68
    .line 69
    const-string v1, "-"

    .line 70
    .line 71
    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-static {v0, p1}, Lt2/a;->g(Ljava/lang/String;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDate;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-static {}, Lt2/a;->f()Ljava/time/LocalDate;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-static {p1}, Lt2/a;->h(Ljava/time/LocalDate;)Ljava/time/LocalDate;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-static {v0, p1}, Lt2/a;->m(Ljava/time/LocalDate;Ljava/time/LocalDate;)Z

    .line 88
    .line 89
    .line 90
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    goto :goto_1

    .line 92
    :catch_0
    move-exception p1

    .line 93
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 94
    .line 95
    .line 96
    :cond_2
    :goto_0
    move p1, v4

    .line 97
    :goto_1
    if-nez p1, :cond_3

    .line 98
    .line 99
    iget-object p1, v5, Lflix/com/vision/activities/MovieDetailActivity;->D:Landroid/widget/TextView;

    .line 100
    .line 101
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 102
    .line 103
    .line 104
    iget-object p1, v5, Lflix/com/vision/activities/MovieDetailActivity;->D:Landroid/widget/TextView;

    .line 105
    .line 106
    const-string v0, "  CAM"

    .line 107
    .line 108
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    .line 110
    .line 111
    iget-object p1, v5, Lflix/com/vision/activities/MovieDetailActivity;->D:Landroid/widget/TextView;

    .line 112
    .line 113
    invoke-virtual {v5}, Le/v;->getResources()Landroid/content/res/Resources;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    sget v1, Lflix/com/vision/R$color;->md_red_500:I

    .line 118
    .line 119
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 124
    .line 125
    .line 126
    :cond_3
    :goto_2
    return-void

    .line 127
    :pswitch_0
    sget v0, Lflix/com/vision/activities/MovieDetailActivity;->S0:I

    .line 128
    .line 129
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    .line 131
    .line 132
    invoke-static {p1, v4}, Lflix/com/vision/utils/JsonUtils;->parseCollectionMovies(Lcom/google/gson/JsonElement;I)Ljava/util/ArrayList;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    if-lez v0, :cond_4

    .line 141
    .line 142
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 143
    .line 144
    .line 145
    iget-object v0, v5, Lflix/com/vision/activities/MovieDetailActivity;->F0:Ljava/util/ArrayList;

    .line 146
    .line 147
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    invoke-virtual {v1, p1}, Lflix/com/vision/App;->filterList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 156
    .line 157
    .line 158
    iget-object p1, v5, Lflix/com/vision/activities/MovieDetailActivity;->O:LC4/P;

    .line 159
    .line 160
    invoke-virtual {p1}, Lm1/V;->notifyDataSetChanged()V

    .line 161
    .line 162
    .line 163
    iget-object p1, v5, Lflix/com/vision/activities/MovieDetailActivity;->U:Landroidx/recyclerview/widget/RecyclerView;

    .line 164
    .line 165
    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 166
    .line 167
    .line 168
    :cond_4
    return-void

    .line 169
    :pswitch_1
    iget-object v0, v5, Lflix/com/vision/activities/MovieDetailActivity;->l0:Lflix/com/vision/models/Movie;

    .line 170
    .line 171
    invoke-virtual {v0}, Lflix/com/vision/models/Movie;->getType()I

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    invoke-static {p1, v0}, Lflix/com/vision/utils/JsonUtils;->parseDirectorMovies(Lcom/google/gson/JsonElement;I)Ljava/util/ArrayList;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    iget-object v0, v5, Lflix/com/vision/activities/MovieDetailActivity;->I0:Ljava/util/ArrayList;

    .line 180
    .line 181
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    invoke-virtual {v1, p1}, Lflix/com/vision/App;->filterList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 190
    .line 191
    .line 192
    iget-object p1, v5, Lflix/com/vision/activities/MovieDetailActivity;->N:LC4/P;

    .line 193
    .line 194
    invoke-virtual {p1}, Lm1/V;->notifyDataSetChanged()V

    .line 195
    .line 196
    .line 197
    iget-object p1, v5, Lflix/com/vision/activities/MovieDetailActivity;->T:Landroidx/recyclerview/widget/RecyclerView;

    .line 198
    .line 199
    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 200
    .line 201
    .line 202
    return-void

    .line 203
    :pswitch_2
    iget-object v0, v5, Lflix/com/vision/activities/MovieDetailActivity;->l0:Lflix/com/vision/models/Movie;

    .line 204
    .line 205
    invoke-virtual {v0}, Lflix/com/vision/models/Movie;->getType()I

    .line 206
    .line 207
    .line 208
    move-result v0

    .line 209
    invoke-static {p1, v0}, Lflix/com/vision/utils/JsonUtils;->parseCastMovies(Lcom/google/gson/JsonElement;I)Ljava/util/ArrayList;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    iget-object v0, v5, Lflix/com/vision/activities/MovieDetailActivity;->H0:Ljava/util/ArrayList;

    .line 214
    .line 215
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    invoke-virtual {v1, p1}, Lflix/com/vision/App;->filterList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 224
    .line 225
    .line 226
    iget-object p1, v5, Lflix/com/vision/activities/MovieDetailActivity;->M:LC4/P;

    .line 227
    .line 228
    invoke-virtual {p1}, Lm1/V;->notifyDataSetChanged()V

    .line 229
    .line 230
    .line 231
    iget-object p1, v5, Lflix/com/vision/activities/MovieDetailActivity;->S:Landroidx/recyclerview/widget/RecyclerView;

    .line 232
    .line 233
    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 234
    .line 235
    .line 236
    return-void

    .line 237
    :pswitch_3
    iget-object v6, v5, Lflix/com/vision/activities/MovieDetailActivity;->l0:Lflix/com/vision/models/Movie;

    .line 238
    .line 239
    invoke-virtual {v6}, Lflix/com/vision/models/Movie;->getType()I

    .line 240
    .line 241
    .line 242
    move-result v6

    .line 243
    const-string v7, "tv_credits"

    .line 244
    .line 245
    const-string v8, "movie_credits"

    .line 246
    .line 247
    if-nez v6, :cond_7

    .line 248
    .line 249
    invoke-static {p1}, Lflix/com/vision/utils/JsonUtils;->getDirector(Lcom/google/gson/JsonElement;)Lflix/com/vision/models/Writer;

    .line 250
    .line 251
    .line 252
    move-result-object v6

    .line 253
    iget-object v9, v5, Lflix/com/vision/activities/MovieDetailActivity;->v0:Landroid/widget/TextView;

    .line 254
    .line 255
    new-instance v10, Ljava/lang/StringBuilder;

    .line 256
    .line 257
    const-string v11, "FROM "

    .line 258
    .line 259
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v6}, Lflix/com/vision/models/Writer;->getName()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v11

    .line 266
    invoke-virtual {v11}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v11

    .line 270
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v10

    .line 277
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    .line 279
    .line 280
    iget-object v9, v5, Lflix/com/vision/activities/MovieDetailActivity;->p0:Landroid/widget/TextView;

    .line 281
    .line 282
    invoke-virtual {v6}, Lflix/com/vision/models/Writer;->getName()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v10

    .line 286
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {v6}, Lflix/com/vision/models/Writer;->getId()J

    .line 290
    .line 291
    .line 292
    move-result-wide v9

    .line 293
    iget-object v6, v5, Lflix/com/vision/activities/MovieDetailActivity;->b0:Lio/reactivex/disposables/Disposable;

    .line 294
    .line 295
    if-eqz v6, :cond_5

    .line 296
    .line 297
    invoke-interface {v6}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 298
    .line 299
    .line 300
    :cond_5
    iget-object v6, v5, Lflix/com/vision/activities/MovieDetailActivity;->l0:Lflix/com/vision/models/Movie;

    .line 301
    .line 302
    invoke-virtual {v6}, Lflix/com/vision/models/Movie;->getType()I

    .line 303
    .line 304
    .line 305
    move-result v6

    .line 306
    if-nez v6, :cond_6

    .line 307
    .line 308
    move-object v6, v8

    .line 309
    goto :goto_3

    .line 310
    :cond_6
    move-object v6, v7

    .line 311
    :goto_3
    invoke-static {v5, v6, v9, v10, v2}, LD4/a;->getDetailCast(Landroid/content/Context;Ljava/lang/String;JZ)Lio/reactivex/Observable;

    .line 312
    .line 313
    .line 314
    move-result-object v6

    .line 315
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->newThread()Lio/reactivex/Scheduler;

    .line 316
    .line 317
    .line 318
    move-result-object v9

    .line 319
    invoke-virtual {v6, v9}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    .line 320
    .line 321
    .line 322
    move-result-object v6

    .line 323
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    .line 324
    .line 325
    .line 326
    move-result-object v9

    .line 327
    invoke-virtual {v6, v9}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    .line 328
    .line 329
    .line 330
    move-result-object v6

    .line 331
    new-instance v9, Ly4/m0;

    .line 332
    .line 333
    const/4 v10, 0x3

    .line 334
    invoke-direct {v9, v5, v10}, Ly4/m0;-><init>(Lflix/com/vision/activities/MovieDetailActivity;I)V

    .line 335
    .line 336
    .line 337
    new-instance v10, Lx4/d;

    .line 338
    .line 339
    invoke-direct {v10, v1}, Lx4/d;-><init>(I)V

    .line 340
    .line 341
    .line 342
    invoke-virtual {v6, v9, v10}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 343
    .line 344
    .line 345
    move-result-object v6

    .line 346
    iput-object v6, v5, Lflix/com/vision/activities/MovieDetailActivity;->b0:Lio/reactivex/disposables/Disposable;

    .line 347
    .line 348
    :cond_7
    invoke-static {p1}, Lflix/com/vision/utils/JsonUtils;->getWriters(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v6

    .line 352
    iget-object v9, v5, Lflix/com/vision/activities/MovieDetailActivity;->q0:Landroid/widget/TextView;

    .line 353
    .line 354
    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 355
    .line 356
    .line 357
    invoke-static {p1}, Lflix/com/vision/utils/JsonUtils;->parseCast(Lcom/google/gson/JsonElement;)Ljava/util/ArrayList;

    .line 358
    .line 359
    .line 360
    move-result-object p1

    .line 361
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 362
    .line 363
    .line 364
    move-result v6

    .line 365
    if-lez v6, :cond_c

    .line 366
    .line 367
    iget-object v6, v5, Lflix/com/vision/activities/MovieDetailActivity;->G0:Ljava/util/ArrayList;

    .line 368
    .line 369
    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 370
    .line 371
    .line 372
    iget-object v9, v5, Lflix/com/vision/activities/MovieDetailActivity;->l0:Lflix/com/vision/models/Movie;

    .line 373
    .line 374
    invoke-virtual {v9}, Lflix/com/vision/models/Movie;->isSeries()Z

    .line 375
    .line 376
    .line 377
    move-result v9

    .line 378
    if-eqz v9, :cond_8

    .line 379
    .line 380
    iget-object v9, v5, Lflix/com/vision/activities/MovieDetailActivity;->t0:Landroid/widget/TextView;

    .line 381
    .line 382
    new-instance v10, Ljava/lang/StringBuilder;

    .line 383
    .line 384
    const-string v11, "MORE SHOWS WITH "

    .line 385
    .line 386
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 387
    .line 388
    .line 389
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 390
    .line 391
    .line 392
    move-result-object v11

    .line 393
    check-cast v11, Lflix/com/vision/models/Cast;

    .line 394
    .line 395
    invoke-virtual {v11}, Lflix/com/vision/models/Cast;->getName()Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object v11

    .line 399
    invoke-virtual {v11}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object v11

    .line 403
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    .line 405
    .line 406
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v10

    .line 410
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 411
    .line 412
    .line 413
    goto :goto_4

    .line 414
    :cond_8
    iget-object v9, v5, Lflix/com/vision/activities/MovieDetailActivity;->t0:Landroid/widget/TextView;

    .line 415
    .line 416
    new-instance v10, Ljava/lang/StringBuilder;

    .line 417
    .line 418
    const-string v11, "MORE MOVIES WITH "

    .line 419
    .line 420
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 421
    .line 422
    .line 423
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 424
    .line 425
    .line 426
    move-result-object v11

    .line 427
    check-cast v11, Lflix/com/vision/models/Cast;

    .line 428
    .line 429
    invoke-virtual {v11}, Lflix/com/vision/models/Cast;->getName()Ljava/lang/String;

    .line 430
    .line 431
    .line 432
    move-result-object v11

    .line 433
    invoke-virtual {v11}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 434
    .line 435
    .line 436
    move-result-object v11

    .line 437
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    .line 439
    .line 440
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object v10

    .line 444
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 445
    .line 446
    .line 447
    :goto_4
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 448
    .line 449
    .line 450
    move-result-object v6

    .line 451
    check-cast v6, Lflix/com/vision/models/Cast;

    .line 452
    .line 453
    invoke-virtual {v6}, Lflix/com/vision/models/Cast;->getId()J

    .line 454
    .line 455
    .line 456
    move-result-wide v9

    .line 457
    iget-object v6, v5, Lflix/com/vision/activities/MovieDetailActivity;->a0:Lio/reactivex/disposables/Disposable;

    .line 458
    .line 459
    if-eqz v6, :cond_9

    .line 460
    .line 461
    invoke-interface {v6}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 462
    .line 463
    .line 464
    :cond_9
    iget-object v6, v5, Lflix/com/vision/activities/MovieDetailActivity;->l0:Lflix/com/vision/models/Movie;

    .line 465
    .line 466
    invoke-virtual {v6}, Lflix/com/vision/models/Movie;->getType()I

    .line 467
    .line 468
    .line 469
    move-result v6

    .line 470
    if-nez v6, :cond_a

    .line 471
    .line 472
    move-object v7, v8

    .line 473
    :cond_a
    invoke-static {v5, v7, v9, v10, v2}, LD4/a;->getDetailCast(Landroid/content/Context;Ljava/lang/String;JZ)Lio/reactivex/Observable;

    .line 474
    .line 475
    .line 476
    move-result-object v6

    .line 477
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->newThread()Lio/reactivex/Scheduler;

    .line 478
    .line 479
    .line 480
    move-result-object v7

    .line 481
    invoke-virtual {v6, v7}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    .line 482
    .line 483
    .line 484
    move-result-object v6

    .line 485
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    .line 486
    .line 487
    .line 488
    move-result-object v7

    .line 489
    invoke-virtual {v6, v7}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    .line 490
    .line 491
    .line 492
    move-result-object v6

    .line 493
    new-instance v7, Ly4/m0;

    .line 494
    .line 495
    invoke-direct {v7, v5, v0}, Ly4/m0;-><init>(Lflix/com/vision/activities/MovieDetailActivity;I)V

    .line 496
    .line 497
    .line 498
    new-instance v8, Lx4/d;

    .line 499
    .line 500
    invoke-direct {v8, v1}, Lx4/d;-><init>(I)V

    .line 501
    .line 502
    .line 503
    invoke-virtual {v6, v7, v8}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 504
    .line 505
    .line 506
    move-result-object v1

    .line 507
    iput-object v1, v5, Lflix/com/vision/activities/MovieDetailActivity;->a0:Lio/reactivex/disposables/Disposable;

    .line 508
    .line 509
    iget-object v1, v5, Lflix/com/vision/activities/MovieDetailActivity;->P:LC4/r;

    .line 510
    .line 511
    invoke-virtual {v1}, Lm1/V;->notifyDataSetChanged()V

    .line 512
    .line 513
    .line 514
    iget-object v1, v5, Lflix/com/vision/activities/MovieDetailActivity;->R:Landroidx/recyclerview/widget/RecyclerView;

    .line 515
    .line 516
    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 517
    .line 518
    .line 519
    :goto_5
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 520
    .line 521
    .line 522
    move-result v1

    .line 523
    if-ge v4, v1, :cond_e

    .line 524
    .line 525
    invoke-static {v3}, Lb/c;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    .line 527
    .line 528
    move-result-object v1

    .line 529
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 530
    .line 531
    .line 532
    move-result-object v3

    .line 533
    check-cast v3, Lflix/com/vision/models/Cast;

    .line 534
    .line 535
    invoke-virtual {v3}, Lflix/com/vision/models/Cast;->getName()Ljava/lang/String;

    .line 536
    .line 537
    .line 538
    move-result-object v3

    .line 539
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    .line 541
    .line 542
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 543
    .line 544
    .line 545
    move-result-object v1

    .line 546
    if-le v4, v0, :cond_b

    .line 547
    .line 548
    goto :goto_6

    .line 549
    :cond_b
    const-string v3, ", "

    .line 550
    .line 551
    invoke-static {v1, v3}, LA/i;->B(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 552
    .line 553
    .line 554
    move-result-object v3

    .line 555
    add-int/2addr v4, v2

    .line 556
    goto :goto_5

    .line 557
    :cond_c
    iget-object p1, v5, Lflix/com/vision/activities/MovieDetailActivity;->y:Landroid/widget/TextView;

    .line 558
    .line 559
    const/16 v0, 0x8

    .line 560
    .line 561
    if-eqz p1, :cond_d

    .line 562
    .line 563
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 564
    .line 565
    .line 566
    :cond_d
    iget-object p1, v5, Lflix/com/vision/activities/MovieDetailActivity;->R:Landroidx/recyclerview/widget/RecyclerView;

    .line 567
    .line 568
    if-eqz p1, :cond_e

    .line 569
    .line 570
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 571
    .line 572
    .line 573
    :cond_e
    :goto_6
    return-void

    .line 574
    :pswitch_4
    sget v0, Lflix/com/vision/activities/MovieDetailActivity;->S0:I

    .line 575
    .line 576
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 577
    .line 578
    .line 579
    invoke-static {p1}, Lflix/com/vision/utils/JsonUtils;->parseTrailer(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    .line 580
    .line 581
    .line 582
    move-result-object p1

    .line 583
    if-eqz p1, :cond_f

    .line 584
    .line 585
    iput-object p1, v5, Lflix/com/vision/activities/MovieDetailActivity;->M0:Ljava/lang/String;

    .line 586
    .line 587
    :cond_f
    return-void

    .line 588
    nop

    .line 589
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
