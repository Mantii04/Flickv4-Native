.class public abstract LP0/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "OpusHead"

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/common/util/Util;->getUtf8Bytes(Ljava/lang/String;)[B

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, LP0/n;->a:[B

    .line 8
    .line 9
    return-void
.end method

.method public static a(ILandroidx/media3/common/util/ParsableByteArray;)LP0/d;
    .locals 10

    .line 1
    add-int/lit8 p0, p0, 0xc

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    invoke-virtual {p1, p0}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, LP0/n;->b(Landroidx/media3/common/util/ParsableByteArray;)I

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x2

    .line 14
    invoke-virtual {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    and-int/lit16 v2, v1, 0x80

    .line 22
    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 26
    .line 27
    .line 28
    :cond_0
    and-int/lit8 v2, v1, 0x40

    .line 29
    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    invoke-virtual {p1, v2}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 37
    .line 38
    .line 39
    :cond_1
    and-int/lit8 v1, v1, 0x20

    .line 40
    .line 41
    if-eqz v1, :cond_2

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 44
    .line 45
    .line 46
    :cond_2
    invoke-virtual {p1, p0}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 47
    .line 48
    .line 49
    invoke-static {p1}, LP0/n;->b(Landroidx/media3/common/util/ParsableByteArray;)I

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    invoke-static {v0}, Landroidx/media3/common/MimeTypes;->getMimeTypeFromMp4ObjectType(I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    const-string v0, "audio/mpeg"

    .line 61
    .line 62
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-nez v0, :cond_6

    .line 67
    .line 68
    const-string v0, "audio/vnd.dts"

    .line 69
    .line 70
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-nez v0, :cond_6

    .line 75
    .line 76
    const-string v0, "audio/vnd.dts.hd"

    .line 77
    .line 78
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-eqz v0, :cond_3

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_3
    const/4 v0, 0x4

    .line 86
    invoke-virtual {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    .line 90
    .line 91
    .line 92
    move-result-wide v0

    .line 93
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    .line 94
    .line 95
    .line 96
    move-result-wide v3

    .line 97
    invoke-virtual {p1, p0}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 98
    .line 99
    .line 100
    invoke-static {p1}, LP0/n;->b(Landroidx/media3/common/util/ParsableByteArray;)I

    .line 101
    .line 102
    .line 103
    move-result p0

    .line 104
    move-wide v4, v3

    .line 105
    new-array v3, p0, [B

    .line 106
    .line 107
    const/4 v6, 0x0

    .line 108
    invoke-virtual {p1, v3, v6, p0}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 109
    .line 110
    .line 111
    move-wide p0, v0

    .line 112
    new-instance v1, LP0/d;

    .line 113
    .line 114
    const-wide/16 v6, 0x0

    .line 115
    .line 116
    cmp-long v0, v4, v6

    .line 117
    .line 118
    const-wide/16 v8, -0x1

    .line 119
    .line 120
    if-lez v0, :cond_4

    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_4
    move-wide v4, v8

    .line 124
    :goto_0
    cmp-long v0, p0, v6

    .line 125
    .line 126
    if-lez v0, :cond_5

    .line 127
    .line 128
    move-wide v6, p0

    .line 129
    goto :goto_1

    .line 130
    :cond_5
    move-wide v6, v8

    .line 131
    :goto_1
    invoke-direct/range {v1 .. v7}, LP0/d;-><init>(Ljava/lang/String;[BJJ)V

    .line 132
    .line 133
    .line 134
    return-object v1

    .line 135
    :cond_6
    :goto_2
    new-instance v1, LP0/d;

    .line 136
    .line 137
    const-wide/16 v6, -0x1

    .line 138
    .line 139
    const/4 v3, 0x0

    .line 140
    const-wide/16 v4, -0x1

    .line 141
    .line 142
    invoke-direct/range {v1 .. v7}, LP0/d;-><init>(Ljava/lang/String;[BJJ)V

    .line 143
    .line 144
    .line 145
    return-object v1
.end method

.method public static b(Landroidx/media3/common/util/ParsableByteArray;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    and-int/lit8 v1, v0, 0x7f

    .line 6
    .line 7
    :goto_0
    const/16 v2, 0x80

    .line 8
    .line 9
    and-int/2addr v0, v2

    .line 10
    if-ne v0, v2, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    shl-int/lit8 v1, v1, 0x7

    .line 17
    .line 18
    and-int/lit8 v2, v0, 0x7f

    .line 19
    .line 20
    or-int/2addr v1, v2

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return v1
.end method

.method public static c(Landroidx/media3/common/util/ParsableByteArray;II)Landroid/util/Pair;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    :goto_0
    sub-int v2, v1, p1

    .line 8
    .line 9
    move/from16 v4, p2

    .line 10
    .line 11
    if-ge v2, v4, :cond_10

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const/4 v5, 0x0

    .line 21
    const/4 v6, 0x1

    .line 22
    if-lez v2, :cond_0

    .line 23
    .line 24
    move v7, v6

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    move v7, v5

    .line 27
    :goto_1
    const-string v8, "childAtomSize must be positive"

    .line 28
    .line 29
    invoke-static {v7, v8}, Lv0/G;->checkContainerInput(ZLjava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    .line 33
    .line 34
    .line 35
    move-result v7

    .line 36
    const v8, 0x73696e66

    .line 37
    .line 38
    .line 39
    if-ne v7, v8, :cond_f

    .line 40
    .line 41
    add-int/lit8 v7, v1, 0x8

    .line 42
    .line 43
    const/4 v8, -0x1

    .line 44
    move v12, v5

    .line 45
    move v9, v8

    .line 46
    const/4 v10, 0x0

    .line 47
    const/4 v11, 0x0

    .line 48
    :goto_2
    sub-int v13, v7, v1

    .line 49
    .line 50
    const/4 v14, 0x4

    .line 51
    if-ge v13, v2, :cond_4

    .line 52
    .line 53
    invoke-virtual {v0, v7}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    .line 57
    .line 58
    .line 59
    move-result v13

    .line 60
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    .line 61
    .line 62
    .line 63
    move-result v15

    .line 64
    const/16 v16, 0x0

    .line 65
    .line 66
    const v3, 0x66726d61

    .line 67
    .line 68
    .line 69
    if-ne v15, v3, :cond_1

    .line 70
    .line 71
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    .line 77
    .line 78
    move-result-object v10

    .line 79
    goto :goto_3

    .line 80
    :cond_1
    const v3, 0x7363686d

    .line 81
    .line 82
    .line 83
    if-ne v15, v3, :cond_2

    .line 84
    .line 85
    invoke-virtual {v0, v14}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v14}, Landroidx/media3/common/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v11

    .line 92
    goto :goto_3

    .line 93
    :cond_2
    const v3, 0x73636869

    .line 94
    .line 95
    .line 96
    if-ne v15, v3, :cond_3

    .line 97
    .line 98
    move v9, v7

    .line 99
    move v12, v13

    .line 100
    :cond_3
    :goto_3
    add-int/2addr v7, v13

    .line 101
    goto :goto_2

    .line 102
    :cond_4
    const/16 v16, 0x0

    .line 103
    .line 104
    const-string v3, "cenc"

    .line 105
    .line 106
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v3

    .line 110
    if-nez v3, :cond_6

    .line 111
    .line 112
    const-string v3, "cbc1"

    .line 113
    .line 114
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v3

    .line 118
    if-nez v3, :cond_6

    .line 119
    .line 120
    const-string v3, "cens"

    .line 121
    .line 122
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v3

    .line 126
    if-nez v3, :cond_6

    .line 127
    .line 128
    const-string v3, "cbcs"

    .line 129
    .line 130
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v3

    .line 134
    if-eqz v3, :cond_5

    .line 135
    .line 136
    goto :goto_4

    .line 137
    :cond_5
    move-object/from16 v3, v16

    .line 138
    .line 139
    goto/16 :goto_b

    .line 140
    .line 141
    :cond_6
    :goto_4
    if-eqz v10, :cond_7

    .line 142
    .line 143
    move v3, v6

    .line 144
    goto :goto_5

    .line 145
    :cond_7
    move v3, v5

    .line 146
    :goto_5
    const-string v7, "frma atom is mandatory"

    .line 147
    .line 148
    invoke-static {v3, v7}, Lv0/G;->checkContainerInput(ZLjava/lang/String;)V

    .line 149
    .line 150
    .line 151
    if-eq v9, v8, :cond_8

    .line 152
    .line 153
    move v3, v6

    .line 154
    goto :goto_6

    .line 155
    :cond_8
    move v3, v5

    .line 156
    :goto_6
    const-string v7, "schi atom is mandatory"

    .line 157
    .line 158
    invoke-static {v3, v7}, Lv0/G;->checkContainerInput(ZLjava/lang/String;)V

    .line 159
    .line 160
    .line 161
    add-int/lit8 v3, v9, 0x8

    .line 162
    .line 163
    :goto_7
    sub-int v7, v3, v9

    .line 164
    .line 165
    if-ge v7, v12, :cond_d

    .line 166
    .line 167
    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    .line 171
    .line 172
    .line 173
    move-result v7

    .line 174
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    .line 175
    .line 176
    .line 177
    move-result v8

    .line 178
    const v13, 0x74656e63

    .line 179
    .line 180
    .line 181
    if-ne v8, v13, :cond_c

    .line 182
    .line 183
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    .line 184
    .line 185
    .line 186
    move-result v3

    .line 187
    invoke-static {v3}, LP0/n;->parseFullBoxVersion(I)I

    .line 188
    .line 189
    .line 190
    move-result v3

    .line 191
    invoke-virtual {v0, v6}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 192
    .line 193
    .line 194
    if-nez v3, :cond_9

    .line 195
    .line 196
    invoke-virtual {v0, v6}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 197
    .line 198
    .line 199
    move v14, v5

    .line 200
    move v15, v14

    .line 201
    goto :goto_8

    .line 202
    :cond_9
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 203
    .line 204
    .line 205
    move-result v3

    .line 206
    and-int/lit16 v7, v3, 0xf0

    .line 207
    .line 208
    shr-int/2addr v7, v14

    .line 209
    and-int/lit8 v3, v3, 0xf

    .line 210
    .line 211
    move v15, v3

    .line 212
    move v14, v7

    .line 213
    :goto_8
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 214
    .line 215
    .line 216
    move-result v3

    .line 217
    if-ne v3, v6, :cond_a

    .line 218
    .line 219
    move-object v3, v10

    .line 220
    move v10, v6

    .line 221
    goto :goto_9

    .line 222
    :cond_a
    move-object v3, v10

    .line 223
    move v10, v5

    .line 224
    :goto_9
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 225
    .line 226
    .line 227
    move-result v12

    .line 228
    const/16 v7, 0x10

    .line 229
    .line 230
    new-array v13, v7, [B

    .line 231
    .line 232
    invoke-virtual {v0, v13, v5, v7}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 233
    .line 234
    .line 235
    if-eqz v10, :cond_b

    .line 236
    .line 237
    if-nez v12, :cond_b

    .line 238
    .line 239
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 240
    .line 241
    .line 242
    move-result v7

    .line 243
    new-array v8, v7, [B

    .line 244
    .line 245
    invoke-virtual {v0, v8, v5, v7}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 246
    .line 247
    .line 248
    move-object/from16 v16, v8

    .line 249
    .line 250
    :cond_b
    new-instance v9, LP0/K;

    .line 251
    .line 252
    move-object v8, v3

    .line 253
    invoke-direct/range {v9 .. v16}, LP0/K;-><init>(ZLjava/lang/String;I[BII[B)V

    .line 254
    .line 255
    .line 256
    move-object v3, v9

    .line 257
    goto :goto_a

    .line 258
    :cond_c
    move-object v8, v10

    .line 259
    add-int/2addr v3, v7

    .line 260
    goto :goto_7

    .line 261
    :cond_d
    move-object v8, v10

    .line 262
    move-object/from16 v3, v16

    .line 263
    .line 264
    :goto_a
    if-eqz v3, :cond_e

    .line 265
    .line 266
    move v5, v6

    .line 267
    :cond_e
    const-string v6, "tenc atom is mandatory"

    .line 268
    .line 269
    invoke-static {v5, v6}, Lv0/G;->checkContainerInput(ZLjava/lang/String;)V

    .line 270
    .line 271
    .line 272
    invoke-static {v3}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object v3

    .line 276
    check-cast v3, LP0/K;

    .line 277
    .line 278
    invoke-static {v8, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 279
    .line 280
    .line 281
    move-result-object v3

    .line 282
    :goto_b
    if-eqz v3, :cond_f

    .line 283
    .line 284
    return-object v3

    .line 285
    :cond_f
    add-int/2addr v1, v2

    .line 286
    goto/16 :goto_0

    .line 287
    .line 288
    :cond_10
    const/16 v16, 0x0

    .line 289
    .line 290
    return-object v16
.end method

.method public static d(Landroidx/media3/common/util/ParsableByteArray;IIIILjava/lang/String;ILandroidx/media3/common/DrmInitData;LP0/i;I)V
    .locals 45

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    add-int/lit8 v5, v1, 0x10

    .line 1
    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    const/16 v5, 0x10

    .line 2
    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 3
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v5

    .line 4
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v6

    const/16 v7, 0x32

    .line 5
    invoke-virtual {v0, v7}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 6
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v7

    const v8, 0x656e6376

    move/from16 v10, p1

    if-ne v10, v8, :cond_2

    .line 7
    invoke-static {v0, v1, v2}, LP0/n;->c(Landroidx/media3/common/util/ParsableByteArray;II)Landroid/util/Pair;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 8
    iget-object v10, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    .line 9
    :cond_0
    iget-object v11, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, LP0/K;

    iget-object v11, v11, LP0/K;->b:Ljava/lang/String;

    invoke-virtual {v3, v11}, Landroidx/media3/common/DrmInitData;->copyWithSchemeType(Ljava/lang/String;)Landroidx/media3/common/DrmInitData;

    move-result-object v3

    .line 10
    :goto_0
    iget-object v11, v4, LP0/i;->a:[LP0/K;

    iget-object v8, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, LP0/K;

    aput-object v8, v11, p9

    .line 11
    :cond_1
    invoke-virtual {v0, v7}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    :cond_2
    const v8, 0x6d317620

    .line 12
    const-string v11, "video/3gpp"

    if-ne v10, v8, :cond_3

    .line 13
    const-string v8, "video/mpeg"

    goto :goto_1

    :cond_3
    const v8, 0x48323633

    if-ne v10, v8, :cond_4

    move-object v8, v11

    goto :goto_1

    :cond_4
    const/4 v8, 0x0

    :goto_1
    const/high16 v15, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    const/4 v14, -0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, -0x1

    const/16 v21, -0x1

    const/16 v22, -0x1

    const/16 v23, -0x1

    const/16 v24, -0x1

    const/16 v25, -0x1

    const/16 v26, -0x1

    const/16 v27, 0x8

    const/16 v28, 0x8

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    :goto_2
    sub-int v13, v7, v1

    if-ge v13, v2, :cond_6a

    .line 14
    invoke-virtual {v0, v7}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 15
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v13

    .line 16
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v9

    if-nez v9, :cond_5

    .line 17
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v33

    sub-int v1, v33, p2

    if-ne v1, v2, :cond_5

    move-object/from16 v36, v3

    move-object/from16 v40, v12

    move-object/from16 v9, v17

    move/from16 v44, v20

    move/from16 v43, v25

    move/from16 v3, v26

    move/from16 v38, v27

    move/from16 v39, v28

    move-object/from16 v27, v8

    goto/16 :goto_43

    :cond_5
    if-lez v9, :cond_6

    const/4 v1, 0x1

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    .line 18
    :goto_3
    const-string v2, "childAtomSize must be positive"

    invoke-static {v1, v2}, Lv0/G;->checkContainerInput(ZLjava/lang/String;)V

    .line 19
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    move/from16 v34, v7

    const v7, 0x61766343

    if-ne v1, v7, :cond_9

    if-nez v8, :cond_7

    const/4 v1, 0x1

    :goto_4
    const/4 v2, 0x0

    goto :goto_5

    :cond_7
    const/4 v1, 0x0

    goto :goto_4

    .line 20
    :goto_5
    invoke-static {v1, v2}, Lv0/G;->checkContainerInput(ZLjava/lang/String;)V

    add-int/lit8 v13, v13, 0x8

    .line 21
    invoke-virtual {v0, v13}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 22
    invoke-static {v0}, Lv0/h;->parse(Landroidx/media3/common/util/ParsableByteArray;)Lv0/h;

    move-result-object v1

    .line 23
    iget-object v12, v1, Lv0/h;->a:Ljava/util/ArrayList;

    .line 24
    iget v2, v1, Lv0/h;->b:I

    iput v2, v4, LP0/i;->c:I

    if-nez v32, :cond_8

    .line 25
    iget v15, v1, Lv0/h;->k:F

    .line 26
    :cond_8
    const-string v2, "video/avc"

    iget-object v7, v1, Lv0/h;->l:Ljava/lang/String;

    iget v8, v1, Lv0/h;->j:I

    iget v14, v1, Lv0/h;->g:I

    iget v13, v1, Lv0/h;->h:I

    move-object/from16 v18, v2

    iget v2, v1, Lv0/h;->i:I

    move/from16 v21, v2

    iget v2, v1, Lv0/h;->e:I

    iget v1, v1, Lv0/h;->f:I

    move/from16 v39, v1

    move/from16 v27, v2

    move-object/from16 v36, v3

    move/from16 v28, v10

    move-object/from16 v35, v11

    move-object/from16 v40, v12

    move/from16 v25, v13

    move/from16 v26, v21

    const/4 v12, 0x0

    move/from16 v21, v8

    move-object/from16 v8, v18

    move-object/from16 v18, v7

    :goto_6
    const/4 v7, -0x1

    goto/16 :goto_42

    :cond_9
    const v7, 0x68766343

    move-object/from16 v35, v11

    const-string v11, "video/hevc"

    if-ne v1, v7, :cond_d

    if-nez v8, :cond_a

    const/4 v1, 0x1

    :goto_7
    const/4 v2, 0x0

    goto :goto_8

    :cond_a
    const/4 v1, 0x0

    goto :goto_7

    .line 27
    :goto_8
    invoke-static {v1, v2}, Lv0/G;->checkContainerInput(ZLjava/lang/String;)V

    add-int/lit8 v13, v13, 0x8

    .line 28
    invoke-virtual {v0, v13}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 29
    invoke-static {v0}, Lv0/V;->parse(Landroidx/media3/common/util/ParsableByteArray;)Lv0/V;

    move-result-object v1

    .line 30
    iget-object v12, v1, Lv0/V;->a:Ljava/util/List;

    .line 31
    iget v2, v1, Lv0/V;->b:I

    iput v2, v4, LP0/i;->c:I

    if-nez v32, :cond_b

    .line 32
    iget v15, v1, Lv0/V;->l:F

    .line 33
    :cond_b
    iget v2, v1, Lv0/V;->k:I

    const/4 v7, -0x1

    if-eq v2, v7, :cond_c

    move/from16 v20, v2

    .line 34
    :cond_c
    iget v2, v1, Lv0/V;->m:I

    iget v7, v1, Lv0/V;->c:I

    iget-object v8, v1, Lv0/V;->n:Ljava/lang/String;

    iget v13, v1, Lv0/V;->d:I

    iget v14, v1, Lv0/V;->e:I

    move/from16 v18, v2

    iget v2, v1, Lv0/V;->h:I

    move/from16 v21, v2

    iget v2, v1, Lv0/V;->i:I

    move/from16 v22, v2

    iget v2, v1, Lv0/V;->j:I

    move/from16 v23, v2

    iget v2, v1, Lv0/V;->f:I

    move/from16 v24, v2

    iget v2, v1, Lv0/V;->g:I

    iget-object v1, v1, Lv0/V;->o:Ls0/s;

    move-object/from16 v31, v1

    move/from16 v39, v2

    move-object/from16 v36, v3

    move/from16 v28, v10

    move-object/from16 v40, v12

    move/from16 v25, v22

    move/from16 v26, v23

    move/from16 v27, v24

    const/4 v12, 0x0

    move/from16 v22, v7

    move/from16 v23, v13

    move/from16 v24, v14

    move/from16 v14, v21

    const/4 v7, -0x1

    move/from16 v21, v18

    move-object/from16 v18, v8

    move-object v8, v11

    goto/16 :goto_42

    :cond_d
    const v7, 0x6c687643

    move-object/from16 v36, v3

    const/4 v3, 0x2

    if-ne v1, v7, :cond_19

    .line 35
    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "lhvC must follow hvcC atom"

    .line 36
    invoke-static {v1, v2}, Lv0/G;->checkContainerInput(ZLjava/lang/String;)V

    move-object/from16 v7, v31

    if-eqz v7, :cond_e

    .line 37
    iget-object v1, v7, Ls0/s;->a:Lcom/google/common/collect/ImmutableList;

    .line 38
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    if-lt v1, v3, :cond_e

    const/4 v1, 0x1

    goto :goto_9

    :cond_e
    const/4 v1, 0x0

    :goto_9
    const-string v2, "must have at least two layers"

    .line 39
    invoke-static {v1, v2}, Lv0/G;->checkContainerInput(ZLjava/lang/String;)V

    add-int/lit8 v13, v13, 0x8

    .line 40
    invoke-virtual {v0, v13}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 41
    invoke-static {v7}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls0/s;

    invoke-static {v0, v1}, Lv0/V;->parseLayered(Landroidx/media3/common/util/ParsableByteArray;Ls0/s;)Lv0/V;

    move-result-object v1

    .line 42
    iget v2, v4, LP0/i;->c:I

    iget v3, v1, Lv0/V;->b:I

    if-ne v2, v3, :cond_f

    const/4 v2, 0x1

    goto :goto_a

    :cond_f
    const/4 v2, 0x0

    :goto_a
    const-string v3, "nalUnitLengthFieldLength must be same for both hvcC and lhvC atoms"

    invoke-static {v2, v3}, Lv0/G;->checkContainerInput(ZLjava/lang/String;)V

    .line 43
    iget v2, v1, Lv0/V;->h:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_11

    if-ne v14, v2, :cond_10

    const/4 v2, 0x1

    goto :goto_b

    :cond_10
    const/4 v2, 0x0

    .line 44
    :goto_b
    const-string v8, "colorSpace must be the same for both views"

    invoke-static {v2, v8}, Lv0/G;->checkContainerInput(ZLjava/lang/String;)V

    .line 45
    :cond_11
    iget v2, v1, Lv0/V;->i:I

    move/from16 v11, v25

    if-eq v2, v3, :cond_13

    if-ne v11, v2, :cond_12

    const/4 v2, 0x1

    goto :goto_c

    :cond_12
    const/4 v2, 0x0

    .line 46
    :goto_c
    const-string v8, "colorRange must be the same for both views"

    invoke-static {v2, v8}, Lv0/G;->checkContainerInput(ZLjava/lang/String;)V

    .line 47
    :cond_13
    iget v2, v1, Lv0/V;->j:I

    if-eq v2, v3, :cond_15

    move/from16 v3, v26

    if-ne v3, v2, :cond_14

    const/4 v2, 0x1

    goto :goto_d

    :cond_14
    const/4 v2, 0x0

    .line 48
    :goto_d
    const-string v8, "colorTransfer must be the same for both views"

    invoke-static {v2, v8}, Lv0/G;->checkContainerInput(ZLjava/lang/String;)V

    goto :goto_e

    :cond_15
    move/from16 v3, v26

    .line 49
    :goto_e
    iget v2, v1, Lv0/V;->f:I

    move/from16 v8, v27

    if-ne v8, v2, :cond_16

    const/4 v2, 0x1

    goto :goto_f

    :cond_16
    const/4 v2, 0x0

    :goto_f
    const-string v13, "bitdepthLuma must be the same for both views"

    invoke-static {v2, v13}, Lv0/G;->checkContainerInput(ZLjava/lang/String;)V

    .line 50
    iget v2, v1, Lv0/V;->g:I

    move/from16 v13, v28

    if-ne v13, v2, :cond_17

    const/4 v2, 0x1

    :goto_10
    move/from16 v18, v3

    goto :goto_11

    :cond_17
    const/4 v2, 0x0

    goto :goto_10

    :goto_11
    const-string v3, "bitdepthChroma must be the same for both views"

    invoke-static {v2, v3}, Lv0/G;->checkContainerInput(ZLjava/lang/String;)V

    if-eqz v12, :cond_18

    .line 51
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()LQ3/s;

    move-result-object v2

    .line 52
    invoke-virtual {v2, v12}, LQ3/s;->addAll(Ljava/lang/Iterable;)LQ3/s;

    move-result-object v2

    iget-object v3, v1, Lv0/V;->a:Ljava/util/List;

    .line 53
    invoke-virtual {v2, v3}, LQ3/s;->addAll(Ljava/lang/Iterable;)LQ3/s;

    move-result-object v2

    .line 54
    invoke-virtual {v2}, LQ3/s;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v12

    goto :goto_12

    .line 55
    :cond_18
    const-string v2, "initializationData must be already set from hvcC atom"

    const/4 v3, 0x0

    invoke-static {v3, v2}, Lv0/G;->checkContainerInput(ZLjava/lang/String;)V

    .line 56
    :goto_12
    const-string v2, "video/mv-hevc"

    iget-object v1, v1, Lv0/V;->n:Ljava/lang/String;

    move-object/from16 v31, v7

    move/from16 v27, v8

    move/from16 v28, v10

    move/from16 v25, v11

    move-object/from16 v40, v12

    move/from16 v39, v13

    move/from16 v26, v18

    const/4 v7, -0x1

    const/4 v12, 0x0

    move-object/from16 v18, v1

    move-object v8, v2

    goto/16 :goto_42

    :cond_19
    move/from16 v11, v25

    move/from16 v37, v26

    move/from16 v38, v27

    move/from16 v39, v28

    move-object/from16 v7, v31

    const v3, 0x76657875

    move-object/from16 v27, v8

    if-ne v1, v3, :cond_27

    add-int/lit8 v1, v13, 0x8

    .line 57
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 58
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v1

    const/4 v3, 0x0

    :goto_13
    sub-int v8, v1, v13

    if-ge v8, v9, :cond_22

    .line 59
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 60
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v8

    move/from16 v31, v1

    if-lez v8, :cond_1a

    const/4 v1, 0x1

    goto :goto_14

    :cond_1a
    const/4 v1, 0x0

    .line 61
    :goto_14
    invoke-static {v1, v2}, Lv0/G;->checkContainerInput(ZLjava/lang/String;)V

    .line 62
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    const v4, 0x65796573

    if-ne v1, v4, :cond_21

    add-int/lit8 v1, v31, 0x8

    .line 63
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 64
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v1

    :goto_15
    sub-int v3, v1, v31

    if-ge v3, v8, :cond_20

    .line 65
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 66
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v3

    if-lez v3, :cond_1b

    const/4 v4, 0x1

    goto :goto_16

    :cond_1b
    const/4 v4, 0x0

    .line 67
    :goto_16
    invoke-static {v4, v2}, Lv0/G;->checkContainerInput(ZLjava/lang/String;)V

    .line 68
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v4

    move/from16 v40, v1

    const v1, 0x73747269

    if-ne v4, v1, :cond_1f

    const/4 v1, 0x4

    .line 69
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 70
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    .line 71
    new-instance v3, LP0/e;

    new-instance v4, LP0/h;

    move/from16 v40, v1

    and-int/lit8 v1, v40, 0x1

    move-object/from16 v41, v2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1c

    const/4 v1, 0x1

    goto :goto_17

    :cond_1c
    const/4 v1, 0x0

    :goto_17
    and-int/lit8 v2, v40, 0x2

    move/from16 v42, v8

    const/4 v8, 0x2

    if-ne v2, v8, :cond_1d

    const/4 v2, 0x1

    goto :goto_18

    :cond_1d
    const/4 v2, 0x0

    :goto_18
    and-int/lit8 v8, v40, 0x8

    move/from16 v43, v11

    const/16 v11, 0x8

    if-ne v8, v11, :cond_1e

    const/4 v8, 0x1

    goto :goto_19

    :cond_1e
    const/4 v8, 0x0

    :goto_19
    invoke-direct {v4, v1, v2, v8}, LP0/h;-><init>(ZZZ)V

    invoke-direct {v3, v4}, LP0/e;-><init>(LP0/h;)V

    goto :goto_1a

    :cond_1f
    move-object/from16 v41, v2

    move/from16 v42, v8

    move/from16 v43, v11

    add-int v1, v40, v3

    goto :goto_15

    :cond_20
    move-object/from16 v41, v2

    move/from16 v42, v8

    move/from16 v43, v11

    const/4 v3, 0x0

    goto :goto_1a

    :cond_21
    move-object/from16 v41, v2

    move/from16 v42, v8

    move/from16 v43, v11

    :goto_1a
    add-int v1, v31, v42

    move-object/from16 v4, p8

    move-object/from16 v2, v41

    move/from16 v11, v43

    goto/16 :goto_13

    :cond_22
    move/from16 v43, v11

    if-nez v3, :cond_23

    const/4 v1, 0x0

    goto :goto_1b

    .line 72
    :cond_23
    new-instance v1, LP0/m;

    invoke-direct {v1, v3}, LP0/m;-><init>(LP0/e;)V

    :goto_1b
    if-eqz v1, :cond_24

    .line 73
    iget-object v2, v1, LP0/m;->a:LP0/e;

    if-eqz v2, :cond_24

    .line 74
    iget-object v2, v2, LP0/e;->a:LP0/h;

    if-eqz v7, :cond_25

    iget-object v3, v7, Ls0/s;->a:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    const/4 v8, 0x2

    if-lt v3, v8, :cond_25

    .line 75
    invoke-virtual {v1}, LP0/m;->hasBothEyeViews()Z

    move-result v1

    const-string v3, "both eye views must be marked as available"

    .line 76
    invoke-static {v1, v3}, Lv0/G;->checkContainerInput(ZLjava/lang/String;)V

    .line 77
    iget-boolean v1, v2, LP0/h;->c:Z

    const/16 v33, 0x1

    xor-int/lit8 v1, v1, 0x1

    .line 78
    const-string v2, "for MV-HEVC, eye_views_reversed must be set to false"

    .line 79
    invoke-static {v1, v2}, Lv0/G;->checkContainerInput(ZLjava/lang/String;)V

    :cond_24
    move/from16 v3, v20

    goto/16 :goto_2f

    :cond_25
    move/from16 v3, v20

    const/4 v1, -0x1

    if-ne v3, v1, :cond_4b

    .line 80
    iget-boolean v1, v2, LP0/h;->c:Z

    if-eqz v1, :cond_26

    const/16 v20, 0x5

    goto :goto_1c

    :cond_26
    const/16 v20, 0x4

    :goto_1c
    move-object/from16 v31, v7

    move/from16 v28, v10

    move-object/from16 v40, v12

    :goto_1d
    move-object/from16 v8, v27

    move/from16 v26, v37

    move/from16 v27, v38

    move/from16 v25, v43

    :goto_1e
    const/4 v7, -0x1

    const/4 v12, 0x0

    goto/16 :goto_42

    :cond_27
    move/from16 v43, v11

    move/from16 v3, v20

    const v2, 0x64766343

    if-eq v1, v2, :cond_28

    const v2, 0x64767643

    if-eq v1, v2, :cond_28

    const v2, 0x64767743

    if-ne v1, v2, :cond_29

    :cond_28
    move/from16 v44, v3

    move-object/from16 v20, v7

    move/from16 v28, v10

    move-object/from16 v40, v12

    move/from16 v3, v37

    const/4 v7, -0x1

    const/4 v12, 0x0

    goto/16 :goto_41

    :cond_29
    const v2, 0x76706343

    const/4 v4, 0x7

    if-ne v1, v2, :cond_2f

    if-nez v27, :cond_2a

    const/4 v1, 0x1

    :goto_1f
    const/4 v2, 0x0

    goto :goto_20

    :cond_2a
    const/4 v1, 0x0

    goto :goto_1f

    .line 81
    :goto_20
    invoke-static {v1, v2}, Lv0/G;->checkContainerInput(ZLjava/lang/String;)V

    const v1, 0x76703038

    .line 82
    const-string v2, "video/x-vnd.on2.vp9"

    if-ne v10, v1, :cond_2b

    const-string v1, "video/x-vnd.on2.vp8"

    goto :goto_21

    :cond_2b
    move-object v1, v2

    :goto_21
    add-int/lit8 v13, v13, 0xc

    .line 83
    invoke-virtual {v0, v13}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 84
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v8

    int-to-byte v8, v8

    .line 85
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v11

    int-to-byte v11, v11

    .line 86
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v13

    shr-int/lit8 v14, v13, 0x4

    shr-int/lit8 v20, v13, 0x1

    and-int/lit8 v4, v20, 0x7

    int-to-byte v4, v4

    .line 87
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    int-to-byte v2, v14

    .line 88
    invoke-static {v8, v11, v2, v4}, Landroidx/media3/common/util/CodecSpecificDataUtil;->buildVp9CodecPrivateInitializationData(BBBB)Lcom/google/common/collect/ImmutableList;

    move-result-object v12

    :cond_2c
    and-int/lit8 v2, v13, 0x1

    if-eqz v2, :cond_2d

    const/4 v2, 0x1

    goto :goto_22

    :cond_2d
    const/4 v2, 0x0

    .line 89
    :goto_22
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    .line 90
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v8

    .line 91
    invoke-static {v4}, Landroidx/media3/common/ColorInfo;->isoColorPrimariesToColorSpace(I)I

    move-result v4

    if-eqz v2, :cond_2e

    const/16 v25, 0x1

    goto :goto_23

    :cond_2e
    const/16 v25, 0x2

    .line 92
    :goto_23
    invoke-static {v8}, Landroidx/media3/common/ColorInfo;->isoTransferCharacteristicsToColorTransfer(I)I

    move-result v26

    move-object v8, v1

    move/from16 v20, v3

    move-object/from16 v31, v7

    move/from16 v28, v10

    move-object/from16 v40, v12

    move/from16 v27, v14

    move/from16 v39, v27

    const/4 v7, -0x1

    const/4 v12, 0x0

    move v14, v4

    goto/16 :goto_42

    :cond_2f
    const v2, 0x61763143

    .line 93
    const-string v8, "BoxParsers"

    const/4 v11, 0x6

    const/4 v4, 0x3

    if-ne v1, v2, :cond_49

    add-int/lit8 v1, v9, -0x8

    .line 94
    new-array v2, v1, [B

    const/4 v12, 0x0

    .line 95
    invoke-virtual {v0, v2, v12, v1}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 96
    invoke-static {v2}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v12

    add-int/lit8 v13, v13, 0x8

    .line 97
    invoke-virtual {v0, v13}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 98
    new-instance v1, Landroidx/media3/common/ColorInfo$Builder;

    invoke-direct {v1}, Landroidx/media3/common/ColorInfo$Builder;-><init>()V

    .line 99
    new-instance v2, Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v13

    invoke-direct {v2, v13}, Landroidx/media3/common/util/ParsableBitArray;-><init>([B)V

    .line 100
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v13

    const/16 v14, 0x8

    mul-int/2addr v13, v14

    invoke-virtual {v2, v13}, Landroidx/media3/common/util/ParsableBitArray;->setPosition(I)V

    const/4 v13, 0x1

    .line 101
    invoke-virtual {v2, v13}, Landroidx/media3/common/util/ParsableBitArray;->skipBytes(I)V

    .line 102
    invoke-virtual {v2, v4}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v13

    .line 103
    invoke-virtual {v2, v11}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 104
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v11

    .line 105
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v14

    const/16 v27, 0xa

    const/4 v4, 0x2

    if-ne v13, v4, :cond_33

    if-eqz v11, :cond_32

    if-eqz v14, :cond_30

    const/16 v4, 0xc

    goto :goto_24

    :cond_30
    move/from16 v4, v27

    .line 106
    :goto_24
    invoke-virtual {v1, v4}, Landroidx/media3/common/ColorInfo$Builder;->setLumaBitdepth(I)Landroidx/media3/common/ColorInfo$Builder;

    if-eqz v14, :cond_31

    const/16 v4, 0xc

    goto :goto_25

    :cond_31
    move/from16 v4, v27

    .line 107
    :goto_25
    invoke-virtual {v1, v4}, Landroidx/media3/common/ColorInfo$Builder;->setChromaBitdepth(I)Landroidx/media3/common/ColorInfo$Builder;

    goto :goto_28

    :cond_32
    const/4 v4, 0x2

    :cond_33
    if-gt v13, v4, :cond_36

    if-eqz v11, :cond_34

    move/from16 v4, v27

    goto :goto_26

    :cond_34
    const/16 v4, 0x8

    .line 108
    :goto_26
    invoke-virtual {v1, v4}, Landroidx/media3/common/ColorInfo$Builder;->setLumaBitdepth(I)Landroidx/media3/common/ColorInfo$Builder;

    if-eqz v11, :cond_35

    move/from16 v4, v27

    goto :goto_27

    :cond_35
    const/16 v4, 0x8

    .line 109
    :goto_27
    invoke-virtual {v1, v4}, Landroidx/media3/common/ColorInfo$Builder;->setChromaBitdepth(I)Landroidx/media3/common/ColorInfo$Builder;

    :cond_36
    :goto_28
    const/16 v4, 0xd

    .line 110
    invoke-virtual {v2, v4}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 111
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableBitArray;->skipBit()V

    const/4 v11, 0x4

    .line 112
    invoke-virtual {v2, v11}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v13

    const/4 v11, 0x1

    if-eq v13, v11, :cond_37

    .line 113
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Unsupported obu_type: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-virtual {v1}, Landroidx/media3/common/ColorInfo$Builder;->build()Landroidx/media3/common/ColorInfo;

    move-result-object v1

    goto/16 :goto_2e

    .line 115
    :cond_37
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v11

    if-eqz v11, :cond_38

    .line 116
    const-string v2, "Unsupported obu_extension_flag"

    invoke-static {v8, v2}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-virtual {v1}, Landroidx/media3/common/ColorInfo$Builder;->build()Landroidx/media3/common/ColorInfo;

    move-result-object v1

    goto/16 :goto_2e

    .line 118
    :cond_38
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v11

    .line 119
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableBitArray;->skipBit()V

    if-eqz v11, :cond_39

    const/16 v11, 0x8

    .line 120
    invoke-virtual {v2, v11}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v13

    const/16 v11, 0x7f

    if-le v13, v11, :cond_39

    .line 121
    const-string v2, "Excessive obu_size"

    invoke-static {v8, v2}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-virtual {v1}, Landroidx/media3/common/ColorInfo$Builder;->build()Landroidx/media3/common/ColorInfo;

    move-result-object v1

    goto/16 :goto_2e

    :cond_39
    const/4 v11, 0x3

    .line 123
    invoke-virtual {v2, v11}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v13

    .line 124
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableBitArray;->skipBit()V

    .line 125
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v11

    if-eqz v11, :cond_3a

    .line 126
    const-string v2, "Unsupported reduced_still_picture_header"

    invoke-static {v8, v2}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-virtual {v1}, Landroidx/media3/common/ColorInfo$Builder;->build()Landroidx/media3/common/ColorInfo;

    move-result-object v1

    goto/16 :goto_2e

    .line 128
    :cond_3a
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v11

    if-eqz v11, :cond_3b

    .line 129
    const-string v2, "Unsupported timing_info_present_flag"

    invoke-static {v8, v2}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-virtual {v1}, Landroidx/media3/common/ColorInfo$Builder;->build()Landroidx/media3/common/ColorInfo;

    move-result-object v1

    goto/16 :goto_2e

    .line 131
    :cond_3b
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v11

    if-eqz v11, :cond_3c

    .line 132
    const-string v2, "Unsupported initial_display_delay_present_flag"

    invoke-static {v8, v2}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-virtual {v1}, Landroidx/media3/common/ColorInfo$Builder;->build()Landroidx/media3/common/ColorInfo;

    move-result-object v1

    goto/16 :goto_2e

    :cond_3c
    const/4 v8, 0x5

    .line 134
    invoke-virtual {v2, v8}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v11

    const/4 v14, 0x0

    :goto_29
    if-gt v14, v11, :cond_3e

    const/16 v4, 0xc

    .line 135
    invoke-virtual {v2, v4}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 136
    invoke-virtual {v2, v8}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v4

    const/4 v8, 0x7

    if-le v4, v8, :cond_3d

    .line 137
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableBitArray;->skipBit()V

    :cond_3d
    add-int/lit8 v14, v14, 0x1

    const/16 v4, 0xd

    const/4 v8, 0x5

    goto :goto_29

    :cond_3e
    const/4 v4, 0x4

    .line 138
    invoke-virtual {v2, v4}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v8

    .line 139
    invoke-virtual {v2, v4}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v4

    const/16 v33, 0x1

    add-int/lit8 v8, v8, 0x1

    .line 140
    invoke-virtual {v2, v8}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    add-int/lit8 v4, v4, 0x1

    .line 141
    invoke-virtual {v2, v4}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 142
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v4

    const/4 v8, 0x7

    if-eqz v4, :cond_3f

    .line 143
    invoke-virtual {v2, v8}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 144
    :cond_3f
    invoke-virtual {v2, v8}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 145
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v4

    if-eqz v4, :cond_40

    const/4 v8, 0x2

    .line 146
    invoke-virtual {v2, v8}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 147
    :cond_40
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v8

    if-eqz v8, :cond_41

    const/4 v8, 0x2

    const/4 v11, 0x1

    goto :goto_2a

    :cond_41
    const/4 v11, 0x1

    .line 148
    invoke-virtual {v2, v11}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v8

    :goto_2a
    if-lez v8, :cond_42

    .line 149
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v8

    if-nez v8, :cond_42

    .line 150
    invoke-virtual {v2, v11}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    :cond_42
    const/4 v11, 0x3

    if-eqz v4, :cond_43

    .line 151
    invoke-virtual {v2, v11}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 152
    :cond_43
    invoke-virtual {v2, v11}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 153
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v4

    const/4 v8, 0x2

    if-ne v13, v8, :cond_44

    if-eqz v4, :cond_44

    .line 154
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableBitArray;->skipBit()V

    :cond_44
    const/4 v11, 0x1

    if-eq v13, v11, :cond_45

    .line 155
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v4

    if-eqz v4, :cond_45

    const/4 v4, 0x1

    goto :goto_2b

    :cond_45
    const/4 v4, 0x0

    .line 156
    :goto_2b
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v8

    if-eqz v8, :cond_48

    const/16 v11, 0x8

    .line 157
    invoke-virtual {v2, v11}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v8

    .line 158
    invoke-virtual {v2, v11}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v13

    .line 159
    invoke-virtual {v2, v11}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v14

    const/4 v11, 0x1

    if-nez v4, :cond_46

    if-ne v8, v11, :cond_46

    const/16 v4, 0xd

    if-ne v13, v4, :cond_46

    if-nez v14, :cond_46

    move v2, v11

    goto :goto_2c

    .line 160
    :cond_46
    invoke-virtual {v2, v11}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v33

    move/from16 v2, v33

    .line 161
    :goto_2c
    invoke-static {v8}, Landroidx/media3/common/ColorInfo;->isoColorPrimariesToColorSpace(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroidx/media3/common/ColorInfo$Builder;->setColorSpace(I)Landroidx/media3/common/ColorInfo$Builder;

    move-result-object v4

    if-ne v2, v11, :cond_47

    const/4 v2, 0x1

    goto :goto_2d

    :cond_47
    const/4 v2, 0x2

    .line 162
    :goto_2d
    invoke-virtual {v4, v2}, Landroidx/media3/common/ColorInfo$Builder;->setColorRange(I)Landroidx/media3/common/ColorInfo$Builder;

    move-result-object v2

    .line 163
    invoke-static {v13}, Landroidx/media3/common/ColorInfo;->isoTransferCharacteristicsToColorTransfer(I)I

    move-result v4

    .line 164
    invoke-virtual {v2, v4}, Landroidx/media3/common/ColorInfo$Builder;->setColorTransfer(I)Landroidx/media3/common/ColorInfo$Builder;

    .line 165
    :cond_48
    invoke-virtual {v1}, Landroidx/media3/common/ColorInfo$Builder;->build()Landroidx/media3/common/ColorInfo;

    move-result-object v1

    .line 166
    :goto_2e
    iget v2, v1, Landroidx/media3/common/ColorInfo;->lumaBitdepth:I

    .line 167
    iget v4, v1, Landroidx/media3/common/ColorInfo;->chromaBitdepth:I

    .line 168
    iget v14, v1, Landroidx/media3/common/ColorInfo;->colorSpace:I

    .line 169
    iget v8, v1, Landroidx/media3/common/ColorInfo;->colorRange:I

    .line 170
    iget v1, v1, Landroidx/media3/common/ColorInfo;->colorTransfer:I

    .line 171
    const-string v11, "video/av01"

    move/from16 v26, v1

    move/from16 v27, v2

    move/from16 v20, v3

    move/from16 v39, v4

    move-object/from16 v31, v7

    move/from16 v25, v8

    move/from16 v28, v10

    move-object v8, v11

    move-object/from16 v40, v12

    goto/16 :goto_1e

    :cond_49
    const v2, 0x636c6c69

    const/16 v4, 0x19

    if-ne v1, v2, :cond_4c

    if-nez v16, :cond_4a

    .line 172
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v16

    :cond_4a
    move-object/from16 v1, v16

    const/16 v2, 0x15

    .line 173
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 174
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readShort()S

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 175
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readShort()S

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-object/from16 v16, v1

    :cond_4b
    :goto_2f
    move/from16 v20, v3

    goto/16 :goto_1c

    :cond_4c
    const v2, 0x6d646376

    if-ne v1, v2, :cond_4e

    if-nez v16, :cond_4d

    .line 176
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v16

    :cond_4d
    move-object/from16 v1, v16

    .line 177
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readShort()S

    move-result v2

    .line 178
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readShort()S

    move-result v4

    .line 179
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readShort()S

    move-result v8

    .line 180
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readShort()S

    move-result v11

    .line 181
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readShort()S

    move-result v13

    move-object/from16 v20, v7

    .line 182
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readShort()S

    move-result v7

    move/from16 v28, v10

    .line 183
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readShort()S

    move-result v10

    move-object/from16 v40, v12

    .line 184
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readShort()S

    move-result v12

    .line 185
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v25

    .line 186
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v41

    move/from16 v44, v3

    const/4 v3, 0x1

    .line 187
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 188
    invoke-virtual {v1, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 189
    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 190
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 191
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 192
    invoke-virtual {v1, v8}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 193
    invoke-virtual {v1, v11}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 194
    invoke-virtual {v1, v10}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 195
    invoke-virtual {v1, v12}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const-wide/16 v2, 0x2710

    .line 196
    div-long v7, v25, v2

    long-to-int v4, v7

    int-to-short v4, v4

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 197
    div-long v2, v41, v2

    long-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-object/from16 v16, v1

    :goto_30
    move-object/from16 v31, v20

    move-object/from16 v8, v27

    :goto_31
    move/from16 v26, v37

    move/from16 v27, v38

    move/from16 v25, v43

    move/from16 v20, v44

    goto/16 :goto_1e

    :cond_4e
    move/from16 v44, v3

    move-object/from16 v20, v7

    move/from16 v28, v10

    move-object/from16 v40, v12

    const v2, 0x64323633

    if-ne v1, v2, :cond_50

    if-nez v27, :cond_4f

    const/4 v1, 0x1

    :goto_32
    const/4 v2, 0x0

    goto :goto_33

    :cond_4f
    const/4 v1, 0x0

    goto :goto_32

    .line 198
    :goto_33
    invoke-static {v1, v2}, Lv0/G;->checkContainerInput(ZLjava/lang/String;)V

    move-object/from16 v31, v20

    move-object/from16 v8, v35

    goto :goto_31

    :cond_50
    const/4 v2, 0x0

    const v3, 0x65736473

    if-ne v1, v3, :cond_53

    if-nez v27, :cond_51

    const/4 v1, 0x1

    goto :goto_34

    :cond_51
    const/4 v1, 0x0

    .line 199
    :goto_34
    invoke-static {v1, v2}, Lv0/G;->checkContainerInput(ZLjava/lang/String;)V

    .line 200
    invoke-static {v13, v0}, LP0/n;->a(ILandroidx/media3/common/util/ParsableByteArray;)LP0/d;

    move-result-object v1

    .line 201
    iget-object v3, v1, LP0/d;->b:[B

    if-eqz v3, :cond_52

    .line 202
    invoke-static {v3}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v12

    goto :goto_35

    :cond_52
    move-object/from16 v12, v40

    .line 203
    :goto_35
    iget-object v3, v1, LP0/d;->a:Ljava/lang/String;

    move-object/from16 v30, v1

    move-object v8, v3

    move-object/from16 v40, v12

    move-object/from16 v31, v20

    goto :goto_31

    :cond_53
    const v3, 0x62747274

    if-ne v1, v3, :cond_54

    add-int/lit8 v13, v13, 0x8

    .line 204
    invoke-virtual {v0, v13}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    const/4 v11, 0x4

    .line 205
    invoke-virtual {v0, v11}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 206
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v3

    .line 207
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v7

    .line 208
    new-instance v1, LP0/b;

    invoke-direct {v1, v7, v8, v3, v4}, LP0/b;-><init>(JJ)V

    move-object/from16 v29, v1

    goto :goto_30

    :cond_54
    const v3, 0x70617370

    if-ne v1, v3, :cond_55

    add-int/lit8 v13, v13, 0x8

    .line 209
    invoke-virtual {v0, v13}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 210
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v1

    .line 211
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v3

    int-to-float v1, v1

    int-to-float v3, v3

    div-float/2addr v1, v3

    move v15, v1

    move-object/from16 v31, v20

    move-object/from16 v8, v27

    move/from16 v26, v37

    move/from16 v27, v38

    move/from16 v25, v43

    move/from16 v20, v44

    const/4 v7, -0x1

    const/4 v12, 0x0

    const/16 v32, 0x1

    goto/16 :goto_42

    :cond_55
    const v3, 0x73763364

    if-ne v1, v3, :cond_58

    add-int/lit8 v1, v13, 0x8

    :goto_36
    sub-int v3, v1, v13

    if-ge v3, v9, :cond_57

    .line 212
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 213
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v3

    .line 214
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v4

    const v7, 0x70726f6a

    if-ne v4, v7, :cond_56

    .line 215
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v4

    add-int/2addr v3, v1

    invoke-static {v4, v1, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    move-object/from16 v19, v1

    goto/16 :goto_30

    :cond_56
    add-int/2addr v1, v3

    goto :goto_36

    :cond_57
    move-object/from16 v19, v2

    goto/16 :goto_30

    :cond_58
    const v3, 0x73743364

    if-ne v1, v3, :cond_5e

    .line 216
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    const/4 v11, 0x3

    .line 217
    invoke-virtual {v0, v11}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    if-nez v1, :cond_5d

    .line 218
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    if-eqz v1, :cond_5c

    const/4 v13, 0x1

    if-eq v1, v13, :cond_5b

    const/4 v8, 0x2

    if-eq v1, v8, :cond_5a

    if-eq v1, v11, :cond_59

    goto :goto_37

    :cond_59
    move/from16 v25, v11

    goto :goto_38

    :cond_5a
    const/16 v25, 0x2

    goto :goto_38

    :cond_5b
    const/16 v25, 0x1

    goto :goto_38

    :cond_5c
    const/16 v25, 0x0

    goto :goto_38

    :cond_5d
    :goto_37
    move/from16 v25, v44

    :goto_38
    move-object/from16 v31, v20

    move/from16 v20, v25

    goto/16 :goto_1d

    :cond_5e
    const v3, 0x61707643

    if-ne v1, v3, :cond_63

    add-int/lit8 v1, v9, -0xc

    .line 219
    new-array v3, v1, [B

    add-int/lit8 v13, v13, 0xc

    .line 220
    invoke-virtual {v0, v13}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    const/4 v12, 0x0

    .line 221
    invoke-virtual {v0, v3, v12, v1}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 222
    invoke-static {v3}, Landroidx/media3/common/util/CodecSpecificDataUtil;->buildApvCodecString([B)Ljava/lang/String;

    move-result-object v18

    .line 223
    invoke-static {v3}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 224
    new-instance v4, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v4, v3}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    .line 225
    new-instance v3, Landroidx/media3/common/ColorInfo$Builder;

    invoke-direct {v3}, Landroidx/media3/common/ColorInfo$Builder;-><init>()V

    .line 226
    new-instance v7, Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v8

    invoke-direct {v7, v8}, Landroidx/media3/common/util/ParsableBitArray;-><init>([B)V

    .line 227
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v4

    const/16 v10, 0x8

    mul-int/2addr v4, v10

    invoke-virtual {v7, v4}, Landroidx/media3/common/util/ParsableBitArray;->setPosition(I)V

    const/4 v13, 0x1

    .line 228
    invoke-virtual {v7, v13}, Landroidx/media3/common/util/ParsableBitArray;->skipBytes(I)V

    .line 229
    invoke-virtual {v7, v10}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v4

    move v8, v12

    :goto_39
    if-ge v8, v4, :cond_62

    .line 230
    invoke-virtual {v7, v13}, Landroidx/media3/common/util/ParsableBitArray;->skipBytes(I)V

    .line 231
    invoke-virtual {v7, v10}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v13

    move v14, v12

    :goto_3a
    if-ge v14, v13, :cond_61

    .line 232
    invoke-virtual {v7, v11}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 233
    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v27

    .line 234
    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableBitArray;->skipBit()V

    const/16 v2, 0xb

    .line 235
    invoke-virtual {v7, v2}, Landroidx/media3/common/util/ParsableBitArray;->skipBytes(I)V

    const/4 v2, 0x4

    .line 236
    invoke-virtual {v7, v2}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 237
    invoke-virtual {v7, v2}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v26

    add-int/lit8 v2, v26, 0x8

    .line 238
    invoke-virtual {v3, v2}, Landroidx/media3/common/ColorInfo$Builder;->setLumaBitdepth(I)Landroidx/media3/common/ColorInfo$Builder;

    .line 239
    invoke-virtual {v3, v2}, Landroidx/media3/common/ColorInfo$Builder;->setChromaBitdepth(I)Landroidx/media3/common/ColorInfo$Builder;

    const/4 v2, 0x1

    .line 240
    invoke-virtual {v7, v2}, Landroidx/media3/common/util/ParsableBitArray;->skipBytes(I)V

    if-eqz v27, :cond_60

    .line 241
    invoke-virtual {v7, v10}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v26

    .line 242
    invoke-virtual {v7, v10}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v27

    .line 243
    invoke-virtual {v7, v2}, Landroidx/media3/common/util/ParsableBitArray;->skipBytes(I)V

    .line 244
    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v33

    .line 245
    invoke-static/range {v26 .. v26}, Landroidx/media3/common/ColorInfo;->isoColorPrimariesToColorSpace(I)I

    move-result v2

    invoke-virtual {v3, v2}, Landroidx/media3/common/ColorInfo$Builder;->setColorSpace(I)Landroidx/media3/common/ColorInfo$Builder;

    move-result-object v2

    if-eqz v33, :cond_5f

    const/4 v10, 0x1

    goto :goto_3b

    :cond_5f
    const/4 v10, 0x2

    .line 246
    :goto_3b
    invoke-virtual {v2, v10}, Landroidx/media3/common/ColorInfo$Builder;->setColorRange(I)Landroidx/media3/common/ColorInfo$Builder;

    move-result-object v2

    .line 247
    invoke-static/range {v27 .. v27}, Landroidx/media3/common/ColorInfo;->isoTransferCharacteristicsToColorTransfer(I)I

    move-result v10

    .line 248
    invoke-virtual {v2, v10}, Landroidx/media3/common/ColorInfo$Builder;->setColorTransfer(I)Landroidx/media3/common/ColorInfo$Builder;

    :cond_60
    add-int/lit8 v14, v14, 0x1

    const/4 v2, 0x0

    const/16 v10, 0x8

    goto :goto_3a

    :cond_61
    add-int/lit8 v8, v8, 0x1

    const/4 v2, 0x0

    const/16 v10, 0x8

    const/4 v13, 0x1

    goto :goto_39

    .line 249
    :cond_62
    invoke-virtual {v3}, Landroidx/media3/common/ColorInfo$Builder;->build()Landroidx/media3/common/ColorInfo;

    move-result-object v2

    .line 250
    iget v3, v2, Landroidx/media3/common/ColorInfo;->lumaBitdepth:I

    .line 251
    iget v4, v2, Landroidx/media3/common/ColorInfo;->chromaBitdepth:I

    .line 252
    iget v14, v2, Landroidx/media3/common/ColorInfo;->colorSpace:I

    .line 253
    iget v7, v2, Landroidx/media3/common/ColorInfo;->colorRange:I

    .line 254
    iget v2, v2, Landroidx/media3/common/ColorInfo;->colorTransfer:I

    .line 255
    const-string v8, "video/apv"

    move-object/from16 v40, v1

    move/from16 v26, v2

    move/from16 v27, v3

    move/from16 v39, v4

    move/from16 v25, v7

    move-object/from16 v31, v20

    move/from16 v20, v44

    goto/16 :goto_6

    :cond_63
    const/4 v12, 0x0

    const v2, 0x636f6c72

    if-ne v1, v2, :cond_68

    const/4 v7, -0x1

    move/from16 v3, v37

    if-ne v14, v7, :cond_69

    if-ne v3, v7, :cond_69

    .line 256
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    const v2, 0x6e636c78

    if-eq v1, v2, :cond_65

    const v2, 0x6e636c63

    if-ne v1, v2, :cond_64

    goto :goto_3c

    .line 257
    :cond_64
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Unsupported color type: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ls0/f;->getBoxTypeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_40

    .line 258
    :cond_65
    :goto_3c
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v1

    .line 259
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v2

    const/4 v8, 0x2

    .line 260
    invoke-virtual {v0, v8}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    const/16 v3, 0x13

    if-ne v9, v3, :cond_66

    .line 261
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_66

    const/4 v3, 0x1

    goto :goto_3d

    :cond_66
    move v3, v12

    .line 262
    :goto_3d
    invoke-static {v1}, Landroidx/media3/common/ColorInfo;->isoColorPrimariesToColorSpace(I)I

    move-result v14

    if-eqz v3, :cond_67

    const/16 v25, 0x1

    goto :goto_3e

    :cond_67
    move/from16 v25, v8

    .line 263
    :goto_3e
    invoke-static {v2}, Landroidx/media3/common/ColorInfo;->isoTransferCharacteristicsToColorTransfer(I)I

    move-result v26

    move-object/from16 v31, v20

    move-object/from16 v8, v27

    move/from16 v27, v38

    :goto_3f
    move/from16 v20, v44

    goto :goto_42

    :cond_68
    move/from16 v3, v37

    const/4 v7, -0x1

    :cond_69
    :goto_40
    move/from16 v26, v3

    move-object/from16 v31, v20

    move-object/from16 v8, v27

    move/from16 v27, v38

    move/from16 v25, v43

    goto :goto_3f

    .line 264
    :goto_41
    invoke-static {v0}, Ls0/a;->parse(Landroidx/media3/common/util/ParsableByteArray;)Ls0/a;

    move-result-object v17

    goto :goto_40

    :goto_42
    add-int v1, v34, v9

    move/from16 v2, p3

    move-object/from16 v4, p8

    move v7, v1

    move/from16 v10, v28

    move-object/from16 v11, v35

    move-object/from16 v3, v36

    move/from16 v28, v39

    move-object/from16 v12, v40

    move/from16 v1, p2

    goto/16 :goto_2

    :cond_6a
    move-object/from16 v36, v3

    move-object/from16 v40, v12

    move/from16 v44, v20

    move/from16 v43, v25

    move/from16 v3, v26

    move/from16 v38, v27

    move/from16 v39, v28

    move-object/from16 v27, v8

    move-object/from16 v9, v17

    :goto_43
    if-eqz v9, :cond_6b

    .line 265
    const-string v8, "video/dolby-vision"

    iget-object v0, v9, Ls0/a;->a:Ljava/lang/String;

    goto :goto_44

    :cond_6b
    move-object/from16 v0, v18

    move-object/from16 v8, v27

    :goto_44
    if-nez v8, :cond_6c

    return-void

    .line 266
    :cond_6c
    new-instance v1, Landroidx/media3/common/Format$Builder;

    invoke-direct {v1}, Landroidx/media3/common/Format$Builder;-><init>()V

    move/from16 v2, p4

    .line 267
    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->setId(I)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    .line 268
    invoke-virtual {v1, v8}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    .line 269
    invoke-virtual {v1, v0}, Landroidx/media3/common/Format$Builder;->setCodecs(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    .line 270
    invoke-virtual {v0, v5}, Landroidx/media3/common/Format$Builder;->setWidth(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    .line 271
    invoke-virtual {v0, v6}, Landroidx/media3/common/Format$Builder;->setHeight(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    move/from16 v13, v23

    .line 272
    invoke-virtual {v0, v13}, Landroidx/media3/common/Format$Builder;->setDecodedWidth(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    move/from16 v13, v24

    .line 273
    invoke-virtual {v0, v13}, Landroidx/media3/common/Format$Builder;->setDecodedHeight(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    .line 274
    invoke-virtual {v0, v15}, Landroidx/media3/common/Format$Builder;->setPixelWidthHeightRatio(F)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    move/from16 v1, p6

    .line 275
    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setRotationDegrees(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    move-object/from16 v9, v19

    .line 276
    invoke-virtual {v0, v9}, Landroidx/media3/common/Format$Builder;->setProjectionData([B)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    move/from16 v13, v44

    .line 277
    invoke-virtual {v0, v13}, Landroidx/media3/common/Format$Builder;->setStereoMode(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    move-object/from16 v9, v40

    .line 278
    invoke-virtual {v0, v9}, Landroidx/media3/common/Format$Builder;->setInitializationData(Ljava/util/List;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    move/from16 v13, v21

    .line 279
    invoke-virtual {v0, v13}, Landroidx/media3/common/Format$Builder;->setMaxNumReorderSamples(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    move/from16 v13, v22

    .line 280
    invoke-virtual {v0, v13}, Landroidx/media3/common/Format$Builder;->setMaxSubLayers(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    move-object/from16 v1, v36

    .line 281
    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setDrmInitData(Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    move-object/from16 v1, p5

    .line 282
    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setLanguage(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    new-instance v1, Landroidx/media3/common/ColorInfo$Builder;

    invoke-direct {v1}, Landroidx/media3/common/ColorInfo$Builder;-><init>()V

    .line 283
    invoke-virtual {v1, v14}, Landroidx/media3/common/ColorInfo$Builder;->setColorSpace(I)Landroidx/media3/common/ColorInfo$Builder;

    move-result-object v1

    move/from16 v11, v43

    .line 284
    invoke-virtual {v1, v11}, Landroidx/media3/common/ColorInfo$Builder;->setColorRange(I)Landroidx/media3/common/ColorInfo$Builder;

    move-result-object v1

    .line 285
    invoke-virtual {v1, v3}, Landroidx/media3/common/ColorInfo$Builder;->setColorTransfer(I)Landroidx/media3/common/ColorInfo$Builder;

    move-result-object v1

    if-eqz v16, :cond_6d

    .line 286
    invoke-virtual/range {v16 .. v16}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v9

    goto :goto_45

    :cond_6d
    const/4 v9, 0x0

    :goto_45
    invoke-virtual {v1, v9}, Landroidx/media3/common/ColorInfo$Builder;->setHdrStaticInfo([B)Landroidx/media3/common/ColorInfo$Builder;

    move-result-object v1

    move/from16 v8, v38

    .line 287
    invoke-virtual {v1, v8}, Landroidx/media3/common/ColorInfo$Builder;->setLumaBitdepth(I)Landroidx/media3/common/ColorInfo$Builder;

    move-result-object v1

    move/from16 v13, v39

    .line 288
    invoke-virtual {v1, v13}, Landroidx/media3/common/ColorInfo$Builder;->setChromaBitdepth(I)Landroidx/media3/common/ColorInfo$Builder;

    move-result-object v1

    .line 289
    invoke-virtual {v1}, Landroidx/media3/common/ColorInfo$Builder;->build()Landroidx/media3/common/ColorInfo;

    move-result-object v1

    .line 290
    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setColorInfo(Landroidx/media3/common/ColorInfo;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    move-object/from16 v9, v29

    if-eqz v9, :cond_6e

    .line 291
    iget-wide v1, v9, LP0/b;->a:J

    invoke-static {v1, v2}, Lcom/google/common/primitives/a;->saturatedCast(J)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setAverageBitrate(I)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    .line 292
    iget-wide v2, v9, LP0/b;->b:J

    invoke-static {v2, v3}, Lcom/google/common/primitives/a;->saturatedCast(J)I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->setPeakBitrate(I)Landroidx/media3/common/Format$Builder;

    goto :goto_46

    :cond_6e
    move-object/from16 v9, v30

    if-eqz v9, :cond_6f

    .line 293
    iget-wide v1, v9, LP0/d;->c:J

    invoke-static {v1, v2}, Lcom/google/common/primitives/a;->saturatedCast(J)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setAverageBitrate(I)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    .line 294
    iget-wide v2, v9, LP0/d;->d:J

    invoke-static {v2, v3}, Lcom/google/common/primitives/a;->saturatedCast(J)I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->setPeakBitrate(I)Landroidx/media3/common/Format$Builder;

    .line 295
    :cond_6f
    :goto_46
    invoke-virtual {v0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v0

    move-object/from16 v4, p8

    iput-object v0, v4, LP0/i;->b:Landroidx/media3/common/Format;

    return-void
.end method

.method public static maybeSkipRemainingMetaBoxHeaderBytes(Landroidx/media3/common/util/ParsableByteArray;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x4

    .line 6
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const v2, 0x68646c72    # 4.3148E24f

    .line 14
    .line 15
    .line 16
    if-eq v1, v2, :cond_0

    .line 17
    .line 18
    add-int/lit8 v0, v0, 0x4

    .line 19
    .line 20
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public static parseFullBoxFlags(I)I
    .locals 1

    .line 1
    const v0, 0xffffff

    .line 2
    .line 3
    .line 4
    and-int/2addr p0, v0

    .line 5
    return p0
.end method

.method public static parseFullBoxVersion(I)I
    .locals 0

    .line 1
    shr-int/lit8 p0, p0, 0x18

    .line 2
    .line 3
    and-int/lit16 p0, p0, 0xff

    .line 4
    .line 5
    return p0
.end method

.method public static parseMdtaFromMeta(Ls0/d;)Landroidx/media3/common/Metadata;
    .locals 9

    .line 1
    const v0, 0x68646c72    # 4.3148E24f

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Ls0/d;->getLeafBoxOfType(I)Ls0/e;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const v1, 0x6b657973

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v1}, Ls0/d;->getLeafBoxOfType(I)Ls0/e;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const v2, 0x696c7374

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v2}, Ls0/d;->getLeafBoxOfType(I)Ls0/e;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    if-eqz v0, :cond_6

    .line 23
    .line 24
    if-eqz v1, :cond_6

    .line 25
    .line 26
    if-eqz p0, :cond_6

    .line 27
    .line 28
    const/16 v2, 0x10

    .line 29
    .line 30
    iget-object v0, v0, Ls0/e;->b:Landroidx/media3/common/util/ParsableByteArray;

    .line 31
    .line 32
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    const v2, 0x6d647461

    .line 40
    .line 41
    .line 42
    if-eq v0, v2, :cond_0

    .line 43
    .line 44
    goto :goto_3

    .line 45
    :cond_0
    iget-object v0, v1, Ls0/e;->b:Landroidx/media3/common/util/ParsableByteArray;

    .line 46
    .line 47
    const/16 v1, 0xc

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    new-array v2, v1, [Ljava/lang/String;

    .line 57
    .line 58
    const/4 v3, 0x0

    .line 59
    :goto_0
    const/16 v4, 0x8

    .line 60
    .line 61
    if-ge v3, v1, :cond_1

    .line 62
    .line 63
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    const/4 v6, 0x4

    .line 68
    invoke-virtual {v0, v6}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 69
    .line 70
    .line 71
    sub-int/2addr v5, v4

    .line 72
    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    aput-object v4, v2, v3

    .line 77
    .line 78
    add-int/lit8 v3, v3, 0x1

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_1
    iget-object p0, p0, Ls0/e;->b:Landroidx/media3/common/util/ParsableByteArray;

    .line 82
    .line 83
    invoke-virtual {p0, v4}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 84
    .line 85
    .line 86
    new-instance v0, Ljava/util/ArrayList;

    .line 87
    .line 88
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .line 90
    .line 91
    :goto_1
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    if-le v3, v4, :cond_4

    .line 96
    .line 97
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    .line 102
    .line 103
    .line 104
    move-result v5

    .line 105
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    .line 106
    .line 107
    .line 108
    move-result v6

    .line 109
    add-int/lit8 v6, v6, -0x1

    .line 110
    .line 111
    if-ltz v6, :cond_2

    .line 112
    .line 113
    if-ge v6, v1, :cond_2

    .line 114
    .line 115
    aget-object v6, v2, v6

    .line 116
    .line 117
    add-int v7, v3, v5

    .line 118
    .line 119
    invoke-static {p0, v7, v6}, LP0/w;->parseMdtaMetadataEntryFromIlst(Landroidx/media3/common/util/ParsableByteArray;ILjava/lang/String;)Ls0/b;

    .line 120
    .line 121
    .line 122
    move-result-object v6

    .line 123
    if-eqz v6, :cond_3

    .line 124
    .line 125
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_2
    const-string v7, "Skipped metadata with unknown key index: "

    .line 130
    .line 131
    const-string v8, "BoxParsers"

    .line 132
    .line 133
    invoke-static {v6, v7, v8}, LA/i;->v(ILjava/lang/String;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    :cond_3
    :goto_2
    add-int/2addr v3, v5

    .line 137
    invoke-virtual {p0, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 138
    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 142
    .line 143
    .line 144
    move-result p0

    .line 145
    if-eqz p0, :cond_5

    .line 146
    .line 147
    goto :goto_3

    .line 148
    :cond_5
    new-instance p0, Landroidx/media3/common/Metadata;

    .line 149
    .line 150
    invoke-direct {p0, v0}, Landroidx/media3/common/Metadata;-><init>(Ljava/util/List;)V

    .line 151
    .line 152
    .line 153
    return-object p0

    .line 154
    :cond_6
    :goto_3
    const/4 p0, 0x0

    .line 155
    return-object p0
.end method

.method public static parseMvhd(Landroidx/media3/common/util/ParsableByteArray;)Ls0/h;
    .locals 11

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-static {v0}, LP0/n;->parseFullBoxVersion(I)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    .line 21
    .line 22
    .line 23
    move-result-wide v2

    .line 24
    :goto_0
    move-wide v5, v0

    .line 25
    move-wide v7, v2

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readLong()J

    .line 28
    .line 29
    .line 30
    move-result-wide v0

    .line 31
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readLong()J

    .line 32
    .line 33
    .line 34
    move-result-wide v2

    .line 35
    goto :goto_0

    .line 36
    :goto_1
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    .line 37
    .line 38
    .line 39
    move-result-wide v9

    .line 40
    new-instance v4, Ls0/h;

    .line 41
    .line 42
    invoke-direct/range {v4 .. v10}, Ls0/h;-><init>(JJJ)V

    .line 43
    .line 44
    .line 45
    return-object v4
.end method

.method public static parseStbl(LP0/J;Ls0/d;Lv0/U;Z)LP0/M;
    .locals 50
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    const v3, 0x7374737a

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v3}, Ls0/d;->getLeafBoxOfType(I)Ls0/e;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    if-eqz v3, :cond_0

    .line 13
    .line 14
    new-instance v5, LP0/j;

    .line 15
    .line 16
    iget-object v6, v1, LP0/J;->g:Landroidx/media3/common/Format;

    .line 17
    .line 18
    invoke-direct {v5, v3, v6}, LP0/j;-><init>(Ls0/e;Landroidx/media3/common/Format;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const v3, 0x73747a32

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v3}, Ls0/d;->getLeafBoxOfType(I)Ls0/e;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    if-eqz v3, :cond_4d

    .line 30
    .line 31
    new-instance v5, LP0/k;

    .line 32
    .line 33
    invoke-direct {v5, v3}, LP0/k;-><init>(Ls0/e;)V

    .line 34
    .line 35
    .line 36
    :goto_0
    invoke-interface {v5}, LP0/g;->getSampleCount()I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    const/4 v6, 0x0

    .line 41
    if-nez v3, :cond_1

    .line 42
    .line 43
    new-instance v0, LP0/M;

    .line 44
    .line 45
    new-array v2, v6, [J

    .line 46
    .line 47
    new-array v3, v6, [I

    .line 48
    .line 49
    new-array v5, v6, [J

    .line 50
    .line 51
    new-array v4, v6, [I

    .line 52
    .line 53
    new-array v7, v6, [I

    .line 54
    .line 55
    const-wide/16 v9, 0x0

    .line 56
    .line 57
    const/4 v11, 0x0

    .line 58
    move-object v6, v4

    .line 59
    const/4 v4, 0x0

    .line 60
    const/4 v8, 0x0

    .line 61
    invoke-direct/range {v0 .. v11}, LP0/M;-><init>(LP0/J;[J[II[J[I[IZJI)V

    .line 62
    .line 63
    .line 64
    return-object v0

    .line 65
    :cond_1
    iget v7, v1, LP0/J;->b:I

    .line 66
    .line 67
    const/4 v8, 0x2

    .line 68
    const-wide/16 v9, 0x0

    .line 69
    .line 70
    if-ne v7, v8, :cond_2

    .line 71
    .line 72
    iget-wide v11, v1, LP0/J;->f:J

    .line 73
    .line 74
    cmp-long v7, v11, v9

    .line 75
    .line 76
    if-lez v7, :cond_2

    .line 77
    .line 78
    int-to-float v7, v3

    .line 79
    long-to-float v11, v11

    .line 80
    const v12, 0x49742400    # 1000000.0f

    .line 81
    .line 82
    .line 83
    div-float/2addr v11, v12

    .line 84
    div-float/2addr v7, v11

    .line 85
    iget-object v11, v1, LP0/J;->g:Landroidx/media3/common/Format;

    .line 86
    .line 87
    invoke-virtual {v11}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    .line 88
    .line 89
    .line 90
    move-result-object v11

    .line 91
    invoke-virtual {v11, v7}, Landroidx/media3/common/Format$Builder;->setFrameRate(F)Landroidx/media3/common/Format$Builder;

    .line 92
    .line 93
    .line 94
    move-result-object v7

    .line 95
    invoke-virtual {v7}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    .line 96
    .line 97
    .line 98
    move-result-object v7

    .line 99
    invoke-virtual {v1, v7}, LP0/J;->copyWithFormat(Landroidx/media3/common/Format;)LP0/J;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    :cond_2
    const v7, 0x7374636f

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v7}, Ls0/d;->getLeafBoxOfType(I)Ls0/e;

    .line 107
    .line 108
    .line 109
    move-result-object v7

    .line 110
    const/4 v11, 0x1

    .line 111
    if-nez v7, :cond_3

    .line 112
    .line 113
    const v7, 0x636f3634

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, v7}, Ls0/d;->getLeafBoxOfType(I)Ls0/e;

    .line 117
    .line 118
    .line 119
    move-result-object v7

    .line 120
    invoke-static {v7}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v7

    .line 124
    check-cast v7, Ls0/e;

    .line 125
    .line 126
    move v12, v11

    .line 127
    goto :goto_1

    .line 128
    :cond_3
    move v12, v6

    .line 129
    :goto_1
    iget-object v7, v7, Ls0/e;->b:Landroidx/media3/common/util/ParsableByteArray;

    .line 130
    .line 131
    const v13, 0x73747363

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, v13}, Ls0/d;->getLeafBoxOfType(I)Ls0/e;

    .line 135
    .line 136
    .line 137
    move-result-object v13

    .line 138
    invoke-static {v13}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v13

    .line 142
    check-cast v13, Ls0/e;

    .line 143
    .line 144
    iget-object v13, v13, Ls0/e;->b:Landroidx/media3/common/util/ParsableByteArray;

    .line 145
    .line 146
    const v14, 0x73747473

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0, v14}, Ls0/d;->getLeafBoxOfType(I)Ls0/e;

    .line 150
    .line 151
    .line 152
    move-result-object v14

    .line 153
    invoke-static {v14}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v14

    .line 157
    check-cast v14, Ls0/e;

    .line 158
    .line 159
    iget-object v14, v14, Ls0/e;->b:Landroidx/media3/common/util/ParsableByteArray;

    .line 160
    .line 161
    const v15, 0x73747373

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0, v15}, Ls0/d;->getLeafBoxOfType(I)Ls0/e;

    .line 165
    .line 166
    .line 167
    move-result-object v15

    .line 168
    if-eqz v15, :cond_4

    .line 169
    .line 170
    iget-object v15, v15, Ls0/e;->b:Landroidx/media3/common/util/ParsableByteArray;

    .line 171
    .line 172
    goto :goto_2

    .line 173
    :cond_4
    const/4 v15, 0x0

    .line 174
    :goto_2
    const v4, 0x63747473

    .line 175
    .line 176
    .line 177
    invoke-virtual {v0, v4}, Ls0/d;->getLeafBoxOfType(I)Ls0/e;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    if-eqz v0, :cond_5

    .line 182
    .line 183
    iget-object v0, v0, Ls0/e;->b:Landroidx/media3/common/util/ParsableByteArray;

    .line 184
    .line 185
    goto :goto_3

    .line 186
    :cond_5
    const/4 v0, 0x0

    .line 187
    :goto_3
    new-instance v4, LP0/c;

    .line 188
    .line 189
    invoke-direct {v4, v13, v7, v12}, LP0/c;-><init>(Landroidx/media3/common/util/ParsableByteArray;Landroidx/media3/common/util/ParsableByteArray;Z)V

    .line 190
    .line 191
    .line 192
    const/16 v7, 0xc

    .line 193
    .line 194
    invoke-virtual {v14, v7}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v14}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    .line 198
    .line 199
    .line 200
    move-result v12

    .line 201
    sub-int/2addr v12, v11

    .line 202
    invoke-virtual {v14}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    .line 203
    .line 204
    .line 205
    move-result v13

    .line 206
    move-wide/from16 v17, v9

    .line 207
    .line 208
    invoke-virtual {v14}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    .line 209
    .line 210
    .line 211
    move-result v9

    .line 212
    if-eqz v0, :cond_6

    .line 213
    .line 214
    invoke-virtual {v0, v7}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    .line 218
    .line 219
    .line 220
    move-result v10

    .line 221
    goto :goto_4

    .line 222
    :cond_6
    move v10, v6

    .line 223
    :goto_4
    const/4 v8, -0x1

    .line 224
    if-eqz v15, :cond_8

    .line 225
    .line 226
    invoke-virtual {v15, v7}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v15}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    .line 230
    .line 231
    .line 232
    move-result v7

    .line 233
    if-lez v7, :cond_7

    .line 234
    .line 235
    invoke-virtual {v15}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    .line 236
    .line 237
    .line 238
    move-result v16

    .line 239
    add-int/lit8 v16, v16, -0x1

    .line 240
    .line 241
    :goto_5
    move/from16 p0, v11

    .line 242
    .line 243
    goto :goto_6

    .line 244
    :cond_7
    move/from16 v16, v8

    .line 245
    .line 246
    move/from16 p0, v11

    .line 247
    .line 248
    const/4 v15, 0x0

    .line 249
    goto :goto_6

    .line 250
    :cond_8
    move v7, v6

    .line 251
    move/from16 v16, v8

    .line 252
    .line 253
    goto :goto_5

    .line 254
    :goto_6
    invoke-interface {v5}, LP0/g;->getFixedSampleSize()I

    .line 255
    .line 256
    .line 257
    move-result v11

    .line 258
    iget-object v6, v1, LP0/J;->g:Landroidx/media3/common/Format;

    .line 259
    .line 260
    iget-object v6, v6, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 261
    .line 262
    if-eq v11, v8, :cond_a

    .line 263
    .line 264
    const-string v8, "audio/raw"

    .line 265
    .line 266
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    move-result v8

    .line 270
    if-nez v8, :cond_9

    .line 271
    .line 272
    const-string v8, "audio/g711-mlaw"

    .line 273
    .line 274
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 275
    .line 276
    .line 277
    move-result v8

    .line 278
    if-nez v8, :cond_9

    .line 279
    .line 280
    const-string v8, "audio/g711-alaw"

    .line 281
    .line 282
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 283
    .line 284
    .line 285
    move-result v6

    .line 286
    if-eqz v6, :cond_a

    .line 287
    .line 288
    :cond_9
    if-nez v12, :cond_a

    .line 289
    .line 290
    if-nez v10, :cond_a

    .line 291
    .line 292
    if-nez v7, :cond_a

    .line 293
    .line 294
    move/from16 v6, p0

    .line 295
    .line 296
    goto :goto_7

    .line 297
    :cond_a
    const/4 v6, 0x0

    .line 298
    :goto_7
    new-instance v8, Ljava/util/ArrayList;

    .line 299
    .line 300
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 301
    .line 302
    .line 303
    if-nez v15, :cond_b

    .line 304
    .line 305
    move/from16 v29, p0

    .line 306
    .line 307
    goto :goto_8

    .line 308
    :cond_b
    const/16 v29, 0x0

    .line 309
    .line 310
    :goto_8
    if-eqz v6, :cond_11

    .line 311
    .line 312
    iget v0, v4, LP0/c;->a:I

    .line 313
    .line 314
    new-array v3, v0, [J

    .line 315
    .line 316
    new-array v0, v0, [I

    .line 317
    .line 318
    :goto_9
    invoke-virtual {v4}, LP0/c;->moveNext()Z

    .line 319
    .line 320
    .line 321
    move-result v5

    .line 322
    if-eqz v5, :cond_c

    .line 323
    .line 324
    iget v5, v4, LP0/c;->b:I

    .line 325
    .line 326
    iget-wide v6, v4, LP0/c;->d:J

    .line 327
    .line 328
    aput-wide v6, v3, v5

    .line 329
    .line 330
    iget v6, v4, LP0/c;->c:I

    .line 331
    .line 332
    aput v6, v0, v5

    .line 333
    .line 334
    goto :goto_9

    .line 335
    :cond_c
    int-to-long v4, v9

    .line 336
    invoke-static {v11, v3, v0, v4, v5}, LP0/q;->rechunk(I[J[IJ)LP0/p;

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    const/4 v6, 0x0

    .line 341
    if-eqz p3, :cond_d

    .line 342
    .line 343
    new-array v3, v6, [J

    .line 344
    .line 345
    goto :goto_a

    .line 346
    :cond_d
    iget-object v3, v0, LP0/p;->a:[J

    .line 347
    .line 348
    :goto_a
    if-eqz p3, :cond_e

    .line 349
    .line 350
    new-array v4, v6, [I

    .line 351
    .line 352
    goto :goto_b

    .line 353
    :cond_e
    iget-object v4, v0, LP0/p;->b:[I

    .line 354
    .line 355
    :goto_b
    if-eqz p3, :cond_f

    .line 356
    .line 357
    new-array v5, v6, [J

    .line 358
    .line 359
    goto :goto_c

    .line 360
    :cond_f
    iget-object v5, v0, LP0/p;->d:[J

    .line 361
    .line 362
    :goto_c
    if-eqz p3, :cond_10

    .line 363
    .line 364
    new-array v7, v6, [I

    .line 365
    .line 366
    goto :goto_d

    .line 367
    :cond_10
    iget-object v7, v0, LP0/p;->e:[I

    .line 368
    .line 369
    :goto_d
    iget v9, v0, LP0/p;->c:I

    .line 370
    .line 371
    iget-object v10, v0, LP0/p;->a:[J

    .line 372
    .line 373
    array-length v10, v10

    .line 374
    iget-wide v11, v0, LP0/p;->f:J

    .line 375
    .line 376
    iget-wide v13, v0, LP0/p;->g:J

    .line 377
    .line 378
    move-object/from16 v23, v3

    .line 379
    .line 380
    move-object/from16 v27, v8

    .line 381
    .line 382
    move/from16 v25, v9

    .line 383
    .line 384
    move/from16 v32, v10

    .line 385
    .line 386
    move-wide v8, v11

    .line 387
    :goto_e
    move-object/from16 v24, v4

    .line 388
    .line 389
    goto/16 :goto_1f

    .line 390
    .line 391
    :cond_11
    const/4 v6, 0x0

    .line 392
    if-eqz p3, :cond_12

    .line 393
    .line 394
    new-array v11, v6, [J

    .line 395
    .line 396
    goto :goto_f

    .line 397
    :cond_12
    new-array v11, v3, [J

    .line 398
    .line 399
    :goto_f
    move-object/from16 p1, v0

    .line 400
    .line 401
    if-eqz p3, :cond_13

    .line 402
    .line 403
    new-array v0, v6, [I

    .line 404
    .line 405
    goto :goto_10

    .line 406
    :cond_13
    new-array v0, v3, [I

    .line 407
    .line 408
    :goto_10
    move-object/from16 v21, v5

    .line 409
    .line 410
    if-eqz p3, :cond_14

    .line 411
    .line 412
    new-array v5, v6, [J

    .line 413
    .line 414
    goto :goto_11

    .line 415
    :cond_14
    new-array v5, v3, [J

    .line 416
    .line 417
    :goto_11
    move/from16 v22, v7

    .line 418
    .line 419
    if-eqz p3, :cond_15

    .line 420
    .line 421
    new-array v7, v6, [I

    .line 422
    .line 423
    goto :goto_12

    .line 424
    :cond_15
    new-array v7, v3, [I

    .line 425
    .line 426
    :goto_12
    move/from16 v2, v16

    .line 427
    .line 428
    move/from16 v16, v10

    .line 429
    .line 430
    move v10, v2

    .line 431
    move/from16 v33, v12

    .line 432
    .line 433
    move-object/from16 v28, v14

    .line 434
    .line 435
    move-object/from16 v31, v15

    .line 436
    .line 437
    move-wide/from16 v24, v17

    .line 438
    .line 439
    move-wide/from16 v26, v24

    .line 440
    .line 441
    move/from16 v6, v22

    .line 442
    .line 443
    const/4 v2, 0x0

    .line 444
    const/4 v14, 0x0

    .line 445
    const/4 v15, 0x0

    .line 446
    const/16 v30, 0x0

    .line 447
    .line 448
    const/16 v32, 0x0

    .line 449
    .line 450
    move-wide/from16 v22, v26

    .line 451
    .line 452
    :goto_13
    const-string v12, "BoxParsers"

    .line 453
    .line 454
    if-ge v14, v3, :cond_21

    .line 455
    .line 456
    move-wide/from16 v34, v26

    .line 457
    .line 458
    move/from16 v26, p0

    .line 459
    .line 460
    :goto_14
    if-nez v30, :cond_16

    .line 461
    .line 462
    invoke-virtual {v4}, LP0/c;->moveNext()Z

    .line 463
    .line 464
    .line 465
    move-result v26

    .line 466
    if-eqz v26, :cond_16

    .line 467
    .line 468
    move-object/from16 v27, v8

    .line 469
    .line 470
    move/from16 v36, v9

    .line 471
    .line 472
    iget-wide v8, v4, LP0/c;->d:J

    .line 473
    .line 474
    move/from16 v37, v3

    .line 475
    .line 476
    iget v3, v4, LP0/c;->c:I

    .line 477
    .line 478
    move/from16 v30, v3

    .line 479
    .line 480
    move-wide/from16 v34, v8

    .line 481
    .line 482
    move-object/from16 v8, v27

    .line 483
    .line 484
    move/from16 v9, v36

    .line 485
    .line 486
    move/from16 v3, v37

    .line 487
    .line 488
    goto :goto_14

    .line 489
    :cond_16
    move/from16 v37, v3

    .line 490
    .line 491
    move-object/from16 v27, v8

    .line 492
    .line 493
    move/from16 v36, v9

    .line 494
    .line 495
    if-nez v26, :cond_18

    .line 496
    .line 497
    const-string v3, "Unexpected end of chunk data"

    .line 498
    .line 499
    invoke-static {v12, v3}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    .line 501
    .line 502
    if-nez p3, :cond_17

    .line 503
    .line 504
    invoke-static {v11, v14}, Ljava/util/Arrays;->copyOf([JI)[J

    .line 505
    .line 506
    .line 507
    move-result-object v3

    .line 508
    invoke-static {v0, v14}, Ljava/util/Arrays;->copyOf([II)[I

    .line 509
    .line 510
    .line 511
    move-result-object v0

    .line 512
    invoke-static {v5, v14}, Ljava/util/Arrays;->copyOf([JI)[J

    .line 513
    .line 514
    .line 515
    move-result-object v4

    .line 516
    invoke-static {v7, v14}, Ljava/util/Arrays;->copyOf([II)[I

    .line 517
    .line 518
    .line 519
    move-result-object v5

    .line 520
    move-object v11, v3

    .line 521
    move-object v7, v5

    .line 522
    move v3, v14

    .line 523
    move-object v5, v4

    .line 524
    :goto_15
    move-object v4, v0

    .line 525
    :goto_16
    move/from16 v0, v30

    .line 526
    .line 527
    goto/16 :goto_1b

    .line 528
    .line 529
    :cond_17
    move-object v4, v0

    .line 530
    move v3, v14

    .line 531
    goto :goto_16

    .line 532
    :cond_18
    if-eqz p1, :cond_1a

    .line 533
    .line 534
    :goto_17
    if-nez v32, :cond_19

    .line 535
    .line 536
    if-lez v16, :cond_19

    .line 537
    .line 538
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    .line 539
    .line 540
    .line 541
    move-result v32

    .line 542
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    .line 543
    .line 544
    .line 545
    move-result v15

    .line 546
    add-int/lit8 v16, v16, -0x1

    .line 547
    .line 548
    goto :goto_17

    .line 549
    :cond_19
    add-int/lit8 v32, v32, -0x1

    .line 550
    .line 551
    :cond_1a
    invoke-interface/range {v21 .. v21}, LP0/g;->readNextSampleSize()I

    .line 552
    .line 553
    .line 554
    move-result v3

    .line 555
    int-to-long v8, v3

    .line 556
    add-long v24, v24, v8

    .line 557
    .line 558
    if-le v3, v2, :cond_1b

    .line 559
    .line 560
    move v2, v3

    .line 561
    :cond_1b
    if-nez p3, :cond_1e

    .line 562
    .line 563
    aput-wide v34, v11, v14

    .line 564
    .line 565
    aput v3, v0, v14

    .line 566
    .line 567
    move v12, v2

    .line 568
    int-to-long v2, v15

    .line 569
    add-long v2, v22, v2

    .line 570
    .line 571
    aput-wide v2, v5, v14

    .line 572
    .line 573
    if-nez v31, :cond_1c

    .line 574
    .line 575
    move/from16 v2, p0

    .line 576
    .line 577
    goto :goto_18

    .line 578
    :cond_1c
    const/4 v2, 0x0

    .line 579
    :goto_18
    aput v2, v7, v14

    .line 580
    .line 581
    if-ne v14, v10, :cond_1d

    .line 582
    .line 583
    aput p0, v7, v14

    .line 584
    .line 585
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 586
    .line 587
    .line 588
    move-result-object v2

    .line 589
    move-object/from16 v3, v27

    .line 590
    .line 591
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 592
    .line 593
    .line 594
    goto :goto_1a

    .line 595
    :cond_1d
    :goto_19
    move-object/from16 v3, v27

    .line 596
    .line 597
    goto :goto_1a

    .line 598
    :cond_1e
    move v12, v2

    .line 599
    goto :goto_19

    .line 600
    :goto_1a
    if-eqz v31, :cond_1f

    .line 601
    .line 602
    if-ne v14, v10, :cond_1f

    .line 603
    .line 604
    add-int/lit8 v6, v6, -0x1

    .line 605
    .line 606
    if-lez v6, :cond_1f

    .line 607
    .line 608
    invoke-static/range {v31 .. v31}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    .line 610
    .line 611
    move-result-object v2

    .line 612
    check-cast v2, Landroidx/media3/common/util/ParsableByteArray;

    .line 613
    .line 614
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    .line 615
    .line 616
    .line 617
    move-result v2

    .line 618
    add-int/lit8 v2, v2, -0x1

    .line 619
    .line 620
    move v10, v2

    .line 621
    :cond_1f
    move-object/from16 v27, v3

    .line 622
    .line 623
    move-object/from16 v26, v4

    .line 624
    .line 625
    move/from16 v2, v36

    .line 626
    .line 627
    int-to-long v3, v2

    .line 628
    add-long v22, v22, v3

    .line 629
    .line 630
    add-int/lit8 v13, v13, -0x1

    .line 631
    .line 632
    if-nez v13, :cond_20

    .line 633
    .line 634
    if-lez v33, :cond_20

    .line 635
    .line 636
    invoke-virtual/range {v28 .. v28}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    .line 637
    .line 638
    .line 639
    move-result v2

    .line 640
    invoke-virtual/range {v28 .. v28}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    .line 641
    .line 642
    .line 643
    move-result v3

    .line 644
    add-int/lit8 v33, v33, -0x1

    .line 645
    .line 646
    move v13, v2

    .line 647
    move v2, v3

    .line 648
    :cond_20
    add-long v3, v34, v8

    .line 649
    .line 650
    add-int/lit8 v30, v30, -0x1

    .line 651
    .line 652
    add-int/lit8 v14, v14, 0x1

    .line 653
    .line 654
    move v9, v2

    .line 655
    move v2, v12

    .line 656
    move-object/from16 v8, v27

    .line 657
    .line 658
    move-wide/from16 v48, v3

    .line 659
    .line 660
    move-object/from16 v4, v26

    .line 661
    .line 662
    move-wide/from16 v26, v48

    .line 663
    .line 664
    move/from16 v3, v37

    .line 665
    .line 666
    goto/16 :goto_13

    .line 667
    .line 668
    :cond_21
    move/from16 v37, v3

    .line 669
    .line 670
    move-object/from16 v27, v8

    .line 671
    .line 672
    goto/16 :goto_15

    .line 673
    .line 674
    :goto_1b
    int-to-long v8, v15

    .line 675
    add-long v8, v22, v8

    .line 676
    .line 677
    if-eqz p1, :cond_23

    .line 678
    .line 679
    move/from16 v10, v16

    .line 680
    .line 681
    :goto_1c
    if-lez v10, :cond_23

    .line 682
    .line 683
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    .line 684
    .line 685
    .line 686
    move-result v14

    .line 687
    if-eqz v14, :cond_22

    .line 688
    .line 689
    const/4 v10, 0x0

    .line 690
    goto :goto_1d

    .line 691
    :cond_22
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    .line 692
    .line 693
    .line 694
    add-int/lit8 v10, v10, -0x1

    .line 695
    .line 696
    goto :goto_1c

    .line 697
    :cond_23
    move/from16 v10, p0

    .line 698
    .line 699
    :goto_1d
    if-nez v6, :cond_24

    .line 700
    .line 701
    if-nez v13, :cond_24

    .line 702
    .line 703
    if-nez v0, :cond_24

    .line 704
    .line 705
    if-nez v33, :cond_24

    .line 706
    .line 707
    if-nez v32, :cond_24

    .line 708
    .line 709
    if-nez v10, :cond_26

    .line 710
    .line 711
    :cond_24
    new-instance v14, Ljava/lang/StringBuilder;

    .line 712
    .line 713
    const-string v15, "Inconsistent stbl box for track "

    .line 714
    .line 715
    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 716
    .line 717
    .line 718
    iget v15, v1, LP0/J;->a:I

    .line 719
    .line 720
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 721
    .line 722
    .line 723
    const-string v15, ": remainingSynchronizationSamples "

    .line 724
    .line 725
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 726
    .line 727
    .line 728
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 729
    .line 730
    .line 731
    const-string v6, ", remainingSamplesAtTimestampDelta "

    .line 732
    .line 733
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 734
    .line 735
    .line 736
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 737
    .line 738
    .line 739
    const-string v6, ", remainingSamplesInChunk "

    .line 740
    .line 741
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 742
    .line 743
    .line 744
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 745
    .line 746
    .line 747
    const-string v0, ", remainingTimestampDeltaChanges "

    .line 748
    .line 749
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 750
    .line 751
    .line 752
    move/from16 v0, v33

    .line 753
    .line 754
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 755
    .line 756
    .line 757
    const-string v0, ", remainingSamplesAtTimestampOffset "

    .line 758
    .line 759
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 760
    .line 761
    .line 762
    move/from16 v0, v32

    .line 763
    .line 764
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 765
    .line 766
    .line 767
    if-nez v10, :cond_25

    .line 768
    .line 769
    const-string v0, ", ctts invalid"

    .line 770
    .line 771
    goto :goto_1e

    .line 772
    :cond_25
    const-string v0, ""

    .line 773
    .line 774
    :goto_1e
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 775
    .line 776
    .line 777
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 778
    .line 779
    .line 780
    move-result-object v0

    .line 781
    invoke-static {v12, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    .line 783
    .line 784
    :cond_26
    move/from16 v32, v3

    .line 785
    .line 786
    move-object/from16 v23, v11

    .line 787
    .line 788
    move-wide/from16 v13, v24

    .line 789
    .line 790
    move/from16 v25, v2

    .line 791
    .line 792
    goto/16 :goto_e

    .line 793
    .line 794
    :goto_1f
    iget-wide v2, v1, LP0/J;->f:J

    .line 795
    .line 796
    cmp-long v0, v2, v17

    .line 797
    .line 798
    const-wide/32 v15, 0x7fffffff

    .line 799
    .line 800
    .line 801
    if-lez v0, :cond_27

    .line 802
    .line 803
    const-wide/16 v10, 0x8

    .line 804
    .line 805
    mul-long v33, v13, v10

    .line 806
    .line 807
    const-wide/32 v35, 0xf4240

    .line 808
    .line 809
    .line 810
    sget-object v39, Ljava/math/RoundingMode;->HALF_DOWN:Ljava/math/RoundingMode;

    .line 811
    .line 812
    move-wide/from16 v37, v2

    .line 813
    .line 814
    invoke-static/range {v33 .. v39}, Landroidx/media3/common/util/Util;->scaleLargeValue(JJJLjava/math/RoundingMode;)J

    .line 815
    .line 816
    .line 817
    move-result-wide v2

    .line 818
    cmp-long v0, v2, v17

    .line 819
    .line 820
    if-lez v0, :cond_27

    .line 821
    .line 822
    cmp-long v0, v2, v15

    .line 823
    .line 824
    if-gez v0, :cond_27

    .line 825
    .line 826
    iget-object v0, v1, LP0/J;->g:Landroidx/media3/common/Format;

    .line 827
    .line 828
    invoke-virtual {v0}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    .line 829
    .line 830
    .line 831
    move-result-object v0

    .line 832
    long-to-int v2, v2

    .line 833
    invoke-virtual {v0, v2}, Landroidx/media3/common/Format$Builder;->setAverageBitrate(I)Landroidx/media3/common/Format$Builder;

    .line 834
    .line 835
    .line 836
    move-result-object v0

    .line 837
    invoke-virtual {v0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    .line 838
    .line 839
    .line 840
    move-result-object v0

    .line 841
    invoke-virtual {v1, v0}, LP0/J;->copyWithFormat(Landroidx/media3/common/Format;)LP0/J;

    .line 842
    .line 843
    .line 844
    move-result-object v1

    .line 845
    :cond_27
    iget-wide v12, v1, LP0/J;->c:J

    .line 846
    .line 847
    const-wide/32 v10, 0xf4240

    .line 848
    .line 849
    .line 850
    invoke-static/range {v8 .. v13}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    .line 851
    .line 852
    .line 853
    move-result-wide v30

    .line 854
    invoke-static/range {v27 .. v27}, Lcom/google/common/primitives/a;->toArray(Ljava/util/Collection;)[I

    .line 855
    .line 856
    .line 857
    move-result-object v28

    .line 858
    const-wide/32 v2, 0xf4240

    .line 859
    .line 860
    .line 861
    iget-wide v10, v1, LP0/J;->c:J

    .line 862
    .line 863
    iget-object v0, v1, LP0/J;->i:[J

    .line 864
    .line 865
    if-nez v0, :cond_29

    .line 866
    .line 867
    if-nez p3, :cond_28

    .line 868
    .line 869
    invoke-static {v5, v2, v3, v10, v11}, Landroidx/media3/common/util/Util;->scaleLargeTimestampsInPlace([JJJ)V

    .line 870
    .line 871
    .line 872
    :cond_28
    new-instance v21, LP0/M;

    .line 873
    .line 874
    move-object/from16 v22, v1

    .line 875
    .line 876
    move-object/from16 v26, v5

    .line 877
    .line 878
    move-object/from16 v27, v7

    .line 879
    .line 880
    invoke-direct/range {v21 .. v32}, LP0/M;-><init>(LP0/J;[J[II[J[I[IZJI)V

    .line 881
    .line 882
    .line 883
    return-object v21

    .line 884
    :cond_29
    move-object v4, v1

    .line 885
    move-object/from16 v26, v5

    .line 886
    .line 887
    move-object/from16 v1, v27

    .line 888
    .line 889
    move-object/from16 v27, v7

    .line 890
    .line 891
    const-wide/16 v5, -0x1

    .line 892
    .line 893
    iget-object v7, v4, LP0/J;->j:[J

    .line 894
    .line 895
    if-eqz p3, :cond_2d

    .line 896
    .line 897
    invoke-static {v7}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 898
    .line 899
    .line 900
    move-result-object v1

    .line 901
    check-cast v1, [J

    .line 902
    .line 903
    array-length v2, v0

    .line 904
    move/from16 v3, p0

    .line 905
    .line 906
    if-ne v2, v3, :cond_2a

    .line 907
    .line 908
    const/16 v20, 0x0

    .line 909
    .line 910
    aget-wide v2, v0, v20

    .line 911
    .line 912
    cmp-long v2, v2, v17

    .line 913
    .line 914
    if-nez v2, :cond_2a

    .line 915
    .line 916
    aget-wide v0, v1, v20

    .line 917
    .line 918
    sub-long v10, v8, v0

    .line 919
    .line 920
    const-wide/32 v12, 0xf4240

    .line 921
    .line 922
    .line 923
    iget-wide v14, v4, LP0/J;->c:J

    .line 924
    .line 925
    invoke-static/range {v10 .. v15}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    .line 926
    .line 927
    .line 928
    move-result-wide v0

    .line 929
    :goto_20
    move-wide/from16 v30, v0

    .line 930
    .line 931
    goto :goto_22

    .line 932
    :cond_2a
    move-wide/from16 v7, v17

    .line 933
    .line 934
    const/4 v2, 0x0

    .line 935
    :goto_21
    array-length v3, v0

    .line 936
    if-ge v2, v3, :cond_2c

    .line 937
    .line 938
    aget-wide v9, v1, v2

    .line 939
    .line 940
    cmp-long v3, v9, v5

    .line 941
    .line 942
    if-eqz v3, :cond_2b

    .line 943
    .line 944
    aget-wide v9, v0, v2

    .line 945
    .line 946
    add-long/2addr v7, v9

    .line 947
    :cond_2b
    add-int/lit8 v2, v2, 0x1

    .line 948
    .line 949
    goto :goto_21

    .line 950
    :cond_2c
    const-wide/32 v9, 0xf4240

    .line 951
    .line 952
    .line 953
    iget-wide v11, v4, LP0/J;->d:J

    .line 954
    .line 955
    invoke-static/range {v7 .. v12}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    .line 956
    .line 957
    .line 958
    move-result-wide v0

    .line 959
    goto :goto_20

    .line 960
    :goto_22
    new-instance v21, LP0/M;

    .line 961
    .line 962
    move-object/from16 v22, v4

    .line 963
    .line 964
    invoke-direct/range {v21 .. v32}, LP0/M;-><init>(LP0/J;[J[II[J[I[IZJI)V

    .line 965
    .line 966
    .line 967
    return-object v21

    .line 968
    :cond_2d
    move-object v12, v4

    .line 969
    move-object/from16 v4, v26

    .line 970
    .line 971
    array-length v13, v0

    .line 972
    iget v14, v12, LP0/J;->b:I

    .line 973
    .line 974
    move-wide/from16 v21, v5

    .line 975
    .line 976
    iget-object v5, v12, LP0/J;->g:Landroidx/media3/common/Format;

    .line 977
    .line 978
    const/4 v6, 0x1

    .line 979
    if-ne v13, v6, :cond_31

    .line 980
    .line 981
    if-ne v14, v6, :cond_31

    .line 982
    .line 983
    array-length v6, v4

    .line 984
    const/4 v13, 0x2

    .line 985
    if-lt v6, v13, :cond_31

    .line 986
    .line 987
    invoke-static {v7}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 988
    .line 989
    .line 990
    move-result-object v6

    .line 991
    check-cast v6, [J

    .line 992
    .line 993
    const/4 v13, 0x0

    .line 994
    aget-wide v30, v6, v13

    .line 995
    .line 996
    aget-wide v33, v0, v13

    .line 997
    .line 998
    iget-wide v2, v12, LP0/J;->c:J

    .line 999
    .line 1000
    move v6, v14

    .line 1001
    iget-wide v13, v12, LP0/J;->d:J

    .line 1002
    .line 1003
    move-wide/from16 v35, v2

    .line 1004
    .line 1005
    move-wide/from16 v37, v13

    .line 1006
    .line 1007
    invoke-static/range {v33 .. v38}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    .line 1008
    .line 1009
    .line 1010
    move-result-wide v2

    .line 1011
    add-long v2, v30, v2

    .line 1012
    .line 1013
    array-length v13, v4

    .line 1014
    const/4 v14, 0x1

    .line 1015
    sub-int/2addr v13, v14

    .line 1016
    const/4 v14, 0x4

    .line 1017
    move-wide/from16 v33, v15

    .line 1018
    .line 1019
    const/4 v15, 0x0

    .line 1020
    invoke-static {v14, v15, v13}, Landroidx/media3/common/util/Util;->constrainValue(III)I

    .line 1021
    .line 1022
    .line 1023
    move-result v16

    .line 1024
    move/from16 p1, v14

    .line 1025
    .line 1026
    array-length v14, v4

    .line 1027
    add-int/lit8 v14, v14, -0x4

    .line 1028
    .line 1029
    invoke-static {v14, v15, v13}, Landroidx/media3/common/util/Util;->constrainValue(III)I

    .line 1030
    .line 1031
    .line 1032
    move-result v13

    .line 1033
    aget-wide v35, v4, v15

    .line 1034
    .line 1035
    cmp-long v14, v35, v30

    .line 1036
    .line 1037
    if-gtz v14, :cond_2e

    .line 1038
    .line 1039
    aget-wide v14, v4, v16

    .line 1040
    .line 1041
    cmp-long v14, v30, v14

    .line 1042
    .line 1043
    if-gez v14, :cond_2e

    .line 1044
    .line 1045
    aget-wide v13, v4, v13

    .line 1046
    .line 1047
    cmp-long v13, v13, v2

    .line 1048
    .line 1049
    if-gez v13, :cond_2e

    .line 1050
    .line 1051
    const-wide/16 v13, 0x2

    .line 1052
    .line 1053
    add-long/2addr v13, v8

    .line 1054
    cmp-long v13, v2, v13

    .line 1055
    .line 1056
    if-gtz v13, :cond_2e

    .line 1057
    .line 1058
    const/4 v13, 0x1

    .line 1059
    goto :goto_23

    .line 1060
    :cond_2e
    const/4 v13, 0x0

    .line 1061
    :goto_23
    if-eqz v13, :cond_30

    .line 1062
    .line 1063
    sub-long v2, v8, v2

    .line 1064
    .line 1065
    move-wide/from16 v13, v17

    .line 1066
    .line 1067
    invoke-static {v13, v14, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 1068
    .line 1069
    .line 1070
    move-result-wide v40

    .line 1071
    const/16 v20, 0x0

    .line 1072
    .line 1073
    aget-wide v2, v4, v20

    .line 1074
    .line 1075
    sub-long v42, v30, v2

    .line 1076
    .line 1077
    iget v2, v5, Landroidx/media3/common/Format;->sampleRate:I

    .line 1078
    .line 1079
    int-to-long v2, v2

    .line 1080
    iget-wide v13, v12, LP0/J;->c:J

    .line 1081
    .line 1082
    move-wide/from16 v44, v2

    .line 1083
    .line 1084
    move-wide/from16 v46, v13

    .line 1085
    .line 1086
    invoke-static/range {v42 .. v47}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    .line 1087
    .line 1088
    .line 1089
    move-result-wide v2

    .line 1090
    iget v13, v5, Landroidx/media3/common/Format;->sampleRate:I

    .line 1091
    .line 1092
    int-to-long v13, v13

    .line 1093
    move/from16 p1, v6

    .line 1094
    .line 1095
    move-object v15, v7

    .line 1096
    iget-wide v6, v12, LP0/J;->c:J

    .line 1097
    .line 1098
    move-wide/from16 v44, v6

    .line 1099
    .line 1100
    move-wide/from16 v42, v13

    .line 1101
    .line 1102
    invoke-static/range {v40 .. v45}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    .line 1103
    .line 1104
    .line 1105
    move-result-wide v6

    .line 1106
    cmp-long v13, v2, v17

    .line 1107
    .line 1108
    if-nez v13, :cond_2f

    .line 1109
    .line 1110
    cmp-long v13, v6, v17

    .line 1111
    .line 1112
    if-eqz v13, :cond_32

    .line 1113
    .line 1114
    :cond_2f
    cmp-long v13, v2, v33

    .line 1115
    .line 1116
    if-gtz v13, :cond_32

    .line 1117
    .line 1118
    cmp-long v13, v6, v33

    .line 1119
    .line 1120
    if-gtz v13, :cond_32

    .line 1121
    .line 1122
    long-to-int v1, v2

    .line 1123
    move-object/from16 v2, p2

    .line 1124
    .line 1125
    iput v1, v2, Lv0/U;->a:I

    .line 1126
    .line 1127
    long-to-int v1, v6

    .line 1128
    iput v1, v2, Lv0/U;->b:I

    .line 1129
    .line 1130
    const-wide/32 v1, 0xf4240

    .line 1131
    .line 1132
    .line 1133
    invoke-static {v4, v1, v2, v10, v11}, Landroidx/media3/common/util/Util;->scaleLargeTimestampsInPlace([JJJ)V

    .line 1134
    .line 1135
    .line 1136
    const/16 v20, 0x0

    .line 1137
    .line 1138
    aget-wide v5, v0, v20

    .line 1139
    .line 1140
    const-wide/32 v7, 0xf4240

    .line 1141
    .line 1142
    .line 1143
    iget-wide v9, v12, LP0/J;->d:J

    .line 1144
    .line 1145
    invoke-static/range {v5 .. v10}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    .line 1146
    .line 1147
    .line 1148
    move-result-wide v30

    .line 1149
    new-instance v21, LP0/M;

    .line 1150
    .line 1151
    move-object/from16 v26, v4

    .line 1152
    .line 1153
    move-object/from16 v22, v12

    .line 1154
    .line 1155
    invoke-direct/range {v21 .. v32}, LP0/M;-><init>(LP0/J;[J[II[J[I[IZJI)V

    .line 1156
    .line 1157
    .line 1158
    return-object v21

    .line 1159
    :cond_30
    move/from16 p1, v6

    .line 1160
    .line 1161
    move-object v15, v7

    .line 1162
    goto :goto_24

    .line 1163
    :cond_31
    move-object v15, v7

    .line 1164
    move/from16 p1, v14

    .line 1165
    .line 1166
    :cond_32
    :goto_24
    array-length v2, v0

    .line 1167
    const/4 v14, 0x1

    .line 1168
    if-ne v2, v14, :cond_35

    .line 1169
    .line 1170
    const/16 v20, 0x0

    .line 1171
    .line 1172
    aget-wide v2, v0, v20

    .line 1173
    .line 1174
    const-wide/16 v17, 0x0

    .line 1175
    .line 1176
    cmp-long v2, v2, v17

    .line 1177
    .line 1178
    if-nez v2, :cond_34

    .line 1179
    .line 1180
    invoke-static {v15}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1181
    .line 1182
    .line 1183
    move-result-object v0

    .line 1184
    check-cast v0, [J

    .line 1185
    .line 1186
    aget-wide v1, v0, v20

    .line 1187
    .line 1188
    const/4 v6, 0x0

    .line 1189
    :goto_25
    array-length v0, v4

    .line 1190
    if-ge v6, v0, :cond_33

    .line 1191
    .line 1192
    aget-wide v10, v4, v6

    .line 1193
    .line 1194
    sub-long v13, v10, v1

    .line 1195
    .line 1196
    const-wide/32 v15, 0xf4240

    .line 1197
    .line 1198
    .line 1199
    iget-wide v10, v12, LP0/J;->c:J

    .line 1200
    .line 1201
    move-wide/from16 v17, v10

    .line 1202
    .line 1203
    invoke-static/range {v13 .. v18}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    .line 1204
    .line 1205
    .line 1206
    move-result-wide v10

    .line 1207
    aput-wide v10, v4, v6

    .line 1208
    .line 1209
    add-int/lit8 v6, v6, 0x1

    .line 1210
    .line 1211
    goto :goto_25

    .line 1212
    :cond_33
    sub-long v13, v8, v1

    .line 1213
    .line 1214
    const-wide/32 v15, 0xf4240

    .line 1215
    .line 1216
    .line 1217
    iget-wide v0, v12, LP0/J;->c:J

    .line 1218
    .line 1219
    move-wide/from16 v17, v0

    .line 1220
    .line 1221
    invoke-static/range {v13 .. v18}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    .line 1222
    .line 1223
    .line 1224
    move-result-wide v30

    .line 1225
    new-instance v21, LP0/M;

    .line 1226
    .line 1227
    move-object/from16 v26, v4

    .line 1228
    .line 1229
    move-object/from16 v22, v12

    .line 1230
    .line 1231
    invoke-direct/range {v21 .. v32}, LP0/M;-><init>(LP0/J;[J[II[J[I[IZJI)V

    .line 1232
    .line 1233
    .line 1234
    return-object v21

    .line 1235
    :cond_34
    const/4 v14, 0x1

    .line 1236
    :cond_35
    move-object v2, v4

    .line 1237
    move-object/from16 v3, v23

    .line 1238
    .line 1239
    move-object/from16 v4, v24

    .line 1240
    .line 1241
    move-object/from16 v7, v27

    .line 1242
    .line 1243
    move/from16 v10, v32

    .line 1244
    .line 1245
    move/from16 v6, p1

    .line 1246
    .line 1247
    if-ne v6, v14, :cond_36

    .line 1248
    .line 1249
    const/4 v6, 0x1

    .line 1250
    goto :goto_26

    .line 1251
    :cond_36
    const/4 v6, 0x0

    .line 1252
    :goto_26
    array-length v8, v0

    .line 1253
    new-array v8, v8, [I

    .line 1254
    .line 1255
    array-length v9, v0

    .line 1256
    new-array v9, v9, [I

    .line 1257
    .line 1258
    invoke-static {v15}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1259
    .line 1260
    .line 1261
    move-result-object v11

    .line 1262
    check-cast v11, [J

    .line 1263
    .line 1264
    move-object/from16 v27, v1

    .line 1265
    .line 1266
    move-object/from16 v16, v8

    .line 1267
    .line 1268
    move-object/from16 v19, v9

    .line 1269
    .line 1270
    const/4 v1, 0x0

    .line 1271
    const/4 v8, 0x0

    .line 1272
    const/4 v13, 0x0

    .line 1273
    const/4 v14, 0x0

    .line 1274
    :goto_27
    array-length v9, v0

    .line 1275
    if-ge v13, v9, :cond_3f

    .line 1276
    .line 1277
    move v9, v13

    .line 1278
    move/from16 p1, v14

    .line 1279
    .line 1280
    aget-wide v13, v11, v9

    .line 1281
    .line 1282
    cmp-long v23, v13, v21

    .line 1283
    .line 1284
    if-eqz v23, :cond_3e

    .line 1285
    .line 1286
    aget-wide v30, v0, v9

    .line 1287
    .line 1288
    move-object/from16 v23, v3

    .line 1289
    .line 1290
    move-object/from16 v24, v4

    .line 1291
    .line 1292
    iget-wide v3, v12, LP0/J;->c:J

    .line 1293
    .line 1294
    move-wide/from16 v32, v3

    .line 1295
    .line 1296
    iget-wide v3, v12, LP0/J;->d:J

    .line 1297
    .line 1298
    move-wide/from16 v34, v3

    .line 1299
    .line 1300
    invoke-static/range {v30 .. v35}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    .line 1301
    .line 1302
    .line 1303
    move-result-wide v3

    .line 1304
    add-long/2addr v3, v13

    .line 1305
    move/from16 p2, v9

    .line 1306
    .line 1307
    const/4 v9, 0x1

    .line 1308
    invoke-static {v2, v13, v14, v9, v9}, Landroidx/media3/common/util/Util;->binarySearchFloor([JJZZ)I

    .line 1309
    .line 1310
    .line 1311
    move-result v13

    .line 1312
    aput v13, v16, p2

    .line 1313
    .line 1314
    const/4 v13, 0x0

    .line 1315
    invoke-static {v2, v3, v4, v6, v13}, Landroidx/media3/common/util/Util;->binarySearchCeil([JJZZ)I

    .line 1316
    .line 1317
    .line 1318
    move-result v9

    .line 1319
    add-int/lit8 v13, v9, -0x1

    .line 1320
    .line 1321
    move-wide/from16 v30, v3

    .line 1322
    .line 1323
    move v14, v13

    .line 1324
    move v13, v9

    .line 1325
    const/4 v9, 0x0

    .line 1326
    :goto_28
    array-length v3, v2

    .line 1327
    if-ge v13, v3, :cond_39

    .line 1328
    .line 1329
    aget-wide v3, v2, v13

    .line 1330
    .line 1331
    cmp-long v3, v3, v30

    .line 1332
    .line 1333
    if-gez v3, :cond_37

    .line 1334
    .line 1335
    move v14, v13

    .line 1336
    goto :goto_29

    .line 1337
    :cond_37
    add-int/lit8 v9, v9, 0x1

    .line 1338
    .line 1339
    iget v3, v5, Landroidx/media3/common/Format;->maxNumReorderSamples:I

    .line 1340
    .line 1341
    if-le v9, v3, :cond_38

    .line 1342
    .line 1343
    goto :goto_2a

    .line 1344
    :cond_38
    :goto_29
    add-int/lit8 v13, v13, 0x1

    .line 1345
    .line 1346
    goto :goto_28

    .line 1347
    :cond_39
    :goto_2a
    add-int/lit8 v14, v14, 0x1

    .line 1348
    .line 1349
    aput v14, v19, p2

    .line 1350
    .line 1351
    aget v3, v16, p2

    .line 1352
    .line 1353
    :goto_2b
    aget v4, v16, p2

    .line 1354
    .line 1355
    if-lez v4, :cond_3a

    .line 1356
    .line 1357
    aget v9, v7, v4

    .line 1358
    .line 1359
    const/4 v14, 0x1

    .line 1360
    and-int/2addr v9, v14

    .line 1361
    if-nez v9, :cond_3b

    .line 1362
    .line 1363
    add-int/lit8 v4, v4, -0x1

    .line 1364
    .line 1365
    aput v4, v16, p2

    .line 1366
    .line 1367
    goto :goto_2b

    .line 1368
    :cond_3a
    const/4 v14, 0x1

    .line 1369
    :cond_3b
    const/16 v20, 0x0

    .line 1370
    .line 1371
    if-nez v4, :cond_3c

    .line 1372
    .line 1373
    aget v4, v7, v20

    .line 1374
    .line 1375
    and-int/2addr v4, v14

    .line 1376
    if-nez v4, :cond_3c

    .line 1377
    .line 1378
    aput v3, v16, p2

    .line 1379
    .line 1380
    :goto_2c
    aget v3, v16, p2

    .line 1381
    .line 1382
    aget v4, v19, p2

    .line 1383
    .line 1384
    if-ge v3, v4, :cond_3c

    .line 1385
    .line 1386
    aget v4, v7, v3

    .line 1387
    .line 1388
    and-int/2addr v4, v14

    .line 1389
    if-nez v4, :cond_3c

    .line 1390
    .line 1391
    add-int/lit8 v3, v3, 0x1

    .line 1392
    .line 1393
    aput v3, v16, p2

    .line 1394
    .line 1395
    const/4 v14, 0x1

    .line 1396
    goto :goto_2c

    .line 1397
    :cond_3c
    aget v3, v19, p2

    .line 1398
    .line 1399
    aget v4, v16, p2

    .line 1400
    .line 1401
    sub-int v9, v3, v4

    .line 1402
    .line 1403
    add-int/2addr v9, v1

    .line 1404
    if-eq v8, v4, :cond_3d

    .line 1405
    .line 1406
    const/4 v1, 0x1

    .line 1407
    goto :goto_2d

    .line 1408
    :cond_3d
    move/from16 v1, v20

    .line 1409
    .line 1410
    :goto_2d
    or-int v1, p1, v1

    .line 1411
    .line 1412
    move v14, v1

    .line 1413
    move v8, v3

    .line 1414
    move v1, v9

    .line 1415
    goto :goto_2e

    .line 1416
    :cond_3e
    move-object/from16 v23, v3

    .line 1417
    .line 1418
    move-object/from16 v24, v4

    .line 1419
    .line 1420
    move/from16 p2, v9

    .line 1421
    .line 1422
    const/16 v20, 0x0

    .line 1423
    .line 1424
    move/from16 v14, p1

    .line 1425
    .line 1426
    :goto_2e
    add-int/lit8 v13, p2, 0x1

    .line 1427
    .line 1428
    move-object/from16 v3, v23

    .line 1429
    .line 1430
    move-object/from16 v4, v24

    .line 1431
    .line 1432
    goto/16 :goto_27

    .line 1433
    .line 1434
    :cond_3f
    move-object/from16 v23, v3

    .line 1435
    .line 1436
    move-object/from16 v24, v4

    .line 1437
    .line 1438
    move/from16 p1, v14

    .line 1439
    .line 1440
    const/16 v20, 0x0

    .line 1441
    .line 1442
    if-eq v1, v10, :cond_40

    .line 1443
    .line 1444
    const/4 v3, 0x1

    .line 1445
    goto :goto_2f

    .line 1446
    :cond_40
    move/from16 v3, v20

    .line 1447
    .line 1448
    :goto_2f
    or-int v3, p1, v3

    .line 1449
    .line 1450
    if-eqz v3, :cond_41

    .line 1451
    .line 1452
    new-array v4, v1, [J

    .line 1453
    .line 1454
    goto :goto_30

    .line 1455
    :cond_41
    move-object/from16 v4, v23

    .line 1456
    .line 1457
    :goto_30
    if-eqz v3, :cond_42

    .line 1458
    .line 1459
    new-array v6, v1, [I

    .line 1460
    .line 1461
    goto :goto_31

    .line 1462
    :cond_42
    move-object/from16 v6, v24

    .line 1463
    .line 1464
    :goto_31
    if-eqz v3, :cond_43

    .line 1465
    .line 1466
    move/from16 v25, v20

    .line 1467
    .line 1468
    :cond_43
    if-eqz v3, :cond_44

    .line 1469
    .line 1470
    new-array v8, v1, [I

    .line 1471
    .line 1472
    goto :goto_32

    .line 1473
    :cond_44
    move-object v8, v7

    .line 1474
    :goto_32
    if-eqz v3, :cond_45

    .line 1475
    .line 1476
    new-instance v9, Ljava/util/ArrayList;

    .line 1477
    .line 1478
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1479
    .line 1480
    .line 1481
    goto :goto_33

    .line 1482
    :cond_45
    move-object/from16 v9, v27

    .line 1483
    .line 1484
    :goto_33
    new-array v1, v1, [J

    .line 1485
    .line 1486
    move/from16 v10, v20

    .line 1487
    .line 1488
    move v11, v10

    .line 1489
    const-wide/16 v30, 0x0

    .line 1490
    .line 1491
    :goto_34
    array-length v13, v0

    .line 1492
    if-ge v10, v13, :cond_4b

    .line 1493
    .line 1494
    aget-wide v13, v15, v10

    .line 1495
    .line 1496
    move-object/from16 v21, v0

    .line 1497
    .line 1498
    aget v0, v16, v10

    .line 1499
    .line 1500
    move-object/from16 v26, v1

    .line 1501
    .line 1502
    aget v1, v19, v10

    .line 1503
    .line 1504
    move-object/from16 v22, v2

    .line 1505
    .line 1506
    if-eqz v3, :cond_46

    .line 1507
    .line 1508
    sub-int v2, v1, v0

    .line 1509
    .line 1510
    move/from16 p1, v3

    .line 1511
    .line 1512
    move-object/from16 v3, v23

    .line 1513
    .line 1514
    invoke-static {v3, v0, v4, v11, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1515
    .line 1516
    .line 1517
    move-object/from16 v3, v24

    .line 1518
    .line 1519
    invoke-static {v3, v0, v6, v11, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1520
    .line 1521
    .line 1522
    invoke-static {v7, v0, v8, v11, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1523
    .line 1524
    .line 1525
    goto :goto_35

    .line 1526
    :cond_46
    move/from16 p1, v3

    .line 1527
    .line 1528
    move-object/from16 v3, v24

    .line 1529
    .line 1530
    :goto_35
    move/from16 v2, v25

    .line 1531
    .line 1532
    :goto_36
    if-ge v0, v1, :cond_4a

    .line 1533
    .line 1534
    const-wide/32 v32, 0xf4240

    .line 1535
    .line 1536
    .line 1537
    move/from16 v24, v0

    .line 1538
    .line 1539
    move/from16 p2, v1

    .line 1540
    .line 1541
    iget-wide v0, v12, LP0/J;->d:J

    .line 1542
    .line 1543
    move-wide/from16 v34, v0

    .line 1544
    .line 1545
    invoke-static/range {v30 .. v35}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    .line 1546
    .line 1547
    .line 1548
    move-result-wide v0

    .line 1549
    aget-wide v27, v22, v24

    .line 1550
    .line 1551
    sub-long v32, v27, v13

    .line 1552
    .line 1553
    const-wide/32 v34, 0xf4240

    .line 1554
    .line 1555
    .line 1556
    move-wide/from16 v27, v0

    .line 1557
    .line 1558
    iget-wide v0, v12, LP0/J;->c:J

    .line 1559
    .line 1560
    move-wide/from16 v36, v0

    .line 1561
    .line 1562
    invoke-static/range {v32 .. v37}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    .line 1563
    .line 1564
    .line 1565
    move-result-wide v0

    .line 1566
    const-wide/16 v17, 0x0

    .line 1567
    .line 1568
    cmp-long v25, v0, v17

    .line 1569
    .line 1570
    if-gez v25, :cond_47

    .line 1571
    .line 1572
    const/16 v20, 0x1

    .line 1573
    .line 1574
    :cond_47
    add-long v0, v27, v0

    .line 1575
    .line 1576
    aput-wide v0, v26, v11

    .line 1577
    .line 1578
    if-eqz p1, :cond_48

    .line 1579
    .line 1580
    aget v0, v6, v11

    .line 1581
    .line 1582
    if-le v0, v2, :cond_48

    .line 1583
    .line 1584
    aget v2, v3, v24

    .line 1585
    .line 1586
    :cond_48
    if-eqz p1, :cond_49

    .line 1587
    .line 1588
    if-nez v29, :cond_49

    .line 1589
    .line 1590
    aget v0, v8, v11

    .line 1591
    .line 1592
    const/4 v1, 0x1

    .line 1593
    and-int/2addr v0, v1

    .line 1594
    if-eqz v0, :cond_49

    .line 1595
    .line 1596
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1597
    .line 1598
    .line 1599
    move-result-object v0

    .line 1600
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1601
    .line 1602
    .line 1603
    :cond_49
    add-int/lit8 v11, v11, 0x1

    .line 1604
    .line 1605
    add-int/lit8 v0, v24, 0x1

    .line 1606
    .line 1607
    move/from16 v1, p2

    .line 1608
    .line 1609
    goto :goto_36

    .line 1610
    :cond_4a
    const-wide/16 v17, 0x0

    .line 1611
    .line 1612
    aget-wide v0, v21, v10

    .line 1613
    .line 1614
    add-long v30, v30, v0

    .line 1615
    .line 1616
    add-int/lit8 v10, v10, 0x1

    .line 1617
    .line 1618
    move/from16 v25, v2

    .line 1619
    .line 1620
    move-object/from16 v24, v3

    .line 1621
    .line 1622
    move-object/from16 v0, v21

    .line 1623
    .line 1624
    move-object/from16 v2, v22

    .line 1625
    .line 1626
    move-object/from16 v1, v26

    .line 1627
    .line 1628
    move/from16 v3, p1

    .line 1629
    .line 1630
    goto/16 :goto_34

    .line 1631
    .line 1632
    :cond_4b
    move-object/from16 v26, v1

    .line 1633
    .line 1634
    const-wide/32 v32, 0xf4240

    .line 1635
    .line 1636
    .line 1637
    iget-wide v0, v12, LP0/J;->d:J

    .line 1638
    .line 1639
    move-wide/from16 v34, v0

    .line 1640
    .line 1641
    invoke-static/range {v30 .. v35}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    .line 1642
    .line 1643
    .line 1644
    move-result-wide v30

    .line 1645
    if-eqz v20, :cond_4c

    .line 1646
    .line 1647
    invoke-virtual {v5}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    .line 1648
    .line 1649
    .line 1650
    move-result-object v0

    .line 1651
    const/4 v14, 0x1

    .line 1652
    invoke-virtual {v0, v14}, Landroidx/media3/common/Format$Builder;->setHasPrerollSamples(Z)Landroidx/media3/common/Format$Builder;

    .line 1653
    .line 1654
    .line 1655
    move-result-object v0

    .line 1656
    invoke-virtual {v0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    .line 1657
    .line 1658
    .line 1659
    move-result-object v0

    .line 1660
    invoke-virtual {v12, v0}, LP0/J;->copyWithFormat(Landroidx/media3/common/Format;)LP0/J;

    .line 1661
    .line 1662
    .line 1663
    move-result-object v1

    .line 1664
    move-object/from16 v22, v1

    .line 1665
    .line 1666
    goto :goto_37

    .line 1667
    :cond_4c
    move-object/from16 v22, v12

    .line 1668
    .line 1669
    :goto_37
    new-instance v21, LP0/M;

    .line 1670
    .line 1671
    invoke-static {v9}, Lcom/google/common/primitives/a;->toArray(Ljava/util/Collection;)[I

    .line 1672
    .line 1673
    .line 1674
    move-result-object v28

    .line 1675
    array-length v0, v4

    .line 1676
    move/from16 v32, v0

    .line 1677
    .line 1678
    move-object/from16 v23, v4

    .line 1679
    .line 1680
    move-object/from16 v24, v6

    .line 1681
    .line 1682
    move-object/from16 v27, v8

    .line 1683
    .line 1684
    invoke-direct/range {v21 .. v32}, LP0/M;-><init>(LP0/J;[J[II[J[I[IZJI)V

    .line 1685
    .line 1686
    .line 1687
    return-object v21

    .line 1688
    :cond_4d
    const-string v0, "Track has no sample table size information"

    .line 1689
    .line 1690
    const/4 v1, 0x0

    .line 1691
    invoke-static {v0, v1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 1692
    .line 1693
    .line 1694
    move-result-object v0

    .line 1695
    throw v0
.end method

.method public static parseTrak(Ls0/d;Ls0/e;JLandroidx/media3/common/DrmInitData;ZZ)LP0/J;
    .locals 52
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v8, p4

    const/16 v1, 0xa

    const/4 v13, 0x4

    const/4 v14, 0x3

    const/4 v15, 0x2

    const/16 v4, 0x10

    const/16 v6, 0x8

    const v9, 0x6d646961

    .line 1
    invoke-virtual {v0, v9}, Ls0/d;->getContainerBoxOfType(I)Ls0/d;

    move-result-object v9

    invoke-static {v9}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ls0/d;

    const v10, 0x68646c72    # 4.3148E24f

    .line 2
    invoke-virtual {v9, v10}, Ls0/d;->getLeafBoxOfType(I)Ls0/e;

    move-result-object v10

    invoke-static {v10}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ls0/e;

    iget-object v10, v10, Ls0/e;->b:Landroidx/media3/common/util/ParsableByteArray;

    .line 3
    invoke-virtual {v10, v4}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 4
    invoke-virtual {v10}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v10

    const/16 v16, 0x5

    const v2, 0x736f756e

    const/4 v11, -0x1

    if-ne v10, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const v2, 0x76696465

    if-ne v10, v2, :cond_1

    move v2, v15

    goto :goto_1

    :cond_1
    const v2, 0x74657874

    if-eq v10, v2, :cond_4

    const v2, 0x7362746c

    if-eq v10, v2, :cond_4

    const v2, 0x73756274

    if-eq v10, v2, :cond_4

    const v2, 0x636c6370

    if-eq v10, v2, :cond_4

    const v2, 0x73756270

    if-ne v10, v2, :cond_2

    goto :goto_0

    :cond_2
    const v2, 0x6d657461

    if-ne v10, v2, :cond_3

    move/from16 v2, v16

    goto :goto_1

    :cond_3
    move v2, v11

    goto :goto_1

    :cond_4
    :goto_0
    move v2, v14

    :goto_1
    if-ne v2, v11, :cond_5

    const/16 v17, 0x0

    goto/16 :goto_58

    :cond_5
    const/16 v17, 0x0

    const v10, 0x746b6864

    .line 5
    invoke-virtual {v0, v10}, Ls0/d;->getLeafBoxOfType(I)Ls0/e;

    move-result-object v10

    invoke-static {v10}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ls0/e;

    iget-object v10, v10, Ls0/e;->b:Landroidx/media3/common/util/ParsableByteArray;

    .line 6
    invoke-virtual {v10, v6}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 7
    invoke-virtual {v10}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v18

    .line 8
    invoke-static/range {v18 .. v18}, LP0/n;->parseFullBoxVersion(I)I

    move-result v18

    if-nez v18, :cond_6

    move v7, v6

    :goto_2
    const/16 v19, 0x1

    goto :goto_3

    :cond_6
    move v7, v4

    goto :goto_2

    .line 9
    :goto_3
    invoke-virtual {v10, v7}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 10
    invoke-virtual {v10}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v21

    .line 11
    invoke-virtual {v10, v13}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 12
    invoke-virtual {v10}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v7

    if-nez v18, :cond_7

    move v5, v13

    :goto_4
    const/16 v28, 0x0

    goto :goto_5

    :cond_7
    move v5, v6

    goto :goto_4

    :goto_5
    move/from16 v12, v28

    :goto_6
    const-wide/16 v30, 0x0

    const-wide v32, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v12, v5, :cond_a

    .line 13
    invoke-virtual {v10}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v20

    add-int v22, v7, v12

    aget-byte v3, v20, v22

    if-eq v3, v11, :cond_9

    if-nez v18, :cond_8

    .line 14
    invoke-virtual {v10}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v22

    goto :goto_7

    :cond_8
    invoke-virtual {v10}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v22

    :goto_7
    cmp-long v3, v22, v30

    if-nez v3, :cond_b

    :goto_8
    move-wide/from16 v22, v32

    goto :goto_9

    :cond_9
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 15
    :cond_a
    invoke-virtual {v10, v5}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_8

    .line 16
    :cond_b
    :goto_9
    invoke-virtual {v10, v1}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 17
    invoke-virtual {v10}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v24

    .line 18
    invoke-virtual {v10, v13}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 19
    invoke-virtual {v10}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v3

    .line 20
    invoke-virtual {v10}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v5

    .line 21
    invoke-virtual {v10, v13}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 22
    invoke-virtual {v10}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v7

    .line 23
    invoke-virtual {v10}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v12

    move/from16 v18, v1

    const/high16 v1, -0x10000

    const/high16 v13, 0x10000

    if-nez v3, :cond_d

    if-ne v5, v13, :cond_d

    if-eq v7, v1, :cond_c

    if-ne v7, v13, :cond_d

    :cond_c
    if-nez v12, :cond_d

    const/16 v1, 0x5a

    :goto_a
    move/from16 v25, v1

    goto :goto_b

    :cond_d
    if-nez v3, :cond_f

    if-ne v5, v1, :cond_f

    if-eq v7, v13, :cond_e

    if-ne v7, v1, :cond_f

    :cond_e
    if-nez v12, :cond_f

    const/16 v1, 0x10e

    goto :goto_a

    :cond_f
    if-eq v3, v1, :cond_10

    if-ne v3, v13, :cond_11

    :cond_10
    if-nez v5, :cond_11

    if-nez v7, :cond_11

    if-ne v12, v1, :cond_11

    const/16 v1, 0xb4

    goto :goto_a

    :cond_11
    move/from16 v25, v28

    .line 24
    :goto_b
    invoke-virtual {v10, v4}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 25
    invoke-virtual {v10}, Landroidx/media3/common/util/ParsableByteArray;->readShort()S

    move-result v26

    .line 26
    invoke-virtual {v10, v15}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 27
    invoke-virtual {v10}, Landroidx/media3/common/util/ParsableByteArray;->readShort()S

    move-result v27

    .line 28
    new-instance v20, LP0/l;

    invoke-direct/range {v20 .. v27}, LP0/l;-><init>(IJIIII)V

    move-object/from16 v12, v20

    cmp-long v1, p2, v32

    if-nez v1, :cond_12

    move v1, v4

    .line 29
    iget-wide v4, v12, LP0/l;->b:J

    move-wide/from16 v20, v4

    :goto_c
    move-object/from16 v3, p1

    goto :goto_d

    :cond_12
    move v1, v4

    move-wide/from16 v20, p2

    goto :goto_c

    .line 30
    :goto_d
    iget-object v3, v3, Ls0/e;->b:Landroidx/media3/common/util/ParsableByteArray;

    invoke-static {v3}, LP0/n;->parseMvhd(Landroidx/media3/common/util/ParsableByteArray;)Ls0/h;

    move-result-object v3

    iget-wide v3, v3, Ls0/h;->c:J

    cmp-long v5, v20, v32

    if-nez v5, :cond_13

    move-wide/from16 v24, v3

    move-wide/from16 v20, v32

    goto :goto_e

    :cond_13
    const-wide/32 v22, 0xf4240

    move-wide/from16 v24, v3

    .line 31
    invoke-static/range {v20 .. v25}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v3

    move-wide/from16 v20, v3

    :goto_e
    const v3, 0x6d696e66

    .line 32
    invoke-virtual {v9, v3}, Ls0/d;->getContainerBoxOfType(I)Ls0/d;

    move-result-object v3

    invoke-static {v3}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ls0/d;

    const v4, 0x7374626c

    .line 33
    invoke-virtual {v3, v4}, Ls0/d;->getContainerBoxOfType(I)Ls0/d;

    move-result-object v3

    .line 34
    invoke-static {v3}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ls0/d;

    const v4, 0x6d646864

    .line 35
    invoke-virtual {v9, v4}, Ls0/d;->getLeafBoxOfType(I)Ls0/e;

    move-result-object v4

    invoke-static {v4}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ls0/e;

    iget-object v4, v4, Ls0/e;->b:Landroidx/media3/common/util/ParsableByteArray;

    .line 36
    invoke-virtual {v4, v6}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 37
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v5

    .line 38
    invoke-static {v5}, LP0/n;->parseFullBoxVersion(I)I

    move-result v5

    if-nez v5, :cond_14

    move v7, v6

    goto :goto_f

    :cond_14
    move v7, v1

    .line 39
    :goto_f
    invoke-virtual {v4, v7}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 40
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v40

    .line 41
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v7

    if-nez v5, :cond_15

    const/4 v9, 0x4

    goto :goto_10

    :cond_15
    move v9, v6

    :goto_10
    move/from16 v10, v28

    :goto_11
    if-ge v10, v9, :cond_19

    .line 42
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v13

    add-int v22, v7, v10

    aget-byte v13, v13, v22

    if-eq v13, v11, :cond_18

    if-nez v5, :cond_16

    .line 43
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v9

    :goto_12
    move-wide/from16 v36, v9

    goto :goto_13

    :cond_16
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v9

    goto :goto_12

    :goto_13
    cmp-long v5, v36, v30

    if-nez v5, :cond_17

    goto :goto_14

    :cond_17
    const-wide/32 v38, 0xf4240

    .line 44
    invoke-static/range {v36 .. v41}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v32

    goto :goto_14

    :cond_18
    add-int/lit8 v10, v10, 0x1

    goto :goto_11

    .line 45
    :cond_19
    invoke-virtual {v4, v9}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 46
    :goto_14
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v4

    shr-int/lit8 v5, v4, 0xa

    and-int/lit8 v5, v5, 0x1f

    add-int/lit8 v5, v5, 0x60

    int-to-char v5, v5

    shr-int/lit8 v7, v4, 0x5

    and-int/lit8 v7, v7, 0x1f

    add-int/lit8 v7, v7, 0x60

    int-to-char v7, v7

    and-int/lit8 v4, v4, 0x1f

    add-int/lit8 v4, v4, 0x60

    int-to-char v4, v4

    .line 47
    new-array v9, v14, [C

    aput-char v5, v9, v28

    aput-char v7, v9, v19

    aput-char v4, v9, v15

    move/from16 v4, v28

    :goto_15
    const/16 v13, 0x61

    if-ge v4, v14, :cond_1c

    .line 48
    aget-char v5, v9, v4

    if-lt v5, v13, :cond_1b

    const/16 v7, 0x7a

    if-le v5, v7, :cond_1a

    goto :goto_16

    :cond_1a
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    :cond_1b
    :goto_16
    move-object/from16 v4, v17

    goto :goto_17

    .line 49
    :cond_1c
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v9}, Ljava/lang/String;-><init>([C)V

    .line 50
    :goto_17
    new-instance v36, LP0/f;

    move-wide/from16 v37, v40

    move-object/from16 v41, v4

    move-wide/from16 v39, v32

    invoke-direct/range {v36 .. v41}, LP0/f;-><init>(JJLjava/lang/String;)V

    move-object/from16 v4, v36

    const v5, 0x73747364

    .line 51
    invoke-virtual {v3, v5}, Ls0/d;->getLeafBoxOfType(I)Ls0/e;

    move-result-object v3

    if-nez v3, :cond_1d

    .line 52
    const-string v0, "BoxParsers"

    const-string v1, "Ignoring track where sample table (stbl) box is missing a sample description (stsd)."

    invoke-static {v0, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v17

    .line 53
    :cond_1d
    iget-object v3, v3, Ls0/e;->b:Landroidx/media3/common/util/ParsableByteArray;

    const/16 v5, 0xc

    invoke-virtual {v3, v5}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 54
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v5

    .line 55
    new-instance v9, LP0/i;

    invoke-direct {v9, v5}, LP0/i;-><init>(I)V

    move/from16 v10, v28

    :goto_18
    if-ge v10, v5, :cond_89

    .line 56
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v7

    move/from16 v16, v1

    .line 57
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    move/from16 p1, v13

    if-lez v1, :cond_1e

    move/from16 v13, v19

    :goto_19
    move/from16 v18, v14

    goto :goto_1a

    :cond_1e
    move/from16 v13, v28

    goto :goto_19

    .line 58
    :goto_1a
    const-string v14, "childAtomSize must be positive"

    invoke-static {v13, v14}, Lv0/G;->checkContainerInput(ZLjava/lang/String;)V

    move v13, v2

    .line 59
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v2

    const v11, 0x61766331

    move/from16 v23, v15

    .line 60
    iget-object v15, v4, LP0/f;->c:Ljava/lang/String;

    if-eq v2, v11, :cond_1f

    const v11, 0x61766333

    if-eq v2, v11, :cond_1f

    const v11, 0x656e6376

    if-eq v2, v11, :cond_1f

    const v11, 0x6d317620

    if-eq v2, v11, :cond_1f

    const v11, 0x6d703476

    if-eq v2, v11, :cond_1f

    const v11, 0x68766331

    if-eq v2, v11, :cond_1f

    const v11, 0x68657631

    if-eq v2, v11, :cond_1f

    const v11, 0x73323633

    if-eq v2, v11, :cond_1f

    const v11, 0x48323633

    if-eq v2, v11, :cond_1f

    const v11, 0x68323633

    if-eq v2, v11, :cond_1f

    const v11, 0x76703038

    if-eq v2, v11, :cond_1f

    const v11, 0x76703039

    if-eq v2, v11, :cond_1f

    const v11, 0x61763031

    if-eq v2, v11, :cond_1f

    const v11, 0x64766176

    if-eq v2, v11, :cond_1f

    const v11, 0x64766131

    if-eq v2, v11, :cond_1f

    const v11, 0x64766865

    if-eq v2, v11, :cond_1f

    const v11, 0x64766831

    if-eq v2, v11, :cond_1f

    const v11, 0x61707631

    if-ne v2, v11, :cond_20

    :cond_1f
    move/from16 v36, v1

    move-object/from16 v43, v4

    move/from16 v42, v5

    move/from16 v26, v6

    move/from16 v47, v7

    move/from16 v44, v10

    move/from16 v45, v13

    const/4 v14, -0x1

    const/16 v34, 0xc

    goto/16 :goto_51

    :cond_20
    move/from16 v26, v6

    .line 61
    iget v6, v12, LP0/l;->a:I

    const v11, 0x656e6361

    move-object/from16 v43, v4

    const v4, 0x6d703461

    if-eq v2, v4, :cond_32

    if-eq v2, v11, :cond_32

    const v4, 0x61632d33

    if-eq v2, v4, :cond_32

    const v4, 0x65632d33

    if-eq v2, v4, :cond_32

    const v4, 0x61632d34

    if-eq v2, v4, :cond_32

    const v4, 0x6d6c7061

    if-eq v2, v4, :cond_32

    const v4, 0x64747363

    if-eq v2, v4, :cond_32

    const v4, 0x64747365

    if-eq v2, v4, :cond_32

    const v4, 0x64747368

    if-eq v2, v4, :cond_32

    const v4, 0x6474736c

    if-eq v2, v4, :cond_32

    const v4, 0x64747378

    if-eq v2, v4, :cond_32

    const v4, 0x73616d72

    if-eq v2, v4, :cond_32

    const v4, 0x73617762

    if-eq v2, v4, :cond_32

    const v4, 0x6c70636d

    if-eq v2, v4, :cond_32

    const v4, 0x736f7774

    if-eq v2, v4, :cond_32

    const v4, 0x74776f73

    if-eq v2, v4, :cond_32

    const v4, 0x2e6d7032

    if-eq v2, v4, :cond_32

    const v4, 0x2e6d7033

    if-eq v2, v4, :cond_32

    const v4, 0x6d686131

    if-eq v2, v4, :cond_32

    const v4, 0x6d686d31

    if-eq v2, v4, :cond_32

    const v4, 0x616c6163

    if-eq v2, v4, :cond_32

    const v4, 0x616c6177

    if-eq v2, v4, :cond_32

    const v4, 0x756c6177

    if-eq v2, v4, :cond_32

    const v4, 0x4f707573

    if-eq v2, v4, :cond_32

    const v4, 0x664c6143

    if-eq v2, v4, :cond_32

    const v4, 0x69616d66

    if-eq v2, v4, :cond_32

    const v4, 0x6970636d

    if-eq v2, v4, :cond_32

    const v4, 0x6670636d

    if-ne v2, v4, :cond_21

    move/from16 v42, v5

    move/from16 v44, v10

    move/from16 v45, v13

    goto/16 :goto_23

    :cond_21
    const v4, 0x77767474

    const v11, 0x74783367

    const v14, 0x54544d4c

    if-eq v2, v14, :cond_25

    if-eq v2, v11, :cond_25

    if-eq v2, v4, :cond_25

    const v4, 0x73747070

    if-eq v2, v4, :cond_25

    const v4, 0x63363038

    if-eq v2, v4, :cond_25

    const v4, 0x6d703473

    if-ne v2, v4, :cond_22

    goto :goto_1c

    :cond_22
    const v4, 0x6d657474

    if-ne v2, v4, :cond_24

    add-int/lit8 v11, v7, 0x10

    .line 62
    invoke-virtual {v3, v11}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    if-ne v2, v4, :cond_23

    .line 63
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readNullTerminatedString()Ljava/lang/String;

    .line 64
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readNullTerminatedString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_23

    .line 65
    new-instance v11, Landroidx/media3/common/Format$Builder;

    invoke-direct {v11}, Landroidx/media3/common/Format$Builder;-><init>()V

    invoke-virtual {v11, v6}, Landroidx/media3/common/Format$Builder;->setId(I)Landroidx/media3/common/Format$Builder;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v2

    iput-object v2, v9, LP0/i;->b:Landroidx/media3/common/Format;

    :cond_23
    :goto_1b
    move/from16 v29, v4

    move/from16 v42, v5

    move/from16 v47, v7

    move/from16 v11, v19

    move/from16 v15, v26

    move-object/from16 v0, v43

    const/4 v14, -0x1

    const/16 v34, 0xc

    move v4, v1

    move-object v1, v3

    goto/16 :goto_52

    :cond_24
    const v11, 0x63616d6d

    if-ne v2, v11, :cond_23

    .line 66
    new-instance v2, Landroidx/media3/common/Format$Builder;

    invoke-direct {v2}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 67
    invoke-virtual {v2, v6}, Landroidx/media3/common/Format$Builder;->setId(I)Landroidx/media3/common/Format$Builder;

    move-result-object v2

    const-string v6, "application/x-camera-motion"

    .line 68
    invoke-virtual {v2, v6}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v2

    .line 69
    invoke-virtual {v2}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v2

    iput-object v2, v9, LP0/i;->b:Landroidx/media3/common/Format;

    goto :goto_1b

    :cond_25
    :goto_1c
    add-int/lit8 v4, v7, 0x10

    .line 70
    invoke-virtual {v3, v4}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 71
    const-string v4, "application/ttml+xml"

    const-wide v36, 0x7fffffffffffffffL

    if-ne v2, v14, :cond_26

    :goto_1d
    move/from16 v42, v5

    move/from16 v44, v10

    move/from16 v45, v13

    move-object/from16 v2, v17

    :goto_1e
    move-wide/from16 v10, v36

    goto/16 :goto_21

    :cond_26
    if-ne v2, v11, :cond_27

    add-int/lit8 v2, v1, -0x10

    .line 72
    new-array v4, v2, [B

    move/from16 v11, v28

    .line 73
    invoke-virtual {v3, v4, v11, v2}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 74
    invoke-static {v4}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    .line 75
    const-string v4, "application/x-quicktime-tx3g"

    move/from16 v42, v5

    move/from16 v44, v10

    move/from16 v45, v13

    goto :goto_1e

    :cond_27
    const v11, 0x77767474

    if-ne v2, v11, :cond_28

    .line 76
    const-string v4, "application/x-mp4-vtt"

    goto :goto_1d

    :cond_28
    const v11, 0x73747070

    if-ne v2, v11, :cond_29

    move/from16 v42, v5

    move/from16 v44, v10

    move/from16 v45, v13

    move-object/from16 v2, v17

    move-wide/from16 v10, v30

    goto/16 :goto_21

    :cond_29
    const v4, 0x63363038

    if-ne v2, v4, :cond_2a

    move/from16 v4, v19

    .line 77
    iput v4, v9, LP0/i;->d:I

    const-string v4, "application/x-mp4-cea-608"

    goto :goto_1d

    :cond_2a
    const v4, 0x6d703473

    if-ne v2, v4, :cond_31

    .line 78
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v2

    const/4 v4, 0x4

    .line 79
    invoke-virtual {v3, v4}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 80
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v4

    const v11, 0x65736473

    if-ne v4, v11, :cond_2f

    .line 81
    invoke-static {v2, v3}, LP0/n;->a(ILandroidx/media3/common/util/ParsableByteArray;)LP0/d;

    move-result-object v2

    .line 82
    iget-object v2, v2, LP0/d;->b:[B

    if-eqz v2, :cond_2b

    array-length v4, v2

    const/16 v11, 0x40

    if-eq v4, v11, :cond_2c

    :cond_2b
    move/from16 v42, v5

    move/from16 v44, v10

    move/from16 v45, v13

    goto/16 :goto_22

    .line 83
    :cond_2c
    array-length v4, v2

    if-ne v4, v11, :cond_2d

    const/4 v4, 0x1

    goto :goto_1f

    :cond_2d
    const/4 v4, 0x0

    :goto_1f
    invoke-static {v4}, LP3/v;->checkState(Z)V

    .line 84
    new-instance v4, Ljava/util/ArrayList;

    move/from16 v11, v16

    invoke-direct {v4, v11}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v14, 0x0

    .line 85
    :goto_20
    array-length v11, v2

    add-int/lit8 v11, v11, -0x3

    if-ge v14, v11, :cond_2e

    .line 86
    aget-byte v11, v2, v14

    const/16 v19, 0x1

    add-int/lit8 v27, v14, 0x1

    move-object/from16 v32, v2

    aget-byte v2, v32, v27

    add-int/lit8 v27, v14, 0x2

    move/from16 v42, v5

    aget-byte v5, v32, v27

    add-int/lit8 v27, v14, 0x3

    move/from16 v44, v10

    aget-byte v10, v32, v27

    invoke-static {v11, v2, v5, v10}, Lcom/google/common/primitives/a;->fromBytes(BBBB)I

    move-result v2

    const/16 v11, 0x10

    shr-int/lit8 v5, v2, 0x10

    const/16 v10, 0xff

    and-int/2addr v5, v10

    shr-int/lit8 v11, v2, 0x8

    and-int/2addr v11, v10

    and-int/2addr v2, v10

    add-int/lit8 v11, v11, -0x80

    const/16 v10, 0x36fb

    move/from16 v27, v2

    const/16 v2, 0x2710

    .line 87
    invoke-static {v11, v10, v2, v5}, LA/i;->D(IIII)I

    move-result v10

    add-int/lit8 v2, v27, -0x80

    move/from16 v45, v13

    mul-int/lit16 v13, v2, 0xd7f

    move/from16 v27, v14

    const/16 v14, 0x2710

    .line 88
    div-int/2addr v13, v14

    sub-int v13, v5, v13

    mul-int/lit16 v11, v11, 0x1c01

    div-int/2addr v11, v14

    sub-int/2addr v13, v11

    const/16 v11, 0x457e

    .line 89
    invoke-static {v2, v11, v14, v5}, LA/i;->D(IIII)I

    move-result v2

    const/16 v5, 0xff

    const/4 v11, 0x0

    .line 90
    invoke-static {v10, v11, v5}, Landroidx/media3/common/util/Util;->constrainValue(III)I

    move-result v10

    const/16 v16, 0x10

    shl-int/lit8 v10, v10, 0x10

    .line 91
    invoke-static {v13, v11, v5}, Landroidx/media3/common/util/Util;->constrainValue(III)I

    move-result v13

    shl-int/lit8 v13, v13, 0x8

    or-int/2addr v10, v13

    .line 92
    invoke-static {v2, v11, v5}, Landroidx/media3/common/util/Util;->constrainValue(III)I

    move-result v2

    or-int/2addr v2, v10

    .line 93
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x1

    new-array v10, v5, [Ljava/lang/Object;

    aput-object v2, v10, v11

    const-string v2, "%06x"

    invoke-static {v2, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v35, 0x4

    add-int/lit8 v14, v27, 0x4

    move-object/from16 v2, v32

    move/from16 v5, v42

    move/from16 v10, v44

    move/from16 v13, v45

    goto/16 :goto_20

    :cond_2e
    move/from16 v42, v5

    move/from16 v44, v10

    move/from16 v45, v13

    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "size: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v12, LP0/l;->e:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "x"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v12, LP0/l;->f:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "\npalette: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-static {v5}, LP3/r;->on(Ljava/lang/String;)LP3/r;

    move-result-object v5

    invoke-virtual {v5, v4}, LP3/r;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 95
    invoke-static {v2}, Landroidx/media3/common/util/Util;->getUtf8Bytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    const-string v4, "application/vobsub"

    goto/16 :goto_1e

    :cond_2f
    move/from16 v42, v5

    move/from16 v44, v10

    move/from16 v45, v13

    move-object/from16 v2, v17

    move-object v4, v2

    goto/16 :goto_1e

    :goto_21
    if-eqz v4, :cond_30

    .line 96
    new-instance v5, Landroidx/media3/common/Format$Builder;

    invoke-direct {v5}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 97
    invoke-virtual {v5, v6}, Landroidx/media3/common/Format$Builder;->setId(I)Landroidx/media3/common/Format$Builder;

    move-result-object v5

    .line 98
    invoke-virtual {v5, v4}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v4

    .line 99
    invoke-virtual {v4, v15}, Landroidx/media3/common/Format$Builder;->setLanguage(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v4

    .line 100
    invoke-virtual {v4, v10, v11}, Landroidx/media3/common/Format$Builder;->setSubsampleOffsetUs(J)Landroidx/media3/common/Format$Builder;

    move-result-object v4

    .line 101
    invoke-virtual {v4, v2}, Landroidx/media3/common/Format$Builder;->setInitializationData(Ljava/util/List;)Landroidx/media3/common/Format$Builder;

    move-result-object v2

    .line 102
    invoke-virtual {v2}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v2

    iput-object v2, v9, LP0/i;->b:Landroidx/media3/common/Format;

    :cond_30
    :goto_22
    move v4, v1

    move-object v1, v3

    move/from16 v47, v7

    move/from16 v15, v26

    move-object/from16 v0, v43

    move/from16 v10, v44

    move/from16 v13, v45

    const/4 v11, 0x1

    const/4 v14, -0x1

    const/16 v16, 0x10

    const/16 v28, 0x0

    const v29, 0x6d657474

    const/16 v34, 0xc

    goto/16 :goto_52

    .line 103
    :cond_31
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_32
    move/from16 v42, v5

    move/from16 v44, v10

    move/from16 v45, v13

    const/16 v16, 0x10

    :goto_23
    add-int/lit8 v4, v7, 0x10

    .line 104
    invoke-virtual {v3, v4}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    const/4 v4, 0x6

    if-eqz p6, :cond_33

    .line 105
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v5

    .line 106
    invoke-virtual {v3, v4}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_24

    :cond_33
    move/from16 v5, v26

    .line 107
    invoke-virtual {v3, v5}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    const/4 v5, 0x0

    :goto_24
    const/16 v13, 0x20

    if-eqz v5, :cond_40

    const/4 v10, 0x1

    if-ne v5, v10, :cond_34

    goto/16 :goto_2b

    :cond_34
    move/from16 v19, v10

    move/from16 v10, v23

    if-ne v5, v10, :cond_3f

    const/16 v4, 0x10

    .line 108
    invoke-virtual {v3, v4}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 109
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readDouble()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v4, v4

    .line 110
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v5

    const/4 v10, 0x4

    .line 111
    invoke-virtual {v3, v10}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 112
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v10

    .line 113
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v46

    and-int/lit8 v47, v46, 0x1

    if-eqz v47, :cond_35

    const/16 v47, 0x1

    :goto_25
    const/16 v23, 0x2

    goto :goto_26

    :cond_35
    const/16 v47, 0x0

    goto :goto_25

    :goto_26
    and-int/lit8 v46, v46, 0x2

    if-eqz v46, :cond_36

    const/16 v46, 0x1

    goto :goto_27

    :cond_36
    const/16 v46, 0x0

    :goto_27
    if-nez v47, :cond_3d

    const/16 v11, 0x8

    if-ne v10, v11, :cond_37

    move/from16 v10, v18

    goto :goto_29

    :cond_37
    const/16 v11, 0x10

    if-ne v10, v11, :cond_39

    if-eqz v46, :cond_38

    const/high16 v10, 0x10000000

    goto :goto_28

    :cond_38
    const/4 v10, 0x2

    :goto_28
    const/16 v11, 0x8

    goto :goto_29

    :cond_39
    const/16 v11, 0x18

    if-ne v10, v11, :cond_3b

    if-eqz v46, :cond_3a

    const/high16 v10, 0x50000000

    goto :goto_28

    :cond_3a
    const/16 v10, 0x15

    goto :goto_28

    :cond_3b
    if-ne v10, v13, :cond_3e

    if-eqz v46, :cond_3c

    const/high16 v10, 0x60000000

    goto :goto_28

    :cond_3c
    const/16 v10, 0x16

    goto :goto_28

    :cond_3d
    if-ne v10, v13, :cond_3e

    const/4 v10, 0x4

    goto :goto_28

    :cond_3e
    const/4 v10, -0x1

    goto :goto_28

    .line 114
    :goto_29
    invoke-virtual {v3, v11}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    move v13, v4

    move v4, v10

    const/4 v11, 0x0

    move v10, v5

    :goto_2a
    const v5, 0x69616d66

    goto :goto_2d

    :cond_3f
    move/from16 v36, v1

    move/from16 v47, v7

    move-object/from16 v27, v12

    const/4 v14, -0x1

    const/16 v19, 0x1

    const/16 v26, 0x8

    const/16 v34, 0xc

    goto/16 :goto_50

    .line 115
    :cond_40
    :goto_2b
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v10

    .line 116
    invoke-virtual {v3, v4}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 117
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedFixedPoint1616()I

    move-result v4

    .line 118
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v11

    const/16 v35, 0x4

    add-int/lit8 v11, v11, -0x4

    invoke-virtual {v3, v11}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 119
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v11

    const/4 v13, 0x1

    if-ne v5, v13, :cond_41

    const/16 v5, 0x10

    .line 120
    invoke-virtual {v3, v5}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_2c

    :cond_41
    const/16 v5, 0x10

    :goto_2c
    move v13, v4

    const/4 v4, -0x1

    goto :goto_2a

    :goto_2d
    if-ne v2, v5, :cond_42

    const/4 v5, -0x1

    const/4 v10, -0x1

    goto :goto_2f

    :cond_42
    const v5, 0x73616d72

    if-ne v2, v5, :cond_43

    const/16 v5, 0x1f40

    :goto_2e
    const/4 v10, 0x1

    goto :goto_2f

    :cond_43
    const v5, 0x73617762

    if-ne v2, v5, :cond_44

    const/16 v5, 0x3e80

    goto :goto_2e

    :cond_44
    move v5, v13

    .line 121
    :goto_2f
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v13

    move/from16 v48, v5

    const v5, 0x656e6361

    if-ne v2, v5, :cond_47

    .line 122
    invoke-static {v3, v7, v1}, LP0/n;->c(Landroidx/media3/common/util/ParsableByteArray;II)Landroid/util/Pair;

    move-result-object v5

    if-eqz v5, :cond_46

    .line 123
    iget-object v2, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v8, :cond_45

    move/from16 v47, v2

    move-object/from16 v2, v17

    goto :goto_30

    :cond_45
    move/from16 v47, v2

    .line 124
    iget-object v2, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, LP0/K;

    iget-object v2, v2, LP0/K;->b:Ljava/lang/String;

    invoke-virtual {v8, v2}, Landroidx/media3/common/DrmInitData;->copyWithSchemeType(Ljava/lang/String;)Landroidx/media3/common/DrmInitData;

    move-result-object v2

    .line 125
    :goto_30
    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, LP0/K;

    move-object/from16 v49, v2

    iget-object v2, v9, LP0/i;->a:[LP0/K;

    aput-object v5, v2, v44

    move/from16 v2, v47

    goto :goto_31

    :cond_46
    move-object/from16 v49, v8

    .line 126
    :goto_31
    invoke-virtual {v3, v13}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    move-object/from16 v5, v49

    :goto_32
    move/from16 v47, v7

    goto :goto_33

    :cond_47
    move-object v5, v8

    goto :goto_32

    .line 127
    :goto_33
    const-string v7, "audio/mhm1"

    const-string v49, "audio/raw"

    const v8, 0x61632d33

    if-ne v2, v8, :cond_48

    .line 128
    const-string v8, "audio/ac3"

    goto/16 :goto_37

    :cond_48
    const v8, 0x65632d33

    if-ne v2, v8, :cond_49

    .line 129
    const-string v8, "audio/eac3"

    goto/16 :goto_37

    :cond_49
    const v8, 0x61632d34

    if-ne v2, v8, :cond_4a

    .line 130
    const-string v8, "audio/ac4"

    goto/16 :goto_37

    :cond_4a
    const v8, 0x64747363

    if-ne v2, v8, :cond_4b

    .line 131
    const-string v8, "audio/vnd.dts"

    goto/16 :goto_37

    :cond_4b
    const v8, 0x64747368

    if-eq v2, v8, :cond_60

    const v8, 0x6474736c

    if-ne v2, v8, :cond_4c

    goto/16 :goto_36

    :cond_4c
    const v8, 0x64747365

    if-ne v2, v8, :cond_4d

    .line 132
    const-string v8, "audio/vnd.dts.hd;profile=lbr"

    goto/16 :goto_37

    :cond_4d
    const v8, 0x64747378

    if-ne v2, v8, :cond_4e

    .line 133
    const-string v8, "audio/vnd.dts.uhd;profile=p2"

    goto/16 :goto_37

    :cond_4e
    const v8, 0x73616d72

    if-ne v2, v8, :cond_4f

    .line 134
    const-string v8, "audio/3gpp"

    goto/16 :goto_37

    :cond_4f
    const v8, 0x73617762

    if-ne v2, v8, :cond_50

    .line 135
    const-string v8, "audio/amr-wb"

    goto/16 :goto_37

    :cond_50
    const v8, 0x736f7774

    if-ne v2, v8, :cond_51

    :goto_34
    move-object/from16 v8, v49

    const/4 v4, 0x2

    goto/16 :goto_37

    :cond_51
    const v8, 0x74776f73

    if-ne v2, v8, :cond_52

    move-object/from16 v8, v49

    const/high16 v4, 0x10000000

    goto/16 :goto_37

    :cond_52
    const v8, 0x6c70636d

    if-ne v2, v8, :cond_54

    const/4 v8, -0x1

    if-ne v4, v8, :cond_53

    goto :goto_34

    :cond_53
    move-object/from16 v8, v49

    goto/16 :goto_37

    :cond_54
    const v8, 0x2e6d7032

    if-eq v2, v8, :cond_5f

    const v8, 0x2e6d7033

    if-ne v2, v8, :cond_55

    goto :goto_35

    :cond_55
    const v8, 0x6d686131

    if-ne v2, v8, :cond_56

    .line 136
    const-string v8, "audio/mha1"

    goto :goto_37

    :cond_56
    const v8, 0x6d686d31

    if-ne v2, v8, :cond_57

    move-object v8, v7

    goto :goto_37

    :cond_57
    const v8, 0x616c6163

    if-ne v2, v8, :cond_58

    .line 137
    const-string v8, "audio/alac"

    goto :goto_37

    :cond_58
    const v8, 0x616c6177

    if-ne v2, v8, :cond_59

    .line 138
    const-string v8, "audio/g711-alaw"

    goto :goto_37

    :cond_59
    const v8, 0x756c6177

    if-ne v2, v8, :cond_5a

    .line 139
    const-string v8, "audio/g711-mlaw"

    goto :goto_37

    :cond_5a
    const v8, 0x4f707573

    if-ne v2, v8, :cond_5b

    .line 140
    const-string v8, "audio/opus"

    goto :goto_37

    :cond_5b
    const v8, 0x664c6143

    if-ne v2, v8, :cond_5c

    .line 141
    const-string v8, "audio/flac"

    goto :goto_37

    :cond_5c
    const v8, 0x6d6c7061

    if-ne v2, v8, :cond_5d

    .line 142
    const-string v8, "audio/true-hd"

    goto :goto_37

    :cond_5d
    const v8, 0x69616d66

    if-ne v2, v8, :cond_5e

    .line 143
    const-string v8, "audio/iamf"

    goto :goto_37

    :cond_5e
    move-object/from16 v8, v17

    goto :goto_37

    .line 144
    :cond_5f
    :goto_35
    const-string v8, "audio/mpeg"

    goto :goto_37

    .line 145
    :cond_60
    :goto_36
    const-string v8, "audio/vnd.dts.hd"

    :goto_37
    move/from16 v32, v4

    move-object/from16 v27, v12

    move v0, v13

    move-object/from16 v4, v17

    move-object/from16 v33, v4

    move-object/from16 v50, v33

    move-object/from16 v51, v50

    move v13, v10

    move-object v10, v8

    move/from16 v8, v48

    :goto_38
    sub-int v12, v0, v47

    if-ge v12, v1, :cond_85

    .line 146
    invoke-virtual {v3, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 147
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v12

    move/from16 v36, v1

    if-lez v12, :cond_61

    const/4 v1, 0x1

    goto :goto_39

    :cond_61
    const/4 v1, 0x0

    .line 148
    :goto_39
    invoke-static {v1, v14}, Lv0/G;->checkContainerInput(ZLjava/lang/String;)V

    .line 149
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    move-object/from16 v37, v14

    const v14, 0x6d686143

    if-ne v1, v14, :cond_65

    const/16 v26, 0x8

    add-int/lit8 v1, v0, 0x8

    .line 150
    invoke-virtual {v3, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    const/4 v1, 0x1

    .line 151
    invoke-virtual {v3, v1}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 152
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v14

    .line 153
    invoke-virtual {v3, v1}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 154
    invoke-static {v10, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_62

    .line 155
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v39, v7

    new-array v7, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v14, v7, v1

    const-string v14, "mhm1.%02X"

    invoke-static {v14, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    move/from16 v28, v1

    move-object v1, v7

    goto :goto_3a

    :cond_62
    move-object/from16 v39, v7

    const/4 v1, 0x0

    .line 156
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move/from16 v28, v1

    const/4 v14, 0x1

    new-array v1, v14, [Ljava/lang/Object;

    aput-object v7, v1, v28

    const-string v7, "mha1.%02X"

    invoke-static {v7, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 157
    :goto_3a
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v7

    .line 158
    new-array v14, v7, [B

    move-object/from16 v33, v1

    move/from16 v1, v28

    .line 159
    invoke-virtual {v3, v14, v1, v7}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    if-nez v4, :cond_63

    .line 160
    invoke-static {v14}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    goto :goto_3b

    .line 161
    :cond_63
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-static {v14, v4}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    move-object v4, v1

    :cond_64
    :goto_3b
    move v7, v0

    move/from16 v40, v11

    move-object/from16 v1, v37

    const/4 v14, -0x1

    const/16 v19, 0x1

    const/16 v26, 0x8

    const/16 v34, 0xc

    goto/16 :goto_4e

    :cond_65
    move-object/from16 v39, v7

    const v7, 0x6d686150

    if-ne v1, v7, :cond_67

    const/16 v26, 0x8

    add-int/lit8 v1, v0, 0x8

    .line 162
    invoke-virtual {v3, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 163
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    if-lez v1, :cond_64

    .line 164
    new-array v7, v1, [B

    const/4 v14, 0x0

    .line 165
    invoke-virtual {v3, v7, v14, v1}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    if-nez v4, :cond_66

    .line 166
    invoke-static {v7}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    goto :goto_3b

    .line 167
    :cond_66
    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-static {v1, v7}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    goto :goto_3b

    :cond_67
    const v7, 0x65736473

    if-eq v1, v7, :cond_7b

    if-eqz p6, :cond_68

    const v7, 0x77617665

    if-ne v1, v7, :cond_68

    move/from16 v40, v0

    move v0, v8

    const v7, 0x65736473

    const v8, 0x616c6163

    const/4 v14, 0x4

    const/16 v19, 0x1

    const/16 v26, 0x8

    const/16 v34, 0xc

    goto/16 :goto_45

    :cond_68
    const v7, 0x62747274

    if-ne v1, v7, :cond_69

    const/16 v26, 0x8

    add-int/lit8 v1, v0, 0x8

    .line 168
    invoke-virtual {v3, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    const/4 v1, 0x4

    .line 169
    invoke-virtual {v3, v1}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    move v7, v0

    .line 170
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v0

    move/from16 v40, v7

    move v14, v8

    .line 171
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v7

    move/from16 v41, v14

    .line 172
    new-instance v14, LP0/b;

    invoke-direct {v14, v7, v8, v0, v1}, LP0/b;-><init>(JJ)V

    move-object/from16 v51, v14

    :goto_3c
    move-object/from16 v1, v37

    move/from16 v7, v40

    move/from16 v8, v41

    const/4 v14, -0x1

    const/16 v19, 0x1

    const/16 v34, 0xc

    :goto_3d
    move/from16 v40, v11

    goto/16 :goto_4e

    :cond_69
    move/from16 v40, v0

    move/from16 v41, v8

    const/16 v26, 0x8

    const v0, 0x64616333

    if-ne v1, v0, :cond_6a

    add-int/lit8 v0, v40, 0x8

    .line 173
    invoke-virtual {v3, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 174
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v15, v5}, Lv0/d;->parseAc3AnnexFFormat(Landroidx/media3/common/util/ParsableByteArray;Ljava/lang/String;Ljava/lang/String;Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/Format;

    move-result-object v0

    iput-object v0, v9, LP0/i;->b:Landroidx/media3/common/Format;

    :goto_3e
    move/from16 v1, v41

    const/16 v7, 0x20

    const v8, 0x616c6163

    const/4 v14, 0x4

    const/16 v19, 0x1

    :goto_3f
    const/16 v34, 0xc

    goto/16 :goto_44

    :cond_6a
    const v0, 0x64656333

    if-ne v1, v0, :cond_6b

    add-int/lit8 v0, v40, 0x8

    .line 175
    invoke-virtual {v3, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 176
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v15, v5}, Lv0/d;->parseEAc3AnnexFFormat(Landroidx/media3/common/util/ParsableByteArray;Ljava/lang/String;Ljava/lang/String;Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/Format;

    move-result-object v0

    iput-object v0, v9, LP0/i;->b:Landroidx/media3/common/Format;

    goto :goto_3e

    :cond_6b
    const v0, 0x64616334

    if-ne v1, v0, :cond_6c

    add-int/lit8 v0, v40, 0x8

    .line 177
    invoke-virtual {v3, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 178
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v15, v5}, Lv0/g;->parseAc4AnnexEFormat(Landroidx/media3/common/util/ParsableByteArray;Ljava/lang/String;Ljava/lang/String;Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/Format;

    move-result-object v0

    iput-object v0, v9, LP0/i;->b:Landroidx/media3/common/Format;

    move/from16 v1, v41

    const/16 v7, 0x20

    const v8, 0x616c6163

    const/4 v14, 0x4

    const/16 v19, 0x1

    const/16 v26, 0x8

    goto :goto_3f

    :cond_6c
    const v0, 0x646d6c70

    if-ne v1, v0, :cond_6e

    if-lez v11, :cond_6d

    move v8, v11

    move-object/from16 v1, v37

    move/from16 v7, v40

    const/4 v13, 0x2

    const/4 v14, -0x1

    const/16 v19, 0x1

    const/16 v26, 0x8

    const/16 v34, 0xc

    move/from16 v40, v8

    goto/16 :goto_4e

    .line 179
    :cond_6d
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid sample rate for Dolby TrueHD MLP stream: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_6e
    const v0, 0x64647473

    if-eq v1, v0, :cond_6f

    const v0, 0x75647473

    if-ne v1, v0, :cond_70

    :cond_6f
    const/16 v7, 0x20

    const v8, 0x616c6163

    const/4 v14, 0x4

    const/16 v19, 0x1

    const/16 v26, 0x8

    const/16 v34, 0xc

    goto/16 :goto_43

    :cond_70
    const v0, 0x644f7073

    if-ne v1, v0, :cond_71

    const/16 v26, 0x8

    add-int/lit8 v0, v12, -0x8

    .line 180
    sget-object v1, LP0/n;->a:[B

    array-length v4, v1

    add-int/2addr v4, v0

    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v4

    add-int/lit8 v7, v40, 0x8

    .line 181
    invoke-virtual {v3, v7}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 182
    array-length v1, v1

    invoke-virtual {v3, v4, v1, v0}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 183
    invoke-static {v4}, Lv0/b0;->buildInitializationData([B)Ljava/util/List;

    move-result-object v4

    goto/16 :goto_3c

    :cond_71
    const/16 v26, 0x8

    const v0, 0x64664c61

    if-ne v1, v0, :cond_72

    const/16 v34, 0xc

    add-int/lit8 v0, v12, -0xc

    add-int/lit8 v1, v12, -0x8

    .line 184
    new-array v1, v1, [B

    const/16 v4, 0x66

    const/16 v28, 0x0

    .line 185
    aput-byte v4, v1, v28

    const/16 v4, 0x4c

    const/16 v19, 0x1

    .line 186
    aput-byte v4, v1, v19

    const/16 v23, 0x2

    .line 187
    aput-byte p1, v1, v23

    const/16 v4, 0x43

    .line 188
    aput-byte v4, v1, v18

    add-int/lit8 v4, v40, 0xc

    .line 189
    invoke-virtual {v3, v4}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    const/4 v14, 0x4

    .line 190
    invoke-virtual {v3, v1, v14, v0}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 191
    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    move-object/from16 v1, v37

    move/from16 v7, v40

    move/from16 v8, v41

    const/4 v14, -0x1

    const/16 v19, 0x1

    goto/16 :goto_3d

    :cond_72
    const v8, 0x616c6163

    const/4 v14, 0x4

    const/16 v34, 0xc

    if-ne v1, v8, :cond_73

    add-int/lit8 v0, v12, -0xc

    .line 192
    new-array v1, v0, [B

    add-int/lit8 v4, v40, 0xc

    .line 193
    invoke-virtual {v3, v4}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    const/4 v4, 0x0

    .line 194
    invoke-virtual {v3, v1, v4, v0}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 195
    invoke-static {v1}, Landroidx/media3/common/util/CodecSpecificDataUtil;->parseAlacAudioSpecificConfig([B)[I

    move-result-object v0

    .line 196
    aget v7, v0, v4

    const/16 v19, 0x1

    .line 197
    aget v4, v0, v19

    const/16 v23, 0x2

    .line 198
    aget v0, v0, v23

    .line 199
    invoke-static {v0}, Landroidx/media3/common/util/Util;->getPcmEncoding(I)I

    move-result v0

    .line 200
    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    move/from16 v32, v0

    move v13, v4

    move v8, v7

    move/from16 v7, v40

    const/4 v14, -0x1

    const/16 v19, 0x1

    const/16 v34, 0xc

    move-object v4, v1

    move/from16 v40, v11

    move-object/from16 v1, v37

    goto/16 :goto_4e

    :cond_73
    const v0, 0x69616362

    if-ne v1, v0, :cond_74

    add-int/lit8 v0, v40, 0x9

    .line 201
    invoke-virtual {v3, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 202
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedLeb128ToInt()I

    move-result v0

    .line 203
    new-array v1, v0, [B

    const/4 v7, 0x0

    .line 204
    invoke-virtual {v3, v1, v7, v0}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 205
    invoke-static {v1}, Landroidx/media3/common/util/CodecSpecificDataUtil;->buildIamfCodecString([B)Ljava/lang/String;

    move-result-object v0

    .line 206
    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    move-object/from16 v33, v0

    goto/16 :goto_3c

    :cond_74
    const/4 v7, 0x0

    const v0, 0x70636d43

    if-ne v1, v0, :cond_7a

    const/16 v34, 0xc

    add-int/lit8 v0, v40, 0xc

    .line 207
    invoke-virtual {v3, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 208
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    const/16 v19, 0x1

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_75

    .line 209
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_40

    :cond_75
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 210
    :goto_40
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    const v7, 0x6970636d

    if-ne v2, v7, :cond_76

    .line 211
    invoke-static {v1, v0}, Landroidx/media3/common/util/Util;->getPcmEncoding(ILjava/nio/ByteOrder;)I

    move-result v0

    const/4 v1, -0x1

    const/16 v7, 0x20

    goto :goto_42

    :cond_76
    const v7, 0x6670636d

    if-ne v2, v7, :cond_77

    const/16 v7, 0x20

    if-ne v1, v7, :cond_78

    .line 212
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 213
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_78

    move v0, v14

    :goto_41
    const/4 v1, -0x1

    goto :goto_42

    :cond_77
    const/16 v7, 0x20

    :cond_78
    move/from16 v0, v32

    goto :goto_41

    :goto_42
    move/from16 v32, v0

    move v14, v1

    if-eq v0, v1, :cond_79

    move-object/from16 v1, v37

    move/from16 v7, v40

    move/from16 v8, v41

    move-object/from16 v10, v49

    goto/16 :goto_3d

    :cond_79
    move-object/from16 v1, v37

    move/from16 v7, v40

    move/from16 v8, v41

    goto/16 :goto_3d

    :cond_7a
    const/16 v7, 0x20

    const/16 v19, 0x1

    const/16 v34, 0xc

    move/from16 v1, v41

    goto :goto_44

    .line 214
    :goto_43
    new-instance v0, Landroidx/media3/common/Format$Builder;

    invoke-direct {v0}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 215
    invoke-virtual {v0, v6}, Landroidx/media3/common/Format$Builder;->setId(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    .line 216
    invoke-virtual {v0, v10}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    .line 217
    invoke-virtual {v0, v13}, Landroidx/media3/common/Format$Builder;->setChannelCount(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    move/from16 v1, v41

    .line 218
    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setSampleRate(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    .line 219
    invoke-virtual {v0, v5}, Landroidx/media3/common/Format$Builder;->setDrmInitData(Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    .line 220
    invoke-virtual {v0, v15}, Landroidx/media3/common/Format$Builder;->setLanguage(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    .line 221
    invoke-virtual {v0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v0

    iput-object v0, v9, LP0/i;->b:Landroidx/media3/common/Format;

    :goto_44
    move v8, v1

    move-object/from16 v1, v37

    move/from16 v7, v40

    const/4 v14, -0x1

    goto/16 :goto_3d

    :cond_7b
    move/from16 v40, v0

    move v0, v8

    const v8, 0x616c6163

    const/4 v14, 0x4

    const/16 v19, 0x1

    const/16 v26, 0x8

    const/16 v34, 0xc

    const v7, 0x65736473

    :goto_45
    if-ne v1, v7, :cond_7c

    move-object/from16 v1, v37

    move/from16 v8, v40

    move/from16 v40, v11

    move v11, v7

    move v7, v8

    :goto_46
    const/4 v14, -0x1

    goto :goto_4b

    .line 222
    :cond_7c
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v1

    move/from16 v7, v40

    if-lt v1, v7, :cond_7d

    move/from16 v8, v19

    :goto_47
    const/4 v14, 0x0

    goto :goto_48

    :cond_7d
    const/4 v8, 0x0

    goto :goto_47

    .line 223
    :goto_48
    invoke-static {v8, v14}, Lv0/G;->checkContainerInput(ZLjava/lang/String;)V

    move v8, v1

    :goto_49
    sub-int v1, v8, v7

    if-ge v1, v12, :cond_80

    .line 224
    invoke-virtual {v3, v8}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 225
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    move-object/from16 v14, v37

    move/from16 v37, v1

    if-lez v1, :cond_7e

    move-object v1, v14

    move/from16 v14, v19

    goto :goto_4a

    :cond_7e
    move-object v1, v14

    const/4 v14, 0x0

    .line 226
    :goto_4a
    invoke-static {v14, v1}, Lv0/G;->checkContainerInput(ZLjava/lang/String;)V

    .line 227
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v14

    move/from16 v40, v11

    const v11, 0x65736473

    if-ne v14, v11, :cond_7f

    goto :goto_46

    :cond_7f
    add-int v8, v8, v37

    move-object/from16 v37, v1

    move/from16 v11, v40

    const/4 v14, 0x0

    goto :goto_49

    :cond_80
    move/from16 v40, v11

    move-object/from16 v1, v37

    const v11, 0x65736473

    const/4 v8, -0x1

    goto :goto_46

    :goto_4b
    if-eq v8, v14, :cond_82

    .line 228
    invoke-static {v8, v3}, LP0/n;->a(ILandroidx/media3/common/util/ParsableByteArray;)LP0/d;

    move-result-object v8

    .line 229
    iget-object v10, v8, LP0/d;->a:Ljava/lang/String;

    iget-object v11, v8, LP0/d;->b:[B

    if-eqz v11, :cond_81

    .line 230
    const-string v4, "audio/vorbis"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_83

    .line 231
    invoke-static {v11}, Lv0/x0;->parseVorbisCsdFromEsdsInitializationData([B)Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    :cond_81
    :goto_4c
    move-object/from16 v50, v8

    :cond_82
    move v8, v0

    move-object v0, v10

    move v10, v13

    goto :goto_4d

    .line 232
    :cond_83
    const-string v4, "audio/mp4a-latm"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_84

    .line 233
    invoke-static {v11}, Lv0/b;->parseAudioSpecificConfig([B)Lv0/a;

    move-result-object v0

    .line 234
    iget v4, v0, Lv0/a;->a:I

    .line 235
    iget v13, v0, Lv0/a;->b:I

    iget-object v0, v0, Lv0/a;->c:Ljava/lang/String;

    move-object/from16 v33, v0

    move v0, v4

    .line 236
    :cond_84
    invoke-static {v11}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    goto :goto_4c

    :goto_4d
    move v13, v10

    move-object v10, v0

    :goto_4e
    add-int v0, v7, v12

    move-object v14, v1

    move/from16 v1, v36

    move-object/from16 v7, v39

    move/from16 v11, v40

    const/16 v17, 0x0

    goto/16 :goto_38

    :cond_85
    move/from16 v36, v1

    move v0, v8

    const/4 v14, -0x1

    const/16 v19, 0x1

    const/16 v26, 0x8

    const/16 v34, 0xc

    .line 237
    iget-object v1, v9, LP0/i;->b:Landroidx/media3/common/Format;

    if-nez v1, :cond_88

    if-eqz v10, :cond_88

    .line 238
    new-instance v1, Landroidx/media3/common/Format$Builder;

    invoke-direct {v1}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 239
    invoke-virtual {v1, v6}, Landroidx/media3/common/Format$Builder;->setId(I)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    .line 240
    invoke-virtual {v1, v10}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    move-object/from16 v2, v33

    .line 241
    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->setCodecs(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    .line 242
    invoke-virtual {v1, v13}, Landroidx/media3/common/Format$Builder;->setChannelCount(I)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    .line 243
    invoke-virtual {v1, v0}, Landroidx/media3/common/Format$Builder;->setSampleRate(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    move/from16 v1, v32

    .line 244
    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setPcmEncoding(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    .line 245
    invoke-virtual {v0, v4}, Landroidx/media3/common/Format$Builder;->setInitializationData(Ljava/util/List;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    .line 246
    invoke-virtual {v0, v5}, Landroidx/media3/common/Format$Builder;->setDrmInitData(Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    .line 247
    invoke-virtual {v0, v15}, Landroidx/media3/common/Format$Builder;->setLanguage(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    move-object/from16 v1, v50

    if-eqz v1, :cond_86

    .line 248
    iget-wide v4, v1, LP0/d;->c:J

    invoke-static {v4, v5}, Lcom/google/common/primitives/a;->saturatedCast(J)I

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/media3/common/Format$Builder;->setAverageBitrate(I)Landroidx/media3/common/Format$Builder;

    move-result-object v2

    .line 249
    iget-wide v4, v1, LP0/d;->d:J

    invoke-static {v4, v5}, Lcom/google/common/primitives/a;->saturatedCast(J)I

    move-result v1

    invoke-virtual {v2, v1}, Landroidx/media3/common/Format$Builder;->setPeakBitrate(I)Landroidx/media3/common/Format$Builder;

    goto :goto_4f

    :cond_86
    move-object/from16 v1, v51

    if-eqz v1, :cond_87

    .line 250
    iget-wide v4, v1, LP0/b;->a:J

    invoke-static {v4, v5}, Lcom/google/common/primitives/a;->saturatedCast(J)I

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/media3/common/Format$Builder;->setAverageBitrate(I)Landroidx/media3/common/Format$Builder;

    move-result-object v2

    .line 251
    iget-wide v4, v1, LP0/b;->b:J

    invoke-static {v4, v5}, Lcom/google/common/primitives/a;->saturatedCast(J)I

    move-result v1

    invoke-virtual {v2, v1}, Landroidx/media3/common/Format$Builder;->setPeakBitrate(I)Landroidx/media3/common/Format$Builder;

    .line 252
    :cond_87
    :goto_4f
    invoke-virtual {v0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v0

    iput-object v0, v9, LP0/i;->b:Landroidx/media3/common/Format;

    :cond_88
    :goto_50
    move-object v1, v3

    move/from16 v11, v19

    move/from16 v15, v26

    move-object/from16 v12, v27

    move/from16 v4, v36

    move-object/from16 v0, v43

    move/from16 v10, v44

    move/from16 v13, v45

    const/16 v16, 0x10

    const/16 v17, 0x0

    const/16 v28, 0x0

    const v29, 0x6d657474

    goto :goto_52

    .line 253
    :goto_51
    iget v7, v12, LP0/l;->d:I

    iget v5, v12, LP0/l;->a:I

    move-object/from16 v8, p4

    move-object v1, v3

    move-object v6, v15

    move/from16 v11, v19

    move/from16 v15, v26

    move/from16 v4, v36

    move-object/from16 v0, v43

    move/from16 v10, v44

    move/from16 v13, v45

    move/from16 v3, v47

    const/16 v16, 0x10

    const/16 v17, 0x0

    const/16 v28, 0x0

    const v29, 0x6d657474

    invoke-static/range {v1 .. v10}, LP0/n;->d(Landroidx/media3/common/util/ParsableByteArray;IIIILjava/lang/String;ILandroidx/media3/common/DrmInitData;LP0/i;I)V

    :goto_52
    add-int v7, v47, v4

    .line 254
    invoke-virtual {v1, v7}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    add-int/2addr v10, v11

    move-object/from16 v8, p4

    move-object v4, v0

    move-object v3, v1

    move/from16 v19, v11

    move v2, v13

    move v11, v14

    move v6, v15

    move/from16 v1, v16

    move/from16 v14, v18

    move/from16 v5, v42

    const/4 v15, 0x2

    move-object/from16 v0, p0

    move/from16 v13, p1

    goto/16 :goto_18

    :cond_89
    move v13, v2

    move-object v0, v4

    move v15, v6

    move/from16 v11, v19

    if-nez p5, :cond_8f

    const v1, 0x65647473

    move-object/from16 v2, p0

    .line 255
    invoke-virtual {v2, v1}, Ls0/d;->getContainerBoxOfType(I)Ls0/d;

    move-result-object v1

    if-eqz v1, :cond_8f

    const v2, 0x656c7374

    .line 256
    invoke-virtual {v1, v2}, Ls0/d;->getLeafBoxOfType(I)Ls0/e;

    move-result-object v1

    if-nez v1, :cond_8a

    move-object/from16 v10, v17

    goto :goto_56

    .line 257
    :cond_8a
    iget-object v1, v1, Ls0/e;->b:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v1, v15}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 258
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 259
    invoke-static {v2}, LP0/n;->parseFullBoxVersion(I)I

    move-result v2

    .line 260
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v3

    .line 261
    new-array v4, v3, [J

    .line 262
    new-array v5, v3, [J

    move/from16 v6, v28

    :goto_53
    if-ge v6, v3, :cond_8e

    if-ne v2, v11, :cond_8b

    .line 263
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v7

    goto :goto_54

    :cond_8b
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v7

    :goto_54
    aput-wide v7, v4, v6

    if-ne v2, v11, :cond_8c

    .line 264
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readLong()J

    move-result-wide v7

    goto :goto_55

    :cond_8c
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v7

    int-to-long v7, v7

    :goto_55
    aput-wide v7, v5, v6

    .line 265
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readShort()S

    move-result v7

    if-ne v7, v11, :cond_8d

    const/4 v10, 0x2

    .line 266
    invoke-virtual {v1, v10}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    add-int/2addr v6, v11

    goto :goto_53

    .line 267
    :cond_8d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported media rate."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 268
    :cond_8e
    invoke-static {v4, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v10

    :goto_56
    if-eqz v10, :cond_8f

    .line 269
    iget-object v1, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, [J

    .line 270
    iget-object v2, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v10, v2

    check-cast v10, [J

    move-object/from16 v32, v1

    move-object/from16 v33, v10

    goto :goto_57

    :cond_8f
    move-object/from16 v32, v17

    move-object/from16 v33, v32

    .line 271
    :goto_57
    iget-object v1, v9, LP0/i;->b:Landroidx/media3/common/Format;

    if-nez v1, :cond_90

    :goto_58
    return-object v17

    .line 272
    :cond_90
    iget v2, v12, LP0/l;->c:I

    if-eqz v2, :cond_92

    .line 273
    new-instance v1, Ls0/c;

    .line 274
    invoke-direct {v1, v2}, Ls0/c;-><init>(I)V

    .line 275
    iget-object v2, v9, LP0/i;->b:Landroidx/media3/common/Format;

    .line 276
    invoke-virtual {v2}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object v2

    .line 277
    iget-object v3, v9, LP0/i;->b:Landroidx/media3/common/Format;

    iget-object v3, v3, Landroidx/media3/common/Format;->metadata:Landroidx/media3/common/Metadata;

    if-eqz v3, :cond_91

    .line 278
    new-array v4, v11, [Landroidx/media3/common/Metadata$Entry;

    aput-object v1, v4, v28

    invoke-virtual {v3, v4}, Landroidx/media3/common/Metadata;->copyWithAppendedEntries([Landroidx/media3/common/Metadata$Entry;)Landroidx/media3/common/Metadata;

    move-result-object v1

    goto :goto_59

    .line 279
    :cond_91
    new-instance v3, Landroidx/media3/common/Metadata;

    new-array v4, v11, [Landroidx/media3/common/Metadata$Entry;

    aput-object v1, v4, v28

    invoke-direct {v3, v4}, Landroidx/media3/common/Metadata;-><init>([Landroidx/media3/common/Metadata$Entry;)V

    move-object v1, v3

    .line 280
    :goto_59
    invoke-virtual {v2, v1}, Landroidx/media3/common/Format$Builder;->setMetadata(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    .line 281
    invoke-virtual {v1}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v1

    :cond_92
    move-object/from16 v28, v1

    .line 282
    new-instance v17, LP0/J;

    .line 283
    iget v1, v9, LP0/i;->d:I

    iget-object v2, v9, LP0/i;->a:[LP0/K;

    iget v3, v9, LP0/i;->c:I

    iget-wide v4, v0, LP0/f;->a:J

    iget-wide v6, v0, LP0/f;->b:J

    iget v0, v12, LP0/l;->a:I

    move/from16 v18, v0

    move/from16 v29, v1

    move-object/from16 v30, v2

    move/from16 v31, v3

    move-wide/from16 v26, v6

    move/from16 v19, v13

    move-wide/from16 v22, v24

    move-wide/from16 v24, v20

    move-wide/from16 v20, v4

    invoke-direct/range {v17 .. v33}, LP0/J;-><init>(IIJJJJLandroidx/media3/common/Format;I[LP0/K;I[J[J)V

    return-object v17
.end method

.method public static parseTraks(Ls0/d;Lv0/U;JLandroidx/media3/common/DrmInitData;ZZLP3/p;Z)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls0/d;",
            "Lv0/U;",
            "J",
            "Landroidx/media3/common/DrmInitData;",
            "ZZ",
            "LP3/p;",
            "Z)",
            "Ljava/util/List<",
            "LP0/M;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    iget-object v2, p0, Ls0/d;->d:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-ge v1, v2, :cond_2

    .line 14
    .line 15
    iget-object v2, p0, Ls0/d;->d:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    move-object v3, v2

    .line 22
    check-cast v3, Ls0/d;

    .line 23
    .line 24
    iget v2, v3, Ls0/f;->a:I

    .line 25
    .line 26
    const v4, 0x7472616b

    .line 27
    .line 28
    .line 29
    if-eq v2, v4, :cond_0

    .line 30
    .line 31
    move-object/from16 v3, p7

    .line 32
    .line 33
    :goto_1
    move/from16 v5, p8

    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_0
    const v2, 0x6d766864

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v2}, Ls0/d;->getLeafBoxOfType(I)Ls0/e;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-static {v2}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    move-object v4, v2

    .line 48
    check-cast v4, Ls0/e;

    .line 49
    .line 50
    move-wide v5, p2

    .line 51
    move-object v7, p4

    .line 52
    move v8, p5

    .line 53
    move/from16 v9, p6

    .line 54
    .line 55
    invoke-static/range {v3 .. v9}, LP0/n;->parseTrak(Ls0/d;Ls0/e;JLandroidx/media3/common/DrmInitData;ZZ)LP0/J;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    move-object v4, v3

    .line 60
    move-object/from16 v3, p7

    .line 61
    .line 62
    invoke-interface {v3, v2}, LP3/p;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    check-cast v2, LP0/J;

    .line 67
    .line 68
    if-nez v2, :cond_1

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_1
    const v5, 0x6d646961

    .line 72
    .line 73
    .line 74
    invoke-virtual {v4, v5}, Ls0/d;->getContainerBoxOfType(I)Ls0/d;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    invoke-static {v4}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    check-cast v4, Ls0/d;

    .line 83
    .line 84
    const v5, 0x6d696e66

    .line 85
    .line 86
    .line 87
    invoke-virtual {v4, v5}, Ls0/d;->getContainerBoxOfType(I)Ls0/d;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    invoke-static {v4}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    check-cast v4, Ls0/d;

    .line 96
    .line 97
    const v5, 0x7374626c

    .line 98
    .line 99
    .line 100
    invoke-virtual {v4, v5}, Ls0/d;->getContainerBoxOfType(I)Ls0/d;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    invoke-static {v4}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    check-cast v4, Ls0/d;

    .line 109
    .line 110
    move/from16 v5, p8

    .line 111
    .line 112
    invoke-static {v2, v4, p1, v5}, LP0/n;->parseStbl(LP0/J;Ls0/d;Lv0/U;Z)LP0/M;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_2
    return-object v0
.end method

.method public static parseUdta(Ls0/e;)Landroidx/media3/common/Metadata;
    .locals 12

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object p0, p0, Ls0/e;->b:Landroidx/media3/common/util/ParsableByteArray;

    .line 3
    .line 4
    const/16 v1, 0x8

    .line 5
    .line 6
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 7
    .line 8
    .line 9
    new-instance v2, Landroidx/media3/common/Metadata;

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    new-array v4, v3, [Landroidx/media3/common/Metadata$Entry;

    .line 13
    .line 14
    invoke-direct {v2, v4}, Landroidx/media3/common/Metadata;-><init>([Landroidx/media3/common/Metadata$Entry;)V

    .line 15
    .line 16
    .line 17
    :goto_0
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    if-lt v4, v1, :cond_8

    .line 22
    .line 23
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    .line 32
    .line 33
    .line 34
    move-result v6

    .line 35
    const v7, 0x6d657461

    .line 36
    .line 37
    .line 38
    const/4 v8, 0x0

    .line 39
    if-ne v6, v7, :cond_5

    .line 40
    .line 41
    invoke-virtual {p0, v4}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 42
    .line 43
    .line 44
    add-int v6, v4, v5

    .line 45
    .line 46
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 47
    .line 48
    .line 49
    invoke-static {p0}, LP0/n;->maybeSkipRemainingMetaBoxHeaderBytes(Landroidx/media3/common/util/ParsableByteArray;)V

    .line 50
    .line 51
    .line 52
    :goto_1
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    .line 53
    .line 54
    .line 55
    move-result v7

    .line 56
    if-ge v7, v6, :cond_4

    .line 57
    .line 58
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    .line 59
    .line 60
    .line 61
    move-result v7

    .line 62
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    .line 63
    .line 64
    .line 65
    move-result v9

    .line 66
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    .line 67
    .line 68
    .line 69
    move-result v10

    .line 70
    const v11, 0x696c7374

    .line 71
    .line 72
    .line 73
    if-ne v10, v11, :cond_3

    .line 74
    .line 75
    invoke-virtual {p0, v7}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 76
    .line 77
    .line 78
    add-int/2addr v7, v9

    .line 79
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 80
    .line 81
    .line 82
    new-instance v6, Ljava/util/ArrayList;

    .line 83
    .line 84
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .line 86
    .line 87
    :cond_0
    :goto_2
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    .line 88
    .line 89
    .line 90
    move-result v9

    .line 91
    if-ge v9, v7, :cond_1

    .line 92
    .line 93
    invoke-static {p0}, LP0/w;->parseIlstElement(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/common/Metadata$Entry;

    .line 94
    .line 95
    .line 96
    move-result-object v9

    .line 97
    if-eqz v9, :cond_0

    .line 98
    .line 99
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 104
    .line 105
    .line 106
    move-result v7

    .line 107
    if-eqz v7, :cond_2

    .line 108
    .line 109
    goto :goto_3

    .line 110
    :cond_2
    new-instance v8, Landroidx/media3/common/Metadata;

    .line 111
    .line 112
    invoke-direct {v8, v6}, Landroidx/media3/common/Metadata;-><init>(Ljava/util/List;)V

    .line 113
    .line 114
    .line 115
    goto :goto_3

    .line 116
    :cond_3
    add-int/2addr v7, v9

    .line 117
    invoke-virtual {p0, v7}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 118
    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_4
    :goto_3
    invoke-virtual {v2, v8}, Landroidx/media3/common/Metadata;->copyWithAppendedEntriesFrom(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Metadata;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    goto :goto_4

    .line 126
    :cond_5
    const v7, 0x736d7461

    .line 127
    .line 128
    .line 129
    if-ne v6, v7, :cond_6

    .line 130
    .line 131
    invoke-virtual {p0, v4}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 132
    .line 133
    .line 134
    add-int v6, v4, v5

    .line 135
    .line 136
    invoke-static {p0, v6}, LP0/H;->parseSmta(Landroidx/media3/common/util/ParsableByteArray;I)Landroidx/media3/common/Metadata;

    .line 137
    .line 138
    .line 139
    move-result-object v6

    .line 140
    invoke-virtual {v2, v6}, Landroidx/media3/common/Metadata;->copyWithAppendedEntriesFrom(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Metadata;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    goto :goto_4

    .line 145
    :cond_6
    const v7, -0x56878686

    .line 146
    .line 147
    .line 148
    if-ne v6, v7, :cond_7

    .line 149
    .line 150
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readShort()S

    .line 151
    .line 152
    .line 153
    move-result v6

    .line 154
    const/4 v7, 0x2

    .line 155
    invoke-virtual {p0, v7}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p0, v6}, Landroidx/media3/common/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v6

    .line 162
    const/16 v7, 0x2b

    .line 163
    .line 164
    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(I)I

    .line 165
    .line 166
    .line 167
    move-result v7

    .line 168
    const/16 v9, 0x2d

    .line 169
    .line 170
    invoke-virtual {v6, v9}, Ljava/lang/String;->lastIndexOf(I)I

    .line 171
    .line 172
    .line 173
    move-result v9

    .line 174
    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    .line 175
    .line 176
    .line 177
    move-result v7

    .line 178
    :try_start_0
    invoke-virtual {v6, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v9

    .line 182
    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 183
    .line 184
    .line 185
    move-result v9

    .line 186
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 187
    .line 188
    .line 189
    move-result v10

    .line 190
    sub-int/2addr v10, v0

    .line 191
    invoke-virtual {v6, v7, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v6

    .line 195
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 196
    .line 197
    .line 198
    move-result v6

    .line 199
    new-instance v7, Landroidx/media3/common/Metadata;

    .line 200
    .line 201
    new-instance v10, Ls0/g;

    .line 202
    .line 203
    invoke-direct {v10, v9, v6}, Ls0/g;-><init>(FF)V

    .line 204
    .line 205
    .line 206
    new-array v6, v0, [Landroidx/media3/common/Metadata$Entry;

    .line 207
    .line 208
    aput-object v10, v6, v3

    .line 209
    .line 210
    invoke-direct {v7, v6}, Landroidx/media3/common/Metadata;-><init>([Landroidx/media3/common/Metadata$Entry;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    .line 212
    .line 213
    move-object v8, v7

    .line 214
    :catch_0
    invoke-virtual {v2, v8}, Landroidx/media3/common/Metadata;->copyWithAppendedEntriesFrom(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Metadata;

    .line 215
    .line 216
    .line 217
    move-result-object v2

    .line 218
    :cond_7
    :goto_4
    add-int/2addr v4, v5

    .line 219
    invoke-virtual {p0, v4}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 220
    .line 221
    .line 222
    goto/16 :goto_0

    .line 223
    .line 224
    :cond_8
    return-object v2
.end method
