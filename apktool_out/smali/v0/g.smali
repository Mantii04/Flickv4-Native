.class public abstract Lv0/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0xe

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Lv0/g;->a:[I

    .line 9
    .line 10
    return-void

    .line 11
    :array_0
    .array-data 4
        0x7d2
        0x7d0
        0x780
        0x641
        0x640
        0x3e9
        0x3e8
        0x3c0
        0x320
        0x320
        0x1e0
        0x190
        0x190
        0x800
    .end array-data
.end method

.method public static a(Landroidx/media3/common/util/ParsableBitArray;Lv0/e;)V
    .locals 4

    .line 1
    const/4 v0, 0x5

    .line 2
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    const/4 v2, 0x2

    .line 7
    invoke-virtual {p0, v2}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 17
    .line 18
    .line 19
    :cond_0
    const/4 v0, 0x7

    .line 20
    if-lt v1, v0, :cond_1

    .line 21
    .line 22
    const/16 v0, 0xa

    .line 23
    .line 24
    if-gt v1, v0, :cond_1

    .line 25
    .line 26
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->skipBit()V

    .line 27
    .line 28
    .line 29
    :cond_1
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_4

    .line 34
    .line 35
    const/4 v0, 0x3

    .line 36
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    iget v2, p1, Lv0/e;->b:I

    .line 41
    .line 42
    const/4 v3, -0x1

    .line 43
    if-ne v2, v3, :cond_3

    .line 44
    .line 45
    if-ltz v1, :cond_3

    .line 46
    .line 47
    const/16 v2, 0xf

    .line 48
    .line 49
    if-gt v1, v2, :cond_3

    .line 50
    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    const/4 v2, 0x1

    .line 54
    if-ne v0, v2, :cond_3

    .line 55
    .line 56
    :cond_2
    iput v1, p1, Lv0/e;->b:I

    .line 57
    .line 58
    :cond_3
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-eqz p1, :cond_4

    .line 63
    .line 64
    invoke-static {p0}, Lv0/g;->c(Landroidx/media3/common/util/ParsableBitArray;)V

    .line 65
    .line 66
    .line 67
    :cond_4
    return-void
.end method

.method public static b(Landroidx/media3/common/util/ParsableBitArray;Lv0/e;)V
    .locals 6

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/16 v2, 0x8

    .line 10
    .line 11
    invoke-virtual {p0, v2}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const/4 v3, 0x0

    .line 16
    :goto_0
    if-ge v3, v2, :cond_4

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-eqz v4, :cond_0

    .line 26
    .line 27
    const/4 v4, 0x5

    .line 28
    invoke-virtual {p0, v4}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 29
    .line 30
    .line 31
    :cond_0
    if-eqz v1, :cond_1

    .line 32
    .line 33
    const/16 v4, 0x18

    .line 34
    .line 35
    invoke-virtual {p0, v4}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    const/4 v5, 0x4

    .line 44
    if-eqz v4, :cond_3

    .line 45
    .line 46
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-nez v4, :cond_2

    .line 51
    .line 52
    invoke-virtual {p0, v5}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 53
    .line 54
    .line 55
    :cond_2
    const/4 v4, 0x6

    .line 56
    invoke-virtual {p0, v4}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    add-int/lit8 v4, v4, 0x1

    .line 61
    .line 62
    iput v4, p1, Lv0/e;->c:I

    .line 63
    .line 64
    :cond_3
    invoke-virtual {p0, v5}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 65
    .line 66
    .line 67
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_4
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    if-eqz p1, :cond_5

    .line 75
    .line 76
    const/4 p1, 0x3

    .line 77
    invoke-virtual {p0, p1}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    if-eqz p1, :cond_5

    .line 85
    .line 86
    invoke-static {p0}, Lv0/g;->c(Landroidx/media3/common/util/ParsableBitArray;)V

    .line 87
    .line 88
    .line 89
    :cond_5
    return-void
.end method

.method public static c(Landroidx/media3/common/util/ParsableBitArray;)V
    .locals 2

    .line 1
    const/4 v0, 0x6

    .line 2
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    const/4 v1, 0x2

    .line 7
    if-lt v0, v1, :cond_0

    .line 8
    .line 9
    const/16 v1, 0x2a

    .line 10
    .line 11
    if-gt v0, v1, :cond_0

    .line 12
    .line 13
    mul-int/lit8 v0, v0, 0x8

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    const/4 v0, 0x1

    .line 24
    new-array v0, v0, [Ljava/lang/Object;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    aput-object p0, v0, v1

    .line 28
    .line 29
    const-string p0, "Invalid language tag bytes number: %d. Must be between 2 and 42."

    .line 30
    .line 31
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-static {p0}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    throw p0
.end method

.method public static getAc4SampleHeader(ILandroidx/media3/common/util/ParsableByteArray;)V
    .locals 2

    .line 1
    const/4 v0, 0x7

    .line 2
    invoke-virtual {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const/4 v0, 0x0

    .line 10
    const/16 v1, -0x54

    .line 11
    .line 12
    aput-byte v1, p1, v0

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    const/16 v1, 0x40

    .line 16
    .line 17
    aput-byte v1, p1, v0

    .line 18
    .line 19
    const/4 v0, 0x2

    .line 20
    const/4 v1, -0x1

    .line 21
    aput-byte v1, p1, v0

    .line 22
    .line 23
    const/4 v0, 0x3

    .line 24
    aput-byte v1, p1, v0

    .line 25
    .line 26
    shr-int/lit8 v0, p0, 0x10

    .line 27
    .line 28
    and-int/lit16 v0, v0, 0xff

    .line 29
    .line 30
    int-to-byte v0, v0

    .line 31
    const/4 v1, 0x4

    .line 32
    aput-byte v0, p1, v1

    .line 33
    .line 34
    shr-int/lit8 v0, p0, 0x8

    .line 35
    .line 36
    and-int/lit16 v0, v0, 0xff

    .line 37
    .line 38
    int-to-byte v0, v0

    .line 39
    const/4 v1, 0x5

    .line 40
    aput-byte v0, p1, v1

    .line 41
    .line 42
    and-int/lit16 p0, p0, 0xff

    .line 43
    .line 44
    int-to-byte p0, p0

    .line 45
    const/4 v0, 0x6

    .line 46
    aput-byte p0, p1, v0

    .line 47
    .line 48
    return-void
.end method

.method public static parseAc4AnnexEFormat(Landroidx/media3/common/util/ParsableByteArray;Ljava/lang/String;Ljava/lang/String;Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/Format;
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x2

    .line 5
    new-instance v3, Landroidx/media3/common/util/ParsableBitArray;

    .line 6
    .line 7
    invoke-direct {v3}, Landroidx/media3/common/util/ParsableBitArray;-><init>()V

    .line 8
    .line 9
    .line 10
    move-object/from16 v4, p0

    .line 11
    .line 12
    invoke-virtual {v3, v4}, Landroidx/media3/common/util/ParsableBitArray;->reset(Landroidx/media3/common/util/ParsableByteArray;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableBitArray;->bitsLeft()I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    const/4 v5, 0x3

    .line 20
    invoke-virtual {v3, v5}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 21
    .line 22
    .line 23
    move-result v6

    .line 24
    const/4 v7, 0x1

    .line 25
    if-gt v6, v7, :cond_3a

    .line 26
    .line 27
    const/4 v8, 0x7

    .line 28
    invoke-virtual {v3, v8}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 29
    .line 30
    .line 31
    move-result v9

    .line 32
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    .line 33
    .line 34
    .line 35
    move-result v10

    .line 36
    if-eqz v10, :cond_0

    .line 37
    .line 38
    const v10, 0xbb80

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const v10, 0xac44

    .line 43
    .line 44
    .line 45
    :goto_0
    const/4 v11, 0x4

    .line 46
    invoke-virtual {v3, v11}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 47
    .line 48
    .line 49
    const/16 v12, 0x9

    .line 50
    .line 51
    invoke-virtual {v3, v12}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 52
    .line 53
    .line 54
    move-result v12

    .line 55
    const/16 v13, 0x10

    .line 56
    .line 57
    if-le v9, v7, :cond_2

    .line 58
    .line 59
    if-eqz v6, :cond_1

    .line 60
    .line 61
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    .line 62
    .line 63
    .line 64
    move-result v14

    .line 65
    if-eqz v14, :cond_2

    .line 66
    .line 67
    invoke-virtual {v3, v13}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    .line 71
    .line 72
    .line 73
    move-result v14

    .line 74
    if-eqz v14, :cond_2

    .line 75
    .line 76
    const/16 v14, 0x80

    .line 77
    .line 78
    invoke-virtual {v3, v14}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    const-string v1, "Invalid AC-4 DSI version: "

    .line 85
    .line 86
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-static {v0}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    throw v0

    .line 101
    :cond_2
    :goto_1
    const/16 v14, 0x42

    .line 102
    .line 103
    if-ne v6, v7, :cond_4

    .line 104
    .line 105
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableBitArray;->bitsLeft()I

    .line 106
    .line 107
    .line 108
    move-result v15

    .line 109
    if-lt v15, v14, :cond_3

    .line 110
    .line 111
    invoke-virtual {v3, v14}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableBitArray;->byteAlign()V

    .line 115
    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_3
    const-string v0, "Invalid AC-4 DSI bitrate."

    .line 119
    .line 120
    invoke-static {v0}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    throw v0

    .line 125
    :cond_4
    :goto_2
    new-instance v15, Lv0/e;

    .line 126
    .line 127
    invoke-direct {v15}, Ljava/lang/Object;-><init>()V

    .line 128
    .line 129
    .line 130
    iput-boolean v7, v15, Lv0/e;->a:Z

    .line 131
    .line 132
    const/4 v14, -0x1

    .line 133
    iput v14, v15, Lv0/e;->b:I

    .line 134
    .line 135
    iput v14, v15, Lv0/e;->c:I

    .line 136
    .line 137
    iput-boolean v7, v15, Lv0/e;->d:Z

    .line 138
    .line 139
    iput v2, v15, Lv0/e;->e:I

    .line 140
    .line 141
    iput v7, v15, Lv0/e;->f:I

    .line 142
    .line 143
    iput v1, v15, Lv0/e;->g:I

    .line 144
    .line 145
    move/from16 v16, v1

    .line 146
    .line 147
    :goto_3
    const/4 v8, 0x6

    .line 148
    const/4 v11, 0x5

    .line 149
    if-ge v1, v12, :cond_2b

    .line 150
    .line 151
    if-nez v6, :cond_5

    .line 152
    .line 153
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    .line 154
    .line 155
    .line 156
    move-result v12

    .line 157
    invoke-virtual {v3, v11}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 158
    .line 159
    .line 160
    move-result v17

    .line 161
    invoke-virtual {v3, v11}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 162
    .line 163
    .line 164
    move-result v18

    .line 165
    move/from16 v19, v0

    .line 166
    .line 167
    move/from16 v0, v16

    .line 168
    .line 169
    move v13, v0

    .line 170
    move/from16 v14, v17

    .line 171
    .line 172
    move/from16 v2, v18

    .line 173
    .line 174
    move/from16 v18, v7

    .line 175
    .line 176
    move v7, v13

    .line 177
    goto :goto_5

    .line 178
    :cond_5
    invoke-virtual {v3, v0}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 179
    .line 180
    .line 181
    move-result v14

    .line 182
    move/from16 v18, v7

    .line 183
    .line 184
    invoke-virtual {v3, v0}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 185
    .line 186
    .line 187
    move-result v7

    .line 188
    move/from16 v19, v0

    .line 189
    .line 190
    const/16 v0, 0xff

    .line 191
    .line 192
    if-ne v7, v0, :cond_6

    .line 193
    .line 194
    invoke-virtual {v3, v13}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 195
    .line 196
    .line 197
    move-result v0

    .line 198
    add-int/2addr v7, v0

    .line 199
    :cond_6
    if-le v14, v2, :cond_7

    .line 200
    .line 201
    mul-int/lit8 v7, v7, 0x8

    .line 202
    .line 203
    invoke-virtual {v3, v7}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 204
    .line 205
    .line 206
    add-int/lit8 v1, v1, 0x1

    .line 207
    .line 208
    move/from16 v7, v18

    .line 209
    .line 210
    move/from16 v0, v19

    .line 211
    .line 212
    const/4 v8, 0x7

    .line 213
    const/4 v11, 0x4

    .line 214
    goto :goto_3

    .line 215
    :cond_7
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableBitArray;->bitsLeft()I

    .line 216
    .line 217
    .line 218
    move-result v0

    .line 219
    sub-int v0, v4, v0

    .line 220
    .line 221
    div-int/lit8 v0, v0, 0x8

    .line 222
    .line 223
    invoke-virtual {v3, v11}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 224
    .line 225
    .line 226
    move-result v12

    .line 227
    const/16 v13, 0x1f

    .line 228
    .line 229
    if-ne v12, v13, :cond_8

    .line 230
    .line 231
    move/from16 v13, v18

    .line 232
    .line 233
    goto :goto_4

    .line 234
    :cond_8
    move/from16 v13, v16

    .line 235
    .line 236
    :goto_4
    move v2, v14

    .line 237
    move v14, v12

    .line 238
    move/from16 v12, v16

    .line 239
    .line 240
    :goto_5
    iput v2, v15, Lv0/e;->f:I

    .line 241
    .line 242
    const/16 v11, 0xf

    .line 243
    .line 244
    if-nez v12, :cond_9

    .line 245
    .line 246
    if-nez v13, :cond_9

    .line 247
    .line 248
    if-ne v14, v8, :cond_9

    .line 249
    .line 250
    move/from16 v5, v18

    .line 251
    .line 252
    goto/16 :goto_19

    .line 253
    .line 254
    :cond_9
    invoke-virtual {v3, v5}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 255
    .line 256
    .line 257
    move-result v8

    .line 258
    iput v8, v15, Lv0/e;->g:I

    .line 259
    .line 260
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    .line 261
    .line 262
    .line 263
    move-result v8

    .line 264
    if-eqz v8, :cond_a

    .line 265
    .line 266
    const/4 v8, 0x5

    .line 267
    invoke-virtual {v3, v8}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 268
    .line 269
    .line 270
    :cond_a
    const/4 v8, 0x2

    .line 271
    invoke-virtual {v3, v8}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 272
    .line 273
    .line 274
    move/from16 v5, v18

    .line 275
    .line 276
    if-ne v6, v5, :cond_b

    .line 277
    .line 278
    if-eq v2, v5, :cond_c

    .line 279
    .line 280
    if-ne v2, v8, :cond_b

    .line 281
    .line 282
    goto :goto_7

    .line 283
    :cond_b
    :goto_6
    const/4 v8, 0x5

    .line 284
    goto :goto_8

    .line 285
    :cond_c
    :goto_7
    invoke-virtual {v3, v8}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 286
    .line 287
    .line 288
    goto :goto_6

    .line 289
    :goto_8
    invoke-virtual {v3, v8}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 290
    .line 291
    .line 292
    const/16 v8, 0xa

    .line 293
    .line 294
    invoke-virtual {v3, v8}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 295
    .line 296
    .line 297
    if-ne v6, v5, :cond_16

    .line 298
    .line 299
    if-lez v2, :cond_d

    .line 300
    .line 301
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    .line 302
    .line 303
    .line 304
    move-result v8

    .line 305
    iput-boolean v8, v15, Lv0/e;->a:Z

    .line 306
    .line 307
    :cond_d
    iget-boolean v8, v15, Lv0/e;->a:Z

    .line 308
    .line 309
    if-eqz v8, :cond_12

    .line 310
    .line 311
    if-eq v2, v5, :cond_e

    .line 312
    .line 313
    const/4 v8, 0x2

    .line 314
    if-ne v2, v8, :cond_f

    .line 315
    .line 316
    :cond_e
    const/4 v8, 0x5

    .line 317
    goto :goto_a

    .line 318
    :cond_f
    :goto_9
    const/16 v5, 0x18

    .line 319
    .line 320
    goto :goto_b

    .line 321
    :goto_a
    invoke-virtual {v3, v8}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 322
    .line 323
    .line 324
    move-result v5

    .line 325
    if-ltz v5, :cond_10

    .line 326
    .line 327
    if-gt v5, v11, :cond_10

    .line 328
    .line 329
    iput v5, v15, Lv0/e;->b:I

    .line 330
    .line 331
    :cond_10
    const/16 v8, 0xb

    .line 332
    .line 333
    if-lt v5, v8, :cond_11

    .line 334
    .line 335
    const/16 v8, 0xe

    .line 336
    .line 337
    if-gt v5, v8, :cond_11

    .line 338
    .line 339
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    .line 340
    .line 341
    .line 342
    move-result v5

    .line 343
    iput-boolean v5, v15, Lv0/e;->d:Z

    .line 344
    .line 345
    const/4 v8, 0x2

    .line 346
    invoke-virtual {v3, v8}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 347
    .line 348
    .line 349
    move-result v5

    .line 350
    iput v5, v15, Lv0/e;->e:I

    .line 351
    .line 352
    goto :goto_9

    .line 353
    :cond_11
    const/4 v8, 0x2

    .line 354
    goto :goto_9

    .line 355
    :goto_b
    invoke-virtual {v3, v5}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 356
    .line 357
    .line 358
    :goto_c
    const/4 v5, 0x1

    .line 359
    goto :goto_d

    .line 360
    :cond_12
    const/4 v8, 0x2

    .line 361
    goto :goto_c

    .line 362
    :goto_d
    if-eq v2, v5, :cond_14

    .line 363
    .line 364
    if-ne v2, v8, :cond_13

    .line 365
    .line 366
    goto :goto_e

    .line 367
    :cond_13
    const/4 v5, 0x1

    .line 368
    goto :goto_10

    .line 369
    :cond_14
    :goto_e
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    .line 370
    .line 371
    .line 372
    move-result v5

    .line 373
    if-eqz v5, :cond_15

    .line 374
    .line 375
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    .line 376
    .line 377
    .line 378
    move-result v5

    .line 379
    if-eqz v5, :cond_15

    .line 380
    .line 381
    invoke-virtual {v3, v8}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 382
    .line 383
    .line 384
    :cond_15
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    .line 385
    .line 386
    .line 387
    move-result v5

    .line 388
    if-eqz v5, :cond_13

    .line 389
    .line 390
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableBitArray;->skipBit()V

    .line 391
    .line 392
    .line 393
    move/from16 v5, v19

    .line 394
    .line 395
    invoke-virtual {v3, v5}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 396
    .line 397
    .line 398
    move-result v8

    .line 399
    move/from16 v11, v16

    .line 400
    .line 401
    :goto_f
    if-ge v11, v8, :cond_13

    .line 402
    .line 403
    invoke-virtual {v3, v5}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 404
    .line 405
    .line 406
    const/4 v5, 0x1

    .line 407
    add-int/2addr v11, v5

    .line 408
    const/16 v5, 0x8

    .line 409
    .line 410
    goto :goto_f

    .line 411
    :cond_16
    :goto_10
    if-nez v12, :cond_1e

    .line 412
    .line 413
    if-eqz v13, :cond_17

    .line 414
    .line 415
    goto/16 :goto_17

    .line 416
    .line 417
    :cond_17
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableBitArray;->skipBit()V

    .line 418
    .line 419
    .line 420
    if-eqz v14, :cond_1c

    .line 421
    .line 422
    if-eq v14, v5, :cond_1c

    .line 423
    .line 424
    const/4 v8, 0x2

    .line 425
    if-eq v14, v8, :cond_1c

    .line 426
    .line 427
    const/4 v8, 0x3

    .line 428
    if-eq v14, v8, :cond_1a

    .line 429
    .line 430
    const/4 v8, 0x4

    .line 431
    if-eq v14, v8, :cond_1a

    .line 432
    .line 433
    const/4 v8, 0x5

    .line 434
    if-eq v14, v8, :cond_18

    .line 435
    .line 436
    const/4 v8, 0x7

    .line 437
    invoke-virtual {v3, v8}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 438
    .line 439
    .line 440
    move-result v11

    .line 441
    move/from16 v8, v16

    .line 442
    .line 443
    :goto_11
    if-ge v8, v11, :cond_20

    .line 444
    .line 445
    const/16 v12, 0x8

    .line 446
    .line 447
    invoke-virtual {v3, v12}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 448
    .line 449
    .line 450
    add-int/2addr v8, v5

    .line 451
    goto :goto_11

    .line 452
    :cond_18
    if-nez v2, :cond_19

    .line 453
    .line 454
    invoke-static {v3, v15}, Lv0/g;->a(Landroidx/media3/common/util/ParsableBitArray;Lv0/e;)V

    .line 455
    .line 456
    .line 457
    goto :goto_18

    .line 458
    :cond_19
    const/4 v8, 0x3

    .line 459
    invoke-virtual {v3, v8}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 460
    .line 461
    .line 462
    move-result v11

    .line 463
    move/from16 v8, v16

    .line 464
    .line 465
    :goto_12
    const/16 v20, 0x2

    .line 466
    .line 467
    add-int/lit8 v12, v11, 0x2

    .line 468
    .line 469
    if-ge v8, v12, :cond_20

    .line 470
    .line 471
    invoke-static {v3, v15}, Lv0/g;->b(Landroidx/media3/common/util/ParsableBitArray;Lv0/e;)V

    .line 472
    .line 473
    .line 474
    add-int/2addr v8, v5

    .line 475
    goto :goto_12

    .line 476
    :cond_1a
    if-nez v2, :cond_1b

    .line 477
    .line 478
    move/from16 v11, v16

    .line 479
    .line 480
    const/4 v8, 0x3

    .line 481
    :goto_13
    if-ge v11, v8, :cond_20

    .line 482
    .line 483
    invoke-static {v3, v15}, Lv0/g;->a(Landroidx/media3/common/util/ParsableBitArray;Lv0/e;)V

    .line 484
    .line 485
    .line 486
    add-int/2addr v11, v5

    .line 487
    goto :goto_13

    .line 488
    :cond_1b
    move/from16 v11, v16

    .line 489
    .line 490
    :goto_14
    const/4 v8, 0x3

    .line 491
    if-ge v11, v8, :cond_20

    .line 492
    .line 493
    invoke-static {v3, v15}, Lv0/g;->b(Landroidx/media3/common/util/ParsableBitArray;Lv0/e;)V

    .line 494
    .line 495
    .line 496
    add-int/2addr v11, v5

    .line 497
    goto :goto_14

    .line 498
    :cond_1c
    if-nez v2, :cond_1d

    .line 499
    .line 500
    move/from16 v8, v16

    .line 501
    .line 502
    const/4 v11, 0x2

    .line 503
    :goto_15
    if-ge v8, v11, :cond_20

    .line 504
    .line 505
    invoke-static {v3, v15}, Lv0/g;->a(Landroidx/media3/common/util/ParsableBitArray;Lv0/e;)V

    .line 506
    .line 507
    .line 508
    add-int/2addr v8, v5

    .line 509
    goto :goto_15

    .line 510
    :cond_1d
    move/from16 v8, v16

    .line 511
    .line 512
    :goto_16
    const/4 v11, 0x2

    .line 513
    if-ge v8, v11, :cond_20

    .line 514
    .line 515
    invoke-static {v3, v15}, Lv0/g;->b(Landroidx/media3/common/util/ParsableBitArray;Lv0/e;)V

    .line 516
    .line 517
    .line 518
    add-int/2addr v8, v5

    .line 519
    goto :goto_16

    .line 520
    :cond_1e
    :goto_17
    if-nez v2, :cond_1f

    .line 521
    .line 522
    invoke-static {v3, v15}, Lv0/g;->a(Landroidx/media3/common/util/ParsableBitArray;Lv0/e;)V

    .line 523
    .line 524
    .line 525
    goto :goto_18

    .line 526
    :cond_1f
    invoke-static {v3, v15}, Lv0/g;->b(Landroidx/media3/common/util/ParsableBitArray;Lv0/e;)V

    .line 527
    .line 528
    .line 529
    :cond_20
    :goto_18
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableBitArray;->skipBit()V

    .line 530
    .line 531
    .line 532
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    .line 533
    .line 534
    .line 535
    move-result v5

    .line 536
    :goto_19
    const/4 v8, 0x7

    .line 537
    if-eqz v5, :cond_21

    .line 538
    .line 539
    invoke-virtual {v3, v8}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 540
    .line 541
    .line 542
    move-result v5

    .line 543
    move/from16 v11, v16

    .line 544
    .line 545
    :goto_1a
    if-ge v11, v5, :cond_21

    .line 546
    .line 547
    const/16 v12, 0xf

    .line 548
    .line 549
    invoke-virtual {v3, v12}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 550
    .line 551
    .line 552
    const/16 v18, 0x1

    .line 553
    .line 554
    add-int/lit8 v11, v11, 0x1

    .line 555
    .line 556
    goto :goto_1a

    .line 557
    :cond_21
    if-lez v2, :cond_26

    .line 558
    .line 559
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    .line 560
    .line 561
    .line 562
    move-result v2

    .line 563
    if-eqz v2, :cond_24

    .line 564
    .line 565
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableBitArray;->bitsLeft()I

    .line 566
    .line 567
    .line 568
    move-result v2

    .line 569
    const/16 v5, 0x42

    .line 570
    .line 571
    if-ge v2, v5, :cond_22

    .line 572
    .line 573
    move/from16 v2, v16

    .line 574
    .line 575
    goto :goto_1b

    .line 576
    :cond_22
    invoke-virtual {v3, v5}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 577
    .line 578
    .line 579
    const/4 v2, 0x1

    .line 580
    :goto_1b
    if-eqz v2, :cond_23

    .line 581
    .line 582
    goto :goto_1c

    .line 583
    :cond_23
    const-string v0, "Can\'t parse bitrate DSI."

    .line 584
    .line 585
    invoke-static {v0}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    .line 586
    .line 587
    .line 588
    move-result-object v0

    .line 589
    throw v0

    .line 590
    :cond_24
    :goto_1c
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    .line 591
    .line 592
    .line 593
    move-result v2

    .line 594
    if-eqz v2, :cond_26

    .line 595
    .line 596
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableBitArray;->byteAlign()V

    .line 597
    .line 598
    .line 599
    const/16 v2, 0x10

    .line 600
    .line 601
    invoke-virtual {v3, v2}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 602
    .line 603
    .line 604
    move-result v2

    .line 605
    invoke-virtual {v3, v2}, Landroidx/media3/common/util/ParsableBitArray;->skipBytes(I)V

    .line 606
    .line 607
    .line 608
    const/4 v2, 0x5

    .line 609
    invoke-virtual {v3, v2}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 610
    .line 611
    .line 612
    move-result v5

    .line 613
    move/from16 v11, v16

    .line 614
    .line 615
    :goto_1d
    if-ge v11, v5, :cond_25

    .line 616
    .line 617
    const/4 v12, 0x3

    .line 618
    invoke-virtual {v3, v12}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 619
    .line 620
    .line 621
    const/16 v12, 0x8

    .line 622
    .line 623
    invoke-virtual {v3, v12}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 624
    .line 625
    .line 626
    const/4 v13, 0x1

    .line 627
    add-int/2addr v11, v13

    .line 628
    goto :goto_1d

    .line 629
    :cond_25
    :goto_1e
    const/16 v12, 0x8

    .line 630
    .line 631
    const/4 v13, 0x1

    .line 632
    goto :goto_1f

    .line 633
    :cond_26
    const/4 v2, 0x5

    .line 634
    goto :goto_1e

    .line 635
    :goto_1f
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableBitArray;->byteAlign()V

    .line 636
    .line 637
    .line 638
    if-ne v6, v13, :cond_28

    .line 639
    .line 640
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableBitArray;->bitsLeft()I

    .line 641
    .line 642
    .line 643
    move-result v5

    .line 644
    sub-int/2addr v4, v5

    .line 645
    div-int/2addr v4, v12

    .line 646
    sub-int/2addr v4, v0

    .line 647
    if-lt v7, v4, :cond_27

    .line 648
    .line 649
    sub-int/2addr v7, v4

    .line 650
    invoke-virtual {v3, v7}, Landroidx/media3/common/util/ParsableBitArray;->skipBytes(I)V

    .line 651
    .line 652
    .line 653
    goto :goto_20

    .line 654
    :cond_27
    const-string v0, "pres_bytes is smaller than presentation bytes read."

    .line 655
    .line 656
    invoke-static {v0}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    .line 657
    .line 658
    .line 659
    move-result-object v0

    .line 660
    throw v0

    .line 661
    :cond_28
    :goto_20
    iget-boolean v0, v15, Lv0/e;->a:Z

    .line 662
    .line 663
    if-eqz v0, :cond_2a

    .line 664
    .line 665
    iget v0, v15, Lv0/e;->b:I

    .line 666
    .line 667
    const/4 v3, -0x1

    .line 668
    if-eq v0, v3, :cond_29

    .line 669
    .line 670
    goto :goto_21

    .line 671
    :cond_29
    new-instance v0, Ljava/lang/StringBuilder;

    .line 672
    .line 673
    const-string v2, "Can\'t determine channel mode of presentation "

    .line 674
    .line 675
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 676
    .line 677
    .line 678
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 679
    .line 680
    .line 681
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 682
    .line 683
    .line 684
    move-result-object v0

    .line 685
    invoke-static {v0}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    .line 686
    .line 687
    .line 688
    move-result-object v0

    .line 689
    throw v0

    .line 690
    :cond_2a
    const/4 v3, -0x1

    .line 691
    goto :goto_21

    .line 692
    :cond_2b
    move v12, v0

    .line 693
    move v2, v11

    .line 694
    const/4 v3, -0x1

    .line 695
    const/4 v8, 0x7

    .line 696
    :goto_21
    iget-boolean v0, v15, Lv0/e;->a:Z

    .line 697
    .line 698
    const/16 v1, 0xc

    .line 699
    .line 700
    if-eqz v0, :cond_31

    .line 701
    .line 702
    iget v0, v15, Lv0/e;->b:I

    .line 703
    .line 704
    iget-boolean v4, v15, Lv0/e;->d:Z

    .line 705
    .line 706
    iget v5, v15, Lv0/e;->e:I

    .line 707
    .line 708
    const/16 v6, 0xd

    .line 709
    .line 710
    packed-switch v0, :pswitch_data_0

    .line 711
    .line 712
    .line 713
    move/from16 v21, v3

    .line 714
    .line 715
    :goto_22
    const/16 v8, 0xb

    .line 716
    .line 717
    goto :goto_23

    .line 718
    :pswitch_0
    const/16 v8, 0xb

    .line 719
    .line 720
    const/16 v21, 0x18

    .line 721
    .line 722
    goto :goto_23

    .line 723
    :pswitch_1
    const/16 v8, 0xb

    .line 724
    .line 725
    const/16 v21, 0xe

    .line 726
    .line 727
    goto :goto_23

    .line 728
    :pswitch_2
    move/from16 v21, v6

    .line 729
    .line 730
    goto :goto_22

    .line 731
    :pswitch_3
    move/from16 v21, v1

    .line 732
    .line 733
    goto :goto_22

    .line 734
    :pswitch_4
    const/16 v8, 0xb

    .line 735
    .line 736
    const/16 v21, 0xb

    .line 737
    .line 738
    goto :goto_23

    .line 739
    :pswitch_5
    move/from16 v21, v12

    .line 740
    .line 741
    goto :goto_22

    .line 742
    :pswitch_6
    move/from16 v21, v8

    .line 743
    .line 744
    goto :goto_22

    .line 745
    :pswitch_7
    const/16 v8, 0xb

    .line 746
    .line 747
    const/16 v21, 0x6

    .line 748
    .line 749
    goto :goto_23

    .line 750
    :pswitch_8
    move/from16 v21, v2

    .line 751
    .line 752
    goto :goto_22

    .line 753
    :pswitch_9
    const/16 v8, 0xb

    .line 754
    .line 755
    const/16 v21, 0x3

    .line 756
    .line 757
    goto :goto_23

    .line 758
    :pswitch_a
    const/16 v8, 0xb

    .line 759
    .line 760
    const/16 v21, 0x2

    .line 761
    .line 762
    goto :goto_23

    .line 763
    :pswitch_b
    const/16 v8, 0xb

    .line 764
    .line 765
    const/16 v21, 0x1

    .line 766
    .line 767
    :goto_23
    if-eq v0, v8, :cond_2d

    .line 768
    .line 769
    if-eq v0, v1, :cond_2d

    .line 770
    .line 771
    if-eq v0, v6, :cond_2d

    .line 772
    .line 773
    const/16 v8, 0xe

    .line 774
    .line 775
    if-ne v0, v8, :cond_2c

    .line 776
    .line 777
    goto :goto_24

    .line 778
    :cond_2c
    move/from16 v0, v21

    .line 779
    .line 780
    const/4 v13, 0x1

    .line 781
    goto :goto_26

    .line 782
    :cond_2d
    :goto_24
    if-nez v4, :cond_2e

    .line 783
    .line 784
    add-int/lit8 v21, v21, -0x2

    .line 785
    .line 786
    :cond_2e
    if-eqz v5, :cond_30

    .line 787
    .line 788
    const/4 v13, 0x1

    .line 789
    if-eq v5, v13, :cond_2f

    .line 790
    .line 791
    :goto_25
    move/from16 v0, v21

    .line 792
    .line 793
    goto :goto_26

    .line 794
    :cond_2f
    add-int/lit8 v21, v21, -0x2

    .line 795
    .line 796
    goto :goto_25

    .line 797
    :cond_30
    const/4 v13, 0x1

    .line 798
    add-int/lit8 v21, v21, -0x4

    .line 799
    .line 800
    goto :goto_25

    .line 801
    :cond_31
    const/4 v13, 0x1

    .line 802
    iget v0, v15, Lv0/e;->c:I

    .line 803
    .line 804
    if-lez v0, :cond_32

    .line 805
    .line 806
    add-int/2addr v0, v13

    .line 807
    iget v1, v15, Lv0/e;->g:I

    .line 808
    .line 809
    const/4 v8, 0x4

    .line 810
    if-ne v1, v8, :cond_38

    .line 811
    .line 812
    const/16 v1, 0x11

    .line 813
    .line 814
    if-ne v0, v1, :cond_38

    .line 815
    .line 816
    const/16 v0, 0x15

    .line 817
    .line 818
    goto :goto_26

    .line 819
    :cond_32
    iget v0, v15, Lv0/e;->g:I

    .line 820
    .line 821
    if-eqz v0, :cond_33

    .line 822
    .line 823
    const/4 v5, 0x1

    .line 824
    if-eq v0, v5, :cond_37

    .line 825
    .line 826
    const/4 v8, 0x2

    .line 827
    if-eq v0, v8, :cond_36

    .line 828
    .line 829
    const/4 v8, 0x3

    .line 830
    if-eq v0, v8, :cond_35

    .line 831
    .line 832
    const/4 v8, 0x4

    .line 833
    if-eq v0, v8, :cond_34

    .line 834
    .line 835
    new-instance v0, Ljava/lang/StringBuilder;

    .line 836
    .line 837
    const-string v1, "AC-4 level "

    .line 838
    .line 839
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 840
    .line 841
    .line 842
    iget v1, v15, Lv0/e;->g:I

    .line 843
    .line 844
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 845
    .line 846
    .line 847
    const-string v1, " has not been defined."

    .line 848
    .line 849
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 850
    .line 851
    .line 852
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 853
    .line 854
    .line 855
    move-result-object v0

    .line 856
    const-string v1, "Ac4Util"

    .line 857
    .line 858
    invoke-static {v1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    .line 860
    .line 861
    :cond_33
    const/4 v0, 0x2

    .line 862
    goto :goto_26

    .line 863
    :cond_34
    move v0, v1

    .line 864
    goto :goto_26

    .line 865
    :cond_35
    const/16 v0, 0xa

    .line 866
    .line 867
    goto :goto_26

    .line 868
    :cond_36
    move v0, v12

    .line 869
    goto :goto_26

    .line 870
    :cond_37
    const/4 v0, 0x6

    .line 871
    :cond_38
    :goto_26
    if-lez v0, :cond_39

    .line 872
    .line 873
    iget v1, v15, Lv0/e;->f:I

    .line 874
    .line 875
    iget v2, v15, Lv0/e;->g:I

    .line 876
    .line 877
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 878
    .line 879
    .line 880
    move-result-object v3

    .line 881
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 882
    .line 883
    .line 884
    move-result-object v1

    .line 885
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 886
    .line 887
    .line 888
    move-result-object v2

    .line 889
    const/4 v8, 0x3

    .line 890
    new-array v4, v8, [Ljava/lang/Object;

    .line 891
    .line 892
    aput-object v3, v4, v16

    .line 893
    .line 894
    const/16 v18, 0x1

    .line 895
    .line 896
    aput-object v1, v4, v18

    .line 897
    .line 898
    const/16 v20, 0x2

    .line 899
    .line 900
    aput-object v2, v4, v20

    .line 901
    .line 902
    const-string v1, "ac-4.%02d.%02d.%02d"

    .line 903
    .line 904
    invoke-static {v1, v4}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 905
    .line 906
    .line 907
    move-result-object v1

    .line 908
    new-instance v2, Landroidx/media3/common/Format$Builder;

    .line 909
    .line 910
    invoke-direct {v2}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 911
    .line 912
    .line 913
    move-object/from16 v3, p1

    .line 914
    .line 915
    invoke-virtual {v2, v3}, Landroidx/media3/common/Format$Builder;->setId(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 916
    .line 917
    .line 918
    move-result-object v2

    .line 919
    const-string v3, "audio/ac4"

    .line 920
    .line 921
    invoke-virtual {v2, v3}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 922
    .line 923
    .line 924
    move-result-object v2

    .line 925
    invoke-virtual {v2, v0}, Landroidx/media3/common/Format$Builder;->setChannelCount(I)Landroidx/media3/common/Format$Builder;

    .line 926
    .line 927
    .line 928
    move-result-object v0

    .line 929
    invoke-virtual {v0, v10}, Landroidx/media3/common/Format$Builder;->setSampleRate(I)Landroidx/media3/common/Format$Builder;

    .line 930
    .line 931
    .line 932
    move-result-object v0

    .line 933
    move-object/from16 v2, p3

    .line 934
    .line 935
    invoke-virtual {v0, v2}, Landroidx/media3/common/Format$Builder;->setDrmInitData(Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/Format$Builder;

    .line 936
    .line 937
    .line 938
    move-result-object v0

    .line 939
    move-object/from16 v2, p2

    .line 940
    .line 941
    invoke-virtual {v0, v2}, Landroidx/media3/common/Format$Builder;->setLanguage(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 942
    .line 943
    .line 944
    move-result-object v0

    .line 945
    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setCodecs(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 946
    .line 947
    .line 948
    move-result-object v0

    .line 949
    invoke-virtual {v0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    .line 950
    .line 951
    .line 952
    move-result-object v0

    .line 953
    return-object v0

    .line 954
    :cond_39
    const-string v0, "Cannot determine channel count of presentation."

    .line 955
    .line 956
    invoke-static {v0}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    .line 957
    .line 958
    .line 959
    move-result-object v0

    .line 960
    throw v0

    .line 961
    :cond_3a
    new-instance v0, Ljava/lang/StringBuilder;

    .line 962
    .line 963
    const-string v1, "Unsupported AC-4 DSI version: "

    .line 964
    .line 965
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 966
    .line 967
    .line 968
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 969
    .line 970
    .line 971
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 972
    .line 973
    .line 974
    move-result-object v0

    .line 975
    invoke-static {v0}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    .line 976
    .line 977
    .line 978
    move-result-object v0

    .line 979
    throw v0

    .line 980
    nop

    .line 981
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static parseAc4SyncframeAudioSampleCount(Ljava/nio/ByteBuffer;)I
    .locals 2

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 13
    .line 14
    .line 15
    new-instance p0, Landroidx/media3/common/util/ParsableBitArray;

    .line 16
    .line 17
    invoke-direct {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;-><init>([B)V

    .line 18
    .line 19
    .line 20
    invoke-static {p0}, Lv0/g;->parseAc4SyncframeInfo(Landroidx/media3/common/util/ParsableBitArray;)Lv0/f;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    iget p0, p0, Lv0/f;->c:I

    .line 25
    .line 26
    return p0
.end method

.method public static parseAc4SyncframeInfo(Landroidx/media3/common/util/ParsableBitArray;)Lv0/f;
    .locals 9

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const v2, 0xffff

    .line 12
    .line 13
    .line 14
    const/4 v3, 0x4

    .line 15
    if-ne v0, v2, :cond_0

    .line 16
    .line 17
    const/16 v0, 0x18

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v2, 0x7

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move v2, v3

    .line 26
    :goto_0
    add-int/2addr v0, v2

    .line 27
    const v2, 0xac41

    .line 28
    .line 29
    .line 30
    if-ne v1, v2, :cond_1

    .line 31
    .line 32
    add-int/lit8 v0, v0, 0x2

    .line 33
    .line 34
    :cond_1
    const/4 v1, 0x2

    .line 35
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    const/4 v4, 0x3

    .line 40
    if-ne v2, v4, :cond_3

    .line 41
    .line 42
    :cond_2
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-nez v2, :cond_2

    .line 50
    .line 51
    :cond_3
    const/16 v2, 0xa

    .line 52
    .line 53
    invoke-virtual {p0, v2}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    if-eqz v5, :cond_4

    .line 62
    .line 63
    invoke-virtual {p0, v4}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    if-lez v5, :cond_4

    .line 68
    .line 69
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 70
    .line 71
    .line 72
    :cond_4
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    .line 73
    .line 74
    .line 75
    move-result v5

    .line 76
    const v6, 0xac44

    .line 77
    .line 78
    .line 79
    const v7, 0xbb80

    .line 80
    .line 81
    .line 82
    if-eqz v5, :cond_5

    .line 83
    .line 84
    move v5, v7

    .line 85
    goto :goto_1

    .line 86
    :cond_5
    move v5, v6

    .line 87
    :goto_1
    invoke-virtual {p0, v3}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 88
    .line 89
    .line 90
    move-result p0

    .line 91
    sget-object v8, Lv0/g;->a:[I

    .line 92
    .line 93
    if-ne v5, v6, :cond_6

    .line 94
    .line 95
    const/16 v6, 0xd

    .line 96
    .line 97
    if-ne p0, v6, :cond_6

    .line 98
    .line 99
    aget p0, v8, p0

    .line 100
    .line 101
    goto :goto_4

    .line 102
    :cond_6
    if-ne v5, v7, :cond_c

    .line 103
    .line 104
    const/16 v6, 0xe

    .line 105
    .line 106
    if-ge p0, v6, :cond_c

    .line 107
    .line 108
    aget v6, v8, p0

    .line 109
    .line 110
    rem-int/lit8 v2, v2, 0x5

    .line 111
    .line 112
    const/4 v7, 0x1

    .line 113
    const/16 v8, 0x8

    .line 114
    .line 115
    if-eq v2, v7, :cond_a

    .line 116
    .line 117
    const/16 v7, 0xb

    .line 118
    .line 119
    if-eq v2, v1, :cond_9

    .line 120
    .line 121
    if-eq v2, v4, :cond_a

    .line 122
    .line 123
    if-eq v2, v3, :cond_7

    .line 124
    .line 125
    goto :goto_3

    .line 126
    :cond_7
    if-eq p0, v4, :cond_8

    .line 127
    .line 128
    if-eq p0, v8, :cond_8

    .line 129
    .line 130
    if-ne p0, v7, :cond_b

    .line 131
    .line 132
    :cond_8
    :goto_2
    add-int/lit8 p0, v6, 0x1

    .line 133
    .line 134
    goto :goto_4

    .line 135
    :cond_9
    if-eq p0, v8, :cond_8

    .line 136
    .line 137
    if-ne p0, v7, :cond_b

    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_a
    if-eq p0, v4, :cond_8

    .line 141
    .line 142
    if-ne p0, v8, :cond_b

    .line 143
    .line 144
    goto :goto_2

    .line 145
    :cond_b
    :goto_3
    move p0, v6

    .line 146
    goto :goto_4

    .line 147
    :cond_c
    const/4 p0, 0x0

    .line 148
    :goto_4
    new-instance v1, Lv0/f;

    .line 149
    .line 150
    invoke-direct {v1, v5, v0, p0}, Lv0/f;-><init>(III)V

    .line 151
    .line 152
    .line 153
    return-object v1
.end method

.method public static parseAc4SyncframeSize([BI)I
    .locals 4

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x7

    .line 3
    if-ge v0, v1, :cond_0

    .line 4
    .line 5
    const/4 p0, -0x1

    .line 6
    return p0

    .line 7
    :cond_0
    const/4 v0, 0x2

    .line 8
    aget-byte v0, p0, v0

    .line 9
    .line 10
    and-int/lit16 v0, v0, 0xff

    .line 11
    .line 12
    shl-int/lit8 v0, v0, 0x8

    .line 13
    .line 14
    const/4 v2, 0x3

    .line 15
    aget-byte v2, p0, v2

    .line 16
    .line 17
    and-int/lit16 v2, v2, 0xff

    .line 18
    .line 19
    or-int/2addr v0, v2

    .line 20
    const v2, 0xffff

    .line 21
    .line 22
    .line 23
    const/4 v3, 0x4

    .line 24
    if-ne v0, v2, :cond_1

    .line 25
    .line 26
    aget-byte v0, p0, v3

    .line 27
    .line 28
    and-int/lit16 v0, v0, 0xff

    .line 29
    .line 30
    shl-int/lit8 v0, v0, 0x10

    .line 31
    .line 32
    const/4 v2, 0x5

    .line 33
    aget-byte v2, p0, v2

    .line 34
    .line 35
    and-int/lit16 v2, v2, 0xff

    .line 36
    .line 37
    shl-int/lit8 v2, v2, 0x8

    .line 38
    .line 39
    or-int/2addr v0, v2

    .line 40
    const/4 v2, 0x6

    .line 41
    aget-byte p0, p0, v2

    .line 42
    .line 43
    and-int/lit16 p0, p0, 0xff

    .line 44
    .line 45
    or-int/2addr v0, p0

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    move v1, v3

    .line 48
    :goto_0
    const p0, 0xac41

    .line 49
    .line 50
    .line 51
    if-ne p1, p0, :cond_2

    .line 52
    .line 53
    add-int/lit8 v1, v1, 0x2

    .line 54
    .line 55
    :cond_2
    add-int/2addr v0, v1

    .line 56
    return v0
.end method
