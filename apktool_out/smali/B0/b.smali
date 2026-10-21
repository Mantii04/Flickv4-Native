.class public final LB0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv0/C;


# instance fields
.field public final a:Landroidx/media3/common/util/ParsableByteArray;

.field public final b:Landroidx/media3/common/util/ParsableByteArray;

.field public final c:Landroidx/media3/common/util/ParsableByteArray;

.field public final d:Landroidx/media3/common/util/ParsableByteArray;

.field public final e:LB0/c;

.field public f:Lv0/F;

.field public g:I

.field public h:Z

.field public i:J

.field public j:I

.field public k:I

.field public l:I

.field public m:J

.field public n:Z

.field public o:LB0/a;

.field public p:LB0/e;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    .line 5
    .line 6
    const/4 v1, 0x4

    .line 7
    invoke-direct {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, LB0/b;->a:Landroidx/media3/common/util/ParsableByteArray;

    .line 11
    .line 12
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    .line 13
    .line 14
    const/16 v1, 0x9

    .line 15
    .line 16
    invoke-direct {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, LB0/b;->b:Landroidx/media3/common/util/ParsableByteArray;

    .line 20
    .line 21
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    .line 22
    .line 23
    const/16 v1, 0xb

    .line 24
    .line 25
    invoke-direct {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, LB0/b;->c:Landroidx/media3/common/util/ParsableByteArray;

    .line 29
    .line 30
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    .line 31
    .line 32
    invoke-direct {v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, LB0/b;->d:Landroidx/media3/common/util/ParsableByteArray;

    .line 36
    .line 37
    new-instance v0, LB0/c;

    .line 38
    .line 39
    invoke-direct {v0}, LB0/c;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, LB0/b;->e:LB0/c;

    .line 43
    .line 44
    const/4 v0, 0x1

    .line 45
    iput v0, p0, LB0/b;->g:I

    .line 46
    .line 47
    return-void
.end method


# virtual methods
.method public final a(Lv0/D;)Landroidx/media3/common/util/ParsableByteArray;
    .locals 4

    .line 1
    iget v0, p0, LB0/b;->l:I

    .line 2
    .line 3
    iget-object v1, p0, LB0/b;->d:Landroidx/media3/common/util/ParsableByteArray;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->capacity()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x0

    .line 10
    if-le v0, v2, :cond_0

    .line 11
    .line 12
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->capacity()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    mul-int/lit8 v0, v0, 0x2

    .line 17
    .line 18
    iget v2, p0, LB0/b;->l:I

    .line 19
    .line 20
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    new-array v0, v0, [B

    .line 25
    .line 26
    invoke-virtual {v1, v0, v3}, Landroidx/media3/common/util/ParsableByteArray;->reset([BI)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {v1, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 31
    .line 32
    .line 33
    :goto_0
    iget v0, p0, LB0/b;->l:I

    .line 34
    .line 35
    invoke-virtual {v1, v0}, Landroidx/media3/common/util/ParsableByteArray;->setLimit(I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iget v2, p0, LB0/b;->l:I

    .line 43
    .line 44
    invoke-interface {p1, v0, v3, v2}, Lv0/D;->readFully([BII)V

    .line 45
    .line 46
    .line 47
    return-object v1
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
    iput-object p1, p0, LB0/b;->f:Lv0/F;

    .line 2
    .line 3
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
    iget-object v2, v0, LB0/b;->f:Lv0/F;

    .line 6
    .line 7
    invoke-static {v2}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    :cond_0
    :goto_0
    iget v2, v0, LB0/b;->g:I

    .line 11
    .line 12
    const/4 v3, 0x4

    .line 13
    const/4 v4, 0x1

    .line 14
    const/16 v5, 0x9

    .line 15
    .line 16
    const/16 v6, 0x8

    .line 17
    .line 18
    const/4 v7, 0x2

    .line 19
    const/4 v8, 0x0

    .line 20
    if-eq v2, v4, :cond_f

    .line 21
    .line 22
    const/4 v9, 0x3

    .line 23
    if-eq v2, v7, :cond_e

    .line 24
    .line 25
    if-eq v2, v9, :cond_c

    .line 26
    .line 27
    if-ne v2, v3, :cond_b

    .line 28
    .line 29
    iget-boolean v2, v0, LB0/b;->h:Z

    .line 30
    .line 31
    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    iget-object v13, v0, LB0/b;->e:LB0/c;

    .line 37
    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    iget-wide v14, v0, LB0/b;->i:J

    .line 41
    .line 42
    iget-wide v11, v0, LB0/b;->m:J

    .line 43
    .line 44
    add-long/2addr v14, v11

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    invoke-virtual {v13}, LB0/c;->getDurationUs()J

    .line 47
    .line 48
    .line 49
    move-result-wide v11

    .line 50
    cmp-long v2, v11, v9

    .line 51
    .line 52
    if-nez v2, :cond_2

    .line 53
    .line 54
    const-wide/16 v14, 0x0

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_2
    iget-wide v14, v0, LB0/b;->m:J

    .line 58
    .line 59
    :goto_1
    iget v2, v0, LB0/b;->k:I

    .line 60
    .line 61
    if-ne v2, v6, :cond_5

    .line 62
    .line 63
    iget-object v6, v0, LB0/b;->o:LB0/a;

    .line 64
    .line 65
    if-eqz v6, :cond_5

    .line 66
    .line 67
    iget-boolean v2, v0, LB0/b;->n:Z

    .line 68
    .line 69
    if-nez v2, :cond_3

    .line 70
    .line 71
    iget-object v2, v0, LB0/b;->f:Lv0/F;

    .line 72
    .line 73
    new-instance v5, Lv0/f0;

    .line 74
    .line 75
    invoke-direct {v5, v9, v10}, Lv0/f0;-><init>(J)V

    .line 76
    .line 77
    .line 78
    invoke-interface {v2, v5}, Lv0/F;->seekMap(Lv0/g0;)V

    .line 79
    .line 80
    .line 81
    iput-boolean v4, v0, LB0/b;->n:Z

    .line 82
    .line 83
    :cond_3
    iget-object v2, v0, LB0/b;->o:LB0/a;

    .line 84
    .line 85
    invoke-virtual/range {p0 .. p1}, LB0/b;->a(Lv0/D;)Landroidx/media3/common/util/ParsableByteArray;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    invoke-virtual {v2, v5, v14, v15}, LB0/d;->consume(Landroidx/media3/common/util/ParsableByteArray;J)Z

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    :cond_4
    :goto_2
    move v5, v4

    .line 94
    goto :goto_3

    .line 95
    :cond_5
    if-ne v2, v5, :cond_7

    .line 96
    .line 97
    iget-object v5, v0, LB0/b;->p:LB0/e;

    .line 98
    .line 99
    if-eqz v5, :cond_7

    .line 100
    .line 101
    iget-boolean v2, v0, LB0/b;->n:Z

    .line 102
    .line 103
    if-nez v2, :cond_6

    .line 104
    .line 105
    iget-object v2, v0, LB0/b;->f:Lv0/F;

    .line 106
    .line 107
    new-instance v5, Lv0/f0;

    .line 108
    .line 109
    invoke-direct {v5, v9, v10}, Lv0/f0;-><init>(J)V

    .line 110
    .line 111
    .line 112
    invoke-interface {v2, v5}, Lv0/F;->seekMap(Lv0/g0;)V

    .line 113
    .line 114
    .line 115
    iput-boolean v4, v0, LB0/b;->n:Z

    .line 116
    .line 117
    :cond_6
    iget-object v2, v0, LB0/b;->p:LB0/e;

    .line 118
    .line 119
    invoke-virtual/range {p0 .. p1}, LB0/b;->a(Lv0/D;)Landroidx/media3/common/util/ParsableByteArray;

    .line 120
    .line 121
    .line 122
    move-result-object v5

    .line 123
    invoke-virtual {v2, v5, v14, v15}, LB0/d;->consume(Landroidx/media3/common/util/ParsableByteArray;J)Z

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    goto :goto_2

    .line 128
    :cond_7
    const/16 v5, 0x12

    .line 129
    .line 130
    if-ne v2, v5, :cond_8

    .line 131
    .line 132
    iget-boolean v2, v0, LB0/b;->n:Z

    .line 133
    .line 134
    if-nez v2, :cond_8

    .line 135
    .line 136
    invoke-virtual/range {p0 .. p1}, LB0/b;->a(Lv0/D;)Landroidx/media3/common/util/ParsableByteArray;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    invoke-virtual {v13, v2, v14, v15}, LB0/d;->consume(Landroidx/media3/common/util/ParsableByteArray;J)Z

    .line 141
    .line 142
    .line 143
    move-result v2

    .line 144
    invoke-virtual {v13}, LB0/c;->getDurationUs()J

    .line 145
    .line 146
    .line 147
    move-result-wide v5

    .line 148
    cmp-long v11, v5, v9

    .line 149
    .line 150
    if-eqz v11, :cond_4

    .line 151
    .line 152
    iget-object v11, v0, LB0/b;->f:Lv0/F;

    .line 153
    .line 154
    new-instance v12, Lv0/X;

    .line 155
    .line 156
    invoke-virtual {v13}, LB0/c;->getKeyFrameTagPositions()[J

    .line 157
    .line 158
    .line 159
    move-result-object v14

    .line 160
    invoke-virtual {v13}, LB0/c;->getKeyFrameTimesUs()[J

    .line 161
    .line 162
    .line 163
    move-result-object v15

    .line 164
    invoke-direct {v12, v14, v15, v5, v6}, Lv0/X;-><init>([J[JJ)V

    .line 165
    .line 166
    .line 167
    invoke-interface {v11, v12}, Lv0/F;->seekMap(Lv0/g0;)V

    .line 168
    .line 169
    .line 170
    iput-boolean v4, v0, LB0/b;->n:Z

    .line 171
    .line 172
    goto :goto_2

    .line 173
    :cond_8
    iget v2, v0, LB0/b;->l:I

    .line 174
    .line 175
    invoke-interface {v1, v2}, Lv0/D;->skipFully(I)V

    .line 176
    .line 177
    .line 178
    move v2, v8

    .line 179
    move v5, v2

    .line 180
    :goto_3
    iget-boolean v6, v0, LB0/b;->h:Z

    .line 181
    .line 182
    if-nez v6, :cond_a

    .line 183
    .line 184
    if-eqz v2, :cond_a

    .line 185
    .line 186
    iput-boolean v4, v0, LB0/b;->h:Z

    .line 187
    .line 188
    invoke-virtual {v13}, LB0/c;->getDurationUs()J

    .line 189
    .line 190
    .line 191
    move-result-wide v11

    .line 192
    cmp-long v2, v11, v9

    .line 193
    .line 194
    if-nez v2, :cond_9

    .line 195
    .line 196
    iget-wide v9, v0, LB0/b;->m:J

    .line 197
    .line 198
    neg-long v11, v9

    .line 199
    goto :goto_4

    .line 200
    :cond_9
    const-wide/16 v11, 0x0

    .line 201
    .line 202
    :goto_4
    iput-wide v11, v0, LB0/b;->i:J

    .line 203
    .line 204
    :cond_a
    iput v3, v0, LB0/b;->j:I

    .line 205
    .line 206
    iput v7, v0, LB0/b;->g:I

    .line 207
    .line 208
    if-eqz v5, :cond_0

    .line 209
    .line 210
    return v8

    .line 211
    :cond_b
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 212
    .line 213
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 214
    .line 215
    .line 216
    throw v1

    .line 217
    :cond_c
    iget-object v2, v0, LB0/b;->c:Landroidx/media3/common/util/ParsableByteArray;

    .line 218
    .line 219
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 220
    .line 221
    .line 222
    move-result-object v5

    .line 223
    const/16 v6, 0xb

    .line 224
    .line 225
    invoke-interface {v1, v5, v8, v6, v4}, Lv0/D;->readFully([BIIZ)Z

    .line 226
    .line 227
    .line 228
    move-result v4

    .line 229
    if-nez v4, :cond_d

    .line 230
    .line 231
    goto :goto_5

    .line 232
    :cond_d
    invoke-virtual {v2, v8}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 236
    .line 237
    .line 238
    move-result v4

    .line 239
    iput v4, v0, LB0/b;->k:I

    .line 240
    .line 241
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt24()I

    .line 242
    .line 243
    .line 244
    move-result v4

    .line 245
    iput v4, v0, LB0/b;->l:I

    .line 246
    .line 247
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt24()I

    .line 248
    .line 249
    .line 250
    move-result v4

    .line 251
    int-to-long v4, v4

    .line 252
    iput-wide v4, v0, LB0/b;->m:J

    .line 253
    .line 254
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 255
    .line 256
    .line 257
    move-result v4

    .line 258
    shl-int/lit8 v4, v4, 0x18

    .line 259
    .line 260
    int-to-long v4, v4

    .line 261
    iget-wide v6, v0, LB0/b;->m:J

    .line 262
    .line 263
    or-long/2addr v4, v6

    .line 264
    const-wide/16 v6, 0x3e8

    .line 265
    .line 266
    mul-long/2addr v4, v6

    .line 267
    iput-wide v4, v0, LB0/b;->m:J

    .line 268
    .line 269
    invoke-virtual {v2, v9}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 270
    .line 271
    .line 272
    iput v3, v0, LB0/b;->g:I

    .line 273
    .line 274
    goto/16 :goto_0

    .line 275
    .line 276
    :cond_e
    iget v2, v0, LB0/b;->j:I

    .line 277
    .line 278
    invoke-interface {v1, v2}, Lv0/D;->skipFully(I)V

    .line 279
    .line 280
    .line 281
    iput v8, v0, LB0/b;->j:I

    .line 282
    .line 283
    iput v9, v0, LB0/b;->g:I

    .line 284
    .line 285
    goto/16 :goto_0

    .line 286
    .line 287
    :cond_f
    iget-object v2, v0, LB0/b;->b:Landroidx/media3/common/util/ParsableByteArray;

    .line 288
    .line 289
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 290
    .line 291
    .line 292
    move-result-object v9

    .line 293
    invoke-interface {v1, v9, v8, v5, v4}, Lv0/D;->readFully([BIIZ)Z

    .line 294
    .line 295
    .line 296
    move-result v9

    .line 297
    if-nez v9, :cond_10

    .line 298
    .line 299
    :goto_5
    const/4 v1, -0x1

    .line 300
    return v1

    .line 301
    :cond_10
    invoke-virtual {v2, v8}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v2, v3}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 308
    .line 309
    .line 310
    move-result v3

    .line 311
    and-int/lit8 v9, v3, 0x4

    .line 312
    .line 313
    if-eqz v9, :cond_11

    .line 314
    .line 315
    move v9, v4

    .line 316
    goto :goto_6

    .line 317
    :cond_11
    move v9, v8

    .line 318
    :goto_6
    and-int/lit8 v3, v3, 0x1

    .line 319
    .line 320
    if-eqz v3, :cond_12

    .line 321
    .line 322
    move v8, v4

    .line 323
    :cond_12
    if-eqz v9, :cond_13

    .line 324
    .line 325
    iget-object v3, v0, LB0/b;->o:LB0/a;

    .line 326
    .line 327
    if-nez v3, :cond_13

    .line 328
    .line 329
    new-instance v3, LB0/a;

    .line 330
    .line 331
    iget-object v9, v0, LB0/b;->f:Lv0/F;

    .line 332
    .line 333
    invoke-interface {v9, v6, v4}, Lv0/F;->track(II)Lv0/r0;

    .line 334
    .line 335
    .line 336
    move-result-object v4

    .line 337
    invoke-direct {v3, v4}, LB0/a;-><init>(Lv0/r0;)V

    .line 338
    .line 339
    .line 340
    iput-object v3, v0, LB0/b;->o:LB0/a;

    .line 341
    .line 342
    :cond_13
    if-eqz v8, :cond_14

    .line 343
    .line 344
    iget-object v3, v0, LB0/b;->p:LB0/e;

    .line 345
    .line 346
    if-nez v3, :cond_14

    .line 347
    .line 348
    new-instance v3, LB0/e;

    .line 349
    .line 350
    iget-object v4, v0, LB0/b;->f:Lv0/F;

    .line 351
    .line 352
    invoke-interface {v4, v5, v7}, Lv0/F;->track(II)Lv0/r0;

    .line 353
    .line 354
    .line 355
    move-result-object v4

    .line 356
    invoke-direct {v3, v4}, LB0/e;-><init>(Lv0/r0;)V

    .line 357
    .line 358
    .line 359
    iput-object v3, v0, LB0/b;->p:LB0/e;

    .line 360
    .line 361
    :cond_14
    iget-object v3, v0, LB0/b;->f:Lv0/F;

    .line 362
    .line 363
    invoke-interface {v3}, Lv0/F;->endTracks()V

    .line 364
    .line 365
    .line 366
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    .line 367
    .line 368
    .line 369
    move-result v2

    .line 370
    add-int/lit8 v2, v2, -0x5

    .line 371
    .line 372
    iput v2, v0, LB0/b;->j:I

    .line 373
    .line 374
    iput v7, v0, LB0/b;->g:I

    .line 375
    .line 376
    goto/16 :goto_0
.end method

.method public release()V
    .locals 0

    .line 1
    return-void
.end method

.method public seek(JJ)V
    .locals 0

    .line 1
    const-wide/16 p3, 0x0

    .line 2
    .line 3
    cmp-long p1, p1, p3

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    iput p1, p0, LB0/b;->g:I

    .line 10
    .line 11
    iput-boolean p2, p0, LB0/b;->h:Z

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x3

    .line 15
    iput p1, p0, LB0/b;->g:I

    .line 16
    .line 17
    :goto_0
    iput p2, p0, LB0/b;->j:I

    .line 18
    .line 19
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
    iget-object v0, p0, LB0/b;->a:Landroidx/media3/common/util/ParsableByteArray;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x3

    .line 8
    const/4 v3, 0x0

    .line 9
    invoke-interface {p1, v1, v3, v2}, Lv0/D;->peekFully([BII)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt24()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const v2, 0x464c56

    .line 20
    .line 21
    .line 22
    if-eq v1, v2, :cond_0

    .line 23
    .line 24
    return v3

    .line 25
    :cond_0
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const/4 v2, 0x2

    .line 30
    invoke-interface {p1, v1, v3, v2}, Lv0/D;->peekFully([BII)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    and-int/lit16 v1, v1, 0xfa

    .line 41
    .line 42
    if-eqz v1, :cond_1

    .line 43
    .line 44
    return v3

    .line 45
    :cond_1
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    const/4 v2, 0x4

    .line 50
    invoke-interface {p1, v1, v3, v2}, Lv0/D;->peekFully([BII)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    invoke-interface {p1}, Lv0/D;->resetPeekPosition()V

    .line 61
    .line 62
    .line 63
    invoke-interface {p1, v1}, Lv0/D;->advancePeekPosition(I)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-interface {p1, v1, v3, v2}, Lv0/D;->peekFully([BII)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    if-nez p1, :cond_2

    .line 81
    .line 82
    const/4 p1, 0x1

    .line 83
    return p1

    .line 84
    :cond_2
    return v3
.end method
