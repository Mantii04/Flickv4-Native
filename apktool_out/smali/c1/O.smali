.class public final Lc1/O;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Landroidx/media3/common/util/TimestampAdjuster;

.field public final c:Landroidx/media3/common/util/ParsableByteArray;

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:J

.field public h:J

.field public i:J


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lc1/O;->a:I

    .line 5
    .line 6
    new-instance p1, Landroidx/media3/common/util/TimestampAdjuster;

    .line 7
    .line 8
    const-wide/16 v0, 0x0

    .line 9
    .line 10
    invoke-direct {p1, v0, v1}, Landroidx/media3/common/util/TimestampAdjuster;-><init>(J)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lc1/O;->b:Landroidx/media3/common/util/TimestampAdjuster;

    .line 14
    .line 15
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    iput-wide v0, p0, Lc1/O;->g:J

    .line 21
    .line 22
    iput-wide v0, p0, Lc1/O;->h:J

    .line 23
    .line 24
    iput-wide v0, p0, Lc1/O;->i:J

    .line 25
    .line 26
    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    .line 27
    .line 28
    invoke-direct {p1}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Lc1/O;->c:Landroidx/media3/common/util/ParsableByteArray;

    .line 32
    .line 33
    return-void
.end method


# virtual methods
.method public final a(Lv0/D;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lc1/O;->c:Landroidx/media3/common/util/ParsableByteArray;

    .line 2
    .line 3
    sget-object v1, Landroidx/media3/common/util/Util;->EMPTY_BYTE_ARRAY:[B

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->reset([B)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lc1/O;->d:Z

    .line 10
    .line 11
    invoke-interface {p1}, Lv0/D;->resetPeekPosition()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public getDurationUs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lc1/O;->i:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getPcrTimestampAdjuster()Landroidx/media3/common/util/TimestampAdjuster;
    .locals 1

    .line 1
    iget-object v0, p0, Lc1/O;->b:Landroidx/media3/common/util/TimestampAdjuster;

    .line 2
    .line 3
    return-object v0
.end method

.method public isDurationReadFinished()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc1/O;->d:Z

    .line 2
    .line 3
    return v0
.end method

.method public readDuration(Lv0/D;Lv0/c0;I)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-gtz p3, :cond_0

    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lc1/O;->a(Lv0/D;)V

    .line 5
    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    iget-boolean v1, p0, Lc1/O;->f:Z

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    iget-object v3, p0, Lc1/O;->c:Landroidx/media3/common/util/ParsableByteArray;

    .line 12
    .line 13
    iget v4, p0, Lc1/O;->a:I

    .line 14
    .line 15
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    if-nez v1, :cond_5

    .line 21
    .line 22
    invoke-interface {p1}, Lv0/D;->getLength()J

    .line 23
    .line 24
    .line 25
    move-result-wide v7

    .line 26
    int-to-long v9, v4

    .line 27
    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->min(JJ)J

    .line 28
    .line 29
    .line 30
    move-result-wide v9

    .line 31
    long-to-int v1, v9

    .line 32
    int-to-long v9, v1

    .line 33
    sub-long/2addr v7, v9

    .line 34
    invoke-interface {p1}, Lv0/D;->getPosition()J

    .line 35
    .line 36
    .line 37
    move-result-wide v9

    .line 38
    cmp-long v4, v9, v7

    .line 39
    .line 40
    if-eqz v4, :cond_1

    .line 41
    .line 42
    iput-wide v7, p2, Lv0/c0;->a:J

    .line 43
    .line 44
    return v2

    .line 45
    :cond_1
    invoke-virtual {v3, v1}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    .line 46
    .line 47
    .line 48
    invoke-interface {p1}, Lv0/D;->resetPeekPosition()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    invoke-interface {p1, p2, v0, v1}, Lv0/D;->peekFully([BII)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    .line 63
    .line 64
    .line 65
    move-result p2

    .line 66
    add-int/lit16 v1, p2, -0xbc

    .line 67
    .line 68
    :goto_0
    if-lt v1, p1, :cond_4

    .line 69
    .line 70
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    invoke-static {v4, p1, p2, v1}, Lc1/Y;->isStartOfTsPacket([BIII)Z

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    if-nez v4, :cond_2

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_2
    invoke-static {v3, v1, p3}, Lc1/Y;->readPcrFromPacket(Landroidx/media3/common/util/ParsableByteArray;II)J

    .line 82
    .line 83
    .line 84
    move-result-wide v7

    .line 85
    cmp-long v4, v7, v5

    .line 86
    .line 87
    if-eqz v4, :cond_3

    .line 88
    .line 89
    move-wide v5, v7

    .line 90
    goto :goto_2

    .line 91
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, -0x1

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_4
    :goto_2
    iput-wide v5, p0, Lc1/O;->h:J

    .line 95
    .line 96
    iput-boolean v2, p0, Lc1/O;->f:Z

    .line 97
    .line 98
    return v0

    .line 99
    :cond_5
    iget-wide v7, p0, Lc1/O;->h:J

    .line 100
    .line 101
    cmp-long v1, v7, v5

    .line 102
    .line 103
    if-nez v1, :cond_6

    .line 104
    .line 105
    invoke-virtual {p0, p1}, Lc1/O;->a(Lv0/D;)V

    .line 106
    .line 107
    .line 108
    return v0

    .line 109
    :cond_6
    iget-boolean v1, p0, Lc1/O;->e:Z

    .line 110
    .line 111
    if-nez v1, :cond_b

    .line 112
    .line 113
    int-to-long v7, v4

    .line 114
    invoke-interface {p1}, Lv0/D;->getLength()J

    .line 115
    .line 116
    .line 117
    move-result-wide v9

    .line 118
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(JJ)J

    .line 119
    .line 120
    .line 121
    move-result-wide v7

    .line 122
    long-to-int v1, v7

    .line 123
    invoke-interface {p1}, Lv0/D;->getPosition()J

    .line 124
    .line 125
    .line 126
    move-result-wide v7

    .line 127
    int-to-long v9, v0

    .line 128
    cmp-long v4, v7, v9

    .line 129
    .line 130
    if-eqz v4, :cond_7

    .line 131
    .line 132
    iput-wide v9, p2, Lv0/c0;->a:J

    .line 133
    .line 134
    return v2

    .line 135
    :cond_7
    invoke-virtual {v3, v1}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    .line 136
    .line 137
    .line 138
    invoke-interface {p1}, Lv0/D;->resetPeekPosition()V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 142
    .line 143
    .line 144
    move-result-object p2

    .line 145
    invoke-interface {p1, p2, v0, v1}, Lv0/D;->peekFully([BII)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    .line 149
    .line 150
    .line 151
    move-result p1

    .line 152
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    .line 153
    .line 154
    .line 155
    move-result p2

    .line 156
    :goto_3
    if-ge p1, p2, :cond_a

    .line 157
    .line 158
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    aget-byte v1, v1, p1

    .line 163
    .line 164
    const/16 v4, 0x47

    .line 165
    .line 166
    if-eq v1, v4, :cond_8

    .line 167
    .line 168
    goto :goto_4

    .line 169
    :cond_8
    invoke-static {v3, p1, p3}, Lc1/Y;->readPcrFromPacket(Landroidx/media3/common/util/ParsableByteArray;II)J

    .line 170
    .line 171
    .line 172
    move-result-wide v7

    .line 173
    cmp-long v1, v7, v5

    .line 174
    .line 175
    if-eqz v1, :cond_9

    .line 176
    .line 177
    move-wide v5, v7

    .line 178
    goto :goto_5

    .line 179
    :cond_9
    :goto_4
    add-int/lit8 p1, p1, 0x1

    .line 180
    .line 181
    goto :goto_3

    .line 182
    :cond_a
    :goto_5
    iput-wide v5, p0, Lc1/O;->g:J

    .line 183
    .line 184
    iput-boolean v2, p0, Lc1/O;->e:Z

    .line 185
    .line 186
    return v0

    .line 187
    :cond_b
    iget-wide p2, p0, Lc1/O;->g:J

    .line 188
    .line 189
    cmp-long v1, p2, v5

    .line 190
    .line 191
    if-nez v1, :cond_c

    .line 192
    .line 193
    invoke-virtual {p0, p1}, Lc1/O;->a(Lv0/D;)V

    .line 194
    .line 195
    .line 196
    return v0

    .line 197
    :cond_c
    iget-object v1, p0, Lc1/O;->b:Landroidx/media3/common/util/TimestampAdjuster;

    .line 198
    .line 199
    invoke-virtual {v1, p2, p3}, Landroidx/media3/common/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    .line 200
    .line 201
    .line 202
    move-result-wide p2

    .line 203
    iget-wide v2, p0, Lc1/O;->h:J

    .line 204
    .line 205
    invoke-virtual {v1, v2, v3}, Landroidx/media3/common/util/TimestampAdjuster;->adjustTsTimestampGreaterThanPreviousTimestamp(J)J

    .line 206
    .line 207
    .line 208
    move-result-wide v1

    .line 209
    sub-long/2addr v1, p2

    .line 210
    iput-wide v1, p0, Lc1/O;->i:J

    .line 211
    .line 212
    invoke-virtual {p0, p1}, Lc1/O;->a(Lv0/D;)V

    .line 213
    .line 214
    .line 215
    return v0
.end method
