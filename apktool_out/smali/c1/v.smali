.class public final Lc1/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc1/j;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:Ljava/lang/String;

.field public final d:Landroidx/media3/common/util/ParsableByteArray;

.field public final e:Landroidx/media3/common/util/ParsableBitArray;

.field public f:Lv0/r0;

.field public g:Ljava/lang/String;

.field public h:Landroidx/media3/common/Format;

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:J

.field public n:Z

.field public o:I

.field public p:I

.field public q:I

.field public r:Z

.field public s:J

.field public t:I

.field public u:J

.field public v:I

.field public w:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lc1/v;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput p2, p0, Lc1/v;->b:I

    .line 7
    .line 8
    iput-object p3, p0, Lc1/v;->c:Ljava/lang/String;

    .line 9
    .line 10
    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    .line 11
    .line 12
    const/16 p2, 0x400

    .line 13
    .line 14
    invoke-direct {p1, p2}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lc1/v;->d:Landroidx/media3/common/util/ParsableByteArray;

    .line 18
    .line 19
    new-instance p2, Landroidx/media3/common/util/ParsableBitArray;

    .line 20
    .line 21
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-direct {p2, p1}, Landroidx/media3/common/util/ParsableBitArray;-><init>([B)V

    .line 26
    .line 27
    .line 28
    iput-object p2, p0, Lc1/v;->e:Landroidx/media3/common/util/ParsableBitArray;

    .line 29
    .line 30
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    iput-wide p1, p0, Lc1/v;->m:J

    .line 36
    .line 37
    return-void
.end method


# virtual methods
.method public consume(Landroidx/media3/common/util/ParsableByteArray;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lc1/v;->f:Lv0/r0;

    .line 4
    .line 5
    invoke-static {v1}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-lez v1, :cond_1e

    .line 13
    .line 14
    iget v1, v0, Lc1/v;->i:I

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    const/16 v3, 0x56

    .line 18
    .line 19
    if-eqz v1, :cond_1d

    .line 20
    .line 21
    const/4 v4, 0x2

    .line 22
    const/4 v5, 0x0

    .line 23
    if-eq v1, v2, :cond_1b

    .line 24
    .line 25
    const/4 v3, 0x3

    .line 26
    const/16 v6, 0x8

    .line 27
    .line 28
    iget-object v7, v0, Lc1/v;->d:Landroidx/media3/common/util/ParsableByteArray;

    .line 29
    .line 30
    iget-object v8, v0, Lc1/v;->e:Landroidx/media3/common/util/ParsableBitArray;

    .line 31
    .line 32
    if-eq v1, v4, :cond_19

    .line 33
    .line 34
    if-ne v1, v3, :cond_18

    .line 35
    .line 36
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    iget v9, v0, Lc1/v;->k:I

    .line 41
    .line 42
    iget v10, v0, Lc1/v;->j:I

    .line 43
    .line 44
    sub-int/2addr v9, v10

    .line 45
    invoke-static {v1, v9}, Ljava/lang/Math;->min(II)I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    iget-object v9, v8, Landroidx/media3/common/util/ParsableBitArray;->data:[B

    .line 50
    .line 51
    iget v10, v0, Lc1/v;->j:I

    .line 52
    .line 53
    move-object/from16 v11, p1

    .line 54
    .line 55
    invoke-virtual {v11, v9, v10, v1}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 56
    .line 57
    .line 58
    iget v9, v0, Lc1/v;->j:I

    .line 59
    .line 60
    add-int/2addr v9, v1

    .line 61
    iput v9, v0, Lc1/v;->j:I

    .line 62
    .line 63
    iget v1, v0, Lc1/v;->k:I

    .line 64
    .line 65
    if-ne v9, v1, :cond_0

    .line 66
    .line 67
    invoke-virtual {v8, v5}, Landroidx/media3/common/util/ParsableBitArray;->setPosition(I)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v8}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-nez v1, :cond_f

    .line 75
    .line 76
    iput-boolean v2, v0, Lc1/v;->n:Z

    .line 77
    .line 78
    invoke-virtual {v8, v2}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    if-ne v1, v2, :cond_1

    .line 83
    .line 84
    invoke-virtual {v8, v2}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 85
    .line 86
    .line 87
    move-result v10

    .line 88
    goto :goto_1

    .line 89
    :cond_1
    move v10, v5

    .line 90
    :goto_1
    iput v10, v0, Lc1/v;->o:I

    .line 91
    .line 92
    if-nez v10, :cond_e

    .line 93
    .line 94
    if-ne v1, v2, :cond_2

    .line 95
    .line 96
    invoke-virtual {v8, v4}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 97
    .line 98
    .line 99
    move-result v10

    .line 100
    add-int/2addr v10, v2

    .line 101
    mul-int/2addr v10, v6

    .line 102
    invoke-virtual {v8, v10}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 103
    .line 104
    .line 105
    :cond_2
    invoke-virtual {v8}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    .line 106
    .line 107
    .line 108
    move-result v10

    .line 109
    if-eqz v10, :cond_d

    .line 110
    .line 111
    const/4 v10, 0x6

    .line 112
    invoke-virtual {v8, v10}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 113
    .line 114
    .line 115
    move-result v12

    .line 116
    iput v12, v0, Lc1/v;->p:I

    .line 117
    .line 118
    const/4 v12, 0x4

    .line 119
    invoke-virtual {v8, v12}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 120
    .line 121
    .line 122
    move-result v13

    .line 123
    invoke-virtual {v8, v3}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 124
    .line 125
    .line 126
    move-result v14

    .line 127
    if-nez v13, :cond_c

    .line 128
    .line 129
    if-nez v14, :cond_c

    .line 130
    .line 131
    if-nez v1, :cond_3

    .line 132
    .line 133
    invoke-virtual {v8}, Landroidx/media3/common/util/ParsableBitArray;->getPosition()I

    .line 134
    .line 135
    .line 136
    move-result v13

    .line 137
    invoke-virtual {v8}, Landroidx/media3/common/util/ParsableBitArray;->bitsLeft()I

    .line 138
    .line 139
    .line 140
    move-result v14

    .line 141
    invoke-static {v8, v2}, Lv0/b;->parseAudioSpecificConfig(Landroidx/media3/common/util/ParsableBitArray;Z)Lv0/a;

    .line 142
    .line 143
    .line 144
    move-result-object v15

    .line 145
    iget-object v9, v15, Lv0/a;->c:Ljava/lang/String;

    .line 146
    .line 147
    iput-object v9, v0, Lc1/v;->w:Ljava/lang/String;

    .line 148
    .line 149
    iget v9, v15, Lv0/a;->a:I

    .line 150
    .line 151
    iput v9, v0, Lc1/v;->t:I

    .line 152
    .line 153
    iget v9, v15, Lv0/a;->b:I

    .line 154
    .line 155
    iput v9, v0, Lc1/v;->v:I

    .line 156
    .line 157
    invoke-virtual {v8}, Landroidx/media3/common/util/ParsableBitArray;->bitsLeft()I

    .line 158
    .line 159
    .line 160
    move-result v9

    .line 161
    sub-int/2addr v14, v9

    .line 162
    invoke-virtual {v8, v13}, Landroidx/media3/common/util/ParsableBitArray;->setPosition(I)V

    .line 163
    .line 164
    .line 165
    add-int/lit8 v9, v14, 0x7

    .line 166
    .line 167
    div-int/2addr v9, v6

    .line 168
    new-array v9, v9, [B

    .line 169
    .line 170
    invoke-virtual {v8, v9, v5, v14}, Landroidx/media3/common/util/ParsableBitArray;->readBits([BII)V

    .line 171
    .line 172
    .line 173
    new-instance v13, Landroidx/media3/common/Format$Builder;

    .line 174
    .line 175
    invoke-direct {v13}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 176
    .line 177
    .line 178
    iget-object v14, v0, Lc1/v;->g:Ljava/lang/String;

    .line 179
    .line 180
    invoke-virtual {v13, v14}, Landroidx/media3/common/Format$Builder;->setId(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 181
    .line 182
    .line 183
    move-result-object v13

    .line 184
    iget-object v14, v0, Lc1/v;->c:Ljava/lang/String;

    .line 185
    .line 186
    invoke-virtual {v13, v14}, Landroidx/media3/common/Format$Builder;->setContainerMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 187
    .line 188
    .line 189
    move-result-object v13

    .line 190
    const-string v14, "audio/mp4a-latm"

    .line 191
    .line 192
    invoke-virtual {v13, v14}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 193
    .line 194
    .line 195
    move-result-object v13

    .line 196
    iget-object v14, v0, Lc1/v;->w:Ljava/lang/String;

    .line 197
    .line 198
    invoke-virtual {v13, v14}, Landroidx/media3/common/Format$Builder;->setCodecs(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 199
    .line 200
    .line 201
    move-result-object v13

    .line 202
    iget v14, v0, Lc1/v;->v:I

    .line 203
    .line 204
    invoke-virtual {v13, v14}, Landroidx/media3/common/Format$Builder;->setChannelCount(I)Landroidx/media3/common/Format$Builder;

    .line 205
    .line 206
    .line 207
    move-result-object v13

    .line 208
    iget v14, v0, Lc1/v;->t:I

    .line 209
    .line 210
    invoke-virtual {v13, v14}, Landroidx/media3/common/Format$Builder;->setSampleRate(I)Landroidx/media3/common/Format$Builder;

    .line 211
    .line 212
    .line 213
    move-result-object v13

    .line 214
    invoke-static {v9}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 215
    .line 216
    .line 217
    move-result-object v9

    .line 218
    invoke-virtual {v13, v9}, Landroidx/media3/common/Format$Builder;->setInitializationData(Ljava/util/List;)Landroidx/media3/common/Format$Builder;

    .line 219
    .line 220
    .line 221
    move-result-object v9

    .line 222
    iget-object v13, v0, Lc1/v;->a:Ljava/lang/String;

    .line 223
    .line 224
    invoke-virtual {v9, v13}, Landroidx/media3/common/Format$Builder;->setLanguage(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 225
    .line 226
    .line 227
    move-result-object v9

    .line 228
    iget v13, v0, Lc1/v;->b:I

    .line 229
    .line 230
    invoke-virtual {v9, v13}, Landroidx/media3/common/Format$Builder;->setRoleFlags(I)Landroidx/media3/common/Format$Builder;

    .line 231
    .line 232
    .line 233
    move-result-object v9

    .line 234
    invoke-virtual {v9}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    .line 235
    .line 236
    .line 237
    move-result-object v9

    .line 238
    iget-object v13, v0, Lc1/v;->h:Landroidx/media3/common/Format;

    .line 239
    .line 240
    invoke-virtual {v9, v13}, Landroidx/media3/common/Format;->equals(Ljava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    move-result v13

    .line 244
    if-nez v13, :cond_4

    .line 245
    .line 246
    iput-object v9, v0, Lc1/v;->h:Landroidx/media3/common/Format;

    .line 247
    .line 248
    iget v13, v9, Landroidx/media3/common/Format;->sampleRate:I

    .line 249
    .line 250
    int-to-long v13, v13

    .line 251
    const-wide/32 v17, 0x3d090000

    .line 252
    .line 253
    .line 254
    div-long v13, v17, v13

    .line 255
    .line 256
    iput-wide v13, v0, Lc1/v;->u:J

    .line 257
    .line 258
    iget-object v13, v0, Lc1/v;->f:Lv0/r0;

    .line 259
    .line 260
    invoke-interface {v13, v9}, Lv0/r0;->format(Landroidx/media3/common/Format;)V

    .line 261
    .line 262
    .line 263
    goto :goto_2

    .line 264
    :cond_3
    invoke-virtual {v8, v4}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 265
    .line 266
    .line 267
    move-result v9

    .line 268
    add-int/2addr v9, v2

    .line 269
    mul-int/2addr v9, v6

    .line 270
    invoke-virtual {v8, v9}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 271
    .line 272
    .line 273
    move-result v9

    .line 274
    int-to-long v13, v9

    .line 275
    long-to-int v9, v13

    .line 276
    invoke-virtual {v8}, Landroidx/media3/common/util/ParsableBitArray;->bitsLeft()I

    .line 277
    .line 278
    .line 279
    move-result v13

    .line 280
    invoke-static {v8, v2}, Lv0/b;->parseAudioSpecificConfig(Landroidx/media3/common/util/ParsableBitArray;Z)Lv0/a;

    .line 281
    .line 282
    .line 283
    move-result-object v14

    .line 284
    iget-object v15, v14, Lv0/a;->c:Ljava/lang/String;

    .line 285
    .line 286
    iput-object v15, v0, Lc1/v;->w:Ljava/lang/String;

    .line 287
    .line 288
    iget v15, v14, Lv0/a;->a:I

    .line 289
    .line 290
    iput v15, v0, Lc1/v;->t:I

    .line 291
    .line 292
    iget v14, v14, Lv0/a;->b:I

    .line 293
    .line 294
    iput v14, v0, Lc1/v;->v:I

    .line 295
    .line 296
    invoke-virtual {v8}, Landroidx/media3/common/util/ParsableBitArray;->bitsLeft()I

    .line 297
    .line 298
    .line 299
    move-result v14

    .line 300
    sub-int/2addr v13, v14

    .line 301
    sub-int/2addr v9, v13

    .line 302
    invoke-virtual {v8, v9}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 303
    .line 304
    .line 305
    :cond_4
    :goto_2
    invoke-virtual {v8, v3}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 306
    .line 307
    .line 308
    move-result v9

    .line 309
    iput v9, v0, Lc1/v;->q:I

    .line 310
    .line 311
    if-eqz v9, :cond_9

    .line 312
    .line 313
    if-eq v9, v2, :cond_8

    .line 314
    .line 315
    if-eq v9, v3, :cond_7

    .line 316
    .line 317
    if-eq v9, v12, :cond_7

    .line 318
    .line 319
    const/4 v3, 0x5

    .line 320
    if-eq v9, v3, :cond_7

    .line 321
    .line 322
    if-eq v9, v10, :cond_6

    .line 323
    .line 324
    const/4 v3, 0x7

    .line 325
    if-ne v9, v3, :cond_5

    .line 326
    .line 327
    goto :goto_3

    .line 328
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 329
    .line 330
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 331
    .line 332
    .line 333
    throw v1

    .line 334
    :cond_6
    :goto_3
    invoke-virtual {v8, v2}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 335
    .line 336
    .line 337
    goto :goto_4

    .line 338
    :cond_7
    invoke-virtual {v8, v10}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 339
    .line 340
    .line 341
    goto :goto_4

    .line 342
    :cond_8
    const/16 v3, 0x9

    .line 343
    .line 344
    invoke-virtual {v8, v3}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 345
    .line 346
    .line 347
    goto :goto_4

    .line 348
    :cond_9
    invoke-virtual {v8, v6}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 349
    .line 350
    .line 351
    :goto_4
    invoke-virtual {v8}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    .line 352
    .line 353
    .line 354
    move-result v3

    .line 355
    iput-boolean v3, v0, Lc1/v;->r:Z

    .line 356
    .line 357
    const-wide/16 v9, 0x0

    .line 358
    .line 359
    iput-wide v9, v0, Lc1/v;->s:J

    .line 360
    .line 361
    if-eqz v3, :cond_b

    .line 362
    .line 363
    if-ne v1, v2, :cond_a

    .line 364
    .line 365
    invoke-virtual {v8, v4}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 366
    .line 367
    .line 368
    move-result v1

    .line 369
    add-int/2addr v1, v2

    .line 370
    mul-int/2addr v1, v6

    .line 371
    invoke-virtual {v8, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 372
    .line 373
    .line 374
    move-result v1

    .line 375
    int-to-long v3, v1

    .line 376
    iput-wide v3, v0, Lc1/v;->s:J

    .line 377
    .line 378
    goto :goto_5

    .line 379
    :cond_a
    invoke-virtual {v8}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    .line 380
    .line 381
    .line 382
    move-result v1

    .line 383
    iget-wide v3, v0, Lc1/v;->s:J

    .line 384
    .line 385
    shl-long/2addr v3, v6

    .line 386
    invoke-virtual {v8, v6}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 387
    .line 388
    .line 389
    move-result v9

    .line 390
    int-to-long v9, v9

    .line 391
    add-long/2addr v3, v9

    .line 392
    iput-wide v3, v0, Lc1/v;->s:J

    .line 393
    .line 394
    if-nez v1, :cond_a

    .line 395
    .line 396
    :cond_b
    :goto_5
    invoke-virtual {v8}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    .line 397
    .line 398
    .line 399
    move-result v1

    .line 400
    if-eqz v1, :cond_10

    .line 401
    .line 402
    invoke-virtual {v8, v6}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 403
    .line 404
    .line 405
    goto :goto_6

    .line 406
    :cond_c
    const/4 v1, 0x0

    .line 407
    invoke-static {v1, v1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 408
    .line 409
    .line 410
    move-result-object v1

    .line 411
    throw v1

    .line 412
    :cond_d
    const/4 v1, 0x0

    .line 413
    invoke-static {v1, v1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 414
    .line 415
    .line 416
    move-result-object v1

    .line 417
    throw v1

    .line 418
    :cond_e
    const/4 v1, 0x0

    .line 419
    invoke-static {v1, v1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 420
    .line 421
    .line 422
    move-result-object v1

    .line 423
    throw v1

    .line 424
    :cond_f
    iget-boolean v1, v0, Lc1/v;->n:Z

    .line 425
    .line 426
    if-nez v1, :cond_10

    .line 427
    .line 428
    goto :goto_a

    .line 429
    :cond_10
    :goto_6
    iget v1, v0, Lc1/v;->o:I

    .line 430
    .line 431
    if-nez v1, :cond_17

    .line 432
    .line 433
    iget v1, v0, Lc1/v;->p:I

    .line 434
    .line 435
    if-nez v1, :cond_16

    .line 436
    .line 437
    iget v1, v0, Lc1/v;->q:I

    .line 438
    .line 439
    if-nez v1, :cond_15

    .line 440
    .line 441
    move v1, v5

    .line 442
    :goto_7
    invoke-virtual {v8, v6}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 443
    .line 444
    .line 445
    move-result v3

    .line 446
    add-int/2addr v1, v3

    .line 447
    const/16 v4, 0xff

    .line 448
    .line 449
    if-eq v3, v4, :cond_14

    .line 450
    .line 451
    invoke-virtual {v8}, Landroidx/media3/common/util/ParsableBitArray;->getPosition()I

    .line 452
    .line 453
    .line 454
    move-result v3

    .line 455
    and-int/lit8 v4, v3, 0x7

    .line 456
    .line 457
    if-nez v4, :cond_11

    .line 458
    .line 459
    shr-int/lit8 v3, v3, 0x3

    .line 460
    .line 461
    invoke-virtual {v7, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 462
    .line 463
    .line 464
    goto :goto_8

    .line 465
    :cond_11
    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 466
    .line 467
    .line 468
    move-result-object v3

    .line 469
    mul-int/lit8 v4, v1, 0x8

    .line 470
    .line 471
    invoke-virtual {v8, v3, v5, v4}, Landroidx/media3/common/util/ParsableBitArray;->readBits([BII)V

    .line 472
    .line 473
    .line 474
    invoke-virtual {v7, v5}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 475
    .line 476
    .line 477
    :goto_8
    iget-object v3, v0, Lc1/v;->f:Lv0/r0;

    .line 478
    .line 479
    invoke-interface {v3, v7, v1}, Lv0/r0;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    .line 480
    .line 481
    .line 482
    iget-wide v3, v0, Lc1/v;->m:J

    .line 483
    .line 484
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    cmp-long v3, v3, v6

    .line 490
    .line 491
    if-eqz v3, :cond_12

    .line 492
    .line 493
    goto :goto_9

    .line 494
    :cond_12
    move v2, v5

    .line 495
    :goto_9
    invoke-static {v2}, LP3/v;->checkState(Z)V

    .line 496
    .line 497
    .line 498
    iget-object v12, v0, Lc1/v;->f:Lv0/r0;

    .line 499
    .line 500
    iget-wide v13, v0, Lc1/v;->m:J

    .line 501
    .line 502
    const/16 v17, 0x0

    .line 503
    .line 504
    const/16 v18, 0x0

    .line 505
    .line 506
    const/4 v15, 0x1

    .line 507
    move/from16 v16, v1

    .line 508
    .line 509
    invoke-interface/range {v12 .. v18}, Lv0/r0;->sampleMetadata(JIIILv0/q0;)V

    .line 510
    .line 511
    .line 512
    iget-wide v1, v0, Lc1/v;->m:J

    .line 513
    .line 514
    iget-wide v3, v0, Lc1/v;->u:J

    .line 515
    .line 516
    add-long/2addr v1, v3

    .line 517
    iput-wide v1, v0, Lc1/v;->m:J

    .line 518
    .line 519
    iget-boolean v1, v0, Lc1/v;->r:Z

    .line 520
    .line 521
    if-eqz v1, :cond_13

    .line 522
    .line 523
    iget-wide v1, v0, Lc1/v;->s:J

    .line 524
    .line 525
    long-to-int v1, v1

    .line 526
    invoke-virtual {v8, v1}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 527
    .line 528
    .line 529
    :cond_13
    :goto_a
    iput v5, v0, Lc1/v;->i:I

    .line 530
    .line 531
    goto/16 :goto_0

    .line 532
    .line 533
    :cond_14
    move/from16 v16, v1

    .line 534
    .line 535
    goto :goto_7

    .line 536
    :cond_15
    const/4 v1, 0x0

    .line 537
    invoke-static {v1, v1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 538
    .line 539
    .line 540
    move-result-object v1

    .line 541
    throw v1

    .line 542
    :cond_16
    const/4 v1, 0x0

    .line 543
    invoke-static {v1, v1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 544
    .line 545
    .line 546
    move-result-object v1

    .line 547
    throw v1

    .line 548
    :cond_17
    const/4 v1, 0x0

    .line 549
    invoke-static {v1, v1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 550
    .line 551
    .line 552
    move-result-object v1

    .line 553
    throw v1

    .line 554
    :cond_18
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 555
    .line 556
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 557
    .line 558
    .line 559
    throw v1

    .line 560
    :cond_19
    move-object/from16 v11, p1

    .line 561
    .line 562
    iget v1, v0, Lc1/v;->l:I

    .line 563
    .line 564
    and-int/lit16 v1, v1, -0xe1

    .line 565
    .line 566
    shl-int/2addr v1, v6

    .line 567
    invoke-virtual {v11}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 568
    .line 569
    .line 570
    move-result v2

    .line 571
    or-int/2addr v1, v2

    .line 572
    iput v1, v0, Lc1/v;->k:I

    .line 573
    .line 574
    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 575
    .line 576
    .line 577
    move-result-object v2

    .line 578
    array-length v2, v2

    .line 579
    if-le v1, v2, :cond_1a

    .line 580
    .line 581
    iget v1, v0, Lc1/v;->k:I

    .line 582
    .line 583
    invoke-virtual {v7, v1}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    .line 584
    .line 585
    .line 586
    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 587
    .line 588
    .line 589
    move-result-object v1

    .line 590
    invoke-virtual {v8, v1}, Landroidx/media3/common/util/ParsableBitArray;->reset([B)V

    .line 591
    .line 592
    .line 593
    :cond_1a
    iput v5, v0, Lc1/v;->j:I

    .line 594
    .line 595
    iput v3, v0, Lc1/v;->i:I

    .line 596
    .line 597
    goto/16 :goto_0

    .line 598
    .line 599
    :cond_1b
    move-object/from16 v11, p1

    .line 600
    .line 601
    invoke-virtual {v11}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 602
    .line 603
    .line 604
    move-result v1

    .line 605
    and-int/lit16 v2, v1, 0xe0

    .line 606
    .line 607
    const/16 v6, 0xe0

    .line 608
    .line 609
    if-ne v2, v6, :cond_1c

    .line 610
    .line 611
    iput v1, v0, Lc1/v;->l:I

    .line 612
    .line 613
    iput v4, v0, Lc1/v;->i:I

    .line 614
    .line 615
    goto/16 :goto_0

    .line 616
    .line 617
    :cond_1c
    if-eq v1, v3, :cond_0

    .line 618
    .line 619
    iput v5, v0, Lc1/v;->i:I

    .line 620
    .line 621
    goto/16 :goto_0

    .line 622
    .line 623
    :cond_1d
    move-object/from16 v11, p1

    .line 624
    .line 625
    invoke-virtual {v11}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 626
    .line 627
    .line 628
    move-result v1

    .line 629
    if-ne v1, v3, :cond_0

    .line 630
    .line 631
    iput v2, v0, Lc1/v;->i:I

    .line 632
    .line 633
    goto/16 :goto_0

    .line 634
    .line 635
    :cond_1e
    return-void
.end method

.method public createTracks(Lv0/F;Lc1/W;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Lc1/W;->generateNewId()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Lc1/W;->getTrackId()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-interface {p1, v0, v1}, Lv0/F;->track(II)Lv0/r0;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lc1/v;->f:Lv0/r0;

    .line 14
    .line 15
    invoke-virtual {p2}, Lc1/W;->getFormatId()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Lc1/v;->g:Ljava/lang/String;

    .line 20
    .line 21
    return-void
.end method

.method public packetFinished(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public packetStarted(JI)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lc1/v;->m:J

    .line 2
    .line 3
    return-void
.end method

.method public seek()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lc1/v;->i:I

    .line 3
    .line 4
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    iput-wide v1, p0, Lc1/v;->m:J

    .line 10
    .line 11
    iput-boolean v0, p0, Lc1/v;->n:Z

    .line 12
    .line 13
    return-void
.end method
