.class public final LL0/c;
.super LE0/d;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/media3/common/util/ParsableByteArray;

.field public final b:Landroidx/media3/common/util/ParsableBitArray;

.field public c:Landroidx/media3/common/util/TimestampAdjuster;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, LE0/d;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    .line 5
    .line 6
    invoke-direct {v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, LL0/c;->a:Landroidx/media3/common/util/ParsableByteArray;

    .line 10
    .line 11
    new-instance v0, Landroidx/media3/common/util/ParsableBitArray;

    .line 12
    .line 13
    invoke-direct {v0}, Landroidx/media3/common/util/ParsableBitArray;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, LL0/c;->b:Landroidx/media3/common/util/ParsableBitArray;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public decode(LE0/b;Ljava/nio/ByteBuffer;)Landroidx/media3/common/Metadata;
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/16 v3, 0x20

    .line 7
    .line 8
    const/4 v4, 0x1

    .line 9
    iget-object v5, v0, LL0/c;->c:Landroidx/media3/common/util/TimestampAdjuster;

    .line 10
    .line 11
    if-eqz v5, :cond_0

    .line 12
    .line 13
    iget-wide v6, v1, LE0/b;->b:J

    .line 14
    .line 15
    invoke-virtual {v5}, Landroidx/media3/common/util/TimestampAdjuster;->getTimestampOffsetUs()J

    .line 16
    .line 17
    .line 18
    move-result-wide v8

    .line 19
    cmp-long v5, v6, v8

    .line 20
    .line 21
    if-eqz v5, :cond_1

    .line 22
    .line 23
    :cond_0
    new-instance v5, Landroidx/media3/common/util/TimestampAdjuster;

    .line 24
    .line 25
    iget-wide v6, v1, Lu0/f;->timeUs:J

    .line 26
    .line 27
    invoke-direct {v5, v6, v7}, Landroidx/media3/common/util/TimestampAdjuster;-><init>(J)V

    .line 28
    .line 29
    .line 30
    iput-object v5, v0, LL0/c;->c:Landroidx/media3/common/util/TimestampAdjuster;

    .line 31
    .line 32
    iget-wide v6, v1, Lu0/f;->timeUs:J

    .line 33
    .line 34
    iget-wide v8, v1, LE0/b;->b:J

    .line 35
    .line 36
    sub-long/2addr v6, v8

    .line 37
    invoke-virtual {v5, v6, v7}, Landroidx/media3/common/util/TimestampAdjuster;->adjustSampleTimestamp(J)J

    .line 38
    .line 39
    .line 40
    :cond_1
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->array()[B

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual/range {p2 .. p2}, Ljava/nio/Buffer;->limit()I

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    iget-object v6, v0, LL0/c;->a:Landroidx/media3/common/util/ParsableByteArray;

    .line 49
    .line 50
    invoke-virtual {v6, v1, v5}, Landroidx/media3/common/util/ParsableByteArray;->reset([BI)V

    .line 51
    .line 52
    .line 53
    iget-object v7, v0, LL0/c;->b:Landroidx/media3/common/util/ParsableBitArray;

    .line 54
    .line 55
    invoke-virtual {v7, v1, v5}, Landroidx/media3/common/util/ParsableBitArray;->reset([BI)V

    .line 56
    .line 57
    .line 58
    const/16 v1, 0x27

    .line 59
    .line 60
    invoke-virtual {v7, v1}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v7, v4}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    int-to-long v8, v1

    .line 68
    shl-long/2addr v8, v3

    .line 69
    invoke-virtual {v7, v3}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    int-to-long v10, v1

    .line 74
    or-long/2addr v8, v10

    .line 75
    const/16 v1, 0x14

    .line 76
    .line 77
    invoke-virtual {v7, v1}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 78
    .line 79
    .line 80
    const/16 v1, 0xc

    .line 81
    .line 82
    invoke-virtual {v7, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    const/16 v5, 0x8

    .line 87
    .line 88
    invoke-virtual {v7, v5}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 89
    .line 90
    .line 91
    move-result v5

    .line 92
    const/16 v7, 0xe

    .line 93
    .line 94
    invoke-virtual {v6, v7}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 95
    .line 96
    .line 97
    if-eqz v5, :cond_19

    .line 98
    .line 99
    const/16 v7, 0xff

    .line 100
    .line 101
    const/4 v10, 0x4

    .line 102
    if-eq v5, v7, :cond_18

    .line 103
    .line 104
    if-eq v5, v10, :cond_e

    .line 105
    .line 106
    const/4 v1, 0x5

    .line 107
    if-eq v5, v1, :cond_3

    .line 108
    .line 109
    const/4 v1, 0x6

    .line 110
    if-eq v5, v1, :cond_2

    .line 111
    .line 112
    const/4 v1, 0x0

    .line 113
    :goto_0
    move/from16 v16, v4

    .line 114
    .line 115
    goto/16 :goto_10

    .line 116
    .line 117
    :cond_2
    iget-object v1, v0, LL0/c;->c:Landroidx/media3/common/util/TimestampAdjuster;

    .line 118
    .line 119
    invoke-static {v8, v9, v6}, LL0/h;->a(JLandroidx/media3/common/util/ParsableByteArray;)J

    .line 120
    .line 121
    .line 122
    move-result-wide v5

    .line 123
    invoke-virtual {v1, v5, v6}, Landroidx/media3/common/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    .line 124
    .line 125
    .line 126
    move-result-wide v7

    .line 127
    new-instance v1, LL0/h;

    .line 128
    .line 129
    invoke-direct {v1, v5, v6, v7, v8}, LL0/h;-><init>(JJ)V

    .line 130
    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_3
    iget-object v1, v0, LL0/c;->c:Landroidx/media3/common/util/TimestampAdjuster;

    .line 134
    .line 135
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    .line 136
    .line 137
    .line 138
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 139
    .line 140
    .line 141
    move-result v5

    .line 142
    and-int/lit16 v5, v5, 0x80

    .line 143
    .line 144
    if-eqz v5, :cond_4

    .line 145
    .line 146
    move v5, v4

    .line 147
    goto :goto_1

    .line 148
    :cond_4
    move v5, v2

    .line 149
    :goto_1
    sget-object v7, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 150
    .line 151
    if-nez v5, :cond_d

    .line 152
    .line 153
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 154
    .line 155
    .line 156
    move-result v5

    .line 157
    and-int/lit8 v12, v5, 0x40

    .line 158
    .line 159
    if-eqz v12, :cond_5

    .line 160
    .line 161
    move v12, v4

    .line 162
    goto :goto_2

    .line 163
    :cond_5
    move v12, v2

    .line 164
    :goto_2
    and-int/2addr v3, v5

    .line 165
    if-eqz v3, :cond_6

    .line 166
    .line 167
    move v3, v4

    .line 168
    goto :goto_3

    .line 169
    :cond_6
    move v3, v2

    .line 170
    :goto_3
    and-int/lit8 v5, v5, 0x10

    .line 171
    .line 172
    if-eqz v5, :cond_7

    .line 173
    .line 174
    move v5, v4

    .line 175
    goto :goto_4

    .line 176
    :cond_7
    move v5, v2

    .line 177
    :goto_4
    if-eqz v12, :cond_8

    .line 178
    .line 179
    if-nez v5, :cond_8

    .line 180
    .line 181
    invoke-static {v8, v9, v6}, LL0/h;->a(JLandroidx/media3/common/util/ParsableByteArray;)J

    .line 182
    .line 183
    .line 184
    move-result-wide v13

    .line 185
    goto :goto_5

    .line 186
    :cond_8
    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    :goto_5
    if-nez v12, :cond_b

    .line 192
    .line 193
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 194
    .line 195
    .line 196
    move-result v7

    .line 197
    new-instance v12, Ljava/util/ArrayList;

    .line 198
    .line 199
    invoke-direct {v12, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 200
    .line 201
    .line 202
    move v15, v2

    .line 203
    :goto_6
    if-ge v15, v7, :cond_a

    .line 204
    .line 205
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 206
    .line 207
    .line 208
    if-nez v5, :cond_9

    .line 209
    .line 210
    invoke-static {v8, v9, v6}, LL0/h;->a(JLandroidx/media3/common/util/ParsableByteArray;)J

    .line 211
    .line 212
    .line 213
    move-result-wide v16

    .line 214
    move-wide/from16 v10, v16

    .line 215
    .line 216
    :goto_7
    move/from16 v16, v4

    .line 217
    .line 218
    goto :goto_8

    .line 219
    :cond_9
    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    goto :goto_7

    .line 225
    :goto_8
    new-instance v4, LJ3/b;

    .line 226
    .line 227
    invoke-virtual {v1, v10, v11}, Landroidx/media3/common/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    .line 228
    .line 229
    .line 230
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    add-int/lit8 v15, v15, 0x1

    .line 237
    .line 238
    move/from16 v4, v16

    .line 239
    .line 240
    goto :goto_6

    .line 241
    :cond_a
    move-object v7, v12

    .line 242
    :cond_b
    move/from16 v16, v4

    .line 243
    .line 244
    if-eqz v3, :cond_c

    .line 245
    .line 246
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 247
    .line 248
    .line 249
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    .line 250
    .line 251
    .line 252
    :cond_c
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    .line 253
    .line 254
    .line 255
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 256
    .line 257
    .line 258
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 259
    .line 260
    .line 261
    move-wide v10, v13

    .line 262
    :goto_9
    move-object/from16 v18, v7

    .line 263
    .line 264
    goto :goto_a

    .line 265
    :cond_d
    move/from16 v16, v4

    .line 266
    .line 267
    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    goto :goto_9

    .line 273
    :goto_a
    new-instance v17, LL0/d;

    .line 274
    .line 275
    invoke-virtual {v1, v10, v11}, Landroidx/media3/common/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    .line 276
    .line 277
    .line 278
    move-result-wide v21

    .line 279
    move-wide/from16 v19, v10

    .line 280
    .line 281
    invoke-direct/range {v17 .. v22}, LL0/d;-><init>(Ljava/util/List;JJ)V

    .line 282
    .line 283
    .line 284
    move-object/from16 v1, v17

    .line 285
    .line 286
    goto/16 :goto_10

    .line 287
    .line 288
    :cond_e
    move/from16 v16, v4

    .line 289
    .line 290
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 291
    .line 292
    .line 293
    move-result v1

    .line 294
    new-instance v4, Ljava/util/ArrayList;

    .line 295
    .line 296
    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 297
    .line 298
    .line 299
    move v5, v2

    .line 300
    :goto_b
    if-ge v5, v1, :cond_17

    .line 301
    .line 302
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    .line 303
    .line 304
    .line 305
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 306
    .line 307
    .line 308
    move-result v7

    .line 309
    and-int/lit16 v7, v7, 0x80

    .line 310
    .line 311
    if-eqz v7, :cond_f

    .line 312
    .line 313
    move/from16 v7, v16

    .line 314
    .line 315
    goto :goto_c

    .line 316
    :cond_f
    move v7, v2

    .line 317
    :goto_c
    new-instance v8, Ljava/util/ArrayList;

    .line 318
    .line 319
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 320
    .line 321
    .line 322
    if-nez v7, :cond_16

    .line 323
    .line 324
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 325
    .line 326
    .line 327
    move-result v7

    .line 328
    and-int/lit8 v9, v7, 0x40

    .line 329
    .line 330
    if-eqz v9, :cond_10

    .line 331
    .line 332
    move/from16 v9, v16

    .line 333
    .line 334
    goto :goto_d

    .line 335
    :cond_10
    move v9, v2

    .line 336
    :goto_d
    and-int/2addr v7, v3

    .line 337
    if-eqz v7, :cond_11

    .line 338
    .line 339
    move/from16 v7, v16

    .line 340
    .line 341
    goto :goto_e

    .line 342
    :cond_11
    move v7, v2

    .line 343
    :goto_e
    if-eqz v9, :cond_12

    .line 344
    .line 345
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    .line 346
    .line 347
    .line 348
    :cond_12
    if-nez v9, :cond_14

    .line 349
    .line 350
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 351
    .line 352
    .line 353
    move-result v8

    .line 354
    new-instance v9, Ljava/util/ArrayList;

    .line 355
    .line 356
    invoke-direct {v9, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 357
    .line 358
    .line 359
    move v10, v2

    .line 360
    :goto_f
    if-ge v10, v8, :cond_13

    .line 361
    .line 362
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 363
    .line 364
    .line 365
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    .line 366
    .line 367
    .line 368
    new-instance v11, LJ3/b;

    .line 369
    .line 370
    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    .line 371
    .line 372
    .line 373
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    .line 375
    .line 376
    add-int/lit8 v10, v10, 0x1

    .line 377
    .line 378
    goto :goto_f

    .line 379
    :cond_13
    move-object v8, v9

    .line 380
    :cond_14
    if-eqz v7, :cond_15

    .line 381
    .line 382
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 383
    .line 384
    .line 385
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    .line 386
    .line 387
    .line 388
    :cond_15
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    .line 389
    .line 390
    .line 391
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 392
    .line 393
    .line 394
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 395
    .line 396
    .line 397
    :cond_16
    new-instance v7, LL0/f;

    .line 398
    .line 399
    invoke-direct {v7, v8}, LL0/f;-><init>(Ljava/util/ArrayList;)V

    .line 400
    .line 401
    .line 402
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 403
    .line 404
    .line 405
    add-int/lit8 v5, v5, 0x1

    .line 406
    .line 407
    goto :goto_b

    .line 408
    :cond_17
    new-instance v1, LL0/g;

    .line 409
    .line 410
    invoke-direct {v1, v4}, LL0/g;-><init>(Ljava/util/ArrayList;)V

    .line 411
    .line 412
    .line 413
    goto :goto_10

    .line 414
    :cond_18
    move/from16 v16, v4

    .line 415
    .line 416
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    .line 417
    .line 418
    .line 419
    move-result-wide v3

    .line 420
    sub-int/2addr v1, v10

    .line 421
    new-array v5, v1, [B

    .line 422
    .line 423
    invoke-virtual {v6, v5, v2, v1}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 424
    .line 425
    .line 426
    new-instance v1, LL0/a;

    .line 427
    .line 428
    invoke-direct {v1, v3, v4, v8, v9}, LL0/a;-><init>(JJ)V

    .line 429
    .line 430
    .line 431
    goto :goto_10

    .line 432
    :cond_19
    move/from16 v16, v4

    .line 433
    .line 434
    new-instance v1, LL0/e;

    .line 435
    .line 436
    invoke-direct {v1}, LL0/e;-><init>()V

    .line 437
    .line 438
    .line 439
    :goto_10
    if-nez v1, :cond_1a

    .line 440
    .line 441
    new-instance v1, Landroidx/media3/common/Metadata;

    .line 442
    .line 443
    new-array v2, v2, [Landroidx/media3/common/Metadata$Entry;

    .line 444
    .line 445
    invoke-direct {v1, v2}, Landroidx/media3/common/Metadata;-><init>([Landroidx/media3/common/Metadata$Entry;)V

    .line 446
    .line 447
    .line 448
    return-object v1

    .line 449
    :cond_1a
    new-instance v3, Landroidx/media3/common/Metadata;

    .line 450
    .line 451
    move/from16 v4, v16

    .line 452
    .line 453
    new-array v4, v4, [Landroidx/media3/common/Metadata$Entry;

    .line 454
    .line 455
    aput-object v1, v4, v2

    .line 456
    .line 457
    invoke-direct {v3, v4}, Landroidx/media3/common/Metadata;-><init>([Landroidx/media3/common/Metadata$Entry;)V

    .line 458
    .line 459
    .line 460
    return-object v3
.end method
