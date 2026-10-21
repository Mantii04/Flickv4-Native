.class public final LQ0/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv0/C;


# instance fields
.field public a:Lv0/F;

.field public b:LQ0/l;

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a(Lv0/D;)Z
    .locals 5

    .line 1
    new-instance v0, LQ0/g;

    .line 2
    .line 3
    invoke-direct {v0}, LQ0/g;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, p1, v1}, LQ0/g;->populate(Lv0/D;Z)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x0

    .line 12
    if-eqz v2, :cond_3

    .line 13
    .line 14
    iget v2, v0, LQ0/g;->a:I

    .line 15
    .line 16
    const/4 v4, 0x2

    .line 17
    and-int/2addr v2, v4

    .line 18
    if-eq v2, v4, :cond_0

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    iget v0, v0, LQ0/g;->e:I

    .line 22
    .line 23
    const/16 v2, 0x8

    .line 24
    .line 25
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    new-instance v2, Landroidx/media3/common/util/ParsableByteArray;

    .line 30
    .line 31
    invoke-direct {v2, v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-interface {p1, v4, v3, v0}, Lv0/D;->peekFully([BII)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 42
    .line 43
    .line 44
    invoke-static {v2}, LQ0/d;->verifyBitstreamType(Landroidx/media3/common/util/ParsableByteArray;)Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-eqz p1, :cond_1

    .line 49
    .line 50
    new-instance p1, LQ0/d;

    .line 51
    .line 52
    invoke-direct {p1}, LQ0/l;-><init>()V

    .line 53
    .line 54
    .line 55
    iput-object p1, p0, LQ0/e;->b:LQ0/l;

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    invoke-virtual {v2, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 59
    .line 60
    .line 61
    invoke-static {v2}, LQ0/n;->verifyBitstreamType(Landroidx/media3/common/util/ParsableByteArray;)Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-eqz p1, :cond_2

    .line 66
    .line 67
    new-instance p1, LQ0/n;

    .line 68
    .line 69
    invoke-direct {p1}, LQ0/l;-><init>()V

    .line 70
    .line 71
    .line 72
    iput-object p1, p0, LQ0/e;->b:LQ0/l;

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    invoke-virtual {v2, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 76
    .line 77
    .line 78
    invoke-static {v2}, LQ0/i;->verifyBitstreamType(Landroidx/media3/common/util/ParsableByteArray;)Z

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    if-eqz p1, :cond_3

    .line 83
    .line 84
    new-instance p1, LQ0/i;

    .line 85
    .line 86
    invoke-direct {p1}, LQ0/l;-><init>()V

    .line 87
    .line 88
    .line 89
    iput-object p1, p0, LQ0/e;->b:LQ0/l;

    .line 90
    .line 91
    :goto_0
    return v1

    .line 92
    :cond_3
    :goto_1
    return v3
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
    .locals 0

    .line 1
    iput-object p1, p0, LQ0/e;->a:Lv0/F;

    .line 2
    .line 3
    return-void
.end method

.method public read(Lv0/D;Lv0/c0;)I
    .locals 26
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
    iget-object v2, v0, LQ0/e;->a:Lv0/F;

    .line 6
    .line 7
    invoke-static {v2}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    iget-object v2, v0, LQ0/e;->b:LQ0/l;

    .line 11
    .line 12
    if-nez v2, :cond_1

    .line 13
    .line 14
    invoke-virtual/range {p0 .. p1}, LQ0/e;->a(Lv0/D;)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    invoke-interface {v1}, Lv0/D;->resetPeekPosition()V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const-string v1, "Failed to determine bitstream type"

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    invoke-static {v1, v2}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    throw v1

    .line 32
    :cond_1
    :goto_0
    iget-boolean v2, v0, LQ0/e;->c:Z

    .line 33
    .line 34
    const/4 v3, 0x0

    .line 35
    const/4 v4, 0x1

    .line 36
    if-nez v2, :cond_2

    .line 37
    .line 38
    iget-object v2, v0, LQ0/e;->a:Lv0/F;

    .line 39
    .line 40
    invoke-interface {v2, v3, v4}, Lv0/F;->track(II)Lv0/r0;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    iget-object v5, v0, LQ0/e;->a:Lv0/F;

    .line 45
    .line 46
    invoke-interface {v5}, Lv0/F;->endTracks()V

    .line 47
    .line 48
    .line 49
    iget-object v5, v0, LQ0/e;->b:LQ0/l;

    .line 50
    .line 51
    iget-object v6, v0, LQ0/e;->a:Lv0/F;

    .line 52
    .line 53
    iput-object v6, v5, LQ0/l;->c:Lv0/F;

    .line 54
    .line 55
    iput-object v2, v5, LQ0/l;->b:Lv0/r0;

    .line 56
    .line 57
    invoke-virtual {v5, v4}, LQ0/l;->reset(Z)V

    .line 58
    .line 59
    .line 60
    iput-boolean v4, v0, LQ0/e;->c:Z

    .line 61
    .line 62
    :cond_2
    iget-object v8, v0, LQ0/e;->b:LQ0/l;

    .line 63
    .line 64
    iget-object v2, v8, LQ0/l;->b:Lv0/r0;

    .line 65
    .line 66
    invoke-static {v2}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    iget-object v2, v8, LQ0/l;->c:Lv0/F;

    .line 70
    .line 71
    invoke-static {v2}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    iget v2, v8, LQ0/l;->h:I

    .line 75
    .line 76
    iget-object v5, v8, LQ0/l;->a:LQ0/f;

    .line 77
    .line 78
    const-wide/16 v6, -0x1

    .line 79
    .line 80
    const/4 v9, -0x1

    .line 81
    const/4 v10, 0x3

    .line 82
    const/4 v11, 0x2

    .line 83
    if-eqz v2, :cond_c

    .line 84
    .line 85
    if-eq v2, v4, :cond_b

    .line 86
    .line 87
    if-eq v2, v11, :cond_4

    .line 88
    .line 89
    if-ne v2, v10, :cond_3

    .line 90
    .line 91
    return v9

    .line 92
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 93
    .line 94
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 95
    .line 96
    .line 97
    throw v1

    .line 98
    :cond_4
    iget-object v2, v8, LQ0/l;->d:LQ0/h;

    .line 99
    .line 100
    invoke-static {v2}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    iget-object v2, v8, LQ0/l;->d:LQ0/h;

    .line 104
    .line 105
    invoke-interface {v2, v1}, LQ0/h;->read(Lv0/D;)J

    .line 106
    .line 107
    .line 108
    move-result-wide v11

    .line 109
    const-wide/16 v13, 0x0

    .line 110
    .line 111
    cmp-long v2, v11, v13

    .line 112
    .line 113
    if-ltz v2, :cond_5

    .line 114
    .line 115
    move-object/from16 v2, p2

    .line 116
    .line 117
    iput-wide v11, v2, Lv0/c0;->a:J

    .line 118
    .line 119
    return v4

    .line 120
    :cond_5
    cmp-long v2, v11, v6

    .line 121
    .line 122
    if-gez v2, :cond_6

    .line 123
    .line 124
    const-wide/16 v15, 0x2

    .line 125
    .line 126
    add-long/2addr v11, v15

    .line 127
    neg-long v11, v11

    .line 128
    invoke-virtual {v8, v11, v12}, LQ0/l;->onSeekEnd(J)V

    .line 129
    .line 130
    .line 131
    :cond_6
    iget-boolean v2, v8, LQ0/l;->l:Z

    .line 132
    .line 133
    if-nez v2, :cond_7

    .line 134
    .line 135
    iget-object v2, v8, LQ0/l;->d:LQ0/h;

    .line 136
    .line 137
    invoke-interface {v2}, LQ0/h;->createSeekMap()Lv0/g0;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    invoke-static {v2}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    check-cast v2, Lv0/g0;

    .line 146
    .line 147
    iget-object v11, v8, LQ0/l;->c:Lv0/F;

    .line 148
    .line 149
    invoke-interface {v11, v2}, Lv0/F;->seekMap(Lv0/g0;)V

    .line 150
    .line 151
    .line 152
    iget-object v11, v8, LQ0/l;->b:Lv0/r0;

    .line 153
    .line 154
    invoke-interface {v2}, Lv0/g0;->getDurationUs()J

    .line 155
    .line 156
    .line 157
    move-result-wide v6

    .line 158
    invoke-interface {v11, v6, v7}, Lv0/r0;->durationUs(J)V

    .line 159
    .line 160
    .line 161
    iput-boolean v4, v8, LQ0/l;->l:Z

    .line 162
    .line 163
    :cond_7
    iget-wide v6, v8, LQ0/l;->k:J

    .line 164
    .line 165
    cmp-long v2, v6, v13

    .line 166
    .line 167
    if-gtz v2, :cond_9

    .line 168
    .line 169
    invoke-virtual {v5, v1}, LQ0/f;->populate(Lv0/D;)Z

    .line 170
    .line 171
    .line 172
    move-result v1

    .line 173
    if-eqz v1, :cond_8

    .line 174
    .line 175
    goto :goto_1

    .line 176
    :cond_8
    iput v10, v8, LQ0/l;->h:I

    .line 177
    .line 178
    return v9

    .line 179
    :cond_9
    :goto_1
    iput-wide v13, v8, LQ0/l;->k:J

    .line 180
    .line 181
    invoke-virtual {v5}, LQ0/f;->getPayload()Landroidx/media3/common/util/ParsableByteArray;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    invoke-virtual {v8, v1}, LQ0/l;->preparePayload(Landroidx/media3/common/util/ParsableByteArray;)J

    .line 186
    .line 187
    .line 188
    move-result-wide v4

    .line 189
    cmp-long v2, v4, v13

    .line 190
    .line 191
    if-ltz v2, :cond_a

    .line 192
    .line 193
    iget-wide v6, v8, LQ0/l;->g:J

    .line 194
    .line 195
    add-long v9, v6, v4

    .line 196
    .line 197
    iget-wide v11, v8, LQ0/l;->e:J

    .line 198
    .line 199
    cmp-long v2, v9, v11

    .line 200
    .line 201
    if-ltz v2, :cond_a

    .line 202
    .line 203
    invoke-virtual {v8, v6, v7}, LQ0/l;->convertGranuleToTime(J)J

    .line 204
    .line 205
    .line 206
    move-result-wide v18

    .line 207
    iget-object v2, v8, LQ0/l;->b:Lv0/r0;

    .line 208
    .line 209
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    .line 210
    .line 211
    .line 212
    move-result v6

    .line 213
    invoke-interface {v2, v1, v6}, Lv0/r0;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    .line 214
    .line 215
    .line 216
    iget-object v2, v8, LQ0/l;->b:Lv0/r0;

    .line 217
    .line 218
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    .line 219
    .line 220
    .line 221
    move-result v21

    .line 222
    const/16 v22, 0x0

    .line 223
    .line 224
    const/16 v23, 0x0

    .line 225
    .line 226
    const/16 v20, 0x1

    .line 227
    .line 228
    move-object/from16 v17, v2

    .line 229
    .line 230
    invoke-interface/range {v17 .. v23}, Lv0/r0;->sampleMetadata(JIIILv0/q0;)V

    .line 231
    .line 232
    .line 233
    const-wide/16 v1, -0x1

    .line 234
    .line 235
    iput-wide v1, v8, LQ0/l;->e:J

    .line 236
    .line 237
    :cond_a
    iget-wide v1, v8, LQ0/l;->g:J

    .line 238
    .line 239
    add-long/2addr v1, v4

    .line 240
    iput-wide v1, v8, LQ0/l;->g:J

    .line 241
    .line 242
    return v3

    .line 243
    :cond_b
    iget-wide v4, v8, LQ0/l;->f:J

    .line 244
    .line 245
    long-to-int v2, v4

    .line 246
    invoke-interface {v1, v2}, Lv0/D;->skipFully(I)V

    .line 247
    .line 248
    .line 249
    iput v11, v8, LQ0/l;->h:I

    .line 250
    .line 251
    return v3

    .line 252
    :cond_c
    :goto_2
    invoke-virtual {v5, v1}, LQ0/f;->populate(Lv0/D;)Z

    .line 253
    .line 254
    .line 255
    move-result v2

    .line 256
    if-nez v2, :cond_d

    .line 257
    .line 258
    iput v10, v8, LQ0/l;->h:I

    .line 259
    .line 260
    return v9

    .line 261
    :cond_d
    invoke-interface {v1}, Lv0/D;->getPosition()J

    .line 262
    .line 263
    .line 264
    move-result-wide v6

    .line 265
    iget-wide v12, v8, LQ0/l;->f:J

    .line 266
    .line 267
    sub-long/2addr v6, v12

    .line 268
    iput-wide v6, v8, LQ0/l;->k:J

    .line 269
    .line 270
    invoke-virtual {v5}, LQ0/f;->getPayload()Landroidx/media3/common/util/ParsableByteArray;

    .line 271
    .line 272
    .line 273
    move-result-object v2

    .line 274
    iget-wide v6, v8, LQ0/l;->f:J

    .line 275
    .line 276
    iget-object v12, v8, LQ0/l;->j:LQ0/j;

    .line 277
    .line 278
    invoke-virtual {v8, v2, v6, v7, v12}, LQ0/l;->readHeaders(Landroidx/media3/common/util/ParsableByteArray;JLQ0/j;)Z

    .line 279
    .line 280
    .line 281
    move-result v2

    .line 282
    if-eqz v2, :cond_e

    .line 283
    .line 284
    invoke-interface {v1}, Lv0/D;->getPosition()J

    .line 285
    .line 286
    .line 287
    move-result-wide v6

    .line 288
    iput-wide v6, v8, LQ0/l;->f:J

    .line 289
    .line 290
    goto :goto_2

    .line 291
    :cond_e
    iget-object v2, v8, LQ0/l;->j:LQ0/j;

    .line 292
    .line 293
    iget-object v2, v2, LQ0/j;->a:Landroidx/media3/common/Format;

    .line 294
    .line 295
    iget v6, v2, Landroidx/media3/common/Format;->sampleRate:I

    .line 296
    .line 297
    iput v6, v8, LQ0/l;->i:I

    .line 298
    .line 299
    iget-boolean v6, v8, LQ0/l;->m:Z

    .line 300
    .line 301
    if-nez v6, :cond_f

    .line 302
    .line 303
    iget-object v6, v8, LQ0/l;->b:Lv0/r0;

    .line 304
    .line 305
    invoke-interface {v6, v2}, Lv0/r0;->format(Landroidx/media3/common/Format;)V

    .line 306
    .line 307
    .line 308
    iput-boolean v4, v8, LQ0/l;->m:Z

    .line 309
    .line 310
    :cond_f
    iget-object v2, v8, LQ0/l;->j:LQ0/j;

    .line 311
    .line 312
    iget-object v2, v2, LQ0/j;->b:LQ0/c;

    .line 313
    .line 314
    if-eqz v2, :cond_10

    .line 315
    .line 316
    iput-object v2, v8, LQ0/l;->d:LQ0/h;

    .line 317
    .line 318
    :goto_3
    move v1, v11

    .line 319
    goto :goto_5

    .line 320
    :cond_10
    invoke-interface {v1}, Lv0/D;->getLength()J

    .line 321
    .line 322
    .line 323
    move-result-wide v6

    .line 324
    const-wide/16 v15, -0x1

    .line 325
    .line 326
    cmp-long v2, v6, v15

    .line 327
    .line 328
    if-nez v2, :cond_11

    .line 329
    .line 330
    new-instance v1, LQ0/k;

    .line 331
    .line 332
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 333
    .line 334
    .line 335
    iput-object v1, v8, LQ0/l;->d:LQ0/h;

    .line 336
    .line 337
    goto :goto_3

    .line 338
    :cond_11
    invoke-virtual {v5}, LQ0/f;->getPageHeader()LQ0/g;

    .line 339
    .line 340
    .line 341
    move-result-object v2

    .line 342
    iget v6, v2, LQ0/g;->a:I

    .line 343
    .line 344
    and-int/lit8 v6, v6, 0x4

    .line 345
    .line 346
    if-eqz v6, :cond_12

    .line 347
    .line 348
    move/from16 v17, v4

    .line 349
    .line 350
    goto :goto_4

    .line 351
    :cond_12
    move/from16 v17, v3

    .line 352
    .line 353
    :goto_4
    new-instance v7, LQ0/b;

    .line 354
    .line 355
    iget-wide v9, v8, LQ0/l;->f:J

    .line 356
    .line 357
    invoke-interface {v1}, Lv0/D;->getLength()J

    .line 358
    .line 359
    .line 360
    move-result-wide v12

    .line 361
    iget v1, v2, LQ0/g;->d:I

    .line 362
    .line 363
    iget v4, v2, LQ0/g;->e:I

    .line 364
    .line 365
    add-int/2addr v1, v4

    .line 366
    int-to-long v14, v1

    .line 367
    iget-wide v1, v2, LQ0/g;->b:J

    .line 368
    .line 369
    move-wide/from16 v24, v1

    .line 370
    .line 371
    move v1, v11

    .line 372
    move-wide v11, v12

    .line 373
    move-wide v13, v14

    .line 374
    move-wide/from16 v15, v24

    .line 375
    .line 376
    invoke-direct/range {v7 .. v17}, LQ0/b;-><init>(LQ0/l;JJJJZ)V

    .line 377
    .line 378
    .line 379
    iput-object v7, v8, LQ0/l;->d:LQ0/h;

    .line 380
    .line 381
    :goto_5
    iput v1, v8, LQ0/l;->h:I

    .line 382
    .line 383
    invoke-virtual {v5}, LQ0/f;->trimPayload()V

    .line 384
    .line 385
    .line 386
    return v3
.end method

.method public release()V
    .locals 0

    .line 1
    return-void
.end method

.method public seek(JJ)V
    .locals 3

    .line 1
    iget-object v0, p0, LQ0/e;->b:LQ0/l;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, v0, LQ0/l;->a:LQ0/f;

    .line 6
    .line 7
    invoke-virtual {v1}, LQ0/f;->reset()V

    .line 8
    .line 9
    .line 10
    const-wide/16 v1, 0x0

    .line 11
    .line 12
    cmp-long p1, p1, v1

    .line 13
    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    iget-boolean p1, v0, LQ0/l;->l:Z

    .line 17
    .line 18
    xor-int/lit8 p1, p1, 0x1

    .line 19
    .line 20
    invoke-virtual {v0, p1}, LQ0/l;->reset(Z)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    iget p1, v0, LQ0/l;->h:I

    .line 25
    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    invoke-virtual {v0, p3, p4}, LQ0/l;->convertTimeToGranule(J)J

    .line 29
    .line 30
    .line 31
    move-result-wide p1

    .line 32
    iput-wide p1, v0, LQ0/l;->e:J

    .line 33
    .line 34
    iget-object p1, v0, LQ0/l;->d:LQ0/h;

    .line 35
    .line 36
    invoke-static {p1}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    check-cast p1, LQ0/h;

    .line 41
    .line 42
    iget-wide p2, v0, LQ0/l;->e:J

    .line 43
    .line 44
    invoke-interface {p1, p2, p3}, LQ0/h;->startSeek(J)V

    .line 45
    .line 46
    .line 47
    const/4 p1, 0x2

    .line 48
    iput p1, v0, LQ0/l;->h:I

    .line 49
    .line 50
    :cond_1
    return-void
.end method

.method public sniff(Lv0/D;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, LQ0/e;->a(Lv0/D;)Z

    .line 2
    .line 3
    .line 4
    move-result p1
    :try_end_0
    .catch Landroidx/media3/common/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return p1

    .line 6
    :catch_0
    const/4 p1, 0x0

    .line 7
    return p1
.end method
