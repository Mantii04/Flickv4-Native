.class public final LA0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv0/C;


# instance fields
.field public final a:[B

.field public final b:Landroidx/media3/common/util/ParsableByteArray;

.field public final c:Z

.field public final d:Lv0/J;

.field public e:Lv0/F;

.field public f:Lv0/r0;

.field public g:I

.field public h:Landroidx/media3/common/Metadata;

.field public i:Lv0/P;

.field public j:I

.field public k:I

.field public l:LA0/c;

.field public m:I

.field public n:J


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x2a

    .line 5
    .line 6
    new-array v0, v0, [B

    .line 7
    .line 8
    iput-object v0, p0, LA0/d;->a:[B

    .line 9
    .line 10
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    .line 11
    .line 12
    const v1, 0x8000

    .line 13
    .line 14
    .line 15
    new-array v1, v1, [B

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-direct {v0, v1, v2}, Landroidx/media3/common/util/ParsableByteArray;-><init>([BI)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, LA0/d;->b:Landroidx/media3/common/util/ParsableByteArray;

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    and-int/2addr p1, v0

    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move v0, v2

    .line 29
    :goto_0
    iput-boolean v0, p0, LA0/d;->c:Z

    .line 30
    .line 31
    new-instance p1, Lv0/J;

    .line 32
    .line 33
    invoke-direct {p1}, Lv0/J;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object p1, p0, LA0/d;->d:Lv0/J;

    .line 37
    .line 38
    iput v2, p0, LA0/d;->g:I

    .line 39
    .line 40
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 11

    .line 1
    iget-wide v0, p0, LA0/d;->n:J

    .line 2
    .line 3
    const-wide/32 v2, 0xf4240

    .line 4
    .line 5
    .line 6
    mul-long/2addr v0, v2

    .line 7
    iget-object v2, p0, LA0/d;->i:Lv0/P;

    .line 8
    .line 9
    invoke-static {v2}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    check-cast v2, Lv0/P;

    .line 14
    .line 15
    iget v2, v2, Lv0/P;->e:I

    .line 16
    .line 17
    int-to-long v2, v2

    .line 18
    div-long v5, v0, v2

    .line 19
    .line 20
    iget-object v0, p0, LA0/d;->f:Lv0/r0;

    .line 21
    .line 22
    invoke-static {v0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    move-object v4, v0

    .line 27
    check-cast v4, Lv0/r0;

    .line 28
    .line 29
    iget v8, p0, LA0/d;->m:I

    .line 30
    .line 31
    const/4 v9, 0x0

    .line 32
    const/4 v10, 0x0

    .line 33
    const/4 v7, 0x1

    .line 34
    invoke-interface/range {v4 .. v10}, Lv0/r0;->sampleMetadata(JIIILv0/q0;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

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
    iput-object p1, p0, LA0/d;->e:Lv0/F;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x1

    .line 5
    invoke-interface {p1, v0, v1}, Lv0/F;->track(II)Lv0/r0;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, LA0/d;->f:Lv0/r0;

    .line 10
    .line 11
    invoke-interface {p1}, Lv0/F;->endTracks()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public read(Lv0/D;Lv0/c0;)I
    .locals 16
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
    iget v2, v0, LA0/d;->g:I

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    const/4 v4, 0x0

    .line 9
    if-eqz v2, :cond_17

    .line 10
    .line 11
    iget-object v5, v0, LA0/d;->a:[B

    .line 12
    .line 13
    const/4 v6, 0x2

    .line 14
    if-eq v2, v3, :cond_16

    .line 15
    .line 16
    const/4 v7, 0x3

    .line 17
    if-eq v2, v6, :cond_15

    .line 18
    .line 19
    const/4 v6, 0x4

    .line 20
    if-eq v2, v7, :cond_13

    .line 21
    .line 22
    const-wide/16 v7, -0x1

    .line 23
    .line 24
    const/4 v5, 0x5

    .line 25
    if-eq v2, v6, :cond_10

    .line 26
    .line 27
    if-ne v2, v5, :cond_f

    .line 28
    .line 29
    iget-object v2, v0, LA0/d;->f:Lv0/r0;

    .line 30
    .line 31
    invoke-static {v2}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    iget-object v2, v0, LA0/d;->i:Lv0/P;

    .line 35
    .line 36
    invoke-static {v2}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    iget-object v2, v0, LA0/d;->l:LA0/c;

    .line 40
    .line 41
    if-eqz v2, :cond_0

    .line 42
    .line 43
    invoke-virtual {v2}, Lv0/p;->isSeeking()Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_0

    .line 48
    .line 49
    iget-object v2, v0, LA0/d;->l:LA0/c;

    .line 50
    .line 51
    move-object/from16 v3, p2

    .line 52
    .line 53
    invoke-virtual {v2, v1, v3}, Lv0/p;->handlePendingSeek(Lv0/D;Lv0/c0;)I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    return v1

    .line 58
    :cond_0
    iget-wide v5, v0, LA0/d;->n:J

    .line 59
    .line 60
    cmp-long v2, v5, v7

    .line 61
    .line 62
    if-nez v2, :cond_1

    .line 63
    .line 64
    iget-object v2, v0, LA0/d;->i:Lv0/P;

    .line 65
    .line 66
    invoke-static {v1, v2}, Lv0/K;->getFirstSampleNumber(Lv0/D;Lv0/P;)J

    .line 67
    .line 68
    .line 69
    move-result-wide v1

    .line 70
    iput-wide v1, v0, LA0/d;->n:J

    .line 71
    .line 72
    return v4

    .line 73
    :cond_1
    iget-object v2, v0, LA0/d;->b:Landroidx/media3/common/util/ParsableByteArray;

    .line 74
    .line 75
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    const v6, 0x8000

    .line 80
    .line 81
    .line 82
    if-ge v5, v6, :cond_4

    .line 83
    .line 84
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 85
    .line 86
    .line 87
    move-result-object v9

    .line 88
    sub-int/2addr v6, v5

    .line 89
    invoke-interface {v1, v9, v5, v6}, Lv0/D;->read([BII)I

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    const/4 v6, -0x1

    .line 94
    if-ne v1, v6, :cond_2

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_2
    move v3, v4

    .line 98
    :goto_0
    if-nez v3, :cond_3

    .line 99
    .line 100
    add-int/2addr v5, v1

    .line 101
    invoke-virtual {v2, v5}, Landroidx/media3/common/util/ParsableByteArray;->setLimit(I)V

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_3
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    if-nez v1, :cond_5

    .line 110
    .line 111
    invoke-virtual {v0}, LA0/d;->a()V

    .line 112
    .line 113
    .line 114
    return v6

    .line 115
    :cond_4
    move v3, v4

    .line 116
    :cond_5
    :goto_1
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    iget v5, v0, LA0/d;->m:I

    .line 121
    .line 122
    iget v6, v0, LA0/d;->j:I

    .line 123
    .line 124
    if-ge v5, v6, :cond_6

    .line 125
    .line 126
    sub-int/2addr v6, v5

    .line 127
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 128
    .line 129
    .line 130
    move-result v5

    .line 131
    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    .line 132
    .line 133
    .line 134
    move-result v5

    .line 135
    invoke-virtual {v2, v5}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 136
    .line 137
    .line 138
    :cond_6
    iget-object v5, v0, LA0/d;->i:Lv0/P;

    .line 139
    .line 140
    invoke-static {v5}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    .line 144
    .line 145
    .line 146
    move-result v5

    .line 147
    :goto_2
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    .line 148
    .line 149
    .line 150
    move-result v6

    .line 151
    const/16 v9, 0x10

    .line 152
    .line 153
    sub-int/2addr v6, v9

    .line 154
    iget-object v10, v0, LA0/d;->d:Lv0/J;

    .line 155
    .line 156
    if-gt v5, v6, :cond_8

    .line 157
    .line 158
    invoke-virtual {v2, v5}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 159
    .line 160
    .line 161
    iget-object v6, v0, LA0/d;->i:Lv0/P;

    .line 162
    .line 163
    iget v11, v0, LA0/d;->k:I

    .line 164
    .line 165
    invoke-static {v2, v6, v11, v10}, Lv0/K;->checkAndReadFrameHeader(Landroidx/media3/common/util/ParsableByteArray;Lv0/P;ILv0/J;)Z

    .line 166
    .line 167
    .line 168
    move-result v6

    .line 169
    if-eqz v6, :cond_7

    .line 170
    .line 171
    invoke-virtual {v2, v5}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 172
    .line 173
    .line 174
    iget-wide v5, v10, Lv0/J;->a:J

    .line 175
    .line 176
    goto :goto_6

    .line 177
    :cond_7
    add-int/lit8 v5, v5, 0x1

    .line 178
    .line 179
    goto :goto_2

    .line 180
    :cond_8
    if-eqz v3, :cond_c

    .line 181
    .line 182
    :goto_3
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    .line 183
    .line 184
    .line 185
    move-result v3

    .line 186
    iget v6, v0, LA0/d;->j:I

    .line 187
    .line 188
    sub-int/2addr v3, v6

    .line 189
    if-gt v5, v3, :cond_b

    .line 190
    .line 191
    invoke-virtual {v2, v5}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 192
    .line 193
    .line 194
    :try_start_0
    iget-object v3, v0, LA0/d;->i:Lv0/P;

    .line 195
    .line 196
    iget v6, v0, LA0/d;->k:I

    .line 197
    .line 198
    invoke-static {v2, v3, v6, v10}, Lv0/K;->checkAndReadFrameHeader(Landroidx/media3/common/util/ParsableByteArray;Lv0/P;ILv0/J;)Z

    .line 199
    .line 200
    .line 201
    move-result v3
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    goto :goto_4

    .line 203
    :catch_0
    move v3, v4

    .line 204
    :goto_4
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    .line 205
    .line 206
    .line 207
    move-result v6

    .line 208
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    .line 209
    .line 210
    .line 211
    move-result v11

    .line 212
    if-le v6, v11, :cond_9

    .line 213
    .line 214
    move v3, v4

    .line 215
    :cond_9
    if-eqz v3, :cond_a

    .line 216
    .line 217
    invoke-virtual {v2, v5}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 218
    .line 219
    .line 220
    iget-wide v5, v10, Lv0/J;->a:J

    .line 221
    .line 222
    goto :goto_6

    .line 223
    :cond_a
    add-int/lit8 v5, v5, 0x1

    .line 224
    .line 225
    goto :goto_3

    .line 226
    :cond_b
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    .line 227
    .line 228
    .line 229
    move-result v3

    .line 230
    invoke-virtual {v2, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 231
    .line 232
    .line 233
    goto :goto_5

    .line 234
    :cond_c
    invoke-virtual {v2, v5}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 235
    .line 236
    .line 237
    :goto_5
    move-wide v5, v7

    .line 238
    :goto_6
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    .line 239
    .line 240
    .line 241
    move-result v3

    .line 242
    sub-int/2addr v3, v1

    .line 243
    invoke-virtual {v2, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 244
    .line 245
    .line 246
    iget-object v1, v0, LA0/d;->f:Lv0/r0;

    .line 247
    .line 248
    invoke-interface {v1, v2, v3}, Lv0/r0;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    .line 249
    .line 250
    .line 251
    iget v1, v0, LA0/d;->m:I

    .line 252
    .line 253
    add-int/2addr v1, v3

    .line 254
    iput v1, v0, LA0/d;->m:I

    .line 255
    .line 256
    cmp-long v1, v5, v7

    .line 257
    .line 258
    if-eqz v1, :cond_d

    .line 259
    .line 260
    invoke-virtual {v0}, LA0/d;->a()V

    .line 261
    .line 262
    .line 263
    iput v4, v0, LA0/d;->m:I

    .line 264
    .line 265
    iput-wide v5, v0, LA0/d;->n:J

    .line 266
    .line 267
    :cond_d
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 268
    .line 269
    .line 270
    move-result-object v1

    .line 271
    array-length v1, v1

    .line 272
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    .line 273
    .line 274
    .line 275
    move-result v3

    .line 276
    sub-int/2addr v1, v3

    .line 277
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 278
    .line 279
    .line 280
    move-result v3

    .line 281
    if-ge v3, v9, :cond_e

    .line 282
    .line 283
    if-ge v1, v9, :cond_e

    .line 284
    .line 285
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 286
    .line 287
    .line 288
    move-result v1

    .line 289
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 290
    .line 291
    .line 292
    move-result-object v3

    .line 293
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    .line 294
    .line 295
    .line 296
    move-result v5

    .line 297
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 298
    .line 299
    .line 300
    move-result-object v6

    .line 301
    invoke-static {v3, v5, v6, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v2, v4}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {v2, v1}, Landroidx/media3/common/util/ParsableByteArray;->setLimit(I)V

    .line 308
    .line 309
    .line 310
    :cond_e
    return v4

    .line 311
    :cond_f
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 312
    .line 313
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 314
    .line 315
    .line 316
    throw v1

    .line 317
    :cond_10
    invoke-static {v1}, Lv0/M;->getFrameStartMarker(Lv0/D;)I

    .line 318
    .line 319
    .line 320
    move-result v2

    .line 321
    iput v2, v0, LA0/d;->k:I

    .line 322
    .line 323
    iget-object v2, v0, LA0/d;->e:Lv0/F;

    .line 324
    .line 325
    invoke-static {v2}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    .line 327
    .line 328
    move-result-object v2

    .line 329
    check-cast v2, Lv0/F;

    .line 330
    .line 331
    invoke-interface {v1}, Lv0/D;->getPosition()J

    .line 332
    .line 333
    .line 334
    move-result-wide v12

    .line 335
    invoke-interface {v1}, Lv0/D;->getLength()J

    .line 336
    .line 337
    .line 338
    move-result-wide v14

    .line 339
    iget-object v1, v0, LA0/d;->i:Lv0/P;

    .line 340
    .line 341
    invoke-static {v1}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    .line 343
    .line 344
    iget-object v10, v0, LA0/d;->i:Lv0/P;

    .line 345
    .line 346
    iget-object v1, v10, Lv0/P;->k:Lv0/O;

    .line 347
    .line 348
    if-eqz v1, :cond_11

    .line 349
    .line 350
    iget-object v1, v1, Lv0/O;->a:[J

    .line 351
    .line 352
    array-length v1, v1

    .line 353
    if-lez v1, :cond_11

    .line 354
    .line 355
    new-instance v1, Lv0/N;

    .line 356
    .line 357
    invoke-direct {v1, v10, v12, v13}, Lv0/N;-><init>(Lv0/P;J)V

    .line 358
    .line 359
    .line 360
    goto :goto_7

    .line 361
    :cond_11
    cmp-long v1, v14, v7

    .line 362
    .line 363
    if-eqz v1, :cond_12

    .line 364
    .line 365
    iget-wide v6, v10, Lv0/P;->j:J

    .line 366
    .line 367
    const-wide/16 v8, 0x0

    .line 368
    .line 369
    cmp-long v1, v6, v8

    .line 370
    .line 371
    if-lez v1, :cond_12

    .line 372
    .line 373
    new-instance v9, LA0/c;

    .line 374
    .line 375
    iget v11, v0, LA0/d;->k:I

    .line 376
    .line 377
    invoke-direct/range {v9 .. v15}, LA0/c;-><init>(Lv0/P;IJJ)V

    .line 378
    .line 379
    .line 380
    iput-object v9, v0, LA0/d;->l:LA0/c;

    .line 381
    .line 382
    invoke-virtual {v9}, Lv0/p;->getSeekMap()Lv0/g0;

    .line 383
    .line 384
    .line 385
    move-result-object v1

    .line 386
    goto :goto_7

    .line 387
    :cond_12
    new-instance v1, Lv0/f0;

    .line 388
    .line 389
    invoke-virtual {v10}, Lv0/P;->getDurationUs()J

    .line 390
    .line 391
    .line 392
    move-result-wide v6

    .line 393
    invoke-direct {v1, v6, v7}, Lv0/f0;-><init>(J)V

    .line 394
    .line 395
    .line 396
    :goto_7
    invoke-interface {v2, v1}, Lv0/F;->seekMap(Lv0/g0;)V

    .line 397
    .line 398
    .line 399
    iput v5, v0, LA0/d;->g:I

    .line 400
    .line 401
    return v4

    .line 402
    :cond_13
    new-instance v2, Lv0/L;

    .line 403
    .line 404
    iget-object v3, v0, LA0/d;->i:Lv0/P;

    .line 405
    .line 406
    invoke-direct {v2, v3}, Lv0/L;-><init>(Lv0/P;)V

    .line 407
    .line 408
    .line 409
    move v3, v4

    .line 410
    :goto_8
    if-nez v3, :cond_14

    .line 411
    .line 412
    invoke-static {v1, v2}, Lv0/M;->readMetadataBlock(Lv0/D;Lv0/L;)Z

    .line 413
    .line 414
    .line 415
    move-result v3

    .line 416
    iget-object v7, v2, Lv0/L;->a:Lv0/P;

    .line 417
    .line 418
    invoke-static {v7}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    .line 420
    .line 421
    move-result-object v7

    .line 422
    check-cast v7, Lv0/P;

    .line 423
    .line 424
    iput-object v7, v0, LA0/d;->i:Lv0/P;

    .line 425
    .line 426
    goto :goto_8

    .line 427
    :cond_14
    iget-object v1, v0, LA0/d;->i:Lv0/P;

    .line 428
    .line 429
    invoke-static {v1}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    .line 431
    .line 432
    iget-object v1, v0, LA0/d;->i:Lv0/P;

    .line 433
    .line 434
    iget v1, v1, Lv0/P;->c:I

    .line 435
    .line 436
    const/4 v2, 0x6

    .line 437
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 438
    .line 439
    .line 440
    move-result v1

    .line 441
    iput v1, v0, LA0/d;->j:I

    .line 442
    .line 443
    iget-object v1, v0, LA0/d;->i:Lv0/P;

    .line 444
    .line 445
    iget-object v2, v0, LA0/d;->h:Landroidx/media3/common/Metadata;

    .line 446
    .line 447
    invoke-virtual {v1, v5, v2}, Lv0/P;->getFormat([BLandroidx/media3/common/Metadata;)Landroidx/media3/common/Format;

    .line 448
    .line 449
    .line 450
    move-result-object v1

    .line 451
    iget-object v2, v0, LA0/d;->f:Lv0/r0;

    .line 452
    .line 453
    invoke-static {v2}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    .line 455
    .line 456
    move-result-object v2

    .line 457
    check-cast v2, Lv0/r0;

    .line 458
    .line 459
    invoke-virtual {v1}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    .line 460
    .line 461
    .line 462
    move-result-object v1

    .line 463
    const-string v3, "audio/flac"

    .line 464
    .line 465
    invoke-virtual {v1, v3}, Landroidx/media3/common/Format$Builder;->setContainerMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 466
    .line 467
    .line 468
    move-result-object v1

    .line 469
    invoke-virtual {v1}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    .line 470
    .line 471
    .line 472
    move-result-object v1

    .line 473
    invoke-interface {v2, v1}, Lv0/r0;->format(Landroidx/media3/common/Format;)V

    .line 474
    .line 475
    .line 476
    iget-object v1, v0, LA0/d;->f:Lv0/r0;

    .line 477
    .line 478
    invoke-static {v1}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    .line 480
    .line 481
    move-result-object v1

    .line 482
    check-cast v1, Lv0/r0;

    .line 483
    .line 484
    iget-object v2, v0, LA0/d;->i:Lv0/P;

    .line 485
    .line 486
    invoke-virtual {v2}, Lv0/P;->getDurationUs()J

    .line 487
    .line 488
    .line 489
    move-result-wide v2

    .line 490
    invoke-interface {v1, v2, v3}, Lv0/r0;->durationUs(J)V

    .line 491
    .line 492
    .line 493
    iput v6, v0, LA0/d;->g:I

    .line 494
    .line 495
    return v4

    .line 496
    :cond_15
    invoke-static {v1}, Lv0/M;->readStreamMarker(Lv0/D;)V

    .line 497
    .line 498
    .line 499
    iput v7, v0, LA0/d;->g:I

    .line 500
    .line 501
    return v4

    .line 502
    :cond_16
    array-length v2, v5

    .line 503
    invoke-interface {v1, v5, v4, v2}, Lv0/D;->peekFully([BII)V

    .line 504
    .line 505
    .line 506
    invoke-interface {v1}, Lv0/D;->resetPeekPosition()V

    .line 507
    .line 508
    .line 509
    iput v6, v0, LA0/d;->g:I

    .line 510
    .line 511
    return v4

    .line 512
    :cond_17
    iget-boolean v2, v0, LA0/d;->c:Z

    .line 513
    .line 514
    xor-int/2addr v2, v3

    .line 515
    invoke-static {v1, v2}, Lv0/M;->readId3Metadata(Lv0/D;Z)Landroidx/media3/common/Metadata;

    .line 516
    .line 517
    .line 518
    move-result-object v1

    .line 519
    iput-object v1, v0, LA0/d;->h:Landroidx/media3/common/Metadata;

    .line 520
    .line 521
    iput v3, v0, LA0/d;->g:I

    .line 522
    .line 523
    return v4
.end method

.method public release()V
    .locals 0

    .line 1
    return-void
.end method

.method public seek(JJ)V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long p1, p1, v0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    iput p2, p0, LA0/d;->g:I

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object p1, p0, LA0/d;->l:LA0/c;

    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    invoke-virtual {p1, p3, p4}, Lv0/p;->setSeekTargetUs(J)V

    .line 16
    .line 17
    .line 18
    :cond_1
    :goto_0
    cmp-long p1, p3, v0

    .line 19
    .line 20
    if-nez p1, :cond_2

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_2
    const-wide/16 v0, -0x1

    .line 24
    .line 25
    :goto_1
    iput-wide v0, p0, LA0/d;->n:J

    .line 26
    .line 27
    iput p2, p0, LA0/d;->m:I

    .line 28
    .line 29
    iget-object p1, p0, LA0/d;->b:Landroidx/media3/common/util/ParsableByteArray;

    .line 30
    .line 31
    invoke-virtual {p1, p2}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public sniff(Lv0/D;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p1, v0}, Lv0/M;->peekId3Metadata(Lv0/D;Z)Landroidx/media3/common/Metadata;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lv0/M;->checkAndPeekStreamMarker(Lv0/D;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method
