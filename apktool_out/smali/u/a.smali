.class public final Lu/a;
.super Lu/k;
.source "SourceFile"


# instance fields
.field public s0:I

.field public t0:Z

.field public u0:I

.field public v0:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lu/k;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lu/a;->s0:I

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Lu/a;->t0:Z

    .line 9
    .line 10
    iput v0, p0, Lu/a;->u0:I

    .line 11
    .line 12
    iput-boolean v0, p0, Lu/a;->v0:Z

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public addToSolver(Lr/f;Z)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lu/e;->Q:[Lu/d;

    .line 6
    .line 7
    iget-object v3, v0, Lu/e;->I:Lu/d;

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    aput-object v3, v2, v4

    .line 11
    .line 12
    iget-object v5, v0, Lu/e;->J:Lu/d;

    .line 13
    .line 14
    const/4 v6, 0x2

    .line 15
    aput-object v5, v2, v6

    .line 16
    .line 17
    iget-object v7, v0, Lu/e;->K:Lu/d;

    .line 18
    .line 19
    const/4 v8, 0x1

    .line 20
    aput-object v7, v2, v8

    .line 21
    .line 22
    iget-object v9, v0, Lu/e;->L:Lu/d;

    .line 23
    .line 24
    const/4 v10, 0x3

    .line 25
    aput-object v9, v2, v10

    .line 26
    .line 27
    move v11, v4

    .line 28
    :goto_0
    array-length v12, v2

    .line 29
    if-ge v11, v12, :cond_0

    .line 30
    .line 31
    aget-object v12, v2, v11

    .line 32
    .line 33
    invoke-virtual {v1, v12}, Lr/f;->createObjectVariable(Ljava/lang/Object;)Lr/m;

    .line 34
    .line 35
    .line 36
    move-result-object v13

    .line 37
    iput-object v13, v12, Lu/d;->i:Lr/m;

    .line 38
    .line 39
    add-int/lit8 v11, v11, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    iget v11, v0, Lu/a;->s0:I

    .line 43
    .line 44
    if-ltz v11, :cond_1d

    .line 45
    .line 46
    const/4 v12, 0x4

    .line 47
    if-ge v11, v12, :cond_1d

    .line 48
    .line 49
    aget-object v2, v2, v11

    .line 50
    .line 51
    iget-boolean v11, v0, Lu/a;->v0:Z

    .line 52
    .line 53
    if-nez v11, :cond_1

    .line 54
    .line 55
    invoke-virtual {v0}, Lu/a;->allSolved()Z

    .line 56
    .line 57
    .line 58
    :cond_1
    iget-boolean v11, v0, Lu/a;->v0:Z

    .line 59
    .line 60
    if-eqz v11, :cond_5

    .line 61
    .line 62
    iput-boolean v4, v0, Lu/a;->v0:Z

    .line 63
    .line 64
    iget v2, v0, Lu/a;->s0:I

    .line 65
    .line 66
    if-eqz v2, :cond_4

    .line 67
    .line 68
    if-ne v2, v8, :cond_2

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_2
    if-eq v2, v6, :cond_3

    .line 72
    .line 73
    if-ne v2, v10, :cond_1d

    .line 74
    .line 75
    :cond_3
    iget-object v2, v5, Lu/d;->i:Lr/m;

    .line 76
    .line 77
    iget v3, v0, Lu/e;->a0:I

    .line 78
    .line 79
    invoke-virtual {v1, v2, v3}, Lr/f;->addEquality(Lr/m;I)V

    .line 80
    .line 81
    .line 82
    iget-object v2, v9, Lu/d;->i:Lr/m;

    .line 83
    .line 84
    iget v3, v0, Lu/e;->a0:I

    .line 85
    .line 86
    invoke-virtual {v1, v2, v3}, Lr/f;->addEquality(Lr/m;I)V

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    :cond_4
    :goto_1
    iget-object v2, v3, Lu/d;->i:Lr/m;

    .line 91
    .line 92
    iget v3, v0, Lu/e;->Z:I

    .line 93
    .line 94
    invoke-virtual {v1, v2, v3}, Lr/f;->addEquality(Lr/m;I)V

    .line 95
    .line 96
    .line 97
    iget-object v2, v7, Lu/d;->i:Lr/m;

    .line 98
    .line 99
    iget v3, v0, Lu/e;->Z:I

    .line 100
    .line 101
    invoke-virtual {v1, v2, v3}, Lr/f;->addEquality(Lr/m;I)V

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :cond_5
    move v11, v4

    .line 106
    :goto_2
    iget v13, v0, Lu/k;->r0:I

    .line 107
    .line 108
    if-ge v11, v13, :cond_b

    .line 109
    .line 110
    iget-object v13, v0, Lu/k;->q0:[Lu/e;

    .line 111
    .line 112
    aget-object v13, v13, v11

    .line 113
    .line 114
    iget-boolean v14, v0, Lu/a;->t0:Z

    .line 115
    .line 116
    if-nez v14, :cond_6

    .line 117
    .line 118
    invoke-virtual {v13}, Lu/e;->allowedInBarrier()Z

    .line 119
    .line 120
    .line 121
    move-result v14

    .line 122
    if-nez v14, :cond_6

    .line 123
    .line 124
    goto :goto_4

    .line 125
    :cond_6
    iget v14, v0, Lu/a;->s0:I

    .line 126
    .line 127
    sget-object v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->f:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 128
    .line 129
    if-eqz v14, :cond_7

    .line 130
    .line 131
    if-ne v14, v8, :cond_8

    .line 132
    .line 133
    :cond_7
    invoke-virtual {v13}, Lu/e;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 134
    .line 135
    .line 136
    move-result-object v14

    .line 137
    if-ne v14, v15, :cond_8

    .line 138
    .line 139
    iget-object v14, v13, Lu/e;->I:Lu/d;

    .line 140
    .line 141
    iget-object v14, v14, Lu/d;->f:Lu/d;

    .line 142
    .line 143
    if-eqz v14, :cond_8

    .line 144
    .line 145
    iget-object v14, v13, Lu/e;->K:Lu/d;

    .line 146
    .line 147
    iget-object v14, v14, Lu/d;->f:Lu/d;

    .line 148
    .line 149
    if-eqz v14, :cond_8

    .line 150
    .line 151
    :goto_3
    move v11, v8

    .line 152
    goto :goto_5

    .line 153
    :cond_8
    iget v14, v0, Lu/a;->s0:I

    .line 154
    .line 155
    if-eq v14, v6, :cond_9

    .line 156
    .line 157
    if-ne v14, v10, :cond_a

    .line 158
    .line 159
    :cond_9
    invoke-virtual {v13}, Lu/e;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 160
    .line 161
    .line 162
    move-result-object v14

    .line 163
    if-ne v14, v15, :cond_a

    .line 164
    .line 165
    iget-object v14, v13, Lu/e;->J:Lu/d;

    .line 166
    .line 167
    iget-object v14, v14, Lu/d;->f:Lu/d;

    .line 168
    .line 169
    if-eqz v14, :cond_a

    .line 170
    .line 171
    iget-object v13, v13, Lu/e;->L:Lu/d;

    .line 172
    .line 173
    iget-object v13, v13, Lu/d;->f:Lu/d;

    .line 174
    .line 175
    if-eqz v13, :cond_a

    .line 176
    .line 177
    goto :goto_3

    .line 178
    :cond_a
    :goto_4
    add-int/lit8 v11, v11, 0x1

    .line 179
    .line 180
    goto :goto_2

    .line 181
    :cond_b
    move v11, v4

    .line 182
    :goto_5
    invoke-virtual {v3}, Lu/d;->hasCenteredDependents()Z

    .line 183
    .line 184
    .line 185
    move-result v13

    .line 186
    if-nez v13, :cond_d

    .line 187
    .line 188
    invoke-virtual {v7}, Lu/d;->hasCenteredDependents()Z

    .line 189
    .line 190
    .line 191
    move-result v13

    .line 192
    if-eqz v13, :cond_c

    .line 193
    .line 194
    goto :goto_6

    .line 195
    :cond_c
    move v13, v4

    .line 196
    goto :goto_7

    .line 197
    :cond_d
    :goto_6
    move v13, v8

    .line 198
    :goto_7
    invoke-virtual {v5}, Lu/d;->hasCenteredDependents()Z

    .line 199
    .line 200
    .line 201
    move-result v14

    .line 202
    if-nez v14, :cond_f

    .line 203
    .line 204
    invoke-virtual {v9}, Lu/d;->hasCenteredDependents()Z

    .line 205
    .line 206
    .line 207
    move-result v14

    .line 208
    if-eqz v14, :cond_e

    .line 209
    .line 210
    goto :goto_8

    .line 211
    :cond_e
    move v14, v4

    .line 212
    goto :goto_9

    .line 213
    :cond_f
    :goto_8
    move v14, v8

    .line 214
    :goto_9
    if-nez v11, :cond_14

    .line 215
    .line 216
    iget v15, v0, Lu/a;->s0:I

    .line 217
    .line 218
    if-nez v15, :cond_10

    .line 219
    .line 220
    if-nez v13, :cond_13

    .line 221
    .line 222
    :cond_10
    if-ne v15, v6, :cond_11

    .line 223
    .line 224
    if-nez v14, :cond_13

    .line 225
    .line 226
    :cond_11
    if-ne v15, v8, :cond_12

    .line 227
    .line 228
    if-nez v13, :cond_13

    .line 229
    .line 230
    :cond_12
    if-ne v15, v10, :cond_14

    .line 231
    .line 232
    if-eqz v14, :cond_14

    .line 233
    .line 234
    :cond_13
    const/4 v13, 0x5

    .line 235
    goto :goto_a

    .line 236
    :cond_14
    move v13, v12

    .line 237
    :goto_a
    move v14, v4

    .line 238
    :goto_b
    iget v15, v0, Lu/k;->r0:I

    .line 239
    .line 240
    if-ge v14, v15, :cond_19

    .line 241
    .line 242
    iget-object v15, v0, Lu/k;->q0:[Lu/e;

    .line 243
    .line 244
    aget-object v15, v15, v14

    .line 245
    .line 246
    iget-boolean v10, v0, Lu/a;->t0:Z

    .line 247
    .line 248
    if-nez v10, :cond_15

    .line 249
    .line 250
    invoke-virtual {v15}, Lu/e;->allowedInBarrier()Z

    .line 251
    .line 252
    .line 253
    move-result v10

    .line 254
    if-nez v10, :cond_15

    .line 255
    .line 256
    goto :goto_f

    .line 257
    :cond_15
    iget-object v10, v15, Lu/e;->Q:[Lu/d;

    .line 258
    .line 259
    iget v8, v0, Lu/a;->s0:I

    .line 260
    .line 261
    aget-object v8, v10, v8

    .line 262
    .line 263
    invoke-virtual {v1, v8}, Lr/f;->createObjectVariable(Ljava/lang/Object;)Lr/m;

    .line 264
    .line 265
    .line 266
    move-result-object v8

    .line 267
    iget v10, v0, Lu/a;->s0:I

    .line 268
    .line 269
    iget-object v15, v15, Lu/e;->Q:[Lu/d;

    .line 270
    .line 271
    aget-object v15, v15, v10

    .line 272
    .line 273
    iput-object v8, v15, Lu/d;->i:Lr/m;

    .line 274
    .line 275
    iget-object v12, v15, Lu/d;->f:Lu/d;

    .line 276
    .line 277
    if-eqz v12, :cond_16

    .line 278
    .line 279
    iget-object v12, v12, Lu/d;->d:Lu/e;

    .line 280
    .line 281
    if-ne v12, v0, :cond_16

    .line 282
    .line 283
    iget v12, v15, Lu/d;->g:I

    .line 284
    .line 285
    goto :goto_c

    .line 286
    :cond_16
    move v12, v4

    .line 287
    :goto_c
    if-eqz v10, :cond_18

    .line 288
    .line 289
    if-ne v10, v6, :cond_17

    .line 290
    .line 291
    goto :goto_d

    .line 292
    :cond_17
    iget-object v10, v2, Lu/d;->i:Lr/m;

    .line 293
    .line 294
    iget v15, v0, Lu/a;->u0:I

    .line 295
    .line 296
    add-int/2addr v15, v12

    .line 297
    invoke-virtual {v1, v10, v8, v15, v11}, Lr/f;->addGreaterBarrier(Lr/m;Lr/m;IZ)V

    .line 298
    .line 299
    .line 300
    goto :goto_e

    .line 301
    :cond_18
    :goto_d
    iget-object v10, v2, Lu/d;->i:Lr/m;

    .line 302
    .line 303
    iget v15, v0, Lu/a;->u0:I

    .line 304
    .line 305
    sub-int/2addr v15, v12

    .line 306
    invoke-virtual {v1, v10, v8, v15, v11}, Lr/f;->addLowerBarrier(Lr/m;Lr/m;IZ)V

    .line 307
    .line 308
    .line 309
    :goto_e
    iget-object v10, v2, Lu/d;->i:Lr/m;

    .line 310
    .line 311
    iget v15, v0, Lu/a;->u0:I

    .line 312
    .line 313
    add-int/2addr v15, v12

    .line 314
    invoke-virtual {v1, v10, v8, v15, v13}, Lr/f;->addEquality(Lr/m;Lr/m;II)Lr/c;

    .line 315
    .line 316
    .line 317
    :goto_f
    add-int/lit8 v14, v14, 0x1

    .line 318
    .line 319
    const/4 v8, 0x1

    .line 320
    const/4 v10, 0x3

    .line 321
    const/4 v12, 0x4

    .line 322
    goto :goto_b

    .line 323
    :cond_19
    iget v2, v0, Lu/a;->s0:I

    .line 324
    .line 325
    const/16 v8, 0x8

    .line 326
    .line 327
    if-nez v2, :cond_1a

    .line 328
    .line 329
    iget-object v2, v7, Lu/d;->i:Lr/m;

    .line 330
    .line 331
    iget-object v5, v3, Lu/d;->i:Lr/m;

    .line 332
    .line 333
    invoke-virtual {v1, v2, v5, v4, v8}, Lr/f;->addEquality(Lr/m;Lr/m;II)Lr/c;

    .line 334
    .line 335
    .line 336
    iget-object v2, v3, Lu/d;->i:Lr/m;

    .line 337
    .line 338
    iget-object v5, v0, Lu/e;->U:Lu/e;

    .line 339
    .line 340
    iget-object v5, v5, Lu/e;->K:Lu/d;

    .line 341
    .line 342
    iget-object v5, v5, Lu/d;->i:Lr/m;

    .line 343
    .line 344
    const/4 v6, 0x4

    .line 345
    invoke-virtual {v1, v2, v5, v4, v6}, Lr/f;->addEquality(Lr/m;Lr/m;II)Lr/c;

    .line 346
    .line 347
    .line 348
    iget-object v2, v3, Lu/d;->i:Lr/m;

    .line 349
    .line 350
    iget-object v3, v0, Lu/e;->U:Lu/e;

    .line 351
    .line 352
    iget-object v3, v3, Lu/e;->I:Lu/d;

    .line 353
    .line 354
    iget-object v3, v3, Lu/d;->i:Lr/m;

    .line 355
    .line 356
    invoke-virtual {v1, v2, v3, v4, v4}, Lr/f;->addEquality(Lr/m;Lr/m;II)Lr/c;

    .line 357
    .line 358
    .line 359
    return-void

    .line 360
    :cond_1a
    const/4 v10, 0x1

    .line 361
    if-ne v2, v10, :cond_1b

    .line 362
    .line 363
    iget-object v2, v3, Lu/d;->i:Lr/m;

    .line 364
    .line 365
    iget-object v5, v7, Lu/d;->i:Lr/m;

    .line 366
    .line 367
    invoke-virtual {v1, v2, v5, v4, v8}, Lr/f;->addEquality(Lr/m;Lr/m;II)Lr/c;

    .line 368
    .line 369
    .line 370
    iget-object v2, v3, Lu/d;->i:Lr/m;

    .line 371
    .line 372
    iget-object v5, v0, Lu/e;->U:Lu/e;

    .line 373
    .line 374
    iget-object v5, v5, Lu/e;->I:Lu/d;

    .line 375
    .line 376
    iget-object v5, v5, Lu/d;->i:Lr/m;

    .line 377
    .line 378
    const/4 v6, 0x4

    .line 379
    invoke-virtual {v1, v2, v5, v4, v6}, Lr/f;->addEquality(Lr/m;Lr/m;II)Lr/c;

    .line 380
    .line 381
    .line 382
    iget-object v2, v3, Lu/d;->i:Lr/m;

    .line 383
    .line 384
    iget-object v3, v0, Lu/e;->U:Lu/e;

    .line 385
    .line 386
    iget-object v3, v3, Lu/e;->K:Lu/d;

    .line 387
    .line 388
    iget-object v3, v3, Lu/d;->i:Lr/m;

    .line 389
    .line 390
    invoke-virtual {v1, v2, v3, v4, v4}, Lr/f;->addEquality(Lr/m;Lr/m;II)Lr/c;

    .line 391
    .line 392
    .line 393
    return-void

    .line 394
    :cond_1b
    if-ne v2, v6, :cond_1c

    .line 395
    .line 396
    iget-object v2, v9, Lu/d;->i:Lr/m;

    .line 397
    .line 398
    iget-object v3, v5, Lu/d;->i:Lr/m;

    .line 399
    .line 400
    invoke-virtual {v1, v2, v3, v4, v8}, Lr/f;->addEquality(Lr/m;Lr/m;II)Lr/c;

    .line 401
    .line 402
    .line 403
    iget-object v2, v5, Lu/d;->i:Lr/m;

    .line 404
    .line 405
    iget-object v3, v0, Lu/e;->U:Lu/e;

    .line 406
    .line 407
    iget-object v3, v3, Lu/e;->L:Lu/d;

    .line 408
    .line 409
    iget-object v3, v3, Lu/d;->i:Lr/m;

    .line 410
    .line 411
    const/4 v6, 0x4

    .line 412
    invoke-virtual {v1, v2, v3, v4, v6}, Lr/f;->addEquality(Lr/m;Lr/m;II)Lr/c;

    .line 413
    .line 414
    .line 415
    iget-object v2, v5, Lu/d;->i:Lr/m;

    .line 416
    .line 417
    iget-object v3, v0, Lu/e;->U:Lu/e;

    .line 418
    .line 419
    iget-object v3, v3, Lu/e;->J:Lu/d;

    .line 420
    .line 421
    iget-object v3, v3, Lu/d;->i:Lr/m;

    .line 422
    .line 423
    invoke-virtual {v1, v2, v3, v4, v4}, Lr/f;->addEquality(Lr/m;Lr/m;II)Lr/c;

    .line 424
    .line 425
    .line 426
    return-void

    .line 427
    :cond_1c
    const/4 v3, 0x3

    .line 428
    if-ne v2, v3, :cond_1d

    .line 429
    .line 430
    iget-object v2, v5, Lu/d;->i:Lr/m;

    .line 431
    .line 432
    iget-object v3, v9, Lu/d;->i:Lr/m;

    .line 433
    .line 434
    invoke-virtual {v1, v2, v3, v4, v8}, Lr/f;->addEquality(Lr/m;Lr/m;II)Lr/c;

    .line 435
    .line 436
    .line 437
    iget-object v2, v5, Lu/d;->i:Lr/m;

    .line 438
    .line 439
    iget-object v3, v0, Lu/e;->U:Lu/e;

    .line 440
    .line 441
    iget-object v3, v3, Lu/e;->J:Lu/d;

    .line 442
    .line 443
    iget-object v3, v3, Lu/d;->i:Lr/m;

    .line 444
    .line 445
    const/4 v6, 0x4

    .line 446
    invoke-virtual {v1, v2, v3, v4, v6}, Lr/f;->addEquality(Lr/m;Lr/m;II)Lr/c;

    .line 447
    .line 448
    .line 449
    iget-object v2, v5, Lu/d;->i:Lr/m;

    .line 450
    .line 451
    iget-object v3, v0, Lu/e;->U:Lu/e;

    .line 452
    .line 453
    iget-object v3, v3, Lu/e;->L:Lu/d;

    .line 454
    .line 455
    iget-object v3, v3, Lu/d;->i:Lr/m;

    .line 456
    .line 457
    invoke-virtual {v1, v2, v3, v4, v4}, Lr/f;->addEquality(Lr/m;Lr/m;II)Lr/c;

    .line 458
    .line 459
    .line 460
    :cond_1d
    return-void
.end method

.method public allSolved()Z
    .locals 12

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    move v3, v0

    .line 4
    move v2, v1

    .line 5
    :goto_0
    iget v4, p0, Lu/k;->r0:I

    .line 6
    .line 7
    const/4 v5, 0x3

    .line 8
    const/4 v6, 0x2

    .line 9
    if-ge v2, v4, :cond_5

    .line 10
    .line 11
    iget-object v4, p0, Lu/k;->q0:[Lu/e;

    .line 12
    .line 13
    aget-object v4, v4, v2

    .line 14
    .line 15
    iget-boolean v7, p0, Lu/a;->t0:Z

    .line 16
    .line 17
    if-nez v7, :cond_0

    .line 18
    .line 19
    invoke-virtual {v4}, Lu/e;->allowedInBarrier()Z

    .line 20
    .line 21
    .line 22
    move-result v7

    .line 23
    if-nez v7, :cond_0

    .line 24
    .line 25
    goto :goto_2

    .line 26
    :cond_0
    iget v7, p0, Lu/a;->s0:I

    .line 27
    .line 28
    if-eqz v7, :cond_1

    .line 29
    .line 30
    if-ne v7, v0, :cond_2

    .line 31
    .line 32
    :cond_1
    invoke-virtual {v4}, Lu/e;->isResolvedHorizontally()Z

    .line 33
    .line 34
    .line 35
    move-result v7

    .line 36
    if-nez v7, :cond_2

    .line 37
    .line 38
    :goto_1
    move v3, v1

    .line 39
    goto :goto_2

    .line 40
    :cond_2
    iget v7, p0, Lu/a;->s0:I

    .line 41
    .line 42
    if-eq v7, v6, :cond_3

    .line 43
    .line 44
    if-ne v7, v5, :cond_4

    .line 45
    .line 46
    :cond_3
    invoke-virtual {v4}, Lu/e;->isResolvedVertically()Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-nez v4, :cond_4

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_5
    if-eqz v3, :cond_13

    .line 57
    .line 58
    if-lez v4, :cond_13

    .line 59
    .line 60
    move v2, v1

    .line 61
    move v3, v2

    .line 62
    :goto_3
    iget v4, p0, Lu/k;->r0:I

    .line 63
    .line 64
    if-ge v1, v4, :cond_10

    .line 65
    .line 66
    iget-object v4, p0, Lu/k;->q0:[Lu/e;

    .line 67
    .line 68
    aget-object v4, v4, v1

    .line 69
    .line 70
    iget-boolean v7, p0, Lu/a;->t0:Z

    .line 71
    .line 72
    if-nez v7, :cond_6

    .line 73
    .line 74
    invoke-virtual {v4}, Lu/e;->allowedInBarrier()Z

    .line 75
    .line 76
    .line 77
    move-result v7

    .line 78
    if-nez v7, :cond_6

    .line 79
    .line 80
    goto/16 :goto_5

    .line 81
    .line 82
    :cond_6
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->j:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 83
    .line 84
    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->e:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 85
    .line 86
    sget-object v9, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 87
    .line 88
    sget-object v10, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->b:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 89
    .line 90
    if-nez v3, :cond_b

    .line 91
    .line 92
    iget v3, p0, Lu/a;->s0:I

    .line 93
    .line 94
    if-nez v3, :cond_7

    .line 95
    .line 96
    invoke-virtual {v4, v10}, Lu/e;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lu/d;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    invoke-virtual {v2}, Lu/d;->getFinalValue()I

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    goto :goto_4

    .line 105
    :cond_7
    if-ne v3, v0, :cond_8

    .line 106
    .line 107
    invoke-virtual {v4, v9}, Lu/e;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lu/d;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    invoke-virtual {v2}, Lu/d;->getFinalValue()I

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    goto :goto_4

    .line 116
    :cond_8
    if-ne v3, v6, :cond_9

    .line 117
    .line 118
    invoke-virtual {v4, v8}, Lu/e;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lu/d;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    invoke-virtual {v2}, Lu/d;->getFinalValue()I

    .line 123
    .line 124
    .line 125
    move-result v2

    .line 126
    goto :goto_4

    .line 127
    :cond_9
    if-ne v3, v5, :cond_a

    .line 128
    .line 129
    invoke-virtual {v4, v7}, Lu/e;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lu/d;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    invoke-virtual {v2}, Lu/d;->getFinalValue()I

    .line 134
    .line 135
    .line 136
    move-result v2

    .line 137
    :cond_a
    :goto_4
    move v3, v0

    .line 138
    :cond_b
    iget v11, p0, Lu/a;->s0:I

    .line 139
    .line 140
    if-nez v11, :cond_c

    .line 141
    .line 142
    invoke-virtual {v4, v10}, Lu/e;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lu/d;

    .line 143
    .line 144
    .line 145
    move-result-object v4

    .line 146
    invoke-virtual {v4}, Lu/d;->getFinalValue()I

    .line 147
    .line 148
    .line 149
    move-result v4

    .line 150
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    .line 151
    .line 152
    .line 153
    move-result v2

    .line 154
    goto :goto_5

    .line 155
    :cond_c
    if-ne v11, v0, :cond_d

    .line 156
    .line 157
    invoke-virtual {v4, v9}, Lu/e;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lu/d;

    .line 158
    .line 159
    .line 160
    move-result-object v4

    .line 161
    invoke-virtual {v4}, Lu/d;->getFinalValue()I

    .line 162
    .line 163
    .line 164
    move-result v4

    .line 165
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    .line 166
    .line 167
    .line 168
    move-result v2

    .line 169
    goto :goto_5

    .line 170
    :cond_d
    if-ne v11, v6, :cond_e

    .line 171
    .line 172
    invoke-virtual {v4, v8}, Lu/e;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lu/d;

    .line 173
    .line 174
    .line 175
    move-result-object v4

    .line 176
    invoke-virtual {v4}, Lu/d;->getFinalValue()I

    .line 177
    .line 178
    .line 179
    move-result v4

    .line 180
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    .line 181
    .line 182
    .line 183
    move-result v2

    .line 184
    goto :goto_5

    .line 185
    :cond_e
    if-ne v11, v5, :cond_f

    .line 186
    .line 187
    invoke-virtual {v4, v7}, Lu/e;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lu/d;

    .line 188
    .line 189
    .line 190
    move-result-object v4

    .line 191
    invoke-virtual {v4}, Lu/d;->getFinalValue()I

    .line 192
    .line 193
    .line 194
    move-result v4

    .line 195
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    .line 196
    .line 197
    .line 198
    move-result v2

    .line 199
    :cond_f
    :goto_5
    add-int/lit8 v1, v1, 0x1

    .line 200
    .line 201
    goto/16 :goto_3

    .line 202
    .line 203
    :cond_10
    iget v1, p0, Lu/a;->u0:I

    .line 204
    .line 205
    add-int/2addr v2, v1

    .line 206
    iget v1, p0, Lu/a;->s0:I

    .line 207
    .line 208
    if-eqz v1, :cond_12

    .line 209
    .line 210
    if-ne v1, v0, :cond_11

    .line 211
    .line 212
    goto :goto_6

    .line 213
    :cond_11
    invoke-virtual {p0, v2, v2}, Lu/e;->setFinalVertical(II)V

    .line 214
    .line 215
    .line 216
    goto :goto_7

    .line 217
    :cond_12
    :goto_6
    invoke-virtual {p0, v2, v2}, Lu/e;->setFinalHorizontal(II)V

    .line 218
    .line 219
    .line 220
    :goto_7
    iput-boolean v0, p0, Lu/a;->v0:Z

    .line 221
    .line 222
    return v0

    .line 223
    :cond_13
    return v1
.end method

.method public allowedInBarrier()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public getAllowsGoneWidget()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lu/a;->t0:Z

    .line 2
    .line 3
    return v0
.end method

.method public getBarrierType()I
    .locals 1

    .line 1
    iget v0, p0, Lu/a;->s0:I

    .line 2
    .line 3
    return v0
.end method

.method public getMargin()I
    .locals 1

    .line 1
    iget v0, p0, Lu/a;->u0:I

    .line 2
    .line 3
    return v0
.end method

.method public getOrientation()I
    .locals 3

    .line 1
    iget v0, p0, Lu/a;->s0:I

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_1

    .line 7
    .line 8
    const/4 v2, 0x2

    .line 9
    if-eq v0, v2, :cond_0

    .line 10
    .line 11
    const/4 v2, 0x3

    .line 12
    if-eq v0, v2, :cond_0

    .line 13
    .line 14
    const/4 v0, -0x1

    .line 15
    return v0

    .line 16
    :cond_0
    return v1

    .line 17
    :cond_1
    const/4 v0, 0x0

    .line 18
    return v0
.end method

.method public isResolvedHorizontally()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lu/a;->v0:Z

    .line 2
    .line 3
    return v0
.end method

.method public isResolvedVertically()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lu/a;->v0:Z

    .line 2
    .line 3
    return v0
.end method

.method public markWidgets()V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget v2, p0, Lu/k;->r0:I

    .line 4
    .line 5
    if-ge v1, v2, :cond_5

    .line 6
    .line 7
    iget-object v2, p0, Lu/k;->q0:[Lu/e;

    .line 8
    .line 9
    aget-object v2, v2, v1

    .line 10
    .line 11
    iget-boolean v3, p0, Lu/a;->t0:Z

    .line 12
    .line 13
    if-nez v3, :cond_0

    .line 14
    .line 15
    invoke-virtual {v2}, Lu/e;->allowedInBarrier()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-nez v3, :cond_0

    .line 20
    .line 21
    goto :goto_2

    .line 22
    :cond_0
    iget v3, p0, Lu/a;->s0:I

    .line 23
    .line 24
    const/4 v4, 0x1

    .line 25
    if-eqz v3, :cond_3

    .line 26
    .line 27
    if-ne v3, v4, :cond_1

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    const/4 v5, 0x2

    .line 31
    if-eq v3, v5, :cond_2

    .line 32
    .line 33
    const/4 v5, 0x3

    .line 34
    if-ne v3, v5, :cond_4

    .line 35
    .line 36
    :cond_2
    invoke-virtual {v2, v4, v4}, Lu/e;->setInBarrier(IZ)V

    .line 37
    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_3
    :goto_1
    invoke-virtual {v2, v0, v4}, Lu/e;->setInBarrier(IZ)V

    .line 41
    .line 42
    .line 43
    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_5
    return-void
.end method

.method public setAllowsGoneWidget(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lu/a;->t0:Z

    .line 2
    .line 3
    return-void
.end method

.method public setBarrierType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lu/a;->s0:I

    .line 2
    .line 3
    return-void
.end method

.method public setMargin(I)V
    .locals 0

    .line 1
    iput p1, p0, Lu/a;->u0:I

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "[Barrier] "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lu/e;->getDebugName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, " {"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const/4 v1, 0x0

    .line 25
    :goto_0
    iget v2, p0, Lu/k;->r0:I

    .line 26
    .line 27
    if-ge v1, v2, :cond_1

    .line 28
    .line 29
    iget-object v2, p0, Lu/k;->q0:[Lu/e;

    .line 30
    .line 31
    aget-object v2, v2, v1

    .line 32
    .line 33
    if-lez v1, :cond_0

    .line 34
    .line 35
    const-string v3, ", "

    .line 36
    .line 37
    invoke-static {v0, v3}, LA/i;->B(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    :cond_0
    invoke-static {v0}, Lb/c;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v2}, Lu/e;->getDebugName()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    add-int/lit8 v1, v1, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    const-string v1, "}"

    .line 60
    .line 61
    invoke-static {v0, v1}, LA/i;->B(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    return-object v0
.end method
