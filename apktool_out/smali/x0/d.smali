.class public final Lx0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv0/C;


# instance fields
.field public final a:Landroidx/media3/common/util/ParsableByteArray;

.field public final b:Lx0/c;

.field public final c:Z

.field public final d:LS0/q;

.field public e:I

.field public f:Lv0/F;

.field public g:Lx0/e;

.field public h:J

.field public i:[Lx0/g;

.field public j:J

.field public k:Lx0/g;

.field public l:I

.field public m:J

.field public n:J

.field public o:I

.field public p:Z


# direct methods
.method public constructor <init>(ILS0/q;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lx0/d;->d:LS0/q;

    .line 5
    .line 6
    const/4 p2, 0x1

    .line 7
    and-int/2addr p1, p2

    .line 8
    const/4 v0, 0x0

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move p2, v0

    .line 13
    :goto_0
    iput-boolean p2, p0, Lx0/d;->c:Z

    .line 14
    .line 15
    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    .line 16
    .line 17
    const/16 p2, 0xc

    .line 18
    .line 19
    invoke-direct {p1, p2}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lx0/d;->a:Landroidx/media3/common/util/ParsableByteArray;

    .line 23
    .line 24
    new-instance p1, Lx0/c;

    .line 25
    .line 26
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lx0/d;->b:Lx0/c;

    .line 30
    .line 31
    new-instance p1, Lv0/a0;

    .line 32
    .line 33
    invoke-direct {p1}, Lv0/a0;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object p1, p0, Lx0/d;->f:Lv0/F;

    .line 37
    .line 38
    new-array p1, v0, [Lx0/g;

    .line 39
    .line 40
    iput-object p1, p0, Lx0/d;->i:[Lx0/g;

    .line 41
    .line 42
    const-wide/16 p1, -0x1

    .line 43
    .line 44
    iput-wide p1, p0, Lx0/d;->m:J

    .line 45
    .line 46
    iput-wide p1, p0, Lx0/d;->n:J

    .line 47
    .line 48
    const/4 p1, -0x1

    .line 49
    iput p1, p0, Lx0/d;->l:I

    .line 50
    .line 51
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    iput-wide p1, p0, Lx0/d;->h:J

    .line 57
    .line 58
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
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lx0/d;->e:I

    .line 3
    .line 4
    iget-boolean v0, p0, Lx0/d;->c:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    new-instance v0, LS0/t;

    .line 9
    .line 10
    iget-object v1, p0, Lx0/d;->d:LS0/q;

    .line 11
    .line 12
    invoke-direct {v0, p1, v1}, LS0/t;-><init>(Lv0/F;LS0/q;)V

    .line 13
    .line 14
    .line 15
    move-object p1, v0

    .line 16
    :cond_0
    iput-object p1, p0, Lx0/d;->f:Lv0/F;

    .line 17
    .line 18
    const-wide/16 v0, -0x1

    .line 19
    .line 20
    iput-wide v0, p0, Lx0/d;->j:J

    .line 21
    .line 22
    return-void
.end method

.method public read(Lv0/D;Lv0/c0;)I
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-wide v2, v0, Lx0/d;->j:J

    .line 6
    .line 7
    const-wide/16 v4, -0x1

    .line 8
    .line 9
    cmp-long v2, v2, v4

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    const/4 v6, 0x1

    .line 13
    if-eqz v2, :cond_2

    .line 14
    .line 15
    invoke-interface {v1}, Lv0/D;->getPosition()J

    .line 16
    .line 17
    .line 18
    move-result-wide v7

    .line 19
    iget-wide v9, v0, Lx0/d;->j:J

    .line 20
    .line 21
    cmp-long v2, v9, v7

    .line 22
    .line 23
    if-ltz v2, :cond_0

    .line 24
    .line 25
    const-wide/32 v11, 0x40000

    .line 26
    .line 27
    .line 28
    add-long/2addr v11, v7

    .line 29
    cmp-long v2, v9, v11

    .line 30
    .line 31
    if-lez v2, :cond_1

    .line 32
    .line 33
    :cond_0
    move-object/from16 v2, p2

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    sub-long/2addr v9, v7

    .line 37
    long-to-int v2, v9

    .line 38
    invoke-interface {v1, v2}, Lv0/D;->skipFully(I)V

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :goto_0
    iput-wide v9, v2, Lv0/c0;->a:J

    .line 43
    .line 44
    move v2, v6

    .line 45
    goto :goto_2

    .line 46
    :cond_2
    :goto_1
    move v2, v3

    .line 47
    :goto_2
    iput-wide v4, v0, Lx0/d;->j:J

    .line 48
    .line 49
    if-eqz v2, :cond_3

    .line 50
    .line 51
    return v6

    .line 52
    :cond_3
    iget v2, v0, Lx0/d;->e:I

    .line 53
    .line 54
    const/4 v7, 0x0

    .line 55
    const/4 v8, 0x2

    .line 56
    const v9, 0x6c726468

    .line 57
    .line 58
    .line 59
    const/4 v10, 0x6

    .line 60
    const/4 v13, 0x4

    .line 61
    const/16 v14, 0x8

    .line 62
    .line 63
    move-wide/from16 v17, v4

    .line 64
    .line 65
    const/16 v4, 0xc

    .line 66
    .line 67
    iget-object v5, v0, Lx0/d;->b:Lx0/c;

    .line 68
    .line 69
    const-wide/16 v19, 0x8

    .line 70
    .line 71
    iget-object v15, v0, Lx0/d;->a:Landroidx/media3/common/util/ParsableByteArray;

    .line 72
    .line 73
    packed-switch v2, :pswitch_data_0

    .line 74
    .line 75
    .line 76
    new-instance v1, Ljava/lang/AssertionError;

    .line 77
    .line 78
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    .line 79
    .line 80
    .line 81
    throw v1

    .line 82
    :pswitch_0
    invoke-interface {v1}, Lv0/D;->getPosition()J

    .line 83
    .line 84
    .line 85
    move-result-wide v8

    .line 86
    iget-wide v11, v0, Lx0/d;->n:J

    .line 87
    .line 88
    cmp-long v5, v8, v11

    .line 89
    .line 90
    if-ltz v5, :cond_4

    .line 91
    .line 92
    const/4 v1, -0x1

    .line 93
    return v1

    .line 94
    :cond_4
    iget-object v5, v0, Lx0/d;->k:Lx0/g;

    .line 95
    .line 96
    if-eqz v5, :cond_6

    .line 97
    .line 98
    invoke-virtual {v5, v1}, Lx0/g;->onChunkData(Lv0/D;)Z

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    if-eqz v1, :cond_5

    .line 103
    .line 104
    iput-object v7, v0, Lx0/d;->k:Lx0/g;

    .line 105
    .line 106
    :cond_5
    return v3

    .line 107
    :cond_6
    invoke-interface {v1}, Lv0/D;->getPosition()J

    .line 108
    .line 109
    .line 110
    move-result-wide v8

    .line 111
    const-wide/16 v10, 0x1

    .line 112
    .line 113
    and-long/2addr v8, v10

    .line 114
    cmp-long v5, v8, v10

    .line 115
    .line 116
    if-nez v5, :cond_7

    .line 117
    .line 118
    invoke-interface {v1, v6}, Lv0/D;->skipFully(I)V

    .line 119
    .line 120
    .line 121
    :cond_7
    invoke-virtual {v15}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 122
    .line 123
    .line 124
    move-result-object v5

    .line 125
    invoke-interface {v1, v5, v3, v4}, Lv0/D;->peekFully([BII)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v15, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v15}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    .line 132
    .line 133
    .line 134
    move-result v5

    .line 135
    const v2, 0x5453494c

    .line 136
    .line 137
    .line 138
    if-ne v5, v2, :cond_9

    .line 139
    .line 140
    invoke-virtual {v15, v14}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v15}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    .line 144
    .line 145
    .line 146
    move-result v2

    .line 147
    const v5, 0x69766f6d

    .line 148
    .line 149
    .line 150
    if-ne v2, v5, :cond_8

    .line 151
    .line 152
    move v14, v4

    .line 153
    :cond_8
    invoke-interface {v1, v14}, Lv0/D;->skipFully(I)V

    .line 154
    .line 155
    .line 156
    invoke-interface {v1}, Lv0/D;->resetPeekPosition()V

    .line 157
    .line 158
    .line 159
    return v3

    .line 160
    :cond_9
    invoke-virtual {v15}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    .line 161
    .line 162
    .line 163
    move-result v2

    .line 164
    const v4, 0x4b4e554a    # 1.352225E7f

    .line 165
    .line 166
    .line 167
    if-ne v5, v4, :cond_a

    .line 168
    .line 169
    invoke-interface {v1}, Lv0/D;->getPosition()J

    .line 170
    .line 171
    .line 172
    move-result-wide v4

    .line 173
    int-to-long v1, v2

    .line 174
    add-long/2addr v4, v1

    .line 175
    add-long v4, v4, v19

    .line 176
    .line 177
    iput-wide v4, v0, Lx0/d;->j:J

    .line 178
    .line 179
    return v3

    .line 180
    :cond_a
    invoke-interface {v1, v14}, Lv0/D;->skipFully(I)V

    .line 181
    .line 182
    .line 183
    invoke-interface {v1}, Lv0/D;->resetPeekPosition()V

    .line 184
    .line 185
    .line 186
    iget-object v4, v0, Lx0/d;->i:[Lx0/g;

    .line 187
    .line 188
    array-length v6, v4

    .line 189
    move v8, v3

    .line 190
    :goto_3
    if-ge v8, v6, :cond_c

    .line 191
    .line 192
    aget-object v9, v4, v8

    .line 193
    .line 194
    invoke-virtual {v9, v5}, Lx0/g;->handlesChunkId(I)Z

    .line 195
    .line 196
    .line 197
    move-result v10

    .line 198
    if-eqz v10, :cond_b

    .line 199
    .line 200
    move-object v7, v9

    .line 201
    goto :goto_4

    .line 202
    :cond_b
    add-int/lit8 v8, v8, 0x1

    .line 203
    .line 204
    goto :goto_3

    .line 205
    :cond_c
    :goto_4
    if-nez v7, :cond_d

    .line 206
    .line 207
    invoke-interface {v1}, Lv0/D;->getPosition()J

    .line 208
    .line 209
    .line 210
    move-result-wide v4

    .line 211
    int-to-long v1, v2

    .line 212
    add-long/2addr v4, v1

    .line 213
    iput-wide v4, v0, Lx0/d;->j:J

    .line 214
    .line 215
    return v3

    .line 216
    :cond_d
    invoke-virtual {v7, v2}, Lx0/g;->onChunkStart(I)V

    .line 217
    .line 218
    .line 219
    iput-object v7, v0, Lx0/d;->k:Lx0/g;

    .line 220
    .line 221
    return v3

    .line 222
    :pswitch_1
    new-instance v2, Landroidx/media3/common/util/ParsableByteArray;

    .line 223
    .line 224
    iget v4, v0, Lx0/d;->o:I

    .line 225
    .line 226
    invoke-direct {v2, v4}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 230
    .line 231
    .line 232
    move-result-object v4

    .line 233
    iget v5, v0, Lx0/d;->o:I

    .line 234
    .line 235
    invoke-interface {v1, v4, v3, v5}, Lv0/D;->readFully([BII)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 239
    .line 240
    .line 241
    move-result v1

    .line 242
    const/16 v4, 0x10

    .line 243
    .line 244
    const-wide/16 v8, 0x0

    .line 245
    .line 246
    if-ge v1, v4, :cond_e

    .line 247
    .line 248
    goto :goto_6

    .line 249
    :cond_e
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    .line 250
    .line 251
    .line 252
    move-result v1

    .line 253
    invoke-virtual {v2, v14}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    .line 257
    .line 258
    .line 259
    move-result v5

    .line 260
    int-to-long v11, v5

    .line 261
    iget-wide v14, v0, Lx0/d;->m:J

    .line 262
    .line 263
    cmp-long v5, v11, v14

    .line 264
    .line 265
    if-lez v5, :cond_f

    .line 266
    .line 267
    goto :goto_5

    .line 268
    :cond_f
    add-long v8, v14, v19

    .line 269
    .line 270
    :goto_5
    invoke-virtual {v2, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 271
    .line 272
    .line 273
    :goto_6
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 274
    .line 275
    .line 276
    move-result v1

    .line 277
    if-lt v1, v4, :cond_14

    .line 278
    .line 279
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    .line 280
    .line 281
    .line 282
    move-result v1

    .line 283
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    .line 284
    .line 285
    .line 286
    move-result v5

    .line 287
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    .line 288
    .line 289
    .line 290
    move-result v11

    .line 291
    int-to-long v11, v11

    .line 292
    add-long/2addr v11, v8

    .line 293
    invoke-virtual {v2, v13}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 294
    .line 295
    .line 296
    iget-object v14, v0, Lx0/d;->i:[Lx0/g;

    .line 297
    .line 298
    array-length v15, v14

    .line 299
    move v7, v3

    .line 300
    :goto_7
    if-ge v7, v15, :cond_11

    .line 301
    .line 302
    aget-object v13, v14, v7

    .line 303
    .line 304
    invoke-virtual {v13, v1}, Lx0/g;->handlesChunkId(I)Z

    .line 305
    .line 306
    .line 307
    move-result v17

    .line 308
    if-eqz v17, :cond_10

    .line 309
    .line 310
    goto :goto_8

    .line 311
    :cond_10
    add-int/lit8 v7, v7, 0x1

    .line 312
    .line 313
    const/4 v13, 0x4

    .line 314
    goto :goto_7

    .line 315
    :cond_11
    const/4 v13, 0x0

    .line 316
    :goto_8
    if-nez v13, :cond_12

    .line 317
    .line 318
    :goto_9
    const/4 v7, 0x0

    .line 319
    const/4 v13, 0x4

    .line 320
    goto :goto_6

    .line 321
    :cond_12
    and-int/lit8 v1, v5, 0x10

    .line 322
    .line 323
    if-ne v1, v4, :cond_13

    .line 324
    .line 325
    move v1, v6

    .line 326
    goto :goto_a

    .line 327
    :cond_13
    move v1, v3

    .line 328
    :goto_a
    invoke-virtual {v13, v11, v12, v1}, Lx0/g;->appendIndexChunk(JZ)V

    .line 329
    .line 330
    .line 331
    goto :goto_9

    .line 332
    :cond_14
    iget-object v1, v0, Lx0/d;->i:[Lx0/g;

    .line 333
    .line 334
    array-length v2, v1

    .line 335
    move v4, v3

    .line 336
    :goto_b
    if-ge v4, v2, :cond_15

    .line 337
    .line 338
    aget-object v5, v1, v4

    .line 339
    .line 340
    invoke-virtual {v5}, Lx0/g;->commitIndex()V

    .line 341
    .line 342
    .line 343
    add-int/lit8 v4, v4, 0x1

    .line 344
    .line 345
    goto :goto_b

    .line 346
    :cond_15
    iput-boolean v6, v0, Lx0/d;->p:Z

    .line 347
    .line 348
    iget-object v1, v0, Lx0/d;->i:[Lx0/g;

    .line 349
    .line 350
    array-length v1, v1

    .line 351
    if-nez v1, :cond_16

    .line 352
    .line 353
    iget-object v1, v0, Lx0/d;->f:Lv0/F;

    .line 354
    .line 355
    new-instance v2, Lv0/f0;

    .line 356
    .line 357
    iget-wide v4, v0, Lx0/d;->h:J

    .line 358
    .line 359
    invoke-direct {v2, v4, v5}, Lv0/f0;-><init>(J)V

    .line 360
    .line 361
    .line 362
    invoke-interface {v1, v2}, Lv0/F;->seekMap(Lv0/g0;)V

    .line 363
    .line 364
    .line 365
    goto :goto_c

    .line 366
    :cond_16
    iget-object v1, v0, Lx0/d;->f:Lv0/F;

    .line 367
    .line 368
    new-instance v2, Lx0/b;

    .line 369
    .line 370
    iget-wide v4, v0, Lx0/d;->h:J

    .line 371
    .line 372
    invoke-direct {v2, v0, v4, v5}, Lx0/b;-><init>(Lx0/d;J)V

    .line 373
    .line 374
    .line 375
    invoke-interface {v1, v2}, Lv0/F;->seekMap(Lv0/g0;)V

    .line 376
    .line 377
    .line 378
    :goto_c
    iput v10, v0, Lx0/d;->e:I

    .line 379
    .line 380
    iget-wide v1, v0, Lx0/d;->m:J

    .line 381
    .line 382
    iput-wide v1, v0, Lx0/d;->j:J

    .line 383
    .line 384
    return v3

    .line 385
    :pswitch_2
    invoke-virtual {v15}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 386
    .line 387
    .line 388
    move-result-object v2

    .line 389
    invoke-interface {v1, v2, v3, v14}, Lv0/D;->readFully([BII)V

    .line 390
    .line 391
    .line 392
    invoke-virtual {v15, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 393
    .line 394
    .line 395
    invoke-virtual {v15}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    .line 396
    .line 397
    .line 398
    move-result v2

    .line 399
    invoke-virtual {v15}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    .line 400
    .line 401
    .line 402
    move-result v4

    .line 403
    const v5, 0x31786469

    .line 404
    .line 405
    .line 406
    if-ne v2, v5, :cond_17

    .line 407
    .line 408
    const/4 v1, 0x5

    .line 409
    iput v1, v0, Lx0/d;->e:I

    .line 410
    .line 411
    iput v4, v0, Lx0/d;->o:I

    .line 412
    .line 413
    return v3

    .line 414
    :cond_17
    invoke-interface {v1}, Lv0/D;->getPosition()J

    .line 415
    .line 416
    .line 417
    move-result-wide v1

    .line 418
    int-to-long v4, v4

    .line 419
    add-long/2addr v1, v4

    .line 420
    iput-wide v1, v0, Lx0/d;->j:J

    .line 421
    .line 422
    return v3

    .line 423
    :pswitch_3
    iget-wide v7, v0, Lx0/d;->m:J

    .line 424
    .line 425
    cmp-long v7, v7, v17

    .line 426
    .line 427
    if-eqz v7, :cond_18

    .line 428
    .line 429
    invoke-interface {v1}, Lv0/D;->getPosition()J

    .line 430
    .line 431
    .line 432
    move-result-wide v7

    .line 433
    iget-wide v11, v0, Lx0/d;->m:J

    .line 434
    .line 435
    cmp-long v7, v7, v11

    .line 436
    .line 437
    if-eqz v7, :cond_18

    .line 438
    .line 439
    iput-wide v11, v0, Lx0/d;->j:J

    .line 440
    .line 441
    return v3

    .line 442
    :cond_18
    invoke-virtual {v15}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 443
    .line 444
    .line 445
    move-result-object v7

    .line 446
    invoke-interface {v1, v7, v3, v4}, Lv0/D;->peekFully([BII)V

    .line 447
    .line 448
    .line 449
    invoke-interface {v1}, Lv0/D;->resetPeekPosition()V

    .line 450
    .line 451
    .line 452
    invoke-virtual {v15, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 453
    .line 454
    .line 455
    invoke-virtual {v5, v15}, Lx0/c;->populateFrom(Landroidx/media3/common/util/ParsableByteArray;)V

    .line 456
    .line 457
    .line 458
    invoke-virtual {v15}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    .line 459
    .line 460
    .line 461
    move-result v7

    .line 462
    iget v8, v5, Lx0/c;->a:I

    .line 463
    .line 464
    const v9, 0x46464952

    .line 465
    .line 466
    .line 467
    if-ne v8, v9, :cond_19

    .line 468
    .line 469
    invoke-interface {v1, v4}, Lv0/D;->skipFully(I)V

    .line 470
    .line 471
    .line 472
    return v3

    .line 473
    :cond_19
    const v2, 0x5453494c

    .line 474
    .line 475
    .line 476
    if-ne v8, v2, :cond_1d

    .line 477
    .line 478
    const v2, 0x69766f6d

    .line 479
    .line 480
    .line 481
    if-eq v7, v2, :cond_1a

    .line 482
    .line 483
    goto :goto_d

    .line 484
    :cond_1a
    invoke-interface {v1}, Lv0/D;->getPosition()J

    .line 485
    .line 486
    .line 487
    move-result-wide v7

    .line 488
    iput-wide v7, v0, Lx0/d;->m:J

    .line 489
    .line 490
    iget v2, v5, Lx0/c;->b:I

    .line 491
    .line 492
    int-to-long v4, v2

    .line 493
    add-long/2addr v7, v4

    .line 494
    add-long v7, v7, v19

    .line 495
    .line 496
    iput-wide v7, v0, Lx0/d;->n:J

    .line 497
    .line 498
    iget-boolean v2, v0, Lx0/d;->p:Z

    .line 499
    .line 500
    if-nez v2, :cond_1c

    .line 501
    .line 502
    iget-object v2, v0, Lx0/d;->g:Lx0/e;

    .line 503
    .line 504
    invoke-static {v2}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    .line 506
    .line 507
    move-result-object v2

    .line 508
    check-cast v2, Lx0/e;

    .line 509
    .line 510
    invoke-virtual {v2}, Lx0/e;->hasIndex()Z

    .line 511
    .line 512
    .line 513
    move-result v2

    .line 514
    if-eqz v2, :cond_1b

    .line 515
    .line 516
    const/4 v2, 0x4

    .line 517
    iput v2, v0, Lx0/d;->e:I

    .line 518
    .line 519
    iget-wide v1, v0, Lx0/d;->n:J

    .line 520
    .line 521
    iput-wide v1, v0, Lx0/d;->j:J

    .line 522
    .line 523
    return v3

    .line 524
    :cond_1b
    iget-object v2, v0, Lx0/d;->f:Lv0/F;

    .line 525
    .line 526
    new-instance v4, Lv0/f0;

    .line 527
    .line 528
    iget-wide v7, v0, Lx0/d;->h:J

    .line 529
    .line 530
    invoke-direct {v4, v7, v8}, Lv0/f0;-><init>(J)V

    .line 531
    .line 532
    .line 533
    invoke-interface {v2, v4}, Lv0/F;->seekMap(Lv0/g0;)V

    .line 534
    .line 535
    .line 536
    iput-boolean v6, v0, Lx0/d;->p:Z

    .line 537
    .line 538
    :cond_1c
    invoke-interface {v1}, Lv0/D;->getPosition()J

    .line 539
    .line 540
    .line 541
    move-result-wide v1

    .line 542
    const-wide/16 v4, 0xc

    .line 543
    .line 544
    add-long/2addr v1, v4

    .line 545
    iput-wide v1, v0, Lx0/d;->j:J

    .line 546
    .line 547
    iput v10, v0, Lx0/d;->e:I

    .line 548
    .line 549
    return v3

    .line 550
    :cond_1d
    :goto_d
    invoke-interface {v1}, Lv0/D;->getPosition()J

    .line 551
    .line 552
    .line 553
    move-result-wide v1

    .line 554
    iget v4, v5, Lx0/c;->b:I

    .line 555
    .line 556
    int-to-long v4, v4

    .line 557
    add-long/2addr v1, v4

    .line 558
    add-long v1, v1, v19

    .line 559
    .line 560
    iput-wide v1, v0, Lx0/d;->j:J

    .line 561
    .line 562
    return v3

    .line 563
    :pswitch_4
    iget v2, v0, Lx0/d;->l:I

    .line 564
    .line 565
    const/16 v16, 0x4

    .line 566
    .line 567
    add-int/lit8 v2, v2, -0x4

    .line 568
    .line 569
    new-instance v4, Landroidx/media3/common/util/ParsableByteArray;

    .line 570
    .line 571
    invoke-direct {v4, v2}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    .line 572
    .line 573
    .line 574
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 575
    .line 576
    .line 577
    move-result-object v5

    .line 578
    invoke-interface {v1, v5, v3, v2}, Lv0/D;->readFully([BII)V

    .line 579
    .line 580
    .line 581
    invoke-static {v9, v4}, Lx0/h;->parseFrom(ILandroidx/media3/common/util/ParsableByteArray;)Lx0/h;

    .line 582
    .line 583
    .line 584
    move-result-object v1

    .line 585
    invoke-virtual {v1}, Lx0/h;->getType()I

    .line 586
    .line 587
    .line 588
    move-result v2

    .line 589
    if-ne v2, v9, :cond_28

    .line 590
    .line 591
    const-class v2, Lx0/e;

    .line 592
    .line 593
    invoke-virtual {v1, v2}, Lx0/h;->getChild(Ljava/lang/Class;)Lx0/a;

    .line 594
    .line 595
    .line 596
    move-result-object v2

    .line 597
    check-cast v2, Lx0/e;

    .line 598
    .line 599
    if-eqz v2, :cond_27

    .line 600
    .line 601
    iput-object v2, v0, Lx0/d;->g:Lx0/e;

    .line 602
    .line 603
    iget v4, v2, Lx0/e;->c:I

    .line 604
    .line 605
    int-to-long v4, v4

    .line 606
    iget v2, v2, Lx0/e;->a:I

    .line 607
    .line 608
    int-to-long v9, v2

    .line 609
    mul-long/2addr v4, v9

    .line 610
    iput-wide v4, v0, Lx0/d;->h:J

    .line 611
    .line 612
    new-instance v2, Ljava/util/ArrayList;

    .line 613
    .line 614
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 615
    .line 616
    .line 617
    iget-object v1, v1, Lx0/h;->a:Lcom/google/common/collect/ImmutableList;

    .line 618
    .line 619
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->iterator()LQ3/x0;

    .line 620
    .line 621
    .line 622
    move-result-object v1

    .line 623
    move v4, v3

    .line 624
    :cond_1e
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 625
    .line 626
    .line 627
    move-result v5

    .line 628
    if-eqz v5, :cond_26

    .line 629
    .line 630
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 631
    .line 632
    .line 633
    move-result-object v5

    .line 634
    check-cast v5, Lx0/a;

    .line 635
    .line 636
    invoke-interface {v5}, Lx0/a;->getType()I

    .line 637
    .line 638
    .line 639
    move-result v7

    .line 640
    const v9, 0x6c727473

    .line 641
    .line 642
    .line 643
    if-ne v7, v9, :cond_1e

    .line 644
    .line 645
    check-cast v5, Lx0/h;

    .line 646
    .line 647
    add-int/lit8 v7, v4, 0x1

    .line 648
    .line 649
    const-class v9, Lx0/f;

    .line 650
    .line 651
    invoke-virtual {v5, v9}, Lx0/h;->getChild(Ljava/lang/Class;)Lx0/a;

    .line 652
    .line 653
    .line 654
    move-result-object v9

    .line 655
    check-cast v9, Lx0/f;

    .line 656
    .line 657
    const-class v10, Lx0/i;

    .line 658
    .line 659
    invoke-virtual {v5, v10}, Lx0/h;->getChild(Ljava/lang/Class;)Lx0/a;

    .line 660
    .line 661
    .line 662
    move-result-object v10

    .line 663
    check-cast v10, Lx0/i;

    .line 664
    .line 665
    const-string v11, "AviExtractor"

    .line 666
    .line 667
    if-nez v9, :cond_20

    .line 668
    .line 669
    const-string v4, "Missing Stream Header"

    .line 670
    .line 671
    invoke-static {v11, v4}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    .line 673
    .line 674
    :cond_1f
    :goto_f
    const/4 v10, 0x0

    .line 675
    goto :goto_10

    .line 676
    :cond_20
    if-nez v10, :cond_21

    .line 677
    .line 678
    const-string v4, "Missing Stream Format"

    .line 679
    .line 680
    invoke-static {v11, v4}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    .line 682
    .line 683
    goto :goto_f

    .line 684
    :cond_21
    invoke-virtual {v9}, Lx0/f;->getDurationUs()J

    .line 685
    .line 686
    .line 687
    move-result-wide v11

    .line 688
    iget-object v10, v10, Lx0/i;->a:Landroidx/media3/common/Format;

    .line 689
    .line 690
    invoke-virtual {v10}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    .line 691
    .line 692
    .line 693
    move-result-object v13

    .line 694
    invoke-virtual {v13, v4}, Landroidx/media3/common/Format$Builder;->setId(I)Landroidx/media3/common/Format$Builder;

    .line 695
    .line 696
    .line 697
    iget v14, v9, Lx0/f;->e:I

    .line 698
    .line 699
    if-eqz v14, :cond_22

    .line 700
    .line 701
    invoke-virtual {v13, v14}, Landroidx/media3/common/Format$Builder;->setMaxInputSize(I)Landroidx/media3/common/Format$Builder;

    .line 702
    .line 703
    .line 704
    :cond_22
    const-class v14, Lx0/j;

    .line 705
    .line 706
    invoke-virtual {v5, v14}, Lx0/h;->getChild(Ljava/lang/Class;)Lx0/a;

    .line 707
    .line 708
    .line 709
    move-result-object v5

    .line 710
    check-cast v5, Lx0/j;

    .line 711
    .line 712
    if-eqz v5, :cond_23

    .line 713
    .line 714
    iget-object v5, v5, Lx0/j;->a:Ljava/lang/String;

    .line 715
    .line 716
    invoke-virtual {v13, v5}, Landroidx/media3/common/Format$Builder;->setLabel(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 717
    .line 718
    .line 719
    :cond_23
    iget-object v5, v10, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 720
    .line 721
    invoke-static {v5}, Landroidx/media3/common/MimeTypes;->getTrackType(Ljava/lang/String;)I

    .line 722
    .line 723
    .line 724
    move-result v5

    .line 725
    if-eq v5, v6, :cond_24

    .line 726
    .line 727
    if-ne v5, v8, :cond_1f

    .line 728
    .line 729
    :cond_24
    iget-object v10, v0, Lx0/d;->f:Lv0/F;

    .line 730
    .line 731
    invoke-interface {v10, v4, v5}, Lv0/F;->track(II)Lv0/r0;

    .line 732
    .line 733
    .line 734
    move-result-object v5

    .line 735
    invoke-virtual {v13}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    .line 736
    .line 737
    .line 738
    move-result-object v10

    .line 739
    invoke-interface {v5, v10}, Lv0/r0;->format(Landroidx/media3/common/Format;)V

    .line 740
    .line 741
    .line 742
    invoke-interface {v5, v11, v12}, Lv0/r0;->durationUs(J)V

    .line 743
    .line 744
    .line 745
    iget-wide v13, v0, Lx0/d;->h:J

    .line 746
    .line 747
    invoke-static {v13, v14, v11, v12}, Ljava/lang/Math;->max(JJ)J

    .line 748
    .line 749
    .line 750
    move-result-wide v10

    .line 751
    iput-wide v10, v0, Lx0/d;->h:J

    .line 752
    .line 753
    new-instance v10, Lx0/g;

    .line 754
    .line 755
    invoke-direct {v10, v4, v9, v5}, Lx0/g;-><init>(ILx0/f;Lv0/r0;)V

    .line 756
    .line 757
    .line 758
    :goto_10
    if-eqz v10, :cond_25

    .line 759
    .line 760
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 761
    .line 762
    .line 763
    :cond_25
    move v4, v7

    .line 764
    goto/16 :goto_e

    .line 765
    .line 766
    :cond_26
    new-array v1, v3, [Lx0/g;

    .line 767
    .line 768
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 769
    .line 770
    .line 771
    move-result-object v1

    .line 772
    check-cast v1, [Lx0/g;

    .line 773
    .line 774
    iput-object v1, v0, Lx0/d;->i:[Lx0/g;

    .line 775
    .line 776
    iget-object v1, v0, Lx0/d;->f:Lv0/F;

    .line 777
    .line 778
    invoke-interface {v1}, Lv0/F;->endTracks()V

    .line 779
    .line 780
    .line 781
    const/4 v1, 0x3

    .line 782
    iput v1, v0, Lx0/d;->e:I

    .line 783
    .line 784
    return v3

    .line 785
    :cond_27
    const-string v1, "AviHeader not found"

    .line 786
    .line 787
    const/4 v2, 0x0

    .line 788
    invoke-static {v1, v2}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 789
    .line 790
    .line 791
    move-result-object v1

    .line 792
    throw v1

    .line 793
    :cond_28
    const/4 v2, 0x0

    .line 794
    new-instance v3, Ljava/lang/StringBuilder;

    .line 795
    .line 796
    const-string v4, "Unexpected header list type "

    .line 797
    .line 798
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 799
    .line 800
    .line 801
    invoke-virtual {v1}, Lx0/h;->getType()I

    .line 802
    .line 803
    .line 804
    move-result v1

    .line 805
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 806
    .line 807
    .line 808
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 809
    .line 810
    .line 811
    move-result-object v1

    .line 812
    invoke-static {v1, v2}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 813
    .line 814
    .line 815
    move-result-object v1

    .line 816
    throw v1

    .line 817
    :pswitch_5
    invoke-virtual {v15}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 818
    .line 819
    .line 820
    move-result-object v2

    .line 821
    invoke-interface {v1, v2, v3, v4}, Lv0/D;->readFully([BII)V

    .line 822
    .line 823
    .line 824
    invoke-virtual {v15, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 825
    .line 826
    .line 827
    invoke-virtual {v5, v15}, Lx0/c;->populateWithListHeaderFrom(Landroidx/media3/common/util/ParsableByteArray;)V

    .line 828
    .line 829
    .line 830
    iget v1, v5, Lx0/c;->c:I

    .line 831
    .line 832
    if-ne v1, v9, :cond_29

    .line 833
    .line 834
    iget v1, v5, Lx0/c;->b:I

    .line 835
    .line 836
    iput v1, v0, Lx0/d;->l:I

    .line 837
    .line 838
    iput v8, v0, Lx0/d;->e:I

    .line 839
    .line 840
    return v3

    .line 841
    :cond_29
    new-instance v1, Ljava/lang/StringBuilder;

    .line 842
    .line 843
    const-string v2, "hdrl expected, found: "

    .line 844
    .line 845
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 846
    .line 847
    .line 848
    iget v2, v5, Lx0/c;->c:I

    .line 849
    .line 850
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 851
    .line 852
    .line 853
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 854
    .line 855
    .line 856
    move-result-object v1

    .line 857
    const/4 v2, 0x0

    .line 858
    invoke-static {v1, v2}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 859
    .line 860
    .line 861
    move-result-object v1

    .line 862
    throw v1

    .line 863
    :pswitch_6
    move-object v2, v7

    .line 864
    invoke-virtual/range {p0 .. p1}, Lx0/d;->sniff(Lv0/D;)Z

    .line 865
    .line 866
    .line 867
    move-result v5

    .line 868
    if-eqz v5, :cond_2a

    .line 869
    .line 870
    invoke-interface {v1, v4}, Lv0/D;->skipFully(I)V

    .line 871
    .line 872
    .line 873
    iput v6, v0, Lx0/d;->e:I

    .line 874
    .line 875
    return v3

    .line 876
    :cond_2a
    const-string v1, "AVI Header List not found"

    .line 877
    .line 878
    invoke-static {v1, v2}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 879
    .line 880
    .line 881
    move-result-object v1

    .line 882
    throw v1

    .line 883
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public release()V
    .locals 0

    .line 1
    return-void
.end method

.method public seek(JJ)V
    .locals 3

    .line 1
    const-wide/16 p3, -0x1

    .line 2
    .line 3
    iput-wide p3, p0, Lx0/d;->j:J

    .line 4
    .line 5
    const/4 p3, 0x0

    .line 6
    iput-object p3, p0, Lx0/d;->k:Lx0/g;

    .line 7
    .line 8
    iget-object p3, p0, Lx0/d;->i:[Lx0/g;

    .line 9
    .line 10
    array-length p4, p3

    .line 11
    const/4 v0, 0x0

    .line 12
    move v1, v0

    .line 13
    :goto_0
    if-ge v1, p4, :cond_0

    .line 14
    .line 15
    aget-object v2, p3, v1

    .line 16
    .line 17
    invoke-virtual {v2, p1, p2}, Lx0/g;->seekToPosition(J)V

    .line 18
    .line 19
    .line 20
    add-int/lit8 v1, v1, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const-wide/16 p3, 0x0

    .line 24
    .line 25
    cmp-long p1, p1, p3

    .line 26
    .line 27
    if-nez p1, :cond_2

    .line 28
    .line 29
    iget-object p1, p0, Lx0/d;->i:[Lx0/g;

    .line 30
    .line 31
    array-length p1, p1

    .line 32
    if-nez p1, :cond_1

    .line 33
    .line 34
    iput v0, p0, Lx0/d;->e:I

    .line 35
    .line 36
    return-void

    .line 37
    :cond_1
    const/4 p1, 0x3

    .line 38
    iput p1, p0, Lx0/d;->e:I

    .line 39
    .line 40
    return-void

    .line 41
    :cond_2
    const/4 p1, 0x6

    .line 42
    iput p1, p0, Lx0/d;->e:I

    .line 43
    .line 44
    return-void
.end method

.method public sniff(Lv0/D;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lx0/d;->a:Landroidx/media3/common/util/ParsableByteArray;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/16 v2, 0xc

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-interface {p1, v1, v3, v2}, Lv0/D;->peekFully([BII)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    const v1, 0x46464952

    .line 21
    .line 22
    .line 23
    if-eq p1, v1, :cond_0

    .line 24
    .line 25
    return v3

    .line 26
    :cond_0
    const/4 p1, 0x4

    .line 27
    invoke-virtual {v0, p1}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    const v0, 0x20495641

    .line 35
    .line 36
    .line 37
    if-ne p1, v0, :cond_1

    .line 38
    .line 39
    const/4 p1, 0x1

    .line 40
    return p1

    .line 41
    :cond_1
    return v3
.end method
