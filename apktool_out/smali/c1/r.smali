.class public final Lc1/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc1/j;


# instance fields
.field public final a:Lc1/L;

.field public final b:Z

.field public final c:Z

.field public final d:Ljava/lang/String;

.field public final e:Lc1/B;

.field public final f:Lc1/B;

.field public final g:Lc1/B;

.field public h:J

.field public final i:[Z

.field public j:Ljava/lang/String;

.field public k:Lv0/r0;

.field public l:Lc1/q;

.field public m:Z

.field public n:J

.field public o:Z

.field public final p:Landroidx/media3/common/util/ParsableByteArray;


# direct methods
.method public constructor <init>(Lc1/L;ZZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lc1/r;->a:Lc1/L;

    .line 5
    .line 6
    iput-boolean p2, p0, Lc1/r;->b:Z

    .line 7
    .line 8
    iput-boolean p3, p0, Lc1/r;->c:Z

    .line 9
    .line 10
    iput-object p4, p0, Lc1/r;->d:Ljava/lang/String;

    .line 11
    .line 12
    const/4 p1, 0x3

    .line 13
    new-array p1, p1, [Z

    .line 14
    .line 15
    iput-object p1, p0, Lc1/r;->i:[Z

    .line 16
    .line 17
    new-instance p1, Lc1/B;

    .line 18
    .line 19
    const/4 p2, 0x7

    .line 20
    const/16 p3, 0x80

    .line 21
    .line 22
    invoke-direct {p1, p2, p3}, Lc1/B;-><init>(II)V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lc1/r;->e:Lc1/B;

    .line 26
    .line 27
    new-instance p1, Lc1/B;

    .line 28
    .line 29
    const/16 p2, 0x8

    .line 30
    .line 31
    invoke-direct {p1, p2, p3}, Lc1/B;-><init>(II)V

    .line 32
    .line 33
    .line 34
    iput-object p1, p0, Lc1/r;->f:Lc1/B;

    .line 35
    .line 36
    new-instance p1, Lc1/B;

    .line 37
    .line 38
    const/4 p2, 0x6

    .line 39
    invoke-direct {p1, p2, p3}, Lc1/B;-><init>(II)V

    .line 40
    .line 41
    .line 42
    iput-object p1, p0, Lc1/r;->g:Lc1/B;

    .line 43
    .line 44
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    iput-wide p1, p0, Lc1/r;->n:J

    .line 50
    .line 51
    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    .line 52
    .line 53
    invoke-direct {p1}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    .line 54
    .line 55
    .line 56
    iput-object p1, p0, Lc1/r;->p:Landroidx/media3/common/util/ParsableByteArray;

    .line 57
    .line 58
    return-void
.end method


# virtual methods
.method public final a(IIJJ)V
    .locals 10

    .line 1
    iget-boolean v0, p0, Lc1/r;->m:Z

    .line 2
    .line 3
    iget-object v1, p0, Lc1/r;->a:Lc1/L;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lc1/r;->l:Lc1/q;

    .line 8
    .line 9
    invoke-virtual {v0}, Lc1/q;->needsSpsPps()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_3

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lc1/r;->e:Lc1/B;

    .line 16
    .line 17
    invoke-virtual {v0, p2}, Lc1/B;->endNalUnit(I)Z

    .line 18
    .line 19
    .line 20
    iget-object v2, p0, Lc1/r;->f:Lc1/B;

    .line 21
    .line 22
    invoke-virtual {v2, p2}, Lc1/B;->endNalUnit(I)Z

    .line 23
    .line 24
    .line 25
    iget-boolean v3, p0, Lc1/r;->m:Z

    .line 26
    .line 27
    const/4 v4, 0x3

    .line 28
    if-nez v3, :cond_1

    .line 29
    .line 30
    invoke-virtual {v0}, Lc1/B;->isCompleted()Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-eqz v3, :cond_3

    .line 35
    .line 36
    invoke-virtual {v2}, Lc1/B;->isCompleted()Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_3

    .line 41
    .line 42
    new-instance v3, Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .line 46
    .line 47
    iget-object v5, v0, Lc1/B;->d:[B

    .line 48
    .line 49
    iget v6, v0, Lc1/B;->e:I

    .line 50
    .line 51
    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    iget-object v5, v2, Lc1/B;->d:[B

    .line 59
    .line 60
    iget v6, v2, Lc1/B;->e:I

    .line 61
    .line 62
    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    iget-object v5, v0, Lc1/B;->d:[B

    .line 70
    .line 71
    iget v6, v0, Lc1/B;->e:I

    .line 72
    .line 73
    invoke-static {v5, v4, v6}, Ls0/v;->parseSpsNalUnit([BII)Ls0/u;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    iget-object v6, v2, Lc1/B;->d:[B

    .line 78
    .line 79
    iget v7, v2, Lc1/B;->e:I

    .line 80
    .line 81
    invoke-static {v6, v4, v7}, Ls0/v;->parsePpsNalUnit([BII)Ls0/t;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    iget v6, v5, Ls0/u;->a:I

    .line 86
    .line 87
    iget v7, v5, Ls0/u;->b:I

    .line 88
    .line 89
    iget v8, v5, Ls0/u;->c:I

    .line 90
    .line 91
    invoke-static {v6, v7, v8}, Landroidx/media3/common/util/CodecSpecificDataUtil;->buildAvcCodecString(III)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v6

    .line 95
    iget-object v7, p0, Lc1/r;->k:Lv0/r0;

    .line 96
    .line 97
    new-instance v8, Landroidx/media3/common/Format$Builder;

    .line 98
    .line 99
    invoke-direct {v8}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 100
    .line 101
    .line 102
    iget-object v9, p0, Lc1/r;->j:Ljava/lang/String;

    .line 103
    .line 104
    invoke-virtual {v8, v9}, Landroidx/media3/common/Format$Builder;->setId(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 105
    .line 106
    .line 107
    move-result-object v8

    .line 108
    iget-object v9, p0, Lc1/r;->d:Ljava/lang/String;

    .line 109
    .line 110
    invoke-virtual {v8, v9}, Landroidx/media3/common/Format$Builder;->setContainerMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 111
    .line 112
    .line 113
    move-result-object v8

    .line 114
    const-string v9, "video/avc"

    .line 115
    .line 116
    invoke-virtual {v8, v9}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 117
    .line 118
    .line 119
    move-result-object v8

    .line 120
    invoke-virtual {v8, v6}, Landroidx/media3/common/Format$Builder;->setCodecs(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 121
    .line 122
    .line 123
    move-result-object v6

    .line 124
    iget v8, v5, Ls0/u;->e:I

    .line 125
    .line 126
    invoke-virtual {v6, v8}, Landroidx/media3/common/Format$Builder;->setWidth(I)Landroidx/media3/common/Format$Builder;

    .line 127
    .line 128
    .line 129
    move-result-object v6

    .line 130
    iget v8, v5, Ls0/u;->f:I

    .line 131
    .line 132
    invoke-virtual {v6, v8}, Landroidx/media3/common/Format$Builder;->setHeight(I)Landroidx/media3/common/Format$Builder;

    .line 133
    .line 134
    .line 135
    move-result-object v6

    .line 136
    new-instance v8, Landroidx/media3/common/ColorInfo$Builder;

    .line 137
    .line 138
    invoke-direct {v8}, Landroidx/media3/common/ColorInfo$Builder;-><init>()V

    .line 139
    .line 140
    .line 141
    iget v9, v5, Ls0/u;->p:I

    .line 142
    .line 143
    invoke-virtual {v8, v9}, Landroidx/media3/common/ColorInfo$Builder;->setColorSpace(I)Landroidx/media3/common/ColorInfo$Builder;

    .line 144
    .line 145
    .line 146
    move-result-object v8

    .line 147
    iget v9, v5, Ls0/u;->q:I

    .line 148
    .line 149
    invoke-virtual {v8, v9}, Landroidx/media3/common/ColorInfo$Builder;->setColorRange(I)Landroidx/media3/common/ColorInfo$Builder;

    .line 150
    .line 151
    .line 152
    move-result-object v8

    .line 153
    iget v9, v5, Ls0/u;->r:I

    .line 154
    .line 155
    invoke-virtual {v8, v9}, Landroidx/media3/common/ColorInfo$Builder;->setColorTransfer(I)Landroidx/media3/common/ColorInfo$Builder;

    .line 156
    .line 157
    .line 158
    move-result-object v8

    .line 159
    iget v9, v5, Ls0/u;->h:I

    .line 160
    .line 161
    add-int/lit8 v9, v9, 0x8

    .line 162
    .line 163
    invoke-virtual {v8, v9}, Landroidx/media3/common/ColorInfo$Builder;->setLumaBitdepth(I)Landroidx/media3/common/ColorInfo$Builder;

    .line 164
    .line 165
    .line 166
    move-result-object v8

    .line 167
    iget v9, v5, Ls0/u;->i:I

    .line 168
    .line 169
    add-int/lit8 v9, v9, 0x8

    .line 170
    .line 171
    invoke-virtual {v8, v9}, Landroidx/media3/common/ColorInfo$Builder;->setChromaBitdepth(I)Landroidx/media3/common/ColorInfo$Builder;

    .line 172
    .line 173
    .line 174
    move-result-object v8

    .line 175
    invoke-virtual {v8}, Landroidx/media3/common/ColorInfo$Builder;->build()Landroidx/media3/common/ColorInfo;

    .line 176
    .line 177
    .line 178
    move-result-object v8

    .line 179
    invoke-virtual {v6, v8}, Landroidx/media3/common/Format$Builder;->setColorInfo(Landroidx/media3/common/ColorInfo;)Landroidx/media3/common/Format$Builder;

    .line 180
    .line 181
    .line 182
    move-result-object v6

    .line 183
    iget v8, v5, Ls0/u;->g:F

    .line 184
    .line 185
    invoke-virtual {v6, v8}, Landroidx/media3/common/Format$Builder;->setPixelWidthHeightRatio(F)Landroidx/media3/common/Format$Builder;

    .line 186
    .line 187
    .line 188
    move-result-object v6

    .line 189
    invoke-virtual {v6, v3}, Landroidx/media3/common/Format$Builder;->setInitializationData(Ljava/util/List;)Landroidx/media3/common/Format$Builder;

    .line 190
    .line 191
    .line 192
    move-result-object v3

    .line 193
    iget v6, v5, Ls0/u;->s:I

    .line 194
    .line 195
    invoke-virtual {v3, v6}, Landroidx/media3/common/Format$Builder;->setMaxNumReorderSamples(I)Landroidx/media3/common/Format$Builder;

    .line 196
    .line 197
    .line 198
    move-result-object v3

    .line 199
    invoke-virtual {v3}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    .line 200
    .line 201
    .line 202
    move-result-object v3

    .line 203
    invoke-interface {v7, v3}, Lv0/r0;->format(Landroidx/media3/common/Format;)V

    .line 204
    .line 205
    .line 206
    const/4 v3, 0x1

    .line 207
    iput-boolean v3, p0, Lc1/r;->m:Z

    .line 208
    .line 209
    invoke-virtual {v1, v6}, Lc1/L;->setReorderingQueueSize(I)V

    .line 210
    .line 211
    .line 212
    iget-object v3, p0, Lc1/r;->l:Lc1/q;

    .line 213
    .line 214
    invoke-virtual {v3, v5}, Lc1/q;->putSps(Ls0/u;)V

    .line 215
    .line 216
    .line 217
    iget-object v3, p0, Lc1/r;->l:Lc1/q;

    .line 218
    .line 219
    invoke-virtual {v3, v4}, Lc1/q;->putPps(Ls0/t;)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v0}, Lc1/B;->reset()V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v2}, Lc1/B;->reset()V

    .line 226
    .line 227
    .line 228
    goto :goto_0

    .line 229
    :cond_1
    invoke-virtual {v0}, Lc1/B;->isCompleted()Z

    .line 230
    .line 231
    .line 232
    move-result v3

    .line 233
    if-eqz v3, :cond_2

    .line 234
    .line 235
    iget-object v2, v0, Lc1/B;->d:[B

    .line 236
    .line 237
    iget v3, v0, Lc1/B;->e:I

    .line 238
    .line 239
    invoke-static {v2, v4, v3}, Ls0/v;->parseSpsNalUnit([BII)Ls0/u;

    .line 240
    .line 241
    .line 242
    move-result-object v2

    .line 243
    iget v3, v2, Ls0/u;->s:I

    .line 244
    .line 245
    invoke-virtual {v1, v3}, Lc1/L;->setReorderingQueueSize(I)V

    .line 246
    .line 247
    .line 248
    iget-object v3, p0, Lc1/r;->l:Lc1/q;

    .line 249
    .line 250
    invoke-virtual {v3, v2}, Lc1/q;->putSps(Ls0/u;)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v0}, Lc1/B;->reset()V

    .line 254
    .line 255
    .line 256
    goto :goto_0

    .line 257
    :cond_2
    invoke-virtual {v2}, Lc1/B;->isCompleted()Z

    .line 258
    .line 259
    .line 260
    move-result v0

    .line 261
    if-eqz v0, :cond_3

    .line 262
    .line 263
    iget-object v0, v2, Lc1/B;->d:[B

    .line 264
    .line 265
    iget v3, v2, Lc1/B;->e:I

    .line 266
    .line 267
    invoke-static {v0, v4, v3}, Ls0/v;->parsePpsNalUnit([BII)Ls0/t;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    iget-object v3, p0, Lc1/r;->l:Lc1/q;

    .line 272
    .line 273
    invoke-virtual {v3, v0}, Lc1/q;->putPps(Ls0/t;)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v2}, Lc1/B;->reset()V

    .line 277
    .line 278
    .line 279
    :cond_3
    :goto_0
    iget-object v0, p0, Lc1/r;->g:Lc1/B;

    .line 280
    .line 281
    invoke-virtual {v0, p2}, Lc1/B;->endNalUnit(I)Z

    .line 282
    .line 283
    .line 284
    move-result p2

    .line 285
    if-eqz p2, :cond_4

    .line 286
    .line 287
    iget-object p2, v0, Lc1/B;->d:[B

    .line 288
    .line 289
    iget v2, v0, Lc1/B;->e:I

    .line 290
    .line 291
    invoke-static {p2, v2}, Ls0/v;->unescapeStream([BI)I

    .line 292
    .line 293
    .line 294
    move-result p2

    .line 295
    iget-object v0, v0, Lc1/B;->d:[B

    .line 296
    .line 297
    iget-object v2, p0, Lc1/r;->p:Landroidx/media3/common/util/ParsableByteArray;

    .line 298
    .line 299
    invoke-virtual {v2, v0, p2}, Landroidx/media3/common/util/ParsableByteArray;->reset([BI)V

    .line 300
    .line 301
    .line 302
    const/4 p2, 0x4

    .line 303
    invoke-virtual {v2, p2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 304
    .line 305
    .line 306
    move-wide v3, p5

    .line 307
    invoke-virtual {v1, v3, v4, v2}, Lc1/L;->consume(JLandroidx/media3/common/util/ParsableByteArray;)V

    .line 308
    .line 309
    .line 310
    :cond_4
    iget-object p2, p0, Lc1/r;->l:Lc1/q;

    .line 311
    .line 312
    iget-boolean v0, p0, Lc1/r;->m:Z

    .line 313
    .line 314
    invoke-virtual {p2, p3, p4, p1, v0}, Lc1/q;->endNalUnit(JIZ)Z

    .line 315
    .line 316
    .line 317
    move-result p1

    .line 318
    if-eqz p1, :cond_5

    .line 319
    .line 320
    const/4 p1, 0x0

    .line 321
    iput-boolean p1, p0, Lc1/r;->o:Z

    .line 322
    .line 323
    :cond_5
    return-void
.end method

.method public final b(I[BI)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc1/r;->m:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lc1/r;->l:Lc1/q;

    .line 6
    .line 7
    invoke-virtual {v0}, Lc1/q;->needsSpsPps()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lc1/r;->e:Lc1/B;

    .line 14
    .line 15
    invoke-virtual {v0, p2, p1, p3}, Lc1/B;->appendToNalUnit([BII)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lc1/r;->f:Lc1/B;

    .line 19
    .line 20
    invoke-virtual {v0, p2, p1, p3}, Lc1/B;->appendToNalUnit([BII)V

    .line 21
    .line 22
    .line 23
    :cond_1
    iget-object v0, p0, Lc1/r;->g:Lc1/B;

    .line 24
    .line 25
    invoke-virtual {v0, p2, p1, p3}, Lc1/B;->appendToNalUnit([BII)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lc1/r;->l:Lc1/q;

    .line 29
    .line 30
    invoke-virtual {v0, p2, p1, p3}, Lc1/q;->appendToNalUnit([BII)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final c(IJJ)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lc1/r;->m:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lc1/r;->l:Lc1/q;

    .line 6
    .line 7
    invoke-virtual {v0}, Lc1/q;->needsSpsPps()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lc1/r;->e:Lc1/B;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lc1/B;->startNalUnit(I)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lc1/r;->f:Lc1/B;

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lc1/B;->startNalUnit(I)V

    .line 21
    .line 22
    .line 23
    :cond_1
    iget-object v0, p0, Lc1/r;->g:Lc1/B;

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Lc1/B;->startNalUnit(I)V

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lc1/r;->l:Lc1/q;

    .line 29
    .line 30
    iget-boolean v7, p0, Lc1/r;->o:Z

    .line 31
    .line 32
    move v4, p1

    .line 33
    move-wide v2, p2

    .line 34
    move-wide v5, p4

    .line 35
    invoke-virtual/range {v1 .. v7}, Lc1/q;->startNalUnit(JIJZ)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public consume(Landroidx/media3/common/util/ParsableByteArray;)V
    .locals 12

    .line 1
    iget-object v1, p0, Lc1/r;->k:Lv0/r0;

    .line 2
    .line 3
    invoke-static {v1}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lc1/r;->l:Lc1/q;

    .line 7
    .line 8
    invoke-static {v1}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    .line 16
    .line 17
    .line 18
    move-result v7

    .line 19
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 20
    .line 21
    .line 22
    move-result-object v8

    .line 23
    iget-wide v2, p0, Lc1/r;->h:J

    .line 24
    .line 25
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    int-to-long v4, v4

    .line 30
    add-long/2addr v2, v4

    .line 31
    iput-wide v2, p0, Lc1/r;->h:J

    .line 32
    .line 33
    iget-object v2, p0, Lc1/r;->k:Lv0/r0;

    .line 34
    .line 35
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    invoke-interface {v2, p1, v3}, Lv0/r0;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    .line 40
    .line 41
    .line 42
    :goto_0
    iget-object v2, p0, Lc1/r;->i:[Z

    .line 43
    .line 44
    invoke-static {v8, v1, v7, v2}, Ls0/v;->findNalUnit([BII[Z)I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-ne v2, v7, :cond_0

    .line 49
    .line 50
    invoke-virtual {p0, v1, v8, v7}, Lc1/r;->b(I[BI)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_0
    invoke-static {v8, v2}, Ls0/v;->getNalUnitType([BI)I

    .line 55
    .line 56
    .line 57
    move-result v9

    .line 58
    if-lez v2, :cond_1

    .line 59
    .line 60
    add-int/lit8 v3, v2, -0x1

    .line 61
    .line 62
    aget-byte v3, v8, v3

    .line 63
    .line 64
    if-nez v3, :cond_1

    .line 65
    .line 66
    add-int/lit8 v2, v2, -0x1

    .line 67
    .line 68
    const/4 v3, 0x4

    .line 69
    :goto_1
    move v10, v2

    .line 70
    move v11, v3

    .line 71
    goto :goto_2

    .line 72
    :cond_1
    const/4 v3, 0x3

    .line 73
    goto :goto_1

    .line 74
    :goto_2
    sub-int v2, v10, v1

    .line 75
    .line 76
    if-lez v2, :cond_2

    .line 77
    .line 78
    invoke-virtual {p0, v1, v8, v10}, Lc1/r;->b(I[BI)V

    .line 79
    .line 80
    .line 81
    :cond_2
    sub-int v1, v7, v10

    .line 82
    .line 83
    iget-wide v3, p0, Lc1/r;->h:J

    .line 84
    .line 85
    int-to-long v5, v1

    .line 86
    sub-long/2addr v3, v5

    .line 87
    if-gez v2, :cond_3

    .line 88
    .line 89
    neg-int v2, v2

    .line 90
    goto :goto_3

    .line 91
    :cond_3
    const/4 v2, 0x0

    .line 92
    :goto_3
    iget-wide v5, p0, Lc1/r;->n:J

    .line 93
    .line 94
    move-object v0, p0

    .line 95
    invoke-virtual/range {v0 .. v6}, Lc1/r;->a(IIJJ)V

    .line 96
    .line 97
    .line 98
    move-wide v2, v3

    .line 99
    iget-wide v4, p0, Lc1/r;->n:J

    .line 100
    .line 101
    move v1, v9

    .line 102
    invoke-virtual/range {v0 .. v5}, Lc1/r;->c(IJJ)V

    .line 103
    .line 104
    .line 105
    add-int v1, v10, v11

    .line 106
    .line 107
    goto :goto_0
.end method

.method public createTracks(Lv0/F;Lc1/W;)V
    .locals 4

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
    iput-object v0, p0, Lc1/r;->j:Ljava/lang/String;

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
    iput-object v0, p0, Lc1/r;->k:Lv0/r0;

    .line 20
    .line 21
    new-instance v1, Lc1/q;

    .line 22
    .line 23
    iget-boolean v2, p0, Lc1/r;->b:Z

    .line 24
    .line 25
    iget-boolean v3, p0, Lc1/r;->c:Z

    .line 26
    .line 27
    invoke-direct {v1, v0, v2, v3}, Lc1/q;-><init>(Lv0/r0;ZZ)V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Lc1/r;->l:Lc1/q;

    .line 31
    .line 32
    iget-object v0, p0, Lc1/r;->a:Lc1/L;

    .line 33
    .line 34
    invoke-virtual {v0, p1, p2}, Lc1/L;->createTracks(Lv0/F;Lc1/W;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public packetFinished(Z)V
    .locals 14

    .line 1
    iget-object v0, p0, Lc1/r;->k:Lv0/r0;

    .line 2
    .line 3
    invoke-static {v0}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lc1/r;->l:Lc1/q;

    .line 7
    .line 8
    invoke-static {v0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lc1/r;->a:Lc1/L;

    .line 14
    .line 15
    invoke-virtual {p1}, Lc1/L;->flush()V

    .line 16
    .line 17
    .line 18
    iget-wide v3, p0, Lc1/r;->h:J

    .line 19
    .line 20
    iget-wide v5, p0, Lc1/r;->n:J

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    const/4 v2, 0x0

    .line 24
    move-object v0, p0

    .line 25
    invoke-virtual/range {v0 .. v6}, Lc1/r;->a(IIJJ)V

    .line 26
    .line 27
    .line 28
    move-object v7, v0

    .line 29
    iget-wide v9, v7, Lc1/r;->h:J

    .line 30
    .line 31
    const/16 v8, 0x9

    .line 32
    .line 33
    iget-wide v11, v7, Lc1/r;->n:J

    .line 34
    .line 35
    invoke-virtual/range {v7 .. v12}, Lc1/r;->c(IJJ)V

    .line 36
    .line 37
    .line 38
    iget-wide v10, v7, Lc1/r;->h:J

    .line 39
    .line 40
    iget-wide v12, v7, Lc1/r;->n:J

    .line 41
    .line 42
    const/4 v8, 0x0

    .line 43
    const/4 v9, 0x0

    .line 44
    invoke-virtual/range {v7 .. v13}, Lc1/r;->a(IIJJ)V

    .line 45
    .line 46
    .line 47
    :cond_0
    return-void
.end method

.method public packetStarted(JI)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lc1/r;->n:J

    .line 2
    .line 3
    iget-boolean p1, p0, Lc1/r;->o:Z

    .line 4
    .line 5
    and-int/lit8 p2, p3, 0x2

    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    const/4 p2, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p2, 0x0

    .line 12
    :goto_0
    or-int/2addr p1, p2

    .line 13
    iput-boolean p1, p0, Lc1/r;->o:Z

    .line 14
    .line 15
    return-void
.end method

.method public seek()V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lc1/r;->h:J

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lc1/r;->o:Z

    .line 7
    .line 8
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    iput-wide v0, p0, Lc1/r;->n:J

    .line 14
    .line 15
    iget-object v0, p0, Lc1/r;->i:[Z

    .line 16
    .line 17
    invoke-static {v0}, Ls0/v;->clearPrefixFlags([Z)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lc1/r;->e:Lc1/B;

    .line 21
    .line 22
    invoke-virtual {v0}, Lc1/B;->reset()V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lc1/r;->f:Lc1/B;

    .line 26
    .line 27
    invoke-virtual {v0}, Lc1/B;->reset()V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lc1/r;->g:Lc1/B;

    .line 31
    .line 32
    invoke-virtual {v0}, Lc1/B;->reset()V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lc1/r;->a:Lc1/L;

    .line 36
    .line 37
    invoke-virtual {v0}, Lc1/L;->clear()V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lc1/r;->l:Lc1/q;

    .line 41
    .line 42
    if-eqz v0, :cond_0

    .line 43
    .line 44
    invoke-virtual {v0}, Lc1/q;->reset()V

    .line 45
    .line 46
    .line 47
    :cond_0
    return-void
.end method
