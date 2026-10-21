.class public final Landroidx/leanback/widget/s1;
.super Landroidx/leanback/widget/r1;
.source "SourceFile"


# virtual methods
.method public appendVisibleItemsWithoutCache(IZ)Z
    .locals 13

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/E;->b:Landroidx/leanback/widget/D;

    .line 2
    .line 3
    check-cast v0, Landroidx/leanback/widget/G;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/leanback/widget/G;->getCount()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget v1, p0, Landroidx/leanback/widget/E;->g:I

    .line 10
    .line 11
    const/high16 v2, -0x80000000

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    const/4 v4, 0x0

    .line 15
    const/4 v5, 0x1

    .line 16
    if-ltz v1, :cond_9

    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/leanback/widget/r1;->getLastIndex()I

    .line 19
    .line 20
    .line 21
    move-result v6

    .line 22
    if-ge v1, v6, :cond_0

    .line 23
    .line 24
    return v4

    .line 25
    :cond_0
    iget v1, p0, Landroidx/leanback/widget/E;->g:I

    .line 26
    .line 27
    add-int/lit8 v6, v1, 0x1

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Landroidx/leanback/widget/r1;->getLocation(I)Landroidx/leanback/widget/q1;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    iget v1, v1, Landroidx/leanback/widget/C;->a:I

    .line 34
    .line 35
    invoke-virtual {p0, v5}, Landroidx/leanback/widget/s1;->b(Z)I

    .line 36
    .line 37
    .line 38
    move-result v7

    .line 39
    if-gez v7, :cond_3

    .line 40
    .line 41
    move v8, v2

    .line 42
    move v7, v4

    .line 43
    :goto_0
    iget v9, p0, Landroidx/leanback/widget/E;->e:I

    .line 44
    .line 45
    if-ge v7, v9, :cond_5

    .line 46
    .line 47
    iget-boolean v8, p0, Landroidx/leanback/widget/E;->c:Z

    .line 48
    .line 49
    if-eqz v8, :cond_1

    .line 50
    .line 51
    invoke-virtual {p0, v7}, Landroidx/leanback/widget/s1;->d(I)I

    .line 52
    .line 53
    .line 54
    move-result v8

    .line 55
    goto :goto_1

    .line 56
    :cond_1
    invoke-virtual {p0, v7}, Landroidx/leanback/widget/s1;->c(I)I

    .line 57
    .line 58
    .line 59
    move-result v8

    .line 60
    :goto_1
    if-eq v8, v2, :cond_2

    .line 61
    .line 62
    goto :goto_3

    .line 63
    :cond_2
    add-int/lit8 v7, v7, 0x1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_3
    iget-boolean v8, p0, Landroidx/leanback/widget/E;->c:Z

    .line 67
    .line 68
    if-eqz v8, :cond_4

    .line 69
    .line 70
    invoke-virtual {p0, v4, v7, v3}, Landroidx/leanback/widget/s1;->findRowMin(ZI[I)I

    .line 71
    .line 72
    .line 73
    move-result v7

    .line 74
    :goto_2
    move v8, v7

    .line 75
    goto :goto_3

    .line 76
    :cond_4
    invoke-virtual {p0, v5, v7, v3}, Landroidx/leanback/widget/s1;->findRowMax(ZI[I)I

    .line 77
    .line 78
    .line 79
    move-result v7

    .line 80
    goto :goto_2

    .line 81
    :cond_5
    :goto_3
    iget-boolean v7, p0, Landroidx/leanback/widget/E;->c:Z

    .line 82
    .line 83
    if-eqz v7, :cond_6

    .line 84
    .line 85
    invoke-virtual {p0, v1}, Landroidx/leanback/widget/s1;->d(I)I

    .line 86
    .line 87
    .line 88
    move-result v7

    .line 89
    if-gt v7, v8, :cond_8

    .line 90
    .line 91
    goto :goto_4

    .line 92
    :cond_6
    invoke-virtual {p0, v1}, Landroidx/leanback/widget/s1;->c(I)I

    .line 93
    .line 94
    .line 95
    move-result v7

    .line 96
    if-lt v7, v8, :cond_8

    .line 97
    .line 98
    :goto_4
    add-int/lit8 v1, v1, 0x1

    .line 99
    .line 100
    iget v7, p0, Landroidx/leanback/widget/E;->e:I

    .line 101
    .line 102
    if-ne v1, v7, :cond_8

    .line 103
    .line 104
    iget-boolean v1, p0, Landroidx/leanback/widget/E;->c:Z

    .line 105
    .line 106
    if-eqz v1, :cond_7

    .line 107
    .line 108
    invoke-virtual {p0, v4, v3}, Landroidx/leanback/widget/E;->findRowMin(Z[I)I

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    :goto_5
    move v8, v1

    .line 113
    goto :goto_6

    .line 114
    :cond_7
    invoke-virtual {p0, v5, v3}, Landroidx/leanback/widget/E;->findRowMax(Z[I)I

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    goto :goto_5

    .line 119
    :goto_6
    move v1, v4

    .line 120
    :cond_8
    move v7, v5

    .line 121
    goto :goto_9

    .line 122
    :cond_9
    iget v1, p0, Landroidx/leanback/widget/E;->i:I

    .line 123
    .line 124
    const/4 v6, -0x1

    .line 125
    if-eq v1, v6, :cond_a

    .line 126
    .line 127
    move v6, v1

    .line 128
    goto :goto_7

    .line 129
    :cond_a
    move v6, v4

    .line 130
    :goto_7
    iget-object v1, p0, Landroidx/leanback/widget/r1;->j:Lp/k;

    .line 131
    .line 132
    invoke-virtual {v1}, Lp/k;->size()I

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    if-lez v1, :cond_b

    .line 137
    .line 138
    invoke-virtual {p0}, Landroidx/leanback/widget/r1;->getLastIndex()I

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    invoke-virtual {p0, v1}, Landroidx/leanback/widget/r1;->getLocation(I)Landroidx/leanback/widget/q1;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    iget v1, v1, Landroidx/leanback/widget/C;->a:I

    .line 147
    .line 148
    add-int/2addr v1, v5

    .line 149
    goto :goto_8

    .line 150
    :cond_b
    move v1, v6

    .line 151
    :goto_8
    iget v7, p0, Landroidx/leanback/widget/E;->e:I

    .line 152
    .line 153
    rem-int/2addr v1, v7

    .line 154
    move v7, v4

    .line 155
    move v8, v7

    .line 156
    :goto_9
    move v9, v4

    .line 157
    :goto_a
    iget v10, p0, Landroidx/leanback/widget/E;->e:I

    .line 158
    .line 159
    if-ge v1, v10, :cond_1d

    .line 160
    .line 161
    if-eq v6, v0, :cond_1e

    .line 162
    .line 163
    if-nez p2, :cond_c

    .line 164
    .line 165
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/E;->checkAppendOverLimit(I)Z

    .line 166
    .line 167
    .line 168
    move-result v10

    .line 169
    if-eqz v10, :cond_c

    .line 170
    .line 171
    goto/16 :goto_18

    .line 172
    .line 173
    :cond_c
    iget-boolean v9, p0, Landroidx/leanback/widget/E;->c:Z

    .line 174
    .line 175
    if-eqz v9, :cond_d

    .line 176
    .line 177
    invoke-virtual {p0, v1}, Landroidx/leanback/widget/s1;->d(I)I

    .line 178
    .line 179
    .line 180
    move-result v9

    .line 181
    goto :goto_b

    .line 182
    :cond_d
    invoke-virtual {p0, v1}, Landroidx/leanback/widget/s1;->c(I)I

    .line 183
    .line 184
    .line 185
    move-result v9

    .line 186
    :goto_b
    const v10, 0x7fffffff

    .line 187
    .line 188
    .line 189
    if-eq v9, v10, :cond_10

    .line 190
    .line 191
    if-ne v9, v2, :cond_e

    .line 192
    .line 193
    goto :goto_e

    .line 194
    :cond_e
    iget-boolean v10, p0, Landroidx/leanback/widget/E;->c:Z

    .line 195
    .line 196
    if-eqz v10, :cond_f

    .line 197
    .line 198
    iget v10, p0, Landroidx/leanback/widget/E;->d:I

    .line 199
    .line 200
    :goto_c
    neg-int v10, v10

    .line 201
    goto :goto_d

    .line 202
    :cond_f
    iget v10, p0, Landroidx/leanback/widget/E;->d:I

    .line 203
    .line 204
    :goto_d
    add-int/2addr v9, v10

    .line 205
    goto :goto_10

    .line 206
    :cond_10
    :goto_e
    if-nez v1, :cond_13

    .line 207
    .line 208
    iget-boolean v9, p0, Landroidx/leanback/widget/E;->c:Z

    .line 209
    .line 210
    if-eqz v9, :cond_11

    .line 211
    .line 212
    iget v9, p0, Landroidx/leanback/widget/E;->e:I

    .line 213
    .line 214
    sub-int/2addr v9, v5

    .line 215
    invoke-virtual {p0, v9}, Landroidx/leanback/widget/s1;->d(I)I

    .line 216
    .line 217
    .line 218
    move-result v9

    .line 219
    goto :goto_f

    .line 220
    :cond_11
    iget v9, p0, Landroidx/leanback/widget/E;->e:I

    .line 221
    .line 222
    sub-int/2addr v9, v5

    .line 223
    invoke-virtual {p0, v9}, Landroidx/leanback/widget/s1;->c(I)I

    .line 224
    .line 225
    .line 226
    move-result v9

    .line 227
    :goto_f
    if-eq v9, v10, :cond_15

    .line 228
    .line 229
    if-eq v9, v2, :cond_15

    .line 230
    .line 231
    iget-boolean v10, p0, Landroidx/leanback/widget/E;->c:Z

    .line 232
    .line 233
    if-eqz v10, :cond_12

    .line 234
    .line 235
    iget v10, p0, Landroidx/leanback/widget/E;->d:I

    .line 236
    .line 237
    goto :goto_c

    .line 238
    :cond_12
    iget v10, p0, Landroidx/leanback/widget/E;->d:I

    .line 239
    .line 240
    goto :goto_d

    .line 241
    :cond_13
    iget-boolean v9, p0, Landroidx/leanback/widget/E;->c:Z

    .line 242
    .line 243
    if-eqz v9, :cond_14

    .line 244
    .line 245
    add-int/lit8 v9, v1, -0x1

    .line 246
    .line 247
    invoke-virtual {p0, v9}, Landroidx/leanback/widget/s1;->c(I)I

    .line 248
    .line 249
    .line 250
    move-result v9

    .line 251
    goto :goto_10

    .line 252
    :cond_14
    add-int/lit8 v9, v1, -0x1

    .line 253
    .line 254
    invoke-virtual {p0, v9}, Landroidx/leanback/widget/s1;->d(I)I

    .line 255
    .line 256
    .line 257
    move-result v9

    .line 258
    :cond_15
    :goto_10
    add-int/lit8 v10, v6, 0x1

    .line 259
    .line 260
    invoke-virtual {p0, v6, v1, v9}, Landroidx/leanback/widget/r1;->appendVisibleItemToRow(III)I

    .line 261
    .line 262
    .line 263
    move-result v6

    .line 264
    if-eqz v7, :cond_1b

    .line 265
    .line 266
    :goto_11
    iget-boolean v11, p0, Landroidx/leanback/widget/E;->c:Z

    .line 267
    .line 268
    if-eqz v11, :cond_16

    .line 269
    .line 270
    sub-int v11, v9, v6

    .line 271
    .line 272
    if-le v11, v8, :cond_1a

    .line 273
    .line 274
    goto :goto_12

    .line 275
    :cond_16
    add-int v11, v9, v6

    .line 276
    .line 277
    if-ge v11, v8, :cond_1a

    .line 278
    .line 279
    :goto_12
    if-eq v10, v0, :cond_19

    .line 280
    .line 281
    if-nez p2, :cond_17

    .line 282
    .line 283
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/E;->checkAppendOverLimit(I)Z

    .line 284
    .line 285
    .line 286
    move-result v11

    .line 287
    if-eqz v11, :cond_17

    .line 288
    .line 289
    goto :goto_14

    .line 290
    :cond_17
    iget-boolean v11, p0, Landroidx/leanback/widget/E;->c:Z

    .line 291
    .line 292
    if-eqz v11, :cond_18

    .line 293
    .line 294
    neg-int v6, v6

    .line 295
    iget v11, p0, Landroidx/leanback/widget/E;->d:I

    .line 296
    .line 297
    sub-int/2addr v6, v11

    .line 298
    goto :goto_13

    .line 299
    :cond_18
    iget v11, p0, Landroidx/leanback/widget/E;->d:I

    .line 300
    .line 301
    add-int/2addr v6, v11

    .line 302
    :goto_13
    add-int/2addr v9, v6

    .line 303
    add-int/lit8 v6, v10, 0x1

    .line 304
    .line 305
    invoke-virtual {p0, v10, v1, v9}, Landroidx/leanback/widget/r1;->appendVisibleItemToRow(III)I

    .line 306
    .line 307
    .line 308
    move-result v10

    .line 309
    move v12, v10

    .line 310
    move v10, v6

    .line 311
    move v6, v12

    .line 312
    goto :goto_11

    .line 313
    :cond_19
    :goto_14
    return v5

    .line 314
    :cond_1a
    :goto_15
    move v6, v10

    .line 315
    goto :goto_17

    .line 316
    :cond_1b
    iget-boolean v6, p0, Landroidx/leanback/widget/E;->c:Z

    .line 317
    .line 318
    if-eqz v6, :cond_1c

    .line 319
    .line 320
    invoke-virtual {p0, v1}, Landroidx/leanback/widget/s1;->d(I)I

    .line 321
    .line 322
    .line 323
    move-result v6

    .line 324
    goto :goto_16

    .line 325
    :cond_1c
    invoke-virtual {p0, v1}, Landroidx/leanback/widget/s1;->c(I)I

    .line 326
    .line 327
    .line 328
    move-result v6

    .line 329
    :goto_16
    move v7, v5

    .line 330
    move v8, v6

    .line 331
    goto :goto_15

    .line 332
    :goto_17
    add-int/lit8 v1, v1, 0x1

    .line 333
    .line 334
    move v9, v5

    .line 335
    goto/16 :goto_a

    .line 336
    .line 337
    :cond_1d
    if-eqz p2, :cond_1f

    .line 338
    .line 339
    :cond_1e
    :goto_18
    return v9

    .line 340
    :cond_1f
    iget-boolean v1, p0, Landroidx/leanback/widget/E;->c:Z

    .line 341
    .line 342
    if-eqz v1, :cond_20

    .line 343
    .line 344
    invoke-virtual {p0, v4, v3}, Landroidx/leanback/widget/E;->findRowMin(Z[I)I

    .line 345
    .line 346
    .line 347
    move-result v1

    .line 348
    :goto_19
    move v8, v1

    .line 349
    goto :goto_1a

    .line 350
    :cond_20
    invoke-virtual {p0, v5, v3}, Landroidx/leanback/widget/E;->findRowMax(Z[I)I

    .line 351
    .line 352
    .line 353
    move-result v1

    .line 354
    goto :goto_19

    .line 355
    :goto_1a
    move v1, v4

    .line 356
    goto/16 :goto_a
.end method

.method public final b(Z)I
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p1, :cond_2

    .line 4
    .line 5
    iget p1, p0, Landroidx/leanback/widget/E;->g:I

    .line 6
    .line 7
    :goto_0
    iget v2, p0, Landroidx/leanback/widget/E;->f:I

    .line 8
    .line 9
    if-lt p1, v2, :cond_5

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/r1;->getLocation(I)Landroidx/leanback/widget/q1;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    iget v2, v2, Landroidx/leanback/widget/C;->a:I

    .line 16
    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    move v1, v0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    if-eqz v1, :cond_1

    .line 22
    .line 23
    iget v3, p0, Landroidx/leanback/widget/E;->e:I

    .line 24
    .line 25
    sub-int/2addr v3, v0

    .line 26
    if-ne v2, v3, :cond_1

    .line 27
    .line 28
    return p1

    .line 29
    :cond_1
    :goto_1
    add-int/lit8 p1, p1, -0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    iget p1, p0, Landroidx/leanback/widget/E;->f:I

    .line 33
    .line 34
    :goto_2
    iget v2, p0, Landroidx/leanback/widget/E;->g:I

    .line 35
    .line 36
    if-gt p1, v2, :cond_5

    .line 37
    .line 38
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/r1;->getLocation(I)Landroidx/leanback/widget/q1;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    iget v2, v2, Landroidx/leanback/widget/C;->a:I

    .line 43
    .line 44
    iget v3, p0, Landroidx/leanback/widget/E;->e:I

    .line 45
    .line 46
    sub-int/2addr v3, v0

    .line 47
    if-ne v2, v3, :cond_3

    .line 48
    .line 49
    move v1, v0

    .line 50
    goto :goto_3

    .line 51
    :cond_3
    if-eqz v1, :cond_4

    .line 52
    .line 53
    if-nez v2, :cond_4

    .line 54
    .line 55
    return p1

    .line 56
    :cond_4
    :goto_3
    add-int/lit8 p1, p1, 0x1

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_5
    const/4 p1, -0x1

    .line 60
    return p1
.end method

.method public final c(I)I
    .locals 5

    .line 1
    iget v0, p0, Landroidx/leanback/widget/E;->f:I

    .line 2
    .line 3
    const/high16 v1, -0x80000000

    .line 4
    .line 5
    if-gez v0, :cond_0

    .line 6
    .line 7
    return v1

    .line 8
    :cond_0
    iget-boolean v2, p0, Landroidx/leanback/widget/E;->c:Z

    .line 9
    .line 10
    if-eqz v2, :cond_3

    .line 11
    .line 12
    iget-object v2, p0, Landroidx/leanback/widget/E;->b:Landroidx/leanback/widget/D;

    .line 13
    .line 14
    check-cast v2, Landroidx/leanback/widget/G;

    .line 15
    .line 16
    invoke-virtual {v2, v0}, Landroidx/leanback/widget/G;->getEdge(I)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iget v2, p0, Landroidx/leanback/widget/E;->f:I

    .line 21
    .line 22
    invoke-virtual {p0, v2}, Landroidx/leanback/widget/r1;->getLocation(I)Landroidx/leanback/widget/q1;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    iget v2, v2, Landroidx/leanback/widget/C;->a:I

    .line 27
    .line 28
    if-ne v2, p1, :cond_1

    .line 29
    .line 30
    return v0

    .line 31
    :cond_1
    iget v2, p0, Landroidx/leanback/widget/E;->f:I

    .line 32
    .line 33
    :goto_0
    add-int/lit8 v2, v2, 0x1

    .line 34
    .line 35
    invoke-virtual {p0}, Landroidx/leanback/widget/r1;->getLastIndex()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-gt v2, v3, :cond_6

    .line 40
    .line 41
    invoke-virtual {p0, v2}, Landroidx/leanback/widget/r1;->getLocation(I)Landroidx/leanback/widget/q1;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    iget v4, v3, Landroidx/leanback/widget/q1;->b:I

    .line 46
    .line 47
    add-int/2addr v0, v4

    .line 48
    iget v3, v3, Landroidx/leanback/widget/C;->a:I

    .line 49
    .line 50
    if-ne v3, p1, :cond_2

    .line 51
    .line 52
    return v0

    .line 53
    :cond_2
    goto :goto_0

    .line 54
    :cond_3
    iget-object v0, p0, Landroidx/leanback/widget/E;->b:Landroidx/leanback/widget/D;

    .line 55
    .line 56
    iget v2, p0, Landroidx/leanback/widget/E;->g:I

    .line 57
    .line 58
    check-cast v0, Landroidx/leanback/widget/G;

    .line 59
    .line 60
    invoke-virtual {v0, v2}, Landroidx/leanback/widget/G;->getEdge(I)I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    iget v2, p0, Landroidx/leanback/widget/E;->g:I

    .line 65
    .line 66
    invoke-virtual {p0, v2}, Landroidx/leanback/widget/r1;->getLocation(I)Landroidx/leanback/widget/q1;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    iget v3, v2, Landroidx/leanback/widget/C;->a:I

    .line 71
    .line 72
    if-ne v3, p1, :cond_4

    .line 73
    .line 74
    iget p1, v2, Landroidx/leanback/widget/q1;->c:I

    .line 75
    .line 76
    :goto_1
    add-int/2addr v0, p1

    .line 77
    return v0

    .line 78
    :cond_4
    iget v3, p0, Landroidx/leanback/widget/E;->g:I

    .line 79
    .line 80
    add-int/lit8 v3, v3, -0x1

    .line 81
    .line 82
    :goto_2
    invoke-virtual {p0}, Landroidx/leanback/widget/r1;->getFirstIndex()I

    .line 83
    .line 84
    .line 85
    move-result v4

    .line 86
    if-lt v3, v4, :cond_6

    .line 87
    .line 88
    iget v2, v2, Landroidx/leanback/widget/q1;->b:I

    .line 89
    .line 90
    sub-int/2addr v0, v2

    .line 91
    invoke-virtual {p0, v3}, Landroidx/leanback/widget/r1;->getLocation(I)Landroidx/leanback/widget/q1;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    iget v4, v2, Landroidx/leanback/widget/C;->a:I

    .line 96
    .line 97
    if-ne v4, p1, :cond_5

    .line 98
    .line 99
    iget p1, v2, Landroidx/leanback/widget/q1;->c:I

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_5
    add-int/lit8 v3, v3, -0x1

    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_6
    return v1
.end method

.method public final d(I)I
    .locals 5

    .line 1
    iget v0, p0, Landroidx/leanback/widget/E;->f:I

    .line 2
    .line 3
    const v1, 0x7fffffff

    .line 4
    .line 5
    .line 6
    if-gez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget-boolean v2, p0, Landroidx/leanback/widget/E;->c:Z

    .line 10
    .line 11
    if-eqz v2, :cond_3

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/leanback/widget/E;->b:Landroidx/leanback/widget/D;

    .line 14
    .line 15
    iget v2, p0, Landroidx/leanback/widget/E;->g:I

    .line 16
    .line 17
    check-cast v0, Landroidx/leanback/widget/G;

    .line 18
    .line 19
    invoke-virtual {v0, v2}, Landroidx/leanback/widget/G;->getEdge(I)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iget v2, p0, Landroidx/leanback/widget/E;->g:I

    .line 24
    .line 25
    invoke-virtual {p0, v2}, Landroidx/leanback/widget/r1;->getLocation(I)Landroidx/leanback/widget/q1;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    iget v3, v2, Landroidx/leanback/widget/C;->a:I

    .line 30
    .line 31
    if-ne v3, p1, :cond_1

    .line 32
    .line 33
    iget p1, v2, Landroidx/leanback/widget/q1;->c:I

    .line 34
    .line 35
    :goto_0
    sub-int/2addr v0, p1

    .line 36
    return v0

    .line 37
    :cond_1
    iget v3, p0, Landroidx/leanback/widget/E;->g:I

    .line 38
    .line 39
    add-int/lit8 v3, v3, -0x1

    .line 40
    .line 41
    :goto_1
    invoke-virtual {p0}, Landroidx/leanback/widget/r1;->getFirstIndex()I

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    if-lt v3, v4, :cond_6

    .line 46
    .line 47
    iget v2, v2, Landroidx/leanback/widget/q1;->b:I

    .line 48
    .line 49
    sub-int/2addr v0, v2

    .line 50
    invoke-virtual {p0, v3}, Landroidx/leanback/widget/r1;->getLocation(I)Landroidx/leanback/widget/q1;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    iget v4, v2, Landroidx/leanback/widget/C;->a:I

    .line 55
    .line 56
    if-ne v4, p1, :cond_2

    .line 57
    .line 58
    iget p1, v2, Landroidx/leanback/widget/q1;->c:I

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    add-int/lit8 v3, v3, -0x1

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_3
    iget-object v2, p0, Landroidx/leanback/widget/E;->b:Landroidx/leanback/widget/D;

    .line 65
    .line 66
    check-cast v2, Landroidx/leanback/widget/G;

    .line 67
    .line 68
    invoke-virtual {v2, v0}, Landroidx/leanback/widget/G;->getEdge(I)I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    iget v2, p0, Landroidx/leanback/widget/E;->f:I

    .line 73
    .line 74
    invoke-virtual {p0, v2}, Landroidx/leanback/widget/r1;->getLocation(I)Landroidx/leanback/widget/q1;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    iget v2, v2, Landroidx/leanback/widget/C;->a:I

    .line 79
    .line 80
    if-ne v2, p1, :cond_4

    .line 81
    .line 82
    return v0

    .line 83
    :cond_4
    iget v2, p0, Landroidx/leanback/widget/E;->f:I

    .line 84
    .line 85
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 86
    .line 87
    invoke-virtual {p0}, Landroidx/leanback/widget/r1;->getLastIndex()I

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    if-gt v2, v3, :cond_6

    .line 92
    .line 93
    invoke-virtual {p0, v2}, Landroidx/leanback/widget/r1;->getLocation(I)Landroidx/leanback/widget/q1;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    iget v4, v3, Landroidx/leanback/widget/q1;->b:I

    .line 98
    .line 99
    add-int/2addr v0, v4

    .line 100
    iget v3, v3, Landroidx/leanback/widget/C;->a:I

    .line 101
    .line 102
    if-ne v3, p1, :cond_5

    .line 103
    .line 104
    return v0

    .line 105
    :cond_5
    goto :goto_2

    .line 106
    :cond_6
    return v1
.end method

.method public findRowMax(ZI[I)I
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/E;->b:Landroidx/leanback/widget/D;

    .line 2
    .line 3
    check-cast v0, Landroidx/leanback/widget/G;

    .line 4
    .line 5
    invoke-virtual {v0, p2}, Landroidx/leanback/widget/G;->getEdge(I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p0, p2}, Landroidx/leanback/widget/r1;->getLocation(I)Landroidx/leanback/widget/q1;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget v2, v1, Landroidx/leanback/widget/C;->a:I

    .line 14
    .line 15
    iget-boolean v3, p0, Landroidx/leanback/widget/E;->c:Z

    .line 16
    .line 17
    const/4 v4, 0x1

    .line 18
    if-eqz v3, :cond_3

    .line 19
    .line 20
    add-int/lit8 v1, p2, 0x1

    .line 21
    .line 22
    move v3, v2

    .line 23
    move v5, v3

    .line 24
    move v6, v4

    .line 25
    move v2, v1

    .line 26
    move v1, v0

    .line 27
    :goto_0
    iget v7, p0, Landroidx/leanback/widget/E;->e:I

    .line 28
    .line 29
    if-ge v6, v7, :cond_7

    .line 30
    .line 31
    iget v7, p0, Landroidx/leanback/widget/E;->g:I

    .line 32
    .line 33
    if-gt v2, v7, :cond_7

    .line 34
    .line 35
    invoke-virtual {p0, v2}, Landroidx/leanback/widget/r1;->getLocation(I)Landroidx/leanback/widget/q1;

    .line 36
    .line 37
    .line 38
    move-result-object v7

    .line 39
    iget v8, v7, Landroidx/leanback/widget/q1;->b:I

    .line 40
    .line 41
    add-int/2addr v1, v8

    .line 42
    iget v7, v7, Landroidx/leanback/widget/C;->a:I

    .line 43
    .line 44
    if-eq v7, v5, :cond_2

    .line 45
    .line 46
    add-int/lit8 v6, v6, 0x1

    .line 47
    .line 48
    if-eqz p1, :cond_0

    .line 49
    .line 50
    if-le v1, v0, :cond_1

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_0
    if-ge v1, v0, :cond_1

    .line 54
    .line 55
    :goto_1
    move v0, v1

    .line 56
    move p2, v2

    .line 57
    move v3, v7

    .line 58
    move v5, v3

    .line 59
    goto :goto_2

    .line 60
    :cond_1
    move v5, v7

    .line 61
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_3
    iget-object v3, p0, Landroidx/leanback/widget/E;->b:Landroidx/leanback/widget/D;

    .line 65
    .line 66
    check-cast v3, Landroidx/leanback/widget/G;

    .line 67
    .line 68
    invoke-virtual {v3, p2}, Landroidx/leanback/widget/G;->getSize(I)I

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    add-int/2addr v3, v0

    .line 73
    add-int/lit8 v5, p2, -0x1

    .line 74
    .line 75
    move v7, v4

    .line 76
    move v6, v5

    .line 77
    move v5, v2

    .line 78
    move-object v2, v1

    .line 79
    move v1, v0

    .line 80
    move v0, v3

    .line 81
    move v3, v5

    .line 82
    :goto_3
    iget v8, p0, Landroidx/leanback/widget/E;->e:I

    .line 83
    .line 84
    if-ge v7, v8, :cond_7

    .line 85
    .line 86
    iget v8, p0, Landroidx/leanback/widget/E;->f:I

    .line 87
    .line 88
    if-lt v6, v8, :cond_7

    .line 89
    .line 90
    iget v2, v2, Landroidx/leanback/widget/q1;->b:I

    .line 91
    .line 92
    sub-int/2addr v1, v2

    .line 93
    invoke-virtual {p0, v6}, Landroidx/leanback/widget/r1;->getLocation(I)Landroidx/leanback/widget/q1;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    iget v8, v2, Landroidx/leanback/widget/C;->a:I

    .line 98
    .line 99
    if-eq v8, v5, :cond_6

    .line 100
    .line 101
    add-int/lit8 v7, v7, 0x1

    .line 102
    .line 103
    iget-object v5, p0, Landroidx/leanback/widget/E;->b:Landroidx/leanback/widget/D;

    .line 104
    .line 105
    check-cast v5, Landroidx/leanback/widget/G;

    .line 106
    .line 107
    invoke-virtual {v5, v6}, Landroidx/leanback/widget/G;->getSize(I)I

    .line 108
    .line 109
    .line 110
    move-result v5

    .line 111
    add-int/2addr v5, v1

    .line 112
    if-eqz p1, :cond_4

    .line 113
    .line 114
    if-le v5, v0, :cond_5

    .line 115
    .line 116
    goto :goto_4

    .line 117
    :cond_4
    if-ge v5, v0, :cond_5

    .line 118
    .line 119
    :goto_4
    move v0, v5

    .line 120
    move p2, v6

    .line 121
    move v3, v8

    .line 122
    move v5, v3

    .line 123
    goto :goto_5

    .line 124
    :cond_5
    move v5, v8

    .line 125
    :cond_6
    :goto_5
    add-int/lit8 v6, v6, -0x1

    .line 126
    .line 127
    goto :goto_3

    .line 128
    :cond_7
    if-eqz p3, :cond_8

    .line 129
    .line 130
    const/4 p1, 0x0

    .line 131
    aput v3, p3, p1

    .line 132
    .line 133
    aput p2, p3, v4

    .line 134
    .line 135
    :cond_8
    return v0
.end method

.method public findRowMin(ZI[I)I
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/E;->b:Landroidx/leanback/widget/D;

    .line 2
    .line 3
    check-cast v0, Landroidx/leanback/widget/G;

    .line 4
    .line 5
    invoke-virtual {v0, p2}, Landroidx/leanback/widget/G;->getEdge(I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p0, p2}, Landroidx/leanback/widget/r1;->getLocation(I)Landroidx/leanback/widget/q1;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget v2, v1, Landroidx/leanback/widget/C;->a:I

    .line 14
    .line 15
    iget-boolean v3, p0, Landroidx/leanback/widget/E;->c:Z

    .line 16
    .line 17
    const/4 v4, 0x1

    .line 18
    if-eqz v3, :cond_3

    .line 19
    .line 20
    iget-object v3, p0, Landroidx/leanback/widget/E;->b:Landroidx/leanback/widget/D;

    .line 21
    .line 22
    check-cast v3, Landroidx/leanback/widget/G;

    .line 23
    .line 24
    invoke-virtual {v3, p2}, Landroidx/leanback/widget/G;->getSize(I)I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    sub-int v3, v0, v3

    .line 29
    .line 30
    add-int/lit8 v5, p2, -0x1

    .line 31
    .line 32
    move v7, v4

    .line 33
    move v6, v5

    .line 34
    move v5, v3

    .line 35
    move v3, v2

    .line 36
    :goto_0
    iget v8, p0, Landroidx/leanback/widget/E;->e:I

    .line 37
    .line 38
    if-ge v7, v8, :cond_8

    .line 39
    .line 40
    iget v8, p0, Landroidx/leanback/widget/E;->f:I

    .line 41
    .line 42
    if-lt v6, v8, :cond_8

    .line 43
    .line 44
    iget v1, v1, Landroidx/leanback/widget/q1;->b:I

    .line 45
    .line 46
    sub-int/2addr v0, v1

    .line 47
    invoke-virtual {p0, v6}, Landroidx/leanback/widget/r1;->getLocation(I)Landroidx/leanback/widget/q1;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    iget v8, v1, Landroidx/leanback/widget/C;->a:I

    .line 52
    .line 53
    if-eq v8, v3, :cond_2

    .line 54
    .line 55
    add-int/lit8 v7, v7, 0x1

    .line 56
    .line 57
    iget-object v3, p0, Landroidx/leanback/widget/E;->b:Landroidx/leanback/widget/D;

    .line 58
    .line 59
    check-cast v3, Landroidx/leanback/widget/G;

    .line 60
    .line 61
    invoke-virtual {v3, v6}, Landroidx/leanback/widget/G;->getSize(I)I

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    sub-int v3, v0, v3

    .line 66
    .line 67
    if-eqz p1, :cond_0

    .line 68
    .line 69
    if-le v3, v5, :cond_1

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_0
    if-ge v3, v5, :cond_1

    .line 73
    .line 74
    :goto_1
    move v5, v3

    .line 75
    move p2, v6

    .line 76
    move v2, v8

    .line 77
    move v3, v2

    .line 78
    goto :goto_2

    .line 79
    :cond_1
    move v3, v8

    .line 80
    :cond_2
    :goto_2
    add-int/lit8 v6, v6, -0x1

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_3
    add-int/lit8 v1, p2, 0x1

    .line 84
    .line 85
    move v3, v2

    .line 86
    move v5, v3

    .line 87
    move v6, v4

    .line 88
    move v2, v1

    .line 89
    move v1, v0

    .line 90
    :goto_3
    iget v7, p0, Landroidx/leanback/widget/E;->e:I

    .line 91
    .line 92
    if-ge v6, v7, :cond_7

    .line 93
    .line 94
    iget v7, p0, Landroidx/leanback/widget/E;->g:I

    .line 95
    .line 96
    if-gt v2, v7, :cond_7

    .line 97
    .line 98
    invoke-virtual {p0, v2}, Landroidx/leanback/widget/r1;->getLocation(I)Landroidx/leanback/widget/q1;

    .line 99
    .line 100
    .line 101
    move-result-object v7

    .line 102
    iget v8, v7, Landroidx/leanback/widget/q1;->b:I

    .line 103
    .line 104
    add-int/2addr v1, v8

    .line 105
    iget v7, v7, Landroidx/leanback/widget/C;->a:I

    .line 106
    .line 107
    if-eq v7, v5, :cond_6

    .line 108
    .line 109
    add-int/lit8 v6, v6, 0x1

    .line 110
    .line 111
    if-eqz p1, :cond_4

    .line 112
    .line 113
    if-le v1, v0, :cond_5

    .line 114
    .line 115
    goto :goto_4

    .line 116
    :cond_4
    if-ge v1, v0, :cond_5

    .line 117
    .line 118
    :goto_4
    move v0, v1

    .line 119
    move p2, v2

    .line 120
    move v3, v7

    .line 121
    move v5, v3

    .line 122
    goto :goto_5

    .line 123
    :cond_5
    move v5, v7

    .line 124
    :cond_6
    :goto_5
    add-int/lit8 v2, v2, 0x1

    .line 125
    .line 126
    goto :goto_3

    .line 127
    :cond_7
    move v5, v0

    .line 128
    move v2, v3

    .line 129
    :cond_8
    if-eqz p3, :cond_9

    .line 130
    .line 131
    const/4 p1, 0x0

    .line 132
    aput v2, p3, p1

    .line 133
    .line 134
    aput p2, p3, v4

    .line 135
    .line 136
    :cond_9
    return v5
.end method

.method public prependVisibleItemsWithoutCache(IZ)Z
    .locals 12

    .line 1
    iget v0, p0, Landroidx/leanback/widget/E;->f:I

    .line 2
    .line 3
    const v1, 0x7fffffff

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x1

    .line 9
    if-ltz v0, :cond_9

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/leanback/widget/r1;->getFirstIndex()I

    .line 12
    .line 13
    .line 14
    move-result v5

    .line 15
    if-le v0, v5, :cond_0

    .line 16
    .line 17
    return v3

    .line 18
    :cond_0
    iget v0, p0, Landroidx/leanback/widget/E;->f:I

    .line 19
    .line 20
    add-int/lit8 v5, v0, -0x1

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/r1;->getLocation(I)Landroidx/leanback/widget/q1;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget v0, v0, Landroidx/leanback/widget/C;->a:I

    .line 27
    .line 28
    invoke-virtual {p0, v3}, Landroidx/leanback/widget/s1;->b(Z)I

    .line 29
    .line 30
    .line 31
    move-result v6

    .line 32
    if-gez v6, :cond_3

    .line 33
    .line 34
    add-int/lit8 v0, v0, -0x1

    .line 35
    .line 36
    iget v6, p0, Landroidx/leanback/widget/E;->e:I

    .line 37
    .line 38
    sub-int/2addr v6, v4

    .line 39
    move v7, v1

    .line 40
    :goto_0
    if-ltz v6, :cond_5

    .line 41
    .line 42
    iget-boolean v7, p0, Landroidx/leanback/widget/E;->c:Z

    .line 43
    .line 44
    if-eqz v7, :cond_1

    .line 45
    .line 46
    invoke-virtual {p0, v6}, Landroidx/leanback/widget/s1;->c(I)I

    .line 47
    .line 48
    .line 49
    move-result v7

    .line 50
    goto :goto_1

    .line 51
    :cond_1
    invoke-virtual {p0, v6}, Landroidx/leanback/widget/s1;->d(I)I

    .line 52
    .line 53
    .line 54
    move-result v7

    .line 55
    :goto_1
    if-eq v7, v1, :cond_2

    .line 56
    .line 57
    goto :goto_3

    .line 58
    :cond_2
    add-int/lit8 v6, v6, -0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_3
    iget-boolean v7, p0, Landroidx/leanback/widget/E;->c:Z

    .line 62
    .line 63
    if-eqz v7, :cond_4

    .line 64
    .line 65
    invoke-virtual {p0, v4, v6, v2}, Landroidx/leanback/widget/s1;->findRowMax(ZI[I)I

    .line 66
    .line 67
    .line 68
    move-result v6

    .line 69
    :goto_2
    move v7, v6

    .line 70
    goto :goto_3

    .line 71
    :cond_4
    invoke-virtual {p0, v3, v6, v2}, Landroidx/leanback/widget/s1;->findRowMin(ZI[I)I

    .line 72
    .line 73
    .line 74
    move-result v6

    .line 75
    goto :goto_2

    .line 76
    :cond_5
    :goto_3
    iget-boolean v6, p0, Landroidx/leanback/widget/E;->c:Z

    .line 77
    .line 78
    if-eqz v6, :cond_6

    .line 79
    .line 80
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/s1;->c(I)I

    .line 81
    .line 82
    .line 83
    move-result v6

    .line 84
    if-lt v6, v7, :cond_8

    .line 85
    .line 86
    goto :goto_4

    .line 87
    :cond_6
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/s1;->d(I)I

    .line 88
    .line 89
    .line 90
    move-result v6

    .line 91
    if-gt v6, v7, :cond_8

    .line 92
    .line 93
    :goto_4
    add-int/lit8 v0, v0, -0x1

    .line 94
    .line 95
    if-gez v0, :cond_8

    .line 96
    .line 97
    iget v0, p0, Landroidx/leanback/widget/E;->e:I

    .line 98
    .line 99
    sub-int/2addr v0, v4

    .line 100
    iget-boolean v6, p0, Landroidx/leanback/widget/E;->c:Z

    .line 101
    .line 102
    if-eqz v6, :cond_7

    .line 103
    .line 104
    invoke-virtual {p0, v4, v2}, Landroidx/leanback/widget/E;->findRowMax(Z[I)I

    .line 105
    .line 106
    .line 107
    move-result v6

    .line 108
    :goto_5
    move v7, v6

    .line 109
    goto :goto_6

    .line 110
    :cond_7
    invoke-virtual {p0, v3, v2}, Landroidx/leanback/widget/E;->findRowMin(Z[I)I

    .line 111
    .line 112
    .line 113
    move-result v6

    .line 114
    goto :goto_5

    .line 115
    :cond_8
    :goto_6
    move v6, v4

    .line 116
    goto :goto_9

    .line 117
    :cond_9
    iget v0, p0, Landroidx/leanback/widget/E;->i:I

    .line 118
    .line 119
    const/4 v5, -0x1

    .line 120
    if-eq v0, v5, :cond_a

    .line 121
    .line 122
    move v5, v0

    .line 123
    goto :goto_7

    .line 124
    :cond_a
    move v5, v3

    .line 125
    :goto_7
    iget-object v0, p0, Landroidx/leanback/widget/r1;->j:Lp/k;

    .line 126
    .line 127
    invoke-virtual {v0}, Lp/k;->size()I

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    if-lez v0, :cond_b

    .line 132
    .line 133
    invoke-virtual {p0}, Landroidx/leanback/widget/r1;->getFirstIndex()I

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/r1;->getLocation(I)Landroidx/leanback/widget/q1;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    iget v0, v0, Landroidx/leanback/widget/C;->a:I

    .line 142
    .line 143
    iget v6, p0, Landroidx/leanback/widget/E;->e:I

    .line 144
    .line 145
    add-int/2addr v0, v6

    .line 146
    sub-int/2addr v0, v4

    .line 147
    goto :goto_8

    .line 148
    :cond_b
    move v0, v5

    .line 149
    :goto_8
    iget v6, p0, Landroidx/leanback/widget/E;->e:I

    .line 150
    .line 151
    rem-int/2addr v0, v6

    .line 152
    move v6, v3

    .line 153
    move v7, v6

    .line 154
    :goto_9
    move v8, v3

    .line 155
    :goto_a
    if-ltz v0, :cond_1d

    .line 156
    .line 157
    if-ltz v5, :cond_1e

    .line 158
    .line 159
    if-nez p2, :cond_c

    .line 160
    .line 161
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/E;->checkPrependOverLimit(I)Z

    .line 162
    .line 163
    .line 164
    move-result v9

    .line 165
    if-eqz v9, :cond_c

    .line 166
    .line 167
    goto/16 :goto_18

    .line 168
    .line 169
    :cond_c
    iget-boolean v8, p0, Landroidx/leanback/widget/E;->c:Z

    .line 170
    .line 171
    if-eqz v8, :cond_d

    .line 172
    .line 173
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/s1;->c(I)I

    .line 174
    .line 175
    .line 176
    move-result v8

    .line 177
    goto :goto_b

    .line 178
    :cond_d
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/s1;->d(I)I

    .line 179
    .line 180
    .line 181
    move-result v8

    .line 182
    :goto_b
    const/high16 v9, -0x80000000

    .line 183
    .line 184
    if-eq v8, v1, :cond_10

    .line 185
    .line 186
    if-ne v8, v9, :cond_e

    .line 187
    .line 188
    goto :goto_e

    .line 189
    :cond_e
    iget-boolean v9, p0, Landroidx/leanback/widget/E;->c:Z

    .line 190
    .line 191
    if-eqz v9, :cond_f

    .line 192
    .line 193
    iget v9, p0, Landroidx/leanback/widget/E;->d:I

    .line 194
    .line 195
    goto :goto_d

    .line 196
    :cond_f
    iget v9, p0, Landroidx/leanback/widget/E;->d:I

    .line 197
    .line 198
    :goto_c
    neg-int v9, v9

    .line 199
    :goto_d
    add-int/2addr v8, v9

    .line 200
    goto :goto_10

    .line 201
    :cond_10
    :goto_e
    iget v8, p0, Landroidx/leanback/widget/E;->e:I

    .line 202
    .line 203
    sub-int/2addr v8, v4

    .line 204
    if-ne v0, v8, :cond_13

    .line 205
    .line 206
    iget-boolean v8, p0, Landroidx/leanback/widget/E;->c:Z

    .line 207
    .line 208
    if-eqz v8, :cond_11

    .line 209
    .line 210
    invoke-virtual {p0, v3}, Landroidx/leanback/widget/s1;->c(I)I

    .line 211
    .line 212
    .line 213
    move-result v8

    .line 214
    goto :goto_f

    .line 215
    :cond_11
    invoke-virtual {p0, v3}, Landroidx/leanback/widget/s1;->d(I)I

    .line 216
    .line 217
    .line 218
    move-result v8

    .line 219
    :goto_f
    if-eq v8, v1, :cond_15

    .line 220
    .line 221
    if-eq v8, v9, :cond_15

    .line 222
    .line 223
    iget-boolean v9, p0, Landroidx/leanback/widget/E;->c:Z

    .line 224
    .line 225
    if-eqz v9, :cond_12

    .line 226
    .line 227
    iget v9, p0, Landroidx/leanback/widget/E;->d:I

    .line 228
    .line 229
    goto :goto_d

    .line 230
    :cond_12
    iget v9, p0, Landroidx/leanback/widget/E;->d:I

    .line 231
    .line 232
    goto :goto_c

    .line 233
    :cond_13
    iget-boolean v8, p0, Landroidx/leanback/widget/E;->c:Z

    .line 234
    .line 235
    if-eqz v8, :cond_14

    .line 236
    .line 237
    add-int/lit8 v8, v0, 0x1

    .line 238
    .line 239
    invoke-virtual {p0, v8}, Landroidx/leanback/widget/s1;->d(I)I

    .line 240
    .line 241
    .line 242
    move-result v8

    .line 243
    goto :goto_10

    .line 244
    :cond_14
    add-int/lit8 v8, v0, 0x1

    .line 245
    .line 246
    invoke-virtual {p0, v8}, Landroidx/leanback/widget/s1;->c(I)I

    .line 247
    .line 248
    .line 249
    move-result v8

    .line 250
    :cond_15
    :goto_10
    add-int/lit8 v9, v5, -0x1

    .line 251
    .line 252
    invoke-virtual {p0, v5, v0, v8}, Landroidx/leanback/widget/r1;->prependVisibleItemToRow(III)I

    .line 253
    .line 254
    .line 255
    move-result v5

    .line 256
    if-eqz v6, :cond_1b

    .line 257
    .line 258
    :goto_11
    iget-boolean v10, p0, Landroidx/leanback/widget/E;->c:Z

    .line 259
    .line 260
    if-eqz v10, :cond_16

    .line 261
    .line 262
    add-int v10, v8, v5

    .line 263
    .line 264
    if-ge v10, v7, :cond_1a

    .line 265
    .line 266
    goto :goto_12

    .line 267
    :cond_16
    sub-int v10, v8, v5

    .line 268
    .line 269
    if-le v10, v7, :cond_1a

    .line 270
    .line 271
    :goto_12
    if-ltz v9, :cond_19

    .line 272
    .line 273
    if-nez p2, :cond_17

    .line 274
    .line 275
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/E;->checkPrependOverLimit(I)Z

    .line 276
    .line 277
    .line 278
    move-result v10

    .line 279
    if-eqz v10, :cond_17

    .line 280
    .line 281
    goto :goto_14

    .line 282
    :cond_17
    iget-boolean v10, p0, Landroidx/leanback/widget/E;->c:Z

    .line 283
    .line 284
    if-eqz v10, :cond_18

    .line 285
    .line 286
    iget v10, p0, Landroidx/leanback/widget/E;->d:I

    .line 287
    .line 288
    add-int/2addr v5, v10

    .line 289
    goto :goto_13

    .line 290
    :cond_18
    neg-int v5, v5

    .line 291
    iget v10, p0, Landroidx/leanback/widget/E;->d:I

    .line 292
    .line 293
    sub-int/2addr v5, v10

    .line 294
    :goto_13
    add-int/2addr v8, v5

    .line 295
    add-int/lit8 v5, v9, -0x1

    .line 296
    .line 297
    invoke-virtual {p0, v9, v0, v8}, Landroidx/leanback/widget/r1;->prependVisibleItemToRow(III)I

    .line 298
    .line 299
    .line 300
    move-result v9

    .line 301
    move v11, v9

    .line 302
    move v9, v5

    .line 303
    move v5, v11

    .line 304
    goto :goto_11

    .line 305
    :cond_19
    :goto_14
    return v4

    .line 306
    :cond_1a
    :goto_15
    move v5, v9

    .line 307
    goto :goto_17

    .line 308
    :cond_1b
    iget-boolean v5, p0, Landroidx/leanback/widget/E;->c:Z

    .line 309
    .line 310
    if-eqz v5, :cond_1c

    .line 311
    .line 312
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/s1;->c(I)I

    .line 313
    .line 314
    .line 315
    move-result v5

    .line 316
    goto :goto_16

    .line 317
    :cond_1c
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/s1;->d(I)I

    .line 318
    .line 319
    .line 320
    move-result v5

    .line 321
    :goto_16
    move v6, v4

    .line 322
    move v7, v5

    .line 323
    goto :goto_15

    .line 324
    :goto_17
    add-int/lit8 v0, v0, -0x1

    .line 325
    .line 326
    move v8, v4

    .line 327
    goto/16 :goto_a

    .line 328
    .line 329
    :cond_1d
    if-eqz p2, :cond_1f

    .line 330
    .line 331
    :cond_1e
    :goto_18
    return v8

    .line 332
    :cond_1f
    iget-boolean v0, p0, Landroidx/leanback/widget/E;->c:Z

    .line 333
    .line 334
    if-eqz v0, :cond_20

    .line 335
    .line 336
    invoke-virtual {p0, v4, v2}, Landroidx/leanback/widget/E;->findRowMax(Z[I)I

    .line 337
    .line 338
    .line 339
    move-result v0

    .line 340
    :goto_19
    move v7, v0

    .line 341
    goto :goto_1a

    .line 342
    :cond_20
    invoke-virtual {p0, v3, v2}, Landroidx/leanback/widget/E;->findRowMin(Z[I)I

    .line 343
    .line 344
    .line 345
    move-result v0

    .line 346
    goto :goto_19

    .line 347
    :goto_1a
    iget v0, p0, Landroidx/leanback/widget/E;->e:I

    .line 348
    .line 349
    sub-int/2addr v0, v4

    .line 350
    goto/16 :goto_a
.end method
