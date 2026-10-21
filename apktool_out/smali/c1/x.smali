.class public final Lc1/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc1/j;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Landroidx/media3/common/util/ParsableByteArray;

.field public final c:Landroidx/media3/common/util/ParsableBitArray;

.field public final d:Landroidx/media3/common/util/ParsableByteArray;

.field public e:I

.field public f:Ljava/lang/String;

.field public g:Lv0/r0;

.field public h:D

.field public i:D

.field public j:Z

.field public k:Z

.field public l:I

.field public m:I

.field public n:Z

.field public o:I

.field public p:I

.field public final q:Lc1/y;

.field public r:I

.field public s:I

.field public t:I

.field public u:J

.field public v:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lc1/x;->a:Ljava/lang/String;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lc1/x;->e:I

    .line 8
    .line 9
    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    .line 10
    .line 11
    const/16 v0, 0xf

    .line 12
    .line 13
    new-array v0, v0, [B

    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    invoke-direct {p1, v0, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>([BI)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lc1/x;->b:Landroidx/media3/common/util/ParsableByteArray;

    .line 20
    .line 21
    new-instance p1, Landroidx/media3/common/util/ParsableBitArray;

    .line 22
    .line 23
    invoke-direct {p1}, Landroidx/media3/common/util/ParsableBitArray;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lc1/x;->c:Landroidx/media3/common/util/ParsableBitArray;

    .line 27
    .line 28
    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    .line 29
    .line 30
    invoke-direct {p1}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object p1, p0, Lc1/x;->d:Landroidx/media3/common/util/ParsableByteArray;

    .line 34
    .line 35
    new-instance p1, Lc1/y;

    .line 36
    .line 37
    invoke-direct {p1}, Lc1/y;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object p1, p0, Lc1/x;->q:Lc1/y;

    .line 41
    .line 42
    const p1, -0x7fffffff

    .line 43
    .line 44
    .line 45
    iput p1, p0, Lc1/x;->r:I

    .line 46
    .line 47
    const/4 p1, -0x1

    .line 48
    iput p1, p0, Lc1/x;->s:I

    .line 49
    .line 50
    const-wide/16 v0, -0x1

    .line 51
    .line 52
    iput-wide v0, p0, Lc1/x;->u:J

    .line 53
    .line 54
    const/4 p1, 0x1

    .line 55
    iput-boolean p1, p0, Lc1/x;->k:Z

    .line 56
    .line 57
    iput-boolean p1, p0, Lc1/x;->n:Z

    .line 58
    .line 59
    const-wide/high16 v0, -0x3c20000000000000L    # -9.223372036854776E18

    .line 60
    .line 61
    iput-wide v0, p0, Lc1/x;->h:D

    .line 62
    .line 63
    iput-wide v0, p0, Lc1/x;->i:D

    .line 64
    .line 65
    return-void
.end method

.method public static a(Landroidx/media3/common/util/ParsableByteArray;Landroidx/media3/common/util/ParsableByteArray;Z)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    invoke-virtual {p0, v2, v3, v1}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v1}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 29
    .line 30
    .line 31
    if-eqz p2, :cond_0

    .line 32
    .line 33
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method


# virtual methods
.method public consume(Landroidx/media3/common/util/ParsableByteArray;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    iget-object v3, p0, Lc1/x;->g:Lv0/r0;

    .line 5
    .line 6
    invoke-static {v3}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-lez v3, :cond_14

    .line 14
    .line 15
    iget v3, p0, Lc1/x;->e:I

    .line 16
    .line 17
    if-eqz v3, :cond_10

    .line 18
    .line 19
    iget-object v4, p0, Lc1/x;->q:Lc1/y;

    .line 20
    .line 21
    iget-object v5, p0, Lc1/x;->d:Landroidx/media3/common/util/ParsableByteArray;

    .line 22
    .line 23
    if-eq v3, v1, :cond_c

    .line 24
    .line 25
    if-ne v3, v0, :cond_b

    .line 26
    .line 27
    iget v3, v4, Lc1/y;->a:I

    .line 28
    .line 29
    const/16 v6, 0x11

    .line 30
    .line 31
    if-eq v3, v1, :cond_1

    .line 32
    .line 33
    if-ne v3, v6, :cond_2

    .line 34
    .line 35
    :cond_1
    invoke-static {p1, v5, v1}, Lc1/x;->a(Landroidx/media3/common/util/ParsableByteArray;Landroidx/media3/common/util/ParsableByteArray;Z)V

    .line 36
    .line 37
    .line 38
    :cond_2
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    iget v7, v4, Lc1/y;->c:I

    .line 43
    .line 44
    iget v8, p0, Lc1/x;->o:I

    .line 45
    .line 46
    sub-int/2addr v7, v8

    .line 47
    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    iget-object v7, p0, Lc1/x;->g:Lv0/r0;

    .line 52
    .line 53
    invoke-interface {v7, p1, v3}, Lv0/r0;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    .line 54
    .line 55
    .line 56
    iget v7, p0, Lc1/x;->o:I

    .line 57
    .line 58
    add-int/2addr v7, v3

    .line 59
    iput v7, p0, Lc1/x;->o:I

    .line 60
    .line 61
    iget v3, v4, Lc1/y;->c:I

    .line 62
    .line 63
    if-ne v7, v3, :cond_0

    .line 64
    .line 65
    iget v3, v4, Lc1/y;->a:I

    .line 66
    .line 67
    if-ne v3, v1, :cond_6

    .line 68
    .line 69
    new-instance v3, Landroidx/media3/common/util/ParsableBitArray;

    .line 70
    .line 71
    invoke-virtual {v5}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    invoke-direct {v3, v5}, Landroidx/media3/common/util/ParsableBitArray;-><init>([B)V

    .line 76
    .line 77
    .line 78
    invoke-static {v3}, Lc1/A;->parseMpegh3daConfig(Landroidx/media3/common/util/ParsableBitArray;)Lc1/z;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    iget v5, v3, Lc1/z;->b:I

    .line 83
    .line 84
    iput v5, p0, Lc1/x;->r:I

    .line 85
    .line 86
    iget v5, v3, Lc1/z;->c:I

    .line 87
    .line 88
    iput v5, p0, Lc1/x;->s:I

    .line 89
    .line 90
    iget-wide v5, p0, Lc1/x;->u:J

    .line 91
    .line 92
    iget-wide v7, v4, Lc1/y;->b:J

    .line 93
    .line 94
    cmp-long v4, v5, v7

    .line 95
    .line 96
    if-eqz v4, :cond_5

    .line 97
    .line 98
    iput-wide v7, p0, Lc1/x;->u:J

    .line 99
    .line 100
    const/4 v4, -0x1

    .line 101
    const-string v5, "mhm1"

    .line 102
    .line 103
    iget v6, v3, Lc1/z;->a:I

    .line 104
    .line 105
    if-eq v6, v4, :cond_3

    .line 106
    .line 107
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    new-array v6, v1, [Ljava/lang/Object;

    .line 112
    .line 113
    aput-object v4, v6, v2

    .line 114
    .line 115
    const-string v4, ".%02X"

    .line 116
    .line 117
    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v5

    .line 125
    :cond_3
    iget-object v3, v3, Lc1/z;->d:[B

    .line 126
    .line 127
    if-eqz v3, :cond_4

    .line 128
    .line 129
    array-length v4, v3

    .line 130
    if-lez v4, :cond_4

    .line 131
    .line 132
    sget-object v4, Landroidx/media3/common/util/Util;->EMPTY_BYTE_ARRAY:[B

    .line 133
    .line 134
    invoke-static {v4, v3}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    goto :goto_1

    .line 139
    :cond_4
    const/4 v3, 0x0

    .line 140
    :goto_1
    new-instance v4, Landroidx/media3/common/Format$Builder;

    .line 141
    .line 142
    invoke-direct {v4}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 143
    .line 144
    .line 145
    iget-object v6, p0, Lc1/x;->f:Ljava/lang/String;

    .line 146
    .line 147
    invoke-virtual {v4, v6}, Landroidx/media3/common/Format$Builder;->setId(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 148
    .line 149
    .line 150
    move-result-object v4

    .line 151
    iget-object v6, p0, Lc1/x;->a:Ljava/lang/String;

    .line 152
    .line 153
    invoke-virtual {v4, v6}, Landroidx/media3/common/Format$Builder;->setContainerMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 154
    .line 155
    .line 156
    move-result-object v4

    .line 157
    const-string v6, "audio/mhm1"

    .line 158
    .line 159
    invoke-virtual {v4, v6}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 160
    .line 161
    .line 162
    move-result-object v4

    .line 163
    iget v6, p0, Lc1/x;->r:I

    .line 164
    .line 165
    invoke-virtual {v4, v6}, Landroidx/media3/common/Format$Builder;->setSampleRate(I)Landroidx/media3/common/Format$Builder;

    .line 166
    .line 167
    .line 168
    move-result-object v4

    .line 169
    invoke-virtual {v4, v5}, Landroidx/media3/common/Format$Builder;->setCodecs(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 170
    .line 171
    .line 172
    move-result-object v4

    .line 173
    invoke-virtual {v4, v3}, Landroidx/media3/common/Format$Builder;->setInitializationData(Ljava/util/List;)Landroidx/media3/common/Format$Builder;

    .line 174
    .line 175
    .line 176
    move-result-object v3

    .line 177
    invoke-virtual {v3}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    .line 178
    .line 179
    .line 180
    move-result-object v3

    .line 181
    iget-object v4, p0, Lc1/x;->g:Lv0/r0;

    .line 182
    .line 183
    invoke-interface {v4, v3}, Lv0/r0;->format(Landroidx/media3/common/Format;)V

    .line 184
    .line 185
    .line 186
    :cond_5
    iput-boolean v1, p0, Lc1/x;->v:Z

    .line 187
    .line 188
    goto :goto_4

    .line 189
    :cond_6
    if-ne v3, v6, :cond_7

    .line 190
    .line 191
    new-instance v3, Landroidx/media3/common/util/ParsableBitArray;

    .line 192
    .line 193
    invoke-virtual {v5}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 194
    .line 195
    .line 196
    move-result-object v4

    .line 197
    invoke-direct {v3, v4}, Landroidx/media3/common/util/ParsableBitArray;-><init>([B)V

    .line 198
    .line 199
    .line 200
    invoke-static {v3}, Lc1/A;->parseAudioTruncationInfo(Landroidx/media3/common/util/ParsableBitArray;)I

    .line 201
    .line 202
    .line 203
    move-result v3

    .line 204
    iput v3, p0, Lc1/x;->t:I

    .line 205
    .line 206
    goto :goto_4

    .line 207
    :cond_7
    if-ne v3, v0, :cond_a

    .line 208
    .line 209
    iget-boolean v3, p0, Lc1/x;->v:Z

    .line 210
    .line 211
    if-eqz v3, :cond_8

    .line 212
    .line 213
    iput-boolean v2, p0, Lc1/x;->k:Z

    .line 214
    .line 215
    move v7, v1

    .line 216
    goto :goto_2

    .line 217
    :cond_8
    move v7, v2

    .line 218
    :goto_2
    iget v3, p0, Lc1/x;->s:I

    .line 219
    .line 220
    iget v4, p0, Lc1/x;->t:I

    .line 221
    .line 222
    sub-int/2addr v3, v4

    .line 223
    int-to-double v3, v3

    .line 224
    const-wide v5, 0x412e848000000000L    # 1000000.0

    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    mul-double/2addr v3, v5

    .line 230
    iget v5, p0, Lc1/x;->r:I

    .line 231
    .line 232
    int-to-double v5, v5

    .line 233
    div-double/2addr v3, v5

    .line 234
    iget-wide v5, p0, Lc1/x;->h:D

    .line 235
    .line 236
    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    .line 237
    .line 238
    .line 239
    move-result-wide v5

    .line 240
    iget-boolean v8, p0, Lc1/x;->j:Z

    .line 241
    .line 242
    if-eqz v8, :cond_9

    .line 243
    .line 244
    iput-boolean v2, p0, Lc1/x;->j:Z

    .line 245
    .line 246
    iget-wide v3, p0, Lc1/x;->i:D

    .line 247
    .line 248
    iput-wide v3, p0, Lc1/x;->h:D

    .line 249
    .line 250
    goto :goto_3

    .line 251
    :cond_9
    iget-wide v8, p0, Lc1/x;->h:D

    .line 252
    .line 253
    add-double/2addr v8, v3

    .line 254
    iput-wide v8, p0, Lc1/x;->h:D

    .line 255
    .line 256
    :goto_3
    iget-object v4, p0, Lc1/x;->g:Lv0/r0;

    .line 257
    .line 258
    iget v8, p0, Lc1/x;->p:I

    .line 259
    .line 260
    const/4 v9, 0x0

    .line 261
    const/4 v10, 0x0

    .line 262
    invoke-interface/range {v4 .. v10}, Lv0/r0;->sampleMetadata(JIIILv0/q0;)V

    .line 263
    .line 264
    .line 265
    iput-boolean v2, p0, Lc1/x;->v:Z

    .line 266
    .line 267
    iput v2, p0, Lc1/x;->t:I

    .line 268
    .line 269
    iput v2, p0, Lc1/x;->p:I

    .line 270
    .line 271
    :cond_a
    :goto_4
    iput v1, p0, Lc1/x;->e:I

    .line 272
    .line 273
    goto/16 :goto_0

    .line 274
    .line 275
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 276
    .line 277
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 278
    .line 279
    .line 280
    throw p1

    .line 281
    :cond_c
    iget-object v3, p0, Lc1/x;->b:Landroidx/media3/common/util/ParsableByteArray;

    .line 282
    .line 283
    invoke-static {p1, v3, v2}, Lc1/x;->a(Landroidx/media3/common/util/ParsableByteArray;Landroidx/media3/common/util/ParsableByteArray;Z)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 287
    .line 288
    .line 289
    move-result v6

    .line 290
    if-nez v6, :cond_f

    .line 291
    .line 292
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    .line 293
    .line 294
    .line 295
    move-result v6

    .line 296
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 297
    .line 298
    .line 299
    move-result-object v7

    .line 300
    iget-object v8, p0, Lc1/x;->c:Landroidx/media3/common/util/ParsableBitArray;

    .line 301
    .line 302
    invoke-virtual {v8, v7, v6}, Landroidx/media3/common/util/ParsableBitArray;->reset([BI)V

    .line 303
    .line 304
    .line 305
    invoke-static {v8, v4}, Lc1/A;->parseMhasPacketHeader(Landroidx/media3/common/util/ParsableBitArray;Lc1/y;)Z

    .line 306
    .line 307
    .line 308
    move-result v7

    .line 309
    if-eqz v7, :cond_d

    .line 310
    .line 311
    iput v2, p0, Lc1/x;->o:I

    .line 312
    .line 313
    iget v8, p0, Lc1/x;->p:I

    .line 314
    .line 315
    iget v9, v4, Lc1/y;->c:I

    .line 316
    .line 317
    add-int/2addr v9, v6

    .line 318
    add-int/2addr v9, v8

    .line 319
    iput v9, p0, Lc1/x;->p:I

    .line 320
    .line 321
    :cond_d
    if-eqz v7, :cond_e

    .line 322
    .line 323
    invoke-virtual {v3, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 324
    .line 325
    .line 326
    iget-object v6, p0, Lc1/x;->g:Lv0/r0;

    .line 327
    .line 328
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    .line 329
    .line 330
    .line 331
    move-result v7

    .line 332
    invoke-interface {v6, v3, v7}, Lv0/r0;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    .line 333
    .line 334
    .line 335
    invoke-virtual {v3, v0}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    .line 336
    .line 337
    .line 338
    iget v3, v4, Lc1/y;->c:I

    .line 339
    .line 340
    invoke-virtual {v5, v3}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    .line 341
    .line 342
    .line 343
    iput-boolean v1, p0, Lc1/x;->n:Z

    .line 344
    .line 345
    iput v0, p0, Lc1/x;->e:I

    .line 346
    .line 347
    goto/16 :goto_0

    .line 348
    .line 349
    :cond_e
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    .line 350
    .line 351
    .line 352
    move-result v4

    .line 353
    const/16 v5, 0xf

    .line 354
    .line 355
    if-ge v4, v5, :cond_0

    .line 356
    .line 357
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    .line 358
    .line 359
    .line 360
    move-result v4

    .line 361
    add-int/2addr v4, v1

    .line 362
    invoke-virtual {v3, v4}, Landroidx/media3/common/util/ParsableByteArray;->setLimit(I)V

    .line 363
    .line 364
    .line 365
    iput-boolean v2, p0, Lc1/x;->n:Z

    .line 366
    .line 367
    goto/16 :goto_0

    .line 368
    .line 369
    :cond_f
    iput-boolean v2, p0, Lc1/x;->n:Z

    .line 370
    .line 371
    goto/16 :goto_0

    .line 372
    .line 373
    :cond_10
    iget v3, p0, Lc1/x;->l:I

    .line 374
    .line 375
    and-int/lit8 v4, v3, 0x2

    .line 376
    .line 377
    if-nez v4, :cond_11

    .line 378
    .line 379
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    .line 380
    .line 381
    .line 382
    move-result v3

    .line 383
    invoke-virtual {p1, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 384
    .line 385
    .line 386
    goto/16 :goto_0

    .line 387
    .line 388
    :cond_11
    and-int/lit8 v3, v3, 0x4

    .line 389
    .line 390
    if-nez v3, :cond_13

    .line 391
    .line 392
    :cond_12
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 393
    .line 394
    .line 395
    move-result v3

    .line 396
    if-lez v3, :cond_0

    .line 397
    .line 398
    iget v3, p0, Lc1/x;->m:I

    .line 399
    .line 400
    shl-int/lit8 v3, v3, 0x8

    .line 401
    .line 402
    iput v3, p0, Lc1/x;->m:I

    .line 403
    .line 404
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 405
    .line 406
    .line 407
    move-result v4

    .line 408
    or-int/2addr v3, v4

    .line 409
    iput v3, p0, Lc1/x;->m:I

    .line 410
    .line 411
    invoke-static {v3}, Lc1/A;->isSyncWord(I)Z

    .line 412
    .line 413
    .line 414
    move-result v3

    .line 415
    if-eqz v3, :cond_12

    .line 416
    .line 417
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    .line 418
    .line 419
    .line 420
    move-result v3

    .line 421
    add-int/lit8 v3, v3, -0x3

    .line 422
    .line 423
    invoke-virtual {p1, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 424
    .line 425
    .line 426
    iput v2, p0, Lc1/x;->m:I

    .line 427
    .line 428
    :cond_13
    iput v1, p0, Lc1/x;->e:I

    .line 429
    .line 430
    goto/16 :goto_0

    .line 431
    .line 432
    :cond_14
    return-void
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
    iput-object v0, p0, Lc1/x;->f:Ljava/lang/String;

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
    iput-object p1, p0, Lc1/x;->g:Lv0/r0;

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
    .locals 2

    .line 1
    iput p3, p0, Lc1/x;->l:I

    .line 2
    .line 3
    iget-boolean p3, p0, Lc1/x;->k:Z

    .line 4
    .line 5
    if-nez p3, :cond_1

    .line 6
    .line 7
    iget p3, p0, Lc1/x;->p:I

    .line 8
    .line 9
    if-nez p3, :cond_0

    .line 10
    .line 11
    iget-boolean p3, p0, Lc1/x;->n:Z

    .line 12
    .line 13
    if-nez p3, :cond_1

    .line 14
    .line 15
    :cond_0
    const/4 p3, 0x1

    .line 16
    iput-boolean p3, p0, Lc1/x;->j:Z

    .line 17
    .line 18
    :cond_1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    cmp-long p3, p1, v0

    .line 24
    .line 25
    if-eqz p3, :cond_3

    .line 26
    .line 27
    iget-boolean p3, p0, Lc1/x;->j:Z

    .line 28
    .line 29
    if-eqz p3, :cond_2

    .line 30
    .line 31
    long-to-double p1, p1

    .line 32
    iput-wide p1, p0, Lc1/x;->i:D

    .line 33
    .line 34
    return-void

    .line 35
    :cond_2
    long-to-double p1, p1

    .line 36
    iput-wide p1, p0, Lc1/x;->h:D

    .line 37
    .line 38
    :cond_3
    return-void
.end method

.method public seek()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lc1/x;->e:I

    .line 3
    .line 4
    iput v0, p0, Lc1/x;->m:I

    .line 5
    .line 6
    iget-object v1, p0, Lc1/x;->b:Landroidx/media3/common/util/ParsableByteArray;

    .line 7
    .line 8
    const/4 v2, 0x2

    .line 9
    invoke-virtual {v1, v2}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    .line 10
    .line 11
    .line 12
    iput v0, p0, Lc1/x;->o:I

    .line 13
    .line 14
    iput v0, p0, Lc1/x;->p:I

    .line 15
    .line 16
    const v1, -0x7fffffff

    .line 17
    .line 18
    .line 19
    iput v1, p0, Lc1/x;->r:I

    .line 20
    .line 21
    const/4 v1, -0x1

    .line 22
    iput v1, p0, Lc1/x;->s:I

    .line 23
    .line 24
    iput v0, p0, Lc1/x;->t:I

    .line 25
    .line 26
    const-wide/16 v1, -0x1

    .line 27
    .line 28
    iput-wide v1, p0, Lc1/x;->u:J

    .line 29
    .line 30
    iput-boolean v0, p0, Lc1/x;->v:Z

    .line 31
    .line 32
    iput-boolean v0, p0, Lc1/x;->j:Z

    .line 33
    .line 34
    const/4 v0, 0x1

    .line 35
    iput-boolean v0, p0, Lc1/x;->n:Z

    .line 36
    .line 37
    iput-boolean v0, p0, Lc1/x;->k:Z

    .line 38
    .line 39
    const-wide/high16 v0, -0x3c20000000000000L    # -9.223372036854776E18

    .line 40
    .line 41
    iput-wide v0, p0, Lc1/x;->h:D

    .line 42
    .line 43
    iput-wide v0, p0, Lc1/x;->i:D

    .line 44
    .line 45
    return-void
.end method
