.class public abstract Lv0/K;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroidx/media3/common/util/ParsableByteArray;Lv0/P;ZLv0/J;)Z
    .locals 4

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUtf8EncodedLong()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget p0, p1, Lv0/P;->b:I

    .line 9
    .line 10
    int-to-long v2, p0

    .line 11
    mul-long/2addr v0, v2

    .line 12
    :goto_0
    iget-wide p0, p1, Lv0/P;->j:J

    .line 13
    .line 14
    const-wide/16 v2, 0x0

    .line 15
    .line 16
    cmp-long p2, p0, v2

    .line 17
    .line 18
    if-eqz p2, :cond_1

    .line 19
    .line 20
    cmp-long p0, v0, p0

    .line 21
    .line 22
    if-lez p0, :cond_1

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    iput-wide v0, p3, Lv0/J;->a:J

    .line 26
    .line 27
    const/4 p0, 0x1

    .line 28
    return p0

    .line 29
    :catch_0
    :goto_1
    const/4 p0, 0x0

    .line 30
    return p0
.end method

.method public static checkAndReadFrameHeader(Landroidx/media3/common/util/ParsableByteArray;Lv0/P;ILv0/J;)Z
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    .line 12
    .line 13
    .line 14
    move-result-wide v4

    .line 15
    const/16 v6, 0x10

    .line 16
    .line 17
    ushr-long v6, v4, v6

    .line 18
    .line 19
    move/from16 v8, p2

    .line 20
    .line 21
    int-to-long v8, v8

    .line 22
    cmp-long v8, v6, v8

    .line 23
    .line 24
    const/4 v9, 0x0

    .line 25
    if-eqz v8, :cond_0

    .line 26
    .line 27
    return v9

    .line 28
    :cond_0
    const-wide/16 v10, 0x1

    .line 29
    .line 30
    and-long/2addr v6, v10

    .line 31
    cmp-long v6, v6, v10

    .line 32
    .line 33
    const/4 v7, 0x1

    .line 34
    if-nez v6, :cond_1

    .line 35
    .line 36
    move v6, v7

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    move v6, v9

    .line 39
    :goto_0
    const/16 v8, 0xc

    .line 40
    .line 41
    shr-long v12, v4, v8

    .line 42
    .line 43
    const-wide/16 v14, 0xf

    .line 44
    .line 45
    and-long/2addr v12, v14

    .line 46
    long-to-int v12, v12

    .line 47
    const/16 v13, 0x8

    .line 48
    .line 49
    shr-long v16, v4, v13

    .line 50
    .line 51
    move-wide/from16 v18, v10

    .line 52
    .line 53
    and-long v10, v16, v14

    .line 54
    .line 55
    long-to-int v10, v10

    .line 56
    const/4 v11, 0x4

    .line 57
    shr-long v16, v4, v11

    .line 58
    .line 59
    and-long v14, v16, v14

    .line 60
    .line 61
    long-to-int v11, v14

    .line 62
    shr-long v13, v4, v7

    .line 63
    .line 64
    const-wide/16 v15, 0x7

    .line 65
    .line 66
    and-long/2addr v13, v15

    .line 67
    long-to-int v13, v13

    .line 68
    and-long v4, v4, v18

    .line 69
    .line 70
    cmp-long v4, v4, v18

    .line 71
    .line 72
    if-nez v4, :cond_2

    .line 73
    .line 74
    move v4, v7

    .line 75
    goto :goto_1

    .line 76
    :cond_2
    move v4, v9

    .line 77
    :goto_1
    const/4 v5, 0x2

    .line 78
    const/4 v14, 0x7

    .line 79
    if-gt v11, v14, :cond_3

    .line 80
    .line 81
    iget v15, v1, Lv0/P;->g:I

    .line 82
    .line 83
    sub-int/2addr v15, v7

    .line 84
    if-ne v11, v15, :cond_11

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_3
    const/16 v15, 0xa

    .line 88
    .line 89
    if-gt v11, v15, :cond_11

    .line 90
    .line 91
    iget v11, v1, Lv0/P;->g:I

    .line 92
    .line 93
    if-ne v11, v5, :cond_11

    .line 94
    .line 95
    :goto_2
    if-nez v13, :cond_4

    .line 96
    .line 97
    goto :goto_3

    .line 98
    :cond_4
    iget v11, v1, Lv0/P;->i:I

    .line 99
    .line 100
    if-ne v13, v11, :cond_11

    .line 101
    .line 102
    :goto_3
    if-nez v4, :cond_11

    .line 103
    .line 104
    invoke-static {v0, v1, v6, v2}, Lv0/K;->a(Landroidx/media3/common/util/ParsableByteArray;Lv0/P;ZLv0/J;)Z

    .line 105
    .line 106
    .line 107
    move-result v4

    .line 108
    if-eqz v4, :cond_11

    .line 109
    .line 110
    iget-wide v14, v2, Lv0/J;->a:J

    .line 111
    .line 112
    invoke-static {v0, v12}, Lv0/K;->readFrameBlockSizeSamplesFromKey(Landroidx/media3/common/util/ParsableByteArray;I)I

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    iget-wide v11, v1, Lv0/P;->j:J

    .line 117
    .line 118
    const-wide/16 v16, 0x0

    .line 119
    .line 120
    cmp-long v4, v11, v16

    .line 121
    .line 122
    if-eqz v4, :cond_6

    .line 123
    .line 124
    int-to-long v5, v2

    .line 125
    add-long/2addr v14, v5

    .line 126
    cmp-long v5, v14, v11

    .line 127
    .line 128
    if-ltz v5, :cond_5

    .line 129
    .line 130
    goto :goto_4

    .line 131
    :cond_5
    move v5, v9

    .line 132
    goto :goto_5

    .line 133
    :cond_6
    :goto_4
    move v5, v7

    .line 134
    :goto_5
    const/4 v6, -0x1

    .line 135
    if-eq v2, v6, :cond_11

    .line 136
    .line 137
    if-nez v5, :cond_7

    .line 138
    .line 139
    iget v5, v1, Lv0/P;->a:I

    .line 140
    .line 141
    if-lt v2, v5, :cond_11

    .line 142
    .line 143
    :cond_7
    iget v5, v1, Lv0/P;->b:I

    .line 144
    .line 145
    if-gt v2, v5, :cond_11

    .line 146
    .line 147
    if-nez v10, :cond_8

    .line 148
    .line 149
    goto :goto_6

    .line 150
    :cond_8
    const/16 v2, 0xb

    .line 151
    .line 152
    if-gt v10, v2, :cond_9

    .line 153
    .line 154
    iget v1, v1, Lv0/P;->f:I

    .line 155
    .line 156
    if-ne v10, v1, :cond_11

    .line 157
    .line 158
    goto :goto_6

    .line 159
    :cond_9
    iget v1, v1, Lv0/P;->e:I

    .line 160
    .line 161
    if-ne v10, v8, :cond_a

    .line 162
    .line 163
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 164
    .line 165
    .line 166
    move-result v2

    .line 167
    mul-int/lit16 v2, v2, 0x3e8

    .line 168
    .line 169
    if-ne v2, v1, :cond_11

    .line 170
    .line 171
    goto :goto_6

    .line 172
    :cond_a
    const/16 v2, 0xe

    .line 173
    .line 174
    if-gt v10, v2, :cond_11

    .line 175
    .line 176
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    .line 177
    .line 178
    .line 179
    move-result v5

    .line 180
    if-ne v10, v2, :cond_b

    .line 181
    .line 182
    mul-int/lit8 v5, v5, 0xa

    .line 183
    .line 184
    :cond_b
    if-ne v5, v1, :cond_11

    .line 185
    .line 186
    :goto_6
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 187
    .line 188
    .line 189
    move-result v1

    .line 190
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    .line 191
    .line 192
    .line 193
    move-result v2

    .line 194
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 195
    .line 196
    .line 197
    move-result-object v5

    .line 198
    sub-int/2addr v2, v7

    .line 199
    invoke-static {v5, v3, v2, v9}, Landroidx/media3/common/util/Util;->crc8([BIII)I

    .line 200
    .line 201
    .line 202
    move-result v2

    .line 203
    if-ne v1, v2, :cond_11

    .line 204
    .line 205
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 206
    .line 207
    .line 208
    move-result v1

    .line 209
    if-nez v1, :cond_c

    .line 210
    .line 211
    goto :goto_7

    .line 212
    :cond_c
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->peekUnsignedByte()I

    .line 213
    .line 214
    .line 215
    move-result v0

    .line 216
    and-int/lit16 v1, v0, 0x80

    .line 217
    .line 218
    if-eqz v1, :cond_d

    .line 219
    .line 220
    goto :goto_8

    .line 221
    :cond_d
    and-int/lit8 v0, v0, 0x7e

    .line 222
    .line 223
    shr-int/2addr v0, v7

    .line 224
    const/4 v4, 0x2

    .line 225
    if-lt v0, v4, :cond_e

    .line 226
    .line 227
    const/4 v1, 0x7

    .line 228
    if-le v0, v1, :cond_f

    .line 229
    .line 230
    :cond_e
    const/16 v1, 0xd

    .line 231
    .line 232
    if-lt v0, v1, :cond_10

    .line 233
    .line 234
    const/16 v1, 0x1f

    .line 235
    .line 236
    if-gt v0, v1, :cond_10

    .line 237
    .line 238
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    .line 239
    .line 240
    const-string v2, "Ignoring frame where first subframe has a reserved type: "

    .line 241
    .line 242
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    const-string v1, "FlacFrameReader"

    .line 253
    .line 254
    invoke-static {v1, v0}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    goto :goto_8

    .line 258
    :cond_10
    :goto_7
    return v7

    .line 259
    :cond_11
    :goto_8
    return v9
.end method

.method public static checkFrameHeaderFromPeek(Lv0/D;Lv0/P;ILv0/J;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lv0/D;->getPeekPosition()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    new-instance v2, Landroidx/media3/common/util/ParsableByteArray;

    .line 6
    .line 7
    const/16 v3, 0x11

    .line 8
    .line 9
    invoke-direct {v2, v3}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    const/4 v4, 0x0

    .line 17
    const/4 v5, 0x2

    .line 18
    invoke-interface {p0, v3, v4, v5}, Lv0/D;->peekFully([BII)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->peekChar()C

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-eq v3, p2, :cond_0

    .line 26
    .line 27
    invoke-interface {p0}, Lv0/D;->resetPeekPosition()V

    .line 28
    .line 29
    .line 30
    invoke-interface {p0}, Lv0/D;->getPosition()J

    .line 31
    .line 32
    .line 33
    move-result-wide p1

    .line 34
    sub-long/2addr v0, p1

    .line 35
    long-to-int p1, v0

    .line 36
    invoke-interface {p0, p1}, Lv0/D;->advancePeekPosition(I)V

    .line 37
    .line 38
    .line 39
    return v4

    .line 40
    :cond_0
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    const/16 v4, 0xf

    .line 45
    .line 46
    invoke-static {p0, v3, v5, v4}, Lv0/G;->peekToLength(Lv0/D;[BII)I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    add-int/2addr v3, v5

    .line 51
    invoke-virtual {v2, v3}, Landroidx/media3/common/util/ParsableByteArray;->setLimit(I)V

    .line 52
    .line 53
    .line 54
    invoke-interface {p0}, Lv0/D;->resetPeekPosition()V

    .line 55
    .line 56
    .line 57
    invoke-interface {p0}, Lv0/D;->getPosition()J

    .line 58
    .line 59
    .line 60
    move-result-wide v3

    .line 61
    sub-long/2addr v0, v3

    .line 62
    long-to-int v0, v0

    .line 63
    invoke-interface {p0, v0}, Lv0/D;->advancePeekPosition(I)V

    .line 64
    .line 65
    .line 66
    invoke-static {v2, p1, p2, p3}, Lv0/K;->checkAndReadFrameHeader(Landroidx/media3/common/util/ParsableByteArray;Lv0/P;ILv0/J;)Z

    .line 67
    .line 68
    .line 69
    move-result p0

    .line 70
    return p0
.end method

.method public static getFirstSampleNumber(Lv0/D;Lv0/P;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lv0/D;->resetPeekPosition()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-interface {p0, v0}, Lv0/D;->advancePeekPosition(I)V

    .line 6
    .line 7
    .line 8
    new-array v1, v0, [B

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-interface {p0, v1, v2, v0}, Lv0/D;->peekFully([BII)V

    .line 12
    .line 13
    .line 14
    aget-byte v1, v1, v2

    .line 15
    .line 16
    and-int/2addr v1, v0

    .line 17
    if-ne v1, v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v0, v2

    .line 21
    :goto_0
    const/4 v1, 0x2

    .line 22
    invoke-interface {p0, v1}, Lv0/D;->advancePeekPosition(I)V

    .line 23
    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    const/4 v1, 0x7

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    const/4 v1, 0x6

    .line 30
    :goto_1
    new-instance v3, Landroidx/media3/common/util/ParsableByteArray;

    .line 31
    .line 32
    invoke-direct {v3, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    invoke-static {p0, v4, v2, v1}, Lv0/G;->peekToLength(Lv0/D;[BII)I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    invoke-virtual {v3, v1}, Landroidx/media3/common/util/ParsableByteArray;->setLimit(I)V

    .line 44
    .line 45
    .line 46
    invoke-interface {p0}, Lv0/D;->resetPeekPosition()V

    .line 47
    .line 48
    .line 49
    new-instance p0, Lv0/J;

    .line 50
    .line 51
    invoke-direct {p0}, Lv0/J;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-static {v3, p1, v0, p0}, Lv0/K;->a(Landroidx/media3/common/util/ParsableByteArray;Lv0/P;ZLv0/J;)Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-eqz p1, :cond_2

    .line 59
    .line 60
    iget-wide p0, p0, Lv0/J;->a:J

    .line 61
    .line 62
    return-wide p0

    .line 63
    :cond_2
    const/4 p0, 0x0

    .line 64
    invoke-static {p0, p0}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    throw p0
.end method

.method public static readFrameBlockSizeSamplesFromKey(Landroidx/media3/common/util/ParsableByteArray;I)I
    .locals 0

    .line 1
    packed-switch p1, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    const/4 p0, -0x1

    .line 5
    return p0

    .line 6
    :pswitch_0
    add-int/lit8 p1, p1, -0x8

    .line 7
    .line 8
    const/16 p0, 0x100

    .line 9
    .line 10
    shl-int/2addr p0, p1

    .line 11
    return p0

    .line 12
    :pswitch_1
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    add-int/lit8 p0, p0, 0x1

    .line 17
    .line 18
    return p0

    .line 19
    :pswitch_2
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    add-int/lit8 p0, p0, 0x1

    .line 24
    .line 25
    return p0

    .line 26
    :pswitch_3
    add-int/lit8 p1, p1, -0x2

    .line 27
    .line 28
    const/16 p0, 0x240

    .line 29
    .line 30
    shl-int/2addr p0, p1

    .line 31
    return p0

    .line 32
    :pswitch_4
    const/16 p0, 0xc0

    .line 33
    .line 34
    return p0

    .line 35
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
