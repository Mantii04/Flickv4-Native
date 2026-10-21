.class public final Lc1/S;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv0/C;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:Ljava/util/List;

.field public final e:Landroidx/media3/common/util/ParsableByteArray;

.field public final f:Landroid/util/SparseIntArray;

.field public final g:Lc1/V;

.field public final h:LS0/q;

.field public final i:Landroid/util/SparseArray;

.field public final j:Landroid/util/SparseBooleanArray;

.field public final k:Landroid/util/SparseBooleanArray;

.field public final l:Lc1/O;

.field public m:Lc1/N;

.field public n:Lv0/F;

.field public o:I

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:Lc1/X;

.field public t:I

.field public u:I


# direct methods
.method public constructor <init>(IILS0/q;Landroidx/media3/common/util/TimestampAdjuster;Lc1/V;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p5}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p5

    .line 8
    check-cast p5, Lc1/V;

    .line 9
    .line 10
    iput-object p5, p0, Lc1/S;->g:Lc1/V;

    .line 11
    .line 12
    iput p6, p0, Lc1/S;->c:I

    .line 13
    .line 14
    iput p1, p0, Lc1/S;->a:I

    .line 15
    .line 16
    iput p2, p0, Lc1/S;->b:I

    .line 17
    .line 18
    iput-object p3, p0, Lc1/S;->h:LS0/q;

    .line 19
    .line 20
    const/4 p2, 0x1

    .line 21
    if-eq p1, p2, :cond_1

    .line 22
    .line 23
    const/4 p2, 0x2

    .line 24
    if-ne p1, p2, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Lc1/S;->d:Ljava/util/List;

    .line 33
    .line 34
    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    :goto_0
    invoke-static {p4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iput-object p1, p0, Lc1/S;->d:Ljava/util/List;

    .line 43
    .line 44
    :goto_1
    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    .line 45
    .line 46
    const/16 p2, 0x24b8

    .line 47
    .line 48
    new-array p2, p2, [B

    .line 49
    .line 50
    const/4 p3, 0x0

    .line 51
    invoke-direct {p1, p2, p3}, Landroidx/media3/common/util/ParsableByteArray;-><init>([BI)V

    .line 52
    .line 53
    .line 54
    iput-object p1, p0, Lc1/S;->e:Landroidx/media3/common/util/ParsableByteArray;

    .line 55
    .line 56
    new-instance p1, Landroid/util/SparseBooleanArray;

    .line 57
    .line 58
    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 59
    .line 60
    .line 61
    iput-object p1, p0, Lc1/S;->j:Landroid/util/SparseBooleanArray;

    .line 62
    .line 63
    new-instance p2, Landroid/util/SparseBooleanArray;

    .line 64
    .line 65
    invoke-direct {p2}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 66
    .line 67
    .line 68
    iput-object p2, p0, Lc1/S;->k:Landroid/util/SparseBooleanArray;

    .line 69
    .line 70
    new-instance p2, Landroid/util/SparseArray;

    .line 71
    .line 72
    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    .line 73
    .line 74
    .line 75
    iput-object p2, p0, Lc1/S;->i:Landroid/util/SparseArray;

    .line 76
    .line 77
    new-instance p4, Landroid/util/SparseIntArray;

    .line 78
    .line 79
    invoke-direct {p4}, Landroid/util/SparseIntArray;-><init>()V

    .line 80
    .line 81
    .line 82
    iput-object p4, p0, Lc1/S;->f:Landroid/util/SparseIntArray;

    .line 83
    .line 84
    new-instance p4, Lc1/O;

    .line 85
    .line 86
    invoke-direct {p4, p6}, Lc1/O;-><init>(I)V

    .line 87
    .line 88
    .line 89
    iput-object p4, p0, Lc1/S;->l:Lc1/O;

    .line 90
    .line 91
    sget-object p4, Lv0/F;->d:Lv0/E;

    .line 92
    .line 93
    iput-object p4, p0, Lc1/S;->n:Lv0/F;

    .line 94
    .line 95
    const/4 p4, -0x1

    .line 96
    iput p4, p0, Lc1/S;->u:I

    .line 97
    .line 98
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p2}, Landroid/util/SparseArray;->clear()V

    .line 102
    .line 103
    .line 104
    check-cast p5, Lc1/g;

    .line 105
    .line 106
    invoke-virtual {p5}, Lc1/g;->createInitialPayloadReaders()Landroid/util/SparseArray;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 111
    .line 112
    .line 113
    move-result p4

    .line 114
    move p5, p3

    .line 115
    :goto_2
    if-ge p5, p4, :cond_2

    .line 116
    .line 117
    invoke-virtual {p1, p5}, Landroid/util/SparseArray;->keyAt(I)I

    .line 118
    .line 119
    .line 120
    move-result p6

    .line 121
    invoke-virtual {p1, p5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    check-cast v0, Lc1/X;

    .line 126
    .line 127
    invoke-virtual {p2, p6, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    add-int/lit8 p5, p5, 0x1

    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_2
    new-instance p1, Lc1/K;

    .line 134
    .line 135
    new-instance p4, Lc1/P;

    .line 136
    .line 137
    invoke-direct {p4, p0}, Lc1/P;-><init>(Lc1/S;)V

    .line 138
    .line 139
    .line 140
    invoke-direct {p1, p4}, Lc1/K;-><init>(Lc1/J;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p2, p3, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    const/4 p1, 0x0

    .line 147
    iput-object p1, p0, Lc1/S;->s:Lc1/X;

    .line 148
    .line 149
    return-void
.end method


# virtual methods
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
    .locals 2

    .line 1
    iget v0, p0, Lc1/S;->b:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, LS0/t;

    .line 8
    .line 9
    iget-object v1, p0, Lc1/S;->h:LS0/q;

    .line 10
    .line 11
    invoke-direct {v0, p1, v1}, LS0/t;-><init>(Lv0/F;LS0/q;)V

    .line 12
    .line 13
    .line 14
    move-object p1, v0

    .line 15
    :cond_0
    iput-object p1, p0, Lc1/S;->n:Lv0/F;

    .line 16
    .line 17
    return-void
.end method

.method public read(Lv0/D;Lv0/c0;)I
    .locals 19
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
    move-object/from16 v2, p2

    .line 6
    .line 7
    invoke-interface {v1}, Lv0/D;->getLength()J

    .line 8
    .line 9
    .line 10
    move-result-wide v7

    .line 11
    const/4 v11, 0x1

    .line 12
    const/4 v12, 0x0

    .line 13
    iget v13, v0, Lc1/S;->a:I

    .line 14
    .line 15
    const/4 v14, 0x2

    .line 16
    if-ne v13, v14, :cond_0

    .line 17
    .line 18
    move v15, v11

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v15, v12

    .line 21
    :goto_0
    iget-boolean v3, v0, Lc1/S;->p:Z

    .line 22
    .line 23
    const-wide/16 v16, -0x1

    .line 24
    .line 25
    if-eqz v3, :cond_5

    .line 26
    .line 27
    cmp-long v3, v7, v16

    .line 28
    .line 29
    iget-object v4, v0, Lc1/S;->l:Lc1/O;

    .line 30
    .line 31
    if-eqz v3, :cond_1

    .line 32
    .line 33
    if-nez v15, :cond_1

    .line 34
    .line 35
    invoke-virtual {v4}, Lc1/O;->isDurationReadFinished()Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-nez v3, :cond_1

    .line 40
    .line 41
    iget v3, v0, Lc1/S;->u:I

    .line 42
    .line 43
    invoke-virtual {v4, v1, v2, v3}, Lc1/O;->readDuration(Lv0/D;Lv0/c0;I)I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    return v1

    .line 48
    :cond_1
    iget-boolean v3, v0, Lc1/S;->q:Z

    .line 49
    .line 50
    if-nez v3, :cond_3

    .line 51
    .line 52
    iput-boolean v11, v0, Lc1/S;->q:Z

    .line 53
    .line 54
    invoke-virtual {v4}, Lc1/O;->getDurationUs()J

    .line 55
    .line 56
    .line 57
    move-result-wide v5

    .line 58
    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    cmp-long v3, v5, v9

    .line 64
    .line 65
    if-eqz v3, :cond_2

    .line 66
    .line 67
    new-instance v3, Lc1/N;

    .line 68
    .line 69
    move-object v5, v4

    .line 70
    invoke-virtual {v5}, Lc1/O;->getPcrTimestampAdjuster()Landroidx/media3/common/util/TimestampAdjuster;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    invoke-virtual {v5}, Lc1/O;->getDurationUs()J

    .line 75
    .line 76
    .line 77
    move-result-wide v5

    .line 78
    iget v9, v0, Lc1/S;->u:I

    .line 79
    .line 80
    iget v10, v0, Lc1/S;->c:I

    .line 81
    .line 82
    invoke-direct/range {v3 .. v10}, Lc1/N;-><init>(Landroidx/media3/common/util/TimestampAdjuster;JJII)V

    .line 83
    .line 84
    .line 85
    iput-object v3, v0, Lc1/S;->m:Lc1/N;

    .line 86
    .line 87
    iget-object v4, v0, Lc1/S;->n:Lv0/F;

    .line 88
    .line 89
    invoke-virtual {v3}, Lv0/p;->getSeekMap()Lv0/g0;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    invoke-interface {v4, v3}, Lv0/F;->seekMap(Lv0/g0;)V

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_2
    move-object v5, v4

    .line 98
    iget-object v3, v0, Lc1/S;->n:Lv0/F;

    .line 99
    .line 100
    new-instance v4, Lv0/f0;

    .line 101
    .line 102
    invoke-virtual {v5}, Lc1/O;->getDurationUs()J

    .line 103
    .line 104
    .line 105
    move-result-wide v5

    .line 106
    invoke-direct {v4, v5, v6}, Lv0/f0;-><init>(J)V

    .line 107
    .line 108
    .line 109
    invoke-interface {v3, v4}, Lv0/F;->seekMap(Lv0/g0;)V

    .line 110
    .line 111
    .line 112
    :cond_3
    :goto_1
    iget-boolean v3, v0, Lc1/S;->r:Z

    .line 113
    .line 114
    if-eqz v3, :cond_4

    .line 115
    .line 116
    iput-boolean v12, v0, Lc1/S;->r:Z

    .line 117
    .line 118
    const-wide/16 v3, 0x0

    .line 119
    .line 120
    invoke-virtual {v0, v3, v4, v3, v4}, Lc1/S;->seek(JJ)V

    .line 121
    .line 122
    .line 123
    invoke-interface {v1}, Lv0/D;->getPosition()J

    .line 124
    .line 125
    .line 126
    move-result-wide v5

    .line 127
    cmp-long v5, v5, v3

    .line 128
    .line 129
    if-eqz v5, :cond_4

    .line 130
    .line 131
    iput-wide v3, v2, Lv0/c0;->a:J

    .line 132
    .line 133
    return v11

    .line 134
    :cond_4
    iget-object v3, v0, Lc1/S;->m:Lc1/N;

    .line 135
    .line 136
    if-eqz v3, :cond_5

    .line 137
    .line 138
    invoke-virtual {v3}, Lv0/p;->isSeeking()Z

    .line 139
    .line 140
    .line 141
    move-result v3

    .line 142
    if-eqz v3, :cond_5

    .line 143
    .line 144
    iget-object v3, v0, Lc1/S;->m:Lc1/N;

    .line 145
    .line 146
    invoke-virtual {v3, v1, v2}, Lv0/p;->handlePendingSeek(Lv0/D;Lv0/c0;)I

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    return v1

    .line 151
    :cond_5
    iget-object v2, v0, Lc1/S;->e:Landroidx/media3/common/util/ParsableByteArray;

    .line 152
    .line 153
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    .line 158
    .line 159
    .line 160
    move-result v4

    .line 161
    rsub-int v4, v4, 0x24b8

    .line 162
    .line 163
    const/16 v5, 0xbc

    .line 164
    .line 165
    if-ge v4, v5, :cond_7

    .line 166
    .line 167
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 168
    .line 169
    .line 170
    move-result v4

    .line 171
    if-lez v4, :cond_6

    .line 172
    .line 173
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    .line 174
    .line 175
    .line 176
    move-result v6

    .line 177
    invoke-static {v3, v6, v3, v12, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 178
    .line 179
    .line 180
    :cond_6
    invoke-virtual {v2, v3, v4}, Landroidx/media3/common/util/ParsableByteArray;->reset([BI)V

    .line 181
    .line 182
    .line 183
    :cond_7
    :goto_2
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 184
    .line 185
    .line 186
    move-result v4

    .line 187
    iget-object v6, v0, Lc1/S;->i:Landroid/util/SparseArray;

    .line 188
    .line 189
    if-ge v4, v5, :cond_b

    .line 190
    .line 191
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    .line 192
    .line 193
    .line 194
    move-result v4

    .line 195
    rsub-int v9, v4, 0x24b8

    .line 196
    .line 197
    invoke-interface {v1, v3, v4, v9}, Lv0/D;->read([BII)I

    .line 198
    .line 199
    .line 200
    move-result v9

    .line 201
    const/4 v10, -0x1

    .line 202
    if-ne v9, v10, :cond_a

    .line 203
    .line 204
    :goto_3
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    .line 205
    .line 206
    .line 207
    move-result v1

    .line 208
    if-ge v12, v1, :cond_9

    .line 209
    .line 210
    invoke-virtual {v6, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    check-cast v1, Lc1/X;

    .line 215
    .line 216
    instance-of v2, v1, Lc1/D;

    .line 217
    .line 218
    if-eqz v2, :cond_8

    .line 219
    .line 220
    check-cast v1, Lc1/D;

    .line 221
    .line 222
    invoke-virtual {v1, v15}, Lc1/D;->canConsumeSynthesizedEmptyPusi(Z)Z

    .line 223
    .line 224
    .line 225
    move-result v2

    .line 226
    if-eqz v2, :cond_8

    .line 227
    .line 228
    new-instance v2, Landroidx/media3/common/util/ParsableByteArray;

    .line 229
    .line 230
    invoke-direct {v2}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v1, v2, v11}, Lc1/D;->consume(Landroidx/media3/common/util/ParsableByteArray;I)V

    .line 234
    .line 235
    .line 236
    :cond_8
    add-int/lit8 v12, v12, 0x1

    .line 237
    .line 238
    goto :goto_3

    .line 239
    :cond_9
    return v10

    .line 240
    :cond_a
    add-int/2addr v4, v9

    .line 241
    invoke-virtual {v2, v4}, Landroidx/media3/common/util/ParsableByteArray;->setLimit(I)V

    .line 242
    .line 243
    .line 244
    goto :goto_2

    .line 245
    :cond_b
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    .line 246
    .line 247
    .line 248
    move-result v1

    .line 249
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    .line 250
    .line 251
    .line 252
    move-result v3

    .line 253
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 254
    .line 255
    .line 256
    move-result-object v4

    .line 257
    invoke-static {v4, v1, v3}, Lc1/Y;->findSyncBytePosition([BII)I

    .line 258
    .line 259
    .line 260
    move-result v4

    .line 261
    invoke-virtual {v2, v4}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 262
    .line 263
    .line 264
    add-int/lit16 v5, v4, 0xbc

    .line 265
    .line 266
    const/4 v9, 0x0

    .line 267
    if-le v5, v3, :cond_d

    .line 268
    .line 269
    iget v3, v0, Lc1/S;->t:I

    .line 270
    .line 271
    sub-int/2addr v4, v1

    .line 272
    add-int/2addr v4, v3

    .line 273
    iput v4, v0, Lc1/S;->t:I

    .line 274
    .line 275
    if-ne v13, v14, :cond_e

    .line 276
    .line 277
    const/16 v1, 0x178

    .line 278
    .line 279
    if-gt v4, v1, :cond_c

    .line 280
    .line 281
    goto :goto_4

    .line 282
    :cond_c
    const-string v1, "Cannot find sync byte. Most likely not a Transport Stream."

    .line 283
    .line 284
    invoke-static {v1, v9}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 285
    .line 286
    .line 287
    move-result-object v1

    .line 288
    throw v1

    .line 289
    :cond_d
    iput v12, v0, Lc1/S;->t:I

    .line 290
    .line 291
    :cond_e
    :goto_4
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    .line 292
    .line 293
    .line 294
    move-result v1

    .line 295
    if-le v5, v1, :cond_f

    .line 296
    .line 297
    return v12

    .line 298
    :cond_f
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    .line 299
    .line 300
    .line 301
    move-result v3

    .line 302
    const/high16 v4, 0x800000

    .line 303
    .line 304
    and-int/2addr v4, v3

    .line 305
    if-eqz v4, :cond_10

    .line 306
    .line 307
    invoke-virtual {v2, v5}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 308
    .line 309
    .line 310
    return v12

    .line 311
    :cond_10
    const/high16 v4, 0x400000

    .line 312
    .line 313
    and-int/2addr v4, v3

    .line 314
    if-eqz v4, :cond_11

    .line 315
    .line 316
    move v4, v11

    .line 317
    goto :goto_5

    .line 318
    :cond_11
    move v4, v12

    .line 319
    :goto_5
    const v10, 0x1fff00

    .line 320
    .line 321
    .line 322
    and-int/2addr v10, v3

    .line 323
    shr-int/lit8 v10, v10, 0x8

    .line 324
    .line 325
    and-int/lit8 v15, v3, 0x20

    .line 326
    .line 327
    if-eqz v15, :cond_12

    .line 328
    .line 329
    move v15, v11

    .line 330
    goto :goto_6

    .line 331
    :cond_12
    move v15, v12

    .line 332
    :goto_6
    and-int/lit8 v18, v3, 0x10

    .line 333
    .line 334
    if-eqz v18, :cond_13

    .line 335
    .line 336
    invoke-virtual {v6, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 337
    .line 338
    .line 339
    move-result-object v6

    .line 340
    move-object v9, v6

    .line 341
    check-cast v9, Lc1/X;

    .line 342
    .line 343
    :cond_13
    if-nez v9, :cond_14

    .line 344
    .line 345
    invoke-virtual {v2, v5}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 346
    .line 347
    .line 348
    return v12

    .line 349
    :cond_14
    if-eq v13, v14, :cond_16

    .line 350
    .line 351
    and-int/lit8 v3, v3, 0xf

    .line 352
    .line 353
    iget-object v6, v0, Lc1/S;->f:Landroid/util/SparseIntArray;

    .line 354
    .line 355
    move/from16 v18, v11

    .line 356
    .line 357
    add-int/lit8 v11, v3, -0x1

    .line 358
    .line 359
    invoke-virtual {v6, v10, v11}, Landroid/util/SparseIntArray;->get(II)I

    .line 360
    .line 361
    .line 362
    move-result v11

    .line 363
    invoke-virtual {v6, v10, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 364
    .line 365
    .line 366
    if-ne v11, v3, :cond_15

    .line 367
    .line 368
    invoke-virtual {v2, v5}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 369
    .line 370
    .line 371
    return v12

    .line 372
    :cond_15
    add-int/lit8 v11, v11, 0x1

    .line 373
    .line 374
    and-int/lit8 v6, v11, 0xf

    .line 375
    .line 376
    if-eq v3, v6, :cond_17

    .line 377
    .line 378
    invoke-interface {v9}, Lc1/X;->seek()V

    .line 379
    .line 380
    .line 381
    goto :goto_7

    .line 382
    :cond_16
    move/from16 v18, v11

    .line 383
    .line 384
    :cond_17
    :goto_7
    if-eqz v15, :cond_19

    .line 385
    .line 386
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 387
    .line 388
    .line 389
    move-result v3

    .line 390
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 391
    .line 392
    .line 393
    move-result v6

    .line 394
    and-int/lit8 v6, v6, 0x40

    .line 395
    .line 396
    if-eqz v6, :cond_18

    .line 397
    .line 398
    move v6, v14

    .line 399
    goto :goto_8

    .line 400
    :cond_18
    move v6, v12

    .line 401
    :goto_8
    or-int/2addr v4, v6

    .line 402
    add-int/lit8 v3, v3, -0x1

    .line 403
    .line 404
    invoke-virtual {v2, v3}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 405
    .line 406
    .line 407
    :cond_19
    iget-boolean v3, v0, Lc1/S;->p:Z

    .line 408
    .line 409
    if-eq v13, v14, :cond_1a

    .line 410
    .line 411
    if-nez v3, :cond_1a

    .line 412
    .line 413
    iget-object v6, v0, Lc1/S;->k:Landroid/util/SparseBooleanArray;

    .line 414
    .line 415
    invoke-virtual {v6, v10, v12}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    .line 416
    .line 417
    .line 418
    move-result v6

    .line 419
    if-nez v6, :cond_1b

    .line 420
    .line 421
    :cond_1a
    invoke-virtual {v2, v5}, Landroidx/media3/common/util/ParsableByteArray;->setLimit(I)V

    .line 422
    .line 423
    .line 424
    invoke-interface {v9, v2, v4}, Lc1/X;->consume(Landroidx/media3/common/util/ParsableByteArray;I)V

    .line 425
    .line 426
    .line 427
    invoke-virtual {v2, v1}, Landroidx/media3/common/util/ParsableByteArray;->setLimit(I)V

    .line 428
    .line 429
    .line 430
    :cond_1b
    if-eq v13, v14, :cond_1c

    .line 431
    .line 432
    if-nez v3, :cond_1c

    .line 433
    .line 434
    iget-boolean v1, v0, Lc1/S;->p:Z

    .line 435
    .line 436
    if-eqz v1, :cond_1c

    .line 437
    .line 438
    cmp-long v1, v7, v16

    .line 439
    .line 440
    if-eqz v1, :cond_1c

    .line 441
    .line 442
    move/from16 v1, v18

    .line 443
    .line 444
    iput-boolean v1, v0, Lc1/S;->r:Z

    .line 445
    .line 446
    :cond_1c
    invoke-virtual {v2, v5}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 447
    .line 448
    .line 449
    return v12
.end method

.method public release()V
    .locals 0

    .line 1
    return-void
.end method

.method public seek(JJ)V
    .locals 10

    .line 1
    iget p1, p0, Lc1/S;->a:I

    .line 2
    .line 3
    const/4 p2, 0x2

    .line 4
    const/4 v0, 0x1

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eq p1, p2, :cond_0

    .line 7
    .line 8
    move p1, v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move p1, v1

    .line 11
    :goto_0
    invoke-static {p1}, LP3/v;->checkState(Z)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lc1/S;->d:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    move v2, v1

    .line 21
    :goto_1
    const-wide/16 v3, 0x0

    .line 22
    .line 23
    if-ge v2, p2, :cond_5

    .line 24
    .line 25
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    check-cast v5, Landroidx/media3/common/util/TimestampAdjuster;

    .line 30
    .line 31
    invoke-virtual {v5}, Landroidx/media3/common/util/TimestampAdjuster;->getTimestampOffsetUs()J

    .line 32
    .line 33
    .line 34
    move-result-wide v6

    .line 35
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    cmp-long v6, v6, v8

    .line 41
    .line 42
    if-nez v6, :cond_1

    .line 43
    .line 44
    move v6, v0

    .line 45
    goto :goto_2

    .line 46
    :cond_1
    move v6, v1

    .line 47
    :goto_2
    if-nez v6, :cond_3

    .line 48
    .line 49
    invoke-virtual {v5}, Landroidx/media3/common/util/TimestampAdjuster;->getFirstSampleTimestampUs()J

    .line 50
    .line 51
    .line 52
    move-result-wide v6

    .line 53
    cmp-long v8, v6, v8

    .line 54
    .line 55
    if-eqz v8, :cond_2

    .line 56
    .line 57
    cmp-long v3, v6, v3

    .line 58
    .line 59
    if-eqz v3, :cond_2

    .line 60
    .line 61
    cmp-long v3, v6, p3

    .line 62
    .line 63
    if-eqz v3, :cond_2

    .line 64
    .line 65
    move v6, v0

    .line 66
    goto :goto_3

    .line 67
    :cond_2
    move v6, v1

    .line 68
    :cond_3
    :goto_3
    if-eqz v6, :cond_4

    .line 69
    .line 70
    invoke-virtual {v5, p3, p4}, Landroidx/media3/common/util/TimestampAdjuster;->reset(J)V

    .line 71
    .line 72
    .line 73
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_5
    cmp-long p1, p3, v3

    .line 77
    .line 78
    if-eqz p1, :cond_6

    .line 79
    .line 80
    iget-object p1, p0, Lc1/S;->m:Lc1/N;

    .line 81
    .line 82
    if-eqz p1, :cond_6

    .line 83
    .line 84
    invoke-virtual {p1, p3, p4}, Lv0/p;->setSeekTargetUs(J)V

    .line 85
    .line 86
    .line 87
    :cond_6
    iget-object p1, p0, Lc1/S;->e:Landroidx/media3/common/util/ParsableByteArray;

    .line 88
    .line 89
    invoke-virtual {p1, v1}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    .line 90
    .line 91
    .line 92
    iget-object p1, p0, Lc1/S;->f:Landroid/util/SparseIntArray;

    .line 93
    .line 94
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    .line 95
    .line 96
    .line 97
    move p1, v1

    .line 98
    :goto_4
    iget-object p2, p0, Lc1/S;->i:Landroid/util/SparseArray;

    .line 99
    .line 100
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    .line 101
    .line 102
    .line 103
    move-result p3

    .line 104
    if-ge p1, p3, :cond_7

    .line 105
    .line 106
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object p2

    .line 110
    check-cast p2, Lc1/X;

    .line 111
    .line 112
    invoke-interface {p2}, Lc1/X;->seek()V

    .line 113
    .line 114
    .line 115
    add-int/lit8 p1, p1, 0x1

    .line 116
    .line 117
    goto :goto_4

    .line 118
    :cond_7
    iput v1, p0, Lc1/S;->t:I

    .line 119
    .line 120
    return-void
.end method

.method public sniff(Lv0/D;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc1/S;->e:Landroidx/media3/common/util/ParsableByteArray;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/16 v1, 0x3ac

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-interface {p1, v0, v2, v1}, Lv0/D;->peekFully([BII)V

    .line 11
    .line 12
    .line 13
    move v1, v2

    .line 14
    :goto_0
    const/16 v3, 0xbc

    .line 15
    .line 16
    if-ge v1, v3, :cond_2

    .line 17
    .line 18
    move v3, v2

    .line 19
    :goto_1
    const/4 v4, 0x5

    .line 20
    if-ge v3, v4, :cond_1

    .line 21
    .line 22
    mul-int/lit16 v4, v3, 0xbc

    .line 23
    .line 24
    add-int/2addr v4, v1

    .line 25
    aget-byte v4, v0, v4

    .line 26
    .line 27
    const/16 v5, 0x47

    .line 28
    .line 29
    if-eq v4, v5, :cond_0

    .line 30
    .line 31
    add-int/lit8 v1, v1, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    invoke-interface {p1, v1}, Lv0/D;->skipFully(I)V

    .line 38
    .line 39
    .line 40
    const/4 p1, 0x1

    .line 41
    return p1

    .line 42
    :cond_2
    return v2
.end method
