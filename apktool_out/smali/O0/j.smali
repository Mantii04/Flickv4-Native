.class public final LO0/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LO0/i;


# instance fields
.field public final a:[J

.field public final b:[J

.field public final c:J

.field public final d:J

.field public final e:J

.field public final f:I


# direct methods
.method public constructor <init>([J[JJJJI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LO0/j;->a:[J

    .line 5
    .line 6
    iput-object p2, p0, LO0/j;->b:[J

    .line 7
    .line 8
    iput-wide p3, p0, LO0/j;->c:J

    .line 9
    .line 10
    iput-wide p5, p0, LO0/j;->d:J

    .line 11
    .line 12
    iput-wide p7, p0, LO0/j;->e:J

    .line 13
    .line 14
    iput p9, p0, LO0/j;->f:I

    .line 15
    .line 16
    return-void
.end method

.method public static create(JJLv0/Y;Landroidx/media3/common/util/ParsableByteArray;)LO0/j;
    .locals 21

    .line 1
    move-wide/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v2, p4

    .line 4
    .line 5
    move-object/from16 v3, p5

    .line 6
    .line 7
    const/4 v4, 0x6

    .line 8
    invoke-virtual {v3, v4}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    iget v5, v2, Lv0/Y;->c:I

    .line 16
    .line 17
    int-to-long v5, v5

    .line 18
    add-long v12, p2, v5

    .line 19
    .line 20
    int-to-long v4, v4

    .line 21
    add-long/2addr v4, v12

    .line 22
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    .line 23
    .line 24
    .line 25
    move-result v6

    .line 26
    if-gtz v6, :cond_0

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_0
    iget v7, v2, Lv0/Y;->d:I

    .line 30
    .line 31
    int-to-long v8, v6

    .line 32
    iget v6, v2, Lv0/Y;->g:I

    .line 33
    .line 34
    int-to-long v10, v6

    .line 35
    mul-long/2addr v8, v10

    .line 36
    const-wide/16 v10, 0x1

    .line 37
    .line 38
    sub-long/2addr v8, v10

    .line 39
    invoke-static {v8, v9, v7}, Landroidx/media3/common/util/Util;->sampleCountToDurationUs(JI)J

    .line 40
    .line 41
    .line 42
    move-result-wide v10

    .line 43
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    .line 44
    .line 45
    .line 46
    move-result v6

    .line 47
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    .line 48
    .line 49
    .line 50
    move-result v7

    .line 51
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    .line 52
    .line 53
    .line 54
    move-result v8

    .line 55
    const/4 v9, 0x2

    .line 56
    invoke-virtual {v3, v9}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 57
    .line 58
    .line 59
    iget v14, v2, Lv0/Y;->c:I

    .line 60
    .line 61
    int-to-long v14, v14

    .line 62
    add-long v14, p2, v14

    .line 63
    .line 64
    new-array v9, v6, [J

    .line 65
    .line 66
    move-object/from16 v17, v9

    .line 67
    .line 68
    new-array v9, v6, [J

    .line 69
    .line 70
    const/16 v18, 0x0

    .line 71
    .line 72
    move/from16 v3, v18

    .line 73
    .line 74
    :goto_0
    if-ge v3, v6, :cond_5

    .line 75
    .line 76
    move-wide/from16 v18, v10

    .line 77
    .line 78
    move-object v11, v9

    .line 79
    int-to-long v9, v3

    .line 80
    mul-long v9, v9, v18

    .line 81
    .line 82
    move-wide/from16 p2, v9

    .line 83
    .line 84
    int-to-long v9, v6

    .line 85
    div-long v9, p2, v9

    .line 86
    .line 87
    aput-wide v9, v17, v3

    .line 88
    .line 89
    aput-wide v14, v11, v3

    .line 90
    .line 91
    const/4 v9, 0x1

    .line 92
    if-eq v8, v9, :cond_4

    .line 93
    .line 94
    const/4 v9, 0x2

    .line 95
    if-eq v8, v9, :cond_3

    .line 96
    .line 97
    const/4 v10, 0x3

    .line 98
    if-eq v8, v10, :cond_2

    .line 99
    .line 100
    const/4 v10, 0x4

    .line 101
    if-eq v8, v10, :cond_1

    .line 102
    .line 103
    :goto_1
    const/4 v0, 0x0

    .line 104
    return-object v0

    .line 105
    :cond_1
    invoke-virtual/range {p5 .. p5}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    .line 106
    .line 107
    .line 108
    move-result v10

    .line 109
    goto :goto_2

    .line 110
    :cond_2
    invoke-virtual/range {p5 .. p5}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt24()I

    .line 111
    .line 112
    .line 113
    move-result v10

    .line 114
    goto :goto_2

    .line 115
    :cond_3
    invoke-virtual/range {p5 .. p5}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    .line 116
    .line 117
    .line 118
    move-result v10

    .line 119
    goto :goto_2

    .line 120
    :cond_4
    const/4 v9, 0x2

    .line 121
    invoke-virtual/range {p5 .. p5}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 122
    .line 123
    .line 124
    move-result v10

    .line 125
    :goto_2
    int-to-long v9, v10

    .line 126
    move/from16 v20, v8

    .line 127
    .line 128
    move-wide/from16 p2, v9

    .line 129
    .line 130
    int-to-long v8, v7

    .line 131
    mul-long v9, p2, v8

    .line 132
    .line 133
    add-long/2addr v14, v9

    .line 134
    add-int/lit8 v3, v3, 0x1

    .line 135
    .line 136
    move-object v9, v11

    .line 137
    move-wide/from16 v10, v18

    .line 138
    .line 139
    move/from16 v8, v20

    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_5
    move-wide/from16 v18, v10

    .line 143
    .line 144
    move-object v11, v9

    .line 145
    const-wide/16 v6, -0x1

    .line 146
    .line 147
    cmp-long v3, v0, v6

    .line 148
    .line 149
    const-string v6, ", "

    .line 150
    .line 151
    const-string v7, "VbriSeeker"

    .line 152
    .line 153
    if-eqz v3, :cond_6

    .line 154
    .line 155
    cmp-long v3, v0, v4

    .line 156
    .line 157
    if-eqz v3, :cond_6

    .line 158
    .line 159
    const-string v3, "VBRI data size mismatch: "

    .line 160
    .line 161
    invoke-static {v0, v1, v3, v6}, LA/i;->r(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    invoke-static {v7, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    :cond_6
    cmp-long v0, v4, v14

    .line 176
    .line 177
    if-eqz v0, :cond_7

    .line 178
    .line 179
    const-string v0, "VBRI bytes and ToC mismatch (using max): "

    .line 180
    .line 181
    invoke-static {v4, v5, v0, v6}, LA/i;->r(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    const-string v1, "\nSeeking will be inaccurate."

    .line 189
    .line 190
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    invoke-static {v7, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    invoke-static {v4, v5, v14, v15}, Ljava/lang/Math;->max(JJ)J

    .line 201
    .line 202
    .line 203
    move-result-wide v4

    .line 204
    :cond_7
    move-wide v14, v4

    .line 205
    new-instance v7, LO0/j;

    .line 206
    .line 207
    iget v0, v2, Lv0/Y;->f:I

    .line 208
    .line 209
    move/from16 v16, v0

    .line 210
    .line 211
    move-object v9, v11

    .line 212
    move-object/from16 v8, v17

    .line 213
    .line 214
    move-wide/from16 v10, v18

    .line 215
    .line 216
    invoke-direct/range {v7 .. v16}, LO0/j;-><init>([J[JJJJI)V

    .line 217
    .line 218
    .line 219
    return-object v7
.end method


# virtual methods
.method public getAverageBitrate()I
    .locals 1

    .line 1
    iget v0, p0, LO0/j;->f:I

    .line 2
    .line 3
    return v0
.end method

.method public getDataEndPosition()J
    .locals 2

    .line 1
    iget-wide v0, p0, LO0/j;->e:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getDataStartPosition()J
    .locals 2

    .line 1
    iget-wide v0, p0, LO0/j;->d:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getDurationUs()J
    .locals 2

    .line 1
    iget-wide v0, p0, LO0/j;->c:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getSeekPoints(J)Lv0/e0;
    .locals 9

    .line 1
    iget-object v0, p0, LO0/j;->a:[J

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, p1, p2, v1, v1}, Landroidx/media3/common/util/Util;->binarySearchFloor([JJZZ)I

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    new-instance v3, Lv0/h0;

    .line 9
    .line 10
    aget-wide v4, v0, v2

    .line 11
    .line 12
    iget-object v6, p0, LO0/j;->b:[J

    .line 13
    .line 14
    aget-wide v7, v6, v2

    .line 15
    .line 16
    invoke-direct {v3, v4, v5, v7, v8}, Lv0/h0;-><init>(JJ)V

    .line 17
    .line 18
    .line 19
    iget-wide v4, v3, Lv0/h0;->a:J

    .line 20
    .line 21
    cmp-long p1, v4, p1

    .line 22
    .line 23
    if-gez p1, :cond_1

    .line 24
    .line 25
    array-length p1, v0

    .line 26
    sub-int/2addr p1, v1

    .line 27
    if-ne v2, p1, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    new-instance p1, Lv0/h0;

    .line 31
    .line 32
    add-int/2addr v2, v1

    .line 33
    aget-wide v4, v0, v2

    .line 34
    .line 35
    aget-wide v0, v6, v2

    .line 36
    .line 37
    invoke-direct {p1, v4, v5, v0, v1}, Lv0/h0;-><init>(JJ)V

    .line 38
    .line 39
    .line 40
    new-instance p2, Lv0/e0;

    .line 41
    .line 42
    invoke-direct {p2, v3, p1}, Lv0/e0;-><init>(Lv0/h0;Lv0/h0;)V

    .line 43
    .line 44
    .line 45
    return-object p2

    .line 46
    :cond_1
    :goto_0
    new-instance p1, Lv0/e0;

    .line 47
    .line 48
    invoke-direct {p1, v3}, Lv0/e0;-><init>(Lv0/h0;)V

    .line 49
    .line 50
    .line 51
    return-object p1
.end method

.method public getTimeUs(J)J
    .locals 2

    .line 1
    iget-object v0, p0, LO0/j;->b:[J

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, p1, p2, v1, v1}, Landroidx/media3/common/util/Util;->binarySearchFloor([JJZZ)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    iget-object p2, p0, LO0/j;->a:[J

    .line 9
    .line 10
    aget-wide p1, p2, p1

    .line 11
    .line 12
    return-wide p1
.end method

.method public final synthetic isEstimated()Z
    .locals 1

    .line 1
    invoke-static {p0}, Lv0/d0;->a(Lv0/g0;)Z

    move-result v0

    return v0
.end method

.method public isSeekable()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method
