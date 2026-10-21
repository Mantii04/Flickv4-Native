.class public abstract Lu/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static applyChainConstraints(Lu/f;Lr/f;Ljava/util/ArrayList;I)V
    .locals 42
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu/f;",
            "Lr/f;",
            "Ljava/util/ArrayList<",
            "Lu/e;",
            ">;I)V"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v10, p2

    .line 6
    .line 7
    move/from16 v11, p3

    .line 8
    .line 9
    if-nez v11, :cond_0

    .line 10
    .line 11
    iget v2, v0, Lu/f;->z0:I

    .line 12
    .line 13
    iget-object v3, v0, Lu/f;->C0:[Lu/c;

    .line 14
    .line 15
    const/16 v16, 0x0

    .line 16
    .line 17
    :goto_0
    move v14, v2

    .line 18
    move-object v15, v3

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    iget v2, v0, Lu/f;->A0:I

    .line 21
    .line 22
    iget-object v3, v0, Lu/f;->B0:[Lu/c;

    .line 23
    .line 24
    const/16 v16, 0x2

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :goto_1
    const/4 v2, 0x0

    .line 28
    :goto_2
    if-ge v2, v14, :cond_52

    .line 29
    .line 30
    aget-object v3, v15, v2

    .line 31
    .line 32
    invoke-virtual {v3}, Lu/c;->define()V

    .line 33
    .line 34
    .line 35
    iget-object v4, v3, Lu/c;->a:Lu/e;

    .line 36
    .line 37
    if-eqz v10, :cond_2

    .line 38
    .line 39
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    if-eqz v5, :cond_1

    .line 44
    .line 45
    goto :goto_3

    .line 46
    :cond_1
    move/from16 v19, v2

    .line 47
    .line 48
    move/from16 v31, v14

    .line 49
    .line 50
    move-object/from16 v32, v15

    .line 51
    .line 52
    const/16 v18, 0x2

    .line 53
    .line 54
    goto/16 :goto_3c

    .line 55
    .line 56
    :cond_2
    :goto_3
    iget-object v5, v3, Lu/c;->c:Lu/e;

    .line 57
    .line 58
    iget-object v6, v3, Lu/c;->b:Lu/e;

    .line 59
    .line 60
    iget-object v7, v3, Lu/c;->d:Lu/e;

    .line 61
    .line 62
    iget-object v8, v3, Lu/c;->e:Lu/e;

    .line 63
    .line 64
    iget v9, v3, Lu/c;->k:F

    .line 65
    .line 66
    iget-object v13, v0, Lu/e;->T:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 67
    .line 68
    aget-object v13, v13, v11

    .line 69
    .line 70
    sget-object v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->e:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 71
    .line 72
    move/from16 v19, v2

    .line 73
    .line 74
    const/4 v2, 0x1

    .line 75
    if-ne v13, v12, :cond_3

    .line 76
    .line 77
    move v12, v2

    .line 78
    goto :goto_4

    .line 79
    :cond_3
    const/4 v12, 0x0

    .line 80
    :goto_4
    if-nez v11, :cond_7

    .line 81
    .line 82
    iget v13, v8, Lu/e;->j0:I

    .line 83
    .line 84
    if-nez v13, :cond_4

    .line 85
    .line 86
    move/from16 v20, v2

    .line 87
    .line 88
    goto :goto_5

    .line 89
    :cond_4
    const/16 v20, 0x0

    .line 90
    .line 91
    :goto_5
    if-ne v13, v2, :cond_5

    .line 92
    .line 93
    move/from16 v18, v2

    .line 94
    .line 95
    :goto_6
    move/from16 v21, v9

    .line 96
    .line 97
    const/4 v9, 0x2

    .line 98
    goto :goto_7

    .line 99
    :cond_5
    const/16 v18, 0x0

    .line 100
    .line 101
    goto :goto_6

    .line 102
    :goto_7
    if-ne v13, v9, :cond_6

    .line 103
    .line 104
    move v13, v2

    .line 105
    goto :goto_8

    .line 106
    :cond_6
    const/4 v13, 0x0

    .line 107
    :goto_8
    move-object v9, v4

    .line 108
    move/from16 v22, v20

    .line 109
    .line 110
    move/from16 v20, v18

    .line 111
    .line 112
    :goto_9
    const/16 v18, 0x0

    .line 113
    .line 114
    goto :goto_d

    .line 115
    :cond_7
    move/from16 v21, v9

    .line 116
    .line 117
    const/4 v9, 0x2

    .line 118
    iget v13, v8, Lu/e;->k0:I

    .line 119
    .line 120
    if-nez v13, :cond_8

    .line 121
    .line 122
    move/from16 v18, v2

    .line 123
    .line 124
    goto :goto_a

    .line 125
    :cond_8
    const/16 v18, 0x0

    .line 126
    .line 127
    :goto_a
    if-ne v13, v2, :cond_9

    .line 128
    .line 129
    move/from16 v20, v2

    .line 130
    .line 131
    goto :goto_b

    .line 132
    :cond_9
    const/16 v20, 0x0

    .line 133
    .line 134
    :goto_b
    if-ne v13, v9, :cond_a

    .line 135
    .line 136
    move v13, v2

    .line 137
    goto :goto_c

    .line 138
    :cond_a
    const/4 v13, 0x0

    .line 139
    :goto_c
    move-object v9, v4

    .line 140
    move/from16 v22, v18

    .line 141
    .line 142
    goto :goto_9

    .line 143
    :goto_d
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->f:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 144
    .line 145
    iget-object v10, v0, Lu/e;->Q:[Lu/d;

    .line 146
    .line 147
    move-object/from16 v24, v10

    .line 148
    .line 149
    const/16 v26, 0x0

    .line 150
    .line 151
    if-nez v18, :cond_18

    .line 152
    .line 153
    iget-object v10, v9, Lu/e;->Q:[Lu/d;

    .line 154
    .line 155
    aget-object v10, v10, v16

    .line 156
    .line 157
    if-eqz v13, :cond_b

    .line 158
    .line 159
    const/16 v25, 0x1

    .line 160
    .line 161
    goto :goto_e

    .line 162
    :cond_b
    const/16 v25, 0x4

    .line 163
    .line 164
    :goto_e
    invoke-virtual {v10}, Lu/d;->getMargin()I

    .line 165
    .line 166
    .line 167
    move-result v27

    .line 168
    move/from16 v28, v12

    .line 169
    .line 170
    iget-object v12, v9, Lu/e;->T:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 171
    .line 172
    move-object/from16 v29, v12

    .line 173
    .line 174
    aget-object v12, v29, v11

    .line 175
    .line 176
    if-ne v12, v2, :cond_c

    .line 177
    .line 178
    iget-object v12, v9, Lu/e;->t:[I

    .line 179
    .line 180
    aget v12, v12, v11

    .line 181
    .line 182
    if-nez v12, :cond_c

    .line 183
    .line 184
    const/16 v30, 0x1

    .line 185
    .line 186
    goto :goto_f

    .line 187
    :cond_c
    const/16 v30, 0x0

    .line 188
    .line 189
    :goto_f
    iget-object v12, v10, Lu/d;->f:Lu/d;

    .line 190
    .line 191
    if-eqz v12, :cond_d

    .line 192
    .line 193
    if-eq v9, v4, :cond_d

    .line 194
    .line 195
    invoke-virtual {v12}, Lu/d;->getMargin()I

    .line 196
    .line 197
    .line 198
    move-result v12

    .line 199
    add-int v27, v12, v27

    .line 200
    .line 201
    :cond_d
    move/from16 v12, v27

    .line 202
    .line 203
    if-eqz v13, :cond_e

    .line 204
    .line 205
    if-eq v9, v4, :cond_e

    .line 206
    .line 207
    if-eq v9, v6, :cond_e

    .line 208
    .line 209
    const/16 v25, 0x8

    .line 210
    .line 211
    :cond_e
    move/from16 v27, v13

    .line 212
    .line 213
    iget-object v13, v10, Lu/d;->f:Lu/d;

    .line 214
    .line 215
    if-eqz v13, :cond_12

    .line 216
    .line 217
    if-ne v9, v6, :cond_f

    .line 218
    .line 219
    move/from16 v31, v14

    .line 220
    .line 221
    iget-object v14, v10, Lu/d;->i:Lr/m;

    .line 222
    .line 223
    iget-object v13, v13, Lu/d;->i:Lr/m;

    .line 224
    .line 225
    move-object/from16 v32, v15

    .line 226
    .line 227
    const/4 v15, 0x6

    .line 228
    invoke-virtual {v1, v14, v13, v12, v15}, Lr/f;->addGreaterThan(Lr/m;Lr/m;II)V

    .line 229
    .line 230
    .line 231
    goto :goto_10

    .line 232
    :cond_f
    move/from16 v31, v14

    .line 233
    .line 234
    move-object/from16 v32, v15

    .line 235
    .line 236
    iget-object v14, v10, Lu/d;->i:Lr/m;

    .line 237
    .line 238
    iget-object v13, v13, Lu/d;->i:Lr/m;

    .line 239
    .line 240
    const/16 v15, 0x8

    .line 241
    .line 242
    invoke-virtual {v1, v14, v13, v12, v15}, Lr/f;->addGreaterThan(Lr/m;Lr/m;II)V

    .line 243
    .line 244
    .line 245
    :goto_10
    if-eqz v30, :cond_10

    .line 246
    .line 247
    if-nez v27, :cond_10

    .line 248
    .line 249
    const/16 v25, 0x5

    .line 250
    .line 251
    :cond_10
    if-ne v9, v6, :cond_11

    .line 252
    .line 253
    if-eqz v27, :cond_11

    .line 254
    .line 255
    invoke-virtual {v9, v11}, Lu/e;->isInBarrier(I)Z

    .line 256
    .line 257
    .line 258
    move-result v13

    .line 259
    if-eqz v13, :cond_11

    .line 260
    .line 261
    const/4 v13, 0x5

    .line 262
    goto :goto_11

    .line 263
    :cond_11
    move/from16 v13, v25

    .line 264
    .line 265
    :goto_11
    iget-object v14, v10, Lu/d;->i:Lr/m;

    .line 266
    .line 267
    iget-object v10, v10, Lu/d;->f:Lu/d;

    .line 268
    .line 269
    iget-object v10, v10, Lu/d;->i:Lr/m;

    .line 270
    .line 271
    invoke-virtual {v1, v14, v10, v12, v13}, Lr/f;->addEquality(Lr/m;Lr/m;II)Lr/c;

    .line 272
    .line 273
    .line 274
    goto :goto_12

    .line 275
    :cond_12
    move/from16 v31, v14

    .line 276
    .line 277
    move-object/from16 v32, v15

    .line 278
    .line 279
    :goto_12
    iget-object v10, v9, Lu/e;->Q:[Lu/d;

    .line 280
    .line 281
    if-eqz v28, :cond_14

    .line 282
    .line 283
    invoke-virtual {v9}, Lu/e;->getVisibility()I

    .line 284
    .line 285
    .line 286
    move-result v12

    .line 287
    const/16 v15, 0x8

    .line 288
    .line 289
    if-eq v12, v15, :cond_13

    .line 290
    .line 291
    aget-object v12, v29, v11

    .line 292
    .line 293
    if-ne v12, v2, :cond_13

    .line 294
    .line 295
    add-int/lit8 v2, v16, 0x1

    .line 296
    .line 297
    aget-object v2, v10, v2

    .line 298
    .line 299
    iget-object v2, v2, Lu/d;->i:Lr/m;

    .line 300
    .line 301
    aget-object v12, v10, v16

    .line 302
    .line 303
    iget-object v12, v12, Lu/d;->i:Lr/m;

    .line 304
    .line 305
    const/4 v13, 0x0

    .line 306
    const/4 v14, 0x5

    .line 307
    invoke-virtual {v1, v2, v12, v13, v14}, Lr/f;->addGreaterThan(Lr/m;Lr/m;II)V

    .line 308
    .line 309
    .line 310
    goto :goto_13

    .line 311
    :cond_13
    const/4 v13, 0x0

    .line 312
    :goto_13
    aget-object v2, v10, v16

    .line 313
    .line 314
    iget-object v2, v2, Lu/d;->i:Lr/m;

    .line 315
    .line 316
    aget-object v12, v24, v16

    .line 317
    .line 318
    iget-object v12, v12, Lu/d;->i:Lr/m;

    .line 319
    .line 320
    const/16 v15, 0x8

    .line 321
    .line 322
    invoke-virtual {v1, v2, v12, v13, v15}, Lr/f;->addGreaterThan(Lr/m;Lr/m;II)V

    .line 323
    .line 324
    .line 325
    :cond_14
    add-int/lit8 v2, v16, 0x1

    .line 326
    .line 327
    aget-object v2, v10, v2

    .line 328
    .line 329
    iget-object v2, v2, Lu/d;->f:Lu/d;

    .line 330
    .line 331
    if-eqz v2, :cond_16

    .line 332
    .line 333
    iget-object v2, v2, Lu/d;->d:Lu/e;

    .line 334
    .line 335
    iget-object v10, v2, Lu/e;->Q:[Lu/d;

    .line 336
    .line 337
    aget-object v10, v10, v16

    .line 338
    .line 339
    iget-object v10, v10, Lu/d;->f:Lu/d;

    .line 340
    .line 341
    if-eqz v10, :cond_16

    .line 342
    .line 343
    iget-object v10, v10, Lu/d;->d:Lu/e;

    .line 344
    .line 345
    if-eq v10, v9, :cond_15

    .line 346
    .line 347
    goto :goto_14

    .line 348
    :cond_15
    move-object/from16 v26, v2

    .line 349
    .line 350
    :cond_16
    :goto_14
    if-eqz v26, :cond_17

    .line 351
    .line 352
    move-object/from16 v9, v26

    .line 353
    .line 354
    goto :goto_15

    .line 355
    :cond_17
    const/16 v18, 0x1

    .line 356
    .line 357
    :goto_15
    move-object/from16 v10, p2

    .line 358
    .line 359
    move/from16 v13, v27

    .line 360
    .line 361
    move/from16 v12, v28

    .line 362
    .line 363
    move/from16 v14, v31

    .line 364
    .line 365
    move-object/from16 v15, v32

    .line 366
    .line 367
    goto/16 :goto_d

    .line 368
    .line 369
    :cond_18
    move/from16 v28, v12

    .line 370
    .line 371
    move/from16 v27, v13

    .line 372
    .line 373
    move/from16 v31, v14

    .line 374
    .line 375
    move-object/from16 v32, v15

    .line 376
    .line 377
    if-eqz v7, :cond_1b

    .line 378
    .line 379
    iget-object v9, v5, Lu/e;->Q:[Lu/d;

    .line 380
    .line 381
    add-int/lit8 v10, v16, 0x1

    .line 382
    .line 383
    aget-object v9, v9, v10

    .line 384
    .line 385
    iget-object v9, v9, Lu/d;->f:Lu/d;

    .line 386
    .line 387
    if-eqz v9, :cond_1b

    .line 388
    .line 389
    iget-object v9, v7, Lu/e;->Q:[Lu/d;

    .line 390
    .line 391
    aget-object v9, v9, v10

    .line 392
    .line 393
    iget-object v12, v7, Lu/e;->T:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 394
    .line 395
    aget-object v12, v12, v11

    .line 396
    .line 397
    if-ne v12, v2, :cond_19

    .line 398
    .line 399
    iget-object v2, v7, Lu/e;->t:[I

    .line 400
    .line 401
    aget v2, v2, v11

    .line 402
    .line 403
    if-nez v2, :cond_19

    .line 404
    .line 405
    if-nez v27, :cond_19

    .line 406
    .line 407
    iget-object v2, v9, Lu/d;->f:Lu/d;

    .line 408
    .line 409
    iget-object v12, v2, Lu/d;->d:Lu/e;

    .line 410
    .line 411
    if-ne v12, v0, :cond_19

    .line 412
    .line 413
    iget-object v12, v9, Lu/d;->i:Lr/m;

    .line 414
    .line 415
    iget-object v2, v2, Lu/d;->i:Lr/m;

    .line 416
    .line 417
    invoke-virtual {v9}, Lu/d;->getMargin()I

    .line 418
    .line 419
    .line 420
    move-result v13

    .line 421
    neg-int v13, v13

    .line 422
    const/4 v14, 0x5

    .line 423
    invoke-virtual {v1, v12, v2, v13, v14}, Lr/f;->addEquality(Lr/m;Lr/m;II)Lr/c;

    .line 424
    .line 425
    .line 426
    goto :goto_16

    .line 427
    :cond_19
    const/4 v14, 0x5

    .line 428
    if-eqz v27, :cond_1a

    .line 429
    .line 430
    iget-object v2, v9, Lu/d;->f:Lu/d;

    .line 431
    .line 432
    iget-object v12, v2, Lu/d;->d:Lu/e;

    .line 433
    .line 434
    if-ne v12, v0, :cond_1a

    .line 435
    .line 436
    iget-object v12, v9, Lu/d;->i:Lr/m;

    .line 437
    .line 438
    iget-object v2, v2, Lu/d;->i:Lr/m;

    .line 439
    .line 440
    invoke-virtual {v9}, Lu/d;->getMargin()I

    .line 441
    .line 442
    .line 443
    move-result v13

    .line 444
    neg-int v13, v13

    .line 445
    const/4 v15, 0x4

    .line 446
    invoke-virtual {v1, v12, v2, v13, v15}, Lr/f;->addEquality(Lr/m;Lr/m;II)Lr/c;

    .line 447
    .line 448
    .line 449
    :cond_1a
    :goto_16
    iget-object v2, v9, Lu/d;->i:Lr/m;

    .line 450
    .line 451
    iget-object v12, v5, Lu/e;->Q:[Lu/d;

    .line 452
    .line 453
    aget-object v10, v12, v10

    .line 454
    .line 455
    iget-object v10, v10, Lu/d;->f:Lu/d;

    .line 456
    .line 457
    iget-object v10, v10, Lu/d;->i:Lr/m;

    .line 458
    .line 459
    invoke-virtual {v9}, Lu/d;->getMargin()I

    .line 460
    .line 461
    .line 462
    move-result v9

    .line 463
    neg-int v9, v9

    .line 464
    const/4 v15, 0x6

    .line 465
    invoke-virtual {v1, v2, v10, v9, v15}, Lr/f;->addLowerThan(Lr/m;Lr/m;II)V

    .line 466
    .line 467
    .line 468
    goto :goto_17

    .line 469
    :cond_1b
    const/4 v14, 0x5

    .line 470
    :goto_17
    if-eqz v28, :cond_1c

    .line 471
    .line 472
    add-int/lit8 v2, v16, 0x1

    .line 473
    .line 474
    aget-object v9, v24, v2

    .line 475
    .line 476
    iget-object v9, v9, Lu/d;->i:Lr/m;

    .line 477
    .line 478
    iget-object v10, v5, Lu/e;->Q:[Lu/d;

    .line 479
    .line 480
    aget-object v2, v10, v2

    .line 481
    .line 482
    iget-object v10, v2, Lu/d;->i:Lr/m;

    .line 483
    .line 484
    invoke-virtual {v2}, Lu/d;->getMargin()I

    .line 485
    .line 486
    .line 487
    move-result v2

    .line 488
    const/16 v15, 0x8

    .line 489
    .line 490
    invoke-virtual {v1, v9, v10, v2, v15}, Lr/f;->addGreaterThan(Lr/m;Lr/m;II)V

    .line 491
    .line 492
    .line 493
    :cond_1c
    iget-object v2, v3, Lu/c;->h:Ljava/util/ArrayList;

    .line 494
    .line 495
    if-eqz v2, :cond_22

    .line 496
    .line 497
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 498
    .line 499
    .line 500
    move-result v9

    .line 501
    const/4 v10, 0x1

    .line 502
    if-le v9, v10, :cond_22

    .line 503
    .line 504
    iget-boolean v12, v3, Lu/c;->n:Z

    .line 505
    .line 506
    if-eqz v12, :cond_1d

    .line 507
    .line 508
    iget-boolean v12, v3, Lu/c;->p:Z

    .line 509
    .line 510
    if-nez v12, :cond_1d

    .line 511
    .line 512
    iget v12, v3, Lu/c;->j:I

    .line 513
    .line 514
    int-to-float v12, v12

    .line 515
    move/from16 v35, v12

    .line 516
    .line 517
    goto :goto_18

    .line 518
    :cond_1d
    move/from16 v35, v21

    .line 519
    .line 520
    :goto_18
    move-object/from16 v15, v26

    .line 521
    .line 522
    const/4 v13, 0x0

    .line 523
    const/16 v34, 0x0

    .line 524
    .line 525
    :goto_19
    if-ge v13, v9, :cond_22

    .line 526
    .line 527
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 528
    .line 529
    .line 530
    move-result-object v18

    .line 531
    move-object/from16 v10, v18

    .line 532
    .line 533
    check-cast v10, Lu/e;

    .line 534
    .line 535
    const/16 v18, 0x0

    .line 536
    .line 537
    iget-object v12, v10, Lu/e;->l0:[F

    .line 538
    .line 539
    aget v12, v12, v11

    .line 540
    .line 541
    cmpg-float v21, v12, v18

    .line 542
    .line 543
    iget-object v14, v10, Lu/e;->Q:[Lu/d;

    .line 544
    .line 545
    if-gez v21, :cond_1f

    .line 546
    .line 547
    iget-boolean v12, v3, Lu/c;->p:Z

    .line 548
    .line 549
    if-eqz v12, :cond_1e

    .line 550
    .line 551
    add-int/lit8 v10, v16, 0x1

    .line 552
    .line 553
    aget-object v10, v14, v10

    .line 554
    .line 555
    iget-object v10, v10, Lu/d;->i:Lr/m;

    .line 556
    .line 557
    aget-object v12, v14, v16

    .line 558
    .line 559
    iget-object v12, v12, Lu/d;->i:Lr/m;

    .line 560
    .line 561
    const/4 v0, 0x0

    .line 562
    const/4 v14, 0x4

    .line 563
    invoke-virtual {v1, v10, v12, v0, v14}, Lr/f;->addEquality(Lr/m;Lr/m;II)Lr/c;

    .line 564
    .line 565
    .line 566
    move v12, v0

    .line 567
    move/from16 v25, v14

    .line 568
    .line 569
    goto :goto_1c

    .line 570
    :cond_1e
    const/16 v25, 0x4

    .line 571
    .line 572
    const/high16 v12, 0x3f800000    # 1.0f

    .line 573
    .line 574
    :goto_1a
    move/from16 v36, v12

    .line 575
    .line 576
    goto :goto_1b

    .line 577
    :cond_1f
    const/16 v25, 0x4

    .line 578
    .line 579
    goto :goto_1a

    .line 580
    :goto_1b
    cmpl-float v0, v36, v18

    .line 581
    .line 582
    if-nez v0, :cond_20

    .line 583
    .line 584
    add-int/lit8 v0, v16, 0x1

    .line 585
    .line 586
    aget-object v0, v14, v0

    .line 587
    .line 588
    iget-object v0, v0, Lu/d;->i:Lr/m;

    .line 589
    .line 590
    aget-object v10, v14, v16

    .line 591
    .line 592
    iget-object v10, v10, Lu/d;->i:Lr/m;

    .line 593
    .line 594
    const/4 v12, 0x0

    .line 595
    const/16 v14, 0x8

    .line 596
    .line 597
    invoke-virtual {v1, v0, v10, v12, v14}, Lr/f;->addEquality(Lr/m;Lr/m;II)Lr/c;

    .line 598
    .line 599
    .line 600
    goto :goto_1c

    .line 601
    :cond_20
    const/4 v12, 0x0

    .line 602
    if-eqz v15, :cond_21

    .line 603
    .line 604
    iget-object v0, v15, Lu/e;->Q:[Lu/d;

    .line 605
    .line 606
    aget-object v15, v0, v16

    .line 607
    .line 608
    iget-object v15, v15, Lu/d;->i:Lr/m;

    .line 609
    .line 610
    add-int/lit8 v17, v16, 0x1

    .line 611
    .line 612
    aget-object v0, v0, v17

    .line 613
    .line 614
    iget-object v0, v0, Lu/d;->i:Lr/m;

    .line 615
    .line 616
    aget-object v12, v14, v16

    .line 617
    .line 618
    iget-object v12, v12, Lu/d;->i:Lr/m;

    .line 619
    .line 620
    aget-object v14, v14, v17

    .line 621
    .line 622
    iget-object v14, v14, Lu/d;->i:Lr/m;

    .line 623
    .line 624
    invoke-virtual {v1}, Lr/f;->createRow()Lr/c;

    .line 625
    .line 626
    .line 627
    move-result-object v33

    .line 628
    move-object/from16 v38, v0

    .line 629
    .line 630
    move-object/from16 v39, v12

    .line 631
    .line 632
    move-object/from16 v40, v14

    .line 633
    .line 634
    move-object/from16 v37, v15

    .line 635
    .line 636
    invoke-virtual/range {v33 .. v40}, Lr/c;->createRowEqualMatchDimensions(FFFLr/m;Lr/m;Lr/m;Lr/m;)Lr/c;

    .line 637
    .line 638
    .line 639
    move-object/from16 v0, v33

    .line 640
    .line 641
    invoke-virtual {v1, v0}, Lr/f;->addConstraint(Lr/c;)V

    .line 642
    .line 643
    .line 644
    :cond_21
    move-object v15, v10

    .line 645
    move/from16 v34, v36

    .line 646
    .line 647
    :goto_1c
    add-int/lit8 v13, v13, 0x1

    .line 648
    .line 649
    const/4 v10, 0x1

    .line 650
    const/4 v14, 0x5

    .line 651
    move-object/from16 v0, p0

    .line 652
    .line 653
    goto/16 :goto_19

    .line 654
    .line 655
    :cond_22
    const/16 v25, 0x4

    .line 656
    .line 657
    if-eqz v6, :cond_23

    .line 658
    .line 659
    if-eq v6, v7, :cond_24

    .line 660
    .line 661
    if-eqz v27, :cond_23

    .line 662
    .line 663
    goto :goto_1d

    .line 664
    :cond_23
    move-object v0, v5

    .line 665
    move-object v10, v6

    .line 666
    move-object v12, v7

    .line 667
    const/16 v18, 0x2

    .line 668
    .line 669
    goto/16 :goto_23

    .line 670
    .line 671
    :cond_24
    :goto_1d
    iget-object v0, v4, Lu/e;->Q:[Lu/d;

    .line 672
    .line 673
    aget-object v0, v0, v16

    .line 674
    .line 675
    iget-object v2, v5, Lu/e;->Q:[Lu/d;

    .line 676
    .line 677
    add-int/lit8 v3, v16, 0x1

    .line 678
    .line 679
    aget-object v2, v2, v3

    .line 680
    .line 681
    iget-object v0, v0, Lu/d;->f:Lu/d;

    .line 682
    .line 683
    if-eqz v0, :cond_25

    .line 684
    .line 685
    iget-object v0, v0, Lu/d;->i:Lr/m;

    .line 686
    .line 687
    goto :goto_1e

    .line 688
    :cond_25
    move-object/from16 v0, v26

    .line 689
    .line 690
    :goto_1e
    iget-object v4, v2, Lu/d;->f:Lu/d;

    .line 691
    .line 692
    if-eqz v4, :cond_26

    .line 693
    .line 694
    iget-object v4, v4, Lu/d;->i:Lr/m;

    .line 695
    .line 696
    goto :goto_1f

    .line 697
    :cond_26
    move-object/from16 v4, v26

    .line 698
    .line 699
    :goto_1f
    iget-object v9, v6, Lu/e;->Q:[Lu/d;

    .line 700
    .line 701
    aget-object v9, v9, v16

    .line 702
    .line 703
    if-eqz v7, :cond_27

    .line 704
    .line 705
    iget-object v2, v7, Lu/e;->Q:[Lu/d;

    .line 706
    .line 707
    aget-object v2, v2, v3

    .line 708
    .line 709
    :cond_27
    if-eqz v0, :cond_29

    .line 710
    .line 711
    if-eqz v4, :cond_29

    .line 712
    .line 713
    if-nez v11, :cond_28

    .line 714
    .line 715
    iget v3, v8, Lu/e;->e0:F

    .line 716
    .line 717
    :goto_20
    move-object v8, v6

    .line 718
    move-object v6, v4

    .line 719
    goto :goto_21

    .line 720
    :cond_28
    iget v3, v8, Lu/e;->f0:F

    .line 721
    .line 722
    goto :goto_20

    .line 723
    :goto_21
    invoke-virtual {v9}, Lu/d;->getMargin()I

    .line 724
    .line 725
    .line 726
    move-result v4

    .line 727
    move-object v10, v8

    .line 728
    invoke-virtual {v2}, Lu/d;->getMargin()I

    .line 729
    .line 730
    .line 731
    move-result v8

    .line 732
    iget-object v9, v9, Lu/d;->i:Lr/m;

    .line 733
    .line 734
    iget-object v2, v2, Lu/d;->i:Lr/m;

    .line 735
    .line 736
    move-object v12, v7

    .line 737
    move-object v7, v2

    .line 738
    move-object v2, v9

    .line 739
    const/4 v9, 0x7

    .line 740
    move/from16 v18, v3

    .line 741
    .line 742
    move-object v3, v0

    .line 743
    move-object v0, v5

    .line 744
    move/from16 v5, v18

    .line 745
    .line 746
    const/16 v18, 0x2

    .line 747
    .line 748
    invoke-virtual/range {v1 .. v9}, Lr/f;->addCentering(Lr/m;Lr/m;IFLr/m;Lr/m;II)V

    .line 749
    .line 750
    .line 751
    goto :goto_22

    .line 752
    :cond_29
    move-object v0, v5

    .line 753
    move-object v10, v6

    .line 754
    move-object v12, v7

    .line 755
    const/16 v18, 0x2

    .line 756
    .line 757
    :cond_2a
    :goto_22
    move-object/from16 v1, p1

    .line 758
    .line 759
    goto/16 :goto_38

    .line 760
    .line 761
    :goto_23
    if-eqz v22, :cond_3a

    .line 762
    .line 763
    if-eqz v10, :cond_3a

    .line 764
    .line 765
    iget v1, v3, Lu/c;->j:I

    .line 766
    .line 767
    if-lez v1, :cond_2b

    .line 768
    .line 769
    iget v2, v3, Lu/c;->i:I

    .line 770
    .line 771
    if-ne v2, v1, :cond_2b

    .line 772
    .line 773
    const/16 v23, 0x1

    .line 774
    .line 775
    goto :goto_24

    .line 776
    :cond_2b
    const/16 v23, 0x0

    .line 777
    .line 778
    :goto_24
    move-object v13, v10

    .line 779
    move-object v14, v13

    .line 780
    :goto_25
    if-eqz v13, :cond_2a

    .line 781
    .line 782
    iget-object v1, v13, Lu/e;->n0:[Lu/e;

    .line 783
    .line 784
    aget-object v1, v1, v11

    .line 785
    .line 786
    move-object v15, v1

    .line 787
    :goto_26
    if-eqz v15, :cond_2c

    .line 788
    .line 789
    invoke-virtual {v15}, Lu/e;->getVisibility()I

    .line 790
    .line 791
    .line 792
    move-result v1

    .line 793
    const/16 v2, 0x8

    .line 794
    .line 795
    if-ne v1, v2, :cond_2c

    .line 796
    .line 797
    iget-object v1, v15, Lu/e;->n0:[Lu/e;

    .line 798
    .line 799
    aget-object v15, v1, v11

    .line 800
    .line 801
    goto :goto_26

    .line 802
    :cond_2c
    if-nez v15, :cond_2e

    .line 803
    .line 804
    if-ne v13, v12, :cond_2d

    .line 805
    .line 806
    goto :goto_27

    .line 807
    :cond_2d
    move-object v11, v4

    .line 808
    goto/16 :goto_2d

    .line 809
    .line 810
    :cond_2e
    :goto_27
    iget-object v1, v13, Lu/e;->Q:[Lu/d;

    .line 811
    .line 812
    aget-object v2, v1, v16

    .line 813
    .line 814
    iget-object v3, v2, Lu/d;->i:Lr/m;

    .line 815
    .line 816
    iget-object v5, v2, Lu/d;->f:Lu/d;

    .line 817
    .line 818
    if-eqz v5, :cond_2f

    .line 819
    .line 820
    iget-object v5, v5, Lu/d;->i:Lr/m;

    .line 821
    .line 822
    goto :goto_28

    .line 823
    :cond_2f
    move-object/from16 v5, v26

    .line 824
    .line 825
    :goto_28
    if-eq v14, v13, :cond_30

    .line 826
    .line 827
    iget-object v5, v14, Lu/e;->Q:[Lu/d;

    .line 828
    .line 829
    add-int/lit8 v6, v16, 0x1

    .line 830
    .line 831
    aget-object v5, v5, v6

    .line 832
    .line 833
    iget-object v5, v5, Lu/d;->i:Lr/m;

    .line 834
    .line 835
    goto :goto_29

    .line 836
    :cond_30
    if-ne v13, v10, :cond_32

    .line 837
    .line 838
    iget-object v5, v4, Lu/e;->Q:[Lu/d;

    .line 839
    .line 840
    aget-object v5, v5, v16

    .line 841
    .line 842
    iget-object v5, v5, Lu/d;->f:Lu/d;

    .line 843
    .line 844
    if-eqz v5, :cond_31

    .line 845
    .line 846
    iget-object v5, v5, Lu/d;->i:Lr/m;

    .line 847
    .line 848
    goto :goto_29

    .line 849
    :cond_31
    move-object/from16 v5, v26

    .line 850
    .line 851
    :cond_32
    :goto_29
    invoke-virtual {v2}, Lu/d;->getMargin()I

    .line 852
    .line 853
    .line 854
    move-result v2

    .line 855
    add-int/lit8 v6, v16, 0x1

    .line 856
    .line 857
    aget-object v7, v1, v6

    .line 858
    .line 859
    invoke-virtual {v7}, Lu/d;->getMargin()I

    .line 860
    .line 861
    .line 862
    move-result v7

    .line 863
    if-eqz v15, :cond_33

    .line 864
    .line 865
    iget-object v8, v15, Lu/e;->Q:[Lu/d;

    .line 866
    .line 867
    aget-object v8, v8, v16

    .line 868
    .line 869
    iget-object v9, v8, Lu/d;->i:Lr/m;

    .line 870
    .line 871
    goto :goto_2a

    .line 872
    :cond_33
    iget-object v8, v0, Lu/e;->Q:[Lu/d;

    .line 873
    .line 874
    aget-object v8, v8, v6

    .line 875
    .line 876
    iget-object v8, v8, Lu/d;->f:Lu/d;

    .line 877
    .line 878
    if-eqz v8, :cond_34

    .line 879
    .line 880
    iget-object v9, v8, Lu/d;->i:Lr/m;

    .line 881
    .line 882
    goto :goto_2a

    .line 883
    :cond_34
    move-object/from16 v9, v26

    .line 884
    .line 885
    :goto_2a
    aget-object v1, v1, v6

    .line 886
    .line 887
    iget-object v1, v1, Lu/d;->i:Lr/m;

    .line 888
    .line 889
    if-eqz v8, :cond_35

    .line 890
    .line 891
    invoke-virtual {v8}, Lu/d;->getMargin()I

    .line 892
    .line 893
    .line 894
    move-result v8

    .line 895
    add-int/2addr v7, v8

    .line 896
    :cond_35
    iget-object v8, v14, Lu/e;->Q:[Lu/d;

    .line 897
    .line 898
    aget-object v8, v8, v6

    .line 899
    .line 900
    invoke-virtual {v8}, Lu/d;->getMargin()I

    .line 901
    .line 902
    .line 903
    move-result v8

    .line 904
    add-int/2addr v8, v2

    .line 905
    if-eqz v3, :cond_2d

    .line 906
    .line 907
    if-eqz v5, :cond_2d

    .line 908
    .line 909
    if-eqz v9, :cond_2d

    .line 910
    .line 911
    if-eqz v1, :cond_2d

    .line 912
    .line 913
    if-ne v13, v10, :cond_36

    .line 914
    .line 915
    iget-object v2, v10, Lu/e;->Q:[Lu/d;

    .line 916
    .line 917
    aget-object v2, v2, v16

    .line 918
    .line 919
    invoke-virtual {v2}, Lu/d;->getMargin()I

    .line 920
    .line 921
    .line 922
    move-result v8

    .line 923
    :cond_36
    if-ne v13, v12, :cond_37

    .line 924
    .line 925
    iget-object v2, v12, Lu/e;->Q:[Lu/d;

    .line 926
    .line 927
    aget-object v2, v2, v6

    .line 928
    .line 929
    invoke-virtual {v2}, Lu/d;->getMargin()I

    .line 930
    .line 931
    .line 932
    move-result v7

    .line 933
    :cond_37
    move-object v6, v9

    .line 934
    if-eqz v23, :cond_38

    .line 935
    .line 936
    const/16 v9, 0x8

    .line 937
    .line 938
    :goto_2b
    move-object v2, v3

    .line 939
    move-object v3, v5

    .line 940
    goto :goto_2c

    .line 941
    :cond_38
    const/4 v9, 0x5

    .line 942
    goto :goto_2b

    .line 943
    :goto_2c
    const/high16 v5, 0x3f000000    # 0.5f

    .line 944
    .line 945
    move-object v11, v4

    .line 946
    move v4, v8

    .line 947
    move v8, v7

    .line 948
    move-object v7, v1

    .line 949
    move-object/from16 v1, p1

    .line 950
    .line 951
    invoke-virtual/range {v1 .. v9}, Lr/f;->addCentering(Lr/m;Lr/m;IFLr/m;Lr/m;II)V

    .line 952
    .line 953
    .line 954
    :goto_2d
    invoke-virtual {v13}, Lu/e;->getVisibility()I

    .line 955
    .line 956
    .line 957
    move-result v1

    .line 958
    const/16 v2, 0x8

    .line 959
    .line 960
    if-eq v1, v2, :cond_39

    .line 961
    .line 962
    move-object v14, v13

    .line 963
    :cond_39
    move-object v4, v11

    .line 964
    move-object v13, v15

    .line 965
    move/from16 v11, p3

    .line 966
    .line 967
    goto/16 :goto_25

    .line 968
    .line 969
    :cond_3a
    move-object v11, v4

    .line 970
    if-eqz v20, :cond_2a

    .line 971
    .line 972
    if-eqz v10, :cond_2a

    .line 973
    .line 974
    iget v1, v3, Lu/c;->j:I

    .line 975
    .line 976
    if-lez v1, :cond_3b

    .line 977
    .line 978
    iget v2, v3, Lu/c;->i:I

    .line 979
    .line 980
    if-ne v2, v1, :cond_3b

    .line 981
    .line 982
    const/16 v23, 0x1

    .line 983
    .line 984
    goto :goto_2e

    .line 985
    :cond_3b
    const/16 v23, 0x0

    .line 986
    .line 987
    :goto_2e
    move-object v13, v10

    .line 988
    move-object v14, v13

    .line 989
    :goto_2f
    if-eqz v13, :cond_46

    .line 990
    .line 991
    iget-object v1, v13, Lu/e;->n0:[Lu/e;

    .line 992
    .line 993
    aget-object v1, v1, p3

    .line 994
    .line 995
    :goto_30
    if-eqz v1, :cond_3c

    .line 996
    .line 997
    invoke-virtual {v1}, Lu/e;->getVisibility()I

    .line 998
    .line 999
    .line 1000
    move-result v2

    .line 1001
    const/16 v15, 0x8

    .line 1002
    .line 1003
    if-ne v2, v15, :cond_3c

    .line 1004
    .line 1005
    iget-object v1, v1, Lu/e;->n0:[Lu/e;

    .line 1006
    .line 1007
    aget-object v1, v1, p3

    .line 1008
    .line 1009
    goto :goto_30

    .line 1010
    :cond_3c
    if-eq v13, v10, :cond_44

    .line 1011
    .line 1012
    if-eq v13, v12, :cond_44

    .line 1013
    .line 1014
    if-eqz v1, :cond_44

    .line 1015
    .line 1016
    if-ne v1, v12, :cond_3d

    .line 1017
    .line 1018
    move-object/from16 v15, v26

    .line 1019
    .line 1020
    goto :goto_31

    .line 1021
    :cond_3d
    move-object v15, v1

    .line 1022
    :goto_31
    iget-object v1, v13, Lu/e;->Q:[Lu/d;

    .line 1023
    .line 1024
    aget-object v2, v1, v16

    .line 1025
    .line 1026
    move-object v3, v2

    .line 1027
    iget-object v2, v3, Lu/d;->i:Lr/m;

    .line 1028
    .line 1029
    iget-object v4, v14, Lu/e;->Q:[Lu/d;

    .line 1030
    .line 1031
    add-int/lit8 v5, v16, 0x1

    .line 1032
    .line 1033
    aget-object v4, v4, v5

    .line 1034
    .line 1035
    iget-object v4, v4, Lu/d;->i:Lr/m;

    .line 1036
    .line 1037
    invoke-virtual {v3}, Lu/d;->getMargin()I

    .line 1038
    .line 1039
    .line 1040
    move-result v3

    .line 1041
    aget-object v6, v1, v5

    .line 1042
    .line 1043
    invoke-virtual {v6}, Lu/d;->getMargin()I

    .line 1044
    .line 1045
    .line 1046
    move-result v6

    .line 1047
    if-eqz v15, :cond_3f

    .line 1048
    .line 1049
    iget-object v1, v15, Lu/e;->Q:[Lu/d;

    .line 1050
    .line 1051
    aget-object v1, v1, v16

    .line 1052
    .line 1053
    iget-object v7, v1, Lu/d;->i:Lr/m;

    .line 1054
    .line 1055
    iget-object v8, v1, Lu/d;->f:Lu/d;

    .line 1056
    .line 1057
    if-eqz v8, :cond_3e

    .line 1058
    .line 1059
    iget-object v8, v8, Lu/d;->i:Lr/m;

    .line 1060
    .line 1061
    goto :goto_33

    .line 1062
    :cond_3e
    move-object/from16 v8, v26

    .line 1063
    .line 1064
    goto :goto_33

    .line 1065
    :cond_3f
    iget-object v7, v12, Lu/e;->Q:[Lu/d;

    .line 1066
    .line 1067
    aget-object v7, v7, v16

    .line 1068
    .line 1069
    if-eqz v7, :cond_40

    .line 1070
    .line 1071
    iget-object v8, v7, Lu/d;->i:Lr/m;

    .line 1072
    .line 1073
    goto :goto_32

    .line 1074
    :cond_40
    move-object/from16 v8, v26

    .line 1075
    .line 1076
    :goto_32
    aget-object v1, v1, v5

    .line 1077
    .line 1078
    iget-object v1, v1, Lu/d;->i:Lr/m;

    .line 1079
    .line 1080
    move-object/from16 v41, v8

    .line 1081
    .line 1082
    move-object v8, v1

    .line 1083
    move-object v1, v7

    .line 1084
    move-object/from16 v7, v41

    .line 1085
    .line 1086
    :goto_33
    if-eqz v1, :cond_41

    .line 1087
    .line 1088
    invoke-virtual {v1}, Lu/d;->getMargin()I

    .line 1089
    .line 1090
    .line 1091
    move-result v1

    .line 1092
    add-int/2addr v6, v1

    .line 1093
    :cond_41
    iget-object v1, v14, Lu/e;->Q:[Lu/d;

    .line 1094
    .line 1095
    aget-object v1, v1, v5

    .line 1096
    .line 1097
    invoke-virtual {v1}, Lu/d;->getMargin()I

    .line 1098
    .line 1099
    .line 1100
    move-result v1

    .line 1101
    add-int/2addr v1, v3

    .line 1102
    if-eqz v23, :cond_42

    .line 1103
    .line 1104
    const/16 v9, 0x8

    .line 1105
    .line 1106
    goto :goto_34

    .line 1107
    :cond_42
    move/from16 v9, v25

    .line 1108
    .line 1109
    :goto_34
    if-eqz v2, :cond_43

    .line 1110
    .line 1111
    if-eqz v4, :cond_43

    .line 1112
    .line 1113
    if-eqz v7, :cond_43

    .line 1114
    .line 1115
    if-eqz v8, :cond_43

    .line 1116
    .line 1117
    const/high16 v5, 0x3f000000    # 0.5f

    .line 1118
    .line 1119
    move-object v3, v8

    .line 1120
    move v8, v6

    .line 1121
    move-object v6, v7

    .line 1122
    move-object v7, v3

    .line 1123
    move-object v3, v4

    .line 1124
    move v4, v1

    .line 1125
    move-object/from16 v1, p1

    .line 1126
    .line 1127
    invoke-virtual/range {v1 .. v9}, Lr/f;->addCentering(Lr/m;Lr/m;IFLr/m;Lr/m;II)V

    .line 1128
    .line 1129
    .line 1130
    move-object v2, v1

    .line 1131
    goto :goto_35

    .line 1132
    :cond_43
    move-object/from16 v2, p1

    .line 1133
    .line 1134
    :goto_35
    move-object v6, v15

    .line 1135
    goto :goto_36

    .line 1136
    :cond_44
    move-object/from16 v2, p1

    .line 1137
    .line 1138
    move-object v6, v1

    .line 1139
    :goto_36
    invoke-virtual {v13}, Lu/e;->getVisibility()I

    .line 1140
    .line 1141
    .line 1142
    move-result v1

    .line 1143
    const/16 v15, 0x8

    .line 1144
    .line 1145
    if-eq v1, v15, :cond_45

    .line 1146
    .line 1147
    move-object v14, v13

    .line 1148
    :cond_45
    move-object v13, v6

    .line 1149
    goto/16 :goto_2f

    .line 1150
    .line 1151
    :cond_46
    move-object/from16 v2, p1

    .line 1152
    .line 1153
    iget-object v1, v10, Lu/e;->Q:[Lu/d;

    .line 1154
    .line 1155
    aget-object v1, v1, v16

    .line 1156
    .line 1157
    iget-object v3, v11, Lu/e;->Q:[Lu/d;

    .line 1158
    .line 1159
    aget-object v3, v3, v16

    .line 1160
    .line 1161
    iget-object v3, v3, Lu/d;->f:Lu/d;

    .line 1162
    .line 1163
    iget-object v4, v12, Lu/e;->Q:[Lu/d;

    .line 1164
    .line 1165
    add-int/lit8 v5, v16, 0x1

    .line 1166
    .line 1167
    aget-object v11, v4, v5

    .line 1168
    .line 1169
    iget-object v4, v0, Lu/e;->Q:[Lu/d;

    .line 1170
    .line 1171
    aget-object v4, v4, v5

    .line 1172
    .line 1173
    iget-object v13, v4, Lu/d;->f:Lu/d;

    .line 1174
    .line 1175
    const/4 v9, 0x5

    .line 1176
    if-eqz v3, :cond_47

    .line 1177
    .line 1178
    if-eq v10, v12, :cond_48

    .line 1179
    .line 1180
    iget-object v4, v1, Lu/d;->i:Lr/m;

    .line 1181
    .line 1182
    iget-object v3, v3, Lu/d;->i:Lr/m;

    .line 1183
    .line 1184
    invoke-virtual {v1}, Lu/d;->getMargin()I

    .line 1185
    .line 1186
    .line 1187
    move-result v1

    .line 1188
    invoke-virtual {v2, v4, v3, v1, v9}, Lr/f;->addEquality(Lr/m;Lr/m;II)Lr/c;

    .line 1189
    .line 1190
    .line 1191
    :cond_47
    move-object v1, v2

    .line 1192
    goto :goto_37

    .line 1193
    :cond_48
    if-eqz v13, :cond_47

    .line 1194
    .line 1195
    iget-object v2, v1, Lu/d;->i:Lr/m;

    .line 1196
    .line 1197
    iget-object v3, v3, Lu/d;->i:Lr/m;

    .line 1198
    .line 1199
    invoke-virtual {v1}, Lu/d;->getMargin()I

    .line 1200
    .line 1201
    .line 1202
    move-result v4

    .line 1203
    iget-object v6, v11, Lu/d;->i:Lr/m;

    .line 1204
    .line 1205
    iget-object v7, v13, Lu/d;->i:Lr/m;

    .line 1206
    .line 1207
    invoke-virtual {v11}, Lu/d;->getMargin()I

    .line 1208
    .line 1209
    .line 1210
    move-result v8

    .line 1211
    const/high16 v5, 0x3f000000    # 0.5f

    .line 1212
    .line 1213
    move-object/from16 v1, p1

    .line 1214
    .line 1215
    invoke-virtual/range {v1 .. v9}, Lr/f;->addCentering(Lr/m;Lr/m;IFLr/m;Lr/m;II)V

    .line 1216
    .line 1217
    .line 1218
    :goto_37
    if-eqz v13, :cond_49

    .line 1219
    .line 1220
    if-eq v10, v12, :cond_49

    .line 1221
    .line 1222
    iget-object v2, v11, Lu/d;->i:Lr/m;

    .line 1223
    .line 1224
    iget-object v3, v13, Lu/d;->i:Lr/m;

    .line 1225
    .line 1226
    invoke-virtual {v11}, Lu/d;->getMargin()I

    .line 1227
    .line 1228
    .line 1229
    move-result v4

    .line 1230
    neg-int v4, v4

    .line 1231
    invoke-virtual {v1, v2, v3, v4, v9}, Lr/f;->addEquality(Lr/m;Lr/m;II)Lr/c;

    .line 1232
    .line 1233
    .line 1234
    :cond_49
    :goto_38
    if-nez v22, :cond_4a

    .line 1235
    .line 1236
    if-eqz v20, :cond_51

    .line 1237
    .line 1238
    :cond_4a
    if-eqz v10, :cond_51

    .line 1239
    .line 1240
    if-eq v10, v12, :cond_51

    .line 1241
    .line 1242
    iget-object v2, v10, Lu/e;->Q:[Lu/d;

    .line 1243
    .line 1244
    aget-object v3, v2, v16

    .line 1245
    .line 1246
    if-nez v12, :cond_4b

    .line 1247
    .line 1248
    move-object v6, v10

    .line 1249
    goto :goto_39

    .line 1250
    :cond_4b
    move-object v6, v12

    .line 1251
    :goto_39
    add-int/lit8 v4, v16, 0x1

    .line 1252
    .line 1253
    iget-object v5, v6, Lu/e;->Q:[Lu/d;

    .line 1254
    .line 1255
    aget-object v7, v5, v4

    .line 1256
    .line 1257
    iget-object v8, v3, Lu/d;->f:Lu/d;

    .line 1258
    .line 1259
    if-eqz v8, :cond_4c

    .line 1260
    .line 1261
    iget-object v8, v8, Lu/d;->i:Lr/m;

    .line 1262
    .line 1263
    goto :goto_3a

    .line 1264
    :cond_4c
    move-object/from16 v8, v26

    .line 1265
    .line 1266
    :goto_3a
    iget-object v9, v7, Lu/d;->f:Lu/d;

    .line 1267
    .line 1268
    if-eqz v9, :cond_4d

    .line 1269
    .line 1270
    iget-object v9, v9, Lu/d;->i:Lr/m;

    .line 1271
    .line 1272
    goto :goto_3b

    .line 1273
    :cond_4d
    move-object/from16 v9, v26

    .line 1274
    .line 1275
    :goto_3b
    if-eq v0, v6, :cond_4f

    .line 1276
    .line 1277
    iget-object v0, v0, Lu/e;->Q:[Lu/d;

    .line 1278
    .line 1279
    aget-object v0, v0, v4

    .line 1280
    .line 1281
    iget-object v0, v0, Lu/d;->f:Lu/d;

    .line 1282
    .line 1283
    if-eqz v0, :cond_4e

    .line 1284
    .line 1285
    iget-object v0, v0, Lu/d;->i:Lr/m;

    .line 1286
    .line 1287
    move-object/from16 v26, v0

    .line 1288
    .line 1289
    :cond_4e
    move-object/from16 v9, v26

    .line 1290
    .line 1291
    :cond_4f
    if-ne v10, v6, :cond_50

    .line 1292
    .line 1293
    aget-object v7, v2, v4

    .line 1294
    .line 1295
    :cond_50
    if-eqz v8, :cond_51

    .line 1296
    .line 1297
    if-eqz v9, :cond_51

    .line 1298
    .line 1299
    move v0, v4

    .line 1300
    invoke-virtual {v3}, Lu/d;->getMargin()I

    .line 1301
    .line 1302
    .line 1303
    move-result v4

    .line 1304
    aget-object v0, v5, v0

    .line 1305
    .line 1306
    invoke-virtual {v0}, Lu/d;->getMargin()I

    .line 1307
    .line 1308
    .line 1309
    move-result v0

    .line 1310
    iget-object v2, v3, Lu/d;->i:Lr/m;

    .line 1311
    .line 1312
    iget-object v7, v7, Lu/d;->i:Lr/m;

    .line 1313
    .line 1314
    move-object v6, v9

    .line 1315
    const/4 v9, 0x5

    .line 1316
    const/high16 v5, 0x3f000000    # 0.5f

    .line 1317
    .line 1318
    move-object v3, v8

    .line 1319
    move v8, v0

    .line 1320
    invoke-virtual/range {v1 .. v9}, Lr/f;->addCentering(Lr/m;Lr/m;IFLr/m;Lr/m;II)V

    .line 1321
    .line 1322
    .line 1323
    :cond_51
    :goto_3c
    add-int/lit8 v2, v19, 0x1

    .line 1324
    .line 1325
    move-object/from16 v0, p0

    .line 1326
    .line 1327
    move-object/from16 v1, p1

    .line 1328
    .line 1329
    move-object/from16 v10, p2

    .line 1330
    .line 1331
    move/from16 v11, p3

    .line 1332
    .line 1333
    move/from16 v14, v31

    .line 1334
    .line 1335
    move-object/from16 v15, v32

    .line 1336
    .line 1337
    goto/16 :goto_2

    .line 1338
    .line 1339
    :cond_52
    return-void
.end method
