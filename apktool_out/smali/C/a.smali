.class public final LC/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:F

.field public final b:F

.field public final c:F

.field public final d:F

.field public final e:F

.field public final f:F


# direct methods
.method public constructor <init>(FFFFFF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, LC/a;->a:F

    .line 5
    .line 6
    iput p2, p0, LC/a;->b:F

    .line 7
    .line 8
    iput p3, p0, LC/a;->c:F

    .line 9
    .line 10
    iput p4, p0, LC/a;->d:F

    .line 11
    .line 12
    iput p5, p0, LC/a;->e:F

    .line 13
    .line 14
    iput p6, p0, LC/a;->f:F

    .line 15
    .line 16
    return-void
.end method

.method public static a(I)LC/a;
    .locals 21

    .line 1
    sget-object v0, LC/w;->k:LC/w;

    .line 2
    .line 3
    invoke-static/range {p0 .. p0}, Landroid/graphics/Color;->red(I)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static {v1}, LC/b;->b(I)F

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-static/range {p0 .. p0}, Landroid/graphics/Color;->green(I)I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    invoke-static {v2}, LC/b;->b(I)F

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-static/range {p0 .. p0}, Landroid/graphics/Color;->blue(I)I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    invoke-static {v3}, LC/b;->b(I)F

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    sget-object v4, LC/b;->d:[[F

    .line 28
    .line 29
    const/4 v5, 0x0

    .line 30
    aget-object v6, v4, v5

    .line 31
    .line 32
    aget v7, v6, v5

    .line 33
    .line 34
    mul-float/2addr v7, v1

    .line 35
    const/4 v8, 0x1

    .line 36
    aget v9, v6, v8

    .line 37
    .line 38
    mul-float/2addr v9, v2

    .line 39
    add-float/2addr v9, v7

    .line 40
    const/4 v7, 0x2

    .line 41
    aget v6, v6, v7

    .line 42
    .line 43
    mul-float/2addr v6, v3

    .line 44
    add-float/2addr v6, v9

    .line 45
    aget-object v9, v4, v8

    .line 46
    .line 47
    aget v10, v9, v5

    .line 48
    .line 49
    mul-float/2addr v10, v1

    .line 50
    aget v11, v9, v8

    .line 51
    .line 52
    mul-float/2addr v11, v2

    .line 53
    add-float/2addr v11, v10

    .line 54
    aget v9, v9, v7

    .line 55
    .line 56
    mul-float/2addr v9, v3

    .line 57
    add-float/2addr v9, v11

    .line 58
    aget-object v4, v4, v7

    .line 59
    .line 60
    aget v10, v4, v5

    .line 61
    .line 62
    mul-float/2addr v1, v10

    .line 63
    aget v10, v4, v8

    .line 64
    .line 65
    mul-float/2addr v2, v10

    .line 66
    add-float/2addr v2, v1

    .line 67
    aget v1, v4, v7

    .line 68
    .line 69
    mul-float/2addr v3, v1

    .line 70
    add-float/2addr v3, v2

    .line 71
    sget-object v1, LC/b;->a:[[F

    .line 72
    .line 73
    aget-object v2, v1, v5

    .line 74
    .line 75
    aget v4, v2, v5

    .line 76
    .line 77
    mul-float/2addr v4, v6

    .line 78
    aget v10, v2, v8

    .line 79
    .line 80
    mul-float/2addr v10, v9

    .line 81
    add-float/2addr v10, v4

    .line 82
    aget v2, v2, v7

    .line 83
    .line 84
    mul-float/2addr v2, v3

    .line 85
    add-float/2addr v2, v10

    .line 86
    aget-object v4, v1, v8

    .line 87
    .line 88
    aget v10, v4, v5

    .line 89
    .line 90
    mul-float/2addr v10, v6

    .line 91
    aget v11, v4, v8

    .line 92
    .line 93
    mul-float/2addr v11, v9

    .line 94
    add-float/2addr v11, v10

    .line 95
    aget v4, v4, v7

    .line 96
    .line 97
    mul-float/2addr v4, v3

    .line 98
    add-float/2addr v4, v11

    .line 99
    aget-object v1, v1, v7

    .line 100
    .line 101
    aget v10, v1, v5

    .line 102
    .line 103
    mul-float/2addr v6, v10

    .line 104
    aget v10, v1, v8

    .line 105
    .line 106
    mul-float/2addr v9, v10

    .line 107
    add-float/2addr v9, v6

    .line 108
    aget v1, v1, v7

    .line 109
    .line 110
    mul-float/2addr v3, v1

    .line 111
    add-float/2addr v3, v9

    .line 112
    iget-object v1, v0, LC/w;->g:[F

    .line 113
    .line 114
    aget v5, v1, v5

    .line 115
    .line 116
    mul-float/2addr v5, v2

    .line 117
    aget v2, v1, v8

    .line 118
    .line 119
    mul-float/2addr v2, v4

    .line 120
    aget v1, v1, v7

    .line 121
    .line 122
    mul-float/2addr v1, v3

    .line 123
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 124
    .line 125
    .line 126
    move-result v3

    .line 127
    iget v4, v0, LC/w;->h:F

    .line 128
    .line 129
    mul-float/2addr v3, v4

    .line 130
    float-to-double v6, v3

    .line 131
    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    .line 132
    .line 133
    div-double/2addr v6, v8

    .line 134
    const-wide v10, 0x3fdae147ae147ae1L    # 0.42

    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    .line 140
    .line 141
    .line 142
    move-result-wide v6

    .line 143
    double-to-float v3, v6

    .line 144
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 145
    .line 146
    .line 147
    move-result v6

    .line 148
    mul-float/2addr v6, v4

    .line 149
    float-to-double v6, v6

    .line 150
    div-double/2addr v6, v8

    .line 151
    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    .line 152
    .line 153
    .line 154
    move-result-wide v6

    .line 155
    double-to-float v6, v6

    .line 156
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 157
    .line 158
    .line 159
    move-result v7

    .line 160
    mul-float/2addr v7, v4

    .line 161
    float-to-double v12, v7

    .line 162
    div-double/2addr v12, v8

    .line 163
    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->pow(DD)D

    .line 164
    .line 165
    .line 166
    move-result-wide v10

    .line 167
    double-to-float v4, v10

    .line 168
    invoke-static {v5}, Ljava/lang/Math;->signum(F)F

    .line 169
    .line 170
    .line 171
    move-result v5

    .line 172
    const/high16 v7, 0x43c80000    # 400.0f

    .line 173
    .line 174
    mul-float/2addr v5, v7

    .line 175
    mul-float/2addr v5, v3

    .line 176
    const v10, 0x41d90a3d    # 27.13f

    .line 177
    .line 178
    .line 179
    add-float/2addr v3, v10

    .line 180
    div-float/2addr v5, v3

    .line 181
    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    .line 182
    .line 183
    .line 184
    move-result v2

    .line 185
    mul-float/2addr v2, v7

    .line 186
    mul-float/2addr v2, v6

    .line 187
    add-float/2addr v6, v10

    .line 188
    div-float/2addr v2, v6

    .line 189
    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    .line 190
    .line 191
    .line 192
    move-result v1

    .line 193
    mul-float/2addr v1, v7

    .line 194
    mul-float/2addr v1, v4

    .line 195
    add-float/2addr v4, v10

    .line 196
    div-float/2addr v1, v4

    .line 197
    const-wide/high16 v3, 0x4026000000000000L    # 11.0

    .line 198
    .line 199
    float-to-double v6, v5

    .line 200
    mul-double/2addr v6, v3

    .line 201
    const-wide/high16 v3, -0x3fd8000000000000L    # -12.0

    .line 202
    .line 203
    float-to-double v10, v2

    .line 204
    mul-double/2addr v10, v3

    .line 205
    add-double/2addr v10, v6

    .line 206
    float-to-double v3, v1

    .line 207
    add-double/2addr v10, v3

    .line 208
    double-to-float v6, v10

    .line 209
    const/high16 v7, 0x41300000    # 11.0f

    .line 210
    .line 211
    div-float/2addr v6, v7

    .line 212
    add-float v7, v5, v2

    .line 213
    .line 214
    float-to-double v10, v7

    .line 215
    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    .line 216
    .line 217
    mul-double/2addr v3, v12

    .line 218
    sub-double/2addr v10, v3

    .line 219
    double-to-float v3, v10

    .line 220
    const/high16 v4, 0x41100000    # 9.0f

    .line 221
    .line 222
    div-float/2addr v3, v4

    .line 223
    const/high16 v4, 0x41a00000    # 20.0f

    .line 224
    .line 225
    mul-float v7, v5, v4

    .line 226
    .line 227
    mul-float/2addr v2, v4

    .line 228
    add-float/2addr v7, v2

    .line 229
    const/high16 v10, 0x41a80000    # 21.0f

    .line 230
    .line 231
    mul-float/2addr v10, v1

    .line 232
    add-float/2addr v10, v7

    .line 233
    div-float/2addr v10, v4

    .line 234
    const/high16 v7, 0x42200000    # 40.0f

    .line 235
    .line 236
    mul-float/2addr v5, v7

    .line 237
    add-float/2addr v5, v2

    .line 238
    add-float/2addr v5, v1

    .line 239
    div-float/2addr v5, v4

    .line 240
    float-to-double v1, v3

    .line 241
    float-to-double v14, v6

    .line 242
    invoke-static {v1, v2, v14, v15}, Ljava/lang/Math;->atan2(DD)D

    .line 243
    .line 244
    .line 245
    move-result-wide v1

    .line 246
    double-to-float v1, v1

    .line 247
    const/high16 v2, 0x43340000    # 180.0f

    .line 248
    .line 249
    mul-float/2addr v1, v2

    .line 250
    const v4, 0x40490fdb    # (float)Math.PI

    .line 251
    .line 252
    .line 253
    div-float/2addr v1, v4

    .line 254
    const/4 v7, 0x0

    .line 255
    cmpg-float v7, v1, v7

    .line 256
    .line 257
    const/high16 v11, 0x43b40000    # 360.0f

    .line 258
    .line 259
    if-gez v7, :cond_1

    .line 260
    .line 261
    add-float/2addr v1, v11

    .line 262
    :cond_0
    :goto_0
    move v15, v1

    .line 263
    goto :goto_1

    .line 264
    :cond_1
    cmpl-float v7, v1, v11

    .line 265
    .line 266
    if-ltz v7, :cond_0

    .line 267
    .line 268
    sub-float/2addr v1, v11

    .line 269
    goto :goto_0

    .line 270
    :goto_1
    mul-float/2addr v4, v15

    .line 271
    div-float/2addr v4, v2

    .line 272
    iget v1, v0, LC/w;->b:F

    .line 273
    .line 274
    mul-float/2addr v5, v1

    .line 275
    iget v1, v0, LC/w;->a:F

    .line 276
    .line 277
    div-float/2addr v5, v1

    .line 278
    move-wide/from16 v16, v8

    .line 279
    .line 280
    float-to-double v8, v5

    .line 281
    iget v2, v0, LC/w;->d:F

    .line 282
    .line 283
    iget v5, v0, LC/w;->j:F

    .line 284
    .line 285
    mul-float/2addr v5, v2

    .line 286
    move/from16 p0, v11

    .line 287
    .line 288
    move-wide/from16 v18, v12

    .line 289
    .line 290
    float-to-double v11, v5

    .line 291
    invoke-static {v8, v9, v11, v12}, Ljava/lang/Math;->pow(DD)D

    .line 292
    .line 293
    .line 294
    move-result-wide v7

    .line 295
    double-to-float v5, v7

    .line 296
    const/high16 v7, 0x42c80000    # 100.0f

    .line 297
    .line 298
    mul-float/2addr v5, v7

    .line 299
    div-float v7, v5, v7

    .line 300
    .line 301
    float-to-double v7, v7

    .line 302
    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    .line 303
    .line 304
    .line 305
    const/high16 v7, 0x40800000    # 4.0f

    .line 306
    .line 307
    add-float/2addr v1, v7

    .line 308
    float-to-double v7, v15

    .line 309
    const-wide v11, 0x403423d70a3d70a4L    # 20.14

    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    cmpg-double v7, v7, v11

    .line 315
    .line 316
    if-gez v7, :cond_2

    .line 317
    .line 318
    add-float v11, v15, p0

    .line 319
    .line 320
    goto :goto_2

    .line 321
    :cond_2
    move v11, v15

    .line 322
    :goto_2
    float-to-double v7, v11

    .line 323
    const-wide v11, 0x400921fb54442d18L    # Math.PI

    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    mul-double/2addr v7, v11

    .line 329
    const-wide v11, 0x4066800000000000L    # 180.0

    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    div-double/2addr v7, v11

    .line 335
    add-double v7, v7, v18

    .line 336
    .line 337
    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    .line 338
    .line 339
    .line 340
    move-result-wide v7

    .line 341
    const-wide v11, 0x400e666666666666L    # 3.8

    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    add-double/2addr v7, v11

    .line 347
    double-to-float v7, v7

    .line 348
    const/high16 v8, 0x3e800000    # 0.25f

    .line 349
    .line 350
    mul-float/2addr v7, v8

    .line 351
    const v8, 0x45706276

    .line 352
    .line 353
    .line 354
    mul-float/2addr v7, v8

    .line 355
    iget v8, v0, LC/w;->e:F

    .line 356
    .line 357
    mul-float/2addr v7, v8

    .line 358
    iget v8, v0, LC/w;->c:F

    .line 359
    .line 360
    mul-float/2addr v7, v8

    .line 361
    mul-float/2addr v6, v6

    .line 362
    mul-float/2addr v3, v3

    .line 363
    add-float/2addr v3, v6

    .line 364
    float-to-double v8, v3

    .line 365
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    .line 366
    .line 367
    .line 368
    move-result-wide v8

    .line 369
    double-to-float v3, v8

    .line 370
    mul-float/2addr v7, v3

    .line 371
    const v3, 0x3e9c28f6    # 0.305f

    .line 372
    .line 373
    .line 374
    add-float/2addr v10, v3

    .line 375
    div-float/2addr v7, v10

    .line 376
    iget v3, v0, LC/w;->f:F

    .line 377
    .line 378
    float-to-double v8, v3

    .line 379
    const-wide v10, 0x3fd28f5c28f5c28fL    # 0.29

    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    .line 385
    .line 386
    .line 387
    move-result-wide v8

    .line 388
    const-wide v10, 0x3ffa3d70a3d70a3dL    # 1.64

    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    sub-double/2addr v10, v8

    .line 394
    const-wide v8, 0x3fe75c28f5c28f5cL    # 0.73

    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    .line 400
    .line 401
    .line 402
    move-result-wide v8

    .line 403
    double-to-float v3, v8

    .line 404
    float-to-double v6, v7

    .line 405
    const-wide v8, 0x3feccccccccccccdL    # 0.9

    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    .line 411
    .line 412
    .line 413
    move-result-wide v6

    .line 414
    double-to-float v6, v6

    .line 415
    mul-float/2addr v3, v6

    .line 416
    float-to-double v6, v5

    .line 417
    div-double v6, v6, v16

    .line 418
    .line 419
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    .line 420
    .line 421
    .line 422
    move-result-wide v6

    .line 423
    double-to-float v6, v6

    .line 424
    mul-float v16, v3, v6

    .line 425
    .line 426
    iget v0, v0, LC/w;->i:F

    .line 427
    .line 428
    mul-float v0, v0, v16

    .line 429
    .line 430
    mul-float/2addr v3, v2

    .line 431
    div-float/2addr v3, v1

    .line 432
    float-to-double v1, v3

    .line 433
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    .line 434
    .line 435
    .line 436
    const v1, 0x3fd9999a    # 1.7f

    .line 437
    .line 438
    .line 439
    mul-float/2addr v1, v5

    .line 440
    const v2, 0x3be56042    # 0.007f

    .line 441
    .line 442
    .line 443
    mul-float/2addr v2, v5

    .line 444
    const/high16 v3, 0x3f800000    # 1.0f

    .line 445
    .line 446
    add-float/2addr v2, v3

    .line 447
    div-float v18, v1, v2

    .line 448
    .line 449
    const v1, 0x3cbac711    # 0.0228f

    .line 450
    .line 451
    .line 452
    mul-float/2addr v0, v1

    .line 453
    add-float/2addr v0, v3

    .line 454
    float-to-double v0, v0

    .line 455
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    .line 456
    .line 457
    .line 458
    move-result-wide v0

    .line 459
    double-to-float v0, v0

    .line 460
    const v1, 0x422f7048

    .line 461
    .line 462
    .line 463
    mul-float/2addr v0, v1

    .line 464
    float-to-double v1, v4

    .line 465
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    .line 466
    .line 467
    .line 468
    move-result-wide v3

    .line 469
    double-to-float v3, v3

    .line 470
    mul-float v19, v0, v3

    .line 471
    .line 472
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    .line 473
    .line 474
    .line 475
    move-result-wide v1

    .line 476
    double-to-float v1, v1

    .line 477
    mul-float v20, v0, v1

    .line 478
    .line 479
    new-instance v14, LC/a;

    .line 480
    .line 481
    move/from16 v17, v5

    .line 482
    .line 483
    invoke-direct/range {v14 .. v20}, LC/a;-><init>(FFFFFF)V

    .line 484
    .line 485
    .line 486
    return-object v14
.end method

.method public static b(FFF)LC/a;
    .locals 12

    .line 1
    sget-object v0, LC/w;->k:LC/w;

    .line 2
    .line 3
    iget v1, v0, LC/w;->d:F

    .line 4
    .line 5
    float-to-double v1, p0

    .line 6
    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    .line 7
    .line 8
    div-double/2addr v1, v3

    .line 9
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    .line 10
    .line 11
    .line 12
    iget v3, v0, LC/w;->a:F

    .line 13
    .line 14
    const/high16 v4, 0x40800000    # 4.0f

    .line 15
    .line 16
    add-float/2addr v3, v4

    .line 17
    iget v4, v0, LC/w;->i:F

    .line 18
    .line 19
    mul-float/2addr v4, p1

    .line 20
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    .line 21
    .line 22
    .line 23
    move-result-wide v1

    .line 24
    double-to-float v1, v1

    .line 25
    div-float v1, p1, v1

    .line 26
    .line 27
    iget v0, v0, LC/w;->d:F

    .line 28
    .line 29
    mul-float/2addr v1, v0

    .line 30
    div-float/2addr v1, v3

    .line 31
    float-to-double v0, v1

    .line 32
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 33
    .line 34
    .line 35
    const v0, 0x40490fdb    # (float)Math.PI

    .line 36
    .line 37
    .line 38
    mul-float/2addr v0, p2

    .line 39
    const/high16 v1, 0x43340000    # 180.0f

    .line 40
    .line 41
    div-float/2addr v0, v1

    .line 42
    const v1, 0x3fd9999a    # 1.7f

    .line 43
    .line 44
    .line 45
    mul-float/2addr v1, p0

    .line 46
    const v2, 0x3be56042    # 0.007f

    .line 47
    .line 48
    .line 49
    mul-float/2addr v2, p0

    .line 50
    const/high16 v3, 0x3f800000    # 1.0f

    .line 51
    .line 52
    add-float/2addr v2, v3

    .line 53
    div-float v9, v1, v2

    .line 54
    .line 55
    const-wide v1, 0x3f9758e219652bd4L    # 0.0228

    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    float-to-double v3, v4

    .line 61
    mul-double/2addr v3, v1

    .line 62
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 63
    .line 64
    add-double/2addr v3, v1

    .line 65
    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    .line 66
    .line 67
    .line 68
    move-result-wide v1

    .line 69
    double-to-float v1, v1

    .line 70
    const v2, 0x422f7048

    .line 71
    .line 72
    .line 73
    mul-float/2addr v1, v2

    .line 74
    float-to-double v2, v0

    .line 75
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    .line 76
    .line 77
    .line 78
    move-result-wide v4

    .line 79
    double-to-float v0, v4

    .line 80
    mul-float v10, v1, v0

    .line 81
    .line 82
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    .line 83
    .line 84
    .line 85
    move-result-wide v2

    .line 86
    double-to-float v0, v2

    .line 87
    mul-float v11, v1, v0

    .line 88
    .line 89
    new-instance v5, LC/a;

    .line 90
    .line 91
    move v8, p0

    .line 92
    move v7, p1

    .line 93
    move v6, p2

    .line 94
    invoke-direct/range {v5 .. v11}, LC/a;-><init>(FFFFFF)V

    .line 95
    .line 96
    .line 97
    return-object v5
.end method

.method public static toColor(FFF)I
    .locals 24

    .line 1
    move/from16 v0, p0

    .line 2
    .line 3
    sget-object v1, LC/w;->k:LC/w;

    .line 4
    .line 5
    move/from16 v2, p1

    .line 6
    .line 7
    float-to-double v3, v2

    .line 8
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    .line 9
    .line 10
    cmpg-double v3, v3, v5

    .line 11
    .line 12
    if-ltz v3, :cond_d

    .line 13
    .line 14
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->round(F)I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    int-to-double v3, v3

    .line 19
    const-wide/16 v5, 0x0

    .line 20
    .line 21
    cmpg-double v3, v3, v5

    .line 22
    .line 23
    if-lez v3, :cond_d

    .line 24
    .line 25
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->round(F)I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    int-to-double v3, v3

    .line 30
    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    .line 31
    .line 32
    cmpl-double v3, v3, v5

    .line 33
    .line 34
    if-ltz v3, :cond_0

    .line 35
    .line 36
    goto/16 :goto_9

    .line 37
    .line 38
    :cond_0
    const/4 v3, 0x0

    .line 39
    cmpg-float v4, v0, v3

    .line 40
    .line 41
    if-gez v4, :cond_1

    .line 42
    .line 43
    move v0, v3

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const/high16 v4, 0x43b40000    # 360.0f

    .line 46
    .line 47
    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    :goto_0
    move v6, v2

    .line 52
    move v7, v3

    .line 53
    const/4 v8, 0x0

    .line 54
    const/4 v9, 0x1

    .line 55
    :goto_1
    sub-float v10, v7, v2

    .line 56
    .line 57
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    .line 58
    .line 59
    .line 60
    move-result v10

    .line 61
    const v11, 0x3ecccccd    # 0.4f

    .line 62
    .line 63
    .line 64
    cmpl-float v10, v10, v11

    .line 65
    .line 66
    if-ltz v10, :cond_b

    .line 67
    .line 68
    const/high16 v10, 0x42c80000    # 100.0f

    .line 69
    .line 70
    const/high16 v11, 0x447a0000    # 1000.0f

    .line 71
    .line 72
    move v13, v3

    .line 73
    move v14, v10

    .line 74
    move v12, v11

    .line 75
    const/4 v15, 0x0

    .line 76
    :goto_2
    sub-float v16, v13, v14

    .line 77
    .line 78
    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    .line 79
    .line 80
    .line 81
    move-result v16

    .line 82
    const v17, 0x3c23d70a    # 0.01f

    .line 83
    .line 84
    .line 85
    cmpl-float v16, v16, v17

    .line 86
    .line 87
    const/16 v17, 0x0

    .line 88
    .line 89
    const/high16 v18, 0x40000000    # 2.0f

    .line 90
    .line 91
    if-lez v16, :cond_7

    .line 92
    .line 93
    sub-float v16, v14, v13

    .line 94
    .line 95
    div-float v16, v16, v18

    .line 96
    .line 97
    move/from16 v19, v3

    .line 98
    .line 99
    add-float v3, v16, v13

    .line 100
    .line 101
    invoke-static {v3, v6, v0}, LC/a;->b(FFF)LC/a;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    const/16 v16, 0x1

    .line 106
    .line 107
    sget-object v5, LC/w;->k:LC/w;

    .line 108
    .line 109
    invoke-virtual {v4, v5}, LC/a;->c(LC/w;)I

    .line 110
    .line 111
    .line 112
    move-result v4

    .line 113
    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    .line 114
    .line 115
    .line 116
    move-result v5

    .line 117
    invoke-static {v5}, LC/b;->b(I)F

    .line 118
    .line 119
    .line 120
    move-result v5

    .line 121
    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    .line 122
    .line 123
    .line 124
    move-result v20

    .line 125
    invoke-static/range {v20 .. v20}, LC/b;->b(I)F

    .line 126
    .line 127
    .line 128
    move-result v20

    .line 129
    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    .line 130
    .line 131
    .line 132
    move-result v21

    .line 133
    invoke-static/range {v21 .. v21}, LC/b;->b(I)F

    .line 134
    .line 135
    .line 136
    move-result v21

    .line 137
    sget-object v22, LC/b;->d:[[F

    .line 138
    .line 139
    aget-object v22, v22, v16

    .line 140
    .line 141
    aget v23, v22, v17

    .line 142
    .line 143
    mul-float v5, v5, v23

    .line 144
    .line 145
    aget v23, v22, v16

    .line 146
    .line 147
    mul-float v20, v20, v23

    .line 148
    .line 149
    add-float v20, v20, v5

    .line 150
    .line 151
    const/4 v5, 0x2

    .line 152
    aget v5, v22, v5

    .line 153
    .line 154
    mul-float v21, v21, v5

    .line 155
    .line 156
    add-float v21, v21, v20

    .line 157
    .line 158
    div-float v5, v21, v10

    .line 159
    .line 160
    const v20, 0x3c111aa7

    .line 161
    .line 162
    .line 163
    cmpg-float v20, v5, v20

    .line 164
    .line 165
    if-gtz v20, :cond_2

    .line 166
    .line 167
    const v20, 0x4461d2f7

    .line 168
    .line 169
    .line 170
    mul-float v5, v5, v20

    .line 171
    .line 172
    move/from16 v20, v11

    .line 173
    .line 174
    goto :goto_3

    .line 175
    :cond_2
    move/from16 v20, v11

    .line 176
    .line 177
    float-to-double v10, v5

    .line 178
    invoke-static {v10, v11}, Ljava/lang/Math;->cbrt(D)D

    .line 179
    .line 180
    .line 181
    move-result-wide v10

    .line 182
    double-to-float v5, v10

    .line 183
    const/high16 v10, 0x42e80000    # 116.0f

    .line 184
    .line 185
    mul-float/2addr v5, v10

    .line 186
    const/high16 v10, 0x41800000    # 16.0f

    .line 187
    .line 188
    sub-float/2addr v5, v10

    .line 189
    :goto_3
    sub-float v10, p2, v5

    .line 190
    .line 191
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    .line 192
    .line 193
    .line 194
    move-result v10

    .line 195
    const v11, 0x3e4ccccd    # 0.2f

    .line 196
    .line 197
    .line 198
    cmpg-float v11, v10, v11

    .line 199
    .line 200
    if-gez v11, :cond_3

    .line 201
    .line 202
    invoke-static {v4}, LC/a;->a(I)LC/a;

    .line 203
    .line 204
    .line 205
    move-result-object v4

    .line 206
    iget v11, v4, LC/a;->c:F

    .line 207
    .line 208
    move/from16 v21, v2

    .line 209
    .line 210
    iget v2, v4, LC/a;->b:F

    .line 211
    .line 212
    invoke-static {v11, v2, v0}, LC/a;->b(FFF)LC/a;

    .line 213
    .line 214
    .line 215
    move-result-object v2

    .line 216
    iget v11, v4, LC/a;->d:F

    .line 217
    .line 218
    move/from16 v22, v0

    .line 219
    .line 220
    iget v0, v2, LC/a;->d:F

    .line 221
    .line 222
    sub-float/2addr v11, v0

    .line 223
    iget v0, v4, LC/a;->e:F

    .line 224
    .line 225
    move/from16 v23, v0

    .line 226
    .line 227
    iget v0, v2, LC/a;->e:F

    .line 228
    .line 229
    sub-float v0, v23, v0

    .line 230
    .line 231
    move/from16 v23, v0

    .line 232
    .line 233
    iget v0, v4, LC/a;->f:F

    .line 234
    .line 235
    iget v2, v2, LC/a;->f:F

    .line 236
    .line 237
    sub-float/2addr v0, v2

    .line 238
    mul-float/2addr v11, v11

    .line 239
    mul-float v2, v23, v23

    .line 240
    .line 241
    add-float/2addr v2, v11

    .line 242
    mul-float/2addr v0, v0

    .line 243
    add-float/2addr v0, v2

    .line 244
    move v11, v3

    .line 245
    float-to-double v2, v0

    .line 246
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    .line 247
    .line 248
    .line 249
    move-result-wide v2

    .line 250
    move-object/from16 v23, v4

    .line 251
    .line 252
    move v0, v5

    .line 253
    const-wide v4, 0x3fe428f5c28f5c29L    # 0.63

    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    .line 259
    .line 260
    .line 261
    move-result-wide v2

    .line 262
    const-wide v4, 0x3ff68f5c28f5c28fL    # 1.41

    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    mul-double/2addr v2, v4

    .line 268
    double-to-float v2, v2

    .line 269
    const/high16 v3, 0x3f800000    # 1.0f

    .line 270
    .line 271
    cmpg-float v3, v2, v3

    .line 272
    .line 273
    if-gtz v3, :cond_4

    .line 274
    .line 275
    move v12, v2

    .line 276
    move/from16 v20, v10

    .line 277
    .line 278
    move-object/from16 v15, v23

    .line 279
    .line 280
    goto :goto_4

    .line 281
    :cond_3
    move/from16 v22, v0

    .line 282
    .line 283
    move/from16 v21, v2

    .line 284
    .line 285
    move v11, v3

    .line 286
    move v0, v5

    .line 287
    :cond_4
    :goto_4
    cmpl-float v2, v20, v19

    .line 288
    .line 289
    if-nez v2, :cond_5

    .line 290
    .line 291
    cmpl-float v2, v12, v19

    .line 292
    .line 293
    if-nez v2, :cond_5

    .line 294
    .line 295
    goto :goto_6

    .line 296
    :cond_5
    cmpg-float v0, v0, p2

    .line 297
    .line 298
    if-gez v0, :cond_6

    .line 299
    .line 300
    move v13, v11

    .line 301
    goto :goto_5

    .line 302
    :cond_6
    move v14, v11

    .line 303
    :goto_5
    move/from16 v3, v19

    .line 304
    .line 305
    move/from16 v11, v20

    .line 306
    .line 307
    move/from16 v2, v21

    .line 308
    .line 309
    move/from16 v0, v22

    .line 310
    .line 311
    const/high16 v10, 0x42c80000    # 100.0f

    .line 312
    .line 313
    goto/16 :goto_2

    .line 314
    .line 315
    :cond_7
    move/from16 v22, v0

    .line 316
    .line 317
    move/from16 v21, v2

    .line 318
    .line 319
    move/from16 v19, v3

    .line 320
    .line 321
    const/16 v16, 0x1

    .line 322
    .line 323
    :goto_6
    if-eqz v9, :cond_9

    .line 324
    .line 325
    if-eqz v15, :cond_8

    .line 326
    .line 327
    invoke-virtual {v15, v1}, LC/a;->c(LC/w;)I

    .line 328
    .line 329
    .line 330
    move-result v0

    .line 331
    return v0

    .line 332
    :cond_8
    sub-float v2, v21, v7

    .line 333
    .line 334
    div-float v2, v2, v18

    .line 335
    .line 336
    add-float v6, v2, v7

    .line 337
    .line 338
    move/from16 v9, v17

    .line 339
    .line 340
    move/from16 v3, v19

    .line 341
    .line 342
    move/from16 v2, v21

    .line 343
    .line 344
    :goto_7
    move/from16 v0, v22

    .line 345
    .line 346
    goto/16 :goto_1

    .line 347
    .line 348
    :cond_9
    if-nez v15, :cond_a

    .line 349
    .line 350
    move v2, v6

    .line 351
    goto :goto_8

    .line 352
    :cond_a
    move v7, v6

    .line 353
    move-object v8, v15

    .line 354
    move/from16 v2, v21

    .line 355
    .line 356
    :goto_8
    sub-float v0, v2, v7

    .line 357
    .line 358
    div-float v0, v0, v18

    .line 359
    .line 360
    add-float v6, v0, v7

    .line 361
    .line 362
    move/from16 v3, v19

    .line 363
    .line 364
    goto :goto_7

    .line 365
    :cond_b
    if-nez v8, :cond_c

    .line 366
    .line 367
    invoke-static/range {p2 .. p2}, LC/b;->a(F)I

    .line 368
    .line 369
    .line 370
    move-result v0

    .line 371
    return v0

    .line 372
    :cond_c
    invoke-virtual {v8, v1}, LC/a;->c(LC/w;)I

    .line 373
    .line 374
    .line 375
    move-result v0

    .line 376
    return v0

    .line 377
    :cond_d
    :goto_9
    invoke-static/range {p2 .. p2}, LC/b;->a(F)I

    .line 378
    .line 379
    .line 380
    move-result v0

    .line 381
    return v0
.end method


# virtual methods
.method public final c(LC/w;)I
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v2, v0, LC/a;->b:F

    .line 6
    .line 7
    float-to-double v3, v2

    .line 8
    const-wide/16 v5, 0x0

    .line 9
    .line 10
    cmpl-double v3, v3, v5

    .line 11
    .line 12
    const-wide/high16 v7, 0x4059000000000000L    # 100.0

    .line 13
    .line 14
    iget v4, v0, LC/a;->c:F

    .line 15
    .line 16
    if-eqz v3, :cond_1

    .line 17
    .line 18
    float-to-double v9, v4

    .line 19
    cmpl-double v3, v9, v5

    .line 20
    .line 21
    if-nez v3, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    div-double/2addr v9, v7

    .line 25
    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    .line 26
    .line 27
    .line 28
    move-result-wide v9

    .line 29
    double-to-float v3, v9

    .line 30
    div-float/2addr v2, v3

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    :goto_0
    const/4 v2, 0x0

    .line 33
    :goto_1
    float-to-double v2, v2

    .line 34
    iget v9, v1, LC/w;->f:F

    .line 35
    .line 36
    float-to-double v9, v9

    .line 37
    const-wide v11, 0x3fd28f5c28f5c28fL    # 0.29

    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->pow(DD)D

    .line 43
    .line 44
    .line 45
    move-result-wide v9

    .line 46
    const-wide v11, 0x3ffa3d70a3d70a3dL    # 1.64

    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    sub-double/2addr v11, v9

    .line 52
    const-wide v9, 0x3fe75c28f5c28f5cL    # 0.73

    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->pow(DD)D

    .line 58
    .line 59
    .line 60
    move-result-wide v9

    .line 61
    div-double/2addr v2, v9

    .line 62
    const-wide v9, 0x3ff1c71c71c71c72L    # 1.1111111111111112

    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    invoke-static {v2, v3, v9, v10}, Ljava/lang/Math;->pow(DD)D

    .line 68
    .line 69
    .line 70
    move-result-wide v2

    .line 71
    double-to-float v2, v2

    .line 72
    const v3, 0x40490fdb    # (float)Math.PI

    .line 73
    .line 74
    .line 75
    iget v9, v0, LC/a;->a:F

    .line 76
    .line 77
    mul-float/2addr v9, v3

    .line 78
    const/high16 v3, 0x43340000    # 180.0f

    .line 79
    .line 80
    div-float/2addr v9, v3

    .line 81
    float-to-double v9, v9

    .line 82
    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    .line 83
    .line 84
    add-double/2addr v11, v9

    .line 85
    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    .line 86
    .line 87
    .line 88
    move-result-wide v11

    .line 89
    const-wide v13, 0x400e666666666666L    # 3.8

    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    add-double/2addr v11, v13

    .line 95
    double-to-float v3, v11

    .line 96
    const/high16 v11, 0x3e800000    # 0.25f

    .line 97
    .line 98
    mul-float/2addr v3, v11

    .line 99
    float-to-double v11, v4

    .line 100
    div-double/2addr v11, v7

    .line 101
    iget v4, v1, LC/w;->d:F

    .line 102
    .line 103
    float-to-double v7, v4

    .line 104
    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    .line 105
    .line 106
    div-double/2addr v13, v7

    .line 107
    iget v4, v1, LC/w;->j:F

    .line 108
    .line 109
    float-to-double v7, v4

    .line 110
    div-double/2addr v13, v7

    .line 111
    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->pow(DD)D

    .line 112
    .line 113
    .line 114
    move-result-wide v7

    .line 115
    double-to-float v4, v7

    .line 116
    iget v7, v1, LC/w;->a:F

    .line 117
    .line 118
    mul-float/2addr v7, v4

    .line 119
    const v4, 0x45706276

    .line 120
    .line 121
    .line 122
    mul-float/2addr v3, v4

    .line 123
    iget v4, v1, LC/w;->e:F

    .line 124
    .line 125
    mul-float/2addr v3, v4

    .line 126
    iget v4, v1, LC/w;->c:F

    .line 127
    .line 128
    mul-float/2addr v3, v4

    .line 129
    iget v4, v1, LC/w;->b:F

    .line 130
    .line 131
    div-float/2addr v7, v4

    .line 132
    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    .line 133
    .line 134
    .line 135
    move-result-wide v11

    .line 136
    double-to-float v4, v11

    .line 137
    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    .line 138
    .line 139
    .line 140
    move-result-wide v8

    .line 141
    double-to-float v8, v8

    .line 142
    const v9, 0x3e9c28f6    # 0.305f

    .line 143
    .line 144
    .line 145
    add-float/2addr v9, v7

    .line 146
    const/high16 v10, 0x41b80000    # 23.0f

    .line 147
    .line 148
    mul-float/2addr v9, v10

    .line 149
    mul-float/2addr v9, v2

    .line 150
    mul-float/2addr v3, v10

    .line 151
    const/high16 v10, 0x41300000    # 11.0f

    .line 152
    .line 153
    mul-float/2addr v10, v2

    .line 154
    mul-float/2addr v10, v8

    .line 155
    add-float/2addr v10, v3

    .line 156
    const/high16 v3, 0x42d80000    # 108.0f

    .line 157
    .line 158
    mul-float/2addr v2, v3

    .line 159
    mul-float/2addr v2, v4

    .line 160
    add-float/2addr v2, v10

    .line 161
    div-float/2addr v9, v2

    .line 162
    mul-float/2addr v8, v9

    .line 163
    mul-float/2addr v9, v4

    .line 164
    const/high16 v2, 0x43e60000    # 460.0f

    .line 165
    .line 166
    mul-float/2addr v7, v2

    .line 167
    const v2, 0x43e18000    # 451.0f

    .line 168
    .line 169
    .line 170
    mul-float/2addr v2, v8

    .line 171
    add-float/2addr v2, v7

    .line 172
    const/high16 v3, 0x43900000    # 288.0f

    .line 173
    .line 174
    mul-float/2addr v3, v9

    .line 175
    add-float/2addr v3, v2

    .line 176
    const v2, 0x44af6000    # 1403.0f

    .line 177
    .line 178
    .line 179
    div-float/2addr v3, v2

    .line 180
    const v4, 0x445ec000    # 891.0f

    .line 181
    .line 182
    .line 183
    mul-float/2addr v4, v8

    .line 184
    sub-float v4, v7, v4

    .line 185
    .line 186
    const v10, 0x43828000    # 261.0f

    .line 187
    .line 188
    .line 189
    mul-float/2addr v10, v9

    .line 190
    sub-float/2addr v4, v10

    .line 191
    div-float/2addr v4, v2

    .line 192
    const/high16 v10, 0x435c0000    # 220.0f

    .line 193
    .line 194
    mul-float/2addr v8, v10

    .line 195
    sub-float/2addr v7, v8

    .line 196
    const v8, 0x45c4e000    # 6300.0f

    .line 197
    .line 198
    .line 199
    mul-float/2addr v9, v8

    .line 200
    sub-float/2addr v7, v9

    .line 201
    div-float/2addr v7, v2

    .line 202
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 203
    .line 204
    .line 205
    move-result v2

    .line 206
    float-to-double v8, v2

    .line 207
    const-wide v10, 0x403b2147ae147ae1L    # 27.13

    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    mul-double/2addr v8, v10

    .line 213
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 214
    .line 215
    .line 216
    move-result v2

    .line 217
    float-to-double v12, v2

    .line 218
    const-wide/high16 v14, 0x4079000000000000L    # 400.0

    .line 219
    .line 220
    sub-double v12, v14, v12

    .line 221
    .line 222
    div-double/2addr v8, v12

    .line 223
    invoke-static {v5, v6, v8, v9}, Ljava/lang/Math;->max(DD)D

    .line 224
    .line 225
    .line 226
    move-result-wide v8

    .line 227
    double-to-float v2, v8

    .line 228
    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    .line 229
    .line 230
    .line 231
    move-result v3

    .line 232
    const/high16 v8, 0x42c80000    # 100.0f

    .line 233
    .line 234
    iget v9, v1, LC/w;->h:F

    .line 235
    .line 236
    div-float/2addr v8, v9

    .line 237
    mul-float/2addr v3, v8

    .line 238
    float-to-double v12, v2

    .line 239
    move-wide/from16 v16, v10

    .line 240
    .line 241
    const-wide v10, 0x40030c30c30c30c3L    # 2.380952380952381

    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->pow(DD)D

    .line 247
    .line 248
    .line 249
    move-result-wide v12

    .line 250
    double-to-float v2, v12

    .line 251
    mul-float/2addr v3, v2

    .line 252
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 253
    .line 254
    .line 255
    move-result v2

    .line 256
    float-to-double v12, v2

    .line 257
    mul-double v12, v12, v16

    .line 258
    .line 259
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 260
    .line 261
    .line 262
    move-result v2

    .line 263
    move-wide/from16 v18, v14

    .line 264
    .line 265
    float-to-double v14, v2

    .line 266
    sub-double v14, v18, v14

    .line 267
    .line 268
    div-double/2addr v12, v14

    .line 269
    invoke-static {v5, v6, v12, v13}, Ljava/lang/Math;->max(DD)D

    .line 270
    .line 271
    .line 272
    move-result-wide v12

    .line 273
    double-to-float v2, v12

    .line 274
    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    .line 275
    .line 276
    .line 277
    move-result v4

    .line 278
    mul-float/2addr v4, v8

    .line 279
    float-to-double v12, v2

    .line 280
    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->pow(DD)D

    .line 281
    .line 282
    .line 283
    move-result-wide v12

    .line 284
    double-to-float v2, v12

    .line 285
    mul-float/2addr v4, v2

    .line 286
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    .line 287
    .line 288
    .line 289
    move-result v2

    .line 290
    float-to-double v12, v2

    .line 291
    mul-double v12, v12, v16

    .line 292
    .line 293
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    .line 294
    .line 295
    .line 296
    move-result v2

    .line 297
    float-to-double v14, v2

    .line 298
    sub-double v14, v18, v14

    .line 299
    .line 300
    div-double/2addr v12, v14

    .line 301
    invoke-static {v5, v6, v12, v13}, Ljava/lang/Math;->max(DD)D

    .line 302
    .line 303
    .line 304
    move-result-wide v5

    .line 305
    double-to-float v2, v5

    .line 306
    invoke-static {v7}, Ljava/lang/Math;->signum(F)F

    .line 307
    .line 308
    .line 309
    move-result v5

    .line 310
    mul-float/2addr v5, v8

    .line 311
    float-to-double v6, v2

    .line 312
    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    .line 313
    .line 314
    .line 315
    move-result-wide v6

    .line 316
    double-to-float v2, v6

    .line 317
    mul-float/2addr v5, v2

    .line 318
    iget-object v1, v1, LC/w;->g:[F

    .line 319
    .line 320
    const/4 v2, 0x0

    .line 321
    aget v6, v1, v2

    .line 322
    .line 323
    div-float/2addr v3, v6

    .line 324
    const/4 v6, 0x1

    .line 325
    aget v7, v1, v6

    .line 326
    .line 327
    div-float/2addr v4, v7

    .line 328
    const/4 v7, 0x2

    .line 329
    aget v1, v1, v7

    .line 330
    .line 331
    div-float/2addr v5, v1

    .line 332
    sget-object v1, LC/b;->b:[[F

    .line 333
    .line 334
    aget-object v8, v1, v2

    .line 335
    .line 336
    aget v9, v8, v2

    .line 337
    .line 338
    mul-float/2addr v9, v3

    .line 339
    aget v10, v8, v6

    .line 340
    .line 341
    mul-float/2addr v10, v4

    .line 342
    add-float/2addr v10, v9

    .line 343
    aget v8, v8, v7

    .line 344
    .line 345
    mul-float/2addr v8, v5

    .line 346
    add-float/2addr v8, v10

    .line 347
    aget-object v9, v1, v6

    .line 348
    .line 349
    aget v10, v9, v2

    .line 350
    .line 351
    mul-float/2addr v10, v3

    .line 352
    aget v11, v9, v6

    .line 353
    .line 354
    mul-float/2addr v11, v4

    .line 355
    add-float/2addr v11, v10

    .line 356
    aget v9, v9, v7

    .line 357
    .line 358
    mul-float/2addr v9, v5

    .line 359
    add-float/2addr v9, v11

    .line 360
    aget-object v1, v1, v7

    .line 361
    .line 362
    aget v2, v1, v2

    .line 363
    .line 364
    mul-float/2addr v3, v2

    .line 365
    aget v2, v1, v6

    .line 366
    .line 367
    mul-float/2addr v4, v2

    .line 368
    add-float/2addr v4, v3

    .line 369
    aget v1, v1, v7

    .line 370
    .line 371
    mul-float/2addr v5, v1

    .line 372
    add-float/2addr v5, v4

    .line 373
    float-to-double v10, v8

    .line 374
    float-to-double v12, v9

    .line 375
    float-to-double v14, v5

    .line 376
    invoke-static/range {v10 .. v15}, LD/a;->XYZToColor(DDD)I

    .line 377
    .line 378
    .line 379
    move-result v1

    .line 380
    return v1
.end method
