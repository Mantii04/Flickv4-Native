.class public final Lc1/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lv0/r0;

.field public final b:Z

.field public final c:Z

.field public final d:Landroid/util/SparseArray;

.field public final e:Landroid/util/SparseArray;

.field public final f:Ls0/y;

.field public g:[B

.field public h:I

.field public i:I

.field public j:J

.field public k:Z

.field public l:J

.field public m:Lc1/p;

.field public n:Lc1/p;

.field public o:Z

.field public p:J

.field public q:J

.field public r:Z

.field public s:Z


# direct methods
.method public constructor <init>(Lv0/r0;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lc1/q;->a:Lv0/r0;

    .line 5
    .line 6
    iput-boolean p2, p0, Lc1/q;->b:Z

    .line 7
    .line 8
    iput-boolean p3, p0, Lc1/q;->c:Z

    .line 9
    .line 10
    new-instance p1, Landroid/util/SparseArray;

    .line 11
    .line 12
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lc1/q;->d:Landroid/util/SparseArray;

    .line 16
    .line 17
    new-instance p1, Landroid/util/SparseArray;

    .line 18
    .line 19
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lc1/q;->e:Landroid/util/SparseArray;

    .line 23
    .line 24
    new-instance p1, Lc1/p;

    .line 25
    .line 26
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lc1/q;->m:Lc1/p;

    .line 30
    .line 31
    new-instance p1, Lc1/p;

    .line 32
    .line 33
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object p1, p0, Lc1/q;->n:Lc1/p;

    .line 37
    .line 38
    const/16 p1, 0x80

    .line 39
    .line 40
    new-array p1, p1, [B

    .line 41
    .line 42
    iput-object p1, p0, Lc1/q;->g:[B

    .line 43
    .line 44
    new-instance p2, Ls0/y;

    .line 45
    .line 46
    const/4 p3, 0x0

    .line 47
    invoke-direct {p2, p1, p3, p3}, Ls0/y;-><init>([BII)V

    .line 48
    .line 49
    .line 50
    iput-object p2, p0, Lc1/q;->f:Ls0/y;

    .line 51
    .line 52
    invoke-virtual {p0}, Lc1/q;->reset()V

    .line 53
    .line 54
    .line 55
    return-void
.end method


# virtual methods
.method public appendToNalUnit([BII)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    iget-boolean v2, v0, Lc1/q;->k:Z

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    goto/16 :goto_5

    .line 10
    .line 11
    :cond_0
    sub-int v2, p3, v1

    .line 12
    .line 13
    iget-object v3, v0, Lc1/q;->g:[B

    .line 14
    .line 15
    array-length v4, v3

    .line 16
    iget v5, v0, Lc1/q;->h:I

    .line 17
    .line 18
    add-int/2addr v5, v2

    .line 19
    const/4 v6, 0x2

    .line 20
    if-ge v4, v5, :cond_1

    .line 21
    .line 22
    mul-int/2addr v5, v6

    .line 23
    invoke-static {v3, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    iput-object v3, v0, Lc1/q;->g:[B

    .line 28
    .line 29
    :cond_1
    iget-object v3, v0, Lc1/q;->g:[B

    .line 30
    .line 31
    iget v4, v0, Lc1/q;->h:I

    .line 32
    .line 33
    move-object/from16 v5, p1

    .line 34
    .line 35
    invoke-static {v5, v1, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 36
    .line 37
    .line 38
    iget v1, v0, Lc1/q;->h:I

    .line 39
    .line 40
    add-int/2addr v1, v2

    .line 41
    iput v1, v0, Lc1/q;->h:I

    .line 42
    .line 43
    iget-object v2, v0, Lc1/q;->g:[B

    .line 44
    .line 45
    iget-object v3, v0, Lc1/q;->f:Ls0/y;

    .line 46
    .line 47
    const/4 v4, 0x0

    .line 48
    invoke-virtual {v3, v2, v4, v1}, Ls0/y;->reset([BII)V

    .line 49
    .line 50
    .line 51
    const/16 v1, 0x8

    .line 52
    .line 53
    invoke-virtual {v3, v1}, Ls0/y;->canReadBits(I)Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-nez v1, :cond_2

    .line 58
    .line 59
    goto/16 :goto_5

    .line 60
    .line 61
    :cond_2
    invoke-virtual {v3}, Ls0/y;->skipBit()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3, v6}, Ls0/y;->readBits(I)I

    .line 65
    .line 66
    .line 67
    move-result v9

    .line 68
    const/4 v1, 0x5

    .line 69
    invoke-virtual {v3, v1}, Ls0/y;->skipBits(I)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3}, Ls0/y;->canReadExpGolombCodedNum()Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-nez v2, :cond_3

    .line 77
    .line 78
    goto/16 :goto_5

    .line 79
    .line 80
    :cond_3
    invoke-virtual {v3}, Ls0/y;->readUnsignedExpGolombCodedInt()I

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3}, Ls0/y;->canReadExpGolombCodedNum()Z

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    if-nez v2, :cond_4

    .line 88
    .line 89
    goto/16 :goto_5

    .line 90
    .line 91
    :cond_4
    invoke-virtual {v3}, Ls0/y;->readUnsignedExpGolombCodedInt()I

    .line 92
    .line 93
    .line 94
    move-result v10

    .line 95
    iget-boolean v2, v0, Lc1/q;->c:Z

    .line 96
    .line 97
    if-nez v2, :cond_5

    .line 98
    .line 99
    iput-boolean v4, v0, Lc1/q;->k:Z

    .line 100
    .line 101
    iget-object v1, v0, Lc1/q;->n:Lc1/p;

    .line 102
    .line 103
    invoke-virtual {v1, v10}, Lc1/p;->setSliceType(I)V

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :cond_5
    invoke-virtual {v3}, Ls0/y;->canReadExpGolombCodedNum()Z

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    if-nez v2, :cond_6

    .line 112
    .line 113
    goto/16 :goto_5

    .line 114
    .line 115
    :cond_6
    invoke-virtual {v3}, Ls0/y;->readUnsignedExpGolombCodedInt()I

    .line 116
    .line 117
    .line 118
    move-result v12

    .line 119
    iget-object v2, v0, Lc1/q;->e:Landroid/util/SparseArray;

    .line 120
    .line 121
    invoke-virtual {v2, v12}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 122
    .line 123
    .line 124
    move-result v5

    .line 125
    if-gez v5, :cond_7

    .line 126
    .line 127
    iput-boolean v4, v0, Lc1/q;->k:Z

    .line 128
    .line 129
    return-void

    .line 130
    :cond_7
    invoke-virtual {v2, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    check-cast v2, Ls0/t;

    .line 135
    .line 136
    iget-object v5, v0, Lc1/q;->d:Landroid/util/SparseArray;

    .line 137
    .line 138
    iget v7, v2, Ls0/t;->b:I

    .line 139
    .line 140
    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v5

    .line 144
    move-object v8, v5

    .line 145
    check-cast v8, Ls0/u;

    .line 146
    .line 147
    iget-boolean v5, v8, Ls0/u;->j:Z

    .line 148
    .line 149
    if-eqz v5, :cond_9

    .line 150
    .line 151
    invoke-virtual {v3, v6}, Ls0/y;->canReadBits(I)Z

    .line 152
    .line 153
    .line 154
    move-result v5

    .line 155
    if-nez v5, :cond_8

    .line 156
    .line 157
    goto/16 :goto_5

    .line 158
    .line 159
    :cond_8
    invoke-virtual {v3, v6}, Ls0/y;->skipBits(I)V

    .line 160
    .line 161
    .line 162
    :cond_9
    iget v5, v8, Ls0/u;->l:I

    .line 163
    .line 164
    invoke-virtual {v3, v5}, Ls0/y;->canReadBits(I)Z

    .line 165
    .line 166
    .line 167
    move-result v6

    .line 168
    if-nez v6, :cond_a

    .line 169
    .line 170
    goto/16 :goto_5

    .line 171
    .line 172
    :cond_a
    invoke-virtual {v3, v5}, Ls0/y;->readBits(I)I

    .line 173
    .line 174
    .line 175
    move-result v11

    .line 176
    iget-boolean v5, v8, Ls0/u;->k:Z

    .line 177
    .line 178
    const/4 v6, 0x1

    .line 179
    if-nez v5, :cond_e

    .line 180
    .line 181
    invoke-virtual {v3, v6}, Ls0/y;->canReadBits(I)Z

    .line 182
    .line 183
    .line 184
    move-result v5

    .line 185
    if-nez v5, :cond_b

    .line 186
    .line 187
    goto/16 :goto_5

    .line 188
    .line 189
    :cond_b
    invoke-virtual {v3}, Ls0/y;->readBit()Z

    .line 190
    .line 191
    .line 192
    move-result v5

    .line 193
    if-eqz v5, :cond_d

    .line 194
    .line 195
    invoke-virtual {v3, v6}, Ls0/y;->canReadBits(I)Z

    .line 196
    .line 197
    .line 198
    move-result v7

    .line 199
    if-nez v7, :cond_c

    .line 200
    .line 201
    goto/16 :goto_5

    .line 202
    .line 203
    :cond_c
    invoke-virtual {v3}, Ls0/y;->readBit()Z

    .line 204
    .line 205
    .line 206
    move-result v7

    .line 207
    move v13, v5

    .line 208
    move v14, v6

    .line 209
    move v15, v7

    .line 210
    goto :goto_0

    .line 211
    :cond_d
    move v14, v4

    .line 212
    move v15, v14

    .line 213
    move v13, v5

    .line 214
    goto :goto_0

    .line 215
    :cond_e
    move v13, v4

    .line 216
    move v14, v13

    .line 217
    move v15, v14

    .line 218
    :goto_0
    iget v5, v0, Lc1/q;->i:I

    .line 219
    .line 220
    if-ne v5, v1, :cond_f

    .line 221
    .line 222
    move/from16 v16, v6

    .line 223
    .line 224
    goto :goto_1

    .line 225
    :cond_f
    move/from16 v16, v4

    .line 226
    .line 227
    :goto_1
    if-eqz v16, :cond_11

    .line 228
    .line 229
    invoke-virtual {v3}, Ls0/y;->canReadExpGolombCodedNum()Z

    .line 230
    .line 231
    .line 232
    move-result v1

    .line 233
    if-nez v1, :cond_10

    .line 234
    .line 235
    goto :goto_5

    .line 236
    :cond_10
    invoke-virtual {v3}, Ls0/y;->readUnsignedExpGolombCodedInt()I

    .line 237
    .line 238
    .line 239
    move-result v1

    .line 240
    move/from16 v17, v1

    .line 241
    .line 242
    goto :goto_2

    .line 243
    :cond_11
    move/from16 v17, v4

    .line 244
    .line 245
    :goto_2
    iget-boolean v1, v2, Ls0/t;->c:Z

    .line 246
    .line 247
    iget v2, v8, Ls0/u;->m:I

    .line 248
    .line 249
    if-nez v2, :cond_15

    .line 250
    .line 251
    iget v2, v8, Ls0/u;->n:I

    .line 252
    .line 253
    invoke-virtual {v3, v2}, Ls0/y;->canReadBits(I)Z

    .line 254
    .line 255
    .line 256
    move-result v5

    .line 257
    if-nez v5, :cond_12

    .line 258
    .line 259
    goto :goto_5

    .line 260
    :cond_12
    invoke-virtual {v3, v2}, Ls0/y;->readBits(I)I

    .line 261
    .line 262
    .line 263
    move-result v2

    .line 264
    if-eqz v1, :cond_14

    .line 265
    .line 266
    if-nez v13, :cond_14

    .line 267
    .line 268
    invoke-virtual {v3}, Ls0/y;->canReadExpGolombCodedNum()Z

    .line 269
    .line 270
    .line 271
    move-result v1

    .line 272
    if-nez v1, :cond_13

    .line 273
    .line 274
    goto :goto_5

    .line 275
    :cond_13
    invoke-virtual {v3}, Ls0/y;->readSignedExpGolombCodedInt()I

    .line 276
    .line 277
    .line 278
    move-result v1

    .line 279
    move/from16 v19, v1

    .line 280
    .line 281
    move/from16 v18, v2

    .line 282
    .line 283
    move/from16 v20, v4

    .line 284
    .line 285
    :goto_3
    move/from16 v21, v20

    .line 286
    .line 287
    goto :goto_6

    .line 288
    :cond_14
    move/from16 v18, v2

    .line 289
    .line 290
    move/from16 v19, v4

    .line 291
    .line 292
    :goto_4
    move/from16 v20, v19

    .line 293
    .line 294
    goto :goto_3

    .line 295
    :cond_15
    if-ne v2, v6, :cond_19

    .line 296
    .line 297
    iget-boolean v2, v8, Ls0/u;->o:Z

    .line 298
    .line 299
    if-nez v2, :cond_19

    .line 300
    .line 301
    invoke-virtual {v3}, Ls0/y;->canReadExpGolombCodedNum()Z

    .line 302
    .line 303
    .line 304
    move-result v2

    .line 305
    if-nez v2, :cond_16

    .line 306
    .line 307
    goto :goto_5

    .line 308
    :cond_16
    invoke-virtual {v3}, Ls0/y;->readSignedExpGolombCodedInt()I

    .line 309
    .line 310
    .line 311
    move-result v2

    .line 312
    if-eqz v1, :cond_18

    .line 313
    .line 314
    if-nez v13, :cond_18

    .line 315
    .line 316
    invoke-virtual {v3}, Ls0/y;->canReadExpGolombCodedNum()Z

    .line 317
    .line 318
    .line 319
    move-result v1

    .line 320
    if-nez v1, :cond_17

    .line 321
    .line 322
    :goto_5
    return-void

    .line 323
    :cond_17
    invoke-virtual {v3}, Ls0/y;->readSignedExpGolombCodedInt()I

    .line 324
    .line 325
    .line 326
    move-result v1

    .line 327
    move/from16 v21, v1

    .line 328
    .line 329
    move/from16 v20, v2

    .line 330
    .line 331
    move/from16 v18, v4

    .line 332
    .line 333
    move/from16 v19, v18

    .line 334
    .line 335
    goto :goto_6

    .line 336
    :cond_18
    move/from16 v20, v2

    .line 337
    .line 338
    move/from16 v18, v4

    .line 339
    .line 340
    move/from16 v19, v18

    .line 341
    .line 342
    move/from16 v21, v19

    .line 343
    .line 344
    goto :goto_6

    .line 345
    :cond_19
    move/from16 v18, v4

    .line 346
    .line 347
    move/from16 v19, v18

    .line 348
    .line 349
    goto :goto_4

    .line 350
    :goto_6
    iget-object v7, v0, Lc1/q;->n:Lc1/p;

    .line 351
    .line 352
    invoke-virtual/range {v7 .. v21}, Lc1/p;->setAll(Ls0/u;IIIIZZZZIIIII)V

    .line 353
    .line 354
    .line 355
    iput-boolean v4, v0, Lc1/q;->k:Z

    .line 356
    .line 357
    return-void
.end method

.method public endNalUnit(JIZ)Z
    .locals 11

    .line 1
    iget v0, p0, Lc1/q;->i:I

    .line 2
    .line 3
    const/16 v1, 0x9

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    if-eq v0, v1, :cond_6

    .line 8
    .line 9
    iget-boolean v0, p0, Lc1/q;->c:Z

    .line 10
    .line 11
    if-eqz v0, :cond_9

    .line 12
    .line 13
    iget-object v0, p0, Lc1/q;->n:Lc1/p;

    .line 14
    .line 15
    iget-object v1, p0, Lc1/q;->m:Lc1/p;

    .line 16
    .line 17
    iget-boolean v4, v0, Lc1/p;->a:Z

    .line 18
    .line 19
    if-nez v4, :cond_0

    .line 20
    .line 21
    goto/16 :goto_2

    .line 22
    .line 23
    :cond_0
    iget-boolean v4, v1, Lc1/p;->a:Z

    .line 24
    .line 25
    if-nez v4, :cond_1

    .line 26
    .line 27
    goto/16 :goto_0

    .line 28
    .line 29
    :cond_1
    iget-object v4, v0, Lc1/p;->c:Ls0/u;

    .line 30
    .line 31
    invoke-static {v4}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    check-cast v4, Ls0/u;

    .line 36
    .line 37
    iget-object v5, v1, Lc1/p;->c:Ls0/u;

    .line 38
    .line 39
    invoke-static {v5}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    check-cast v5, Ls0/u;

    .line 44
    .line 45
    iget v6, v0, Lc1/p;->f:I

    .line 46
    .line 47
    iget v7, v1, Lc1/p;->f:I

    .line 48
    .line 49
    if-ne v6, v7, :cond_6

    .line 50
    .line 51
    iget v6, v0, Lc1/p;->g:I

    .line 52
    .line 53
    iget v7, v1, Lc1/p;->g:I

    .line 54
    .line 55
    if-ne v6, v7, :cond_6

    .line 56
    .line 57
    iget-boolean v6, v0, Lc1/p;->h:Z

    .line 58
    .line 59
    iget-boolean v7, v1, Lc1/p;->h:Z

    .line 60
    .line 61
    if-ne v6, v7, :cond_6

    .line 62
    .line 63
    iget-boolean v6, v0, Lc1/p;->i:Z

    .line 64
    .line 65
    if-eqz v6, :cond_2

    .line 66
    .line 67
    iget-boolean v6, v1, Lc1/p;->i:Z

    .line 68
    .line 69
    if-eqz v6, :cond_2

    .line 70
    .line 71
    iget-boolean v6, v0, Lc1/p;->j:Z

    .line 72
    .line 73
    iget-boolean v7, v1, Lc1/p;->j:Z

    .line 74
    .line 75
    if-ne v6, v7, :cond_6

    .line 76
    .line 77
    :cond_2
    iget v6, v0, Lc1/p;->d:I

    .line 78
    .line 79
    iget v7, v1, Lc1/p;->d:I

    .line 80
    .line 81
    if-eq v6, v7, :cond_3

    .line 82
    .line 83
    if-eqz v6, :cond_6

    .line 84
    .line 85
    if-eqz v7, :cond_6

    .line 86
    .line 87
    :cond_3
    iget v4, v4, Ls0/u;->m:I

    .line 88
    .line 89
    if-nez v4, :cond_4

    .line 90
    .line 91
    iget v6, v5, Ls0/u;->m:I

    .line 92
    .line 93
    if-nez v6, :cond_4

    .line 94
    .line 95
    iget v6, v0, Lc1/p;->m:I

    .line 96
    .line 97
    iget v7, v1, Lc1/p;->m:I

    .line 98
    .line 99
    if-ne v6, v7, :cond_6

    .line 100
    .line 101
    iget v6, v0, Lc1/p;->n:I

    .line 102
    .line 103
    iget v7, v1, Lc1/p;->n:I

    .line 104
    .line 105
    if-ne v6, v7, :cond_6

    .line 106
    .line 107
    :cond_4
    if-ne v4, v3, :cond_5

    .line 108
    .line 109
    iget v4, v5, Ls0/u;->m:I

    .line 110
    .line 111
    if-ne v4, v3, :cond_5

    .line 112
    .line 113
    iget v4, v0, Lc1/p;->o:I

    .line 114
    .line 115
    iget v5, v1, Lc1/p;->o:I

    .line 116
    .line 117
    if-ne v4, v5, :cond_6

    .line 118
    .line 119
    iget v4, v0, Lc1/p;->p:I

    .line 120
    .line 121
    iget v5, v1, Lc1/p;->p:I

    .line 122
    .line 123
    if-ne v4, v5, :cond_6

    .line 124
    .line 125
    :cond_5
    iget-boolean v4, v0, Lc1/p;->k:Z

    .line 126
    .line 127
    iget-boolean v5, v1, Lc1/p;->k:Z

    .line 128
    .line 129
    if-ne v4, v5, :cond_6

    .line 130
    .line 131
    if-eqz v4, :cond_9

    .line 132
    .line 133
    iget v0, v0, Lc1/p;->l:I

    .line 134
    .line 135
    iget v1, v1, Lc1/p;->l:I

    .line 136
    .line 137
    if-eq v0, v1, :cond_9

    .line 138
    .line 139
    :cond_6
    :goto_0
    if-eqz p4, :cond_8

    .line 140
    .line 141
    iget-boolean p4, p0, Lc1/q;->o:Z

    .line 142
    .line 143
    if-eqz p4, :cond_8

    .line 144
    .line 145
    iget-wide v0, p0, Lc1/q;->j:J

    .line 146
    .line 147
    sub-long/2addr p1, v0

    .line 148
    long-to-int p1, p1

    .line 149
    add-int v9, p3, p1

    .line 150
    .line 151
    iget-wide v5, p0, Lc1/q;->q:J

    .line 152
    .line 153
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    cmp-long p1, v5, p1

    .line 159
    .line 160
    if-eqz p1, :cond_8

    .line 161
    .line 162
    iget-wide p1, p0, Lc1/q;->p:J

    .line 163
    .line 164
    cmp-long p3, v0, p1

    .line 165
    .line 166
    if-nez p3, :cond_7

    .line 167
    .line 168
    goto :goto_1

    .line 169
    :cond_7
    iget-boolean v7, p0, Lc1/q;->r:Z

    .line 170
    .line 171
    sub-long/2addr v0, p1

    .line 172
    long-to-int v8, v0

    .line 173
    iget-object v4, p0, Lc1/q;->a:Lv0/r0;

    .line 174
    .line 175
    const/4 v10, 0x0

    .line 176
    invoke-interface/range {v4 .. v10}, Lv0/r0;->sampleMetadata(JIIILv0/q0;)V

    .line 177
    .line 178
    .line 179
    :cond_8
    :goto_1
    iget-wide p1, p0, Lc1/q;->j:J

    .line 180
    .line 181
    iput-wide p1, p0, Lc1/q;->p:J

    .line 182
    .line 183
    iget-wide p1, p0, Lc1/q;->l:J

    .line 184
    .line 185
    iput-wide p1, p0, Lc1/q;->q:J

    .line 186
    .line 187
    iput-boolean v2, p0, Lc1/q;->r:Z

    .line 188
    .line 189
    iput-boolean v3, p0, Lc1/q;->o:Z

    .line 190
    .line 191
    :cond_9
    :goto_2
    iget-boolean p1, p0, Lc1/q;->b:Z

    .line 192
    .line 193
    if-eqz p1, :cond_a

    .line 194
    .line 195
    iget-object p1, p0, Lc1/q;->n:Lc1/p;

    .line 196
    .line 197
    invoke-virtual {p1}, Lc1/p;->isISlice()Z

    .line 198
    .line 199
    .line 200
    move-result p1

    .line 201
    goto :goto_3

    .line 202
    :cond_a
    iget-boolean p1, p0, Lc1/q;->s:Z

    .line 203
    .line 204
    :goto_3
    iget-boolean p2, p0, Lc1/q;->r:Z

    .line 205
    .line 206
    iget p3, p0, Lc1/q;->i:I

    .line 207
    .line 208
    const/4 p4, 0x5

    .line 209
    if-eq p3, p4, :cond_b

    .line 210
    .line 211
    if-eqz p1, :cond_c

    .line 212
    .line 213
    if-ne p3, v3, :cond_c

    .line 214
    .line 215
    :cond_b
    move v2, v3

    .line 216
    :cond_c
    or-int p1, p2, v2

    .line 217
    .line 218
    iput-boolean p1, p0, Lc1/q;->r:Z

    .line 219
    .line 220
    const/16 p2, 0x18

    .line 221
    .line 222
    iput p2, p0, Lc1/q;->i:I

    .line 223
    .line 224
    return p1
.end method

.method public needsSpsPps()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc1/q;->c:Z

    .line 2
    .line 3
    return v0
.end method

.method public putPps(Ls0/t;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lc1/q;->e:Landroid/util/SparseArray;

    .line 2
    .line 3
    iget v1, p1, Ls0/t;->a:I

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public putSps(Ls0/u;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lc1/q;->d:Landroid/util/SparseArray;

    .line 2
    .line 3
    iget v1, p1, Ls0/u;->d:I

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public reset()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lc1/q;->k:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Lc1/q;->o:Z

    .line 5
    .line 6
    iget-object v0, p0, Lc1/q;->n:Lc1/p;

    .line 7
    .line 8
    invoke-virtual {v0}, Lc1/p;->clear()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public startNalUnit(JIJZ)V
    .locals 0

    .line 1
    iput p3, p0, Lc1/q;->i:I

    .line 2
    .line 3
    iput-wide p4, p0, Lc1/q;->l:J

    .line 4
    .line 5
    iput-wide p1, p0, Lc1/q;->j:J

    .line 6
    .line 7
    iput-boolean p6, p0, Lc1/q;->s:Z

    .line 8
    .line 9
    iget-boolean p1, p0, Lc1/q;->b:Z

    .line 10
    .line 11
    const/4 p2, 0x1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    if-eq p3, p2, :cond_1

    .line 15
    .line 16
    :cond_0
    iget-boolean p1, p0, Lc1/q;->c:Z

    .line 17
    .line 18
    if-eqz p1, :cond_2

    .line 19
    .line 20
    const/4 p1, 0x5

    .line 21
    if-eq p3, p1, :cond_1

    .line 22
    .line 23
    if-eq p3, p2, :cond_1

    .line 24
    .line 25
    const/4 p1, 0x2

    .line 26
    if-ne p3, p1, :cond_2

    .line 27
    .line 28
    :cond_1
    iget-object p1, p0, Lc1/q;->m:Lc1/p;

    .line 29
    .line 30
    iget-object p3, p0, Lc1/q;->n:Lc1/p;

    .line 31
    .line 32
    iput-object p3, p0, Lc1/q;->m:Lc1/p;

    .line 33
    .line 34
    iput-object p1, p0, Lc1/q;->n:Lc1/p;

    .line 35
    .line 36
    invoke-virtual {p1}, Lc1/p;->clear()V

    .line 37
    .line 38
    .line 39
    const/4 p1, 0x0

    .line 40
    iput p1, p0, Lc1/q;->h:I

    .line 41
    .line 42
    iput-boolean p2, p0, Lc1/q;->k:Z

    .line 43
    .line 44
    :cond_2
    return-void
.end method
