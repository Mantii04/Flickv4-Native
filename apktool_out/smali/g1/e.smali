.class public final Lg1/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/graphics/Bitmap;

.field public final b:Ljava/util/ArrayList;

.field public c:I

.field public final d:I

.field public final e:I

.field public final f:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lg1/e;->b:Ljava/util/ArrayList;

    .line 10
    .line 11
    const/16 v1, 0x10

    .line 12
    .line 13
    iput v1, p0, Lg1/e;->c:I

    .line 14
    .line 15
    const/16 v1, 0x3100

    .line 16
    .line 17
    iput v1, p0, Lg1/e;->d:I

    .line 18
    .line 19
    const/4 v1, -0x1

    .line 20
    iput v1, p0, Lg1/e;->e:I

    .line 21
    .line 22
    new-instance v1, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Lg1/e;->f:Ljava/util/ArrayList;

    .line 28
    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-nez v2, :cond_0

    .line 36
    .line 37
    sget-object v2, Lg1/g;->e:Lg1/d;

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    iput-object p1, p0, Lg1/e;->a:Landroid/graphics/Bitmap;

    .line 43
    .line 44
    sget-object p1, Lg1/h;->d:Lg1/h;

    .line 45
    .line 46
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    sget-object p1, Lg1/h;->e:Lg1/h;

    .line 50
    .line 51
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    sget-object p1, Lg1/h;->f:Lg1/h;

    .line 55
    .line 56
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    sget-object p1, Lg1/h;->g:Lg1/h;

    .line 60
    .line 61
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    sget-object p1, Lg1/h;->h:Lg1/h;

    .line 65
    .line 66
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    sget-object p1, Lg1/h;->i:Lg1/h;

    .line 70
    .line 71
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 76
    .line 77
    const-string v0, "Bitmap is not valid"

    .line 78
    .line 79
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw p1
.end method


# virtual methods
.method public generate()Lg1/g;
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lg1/e;->a:Landroid/graphics/Bitmap;

    .line 4
    .line 5
    if-eqz v1, :cond_13

    .line 6
    .line 7
    iget v2, v0, Lg1/e;->d:I

    .line 8
    .line 9
    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    .line 10
    .line 11
    if-lez v2, :cond_0

    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 14
    .line 15
    .line 16
    move-result v5

    .line 17
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 18
    .line 19
    .line 20
    move-result v6

    .line 21
    mul-int/2addr v6, v5

    .line 22
    if-le v6, v2, :cond_1

    .line 23
    .line 24
    int-to-double v2, v2

    .line 25
    int-to-double v4, v6

    .line 26
    div-double/2addr v2, v4

    .line 27
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    .line 28
    .line 29
    .line 30
    move-result-wide v3

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget v2, v0, Lg1/e;->e:I

    .line 33
    .line 34
    if-lez v2, :cond_1

    .line 35
    .line 36
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    if-le v5, v2, :cond_1

    .line 49
    .line 50
    int-to-double v2, v2

    .line 51
    int-to-double v4, v5

    .line 52
    div-double v3, v2, v4

    .line 53
    .line 54
    :cond_1
    :goto_0
    const-wide/16 v5, 0x0

    .line 55
    .line 56
    cmpg-double v2, v3, v5

    .line 57
    .line 58
    const/4 v5, 0x0

    .line 59
    if-gtz v2, :cond_2

    .line 60
    .line 61
    move-object v6, v1

    .line 62
    goto :goto_1

    .line 63
    :cond_2
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    int-to-double v6, v2

    .line 68
    mul-double/2addr v6, v3

    .line 69
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    .line 70
    .line 71
    .line 72
    move-result-wide v6

    .line 73
    double-to-int v2, v6

    .line 74
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 75
    .line 76
    .line 77
    move-result v6

    .line 78
    int-to-double v6, v6

    .line 79
    mul-double/2addr v6, v3

    .line 80
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    .line 81
    .line 82
    .line 83
    move-result-wide v3

    .line 84
    double-to-int v3, v3

    .line 85
    invoke-static {v1, v2, v3, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    move-object v6, v2

    .line 90
    :goto_1
    new-instance v2, Lg1/c;

    .line 91
    .line 92
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    .line 93
    .line 94
    .line 95
    move-result v9

    .line 96
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    .line 97
    .line 98
    .line 99
    move-result v13

    .line 100
    mul-int v3, v9, v13

    .line 101
    .line 102
    new-array v7, v3, [I

    .line 103
    .line 104
    const/4 v8, 0x0

    .line 105
    const/4 v10, 0x0

    .line 106
    const/4 v11, 0x0

    .line 107
    move v12, v9

    .line 108
    invoke-virtual/range {v6 .. v13}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 109
    .line 110
    .line 111
    iget v3, v0, Lg1/e;->c:I

    .line 112
    .line 113
    iget-object v4, v0, Lg1/e;->f:Ljava/util/ArrayList;

    .line 114
    .line 115
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 116
    .line 117
    .line 118
    move-result v8

    .line 119
    if-eqz v8, :cond_3

    .line 120
    .line 121
    const/4 v4, 0x0

    .line 122
    goto :goto_2

    .line 123
    :cond_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 124
    .line 125
    .line 126
    move-result v8

    .line 127
    new-array v8, v8, [Lg1/d;

    .line 128
    .line 129
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v4

    .line 133
    check-cast v4, [Lg1/d;

    .line 134
    .line 135
    :goto_2
    invoke-direct {v2, v7, v3, v4}, Lg1/c;-><init>([II[Lg1/d;)V

    .line 136
    .line 137
    .line 138
    if-eq v6, v1, :cond_4

    .line 139
    .line 140
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 141
    .line 142
    .line 143
    :cond_4
    iget-object v1, v2, Lg1/c;->c:Ljava/util/ArrayList;

    .line 144
    .line 145
    new-instance v2, Lg1/g;

    .line 146
    .line 147
    iget-object v3, v0, Lg1/e;->b:Ljava/util/ArrayList;

    .line 148
    .line 149
    invoke-direct {v2, v1, v3}, Lg1/g;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 153
    .line 154
    .line 155
    move-result v1

    .line 156
    move v4, v5

    .line 157
    :goto_3
    iget-object v6, v2, Lg1/g;->c:Landroid/util/SparseBooleanArray;

    .line 158
    .line 159
    if-ge v4, v1, :cond_12

    .line 160
    .line 161
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v7

    .line 165
    check-cast v7, Lg1/h;

    .line 166
    .line 167
    iget-object v8, v7, Lg1/h;->c:[F

    .line 168
    .line 169
    array-length v10, v8

    .line 170
    const/4 v11, 0x0

    .line 171
    move v12, v5

    .line 172
    move v13, v11

    .line 173
    :goto_4
    if-ge v12, v10, :cond_6

    .line 174
    .line 175
    aget v14, v8, v12

    .line 176
    .line 177
    cmpl-float v15, v14, v11

    .line 178
    .line 179
    if-lez v15, :cond_5

    .line 180
    .line 181
    add-float/2addr v13, v14

    .line 182
    :cond_5
    add-int/lit8 v12, v12, 0x1

    .line 183
    .line 184
    goto :goto_4

    .line 185
    :cond_6
    cmpl-float v10, v13, v11

    .line 186
    .line 187
    if-eqz v10, :cond_8

    .line 188
    .line 189
    array-length v10, v8

    .line 190
    move v12, v5

    .line 191
    :goto_5
    if-ge v12, v10, :cond_8

    .line 192
    .line 193
    aget v14, v8, v12

    .line 194
    .line 195
    cmpl-float v15, v14, v11

    .line 196
    .line 197
    if-lez v15, :cond_7

    .line 198
    .line 199
    div-float/2addr v14, v13

    .line 200
    aput v14, v8, v12

    .line 201
    .line 202
    :cond_7
    add-int/lit8 v12, v12, 0x1

    .line 203
    .line 204
    goto :goto_5

    .line 205
    :cond_8
    iget-object v8, v2, Lg1/g;->b:Lp/g;

    .line 206
    .line 207
    iget-object v10, v2, Lg1/g;->a:Ljava/util/ArrayList;

    .line 208
    .line 209
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 210
    .line 211
    .line 212
    move-result v12

    .line 213
    move v13, v5

    .line 214
    move v15, v11

    .line 215
    const/4 v14, 0x0

    .line 216
    :goto_6
    const/4 v5, 0x1

    .line 217
    if-ge v13, v12, :cond_10

    .line 218
    .line 219
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v16

    .line 223
    check-cast v16, Lg1/f;

    .line 224
    .line 225
    invoke-virtual/range {v16 .. v16}, Lg1/f;->getHsl()[F

    .line 226
    .line 227
    .line 228
    move-result-object v17

    .line 229
    aget v18, v17, v5

    .line 230
    .line 231
    invoke-virtual {v7}, Lg1/h;->getMinimumSaturation()F

    .line 232
    .line 233
    .line 234
    move-result v19

    .line 235
    cmpl-float v18, v18, v19

    .line 236
    .line 237
    if-ltz v18, :cond_e

    .line 238
    .line 239
    aget v18, v17, v5

    .line 240
    .line 241
    invoke-virtual {v7}, Lg1/h;->getMaximumSaturation()F

    .line 242
    .line 243
    .line 244
    move-result v19

    .line 245
    cmpg-float v18, v18, v19

    .line 246
    .line 247
    if-gtz v18, :cond_e

    .line 248
    .line 249
    const/16 v18, 0x2

    .line 250
    .line 251
    aget v19, v17, v18

    .line 252
    .line 253
    invoke-virtual {v7}, Lg1/h;->getMinimumLightness()F

    .line 254
    .line 255
    .line 256
    move-result v20

    .line 257
    cmpl-float v19, v19, v20

    .line 258
    .line 259
    if-ltz v19, :cond_e

    .line 260
    .line 261
    aget v17, v17, v18

    .line 262
    .line 263
    invoke-virtual {v7}, Lg1/h;->getMaximumLightness()F

    .line 264
    .line 265
    .line 266
    move-result v19

    .line 267
    cmpg-float v17, v17, v19

    .line 268
    .line 269
    if-gtz v17, :cond_e

    .line 270
    .line 271
    invoke-virtual/range {v16 .. v16}, Lg1/f;->getRgb()I

    .line 272
    .line 273
    .line 274
    move-result v9

    .line 275
    invoke-virtual {v6, v9}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 276
    .line 277
    .line 278
    move-result v9

    .line 279
    if-nez v9, :cond_e

    .line 280
    .line 281
    invoke-virtual/range {v16 .. v16}, Lg1/f;->getHsl()[F

    .line 282
    .line 283
    .line 284
    move-result-object v9

    .line 285
    move/from16 v19, v11

    .line 286
    .line 287
    iget-object v11, v2, Lg1/g;->d:Lg1/f;

    .line 288
    .line 289
    if-eqz v11, :cond_9

    .line 290
    .line 291
    invoke-virtual {v11}, Lg1/f;->getPopulation()I

    .line 292
    .line 293
    .line 294
    move-result v11

    .line 295
    goto :goto_7

    .line 296
    :cond_9
    move v11, v5

    .line 297
    :goto_7
    invoke-virtual {v7}, Lg1/h;->getSaturationWeight()F

    .line 298
    .line 299
    .line 300
    move-result v20

    .line 301
    cmpl-float v20, v20, v19

    .line 302
    .line 303
    const/high16 v21, 0x3f800000    # 1.0f

    .line 304
    .line 305
    if-lez v20, :cond_a

    .line 306
    .line 307
    invoke-virtual {v7}, Lg1/h;->getSaturationWeight()F

    .line 308
    .line 309
    .line 310
    move-result v20

    .line 311
    aget v5, v9, v5

    .line 312
    .line 313
    invoke-virtual {v7}, Lg1/h;->getTargetSaturation()F

    .line 314
    .line 315
    .line 316
    move-result v22

    .line 317
    sub-float v5, v5, v22

    .line 318
    .line 319
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 320
    .line 321
    .line 322
    move-result v5

    .line 323
    sub-float v5, v21, v5

    .line 324
    .line 325
    mul-float v5, v5, v20

    .line 326
    .line 327
    goto :goto_8

    .line 328
    :cond_a
    move/from16 v5, v19

    .line 329
    .line 330
    :goto_8
    invoke-virtual {v7}, Lg1/h;->getLightnessWeight()F

    .line 331
    .line 332
    .line 333
    move-result v20

    .line 334
    cmpl-float v20, v20, v19

    .line 335
    .line 336
    if-lez v20, :cond_b

    .line 337
    .line 338
    invoke-virtual {v7}, Lg1/h;->getLightnessWeight()F

    .line 339
    .line 340
    .line 341
    move-result v20

    .line 342
    aget v9, v9, v18

    .line 343
    .line 344
    invoke-virtual {v7}, Lg1/h;->getTargetLightness()F

    .line 345
    .line 346
    .line 347
    move-result v18

    .line 348
    sub-float v9, v9, v18

    .line 349
    .line 350
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    .line 351
    .line 352
    .line 353
    move-result v9

    .line 354
    sub-float v21, v21, v9

    .line 355
    .line 356
    mul-float v21, v21, v20

    .line 357
    .line 358
    goto :goto_9

    .line 359
    :cond_b
    move/from16 v21, v19

    .line 360
    .line 361
    :goto_9
    invoke-virtual {v7}, Lg1/h;->getPopulationWeight()F

    .line 362
    .line 363
    .line 364
    move-result v9

    .line 365
    cmpl-float v9, v9, v19

    .line 366
    .line 367
    if-lez v9, :cond_c

    .line 368
    .line 369
    invoke-virtual {v7}, Lg1/h;->getPopulationWeight()F

    .line 370
    .line 371
    .line 372
    move-result v9

    .line 373
    invoke-virtual/range {v16 .. v16}, Lg1/f;->getPopulation()I

    .line 374
    .line 375
    .line 376
    move-result v0

    .line 377
    int-to-float v0, v0

    .line 378
    int-to-float v11, v11

    .line 379
    div-float/2addr v0, v11

    .line 380
    mul-float/2addr v0, v9

    .line 381
    goto :goto_a

    .line 382
    :cond_c
    move/from16 v0, v19

    .line 383
    .line 384
    :goto_a
    add-float v5, v5, v21

    .line 385
    .line 386
    add-float/2addr v5, v0

    .line 387
    if-eqz v14, :cond_d

    .line 388
    .line 389
    cmpl-float v0, v5, v15

    .line 390
    .line 391
    if-lez v0, :cond_f

    .line 392
    .line 393
    :cond_d
    move v15, v5

    .line 394
    move-object/from16 v14, v16

    .line 395
    .line 396
    goto :goto_b

    .line 397
    :cond_e
    move/from16 v19, v11

    .line 398
    .line 399
    :cond_f
    :goto_b
    add-int/lit8 v13, v13, 0x1

    .line 400
    .line 401
    move-object/from16 v0, p0

    .line 402
    .line 403
    move/from16 v11, v19

    .line 404
    .line 405
    goto/16 :goto_6

    .line 406
    .line 407
    :cond_10
    if-eqz v14, :cond_11

    .line 408
    .line 409
    invoke-virtual {v7}, Lg1/h;->isExclusive()Z

    .line 410
    .line 411
    .line 412
    move-result v0

    .line 413
    if-eqz v0, :cond_11

    .line 414
    .line 415
    invoke-virtual {v14}, Lg1/f;->getRgb()I

    .line 416
    .line 417
    .line 418
    move-result v0

    .line 419
    invoke-virtual {v6, v0, v5}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 420
    .line 421
    .line 422
    :cond_11
    invoke-interface {v8, v7, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    .line 424
    .line 425
    add-int/lit8 v4, v4, 0x1

    .line 426
    .line 427
    move-object/from16 v0, p0

    .line 428
    .line 429
    const/4 v5, 0x0

    .line 430
    goto/16 :goto_3

    .line 431
    .line 432
    :cond_12
    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->clear()V

    .line 433
    .line 434
    .line 435
    return-object v2

    .line 436
    :cond_13
    new-instance v0, Ljava/lang/AssertionError;

    .line 437
    .line 438
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .line 439
    .line 440
    .line 441
    throw v0
.end method

.method public maximumColorCount(I)Lg1/e;
    .locals 0

    .line 1
    iput p1, p0, Lg1/e;->c:I

    .line 2
    .line 3
    return-object p0
.end method
