.class public abstract Lc1/A;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroidx/media3/common/util/ParsableBitArray;III)I
    .locals 4

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/16 v1, 0x1f

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    if-gt v0, v1, :cond_0

    .line 13
    .line 14
    move v0, v2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    invoke-static {v0}, LP3/v;->checkArgument(Z)V

    .line 18
    .line 19
    .line 20
    shl-int v0, v2, p1

    .line 21
    .line 22
    sub-int/2addr v0, v2

    .line 23
    shl-int v1, v2, p2

    .line 24
    .line 25
    sub-int/2addr v1, v2

    .line 26
    invoke-static {v0, v1}, LS3/e;->checkedAdd(II)I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    shl-int/2addr v2, p3

    .line 31
    invoke-static {v3, v2}, LS3/e;->checkedAdd(II)I

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->bitsLeft()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-ge v2, p1, :cond_1

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    invoke-virtual {p0, p1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-ne p1, v0, :cond_4

    .line 46
    .line 47
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->bitsLeft()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-ge v0, p2, :cond_2

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_2
    invoke-virtual {p0, p2}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 55
    .line 56
    .line 57
    move-result p2

    .line 58
    add-int/2addr p1, p2

    .line 59
    if-ne p2, v1, :cond_4

    .line 60
    .line 61
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->bitsLeft()I

    .line 62
    .line 63
    .line 64
    move-result p2

    .line 65
    if-ge p2, p3, :cond_3

    .line 66
    .line 67
    :goto_1
    const/4 p0, -0x1

    .line 68
    return p0

    .line 69
    :cond_3
    invoke-virtual {p0, p3}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 70
    .line 71
    .line 72
    move-result p0

    .line 73
    add-int/2addr p0, p1

    .line 74
    return p0

    .line 75
    :cond_4
    return p1
.end method

.method public static b(Landroidx/media3/common/util/ParsableBitArray;)V
    .locals 2

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 3
    .line 4
    .line 5
    const/16 v0, 0x8

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    const/4 v0, 0x5

    .line 21
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 22
    .line 23
    .line 24
    :cond_0
    if-eqz v1, :cond_1

    .line 25
    .line 26
    const/4 v0, 0x6

    .line 27
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 28
    .line 29
    .line 30
    :cond_1
    return-void
.end method

.method public static c(Landroidx/media3/common/util/ParsableBitArray;)V
    .locals 12

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    const/4 v2, 0x6

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, v2}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const/4 v3, 0x5

    .line 14
    const/16 v4, 0x8

    .line 15
    .line 16
    const/16 v5, 0x10

    .line 17
    .line 18
    invoke-static {p0, v3, v4, v5}, Lc1/A;->a(Landroidx/media3/common/util/ParsableBitArray;III)I

    .line 19
    .line 20
    .line 21
    move-result v5

    .line 22
    const/4 v6, 0x1

    .line 23
    add-int/2addr v5, v6

    .line 24
    const/4 v7, 0x7

    .line 25
    if-ne v1, v6, :cond_1

    .line 26
    .line 27
    mul-int/2addr v5, v7

    .line 28
    invoke-virtual {p0, v5}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    if-ne v1, v0, :cond_9

    .line 33
    .line 34
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_2

    .line 39
    .line 40
    move v8, v6

    .line 41
    goto :goto_0

    .line 42
    :cond_2
    move v8, v3

    .line 43
    :goto_0
    if-eqz v1, :cond_3

    .line 44
    .line 45
    move v3, v7

    .line 46
    :cond_3
    if-eqz v1, :cond_4

    .line 47
    .line 48
    move v2, v4

    .line 49
    :cond_4
    const/4 v1, 0x0

    .line 50
    move v4, v1

    .line 51
    :goto_1
    if-ge v4, v5, :cond_9

    .line 52
    .line 53
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    .line 54
    .line 55
    .line 56
    move-result v9

    .line 57
    const/16 v10, 0xb4

    .line 58
    .line 59
    if-eqz v9, :cond_5

    .line 60
    .line 61
    invoke-virtual {p0, v7}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 62
    .line 63
    .line 64
    move v9, v1

    .line 65
    goto :goto_2

    .line 66
    :cond_5
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 67
    .line 68
    .line 69
    move-result v9

    .line 70
    const/4 v11, 0x3

    .line 71
    if-ne v9, v11, :cond_6

    .line 72
    .line 73
    invoke-virtual {p0, v3}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 74
    .line 75
    .line 76
    move-result v9

    .line 77
    mul-int/2addr v9, v8

    .line 78
    if-eqz v9, :cond_6

    .line 79
    .line 80
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->skipBit()V

    .line 81
    .line 82
    .line 83
    :cond_6
    invoke-virtual {p0, v2}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 84
    .line 85
    .line 86
    move-result v9

    .line 87
    mul-int/2addr v9, v8

    .line 88
    if-eqz v9, :cond_7

    .line 89
    .line 90
    if-eq v9, v10, :cond_7

    .line 91
    .line 92
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->skipBit()V

    .line 93
    .line 94
    .line 95
    :cond_7
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->skipBit()V

    .line 96
    .line 97
    .line 98
    :goto_2
    if-eqz v9, :cond_8

    .line 99
    .line 100
    if-eq v9, v10, :cond_8

    .line 101
    .line 102
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    .line 103
    .line 104
    .line 105
    move-result v9

    .line 106
    if-eqz v9, :cond_8

    .line 107
    .line 108
    add-int/lit8 v4, v4, 0x1

    .line 109
    .line 110
    :cond_8
    add-int/2addr v4, v6

    .line 111
    goto :goto_1

    .line 112
    :cond_9
    return-void
.end method

.method public static isSyncWord(I)Z
    .locals 1

    .line 1
    const v0, 0xffffff

    .line 2
    .line 3
    .line 4
    and-int/2addr p0, v0

    .line 5
    const v0, 0xc001a5

    .line 6
    .line 7
    .line 8
    if-ne p0, v0, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x1

    .line 11
    return p0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return p0
.end method

.method public static parseAudioTruncationInfo(Landroidx/media3/common/util/ParsableBitArray;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x2

    .line 8
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 9
    .line 10
    .line 11
    const/16 v0, 0xd

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    return p0
.end method

.method public static parseMhasPacketHeader(Landroidx/media3/common/util/ParsableBitArray;Lc1/y;)Z
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->getBytePosition()I

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x3

    .line 9
    const/16 v3, 0x8

    .line 10
    .line 11
    invoke-static {v0, v2, v3, v3}, Lc1/A;->a(Landroidx/media3/common/util/ParsableBitArray;III)I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    iput v2, v1, Lc1/y;->a:I

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    const/4 v5, -0x1

    .line 19
    if-ne v2, v5, :cond_0

    .line 20
    .line 21
    return v4

    .line 22
    :cond_0
    const/4 v2, 0x2

    .line 23
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 24
    .line 25
    .line 26
    move-result v6

    .line 27
    const/16 v7, 0x20

    .line 28
    .line 29
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    .line 30
    .line 31
    .line 32
    move-result v6

    .line 33
    const/16 v8, 0x3f

    .line 34
    .line 35
    const/4 v9, 0x1

    .line 36
    if-gt v6, v8, :cond_1

    .line 37
    .line 38
    move v6, v9

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    move v6, v4

    .line 41
    :goto_0
    invoke-static {v6}, LP3/v;->checkArgument(Z)V

    .line 42
    .line 43
    .line 44
    const-wide/16 v10, 0x3

    .line 45
    .line 46
    const-wide/16 v12, 0xff

    .line 47
    .line 48
    invoke-static {v10, v11, v12, v13}, LS3/g;->checkedAdd(JJ)J

    .line 49
    .line 50
    .line 51
    move-result-wide v14

    .line 52
    move-wide/from16 v16, v10

    .line 53
    .line 54
    const-wide v10, 0x100000000L

    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    invoke-static {v14, v15, v10, v11}, LS3/g;->checkedAdd(JJ)J

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->bitsLeft()I

    .line 63
    .line 64
    .line 65
    move-result v6

    .line 66
    const-wide/16 v10, -0x1

    .line 67
    .line 68
    if-ge v6, v2, :cond_2

    .line 69
    .line 70
    :goto_1
    move-wide v14, v10

    .line 71
    goto :goto_2

    .line 72
    :cond_2
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableBitArray;->readBitsToLong(I)J

    .line 73
    .line 74
    .line 75
    move-result-wide v14

    .line 76
    cmp-long v6, v14, v16

    .line 77
    .line 78
    if-nez v6, :cond_5

    .line 79
    .line 80
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->bitsLeft()I

    .line 81
    .line 82
    .line 83
    move-result v6

    .line 84
    if-ge v6, v3, :cond_3

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_3
    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableBitArray;->readBitsToLong(I)J

    .line 88
    .line 89
    .line 90
    move-result-wide v16

    .line 91
    add-long v14, v14, v16

    .line 92
    .line 93
    cmp-long v3, v16, v12

    .line 94
    .line 95
    if-nez v3, :cond_5

    .line 96
    .line 97
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->bitsLeft()I

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    if-ge v3, v7, :cond_4

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_4
    invoke-virtual {v0, v7}, Landroidx/media3/common/util/ParsableBitArray;->readBitsToLong(I)J

    .line 105
    .line 106
    .line 107
    move-result-wide v6

    .line 108
    add-long/2addr v14, v6

    .line 109
    :cond_5
    :goto_2
    iput-wide v14, v1, Lc1/y;->b:J

    .line 110
    .line 111
    cmp-long v3, v14, v10

    .line 112
    .line 113
    if-nez v3, :cond_6

    .line 114
    .line 115
    return v4

    .line 116
    :cond_6
    const-wide/16 v6, 0x10

    .line 117
    .line 118
    cmp-long v3, v14, v6

    .line 119
    .line 120
    if-gtz v3, :cond_c

    .line 121
    .line 122
    const-wide/16 v6, 0x0

    .line 123
    .line 124
    cmp-long v3, v14, v6

    .line 125
    .line 126
    if-nez v3, :cond_a

    .line 127
    .line 128
    iget v3, v1, Lc1/y;->a:I

    .line 129
    .line 130
    const/4 v6, 0x0

    .line 131
    if-eq v3, v9, :cond_9

    .line 132
    .line 133
    if-eq v3, v2, :cond_8

    .line 134
    .line 135
    const/16 v2, 0x11

    .line 136
    .line 137
    if-eq v3, v2, :cond_7

    .line 138
    .line 139
    goto :goto_3

    .line 140
    :cond_7
    const-string v0, "AudioTruncation packet with invalid packet label 0"

    .line 141
    .line 142
    invoke-static {v0, v6}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    throw v0

    .line 147
    :cond_8
    const-string v0, "Mpegh3daFrame packet with invalid packet label 0"

    .line 148
    .line 149
    invoke-static {v0, v6}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    throw v0

    .line 154
    :cond_9
    const-string v0, "Mpegh3daConfig packet with invalid packet label 0"

    .line 155
    .line 156
    invoke-static {v0, v6}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    throw v0

    .line 161
    :cond_a
    :goto_3
    const/16 v2, 0xb

    .line 162
    .line 163
    const/16 v3, 0x18

    .line 164
    .line 165
    invoke-static {v0, v2, v3, v3}, Lc1/A;->a(Landroidx/media3/common/util/ParsableBitArray;III)I

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    iput v0, v1, Lc1/y;->c:I

    .line 170
    .line 171
    if-eq v0, v5, :cond_b

    .line 172
    .line 173
    return v9

    .line 174
    :cond_b
    return v4

    .line 175
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    .line 176
    .line 177
    const-string v2, "Contains sub-stream with an invalid packet label "

    .line 178
    .line 179
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    iget-wide v1, v1, Lc1/y;->b:J

    .line 183
    .line 184
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    invoke-static {v0}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    throw v0
.end method

.method public static parseMpegh3daConfig(Landroidx/media3/common/util/ParsableBitArray;)Lc1/z;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x5

    .line 10
    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 11
    .line 12
    .line 13
    move-result v4

    .line 14
    const/16 v5, 0x1f

    .line 15
    .line 16
    if-ne v4, v5, :cond_0

    .line 17
    .line 18
    const/16 v4, 0x18

    .line 19
    .line 20
    invoke-virtual {v0, v4}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    goto/16 :goto_0

    .line 25
    .line 26
    :cond_0
    packed-switch v4, :pswitch_data_0

    .line 27
    .line 28
    .line 29
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v1, "Unsupported sampling rate index "

    .line 32
    .line 33
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-static {v0}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    throw v0

    .line 48
    :pswitch_1
    const/16 v4, 0x2580

    .line 49
    .line 50
    goto/16 :goto_0

    .line 51
    .line 52
    :pswitch_2
    const/16 v4, 0x3200

    .line 53
    .line 54
    goto/16 :goto_0

    .line 55
    .line 56
    :pswitch_3
    const/16 v4, 0x3840

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :pswitch_4
    const/16 v4, 0x42b3

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :pswitch_5
    const/16 v4, 0x4b00

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :pswitch_6
    const/16 v4, 0x4e20

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :pswitch_7
    const/16 v4, 0x6400

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :pswitch_8
    const/16 v4, 0x7080

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :pswitch_9
    const v4, 0x8566

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :pswitch_a
    const v4, 0x9600

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :pswitch_b
    const v4, 0x9c40

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :pswitch_c
    const v4, 0xc800

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :pswitch_d
    const v4, 0xe100

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :pswitch_e
    const/16 v4, 0x1cb6

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :pswitch_f
    const/16 v4, 0x1f40

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :pswitch_10
    const/16 v4, 0x2b11

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :pswitch_11
    const/16 v4, 0x2ee0

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :pswitch_12
    const/16 v4, 0x3e80

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :pswitch_13
    const/16 v4, 0x5622

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :pswitch_14
    const/16 v4, 0x5dc0

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :pswitch_15
    const/16 v4, 0x7d00

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :pswitch_16
    const v4, 0xac44

    .line 119
    .line 120
    .line 121
    goto :goto_0

    .line 122
    :pswitch_17
    const v4, 0xbb80

    .line 123
    .line 124
    .line 125
    goto :goto_0

    .line 126
    :pswitch_18
    const v4, 0xfa00

    .line 127
    .line 128
    .line 129
    goto :goto_0

    .line 130
    :pswitch_19
    const v4, 0x15888

    .line 131
    .line 132
    .line 133
    goto :goto_0

    .line 134
    :pswitch_1a
    const v4, 0x17700

    .line 135
    .line 136
    .line 137
    :goto_0
    const/4 v5, 0x3

    .line 138
    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 139
    .line 140
    .line 141
    move-result v6

    .line 142
    const/4 v7, 0x1

    .line 143
    const-string v8, "Unsupported coreSbrFrameLengthIndex "

    .line 144
    .line 145
    const/4 v9, 0x2

    .line 146
    const/4 v10, 0x4

    .line 147
    if-eqz v6, :cond_4

    .line 148
    .line 149
    if-eq v6, v7, :cond_3

    .line 150
    .line 151
    if-eq v6, v9, :cond_2

    .line 152
    .line 153
    if-eq v6, v5, :cond_2

    .line 154
    .line 155
    if-ne v6, v10, :cond_1

    .line 156
    .line 157
    const/16 v11, 0x1000

    .line 158
    .line 159
    goto :goto_1

    .line 160
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 161
    .line 162
    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    invoke-static {v0}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    throw v0

    .line 177
    :cond_2
    const/16 v11, 0x800

    .line 178
    .line 179
    goto :goto_1

    .line 180
    :cond_3
    const/16 v11, 0x400

    .line 181
    .line 182
    goto :goto_1

    .line 183
    :cond_4
    const/16 v11, 0x300

    .line 184
    .line 185
    :goto_1
    if-eqz v6, :cond_8

    .line 186
    .line 187
    if-eq v6, v7, :cond_8

    .line 188
    .line 189
    if-eq v6, v9, :cond_7

    .line 190
    .line 191
    if-eq v6, v5, :cond_6

    .line 192
    .line 193
    if-ne v6, v10, :cond_5

    .line 194
    .line 195
    move v6, v7

    .line 196
    goto :goto_2

    .line 197
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 198
    .line 199
    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    invoke-static {v0}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    throw v0

    .line 214
    :cond_6
    move v6, v5

    .line 215
    goto :goto_2

    .line 216
    :cond_7
    move v6, v9

    .line 217
    goto :goto_2

    .line 218
    :cond_8
    const/4 v6, 0x0

    .line 219
    :goto_2
    invoke-virtual {v0, v9}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 220
    .line 221
    .line 222
    invoke-static {v0}, Lc1/A;->c(Landroidx/media3/common/util/ParsableBitArray;)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 226
    .line 227
    .line 228
    move-result v8

    .line 229
    const/4 v13, 0x0

    .line 230
    const/4 v14, 0x0

    .line 231
    :goto_3
    add-int/lit8 v15, v8, 0x1

    .line 232
    .line 233
    const/16 v12, 0x10

    .line 234
    .line 235
    if-ge v13, v15, :cond_b

    .line 236
    .line 237
    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 238
    .line 239
    .line 240
    move-result v15

    .line 241
    invoke-static {v0, v3, v1, v12}, Lc1/A;->a(Landroidx/media3/common/util/ParsableBitArray;III)I

    .line 242
    .line 243
    .line 244
    move-result v12

    .line 245
    add-int/2addr v12, v7

    .line 246
    add-int/2addr v14, v12

    .line 247
    if-eqz v15, :cond_9

    .line 248
    .line 249
    if-ne v15, v9, :cond_a

    .line 250
    .line 251
    :cond_9
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    .line 252
    .line 253
    .line 254
    move-result v12

    .line 255
    if-eqz v12, :cond_a

    .line 256
    .line 257
    invoke-static {v0}, Lc1/A;->c(Landroidx/media3/common/util/ParsableBitArray;)V

    .line 258
    .line 259
    .line 260
    :cond_a
    add-int/lit8 v13, v13, 0x1

    .line 261
    .line 262
    goto :goto_3

    .line 263
    :cond_b
    invoke-static {v0, v10, v1, v12}, Lc1/A;->a(Landroidx/media3/common/util/ParsableBitArray;III)I

    .line 264
    .line 265
    .line 266
    move-result v8

    .line 267
    add-int/2addr v8, v7

    .line 268
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->skipBit()V

    .line 269
    .line 270
    .line 271
    const/4 v13, 0x0

    .line 272
    :goto_4
    const-wide/high16 v17, 0x4000000000000000L    # 2.0

    .line 273
    .line 274
    if-ge v13, v8, :cond_1d

    .line 275
    .line 276
    invoke-virtual {v0, v9}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 277
    .line 278
    .line 279
    move-result v15

    .line 280
    const/16 v3, 0xd

    .line 281
    .line 282
    if-eqz v15, :cond_1a

    .line 283
    .line 284
    if-eq v15, v7, :cond_f

    .line 285
    .line 286
    if-eq v15, v5, :cond_d

    .line 287
    .line 288
    :cond_c
    :goto_5
    move/from16 v16, v7

    .line 289
    .line 290
    move v7, v13

    .line 291
    goto/16 :goto_9

    .line 292
    .line 293
    :cond_d
    invoke-static {v0, v10, v1, v12}, Lc1/A;->a(Landroidx/media3/common/util/ParsableBitArray;III)I

    .line 294
    .line 295
    .line 296
    invoke-static {v0, v10, v1, v12}, Lc1/A;->a(Landroidx/media3/common/util/ParsableBitArray;III)I

    .line 297
    .line 298
    .line 299
    move-result v3

    .line 300
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    .line 301
    .line 302
    .line 303
    move-result v15

    .line 304
    if-eqz v15, :cond_e

    .line 305
    .line 306
    const/4 v15, 0x0

    .line 307
    invoke-static {v0, v1, v12, v15}, Lc1/A;->a(Landroidx/media3/common/util/ParsableBitArray;III)I

    .line 308
    .line 309
    .line 310
    goto :goto_6

    .line 311
    :cond_e
    const/4 v15, 0x0

    .line 312
    :goto_6
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->skipBit()V

    .line 313
    .line 314
    .line 315
    if-lez v3, :cond_c

    .line 316
    .line 317
    mul-int/lit8 v3, v3, 0x8

    .line 318
    .line 319
    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 320
    .line 321
    .line 322
    goto :goto_5

    .line 323
    :cond_f
    const/4 v15, 0x0

    .line 324
    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 325
    .line 326
    .line 327
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    .line 328
    .line 329
    .line 330
    move-result v16

    .line 331
    if-eqz v16, :cond_10

    .line 332
    .line 333
    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 334
    .line 335
    .line 336
    :cond_10
    if-eqz v16, :cond_11

    .line 337
    .line 338
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->skipBit()V

    .line 339
    .line 340
    .line 341
    :cond_11
    if-lez v6, :cond_12

    .line 342
    .line 343
    invoke-static {v0}, Lc1/A;->b(Landroidx/media3/common/util/ParsableBitArray;)V

    .line 344
    .line 345
    .line 346
    invoke-virtual {v0, v9}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 347
    .line 348
    .line 349
    move-result v3

    .line 350
    goto :goto_7

    .line 351
    :cond_12
    move v3, v15

    .line 352
    :goto_7
    move/from16 v16, v7

    .line 353
    .line 354
    if-lez v3, :cond_16

    .line 355
    .line 356
    const/4 v7, 0x6

    .line 357
    invoke-virtual {v0, v7}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 358
    .line 359
    .line 360
    invoke-virtual {v0, v9}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 361
    .line 362
    .line 363
    move-result v15

    .line 364
    invoke-virtual {v0, v10}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 365
    .line 366
    .line 367
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    .line 368
    .line 369
    .line 370
    move-result v19

    .line 371
    const/4 v12, 0x5

    .line 372
    if-eqz v19, :cond_13

    .line 373
    .line 374
    invoke-virtual {v0, v12}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 375
    .line 376
    .line 377
    :cond_13
    if-eq v3, v9, :cond_14

    .line 378
    .line 379
    if-ne v3, v5, :cond_15

    .line 380
    .line 381
    :cond_14
    invoke-virtual {v0, v7}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 382
    .line 383
    .line 384
    :cond_15
    if-ne v15, v9, :cond_17

    .line 385
    .line 386
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->skipBit()V

    .line 387
    .line 388
    .line 389
    goto :goto_8

    .line 390
    :cond_16
    const/4 v12, 0x5

    .line 391
    :cond_17
    :goto_8
    add-int/lit8 v3, v14, -0x1

    .line 392
    .line 393
    move v7, v13

    .line 394
    int-to-double v12, v3

    .line 395
    invoke-static {v12, v13}, Ljava/lang/Math;->log(D)D

    .line 396
    .line 397
    .line 398
    move-result-wide v12

    .line 399
    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->log(D)D

    .line 400
    .line 401
    .line 402
    move-result-wide v17

    .line 403
    div-double v12, v12, v17

    .line 404
    .line 405
    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    .line 406
    .line 407
    .line 408
    move-result-wide v12

    .line 409
    double-to-int v3, v12

    .line 410
    add-int/lit8 v3, v3, 0x1

    .line 411
    .line 412
    invoke-virtual {v0, v9}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 413
    .line 414
    .line 415
    move-result v12

    .line 416
    if-lez v12, :cond_18

    .line 417
    .line 418
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    .line 419
    .line 420
    .line 421
    move-result v13

    .line 422
    if-eqz v13, :cond_18

    .line 423
    .line 424
    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 425
    .line 426
    .line 427
    :cond_18
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    .line 428
    .line 429
    .line 430
    move-result v13

    .line 431
    if-eqz v13, :cond_19

    .line 432
    .line 433
    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 434
    .line 435
    .line 436
    :cond_19
    if-nez v6, :cond_1c

    .line 437
    .line 438
    if-nez v12, :cond_1c

    .line 439
    .line 440
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->skipBit()V

    .line 441
    .line 442
    .line 443
    goto :goto_9

    .line 444
    :cond_1a
    move/from16 v16, v7

    .line 445
    .line 446
    move v7, v13

    .line 447
    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 448
    .line 449
    .line 450
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    .line 451
    .line 452
    .line 453
    move-result v12

    .line 454
    if-eqz v12, :cond_1b

    .line 455
    .line 456
    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 457
    .line 458
    .line 459
    :cond_1b
    if-lez v6, :cond_1c

    .line 460
    .line 461
    invoke-static {v0}, Lc1/A;->b(Landroidx/media3/common/util/ParsableBitArray;)V

    .line 462
    .line 463
    .line 464
    :cond_1c
    :goto_9
    add-int/lit8 v13, v7, 0x1

    .line 465
    .line 466
    move/from16 v7, v16

    .line 467
    .line 468
    const/4 v3, 0x5

    .line 469
    const/16 v12, 0x10

    .line 470
    .line 471
    goto/16 :goto_4

    .line 472
    .line 473
    :cond_1d
    move/from16 v16, v7

    .line 474
    .line 475
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    .line 476
    .line 477
    .line 478
    move-result v3

    .line 479
    const/4 v5, 0x0

    .line 480
    if-eqz v3, :cond_20

    .line 481
    .line 482
    invoke-static {v0, v9, v10, v1}, Lc1/A;->a(Landroidx/media3/common/util/ParsableBitArray;III)I

    .line 483
    .line 484
    .line 485
    move-result v3

    .line 486
    add-int/lit8 v3, v3, 0x1

    .line 487
    .line 488
    const/4 v6, 0x0

    .line 489
    :goto_a
    if-ge v6, v3, :cond_20

    .line 490
    .line 491
    const/16 v7, 0x10

    .line 492
    .line 493
    invoke-static {v0, v10, v1, v7}, Lc1/A;->a(Landroidx/media3/common/util/ParsableBitArray;III)I

    .line 494
    .line 495
    .line 496
    move-result v8

    .line 497
    invoke-static {v0, v10, v1, v7}, Lc1/A;->a(Landroidx/media3/common/util/ParsableBitArray;III)I

    .line 498
    .line 499
    .line 500
    move-result v9

    .line 501
    const/4 v12, 0x7

    .line 502
    if-ne v8, v12, :cond_1f

    .line 503
    .line 504
    invoke-virtual {v0, v10}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 505
    .line 506
    .line 507
    move-result v5

    .line 508
    add-int/lit8 v5, v5, 0x1

    .line 509
    .line 510
    invoke-virtual {v0, v10}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 511
    .line 512
    .line 513
    new-array v8, v5, [B

    .line 514
    .line 515
    const/4 v9, 0x0

    .line 516
    :goto_b
    if-ge v9, v5, :cond_1e

    .line 517
    .line 518
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 519
    .line 520
    .line 521
    move-result v12

    .line 522
    int-to-byte v12, v12

    .line 523
    aput-byte v12, v8, v9

    .line 524
    .line 525
    add-int/lit8 v9, v9, 0x1

    .line 526
    .line 527
    goto :goto_b

    .line 528
    :cond_1e
    move-object v5, v8

    .line 529
    goto :goto_c

    .line 530
    :cond_1f
    mul-int/2addr v9, v1

    .line 531
    invoke-virtual {v0, v9}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 532
    .line 533
    .line 534
    :goto_c
    add-int/lit8 v6, v6, 0x1

    .line 535
    .line 536
    goto :goto_a

    .line 537
    :cond_20
    sparse-switch v4, :sswitch_data_0

    .line 538
    .line 539
    .line 540
    new-instance v0, Ljava/lang/StringBuilder;

    .line 541
    .line 542
    const-string v1, "Unsupported sampling rate "

    .line 543
    .line 544
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 545
    .line 546
    .line 547
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 548
    .line 549
    .line 550
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 551
    .line 552
    .line 553
    move-result-object v0

    .line 554
    invoke-static {v0}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    .line 555
    .line 556
    .line 557
    move-result-object v0

    .line 558
    throw v0

    .line 559
    :sswitch_0
    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    .line 560
    .line 561
    goto :goto_d

    .line 562
    :sswitch_1
    const-wide/high16 v17, 0x3ff8000000000000L    # 1.5

    .line 563
    .line 564
    goto :goto_d

    .line 565
    :sswitch_2
    const-wide/high16 v17, 0x4008000000000000L    # 3.0

    .line 566
    .line 567
    :goto_d
    :sswitch_3
    int-to-double v0, v4

    .line 568
    mul-double v0, v0, v17

    .line 569
    .line 570
    double-to-int v0, v0

    .line 571
    int-to-double v3, v11

    .line 572
    mul-double v3, v3, v17

    .line 573
    .line 574
    double-to-int v1, v3

    .line 575
    new-instance v3, Lc1/z;

    .line 576
    .line 577
    invoke-direct {v3, v2, v0, v5, v1}, Lc1/z;-><init>(II[BI)V

    .line 578
    .line 579
    .line 580
    return-object v3

    .line 581
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    :sswitch_data_0
    .sparse-switch
        0x396c -> :sswitch_2
        0x3e80 -> :sswitch_2
        0x5622 -> :sswitch_3
        0x5dc0 -> :sswitch_3
        0x72d8 -> :sswitch_1
        0x7d00 -> :sswitch_1
        0xac44 -> :sswitch_0
        0xbb80 -> :sswitch_0
        0xe5b0 -> :sswitch_1
        0xfa00 -> :sswitch_1
        0x15888 -> :sswitch_0
        0x17700 -> :sswitch_0
    .end sparse-switch
.end method
