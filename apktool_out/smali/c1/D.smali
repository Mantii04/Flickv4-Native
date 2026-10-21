.class public final Lc1/D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc1/X;


# instance fields
.field public final a:Lc1/j;

.field public final b:Landroidx/media3/common/util/ParsableBitArray;

.field public c:I

.field public d:I

.field public e:Landroidx/media3/common/util/TimestampAdjuster;

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:I

.field public j:I

.field public k:Z

.field public l:J


# direct methods
.method public constructor <init>(Lc1/j;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lc1/D;->a:Lc1/j;

    .line 5
    .line 6
    new-instance p1, Landroidx/media3/common/util/ParsableBitArray;

    .line 7
    .line 8
    const/16 v0, 0xa

    .line 9
    .line 10
    new-array v0, v0, [B

    .line 11
    .line 12
    invoke-direct {p1, v0}, Landroidx/media3/common/util/ParsableBitArray;-><init>([B)V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lc1/D;->b:Landroidx/media3/common/util/ParsableBitArray;

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    iput p1, p0, Lc1/D;->c:I

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final a(Landroidx/media3/common/util/ParsableByteArray;[BI)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lc1/D;->d:I

    .line 6
    .line 7
    sub-int v1, p3, v1

    .line 8
    .line 9
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-gtz v0, :cond_0

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    if-nez p2, :cond_1

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    iget v1, p0, Lc1/D;->d:I

    .line 23
    .line 24
    invoke-virtual {p1, p2, v1, v0}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 25
    .line 26
    .line 27
    :goto_0
    iget p1, p0, Lc1/D;->d:I

    .line 28
    .line 29
    add-int/2addr p1, v0

    .line 30
    iput p1, p0, Lc1/D;->d:I

    .line 31
    .line 32
    if-ne p1, p3, :cond_2

    .line 33
    .line 34
    :goto_1
    const/4 p1, 0x1

    .line 35
    return p1

    .line 36
    :cond_2
    const/4 p1, 0x0

    .line 37
    return p1
.end method

.method public final b()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lc1/D;->b:Landroidx/media3/common/util/ParsableBitArray;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->setPosition(I)V

    .line 5
    .line 6
    .line 7
    const/16 v2, 0x18

    .line 8
    .line 9
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const-string v3, "PesReader"

    .line 14
    .line 15
    const/4 v4, -0x1

    .line 16
    const/4 v5, 0x1

    .line 17
    if-eq v2, v5, :cond_0

    .line 18
    .line 19
    const-string v0, "Unexpected start code prefix: "

    .line 20
    .line 21
    invoke-static {v2, v0, v3}, LA/i;->v(ILjava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iput v4, p0, Lc1/D;->j:I

    .line 25
    .line 26
    return v1

    .line 27
    :cond_0
    const/16 v1, 0x8

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 30
    .line 31
    .line 32
    const/16 v2, 0x10

    .line 33
    .line 34
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    const/4 v6, 0x5

    .line 39
    invoke-virtual {v0, v6}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    .line 43
    .line 44
    .line 45
    move-result v6

    .line 46
    iput-boolean v6, p0, Lc1/D;->k:Z

    .line 47
    .line 48
    const/4 v6, 0x2

    .line 49
    invoke-virtual {v0, v6}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    .line 53
    .line 54
    .line 55
    move-result v6

    .line 56
    iput-boolean v6, p0, Lc1/D;->f:Z

    .line 57
    .line 58
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    .line 59
    .line 60
    .line 61
    move-result v6

    .line 62
    iput-boolean v6, p0, Lc1/D;->g:Z

    .line 63
    .line 64
    const/4 v6, 0x6

    .line 65
    invoke-virtual {v0, v6}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    iput v0, p0, Lc1/D;->i:I

    .line 73
    .line 74
    if-nez v2, :cond_1

    .line 75
    .line 76
    iput v4, p0, Lc1/D;->j:I

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_1
    add-int/lit8 v2, v2, -0x3

    .line 80
    .line 81
    sub-int/2addr v2, v0

    .line 82
    iput v2, p0, Lc1/D;->j:I

    .line 83
    .line 84
    if-gez v2, :cond_2

    .line 85
    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    const-string v1, "Found negative packet payload size: "

    .line 89
    .line 90
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    iget v1, p0, Lc1/D;->j:I

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-static {v3, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    iput v4, p0, Lc1/D;->j:I

    .line 106
    .line 107
    :cond_2
    :goto_0
    return v5
.end method

.method public canConsumeSynthesizedEmptyPusi(Z)Z
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Lc1/D;->b()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move v2, v1

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    move v2, v0

    .line 15
    :goto_1
    iget v3, p0, Lc1/D;->c:I

    .line 16
    .line 17
    const/4 v4, 0x3

    .line 18
    if-ne v3, v4, :cond_3

    .line 19
    .line 20
    iget v3, p0, Lc1/D;->j:I

    .line 21
    .line 22
    const/4 v4, -0x1

    .line 23
    if-ne v3, v4, :cond_3

    .line 24
    .line 25
    if-eqz p1, :cond_2

    .line 26
    .line 27
    iget-object p1, p0, Lc1/D;->a:Lc1/j;

    .line 28
    .line 29
    instance-of p1, p1, Lc1/l;

    .line 30
    .line 31
    if-nez p1, :cond_3

    .line 32
    .line 33
    :cond_2
    if-eqz v2, :cond_3

    .line 34
    .line 35
    return v0

    .line 36
    :cond_3
    return v1
.end method

.method public consume(Landroidx/media3/common/util/ParsableByteArray;I)V
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
    iget-object v2, v0, Lc1/D;->e:Landroidx/media3/common/util/TimestampAdjuster;

    .line 6
    .line 7
    invoke-static {v2}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    and-int/lit8 v2, p2, 0x1

    .line 11
    .line 12
    const/4 v3, 0x1

    .line 13
    const/4 v4, -0x1

    .line 14
    const/4 v5, 0x2

    .line 15
    iget-object v6, v0, Lc1/D;->a:Lc1/j;

    .line 16
    .line 17
    const/4 v7, 0x3

    .line 18
    const/4 v8, 0x0

    .line 19
    if-eqz v2, :cond_5

    .line 20
    .line 21
    iget v2, v0, Lc1/D;->c:I

    .line 22
    .line 23
    if-eqz v2, :cond_4

    .line 24
    .line 25
    if-eq v2, v3, :cond_4

    .line 26
    .line 27
    const-string v9, "PesReader"

    .line 28
    .line 29
    if-eq v2, v5, :cond_3

    .line 30
    .line 31
    if-ne v2, v7, :cond_2

    .line 32
    .line 33
    iget v2, v0, Lc1/D;->j:I

    .line 34
    .line 35
    if-eq v2, v4, :cond_0

    .line 36
    .line 37
    new-instance v2, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v10, "Unexpected start indicator: expected "

    .line 40
    .line 41
    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget v10, v0, Lc1/D;->j:I

    .line 45
    .line 46
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v10, " more bytes"

    .line 50
    .line 51
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-static {v9, v2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :cond_0
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-nez v2, :cond_1

    .line 66
    .line 67
    move v2, v3

    .line 68
    goto :goto_0

    .line 69
    :cond_1
    move v2, v8

    .line 70
    :goto_0
    invoke-interface {v6, v2}, Lc1/j;->packetFinished(Z)V

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 75
    .line 76
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 77
    .line 78
    .line 79
    throw v1

    .line 80
    :cond_3
    const-string v2, "Unexpected start indicator reading extended header"

    .line 81
    .line 82
    invoke-static {v9, v2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    :cond_4
    :goto_1
    iput v3, v0, Lc1/D;->c:I

    .line 86
    .line 87
    iput v8, v0, Lc1/D;->d:I

    .line 88
    .line 89
    :cond_5
    move/from16 v2, p2

    .line 90
    .line 91
    :goto_2
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 92
    .line 93
    .line 94
    move-result v9

    .line 95
    if-lez v9, :cond_11

    .line 96
    .line 97
    iget v9, v0, Lc1/D;->c:I

    .line 98
    .line 99
    if-eqz v9, :cond_10

    .line 100
    .line 101
    iget-object v10, v0, Lc1/D;->b:Landroidx/media3/common/util/ParsableBitArray;

    .line 102
    .line 103
    if-eq v9, v3, :cond_e

    .line 104
    .line 105
    if-eq v9, v5, :cond_9

    .line 106
    .line 107
    if-ne v9, v7, :cond_8

    .line 108
    .line 109
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 110
    .line 111
    .line 112
    move-result v9

    .line 113
    iget v10, v0, Lc1/D;->j:I

    .line 114
    .line 115
    if-ne v10, v4, :cond_6

    .line 116
    .line 117
    move v10, v8

    .line 118
    goto :goto_3

    .line 119
    :cond_6
    sub-int v10, v9, v10

    .line 120
    .line 121
    :goto_3
    if-lez v10, :cond_7

    .line 122
    .line 123
    sub-int/2addr v9, v10

    .line 124
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    .line 125
    .line 126
    .line 127
    move-result v10

    .line 128
    add-int/2addr v10, v9

    .line 129
    invoke-virtual {v1, v10}, Landroidx/media3/common/util/ParsableByteArray;->setLimit(I)V

    .line 130
    .line 131
    .line 132
    :cond_7
    invoke-interface {v6, v1}, Lc1/j;->consume(Landroidx/media3/common/util/ParsableByteArray;)V

    .line 133
    .line 134
    .line 135
    iget v10, v0, Lc1/D;->j:I

    .line 136
    .line 137
    if-eq v10, v4, :cond_d

    .line 138
    .line 139
    sub-int/2addr v10, v9

    .line 140
    iput v10, v0, Lc1/D;->j:I

    .line 141
    .line 142
    if-nez v10, :cond_d

    .line 143
    .line 144
    invoke-interface {v6, v8}, Lc1/j;->packetFinished(Z)V

    .line 145
    .line 146
    .line 147
    iput v3, v0, Lc1/D;->c:I

    .line 148
    .line 149
    iput v8, v0, Lc1/D;->d:I

    .line 150
    .line 151
    goto/16 :goto_5

    .line 152
    .line 153
    :cond_8
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 154
    .line 155
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 156
    .line 157
    .line 158
    throw v1

    .line 159
    :cond_9
    const/16 v9, 0xa

    .line 160
    .line 161
    iget v11, v0, Lc1/D;->i:I

    .line 162
    .line 163
    invoke-static {v9, v11}, Ljava/lang/Math;->min(II)I

    .line 164
    .line 165
    .line 166
    move-result v9

    .line 167
    iget-object v11, v10, Landroidx/media3/common/util/ParsableBitArray;->data:[B

    .line 168
    .line 169
    invoke-virtual {v0, v1, v11, v9}, Lc1/D;->a(Landroidx/media3/common/util/ParsableByteArray;[BI)Z

    .line 170
    .line 171
    .line 172
    move-result v9

    .line 173
    if-eqz v9, :cond_d

    .line 174
    .line 175
    const/4 v9, 0x0

    .line 176
    iget v11, v0, Lc1/D;->i:I

    .line 177
    .line 178
    invoke-virtual {v0, v1, v9, v11}, Lc1/D;->a(Landroidx/media3/common/util/ParsableByteArray;[BI)Z

    .line 179
    .line 180
    .line 181
    move-result v9

    .line 182
    if-eqz v9, :cond_d

    .line 183
    .line 184
    invoke-virtual {v10, v8}, Landroidx/media3/common/util/ParsableBitArray;->setPosition(I)V

    .line 185
    .line 186
    .line 187
    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    iput-wide v11, v0, Lc1/D;->l:J

    .line 193
    .line 194
    iget-boolean v9, v0, Lc1/D;->f:Z

    .line 195
    .line 196
    const/4 v11, 0x4

    .line 197
    if-eqz v9, :cond_b

    .line 198
    .line 199
    invoke-virtual {v10, v11}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v10, v7}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 203
    .line 204
    .line 205
    move-result v9

    .line 206
    int-to-long v12, v9

    .line 207
    const/16 v9, 0x1e

    .line 208
    .line 209
    shl-long/2addr v12, v9

    .line 210
    invoke-virtual {v10, v3}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 211
    .line 212
    .line 213
    const/16 v14, 0xf

    .line 214
    .line 215
    invoke-virtual {v10, v14}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 216
    .line 217
    .line 218
    move-result v15

    .line 219
    shl-int/2addr v15, v14

    .line 220
    int-to-long v4, v15

    .line 221
    or-long/2addr v4, v12

    .line 222
    invoke-virtual {v10, v3}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v10, v14}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 226
    .line 227
    .line 228
    move-result v12

    .line 229
    int-to-long v12, v12

    .line 230
    or-long/2addr v4, v12

    .line 231
    invoke-virtual {v10, v3}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 232
    .line 233
    .line 234
    iget-boolean v12, v0, Lc1/D;->h:Z

    .line 235
    .line 236
    if-nez v12, :cond_a

    .line 237
    .line 238
    iget-boolean v12, v0, Lc1/D;->g:Z

    .line 239
    .line 240
    if-eqz v12, :cond_a

    .line 241
    .line 242
    invoke-virtual {v10, v11}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v10, v7}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 246
    .line 247
    .line 248
    move-result v12

    .line 249
    int-to-long v12, v12

    .line 250
    shl-long/2addr v12, v9

    .line 251
    invoke-virtual {v10, v3}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v10, v14}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 255
    .line 256
    .line 257
    move-result v9

    .line 258
    shl-int/2addr v9, v14

    .line 259
    move-wide/from16 v16, v12

    .line 260
    .line 261
    int-to-long v11, v9

    .line 262
    or-long v11, v16, v11

    .line 263
    .line 264
    invoke-virtual {v10, v3}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v10, v14}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 268
    .line 269
    .line 270
    move-result v9

    .line 271
    int-to-long v13, v9

    .line 272
    or-long/2addr v11, v13

    .line 273
    invoke-virtual {v10, v3}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 274
    .line 275
    .line 276
    iget-object v9, v0, Lc1/D;->e:Landroidx/media3/common/util/TimestampAdjuster;

    .line 277
    .line 278
    invoke-virtual {v9, v11, v12}, Landroidx/media3/common/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    .line 279
    .line 280
    .line 281
    iput-boolean v3, v0, Lc1/D;->h:Z

    .line 282
    .line 283
    :cond_a
    iget-object v9, v0, Lc1/D;->e:Landroidx/media3/common/util/TimestampAdjuster;

    .line 284
    .line 285
    invoke-virtual {v9, v4, v5}, Landroidx/media3/common/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    .line 286
    .line 287
    .line 288
    move-result-wide v4

    .line 289
    iput-wide v4, v0, Lc1/D;->l:J

    .line 290
    .line 291
    :cond_b
    iget-boolean v4, v0, Lc1/D;->k:Z

    .line 292
    .line 293
    if-eqz v4, :cond_c

    .line 294
    .line 295
    const/4 v11, 0x4

    .line 296
    goto :goto_4

    .line 297
    :cond_c
    move v11, v8

    .line 298
    :goto_4
    or-int/2addr v2, v11

    .line 299
    iget-wide v4, v0, Lc1/D;->l:J

    .line 300
    .line 301
    invoke-interface {v6, v4, v5, v2}, Lc1/j;->packetStarted(JI)V

    .line 302
    .line 303
    .line 304
    iput v7, v0, Lc1/D;->c:I

    .line 305
    .line 306
    iput v8, v0, Lc1/D;->d:I

    .line 307
    .line 308
    :cond_d
    :goto_5
    const/4 v4, -0x1

    .line 309
    const/4 v5, 0x2

    .line 310
    goto/16 :goto_2

    .line 311
    .line 312
    :cond_e
    iget-object v4, v10, Landroidx/media3/common/util/ParsableBitArray;->data:[B

    .line 313
    .line 314
    const/16 v5, 0x9

    .line 315
    .line 316
    invoke-virtual {v0, v1, v4, v5}, Lc1/D;->a(Landroidx/media3/common/util/ParsableByteArray;[BI)Z

    .line 317
    .line 318
    .line 319
    move-result v4

    .line 320
    if-eqz v4, :cond_d

    .line 321
    .line 322
    invoke-virtual {v0}, Lc1/D;->b()Z

    .line 323
    .line 324
    .line 325
    move-result v4

    .line 326
    if-eqz v4, :cond_f

    .line 327
    .line 328
    const/4 v4, 0x2

    .line 329
    goto :goto_6

    .line 330
    :cond_f
    move v4, v8

    .line 331
    :goto_6
    iput v4, v0, Lc1/D;->c:I

    .line 332
    .line 333
    iput v8, v0, Lc1/D;->d:I

    .line 334
    .line 335
    goto :goto_5

    .line 336
    :cond_10
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 337
    .line 338
    .line 339
    move-result v4

    .line 340
    invoke-virtual {v1, v4}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 341
    .line 342
    .line 343
    goto :goto_5

    .line 344
    :cond_11
    return-void
.end method

.method public init(Landroidx/media3/common/util/TimestampAdjuster;Lv0/F;Lc1/W;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc1/D;->e:Landroidx/media3/common/util/TimestampAdjuster;

    .line 2
    .line 3
    iget-object p1, p0, Lc1/D;->a:Lc1/j;

    .line 4
    .line 5
    invoke-interface {p1, p2, p3}, Lc1/j;->createTracks(Lv0/F;Lc1/W;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public seek()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lc1/D;->c:I

    .line 3
    .line 4
    iput v0, p0, Lc1/D;->d:I

    .line 5
    .line 6
    iput-boolean v0, p0, Lc1/D;->h:Z

    .line 7
    .line 8
    iget-object v0, p0, Lc1/D;->a:Lc1/j;

    .line 9
    .line 10
    invoke-interface {v0}, Lc1/j;->seek()V

    .line 11
    .line 12
    .line 13
    return-void
.end method
