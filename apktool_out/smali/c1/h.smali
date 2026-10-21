.class public final Lc1/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc1/j;


# instance fields
.field public final a:Landroidx/media3/common/util/ParsableByteArray;

.field public final b:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final c:Ljava/lang/String;

.field public final d:I

.field public final e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Lv0/r0;

.field public h:I

.field public i:I

.field public j:I

.field public k:J

.field public l:Landroidx/media3/common/Format;

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:J


# direct methods
.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    .line 5
    .line 6
    new-array p3, p3, [B

    .line 7
    .line 8
    invoke-direct {v0, p3}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lc1/h;->a:Landroidx/media3/common/util/ParsableByteArray;

    .line 12
    .line 13
    const/4 p3, 0x0

    .line 14
    iput p3, p0, Lc1/h;->h:I

    .line 15
    .line 16
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    iput-wide v0, p0, Lc1/h;->q:J

    .line 22
    .line 23
    new-instance p3, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 24
    .line 25
    invoke-direct {p3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object p3, p0, Lc1/h;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 29
    .line 30
    const/4 p3, -0x1

    .line 31
    iput p3, p0, Lc1/h;->o:I

    .line 32
    .line 33
    iput p3, p0, Lc1/h;->p:I

    .line 34
    .line 35
    iput-object p1, p0, Lc1/h;->c:Ljava/lang/String;

    .line 36
    .line 37
    iput p2, p0, Lc1/h;->d:I

    .line 38
    .line 39
    iput-object p4, p0, Lc1/h;->e:Ljava/lang/String;

    .line 40
    .line 41
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
    iget v1, p0, Lc1/h;->i:I

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
    iget v1, p0, Lc1/h;->i:I

    .line 14
    .line 15
    invoke-virtual {p1, p2, v1, v0}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 16
    .line 17
    .line 18
    iget p1, p0, Lc1/h;->i:I

    .line 19
    .line 20
    add-int/2addr p1, v0

    .line 21
    iput p1, p0, Lc1/h;->i:I

    .line 22
    .line 23
    if-ne p1, p3, :cond_0

    .line 24
    .line 25
    const/4 p1, 0x1

    .line 26
    return p1

    .line 27
    :cond_0
    const/4 p1, 0x0

    .line 28
    return p1
.end method

.method public final b(Lv0/z;)V
    .locals 5

    .line 1
    iget v0, p1, Lv0/z;->b:I

    .line 2
    .line 3
    const v1, -0x7fffffff

    .line 4
    .line 5
    .line 6
    if-eq v0, v1, :cond_3

    .line 7
    .line 8
    const/4 v1, -0x1

    .line 9
    iget v2, p1, Lv0/z;->c:I

    .line 10
    .line 11
    if-ne v2, v1, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    iget-object v1, p0, Lc1/h;->l:Landroidx/media3/common/Format;

    .line 15
    .line 16
    iget-object v3, p1, Lv0/z;->a:Ljava/lang/String;

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    iget v4, v1, Landroidx/media3/common/Format;->channelCount:I

    .line 21
    .line 22
    if-ne v2, v4, :cond_1

    .line 23
    .line 24
    iget v4, v1, Landroidx/media3/common/Format;->sampleRate:I

    .line 25
    .line 26
    if-ne v0, v4, :cond_1

    .line 27
    .line 28
    iget-object v0, v1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 29
    .line 30
    invoke-static {v3, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_3

    .line 35
    .line 36
    :cond_1
    iget-object v0, p0, Lc1/h;->l:Landroidx/media3/common/Format;

    .line 37
    .line 38
    if-nez v0, :cond_2

    .line 39
    .line 40
    new-instance v0, Landroidx/media3/common/Format$Builder;

    .line 41
    .line 42
    invoke-direct {v0}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    invoke-virtual {v0}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    :goto_0
    iget-object v1, p0, Lc1/h;->f:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setId(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iget-object v1, p0, Lc1/h;->e:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setContainerMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v0, v3}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v0, v2}, Landroidx/media3/common/Format$Builder;->setChannelCount(I)Landroidx/media3/common/Format$Builder;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    iget p1, p1, Lv0/z;->b:I

    .line 71
    .line 72
    invoke-virtual {v0, p1}, Landroidx/media3/common/Format$Builder;->setSampleRate(I)Landroidx/media3/common/Format$Builder;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    iget-object v0, p0, Lc1/h;->c:Ljava/lang/String;

    .line 77
    .line 78
    invoke-virtual {p1, v0}, Landroidx/media3/common/Format$Builder;->setLanguage(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    iget v0, p0, Lc1/h;->d:I

    .line 83
    .line 84
    invoke-virtual {p1, v0}, Landroidx/media3/common/Format$Builder;->setRoleFlags(I)Landroidx/media3/common/Format$Builder;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {p1}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    iput-object p1, p0, Lc1/h;->l:Landroidx/media3/common/Format;

    .line 93
    .line 94
    iget-object v0, p0, Lc1/h;->g:Lv0/r0;

    .line 95
    .line 96
    invoke-interface {v0, p1}, Lv0/r0;->format(Landroidx/media3/common/Format;)V

    .line 97
    .line 98
    .line 99
    :cond_3
    :goto_1
    return-void
.end method

.method public consume(Landroidx/media3/common/util/ParsableByteArray;)V
    .locals 19
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
    iget-object v2, v0, Lc1/h;->g:Lv0/r0;

    .line 6
    .line 7
    invoke-static {v2}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    :cond_0
    :goto_0
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-lez v2, :cond_c

    .line 15
    .line 16
    iget v2, v0, Lc1/h;->h:I

    .line 17
    .line 18
    const-wide/16 v3, 0x0

    .line 19
    .line 20
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    const/4 v7, 0x6

    .line 26
    const/4 v8, 0x3

    .line 27
    const/4 v9, 0x4

    .line 28
    const/4 v10, 0x1

    .line 29
    const/4 v11, 0x0

    .line 30
    iget-object v12, v0, Lc1/h;->a:Landroidx/media3/common/util/ParsableByteArray;

    .line 31
    .line 32
    packed-switch v2, :pswitch_data_0

    .line 33
    .line 34
    .line 35
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 36
    .line 37
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 38
    .line 39
    .line 40
    throw v1

    .line 41
    :pswitch_0
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    iget v3, v0, Lc1/h;->m:I

    .line 46
    .line 47
    iget v4, v0, Lc1/h;->i:I

    .line 48
    .line 49
    sub-int/2addr v3, v4

    .line 50
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    iget-object v3, v0, Lc1/h;->g:Lv0/r0;

    .line 55
    .line 56
    invoke-interface {v3, v1, v2}, Lv0/r0;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    .line 57
    .line 58
    .line 59
    iget v3, v0, Lc1/h;->i:I

    .line 60
    .line 61
    add-int/2addr v3, v2

    .line 62
    iput v3, v0, Lc1/h;->i:I

    .line 63
    .line 64
    iget v2, v0, Lc1/h;->m:I

    .line 65
    .line 66
    if-ne v3, v2, :cond_0

    .line 67
    .line 68
    iget-wide v2, v0, Lc1/h;->q:J

    .line 69
    .line 70
    cmp-long v2, v2, v5

    .line 71
    .line 72
    if-eqz v2, :cond_1

    .line 73
    .line 74
    move v2, v10

    .line 75
    goto :goto_1

    .line 76
    :cond_1
    move v2, v11

    .line 77
    :goto_1
    invoke-static {v2}, LP3/v;->checkState(Z)V

    .line 78
    .line 79
    .line 80
    iget-object v12, v0, Lc1/h;->g:Lv0/r0;

    .line 81
    .line 82
    iget-wide v13, v0, Lc1/h;->q:J

    .line 83
    .line 84
    iget v2, v0, Lc1/h;->n:I

    .line 85
    .line 86
    if-ne v2, v9, :cond_2

    .line 87
    .line 88
    move v15, v11

    .line 89
    goto :goto_2

    .line 90
    :cond_2
    move v15, v10

    .line 91
    :goto_2
    iget v2, v0, Lc1/h;->m:I

    .line 92
    .line 93
    const/16 v17, 0x0

    .line 94
    .line 95
    const/16 v18, 0x0

    .line 96
    .line 97
    move/from16 v16, v2

    .line 98
    .line 99
    invoke-interface/range {v12 .. v18}, Lv0/r0;->sampleMetadata(JIIILv0/q0;)V

    .line 100
    .line 101
    .line 102
    iget-wide v2, v0, Lc1/h;->q:J

    .line 103
    .line 104
    iget-wide v4, v0, Lc1/h;->k:J

    .line 105
    .line 106
    add-long/2addr v2, v4

    .line 107
    iput-wide v2, v0, Lc1/h;->q:J

    .line 108
    .line 109
    iput v11, v0, Lc1/h;->h:I

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :pswitch_1
    invoke-virtual {v12}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    iget v9, v0, Lc1/h;->p:I

    .line 117
    .line 118
    invoke-virtual {v0, v1, v2, v9}, Lc1/h;->a(Landroidx/media3/common/util/ParsableByteArray;[BI)Z

    .line 119
    .line 120
    .line 121
    move-result v2

    .line 122
    if-eqz v2, :cond_0

    .line 123
    .line 124
    invoke-virtual {v12}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    iget-object v9, v0, Lc1/h;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 129
    .line 130
    invoke-static {v2, v9}, Lv0/A;->parseDtsUhdHeader([BLjava/util/concurrent/atomic/AtomicInteger;)Lv0/z;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    iget v9, v0, Lc1/h;->n:I

    .line 135
    .line 136
    if-ne v9, v8, :cond_3

    .line 137
    .line 138
    invoke-virtual {v0, v2}, Lc1/h;->b(Lv0/z;)V

    .line 139
    .line 140
    .line 141
    :cond_3
    iget v8, v2, Lv0/z;->d:I

    .line 142
    .line 143
    iput v8, v0, Lc1/h;->m:I

    .line 144
    .line 145
    iget-wide v8, v2, Lv0/z;->e:J

    .line 146
    .line 147
    cmp-long v2, v8, v5

    .line 148
    .line 149
    if-nez v2, :cond_4

    .line 150
    .line 151
    goto :goto_3

    .line 152
    :cond_4
    move-wide v3, v8

    .line 153
    :goto_3
    iput-wide v3, v0, Lc1/h;->k:J

    .line 154
    .line 155
    invoke-virtual {v12, v11}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 156
    .line 157
    .line 158
    iget-object v2, v0, Lc1/h;->g:Lv0/r0;

    .line 159
    .line 160
    iget v3, v0, Lc1/h;->p:I

    .line 161
    .line 162
    invoke-interface {v2, v12, v3}, Lv0/r0;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    .line 163
    .line 164
    .line 165
    iput v7, v0, Lc1/h;->h:I

    .line 166
    .line 167
    goto/16 :goto_0

    .line 168
    .line 169
    :pswitch_2
    invoke-virtual {v12}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    invoke-virtual {v0, v1, v2, v7}, Lc1/h;->a(Landroidx/media3/common/util/ParsableByteArray;[BI)Z

    .line 174
    .line 175
    .line 176
    move-result v2

    .line 177
    if-eqz v2, :cond_0

    .line 178
    .line 179
    invoke-virtual {v12}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    invoke-static {v2}, Lv0/A;->parseDtsUhdHeaderSize([B)I

    .line 184
    .line 185
    .line 186
    move-result v2

    .line 187
    iput v2, v0, Lc1/h;->p:I

    .line 188
    .line 189
    iget v3, v0, Lc1/h;->i:I

    .line 190
    .line 191
    if-le v3, v2, :cond_5

    .line 192
    .line 193
    sub-int v2, v3, v2

    .line 194
    .line 195
    sub-int/2addr v3, v2

    .line 196
    iput v3, v0, Lc1/h;->i:I

    .line 197
    .line 198
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    .line 199
    .line 200
    .line 201
    move-result v3

    .line 202
    sub-int/2addr v3, v2

    .line 203
    invoke-virtual {v1, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 204
    .line 205
    .line 206
    :cond_5
    const/4 v2, 0x5

    .line 207
    iput v2, v0, Lc1/h;->h:I

    .line 208
    .line 209
    goto/16 :goto_0

    .line 210
    .line 211
    :pswitch_3
    invoke-virtual {v12}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 212
    .line 213
    .line 214
    move-result-object v2

    .line 215
    iget v8, v0, Lc1/h;->o:I

    .line 216
    .line 217
    invoke-virtual {v0, v1, v2, v8}, Lc1/h;->a(Landroidx/media3/common/util/ParsableByteArray;[BI)Z

    .line 218
    .line 219
    .line 220
    move-result v2

    .line 221
    if-eqz v2, :cond_0

    .line 222
    .line 223
    invoke-virtual {v12}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 224
    .line 225
    .line 226
    move-result-object v2

    .line 227
    invoke-static {v2}, Lv0/A;->parseDtsHdHeader([B)Lv0/z;

    .line 228
    .line 229
    .line 230
    move-result-object v2

    .line 231
    invoke-virtual {v0, v2}, Lc1/h;->b(Lv0/z;)V

    .line 232
    .line 233
    .line 234
    iget v8, v2, Lv0/z;->d:I

    .line 235
    .line 236
    iput v8, v0, Lc1/h;->m:I

    .line 237
    .line 238
    iget-wide v8, v2, Lv0/z;->e:J

    .line 239
    .line 240
    cmp-long v2, v8, v5

    .line 241
    .line 242
    if-nez v2, :cond_6

    .line 243
    .line 244
    goto :goto_4

    .line 245
    :cond_6
    move-wide v3, v8

    .line 246
    :goto_4
    iput-wide v3, v0, Lc1/h;->k:J

    .line 247
    .line 248
    invoke-virtual {v12, v11}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 249
    .line 250
    .line 251
    iget-object v2, v0, Lc1/h;->g:Lv0/r0;

    .line 252
    .line 253
    iget v3, v0, Lc1/h;->o:I

    .line 254
    .line 255
    invoke-interface {v2, v12, v3}, Lv0/r0;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    .line 256
    .line 257
    .line 258
    iput v7, v0, Lc1/h;->h:I

    .line 259
    .line 260
    goto/16 :goto_0

    .line 261
    .line 262
    :pswitch_4
    invoke-virtual {v12}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 263
    .line 264
    .line 265
    move-result-object v2

    .line 266
    const/4 v3, 0x7

    .line 267
    invoke-virtual {v0, v1, v2, v3}, Lc1/h;->a(Landroidx/media3/common/util/ParsableByteArray;[BI)Z

    .line 268
    .line 269
    .line 270
    move-result v2

    .line 271
    if-eqz v2, :cond_0

    .line 272
    .line 273
    invoke-virtual {v12}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 274
    .line 275
    .line 276
    move-result-object v2

    .line 277
    invoke-static {v2}, Lv0/A;->parseDtsHdHeaderSize([B)I

    .line 278
    .line 279
    .line 280
    move-result v2

    .line 281
    iput v2, v0, Lc1/h;->o:I

    .line 282
    .line 283
    iput v8, v0, Lc1/h;->h:I

    .line 284
    .line 285
    goto/16 :goto_0

    .line 286
    .line 287
    :pswitch_5
    invoke-virtual {v12}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 288
    .line 289
    .line 290
    move-result-object v2

    .line 291
    const/16 v3, 0x12

    .line 292
    .line 293
    invoke-virtual {v0, v1, v2, v3}, Lc1/h;->a(Landroidx/media3/common/util/ParsableByteArray;[BI)Z

    .line 294
    .line 295
    .line 296
    move-result v2

    .line 297
    if-eqz v2, :cond_0

    .line 298
    .line 299
    invoke-virtual {v12}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 300
    .line 301
    .line 302
    move-result-object v13

    .line 303
    iget-object v2, v0, Lc1/h;->l:Landroidx/media3/common/Format;

    .line 304
    .line 305
    if-nez v2, :cond_7

    .line 306
    .line 307
    iget-object v14, v0, Lc1/h;->f:Ljava/lang/String;

    .line 308
    .line 309
    iget-object v2, v0, Lc1/h;->e:Ljava/lang/String;

    .line 310
    .line 311
    const/16 v18, 0x0

    .line 312
    .line 313
    iget-object v15, v0, Lc1/h;->c:Ljava/lang/String;

    .line 314
    .line 315
    iget v4, v0, Lc1/h;->d:I

    .line 316
    .line 317
    move-object/from16 v17, v2

    .line 318
    .line 319
    move/from16 v16, v4

    .line 320
    .line 321
    invoke-static/range {v13 .. v18}, Lv0/A;->parseDtsFormat([BLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/Format;

    .line 322
    .line 323
    .line 324
    move-result-object v2

    .line 325
    iput-object v2, v0, Lc1/h;->l:Landroidx/media3/common/Format;

    .line 326
    .line 327
    iget-object v4, v0, Lc1/h;->g:Lv0/r0;

    .line 328
    .line 329
    invoke-interface {v4, v2}, Lv0/r0;->format(Landroidx/media3/common/Format;)V

    .line 330
    .line 331
    .line 332
    :cond_7
    invoke-static {v13}, Lv0/A;->getDtsFrameSize([B)I

    .line 333
    .line 334
    .line 335
    move-result v2

    .line 336
    iput v2, v0, Lc1/h;->m:I

    .line 337
    .line 338
    invoke-static {v13}, Lv0/A;->parseDtsAudioSampleCount([B)I

    .line 339
    .line 340
    .line 341
    move-result v2

    .line 342
    int-to-long v4, v2

    .line 343
    iget-object v2, v0, Lc1/h;->l:Landroidx/media3/common/Format;

    .line 344
    .line 345
    iget v2, v2, Landroidx/media3/common/Format;->sampleRate:I

    .line 346
    .line 347
    invoke-static {v4, v5, v2}, Landroidx/media3/common/util/Util;->sampleCountToDurationUs(JI)J

    .line 348
    .line 349
    .line 350
    move-result-wide v4

    .line 351
    invoke-static {v4, v5}, Lcom/google/common/primitives/a;->checkedCast(J)I

    .line 352
    .line 353
    .line 354
    move-result v2

    .line 355
    int-to-long v4, v2

    .line 356
    iput-wide v4, v0, Lc1/h;->k:J

    .line 357
    .line 358
    invoke-virtual {v12, v11}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 359
    .line 360
    .line 361
    iget-object v2, v0, Lc1/h;->g:Lv0/r0;

    .line 362
    .line 363
    invoke-interface {v2, v12, v3}, Lv0/r0;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    .line 364
    .line 365
    .line 366
    iput v7, v0, Lc1/h;->h:I

    .line 367
    .line 368
    goto/16 :goto_0

    .line 369
    .line 370
    :cond_8
    :pswitch_6
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 371
    .line 372
    .line 373
    move-result v2

    .line 374
    if-lez v2, :cond_0

    .line 375
    .line 376
    iget v2, v0, Lc1/h;->j:I

    .line 377
    .line 378
    shl-int/lit8 v2, v2, 0x8

    .line 379
    .line 380
    iput v2, v0, Lc1/h;->j:I

    .line 381
    .line 382
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 383
    .line 384
    .line 385
    move-result v3

    .line 386
    or-int/2addr v2, v3

    .line 387
    iput v2, v0, Lc1/h;->j:I

    .line 388
    .line 389
    invoke-static {v2}, Lv0/A;->getFrameType(I)I

    .line 390
    .line 391
    .line 392
    move-result v2

    .line 393
    iput v2, v0, Lc1/h;->n:I

    .line 394
    .line 395
    if-eqz v2, :cond_8

    .line 396
    .line 397
    invoke-virtual {v12}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 398
    .line 399
    .line 400
    move-result-object v2

    .line 401
    iget v3, v0, Lc1/h;->j:I

    .line 402
    .line 403
    shr-int/lit8 v4, v3, 0x18

    .line 404
    .line 405
    and-int/lit16 v4, v4, 0xff

    .line 406
    .line 407
    int-to-byte v4, v4

    .line 408
    aput-byte v4, v2, v11

    .line 409
    .line 410
    shr-int/lit8 v4, v3, 0x10

    .line 411
    .line 412
    and-int/lit16 v4, v4, 0xff

    .line 413
    .line 414
    int-to-byte v4, v4

    .line 415
    aput-byte v4, v2, v10

    .line 416
    .line 417
    shr-int/lit8 v4, v3, 0x8

    .line 418
    .line 419
    and-int/lit16 v4, v4, 0xff

    .line 420
    .line 421
    int-to-byte v4, v4

    .line 422
    const/4 v5, 0x2

    .line 423
    aput-byte v4, v2, v5

    .line 424
    .line 425
    and-int/lit16 v3, v3, 0xff

    .line 426
    .line 427
    int-to-byte v3, v3

    .line 428
    aput-byte v3, v2, v8

    .line 429
    .line 430
    iput v9, v0, Lc1/h;->i:I

    .line 431
    .line 432
    iput v11, v0, Lc1/h;->j:I

    .line 433
    .line 434
    iget v2, v0, Lc1/h;->n:I

    .line 435
    .line 436
    if-eq v2, v8, :cond_b

    .line 437
    .line 438
    if-ne v2, v9, :cond_9

    .line 439
    .line 440
    goto :goto_5

    .line 441
    :cond_9
    if-ne v2, v10, :cond_a

    .line 442
    .line 443
    iput v10, v0, Lc1/h;->h:I

    .line 444
    .line 445
    goto/16 :goto_0

    .line 446
    .line 447
    :cond_a
    iput v5, v0, Lc1/h;->h:I

    .line 448
    .line 449
    goto/16 :goto_0

    .line 450
    .line 451
    :cond_b
    :goto_5
    iput v9, v0, Lc1/h;->h:I

    .line 452
    .line 453
    goto/16 :goto_0

    .line 454
    .line 455
    :cond_c
    return-void

    .line 456
    nop

    .line 457
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public createTracks(Lv0/F;Lc1/W;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Lc1/W;->generateNewId()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Lc1/W;->getFormatId()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lc1/h;->f:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {p2}, Lc1/W;->getTrackId()I

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    const/4 v0, 0x1

    .line 15
    invoke-interface {p1, p2, v0}, Lv0/F;->track(II)Lv0/r0;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Lc1/h;->g:Lv0/r0;

    .line 20
    .line 21
    return-void
.end method

.method public packetFinished(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public packetStarted(JI)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lc1/h;->q:J

    .line 2
    .line 3
    return-void
.end method

.method public seek()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lc1/h;->h:I

    .line 3
    .line 4
    iput v0, p0, Lc1/h;->i:I

    .line 5
    .line 6
    iput v0, p0, Lc1/h;->j:I

    .line 7
    .line 8
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    iput-wide v1, p0, Lc1/h;->q:J

    .line 14
    .line 15
    iget-object v1, p0, Lc1/h;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
