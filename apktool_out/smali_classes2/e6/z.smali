.class public final Le6/z;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a(JLe6/l;ILjava/util/List;IILjava/util/List;)V
    .locals 20

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    move/from16 v1, p3

    .line 4
    .line 5
    move-object/from16 v5, p4

    .line 6
    .line 7
    move/from16 v2, p5

    .line 8
    .line 9
    move/from16 v10, p6

    .line 10
    .line 11
    move-object/from16 v8, p7

    .line 12
    .line 13
    const-string v3, "Failed requirement."

    .line 14
    .line 15
    if-ge v2, v10, :cond_11

    .line 16
    .line 17
    move v4, v2

    .line 18
    :goto_0
    if-ge v4, v10, :cond_1

    .line 19
    .line 20
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v6

    .line 24
    check-cast v6, Lokio/ByteString;

    .line 25
    .line 26
    invoke-virtual {v6}, Lokio/ByteString;->size()I

    .line 27
    .line 28
    .line 29
    move-result v6

    .line 30
    if-lt v6, v1, :cond_0

    .line 31
    .line 32
    add-int/lit8 v4, v4, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 36
    .line 37
    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw v0

    .line 41
    :cond_1
    invoke-interface/range {p4 .. p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    check-cast v3, Lokio/ByteString;

    .line 46
    .line 47
    add-int/lit8 v4, v10, -0x1

    .line 48
    .line 49
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    check-cast v4, Lokio/ByteString;

    .line 54
    .line 55
    invoke-virtual {v3}, Lokio/ByteString;->size()I

    .line 56
    .line 57
    .line 58
    move-result v6

    .line 59
    if-ne v1, v6, :cond_2

    .line 60
    .line 61
    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    check-cast v3, Ljava/lang/Number;

    .line 66
    .line 67
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    add-int/lit8 v2, v2, 0x1

    .line 72
    .line 73
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    check-cast v6, Lokio/ByteString;

    .line 78
    .line 79
    move-object/from16 v19, v6

    .line 80
    .line 81
    move v6, v2

    .line 82
    move v2, v3

    .line 83
    move-object/from16 v3, v19

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_2
    move v6, v2

    .line 87
    const/4 v2, -0x1

    .line 88
    :goto_1
    invoke-virtual {v3, v1}, Lokio/ByteString;->getByte(I)B

    .line 89
    .line 90
    .line 91
    move-result v7

    .line 92
    invoke-virtual {v4, v1}, Lokio/ByteString;->getByte(I)B

    .line 93
    .line 94
    .line 95
    move-result v9

    .line 96
    const/4 v12, 0x4

    .line 97
    const/4 v13, 0x2

    .line 98
    if-eq v7, v9, :cond_c

    .line 99
    .line 100
    add-int/lit8 v3, v6, 0x1

    .line 101
    .line 102
    const/4 v4, 0x1

    .line 103
    :goto_2
    if-ge v3, v10, :cond_4

    .line 104
    .line 105
    add-int/lit8 v7, v3, -0x1

    .line 106
    .line 107
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v7

    .line 111
    check-cast v7, Lokio/ByteString;

    .line 112
    .line 113
    invoke-virtual {v7, v1}, Lokio/ByteString;->getByte(I)B

    .line 114
    .line 115
    .line 116
    move-result v7

    .line 117
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v9

    .line 121
    check-cast v9, Lokio/ByteString;

    .line 122
    .line 123
    invoke-virtual {v9, v1}, Lokio/ByteString;->getByte(I)B

    .line 124
    .line 125
    .line 126
    move-result v9

    .line 127
    if-eq v7, v9, :cond_3

    .line 128
    .line 129
    add-int/lit8 v4, v4, 0x1

    .line 130
    .line 131
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 132
    .line 133
    goto :goto_2

    .line 134
    :cond_4
    invoke-virtual {v0}, Le6/l;->size()J

    .line 135
    .line 136
    .line 137
    move-result-wide v14

    .line 138
    const/16 v16, -0x1

    .line 139
    .line 140
    int-to-long v11, v12

    .line 141
    div-long/2addr v14, v11

    .line 142
    add-long v14, v14, p0

    .line 143
    .line 144
    move-wide/from16 v17, v11

    .line 145
    .line 146
    int-to-long v11, v13

    .line 147
    add-long/2addr v14, v11

    .line 148
    mul-int/lit8 v3, v4, 0x2

    .line 149
    .line 150
    int-to-long v11, v3

    .line 151
    add-long/2addr v14, v11

    .line 152
    invoke-virtual {v0, v4}, Le6/l;->writeInt(I)Le6/l;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0, v2}, Le6/l;->writeInt(I)Le6/l;

    .line 156
    .line 157
    .line 158
    move v2, v6

    .line 159
    :goto_3
    if-ge v2, v10, :cond_7

    .line 160
    .line 161
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v3

    .line 165
    check-cast v3, Lokio/ByteString;

    .line 166
    .line 167
    invoke-virtual {v3, v1}, Lokio/ByteString;->getByte(I)B

    .line 168
    .line 169
    .line 170
    move-result v3

    .line 171
    if-eq v2, v6, :cond_5

    .line 172
    .line 173
    add-int/lit8 v4, v2, -0x1

    .line 174
    .line 175
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v4

    .line 179
    check-cast v4, Lokio/ByteString;

    .line 180
    .line 181
    invoke-virtual {v4, v1}, Lokio/ByteString;->getByte(I)B

    .line 182
    .line 183
    .line 184
    move-result v4

    .line 185
    if-eq v3, v4, :cond_6

    .line 186
    .line 187
    :cond_5
    and-int/lit16 v3, v3, 0xff

    .line 188
    .line 189
    invoke-virtual {v0, v3}, Le6/l;->writeInt(I)Le6/l;

    .line 190
    .line 191
    .line 192
    :cond_6
    add-int/lit8 v2, v2, 0x1

    .line 193
    .line 194
    goto :goto_3

    .line 195
    :cond_7
    new-instance v4, Le6/l;

    .line 196
    .line 197
    invoke-direct {v4}, Le6/l;-><init>()V

    .line 198
    .line 199
    .line 200
    move v7, v6

    .line 201
    :goto_4
    if-ge v7, v10, :cond_b

    .line 202
    .line 203
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    check-cast v2, Lokio/ByteString;

    .line 208
    .line 209
    invoke-virtual {v2, v1}, Lokio/ByteString;->getByte(I)B

    .line 210
    .line 211
    .line 212
    move-result v2

    .line 213
    add-int/lit8 v3, v7, 0x1

    .line 214
    .line 215
    move v6, v3

    .line 216
    :goto_5
    if-ge v6, v10, :cond_9

    .line 217
    .line 218
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v9

    .line 222
    check-cast v9, Lokio/ByteString;

    .line 223
    .line 224
    invoke-virtual {v9, v1}, Lokio/ByteString;->getByte(I)B

    .line 225
    .line 226
    .line 227
    move-result v9

    .line 228
    if-eq v2, v9, :cond_8

    .line 229
    .line 230
    goto :goto_6

    .line 231
    :cond_8
    add-int/lit8 v6, v6, 0x1

    .line 232
    .line 233
    goto :goto_5

    .line 234
    :cond_9
    move v6, v10

    .line 235
    :goto_6
    if-ne v3, v6, :cond_a

    .line 236
    .line 237
    add-int/lit8 v2, v1, 0x1

    .line 238
    .line 239
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object v3

    .line 243
    check-cast v3, Lokio/ByteString;

    .line 244
    .line 245
    invoke-virtual {v3}, Lokio/ByteString;->size()I

    .line 246
    .line 247
    .line 248
    move-result v3

    .line 249
    if-ne v2, v3, :cond_a

    .line 250
    .line 251
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object v2

    .line 255
    check-cast v2, Ljava/lang/Number;

    .line 256
    .line 257
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 258
    .line 259
    .line 260
    move-result v2

    .line 261
    invoke-virtual {v0, v2}, Le6/l;->writeInt(I)Le6/l;

    .line 262
    .line 263
    .line 264
    move-object v9, v8

    .line 265
    move-wide v2, v14

    .line 266
    move v8, v6

    .line 267
    goto :goto_7

    .line 268
    :cond_a
    invoke-virtual {v4}, Le6/l;->size()J

    .line 269
    .line 270
    .line 271
    move-result-wide v2

    .line 272
    div-long v2, v2, v17

    .line 273
    .line 274
    add-long/2addr v2, v14

    .line 275
    long-to-int v2, v2

    .line 276
    mul-int/lit8 v2, v2, -0x1

    .line 277
    .line 278
    invoke-virtual {v0, v2}, Le6/l;->writeInt(I)Le6/l;

    .line 279
    .line 280
    .line 281
    add-int/lit8 v5, v1, 0x1

    .line 282
    .line 283
    move-object v9, v8

    .line 284
    move-wide v2, v14

    .line 285
    move v8, v6

    .line 286
    move-object/from16 v6, p4

    .line 287
    .line 288
    invoke-static/range {v2 .. v9}, Le6/z;->a(JLe6/l;ILjava/util/List;IILjava/util/List;)V

    .line 289
    .line 290
    .line 291
    move-object v5, v6

    .line 292
    :goto_7
    move-wide v14, v2

    .line 293
    move v7, v8

    .line 294
    move-object v8, v9

    .line 295
    goto :goto_4

    .line 296
    :cond_b
    invoke-virtual {v0, v4}, Le6/l;->writeAll(Le6/L;)J

    .line 297
    .line 298
    .line 299
    return-void

    .line 300
    :cond_c
    move-object v9, v8

    .line 301
    const/16 v16, -0x1

    .line 302
    .line 303
    invoke-virtual {v3}, Lokio/ByteString;->size()I

    .line 304
    .line 305
    .line 306
    move-result v7

    .line 307
    invoke-virtual {v4}, Lokio/ByteString;->size()I

    .line 308
    .line 309
    .line 310
    move-result v8

    .line 311
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    .line 312
    .line 313
    .line 314
    move-result v7

    .line 315
    const/4 v8, 0x0

    .line 316
    move v11, v1

    .line 317
    :goto_8
    if-ge v11, v7, :cond_d

    .line 318
    .line 319
    invoke-virtual {v3, v11}, Lokio/ByteString;->getByte(I)B

    .line 320
    .line 321
    .line 322
    move-result v14

    .line 323
    invoke-virtual {v4, v11}, Lokio/ByteString;->getByte(I)B

    .line 324
    .line 325
    .line 326
    move-result v15

    .line 327
    if-ne v14, v15, :cond_d

    .line 328
    .line 329
    add-int/lit8 v8, v8, 0x1

    .line 330
    .line 331
    add-int/lit8 v11, v11, 0x1

    .line 332
    .line 333
    goto :goto_8

    .line 334
    :cond_d
    invoke-virtual {v0}, Le6/l;->size()J

    .line 335
    .line 336
    .line 337
    move-result-wide v14

    .line 338
    int-to-long v11, v12

    .line 339
    div-long/2addr v14, v11

    .line 340
    add-long v14, v14, p0

    .line 341
    .line 342
    move-wide/from16 v17, v11

    .line 343
    .line 344
    int-to-long v11, v13

    .line 345
    add-long/2addr v14, v11

    .line 346
    int-to-long v11, v8

    .line 347
    add-long/2addr v14, v11

    .line 348
    const-wide/16 v11, 0x1

    .line 349
    .line 350
    add-long/2addr v14, v11

    .line 351
    neg-int v4, v8

    .line 352
    invoke-virtual {v0, v4}, Le6/l;->writeInt(I)Le6/l;

    .line 353
    .line 354
    .line 355
    invoke-virtual {v0, v2}, Le6/l;->writeInt(I)Le6/l;

    .line 356
    .line 357
    .line 358
    add-int v4, v1, v8

    .line 359
    .line 360
    :goto_9
    if-ge v1, v4, :cond_e

    .line 361
    .line 362
    invoke-virtual {v3, v1}, Lokio/ByteString;->getByte(I)B

    .line 363
    .line 364
    .line 365
    move-result v2

    .line 366
    and-int/lit16 v2, v2, 0xff

    .line 367
    .line 368
    invoke-virtual {v0, v2}, Le6/l;->writeInt(I)Le6/l;

    .line 369
    .line 370
    .line 371
    add-int/lit8 v1, v1, 0x1

    .line 372
    .line 373
    goto :goto_9

    .line 374
    :cond_e
    add-int/lit8 v1, v6, 0x1

    .line 375
    .line 376
    if-ne v1, v10, :cond_10

    .line 377
    .line 378
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 379
    .line 380
    .line 381
    move-result-object v1

    .line 382
    check-cast v1, Lokio/ByteString;

    .line 383
    .line 384
    invoke-virtual {v1}, Lokio/ByteString;->size()I

    .line 385
    .line 386
    .line 387
    move-result v1

    .line 388
    if-ne v4, v1, :cond_f

    .line 389
    .line 390
    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 391
    .line 392
    .line 393
    move-result-object v1

    .line 394
    check-cast v1, Ljava/lang/Number;

    .line 395
    .line 396
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 397
    .line 398
    .line 399
    move-result v1

    .line 400
    invoke-virtual {v0, v1}, Le6/l;->writeInt(I)Le6/l;

    .line 401
    .line 402
    .line 403
    return-void

    .line 404
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 405
    .line 406
    const-string v1, "Check failed."

    .line 407
    .line 408
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 409
    .line 410
    .line 411
    throw v0

    .line 412
    :cond_10
    new-instance v3, Le6/l;

    .line 413
    .line 414
    invoke-direct {v3}, Le6/l;-><init>()V

    .line 415
    .line 416
    .line 417
    invoke-virtual {v3}, Le6/l;->size()J

    .line 418
    .line 419
    .line 420
    move-result-wide v1

    .line 421
    div-long v1, v1, v17

    .line 422
    .line 423
    add-long/2addr v1, v14

    .line 424
    long-to-int v1, v1

    .line 425
    mul-int/lit8 v1, v1, -0x1

    .line 426
    .line 427
    invoke-virtual {v0, v1}, Le6/l;->writeInt(I)Le6/l;

    .line 428
    .line 429
    .line 430
    move-object v8, v9

    .line 431
    move v7, v10

    .line 432
    move-wide v1, v14

    .line 433
    invoke-static/range {v1 .. v8}, Le6/z;->a(JLe6/l;ILjava/util/List;IILjava/util/List;)V

    .line 434
    .line 435
    .line 436
    invoke-virtual {v0, v3}, Le6/l;->writeAll(Le6/L;)J

    .line 437
    .line 438
    .line 439
    return-void

    .line 440
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 441
    .line 442
    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 443
    .line 444
    .line 445
    throw v0
.end method


# virtual methods
.method public final varargs of([Lokio/ByteString;)Le6/A;
    .locals 13

    .line 1
    const-string v0, "byteStrings"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    array-length v0, p1

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, -0x1

    .line 9
    const/4 v3, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    new-instance p1, Le6/A;

    .line 13
    .line 14
    new-array v0, v3, [Lokio/ByteString;

    .line 15
    .line 16
    filled-new-array {v3, v2}, [I

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-direct {p1, v0, v2, v1}, Le6/A;-><init>([Lokio/ByteString;[ILkotlin/jvm/internal/g;)V

    .line 21
    .line 22
    .line 23
    return-object p1

    .line 24
    :cond_0
    invoke-static {p1}, Lv5/n;->toMutableList([Ljava/lang/Object;)Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    invoke-static {v4}, Lv5/r;->sort(Ljava/util/List;)V

    .line 29
    .line 30
    .line 31
    new-instance v0, Ljava/util/ArrayList;

    .line 32
    .line 33
    array-length v5, p1

    .line 34
    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 35
    .line 36
    .line 37
    array-length v5, p1

    .line 38
    move v6, v3

    .line 39
    :goto_0
    if-ge v6, v5, :cond_1

    .line 40
    .line 41
    aget-object v7, p1, v6

    .line 42
    .line 43
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v7

    .line 47
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    add-int/lit8 v6, v6, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    new-array v2, v3, [Ljava/lang/Integer;

    .line 54
    .line 55
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    check-cast v0, [Ljava/lang/Integer;

    .line 60
    .line 61
    array-length v2, v0

    .line 62
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-static {v0}, Lv5/p;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    .line 67
    .line 68
    .line 69
    move-result-object v11

    .line 70
    array-length v0, p1

    .line 71
    move v2, v3

    .line 72
    move v10, v2

    .line 73
    :goto_1
    if-ge v2, v0, :cond_2

    .line 74
    .line 75
    aget-object v5, p1, v2

    .line 76
    .line 77
    add-int/lit8 v12, v10, 0x1

    .line 78
    .line 79
    const/4 v6, 0x0

    .line 80
    const/4 v7, 0x0

    .line 81
    const/4 v8, 0x6

    .line 82
    const/4 v9, 0x0

    .line 83
    invoke-static/range {v4 .. v9}, Lv5/p;->binarySearch$default(Ljava/util/List;Ljava/lang/Comparable;IIILjava/lang/Object;)I

    .line 84
    .line 85
    .line 86
    move-result v5

    .line 87
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 88
    .line 89
    .line 90
    move-result-object v6

    .line 91
    invoke-interface {v11, v5, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    add-int/lit8 v2, v2, 0x1

    .line 95
    .line 96
    move v10, v12

    .line 97
    goto :goto_1

    .line 98
    :cond_2
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    check-cast v0, Lokio/ByteString;

    .line 103
    .line 104
    invoke-virtual {v0}, Lokio/ByteString;->size()I

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    if-lez v0, :cond_8

    .line 109
    .line 110
    move v0, v3

    .line 111
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    if-ge v0, v2, :cond_6

    .line 116
    .line 117
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    check-cast v2, Lokio/ByteString;

    .line 122
    .line 123
    add-int/lit8 v5, v0, 0x1

    .line 124
    .line 125
    move v6, v5

    .line 126
    :goto_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 127
    .line 128
    .line 129
    move-result v7

    .line 130
    if-ge v6, v7, :cond_5

    .line 131
    .line 132
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v7

    .line 136
    check-cast v7, Lokio/ByteString;

    .line 137
    .line 138
    invoke-virtual {v7, v2}, Lokio/ByteString;->startsWith(Lokio/ByteString;)Z

    .line 139
    .line 140
    .line 141
    move-result v8

    .line 142
    if-eqz v8, :cond_5

    .line 143
    .line 144
    invoke-virtual {v7}, Lokio/ByteString;->size()I

    .line 145
    .line 146
    .line 147
    move-result v8

    .line 148
    invoke-virtual {v2}, Lokio/ByteString;->size()I

    .line 149
    .line 150
    .line 151
    move-result v9

    .line 152
    if-eq v8, v9, :cond_4

    .line 153
    .line 154
    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v7

    .line 158
    check-cast v7, Ljava/lang/Number;

    .line 159
    .line 160
    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    .line 161
    .line 162
    .line 163
    move-result v7

    .line 164
    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v8

    .line 168
    check-cast v8, Ljava/lang/Number;

    .line 169
    .line 170
    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    .line 171
    .line 172
    .line 173
    move-result v8

    .line 174
    if-le v7, v8, :cond_3

    .line 175
    .line 176
    invoke-interface {v4, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    invoke-interface {v11, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    goto :goto_3

    .line 183
    :cond_3
    add-int/lit8 v6, v6, 0x1

    .line 184
    .line 185
    goto :goto_3

    .line 186
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    .line 187
    .line 188
    const-string v0, "duplicate option: "

    .line 189
    .line 190
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 201
    .line 202
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    throw v0

    .line 210
    :cond_5
    move v0, v5

    .line 211
    goto :goto_2

    .line 212
    :cond_6
    new-instance v6, Le6/l;

    .line 213
    .line 214
    invoke-direct {v6}, Le6/l;-><init>()V

    .line 215
    .line 216
    .line 217
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 218
    .line 219
    .line 220
    move-result v10

    .line 221
    const/4 v7, 0x0

    .line 222
    const/4 v9, 0x0

    .line 223
    move-object v8, v4

    .line 224
    const-wide/16 v4, 0x0

    .line 225
    .line 226
    invoke-static/range {v4 .. v11}, Le6/z;->a(JLe6/l;ILjava/util/List;IILjava/util/List;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v6}, Le6/l;->size()J

    .line 230
    .line 231
    .line 232
    move-result-wide v4

    .line 233
    const/4 v0, 0x4

    .line 234
    int-to-long v7, v0

    .line 235
    div-long/2addr v4, v7

    .line 236
    long-to-int v0, v4

    .line 237
    new-array v0, v0, [I

    .line 238
    .line 239
    :goto_4
    invoke-virtual {v6}, Le6/l;->exhausted()Z

    .line 240
    .line 241
    .line 242
    move-result v2

    .line 243
    if-nez v2, :cond_7

    .line 244
    .line 245
    add-int/lit8 v2, v3, 0x1

    .line 246
    .line 247
    invoke-virtual {v6}, Le6/l;->readInt()I

    .line 248
    .line 249
    .line 250
    move-result v4

    .line 251
    aput v4, v0, v3

    .line 252
    .line 253
    move v3, v2

    .line 254
    goto :goto_4

    .line 255
    :cond_7
    new-instance v2, Le6/A;

    .line 256
    .line 257
    array-length v3, p1

    .line 258
    invoke-static {p1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object p1

    .line 262
    const-string v3, "copyOf(this, size)"

    .line 263
    .line 264
    invoke-static {p1, v3}, Lkotlin/jvm/internal/j;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    check-cast p1, [Lokio/ByteString;

    .line 268
    .line 269
    invoke-direct {v2, p1, v0, v1}, Le6/A;-><init>([Lokio/ByteString;[ILkotlin/jvm/internal/g;)V

    .line 270
    .line 271
    .line 272
    return-object v2

    .line 273
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 274
    .line 275
    const-string v0, "the empty byte string is not a supported option"

    .line 276
    .line 277
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    throw p1
.end method
