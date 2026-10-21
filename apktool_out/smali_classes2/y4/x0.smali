.class public final synthetic Ly4/x0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Lflix/com/vision/activities/MovieDetailActivityLeanBack;


# direct methods
.method public synthetic constructor <init>(Lflix/com/vision/activities/MovieDetailActivityLeanBack;I)V
    .locals 0

    .line 1
    iput p2, p0, Ly4/x0;->b:I

    iput-object p1, p0, Ly4/x0;->e:Lflix/com/vision/activities/MovieDetailActivityLeanBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 13

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const/16 v3, 0x1a

    .line 7
    .line 8
    const/4 v4, 0x1

    .line 9
    const/4 v5, 0x0

    .line 10
    iget-object v6, p0, Ly4/x0;->e:Lflix/com/vision/activities/MovieDetailActivityLeanBack;

    .line 11
    .line 12
    iget v7, p0, Ly4/x0;->b:I

    .line 13
    .line 14
    packed-switch v7, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    check-cast p1, Lcom/google/gson/JsonElement;

    .line 18
    .line 19
    iget-object v7, v6, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->t0:Lflix/com/vision/models/Movie;

    .line 20
    .line 21
    invoke-virtual {v7}, Lflix/com/vision/models/Movie;->getType()I

    .line 22
    .line 23
    .line 24
    move-result v7

    .line 25
    const-string v8, "tv_credits"

    .line 26
    .line 27
    const-string v9, "movie_credits"

    .line 28
    .line 29
    if-nez v7, :cond_2

    .line 30
    .line 31
    invoke-static {p1}, Lflix/com/vision/utils/JsonUtils;->getDirector(Lcom/google/gson/JsonElement;)Lflix/com/vision/models/Writer;

    .line 32
    .line 33
    .line 34
    move-result-object v7

    .line 35
    iget-object v10, v6, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->D0:Landroid/widget/TextView;

    .line 36
    .line 37
    new-instance v11, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v12, "FROM "

    .line 40
    .line 41
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v7}, Lflix/com/vision/models/Writer;->getName()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v12

    .line 48
    invoke-virtual {v12}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v12

    .line 52
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v11

    .line 59
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    .line 61
    .line 62
    iget-object v10, v6, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->x0:Landroid/widget/TextView;

    .line 63
    .line 64
    invoke-virtual {v7}, Lflix/com/vision/models/Writer;->getName()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v11

    .line 68
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v7}, Lflix/com/vision/models/Writer;->getName()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v10

    .line 75
    iput-object v10, v6, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->n:Ljava/lang/String;

    .line 76
    .line 77
    invoke-virtual {v7}, Lflix/com/vision/models/Writer;->getId()J

    .line 78
    .line 79
    .line 80
    move-result-wide v10

    .line 81
    iget-object v7, v6, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->j0:Lio/reactivex/disposables/Disposable;

    .line 82
    .line 83
    if-eqz v7, :cond_0

    .line 84
    .line 85
    invoke-interface {v7}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 86
    .line 87
    .line 88
    :cond_0
    iget-object v7, v6, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->t0:Lflix/com/vision/models/Movie;

    .line 89
    .line 90
    invoke-virtual {v7}, Lflix/com/vision/models/Movie;->getType()I

    .line 91
    .line 92
    .line 93
    move-result v7

    .line 94
    if-nez v7, :cond_1

    .line 95
    .line 96
    move-object v7, v9

    .line 97
    goto :goto_0

    .line 98
    :cond_1
    move-object v7, v8

    .line 99
    :goto_0
    invoke-static {v6, v7, v10, v11, v4}, LD4/a;->getDetailCast(Landroid/content/Context;Ljava/lang/String;JZ)Lio/reactivex/Observable;

    .line 100
    .line 101
    .line 102
    move-result-object v7

    .line 103
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->newThread()Lio/reactivex/Scheduler;

    .line 104
    .line 105
    .line 106
    move-result-object v10

    .line 107
    invoke-virtual {v7, v10}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    .line 108
    .line 109
    .line 110
    move-result-object v7

    .line 111
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    .line 112
    .line 113
    .line 114
    move-result-object v10

    .line 115
    invoke-virtual {v7, v10}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    .line 116
    .line 117
    .line 118
    move-result-object v7

    .line 119
    new-instance v10, Ly4/x0;

    .line 120
    .line 121
    invoke-direct {v10, v6, v2}, Ly4/x0;-><init>(Lflix/com/vision/activities/MovieDetailActivityLeanBack;I)V

    .line 122
    .line 123
    .line 124
    new-instance v11, Lx4/d;

    .line 125
    .line 126
    invoke-direct {v11, v3}, Lx4/d;-><init>(I)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v7, v10, v11}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 130
    .line 131
    .line 132
    move-result-object v7

    .line 133
    iput-object v7, v6, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->j0:Lio/reactivex/disposables/Disposable;

    .line 134
    .line 135
    :cond_2
    invoke-static {p1}, Lflix/com/vision/utils/JsonUtils;->getWritersTV(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v7

    .line 139
    iget-object v10, v6, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->y0:Landroid/widget/TextView;

    .line 140
    .line 141
    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    .line 143
    .line 144
    iget-object v10, v6, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->t0:Lflix/com/vision/models/Movie;

    .line 145
    .line 146
    iput-object v7, v10, Lflix/com/vision/models/Movie;->writers:Ljava/lang/String;

    .line 147
    .line 148
    invoke-static {p1}, Lflix/com/vision/utils/JsonUtils;->parseCast(Lcom/google/gson/JsonElement;)Ljava/util/ArrayList;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 153
    .line 154
    .line 155
    move-result v7

    .line 156
    if-lez v7, :cond_8

    .line 157
    .line 158
    iget-object v0, v6, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->O0:Ljava/util/ArrayList;

    .line 159
    .line 160
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 161
    .line 162
    .line 163
    iget-object v7, v6, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->t0:Lflix/com/vision/models/Movie;

    .line 164
    .line 165
    invoke-virtual {v7}, Lflix/com/vision/models/Movie;->isSeries()Z

    .line 166
    .line 167
    .line 168
    move-result v7

    .line 169
    if-eqz v7, :cond_3

    .line 170
    .line 171
    iget-object v7, v6, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->B0:Landroid/widget/TextView;

    .line 172
    .line 173
    new-instance v10, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    const-string v11, "MORE SHOWS WITH "

    .line 176
    .line 177
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v11

    .line 184
    check-cast v11, Lflix/com/vision/models/Cast;

    .line 185
    .line 186
    invoke-virtual {v11}, Lflix/com/vision/models/Cast;->getName()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v11

    .line 190
    invoke-virtual {v11}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v11

    .line 194
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v10

    .line 201
    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    .line 203
    .line 204
    goto :goto_1

    .line 205
    :cond_3
    iget-object v7, v6, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->B0:Landroid/widget/TextView;

    .line 206
    .line 207
    new-instance v10, Ljava/lang/StringBuilder;

    .line 208
    .line 209
    const-string v11, "MORE MOVIES WITH "

    .line 210
    .line 211
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v11

    .line 218
    check-cast v11, Lflix/com/vision/models/Cast;

    .line 219
    .line 220
    invoke-virtual {v11}, Lflix/com/vision/models/Cast;->getName()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v11

    .line 224
    invoke-virtual {v11}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v11

    .line 228
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v10

    .line 235
    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    .line 237
    .line 238
    :goto_1
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    check-cast v0, Lflix/com/vision/models/Cast;

    .line 243
    .line 244
    invoke-virtual {v0}, Lflix/com/vision/models/Cast;->getId()J

    .line 245
    .line 246
    .line 247
    move-result-wide v10

    .line 248
    iget-object v0, v6, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->i0:Lio/reactivex/disposables/Disposable;

    .line 249
    .line 250
    if-eqz v0, :cond_4

    .line 251
    .line 252
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 253
    .line 254
    .line 255
    :cond_4
    iget-object v0, v6, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->t0:Lflix/com/vision/models/Movie;

    .line 256
    .line 257
    invoke-virtual {v0}, Lflix/com/vision/models/Movie;->getType()I

    .line 258
    .line 259
    .line 260
    move-result v0

    .line 261
    if-nez v0, :cond_5

    .line 262
    .line 263
    move-object v8, v9

    .line 264
    :cond_5
    invoke-static {v6, v8, v10, v11, v4}, LD4/a;->getDetailCast(Landroid/content/Context;Ljava/lang/String;JZ)Lio/reactivex/Observable;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->newThread()Lio/reactivex/Scheduler;

    .line 269
    .line 270
    .line 271
    move-result-object v7

    .line 272
    invoke-virtual {v0, v7}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    .line 277
    .line 278
    .line 279
    move-result-object v7

    .line 280
    invoke-virtual {v0, v7}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    new-instance v7, Ly4/x0;

    .line 285
    .line 286
    const/4 v8, 0x5

    .line 287
    invoke-direct {v7, v6, v8}, Ly4/x0;-><init>(Lflix/com/vision/activities/MovieDetailActivityLeanBack;I)V

    .line 288
    .line 289
    .line 290
    new-instance v8, Lx4/d;

    .line 291
    .line 292
    invoke-direct {v8, v3}, Lx4/d;-><init>(I)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {v0, v7, v8}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    iput-object v0, v6, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->i0:Lio/reactivex/disposables/Disposable;

    .line 300
    .line 301
    iget-object v0, v6, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->X:LC4/r;

    .line 302
    .line 303
    invoke-virtual {v0}, Lm1/V;->notifyDataSetChanged()V

    .line 304
    .line 305
    .line 306
    iget-object v0, v6, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->Z:Landroidx/leanback/widget/HorizontalGridView;

    .line 307
    .line 308
    invoke-virtual {v0, v5}, Landroidx/leanback/widget/t;->smoothScrollToPosition(I)V

    .line 309
    .line 310
    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    .line 312
    .line 313
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 314
    .line 315
    .line 316
    move v3, v5

    .line 317
    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 318
    .line 319
    .line 320
    move-result v7

    .line 321
    if-ge v3, v7, :cond_6

    .line 322
    .line 323
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 324
    .line 325
    .line 326
    move-result-object v7

    .line 327
    check-cast v7, Lflix/com/vision/models/Cast;

    .line 328
    .line 329
    invoke-virtual {v7}, Lflix/com/vision/models/Cast;->getName()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v7

    .line 333
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    const-string v7, "\n"

    .line 337
    .line 338
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    add-int/2addr v3, v4

    .line 342
    goto :goto_2

    .line 343
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v0

    .line 347
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v0

    .line 351
    iput-object v0, v6, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->p:Ljava/lang/String;

    .line 352
    .line 353
    :goto_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 354
    .line 355
    .line 356
    move-result v0

    .line 357
    if-ge v5, v0, :cond_a

    .line 358
    .line 359
    invoke-static {v1}, Lb/c;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    .line 361
    .line 362
    move-result-object v0

    .line 363
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 364
    .line 365
    .line 366
    move-result-object v1

    .line 367
    check-cast v1, Lflix/com/vision/models/Cast;

    .line 368
    .line 369
    invoke-virtual {v1}, Lflix/com/vision/models/Cast;->getName()Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v1

    .line 373
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    .line 375
    .line 376
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object v0

    .line 380
    if-le v5, v2, :cond_7

    .line 381
    .line 382
    goto :goto_4

    .line 383
    :cond_7
    const-string v1, ", "

    .line 384
    .line 385
    invoke-static {v0, v1}, LA/i;->B(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v1

    .line 389
    add-int/2addr v5, v4

    .line 390
    goto :goto_3

    .line 391
    :cond_8
    iget-object p1, v6, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->F:Landroid/widget/TextView;

    .line 392
    .line 393
    if-eqz p1, :cond_9

    .line 394
    .line 395
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 396
    .line 397
    .line 398
    :cond_9
    iget-object p1, v6, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->Z:Landroidx/leanback/widget/HorizontalGridView;

    .line 399
    .line 400
    if-eqz p1, :cond_a

    .line 401
    .line 402
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 403
    .line 404
    .line 405
    :cond_a
    :goto_4
    return-void

    .line 406
    :pswitch_0
    check-cast p1, Lcom/google/gson/JsonElement;

    .line 407
    .line 408
    sget v0, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->a1:I

    .line 409
    .line 410
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 411
    .line 412
    .line 413
    invoke-static {p1}, Lflix/com/vision/utils/JsonUtils;->availableOnStreamingServices(Lcom/google/gson/JsonElement;)Z

    .line 414
    .line 415
    .line 416
    move-result p1

    .line 417
    if-eqz p1, :cond_b

    .line 418
    .line 419
    iget-object p1, v6, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->K:Landroid/widget/TextView;

    .line 420
    .line 421
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 422
    .line 423
    .line 424
    goto :goto_7

    .line 425
    :cond_b
    iget-object p1, v6, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->t0:Lflix/com/vision/models/Movie;

    .line 426
    .line 427
    invoke-virtual {p1}, Lflix/com/vision/models/Movie;->isSeries()Z

    .line 428
    .line 429
    .line 430
    move-result p1

    .line 431
    if-nez p1, :cond_e

    .line 432
    .line 433
    iget-object p1, v6, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->t0:Lflix/com/vision/models/Movie;

    .line 434
    .line 435
    iget-object p1, p1, Lflix/com/vision/models/Movie;->rawReleaseDate:Ljava/lang/String;

    .line 436
    .line 437
    if-eqz p1, :cond_d

    .line 438
    .line 439
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 440
    .line 441
    .line 442
    move-result p1

    .line 443
    if-eqz p1, :cond_c

    .line 444
    .line 445
    goto :goto_5

    .line 446
    :cond_c
    :try_start_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 447
    .line 448
    if-lt p1, v3, :cond_d

    .line 449
    .line 450
    invoke-static {}, Lt2/a;->i()Ljava/time/format/DateTimeFormatter;

    .line 451
    .line 452
    .line 453
    move-result-object p1

    .line 454
    iget-object v0, v6, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->t0:Lflix/com/vision/models/Movie;

    .line 455
    .line 456
    iget-object v0, v0, Lflix/com/vision/models/Movie;->rawReleaseDate:Ljava/lang/String;

    .line 457
    .line 458
    const-string v2, "-"

    .line 459
    .line 460
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 461
    .line 462
    .line 463
    move-result-object v0

    .line 464
    invoke-static {v0, p1}, Lt2/a;->g(Ljava/lang/String;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDate;

    .line 465
    .line 466
    .line 467
    move-result-object p1

    .line 468
    invoke-static {}, Lt2/a;->f()Ljava/time/LocalDate;

    .line 469
    .line 470
    .line 471
    move-result-object v0

    .line 472
    invoke-static {p1}, Lt2/a;->h(Ljava/time/LocalDate;)Ljava/time/LocalDate;

    .line 473
    .line 474
    .line 475
    move-result-object p1

    .line 476
    invoke-static {v0, p1}, Lt2/a;->m(Ljava/time/LocalDate;Ljava/time/LocalDate;)Z

    .line 477
    .line 478
    .line 479
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 480
    goto :goto_6

    .line 481
    :catch_0
    move-exception p1

    .line 482
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 483
    .line 484
    .line 485
    :cond_d
    :goto_5
    move p1, v5

    .line 486
    :goto_6
    if-nez p1, :cond_e

    .line 487
    .line 488
    iget-object p1, v6, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->K:Landroid/widget/TextView;

    .line 489
    .line 490
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 491
    .line 492
    .line 493
    iget-object p1, v6, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->K:Landroid/widget/TextView;

    .line 494
    .line 495
    const-string v0, "  CAM"

    .line 496
    .line 497
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 498
    .line 499
    .line 500
    iget-object p1, v6, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->K:Landroid/widget/TextView;

    .line 501
    .line 502
    invoke-virtual {v6}, Le/v;->getResources()Landroid/content/res/Resources;

    .line 503
    .line 504
    .line 505
    move-result-object v0

    .line 506
    sget v1, Lflix/com/vision/R$color;->md_red_500:I

    .line 507
    .line 508
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 509
    .line 510
    .line 511
    move-result v0

    .line 512
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 513
    .line 514
    .line 515
    :cond_e
    :goto_7
    return-void

    .line 516
    :pswitch_1
    check-cast p1, Lcom/google/gson/JsonElement;

    .line 517
    .line 518
    iget-object v0, v6, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->t0:Lflix/com/vision/models/Movie;

    .line 519
    .line 520
    invoke-virtual {v0}, Lflix/com/vision/models/Movie;->getType()I

    .line 521
    .line 522
    .line 523
    move-result v0

    .line 524
    invoke-static {p1, v0}, Lflix/com/vision/utils/JsonUtils;->parseCastMovies(Lcom/google/gson/JsonElement;I)Ljava/util/ArrayList;

    .line 525
    .line 526
    .line 527
    move-result-object p1

    .line 528
    iget-object v0, v6, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->P0:Ljava/util/ArrayList;

    .line 529
    .line 530
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 531
    .line 532
    .line 533
    move-result-object v1

    .line 534
    invoke-virtual {v1, p1}, Lflix/com/vision/App;->filterList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 535
    .line 536
    .line 537
    move-result-object p1

    .line 538
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 539
    .line 540
    .line 541
    iget-object p1, v6, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->U:LC4/P;

    .line 542
    .line 543
    invoke-virtual {p1}, Lm1/V;->notifyDataSetChanged()V

    .line 544
    .line 545
    .line 546
    iget-object p1, v6, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->a0:Landroidx/leanback/widget/HorizontalGridView;

    .line 547
    .line 548
    invoke-virtual {p1, v5}, Landroidx/leanback/widget/t;->smoothScrollToPosition(I)V

    .line 549
    .line 550
    .line 551
    return-void

    .line 552
    :pswitch_2
    check-cast p1, Lcom/google/gson/JsonElement;

    .line 553
    .line 554
    sget v0, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->a1:I

    .line 555
    .line 556
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 557
    .line 558
    .line 559
    invoke-static {p1}, Lflix/com/vision/utils/JsonUtils;->parseSuggestions(Lcom/google/gson/JsonElement;)Ljava/util/ArrayList;

    .line 560
    .line 561
    .line 562
    move-result-object p1

    .line 563
    :try_start_1
    iget-object v0, v6, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->m0:Lflix/com/vision/materialsearchview/MaterialSearchView;

    .line 564
    .line 565
    invoke-virtual {v0}, Lflix/com/vision/materialsearchview/MaterialSearchView;->clearSuggestions()V

    .line 566
    .line 567
    .line 568
    iget-object v0, v6, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->m0:Lflix/com/vision/materialsearchview/MaterialSearchView;

    .line 569
    .line 570
    invoke-virtual {v0, p1}, Lflix/com/vision/materialsearchview/MaterialSearchView;->addSuggestions(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 571
    .line 572
    .line 573
    :catch_1
    return-void

    .line 574
    :pswitch_3
    check-cast p1, Lcom/google/gson/JsonElement;

    .line 575
    .line 576
    sget v0, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->a1:I

    .line 577
    .line 578
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 579
    .line 580
    .line 581
    invoke-static {p1, v5}, Lflix/com/vision/utils/JsonUtils;->parseCollectionMovies(Lcom/google/gson/JsonElement;I)Ljava/util/ArrayList;

    .line 582
    .line 583
    .line 584
    move-result-object p1

    .line 585
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 586
    .line 587
    .line 588
    move-result v0

    .line 589
    if-lez v0, :cond_f

    .line 590
    .line 591
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 592
    .line 593
    .line 594
    iget-object v0, v6, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->N0:Ljava/util/ArrayList;

    .line 595
    .line 596
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 597
    .line 598
    .line 599
    move-result-object v1

    .line 600
    invoke-virtual {v1, p1}, Lflix/com/vision/App;->filterList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 601
    .line 602
    .line 603
    move-result-object p1

    .line 604
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 605
    .line 606
    .line 607
    iget-object p1, v6, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->W:LC4/P;

    .line 608
    .line 609
    invoke-virtual {p1}, Lm1/V;->notifyDataSetChanged()V

    .line 610
    .line 611
    .line 612
    iget-object p1, v6, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->c0:Landroidx/leanback/widget/HorizontalGridView;

    .line 613
    .line 614
    invoke-virtual {p1, v5}, Landroidx/leanback/widget/t;->smoothScrollToPosition(I)V

    .line 615
    .line 616
    .line 617
    :cond_f
    return-void

    .line 618
    :pswitch_4
    check-cast p1, Lcom/google/gson/JsonElement;

    .line 619
    .line 620
    iget-object v0, v6, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->t0:Lflix/com/vision/models/Movie;

    .line 621
    .line 622
    invoke-virtual {v0}, Lflix/com/vision/models/Movie;->getType()I

    .line 623
    .line 624
    .line 625
    move-result v0

    .line 626
    invoke-static {p1, v0}, Lflix/com/vision/utils/JsonUtils;->parseDirectorMovies(Lcom/google/gson/JsonElement;I)Ljava/util/ArrayList;

    .line 627
    .line 628
    .line 629
    move-result-object p1

    .line 630
    iget-object v0, v6, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->Q0:Ljava/util/ArrayList;

    .line 631
    .line 632
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 633
    .line 634
    .line 635
    move-result-object v1

    .line 636
    invoke-virtual {v1, p1}, Lflix/com/vision/App;->filterList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 637
    .line 638
    .line 639
    move-result-object p1

    .line 640
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 641
    .line 642
    .line 643
    iget-object p1, v6, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->V:LC4/P;

    .line 644
    .line 645
    invoke-virtual {p1}, Lm1/V;->notifyDataSetChanged()V

    .line 646
    .line 647
    .line 648
    iget-object p1, v6, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->b0:Landroidx/leanback/widget/HorizontalGridView;

    .line 649
    .line 650
    invoke-virtual {p1, v5}, Landroidx/leanback/widget/t;->smoothScrollToPosition(I)V

    .line 651
    .line 652
    .line 653
    return-void

    .line 654
    :pswitch_5
    check-cast p1, Ljava/lang/Throwable;

    .line 655
    .line 656
    iget-object p1, v6, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->v:Landroid/widget/ImageView;

    .line 657
    .line 658
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 659
    .line 660
    .line 661
    iget-object p1, v6, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->K0:Lme/grantland/widget/AutofitTextView;

    .line 662
    .line 663
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 664
    .line 665
    .line 666
    return-void

    .line 667
    :pswitch_6
    check-cast p1, Lcom/google/gson/JsonElement;

    .line 668
    .line 669
    sget v0, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->a1:I

    .line 670
    .line 671
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 672
    .line 673
    .line 674
    invoke-static {p1}, Lflix/com/vision/utils/JsonUtils;->parseTrailer(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    .line 675
    .line 676
    .line 677
    move-result-object p1

    .line 678
    if-eqz p1, :cond_10

    .line 679
    .line 680
    iput-object p1, v6, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->U0:Ljava/lang/String;

    .line 681
    .line 682
    :cond_10
    return-void

    .line 683
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
