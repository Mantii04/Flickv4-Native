.class public final Le6/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public b:Le6/l;

.field public e:Z

.field public f:Le6/H;

.field public j:J

.field public m:[B

.field public n:I

.field public p:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, -0x1

    .line 5
    .line 6
    iput-wide v0, p0, Le6/i;->j:J

    .line 7
    .line 8
    const/4 v0, -0x1

    .line 9
    iput v0, p0, Le6/i;->n:I

    .line 10
    .line 11
    iput v0, p0, Le6/i;->p:I

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 1
    iget-object v0, p0, Le6/i;->b:Le6/l;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Le6/i;->b:Le6/l;

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Le6/i;->setSegment$okio(Le6/H;)V

    .line 9
    .line 10
    .line 11
    const-wide/16 v1, -0x1

    .line 12
    .line 13
    iput-wide v1, p0, Le6/i;->j:J

    .line 14
    .line 15
    iput-object v0, p0, Le6/i;->m:[B

    .line 16
    .line 17
    const/4 v0, -0x1

    .line 18
    iput v0, p0, Le6/i;->n:I

    .line 19
    .line 20
    iput v0, p0, Le6/i;->p:I

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 24
    .line 25
    const-string v1, "not attached to a buffer"

    .line 26
    .line 27
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw v0
.end method

.method public final getSegment$okio()Le6/H;
    .locals 1

    .line 1
    iget-object v0, p0, Le6/i;->f:Le6/H;

    .line 2
    .line 3
    return-object v0
.end method

.method public final next()I
    .locals 4

    .line 1
    iget-wide v0, p0, Le6/i;->j:J

    .line 2
    .line 3
    iget-object v2, p0, Le6/i;->b:Le6/l;

    .line 4
    .line 5
    invoke-static {v2}, Lkotlin/jvm/internal/j;->checkNotNull(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v2}, Le6/l;->size()J

    .line 9
    .line 10
    .line 11
    move-result-wide v2

    .line 12
    cmp-long v0, v0, v2

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-wide v0, p0, Le6/i;->j:J

    .line 17
    .line 18
    const-wide/16 v2, -0x1

    .line 19
    .line 20
    cmp-long v2, v0, v2

    .line 21
    .line 22
    if-nez v2, :cond_0

    .line 23
    .line 24
    const-wide/16 v0, 0x0

    .line 25
    .line 26
    :goto_0
    invoke-virtual {p0, v0, v1}, Le6/i;->seek(J)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    return v0

    .line 31
    :cond_0
    iget v2, p0, Le6/i;->p:I

    .line 32
    .line 33
    iget v3, p0, Le6/i;->n:I

    .line 34
    .line 35
    sub-int/2addr v2, v3

    .line 36
    int-to-long v2, v2

    .line 37
    add-long/2addr v0, v2

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 40
    .line 41
    const-string v1, "no more bytes"

    .line 42
    .line 43
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw v0
.end method

.method public final resizeBuffer(J)J
    .locals 13

    .line 1
    iget-object v0, p0, Le6/i;->b:Le6/l;

    .line 2
    .line 3
    if-eqz v0, :cond_7

    .line 4
    .line 5
    iget-boolean v1, p0, Le6/i;->e:Z

    .line 6
    .line 7
    if-eqz v1, :cond_6

    .line 8
    .line 9
    invoke-virtual {v0}, Le6/l;->size()J

    .line 10
    .line 11
    .line 12
    move-result-wide v1

    .line 13
    cmp-long v3, p1, v1

    .line 14
    .line 15
    const-wide/16 v4, 0x0

    .line 16
    .line 17
    if-gtz v3, :cond_3

    .line 18
    .line 19
    cmp-long v3, p1, v4

    .line 20
    .line 21
    if-ltz v3, :cond_2

    .line 22
    .line 23
    sub-long v6, v1, p1

    .line 24
    .line 25
    :goto_0
    cmp-long v3, v6, v4

    .line 26
    .line 27
    if-lez v3, :cond_1

    .line 28
    .line 29
    iget-object v3, v0, Le6/l;->b:Le6/H;

    .line 30
    .line 31
    invoke-static {v3}, Lkotlin/jvm/internal/j;->checkNotNull(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    iget-object v3, v3, Le6/H;->g:Le6/H;

    .line 35
    .line 36
    invoke-static {v3}, Lkotlin/jvm/internal/j;->checkNotNull(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    iget v8, v3, Le6/H;->c:I

    .line 40
    .line 41
    iget v9, v3, Le6/H;->b:I

    .line 42
    .line 43
    sub-int v9, v8, v9

    .line 44
    .line 45
    int-to-long v9, v9

    .line 46
    cmp-long v11, v9, v6

    .line 47
    .line 48
    if-gtz v11, :cond_0

    .line 49
    .line 50
    invoke-virtual {v3}, Le6/H;->pop()Le6/H;

    .line 51
    .line 52
    .line 53
    move-result-object v8

    .line 54
    iput-object v8, v0, Le6/l;->b:Le6/H;

    .line 55
    .line 56
    invoke-static {v3}, Le6/I;->recycle(Le6/H;)V

    .line 57
    .line 58
    .line 59
    sub-long/2addr v6, v9

    .line 60
    goto :goto_0

    .line 61
    :cond_0
    long-to-int v4, v6

    .line 62
    sub-int/2addr v8, v4

    .line 63
    iput v8, v3, Le6/H;->c:I

    .line 64
    .line 65
    :cond_1
    const/4 v3, 0x0

    .line 66
    invoke-virtual {p0, v3}, Le6/i;->setSegment$okio(Le6/H;)V

    .line 67
    .line 68
    .line 69
    iput-wide p1, p0, Le6/i;->j:J

    .line 70
    .line 71
    iput-object v3, p0, Le6/i;->m:[B

    .line 72
    .line 73
    const/4 v3, -0x1

    .line 74
    iput v3, p0, Le6/i;->n:I

    .line 75
    .line 76
    iput v3, p0, Le6/i;->p:I

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_2
    const-string v0, "newSize < 0: "

    .line 80
    .line 81
    invoke-static {v0, p1, p2}, LA/i;->i(Ljava/lang/String;J)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 86
    .line 87
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    throw p2

    .line 95
    :cond_3
    if-lez v3, :cond_5

    .line 96
    .line 97
    sub-long v6, p1, v1

    .line 98
    .line 99
    const/4 v3, 0x1

    .line 100
    move v8, v3

    .line 101
    :cond_4
    :goto_1
    cmp-long v9, v6, v4

    .line 102
    .line 103
    if-lez v9, :cond_5

    .line 104
    .line 105
    invoke-virtual {v0, v3}, Le6/l;->writableSegment$okio(I)Le6/H;

    .line 106
    .line 107
    .line 108
    move-result-object v9

    .line 109
    iget v10, v9, Le6/H;->c:I

    .line 110
    .line 111
    rsub-int v10, v10, 0x2000

    .line 112
    .line 113
    int-to-long v10, v10

    .line 114
    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->min(JJ)J

    .line 115
    .line 116
    .line 117
    move-result-wide v10

    .line 118
    long-to-int v10, v10

    .line 119
    iget v11, v9, Le6/H;->c:I

    .line 120
    .line 121
    add-int/2addr v11, v10

    .line 122
    iput v11, v9, Le6/H;->c:I

    .line 123
    .line 124
    int-to-long v11, v10

    .line 125
    sub-long/2addr v6, v11

    .line 126
    if-eqz v8, :cond_4

    .line 127
    .line 128
    invoke-virtual {p0, v9}, Le6/i;->setSegment$okio(Le6/H;)V

    .line 129
    .line 130
    .line 131
    iput-wide v1, p0, Le6/i;->j:J

    .line 132
    .line 133
    iget-object v8, v9, Le6/H;->a:[B

    .line 134
    .line 135
    iput-object v8, p0, Le6/i;->m:[B

    .line 136
    .line 137
    iget v8, v9, Le6/H;->c:I

    .line 138
    .line 139
    sub-int v9, v8, v10

    .line 140
    .line 141
    iput v9, p0, Le6/i;->n:I

    .line 142
    .line 143
    iput v8, p0, Le6/i;->p:I

    .line 144
    .line 145
    const/4 v8, 0x0

    .line 146
    goto :goto_1

    .line 147
    :cond_5
    :goto_2
    invoke-virtual {v0, p1, p2}, Le6/l;->setSize$okio(J)V

    .line 148
    .line 149
    .line 150
    return-wide v1

    .line 151
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 152
    .line 153
    const-string p2, "resizeBuffer() only permitted for read/write buffers"

    .line 154
    .line 155
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    throw p1

    .line 159
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 160
    .line 161
    const-string p2, "not attached to a buffer"

    .line 162
    .line 163
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    throw p1
.end method

.method public final seek(J)I
    .locals 11

    .line 1
    iget-object v0, p0, Le6/i;->b:Le6/l;

    .line 2
    .line 3
    if-eqz v0, :cond_a

    .line 4
    .line 5
    const-wide/16 v1, -0x1

    .line 6
    .line 7
    cmp-long v1, p1, v1

    .line 8
    .line 9
    if-ltz v1, :cond_9

    .line 10
    .line 11
    invoke-virtual {v0}, Le6/l;->size()J

    .line 12
    .line 13
    .line 14
    move-result-wide v2

    .line 15
    cmp-long v2, p1, v2

    .line 16
    .line 17
    if-gtz v2, :cond_9

    .line 18
    .line 19
    if-eqz v1, :cond_8

    .line 20
    .line 21
    invoke-virtual {v0}, Le6/l;->size()J

    .line 22
    .line 23
    .line 24
    move-result-wide v1

    .line 25
    cmp-long v1, p1, v1

    .line 26
    .line 27
    if-nez v1, :cond_0

    .line 28
    .line 29
    goto/16 :goto_3

    .line 30
    .line 31
    :cond_0
    invoke-virtual {v0}, Le6/l;->size()J

    .line 32
    .line 33
    .line 34
    move-result-wide v1

    .line 35
    iget-object v3, v0, Le6/l;->b:Le6/H;

    .line 36
    .line 37
    invoke-virtual {p0}, Le6/i;->getSegment$okio()Le6/H;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    const-wide/16 v5, 0x0

    .line 42
    .line 43
    if-eqz v4, :cond_2

    .line 44
    .line 45
    iget-wide v7, p0, Le6/i;->j:J

    .line 46
    .line 47
    iget v4, p0, Le6/i;->n:I

    .line 48
    .line 49
    invoke-virtual {p0}, Le6/i;->getSegment$okio()Le6/H;

    .line 50
    .line 51
    .line 52
    move-result-object v9

    .line 53
    invoke-static {v9}, Lkotlin/jvm/internal/j;->checkNotNull(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    iget v9, v9, Le6/H;->b:I

    .line 57
    .line 58
    sub-int/2addr v4, v9

    .line 59
    int-to-long v9, v4

    .line 60
    sub-long/2addr v7, v9

    .line 61
    cmp-long v4, v7, p1

    .line 62
    .line 63
    if-lez v4, :cond_1

    .line 64
    .line 65
    invoke-virtual {p0}, Le6/i;->getSegment$okio()Le6/H;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    move-object v4, v3

    .line 70
    move-object v3, v1

    .line 71
    move-wide v1, v7

    .line 72
    goto :goto_0

    .line 73
    :cond_1
    invoke-virtual {p0}, Le6/i;->getSegment$okio()Le6/H;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    move-wide v5, v7

    .line 78
    goto :goto_0

    .line 79
    :cond_2
    move-object v4, v3

    .line 80
    :goto_0
    sub-long v7, v1, p1

    .line 81
    .line 82
    sub-long v9, p1, v5

    .line 83
    .line 84
    cmp-long v7, v7, v9

    .line 85
    .line 86
    if-lez v7, :cond_3

    .line 87
    .line 88
    :goto_1
    invoke-static {v4}, Lkotlin/jvm/internal/j;->checkNotNull(Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    iget v1, v4, Le6/H;->c:I

    .line 92
    .line 93
    iget v2, v4, Le6/H;->b:I

    .line 94
    .line 95
    sub-int/2addr v1, v2

    .line 96
    int-to-long v1, v1

    .line 97
    add-long/2addr v1, v5

    .line 98
    cmp-long v3, p1, v1

    .line 99
    .line 100
    if-ltz v3, :cond_5

    .line 101
    .line 102
    iget-object v4, v4, Le6/H;->f:Le6/H;

    .line 103
    .line 104
    move-wide v5, v1

    .line 105
    goto :goto_1

    .line 106
    :cond_3
    :goto_2
    cmp-long v4, v1, p1

    .line 107
    .line 108
    if-lez v4, :cond_4

    .line 109
    .line 110
    invoke-static {v3}, Lkotlin/jvm/internal/j;->checkNotNull(Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    iget-object v3, v3, Le6/H;->g:Le6/H;

    .line 114
    .line 115
    invoke-static {v3}, Lkotlin/jvm/internal/j;->checkNotNull(Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    iget v4, v3, Le6/H;->c:I

    .line 119
    .line 120
    iget v5, v3, Le6/H;->b:I

    .line 121
    .line 122
    sub-int/2addr v4, v5

    .line 123
    int-to-long v4, v4

    .line 124
    sub-long/2addr v1, v4

    .line 125
    goto :goto_2

    .line 126
    :cond_4
    move-wide v5, v1

    .line 127
    move-object v4, v3

    .line 128
    :cond_5
    iget-boolean v1, p0, Le6/i;->e:Z

    .line 129
    .line 130
    if-eqz v1, :cond_7

    .line 131
    .line 132
    invoke-static {v4}, Lkotlin/jvm/internal/j;->checkNotNull(Ljava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    iget-boolean v1, v4, Le6/H;->d:Z

    .line 136
    .line 137
    if-eqz v1, :cond_7

    .line 138
    .line 139
    invoke-virtual {v4}, Le6/H;->unsharedCopy()Le6/H;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    iget-object v2, v0, Le6/l;->b:Le6/H;

    .line 144
    .line 145
    if-ne v2, v4, :cond_6

    .line 146
    .line 147
    iput-object v1, v0, Le6/l;->b:Le6/H;

    .line 148
    .line 149
    :cond_6
    invoke-virtual {v4, v1}, Le6/H;->push(Le6/H;)Le6/H;

    .line 150
    .line 151
    .line 152
    move-result-object v4

    .line 153
    iget-object v0, v4, Le6/H;->g:Le6/H;

    .line 154
    .line 155
    invoke-static {v0}, Lkotlin/jvm/internal/j;->checkNotNull(Ljava/lang/Object;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0}, Le6/H;->pop()Le6/H;

    .line 159
    .line 160
    .line 161
    :cond_7
    invoke-virtual {p0, v4}, Le6/i;->setSegment$okio(Le6/H;)V

    .line 162
    .line 163
    .line 164
    iput-wide p1, p0, Le6/i;->j:J

    .line 165
    .line 166
    invoke-static {v4}, Lkotlin/jvm/internal/j;->checkNotNull(Ljava/lang/Object;)V

    .line 167
    .line 168
    .line 169
    iget-object v0, v4, Le6/H;->a:[B

    .line 170
    .line 171
    iput-object v0, p0, Le6/i;->m:[B

    .line 172
    .line 173
    iget v0, v4, Le6/H;->b:I

    .line 174
    .line 175
    sub-long/2addr p1, v5

    .line 176
    long-to-int p1, p1

    .line 177
    add-int/2addr v0, p1

    .line 178
    iput v0, p0, Le6/i;->n:I

    .line 179
    .line 180
    iget p1, v4, Le6/H;->c:I

    .line 181
    .line 182
    iput p1, p0, Le6/i;->p:I

    .line 183
    .line 184
    sub-int/2addr p1, v0

    .line 185
    return p1

    .line 186
    :cond_8
    :goto_3
    const/4 v0, 0x0

    .line 187
    invoke-virtual {p0, v0}, Le6/i;->setSegment$okio(Le6/H;)V

    .line 188
    .line 189
    .line 190
    iput-wide p1, p0, Le6/i;->j:J

    .line 191
    .line 192
    iput-object v0, p0, Le6/i;->m:[B

    .line 193
    .line 194
    const/4 p1, -0x1

    .line 195
    iput p1, p0, Le6/i;->n:I

    .line 196
    .line 197
    iput p1, p0, Le6/i;->p:I

    .line 198
    .line 199
    return p1

    .line 200
    :cond_9
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 201
    .line 202
    const-string v2, "offset="

    .line 203
    .line 204
    const-string v3, " > size="

    .line 205
    .line 206
    invoke-static {p1, p2, v2, v3}, LA/i;->r(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    invoke-virtual {v0}, Le6/l;->size()J

    .line 211
    .line 212
    .line 213
    move-result-wide v2

    .line 214
    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    invoke-direct {v1, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    throw v1

    .line 225
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 226
    .line 227
    const-string p2, "not attached to a buffer"

    .line 228
    .line 229
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    throw p1
.end method

.method public final setSegment$okio(Le6/H;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le6/i;->f:Le6/H;

    .line 2
    .line 3
    return-void
.end method
