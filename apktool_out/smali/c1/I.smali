.class public final Lc1/I;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv0/C;


# instance fields
.field public final a:Landroidx/media3/common/util/TimestampAdjuster;

.field public final b:Landroid/util/SparseArray;

.field public final c:Landroidx/media3/common/util/ParsableByteArray;

.field public final d:Lc1/G;

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:J

.field public i:Lc1/F;

.field public j:Lv0/F;

.field public k:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    new-instance v0, Landroidx/media3/common/util/TimestampAdjuster;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/media3/common/util/TimestampAdjuster;-><init>(J)V

    invoke-direct {p0, v0}, Lc1/I;-><init>(Landroidx/media3/common/util/TimestampAdjuster;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/common/util/TimestampAdjuster;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lc1/I;->a:Landroidx/media3/common/util/TimestampAdjuster;

    .line 4
    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    const/16 v0, 0x1000

    invoke-direct {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Lc1/I;->c:Landroidx/media3/common/util/ParsableByteArray;

    .line 5
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lc1/I;->b:Landroid/util/SparseArray;

    .line 6
    new-instance p1, Lc1/G;

    invoke-direct {p1}, Lc1/G;-><init>()V

    iput-object p1, p0, Lc1/I;->d:Lc1/G;

    return-void
.end method


# virtual methods
.method public final synthetic getSniffFailureDetails()Ljava/util/List;
    .locals 1

    .line 1
    invoke-static {p0}, Lv0/B;->a(Lv0/C;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic getUnderlyingImplementation()Lv0/C;
    .locals 1

    .line 1
    invoke-static {p0}, Lv0/B;->b(Lv0/C;)Lv0/C;

    move-result-object v0

    return-object v0
.end method

.method public init(Lv0/F;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc1/I;->j:Lv0/F;

    .line 2
    .line 3
    return-void
.end method

.method public read(Lv0/D;Lv0/c0;)I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc1/I;->j:Lv0/F;

    .line 2
    .line 3
    invoke-static {v0}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Lv0/D;->getLength()J

    .line 7
    .line 8
    .line 9
    move-result-wide v5

    .line 10
    const-wide/16 v7, -0x1

    .line 11
    .line 12
    cmp-long v0, v5, v7

    .line 13
    .line 14
    iget-object v1, p0, Lc1/I;->d:Lc1/G;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v1}, Lc1/G;->isDurationReadFinished()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-nez v2, :cond_0

    .line 23
    .line 24
    invoke-virtual {v1, p1, p2}, Lc1/G;->readDuration(Lv0/D;Lv0/c0;)I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    return p1

    .line 29
    :cond_0
    iget-boolean v2, p0, Lc1/I;->k:Z

    .line 30
    .line 31
    const/4 v9, 0x1

    .line 32
    if-nez v2, :cond_2

    .line 33
    .line 34
    iput-boolean v9, p0, Lc1/I;->k:Z

    .line 35
    .line 36
    invoke-virtual {v1}, Lc1/G;->getDurationUs()J

    .line 37
    .line 38
    .line 39
    move-result-wide v2

    .line 40
    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    cmp-long v2, v2, v10

    .line 46
    .line 47
    if-eqz v2, :cond_1

    .line 48
    .line 49
    move-object v2, v1

    .line 50
    new-instance v1, Lc1/F;

    .line 51
    .line 52
    move-object v3, v2

    .line 53
    invoke-virtual {v3}, Lc1/G;->getScrTimestampAdjuster()Landroidx/media3/common/util/TimestampAdjuster;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v3}, Lc1/G;->getDurationUs()J

    .line 58
    .line 59
    .line 60
    move-result-wide v3

    .line 61
    invoke-direct/range {v1 .. v6}, Lc1/F;-><init>(Landroidx/media3/common/util/TimestampAdjuster;JJ)V

    .line 62
    .line 63
    .line 64
    iput-object v1, p0, Lc1/I;->i:Lc1/F;

    .line 65
    .line 66
    iget-object v2, p0, Lc1/I;->j:Lv0/F;

    .line 67
    .line 68
    invoke-virtual {v1}, Lv0/p;->getSeekMap()Lv0/g0;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-interface {v2, v1}, Lv0/F;->seekMap(Lv0/g0;)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_1
    move-object v3, v1

    .line 77
    iget-object v1, p0, Lc1/I;->j:Lv0/F;

    .line 78
    .line 79
    new-instance v2, Lv0/f0;

    .line 80
    .line 81
    invoke-virtual {v3}, Lc1/G;->getDurationUs()J

    .line 82
    .line 83
    .line 84
    move-result-wide v3

    .line 85
    invoke-direct {v2, v3, v4}, Lv0/f0;-><init>(J)V

    .line 86
    .line 87
    .line 88
    invoke-interface {v1, v2}, Lv0/F;->seekMap(Lv0/g0;)V

    .line 89
    .line 90
    .line 91
    :cond_2
    :goto_0
    iget-object v1, p0, Lc1/I;->i:Lc1/F;

    .line 92
    .line 93
    if-eqz v1, :cond_3

    .line 94
    .line 95
    invoke-virtual {v1}, Lv0/p;->isSeeking()Z

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    if-eqz v1, :cond_3

    .line 100
    .line 101
    iget-object v0, p0, Lc1/I;->i:Lc1/F;

    .line 102
    .line 103
    invoke-virtual {v0, p1, p2}, Lv0/p;->handlePendingSeek(Lv0/D;Lv0/c0;)I

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    return p1

    .line 108
    :cond_3
    invoke-interface {p1}, Lv0/D;->resetPeekPosition()V

    .line 109
    .line 110
    .line 111
    if-eqz v0, :cond_4

    .line 112
    .line 113
    invoke-interface {p1}, Lv0/D;->getPeekPosition()J

    .line 114
    .line 115
    .line 116
    move-result-wide v0

    .line 117
    sub-long/2addr v5, v0

    .line 118
    goto :goto_1

    .line 119
    :cond_4
    move-wide v5, v7

    .line 120
    :goto_1
    cmp-long p2, v5, v7

    .line 121
    .line 122
    if-eqz p2, :cond_5

    .line 123
    .line 124
    const-wide/16 v0, 0x4

    .line 125
    .line 126
    cmp-long p2, v5, v0

    .line 127
    .line 128
    if-gez p2, :cond_5

    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_5
    iget-object p2, p0, Lc1/I;->c:Landroidx/media3/common/util/ParsableByteArray;

    .line 132
    .line 133
    invoke-virtual {p2}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    const/4 v1, 0x0

    .line 138
    const/4 v2, 0x4

    .line 139
    invoke-interface {p1, v0, v1, v2, v9}, Lv0/D;->peekFully([BIIZ)Z

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    if-nez v0, :cond_6

    .line 144
    .line 145
    goto :goto_2

    .line 146
    :cond_6
    invoke-virtual {p2, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p2}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    const/16 v2, 0x1b9

    .line 154
    .line 155
    if-ne v0, v2, :cond_7

    .line 156
    .line 157
    :goto_2
    const/4 p1, -0x1

    .line 158
    return p1

    .line 159
    :cond_7
    const/16 v2, 0x1ba

    .line 160
    .line 161
    if-ne v0, v2, :cond_8

    .line 162
    .line 163
    invoke-virtual {p2}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    const/16 v2, 0xa

    .line 168
    .line 169
    invoke-interface {p1, v0, v1, v2}, Lv0/D;->peekFully([BII)V

    .line 170
    .line 171
    .line 172
    const/16 v0, 0x9

    .line 173
    .line 174
    invoke-virtual {p2, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {p2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 178
    .line 179
    .line 180
    move-result p2

    .line 181
    and-int/lit8 p2, p2, 0x7

    .line 182
    .line 183
    add-int/lit8 p2, p2, 0xe

    .line 184
    .line 185
    invoke-interface {p1, p2}, Lv0/D;->skipFully(I)V

    .line 186
    .line 187
    .line 188
    return v1

    .line 189
    :cond_8
    const/16 v2, 0x1bb

    .line 190
    .line 191
    const/4 v3, 0x2

    .line 192
    const/4 v4, 0x6

    .line 193
    if-ne v0, v2, :cond_9

    .line 194
    .line 195
    invoke-virtual {p2}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    invoke-interface {p1, v0, v1, v3}, Lv0/D;->peekFully([BII)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {p2, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {p2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    .line 206
    .line 207
    .line 208
    move-result p2

    .line 209
    add-int/2addr p2, v4

    .line 210
    invoke-interface {p1, p2}, Lv0/D;->skipFully(I)V

    .line 211
    .line 212
    .line 213
    return v1

    .line 214
    :cond_9
    and-int/lit16 v2, v0, -0x100

    .line 215
    .line 216
    shr-int/lit8 v2, v2, 0x8

    .line 217
    .line 218
    if-eq v2, v9, :cond_a

    .line 219
    .line 220
    invoke-interface {p1, v9}, Lv0/D;->skipFully(I)V

    .line 221
    .line 222
    .line 223
    return v1

    .line 224
    :cond_a
    and-int/lit16 v2, v0, 0xff

    .line 225
    .line 226
    iget-object v5, p0, Lc1/I;->b:Landroid/util/SparseArray;

    .line 227
    .line 228
    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v6

    .line 232
    check-cast v6, Lc1/H;

    .line 233
    .line 234
    iget-boolean v7, p0, Lc1/I;->e:Z

    .line 235
    .line 236
    if-nez v7, :cond_10

    .line 237
    .line 238
    if-nez v6, :cond_e

    .line 239
    .line 240
    const/16 v7, 0xbd

    .line 241
    .line 242
    const-string v8, "video/mp2p"

    .line 243
    .line 244
    if-ne v2, v7, :cond_b

    .line 245
    .line 246
    new-instance v0, Lc1/b;

    .line 247
    .line 248
    invoke-direct {v0, v8}, Lc1/b;-><init>(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    iput-boolean v9, p0, Lc1/I;->f:Z

    .line 252
    .line 253
    invoke-interface {p1}, Lv0/D;->getPosition()J

    .line 254
    .line 255
    .line 256
    move-result-wide v7

    .line 257
    iput-wide v7, p0, Lc1/I;->h:J

    .line 258
    .line 259
    goto :goto_3

    .line 260
    :cond_b
    and-int/lit16 v7, v0, 0xe0

    .line 261
    .line 262
    const/16 v10, 0xc0

    .line 263
    .line 264
    if-ne v7, v10, :cond_c

    .line 265
    .line 266
    new-instance v0, Lc1/w;

    .line 267
    .line 268
    invoke-direct {v0, v8}, Lc1/w;-><init>(Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    iput-boolean v9, p0, Lc1/I;->f:Z

    .line 272
    .line 273
    invoke-interface {p1}, Lv0/D;->getPosition()J

    .line 274
    .line 275
    .line 276
    move-result-wide v7

    .line 277
    iput-wide v7, p0, Lc1/I;->h:J

    .line 278
    .line 279
    goto :goto_3

    .line 280
    :cond_c
    and-int/lit16 v0, v0, 0xf0

    .line 281
    .line 282
    const/16 v7, 0xe0

    .line 283
    .line 284
    if-ne v0, v7, :cond_d

    .line 285
    .line 286
    new-instance v0, Lc1/l;

    .line 287
    .line 288
    invoke-direct {v0, v8}, Lc1/l;-><init>(Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    iput-boolean v9, p0, Lc1/I;->g:Z

    .line 292
    .line 293
    invoke-interface {p1}, Lv0/D;->getPosition()J

    .line 294
    .line 295
    .line 296
    move-result-wide v7

    .line 297
    iput-wide v7, p0, Lc1/I;->h:J

    .line 298
    .line 299
    goto :goto_3

    .line 300
    :cond_d
    const/4 v0, 0x0

    .line 301
    :goto_3
    if-eqz v0, :cond_e

    .line 302
    .line 303
    new-instance v6, Lc1/W;

    .line 304
    .line 305
    const/16 v7, 0x100

    .line 306
    .line 307
    invoke-direct {v6, v2, v7}, Lc1/W;-><init>(II)V

    .line 308
    .line 309
    .line 310
    iget-object v7, p0, Lc1/I;->j:Lv0/F;

    .line 311
    .line 312
    invoke-interface {v0, v7, v6}, Lc1/j;->createTracks(Lv0/F;Lc1/W;)V

    .line 313
    .line 314
    .line 315
    new-instance v6, Lc1/H;

    .line 316
    .line 317
    iget-object v7, p0, Lc1/I;->a:Landroidx/media3/common/util/TimestampAdjuster;

    .line 318
    .line 319
    invoke-direct {v6, v0, v7}, Lc1/H;-><init>(Lc1/j;Landroidx/media3/common/util/TimestampAdjuster;)V

    .line 320
    .line 321
    .line 322
    invoke-virtual {v5, v2, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 323
    .line 324
    .line 325
    :cond_e
    iget-boolean v0, p0, Lc1/I;->f:Z

    .line 326
    .line 327
    if-eqz v0, :cond_f

    .line 328
    .line 329
    iget-boolean v0, p0, Lc1/I;->g:Z

    .line 330
    .line 331
    if-eqz v0, :cond_f

    .line 332
    .line 333
    iget-wide v7, p0, Lc1/I;->h:J

    .line 334
    .line 335
    const-wide/16 v10, 0x2000

    .line 336
    .line 337
    add-long/2addr v7, v10

    .line 338
    goto :goto_4

    .line 339
    :cond_f
    const-wide/32 v7, 0x100000

    .line 340
    .line 341
    .line 342
    :goto_4
    invoke-interface {p1}, Lv0/D;->getPosition()J

    .line 343
    .line 344
    .line 345
    move-result-wide v10

    .line 346
    cmp-long v0, v10, v7

    .line 347
    .line 348
    if-lez v0, :cond_10

    .line 349
    .line 350
    iput-boolean v9, p0, Lc1/I;->e:Z

    .line 351
    .line 352
    iget-object v0, p0, Lc1/I;->j:Lv0/F;

    .line 353
    .line 354
    invoke-interface {v0}, Lv0/F;->endTracks()V

    .line 355
    .line 356
    .line 357
    :cond_10
    invoke-virtual {p2}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 358
    .line 359
    .line 360
    move-result-object v0

    .line 361
    invoke-interface {p1, v0, v1, v3}, Lv0/D;->peekFully([BII)V

    .line 362
    .line 363
    .line 364
    invoke-virtual {p2, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 365
    .line 366
    .line 367
    invoke-virtual {p2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    .line 368
    .line 369
    .line 370
    move-result v0

    .line 371
    add-int/2addr v0, v4

    .line 372
    if-nez v6, :cond_11

    .line 373
    .line 374
    invoke-interface {p1, v0}, Lv0/D;->skipFully(I)V

    .line 375
    .line 376
    .line 377
    return v1

    .line 378
    :cond_11
    invoke-virtual {p2, v0}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    .line 379
    .line 380
    .line 381
    invoke-virtual {p2}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 382
    .line 383
    .line 384
    move-result-object v2

    .line 385
    invoke-interface {p1, v2, v1, v0}, Lv0/D;->readFully([BII)V

    .line 386
    .line 387
    .line 388
    invoke-virtual {p2, v4}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 389
    .line 390
    .line 391
    invoke-virtual {v6, p2}, Lc1/H;->consume(Landroidx/media3/common/util/ParsableByteArray;)V

    .line 392
    .line 393
    .line 394
    invoke-virtual {p2}, Landroidx/media3/common/util/ParsableByteArray;->capacity()I

    .line 395
    .line 396
    .line 397
    move-result p1

    .line 398
    invoke-virtual {p2, p1}, Landroidx/media3/common/util/ParsableByteArray;->setLimit(I)V

    .line 399
    .line 400
    .line 401
    return v1
.end method

.method public release()V
    .locals 0

    .line 1
    return-void
.end method

.method public seek(JJ)V
    .locals 6

    .line 1
    iget-object p1, p0, Lc1/I;->a:Landroidx/media3/common/util/TimestampAdjuster;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/media3/common/util/TimestampAdjuster;->getTimestampOffsetUs()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    cmp-long p2, v0, v2

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    const/4 v1, 0x1

    .line 16
    if-nez p2, :cond_0

    .line 17
    .line 18
    move p2, v1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move p2, v0

    .line 21
    :goto_0
    if-nez p2, :cond_2

    .line 22
    .line 23
    invoke-virtual {p1}, Landroidx/media3/common/util/TimestampAdjuster;->getFirstSampleTimestampUs()J

    .line 24
    .line 25
    .line 26
    move-result-wide v4

    .line 27
    cmp-long p2, v4, v2

    .line 28
    .line 29
    if-eqz p2, :cond_1

    .line 30
    .line 31
    const-wide/16 v2, 0x0

    .line 32
    .line 33
    cmp-long p2, v4, v2

    .line 34
    .line 35
    if-eqz p2, :cond_1

    .line 36
    .line 37
    cmp-long p2, v4, p3

    .line 38
    .line 39
    if-eqz p2, :cond_1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    move v1, v0

    .line 43
    :goto_1
    move p2, v1

    .line 44
    :cond_2
    if-eqz p2, :cond_3

    .line 45
    .line 46
    invoke-virtual {p1, p3, p4}, Landroidx/media3/common/util/TimestampAdjuster;->reset(J)V

    .line 47
    .line 48
    .line 49
    :cond_3
    iget-object p1, p0, Lc1/I;->i:Lc1/F;

    .line 50
    .line 51
    if-eqz p1, :cond_4

    .line 52
    .line 53
    invoke-virtual {p1, p3, p4}, Lv0/p;->setSeekTargetUs(J)V

    .line 54
    .line 55
    .line 56
    :cond_4
    :goto_2
    iget-object p1, p0, Lc1/I;->b:Landroid/util/SparseArray;

    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 59
    .line 60
    .line 61
    move-result p2

    .line 62
    if-ge v0, p2, :cond_5

    .line 63
    .line 64
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    check-cast p1, Lc1/H;

    .line 69
    .line 70
    invoke-virtual {p1}, Lc1/H;->seek()V

    .line 71
    .line 72
    .line 73
    add-int/lit8 v0, v0, 0x1

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_5
    return-void
.end method

.method public sniff(Lv0/D;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/16 v0, 0xe

    .line 2
    .line 3
    new-array v1, v0, [B

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-interface {p1, v1, v2, v0}, Lv0/D;->peekFully([BII)V

    .line 7
    .line 8
    .line 9
    aget-byte v0, v1, v2

    .line 10
    .line 11
    and-int/lit16 v0, v0, 0xff

    .line 12
    .line 13
    shl-int/lit8 v0, v0, 0x18

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    aget-byte v4, v1, v3

    .line 17
    .line 18
    and-int/lit16 v4, v4, 0xff

    .line 19
    .line 20
    shl-int/lit8 v4, v4, 0x10

    .line 21
    .line 22
    or-int/2addr v0, v4

    .line 23
    const/4 v4, 0x2

    .line 24
    aget-byte v5, v1, v4

    .line 25
    .line 26
    and-int/lit16 v5, v5, 0xff

    .line 27
    .line 28
    const/16 v6, 0x8

    .line 29
    .line 30
    shl-int/2addr v5, v6

    .line 31
    or-int/2addr v0, v5

    .line 32
    const/4 v5, 0x3

    .line 33
    aget-byte v7, v1, v5

    .line 34
    .line 35
    and-int/lit16 v7, v7, 0xff

    .line 36
    .line 37
    or-int/2addr v0, v7

    .line 38
    const/16 v7, 0x1ba

    .line 39
    .line 40
    if-eq v7, v0, :cond_0

    .line 41
    .line 42
    return v2

    .line 43
    :cond_0
    const/4 v0, 0x4

    .line 44
    aget-byte v7, v1, v0

    .line 45
    .line 46
    and-int/lit16 v7, v7, 0xc4

    .line 47
    .line 48
    const/16 v8, 0x44

    .line 49
    .line 50
    if-eq v7, v8, :cond_1

    .line 51
    .line 52
    return v2

    .line 53
    :cond_1
    const/4 v7, 0x6

    .line 54
    aget-byte v7, v1, v7

    .line 55
    .line 56
    and-int/2addr v7, v0

    .line 57
    if-eq v7, v0, :cond_2

    .line 58
    .line 59
    return v2

    .line 60
    :cond_2
    aget-byte v7, v1, v6

    .line 61
    .line 62
    and-int/2addr v7, v0

    .line 63
    if-eq v7, v0, :cond_3

    .line 64
    .line 65
    return v2

    .line 66
    :cond_3
    const/16 v0, 0x9

    .line 67
    .line 68
    aget-byte v0, v1, v0

    .line 69
    .line 70
    and-int/2addr v0, v3

    .line 71
    if-eq v0, v3, :cond_4

    .line 72
    .line 73
    return v2

    .line 74
    :cond_4
    const/16 v0, 0xc

    .line 75
    .line 76
    aget-byte v0, v1, v0

    .line 77
    .line 78
    and-int/2addr v0, v5

    .line 79
    if-eq v0, v5, :cond_5

    .line 80
    .line 81
    return v2

    .line 82
    :cond_5
    const/16 v0, 0xd

    .line 83
    .line 84
    aget-byte v0, v1, v0

    .line 85
    .line 86
    and-int/lit8 v0, v0, 0x7

    .line 87
    .line 88
    invoke-interface {p1, v0}, Lv0/D;->advancePeekPosition(I)V

    .line 89
    .line 90
    .line 91
    invoke-interface {p1, v1, v2, v5}, Lv0/D;->peekFully([BII)V

    .line 92
    .line 93
    .line 94
    aget-byte p1, v1, v2

    .line 95
    .line 96
    and-int/lit16 p1, p1, 0xff

    .line 97
    .line 98
    shl-int/lit8 p1, p1, 0x10

    .line 99
    .line 100
    aget-byte v0, v1, v3

    .line 101
    .line 102
    and-int/lit16 v0, v0, 0xff

    .line 103
    .line 104
    shl-int/2addr v0, v6

    .line 105
    or-int/2addr p1, v0

    .line 106
    aget-byte v0, v1, v4

    .line 107
    .line 108
    and-int/lit16 v0, v0, 0xff

    .line 109
    .line 110
    or-int/2addr p1, v0

    .line 111
    if-ne v3, p1, :cond_6

    .line 112
    .line 113
    return v3

    .line 114
    :cond_6
    return v2
.end method
