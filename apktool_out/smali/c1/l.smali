.class public final Lc1/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc1/j;


# static fields
.field public static final r:[D


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lv0/r0;

.field public final c:Lc1/Z;

.field public final d:Ljava/lang/String;

.field public final e:Landroidx/media3/common/util/ParsableByteArray;

.field public final f:Lc1/B;

.field public final g:[Z

.field public final h:Lc1/k;

.field public i:J

.field public j:Z

.field public k:Z

.field public l:J

.field public m:J

.field public n:J

.field public o:J

.field public p:Z

.field public q:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    new-array v0, v0, [D

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Lc1/l;->r:[D

    .line 9
    .line 10
    return-void

    .line 11
    :array_0
    .array-data 8
        0x4037f9dcb5112287L    # 23.976023976023978
        0x4038000000000000L    # 24.0
        0x4039000000000000L    # 25.0
        0x403df853e2556b28L    # 29.97002997002997
        0x403e000000000000L    # 30.0
        0x4049000000000000L    # 50.0
        0x404df853e2556b28L    # 59.94005994005994
        0x404e000000000000L    # 60.0
    .end array-data
.end method

.method public constructor <init>(Lc1/Z;Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lc1/l;->c:Lc1/Z;

    .line 4
    iput-object p2, p0, Lc1/l;->d:Ljava/lang/String;

    const/4 p2, 0x4

    .line 5
    new-array p2, p2, [Z

    iput-object p2, p0, Lc1/l;->g:[Z

    .line 6
    new-instance p2, Lc1/k;

    const/16 v0, 0x80

    invoke-direct {p2, v0}, Lc1/k;-><init>(I)V

    iput-object p2, p0, Lc1/l;->h:Lc1/k;

    if-eqz p1, :cond_0

    .line 7
    new-instance p1, Lc1/B;

    const/16 p2, 0xb2

    invoke-direct {p1, p2, v0}, Lc1/B;-><init>(II)V

    iput-object p1, p0, Lc1/l;->f:Lc1/B;

    .line 8
    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {p1}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Lc1/l;->e:Landroidx/media3/common/util/ParsableByteArray;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lc1/l;->f:Lc1/B;

    .line 10
    iput-object p1, p0, Lc1/l;->e:Landroidx/media3/common/util/ParsableByteArray;

    :goto_0
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 11
    iput-wide p1, p0, Lc1/l;->m:J

    .line 12
    iput-wide p1, p0, Lc1/l;->o:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, p1}, Lc1/l;-><init>(Lc1/Z;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public consume(Landroidx/media3/common/util/ParsableByteArray;)V
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lc1/l;->b:Lv0/r0;

    .line 4
    .line 5
    invoke-static {v1}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    iget-wide v4, v0, Lc1/l;->i:J

    .line 21
    .line 22
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 23
    .line 24
    .line 25
    move-result v6

    .line 26
    int-to-long v6, v6

    .line 27
    add-long/2addr v4, v6

    .line 28
    iput-wide v4, v0, Lc1/l;->i:J

    .line 29
    .line 30
    iget-object v4, v0, Lc1/l;->b:Lv0/r0;

    .line 31
    .line 32
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    move-object/from16 v6, p1

    .line 37
    .line 38
    invoke-interface {v4, v6, v5}, Lv0/r0;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    .line 39
    .line 40
    .line 41
    :goto_0
    iget-object v4, v0, Lc1/l;->g:[Z

    .line 42
    .line 43
    invoke-static {v3, v1, v2, v4}, Ls0/v;->findNalUnit([BII[Z)I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    iget-object v5, v0, Lc1/l;->h:Lc1/k;

    .line 48
    .line 49
    iget-object v7, v0, Lc1/l;->f:Lc1/B;

    .line 50
    .line 51
    if-ne v4, v2, :cond_2

    .line 52
    .line 53
    iget-boolean v4, v0, Lc1/l;->k:Z

    .line 54
    .line 55
    if-nez v4, :cond_0

    .line 56
    .line 57
    invoke-virtual {v5, v3, v1, v2}, Lc1/k;->onData([BII)V

    .line 58
    .line 59
    .line 60
    :cond_0
    if-eqz v7, :cond_1

    .line 61
    .line 62
    invoke-virtual {v7, v3, v1, v2}, Lc1/B;->appendToNalUnit([BII)V

    .line 63
    .line 64
    .line 65
    :cond_1
    return-void

    .line 66
    :cond_2
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 67
    .line 68
    .line 69
    move-result-object v8

    .line 70
    add-int/lit8 v9, v4, 0x3

    .line 71
    .line 72
    aget-byte v8, v8, v9

    .line 73
    .line 74
    and-int/lit16 v8, v8, 0xff

    .line 75
    .line 76
    sub-int v10, v4, v1

    .line 77
    .line 78
    iget-boolean v11, v0, Lc1/l;->k:Z

    .line 79
    .line 80
    if-nez v11, :cond_a

    .line 81
    .line 82
    if-lez v10, :cond_3

    .line 83
    .line 84
    invoke-virtual {v5, v3, v1, v4}, Lc1/k;->onData([BII)V

    .line 85
    .line 86
    .line 87
    :cond_3
    if-gez v10, :cond_4

    .line 88
    .line 89
    neg-int v11, v10

    .line 90
    goto :goto_1

    .line 91
    :cond_4
    const/4 v11, 0x0

    .line 92
    :goto_1
    invoke-virtual {v5, v8, v11}, Lc1/k;->onStartCode(II)Z

    .line 93
    .line 94
    .line 95
    move-result v11

    .line 96
    if-eqz v11, :cond_a

    .line 97
    .line 98
    iget-object v11, v0, Lc1/l;->a:Ljava/lang/String;

    .line 99
    .line 100
    invoke-static {v11}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v11

    .line 104
    check-cast v11, Ljava/lang/String;

    .line 105
    .line 106
    iget-object v14, v5, Lc1/k;->d:[B

    .line 107
    .line 108
    iget v15, v5, Lc1/k;->b:I

    .line 109
    .line 110
    invoke-static {v14, v15}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 111
    .line 112
    .line 113
    move-result-object v14

    .line 114
    const/4 v15, 0x4

    .line 115
    aget-byte v13, v14, v15

    .line 116
    .line 117
    and-int/lit16 v13, v13, 0xff

    .line 118
    .line 119
    const/16 v16, 0x5

    .line 120
    .line 121
    const/16 v17, 0x1

    .line 122
    .line 123
    aget-byte v12, v14, v16

    .line 124
    .line 125
    move/from16 v18, v15

    .line 126
    .line 127
    and-int/lit16 v15, v12, 0xff

    .line 128
    .line 129
    const/16 v19, 0x6

    .line 130
    .line 131
    move/from16 v20, v2

    .line 132
    .line 133
    aget-byte v2, v14, v19

    .line 134
    .line 135
    and-int/lit16 v2, v2, 0xff

    .line 136
    .line 137
    shl-int/lit8 v13, v13, 0x4

    .line 138
    .line 139
    shr-int/lit8 v15, v15, 0x4

    .line 140
    .line 141
    or-int/2addr v13, v15

    .line 142
    and-int/lit8 v12, v12, 0xf

    .line 143
    .line 144
    const/16 v15, 0x8

    .line 145
    .line 146
    shl-int/2addr v12, v15

    .line 147
    or-int/2addr v2, v12

    .line 148
    const/16 v19, 0x7

    .line 149
    .line 150
    aget-byte v12, v14, v19

    .line 151
    .line 152
    and-int/lit16 v12, v12, 0xf0

    .line 153
    .line 154
    shr-int/lit8 v12, v12, 0x4

    .line 155
    .line 156
    const/4 v15, 0x2

    .line 157
    if-eq v12, v15, :cond_7

    .line 158
    .line 159
    const/4 v15, 0x3

    .line 160
    if-eq v12, v15, :cond_6

    .line 161
    .line 162
    move/from16 v15, v18

    .line 163
    .line 164
    if-eq v12, v15, :cond_5

    .line 165
    .line 166
    const/high16 v12, 0x3f800000    # 1.0f

    .line 167
    .line 168
    goto :goto_3

    .line 169
    :cond_5
    mul-int/lit8 v12, v2, 0x79

    .line 170
    .line 171
    int-to-float v12, v12

    .line 172
    mul-int/lit8 v15, v13, 0x64

    .line 173
    .line 174
    :goto_2
    int-to-float v15, v15

    .line 175
    div-float/2addr v12, v15

    .line 176
    goto :goto_3

    .line 177
    :cond_6
    mul-int/lit8 v12, v2, 0x10

    .line 178
    .line 179
    int-to-float v12, v12

    .line 180
    mul-int/lit8 v15, v13, 0x9

    .line 181
    .line 182
    goto :goto_2

    .line 183
    :cond_7
    mul-int/lit8 v12, v2, 0x4

    .line 184
    .line 185
    int-to-float v12, v12

    .line 186
    mul-int/lit8 v15, v13, 0x3

    .line 187
    .line 188
    goto :goto_2

    .line 189
    :goto_3
    new-instance v15, Landroidx/media3/common/Format$Builder;

    .line 190
    .line 191
    invoke-direct {v15}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v15, v11}, Landroidx/media3/common/Format$Builder;->setId(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 195
    .line 196
    .line 197
    move-result-object v11

    .line 198
    iget-object v15, v0, Lc1/l;->d:Ljava/lang/String;

    .line 199
    .line 200
    invoke-virtual {v11, v15}, Landroidx/media3/common/Format$Builder;->setContainerMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 201
    .line 202
    .line 203
    move-result-object v11

    .line 204
    const-string v15, "video/mpeg2"

    .line 205
    .line 206
    invoke-virtual {v11, v15}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 207
    .line 208
    .line 209
    move-result-object v11

    .line 210
    invoke-virtual {v11, v13}, Landroidx/media3/common/Format$Builder;->setWidth(I)Landroidx/media3/common/Format$Builder;

    .line 211
    .line 212
    .line 213
    move-result-object v11

    .line 214
    invoke-virtual {v11, v2}, Landroidx/media3/common/Format$Builder;->setHeight(I)Landroidx/media3/common/Format$Builder;

    .line 215
    .line 216
    .line 217
    move-result-object v2

    .line 218
    invoke-virtual {v2, v12}, Landroidx/media3/common/Format$Builder;->setPixelWidthHeightRatio(F)Landroidx/media3/common/Format$Builder;

    .line 219
    .line 220
    .line 221
    move-result-object v2

    .line 222
    invoke-static {v14}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 223
    .line 224
    .line 225
    move-result-object v11

    .line 226
    invoke-virtual {v2, v11}, Landroidx/media3/common/Format$Builder;->setInitializationData(Ljava/util/List;)Landroidx/media3/common/Format$Builder;

    .line 227
    .line 228
    .line 229
    move-result-object v2

    .line 230
    invoke-virtual {v2}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    .line 231
    .line 232
    .line 233
    move-result-object v2

    .line 234
    aget-byte v11, v14, v19

    .line 235
    .line 236
    and-int/lit8 v11, v11, 0xf

    .line 237
    .line 238
    add-int/lit8 v11, v11, -0x1

    .line 239
    .line 240
    if-ltz v11, :cond_9

    .line 241
    .line 242
    const/16 v12, 0x8

    .line 243
    .line 244
    if-ge v11, v12, :cond_9

    .line 245
    .line 246
    sget-object v12, Lc1/l;->r:[D

    .line 247
    .line 248
    aget-wide v11, v12, v11

    .line 249
    .line 250
    iget v5, v5, Lc1/k;->c:I

    .line 251
    .line 252
    add-int/lit8 v5, v5, 0x9

    .line 253
    .line 254
    aget-byte v5, v14, v5

    .line 255
    .line 256
    and-int/lit8 v13, v5, 0x60

    .line 257
    .line 258
    shr-int/lit8 v13, v13, 0x5

    .line 259
    .line 260
    and-int/lit8 v5, v5, 0x1f

    .line 261
    .line 262
    if-eq v13, v5, :cond_8

    .line 263
    .line 264
    int-to-double v13, v13

    .line 265
    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    .line 266
    .line 267
    add-double v13, v13, v18

    .line 268
    .line 269
    add-int/lit8 v5, v5, 0x1

    .line 270
    .line 271
    int-to-double v5, v5

    .line 272
    div-double/2addr v13, v5

    .line 273
    mul-double/2addr v11, v13

    .line 274
    :cond_8
    const-wide v5, 0x412e848000000000L    # 1000000.0

    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    div-double/2addr v5, v11

    .line 280
    double-to-long v5, v5

    .line 281
    goto :goto_4

    .line 282
    :cond_9
    const-wide/16 v5, 0x0

    .line 283
    .line 284
    :goto_4
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 285
    .line 286
    .line 287
    move-result-object v5

    .line 288
    invoke-static {v2, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 289
    .line 290
    .line 291
    move-result-object v2

    .line 292
    iget-object v5, v0, Lc1/l;->b:Lv0/r0;

    .line 293
    .line 294
    iget-object v6, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 295
    .line 296
    check-cast v6, Landroidx/media3/common/Format;

    .line 297
    .line 298
    invoke-interface {v5, v6}, Lv0/r0;->format(Landroidx/media3/common/Format;)V

    .line 299
    .line 300
    .line 301
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 302
    .line 303
    check-cast v2, Ljava/lang/Long;

    .line 304
    .line 305
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 306
    .line 307
    .line 308
    move-result-wide v5

    .line 309
    iput-wide v5, v0, Lc1/l;->l:J

    .line 310
    .line 311
    move/from16 v2, v17

    .line 312
    .line 313
    iput-boolean v2, v0, Lc1/l;->k:Z

    .line 314
    .line 315
    goto :goto_5

    .line 316
    :cond_a
    move/from16 v20, v2

    .line 317
    .line 318
    :goto_5
    if-eqz v7, :cond_d

    .line 319
    .line 320
    if-lez v10, :cond_b

    .line 321
    .line 322
    invoke-virtual {v7, v3, v1, v4}, Lc1/B;->appendToNalUnit([BII)V

    .line 323
    .line 324
    .line 325
    const/4 v1, 0x0

    .line 326
    goto :goto_6

    .line 327
    :cond_b
    neg-int v1, v10

    .line 328
    :goto_6
    invoke-virtual {v7, v1}, Lc1/B;->endNalUnit(I)Z

    .line 329
    .line 330
    .line 331
    move-result v1

    .line 332
    if-eqz v1, :cond_c

    .line 333
    .line 334
    iget-object v1, v7, Lc1/B;->d:[B

    .line 335
    .line 336
    iget v2, v7, Lc1/B;->e:I

    .line 337
    .line 338
    invoke-static {v1, v2}, Ls0/v;->unescapeStream([BI)I

    .line 339
    .line 340
    .line 341
    move-result v1

    .line 342
    iget-object v2, v0, Lc1/l;->e:Landroidx/media3/common/util/ParsableByteArray;

    .line 343
    .line 344
    invoke-static {v2}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    .line 346
    .line 347
    move-result-object v5

    .line 348
    check-cast v5, Landroidx/media3/common/util/ParsableByteArray;

    .line 349
    .line 350
    iget-object v6, v7, Lc1/B;->d:[B

    .line 351
    .line 352
    invoke-virtual {v5, v6, v1}, Landroidx/media3/common/util/ParsableByteArray;->reset([BI)V

    .line 353
    .line 354
    .line 355
    iget-object v1, v0, Lc1/l;->c:Lc1/Z;

    .line 356
    .line 357
    invoke-static {v1}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    .line 359
    .line 360
    move-result-object v1

    .line 361
    check-cast v1, Lc1/Z;

    .line 362
    .line 363
    iget-wide v5, v0, Lc1/l;->o:J

    .line 364
    .line 365
    invoke-virtual {v1, v5, v6, v2}, Lc1/Z;->consume(JLandroidx/media3/common/util/ParsableByteArray;)V

    .line 366
    .line 367
    .line 368
    :cond_c
    const/16 v1, 0xb2

    .line 369
    .line 370
    if-ne v8, v1, :cond_d

    .line 371
    .line 372
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 373
    .line 374
    .line 375
    move-result-object v1

    .line 376
    add-int/lit8 v2, v4, 0x2

    .line 377
    .line 378
    aget-byte v1, v1, v2

    .line 379
    .line 380
    const/4 v2, 0x1

    .line 381
    if-ne v1, v2, :cond_d

    .line 382
    .line 383
    invoke-virtual {v7, v8}, Lc1/B;->startNalUnit(I)V

    .line 384
    .line 385
    .line 386
    :cond_d
    if-eqz v8, :cond_f

    .line 387
    .line 388
    const/16 v1, 0xb3

    .line 389
    .line 390
    if-ne v8, v1, :cond_e

    .line 391
    .line 392
    goto :goto_7

    .line 393
    :cond_e
    const/16 v1, 0xb8

    .line 394
    .line 395
    if-ne v8, v1, :cond_16

    .line 396
    .line 397
    const/4 v2, 0x1

    .line 398
    iput-boolean v2, v0, Lc1/l;->p:Z

    .line 399
    .line 400
    goto/16 :goto_c

    .line 401
    .line 402
    :cond_f
    :goto_7
    sub-int v26, v20, v4

    .line 403
    .line 404
    iget-boolean v1, v0, Lc1/l;->q:Z

    .line 405
    .line 406
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    if-eqz v1, :cond_10

    .line 412
    .line 413
    iget-boolean v1, v0, Lc1/l;->k:Z

    .line 414
    .line 415
    if-eqz v1, :cond_10

    .line 416
    .line 417
    iget-wide v1, v0, Lc1/l;->o:J

    .line 418
    .line 419
    cmp-long v6, v1, v4

    .line 420
    .line 421
    if-eqz v6, :cond_10

    .line 422
    .line 423
    iget-boolean v6, v0, Lc1/l;->p:Z

    .line 424
    .line 425
    iget-wide v10, v0, Lc1/l;->i:J

    .line 426
    .line 427
    iget-wide v12, v0, Lc1/l;->n:J

    .line 428
    .line 429
    sub-long/2addr v10, v12

    .line 430
    long-to-int v7, v10

    .line 431
    sub-int v25, v7, v26

    .line 432
    .line 433
    iget-object v7, v0, Lc1/l;->b:Lv0/r0;

    .line 434
    .line 435
    const/16 v27, 0x0

    .line 436
    .line 437
    move-wide/from16 v22, v1

    .line 438
    .line 439
    move/from16 v24, v6

    .line 440
    .line 441
    move-object/from16 v21, v7

    .line 442
    .line 443
    invoke-interface/range {v21 .. v27}, Lv0/r0;->sampleMetadata(JIIILv0/q0;)V

    .line 444
    .line 445
    .line 446
    :cond_10
    move/from16 v2, v26

    .line 447
    .line 448
    iget-boolean v1, v0, Lc1/l;->j:Z

    .line 449
    .line 450
    if-eqz v1, :cond_12

    .line 451
    .line 452
    iget-boolean v1, v0, Lc1/l;->q:Z

    .line 453
    .line 454
    if-eqz v1, :cond_11

    .line 455
    .line 456
    goto :goto_8

    .line 457
    :cond_11
    const/4 v1, 0x0

    .line 458
    const/4 v2, 0x1

    .line 459
    goto :goto_a

    .line 460
    :cond_12
    :goto_8
    iget-wide v6, v0, Lc1/l;->i:J

    .line 461
    .line 462
    int-to-long v1, v2

    .line 463
    sub-long/2addr v6, v1

    .line 464
    iput-wide v6, v0, Lc1/l;->n:J

    .line 465
    .line 466
    iget-wide v1, v0, Lc1/l;->m:J

    .line 467
    .line 468
    cmp-long v6, v1, v4

    .line 469
    .line 470
    if-eqz v6, :cond_13

    .line 471
    .line 472
    goto :goto_9

    .line 473
    :cond_13
    iget-wide v1, v0, Lc1/l;->o:J

    .line 474
    .line 475
    cmp-long v6, v1, v4

    .line 476
    .line 477
    if-eqz v6, :cond_14

    .line 478
    .line 479
    iget-wide v6, v0, Lc1/l;->l:J

    .line 480
    .line 481
    add-long/2addr v1, v6

    .line 482
    goto :goto_9

    .line 483
    :cond_14
    move-wide v1, v4

    .line 484
    :goto_9
    iput-wide v1, v0, Lc1/l;->o:J

    .line 485
    .line 486
    const/4 v1, 0x0

    .line 487
    iput-boolean v1, v0, Lc1/l;->p:Z

    .line 488
    .line 489
    iput-wide v4, v0, Lc1/l;->m:J

    .line 490
    .line 491
    const/4 v2, 0x1

    .line 492
    iput-boolean v2, v0, Lc1/l;->j:Z

    .line 493
    .line 494
    :goto_a
    if-nez v8, :cond_15

    .line 495
    .line 496
    move v12, v2

    .line 497
    goto :goto_b

    .line 498
    :cond_15
    move v12, v1

    .line 499
    :goto_b
    iput-boolean v12, v0, Lc1/l;->q:Z

    .line 500
    .line 501
    :cond_16
    :goto_c
    move-object/from16 v6, p1

    .line 502
    .line 503
    move v1, v9

    .line 504
    move/from16 v2, v20

    .line 505
    .line 506
    goto/16 :goto_0
.end method

.method public createTracks(Lv0/F;Lc1/W;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Lc1/W;->generateNewId()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Lc1/W;->getFormatId()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lc1/l;->a:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {p2}, Lc1/W;->getTrackId()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x2

    .line 15
    invoke-interface {p1, v0, v1}, Lv0/F;->track(II)Lv0/r0;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lc1/l;->b:Lv0/r0;

    .line 20
    .line 21
    iget-object v0, p0, Lc1/l;->c:Lc1/Z;

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {v0, p1, p2}, Lc1/Z;->createTracks(Lv0/F;Lc1/W;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method public packetFinished(Z)V
    .locals 8

    .line 1
    iget-object v0, p0, Lc1/l;->b:Lv0/r0;

    .line 2
    .line 3
    invoke-static {v0}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-boolean v4, p0, Lc1/l;->p:Z

    .line 9
    .line 10
    iget-wide v0, p0, Lc1/l;->i:J

    .line 11
    .line 12
    iget-wide v2, p0, Lc1/l;->n:J

    .line 13
    .line 14
    sub-long/2addr v0, v2

    .line 15
    long-to-int v5, v0

    .line 16
    iget-object v1, p0, Lc1/l;->b:Lv0/r0;

    .line 17
    .line 18
    iget-wide v2, p0, Lc1/l;->o:J

    .line 19
    .line 20
    const/4 v6, 0x0

    .line 21
    const/4 v7, 0x0

    .line 22
    invoke-interface/range {v1 .. v7}, Lv0/r0;->sampleMetadata(JIIILv0/q0;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public packetStarted(JI)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lc1/l;->m:J

    .line 2
    .line 3
    return-void
.end method

.method public seek()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc1/l;->g:[Z

    .line 2
    .line 3
    invoke-static {v0}, Ls0/v;->clearPrefixFlags([Z)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lc1/l;->h:Lc1/k;

    .line 7
    .line 8
    invoke-virtual {v0}, Lc1/k;->reset()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lc1/l;->f:Lc1/B;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Lc1/B;->reset()V

    .line 16
    .line 17
    .line 18
    :cond_0
    const-wide/16 v0, 0x0

    .line 19
    .line 20
    iput-wide v0, p0, Lc1/l;->i:J

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lc1/l;->j:Z

    .line 24
    .line 25
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    iput-wide v0, p0, Lc1/l;->m:J

    .line 31
    .line 32
    iput-wide v0, p0, Lc1/l;->o:J

    .line 33
    .line 34
    return-void
.end method
