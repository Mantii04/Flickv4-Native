.class public final Lc1/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc1/j;


# static fields
.field public static final l:[F


# instance fields
.field public final a:Lc1/Z;

.field public final b:Landroidx/media3/common/util/ParsableByteArray;

.field public final c:[Z

.field public final d:Lc1/m;

.field public final e:Lc1/B;

.field public f:Lc1/n;

.field public g:J

.field public h:Ljava/lang/String;

.field public i:Lv0/r0;

.field public j:Z

.field public k:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x7

    .line 2
    new-array v0, v0, [F

    .line 3
    .line 4
    fill-array-data v0, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v0, Lc1/o;->l:[F

    .line 8
    .line 9
    return-void

    .line 10
    nop

    .line 11
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f8ba2e9
        0x3f68ba2f
        0x3fba2e8c
        0x3f9b26ca
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Lc1/Z;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lc1/o;->a:Lc1/Z;

    .line 5
    .line 6
    const/4 p1, 0x4

    .line 7
    new-array p1, p1, [Z

    .line 8
    .line 9
    iput-object p1, p0, Lc1/o;->c:[Z

    .line 10
    .line 11
    new-instance p1, Lc1/m;

    .line 12
    .line 13
    const/16 v0, 0x80

    .line 14
    .line 15
    invoke-direct {p1, v0}, Lc1/m;-><init>(I)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lc1/o;->d:Lc1/m;

    .line 19
    .line 20
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    iput-wide v1, p0, Lc1/o;->k:J

    .line 26
    .line 27
    new-instance p1, Lc1/B;

    .line 28
    .line 29
    const/16 v1, 0xb2

    .line 30
    .line 31
    invoke-direct {p1, v1, v0}, Lc1/B;-><init>(II)V

    .line 32
    .line 33
    .line 34
    iput-object p1, p0, Lc1/o;->e:Lc1/B;

    .line 35
    .line 36
    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    .line 37
    .line 38
    invoke-direct {p1}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object p1, p0, Lc1/o;->b:Landroidx/media3/common/util/ParsableByteArray;

    .line 42
    .line 43
    return-void
.end method


# virtual methods
.method public consume(Landroidx/media3/common/util/ParsableByteArray;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lc1/o;->f:Lc1/n;

    .line 4
    .line 5
    invoke-static {v1}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Lc1/o;->i:Lv0/r0;

    .line 9
    .line 10
    invoke-static {v1}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    iget-wide v4, v0, Lc1/o;->g:J

    .line 26
    .line 27
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 28
    .line 29
    .line 30
    move-result v6

    .line 31
    int-to-long v6, v6

    .line 32
    add-long/2addr v4, v6

    .line 33
    iput-wide v4, v0, Lc1/o;->g:J

    .line 34
    .line 35
    iget-object v4, v0, Lc1/o;->i:Lv0/r0;

    .line 36
    .line 37
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    move-object/from16 v6, p1

    .line 42
    .line 43
    invoke-interface {v4, v6, v5}, Lv0/r0;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    .line 44
    .line 45
    .line 46
    :goto_0
    iget-object v4, v0, Lc1/o;->c:[Z

    .line 47
    .line 48
    invoke-static {v3, v1, v2, v4}, Ls0/v;->findNalUnit([BII[Z)I

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    iget-object v5, v0, Lc1/o;->d:Lc1/m;

    .line 53
    .line 54
    iget-object v7, v0, Lc1/o;->e:Lc1/B;

    .line 55
    .line 56
    if-ne v4, v2, :cond_2

    .line 57
    .line 58
    iget-boolean v4, v0, Lc1/o;->j:Z

    .line 59
    .line 60
    if-nez v4, :cond_0

    .line 61
    .line 62
    invoke-virtual {v5, v3, v1, v2}, Lc1/m;->onData([BII)V

    .line 63
    .line 64
    .line 65
    :cond_0
    iget-object v4, v0, Lc1/o;->f:Lc1/n;

    .line 66
    .line 67
    invoke-virtual {v4, v3, v1, v2}, Lc1/n;->onData([BII)V

    .line 68
    .line 69
    .line 70
    if-eqz v7, :cond_1

    .line 71
    .line 72
    invoke-virtual {v7, v3, v1, v2}, Lc1/B;->appendToNalUnit([BII)V

    .line 73
    .line 74
    .line 75
    :cond_1
    return-void

    .line 76
    :cond_2
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 77
    .line 78
    .line 79
    move-result-object v8

    .line 80
    add-int/lit8 v9, v4, 0x3

    .line 81
    .line 82
    aget-byte v8, v8, v9

    .line 83
    .line 84
    and-int/lit16 v8, v8, 0xff

    .line 85
    .line 86
    sub-int v10, v4, v1

    .line 87
    .line 88
    iget-boolean v11, v0, Lc1/o;->j:Z

    .line 89
    .line 90
    if-nez v11, :cond_e

    .line 91
    .line 92
    if-lez v10, :cond_3

    .line 93
    .line 94
    invoke-virtual {v5, v3, v1, v4}, Lc1/m;->onData([BII)V

    .line 95
    .line 96
    .line 97
    :cond_3
    if-gez v10, :cond_4

    .line 98
    .line 99
    neg-int v11, v10

    .line 100
    goto :goto_1

    .line 101
    :cond_4
    const/4 v11, 0x0

    .line 102
    :goto_1
    invoke-virtual {v5, v8, v11}, Lc1/m;->onStartCode(II)Z

    .line 103
    .line 104
    .line 105
    move-result v11

    .line 106
    if-eqz v11, :cond_e

    .line 107
    .line 108
    iget-object v11, v0, Lc1/o;->i:Lv0/r0;

    .line 109
    .line 110
    iget v14, v5, Lc1/m;->d:I

    .line 111
    .line 112
    iget-object v15, v0, Lc1/o;->h:Ljava/lang/String;

    .line 113
    .line 114
    invoke-static {v15}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v15

    .line 118
    check-cast v15, Ljava/lang/String;

    .line 119
    .line 120
    iget-object v13, v5, Lc1/m;->e:[B

    .line 121
    .line 122
    iget v5, v5, Lc1/m;->c:I

    .line 123
    .line 124
    invoke-static {v13, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    new-instance v13, Landroidx/media3/common/util/ParsableBitArray;

    .line 129
    .line 130
    invoke-direct {v13, v5}, Landroidx/media3/common/util/ParsableBitArray;-><init>([B)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v13, v14}, Landroidx/media3/common/util/ParsableBitArray;->skipBytes(I)V

    .line 134
    .line 135
    .line 136
    const/4 v14, 0x4

    .line 137
    invoke-virtual {v13, v14}, Landroidx/media3/common/util/ParsableBitArray;->skipBytes(I)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v13}, Landroidx/media3/common/util/ParsableBitArray;->skipBit()V

    .line 141
    .line 142
    .line 143
    const/16 v12, 0x8

    .line 144
    .line 145
    invoke-virtual {v13, v12}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v13}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    .line 149
    .line 150
    .line 151
    move-result v16

    .line 152
    const/4 v12, 0x3

    .line 153
    if-eqz v16, :cond_5

    .line 154
    .line 155
    invoke-virtual {v13, v14}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v13, v12}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 159
    .line 160
    .line 161
    :cond_5
    invoke-virtual {v13, v14}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 162
    .line 163
    .line 164
    move-result v14

    .line 165
    const/high16 v16, 0x3f800000    # 1.0f

    .line 166
    .line 167
    const-string v12, "Invalid aspect ratio"

    .line 168
    .line 169
    move/from16 v17, v2

    .line 170
    .line 171
    const-string v2, "H263Reader"

    .line 172
    .line 173
    move-object/from16 v18, v5

    .line 174
    .line 175
    const/16 v5, 0xf

    .line 176
    .line 177
    if-ne v14, v5, :cond_7

    .line 178
    .line 179
    const/16 v5, 0x8

    .line 180
    .line 181
    invoke-virtual {v13, v5}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 182
    .line 183
    .line 184
    move-result v14

    .line 185
    invoke-virtual {v13, v5}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 186
    .line 187
    .line 188
    move-result v5

    .line 189
    if-nez v5, :cond_6

    .line 190
    .line 191
    invoke-static {v2, v12}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    goto :goto_2

    .line 195
    :cond_6
    int-to-float v12, v14

    .line 196
    int-to-float v5, v5

    .line 197
    div-float v16, v12, v5

    .line 198
    .line 199
    :goto_2
    move/from16 v5, v16

    .line 200
    .line 201
    goto :goto_3

    .line 202
    :cond_7
    const/4 v5, 0x7

    .line 203
    if-ge v14, v5, :cond_8

    .line 204
    .line 205
    sget-object v5, Lc1/o;->l:[F

    .line 206
    .line 207
    aget v16, v5, v14

    .line 208
    .line 209
    goto :goto_2

    .line 210
    :cond_8
    invoke-static {v2, v12}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    goto :goto_2

    .line 214
    :goto_3
    invoke-virtual {v13}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    .line 215
    .line 216
    .line 217
    move-result v12

    .line 218
    const/4 v14, 0x2

    .line 219
    if-eqz v12, :cond_9

    .line 220
    .line 221
    invoke-virtual {v13, v14}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 222
    .line 223
    .line 224
    const/4 v12, 0x1

    .line 225
    invoke-virtual {v13, v12}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v13}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    .line 229
    .line 230
    .line 231
    move-result v12

    .line 232
    if-eqz v12, :cond_9

    .line 233
    .line 234
    const/16 v12, 0xf

    .line 235
    .line 236
    invoke-virtual {v13, v12}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v13}, Landroidx/media3/common/util/ParsableBitArray;->skipBit()V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v13, v12}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v13}, Landroidx/media3/common/util/ParsableBitArray;->skipBit()V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v13, v12}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v13}, Landroidx/media3/common/util/ParsableBitArray;->skipBit()V

    .line 252
    .line 253
    .line 254
    const/4 v14, 0x3

    .line 255
    invoke-virtual {v13, v14}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 256
    .line 257
    .line 258
    const/16 v14, 0xb

    .line 259
    .line 260
    invoke-virtual {v13, v14}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v13}, Landroidx/media3/common/util/ParsableBitArray;->skipBit()V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v13, v12}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v13}, Landroidx/media3/common/util/ParsableBitArray;->skipBit()V

    .line 270
    .line 271
    .line 272
    const/4 v12, 0x2

    .line 273
    goto :goto_4

    .line 274
    :cond_9
    move v12, v14

    .line 275
    :goto_4
    invoke-virtual {v13, v12}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 276
    .line 277
    .line 278
    move-result v12

    .line 279
    if-eqz v12, :cond_a

    .line 280
    .line 281
    const-string v12, "Unhandled video object layer shape"

    .line 282
    .line 283
    invoke-static {v2, v12}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    :cond_a
    invoke-virtual {v13}, Landroidx/media3/common/util/ParsableBitArray;->skipBit()V

    .line 287
    .line 288
    .line 289
    const/16 v12, 0x10

    .line 290
    .line 291
    invoke-virtual {v13, v12}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 292
    .line 293
    .line 294
    move-result v12

    .line 295
    invoke-virtual {v13}, Landroidx/media3/common/util/ParsableBitArray;->skipBit()V

    .line 296
    .line 297
    .line 298
    invoke-virtual {v13}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    .line 299
    .line 300
    .line 301
    move-result v14

    .line 302
    if-eqz v14, :cond_d

    .line 303
    .line 304
    if-nez v12, :cond_b

    .line 305
    .line 306
    const-string v12, "Invalid vop_increment_time_resolution"

    .line 307
    .line 308
    invoke-static {v2, v12}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    .line 310
    .line 311
    goto :goto_6

    .line 312
    :cond_b
    add-int/lit8 v12, v12, -0x1

    .line 313
    .line 314
    const/4 v2, 0x0

    .line 315
    :goto_5
    if-lez v12, :cond_c

    .line 316
    .line 317
    add-int/lit8 v2, v2, 0x1

    .line 318
    .line 319
    shr-int/lit8 v12, v12, 0x1

    .line 320
    .line 321
    goto :goto_5

    .line 322
    :cond_c
    invoke-virtual {v13, v2}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 323
    .line 324
    .line 325
    :cond_d
    :goto_6
    invoke-virtual {v13}, Landroidx/media3/common/util/ParsableBitArray;->skipBit()V

    .line 326
    .line 327
    .line 328
    const/16 v2, 0xd

    .line 329
    .line 330
    invoke-virtual {v13, v2}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 331
    .line 332
    .line 333
    move-result v12

    .line 334
    invoke-virtual {v13}, Landroidx/media3/common/util/ParsableBitArray;->skipBit()V

    .line 335
    .line 336
    .line 337
    invoke-virtual {v13, v2}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 338
    .line 339
    .line 340
    move-result v2

    .line 341
    invoke-virtual {v13}, Landroidx/media3/common/util/ParsableBitArray;->skipBit()V

    .line 342
    .line 343
    .line 344
    invoke-virtual {v13}, Landroidx/media3/common/util/ParsableBitArray;->skipBit()V

    .line 345
    .line 346
    .line 347
    new-instance v13, Landroidx/media3/common/Format$Builder;

    .line 348
    .line 349
    invoke-direct {v13}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 350
    .line 351
    .line 352
    invoke-virtual {v13, v15}, Landroidx/media3/common/Format$Builder;->setId(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 353
    .line 354
    .line 355
    move-result-object v13

    .line 356
    const-string v14, "video/mp2t"

    .line 357
    .line 358
    invoke-virtual {v13, v14}, Landroidx/media3/common/Format$Builder;->setContainerMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 359
    .line 360
    .line 361
    move-result-object v13

    .line 362
    const-string v14, "video/mp4v-es"

    .line 363
    .line 364
    invoke-virtual {v13, v14}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 365
    .line 366
    .line 367
    move-result-object v13

    .line 368
    invoke-virtual {v13, v12}, Landroidx/media3/common/Format$Builder;->setWidth(I)Landroidx/media3/common/Format$Builder;

    .line 369
    .line 370
    .line 371
    move-result-object v12

    .line 372
    invoke-virtual {v12, v2}, Landroidx/media3/common/Format$Builder;->setHeight(I)Landroidx/media3/common/Format$Builder;

    .line 373
    .line 374
    .line 375
    move-result-object v2

    .line 376
    invoke-virtual {v2, v5}, Landroidx/media3/common/Format$Builder;->setPixelWidthHeightRatio(F)Landroidx/media3/common/Format$Builder;

    .line 377
    .line 378
    .line 379
    move-result-object v2

    .line 380
    invoke-static/range {v18 .. v18}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 381
    .line 382
    .line 383
    move-result-object v5

    .line 384
    invoke-virtual {v2, v5}, Landroidx/media3/common/Format$Builder;->setInitializationData(Ljava/util/List;)Landroidx/media3/common/Format$Builder;

    .line 385
    .line 386
    .line 387
    move-result-object v2

    .line 388
    invoke-virtual {v2}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    .line 389
    .line 390
    .line 391
    move-result-object v2

    .line 392
    invoke-interface {v11, v2}, Lv0/r0;->format(Landroidx/media3/common/Format;)V

    .line 393
    .line 394
    .line 395
    const/4 v12, 0x1

    .line 396
    iput-boolean v12, v0, Lc1/o;->j:Z

    .line 397
    .line 398
    goto :goto_7

    .line 399
    :cond_e
    move/from16 v17, v2

    .line 400
    .line 401
    :goto_7
    iget-object v2, v0, Lc1/o;->f:Lc1/n;

    .line 402
    .line 403
    invoke-virtual {v2, v3, v1, v4}, Lc1/n;->onData([BII)V

    .line 404
    .line 405
    .line 406
    if-eqz v7, :cond_11

    .line 407
    .line 408
    if-lez v10, :cond_f

    .line 409
    .line 410
    invoke-virtual {v7, v3, v1, v4}, Lc1/B;->appendToNalUnit([BII)V

    .line 411
    .line 412
    .line 413
    const/4 v13, 0x0

    .line 414
    goto :goto_8

    .line 415
    :cond_f
    neg-int v13, v10

    .line 416
    :goto_8
    invoke-virtual {v7, v13}, Lc1/B;->endNalUnit(I)Z

    .line 417
    .line 418
    .line 419
    move-result v1

    .line 420
    if-eqz v1, :cond_10

    .line 421
    .line 422
    iget-object v1, v7, Lc1/B;->d:[B

    .line 423
    .line 424
    iget v2, v7, Lc1/B;->e:I

    .line 425
    .line 426
    invoke-static {v1, v2}, Ls0/v;->unescapeStream([BI)I

    .line 427
    .line 428
    .line 429
    move-result v1

    .line 430
    iget-object v2, v0, Lc1/o;->b:Landroidx/media3/common/util/ParsableByteArray;

    .line 431
    .line 432
    invoke-static {v2}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    .line 434
    .line 435
    move-result-object v5

    .line 436
    check-cast v5, Landroidx/media3/common/util/ParsableByteArray;

    .line 437
    .line 438
    iget-object v10, v7, Lc1/B;->d:[B

    .line 439
    .line 440
    invoke-virtual {v5, v10, v1}, Landroidx/media3/common/util/ParsableByteArray;->reset([BI)V

    .line 441
    .line 442
    .line 443
    iget-object v1, v0, Lc1/o;->a:Lc1/Z;

    .line 444
    .line 445
    invoke-static {v1}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    .line 447
    .line 448
    move-result-object v1

    .line 449
    check-cast v1, Lc1/Z;

    .line 450
    .line 451
    iget-wide v10, v0, Lc1/o;->k:J

    .line 452
    .line 453
    invoke-virtual {v1, v10, v11, v2}, Lc1/Z;->consume(JLandroidx/media3/common/util/ParsableByteArray;)V

    .line 454
    .line 455
    .line 456
    :cond_10
    const/16 v1, 0xb2

    .line 457
    .line 458
    if-ne v8, v1, :cond_11

    .line 459
    .line 460
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 461
    .line 462
    .line 463
    move-result-object v1

    .line 464
    add-int/lit8 v2, v4, 0x2

    .line 465
    .line 466
    aget-byte v1, v1, v2

    .line 467
    .line 468
    const/4 v12, 0x1

    .line 469
    if-ne v1, v12, :cond_11

    .line 470
    .line 471
    invoke-virtual {v7, v8}, Lc1/B;->startNalUnit(I)V

    .line 472
    .line 473
    .line 474
    :cond_11
    sub-int v2, v17, v4

    .line 475
    .line 476
    iget-wide v4, v0, Lc1/o;->g:J

    .line 477
    .line 478
    int-to-long v10, v2

    .line 479
    sub-long/2addr v4, v10

    .line 480
    iget-object v1, v0, Lc1/o;->f:Lc1/n;

    .line 481
    .line 482
    iget-boolean v7, v0, Lc1/o;->j:Z

    .line 483
    .line 484
    invoke-virtual {v1, v4, v5, v2, v7}, Lc1/n;->onDataEnd(JIZ)V

    .line 485
    .line 486
    .line 487
    iget-object v1, v0, Lc1/o;->f:Lc1/n;

    .line 488
    .line 489
    iget-wide v4, v0, Lc1/o;->k:J

    .line 490
    .line 491
    invoke-virtual {v1, v8, v4, v5}, Lc1/n;->onStartCode(IJ)V

    .line 492
    .line 493
    .line 494
    move v1, v9

    .line 495
    move/from16 v2, v17

    .line 496
    .line 497
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
    iput-object v0, p0, Lc1/o;->h:Ljava/lang/String;

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
    iput-object v0, p0, Lc1/o;->i:Lv0/r0;

    .line 20
    .line 21
    new-instance v1, Lc1/n;

    .line 22
    .line 23
    invoke-direct {v1, v0}, Lc1/n;-><init>(Lv0/r0;)V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lc1/o;->f:Lc1/n;

    .line 27
    .line 28
    iget-object v0, p0, Lc1/o;->a:Lc1/Z;

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    invoke-virtual {v0, p1, p2}, Lc1/Z;->createTracks(Lv0/F;Lc1/W;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method

.method public packetFinished(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lc1/o;->f:Lc1/n;

    .line 2
    .line 3
    invoke-static {v0}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lc1/o;->f:Lc1/n;

    .line 9
    .line 10
    iget-wide v0, p0, Lc1/o;->g:J

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    iget-boolean v3, p0, Lc1/o;->j:Z

    .line 14
    .line 15
    invoke-virtual {p1, v0, v1, v2, v3}, Lc1/n;->onDataEnd(JIZ)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lc1/o;->f:Lc1/n;

    .line 19
    .line 20
    invoke-virtual {p1}, Lc1/n;->reset()V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public packetStarted(JI)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lc1/o;->k:J

    .line 2
    .line 3
    return-void
.end method

.method public seek()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc1/o;->c:[Z

    .line 2
    .line 3
    invoke-static {v0}, Ls0/v;->clearPrefixFlags([Z)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lc1/o;->d:Lc1/m;

    .line 7
    .line 8
    invoke-virtual {v0}, Lc1/m;->reset()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lc1/o;->f:Lc1/n;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Lc1/n;->reset()V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lc1/o;->e:Lc1/B;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0}, Lc1/B;->reset()V

    .line 23
    .line 24
    .line 25
    :cond_1
    const-wide/16 v0, 0x0

    .line 26
    .line 27
    iput-wide v0, p0, Lc1/o;->g:J

    .line 28
    .line 29
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    iput-wide v0, p0, Lc1/o;->k:J

    .line 35
    .line 36
    return-void
.end method
