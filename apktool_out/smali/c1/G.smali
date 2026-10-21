.class public final Lc1/G;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/media3/common/util/TimestampAdjuster;

.field public final b:Landroidx/media3/common/util/ParsableByteArray;

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:J

.field public g:J

.field public h:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/media3/common/util/TimestampAdjuster;

    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, Landroidx/media3/common/util/TimestampAdjuster;-><init>(J)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lc1/G;->a:Landroidx/media3/common/util/TimestampAdjuster;

    .line 12
    .line 13
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    iput-wide v0, p0, Lc1/G;->f:J

    .line 19
    .line 20
    iput-wide v0, p0, Lc1/G;->g:J

    .line 21
    .line 22
    iput-wide v0, p0, Lc1/G;->h:J

    .line 23
    .line 24
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    .line 25
    .line 26
    invoke-direct {v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lc1/G;->b:Landroidx/media3/common/util/ParsableByteArray;

    .line 30
    .line 31
    return-void
.end method

.method public static a(I[B)I
    .locals 2

    .line 1
    aget-byte v0, p1, p0

    .line 2
    .line 3
    and-int/lit16 v0, v0, 0xff

    .line 4
    .line 5
    shl-int/lit8 v0, v0, 0x18

    .line 6
    .line 7
    add-int/lit8 v1, p0, 0x1

    .line 8
    .line 9
    aget-byte v1, p1, v1

    .line 10
    .line 11
    and-int/lit16 v1, v1, 0xff

    .line 12
    .line 13
    shl-int/lit8 v1, v1, 0x10

    .line 14
    .line 15
    or-int/2addr v0, v1

    .line 16
    add-int/lit8 v1, p0, 0x2

    .line 17
    .line 18
    aget-byte v1, p1, v1

    .line 19
    .line 20
    and-int/lit16 v1, v1, 0xff

    .line 21
    .line 22
    shl-int/lit8 v1, v1, 0x8

    .line 23
    .line 24
    or-int/2addr v0, v1

    .line 25
    add-int/lit8 p0, p0, 0x3

    .line 26
    .line 27
    aget-byte p0, p1, p0

    .line 28
    .line 29
    and-int/lit16 p0, p0, 0xff

    .line 30
    .line 31
    or-int/2addr p0, v0

    .line 32
    return p0
.end method

.method public static readScrValueFromPack(Landroidx/media3/common/util/ParsableByteArray;)J
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
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    const/16 v5, 0x9

    .line 17
    .line 18
    if-ge v2, v5, :cond_0

    .line 19
    .line 20
    return-wide v3

    .line 21
    :cond_0
    new-array v2, v5, [B

    .line 22
    .line 23
    const/4 v6, 0x0

    .line 24
    invoke-virtual {v0, v2, v6, v5}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 28
    .line 29
    .line 30
    aget-byte v0, v2, v6

    .line 31
    .line 32
    and-int/lit16 v1, v0, 0xc4

    .line 33
    .line 34
    const/16 v5, 0x44

    .line 35
    .line 36
    if-eq v1, v5, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 v1, 0x2

    .line 40
    aget-byte v1, v2, v1

    .line 41
    .line 42
    and-int/lit8 v5, v1, 0x4

    .line 43
    .line 44
    const/4 v6, 0x4

    .line 45
    if-eq v5, v6, :cond_2

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    aget-byte v5, v2, v6

    .line 49
    .line 50
    and-int/lit8 v7, v5, 0x4

    .line 51
    .line 52
    if-eq v7, v6, :cond_3

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_3
    const/4 v6, 0x5

    .line 56
    aget-byte v7, v2, v6

    .line 57
    .line 58
    const/4 v8, 0x1

    .line 59
    and-int/2addr v7, v8

    .line 60
    if-eq v7, v8, :cond_4

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_4
    const/16 v7, 0x8

    .line 64
    .line 65
    aget-byte v7, v2, v7

    .line 66
    .line 67
    const/4 v9, 0x3

    .line 68
    and-int/2addr v7, v9

    .line 69
    if-ne v7, v9, :cond_5

    .line 70
    .line 71
    int-to-long v3, v0

    .line 72
    const-wide/16 v10, 0x38

    .line 73
    .line 74
    and-long/2addr v10, v3

    .line 75
    shr-long/2addr v10, v9

    .line 76
    const/16 v0, 0x1e

    .line 77
    .line 78
    shl-long/2addr v10, v0

    .line 79
    const-wide/16 v12, 0x3

    .line 80
    .line 81
    and-long/2addr v3, v12

    .line 82
    const/16 v0, 0x1c

    .line 83
    .line 84
    shl-long/2addr v3, v0

    .line 85
    or-long/2addr v3, v10

    .line 86
    aget-byte v0, v2, v8

    .line 87
    .line 88
    int-to-long v7, v0

    .line 89
    const-wide/16 v10, 0xff

    .line 90
    .line 91
    and-long/2addr v7, v10

    .line 92
    const/16 v0, 0x14

    .line 93
    .line 94
    shl-long/2addr v7, v0

    .line 95
    or-long/2addr v3, v7

    .line 96
    int-to-long v0, v1

    .line 97
    const-wide/16 v7, 0xf8

    .line 98
    .line 99
    and-long v14, v0, v7

    .line 100
    .line 101
    shr-long/2addr v14, v9

    .line 102
    const/16 v16, 0xf

    .line 103
    .line 104
    shl-long v14, v14, v16

    .line 105
    .line 106
    or-long/2addr v3, v14

    .line 107
    and-long/2addr v0, v12

    .line 108
    const/16 v12, 0xd

    .line 109
    .line 110
    shl-long/2addr v0, v12

    .line 111
    or-long/2addr v0, v3

    .line 112
    aget-byte v2, v2, v9

    .line 113
    .line 114
    int-to-long v2, v2

    .line 115
    and-long/2addr v2, v10

    .line 116
    shl-long/2addr v2, v6

    .line 117
    or-long/2addr v0, v2

    .line 118
    int-to-long v2, v5

    .line 119
    and-long/2addr v2, v7

    .line 120
    shr-long/2addr v2, v9

    .line 121
    or-long/2addr v0, v2

    .line 122
    return-wide v0

    .line 123
    :cond_5
    :goto_0
    return-wide v3
.end method


# virtual methods
.method public getDurationUs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lc1/G;->h:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getScrTimestampAdjuster()Landroidx/media3/common/util/TimestampAdjuster;
    .locals 1

    .line 1
    iget-object v0, p0, Lc1/G;->a:Landroidx/media3/common/util/TimestampAdjuster;

    .line 2
    .line 3
    return-object v0
.end method

.method public isDurationReadFinished()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc1/G;->c:Z

    .line 2
    .line 3
    return v0
.end method

.method public readDuration(Lv0/D;Lv0/c0;)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lc1/G;->e:Z

    .line 2
    .line 3
    const/16 v1, 0x1ba

    .line 4
    .line 5
    iget-object v2, p0, Lc1/G;->b:Landroidx/media3/common/util/ParsableByteArray;

    .line 6
    .line 7
    const-wide/16 v3, 0x4e20

    .line 8
    .line 9
    const/4 v5, 0x1

    .line 10
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    const/4 v8, 0x0

    .line 16
    if-nez v0, :cond_3

    .line 17
    .line 18
    invoke-interface {p1}, Lv0/D;->getLength()J

    .line 19
    .line 20
    .line 21
    move-result-wide v9

    .line 22
    invoke-static {v3, v4, v9, v10}, Ljava/lang/Math;->min(JJ)J

    .line 23
    .line 24
    .line 25
    move-result-wide v3

    .line 26
    long-to-int v0, v3

    .line 27
    int-to-long v3, v0

    .line 28
    sub-long/2addr v9, v3

    .line 29
    invoke-interface {p1}, Lv0/D;->getPosition()J

    .line 30
    .line 31
    .line 32
    move-result-wide v3

    .line 33
    cmp-long v3, v3, v9

    .line 34
    .line 35
    if-eqz v3, :cond_0

    .line 36
    .line 37
    iput-wide v9, p2, Lv0/c0;->a:J

    .line 38
    .line 39
    return v5

    .line 40
    :cond_0
    invoke-virtual {v2, v0}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    .line 41
    .line 42
    .line 43
    invoke-interface {p1}, Lv0/D;->resetPeekPosition()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-interface {p1, p2, v8, v0}, Lv0/D;->peekFully([BII)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    .line 58
    .line 59
    .line 60
    move-result p2

    .line 61
    add-int/lit8 p2, p2, -0x4

    .line 62
    .line 63
    :goto_0
    if-lt p2, p1, :cond_2

    .line 64
    .line 65
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-static {p2, v0}, Lc1/G;->a(I[B)I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-ne v0, v1, :cond_1

    .line 74
    .line 75
    add-int/lit8 v0, p2, 0x4

    .line 76
    .line 77
    invoke-virtual {v2, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 78
    .line 79
    .line 80
    invoke-static {v2}, Lc1/G;->readScrValueFromPack(Landroidx/media3/common/util/ParsableByteArray;)J

    .line 81
    .line 82
    .line 83
    move-result-wide v3

    .line 84
    cmp-long v0, v3, v6

    .line 85
    .line 86
    if-eqz v0, :cond_1

    .line 87
    .line 88
    move-wide v6, v3

    .line 89
    goto :goto_1

    .line 90
    :cond_1
    add-int/lit8 p2, p2, -0x1

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_2
    :goto_1
    iput-wide v6, p0, Lc1/G;->g:J

    .line 94
    .line 95
    iput-boolean v5, p0, Lc1/G;->e:Z

    .line 96
    .line 97
    return v8

    .line 98
    :cond_3
    iget-wide v9, p0, Lc1/G;->g:J

    .line 99
    .line 100
    cmp-long v0, v9, v6

    .line 101
    .line 102
    if-nez v0, :cond_4

    .line 103
    .line 104
    sget-object p2, Landroidx/media3/common/util/Util;->EMPTY_BYTE_ARRAY:[B

    .line 105
    .line 106
    invoke-virtual {v2, p2}, Landroidx/media3/common/util/ParsableByteArray;->reset([B)V

    .line 107
    .line 108
    .line 109
    iput-boolean v5, p0, Lc1/G;->c:Z

    .line 110
    .line 111
    invoke-interface {p1}, Lv0/D;->resetPeekPosition()V

    .line 112
    .line 113
    .line 114
    return v8

    .line 115
    :cond_4
    iget-boolean v0, p0, Lc1/G;->d:Z

    .line 116
    .line 117
    if-nez v0, :cond_8

    .line 118
    .line 119
    invoke-interface {p1}, Lv0/D;->getLength()J

    .line 120
    .line 121
    .line 122
    move-result-wide v9

    .line 123
    invoke-static {v3, v4, v9, v10}, Ljava/lang/Math;->min(JJ)J

    .line 124
    .line 125
    .line 126
    move-result-wide v3

    .line 127
    long-to-int v0, v3

    .line 128
    invoke-interface {p1}, Lv0/D;->getPosition()J

    .line 129
    .line 130
    .line 131
    move-result-wide v3

    .line 132
    int-to-long v9, v8

    .line 133
    cmp-long v3, v3, v9

    .line 134
    .line 135
    if-eqz v3, :cond_5

    .line 136
    .line 137
    iput-wide v9, p2, Lv0/c0;->a:J

    .line 138
    .line 139
    return v5

    .line 140
    :cond_5
    invoke-virtual {v2, v0}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    .line 141
    .line 142
    .line 143
    invoke-interface {p1}, Lv0/D;->resetPeekPosition()V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 147
    .line 148
    .line 149
    move-result-object p2

    .line 150
    invoke-interface {p1, p2, v8, v0}, Lv0/D;->peekFully([BII)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    .line 154
    .line 155
    .line 156
    move-result p1

    .line 157
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    .line 158
    .line 159
    .line 160
    move-result p2

    .line 161
    :goto_2
    add-int/lit8 v0, p2, -0x3

    .line 162
    .line 163
    if-ge p1, v0, :cond_7

    .line 164
    .line 165
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    invoke-static {p1, v0}, Lc1/G;->a(I[B)I

    .line 170
    .line 171
    .line 172
    move-result v0

    .line 173
    if-ne v0, v1, :cond_6

    .line 174
    .line 175
    add-int/lit8 v0, p1, 0x4

    .line 176
    .line 177
    invoke-virtual {v2, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 178
    .line 179
    .line 180
    invoke-static {v2}, Lc1/G;->readScrValueFromPack(Landroidx/media3/common/util/ParsableByteArray;)J

    .line 181
    .line 182
    .line 183
    move-result-wide v3

    .line 184
    cmp-long v0, v3, v6

    .line 185
    .line 186
    if-eqz v0, :cond_6

    .line 187
    .line 188
    move-wide v6, v3

    .line 189
    goto :goto_3

    .line 190
    :cond_6
    add-int/lit8 p1, p1, 0x1

    .line 191
    .line 192
    goto :goto_2

    .line 193
    :cond_7
    :goto_3
    iput-wide v6, p0, Lc1/G;->f:J

    .line 194
    .line 195
    iput-boolean v5, p0, Lc1/G;->d:Z

    .line 196
    .line 197
    return v8

    .line 198
    :cond_8
    iget-wide v0, p0, Lc1/G;->f:J

    .line 199
    .line 200
    cmp-long p2, v0, v6

    .line 201
    .line 202
    if-nez p2, :cond_9

    .line 203
    .line 204
    sget-object p2, Landroidx/media3/common/util/Util;->EMPTY_BYTE_ARRAY:[B

    .line 205
    .line 206
    invoke-virtual {v2, p2}, Landroidx/media3/common/util/ParsableByteArray;->reset([B)V

    .line 207
    .line 208
    .line 209
    iput-boolean v5, p0, Lc1/G;->c:Z

    .line 210
    .line 211
    invoke-interface {p1}, Lv0/D;->resetPeekPosition()V

    .line 212
    .line 213
    .line 214
    return v8

    .line 215
    :cond_9
    iget-object p2, p0, Lc1/G;->a:Landroidx/media3/common/util/TimestampAdjuster;

    .line 216
    .line 217
    invoke-virtual {p2, v0, v1}, Landroidx/media3/common/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    .line 218
    .line 219
    .line 220
    move-result-wide v0

    .line 221
    iget-wide v3, p0, Lc1/G;->g:J

    .line 222
    .line 223
    invoke-virtual {p2, v3, v4}, Landroidx/media3/common/util/TimestampAdjuster;->adjustTsTimestampGreaterThanPreviousTimestamp(J)J

    .line 224
    .line 225
    .line 226
    move-result-wide v3

    .line 227
    sub-long/2addr v3, v0

    .line 228
    iput-wide v3, p0, Lc1/G;->h:J

    .line 229
    .line 230
    sget-object p2, Landroidx/media3/common/util/Util;->EMPTY_BYTE_ARRAY:[B

    .line 231
    .line 232
    invoke-virtual {v2, p2}, Landroidx/media3/common/util/ParsableByteArray;->reset([B)V

    .line 233
    .line 234
    .line 235
    iput-boolean v5, p0, Lc1/G;->c:Z

    .line 236
    .line 237
    invoke-interface {p1}, Lv0/D;->resetPeekPosition()V

    .line 238
    .line 239
    .line 240
    return v8
.end method
