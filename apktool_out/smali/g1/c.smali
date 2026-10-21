.class public final Lg1/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final f:Lg1/a;


# instance fields
.field public final a:[I

.field public final b:[I

.field public final c:Ljava/util/ArrayList;

.field public final d:[Lg1/d;

.field public final e:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lg1/a;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lg1/c;->f:Lg1/a;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>([II[Lg1/d;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    const/4 v3, 0x3

    .line 11
    new-array v3, v3, [F

    .line 12
    .line 13
    iput-object v3, v0, Lg1/c;->e:[F

    .line 14
    .line 15
    move-object/from16 v3, p3

    .line 16
    .line 17
    iput-object v3, v0, Lg1/c;->d:[Lg1/d;

    .line 18
    .line 19
    const v3, 0x8000

    .line 20
    .line 21
    .line 22
    new-array v4, v3, [I

    .line 23
    .line 24
    iput-object v4, v0, Lg1/c;->b:[I

    .line 25
    .line 26
    const/4 v5, 0x0

    .line 27
    move v6, v5

    .line 28
    :goto_0
    array-length v7, v1

    .line 29
    const/16 v8, 0x8

    .line 30
    .line 31
    const/4 v9, 0x5

    .line 32
    const/4 v10, 0x1

    .line 33
    if-ge v6, v7, :cond_0

    .line 34
    .line 35
    aget v7, v1, v6

    .line 36
    .line 37
    invoke-static {v7}, Landroid/graphics/Color;->red(I)I

    .line 38
    .line 39
    .line 40
    move-result v11

    .line 41
    invoke-static {v11, v8, v9}, Lg1/c;->b(III)I

    .line 42
    .line 43
    .line 44
    move-result v11

    .line 45
    invoke-static {v7}, Landroid/graphics/Color;->green(I)I

    .line 46
    .line 47
    .line 48
    move-result v12

    .line 49
    invoke-static {v12, v8, v9}, Lg1/c;->b(III)I

    .line 50
    .line 51
    .line 52
    move-result v12

    .line 53
    invoke-static {v7}, Landroid/graphics/Color;->blue(I)I

    .line 54
    .line 55
    .line 56
    move-result v7

    .line 57
    invoke-static {v7, v8, v9}, Lg1/c;->b(III)I

    .line 58
    .line 59
    .line 60
    move-result v7

    .line 61
    shl-int/lit8 v8, v11, 0xa

    .line 62
    .line 63
    shl-int/lit8 v9, v12, 0x5

    .line 64
    .line 65
    or-int/2addr v8, v9

    .line 66
    or-int/2addr v7, v8

    .line 67
    aput v7, v1, v6

    .line 68
    .line 69
    aget v8, v4, v7

    .line 70
    .line 71
    add-int/2addr v8, v10

    .line 72
    aput v8, v4, v7

    .line 73
    .line 74
    add-int/lit8 v6, v6, 0x1

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_0
    move v1, v5

    .line 78
    move v6, v1

    .line 79
    :goto_1
    if-ge v1, v3, :cond_3

    .line 80
    .line 81
    aget v7, v4, v1

    .line 82
    .line 83
    if-lez v7, :cond_1

    .line 84
    .line 85
    shr-int/lit8 v7, v1, 0xa

    .line 86
    .line 87
    and-int/lit8 v7, v7, 0x1f

    .line 88
    .line 89
    shr-int/lit8 v11, v1, 0x5

    .line 90
    .line 91
    and-int/lit8 v11, v11, 0x1f

    .line 92
    .line 93
    and-int/lit8 v12, v1, 0x1f

    .line 94
    .line 95
    invoke-static {v7, v9, v8}, Lg1/c;->b(III)I

    .line 96
    .line 97
    .line 98
    move-result v7

    .line 99
    invoke-static {v11, v9, v8}, Lg1/c;->b(III)I

    .line 100
    .line 101
    .line 102
    move-result v11

    .line 103
    invoke-static {v12, v9, v8}, Lg1/c;->b(III)I

    .line 104
    .line 105
    .line 106
    move-result v12

    .line 107
    invoke-static {v7, v11, v12}, Landroid/graphics/Color;->rgb(III)I

    .line 108
    .line 109
    .line 110
    move-result v7

    .line 111
    iget-object v11, v0, Lg1/c;->e:[F

    .line 112
    .line 113
    invoke-static {v7, v11}, LD/a;->colorToHSL(I[F)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, v7, v11}, Lg1/c;->c(I[F)Z

    .line 117
    .line 118
    .line 119
    move-result v7

    .line 120
    if-eqz v7, :cond_1

    .line 121
    .line 122
    aput v5, v4, v1

    .line 123
    .line 124
    :cond_1
    aget v7, v4, v1

    .line 125
    .line 126
    if-lez v7, :cond_2

    .line 127
    .line 128
    add-int/lit8 v6, v6, 0x1

    .line 129
    .line 130
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_3
    new-array v1, v6, [I

    .line 134
    .line 135
    iput-object v1, v0, Lg1/c;->a:[I

    .line 136
    .line 137
    move v7, v5

    .line 138
    move v11, v7

    .line 139
    :goto_2
    if-ge v7, v3, :cond_5

    .line 140
    .line 141
    aget v12, v4, v7

    .line 142
    .line 143
    if-lez v12, :cond_4

    .line 144
    .line 145
    add-int/lit8 v12, v11, 0x1

    .line 146
    .line 147
    aput v7, v1, v11

    .line 148
    .line 149
    move v11, v12

    .line 150
    :cond_4
    add-int/lit8 v7, v7, 0x1

    .line 151
    .line 152
    goto :goto_2

    .line 153
    :cond_5
    if-gt v6, v2, :cond_7

    .line 154
    .line 155
    new-instance v2, Ljava/util/ArrayList;

    .line 156
    .line 157
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 158
    .line 159
    .line 160
    iput-object v2, v0, Lg1/c;->c:Ljava/util/ArrayList;

    .line 161
    .line 162
    :goto_3
    if-ge v5, v6, :cond_6

    .line 163
    .line 164
    aget v2, v1, v5

    .line 165
    .line 166
    iget-object v3, v0, Lg1/c;->c:Ljava/util/ArrayList;

    .line 167
    .line 168
    new-instance v7, Lg1/f;

    .line 169
    .line 170
    shr-int/lit8 v10, v2, 0xa

    .line 171
    .line 172
    and-int/lit8 v10, v10, 0x1f

    .line 173
    .line 174
    shr-int/lit8 v11, v2, 0x5

    .line 175
    .line 176
    and-int/lit8 v11, v11, 0x1f

    .line 177
    .line 178
    and-int/lit8 v12, v2, 0x1f

    .line 179
    .line 180
    invoke-static {v10, v9, v8}, Lg1/c;->b(III)I

    .line 181
    .line 182
    .line 183
    move-result v10

    .line 184
    invoke-static {v11, v9, v8}, Lg1/c;->b(III)I

    .line 185
    .line 186
    .line 187
    move-result v11

    .line 188
    invoke-static {v12, v9, v8}, Lg1/c;->b(III)I

    .line 189
    .line 190
    .line 191
    move-result v12

    .line 192
    invoke-static {v10, v11, v12}, Landroid/graphics/Color;->rgb(III)I

    .line 193
    .line 194
    .line 195
    move-result v10

    .line 196
    aget v2, v4, v2

    .line 197
    .line 198
    invoke-direct {v7, v10, v2}, Lg1/f;-><init>(II)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    add-int/lit8 v5, v5, 0x1

    .line 205
    .line 206
    goto :goto_3

    .line 207
    :cond_6
    return-void

    .line 208
    :cond_7
    new-instance v1, Ljava/util/PriorityQueue;

    .line 209
    .line 210
    sget-object v3, Lg1/c;->f:Lg1/a;

    .line 211
    .line 212
    invoke-direct {v1, v2, v3}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    .line 213
    .line 214
    .line 215
    new-instance v3, Lg1/b;

    .line 216
    .line 217
    iget-object v4, v0, Lg1/c;->a:[I

    .line 218
    .line 219
    array-length v4, v4

    .line 220
    sub-int/2addr v4, v10

    .line 221
    invoke-direct {v3, v0, v5, v4}, Lg1/b;-><init>(Lg1/c;II)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v1, v3}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    :goto_4
    invoke-virtual {v1}, Ljava/util/PriorityQueue;->size()I

    .line 228
    .line 229
    .line 230
    move-result v3

    .line 231
    if-ge v3, v2, :cond_d

    .line 232
    .line 233
    invoke-virtual {v1}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v3

    .line 237
    check-cast v3, Lg1/b;

    .line 238
    .line 239
    if-eqz v3, :cond_d

    .line 240
    .line 241
    iget v4, v3, Lg1/b;->b:I

    .line 242
    .line 243
    add-int/lit8 v6, v4, 0x1

    .line 244
    .line 245
    iget v7, v3, Lg1/b;->a:I

    .line 246
    .line 247
    sub-int/2addr v6, v7

    .line 248
    if-le v6, v10, :cond_d

    .line 249
    .line 250
    add-int/lit8 v6, v4, 0x1

    .line 251
    .line 252
    sub-int/2addr v6, v7

    .line 253
    if-le v6, v10, :cond_c

    .line 254
    .line 255
    iget v6, v3, Lg1/b;->e:I

    .line 256
    .line 257
    iget v11, v3, Lg1/b;->d:I

    .line 258
    .line 259
    sub-int/2addr v6, v11

    .line 260
    iget v11, v3, Lg1/b;->g:I

    .line 261
    .line 262
    iget v12, v3, Lg1/b;->f:I

    .line 263
    .line 264
    sub-int/2addr v11, v12

    .line 265
    iget v12, v3, Lg1/b;->i:I

    .line 266
    .line 267
    iget v13, v3, Lg1/b;->h:I

    .line 268
    .line 269
    sub-int/2addr v12, v13

    .line 270
    if-lt v6, v11, :cond_8

    .line 271
    .line 272
    if-lt v6, v12, :cond_8

    .line 273
    .line 274
    const/4 v6, -0x3

    .line 275
    goto :goto_5

    .line 276
    :cond_8
    if-lt v11, v6, :cond_9

    .line 277
    .line 278
    if-lt v11, v12, :cond_9

    .line 279
    .line 280
    const/4 v6, -0x2

    .line 281
    goto :goto_5

    .line 282
    :cond_9
    const/4 v6, -0x1

    .line 283
    :goto_5
    iget-object v11, v3, Lg1/b;->j:Lg1/c;

    .line 284
    .line 285
    iget-object v12, v11, Lg1/c;->a:[I

    .line 286
    .line 287
    invoke-static {v12, v6, v7, v4}, Lg1/c;->a([IIII)V

    .line 288
    .line 289
    .line 290
    iget v4, v3, Lg1/b;->b:I

    .line 291
    .line 292
    add-int/2addr v4, v10

    .line 293
    invoke-static {v12, v7, v4}, Ljava/util/Arrays;->sort([III)V

    .line 294
    .line 295
    .line 296
    iget v4, v3, Lg1/b;->b:I

    .line 297
    .line 298
    invoke-static {v12, v6, v7, v4}, Lg1/c;->a([IIII)V

    .line 299
    .line 300
    .line 301
    iget v4, v3, Lg1/b;->c:I

    .line 302
    .line 303
    div-int/lit8 v4, v4, 0x2

    .line 304
    .line 305
    move v13, v5

    .line 306
    move v6, v7

    .line 307
    :goto_6
    iget v14, v3, Lg1/b;->b:I

    .line 308
    .line 309
    if-gt v6, v14, :cond_b

    .line 310
    .line 311
    aget v15, v12, v6

    .line 312
    .line 313
    iget-object v5, v11, Lg1/c;->b:[I

    .line 314
    .line 315
    aget v5, v5, v15

    .line 316
    .line 317
    add-int/2addr v13, v5

    .line 318
    if-lt v13, v4, :cond_a

    .line 319
    .line 320
    add-int/lit8 v14, v14, -0x1

    .line 321
    .line 322
    invoke-static {v14, v6}, Ljava/lang/Math;->min(II)I

    .line 323
    .line 324
    .line 325
    move-result v7

    .line 326
    goto :goto_7

    .line 327
    :cond_a
    add-int/lit8 v6, v6, 0x1

    .line 328
    .line 329
    const/4 v5, 0x0

    .line 330
    goto :goto_6

    .line 331
    :cond_b
    :goto_7
    new-instance v4, Lg1/b;

    .line 332
    .line 333
    add-int/lit8 v5, v7, 0x1

    .line 334
    .line 335
    iget v6, v3, Lg1/b;->b:I

    .line 336
    .line 337
    invoke-direct {v4, v11, v5, v6}, Lg1/b;-><init>(Lg1/c;II)V

    .line 338
    .line 339
    .line 340
    iput v7, v3, Lg1/b;->b:I

    .line 341
    .line 342
    invoke-virtual {v3}, Lg1/b;->a()V

    .line 343
    .line 344
    .line 345
    invoke-virtual {v1, v4}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    .line 346
    .line 347
    .line 348
    invoke-virtual {v1, v3}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    .line 349
    .line 350
    .line 351
    const/4 v5, 0x0

    .line 352
    goto :goto_4

    .line 353
    :cond_c
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 354
    .line 355
    const-string v2, "Can not split a box with only 1 color"

    .line 356
    .line 357
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 358
    .line 359
    .line 360
    throw v1

    .line 361
    :cond_d
    new-instance v2, Ljava/util/ArrayList;

    .line 362
    .line 363
    invoke-virtual {v1}, Ljava/util/PriorityQueue;->size()I

    .line 364
    .line 365
    .line 366
    move-result v3

    .line 367
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 368
    .line 369
    .line 370
    invoke-virtual {v1}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    .line 371
    .line 372
    .line 373
    move-result-object v1

    .line 374
    :cond_e
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 375
    .line 376
    .line 377
    move-result v3

    .line 378
    if-eqz v3, :cond_10

    .line 379
    .line 380
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 381
    .line 382
    .line 383
    move-result-object v3

    .line 384
    check-cast v3, Lg1/b;

    .line 385
    .line 386
    iget-object v4, v3, Lg1/b;->j:Lg1/c;

    .line 387
    .line 388
    iget-object v5, v4, Lg1/c;->a:[I

    .line 389
    .line 390
    iget v6, v3, Lg1/b;->a:I

    .line 391
    .line 392
    const/4 v7, 0x0

    .line 393
    const/4 v10, 0x0

    .line 394
    const/4 v11, 0x0

    .line 395
    const/4 v12, 0x0

    .line 396
    :goto_9
    iget v13, v3, Lg1/b;->b:I

    .line 397
    .line 398
    if-gt v6, v13, :cond_f

    .line 399
    .line 400
    aget v13, v5, v6

    .line 401
    .line 402
    iget-object v14, v4, Lg1/c;->b:[I

    .line 403
    .line 404
    aget v14, v14, v13

    .line 405
    .line 406
    add-int/2addr v10, v14

    .line 407
    shr-int/lit8 v15, v13, 0xa

    .line 408
    .line 409
    and-int/lit8 v15, v15, 0x1f

    .line 410
    .line 411
    mul-int/2addr v15, v14

    .line 412
    add-int/2addr v7, v15

    .line 413
    shr-int/lit8 v15, v13, 0x5

    .line 414
    .line 415
    and-int/lit8 v15, v15, 0x1f

    .line 416
    .line 417
    mul-int/2addr v15, v14

    .line 418
    add-int/2addr v11, v15

    .line 419
    and-int/lit8 v13, v13, 0x1f

    .line 420
    .line 421
    mul-int/2addr v14, v13

    .line 422
    add-int/2addr v12, v14

    .line 423
    add-int/lit8 v6, v6, 0x1

    .line 424
    .line 425
    goto :goto_9

    .line 426
    :cond_f
    int-to-float v3, v7

    .line 427
    int-to-float v4, v10

    .line 428
    div-float/2addr v3, v4

    .line 429
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 430
    .line 431
    .line 432
    move-result v3

    .line 433
    int-to-float v5, v11

    .line 434
    div-float/2addr v5, v4

    .line 435
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 436
    .line 437
    .line 438
    move-result v5

    .line 439
    int-to-float v6, v12

    .line 440
    div-float/2addr v6, v4

    .line 441
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    .line 442
    .line 443
    .line 444
    move-result v4

    .line 445
    new-instance v6, Lg1/f;

    .line 446
    .line 447
    invoke-static {v3, v9, v8}, Lg1/c;->b(III)I

    .line 448
    .line 449
    .line 450
    move-result v3

    .line 451
    invoke-static {v5, v9, v8}, Lg1/c;->b(III)I

    .line 452
    .line 453
    .line 454
    move-result v5

    .line 455
    invoke-static {v4, v9, v8}, Lg1/c;->b(III)I

    .line 456
    .line 457
    .line 458
    move-result v4

    .line 459
    invoke-static {v3, v5, v4}, Landroid/graphics/Color;->rgb(III)I

    .line 460
    .line 461
    .line 462
    move-result v3

    .line 463
    invoke-direct {v6, v3, v10}, Lg1/f;-><init>(II)V

    .line 464
    .line 465
    .line 466
    invoke-virtual {v6}, Lg1/f;->getRgb()I

    .line 467
    .line 468
    .line 469
    move-result v3

    .line 470
    invoke-virtual {v6}, Lg1/f;->getHsl()[F

    .line 471
    .line 472
    .line 473
    move-result-object v4

    .line 474
    invoke-virtual {v0, v3, v4}, Lg1/c;->c(I[F)Z

    .line 475
    .line 476
    .line 477
    move-result v3

    .line 478
    if-nez v3, :cond_e

    .line 479
    .line 480
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 481
    .line 482
    .line 483
    goto :goto_8

    .line 484
    :cond_10
    iput-object v2, v0, Lg1/c;->c:Ljava/util/ArrayList;

    .line 485
    .line 486
    return-void
.end method

.method public static a([IIII)V
    .locals 2

    .line 1
    const/4 v0, -0x2

    .line 2
    if-eq p1, v0, :cond_1

    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    if-eq p1, v0, :cond_0

    .line 6
    .line 7
    goto :goto_2

    .line 8
    :cond_0
    :goto_0
    if-gt p2, p3, :cond_2

    .line 9
    .line 10
    aget p1, p0, p2

    .line 11
    .line 12
    and-int/lit8 v0, p1, 0x1f

    .line 13
    .line 14
    shl-int/lit8 v0, v0, 0xa

    .line 15
    .line 16
    shr-int/lit8 v1, p1, 0x5

    .line 17
    .line 18
    and-int/lit8 v1, v1, 0x1f

    .line 19
    .line 20
    shl-int/lit8 v1, v1, 0x5

    .line 21
    .line 22
    or-int/2addr v0, v1

    .line 23
    shr-int/lit8 p1, p1, 0xa

    .line 24
    .line 25
    and-int/lit8 p1, p1, 0x1f

    .line 26
    .line 27
    or-int/2addr p1, v0

    .line 28
    aput p1, p0, p2

    .line 29
    .line 30
    add-int/lit8 p2, p2, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    :goto_1
    if-gt p2, p3, :cond_2

    .line 34
    .line 35
    aget p1, p0, p2

    .line 36
    .line 37
    shr-int/lit8 v0, p1, 0x5

    .line 38
    .line 39
    and-int/lit8 v0, v0, 0x1f

    .line 40
    .line 41
    shl-int/lit8 v0, v0, 0xa

    .line 42
    .line 43
    shr-int/lit8 v1, p1, 0xa

    .line 44
    .line 45
    and-int/lit8 v1, v1, 0x1f

    .line 46
    .line 47
    shl-int/lit8 v1, v1, 0x5

    .line 48
    .line 49
    or-int/2addr v0, v1

    .line 50
    and-int/lit8 p1, p1, 0x1f

    .line 51
    .line 52
    or-int/2addr p1, v0

    .line 53
    aput p1, p0, p2

    .line 54
    .line 55
    add-int/lit8 p2, p2, 0x1

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_2
    :goto_2
    return-void
.end method

.method public static b(III)I
    .locals 0

    .line 1
    if-le p2, p1, :cond_0

    .line 2
    .line 3
    sub-int p1, p2, p1

    .line 4
    .line 5
    shl-int/2addr p0, p1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    sub-int/2addr p1, p2

    .line 8
    shr-int/2addr p0, p1

    .line 9
    :goto_0
    const/4 p1, 0x1

    .line 10
    shl-int p2, p1, p2

    .line 11
    .line 12
    sub-int/2addr p2, p1

    .line 13
    and-int/2addr p0, p2

    .line 14
    return p0
.end method


# virtual methods
.method public final c(I[F)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lg1/c;->d:[Lg1/d;

    .line 3
    .line 4
    if-eqz v1, :cond_1

    .line 5
    .line 6
    array-length v2, v1

    .line 7
    if-lez v2, :cond_1

    .line 8
    .line 9
    array-length v2, v1

    .line 10
    move v3, v0

    .line 11
    :goto_0
    if-ge v3, v2, :cond_1

    .line 12
    .line 13
    aget-object v4, v1, v3

    .line 14
    .line 15
    invoke-virtual {v4, p1, p2}, Lg1/d;->isAllowed(I[F)Z

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    if-nez v4, :cond_0

    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    return p1

    .line 23
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    return v0
.end method
