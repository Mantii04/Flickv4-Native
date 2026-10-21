.class public final Lc1/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv0/C;


# instance fields
.field public final a:I

.field public final b:Lc1/f;

.field public final c:Landroidx/media3/common/util/ParsableByteArray;

.field public final d:Landroidx/media3/common/util/ParsableByteArray;

.field public final e:Landroidx/media3/common/util/ParsableBitArray;

.field public f:Lv0/F;

.field public g:J

.field public h:J

.field public i:I

.field public j:Z

.field public k:Z

.field public l:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lc1/e;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_0

    or-int/lit8 p1, p1, 0x1

    .line 3
    :cond_0
    iput p1, p0, Lc1/e;->a:I

    .line 4
    new-instance p1, Lc1/f;

    const-string v0, "audio/mp4a-latm"

    const/4 v1, 0x1

    invoke-direct {p1, v1, v0}, Lc1/f;-><init>(ZLjava/lang/String;)V

    iput-object p1, p0, Lc1/e;->b:Lc1/f;

    .line 5
    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    const/16 v0, 0x800

    invoke-direct {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Lc1/e;->c:Landroidx/media3/common/util/ParsableByteArray;

    const/4 p1, -0x1

    .line 6
    iput p1, p0, Lc1/e;->i:I

    const-wide/16 v0, -0x1

    .line 7
    iput-wide v0, p0, Lc1/e;->h:J

    .line 8
    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Lc1/e;->d:Landroidx/media3/common/util/ParsableByteArray;

    .line 9
    new-instance v0, Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object p1

    invoke-direct {v0, p1}, Landroidx/media3/common/util/ParsableBitArray;-><init>([B)V

    iput-object v0, p0, Lc1/e;->e:Landroidx/media3/common/util/ParsableBitArray;

    return-void
.end method


# virtual methods
.method public final a(Lv0/D;)I
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Lc1/e;->d:Landroidx/media3/common/util/ParsableByteArray;

    .line 4
    .line 5
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 6
    .line 7
    .line 8
    move-result-object v3

    .line 9
    const/16 v4, 0xa

    .line 10
    .line 11
    invoke-interface {p1, v3, v0, v4}, Lv0/D;->peekFully([BII)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt24()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    const v4, 0x494433

    .line 22
    .line 23
    .line 24
    if-eq v3, v4, :cond_1

    .line 25
    .line 26
    invoke-interface {p1}, Lv0/D;->resetPeekPosition()V

    .line 27
    .line 28
    .line 29
    invoke-interface {p1, v1}, Lv0/D;->advancePeekPosition(I)V

    .line 30
    .line 31
    .line 32
    iget-wide v2, p0, Lc1/e;->h:J

    .line 33
    .line 34
    const-wide/16 v4, -0x1

    .line 35
    .line 36
    cmp-long p1, v2, v4

    .line 37
    .line 38
    if-nez p1, :cond_0

    .line 39
    .line 40
    int-to-long v2, v1

    .line 41
    iput-wide v2, p0, Lc1/e;->h:J

    .line 42
    .line 43
    :cond_0
    return v1

    .line 44
    :cond_1
    const/4 v3, 0x3

    .line 45
    invoke-virtual {v2, v3}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readSynchSafeInt()I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    add-int/lit8 v3, v2, 0xa

    .line 53
    .line 54
    add-int/2addr v1, v3

    .line 55
    invoke-interface {p1, v2}, Lv0/D;->advancePeekPosition(I)V

    .line 56
    .line 57
    .line 58
    goto :goto_0
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
    .locals 3

    .line 1
    iput-object p1, p0, Lc1/e;->f:Lv0/F;

    .line 2
    .line 3
    new-instance v0, Lc1/W;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    invoke-direct {v0, v1, v2}, Lc1/W;-><init>(II)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lc1/e;->b:Lc1/f;

    .line 11
    .line 12
    invoke-virtual {v1, p1, v0}, Lc1/f;->createTracks(Lv0/F;Lc1/W;)V

    .line 13
    .line 14
    .line 15
    invoke-interface {p1}, Lv0/F;->endTracks()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public read(Lv0/D;Lv0/c0;)I
    .locals 20
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
    iget-object v2, v0, Lc1/e;->f:Lv0/F;

    .line 6
    .line 7
    invoke-static {v2}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    invoke-interface {v1}, Lv0/D;->getLength()J

    .line 11
    .line 12
    .line 13
    move-result-wide v4

    .line 14
    iget v2, v0, Lc1/e;->a:I

    .line 15
    .line 16
    and-int/lit8 v3, v2, 0x2

    .line 17
    .line 18
    const/4 v11, 0x4

    .line 19
    const/4 v12, -0x1

    .line 20
    const/4 v13, 0x0

    .line 21
    const/4 v14, 0x1

    .line 22
    if-nez v3, :cond_1

    .line 23
    .line 24
    and-int/lit8 v6, v2, 0x1

    .line 25
    .line 26
    if-eqz v6, :cond_0

    .line 27
    .line 28
    const-wide/16 v6, -0x1

    .line 29
    .line 30
    cmp-long v6, v4, v6

    .line 31
    .line 32
    if-eqz v6, :cond_0

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    :goto_0
    move v6, v12

    .line 36
    goto/16 :goto_5

    .line 37
    .line 38
    :cond_1
    :goto_1
    iget-object v6, v0, Lc1/e;->e:Landroidx/media3/common/util/ParsableBitArray;

    .line 39
    .line 40
    iget-object v7, v0, Lc1/e;->d:Landroidx/media3/common/util/ParsableByteArray;

    .line 41
    .line 42
    iget-boolean v8, v0, Lc1/e;->j:Z

    .line 43
    .line 44
    if-eqz v8, :cond_2

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    iput v12, v0, Lc1/e;->i:I

    .line 48
    .line 49
    invoke-interface {v1}, Lv0/D;->resetPeekPosition()V

    .line 50
    .line 51
    .line 52
    invoke-interface {v1}, Lv0/D;->getPosition()J

    .line 53
    .line 54
    .line 55
    move-result-wide v8

    .line 56
    const-wide/16 v15, 0x0

    .line 57
    .line 58
    cmp-long v8, v8, v15

    .line 59
    .line 60
    if-nez v8, :cond_3

    .line 61
    .line 62
    invoke-virtual/range {p0 .. p1}, Lc1/e;->a(Lv0/D;)I

    .line 63
    .line 64
    .line 65
    :cond_3
    move v8, v13

    .line 66
    :goto_2
    :try_start_0
    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 67
    .line 68
    .line 69
    move-result-object v9

    .line 70
    const/4 v10, 0x2

    .line 71
    invoke-interface {v1, v9, v13, v10, v14}, Lv0/D;->peekFully([BIIZ)Z

    .line 72
    .line 73
    .line 74
    move-result v9

    .line 75
    if-eqz v9, :cond_9

    .line 76
    .line 77
    invoke-virtual {v7, v13}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    .line 81
    .line 82
    .line 83
    move-result v9

    .line 84
    invoke-static {v9}, Lc1/f;->isAdtsSyncWord(I)Z

    .line 85
    .line 86
    .line 87
    move-result v9

    .line 88
    if-nez v9, :cond_4

    .line 89
    .line 90
    move v8, v13

    .line 91
    goto :goto_3

    .line 92
    :cond_4
    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 93
    .line 94
    .line 95
    move-result-object v9

    .line 96
    invoke-interface {v1, v9, v13, v11, v14}, Lv0/D;->peekFully([BIIZ)Z

    .line 97
    .line 98
    .line 99
    move-result v9

    .line 100
    if-nez v9, :cond_5

    .line 101
    .line 102
    goto :goto_3

    .line 103
    :cond_5
    const/16 v9, 0xe

    .line 104
    .line 105
    invoke-virtual {v6, v9}, Landroidx/media3/common/util/ParsableBitArray;->setPosition(I)V

    .line 106
    .line 107
    .line 108
    const/16 v9, 0xd

    .line 109
    .line 110
    invoke-virtual {v6, v9}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 111
    .line 112
    .line 113
    move-result v9

    .line 114
    const/4 v10, 0x6

    .line 115
    if-le v9, v10, :cond_8

    .line 116
    .line 117
    int-to-long v11, v9

    .line 118
    add-long/2addr v15, v11

    .line 119
    add-int/lit8 v8, v8, 0x1

    .line 120
    .line 121
    const/16 v10, 0x3e8

    .line 122
    .line 123
    if-ne v8, v10, :cond_6

    .line 124
    .line 125
    goto :goto_3

    .line 126
    :cond_6
    add-int/lit8 v9, v9, -0x6

    .line 127
    .line 128
    invoke-interface {v1, v9, v14}, Lv0/D;->advancePeekPosition(IZ)Z

    .line 129
    .line 130
    .line 131
    move-result v9

    .line 132
    if-nez v9, :cond_7

    .line 133
    .line 134
    goto :goto_3

    .line 135
    :cond_7
    const/4 v11, 0x4

    .line 136
    const/4 v12, -0x1

    .line 137
    goto :goto_2

    .line 138
    :cond_8
    iput-boolean v14, v0, Lc1/e;->j:Z

    .line 139
    .line 140
    const-string v6, "Malformed ADTS stream"

    .line 141
    .line 142
    const/4 v7, 0x0

    .line 143
    invoke-static {v6, v7}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 144
    .line 145
    .line 146
    move-result-object v6

    .line 147
    throw v6
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :catch_0
    :cond_9
    :goto_3
    invoke-interface {v1}, Lv0/D;->resetPeekPosition()V

    .line 149
    .line 150
    .line 151
    if-lez v8, :cond_a

    .line 152
    .line 153
    int-to-long v6, v8

    .line 154
    div-long v6, v15, v6

    .line 155
    .line 156
    long-to-int v6, v6

    .line 157
    iput v6, v0, Lc1/e;->i:I

    .line 158
    .line 159
    const/4 v6, -0x1

    .line 160
    goto :goto_4

    .line 161
    :cond_a
    const/4 v6, -0x1

    .line 162
    iput v6, v0, Lc1/e;->i:I

    .line 163
    .line 164
    :goto_4
    iput-boolean v14, v0, Lc1/e;->j:Z

    .line 165
    .line 166
    :goto_5
    iget-object v11, v0, Lc1/e;->c:Landroidx/media3/common/util/ParsableByteArray;

    .line 167
    .line 168
    invoke-virtual {v11}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 169
    .line 170
    .line 171
    move-result-object v7

    .line 172
    const/16 v8, 0x800

    .line 173
    .line 174
    invoke-interface {v1, v7, v13, v8}, Lv0/D;->read([BII)I

    .line 175
    .line 176
    .line 177
    move-result v1

    .line 178
    if-ne v1, v6, :cond_b

    .line 179
    .line 180
    move v12, v14

    .line 181
    goto :goto_6

    .line 182
    :cond_b
    move v12, v13

    .line 183
    :goto_6
    iget-boolean v6, v0, Lc1/e;->l:Z

    .line 184
    .line 185
    iget-object v15, v0, Lc1/e;->b:Lc1/f;

    .line 186
    .line 187
    if-eqz v6, :cond_c

    .line 188
    .line 189
    goto :goto_a

    .line 190
    :cond_c
    and-int/2addr v2, v14

    .line 191
    if-eqz v2, :cond_d

    .line 192
    .line 193
    iget v2, v0, Lc1/e;->i:I

    .line 194
    .line 195
    if-lez v2, :cond_d

    .line 196
    .line 197
    move v2, v14

    .line 198
    goto :goto_7

    .line 199
    :cond_d
    move v2, v13

    .line 200
    :goto_7
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    if-eqz v2, :cond_e

    .line 206
    .line 207
    invoke-virtual {v15}, Lc1/f;->getSampleDurationUs()J

    .line 208
    .line 209
    .line 210
    move-result-wide v8

    .line 211
    cmp-long v8, v8, v6

    .line 212
    .line 213
    if-nez v8, :cond_e

    .line 214
    .line 215
    if-nez v12, :cond_e

    .line 216
    .line 217
    goto :goto_a

    .line 218
    :cond_e
    if-eqz v2, :cond_10

    .line 219
    .line 220
    invoke-virtual {v15}, Lc1/f;->getSampleDurationUs()J

    .line 221
    .line 222
    .line 223
    move-result-wide v8

    .line 224
    cmp-long v2, v8, v6

    .line 225
    .line 226
    if-eqz v2, :cond_10

    .line 227
    .line 228
    iget-object v2, v0, Lc1/e;->f:Lv0/F;

    .line 229
    .line 230
    if-eqz v3, :cond_f

    .line 231
    .line 232
    move v10, v14

    .line 233
    goto :goto_8

    .line 234
    :cond_f
    move v10, v13

    .line 235
    :goto_8
    iget v3, v0, Lc1/e;->i:I

    .line 236
    .line 237
    invoke-virtual {v15}, Lc1/f;->getSampleDurationUs()J

    .line 238
    .line 239
    .line 240
    move-result-wide v6

    .line 241
    int-to-long v8, v3

    .line 242
    const-wide/32 v18, 0x7a1200

    .line 243
    .line 244
    .line 245
    mul-long v8, v8, v18

    .line 246
    .line 247
    div-long/2addr v8, v6

    .line 248
    long-to-int v8, v8

    .line 249
    new-instance v3, Lv0/t;

    .line 250
    .line 251
    iget-wide v6, v0, Lc1/e;->h:J

    .line 252
    .line 253
    iget v9, v0, Lc1/e;->i:I

    .line 254
    .line 255
    invoke-direct/range {v3 .. v10}, Lv0/t;-><init>(JJIIZ)V

    .line 256
    .line 257
    .line 258
    invoke-interface {v2, v3}, Lv0/F;->seekMap(Lv0/g0;)V

    .line 259
    .line 260
    .line 261
    goto :goto_9

    .line 262
    :cond_10
    iget-object v2, v0, Lc1/e;->f:Lv0/F;

    .line 263
    .line 264
    new-instance v3, Lv0/f0;

    .line 265
    .line 266
    invoke-direct {v3, v6, v7}, Lv0/f0;-><init>(J)V

    .line 267
    .line 268
    .line 269
    invoke-interface {v2, v3}, Lv0/F;->seekMap(Lv0/g0;)V

    .line 270
    .line 271
    .line 272
    :goto_9
    iput-boolean v14, v0, Lc1/e;->l:Z

    .line 273
    .line 274
    :goto_a
    if-eqz v12, :cond_11

    .line 275
    .line 276
    const/16 v17, -0x1

    .line 277
    .line 278
    return v17

    .line 279
    :cond_11
    invoke-virtual {v11, v13}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {v11, v1}, Landroidx/media3/common/util/ParsableByteArray;->setLimit(I)V

    .line 283
    .line 284
    .line 285
    iget-boolean v1, v0, Lc1/e;->k:Z

    .line 286
    .line 287
    if-nez v1, :cond_12

    .line 288
    .line 289
    iget-wide v1, v0, Lc1/e;->g:J

    .line 290
    .line 291
    const/4 v3, 0x4

    .line 292
    invoke-virtual {v15, v1, v2, v3}, Lc1/f;->packetStarted(JI)V

    .line 293
    .line 294
    .line 295
    iput-boolean v14, v0, Lc1/e;->k:Z

    .line 296
    .line 297
    :cond_12
    invoke-virtual {v15, v11}, Lc1/f;->consume(Landroidx/media3/common/util/ParsableByteArray;)V

    .line 298
    .line 299
    .line 300
    return v13
.end method

.method public release()V
    .locals 0

    .line 1
    return-void
.end method

.method public seek(JJ)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lc1/e;->k:Z

    .line 3
    .line 4
    iget-object p1, p0, Lc1/e;->b:Lc1/f;

    .line 5
    .line 6
    invoke-virtual {p1}, Lc1/f;->seek()V

    .line 7
    .line 8
    .line 9
    iput-wide p3, p0, Lc1/e;->g:J

    .line 10
    .line 11
    return-void
.end method

.method public sniff(Lv0/D;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lc1/e;->a(Lv0/D;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move v3, v0

    .line 7
    move v2, v1

    .line 8
    move v4, v2

    .line 9
    :cond_0
    iget-object v5, p0, Lc1/e;->d:Landroidx/media3/common/util/ParsableByteArray;

    .line 10
    .line 11
    invoke-virtual {v5}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 12
    .line 13
    .line 14
    move-result-object v6

    .line 15
    const/4 v7, 0x2

    .line 16
    invoke-interface {p1, v6, v1, v7}, Lv0/D;->peekFully([BII)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v5, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v5}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    .line 23
    .line 24
    .line 25
    move-result v6

    .line 26
    invoke-static {v6}, Lc1/f;->isAdtsSyncWord(I)Z

    .line 27
    .line 28
    .line 29
    move-result v6

    .line 30
    if-nez v6, :cond_1

    .line 31
    .line 32
    add-int/lit8 v3, v3, 0x1

    .line 33
    .line 34
    invoke-interface {p1}, Lv0/D;->resetPeekPosition()V

    .line 35
    .line 36
    .line 37
    invoke-interface {p1, v3}, Lv0/D;->advancePeekPosition(I)V

    .line 38
    .line 39
    .line 40
    :goto_0
    move v2, v1

    .line 41
    move v4, v2

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    const/4 v6, 0x1

    .line 44
    add-int/2addr v2, v6

    .line 45
    const/4 v7, 0x4

    .line 46
    if-lt v2, v7, :cond_2

    .line 47
    .line 48
    const/16 v8, 0xbc

    .line 49
    .line 50
    if-le v4, v8, :cond_2

    .line 51
    .line 52
    return v6

    .line 53
    :cond_2
    invoke-virtual {v5}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    invoke-interface {p1, v5, v1, v7}, Lv0/D;->peekFully([BII)V

    .line 58
    .line 59
    .line 60
    const/16 v5, 0xe

    .line 61
    .line 62
    iget-object v6, p0, Lc1/e;->e:Landroidx/media3/common/util/ParsableBitArray;

    .line 63
    .line 64
    invoke-virtual {v6, v5}, Landroidx/media3/common/util/ParsableBitArray;->setPosition(I)V

    .line 65
    .line 66
    .line 67
    const/16 v5, 0xd

    .line 68
    .line 69
    invoke-virtual {v6, v5}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    const/4 v6, 0x6

    .line 74
    if-gt v5, v6, :cond_3

    .line 75
    .line 76
    add-int/lit8 v3, v3, 0x1

    .line 77
    .line 78
    invoke-interface {p1}, Lv0/D;->resetPeekPosition()V

    .line 79
    .line 80
    .line 81
    invoke-interface {p1, v3}, Lv0/D;->advancePeekPosition(I)V

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_3
    add-int/lit8 v6, v5, -0x6

    .line 86
    .line 87
    invoke-interface {p1, v6}, Lv0/D;->advancePeekPosition(I)V

    .line 88
    .line 89
    .line 90
    add-int/2addr v4, v5

    .line 91
    :goto_1
    sub-int v5, v3, v0

    .line 92
    .line 93
    const/16 v6, 0x2000

    .line 94
    .line 95
    if-lt v5, v6, :cond_0

    .line 96
    .line 97
    return v1
.end method
