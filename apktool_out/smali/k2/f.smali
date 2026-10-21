.class public final Lk2/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk2/b;


# instance fields
.field public a:[I

.field public final b:[I

.field public final c:Lk2/a;

.field public d:Ljava/nio/ByteBuffer;

.field public e:[B

.field public f:[S

.field public g:[B

.field public h:[B

.field public i:[B

.field public j:[I

.field public k:I

.field public l:Lk2/d;

.field public m:Landroid/graphics/Bitmap;

.field public n:Z

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:Ljava/lang/Boolean;

.field public t:Landroid/graphics/Bitmap$Config;


# direct methods
.method public constructor <init>(Lk2/a;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    .line 4
    new-array v0, v0, [I

    iput-object v0, p0, Lk2/f;->b:[I

    .line 5
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, p0, Lk2/f;->t:Landroid/graphics/Bitmap$Config;

    .line 6
    iput-object p1, p0, Lk2/f;->c:Lk2/a;

    .line 7
    new-instance p1, Lk2/d;

    invoke-direct {p1}, Lk2/d;-><init>()V

    iput-object p1, p0, Lk2/f;->l:Lk2/d;

    return-void
.end method

.method public constructor <init>(Lk2/a;Lk2/d;Ljava/nio/ByteBuffer;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lk2/f;-><init>(Lk2/a;)V

    .line 2
    invoke-virtual {p0, p2, p3, p4}, Lk2/f;->setData(Lk2/d;Ljava/nio/ByteBuffer;I)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/graphics/Bitmap;
    .locals 4

    .line 1
    iget-object v0, p0, Lk2/f;->s:Ljava/lang/Boolean;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lk2/f;->t:Landroid/graphics/Bitmap$Config;

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_1
    :goto_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 16
    .line 17
    :goto_1
    iget v1, p0, Lk2/f;->r:I

    .line 18
    .line 19
    iget v2, p0, Lk2/f;->q:I

    .line 20
    .line 21
    iget-object v3, p0, Lk2/f;->c:Lk2/a;

    .line 22
    .line 23
    check-cast v3, Ly2/b;

    .line 24
    .line 25
    invoke-virtual {v3, v1, v2, v0}, Ly2/b;->obtain(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const/4 v1, 0x1

    .line 30
    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 31
    .line 32
    .line 33
    return-object v0
.end method

.method public advance()V
    .locals 2

    .line 1
    iget v0, p0, Lk2/f;->k:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iget-object v1, p0, Lk2/f;->l:Lk2/d;

    .line 6
    .line 7
    iget v1, v1, Lk2/d;->c:I

    .line 8
    .line 9
    rem-int/2addr v0, v1

    .line 10
    iput v0, p0, Lk2/f;->k:I

    .line 11
    .line 12
    return-void
.end method

.method public final b(Lk2/c;Lk2/c;)Landroid/graphics/Bitmap;
    .locals 34

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    iget-object v3, v0, Lk2/f;->j:[I

    .line 8
    .line 9
    iget-object v10, v0, Lk2/f;->c:Lk2/a;

    .line 10
    .line 11
    const/4 v11, 0x0

    .line 12
    if-nez v2, :cond_1

    .line 13
    .line 14
    iget-object v4, v0, Lk2/f;->m:Landroid/graphics/Bitmap;

    .line 15
    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    move-object v5, v10

    .line 19
    check-cast v5, Ly2/b;

    .line 20
    .line 21
    invoke-virtual {v5, v4}, Ly2/b;->release(Landroid/graphics/Bitmap;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    const/4 v4, 0x0

    .line 25
    iput-object v4, v0, Lk2/f;->m:Landroid/graphics/Bitmap;

    .line 26
    .line 27
    invoke-static {v3, v11}, Ljava/util/Arrays;->fill([II)V

    .line 28
    .line 29
    .line 30
    :cond_1
    const/4 v12, 0x3

    .line 31
    if-eqz v2, :cond_2

    .line 32
    .line 33
    iget v4, v2, Lk2/c;->g:I

    .line 34
    .line 35
    if-ne v4, v12, :cond_2

    .line 36
    .line 37
    iget-object v4, v0, Lk2/f;->m:Landroid/graphics/Bitmap;

    .line 38
    .line 39
    if-nez v4, :cond_2

    .line 40
    .line 41
    invoke-static {v3, v11}, Ljava/util/Arrays;->fill([II)V

    .line 42
    .line 43
    .line 44
    :cond_2
    const/4 v13, 0x2

    .line 45
    if-eqz v2, :cond_6

    .line 46
    .line 47
    iget v4, v2, Lk2/c;->g:I

    .line 48
    .line 49
    if-lez v4, :cond_6

    .line 50
    .line 51
    if-ne v4, v13, :cond_7

    .line 52
    .line 53
    iget-boolean v4, v1, Lk2/c;->f:Z

    .line 54
    .line 55
    if-nez v4, :cond_3

    .line 56
    .line 57
    iget-object v4, v0, Lk2/f;->l:Lk2/d;

    .line 58
    .line 59
    iget v5, v4, Lk2/d;->k:I

    .line 60
    .line 61
    iget-object v6, v1, Lk2/c;->k:[I

    .line 62
    .line 63
    if-eqz v6, :cond_4

    .line 64
    .line 65
    iget v4, v4, Lk2/d;->j:I

    .line 66
    .line 67
    iget v6, v1, Lk2/c;->h:I

    .line 68
    .line 69
    if-ne v4, v6, :cond_4

    .line 70
    .line 71
    :cond_3
    move v5, v11

    .line 72
    :cond_4
    iget v4, v2, Lk2/c;->d:I

    .line 73
    .line 74
    iget v6, v0, Lk2/f;->p:I

    .line 75
    .line 76
    div-int/2addr v4, v6

    .line 77
    iget v7, v2, Lk2/c;->b:I

    .line 78
    .line 79
    div-int/2addr v7, v6

    .line 80
    iget v8, v2, Lk2/c;->c:I

    .line 81
    .line 82
    div-int/2addr v8, v6

    .line 83
    iget v2, v2, Lk2/c;->a:I

    .line 84
    .line 85
    div-int/2addr v2, v6

    .line 86
    iget v6, v0, Lk2/f;->r:I

    .line 87
    .line 88
    mul-int/2addr v7, v6

    .line 89
    add-int/2addr v7, v2

    .line 90
    mul-int/2addr v4, v6

    .line 91
    add-int/2addr v4, v7

    .line 92
    :goto_0
    if-ge v7, v4, :cond_6

    .line 93
    .line 94
    add-int v2, v7, v8

    .line 95
    .line 96
    move v6, v7

    .line 97
    :goto_1
    if-ge v6, v2, :cond_5

    .line 98
    .line 99
    aput v5, v3, v6

    .line 100
    .line 101
    add-int/lit8 v6, v6, 0x1

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_5
    iget v2, v0, Lk2/f;->r:I

    .line 105
    .line 106
    add-int/2addr v7, v2

    .line 107
    goto :goto_0

    .line 108
    :cond_6
    :goto_2
    move-object v2, v3

    .line 109
    goto :goto_3

    .line 110
    :cond_7
    if-ne v4, v12, :cond_6

    .line 111
    .line 112
    iget-object v2, v0, Lk2/f;->m:Landroid/graphics/Bitmap;

    .line 113
    .line 114
    if-eqz v2, :cond_6

    .line 115
    .line 116
    iget v5, v0, Lk2/f;->r:I

    .line 117
    .line 118
    iget v9, v0, Lk2/f;->q:I

    .line 119
    .line 120
    const/4 v4, 0x0

    .line 121
    const/4 v6, 0x0

    .line 122
    const/4 v7, 0x0

    .line 123
    move v8, v5

    .line 124
    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 125
    .line 126
    .line 127
    goto :goto_2

    .line 128
    :goto_3
    iget-object v3, v0, Lk2/f;->d:Ljava/nio/ByteBuffer;

    .line 129
    .line 130
    iget v4, v1, Lk2/c;->j:I

    .line 131
    .line 132
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 133
    .line 134
    .line 135
    iget v3, v1, Lk2/c;->c:I

    .line 136
    .line 137
    iget v4, v1, Lk2/c;->d:I

    .line 138
    .line 139
    mul-int/2addr v3, v4

    .line 140
    iget-object v4, v0, Lk2/f;->i:[B

    .line 141
    .line 142
    if-eqz v4, :cond_8

    .line 143
    .line 144
    array-length v4, v4

    .line 145
    if-ge v4, v3, :cond_9

    .line 146
    .line 147
    :cond_8
    check-cast v10, Ly2/b;

    .line 148
    .line 149
    invoke-virtual {v10, v3}, Ly2/b;->obtainByteArray(I)[B

    .line 150
    .line 151
    .line 152
    move-result-object v4

    .line 153
    iput-object v4, v0, Lk2/f;->i:[B

    .line 154
    .line 155
    :cond_9
    iget-object v4, v0, Lk2/f;->i:[B

    .line 156
    .line 157
    iget-object v5, v0, Lk2/f;->f:[S

    .line 158
    .line 159
    const/16 v6, 0x1000

    .line 160
    .line 161
    if-nez v5, :cond_a

    .line 162
    .line 163
    new-array v5, v6, [S

    .line 164
    .line 165
    iput-object v5, v0, Lk2/f;->f:[S

    .line 166
    .line 167
    :cond_a
    iget-object v5, v0, Lk2/f;->f:[S

    .line 168
    .line 169
    iget-object v7, v0, Lk2/f;->g:[B

    .line 170
    .line 171
    if-nez v7, :cond_b

    .line 172
    .line 173
    new-array v7, v6, [B

    .line 174
    .line 175
    iput-object v7, v0, Lk2/f;->g:[B

    .line 176
    .line 177
    :cond_b
    iget-object v7, v0, Lk2/f;->g:[B

    .line 178
    .line 179
    iget-object v8, v0, Lk2/f;->h:[B

    .line 180
    .line 181
    if-nez v8, :cond_c

    .line 182
    .line 183
    const/16 v8, 0x1001

    .line 184
    .line 185
    new-array v8, v8, [B

    .line 186
    .line 187
    iput-object v8, v0, Lk2/f;->h:[B

    .line 188
    .line 189
    :cond_c
    iget-object v8, v0, Lk2/f;->h:[B

    .line 190
    .line 191
    iget-object v9, v0, Lk2/f;->d:Ljava/nio/ByteBuffer;

    .line 192
    .line 193
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->get()B

    .line 194
    .line 195
    .line 196
    move-result v9

    .line 197
    and-int/lit16 v9, v9, 0xff

    .line 198
    .line 199
    const/4 v10, 0x1

    .line 200
    shl-int v14, v10, v9

    .line 201
    .line 202
    add-int/lit8 v15, v14, 0x1

    .line 203
    .line 204
    add-int/lit8 v16, v14, 0x2

    .line 205
    .line 206
    add-int/2addr v9, v10

    .line 207
    shl-int v17, v10, v9

    .line 208
    .line 209
    add-int/lit8 v17, v17, -0x1

    .line 210
    .line 211
    move v13, v11

    .line 212
    :goto_4
    if-ge v13, v14, :cond_d

    .line 213
    .line 214
    aput-short v11, v5, v13

    .line 215
    .line 216
    move/from16 p2, v10

    .line 217
    .line 218
    int-to-byte v10, v13

    .line 219
    aput-byte v10, v7, v13

    .line 220
    .line 221
    add-int/lit8 v13, v13, 0x1

    .line 222
    .line 223
    move/from16 v10, p2

    .line 224
    .line 225
    goto :goto_4

    .line 226
    :cond_d
    move/from16 p2, v10

    .line 227
    .line 228
    iget-object v10, v0, Lk2/f;->e:[B

    .line 229
    .line 230
    move/from16 v26, v9

    .line 231
    .line 232
    move v6, v11

    .line 233
    move/from16 v19, v6

    .line 234
    .line 235
    move/from16 v20, v19

    .line 236
    .line 237
    move/from16 v21, v20

    .line 238
    .line 239
    move/from16 v22, v21

    .line 240
    .line 241
    move/from16 v23, v22

    .line 242
    .line 243
    move/from16 v28, v23

    .line 244
    .line 245
    move/from16 v29, v28

    .line 246
    .line 247
    move/from16 v24, v16

    .line 248
    .line 249
    move/from16 v25, v17

    .line 250
    .line 251
    const/16 v27, -0x1

    .line 252
    .line 253
    :goto_5
    const/16 v30, 0x8

    .line 254
    .line 255
    if-ge v6, v3, :cond_19

    .line 256
    .line 257
    if-nez v19, :cond_10

    .line 258
    .line 259
    const/16 v31, -0x1

    .line 260
    .line 261
    iget-object v13, v0, Lk2/f;->d:Ljava/nio/ByteBuffer;

    .line 262
    .line 263
    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->get()B

    .line 264
    .line 265
    .line 266
    move-result v13

    .line 267
    and-int/lit16 v13, v13, 0xff

    .line 268
    .line 269
    if-gtz v13, :cond_e

    .line 270
    .line 271
    move-object/from16 v32, v2

    .line 272
    .line 273
    move-object/from16 v33, v5

    .line 274
    .line 275
    goto :goto_6

    .line 276
    :cond_e
    iget-object v12, v0, Lk2/f;->d:Ljava/nio/ByteBuffer;

    .line 277
    .line 278
    iget-object v11, v0, Lk2/f;->e:[B

    .line 279
    .line 280
    move-object/from16 v32, v2

    .line 281
    .line 282
    invoke-virtual {v12}, Ljava/nio/Buffer;->remaining()I

    .line 283
    .line 284
    .line 285
    move-result v2

    .line 286
    invoke-static {v13, v2}, Ljava/lang/Math;->min(II)I

    .line 287
    .line 288
    .line 289
    move-result v2

    .line 290
    move-object/from16 v33, v5

    .line 291
    .line 292
    const/4 v5, 0x0

    .line 293
    invoke-virtual {v12, v11, v5, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 294
    .line 295
    .line 296
    :goto_6
    if-gtz v13, :cond_f

    .line 297
    .line 298
    const/4 v2, 0x3

    .line 299
    iput v2, v0, Lk2/f;->o:I

    .line 300
    .line 301
    const/4 v5, 0x0

    .line 302
    :goto_7
    move/from16 v11, v23

    .line 303
    .line 304
    goto/16 :goto_d

    .line 305
    .line 306
    :cond_f
    move/from16 v19, v13

    .line 307
    .line 308
    const/16 v20, 0x0

    .line 309
    .line 310
    goto :goto_8

    .line 311
    :cond_10
    move-object/from16 v32, v2

    .line 312
    .line 313
    move-object/from16 v33, v5

    .line 314
    .line 315
    const/16 v31, -0x1

    .line 316
    .line 317
    :goto_8
    aget-byte v2, v10, v20

    .line 318
    .line 319
    and-int/lit16 v2, v2, 0xff

    .line 320
    .line 321
    shl-int v2, v2, v21

    .line 322
    .line 323
    add-int v22, v22, v2

    .line 324
    .line 325
    add-int/lit8 v21, v21, 0x8

    .line 326
    .line 327
    add-int/lit8 v20, v20, 0x1

    .line 328
    .line 329
    add-int/lit8 v19, v19, -0x1

    .line 330
    .line 331
    move/from16 v2, v21

    .line 332
    .line 333
    move/from16 v5, v24

    .line 334
    .line 335
    move/from16 v11, v26

    .line 336
    .line 337
    move/from16 v12, v27

    .line 338
    .line 339
    move/from16 v13, v28

    .line 340
    .line 341
    :goto_9
    move/from16 v21, v2

    .line 342
    .line 343
    if-lt v2, v11, :cond_18

    .line 344
    .line 345
    and-int v2, v22, v25

    .line 346
    .line 347
    shr-int v22, v22, v11

    .line 348
    .line 349
    sub-int v21, v21, v11

    .line 350
    .line 351
    if-ne v2, v14, :cond_11

    .line 352
    .line 353
    move v11, v9

    .line 354
    move/from16 v5, v16

    .line 355
    .line 356
    move/from16 v25, v17

    .line 357
    .line 358
    move/from16 v2, v21

    .line 359
    .line 360
    move/from16 v12, v31

    .line 361
    .line 362
    goto :goto_9

    .line 363
    :cond_11
    if-ne v2, v15, :cond_12

    .line 364
    .line 365
    move/from16 v24, v5

    .line 366
    .line 367
    move/from16 v26, v11

    .line 368
    .line 369
    move/from16 v27, v12

    .line 370
    .line 371
    move/from16 v28, v13

    .line 372
    .line 373
    move-object/from16 v2, v32

    .line 374
    .line 375
    move-object/from16 v5, v33

    .line 376
    .line 377
    const/4 v11, 0x0

    .line 378
    const/4 v12, 0x3

    .line 379
    goto :goto_5

    .line 380
    :cond_12
    move/from16 v24, v6

    .line 381
    .line 382
    move/from16 v6, v31

    .line 383
    .line 384
    if-ne v12, v6, :cond_13

    .line 385
    .line 386
    aget-byte v6, v7, v2

    .line 387
    .line 388
    aput-byte v6, v4, v23

    .line 389
    .line 390
    add-int/lit8 v23, v23, 0x1

    .line 391
    .line 392
    add-int/lit8 v6, v24, 0x1

    .line 393
    .line 394
    move v12, v2

    .line 395
    move v13, v12

    .line 396
    move/from16 v2, v21

    .line 397
    .line 398
    :goto_a
    const/16 v31, -0x1

    .line 399
    .line 400
    goto :goto_9

    .line 401
    :cond_13
    if-lt v2, v5, :cond_14

    .line 402
    .line 403
    int-to-byte v6, v13

    .line 404
    aput-byte v6, v8, v29

    .line 405
    .line 406
    add-int/lit8 v29, v29, 0x1

    .line 407
    .line 408
    move v6, v12

    .line 409
    goto :goto_b

    .line 410
    :cond_14
    move v6, v2

    .line 411
    :goto_b
    if-lt v6, v14, :cond_15

    .line 412
    .line 413
    aget-byte v13, v7, v6

    .line 414
    .line 415
    aput-byte v13, v8, v29

    .line 416
    .line 417
    add-int/lit8 v29, v29, 0x1

    .line 418
    .line 419
    aget-short v6, v33, v6

    .line 420
    .line 421
    goto :goto_b

    .line 422
    :cond_15
    aget-byte v6, v7, v6

    .line 423
    .line 424
    and-int/lit16 v13, v6, 0xff

    .line 425
    .line 426
    int-to-byte v6, v13

    .line 427
    aput-byte v6, v4, v23

    .line 428
    .line 429
    :goto_c
    add-int/lit8 v23, v23, 0x1

    .line 430
    .line 431
    add-int/lit8 v24, v24, 0x1

    .line 432
    .line 433
    if-lez v29, :cond_16

    .line 434
    .line 435
    add-int/lit8 v29, v29, -0x1

    .line 436
    .line 437
    aget-byte v26, v8, v29

    .line 438
    .line 439
    aput-byte v26, v4, v23

    .line 440
    .line 441
    goto :goto_c

    .line 442
    :cond_16
    move/from16 v26, v2

    .line 443
    .line 444
    const/16 v2, 0x1000

    .line 445
    .line 446
    if-ge v5, v2, :cond_17

    .line 447
    .line 448
    int-to-short v12, v12

    .line 449
    aput-short v12, v33, v5

    .line 450
    .line 451
    aput-byte v6, v7, v5

    .line 452
    .line 453
    add-int/lit8 v5, v5, 0x1

    .line 454
    .line 455
    and-int v6, v5, v25

    .line 456
    .line 457
    if-nez v6, :cond_17

    .line 458
    .line 459
    if-ge v5, v2, :cond_17

    .line 460
    .line 461
    add-int/lit8 v11, v11, 0x1

    .line 462
    .line 463
    add-int v25, v25, v5

    .line 464
    .line 465
    :cond_17
    move/from16 v2, v21

    .line 466
    .line 467
    move/from16 v6, v24

    .line 468
    .line 469
    move/from16 v12, v26

    .line 470
    .line 471
    goto :goto_a

    .line 472
    :cond_18
    move/from16 v24, v6

    .line 473
    .line 474
    move/from16 v26, v11

    .line 475
    .line 476
    move/from16 v27, v12

    .line 477
    .line 478
    move/from16 v28, v13

    .line 479
    .line 480
    move-object/from16 v2, v32

    .line 481
    .line 482
    const/4 v11, 0x0

    .line 483
    const/4 v12, 0x3

    .line 484
    move/from16 v24, v5

    .line 485
    .line 486
    move-object/from16 v5, v33

    .line 487
    .line 488
    goto/16 :goto_5

    .line 489
    .line 490
    :cond_19
    move-object/from16 v32, v2

    .line 491
    .line 492
    move v5, v11

    .line 493
    goto/16 :goto_7

    .line 494
    .line 495
    :goto_d
    invoke-static {v4, v11, v3, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 496
    .line 497
    .line 498
    iget-boolean v2, v1, Lk2/c;->e:Z

    .line 499
    .line 500
    if-nez v2, :cond_24

    .line 501
    .line 502
    iget v2, v0, Lk2/f;->p:I

    .line 503
    .line 504
    move/from16 v3, p2

    .line 505
    .line 506
    if-eq v2, v3, :cond_1a

    .line 507
    .line 508
    goto/16 :goto_13

    .line 509
    .line 510
    :cond_1a
    iget-object v2, v0, Lk2/f;->j:[I

    .line 511
    .line 512
    iget v3, v1, Lk2/c;->d:I

    .line 513
    .line 514
    iget v4, v1, Lk2/c;->b:I

    .line 515
    .line 516
    iget v6, v1, Lk2/c;->c:I

    .line 517
    .line 518
    iget v7, v1, Lk2/c;->a:I

    .line 519
    .line 520
    iget v8, v0, Lk2/f;->k:I

    .line 521
    .line 522
    if-nez v8, :cond_1b

    .line 523
    .line 524
    const/4 v8, 0x1

    .line 525
    goto :goto_e

    .line 526
    :cond_1b
    move v8, v5

    .line 527
    :goto_e
    iget v9, v0, Lk2/f;->r:I

    .line 528
    .line 529
    iget-object v10, v0, Lk2/f;->i:[B

    .line 530
    .line 531
    iget-object v11, v0, Lk2/f;->a:[I

    .line 532
    .line 533
    move v12, v5

    .line 534
    const/4 v13, -0x1

    .line 535
    :goto_f
    if-ge v12, v3, :cond_20

    .line 536
    .line 537
    add-int v14, v12, v4

    .line 538
    .line 539
    mul-int/2addr v14, v9

    .line 540
    add-int v15, v14, v7

    .line 541
    .line 542
    add-int v5, v15, v6

    .line 543
    .line 544
    add-int/2addr v14, v9

    .line 545
    if-ge v14, v5, :cond_1c

    .line 546
    .line 547
    move v5, v14

    .line 548
    :cond_1c
    iget v14, v1, Lk2/c;->c:I

    .line 549
    .line 550
    mul-int/2addr v14, v12

    .line 551
    :goto_10
    if-ge v15, v5, :cond_1f

    .line 552
    .line 553
    move-object/from16 v16, v2

    .line 554
    .line 555
    aget-byte v2, v10, v14

    .line 556
    .line 557
    move/from16 v17, v3

    .line 558
    .line 559
    and-int/lit16 v3, v2, 0xff

    .line 560
    .line 561
    if-eq v3, v13, :cond_1e

    .line 562
    .line 563
    aget v3, v11, v3

    .line 564
    .line 565
    if-eqz v3, :cond_1d

    .line 566
    .line 567
    aput v3, v16, v15

    .line 568
    .line 569
    goto :goto_11

    .line 570
    :cond_1d
    move v13, v2

    .line 571
    :cond_1e
    :goto_11
    add-int/lit8 v14, v14, 0x1

    .line 572
    .line 573
    add-int/lit8 v15, v15, 0x1

    .line 574
    .line 575
    move-object/from16 v2, v16

    .line 576
    .line 577
    move/from16 v3, v17

    .line 578
    .line 579
    goto :goto_10

    .line 580
    :cond_1f
    move-object/from16 v16, v2

    .line 581
    .line 582
    move/from16 v17, v3

    .line 583
    .line 584
    add-int/lit8 v12, v12, 0x1

    .line 585
    .line 586
    const/4 v5, 0x0

    .line 587
    goto :goto_f

    .line 588
    :cond_20
    iget-object v2, v0, Lk2/f;->s:Ljava/lang/Boolean;

    .line 589
    .line 590
    if-eqz v2, :cond_21

    .line 591
    .line 592
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 593
    .line 594
    .line 595
    move-result v2

    .line 596
    if-nez v2, :cond_22

    .line 597
    .line 598
    :cond_21
    iget-object v2, v0, Lk2/f;->s:Ljava/lang/Boolean;

    .line 599
    .line 600
    if-nez v2, :cond_23

    .line 601
    .line 602
    if-eqz v8, :cond_23

    .line 603
    .line 604
    const/4 v6, -0x1

    .line 605
    if-eq v13, v6, :cond_23

    .line 606
    .line 607
    :cond_22
    const/4 v11, 0x1

    .line 608
    goto :goto_12

    .line 609
    :cond_23
    const/4 v11, 0x0

    .line 610
    :goto_12
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 611
    .line 612
    .line 613
    move-result-object v2

    .line 614
    iput-object v2, v0, Lk2/f;->s:Ljava/lang/Boolean;

    .line 615
    .line 616
    goto/16 :goto_22

    .line 617
    .line 618
    :cond_24
    :goto_13
    iget-object v2, v0, Lk2/f;->j:[I

    .line 619
    .line 620
    iget v3, v1, Lk2/c;->d:I

    .line 621
    .line 622
    iget v4, v0, Lk2/f;->p:I

    .line 623
    .line 624
    div-int/2addr v3, v4

    .line 625
    iget v5, v1, Lk2/c;->b:I

    .line 626
    .line 627
    div-int/2addr v5, v4

    .line 628
    iget v6, v1, Lk2/c;->c:I

    .line 629
    .line 630
    div-int/2addr v6, v4

    .line 631
    iget v7, v1, Lk2/c;->a:I

    .line 632
    .line 633
    div-int/2addr v7, v4

    .line 634
    iget v8, v0, Lk2/f;->k:I

    .line 635
    .line 636
    if-nez v8, :cond_25

    .line 637
    .line 638
    const/4 v8, 0x1

    .line 639
    goto :goto_14

    .line 640
    :cond_25
    const/4 v8, 0x0

    .line 641
    :goto_14
    iget v9, v0, Lk2/f;->r:I

    .line 642
    .line 643
    iget v10, v0, Lk2/f;->q:I

    .line 644
    .line 645
    iget-object v11, v0, Lk2/f;->i:[B

    .line 646
    .line 647
    iget-object v12, v0, Lk2/f;->a:[I

    .line 648
    .line 649
    iget-object v13, v0, Lk2/f;->s:Ljava/lang/Boolean;

    .line 650
    .line 651
    move-object/from16 v16, v13

    .line 652
    .line 653
    move/from16 v17, v30

    .line 654
    .line 655
    const/4 v13, 0x0

    .line 656
    const/4 v14, 0x1

    .line 657
    const/4 v15, 0x0

    .line 658
    :goto_15
    if-ge v15, v3, :cond_3a

    .line 659
    .line 660
    move-object/from16 v18, v2

    .line 661
    .line 662
    iget-boolean v2, v1, Lk2/c;->e:Z

    .line 663
    .line 664
    if-eqz v2, :cond_2a

    .line 665
    .line 666
    if-lt v13, v3, :cond_29

    .line 667
    .line 668
    add-int/lit8 v14, v14, 0x1

    .line 669
    .line 670
    const/4 v2, 0x2

    .line 671
    if-eq v14, v2, :cond_28

    .line 672
    .line 673
    const/4 v2, 0x3

    .line 674
    if-eq v14, v2, :cond_27

    .line 675
    .line 676
    const/4 v2, 0x4

    .line 677
    if-eq v14, v2, :cond_26

    .line 678
    .line 679
    goto :goto_16

    .line 680
    :cond_26
    const/4 v13, 0x1

    .line 681
    const/16 v17, 0x2

    .line 682
    .line 683
    goto :goto_16

    .line 684
    :cond_27
    const/4 v2, 0x4

    .line 685
    move/from16 v17, v2

    .line 686
    .line 687
    const/4 v13, 0x2

    .line 688
    goto :goto_16

    .line 689
    :cond_28
    const/4 v2, 0x4

    .line 690
    move v13, v2

    .line 691
    :cond_29
    :goto_16
    add-int v2, v13, v17

    .line 692
    .line 693
    goto :goto_17

    .line 694
    :cond_2a
    move v2, v13

    .line 695
    move v13, v15

    .line 696
    :goto_17
    add-int/2addr v13, v5

    .line 697
    move/from16 v19, v2

    .line 698
    .line 699
    const/4 v2, 0x1

    .line 700
    if-ne v4, v2, :cond_2b

    .line 701
    .line 702
    const/4 v2, 0x1

    .line 703
    goto :goto_18

    .line 704
    :cond_2b
    const/4 v2, 0x0

    .line 705
    :goto_18
    if-ge v13, v10, :cond_39

    .line 706
    .line 707
    mul-int/2addr v13, v9

    .line 708
    move/from16 v20, v2

    .line 709
    .line 710
    add-int v2, v13, v7

    .line 711
    .line 712
    move/from16 v21, v3

    .line 713
    .line 714
    add-int v3, v2, v6

    .line 715
    .line 716
    add-int/2addr v13, v9

    .line 717
    if-ge v13, v3, :cond_2c

    .line 718
    .line 719
    move v3, v13

    .line 720
    :cond_2c
    mul-int v13, v15, v4

    .line 721
    .line 722
    move/from16 v22, v5

    .line 723
    .line 724
    iget v5, v1, Lk2/c;->c:I

    .line 725
    .line 726
    mul-int/2addr v13, v5

    .line 727
    if-eqz v20, :cond_30

    .line 728
    .line 729
    :goto_19
    if-ge v2, v3, :cond_2f

    .line 730
    .line 731
    aget-byte v5, v11, v13

    .line 732
    .line 733
    and-int/lit16 v5, v5, 0xff

    .line 734
    .line 735
    aget v5, v12, v5

    .line 736
    .line 737
    if-eqz v5, :cond_2d

    .line 738
    .line 739
    aput v5, v18, v2

    .line 740
    .line 741
    goto :goto_1a

    .line 742
    :cond_2d
    if-eqz v8, :cond_2e

    .line 743
    .line 744
    if-nez v16, :cond_2e

    .line 745
    .line 746
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 747
    .line 748
    move-object/from16 v16, v5

    .line 749
    .line 750
    :cond_2e
    :goto_1a
    add-int/2addr v13, v4

    .line 751
    add-int/lit8 v2, v2, 0x1

    .line 752
    .line 753
    goto :goto_19

    .line 754
    :cond_2f
    move/from16 v31, v4

    .line 755
    .line 756
    goto/16 :goto_20

    .line 757
    .line 758
    :cond_30
    invoke-static {v3, v2, v4, v13}, LA/i;->a(IIII)I

    .line 759
    .line 760
    .line 761
    move-result v5

    .line 762
    :goto_1b
    if-ge v2, v3, :cond_2f

    .line 763
    .line 764
    move/from16 v20, v2

    .line 765
    .line 766
    iget v2, v1, Lk2/c;->c:I

    .line 767
    .line 768
    move/from16 v28, v2

    .line 769
    .line 770
    move/from16 v29, v3

    .line 771
    .line 772
    move v2, v13

    .line 773
    const/16 v23, 0x0

    .line 774
    .line 775
    const/16 v24, 0x0

    .line 776
    .line 777
    const/16 v25, 0x0

    .line 778
    .line 779
    const/16 v26, 0x0

    .line 780
    .line 781
    const/16 v27, 0x0

    .line 782
    .line 783
    :goto_1c
    iget v3, v0, Lk2/f;->p:I

    .line 784
    .line 785
    add-int/2addr v3, v13

    .line 786
    if-ge v2, v3, :cond_32

    .line 787
    .line 788
    iget-object v3, v0, Lk2/f;->i:[B

    .line 789
    .line 790
    move/from16 v31, v4

    .line 791
    .line 792
    array-length v4, v3

    .line 793
    if-ge v2, v4, :cond_33

    .line 794
    .line 795
    if-ge v2, v5, :cond_33

    .line 796
    .line 797
    aget-byte v3, v3, v2

    .line 798
    .line 799
    and-int/lit16 v3, v3, 0xff

    .line 800
    .line 801
    iget-object v4, v0, Lk2/f;->a:[I

    .line 802
    .line 803
    aget v3, v4, v3

    .line 804
    .line 805
    if-eqz v3, :cond_31

    .line 806
    .line 807
    shr-int/lit8 v4, v3, 0x18

    .line 808
    .line 809
    and-int/lit16 v4, v4, 0xff

    .line 810
    .line 811
    add-int v23, v23, v4

    .line 812
    .line 813
    shr-int/lit8 v4, v3, 0x10

    .line 814
    .line 815
    and-int/lit16 v4, v4, 0xff

    .line 816
    .line 817
    add-int v24, v24, v4

    .line 818
    .line 819
    shr-int/lit8 v4, v3, 0x8

    .line 820
    .line 821
    and-int/lit16 v4, v4, 0xff

    .line 822
    .line 823
    add-int v25, v25, v4

    .line 824
    .line 825
    and-int/lit16 v3, v3, 0xff

    .line 826
    .line 827
    add-int v26, v26, v3

    .line 828
    .line 829
    add-int/lit8 v27, v27, 0x1

    .line 830
    .line 831
    :cond_31
    add-int/lit8 v2, v2, 0x1

    .line 832
    .line 833
    move/from16 v4, v31

    .line 834
    .line 835
    goto :goto_1c

    .line 836
    :cond_32
    move/from16 v31, v4

    .line 837
    .line 838
    :cond_33
    add-int v2, v13, v28

    .line 839
    .line 840
    move v3, v2

    .line 841
    :goto_1d
    iget v4, v0, Lk2/f;->p:I

    .line 842
    .line 843
    add-int/2addr v4, v2

    .line 844
    if-ge v3, v4, :cond_35

    .line 845
    .line 846
    iget-object v4, v0, Lk2/f;->i:[B

    .line 847
    .line 848
    move/from16 v28, v2

    .line 849
    .line 850
    array-length v2, v4

    .line 851
    if-ge v3, v2, :cond_35

    .line 852
    .line 853
    if-ge v3, v5, :cond_35

    .line 854
    .line 855
    aget-byte v2, v4, v3

    .line 856
    .line 857
    and-int/lit16 v2, v2, 0xff

    .line 858
    .line 859
    iget-object v4, v0, Lk2/f;->a:[I

    .line 860
    .line 861
    aget v2, v4, v2

    .line 862
    .line 863
    if-eqz v2, :cond_34

    .line 864
    .line 865
    shr-int/lit8 v4, v2, 0x18

    .line 866
    .line 867
    and-int/lit16 v4, v4, 0xff

    .line 868
    .line 869
    add-int v23, v23, v4

    .line 870
    .line 871
    shr-int/lit8 v4, v2, 0x10

    .line 872
    .line 873
    and-int/lit16 v4, v4, 0xff

    .line 874
    .line 875
    add-int v24, v24, v4

    .line 876
    .line 877
    shr-int/lit8 v4, v2, 0x8

    .line 878
    .line 879
    and-int/lit16 v4, v4, 0xff

    .line 880
    .line 881
    add-int v25, v25, v4

    .line 882
    .line 883
    and-int/lit16 v2, v2, 0xff

    .line 884
    .line 885
    add-int v26, v26, v2

    .line 886
    .line 887
    add-int/lit8 v27, v27, 0x1

    .line 888
    .line 889
    :cond_34
    add-int/lit8 v3, v3, 0x1

    .line 890
    .line 891
    move/from16 v2, v28

    .line 892
    .line 893
    goto :goto_1d

    .line 894
    :cond_35
    if-nez v27, :cond_36

    .line 895
    .line 896
    const/4 v2, 0x0

    .line 897
    goto :goto_1e

    .line 898
    :cond_36
    div-int v23, v23, v27

    .line 899
    .line 900
    shl-int/lit8 v2, v23, 0x18

    .line 901
    .line 902
    div-int v24, v24, v27

    .line 903
    .line 904
    shl-int/lit8 v3, v24, 0x10

    .line 905
    .line 906
    or-int/2addr v2, v3

    .line 907
    div-int v25, v25, v27

    .line 908
    .line 909
    shl-int/lit8 v3, v25, 0x8

    .line 910
    .line 911
    or-int/2addr v2, v3

    .line 912
    div-int v26, v26, v27

    .line 913
    .line 914
    or-int v2, v2, v26

    .line 915
    .line 916
    :goto_1e
    if-eqz v2, :cond_37

    .line 917
    .line 918
    aput v2, v18, v20

    .line 919
    .line 920
    goto :goto_1f

    .line 921
    :cond_37
    if-eqz v8, :cond_38

    .line 922
    .line 923
    if-nez v16, :cond_38

    .line 924
    .line 925
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 926
    .line 927
    move-object/from16 v16, v2

    .line 928
    .line 929
    :cond_38
    :goto_1f
    add-int v13, v13, v31

    .line 930
    .line 931
    add-int/lit8 v2, v20, 0x1

    .line 932
    .line 933
    move/from16 v3, v29

    .line 934
    .line 935
    move/from16 v4, v31

    .line 936
    .line 937
    goto/16 :goto_1b

    .line 938
    .line 939
    :cond_39
    move/from16 v21, v3

    .line 940
    .line 941
    move/from16 v31, v4

    .line 942
    .line 943
    move/from16 v22, v5

    .line 944
    .line 945
    :goto_20
    add-int/lit8 v15, v15, 0x1

    .line 946
    .line 947
    move-object/from16 v2, v18

    .line 948
    .line 949
    move/from16 v13, v19

    .line 950
    .line 951
    move/from16 v3, v21

    .line 952
    .line 953
    move/from16 v5, v22

    .line 954
    .line 955
    move/from16 v4, v31

    .line 956
    .line 957
    goto/16 :goto_15

    .line 958
    .line 959
    :cond_3a
    iget-object v2, v0, Lk2/f;->s:Ljava/lang/Boolean;

    .line 960
    .line 961
    if-nez v2, :cond_3c

    .line 962
    .line 963
    if-nez v16, :cond_3b

    .line 964
    .line 965
    const/4 v11, 0x0

    .line 966
    goto :goto_21

    .line 967
    :cond_3b
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    .line 968
    .line 969
    .line 970
    move-result v11

    .line 971
    :goto_21
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 972
    .line 973
    .line 974
    move-result-object v2

    .line 975
    iput-object v2, v0, Lk2/f;->s:Ljava/lang/Boolean;

    .line 976
    .line 977
    :cond_3c
    :goto_22
    iget-boolean v2, v0, Lk2/f;->n:Z

    .line 978
    .line 979
    if-eqz v2, :cond_3d

    .line 980
    .line 981
    iget v1, v1, Lk2/c;->g:I

    .line 982
    .line 983
    if-eqz v1, :cond_3e

    .line 984
    .line 985
    const/4 v2, 0x1

    .line 986
    if-ne v1, v2, :cond_3d

    .line 987
    .line 988
    goto :goto_23

    .line 989
    :cond_3d
    move-object/from16 v2, v32

    .line 990
    .line 991
    goto :goto_24

    .line 992
    :cond_3e
    :goto_23
    iget-object v1, v0, Lk2/f;->m:Landroid/graphics/Bitmap;

    .line 993
    .line 994
    if-nez v1, :cond_3f

    .line 995
    .line 996
    invoke-virtual {v0}, Lk2/f;->a()Landroid/graphics/Bitmap;

    .line 997
    .line 998
    .line 999
    move-result-object v1

    .line 1000
    iput-object v1, v0, Lk2/f;->m:Landroid/graphics/Bitmap;

    .line 1001
    .line 1002
    :cond_3f
    iget-object v1, v0, Lk2/f;->m:Landroid/graphics/Bitmap;

    .line 1003
    .line 1004
    iget v4, v0, Lk2/f;->r:I

    .line 1005
    .line 1006
    iget v8, v0, Lk2/f;->q:I

    .line 1007
    .line 1008
    const/4 v3, 0x0

    .line 1009
    const/4 v5, 0x0

    .line 1010
    const/4 v6, 0x0

    .line 1011
    move v7, v4

    .line 1012
    move-object/from16 v2, v32

    .line 1013
    .line 1014
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 1015
    .line 1016
    .line 1017
    :goto_24
    invoke-virtual {v0}, Lk2/f;->a()Landroid/graphics/Bitmap;

    .line 1018
    .line 1019
    .line 1020
    move-result-object v1

    .line 1021
    iget v4, v0, Lk2/f;->r:I

    .line 1022
    .line 1023
    iget v8, v0, Lk2/f;->q:I

    .line 1024
    .line 1025
    const/4 v3, 0x0

    .line 1026
    const/4 v5, 0x0

    .line 1027
    const/4 v6, 0x0

    .line 1028
    move v7, v4

    .line 1029
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 1030
    .line 1031
    .line 1032
    return-object v1
.end method

.method public clear()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lk2/f;->l:Lk2/d;

    .line 3
    .line 4
    iget-object v1, p0, Lk2/f;->i:[B

    .line 5
    .line 6
    iget-object v2, p0, Lk2/f;->c:Lk2/a;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    move-object v3, v2

    .line 11
    check-cast v3, Ly2/b;

    .line 12
    .line 13
    invoke-virtual {v3, v1}, Ly2/b;->release([B)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v1, p0, Lk2/f;->j:[I

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    move-object v3, v2

    .line 21
    check-cast v3, Ly2/b;

    .line 22
    .line 23
    invoke-virtual {v3, v1}, Ly2/b;->release([I)V

    .line 24
    .line 25
    .line 26
    :cond_1
    iget-object v1, p0, Lk2/f;->m:Landroid/graphics/Bitmap;

    .line 27
    .line 28
    if-eqz v1, :cond_2

    .line 29
    .line 30
    move-object v3, v2

    .line 31
    check-cast v3, Ly2/b;

    .line 32
    .line 33
    invoke-virtual {v3, v1}, Ly2/b;->release(Landroid/graphics/Bitmap;)V

    .line 34
    .line 35
    .line 36
    :cond_2
    iput-object v0, p0, Lk2/f;->m:Landroid/graphics/Bitmap;

    .line 37
    .line 38
    iput-object v0, p0, Lk2/f;->d:Ljava/nio/ByteBuffer;

    .line 39
    .line 40
    iput-object v0, p0, Lk2/f;->s:Ljava/lang/Boolean;

    .line 41
    .line 42
    iget-object v0, p0, Lk2/f;->e:[B

    .line 43
    .line 44
    if-eqz v0, :cond_3

    .line 45
    .line 46
    check-cast v2, Ly2/b;

    .line 47
    .line 48
    invoke-virtual {v2, v0}, Ly2/b;->release([B)V

    .line 49
    .line 50
    .line 51
    :cond_3
    return-void
.end method

.method public getByteSize()I
    .locals 2

    .line 1
    iget-object v0, p0, Lk2/f;->d:Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lk2/f;->i:[B

    .line 8
    .line 9
    array-length v1, v1

    .line 10
    add-int/2addr v0, v1

    .line 11
    iget-object v1, p0, Lk2/f;->j:[I

    .line 12
    .line 13
    array-length v1, v1

    .line 14
    mul-int/lit8 v1, v1, 0x4

    .line 15
    .line 16
    add-int/2addr v1, v0

    .line 17
    return v1
.end method

.method public getCurrentFrameIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lk2/f;->k:I

    .line 2
    .line 3
    return v0
.end method

.method public getData()Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    iget-object v0, p0, Lk2/f;->d:Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDelay(I)I
    .locals 2

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lk2/f;->l:Lk2/d;

    .line 4
    .line 5
    iget v1, v0, Lk2/d;->c:I

    .line 6
    .line 7
    if-ge p1, v1, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Lk2/d;->e:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lk2/c;

    .line 16
    .line 17
    iget p1, p1, Lk2/c;->i:I

    .line 18
    .line 19
    return p1

    .line 20
    :cond_0
    const/4 p1, -0x1

    .line 21
    return p1
.end method

.method public getFrameCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lk2/f;->l:Lk2/d;

    .line 2
    .line 3
    iget v0, v0, Lk2/d;->c:I

    .line 4
    .line 5
    return v0
.end method

.method public getNextDelay()I
    .locals 1

    .line 1
    iget-object v0, p0, Lk2/f;->l:Lk2/d;

    .line 2
    .line 3
    iget v0, v0, Lk2/d;->c:I

    .line 4
    .line 5
    if-lez v0, :cond_1

    .line 6
    .line 7
    iget v0, p0, Lk2/f;->k:I

    .line 8
    .line 9
    if-gez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0, v0}, Lk2/f;->getDelay(I)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    return v0

    .line 17
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 18
    return v0
.end method

.method public declared-synchronized getNextFrame()Landroid/graphics/Bitmap;
    .locals 9

    .line 1
    const-string v0, "Unable to decode frame, status="

    .line 2
    .line 3
    const-string v1, "No valid color table found for frame #"

    .line 4
    .line 5
    const-string v2, "Unable to decode frame, frameCount="

    .line 6
    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    iget-object v3, p0, Lk2/f;->l:Lk2/d;

    .line 9
    .line 10
    iget v3, v3, Lk2/d;->c:I

    .line 11
    .line 12
    const/4 v4, 0x3

    .line 13
    const/4 v5, 0x1

    .line 14
    if-lez v3, :cond_0

    .line 15
    .line 16
    iget v3, p0, Lk2/f;->k:I

    .line 17
    .line 18
    if-gez v3, :cond_2

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    goto/16 :goto_4

    .line 23
    .line 24
    :cond_0
    :goto_0
    const-string v3, "f"

    .line 25
    .line 26
    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    const-string v3, "f"

    .line 33
    .line 34
    new-instance v6, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v2, p0, Lk2/f;->l:Lk2/d;

    .line 40
    .line 41
    iget v2, v2, Lk2/d;->c:I

    .line 42
    .line 43
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v2, ", framePointer="

    .line 47
    .line 48
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget v2, p0, Lk2/f;->k:I

    .line 52
    .line 53
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    :cond_1
    iput v5, p0, Lk2/f;->o:I

    .line 64
    .line 65
    :cond_2
    iget v2, p0, Lk2/f;->o:I

    .line 66
    .line 67
    const/4 v3, 0x0

    .line 68
    if-eq v2, v5, :cond_a

    .line 69
    .line 70
    const/4 v6, 0x2

    .line 71
    if-ne v2, v6, :cond_3

    .line 72
    .line 73
    goto/16 :goto_3

    .line 74
    .line 75
    :cond_3
    const/4 v0, 0x0

    .line 76
    iput v0, p0, Lk2/f;->o:I

    .line 77
    .line 78
    iget-object v2, p0, Lk2/f;->e:[B

    .line 79
    .line 80
    if-nez v2, :cond_4

    .line 81
    .line 82
    iget-object v2, p0, Lk2/f;->c:Lk2/a;

    .line 83
    .line 84
    check-cast v2, Ly2/b;

    .line 85
    .line 86
    const/16 v7, 0xff

    .line 87
    .line 88
    invoke-virtual {v2, v7}, Ly2/b;->obtainByteArray(I)[B

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    iput-object v2, p0, Lk2/f;->e:[B

    .line 93
    .line 94
    :cond_4
    iget-object v2, p0, Lk2/f;->l:Lk2/d;

    .line 95
    .line 96
    iget-object v2, v2, Lk2/d;->e:Ljava/util/ArrayList;

    .line 97
    .line 98
    iget v7, p0, Lk2/f;->k:I

    .line 99
    .line 100
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    check-cast v2, Lk2/c;

    .line 105
    .line 106
    iget v7, p0, Lk2/f;->k:I

    .line 107
    .line 108
    sub-int/2addr v7, v5

    .line 109
    if-ltz v7, :cond_5

    .line 110
    .line 111
    iget-object v8, p0, Lk2/f;->l:Lk2/d;

    .line 112
    .line 113
    iget-object v8, v8, Lk2/d;->e:Ljava/util/ArrayList;

    .line 114
    .line 115
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v7

    .line 119
    check-cast v7, Lk2/c;

    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_5
    move-object v7, v3

    .line 123
    :goto_1
    iget-object v8, v2, Lk2/c;->k:[I

    .line 124
    .line 125
    if-eqz v8, :cond_6

    .line 126
    .line 127
    goto :goto_2

    .line 128
    :cond_6
    iget-object v8, p0, Lk2/f;->l:Lk2/d;

    .line 129
    .line 130
    iget-object v8, v8, Lk2/d;->a:[I

    .line 131
    .line 132
    :goto_2
    iput-object v8, p0, Lk2/f;->a:[I

    .line 133
    .line 134
    if-nez v8, :cond_8

    .line 135
    .line 136
    const-string v0, "f"

    .line 137
    .line 138
    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    if-eqz v0, :cond_7

    .line 143
    .line 144
    const-string v0, "f"

    .line 145
    .line 146
    new-instance v2, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    iget v1, p0, Lk2/f;->k:I

    .line 152
    .line 153
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    .line 162
    .line 163
    :cond_7
    iput v5, p0, Lk2/f;->o:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    .line 165
    monitor-exit p0

    .line 166
    return-object v3

    .line 167
    :cond_8
    :try_start_1
    iget-boolean v1, v2, Lk2/c;->f:Z

    .line 168
    .line 169
    if-eqz v1, :cond_9

    .line 170
    .line 171
    iget-object v1, p0, Lk2/f;->b:[I

    .line 172
    .line 173
    array-length v3, v8

    .line 174
    invoke-static {v8, v0, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 175
    .line 176
    .line 177
    iget-object v1, p0, Lk2/f;->b:[I

    .line 178
    .line 179
    iput-object v1, p0, Lk2/f;->a:[I

    .line 180
    .line 181
    iget v3, v2, Lk2/c;->h:I

    .line 182
    .line 183
    aput v0, v1, v3

    .line 184
    .line 185
    iget v0, v2, Lk2/c;->g:I

    .line 186
    .line 187
    if-ne v0, v6, :cond_9

    .line 188
    .line 189
    iget v0, p0, Lk2/f;->k:I

    .line 190
    .line 191
    if-nez v0, :cond_9

    .line 192
    .line 193
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 194
    .line 195
    iput-object v0, p0, Lk2/f;->s:Ljava/lang/Boolean;

    .line 196
    .line 197
    :cond_9
    invoke-virtual {p0, v2, v7}, Lk2/f;->b(Lk2/c;Lk2/c;)Landroid/graphics/Bitmap;

    .line 198
    .line 199
    .line 200
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 201
    monitor-exit p0

    .line 202
    return-object v0

    .line 203
    :cond_a
    :goto_3
    :try_start_2
    const-string v1, "f"

    .line 204
    .line 205
    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 206
    .line 207
    .line 208
    move-result v1

    .line 209
    if-eqz v1, :cond_b

    .line 210
    .line 211
    const-string v1, "f"

    .line 212
    .line 213
    new-instance v2, Ljava/lang/StringBuilder;

    .line 214
    .line 215
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    iget v0, p0, Lk2/f;->o:I

    .line 219
    .line 220
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 228
    .line 229
    .line 230
    :cond_b
    monitor-exit p0

    .line 231
    return-object v3

    .line 232
    :goto_4
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 233
    throw v0
.end method

.method public declared-synchronized setData(Lk2/d;Ljava/nio/ByteBuffer;I)V
    .locals 2

    .line 1
    const-string v0, "Sample size must be >=0, not: "

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    if-lez p3, :cond_2

    .line 5
    .line 6
    :try_start_0
    invoke-static {p3}, Ljava/lang/Integer;->highestOneBit(I)I

    .line 7
    .line 8
    .line 9
    move-result p3

    .line 10
    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lk2/f;->o:I

    .line 12
    .line 13
    iput-object p1, p0, Lk2/f;->l:Lk2/d;

    .line 14
    .line 15
    const/4 v1, -0x1

    .line 16
    iput v1, p0, Lk2/f;->k:I

    .line 17
    .line 18
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    iput-object p2, p0, Lk2/f;->d:Ljava/nio/ByteBuffer;

    .line 23
    .line 24
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 25
    .line 26
    .line 27
    iget-object p2, p0, Lk2/f;->d:Ljava/nio/ByteBuffer;

    .line 28
    .line 29
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 30
    .line 31
    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 32
    .line 33
    .line 34
    iput-boolean v0, p0, Lk2/f;->n:Z

    .line 35
    .line 36
    iget-object p2, p1, Lk2/d;->e:Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Lk2/c;

    .line 53
    .line 54
    iget v0, v0, Lk2/c;->g:I

    .line 55
    .line 56
    const/4 v1, 0x3

    .line 57
    if-ne v0, v1, :cond_0

    .line 58
    .line 59
    const/4 p2, 0x1

    .line 60
    iput-boolean p2, p0, Lk2/f;->n:Z

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :catchall_0
    move-exception p1

    .line 64
    goto :goto_1

    .line 65
    :cond_1
    :goto_0
    iput p3, p0, Lk2/f;->p:I

    .line 66
    .line 67
    iget p2, p1, Lk2/d;->f:I

    .line 68
    .line 69
    div-int v0, p2, p3

    .line 70
    .line 71
    iput v0, p0, Lk2/f;->r:I

    .line 72
    .line 73
    iget p1, p1, Lk2/d;->g:I

    .line 74
    .line 75
    div-int p3, p1, p3

    .line 76
    .line 77
    iput p3, p0, Lk2/f;->q:I

    .line 78
    .line 79
    iget-object p3, p0, Lk2/f;->c:Lk2/a;

    .line 80
    .line 81
    mul-int/2addr p2, p1

    .line 82
    check-cast p3, Ly2/b;

    .line 83
    .line 84
    invoke-virtual {p3, p2}, Ly2/b;->obtainByteArray(I)[B

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    iput-object p1, p0, Lk2/f;->i:[B

    .line 89
    .line 90
    iget-object p1, p0, Lk2/f;->c:Lk2/a;

    .line 91
    .line 92
    iget p2, p0, Lk2/f;->r:I

    .line 93
    .line 94
    iget p3, p0, Lk2/f;->q:I

    .line 95
    .line 96
    mul-int/2addr p2, p3

    .line 97
    check-cast p1, Ly2/b;

    .line 98
    .line 99
    invoke-virtual {p1, p2}, Ly2/b;->obtainIntArray(I)[I

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    iput-object p1, p0, Lk2/f;->j:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    .line 105
    monitor-exit p0

    .line 106
    return-void

    .line 107
    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 108
    .line 109
    new-instance p2, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p2

    .line 121
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    throw p1

    .line 125
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    throw p1
.end method

.method public setDefaultBitmapConfig(Landroid/graphics/Bitmap$Config;)V
    .locals 5

    .line 1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 2
    .line 3
    if-eq p1, v0, :cond_1

    .line 4
    .line 5
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 6
    .line 7
    if-ne p1, v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 11
    .line 12
    new-instance v3, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v4, "Unsupported format: "

    .line 15
    .line 16
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string p1, ", must be one of "

    .line 23
    .line 24
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string p1, " or "

    .line 31
    .line 32
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-direct {v2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw v2

    .line 46
    :cond_1
    :goto_0
    iput-object p1, p0, Lk2/f;->t:Landroid/graphics/Bitmap$Config;

    .line 47
    .line 48
    return-void
.end method
