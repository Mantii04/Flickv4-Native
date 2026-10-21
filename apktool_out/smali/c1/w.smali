.class public final Lc1/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc1/j;


# instance fields
.field public final a:Landroidx/media3/common/util/ParsableByteArray;

.field public final b:Lv0/Y;

.field public final c:Ljava/lang/String;

.field public final d:I

.field public final e:Ljava/lang/String;

.field public f:Lv0/r0;

.field public g:Ljava/lang/String;

.field public h:I

.field public i:I

.field public j:Z

.field public k:Z

.field public l:J

.field public m:I

.field public n:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1, p1}, Lc1/w;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lc1/w;->h:I

    .line 4
    new-instance v1, Landroidx/media3/common/util/ParsableByteArray;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object v1, p0, Lc1/w;->a:Landroidx/media3/common/util/ParsableByteArray;

    .line 5
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v1

    const/4 v2, -0x1

    aput-byte v2, v1, v0

    .line 6
    new-instance v0, Lv0/Y;

    invoke-direct {v0}, Lv0/Y;-><init>()V

    iput-object v0, p0, Lc1/w;->b:Lv0/Y;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 7
    iput-wide v0, p0, Lc1/w;->n:J

    .line 8
    iput-object p1, p0, Lc1/w;->c:Ljava/lang/String;

    .line 9
    iput p2, p0, Lc1/w;->d:I

    .line 10
    iput-object p3, p0, Lc1/w;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public consume(Landroidx/media3/common/util/ParsableByteArray;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lc1/w;->f:Lv0/r0;

    .line 2
    .line 3
    invoke-static {v0}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    :goto_0
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-lez v0, :cond_c

    .line 11
    .line 12
    iget v0, p0, Lc1/w;->h:I

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    iget-object v2, p0, Lc1/w;->a:Landroidx/media3/common/util/ParsableByteArray;

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    const/4 v4, 0x2

    .line 19
    if-eqz v0, :cond_7

    .line 20
    .line 21
    if-eq v0, v1, :cond_3

    .line 22
    .line 23
    if-ne v0, v4, :cond_2

    .line 24
    .line 25
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iget v2, p0, Lc1/w;->m:I

    .line 30
    .line 31
    iget v4, p0, Lc1/w;->i:I

    .line 32
    .line 33
    sub-int/2addr v2, v4

    .line 34
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    iget-object v2, p0, Lc1/w;->f:Lv0/r0;

    .line 39
    .line 40
    invoke-interface {v2, p1, v0}, Lv0/r0;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    .line 41
    .line 42
    .line 43
    iget v2, p0, Lc1/w;->i:I

    .line 44
    .line 45
    add-int/2addr v2, v0

    .line 46
    iput v2, p0, Lc1/w;->i:I

    .line 47
    .line 48
    iget v0, p0, Lc1/w;->m:I

    .line 49
    .line 50
    if-ge v2, v0, :cond_0

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    iget-wide v4, p0, Lc1/w;->n:J

    .line 54
    .line 55
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    cmp-long v0, v4, v6

    .line 61
    .line 62
    if-eqz v0, :cond_1

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_1
    move v1, v3

    .line 66
    :goto_1
    invoke-static {v1}, LP3/v;->checkState(Z)V

    .line 67
    .line 68
    .line 69
    iget-object v4, p0, Lc1/w;->f:Lv0/r0;

    .line 70
    .line 71
    iget-wide v5, p0, Lc1/w;->n:J

    .line 72
    .line 73
    iget v8, p0, Lc1/w;->m:I

    .line 74
    .line 75
    const/4 v7, 0x1

    .line 76
    const/4 v9, 0x0

    .line 77
    const/4 v10, 0x0

    .line 78
    invoke-interface/range {v4 .. v10}, Lv0/r0;->sampleMetadata(JIIILv0/q0;)V

    .line 79
    .line 80
    .line 81
    iget-wide v0, p0, Lc1/w;->n:J

    .line 82
    .line 83
    iget-wide v4, p0, Lc1/w;->l:J

    .line 84
    .line 85
    add-long/2addr v0, v4

    .line 86
    iput-wide v0, p0, Lc1/w;->n:J

    .line 87
    .line 88
    iput v3, p0, Lc1/w;->i:I

    .line 89
    .line 90
    iput v3, p0, Lc1/w;->h:I

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 94
    .line 95
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 96
    .line 97
    .line 98
    throw p1

    .line 99
    :cond_3
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    iget v5, p0, Lc1/w;->i:I

    .line 104
    .line 105
    const/4 v6, 0x4

    .line 106
    rsub-int/lit8 v5, v5, 0x4

    .line 107
    .line 108
    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 113
    .line 114
    .line 115
    move-result-object v5

    .line 116
    iget v7, p0, Lc1/w;->i:I

    .line 117
    .line 118
    invoke-virtual {p1, v5, v7, v0}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 119
    .line 120
    .line 121
    iget v5, p0, Lc1/w;->i:I

    .line 122
    .line 123
    add-int/2addr v5, v0

    .line 124
    iput v5, p0, Lc1/w;->i:I

    .line 125
    .line 126
    if-ge v5, v6, :cond_4

    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_4
    invoke-virtual {v2, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    iget-object v5, p0, Lc1/w;->b:Lv0/Y;

    .line 137
    .line 138
    invoke-virtual {v5, v0}, Lv0/Y;->setForHeaderData(I)Z

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    if-nez v0, :cond_5

    .line 143
    .line 144
    iput v3, p0, Lc1/w;->i:I

    .line 145
    .line 146
    iput v1, p0, Lc1/w;->h:I

    .line 147
    .line 148
    goto/16 :goto_0

    .line 149
    .line 150
    :cond_5
    iget v0, v5, Lv0/Y;->c:I

    .line 151
    .line 152
    iput v0, p0, Lc1/w;->m:I

    .line 153
    .line 154
    iget-boolean v0, p0, Lc1/w;->j:Z

    .line 155
    .line 156
    if-nez v0, :cond_6

    .line 157
    .line 158
    iget v0, v5, Lv0/Y;->g:I

    .line 159
    .line 160
    int-to-long v7, v0

    .line 161
    const-wide/32 v9, 0xf4240

    .line 162
    .line 163
    .line 164
    mul-long/2addr v7, v9

    .line 165
    iget v0, v5, Lv0/Y;->d:I

    .line 166
    .line 167
    int-to-long v9, v0

    .line 168
    div-long/2addr v7, v9

    .line 169
    iput-wide v7, p0, Lc1/w;->l:J

    .line 170
    .line 171
    new-instance v0, Landroidx/media3/common/Format$Builder;

    .line 172
    .line 173
    invoke-direct {v0}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 174
    .line 175
    .line 176
    iget-object v7, p0, Lc1/w;->g:Ljava/lang/String;

    .line 177
    .line 178
    invoke-virtual {v0, v7}, Landroidx/media3/common/Format$Builder;->setId(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    iget-object v7, p0, Lc1/w;->e:Ljava/lang/String;

    .line 183
    .line 184
    invoke-virtual {v0, v7}, Landroidx/media3/common/Format$Builder;->setContainerMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    iget-object v7, v5, Lv0/Y;->b:Ljava/lang/String;

    .line 189
    .line 190
    invoke-virtual {v0, v7}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    const/16 v7, 0x1000

    .line 195
    .line 196
    invoke-virtual {v0, v7}, Landroidx/media3/common/Format$Builder;->setMaxInputSize(I)Landroidx/media3/common/Format$Builder;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    iget v7, v5, Lv0/Y;->e:I

    .line 201
    .line 202
    invoke-virtual {v0, v7}, Landroidx/media3/common/Format$Builder;->setChannelCount(I)Landroidx/media3/common/Format$Builder;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    iget v5, v5, Lv0/Y;->d:I

    .line 207
    .line 208
    invoke-virtual {v0, v5}, Landroidx/media3/common/Format$Builder;->setSampleRate(I)Landroidx/media3/common/Format$Builder;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    iget-object v5, p0, Lc1/w;->c:Ljava/lang/String;

    .line 213
    .line 214
    invoke-virtual {v0, v5}, Landroidx/media3/common/Format$Builder;->setLanguage(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    iget v5, p0, Lc1/w;->d:I

    .line 219
    .line 220
    invoke-virtual {v0, v5}, Landroidx/media3/common/Format$Builder;->setRoleFlags(I)Landroidx/media3/common/Format$Builder;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    invoke-virtual {v0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    iget-object v5, p0, Lc1/w;->f:Lv0/r0;

    .line 229
    .line 230
    invoke-interface {v5, v0}, Lv0/r0;->format(Landroidx/media3/common/Format;)V

    .line 231
    .line 232
    .line 233
    iput-boolean v1, p0, Lc1/w;->j:Z

    .line 234
    .line 235
    :cond_6
    invoke-virtual {v2, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 236
    .line 237
    .line 238
    iget-object v0, p0, Lc1/w;->f:Lv0/r0;

    .line 239
    .line 240
    invoke-interface {v0, v2, v6}, Lv0/r0;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    .line 241
    .line 242
    .line 243
    iput v4, p0, Lc1/w;->h:I

    .line 244
    .line 245
    goto/16 :goto_0

    .line 246
    .line 247
    :cond_7
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    .line 252
    .line 253
    .line 254
    move-result v5

    .line 255
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    .line 256
    .line 257
    .line 258
    move-result v6

    .line 259
    :goto_2
    if-ge v5, v6, :cond_b

    .line 260
    .line 261
    aget-byte v7, v0, v5

    .line 262
    .line 263
    and-int/lit16 v8, v7, 0xff

    .line 264
    .line 265
    const/16 v9, 0xff

    .line 266
    .line 267
    if-ne v8, v9, :cond_8

    .line 268
    .line 269
    move v8, v1

    .line 270
    goto :goto_3

    .line 271
    :cond_8
    move v8, v3

    .line 272
    :goto_3
    iget-boolean v9, p0, Lc1/w;->k:Z

    .line 273
    .line 274
    if-eqz v9, :cond_9

    .line 275
    .line 276
    and-int/lit16 v7, v7, 0xe0

    .line 277
    .line 278
    const/16 v9, 0xe0

    .line 279
    .line 280
    if-ne v7, v9, :cond_9

    .line 281
    .line 282
    move v7, v1

    .line 283
    goto :goto_4

    .line 284
    :cond_9
    move v7, v3

    .line 285
    :goto_4
    iput-boolean v8, p0, Lc1/w;->k:Z

    .line 286
    .line 287
    if-eqz v7, :cond_a

    .line 288
    .line 289
    add-int/lit8 v6, v5, 0x1

    .line 290
    .line 291
    invoke-virtual {p1, v6}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 292
    .line 293
    .line 294
    iput-boolean v3, p0, Lc1/w;->k:Z

    .line 295
    .line 296
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 297
    .line 298
    .line 299
    move-result-object v2

    .line 300
    aget-byte v0, v0, v5

    .line 301
    .line 302
    aput-byte v0, v2, v1

    .line 303
    .line 304
    iput v4, p0, Lc1/w;->i:I

    .line 305
    .line 306
    iput v1, p0, Lc1/w;->h:I

    .line 307
    .line 308
    goto/16 :goto_0

    .line 309
    .line 310
    :cond_a
    add-int/lit8 v5, v5, 0x1

    .line 311
    .line 312
    goto :goto_2

    .line 313
    :cond_b
    invoke-virtual {p1, v6}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 314
    .line 315
    .line 316
    goto/16 :goto_0

    .line 317
    .line 318
    :cond_c
    return-void
.end method

.method public createTracks(Lv0/F;Lc1/W;)V
    .locals 1

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
    iput-object v0, p0, Lc1/w;->g:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {p2}, Lc1/W;->getTrackId()I

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    const/4 v0, 0x1

    .line 15
    invoke-interface {p1, p2, v0}, Lv0/F;->track(II)Lv0/r0;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Lc1/w;->f:Lv0/r0;

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
    iput-wide p1, p0, Lc1/w;->n:J

    .line 2
    .line 3
    return-void
.end method

.method public seek()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lc1/w;->h:I

    .line 3
    .line 4
    iput v0, p0, Lc1/w;->i:I

    .line 5
    .line 6
    iput-boolean v0, p0, Lc1/w;->k:Z

    .line 7
    .line 8
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    iput-wide v0, p0, Lc1/w;->n:J

    .line 14
    .line 15
    return-void
.end method
