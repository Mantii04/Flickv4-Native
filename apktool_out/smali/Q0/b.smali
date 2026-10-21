.class public final LQ0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQ0/h;


# instance fields
.field public final a:LQ0/g;

.field public final b:J

.field public final c:J

.field public final d:LQ0/l;

.field public e:I

.field public f:J

.field public g:J

.field public h:J

.field public i:J

.field public j:J

.field public k:J

.field public l:J


# direct methods
.method public constructor <init>(LQ0/l;JJJJZ)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    cmp-long v0, p2, v0

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-ltz v0, :cond_0

    .line 10
    .line 11
    cmp-long v0, p4, p2

    .line 12
    .line 13
    if-lez v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v0, v1

    .line 18
    :goto_0
    invoke-static {v0}, LP3/v;->checkArgument(Z)V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, LQ0/b;->d:LQ0/l;

    .line 22
    .line 23
    iput-wide p2, p0, LQ0/b;->b:J

    .line 24
    .line 25
    iput-wide p4, p0, LQ0/b;->c:J

    .line 26
    .line 27
    sub-long/2addr p4, p2

    .line 28
    cmp-long p1, p6, p4

    .line 29
    .line 30
    if-eqz p1, :cond_2

    .line 31
    .line 32
    if-eqz p10, :cond_1

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    iput v1, p0, LQ0/b;->e:I

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_2
    :goto_1
    iput-wide p8, p0, LQ0/b;->f:J

    .line 39
    .line 40
    const/4 p1, 0x4

    .line 41
    iput p1, p0, LQ0/b;->e:I

    .line 42
    .line 43
    :goto_2
    new-instance p1, LQ0/g;

    .line 44
    .line 45
    invoke-direct {p1}, LQ0/g;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object p1, p0, LQ0/b;->a:LQ0/g;

    .line 49
    .line 50
    return-void
.end method


# virtual methods
.method public createSeekMap()LQ0/a;
    .locals 4

    .line 2
    iget-wide v0, p0, LQ0/b;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    new-instance v0, LQ0/a;

    invoke-direct {v0, p0}, LQ0/a;-><init>(LQ0/b;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic createSeekMap()Lv0/g0;
    .locals 1

    .line 1
    invoke-virtual {p0}, LQ0/b;->createSeekMap()LQ0/a;

    move-result-object v0

    return-object v0
.end method

.method public read(Lv0/D;)J
    .locals 25
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
    iget v2, v0, LQ0/b;->e:I

    .line 6
    .line 7
    iget-wide v3, v0, LQ0/b;->c:J

    .line 8
    .line 9
    const/4 v5, 0x0

    .line 10
    iget-object v6, v0, LQ0/b;->a:LQ0/g;

    .line 11
    .line 12
    const/4 v7, 0x1

    .line 13
    const/4 v8, 0x4

    .line 14
    if-eqz v2, :cond_c

    .line 15
    .line 16
    if-eq v2, v7, :cond_d

    .line 17
    .line 18
    const/4 v3, 0x2

    .line 19
    const/4 v4, 0x3

    .line 20
    const-wide/16 v11, -0x1

    .line 21
    .line 22
    if-eq v2, v3, :cond_2

    .line 23
    .line 24
    if-eq v2, v4, :cond_1

    .line 25
    .line 26
    if-ne v2, v8, :cond_0

    .line 27
    .line 28
    return-wide v11

    .line 29
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 30
    .line 31
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 32
    .line 33
    .line 34
    throw v1

    .line 35
    :cond_1
    const-wide/16 v15, 0x2

    .line 36
    .line 37
    goto/16 :goto_4

    .line 38
    .line 39
    :cond_2
    iget-wide v2, v0, LQ0/b;->i:J

    .line 40
    .line 41
    iget-wide v13, v0, LQ0/b;->j:J

    .line 42
    .line 43
    cmp-long v2, v2, v13

    .line 44
    .line 45
    if-nez v2, :cond_3

    .line 46
    .line 47
    move-wide v13, v11

    .line 48
    move-wide/from16 v17, v13

    .line 49
    .line 50
    :goto_0
    const-wide/16 v15, 0x2

    .line 51
    .line 52
    goto/16 :goto_3

    .line 53
    .line 54
    :cond_3
    invoke-interface {v1}, Lv0/D;->getPosition()J

    .line 55
    .line 56
    .line 57
    move-result-wide v2

    .line 58
    iget-wide v13, v0, LQ0/b;->j:J

    .line 59
    .line 60
    invoke-virtual {v6, v1, v13, v14}, LQ0/g;->skipToNextPage(Lv0/D;J)Z

    .line 61
    .line 62
    .line 63
    move-result v7

    .line 64
    if-nez v7, :cond_5

    .line 65
    .line 66
    iget-wide v13, v0, LQ0/b;->i:J

    .line 67
    .line 68
    cmp-long v2, v13, v2

    .line 69
    .line 70
    if-eqz v2, :cond_4

    .line 71
    .line 72
    move-wide/from16 v17, v11

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_4
    new-instance v1, Ljava/io/IOException;

    .line 76
    .line 77
    const-string v2, "No ogg page can be found."

    .line 78
    .line 79
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw v1

    .line 83
    :cond_5
    invoke-virtual {v6, v1, v5}, LQ0/g;->populate(Lv0/D;Z)Z

    .line 84
    .line 85
    .line 86
    invoke-interface {v1}, Lv0/D;->resetPeekPosition()V

    .line 87
    .line 88
    .line 89
    iget-wide v13, v0, LQ0/b;->h:J

    .line 90
    .line 91
    const-wide/16 v15, 0x2

    .line 92
    .line 93
    iget-wide v9, v6, LQ0/g;->b:J

    .line 94
    .line 95
    sub-long/2addr v13, v9

    .line 96
    iget v7, v6, LQ0/g;->d:I

    .line 97
    .line 98
    move-wide/from16 v17, v11

    .line 99
    .line 100
    iget v11, v6, LQ0/g;->e:I

    .line 101
    .line 102
    add-int/2addr v7, v11

    .line 103
    const-wide/16 v11, 0x0

    .line 104
    .line 105
    cmp-long v19, v11, v13

    .line 106
    .line 107
    if-gtz v19, :cond_6

    .line 108
    .line 109
    const-wide/32 v19, 0x11940

    .line 110
    .line 111
    .line 112
    cmp-long v19, v13, v19

    .line 113
    .line 114
    if-gez v19, :cond_6

    .line 115
    .line 116
    move-wide/from16 v13, v17

    .line 117
    .line 118
    goto :goto_3

    .line 119
    :cond_6
    cmp-long v11, v13, v11

    .line 120
    .line 121
    if-gez v11, :cond_7

    .line 122
    .line 123
    iput-wide v2, v0, LQ0/b;->j:J

    .line 124
    .line 125
    iput-wide v9, v0, LQ0/b;->l:J

    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_7
    invoke-interface {v1}, Lv0/D;->getPosition()J

    .line 129
    .line 130
    .line 131
    move-result-wide v2

    .line 132
    int-to-long v9, v7

    .line 133
    add-long/2addr v2, v9

    .line 134
    iput-wide v2, v0, LQ0/b;->i:J

    .line 135
    .line 136
    iget-wide v2, v6, LQ0/g;->b:J

    .line 137
    .line 138
    iput-wide v2, v0, LQ0/b;->k:J

    .line 139
    .line 140
    :goto_1
    iget-wide v2, v0, LQ0/b;->j:J

    .line 141
    .line 142
    iget-wide v9, v0, LQ0/b;->i:J

    .line 143
    .line 144
    sub-long/2addr v2, v9

    .line 145
    const-wide/32 v19, 0x186a0

    .line 146
    .line 147
    .line 148
    cmp-long v2, v2, v19

    .line 149
    .line 150
    if-gez v2, :cond_8

    .line 151
    .line 152
    iput-wide v9, v0, LQ0/b;->j:J

    .line 153
    .line 154
    move-wide v13, v9

    .line 155
    goto :goto_3

    .line 156
    :cond_8
    int-to-long v2, v7

    .line 157
    if-gtz v11, :cond_9

    .line 158
    .line 159
    move-wide v11, v15

    .line 160
    goto :goto_2

    .line 161
    :cond_9
    const-wide/16 v11, 0x1

    .line 162
    .line 163
    :goto_2
    mul-long/2addr v2, v11

    .line 164
    invoke-interface {v1}, Lv0/D;->getPosition()J

    .line 165
    .line 166
    .line 167
    move-result-wide v11

    .line 168
    sub-long/2addr v11, v2

    .line 169
    iget-wide v2, v0, LQ0/b;->j:J

    .line 170
    .line 171
    const-wide/16 v19, 0x1

    .line 172
    .line 173
    iget-wide v9, v0, LQ0/b;->i:J

    .line 174
    .line 175
    sub-long v21, v2, v9

    .line 176
    .line 177
    mul-long v21, v21, v13

    .line 178
    .line 179
    iget-wide v13, v0, LQ0/b;->l:J

    .line 180
    .line 181
    move-wide/from16 v23, v9

    .line 182
    .line 183
    iget-wide v8, v0, LQ0/b;->k:J

    .line 184
    .line 185
    sub-long/2addr v13, v8

    .line 186
    div-long v21, v21, v13

    .line 187
    .line 188
    add-long v21, v21, v11

    .line 189
    .line 190
    sub-long v2, v2, v19

    .line 191
    .line 192
    move-wide/from16 v19, v21

    .line 193
    .line 194
    move-wide/from16 v21, v23

    .line 195
    .line 196
    move-wide/from16 v23, v2

    .line 197
    .line 198
    invoke-static/range {v19 .. v24}, Landroidx/media3/common/util/Util;->constrainValue(JJJ)J

    .line 199
    .line 200
    .line 201
    move-result-wide v13

    .line 202
    :goto_3
    cmp-long v2, v13, v17

    .line 203
    .line 204
    if-eqz v2, :cond_a

    .line 205
    .line 206
    return-wide v13

    .line 207
    :cond_a
    iput v4, v0, LQ0/b;->e:I

    .line 208
    .line 209
    :goto_4
    invoke-virtual {v6, v1}, LQ0/g;->skipToNextPage(Lv0/D;)Z

    .line 210
    .line 211
    .line 212
    invoke-virtual {v6, v1, v5}, LQ0/g;->populate(Lv0/D;Z)Z

    .line 213
    .line 214
    .line 215
    iget-wide v2, v6, LQ0/g;->b:J

    .line 216
    .line 217
    iget-wide v7, v0, LQ0/b;->h:J

    .line 218
    .line 219
    cmp-long v2, v2, v7

    .line 220
    .line 221
    if-lez v2, :cond_b

    .line 222
    .line 223
    invoke-interface {v1}, Lv0/D;->resetPeekPosition()V

    .line 224
    .line 225
    .line 226
    const/4 v1, 0x4

    .line 227
    iput v1, v0, LQ0/b;->e:I

    .line 228
    .line 229
    iget-wide v1, v0, LQ0/b;->k:J

    .line 230
    .line 231
    add-long/2addr v1, v15

    .line 232
    neg-long v1, v1

    .line 233
    return-wide v1

    .line 234
    :cond_b
    iget v2, v6, LQ0/g;->d:I

    .line 235
    .line 236
    iget v3, v6, LQ0/g;->e:I

    .line 237
    .line 238
    add-int/2addr v2, v3

    .line 239
    invoke-interface {v1, v2}, Lv0/D;->skipFully(I)V

    .line 240
    .line 241
    .line 242
    invoke-interface {v1}, Lv0/D;->getPosition()J

    .line 243
    .line 244
    .line 245
    move-result-wide v2

    .line 246
    iput-wide v2, v0, LQ0/b;->i:J

    .line 247
    .line 248
    iget-wide v2, v6, LQ0/g;->b:J

    .line 249
    .line 250
    iput-wide v2, v0, LQ0/b;->k:J

    .line 251
    .line 252
    goto :goto_4

    .line 253
    :cond_c
    invoke-interface {v1}, Lv0/D;->getPosition()J

    .line 254
    .line 255
    .line 256
    move-result-wide v8

    .line 257
    iput-wide v8, v0, LQ0/b;->g:J

    .line 258
    .line 259
    iput v7, v0, LQ0/b;->e:I

    .line 260
    .line 261
    const-wide/32 v10, 0xff1b

    .line 262
    .line 263
    .line 264
    sub-long v10, v3, v10

    .line 265
    .line 266
    cmp-long v2, v10, v8

    .line 267
    .line 268
    if-lez v2, :cond_d

    .line 269
    .line 270
    return-wide v10

    .line 271
    :cond_d
    invoke-virtual {v6}, LQ0/g;->reset()V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v6, v1}, LQ0/g;->skipToNextPage(Lv0/D;)Z

    .line 275
    .line 276
    .line 277
    move-result v2

    .line 278
    if-eqz v2, :cond_10

    .line 279
    .line 280
    invoke-virtual {v6, v1, v5}, LQ0/g;->populate(Lv0/D;Z)Z

    .line 281
    .line 282
    .line 283
    iget v2, v6, LQ0/g;->d:I

    .line 284
    .line 285
    iget v5, v6, LQ0/g;->e:I

    .line 286
    .line 287
    add-int/2addr v2, v5

    .line 288
    invoke-interface {v1, v2}, Lv0/D;->skipFully(I)V

    .line 289
    .line 290
    .line 291
    iget-wide v8, v6, LQ0/g;->b:J

    .line 292
    .line 293
    :goto_5
    iget v2, v6, LQ0/g;->a:I

    .line 294
    .line 295
    const/4 v5, 0x4

    .line 296
    and-int/2addr v2, v5

    .line 297
    if-eq v2, v5, :cond_f

    .line 298
    .line 299
    invoke-virtual {v6, v1}, LQ0/g;->skipToNextPage(Lv0/D;)Z

    .line 300
    .line 301
    .line 302
    move-result v2

    .line 303
    if-eqz v2, :cond_f

    .line 304
    .line 305
    invoke-interface {v1}, Lv0/D;->getPosition()J

    .line 306
    .line 307
    .line 308
    move-result-wide v10

    .line 309
    cmp-long v2, v10, v3

    .line 310
    .line 311
    if-gez v2, :cond_f

    .line 312
    .line 313
    invoke-virtual {v6, v1, v7}, LQ0/g;->populate(Lv0/D;Z)Z

    .line 314
    .line 315
    .line 316
    move-result v2

    .line 317
    if-eqz v2, :cond_f

    .line 318
    .line 319
    iget v2, v6, LQ0/g;->d:I

    .line 320
    .line 321
    iget v5, v6, LQ0/g;->e:I

    .line 322
    .line 323
    add-int/2addr v2, v5

    .line 324
    invoke-static {v1, v2}, Lv0/G;->skipFullyQuietly(Lv0/D;I)Z

    .line 325
    .line 326
    .line 327
    move-result v2

    .line 328
    if-nez v2, :cond_e

    .line 329
    .line 330
    goto :goto_6

    .line 331
    :cond_e
    iget-wide v8, v6, LQ0/g;->b:J

    .line 332
    .line 333
    goto :goto_5

    .line 334
    :cond_f
    :goto_6
    iput-wide v8, v0, LQ0/b;->f:J

    .line 335
    .line 336
    const/4 v1, 0x4

    .line 337
    iput v1, v0, LQ0/b;->e:I

    .line 338
    .line 339
    iget-wide v1, v0, LQ0/b;->g:J

    .line 340
    .line 341
    return-wide v1

    .line 342
    :cond_10
    new-instance v1, Ljava/io/EOFException;

    .line 343
    .line 344
    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    .line 345
    .line 346
    .line 347
    throw v1
.end method

.method public startSeek(J)V
    .locals 10

    .line 1
    iget-wide v0, p0, LQ0/b;->f:J

    .line 2
    .line 3
    const-wide/16 v2, 0x1

    .line 4
    .line 5
    sub-long v8, v0, v2

    .line 6
    .line 7
    const-wide/16 v6, 0x0

    .line 8
    .line 9
    move-wide v4, p1

    .line 10
    invoke-static/range {v4 .. v9}, Landroidx/media3/common/util/Util;->constrainValue(JJJ)J

    .line 11
    .line 12
    .line 13
    move-result-wide p1

    .line 14
    iput-wide p1, p0, LQ0/b;->h:J

    .line 15
    .line 16
    const/4 p1, 0x2

    .line 17
    iput p1, p0, LQ0/b;->e:I

    .line 18
    .line 19
    iget-wide p1, p0, LQ0/b;->b:J

    .line 20
    .line 21
    iput-wide p1, p0, LQ0/b;->i:J

    .line 22
    .line 23
    iget-wide p1, p0, LQ0/b;->c:J

    .line 24
    .line 25
    iput-wide p1, p0, LQ0/b;->j:J

    .line 26
    .line 27
    const-wide/16 p1, 0x0

    .line 28
    .line 29
    iput-wide p1, p0, LQ0/b;->k:J

    .line 30
    .line 31
    iget-wide p1, p0, LQ0/b;->f:J

    .line 32
    .line 33
    iput-wide p1, p0, LQ0/b;->l:J

    .line 34
    .line 35
    return-void
.end method
