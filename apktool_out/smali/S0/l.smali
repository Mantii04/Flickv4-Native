.class public final LS0/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv0/C;


# instance fields
.field public final a:LS0/s;

.field public final b:LS0/b;

.field public final c:Landroidx/media3/common/Format;

.field public final d:Ljava/util/ArrayList;

.field public final e:Landroidx/media3/common/util/ParsableByteArray;

.field public f:[B

.field public g:Lv0/r0;

.field public h:I

.field public i:I

.field public j:[J

.field public k:J


# direct methods
.method public constructor <init>(LS0/s;Landroidx/media3/common/Format;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LS0/l;->a:LS0/s;

    .line 5
    .line 6
    new-instance v0, LS0/b;

    .line 7
    .line 8
    invoke-direct {v0}, LS0/b;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, LS0/l;->b:LS0/b;

    .line 12
    .line 13
    sget-object v0, Landroidx/media3/common/util/Util;->EMPTY_BYTE_ARRAY:[B

    .line 14
    .line 15
    iput-object v0, p0, LS0/l;->f:[B

    .line 16
    .line 17
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    .line 18
    .line 19
    invoke-direct {v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, LS0/l;->e:Landroidx/media3/common/util/ParsableByteArray;

    .line 23
    .line 24
    if-eqz p2, :cond_0

    .line 25
    .line 26
    invoke-virtual {p2}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v1, "application/x-media3-cues"

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget-object p2, p2, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v0, p2}, Landroidx/media3/common/Format$Builder;->setCodecs(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    invoke-interface {p1}, LS0/s;->getCueReplacementBehavior()I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    invoke-virtual {p2, p1}, Landroidx/media3/common/Format$Builder;->setCueReplacementBehavior(I)Landroidx/media3/common/Format$Builder;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p1}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    const/4 p1, 0x0

    .line 56
    :goto_0
    iput-object p1, p0, LS0/l;->c:Landroidx/media3/common/Format;

    .line 57
    .line 58
    new-instance p1, Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .line 62
    .line 63
    iput-object p1, p0, LS0/l;->d:Ljava/util/ArrayList;

    .line 64
    .line 65
    const/4 p1, 0x0

    .line 66
    iput p1, p0, LS0/l;->i:I

    .line 67
    .line 68
    sget-object p1, Landroidx/media3/common/util/Util;->EMPTY_LONG_ARRAY:[J

    .line 69
    .line 70
    iput-object p1, p0, LS0/l;->j:[J

    .line 71
    .line 72
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    iput-wide p1, p0, LS0/l;->k:J

    .line 78
    .line 79
    return-void
.end method


# virtual methods
.method public final a(LS0/k;)V
    .locals 8

    .line 1
    iget-object v0, p0, LS0/l;->g:Lv0/r0;

    .line 2
    .line 3
    invoke-static {v0}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget-object v0, p1, LS0/k;->e:[B

    .line 7
    .line 8
    array-length v5, v0

    .line 9
    iget-object v1, p0, LS0/l;->e:Landroidx/media3/common/util/ParsableByteArray;

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Landroidx/media3/common/util/ParsableByteArray;->reset([B)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, LS0/l;->g:Lv0/r0;

    .line 15
    .line 16
    invoke-interface {v0, v1, v5}, Lv0/r0;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, LS0/l;->g:Lv0/r0;

    .line 20
    .line 21
    const/4 v6, 0x0

    .line 22
    const/4 v7, 0x0

    .line 23
    iget-wide v2, p1, LS0/k;->b:J

    .line 24
    .line 25
    const/4 v4, 0x1

    .line 26
    invoke-interface/range {v1 .. v7}, Lv0/r0;->sampleMetadata(JIIILv0/q0;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

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
    .locals 7

    .line 1
    iget v0, p0, LS0/l;->i:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    move v0, v2

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v0, v1

    .line 10
    :goto_0
    invoke-static {v0}, LP3/v;->checkState(Z)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x3

    .line 14
    invoke-interface {p1, v1, v0}, Lv0/F;->track(II)Lv0/r0;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, LS0/l;->g:Lv0/r0;

    .line 19
    .line 20
    iget-object v3, p0, LS0/l;->c:Landroidx/media3/common/Format;

    .line 21
    .line 22
    if-eqz v3, :cond_1

    .line 23
    .line 24
    invoke-interface {v0, v3}, Lv0/r0;->format(Landroidx/media3/common/Format;)V

    .line 25
    .line 26
    .line 27
    invoke-interface {p1}, Lv0/F;->endTracks()V

    .line 28
    .line 29
    .line 30
    new-instance v0, Lv0/X;

    .line 31
    .line 32
    const-wide/16 v3, 0x0

    .line 33
    .line 34
    new-array v5, v2, [J

    .line 35
    .line 36
    aput-wide v3, v5, v1

    .line 37
    .line 38
    new-array v6, v2, [J

    .line 39
    .line 40
    aput-wide v3, v6, v1

    .line 41
    .line 42
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    invoke-direct {v0, v5, v6, v3, v4}, Lv0/X;-><init>([J[JJ)V

    .line 48
    .line 49
    .line 50
    invoke-interface {p1, v0}, Lv0/F;->seekMap(Lv0/g0;)V

    .line 51
    .line 52
    .line 53
    :cond_1
    iput v2, p0, LS0/l;->i:I

    .line 54
    .line 55
    return-void
.end method

.method public read(Lv0/D;Lv0/c0;)I
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    iget v2, v1, LS0/l;->i:I

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x1

    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    const/4 v5, 0x5

    .line 12
    if-eq v2, v5, :cond_0

    .line 13
    .line 14
    move v2, v4

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v2, v3

    .line 17
    :goto_0
    invoke-static {v2}, LP3/v;->checkState(Z)V

    .line 18
    .line 19
    .line 20
    iget v2, v1, LS0/l;->i:I

    .line 21
    .line 22
    const/4 v5, 0x2

    .line 23
    const/16 v6, 0x400

    .line 24
    .line 25
    const-wide/16 v7, -0x1

    .line 26
    .line 27
    if-ne v2, v4, :cond_3

    .line 28
    .line 29
    invoke-interface {v0}, Lv0/D;->getLength()J

    .line 30
    .line 31
    .line 32
    move-result-wide v9

    .line 33
    cmp-long v2, v9, v7

    .line 34
    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    invoke-interface {v0}, Lv0/D;->getLength()J

    .line 38
    .line 39
    .line 40
    move-result-wide v9

    .line 41
    invoke-static {v9, v10}, Lcom/google/common/primitives/a;->checkedCast(J)I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    move v2, v6

    .line 47
    :goto_1
    iget-object v9, v1, LS0/l;->f:[B

    .line 48
    .line 49
    array-length v9, v9

    .line 50
    if-le v2, v9, :cond_2

    .line 51
    .line 52
    new-array v2, v2, [B

    .line 53
    .line 54
    iput-object v2, v1, LS0/l;->f:[B

    .line 55
    .line 56
    :cond_2
    iput v3, v1, LS0/l;->h:I

    .line 57
    .line 58
    iput v5, v1, LS0/l;->i:I

    .line 59
    .line 60
    :cond_3
    iget v2, v1, LS0/l;->i:I

    .line 61
    .line 62
    iget-object v9, v1, LS0/l;->d:Ljava/util/ArrayList;

    .line 63
    .line 64
    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    const/4 v12, 0x4

    .line 70
    const/4 v13, -0x1

    .line 71
    if-ne v2, v5, :cond_a

    .line 72
    .line 73
    iget-object v2, v1, LS0/l;->f:[B

    .line 74
    .line 75
    array-length v5, v2

    .line 76
    iget v14, v1, LS0/l;->h:I

    .line 77
    .line 78
    if-ne v5, v14, :cond_4

    .line 79
    .line 80
    array-length v5, v2

    .line 81
    add-int/2addr v5, v6

    .line 82
    invoke-static {v2, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    iput-object v2, v1, LS0/l;->f:[B

    .line 87
    .line 88
    :cond_4
    iget-object v2, v1, LS0/l;->f:[B

    .line 89
    .line 90
    iget v5, v1, LS0/l;->h:I

    .line 91
    .line 92
    array-length v14, v2

    .line 93
    sub-int/2addr v14, v5

    .line 94
    invoke-interface {v0, v2, v5, v14}, Lv0/D;->read([BII)I

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    if-eq v2, v13, :cond_5

    .line 99
    .line 100
    iget v5, v1, LS0/l;->h:I

    .line 101
    .line 102
    add-int/2addr v5, v2

    .line 103
    iput v5, v1, LS0/l;->h:I

    .line 104
    .line 105
    :cond_5
    invoke-interface {v0}, Lv0/D;->getLength()J

    .line 106
    .line 107
    .line 108
    move-result-wide v14

    .line 109
    cmp-long v5, v14, v7

    .line 110
    .line 111
    if-eqz v5, :cond_6

    .line 112
    .line 113
    iget v5, v1, LS0/l;->h:I

    .line 114
    .line 115
    move-wide/from16 v16, v7

    .line 116
    .line 117
    int-to-long v6, v5

    .line 118
    cmp-long v5, v6, v14

    .line 119
    .line 120
    if-eqz v5, :cond_7

    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_6
    move-wide/from16 v16, v7

    .line 124
    .line 125
    :goto_2
    if-ne v2, v13, :cond_b

    .line 126
    .line 127
    :cond_7
    :try_start_0
    iget-wide v5, v1, LS0/l;->k:J

    .line 128
    .line 129
    cmp-long v2, v5, v10

    .line 130
    .line 131
    if-eqz v2, :cond_8

    .line 132
    .line 133
    invoke-static {v5, v6}, LS0/r;->cuesAfterThenRemainingCuesBefore(J)LS0/r;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    :goto_3
    move-object/from16 v22, v2

    .line 138
    .line 139
    goto :goto_4

    .line 140
    :catch_0
    move-exception v0

    .line 141
    goto :goto_6

    .line 142
    :cond_8
    invoke-static {}, LS0/r;->allCues()LS0/r;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    goto :goto_3

    .line 147
    :goto_4
    iget-object v2, v1, LS0/l;->a:LS0/s;

    .line 148
    .line 149
    iget-object v5, v1, LS0/l;->f:[B

    .line 150
    .line 151
    iget v6, v1, LS0/l;->h:I

    .line 152
    .line 153
    new-instance v7, LA0/a;

    .line 154
    .line 155
    const/16 v8, 0xa

    .line 156
    .line 157
    invoke-direct {v7, v1, v8}, LA0/a;-><init>(Ljava/lang/Object;I)V

    .line 158
    .line 159
    .line 160
    const/16 v20, 0x0

    .line 161
    .line 162
    move-object/from16 v18, v2

    .line 163
    .line 164
    move-object/from16 v19, v5

    .line 165
    .line 166
    move/from16 v21, v6

    .line 167
    .line 168
    move-object/from16 v23, v7

    .line 169
    .line 170
    invoke-interface/range {v18 .. v23}, LS0/s;->parse([BIILS0/r;Landroidx/media3/common/util/Consumer;)V

    .line 171
    .line 172
    .line 173
    invoke-static {v9}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 177
    .line 178
    .line 179
    move-result v2

    .line 180
    new-array v2, v2, [J

    .line 181
    .line 182
    iput-object v2, v1, LS0/l;->j:[J

    .line 183
    .line 184
    move v2, v3

    .line 185
    :goto_5
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 186
    .line 187
    .line 188
    move-result v5

    .line 189
    if-ge v2, v5, :cond_9

    .line 190
    .line 191
    iget-object v5, v1, LS0/l;->j:[J

    .line 192
    .line 193
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v6

    .line 197
    check-cast v6, LS0/k;

    .line 198
    .line 199
    iget-wide v6, v6, LS0/k;->b:J

    .line 200
    .line 201
    aput-wide v6, v5, v2

    .line 202
    .line 203
    add-int/lit8 v2, v2, 0x1

    .line 204
    .line 205
    goto :goto_5

    .line 206
    :cond_9
    sget-object v2, Landroidx/media3/common/util/Util;->EMPTY_BYTE_ARRAY:[B

    .line 207
    .line 208
    iput-object v2, v1, LS0/l;->f:[B
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    .line 210
    iput v12, v1, LS0/l;->i:I

    .line 211
    .line 212
    goto :goto_7

    .line 213
    :goto_6
    const-string v2, "SubtitleParser failed."

    .line 214
    .line 215
    invoke-static {v2, v0}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    throw v0

    .line 220
    :cond_a
    move-wide/from16 v16, v7

    .line 221
    .line 222
    :cond_b
    :goto_7
    iget v2, v1, LS0/l;->i:I

    .line 223
    .line 224
    const/4 v5, 0x3

    .line 225
    if-ne v2, v5, :cond_f

    .line 226
    .line 227
    invoke-interface {v0}, Lv0/D;->getLength()J

    .line 228
    .line 229
    .line 230
    move-result-wide v5

    .line 231
    cmp-long v2, v5, v16

    .line 232
    .line 233
    if-eqz v2, :cond_c

    .line 234
    .line 235
    invoke-interface {v0}, Lv0/D;->getLength()J

    .line 236
    .line 237
    .line 238
    move-result-wide v5

    .line 239
    invoke-static {v5, v6}, Lcom/google/common/primitives/a;->checkedCast(J)I

    .line 240
    .line 241
    .line 242
    move-result v6

    .line 243
    goto :goto_8

    .line 244
    :cond_c
    const/16 v6, 0x400

    .line 245
    .line 246
    :goto_8
    invoke-interface {v0, v6}, Lv0/D;->skip(I)I

    .line 247
    .line 248
    .line 249
    move-result v0

    .line 250
    if-ne v0, v13, :cond_f

    .line 251
    .line 252
    iget-wide v5, v1, LS0/l;->k:J

    .line 253
    .line 254
    cmp-long v0, v5, v10

    .line 255
    .line 256
    if-nez v0, :cond_d

    .line 257
    .line 258
    move v0, v3

    .line 259
    goto :goto_9

    .line 260
    :cond_d
    iget-object v0, v1, LS0/l;->j:[J

    .line 261
    .line 262
    invoke-static {v0, v5, v6, v4, v4}, Landroidx/media3/common/util/Util;->binarySearchFloor([JJZZ)I

    .line 263
    .line 264
    .line 265
    move-result v0

    .line 266
    :goto_9
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 267
    .line 268
    .line 269
    move-result v2

    .line 270
    if-ge v0, v2, :cond_e

    .line 271
    .line 272
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object v2

    .line 276
    check-cast v2, LS0/k;

    .line 277
    .line 278
    invoke-virtual {v1, v2}, LS0/l;->a(LS0/k;)V

    .line 279
    .line 280
    .line 281
    add-int/lit8 v0, v0, 0x1

    .line 282
    .line 283
    goto :goto_9

    .line 284
    :cond_e
    iput v12, v1, LS0/l;->i:I

    .line 285
    .line 286
    :cond_f
    iget v0, v1, LS0/l;->i:I

    .line 287
    .line 288
    if-ne v0, v12, :cond_10

    .line 289
    .line 290
    return v13

    .line 291
    :cond_10
    return v3
.end method

.method public release()V
    .locals 2

    .line 1
    iget v0, p0, LS0/l;->i:I

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    iget-object v0, p0, LS0/l;->a:LS0/s;

    .line 8
    .line 9
    invoke-interface {v0}, LS0/s;->reset()V

    .line 10
    .line 11
    .line 12
    iput v1, p0, LS0/l;->i:I

    .line 13
    .line 14
    return-void
.end method

.method public seek(JJ)V
    .locals 1

    .line 1
    iget p1, p0, LS0/l;->i:I

    .line 2
    .line 3
    const/4 p2, 0x1

    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x5

    .line 7
    if-eq p1, v0, :cond_0

    .line 8
    .line 9
    move p1, p2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    :goto_0
    invoke-static {p1}, LP3/v;->checkState(Z)V

    .line 13
    .line 14
    .line 15
    iput-wide p3, p0, LS0/l;->k:J

    .line 16
    .line 17
    iget p1, p0, LS0/l;->i:I

    .line 18
    .line 19
    const/4 p3, 0x2

    .line 20
    if-ne p1, p3, :cond_1

    .line 21
    .line 22
    iput p2, p0, LS0/l;->i:I

    .line 23
    .line 24
    :cond_1
    iget p1, p0, LS0/l;->i:I

    .line 25
    .line 26
    const/4 p2, 0x4

    .line 27
    if-ne p1, p2, :cond_2

    .line 28
    .line 29
    const/4 p1, 0x3

    .line 30
    iput p1, p0, LS0/l;->i:I

    .line 31
    .line 32
    :cond_2
    return-void
.end method

.method public sniff(Lv0/D;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 p1, 0x1

    .line 2
    return p1
.end method
