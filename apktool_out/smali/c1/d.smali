.class public final Lc1/d;
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

.field public k:Z

.field public l:J

.field public m:Landroidx/media3/common/Format;

.field public n:I

.field public o:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1, p1}, Lc1/d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Landroidx/media3/common/util/ParsableBitArray;

    const/16 v1, 0x10

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;-><init>([B)V

    iput-object v0, p0, Lc1/d;->a:Landroidx/media3/common/util/ParsableBitArray;

    .line 4
    new-instance v1, Landroidx/media3/common/util/ParsableByteArray;

    iget-object v0, v0, Landroidx/media3/common/util/ParsableBitArray;->data:[B

    invoke-direct {v1, v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    iput-object v1, p0, Lc1/d;->b:Landroidx/media3/common/util/ParsableByteArray;

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lc1/d;->h:I

    .line 6
    iput v0, p0, Lc1/d;->i:I

    .line 7
    iput-boolean v0, p0, Lc1/d;->j:Z

    .line 8
    iput-boolean v0, p0, Lc1/d;->k:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 9
    iput-wide v0, p0, Lc1/d;->o:J

    .line 10
    iput-object p1, p0, Lc1/d;->c:Ljava/lang/String;

    .line 11
    iput p2, p0, Lc1/d;->d:I

    .line 12
    iput-object p3, p0, Lc1/d;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public consume(Landroidx/media3/common/util/ParsableByteArray;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lc1/d;->g:Lv0/r0;

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
    if-lez v0, :cond_d

    .line 11
    .line 12
    iget v0, p0, Lc1/d;->h:I

    .line 13
    .line 14
    iget-object v1, p0, Lc1/d;->b:Landroidx/media3/common/util/ParsableByteArray;

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    const/4 v3, 0x1

    .line 18
    const/4 v4, 0x0

    .line 19
    if-eqz v0, :cond_6

    .line 20
    .line 21
    if-eq v0, v3, :cond_3

    .line 22
    .line 23
    if-eq v0, v2, :cond_1

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
    iget v1, p0, Lc1/d;->n:I

    .line 31
    .line 32
    iget v2, p0, Lc1/d;->i:I

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
    iget-object v1, p0, Lc1/d;->g:Lv0/r0;

    .line 40
    .line 41
    invoke-interface {v1, p1, v0}, Lv0/r0;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    .line 42
    .line 43
    .line 44
    iget v1, p0, Lc1/d;->i:I

    .line 45
    .line 46
    add-int/2addr v1, v0

    .line 47
    iput v1, p0, Lc1/d;->i:I

    .line 48
    .line 49
    iget v0, p0, Lc1/d;->n:I

    .line 50
    .line 51
    if-ne v1, v0, :cond_0

    .line 52
    .line 53
    iget-wide v0, p0, Lc1/d;->o:J

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
    iget-object v5, p0, Lc1/d;->g:Lv0/r0;

    .line 70
    .line 71
    iget-wide v6, p0, Lc1/d;->o:J

    .line 72
    .line 73
    iget v9, p0, Lc1/d;->n:I

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
    iget-wide v0, p0, Lc1/d;->o:J

    .line 82
    .line 83
    iget-wide v2, p0, Lc1/d;->l:J

    .line 84
    .line 85
    add-long/2addr v0, v2

    .line 86
    iput-wide v0, p0, Lc1/d;->o:J

    .line 87
    .line 88
    iput v4, p0, Lc1/d;->h:I

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_3
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

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
    iget v5, p0, Lc1/d;->i:I

    .line 100
    .line 101
    const/16 v6, 0x10

    .line 102
    .line 103
    rsub-int/lit8 v5, v5, 0x10

    .line 104
    .line 105
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    .line 106
    .line 107
    .line 108
    move-result v3

    .line 109
    iget v5, p0, Lc1/d;->i:I

    .line 110
    .line 111
    invoke-virtual {p1, v0, v5, v3}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 112
    .line 113
    .line 114
    iget v0, p0, Lc1/d;->i:I

    .line 115
    .line 116
    add-int/2addr v0, v3

    .line 117
    iput v0, p0, Lc1/d;->i:I

    .line 118
    .line 119
    if-ne v0, v6, :cond_0

    .line 120
    .line 121
    iget-object v0, p0, Lc1/d;->a:Landroidx/media3/common/util/ParsableBitArray;

    .line 122
    .line 123
    invoke-virtual {v0, v4}, Landroidx/media3/common/util/ParsableBitArray;->setPosition(I)V

    .line 124
    .line 125
    .line 126
    invoke-static {v0}, Lv0/g;->parseAc4SyncframeInfo(Landroidx/media3/common/util/ParsableBitArray;)Lv0/f;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    iget-object v3, p0, Lc1/d;->m:Landroidx/media3/common/Format;

    .line 131
    .line 132
    const-string v5, "audio/ac4"

    .line 133
    .line 134
    if-eqz v3, :cond_4

    .line 135
    .line 136
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 137
    .line 138
    .line 139
    iget v7, v3, Landroidx/media3/common/Format;->channelCount:I

    .line 140
    .line 141
    if-ne v2, v7, :cond_4

    .line 142
    .line 143
    iget v7, v0, Lv0/f;->a:I

    .line 144
    .line 145
    iget v8, v3, Landroidx/media3/common/Format;->sampleRate:I

    .line 146
    .line 147
    if-ne v7, v8, :cond_4

    .line 148
    .line 149
    iget-object v3, v3, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 150
    .line 151
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result v3

    .line 155
    if-nez v3, :cond_5

    .line 156
    .line 157
    :cond_4
    new-instance v3, Landroidx/media3/common/Format$Builder;

    .line 158
    .line 159
    invoke-direct {v3}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 160
    .line 161
    .line 162
    iget-object v7, p0, Lc1/d;->f:Ljava/lang/String;

    .line 163
    .line 164
    invoke-virtual {v3, v7}, Landroidx/media3/common/Format$Builder;->setId(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 165
    .line 166
    .line 167
    move-result-object v3

    .line 168
    iget-object v7, p0, Lc1/d;->e:Ljava/lang/String;

    .line 169
    .line 170
    invoke-virtual {v3, v7}, Landroidx/media3/common/Format$Builder;->setContainerMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 171
    .line 172
    .line 173
    move-result-object v3

    .line 174
    invoke-virtual {v3, v5}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 175
    .line 176
    .line 177
    move-result-object v3

    .line 178
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v3, v2}, Landroidx/media3/common/Format$Builder;->setChannelCount(I)Landroidx/media3/common/Format$Builder;

    .line 182
    .line 183
    .line 184
    move-result-object v3

    .line 185
    iget v5, v0, Lv0/f;->a:I

    .line 186
    .line 187
    invoke-virtual {v3, v5}, Landroidx/media3/common/Format$Builder;->setSampleRate(I)Landroidx/media3/common/Format$Builder;

    .line 188
    .line 189
    .line 190
    move-result-object v3

    .line 191
    iget-object v5, p0, Lc1/d;->c:Ljava/lang/String;

    .line 192
    .line 193
    invoke-virtual {v3, v5}, Landroidx/media3/common/Format$Builder;->setLanguage(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 194
    .line 195
    .line 196
    move-result-object v3

    .line 197
    iget v5, p0, Lc1/d;->d:I

    .line 198
    .line 199
    invoke-virtual {v3, v5}, Landroidx/media3/common/Format$Builder;->setRoleFlags(I)Landroidx/media3/common/Format$Builder;

    .line 200
    .line 201
    .line 202
    move-result-object v3

    .line 203
    invoke-virtual {v3}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    .line 204
    .line 205
    .line 206
    move-result-object v3

    .line 207
    iput-object v3, p0, Lc1/d;->m:Landroidx/media3/common/Format;

    .line 208
    .line 209
    iget-object v5, p0, Lc1/d;->g:Lv0/r0;

    .line 210
    .line 211
    invoke-interface {v5, v3}, Lv0/r0;->format(Landroidx/media3/common/Format;)V

    .line 212
    .line 213
    .line 214
    :cond_5
    iget v3, v0, Lv0/f;->b:I

    .line 215
    .line 216
    iput v3, p0, Lc1/d;->n:I

    .line 217
    .line 218
    iget v0, v0, Lv0/f;->c:I

    .line 219
    .line 220
    int-to-long v7, v0

    .line 221
    const-wide/32 v9, 0xf4240

    .line 222
    .line 223
    .line 224
    mul-long/2addr v7, v9

    .line 225
    iget-object v0, p0, Lc1/d;->m:Landroidx/media3/common/Format;

    .line 226
    .line 227
    iget v0, v0, Landroidx/media3/common/Format;->sampleRate:I

    .line 228
    .line 229
    int-to-long v9, v0

    .line 230
    div-long/2addr v7, v9

    .line 231
    iput-wide v7, p0, Lc1/d;->l:J

    .line 232
    .line 233
    invoke-virtual {v1, v4}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 234
    .line 235
    .line 236
    iget-object v0, p0, Lc1/d;->g:Lv0/r0;

    .line 237
    .line 238
    invoke-interface {v0, v1, v6}, Lv0/r0;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    .line 239
    .line 240
    .line 241
    iput v2, p0, Lc1/d;->h:I

    .line 242
    .line 243
    goto/16 :goto_0

    .line 244
    .line 245
    :cond_6
    :goto_2
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 246
    .line 247
    .line 248
    move-result v0

    .line 249
    if-lez v0, :cond_0

    .line 250
    .line 251
    iget-boolean v0, p0, Lc1/d;->j:Z

    .line 252
    .line 253
    const/16 v5, 0xac

    .line 254
    .line 255
    if-nez v0, :cond_8

    .line 256
    .line 257
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 258
    .line 259
    .line 260
    move-result v0

    .line 261
    if-ne v0, v5, :cond_7

    .line 262
    .line 263
    move v0, v3

    .line 264
    goto :goto_3

    .line 265
    :cond_7
    move v0, v4

    .line 266
    :goto_3
    iput-boolean v0, p0, Lc1/d;->j:Z

    .line 267
    .line 268
    goto :goto_2

    .line 269
    :cond_8
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 270
    .line 271
    .line 272
    move-result v0

    .line 273
    if-ne v0, v5, :cond_9

    .line 274
    .line 275
    move v5, v3

    .line 276
    goto :goto_4

    .line 277
    :cond_9
    move v5, v4

    .line 278
    :goto_4
    iput-boolean v5, p0, Lc1/d;->j:Z

    .line 279
    .line 280
    const/16 v5, 0x41

    .line 281
    .line 282
    const/16 v6, 0x40

    .line 283
    .line 284
    if-eq v0, v6, :cond_a

    .line 285
    .line 286
    if-ne v0, v5, :cond_6

    .line 287
    .line 288
    :cond_a
    if-ne v0, v5, :cond_b

    .line 289
    .line 290
    move v0, v3

    .line 291
    goto :goto_5

    .line 292
    :cond_b
    move v0, v4

    .line 293
    :goto_5
    iput-boolean v0, p0, Lc1/d;->k:Z

    .line 294
    .line 295
    iput v3, p0, Lc1/d;->h:I

    .line 296
    .line 297
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    const/16 v7, -0x54

    .line 302
    .line 303
    aput-byte v7, v0, v4

    .line 304
    .line 305
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 306
    .line 307
    .line 308
    move-result-object v0

    .line 309
    iget-boolean v1, p0, Lc1/d;->k:Z

    .line 310
    .line 311
    if-eqz v1, :cond_c

    .line 312
    .line 313
    goto :goto_6

    .line 314
    :cond_c
    move v5, v6

    .line 315
    :goto_6
    int-to-byte v1, v5

    .line 316
    aput-byte v1, v0, v3

    .line 317
    .line 318
    iput v2, p0, Lc1/d;->i:I

    .line 319
    .line 320
    goto/16 :goto_0

    .line 321
    .line 322
    :cond_d
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
    iput-object v0, p0, Lc1/d;->f:Ljava/lang/String;

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
    iput-object p1, p0, Lc1/d;->g:Lv0/r0;

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
    iput-wide p1, p0, Lc1/d;->o:J

    .line 2
    .line 3
    return-void
.end method

.method public seek()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lc1/d;->h:I

    .line 3
    .line 4
    iput v0, p0, Lc1/d;->i:I

    .line 5
    .line 6
    iput-boolean v0, p0, Lc1/d;->j:Z

    .line 7
    .line 8
    iput-boolean v0, p0, Lc1/d;->k:Z

    .line 9
    .line 10
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    iput-wide v0, p0, Lc1/d;->o:J

    .line 16
    .line 17
    return-void
.end method
