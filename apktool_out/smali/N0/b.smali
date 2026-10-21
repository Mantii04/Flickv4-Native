.class public final LN0/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[B

.field public final b:Ljava/util/ArrayDeque;

.field public final c:LN0/j;

.field public d:LN0/c;

.field public e:I

.field public f:I

.field public g:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x8

    .line 5
    .line 6
    new-array v0, v0, [B

    .line 7
    .line 8
    iput-object v0, p0, LN0/b;->a:[B

    .line 9
    .line 10
    new-instance v0, Ljava/util/ArrayDeque;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, LN0/b;->b:Ljava/util/ArrayDeque;

    .line 16
    .line 17
    new-instance v0, LN0/j;

    .line 18
    .line 19
    invoke-direct {v0}, LN0/j;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, LN0/b;->c:LN0/j;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final a(Lv0/D;I)J
    .locals 6

    .line 1
    iget-object v0, p0, LN0/b;->a:[B

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-interface {p1, v0, v1, p2}, Lv0/D;->readFully([BII)V

    .line 5
    .line 6
    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    :goto_0
    if-ge v1, p2, :cond_0

    .line 10
    .line 11
    const/16 p1, 0x8

    .line 12
    .line 13
    shl-long/2addr v2, p1

    .line 14
    aget-byte p1, v0, v1

    .line 15
    .line 16
    and-int/lit16 p1, p1, 0xff

    .line 17
    .line 18
    int-to-long v4, p1

    .line 19
    or-long/2addr v2, v4

    .line 20
    add-int/lit8 v1, v1, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-wide v2
.end method

.method public init(LN0/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, LN0/b;->d:LN0/c;

    .line 2
    .line 3
    return-void
.end method

.method public read(Lv0/D;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, LN0/b;->d:LN0/c;

    .line 2
    .line 3
    invoke-static {v0}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    :goto_0
    iget-object v0, p0, LN0/b;->b:Ljava/util/ArrayDeque;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, LN0/a;

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-interface {p1}, Lv0/D;->getPosition()J

    .line 18
    .line 19
    .line 20
    move-result-wide v3

    .line 21
    iget-wide v5, v1, LN0/a;->b:J

    .line 22
    .line 23
    cmp-long v1, v3, v5

    .line 24
    .line 25
    if-ltz v1, :cond_0

    .line 26
    .line 27
    iget-object p1, p0, LN0/b;->d:LN0/c;

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, LN0/a;

    .line 34
    .line 35
    iget v0, v0, LN0/a;->a:I

    .line 36
    .line 37
    check-cast p1, LN0/d;

    .line 38
    .line 39
    invoke-virtual {p1, v0}, LN0/d;->endMasterElement(I)V

    .line 40
    .line 41
    .line 42
    return v2

    .line 43
    :cond_0
    iget v1, p0, LN0/b;->e:I

    .line 44
    .line 45
    iget-object v3, p0, LN0/b;->c:LN0/j;

    .line 46
    .line 47
    const/4 v4, 0x4

    .line 48
    const/4 v5, 0x0

    .line 49
    if-nez v1, :cond_4

    .line 50
    .line 51
    invoke-virtual {v3, p1, v2, v5, v4}, LN0/j;->readUnsignedVarint(Lv0/D;ZZI)J

    .line 52
    .line 53
    .line 54
    move-result-wide v6

    .line 55
    const-wide/16 v8, -0x2

    .line 56
    .line 57
    cmp-long v1, v6, v8

    .line 58
    .line 59
    if-nez v1, :cond_2

    .line 60
    .line 61
    invoke-interface {p1}, Lv0/D;->resetPeekPosition()V

    .line 62
    .line 63
    .line 64
    :goto_1
    iget-object v1, p0, LN0/b;->a:[B

    .line 65
    .line 66
    invoke-interface {p1, v1, v5, v4}, Lv0/D;->peekFully([BII)V

    .line 67
    .line 68
    .line 69
    aget-byte v6, v1, v5

    .line 70
    .line 71
    invoke-static {v6}, LN0/j;->parseUnsignedVarintLength(I)I

    .line 72
    .line 73
    .line 74
    move-result v6

    .line 75
    const/4 v7, -0x1

    .line 76
    if-eq v6, v7, :cond_1

    .line 77
    .line 78
    if-gt v6, v4, :cond_1

    .line 79
    .line 80
    invoke-static {v1, v6, v5}, LN0/j;->assembleVarint([BIZ)J

    .line 81
    .line 82
    .line 83
    move-result-wide v7

    .line 84
    long-to-int v1, v7

    .line 85
    iget-object v7, p0, LN0/b;->d:LN0/c;

    .line 86
    .line 87
    check-cast v7, LN0/d;

    .line 88
    .line 89
    invoke-virtual {v7, v1}, LN0/d;->isLevel1Element(I)Z

    .line 90
    .line 91
    .line 92
    move-result v7

    .line 93
    if-eqz v7, :cond_1

    .line 94
    .line 95
    invoke-interface {p1, v6}, Lv0/D;->skipFully(I)V

    .line 96
    .line 97
    .line 98
    int-to-long v6, v1

    .line 99
    goto :goto_2

    .line 100
    :cond_1
    invoke-interface {p1, v2}, Lv0/D;->skipFully(I)V

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_2
    :goto_2
    const-wide/16 v8, -0x1

    .line 105
    .line 106
    cmp-long v1, v6, v8

    .line 107
    .line 108
    if-nez v1, :cond_3

    .line 109
    .line 110
    return v5

    .line 111
    :cond_3
    long-to-int v1, v6

    .line 112
    iput v1, p0, LN0/b;->f:I

    .line 113
    .line 114
    iput v2, p0, LN0/b;->e:I

    .line 115
    .line 116
    :cond_4
    iget v1, p0, LN0/b;->e:I

    .line 117
    .line 118
    const/4 v6, 0x2

    .line 119
    if-ne v1, v2, :cond_5

    .line 120
    .line 121
    const/16 v1, 0x8

    .line 122
    .line 123
    invoke-virtual {v3, p1, v5, v2, v1}, LN0/j;->readUnsignedVarint(Lv0/D;ZZI)J

    .line 124
    .line 125
    .line 126
    move-result-wide v7

    .line 127
    iput-wide v7, p0, LN0/b;->g:J

    .line 128
    .line 129
    iput v6, p0, LN0/b;->e:I

    .line 130
    .line 131
    :cond_5
    iget-object v1, p0, LN0/b;->d:LN0/c;

    .line 132
    .line 133
    iget v3, p0, LN0/b;->f:I

    .line 134
    .line 135
    check-cast v1, LN0/d;

    .line 136
    .line 137
    invoke-virtual {v1, v3}, LN0/d;->getElementType(I)I

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    if-eqz v1, :cond_12

    .line 142
    .line 143
    if-eq v1, v2, :cond_11

    .line 144
    .line 145
    const/4 v0, 0x0

    .line 146
    const-wide/16 v7, 0x8

    .line 147
    .line 148
    if-eq v1, v6, :cond_f

    .line 149
    .line 150
    const/4 v3, 0x3

    .line 151
    if-eq v1, v3, :cond_b

    .line 152
    .line 153
    if-eq v1, v4, :cond_a

    .line 154
    .line 155
    const/4 v3, 0x5

    .line 156
    if-ne v1, v3, :cond_9

    .line 157
    .line 158
    iget-wide v9, p0, LN0/b;->g:J

    .line 159
    .line 160
    const-wide/16 v11, 0x4

    .line 161
    .line 162
    cmp-long v1, v9, v11

    .line 163
    .line 164
    if-eqz v1, :cond_7

    .line 165
    .line 166
    cmp-long v1, v9, v7

    .line 167
    .line 168
    if-nez v1, :cond_6

    .line 169
    .line 170
    goto :goto_3

    .line 171
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    .line 172
    .line 173
    const-string v1, "Invalid float size: "

    .line 174
    .line 175
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    iget-wide v1, p0, LN0/b;->g:J

    .line 179
    .line 180
    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    invoke-static {p1, v0}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    throw p1

    .line 192
    :cond_7
    :goto_3
    iget-object v0, p0, LN0/b;->d:LN0/c;

    .line 193
    .line 194
    iget v1, p0, LN0/b;->f:I

    .line 195
    .line 196
    long-to-int v3, v9

    .line 197
    invoke-virtual {p0, p1, v3}, LN0/b;->a(Lv0/D;I)J

    .line 198
    .line 199
    .line 200
    move-result-wide v6

    .line 201
    if-ne v3, v4, :cond_8

    .line 202
    .line 203
    long-to-int p1, v6

    .line 204
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 205
    .line 206
    .line 207
    move-result p1

    .line 208
    float-to-double v3, p1

    .line 209
    goto :goto_4

    .line 210
    :cond_8
    invoke-static {v6, v7}, Ljava/lang/Double;->longBitsToDouble(J)D

    .line 211
    .line 212
    .line 213
    move-result-wide v3

    .line 214
    :goto_4
    check-cast v0, LN0/d;

    .line 215
    .line 216
    invoke-virtual {v0, v1, v3, v4}, LN0/d;->floatElement(ID)V

    .line 217
    .line 218
    .line 219
    iput v5, p0, LN0/b;->e:I

    .line 220
    .line 221
    return v2

    .line 222
    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    .line 223
    .line 224
    const-string v2, "Invalid element type "

    .line 225
    .line 226
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object p1

    .line 236
    invoke-static {p1, v0}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 237
    .line 238
    .line 239
    move-result-object p1

    .line 240
    throw p1

    .line 241
    :cond_a
    iget-object v0, p0, LN0/b;->d:LN0/c;

    .line 242
    .line 243
    iget v1, p0, LN0/b;->f:I

    .line 244
    .line 245
    iget-wide v3, p0, LN0/b;->g:J

    .line 246
    .line 247
    long-to-int v3, v3

    .line 248
    check-cast v0, LN0/d;

    .line 249
    .line 250
    invoke-virtual {v0, v1, v3, p1}, LN0/d;->binaryElement(IILv0/D;)V

    .line 251
    .line 252
    .line 253
    iput v5, p0, LN0/b;->e:I

    .line 254
    .line 255
    return v2

    .line 256
    :cond_b
    iget-wide v3, p0, LN0/b;->g:J

    .line 257
    .line 258
    const-wide/32 v6, 0x7fffffff

    .line 259
    .line 260
    .line 261
    cmp-long v1, v3, v6

    .line 262
    .line 263
    if-gtz v1, :cond_e

    .line 264
    .line 265
    iget-object v0, p0, LN0/b;->d:LN0/c;

    .line 266
    .line 267
    iget v1, p0, LN0/b;->f:I

    .line 268
    .line 269
    long-to-int v3, v3

    .line 270
    if-nez v3, :cond_c

    .line 271
    .line 272
    const-string p1, ""

    .line 273
    .line 274
    goto :goto_6

    .line 275
    :cond_c
    new-array v4, v3, [B

    .line 276
    .line 277
    invoke-interface {p1, v4, v5, v3}, Lv0/D;->readFully([BII)V

    .line 278
    .line 279
    .line 280
    :goto_5
    if-lez v3, :cond_d

    .line 281
    .line 282
    add-int/lit8 p1, v3, -0x1

    .line 283
    .line 284
    aget-byte p1, v4, p1

    .line 285
    .line 286
    if-nez p1, :cond_d

    .line 287
    .line 288
    add-int/lit8 v3, v3, -0x1

    .line 289
    .line 290
    goto :goto_5

    .line 291
    :cond_d
    new-instance p1, Ljava/lang/String;

    .line 292
    .line 293
    invoke-direct {p1, v4, v5, v3}, Ljava/lang/String;-><init>([BII)V

    .line 294
    .line 295
    .line 296
    :goto_6
    check-cast v0, LN0/d;

    .line 297
    .line 298
    invoke-virtual {v0, v1, p1}, LN0/d;->stringElement(ILjava/lang/String;)V

    .line 299
    .line 300
    .line 301
    iput v5, p0, LN0/b;->e:I

    .line 302
    .line 303
    return v2

    .line 304
    :cond_e
    new-instance p1, Ljava/lang/StringBuilder;

    .line 305
    .line 306
    const-string v1, "String element size: "

    .line 307
    .line 308
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 309
    .line 310
    .line 311
    iget-wide v1, p0, LN0/b;->g:J

    .line 312
    .line 313
    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object p1

    .line 320
    invoke-static {p1, v0}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 321
    .line 322
    .line 323
    move-result-object p1

    .line 324
    throw p1

    .line 325
    :cond_f
    iget-wide v3, p0, LN0/b;->g:J

    .line 326
    .line 327
    cmp-long v1, v3, v7

    .line 328
    .line 329
    if-gtz v1, :cond_10

    .line 330
    .line 331
    iget-object v0, p0, LN0/b;->d:LN0/c;

    .line 332
    .line 333
    iget v1, p0, LN0/b;->f:I

    .line 334
    .line 335
    long-to-int v3, v3

    .line 336
    invoke-virtual {p0, p1, v3}, LN0/b;->a(Lv0/D;I)J

    .line 337
    .line 338
    .line 339
    move-result-wide v3

    .line 340
    check-cast v0, LN0/d;

    .line 341
    .line 342
    invoke-virtual {v0, v1, v3, v4}, LN0/d;->integerElement(IJ)V

    .line 343
    .line 344
    .line 345
    iput v5, p0, LN0/b;->e:I

    .line 346
    .line 347
    return v2

    .line 348
    :cond_10
    new-instance p1, Ljava/lang/StringBuilder;

    .line 349
    .line 350
    const-string v1, "Invalid integer size: "

    .line 351
    .line 352
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 353
    .line 354
    .line 355
    iget-wide v1, p0, LN0/b;->g:J

    .line 356
    .line 357
    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 358
    .line 359
    .line 360
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object p1

    .line 364
    invoke-static {p1, v0}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 365
    .line 366
    .line 367
    move-result-object p1

    .line 368
    throw p1

    .line 369
    :cond_11
    invoke-interface {p1}, Lv0/D;->getPosition()J

    .line 370
    .line 371
    .line 372
    move-result-wide v8

    .line 373
    iget-wide v3, p0, LN0/b;->g:J

    .line 374
    .line 375
    add-long/2addr v3, v8

    .line 376
    new-instance p1, LN0/a;

    .line 377
    .line 378
    iget v1, p0, LN0/b;->f:I

    .line 379
    .line 380
    invoke-direct {p1, v1, v3, v4}, LN0/a;-><init>(IJ)V

    .line 381
    .line 382
    .line 383
    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 384
    .line 385
    .line 386
    iget-object p1, p0, LN0/b;->d:LN0/c;

    .line 387
    .line 388
    iget v7, p0, LN0/b;->f:I

    .line 389
    .line 390
    iget-wide v10, p0, LN0/b;->g:J

    .line 391
    .line 392
    move-object v6, p1

    .line 393
    check-cast v6, LN0/d;

    .line 394
    .line 395
    invoke-virtual/range {v6 .. v11}, LN0/d;->startMasterElement(IJJ)V

    .line 396
    .line 397
    .line 398
    iput v5, p0, LN0/b;->e:I

    .line 399
    .line 400
    return v2

    .line 401
    :cond_12
    iget-wide v0, p0, LN0/b;->g:J

    .line 402
    .line 403
    long-to-int v0, v0

    .line 404
    invoke-interface {p1, v0}, Lv0/D;->skipFully(I)V

    .line 405
    .line 406
    .line 407
    iput v5, p0, LN0/b;->e:I

    .line 408
    .line 409
    goto/16 :goto_0
.end method

.method public reset()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, LN0/b;->e:I

    .line 3
    .line 4
    iget-object v0, p0, LN0/b;->b:Ljava/util/ArrayDeque;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, LN0/b;->c:LN0/j;

    .line 10
    .line 11
    invoke-virtual {v0}, LN0/j;->reset()V

    .line 12
    .line 13
    .line 14
    return-void
.end method
