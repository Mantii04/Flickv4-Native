.class public final Le6/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le6/L;


# instance fields
.field public b:B

.field public final e:Le6/F;

.field public final f:Ljava/util/zip/Inflater;

.field public final j:Le6/u;

.field public final m:Ljava/util/zip/CRC32;


# direct methods
.method public constructor <init>(Le6/L;)V
    .locals 2

    .line 1
    const-string v0, "source"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v0, Le6/F;

    .line 10
    .line 11
    invoke-direct {v0, p1}, Le6/F;-><init>(Le6/L;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Le6/t;->e:Le6/F;

    .line 15
    .line 16
    new-instance p1, Ljava/util/zip/Inflater;

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    invoke-direct {p1, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Le6/t;->f:Ljava/util/zip/Inflater;

    .line 23
    .line 24
    new-instance v1, Le6/u;

    .line 25
    .line 26
    invoke-direct {v1, v0, p1}, Le6/u;-><init>(Le6/n;Ljava/util/zip/Inflater;)V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Le6/t;->j:Le6/u;

    .line 30
    .line 31
    new-instance p1, Ljava/util/zip/CRC32;

    .line 32
    .line 33
    invoke-direct {p1}, Ljava/util/zip/CRC32;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object p1, p0, Le6/t;->m:Ljava/util/zip/CRC32;

    .line 37
    .line 38
    return-void
.end method

.method public static a(IILjava/lang/String;)V
    .locals 4

    .line 1
    const/4 v0, 0x3

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    return-void

    .line 5
    :cond_0
    new-instance v1, Ljava/io/IOException;

    .line 6
    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    new-array v2, v0, [Ljava/lang/Object;

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    aput-object p2, v2, v3

    .line 19
    .line 20
    const/4 p2, 0x1

    .line 21
    aput-object p1, v2, p2

    .line 22
    .line 23
    const/4 p1, 0x2

    .line 24
    aput-object p0, v2, p1

    .line 25
    .line 26
    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    const-string p1, "%s: actual 0x%08x != expected 0x%08x"

    .line 31
    .line 32
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    const-string p1, "format(this, *args)"

    .line 37
    .line 38
    invoke-static {p0, p1}, Lkotlin/jvm/internal/j;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-direct {v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw v1
.end method


# virtual methods
.method public final b(Le6/l;JJ)V
    .locals 4

    .line 1
    iget-object p1, p1, Le6/l;->b:Le6/H;

    .line 2
    .line 3
    invoke-static {p1}, Lkotlin/jvm/internal/j;->checkNotNull(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    :goto_0
    iget v0, p1, Le6/H;->c:I

    .line 7
    .line 8
    iget v1, p1, Le6/H;->b:I

    .line 9
    .line 10
    sub-int v2, v0, v1

    .line 11
    .line 12
    int-to-long v2, v2

    .line 13
    cmp-long v2, p2, v2

    .line 14
    .line 15
    if-ltz v2, :cond_0

    .line 16
    .line 17
    sub-int/2addr v0, v1

    .line 18
    int-to-long v0, v0

    .line 19
    sub-long/2addr p2, v0

    .line 20
    iget-object p1, p1, Le6/H;->f:Le6/H;

    .line 21
    .line 22
    invoke-static {p1}, Lkotlin/jvm/internal/j;->checkNotNull(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    :goto_1
    const-wide/16 v0, 0x0

    .line 27
    .line 28
    cmp-long v2, p4, v0

    .line 29
    .line 30
    if-lez v2, :cond_1

    .line 31
    .line 32
    iget v2, p1, Le6/H;->b:I

    .line 33
    .line 34
    int-to-long v2, v2

    .line 35
    add-long/2addr v2, p2

    .line 36
    long-to-int p2, v2

    .line 37
    iget p3, p1, Le6/H;->c:I

    .line 38
    .line 39
    sub-int/2addr p3, p2

    .line 40
    int-to-long v2, p3

    .line 41
    invoke-static {v2, v3, p4, p5}, Ljava/lang/Math;->min(JJ)J

    .line 42
    .line 43
    .line 44
    move-result-wide v2

    .line 45
    long-to-int p3, v2

    .line 46
    iget-object v2, p0, Le6/t;->m:Ljava/util/zip/CRC32;

    .line 47
    .line 48
    iget-object v3, p1, Le6/H;->a:[B

    .line 49
    .line 50
    invoke-virtual {v2, v3, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V

    .line 51
    .line 52
    .line 53
    int-to-long p2, p3

    .line 54
    sub-long/2addr p4, p2

    .line 55
    iget-object p1, p1, Le6/H;->f:Le6/H;

    .line 56
    .line 57
    invoke-static {p1}, Lkotlin/jvm/internal/j;->checkNotNull(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    move-wide p2, v0

    .line 61
    goto :goto_1

    .line 62
    :cond_1
    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le6/t;->j:Le6/u;

    .line 2
    .line 3
    invoke-virtual {v0}, Le6/u;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public read(Le6/l;J)J
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v6, p1

    .line 4
    .line 5
    move-wide/from16 v7, p2

    .line 6
    .line 7
    const-string v1, "sink"

    .line 8
    .line 9
    invoke-static {v6, v1}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-wide/16 v1, 0x0

    .line 13
    .line 14
    cmp-long v3, v7, v1

    .line 15
    .line 16
    if-ltz v3, :cond_12

    .line 17
    .line 18
    if-nez v3, :cond_0

    .line 19
    .line 20
    return-wide v1

    .line 21
    :cond_0
    iget-byte v1, v0, Le6/t;->b:B

    .line 22
    .line 23
    iget-object v9, v0, Le6/t;->m:Ljava/util/zip/CRC32;

    .line 24
    .line 25
    const/4 v10, 0x1

    .line 26
    iget-object v13, v0, Le6/t;->e:Le6/F;

    .line 27
    .line 28
    if-nez v1, :cond_d

    .line 29
    .line 30
    const-wide/16 v1, 0xa

    .line 31
    .line 32
    invoke-virtual {v13, v1, v2}, Le6/F;->require(J)V

    .line 33
    .line 34
    .line 35
    iget-object v14, v13, Le6/F;->e:Le6/l;

    .line 36
    .line 37
    const-wide/16 v1, 0x3

    .line 38
    .line 39
    invoke-virtual {v14, v1, v2}, Le6/l;->getByte(J)B

    .line 40
    .line 41
    .line 42
    move-result v15

    .line 43
    shr-int/lit8 v1, v15, 0x1

    .line 44
    .line 45
    and-int/2addr v1, v10

    .line 46
    const/4 v2, 0x0

    .line 47
    if-ne v1, v10, :cond_1

    .line 48
    .line 49
    move/from16 v16, v10

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    move/from16 v16, v2

    .line 53
    .line 54
    :goto_0
    if-eqz v16, :cond_2

    .line 55
    .line 56
    const-wide/16 v4, 0xa

    .line 57
    .line 58
    iget-object v1, v13, Le6/F;->e:Le6/l;

    .line 59
    .line 60
    move/from16 v17, v2

    .line 61
    .line 62
    const-wide/16 v2, 0x0

    .line 63
    .line 64
    move/from16 v11, v17

    .line 65
    .line 66
    const-wide/16 v18, -0x1

    .line 67
    .line 68
    invoke-virtual/range {v0 .. v5}, Le6/t;->b(Le6/l;JJ)V

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_2
    move v11, v2

    .line 73
    const-wide/16 v18, -0x1

    .line 74
    .line 75
    :goto_1
    invoke-virtual {v13}, Le6/F;->readShort()S

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    const-string v1, "ID1ID2"

    .line 80
    .line 81
    const/16 v2, 0x1f8b

    .line 82
    .line 83
    invoke-static {v2, v0, v1}, Le6/t;->a(IILjava/lang/String;)V

    .line 84
    .line 85
    .line 86
    const-wide/16 v0, 0x8

    .line 87
    .line 88
    invoke-virtual {v13, v0, v1}, Le6/F;->skip(J)V

    .line 89
    .line 90
    .line 91
    shr-int/lit8 v0, v15, 0x2

    .line 92
    .line 93
    and-int/2addr v0, v10

    .line 94
    if-ne v0, v10, :cond_5

    .line 95
    .line 96
    const-wide/16 v0, 0x2

    .line 97
    .line 98
    invoke-virtual {v13, v0, v1}, Le6/F;->require(J)V

    .line 99
    .line 100
    .line 101
    if-eqz v16, :cond_3

    .line 102
    .line 103
    const-wide/16 v4, 0x2

    .line 104
    .line 105
    iget-object v1, v13, Le6/F;->e:Le6/l;

    .line 106
    .line 107
    const-wide/16 v2, 0x0

    .line 108
    .line 109
    move-object/from16 v0, p0

    .line 110
    .line 111
    invoke-virtual/range {v0 .. v5}, Le6/t;->b(Le6/l;JJ)V

    .line 112
    .line 113
    .line 114
    :cond_3
    invoke-virtual {v14}, Le6/l;->readShortLe()S

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    const v1, 0xffff

    .line 119
    .line 120
    .line 121
    and-int/2addr v0, v1

    .line 122
    int-to-long v4, v0

    .line 123
    invoke-virtual {v13, v4, v5}, Le6/F;->require(J)V

    .line 124
    .line 125
    .line 126
    if-eqz v16, :cond_4

    .line 127
    .line 128
    iget-object v1, v13, Le6/F;->e:Le6/l;

    .line 129
    .line 130
    const-wide/16 v2, 0x0

    .line 131
    .line 132
    move-object/from16 v0, p0

    .line 133
    .line 134
    invoke-virtual/range {v0 .. v5}, Le6/t;->b(Le6/l;JJ)V

    .line 135
    .line 136
    .line 137
    :cond_4
    invoke-virtual {v13, v4, v5}, Le6/F;->skip(J)V

    .line 138
    .line 139
    .line 140
    :cond_5
    shr-int/lit8 v0, v15, 0x3

    .line 141
    .line 142
    and-int/2addr v0, v10

    .line 143
    const-wide/16 v20, 0x1

    .line 144
    .line 145
    if-ne v0, v10, :cond_8

    .line 146
    .line 147
    invoke-virtual {v13, v11}, Le6/F;->indexOf(B)J

    .line 148
    .line 149
    .line 150
    move-result-wide v22

    .line 151
    cmp-long v0, v22, v18

    .line 152
    .line 153
    if-eqz v0, :cond_7

    .line 154
    .line 155
    if-eqz v16, :cond_6

    .line 156
    .line 157
    add-long v4, v22, v20

    .line 158
    .line 159
    iget-object v1, v13, Le6/F;->e:Le6/l;

    .line 160
    .line 161
    const-wide/16 v2, 0x0

    .line 162
    .line 163
    move-object/from16 v0, p0

    .line 164
    .line 165
    invoke-virtual/range {v0 .. v5}, Le6/t;->b(Le6/l;JJ)V

    .line 166
    .line 167
    .line 168
    :cond_6
    add-long v0, v22, v20

    .line 169
    .line 170
    invoke-virtual {v13, v0, v1}, Le6/F;->skip(J)V

    .line 171
    .line 172
    .line 173
    goto :goto_2

    .line 174
    :cond_7
    new-instance v0, Ljava/io/EOFException;

    .line 175
    .line 176
    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    .line 177
    .line 178
    .line 179
    throw v0

    .line 180
    :cond_8
    :goto_2
    shr-int/lit8 v0, v15, 0x4

    .line 181
    .line 182
    and-int/2addr v0, v10

    .line 183
    if-ne v0, v10, :cond_b

    .line 184
    .line 185
    invoke-virtual {v13, v11}, Le6/F;->indexOf(B)J

    .line 186
    .line 187
    .line 188
    move-result-wide v11

    .line 189
    cmp-long v0, v11, v18

    .line 190
    .line 191
    if-eqz v0, :cond_a

    .line 192
    .line 193
    if-eqz v16, :cond_9

    .line 194
    .line 195
    add-long v4, v11, v20

    .line 196
    .line 197
    iget-object v1, v13, Le6/F;->e:Le6/l;

    .line 198
    .line 199
    const-wide/16 v2, 0x0

    .line 200
    .line 201
    move-object/from16 v0, p0

    .line 202
    .line 203
    invoke-virtual/range {v0 .. v5}, Le6/t;->b(Le6/l;JJ)V

    .line 204
    .line 205
    .line 206
    goto :goto_3

    .line 207
    :cond_9
    move-object/from16 v0, p0

    .line 208
    .line 209
    :goto_3
    add-long v11, v11, v20

    .line 210
    .line 211
    invoke-virtual {v13, v11, v12}, Le6/F;->skip(J)V

    .line 212
    .line 213
    .line 214
    goto :goto_4

    .line 215
    :cond_a
    move-object/from16 v0, p0

    .line 216
    .line 217
    new-instance v1, Ljava/io/EOFException;

    .line 218
    .line 219
    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    .line 220
    .line 221
    .line 222
    throw v1

    .line 223
    :cond_b
    move-object/from16 v0, p0

    .line 224
    .line 225
    :goto_4
    if-eqz v16, :cond_c

    .line 226
    .line 227
    invoke-virtual {v13}, Le6/F;->readShortLe()S

    .line 228
    .line 229
    .line 230
    move-result v1

    .line 231
    invoke-virtual {v9}, Ljava/util/zip/CRC32;->getValue()J

    .line 232
    .line 233
    .line 234
    move-result-wide v2

    .line 235
    long-to-int v2, v2

    .line 236
    int-to-short v2, v2

    .line 237
    const-string v3, "FHCRC"

    .line 238
    .line 239
    invoke-static {v1, v2, v3}, Le6/t;->a(IILjava/lang/String;)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v9}, Ljava/util/zip/CRC32;->reset()V

    .line 243
    .line 244
    .line 245
    :cond_c
    iput-byte v10, v0, Le6/t;->b:B

    .line 246
    .line 247
    goto :goto_5

    .line 248
    :cond_d
    const-wide/16 v18, -0x1

    .line 249
    .line 250
    :goto_5
    iget-byte v1, v0, Le6/t;->b:B

    .line 251
    .line 252
    const/4 v11, 0x2

    .line 253
    if-ne v1, v10, :cond_f

    .line 254
    .line 255
    invoke-virtual {v6}, Le6/l;->size()J

    .line 256
    .line 257
    .line 258
    move-result-wide v2

    .line 259
    iget-object v1, v0, Le6/t;->j:Le6/u;

    .line 260
    .line 261
    invoke-virtual {v1, v6, v7, v8}, Le6/u;->read(Le6/l;J)J

    .line 262
    .line 263
    .line 264
    move-result-wide v4

    .line 265
    cmp-long v1, v4, v18

    .line 266
    .line 267
    if-eqz v1, :cond_e

    .line 268
    .line 269
    move-object v1, v6

    .line 270
    invoke-virtual/range {v0 .. v5}, Le6/t;->b(Le6/l;JJ)V

    .line 271
    .line 272
    .line 273
    return-wide v4

    .line 274
    :cond_e
    iput-byte v11, v0, Le6/t;->b:B

    .line 275
    .line 276
    :cond_f
    iget-byte v1, v0, Le6/t;->b:B

    .line 277
    .line 278
    if-ne v1, v11, :cond_11

    .line 279
    .line 280
    invoke-virtual {v13}, Le6/F;->readIntLe()I

    .line 281
    .line 282
    .line 283
    move-result v1

    .line 284
    invoke-virtual {v9}, Ljava/util/zip/CRC32;->getValue()J

    .line 285
    .line 286
    .line 287
    move-result-wide v2

    .line 288
    long-to-int v2, v2

    .line 289
    const-string v3, "CRC"

    .line 290
    .line 291
    invoke-static {v1, v2, v3}, Le6/t;->a(IILjava/lang/String;)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {v13}, Le6/F;->readIntLe()I

    .line 295
    .line 296
    .line 297
    move-result v1

    .line 298
    iget-object v2, v0, Le6/t;->f:Ljava/util/zip/Inflater;

    .line 299
    .line 300
    invoke-virtual {v2}, Ljava/util/zip/Inflater;->getBytesWritten()J

    .line 301
    .line 302
    .line 303
    move-result-wide v2

    .line 304
    long-to-int v2, v2

    .line 305
    const-string v3, "ISIZE"

    .line 306
    .line 307
    invoke-static {v1, v2, v3}, Le6/t;->a(IILjava/lang/String;)V

    .line 308
    .line 309
    .line 310
    const/4 v1, 0x3

    .line 311
    iput-byte v1, v0, Le6/t;->b:B

    .line 312
    .line 313
    invoke-virtual {v13}, Le6/F;->exhausted()Z

    .line 314
    .line 315
    .line 316
    move-result v1

    .line 317
    if-eqz v1, :cond_10

    .line 318
    .line 319
    goto :goto_6

    .line 320
    :cond_10
    new-instance v1, Ljava/io/IOException;

    .line 321
    .line 322
    const-string v2, "gzip finished without exhausting source"

    .line 323
    .line 324
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    throw v1

    .line 328
    :cond_11
    :goto_6
    return-wide v18

    .line 329
    :cond_12
    const-string v1, "byteCount < 0: "

    .line 330
    .line 331
    invoke-static {v1, v7, v8}, LA/i;->i(Ljava/lang/String;J)Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v1

    .line 335
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 336
    .line 337
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v1

    .line 341
    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    throw v2
.end method

.method public timeout()Le6/O;
    .locals 1

    .line 1
    iget-object v0, p0, Le6/t;->e:Le6/F;

    .line 2
    .line 3
    invoke-virtual {v0}, Le6/F;->timeout()Le6/O;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
