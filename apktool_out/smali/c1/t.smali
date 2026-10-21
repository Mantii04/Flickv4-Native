.class public final Lc1/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc1/j;


# instance fields
.field public final a:Lc1/L;

.field public final b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Lv0/r0;

.field public e:Lc1/s;

.field public f:Z

.field public final g:[Z

.field public final h:Lc1/B;

.field public final i:Lc1/B;

.field public final j:Lc1/B;

.field public final k:Lc1/B;

.field public final l:Lc1/B;

.field public m:J

.field public n:J

.field public final o:Landroidx/media3/common/util/ParsableByteArray;


# direct methods
.method public constructor <init>(Lc1/L;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lc1/t;->a:Lc1/L;

    .line 5
    .line 6
    iput-object p2, p0, Lc1/t;->b:Ljava/lang/String;

    .line 7
    .line 8
    const/4 p1, 0x3

    .line 9
    new-array p1, p1, [Z

    .line 10
    .line 11
    iput-object p1, p0, Lc1/t;->g:[Z

    .line 12
    .line 13
    new-instance p1, Lc1/B;

    .line 14
    .line 15
    const/16 p2, 0x20

    .line 16
    .line 17
    const/16 v0, 0x80

    .line 18
    .line 19
    invoke-direct {p1, p2, v0}, Lc1/B;-><init>(II)V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lc1/t;->h:Lc1/B;

    .line 23
    .line 24
    new-instance p1, Lc1/B;

    .line 25
    .line 26
    const/16 p2, 0x21

    .line 27
    .line 28
    invoke-direct {p1, p2, v0}, Lc1/B;-><init>(II)V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Lc1/t;->i:Lc1/B;

    .line 32
    .line 33
    new-instance p1, Lc1/B;

    .line 34
    .line 35
    const/16 p2, 0x22

    .line 36
    .line 37
    invoke-direct {p1, p2, v0}, Lc1/B;-><init>(II)V

    .line 38
    .line 39
    .line 40
    iput-object p1, p0, Lc1/t;->j:Lc1/B;

    .line 41
    .line 42
    new-instance p1, Lc1/B;

    .line 43
    .line 44
    const/16 p2, 0x27

    .line 45
    .line 46
    invoke-direct {p1, p2, v0}, Lc1/B;-><init>(II)V

    .line 47
    .line 48
    .line 49
    iput-object p1, p0, Lc1/t;->k:Lc1/B;

    .line 50
    .line 51
    new-instance p1, Lc1/B;

    .line 52
    .line 53
    const/16 p2, 0x28

    .line 54
    .line 55
    invoke-direct {p1, p2, v0}, Lc1/B;-><init>(II)V

    .line 56
    .line 57
    .line 58
    iput-object p1, p0, Lc1/t;->l:Lc1/B;

    .line 59
    .line 60
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    iput-wide p1, p0, Lc1/t;->n:J

    .line 66
    .line 67
    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    .line 68
    .line 69
    invoke-direct {p1}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    .line 70
    .line 71
    .line 72
    iput-object p1, p0, Lc1/t;->o:Landroidx/media3/common/util/ParsableByteArray;

    .line 73
    .line 74
    return-void
.end method


# virtual methods
.method public final a(IIJJ)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    move-wide/from16 v2, p5

    .line 6
    .line 7
    iget-object v4, v0, Lc1/t;->e:Lc1/s;

    .line 8
    .line 9
    iget-boolean v5, v0, Lc1/t;->f:Z

    .line 10
    .line 11
    move/from16 v6, p1

    .line 12
    .line 13
    move-wide/from16 v7, p3

    .line 14
    .line 15
    invoke-virtual {v4, v7, v8, v6, v5}, Lc1/s;->endNalUnit(JIZ)V

    .line 16
    .line 17
    .line 18
    iget-boolean v4, v0, Lc1/t;->f:Z

    .line 19
    .line 20
    iget-object v5, v0, Lc1/t;->a:Lc1/L;

    .line 21
    .line 22
    if-nez v4, :cond_2

    .line 23
    .line 24
    iget-object v4, v0, Lc1/t;->h:Lc1/B;

    .line 25
    .line 26
    invoke-virtual {v4, v1}, Lc1/B;->endNalUnit(I)Z

    .line 27
    .line 28
    .line 29
    iget-object v6, v0, Lc1/t;->i:Lc1/B;

    .line 30
    .line 31
    invoke-virtual {v6, v1}, Lc1/B;->endNalUnit(I)Z

    .line 32
    .line 33
    .line 34
    iget-object v7, v0, Lc1/t;->j:Lc1/B;

    .line 35
    .line 36
    invoke-virtual {v7, v1}, Lc1/B;->endNalUnit(I)Z

    .line 37
    .line 38
    .line 39
    invoke-virtual {v4}, Lc1/B;->isCompleted()Z

    .line 40
    .line 41
    .line 42
    move-result v8

    .line 43
    if-eqz v8, :cond_2

    .line 44
    .line 45
    invoke-virtual {v6}, Lc1/B;->isCompleted()Z

    .line 46
    .line 47
    .line 48
    move-result v8

    .line 49
    if-eqz v8, :cond_2

    .line 50
    .line 51
    invoke-virtual {v7}, Lc1/B;->isCompleted()Z

    .line 52
    .line 53
    .line 54
    move-result v8

    .line 55
    if-eqz v8, :cond_2

    .line 56
    .line 57
    iget-object v8, v0, Lc1/t;->c:Ljava/lang/String;

    .line 58
    .line 59
    iget v9, v4, Lc1/B;->e:I

    .line 60
    .line 61
    iget v10, v6, Lc1/B;->e:I

    .line 62
    .line 63
    add-int/2addr v10, v9

    .line 64
    iget v11, v7, Lc1/B;->e:I

    .line 65
    .line 66
    add-int/2addr v10, v11

    .line 67
    new-array v10, v10, [B

    .line 68
    .line 69
    iget-object v11, v4, Lc1/B;->d:[B

    .line 70
    .line 71
    const/4 v12, 0x0

    .line 72
    invoke-static {v11, v12, v10, v12, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 73
    .line 74
    .line 75
    iget-object v9, v6, Lc1/B;->d:[B

    .line 76
    .line 77
    iget v11, v4, Lc1/B;->e:I

    .line 78
    .line 79
    iget v13, v6, Lc1/B;->e:I

    .line 80
    .line 81
    invoke-static {v9, v12, v10, v11, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 82
    .line 83
    .line 84
    iget-object v9, v7, Lc1/B;->d:[B

    .line 85
    .line 86
    iget v4, v4, Lc1/B;->e:I

    .line 87
    .line 88
    iget v11, v6, Lc1/B;->e:I

    .line 89
    .line 90
    add-int/2addr v4, v11

    .line 91
    iget v7, v7, Lc1/B;->e:I

    .line 92
    .line 93
    invoke-static {v9, v12, v10, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 94
    .line 95
    .line 96
    iget-object v4, v6, Lc1/B;->d:[B

    .line 97
    .line 98
    iget v6, v6, Lc1/B;->e:I

    .line 99
    .line 100
    const/4 v7, 0x3

    .line 101
    const/4 v9, 0x0

    .line 102
    invoke-static {v4, v7, v6, v9}, Ls0/v;->parseH265SpsNalUnit([BIILs0/s;)Ls0/p;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    iget-object v6, v4, Ls0/p;->b:Ls0/k;

    .line 107
    .line 108
    if-eqz v6, :cond_0

    .line 109
    .line 110
    iget v15, v6, Ls0/k;->c:I

    .line 111
    .line 112
    iget v7, v6, Ls0/k;->d:I

    .line 113
    .line 114
    iget v13, v6, Ls0/k;->a:I

    .line 115
    .line 116
    iget-boolean v14, v6, Ls0/k;->b:Z

    .line 117
    .line 118
    iget-object v9, v6, Ls0/k;->e:[I

    .line 119
    .line 120
    iget v6, v6, Ls0/k;->f:I

    .line 121
    .line 122
    move/from16 v18, v6

    .line 123
    .line 124
    move/from16 v16, v7

    .line 125
    .line 126
    move-object/from16 v17, v9

    .line 127
    .line 128
    invoke-static/range {v13 .. v18}, Landroidx/media3/common/util/CodecSpecificDataUtil;->buildHevcCodecString(IZII[II)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v9

    .line 132
    :cond_0
    new-instance v6, Landroidx/media3/common/Format$Builder;

    .line 133
    .line 134
    invoke-direct {v6}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v6, v8}, Landroidx/media3/common/Format$Builder;->setId(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 138
    .line 139
    .line 140
    move-result-object v6

    .line 141
    iget-object v7, v0, Lc1/t;->b:Ljava/lang/String;

    .line 142
    .line 143
    invoke-virtual {v6, v7}, Landroidx/media3/common/Format$Builder;->setContainerMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 144
    .line 145
    .line 146
    move-result-object v6

    .line 147
    const-string v7, "video/hevc"

    .line 148
    .line 149
    invoke-virtual {v6, v7}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 150
    .line 151
    .line 152
    move-result-object v6

    .line 153
    invoke-virtual {v6, v9}, Landroidx/media3/common/Format$Builder;->setCodecs(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 154
    .line 155
    .line 156
    move-result-object v6

    .line 157
    iget v7, v4, Ls0/p;->e:I

    .line 158
    .line 159
    invoke-virtual {v6, v7}, Landroidx/media3/common/Format$Builder;->setWidth(I)Landroidx/media3/common/Format$Builder;

    .line 160
    .line 161
    .line 162
    move-result-object v6

    .line 163
    iget v7, v4, Ls0/p;->f:I

    .line 164
    .line 165
    invoke-virtual {v6, v7}, Landroidx/media3/common/Format$Builder;->setHeight(I)Landroidx/media3/common/Format$Builder;

    .line 166
    .line 167
    .line 168
    move-result-object v6

    .line 169
    iget v7, v4, Ls0/p;->g:I

    .line 170
    .line 171
    invoke-virtual {v6, v7}, Landroidx/media3/common/Format$Builder;->setDecodedWidth(I)Landroidx/media3/common/Format$Builder;

    .line 172
    .line 173
    .line 174
    move-result-object v6

    .line 175
    iget v7, v4, Ls0/p;->h:I

    .line 176
    .line 177
    invoke-virtual {v6, v7}, Landroidx/media3/common/Format$Builder;->setDecodedHeight(I)Landroidx/media3/common/Format$Builder;

    .line 178
    .line 179
    .line 180
    move-result-object v6

    .line 181
    new-instance v7, Landroidx/media3/common/ColorInfo$Builder;

    .line 182
    .line 183
    invoke-direct {v7}, Landroidx/media3/common/ColorInfo$Builder;-><init>()V

    .line 184
    .line 185
    .line 186
    iget v8, v4, Ls0/p;->k:I

    .line 187
    .line 188
    invoke-virtual {v7, v8}, Landroidx/media3/common/ColorInfo$Builder;->setColorSpace(I)Landroidx/media3/common/ColorInfo$Builder;

    .line 189
    .line 190
    .line 191
    move-result-object v7

    .line 192
    iget v8, v4, Ls0/p;->l:I

    .line 193
    .line 194
    invoke-virtual {v7, v8}, Landroidx/media3/common/ColorInfo$Builder;->setColorRange(I)Landroidx/media3/common/ColorInfo$Builder;

    .line 195
    .line 196
    .line 197
    move-result-object v7

    .line 198
    iget v8, v4, Ls0/p;->m:I

    .line 199
    .line 200
    invoke-virtual {v7, v8}, Landroidx/media3/common/ColorInfo$Builder;->setColorTransfer(I)Landroidx/media3/common/ColorInfo$Builder;

    .line 201
    .line 202
    .line 203
    move-result-object v7

    .line 204
    iget v8, v4, Ls0/p;->c:I

    .line 205
    .line 206
    add-int/lit8 v8, v8, 0x8

    .line 207
    .line 208
    invoke-virtual {v7, v8}, Landroidx/media3/common/ColorInfo$Builder;->setLumaBitdepth(I)Landroidx/media3/common/ColorInfo$Builder;

    .line 209
    .line 210
    .line 211
    move-result-object v7

    .line 212
    iget v8, v4, Ls0/p;->d:I

    .line 213
    .line 214
    add-int/lit8 v8, v8, 0x8

    .line 215
    .line 216
    invoke-virtual {v7, v8}, Landroidx/media3/common/ColorInfo$Builder;->setChromaBitdepth(I)Landroidx/media3/common/ColorInfo$Builder;

    .line 217
    .line 218
    .line 219
    move-result-object v7

    .line 220
    invoke-virtual {v7}, Landroidx/media3/common/ColorInfo$Builder;->build()Landroidx/media3/common/ColorInfo;

    .line 221
    .line 222
    .line 223
    move-result-object v7

    .line 224
    invoke-virtual {v6, v7}, Landroidx/media3/common/Format$Builder;->setColorInfo(Landroidx/media3/common/ColorInfo;)Landroidx/media3/common/Format$Builder;

    .line 225
    .line 226
    .line 227
    move-result-object v6

    .line 228
    iget v7, v4, Ls0/p;->i:F

    .line 229
    .line 230
    invoke-virtual {v6, v7}, Landroidx/media3/common/Format$Builder;->setPixelWidthHeightRatio(F)Landroidx/media3/common/Format$Builder;

    .line 231
    .line 232
    .line 233
    move-result-object v6

    .line 234
    iget v7, v4, Ls0/p;->j:I

    .line 235
    .line 236
    invoke-virtual {v6, v7}, Landroidx/media3/common/Format$Builder;->setMaxNumReorderSamples(I)Landroidx/media3/common/Format$Builder;

    .line 237
    .line 238
    .line 239
    move-result-object v6

    .line 240
    iget v4, v4, Ls0/p;->a:I

    .line 241
    .line 242
    const/4 v7, 0x1

    .line 243
    add-int/2addr v4, v7

    .line 244
    invoke-virtual {v6, v4}, Landroidx/media3/common/Format$Builder;->setMaxSubLayers(I)Landroidx/media3/common/Format$Builder;

    .line 245
    .line 246
    .line 247
    move-result-object v4

    .line 248
    invoke-static {v10}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 249
    .line 250
    .line 251
    move-result-object v6

    .line 252
    invoke-virtual {v4, v6}, Landroidx/media3/common/Format$Builder;->setInitializationData(Ljava/util/List;)Landroidx/media3/common/Format$Builder;

    .line 253
    .line 254
    .line 255
    move-result-object v4

    .line 256
    invoke-virtual {v4}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    .line 257
    .line 258
    .line 259
    move-result-object v4

    .line 260
    iget-object v6, v0, Lc1/t;->d:Lv0/r0;

    .line 261
    .line 262
    invoke-interface {v6, v4}, Lv0/r0;->format(Landroidx/media3/common/Format;)V

    .line 263
    .line 264
    .line 265
    iget v6, v4, Landroidx/media3/common/Format;->maxNumReorderSamples:I

    .line 266
    .line 267
    const/4 v8, -0x1

    .line 268
    if-eq v6, v8, :cond_1

    .line 269
    .line 270
    move v12, v7

    .line 271
    :cond_1
    invoke-static {v12}, LP3/v;->checkState(Z)V

    .line 272
    .line 273
    .line 274
    iget v4, v4, Landroidx/media3/common/Format;->maxNumReorderSamples:I

    .line 275
    .line 276
    invoke-virtual {v5, v4}, Lc1/L;->setReorderingQueueSize(I)V

    .line 277
    .line 278
    .line 279
    iput-boolean v7, v0, Lc1/t;->f:Z

    .line 280
    .line 281
    :cond_2
    iget-object v4, v0, Lc1/t;->k:Lc1/B;

    .line 282
    .line 283
    invoke-virtual {v4, v1}, Lc1/B;->endNalUnit(I)Z

    .line 284
    .line 285
    .line 286
    move-result v6

    .line 287
    const/4 v7, 0x5

    .line 288
    iget-object v8, v0, Lc1/t;->o:Landroidx/media3/common/util/ParsableByteArray;

    .line 289
    .line 290
    if-eqz v6, :cond_3

    .line 291
    .line 292
    iget-object v6, v4, Lc1/B;->d:[B

    .line 293
    .line 294
    iget v9, v4, Lc1/B;->e:I

    .line 295
    .line 296
    invoke-static {v6, v9}, Ls0/v;->unescapeStream([BI)I

    .line 297
    .line 298
    .line 299
    move-result v6

    .line 300
    iget-object v4, v4, Lc1/B;->d:[B

    .line 301
    .line 302
    invoke-virtual {v8, v4, v6}, Landroidx/media3/common/util/ParsableByteArray;->reset([BI)V

    .line 303
    .line 304
    .line 305
    invoke-virtual {v8, v7}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 306
    .line 307
    .line 308
    invoke-virtual {v5, v2, v3, v8}, Lc1/L;->consume(JLandroidx/media3/common/util/ParsableByteArray;)V

    .line 309
    .line 310
    .line 311
    :cond_3
    iget-object v4, v0, Lc1/t;->l:Lc1/B;

    .line 312
    .line 313
    invoke-virtual {v4, v1}, Lc1/B;->endNalUnit(I)Z

    .line 314
    .line 315
    .line 316
    move-result v1

    .line 317
    if-eqz v1, :cond_4

    .line 318
    .line 319
    iget-object v1, v4, Lc1/B;->d:[B

    .line 320
    .line 321
    iget v6, v4, Lc1/B;->e:I

    .line 322
    .line 323
    invoke-static {v1, v6}, Ls0/v;->unescapeStream([BI)I

    .line 324
    .line 325
    .line 326
    move-result v1

    .line 327
    iget-object v4, v4, Lc1/B;->d:[B

    .line 328
    .line 329
    invoke-virtual {v8, v4, v1}, Landroidx/media3/common/util/ParsableByteArray;->reset([BI)V

    .line 330
    .line 331
    .line 332
    invoke-virtual {v8, v7}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 333
    .line 334
    .line 335
    invoke-virtual {v5, v2, v3, v8}, Lc1/L;->consume(JLandroidx/media3/common/util/ParsableByteArray;)V

    .line 336
    .line 337
    .line 338
    :cond_4
    return-void
.end method

.method public final b(I[BI)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc1/t;->e:Lc1/s;

    .line 2
    .line 3
    invoke-virtual {v0, p2, p1, p3}, Lc1/s;->readNalUnitData([BII)V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lc1/t;->f:Z

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lc1/t;->h:Lc1/B;

    .line 11
    .line 12
    invoke-virtual {v0, p2, p1, p3}, Lc1/B;->appendToNalUnit([BII)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lc1/t;->i:Lc1/B;

    .line 16
    .line 17
    invoke-virtual {v0, p2, p1, p3}, Lc1/B;->appendToNalUnit([BII)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lc1/t;->j:Lc1/B;

    .line 21
    .line 22
    invoke-virtual {v0, p2, p1, p3}, Lc1/B;->appendToNalUnit([BII)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Lc1/t;->k:Lc1/B;

    .line 26
    .line 27
    invoke-virtual {v0, p2, p1, p3}, Lc1/B;->appendToNalUnit([BII)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lc1/t;->l:Lc1/B;

    .line 31
    .line 32
    invoke-virtual {v0, p2, p1, p3}, Lc1/B;->appendToNalUnit([BII)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final c(IIJJ)V
    .locals 8

    .line 1
    iget-object v0, p0, Lc1/t;->e:Lc1/s;

    .line 2
    .line 3
    iget-boolean v7, p0, Lc1/t;->f:Z

    .line 4
    .line 5
    move v3, p1

    .line 6
    move v4, p2

    .line 7
    move-wide v1, p3

    .line 8
    move-wide v5, p5

    .line 9
    invoke-virtual/range {v0 .. v7}, Lc1/s;->startNalUnit(JIIJZ)V

    .line 10
    .line 11
    .line 12
    iget-boolean p1, p0, Lc1/t;->f:Z

    .line 13
    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Lc1/t;->h:Lc1/B;

    .line 17
    .line 18
    invoke-virtual {p1, v4}, Lc1/B;->startNalUnit(I)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lc1/t;->i:Lc1/B;

    .line 22
    .line 23
    invoke-virtual {p1, v4}, Lc1/B;->startNalUnit(I)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lc1/t;->j:Lc1/B;

    .line 27
    .line 28
    invoke-virtual {p1, v4}, Lc1/B;->startNalUnit(I)V

    .line 29
    .line 30
    .line 31
    :cond_0
    iget-object p1, p0, Lc1/t;->k:Lc1/B;

    .line 32
    .line 33
    invoke-virtual {p1, v4}, Lc1/B;->startNalUnit(I)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lc1/t;->l:Lc1/B;

    .line 37
    .line 38
    invoke-virtual {p1, v4}, Lc1/B;->startNalUnit(I)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public consume(Landroidx/media3/common/util/ParsableByteArray;)V
    .locals 12

    .line 1
    iget-object v1, p0, Lc1/t;->d:Lv0/r0;

    .line 2
    .line 3
    invoke-static {v1}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lc1/t;->e:Lc1/s;

    .line 7
    .line 8
    invoke-static {v1}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-lez v1, :cond_5

    .line 16
    .line 17
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    .line 22
    .line 23
    .line 24
    move-result v7

    .line 25
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 26
    .line 27
    .line 28
    move-result-object v8

    .line 29
    iget-wide v2, p0, Lc1/t;->m:J

    .line 30
    .line 31
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    int-to-long v4, v4

    .line 36
    add-long/2addr v2, v4

    .line 37
    iput-wide v2, p0, Lc1/t;->m:J

    .line 38
    .line 39
    iget-object v2, p0, Lc1/t;->d:Lv0/r0;

    .line 40
    .line 41
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    invoke-interface {v2, p1, v3}, Lv0/r0;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    .line 46
    .line 47
    .line 48
    :goto_0
    if-ge v1, v7, :cond_0

    .line 49
    .line 50
    iget-object v2, p0, Lc1/t;->g:[Z

    .line 51
    .line 52
    invoke-static {v8, v1, v7, v2}, Ls0/v;->findNalUnit([BII[Z)I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-ne v2, v7, :cond_1

    .line 57
    .line 58
    invoke-virtual {p0, v1, v8, v7}, Lc1/t;->b(I[BI)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :cond_1
    invoke-static {v8, v2}, Ls0/v;->getH265NalUnitType([BI)I

    .line 63
    .line 64
    .line 65
    move-result v9

    .line 66
    if-lez v2, :cond_2

    .line 67
    .line 68
    add-int/lit8 v3, v2, -0x1

    .line 69
    .line 70
    aget-byte v3, v8, v3

    .line 71
    .line 72
    if-nez v3, :cond_2

    .line 73
    .line 74
    add-int/lit8 v2, v2, -0x1

    .line 75
    .line 76
    const/4 v3, 0x4

    .line 77
    :goto_1
    move v10, v2

    .line 78
    move v11, v3

    .line 79
    goto :goto_2

    .line 80
    :cond_2
    const/4 v3, 0x3

    .line 81
    goto :goto_1

    .line 82
    :goto_2
    sub-int v2, v10, v1

    .line 83
    .line 84
    if-lez v2, :cond_3

    .line 85
    .line 86
    invoke-virtual {p0, v1, v8, v10}, Lc1/t;->b(I[BI)V

    .line 87
    .line 88
    .line 89
    :cond_3
    sub-int v1, v7, v10

    .line 90
    .line 91
    iget-wide v3, p0, Lc1/t;->m:J

    .line 92
    .line 93
    int-to-long v5, v1

    .line 94
    sub-long/2addr v3, v5

    .line 95
    if-gez v2, :cond_4

    .line 96
    .line 97
    neg-int v2, v2

    .line 98
    goto :goto_3

    .line 99
    :cond_4
    const/4 v2, 0x0

    .line 100
    :goto_3
    iget-wide v5, p0, Lc1/t;->n:J

    .line 101
    .line 102
    move-object v0, p0

    .line 103
    invoke-virtual/range {v0 .. v6}, Lc1/t;->a(IIJJ)V

    .line 104
    .line 105
    .line 106
    iget-wide v5, p0, Lc1/t;->n:J

    .line 107
    .line 108
    move v2, v9

    .line 109
    invoke-virtual/range {v0 .. v6}, Lc1/t;->c(IIJJ)V

    .line 110
    .line 111
    .line 112
    add-int v1, v10, v11

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_5
    return-void
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
    iput-object v0, p0, Lc1/t;->c:Ljava/lang/String;

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
    iput-object v0, p0, Lc1/t;->d:Lv0/r0;

    .line 20
    .line 21
    new-instance v1, Lc1/s;

    .line 22
    .line 23
    invoke-direct {v1, v0}, Lc1/s;-><init>(Lv0/r0;)V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lc1/t;->e:Lc1/s;

    .line 27
    .line 28
    iget-object v0, p0, Lc1/t;->a:Lc1/L;

    .line 29
    .line 30
    invoke-virtual {v0, p1, p2}, Lc1/L;->createTracks(Lv0/F;Lc1/W;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public packetFinished(Z)V
    .locals 14

    .line 1
    iget-object v0, p0, Lc1/t;->d:Lv0/r0;

    .line 2
    .line 3
    invoke-static {v0}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lc1/t;->e:Lc1/s;

    .line 7
    .line 8
    invoke-static {v0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lc1/t;->a:Lc1/L;

    .line 14
    .line 15
    invoke-virtual {p1}, Lc1/L;->flush()V

    .line 16
    .line 17
    .line 18
    iget-wide v3, p0, Lc1/t;->m:J

    .line 19
    .line 20
    iget-wide v5, p0, Lc1/t;->n:J

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    const/4 v2, 0x0

    .line 24
    move-object v0, p0

    .line 25
    invoke-virtual/range {v0 .. v6}, Lc1/t;->a(IIJJ)V

    .line 26
    .line 27
    .line 28
    iget-wide v10, v0, Lc1/t;->m:J

    .line 29
    .line 30
    iget-wide v12, v0, Lc1/t;->n:J

    .line 31
    .line 32
    const/4 v8, 0x0

    .line 33
    const/16 v9, 0x30

    .line 34
    .line 35
    move-object v7, v0

    .line 36
    invoke-virtual/range {v7 .. v13}, Lc1/t;->c(IIJJ)V

    .line 37
    .line 38
    .line 39
    :cond_0
    return-void
.end method

.method public packetStarted(JI)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lc1/t;->n:J

    .line 2
    .line 3
    return-void
.end method

.method public seek()V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lc1/t;->m:J

    .line 4
    .line 5
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    iput-wide v0, p0, Lc1/t;->n:J

    .line 11
    .line 12
    iget-object v0, p0, Lc1/t;->g:[Z

    .line 13
    .line 14
    invoke-static {v0}, Ls0/v;->clearPrefixFlags([Z)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lc1/t;->h:Lc1/B;

    .line 18
    .line 19
    invoke-virtual {v0}, Lc1/B;->reset()V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lc1/t;->i:Lc1/B;

    .line 23
    .line 24
    invoke-virtual {v0}, Lc1/B;->reset()V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lc1/t;->j:Lc1/B;

    .line 28
    .line 29
    invoke-virtual {v0}, Lc1/B;->reset()V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lc1/t;->k:Lc1/B;

    .line 33
    .line 34
    invoke-virtual {v0}, Lc1/B;->reset()V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lc1/t;->l:Lc1/B;

    .line 38
    .line 39
    invoke-virtual {v0}, Lc1/B;->reset()V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lc1/t;->a:Lc1/L;

    .line 43
    .line 44
    invoke-virtual {v0}, Lc1/L;->clear()V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lc1/t;->e:Lc1/s;

    .line 48
    .line 49
    if-eqz v0, :cond_0

    .line 50
    .line 51
    invoke-virtual {v0}, Lc1/s;->reset()V

    .line 52
    .line 53
    .line 54
    :cond_0
    return-void
.end method
