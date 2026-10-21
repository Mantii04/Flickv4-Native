.class public abstract Lf6/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    new-array v0, v0, [C

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Lf6/b;->a:[C

    .line 9
    .line 10
    return-void

    .line 11
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public static final access$codePointIndexToCharIndex([BI)I
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    array-length v2, v0

    .line 6
    const/4 v3, 0x0

    .line 7
    move v4, v3

    .line 8
    move v5, v4

    .line 9
    :cond_0
    :goto_0
    if-ge v3, v2, :cond_2e

    .line 10
    .line 11
    aget-byte v6, v0, v3

    .line 12
    .line 13
    const v9, 0xfffd

    .line 14
    .line 15
    .line 16
    const/16 v10, 0xa0

    .line 17
    .line 18
    const/16 v11, 0x7f

    .line 19
    .line 20
    const/16 v12, 0x20

    .line 21
    .line 22
    const/16 v13, 0xd

    .line 23
    .line 24
    const/16 v14, 0xa

    .line 25
    .line 26
    const/high16 v15, 0x10000

    .line 27
    .line 28
    if-ltz v6, :cond_b

    .line 29
    .line 30
    add-int/lit8 v16, v5, 0x1

    .line 31
    .line 32
    if-ne v5, v1, :cond_1

    .line 33
    .line 34
    goto/16 :goto_9

    .line 35
    .line 36
    :cond_1
    if-eq v6, v14, :cond_3

    .line 37
    .line 38
    if-eq v6, v13, :cond_3

    .line 39
    .line 40
    if-ltz v6, :cond_2

    .line 41
    .line 42
    if-ge v6, v12, :cond_2

    .line 43
    .line 44
    goto/16 :goto_8

    .line 45
    .line 46
    :cond_2
    if-gt v11, v6, :cond_3

    .line 47
    .line 48
    if-ge v6, v10, :cond_3

    .line 49
    .line 50
    goto/16 :goto_8

    .line 51
    .line 52
    :cond_3
    if-ne v6, v9, :cond_4

    .line 53
    .line 54
    goto/16 :goto_8

    .line 55
    .line 56
    :cond_4
    if-ge v6, v15, :cond_5

    .line 57
    .line 58
    const/4 v5, 0x1

    .line 59
    goto :goto_1

    .line 60
    :cond_5
    const/4 v5, 0x2

    .line 61
    :goto_1
    add-int/2addr v4, v5

    .line 62
    add-int/lit8 v3, v3, 0x1

    .line 63
    .line 64
    :goto_2
    move/from16 v5, v16

    .line 65
    .line 66
    if-ge v3, v2, :cond_0

    .line 67
    .line 68
    aget-byte v6, v0, v3

    .line 69
    .line 70
    if-ltz v6, :cond_0

    .line 71
    .line 72
    add-int/lit8 v3, v3, 0x1

    .line 73
    .line 74
    add-int/lit8 v16, v5, 0x1

    .line 75
    .line 76
    if-ne v5, v1, :cond_6

    .line 77
    .line 78
    return v4

    .line 79
    :cond_6
    if-eq v6, v14, :cond_8

    .line 80
    .line 81
    if-eq v6, v13, :cond_8

    .line 82
    .line 83
    if-ltz v6, :cond_7

    .line 84
    .line 85
    if-ge v6, v12, :cond_7

    .line 86
    .line 87
    goto/16 :goto_8

    .line 88
    .line 89
    :cond_7
    if-gt v11, v6, :cond_8

    .line 90
    .line 91
    if-ge v6, v10, :cond_8

    .line 92
    .line 93
    goto/16 :goto_8

    .line 94
    .line 95
    :cond_8
    if-ne v6, v9, :cond_9

    .line 96
    .line 97
    goto/16 :goto_8

    .line 98
    .line 99
    :cond_9
    if-ge v6, v15, :cond_a

    .line 100
    .line 101
    const/4 v5, 0x1

    .line 102
    goto :goto_3

    .line 103
    :cond_a
    const/4 v5, 0x2

    .line 104
    :goto_3
    add-int/2addr v4, v5

    .line 105
    goto :goto_2

    .line 106
    :cond_b
    shr-int/lit8 v7, v6, 0x5

    .line 107
    .line 108
    const/4 v8, -0x2

    .line 109
    const/16 v15, 0x80

    .line 110
    .line 111
    if-ne v7, v8, :cond_14

    .line 112
    .line 113
    add-int/lit8 v7, v3, 0x1

    .line 114
    .line 115
    if-gt v2, v7, :cond_c

    .line 116
    .line 117
    if-ne v5, v1, :cond_2d

    .line 118
    .line 119
    goto/16 :goto_9

    .line 120
    .line 121
    :cond_c
    aget-byte v7, v0, v7

    .line 122
    .line 123
    and-int/lit16 v8, v7, 0xc0

    .line 124
    .line 125
    if-ne v8, v15, :cond_13

    .line 126
    .line 127
    xor-int/lit16 v7, v7, 0xf80

    .line 128
    .line 129
    shl-int/lit8 v6, v6, 0x6

    .line 130
    .line 131
    xor-int/2addr v6, v7

    .line 132
    if-ge v6, v15, :cond_d

    .line 133
    .line 134
    if-ne v5, v1, :cond_2d

    .line 135
    .line 136
    goto/16 :goto_9

    .line 137
    .line 138
    :cond_d
    add-int/lit8 v7, v5, 0x1

    .line 139
    .line 140
    if-ne v5, v1, :cond_e

    .line 141
    .line 142
    goto/16 :goto_9

    .line 143
    .line 144
    :cond_e
    if-eq v6, v14, :cond_10

    .line 145
    .line 146
    if-eq v6, v13, :cond_10

    .line 147
    .line 148
    if-ltz v6, :cond_f

    .line 149
    .line 150
    if-ge v6, v12, :cond_f

    .line 151
    .line 152
    goto/16 :goto_8

    .line 153
    .line 154
    :cond_f
    if-gt v11, v6, :cond_10

    .line 155
    .line 156
    if-ge v6, v10, :cond_10

    .line 157
    .line 158
    goto/16 :goto_8

    .line 159
    .line 160
    :cond_10
    if-ne v6, v9, :cond_11

    .line 161
    .line 162
    goto/16 :goto_8

    .line 163
    .line 164
    :cond_11
    const/high16 v5, 0x10000

    .line 165
    .line 166
    if-ge v6, v5, :cond_12

    .line 167
    .line 168
    const/16 v16, 0x1

    .line 169
    .line 170
    goto :goto_4

    .line 171
    :cond_12
    const/16 v16, 0x2

    .line 172
    .line 173
    :goto_4
    add-int v4, v4, v16

    .line 174
    .line 175
    add-int/lit8 v3, v3, 0x2

    .line 176
    .line 177
    :goto_5
    move v5, v7

    .line 178
    goto/16 :goto_0

    .line 179
    .line 180
    :cond_13
    if-ne v5, v1, :cond_2d

    .line 181
    .line 182
    goto/16 :goto_9

    .line 183
    .line 184
    :cond_14
    shr-int/lit8 v7, v6, 0x4

    .line 185
    .line 186
    const v9, 0xe000

    .line 187
    .line 188
    .line 189
    const v10, 0xd800

    .line 190
    .line 191
    .line 192
    if-ne v7, v8, :cond_1f

    .line 193
    .line 194
    add-int/lit8 v7, v3, 0x2

    .line 195
    .line 196
    if-gt v2, v7, :cond_15

    .line 197
    .line 198
    if-ne v5, v1, :cond_2d

    .line 199
    .line 200
    goto/16 :goto_9

    .line 201
    .line 202
    :cond_15
    add-int/lit8 v8, v3, 0x1

    .line 203
    .line 204
    aget-byte v8, v0, v8

    .line 205
    .line 206
    and-int/lit16 v11, v8, 0xc0

    .line 207
    .line 208
    if-ne v11, v15, :cond_1e

    .line 209
    .line 210
    aget-byte v7, v0, v7

    .line 211
    .line 212
    and-int/lit16 v11, v7, 0xc0

    .line 213
    .line 214
    if-ne v11, v15, :cond_1d

    .line 215
    .line 216
    const v11, -0x1e080

    .line 217
    .line 218
    .line 219
    xor-int/2addr v7, v11

    .line 220
    shl-int/lit8 v8, v8, 0x6

    .line 221
    .line 222
    xor-int/2addr v7, v8

    .line 223
    shl-int/lit8 v6, v6, 0xc

    .line 224
    .line 225
    xor-int/2addr v6, v7

    .line 226
    const/16 v7, 0x800

    .line 227
    .line 228
    if-ge v6, v7, :cond_16

    .line 229
    .line 230
    if-ne v5, v1, :cond_2d

    .line 231
    .line 232
    goto/16 :goto_9

    .line 233
    .line 234
    :cond_16
    if-gt v10, v6, :cond_17

    .line 235
    .line 236
    if-ge v6, v9, :cond_17

    .line 237
    .line 238
    if-ne v5, v1, :cond_2d

    .line 239
    .line 240
    goto/16 :goto_9

    .line 241
    .line 242
    :cond_17
    add-int/lit8 v7, v5, 0x1

    .line 243
    .line 244
    if-ne v5, v1, :cond_18

    .line 245
    .line 246
    goto/16 :goto_9

    .line 247
    .line 248
    :cond_18
    if-eq v6, v14, :cond_1a

    .line 249
    .line 250
    if-eq v6, v13, :cond_1a

    .line 251
    .line 252
    if-ltz v6, :cond_19

    .line 253
    .line 254
    if-ge v6, v12, :cond_19

    .line 255
    .line 256
    goto/16 :goto_8

    .line 257
    .line 258
    :cond_19
    const/16 v5, 0x7f

    .line 259
    .line 260
    if-gt v5, v6, :cond_1a

    .line 261
    .line 262
    const/16 v5, 0xa0

    .line 263
    .line 264
    if-ge v6, v5, :cond_1a

    .line 265
    .line 266
    goto/16 :goto_8

    .line 267
    .line 268
    :cond_1a
    const v5, 0xfffd

    .line 269
    .line 270
    .line 271
    if-ne v6, v5, :cond_1b

    .line 272
    .line 273
    goto/16 :goto_8

    .line 274
    .line 275
    :cond_1b
    const/high16 v5, 0x10000

    .line 276
    .line 277
    if-ge v6, v5, :cond_1c

    .line 278
    .line 279
    const/16 v16, 0x1

    .line 280
    .line 281
    goto :goto_6

    .line 282
    :cond_1c
    const/16 v16, 0x2

    .line 283
    .line 284
    :goto_6
    add-int v4, v4, v16

    .line 285
    .line 286
    add-int/lit8 v3, v3, 0x3

    .line 287
    .line 288
    goto :goto_5

    .line 289
    :cond_1d
    if-ne v5, v1, :cond_2d

    .line 290
    .line 291
    goto/16 :goto_9

    .line 292
    .line 293
    :cond_1e
    if-ne v5, v1, :cond_2d

    .line 294
    .line 295
    goto/16 :goto_9

    .line 296
    .line 297
    :cond_1f
    shr-int/lit8 v7, v6, 0x3

    .line 298
    .line 299
    if-ne v7, v8, :cond_2c

    .line 300
    .line 301
    add-int/lit8 v7, v3, 0x3

    .line 302
    .line 303
    if-gt v2, v7, :cond_20

    .line 304
    .line 305
    if-ne v5, v1, :cond_2d

    .line 306
    .line 307
    goto/16 :goto_9

    .line 308
    .line 309
    :cond_20
    add-int/lit8 v8, v3, 0x1

    .line 310
    .line 311
    aget-byte v8, v0, v8

    .line 312
    .line 313
    and-int/lit16 v11, v8, 0xc0

    .line 314
    .line 315
    if-ne v11, v15, :cond_2b

    .line 316
    .line 317
    add-int/lit8 v11, v3, 0x2

    .line 318
    .line 319
    aget-byte v11, v0, v11

    .line 320
    .line 321
    and-int/lit16 v12, v11, 0xc0

    .line 322
    .line 323
    if-ne v12, v15, :cond_2a

    .line 324
    .line 325
    aget-byte v7, v0, v7

    .line 326
    .line 327
    and-int/lit16 v12, v7, 0xc0

    .line 328
    .line 329
    if-ne v12, v15, :cond_29

    .line 330
    .line 331
    const v12, 0x381f80

    .line 332
    .line 333
    .line 334
    xor-int/2addr v7, v12

    .line 335
    shl-int/lit8 v11, v11, 0x6

    .line 336
    .line 337
    xor-int/2addr v7, v11

    .line 338
    shl-int/lit8 v8, v8, 0xc

    .line 339
    .line 340
    xor-int/2addr v7, v8

    .line 341
    shl-int/lit8 v6, v6, 0x12

    .line 342
    .line 343
    xor-int/2addr v6, v7

    .line 344
    const v7, 0x10ffff

    .line 345
    .line 346
    .line 347
    if-le v6, v7, :cond_21

    .line 348
    .line 349
    if-ne v5, v1, :cond_2d

    .line 350
    .line 351
    goto :goto_9

    .line 352
    :cond_21
    if-gt v10, v6, :cond_22

    .line 353
    .line 354
    if-ge v6, v9, :cond_22

    .line 355
    .line 356
    if-ne v5, v1, :cond_2d

    .line 357
    .line 358
    goto :goto_9

    .line 359
    :cond_22
    const/high16 v7, 0x10000

    .line 360
    .line 361
    if-ge v6, v7, :cond_23

    .line 362
    .line 363
    if-ne v5, v1, :cond_2d

    .line 364
    .line 365
    goto :goto_9

    .line 366
    :cond_23
    add-int/lit8 v7, v5, 0x1

    .line 367
    .line 368
    if-ne v5, v1, :cond_24

    .line 369
    .line 370
    goto :goto_9

    .line 371
    :cond_24
    if-eq v6, v14, :cond_26

    .line 372
    .line 373
    if-eq v6, v13, :cond_26

    .line 374
    .line 375
    if-ltz v6, :cond_25

    .line 376
    .line 377
    const/16 v5, 0x20

    .line 378
    .line 379
    if-ge v6, v5, :cond_25

    .line 380
    .line 381
    goto :goto_8

    .line 382
    :cond_25
    const/16 v5, 0x7f

    .line 383
    .line 384
    if-gt v5, v6, :cond_26

    .line 385
    .line 386
    const/16 v5, 0xa0

    .line 387
    .line 388
    if-ge v6, v5, :cond_26

    .line 389
    .line 390
    goto :goto_8

    .line 391
    :cond_26
    const v5, 0xfffd

    .line 392
    .line 393
    .line 394
    if-ne v6, v5, :cond_27

    .line 395
    .line 396
    goto :goto_8

    .line 397
    :cond_27
    const/high16 v5, 0x10000

    .line 398
    .line 399
    if-ge v6, v5, :cond_28

    .line 400
    .line 401
    const/16 v16, 0x1

    .line 402
    .line 403
    goto :goto_7

    .line 404
    :cond_28
    const/16 v16, 0x2

    .line 405
    .line 406
    :goto_7
    add-int v4, v4, v16

    .line 407
    .line 408
    add-int/lit8 v3, v3, 0x4

    .line 409
    .line 410
    goto/16 :goto_5

    .line 411
    .line 412
    :cond_29
    if-ne v5, v1, :cond_2d

    .line 413
    .line 414
    goto :goto_9

    .line 415
    :cond_2a
    if-ne v5, v1, :cond_2d

    .line 416
    .line 417
    goto :goto_9

    .line 418
    :cond_2b
    if-ne v5, v1, :cond_2d

    .line 419
    .line 420
    goto :goto_9

    .line 421
    :cond_2c
    if-ne v5, v1, :cond_2d

    .line 422
    .line 423
    goto :goto_9

    .line 424
    :cond_2d
    :goto_8
    const/4 v0, -0x1

    .line 425
    return v0

    .line 426
    :cond_2e
    :goto_9
    return v4
.end method

.method public static final access$decodeHexDigit(C)I
    .locals 2

    .line 1
    const/16 v0, 0x30

    .line 2
    .line 3
    if-gt v0, p0, :cond_0

    .line 4
    .line 5
    const/16 v1, 0x3a

    .line 6
    .line 7
    if-ge p0, v1, :cond_0

    .line 8
    .line 9
    sub-int/2addr p0, v0

    .line 10
    return p0

    .line 11
    :cond_0
    const/16 v0, 0x61

    .line 12
    .line 13
    if-gt v0, p0, :cond_1

    .line 14
    .line 15
    const/16 v0, 0x67

    .line 16
    .line 17
    if-ge p0, v0, :cond_1

    .line 18
    .line 19
    add-int/lit8 p0, p0, -0x57

    .line 20
    .line 21
    return p0

    .line 22
    :cond_1
    const/16 v0, 0x41

    .line 23
    .line 24
    if-gt v0, p0, :cond_2

    .line 25
    .line 26
    const/16 v0, 0x47

    .line 27
    .line 28
    if-ge p0, v0, :cond_2

    .line 29
    .line 30
    add-int/lit8 p0, p0, -0x37

    .line 31
    .line 32
    return p0

    .line 33
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 34
    .line 35
    const-string v1, "Unexpected hex digit: "

    .line 36
    .line 37
    invoke-static {v1, p0}, LA/i;->h(Ljava/lang/String;C)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw v0
.end method

.method public static final commonWrite(Lokio/ByteString;Le6/l;II)V
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "buffer"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p1, p0, p2, p3}, Le6/l;->write([BII)Le6/l;

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public static final getHEX_DIGIT_CHARS()[C
    .locals 1

    .line 1
    sget-object v0, Lf6/b;->a:[C

    .line 2
    .line 3
    return-object v0
.end method
