.class public final Lc1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc1/j;


# instance fields
.field public final a:Landroidx/media3/common/util/ParsableBitArray;

.field public final b:Landroidx/media3/common/util/ParsableByteArray;

.field public final c:Ljava/lang/String;

.field public final d:I

.field public final e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Lv0/r0;

.field public h:I

.field public i:I

.field public j:Z

.field public k:J

.field public l:Landroidx/media3/common/Format;

.field public m:I

.field public n:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1, p1}, Lc1/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Landroidx/media3/common/util/ParsableBitArray;

    const/16 v1, 0x80

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;-><init>([B)V

    iput-object v0, p0, Lc1/b;->a:Landroidx/media3/common/util/ParsableBitArray;

    .line 4
    new-instance v1, Landroidx/media3/common/util/ParsableByteArray;

    iget-object v0, v0, Landroidx/media3/common/util/ParsableBitArray;->data:[B

    invoke-direct {v1, v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    iput-object v1, p0, Lc1/b;->b:Landroidx/media3/common/util/ParsableByteArray;

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lc1/b;->h:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 6
    iput-wide v0, p0, Lc1/b;->n:J

    .line 7
    iput-object p1, p0, Lc1/b;->c:Ljava/lang/String;

    .line 8
    iput p2, p0, Lc1/b;->d:I

    .line 9
    iput-object p3, p0, Lc1/b;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public consume(Landroidx/media3/common/util/ParsableByteArray;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lc1/b;->g:Lv0/r0;

    .line 2
    .line 3
    invoke-static {v0}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    :cond_0
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
    iget v0, p0, Lc1/b;->h:I

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    iget-object v2, p0, Lc1/b;->b:Landroidx/media3/common/util/ParsableByteArray;

    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    const/4 v4, 0x0

    .line 19
    if-eqz v0, :cond_7

    .line 20
    .line 21
    if-eq v0, v3, :cond_3

    .line 22
    .line 23
    if-eq v0, v1, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    iget v1, p0, Lc1/b;->m:I

    .line 31
    .line 32
    iget v2, p0, Lc1/b;->i:I

    .line 33
    .line 34
    sub-int/2addr v1, v2

    .line 35
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    iget-object v1, p0, Lc1/b;->g:Lv0/r0;

    .line 40
    .line 41
    invoke-interface {v1, p1, v0}, Lv0/r0;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    .line 42
    .line 43
    .line 44
    iget v1, p0, Lc1/b;->i:I

    .line 45
    .line 46
    add-int/2addr v1, v0

    .line 47
    iput v1, p0, Lc1/b;->i:I

    .line 48
    .line 49
    iget v0, p0, Lc1/b;->m:I

    .line 50
    .line 51
    if-ne v1, v0, :cond_0

    .line 52
    .line 53
    iget-wide v0, p0, Lc1/b;->n:J

    .line 54
    .line 55
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    cmp-long v0, v0, v5

    .line 61
    .line 62
    if-eqz v0, :cond_2

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    move v3, v4

    .line 66
    :goto_1
    invoke-static {v3}, LP3/v;->checkState(Z)V

    .line 67
    .line 68
    .line 69
    iget-object v5, p0, Lc1/b;->g:Lv0/r0;

    .line 70
    .line 71
    iget-wide v6, p0, Lc1/b;->n:J

    .line 72
    .line 73
    iget v9, p0, Lc1/b;->m:I

    .line 74
    .line 75
    const/4 v11, 0x0

    .line 76
    const/4 v8, 0x1

    .line 77
    const/4 v10, 0x0

    .line 78
    invoke-interface/range {v5 .. v11}, Lv0/r0;->sampleMetadata(JIIILv0/q0;)V

    .line 79
    .line 80
    .line 81
    iget-wide v0, p0, Lc1/b;->n:J

    .line 82
    .line 83
    iget-wide v2, p0, Lc1/b;->k:J

    .line 84
    .line 85
    add-long/2addr v0, v2

    .line 86
    iput-wide v0, p0, Lc1/b;->n:J

    .line 87
    .line 88
    iput v4, p0, Lc1/b;->h:I

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_3
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    iget v5, p0, Lc1/b;->i:I

    .line 100
    .line 101
    const/16 v6, 0x80

    .line 102
    .line 103
    rsub-int v5, v5, 0x80

    .line 104
    .line 105
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    .line 106
    .line 107
    .line 108
    move-result v3

    .line 109
    iget v5, p0, Lc1/b;->i:I

    .line 110
    .line 111
    invoke-virtual {p1, v0, v5, v3}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 112
    .line 113
    .line 114
    iget v0, p0, Lc1/b;->i:I

    .line 115
    .line 116
    add-int/2addr v0, v3

    .line 117
    iput v0, p0, Lc1/b;->i:I

    .line 118
    .line 119
    if-ne v0, v6, :cond_0

    .line 120
    .line 121
    iget-object v0, p0, Lc1/b;->a:Landroidx/media3/common/util/ParsableBitArray;

    .line 122
    .line 123
    invoke-virtual {v0, v4}, Landroidx/media3/common/util/ParsableBitArray;->setPosition(I)V

    .line 124
    .line 125
    .line 126
    invoke-static {v0}, Lv0/d;->parseAc3SyncframeInfo(Landroidx/media3/common/util/ParsableBitArray;)Lv0/c;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    iget-object v3, p0, Lc1/b;->l:Landroidx/media3/common/Format;

    .line 131
    .line 132
    if-eqz v3, :cond_4

    .line 133
    .line 134
    iget v5, v0, Lv0/c;->c:I

    .line 135
    .line 136
    iget v7, v3, Landroidx/media3/common/Format;->channelCount:I

    .line 137
    .line 138
    if-ne v5, v7, :cond_4

    .line 139
    .line 140
    iget v5, v0, Lv0/c;->b:I

    .line 141
    .line 142
    iget v7, v3, Landroidx/media3/common/Format;->sampleRate:I

    .line 143
    .line 144
    if-ne v5, v7, :cond_4

    .line 145
    .line 146
    iget-object v5, v0, Lv0/c;->a:Ljava/lang/String;

    .line 147
    .line 148
    iget-object v3, v3, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 149
    .line 150
    invoke-static {v5, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-result v3

    .line 154
    if-nez v3, :cond_6

    .line 155
    .line 156
    :cond_4
    new-instance v3, Landroidx/media3/common/Format$Builder;

    .line 157
    .line 158
    invoke-direct {v3}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 159
    .line 160
    .line 161
    iget-object v5, p0, Lc1/b;->f:Ljava/lang/String;

    .line 162
    .line 163
    invoke-virtual {v3, v5}, Landroidx/media3/common/Format$Builder;->setId(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    iget-object v5, p0, Lc1/b;->e:Ljava/lang/String;

    .line 168
    .line 169
    invoke-virtual {v3, v5}, Landroidx/media3/common/Format$Builder;->setContainerMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 170
    .line 171
    .line 172
    move-result-object v3

    .line 173
    iget-object v5, v0, Lv0/c;->a:Ljava/lang/String;

    .line 174
    .line 175
    invoke-virtual {v3, v5}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    iget v5, v0, Lv0/c;->c:I

    .line 180
    .line 181
    invoke-virtual {v3, v5}, Landroidx/media3/common/Format$Builder;->setChannelCount(I)Landroidx/media3/common/Format$Builder;

    .line 182
    .line 183
    .line 184
    move-result-object v3

    .line 185
    iget v5, v0, Lv0/c;->b:I

    .line 186
    .line 187
    invoke-virtual {v3, v5}, Landroidx/media3/common/Format$Builder;->setSampleRate(I)Landroidx/media3/common/Format$Builder;

    .line 188
    .line 189
    .line 190
    move-result-object v3

    .line 191
    iget-object v5, p0, Lc1/b;->c:Ljava/lang/String;

    .line 192
    .line 193
    invoke-virtual {v3, v5}, Landroidx/media3/common/Format$Builder;->setLanguage(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 194
    .line 195
    .line 196
    move-result-object v3

    .line 197
    iget v5, p0, Lc1/b;->d:I

    .line 198
    .line 199
    invoke-virtual {v3, v5}, Landroidx/media3/common/Format$Builder;->setRoleFlags(I)Landroidx/media3/common/Format$Builder;

    .line 200
    .line 201
    .line 202
    move-result-object v3

    .line 203
    iget v5, v0, Lv0/c;->f:I

    .line 204
    .line 205
    invoke-virtual {v3, v5}, Landroidx/media3/common/Format$Builder;->setPeakBitrate(I)Landroidx/media3/common/Format$Builder;

    .line 206
    .line 207
    .line 208
    move-result-object v3

    .line 209
    const-string v7, "audio/ac3"

    .line 210
    .line 211
    iget-object v8, v0, Lv0/c;->a:Ljava/lang/String;

    .line 212
    .line 213
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    move-result v7

    .line 217
    if-eqz v7, :cond_5

    .line 218
    .line 219
    invoke-virtual {v3, v5}, Landroidx/media3/common/Format$Builder;->setAverageBitrate(I)Landroidx/media3/common/Format$Builder;

    .line 220
    .line 221
    .line 222
    :cond_5
    invoke-virtual {v3}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    .line 223
    .line 224
    .line 225
    move-result-object v3

    .line 226
    iput-object v3, p0, Lc1/b;->l:Landroidx/media3/common/Format;

    .line 227
    .line 228
    iget-object v5, p0, Lc1/b;->g:Lv0/r0;

    .line 229
    .line 230
    invoke-interface {v5, v3}, Lv0/r0;->format(Landroidx/media3/common/Format;)V

    .line 231
    .line 232
    .line 233
    :cond_6
    iget v3, v0, Lv0/c;->d:I

    .line 234
    .line 235
    iput v3, p0, Lc1/b;->m:I

    .line 236
    .line 237
    iget v0, v0, Lv0/c;->e:I

    .line 238
    .line 239
    int-to-long v7, v0

    .line 240
    const-wide/32 v9, 0xf4240

    .line 241
    .line 242
    .line 243
    mul-long/2addr v7, v9

    .line 244
    iget-object v0, p0, Lc1/b;->l:Landroidx/media3/common/Format;

    .line 245
    .line 246
    iget v0, v0, Landroidx/media3/common/Format;->sampleRate:I

    .line 247
    .line 248
    int-to-long v9, v0

    .line 249
    div-long/2addr v7, v9

    .line 250
    iput-wide v7, p0, Lc1/b;->k:J

    .line 251
    .line 252
    invoke-virtual {v2, v4}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 253
    .line 254
    .line 255
    iget-object v0, p0, Lc1/b;->g:Lv0/r0;

    .line 256
    .line 257
    invoke-interface {v0, v2, v6}, Lv0/r0;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    .line 258
    .line 259
    .line 260
    iput v1, p0, Lc1/b;->h:I

    .line 261
    .line 262
    goto/16 :goto_0

    .line 263
    .line 264
    :cond_7
    :goto_2
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 265
    .line 266
    .line 267
    move-result v0

    .line 268
    if-lez v0, :cond_0

    .line 269
    .line 270
    iget-boolean v0, p0, Lc1/b;->j:Z

    .line 271
    .line 272
    const/16 v5, 0xb

    .line 273
    .line 274
    if-nez v0, :cond_9

    .line 275
    .line 276
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 277
    .line 278
    .line 279
    move-result v0

    .line 280
    if-ne v0, v5, :cond_8

    .line 281
    .line 282
    move v0, v3

    .line 283
    goto :goto_3

    .line 284
    :cond_8
    move v0, v4

    .line 285
    :goto_3
    iput-boolean v0, p0, Lc1/b;->j:Z

    .line 286
    .line 287
    goto :goto_2

    .line 288
    :cond_9
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 289
    .line 290
    .line 291
    move-result v0

    .line 292
    const/16 v6, 0x77

    .line 293
    .line 294
    if-ne v0, v6, :cond_a

    .line 295
    .line 296
    iput-boolean v4, p0, Lc1/b;->j:Z

    .line 297
    .line 298
    iput v3, p0, Lc1/b;->h:I

    .line 299
    .line 300
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 301
    .line 302
    .line 303
    move-result-object v0

    .line 304
    aput-byte v5, v0, v4

    .line 305
    .line 306
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    aput-byte v6, v0, v3

    .line 311
    .line 312
    iput v1, p0, Lc1/b;->i:I

    .line 313
    .line 314
    goto/16 :goto_0

    .line 315
    .line 316
    :cond_a
    if-ne v0, v5, :cond_b

    .line 317
    .line 318
    move v0, v3

    .line 319
    goto :goto_4

    .line 320
    :cond_b
    move v0, v4

    .line 321
    :goto_4
    iput-boolean v0, p0, Lc1/b;->j:Z

    .line 322
    .line 323
    goto :goto_2

    .line 324
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
    iput-object v0, p0, Lc1/b;->f:Ljava/lang/String;

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
    iput-object p1, p0, Lc1/b;->g:Lv0/r0;

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
    iput-wide p1, p0, Lc1/b;->n:J

    .line 2
    .line 3
    return-void
.end method

.method public seek()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lc1/b;->h:I

    .line 3
    .line 4
    iput v0, p0, Lc1/b;->i:I

    .line 5
    .line 6
    iput-boolean v0, p0, Lc1/b;->j:Z

    .line 7
    .line 8
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    iput-wide v0, p0, Lc1/b;->n:J

    .line 14
    .line 15
    return-void
.end method
