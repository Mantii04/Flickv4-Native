.class public final Lc1/Q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc1/J;


# instance fields
.field public final a:Landroidx/media3/common/util/ParsableBitArray;

.field public final b:Landroid/util/SparseArray;

.field public final c:Landroid/util/SparseIntArray;

.field public final d:I

.field public final synthetic e:Lc1/S;


# direct methods
.method public constructor <init>(Lc1/S;I)V
    .locals 1

    .line 1
    iput-object p1, p0, Lc1/Q;->e:Lc1/S;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Landroidx/media3/common/util/ParsableBitArray;

    .line 7
    .line 8
    const/4 v0, 0x5

    .line 9
    new-array v0, v0, [B

    .line 10
    .line 11
    invoke-direct {p1, v0}, Landroidx/media3/common/util/ParsableBitArray;-><init>([B)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lc1/Q;->a:Landroidx/media3/common/util/ParsableBitArray;

    .line 15
    .line 16
    new-instance p1, Landroid/util/SparseArray;

    .line 17
    .line 18
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lc1/Q;->b:Landroid/util/SparseArray;

    .line 22
    .line 23
    new-instance p1, Landroid/util/SparseIntArray;

    .line 24
    .line 25
    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Lc1/Q;->c:Landroid/util/SparseIntArray;

    .line 29
    .line 30
    iput p2, p0, Lc1/Q;->d:I

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public consume(Landroidx/media3/common/util/ParsableByteArray;)V
    .locals 37

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x2

    .line 10
    if-eq v2, v3, :cond_0

    .line 11
    .line 12
    goto/16 :goto_13

    .line 13
    .line 14
    :cond_0
    iget-object v2, v0, Lc1/Q;->e:Lc1/S;

    .line 15
    .line 16
    iget v4, v2, Lc1/S;->a:I

    .line 17
    .line 18
    const/4 v5, 0x1

    .line 19
    iget-object v6, v2, Lc1/S;->d:Ljava/util/List;

    .line 20
    .line 21
    const/4 v7, 0x0

    .line 22
    if-eq v4, v5, :cond_2

    .line 23
    .line 24
    if-eq v4, v3, :cond_2

    .line 25
    .line 26
    iget v4, v2, Lc1/S;->o:I

    .line 27
    .line 28
    if-ne v4, v5, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    new-instance v4, Landroidx/media3/common/util/TimestampAdjuster;

    .line 32
    .line 33
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v8

    .line 37
    check-cast v8, Landroidx/media3/common/util/TimestampAdjuster;

    .line 38
    .line 39
    invoke-virtual {v8}, Landroidx/media3/common/util/TimestampAdjuster;->getFirstSampleTimestampUs()J

    .line 40
    .line 41
    .line 42
    move-result-wide v8

    .line 43
    invoke-direct {v4, v8, v9}, Landroidx/media3/common/util/TimestampAdjuster;-><init>(J)V

    .line 44
    .line 45
    .line 46
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    :goto_0
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    check-cast v4, Landroidx/media3/common/util/TimestampAdjuster;

    .line 55
    .line 56
    :goto_1
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 57
    .line 58
    .line 59
    move-result v6

    .line 60
    and-int/lit16 v6, v6, 0x80

    .line 61
    .line 62
    if-nez v6, :cond_3

    .line 63
    .line 64
    goto/16 :goto_13

    .line 65
    .line 66
    :cond_3
    invoke-virtual {v1, v5}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    .line 70
    .line 71
    .line 72
    move-result v6

    .line 73
    const/4 v8, 0x3

    .line 74
    invoke-virtual {v1, v8}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 75
    .line 76
    .line 77
    iget-object v9, v0, Lc1/Q;->a:Landroidx/media3/common/util/ParsableBitArray;

    .line 78
    .line 79
    invoke-virtual {v1, v9, v3}, Landroidx/media3/common/util/ParsableByteArray;->readBytes(Landroidx/media3/common/util/ParsableBitArray;I)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v9, v8}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 83
    .line 84
    .line 85
    const/16 v10, 0xd

    .line 86
    .line 87
    invoke-virtual {v9, v10}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 88
    .line 89
    .line 90
    move-result v11

    .line 91
    iput v11, v2, Lc1/S;->u:I

    .line 92
    .line 93
    invoke-virtual {v1, v9, v3}, Landroidx/media3/common/util/ParsableByteArray;->readBytes(Landroidx/media3/common/util/ParsableBitArray;I)V

    .line 94
    .line 95
    .line 96
    const/4 v11, 0x4

    .line 97
    invoke-virtual {v9, v11}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 98
    .line 99
    .line 100
    const/16 v12, 0xc

    .line 101
    .line 102
    invoke-virtual {v9, v12}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 103
    .line 104
    .line 105
    move-result v13

    .line 106
    invoke-virtual {v1, v13}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 107
    .line 108
    .line 109
    iget-object v13, v2, Lc1/S;->g:Lc1/V;

    .line 110
    .line 111
    iget v14, v2, Lc1/S;->a:I

    .line 112
    .line 113
    const/16 v15, 0x2000

    .line 114
    .line 115
    const/16 v5, 0x15

    .line 116
    .line 117
    if-ne v14, v3, :cond_4

    .line 118
    .line 119
    iget-object v3, v2, Lc1/S;->s:Lc1/X;

    .line 120
    .line 121
    if-nez v3, :cond_4

    .line 122
    .line 123
    new-instance v16, Lc1/U;

    .line 124
    .line 125
    sget-object v21, Landroidx/media3/common/util/Util;->EMPTY_BYTE_ARRAY:[B

    .line 126
    .line 127
    const/16 v18, 0x0

    .line 128
    .line 129
    const/16 v19, 0x0

    .line 130
    .line 131
    const/16 v17, 0x15

    .line 132
    .line 133
    const/16 v20, 0x0

    .line 134
    .line 135
    invoke-direct/range {v16 .. v21}, Lc1/U;-><init>(ILjava/lang/String;ILjava/util/List;[B)V

    .line 136
    .line 137
    .line 138
    move-object/from16 v3, v16

    .line 139
    .line 140
    move-object v7, v13

    .line 141
    check-cast v7, Lc1/g;

    .line 142
    .line 143
    invoke-virtual {v7, v5, v3}, Lc1/g;->createPayloadReader(ILc1/U;)Lc1/X;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    iput-object v3, v2, Lc1/S;->s:Lc1/X;

    .line 148
    .line 149
    if-eqz v3, :cond_4

    .line 150
    .line 151
    iget-object v7, v2, Lc1/S;->n:Lv0/F;

    .line 152
    .line 153
    new-instance v12, Lc1/W;

    .line 154
    .line 155
    invoke-direct {v12, v6, v5, v15}, Lc1/W;-><init>(III)V

    .line 156
    .line 157
    .line 158
    invoke-interface {v3, v4, v7, v12}, Lc1/X;->init(Landroidx/media3/common/util/TimestampAdjuster;Lv0/F;Lc1/W;)V

    .line 159
    .line 160
    .line 161
    :cond_4
    iget-object v3, v0, Lc1/Q;->b:Landroid/util/SparseArray;

    .line 162
    .line 163
    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 164
    .line 165
    .line 166
    iget-object v7, v0, Lc1/Q;->c:Landroid/util/SparseIntArray;

    .line 167
    .line 168
    invoke-virtual {v7}, Landroid/util/SparseIntArray;->clear()V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 172
    .line 173
    .line 174
    move-result v12

    .line 175
    :goto_2
    iget-object v15, v2, Lc1/S;->j:Landroid/util/SparseBooleanArray;

    .line 176
    .line 177
    if-lez v12, :cond_1d

    .line 178
    .line 179
    const/4 v5, 0x5

    .line 180
    invoke-virtual {v1, v9, v5}, Landroidx/media3/common/util/ParsableByteArray;->readBytes(Landroidx/media3/common/util/ParsableBitArray;I)V

    .line 181
    .line 182
    .line 183
    const/16 v5, 0x8

    .line 184
    .line 185
    invoke-virtual {v9, v5}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 186
    .line 187
    .line 188
    move-result v5

    .line 189
    invoke-virtual {v9, v8}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v9, v10}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 193
    .line 194
    .line 195
    move-result v8

    .line 196
    invoke-virtual {v9, v11}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 197
    .line 198
    .line 199
    const/16 v10, 0xc

    .line 200
    .line 201
    invoke-virtual {v9, v10}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 202
    .line 203
    .line 204
    move-result v17

    .line 205
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    .line 206
    .line 207
    .line 208
    move-result v10

    .line 209
    add-int v11, v10, v17

    .line 210
    .line 211
    const/16 v23, -0x1

    .line 212
    .line 213
    const/16 v24, 0x0

    .line 214
    .line 215
    move/from16 v26, v23

    .line 216
    .line 217
    move-object/from16 v27, v24

    .line 218
    .line 219
    move-object/from16 v29, v27

    .line 220
    .line 221
    const/16 v28, 0x0

    .line 222
    .line 223
    move-object/from16 v23, v9

    .line 224
    .line 225
    :goto_3
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    .line 226
    .line 227
    .line 228
    move-result v9

    .line 229
    if-ge v9, v11, :cond_15

    .line 230
    .line 231
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 232
    .line 233
    .line 234
    move-result v9

    .line 235
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 236
    .line 237
    .line 238
    move-result v24

    .line 239
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    .line 240
    .line 241
    .line 242
    move-result v25

    .line 243
    move/from16 v31, v12

    .line 244
    .line 245
    add-int v12, v25, v24

    .line 246
    .line 247
    if-le v12, v11, :cond_5

    .line 248
    .line 249
    :goto_4
    move-object/from16 v22, v4

    .line 250
    .line 251
    move/from16 v34, v6

    .line 252
    .line 253
    move-object/from16 v32, v13

    .line 254
    .line 255
    const/4 v0, 0x4

    .line 256
    goto/16 :goto_b

    .line 257
    .line 258
    :cond_5
    const/16 v24, 0xac

    .line 259
    .line 260
    const/16 v25, 0x87

    .line 261
    .line 262
    const/16 v30, 0x81

    .line 263
    .line 264
    move-object/from16 v32, v13

    .line 265
    .line 266
    const/4 v13, 0x5

    .line 267
    if-ne v9, v13, :cond_a

    .line 268
    .line 269
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    .line 270
    .line 271
    .line 272
    move-result-wide v33

    .line 273
    const-wide/32 v35, 0x41432d33

    .line 274
    .line 275
    .line 276
    cmp-long v9, v33, v35

    .line 277
    .line 278
    if-nez v9, :cond_6

    .line 279
    .line 280
    move/from16 v26, v30

    .line 281
    .line 282
    goto :goto_6

    .line 283
    :cond_6
    const-wide/32 v35, 0x45414333

    .line 284
    .line 285
    .line 286
    cmp-long v9, v33, v35

    .line 287
    .line 288
    if-nez v9, :cond_7

    .line 289
    .line 290
    move/from16 v26, v25

    .line 291
    .line 292
    goto :goto_6

    .line 293
    :cond_7
    const-wide/32 v35, 0x41432d34

    .line 294
    .line 295
    .line 296
    cmp-long v9, v33, v35

    .line 297
    .line 298
    if-nez v9, :cond_8

    .line 299
    .line 300
    :goto_5
    move/from16 v26, v24

    .line 301
    .line 302
    goto :goto_6

    .line 303
    :cond_8
    const-wide/32 v24, 0x48455643

    .line 304
    .line 305
    .line 306
    cmp-long v9, v33, v24

    .line 307
    .line 308
    if-nez v9, :cond_9

    .line 309
    .line 310
    const/16 v26, 0x24

    .line 311
    .line 312
    :cond_9
    :goto_6
    move-object/from16 v22, v4

    .line 313
    .line 314
    move/from16 v34, v6

    .line 315
    .line 316
    :goto_7
    move/from16 v21, v12

    .line 317
    .line 318
    :goto_8
    const/4 v0, 0x4

    .line 319
    goto/16 :goto_a

    .line 320
    .line 321
    :cond_a
    const/16 v13, 0x6a

    .line 322
    .line 323
    if-ne v9, v13, :cond_b

    .line 324
    .line 325
    move-object/from16 v22, v4

    .line 326
    .line 327
    move/from16 v34, v6

    .line 328
    .line 329
    move/from16 v21, v12

    .line 330
    .line 331
    move/from16 v26, v30

    .line 332
    .line 333
    goto :goto_8

    .line 334
    :cond_b
    const/16 v13, 0x7a

    .line 335
    .line 336
    if-ne v9, v13, :cond_c

    .line 337
    .line 338
    move-object/from16 v22, v4

    .line 339
    .line 340
    move/from16 v34, v6

    .line 341
    .line 342
    move/from16 v21, v12

    .line 343
    .line 344
    move/from16 v26, v25

    .line 345
    .line 346
    goto :goto_8

    .line 347
    :cond_c
    const/16 v13, 0x7f

    .line 348
    .line 349
    if-ne v9, v13, :cond_f

    .line 350
    .line 351
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 352
    .line 353
    .line 354
    move-result v9

    .line 355
    const/16 v13, 0x15

    .line 356
    .line 357
    if-ne v9, v13, :cond_d

    .line 358
    .line 359
    goto :goto_5

    .line 360
    :cond_d
    const/16 v13, 0xe

    .line 361
    .line 362
    if-ne v9, v13, :cond_e

    .line 363
    .line 364
    const/16 v26, 0x88

    .line 365
    .line 366
    goto :goto_6

    .line 367
    :cond_e
    const/16 v13, 0x21

    .line 368
    .line 369
    if-ne v9, v13, :cond_9

    .line 370
    .line 371
    const/16 v26, 0x8b

    .line 372
    .line 373
    goto :goto_6

    .line 374
    :cond_f
    const/16 v13, 0x7b

    .line 375
    .line 376
    if-ne v9, v13, :cond_10

    .line 377
    .line 378
    const/16 v9, 0x8a

    .line 379
    .line 380
    move-object/from16 v22, v4

    .line 381
    .line 382
    move/from16 v34, v6

    .line 383
    .line 384
    move/from16 v26, v9

    .line 385
    .line 386
    goto :goto_7

    .line 387
    :cond_10
    const/16 v13, 0xa

    .line 388
    .line 389
    if-ne v9, v13, :cond_11

    .line 390
    .line 391
    const/4 v13, 0x3

    .line 392
    invoke-virtual {v1, v13}, Landroidx/media3/common/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object v9

    .line 396
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 397
    .line 398
    .line 399
    move-result-object v9

    .line 400
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 401
    .line 402
    .line 403
    move-result v28

    .line 404
    move-object/from16 v22, v4

    .line 405
    .line 406
    move/from16 v34, v6

    .line 407
    .line 408
    move-object/from16 v27, v9

    .line 409
    .line 410
    goto :goto_7

    .line 411
    :cond_11
    const/16 v13, 0x59

    .line 412
    .line 413
    if-ne v9, v13, :cond_13

    .line 414
    .line 415
    new-instance v9, Ljava/util/ArrayList;

    .line 416
    .line 417
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 418
    .line 419
    .line 420
    :goto_9
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    .line 421
    .line 422
    .line 423
    move-result v13

    .line 424
    if-ge v13, v12, :cond_12

    .line 425
    .line 426
    const/4 v13, 0x3

    .line 427
    invoke-virtual {v1, v13}, Landroidx/media3/common/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    .line 428
    .line 429
    .line 430
    move-result-object v21

    .line 431
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 432
    .line 433
    .line 434
    move-result-object v13

    .line 435
    move/from16 v21, v12

    .line 436
    .line 437
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 438
    .line 439
    .line 440
    move-result v12

    .line 441
    move-object/from16 v22, v4

    .line 442
    .line 443
    const/4 v0, 0x4

    .line 444
    new-array v4, v0, [B

    .line 445
    .line 446
    move/from16 v34, v6

    .line 447
    .line 448
    const/4 v6, 0x0

    .line 449
    invoke-virtual {v1, v4, v6, v0}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 450
    .line 451
    .line 452
    new-instance v6, Lc1/T;

    .line 453
    .line 454
    invoke-direct {v6, v13, v12, v4}, Lc1/T;-><init>(Ljava/lang/String;I[B)V

    .line 455
    .line 456
    .line 457
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 458
    .line 459
    .line 460
    move-object/from16 v0, p0

    .line 461
    .line 462
    move/from16 v12, v21

    .line 463
    .line 464
    move-object/from16 v4, v22

    .line 465
    .line 466
    move/from16 v6, v34

    .line 467
    .line 468
    goto :goto_9

    .line 469
    :cond_12
    move-object/from16 v22, v4

    .line 470
    .line 471
    move/from16 v34, v6

    .line 472
    .line 473
    move/from16 v21, v12

    .line 474
    .line 475
    const/4 v0, 0x4

    .line 476
    move-object/from16 v29, v9

    .line 477
    .line 478
    const/16 v26, 0x59

    .line 479
    .line 480
    goto :goto_a

    .line 481
    :cond_13
    move-object/from16 v22, v4

    .line 482
    .line 483
    move/from16 v34, v6

    .line 484
    .line 485
    move/from16 v21, v12

    .line 486
    .line 487
    const/4 v0, 0x4

    .line 488
    const/16 v4, 0x6f

    .line 489
    .line 490
    if-ne v9, v4, :cond_14

    .line 491
    .line 492
    const/16 v4, 0x101

    .line 493
    .line 494
    move/from16 v26, v4

    .line 495
    .line 496
    :cond_14
    :goto_a
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    .line 497
    .line 498
    .line 499
    move-result v4

    .line 500
    sub-int v12, v21, v4

    .line 501
    .line 502
    invoke-virtual {v1, v12}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 503
    .line 504
    .line 505
    move-object/from16 v0, p0

    .line 506
    .line 507
    move-object/from16 v4, v22

    .line 508
    .line 509
    move/from16 v12, v31

    .line 510
    .line 511
    move-object/from16 v13, v32

    .line 512
    .line 513
    move/from16 v6, v34

    .line 514
    .line 515
    goto/16 :goto_3

    .line 516
    .line 517
    :cond_15
    move/from16 v31, v12

    .line 518
    .line 519
    goto/16 :goto_4

    .line 520
    .line 521
    :goto_b
    invoke-virtual {v1, v11}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 522
    .line 523
    .line 524
    new-instance v25, Lc1/U;

    .line 525
    .line 526
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 527
    .line 528
    .line 529
    move-result-object v4

    .line 530
    invoke-static {v4, v10, v11}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 531
    .line 532
    .line 533
    move-result-object v30

    .line 534
    invoke-direct/range {v25 .. v30}, Lc1/U;-><init>(ILjava/lang/String;ILjava/util/List;[B)V

    .line 535
    .line 536
    .line 537
    move-object/from16 v4, v25

    .line 538
    .line 539
    const/4 v6, 0x6

    .line 540
    if-eq v5, v6, :cond_16

    .line 541
    .line 542
    const/4 v13, 0x5

    .line 543
    if-ne v5, v13, :cond_17

    .line 544
    .line 545
    :cond_16
    iget v5, v4, Lc1/U;->a:I

    .line 546
    .line 547
    :cond_17
    add-int/lit8 v17, v17, 0x5

    .line 548
    .line 549
    sub-int v12, v31, v17

    .line 550
    .line 551
    const/4 v6, 0x2

    .line 552
    if-ne v14, v6, :cond_18

    .line 553
    .line 554
    move v9, v5

    .line 555
    goto :goto_c

    .line 556
    :cond_18
    move v9, v8

    .line 557
    :goto_c
    invoke-virtual {v15, v9}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 558
    .line 559
    .line 560
    move-result v10

    .line 561
    if-eqz v10, :cond_19

    .line 562
    .line 563
    const/16 v13, 0x15

    .line 564
    .line 565
    goto :goto_e

    .line 566
    :cond_19
    const/16 v13, 0x15

    .line 567
    .line 568
    if-ne v14, v6, :cond_1a

    .line 569
    .line 570
    if-ne v5, v13, :cond_1a

    .line 571
    .line 572
    iget-object v4, v2, Lc1/S;->s:Lc1/X;

    .line 573
    .line 574
    goto :goto_d

    .line 575
    :cond_1a
    move-object/from16 v10, v32

    .line 576
    .line 577
    check-cast v10, Lc1/g;

    .line 578
    .line 579
    invoke-virtual {v10, v5, v4}, Lc1/g;->createPayloadReader(ILc1/U;)Lc1/X;

    .line 580
    .line 581
    .line 582
    move-result-object v4

    .line 583
    :goto_d
    if-ne v14, v6, :cond_1b

    .line 584
    .line 585
    const/16 v5, 0x2000

    .line 586
    .line 587
    invoke-virtual {v7, v9, v5}, Landroid/util/SparseIntArray;->get(II)I

    .line 588
    .line 589
    .line 590
    move-result v6

    .line 591
    if-ge v8, v6, :cond_1c

    .line 592
    .line 593
    :cond_1b
    invoke-virtual {v7, v9, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 594
    .line 595
    .line 596
    invoke-virtual {v3, v9, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 597
    .line 598
    .line 599
    :cond_1c
    :goto_e
    move v11, v0

    .line 600
    move v5, v13

    .line 601
    move-object/from16 v4, v22

    .line 602
    .line 603
    move-object/from16 v9, v23

    .line 604
    .line 605
    move-object/from16 v13, v32

    .line 606
    .line 607
    move/from16 v6, v34

    .line 608
    .line 609
    const/4 v8, 0x3

    .line 610
    const/16 v10, 0xd

    .line 611
    .line 612
    move-object/from16 v0, p0

    .line 613
    .line 614
    goto/16 :goto_2

    .line 615
    .line 616
    :cond_1d
    move-object/from16 v22, v4

    .line 617
    .line 618
    move/from16 v34, v6

    .line 619
    .line 620
    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    .line 621
    .line 622
    .line 623
    move-result v0

    .line 624
    const/4 v6, 0x0

    .line 625
    :goto_f
    iget-object v1, v2, Lc1/S;->i:Landroid/util/SparseArray;

    .line 626
    .line 627
    if-ge v6, v0, :cond_20

    .line 628
    .line 629
    invoke-virtual {v7, v6}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 630
    .line 631
    .line 632
    move-result v4

    .line 633
    invoke-virtual {v7, v6}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 634
    .line 635
    .line 636
    move-result v5

    .line 637
    const/4 v8, 0x1

    .line 638
    invoke-virtual {v15, v4, v8}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 639
    .line 640
    .line 641
    iget-object v9, v2, Lc1/S;->k:Landroid/util/SparseBooleanArray;

    .line 642
    .line 643
    invoke-virtual {v9, v5, v8}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 644
    .line 645
    .line 646
    invoke-virtual {v3, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 647
    .line 648
    .line 649
    move-result-object v8

    .line 650
    check-cast v8, Lc1/X;

    .line 651
    .line 652
    if-eqz v8, :cond_1f

    .line 653
    .line 654
    iget-object v9, v2, Lc1/S;->s:Lc1/X;

    .line 655
    .line 656
    if-eq v8, v9, :cond_1e

    .line 657
    .line 658
    iget-object v9, v2, Lc1/S;->n:Lv0/F;

    .line 659
    .line 660
    new-instance v10, Lc1/W;

    .line 661
    .line 662
    move/from16 v11, v34

    .line 663
    .line 664
    const/16 v12, 0x2000

    .line 665
    .line 666
    invoke-direct {v10, v11, v4, v12}, Lc1/W;-><init>(III)V

    .line 667
    .line 668
    .line 669
    move-object/from16 v4, v22

    .line 670
    .line 671
    invoke-interface {v8, v4, v9, v10}, Lc1/X;->init(Landroidx/media3/common/util/TimestampAdjuster;Lv0/F;Lc1/W;)V

    .line 672
    .line 673
    .line 674
    goto :goto_10

    .line 675
    :cond_1e
    move-object/from16 v4, v22

    .line 676
    .line 677
    move/from16 v11, v34

    .line 678
    .line 679
    const/16 v12, 0x2000

    .line 680
    .line 681
    :goto_10
    invoke-virtual {v1, v5, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 682
    .line 683
    .line 684
    goto :goto_11

    .line 685
    :cond_1f
    move-object/from16 v4, v22

    .line 686
    .line 687
    move/from16 v11, v34

    .line 688
    .line 689
    const/16 v12, 0x2000

    .line 690
    .line 691
    :goto_11
    add-int/lit8 v6, v6, 0x1

    .line 692
    .line 693
    move-object/from16 v22, v4

    .line 694
    .line 695
    move/from16 v34, v11

    .line 696
    .line 697
    goto :goto_f

    .line 698
    :cond_20
    const/4 v6, 0x2

    .line 699
    if-ne v14, v6, :cond_22

    .line 700
    .line 701
    iget-boolean v0, v2, Lc1/S;->p:Z

    .line 702
    .line 703
    if-nez v0, :cond_21

    .line 704
    .line 705
    iget-object v0, v2, Lc1/S;->n:Lv0/F;

    .line 706
    .line 707
    invoke-interface {v0}, Lv0/F;->endTracks()V

    .line 708
    .line 709
    .line 710
    const/4 v6, 0x0

    .line 711
    iput v6, v2, Lc1/S;->o:I

    .line 712
    .line 713
    const/4 v8, 0x1

    .line 714
    iput-boolean v8, v2, Lc1/S;->p:Z

    .line 715
    .line 716
    return-void

    .line 717
    :cond_21
    move-object/from16 v0, p0

    .line 718
    .line 719
    goto :goto_13

    .line 720
    :cond_22
    move-object/from16 v0, p0

    .line 721
    .line 722
    const/4 v6, 0x0

    .line 723
    const/4 v8, 0x1

    .line 724
    iget v3, v0, Lc1/Q;->d:I

    .line 725
    .line 726
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 727
    .line 728
    .line 729
    if-ne v14, v8, :cond_23

    .line 730
    .line 731
    move v7, v6

    .line 732
    goto :goto_12

    .line 733
    :cond_23
    iget v1, v2, Lc1/S;->o:I

    .line 734
    .line 735
    add-int/lit8 v7, v1, -0x1

    .line 736
    .line 737
    :goto_12
    iput v7, v2, Lc1/S;->o:I

    .line 738
    .line 739
    if-nez v7, :cond_24

    .line 740
    .line 741
    iget-object v1, v2, Lc1/S;->n:Lv0/F;

    .line 742
    .line 743
    invoke-interface {v1}, Lv0/F;->endTracks()V

    .line 744
    .line 745
    .line 746
    iput-boolean v8, v2, Lc1/S;->p:Z

    .line 747
    .line 748
    :cond_24
    :goto_13
    return-void
.end method

.method public init(Landroidx/media3/common/util/TimestampAdjuster;Lv0/F;Lc1/W;)V
    .locals 0

    .line 1
    return-void
.end method
