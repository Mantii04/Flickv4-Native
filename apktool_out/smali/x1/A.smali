.class public final Lx1/A;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public b:Landroidx/transition/e;

.field public e:Landroid/view/ViewGroup;


# virtual methods
.method public onPreDraw()Z
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lx1/A;->e:Landroid/view/ViewGroup;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {v2, v0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 13
    .line 14
    .line 15
    sget-object v1, Lx1/B;->c:Ljava/util/ArrayList;

    .line 16
    .line 17
    iget-object v3, v0, Lx1/A;->e:Landroid/view/ViewGroup;

    .line 18
    .line 19
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const/4 v8, 0x1

    .line 24
    if-nez v1, :cond_0

    .line 25
    .line 26
    return v8

    .line 27
    :cond_0
    invoke-static {}, Lx1/B;->a()Lp/g;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v1, v3}, Lp/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Ljava/util/ArrayList;

    .line 36
    .line 37
    if-nez v2, :cond_2

    .line 38
    .line 39
    new-instance v2, Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v3, v2}, Lp/q;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    :cond_1
    const/4 v5, 0x0

    .line 48
    goto :goto_0

    .line 49
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    if-lez v5, :cond_1

    .line 54
    .line 55
    new-instance v5, Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 58
    .line 59
    .line 60
    :goto_0
    iget-object v6, v0, Lx1/A;->b:Landroidx/transition/e;

    .line 61
    .line 62
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    new-instance v2, Lx1/z;

    .line 66
    .line 67
    invoke-direct {v2, v0, v1}, Lx1/z;-><init>(Lx1/A;Lp/g;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v6, v2}, Landroidx/transition/e;->addListener(Lx1/w;)Landroidx/transition/e;

    .line 71
    .line 72
    .line 73
    const/4 v1, 0x0

    .line 74
    invoke-virtual {v6, v3, v1}, Landroidx/transition/e;->d(Landroid/view/ViewGroup;Z)V

    .line 75
    .line 76
    .line 77
    if-eqz v5, :cond_3

    .line 78
    .line 79
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 84
    .line 85
    .line 86
    move-result v5

    .line 87
    if-eqz v5, :cond_3

    .line 88
    .line 89
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    check-cast v5, Landroidx/transition/e;

    .line 94
    .line 95
    invoke-virtual {v5, v3}, Landroidx/transition/e;->resume(Landroid/view/View;)V

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    .line 100
    .line 101
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .line 103
    .line 104
    iput-object v2, v6, Landroidx/transition/e;->t:Ljava/util/ArrayList;

    .line 105
    .line 106
    new-instance v2, Ljava/util/ArrayList;

    .line 107
    .line 108
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .line 110
    .line 111
    iput-object v2, v6, Landroidx/transition/e;->u:Ljava/util/ArrayList;

    .line 112
    .line 113
    iget-object v2, v6, Landroidx/transition/e;->p:Landroidx/fragment/app/t0;

    .line 114
    .line 115
    iget-object v5, v6, Landroidx/transition/e;->q:Landroidx/fragment/app/t0;

    .line 116
    .line 117
    new-instance v7, Lp/g;

    .line 118
    .line 119
    iget-object v9, v2, Landroidx/fragment/app/t0;->a:Ljava/lang/Object;

    .line 120
    .line 121
    check-cast v9, Lp/g;

    .line 122
    .line 123
    invoke-direct {v7, v9}, Lp/g;-><init>(Lp/q;)V

    .line 124
    .line 125
    .line 126
    new-instance v9, Lp/g;

    .line 127
    .line 128
    iget-object v10, v5, Landroidx/fragment/app/t0;->a:Ljava/lang/Object;

    .line 129
    .line 130
    check-cast v10, Lp/g;

    .line 131
    .line 132
    invoke-direct {v9, v10}, Lp/g;-><init>(Lp/q;)V

    .line 133
    .line 134
    .line 135
    move v10, v1

    .line 136
    :goto_2
    iget-object v11, v6, Landroidx/transition/e;->s:[I

    .line 137
    .line 138
    array-length v12, v11

    .line 139
    if-ge v10, v12, :cond_f

    .line 140
    .line 141
    aget v11, v11, v10

    .line 142
    .line 143
    if-eq v11, v8, :cond_c

    .line 144
    .line 145
    const/4 v12, 0x2

    .line 146
    if-eq v11, v12, :cond_a

    .line 147
    .line 148
    const/4 v12, 0x3

    .line 149
    if-eq v11, v12, :cond_8

    .line 150
    .line 151
    const/4 v12, 0x4

    .line 152
    if-eq v11, v12, :cond_4

    .line 153
    .line 154
    move-object v1, v2

    .line 155
    move/from16 v17, v8

    .line 156
    .line 157
    goto/16 :goto_9

    .line 158
    .line 159
    :cond_4
    iget-object v11, v2, Landroidx/fragment/app/t0;->c:Ljava/lang/Cloneable;

    .line 160
    .line 161
    check-cast v11, Lp/n;

    .line 162
    .line 163
    invoke-virtual {v11}, Lp/n;->size()I

    .line 164
    .line 165
    .line 166
    move-result v12

    .line 167
    move v13, v1

    .line 168
    :goto_3
    if-ge v13, v12, :cond_7

    .line 169
    .line 170
    invoke-virtual {v11, v13}, Lp/n;->valueAt(I)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v14

    .line 174
    check-cast v14, Landroid/view/View;

    .line 175
    .line 176
    if-eqz v14, :cond_6

    .line 177
    .line 178
    invoke-virtual {v6, v14}, Landroidx/transition/e;->i(Landroid/view/View;)Z

    .line 179
    .line 180
    .line 181
    move-result v15

    .line 182
    if-eqz v15, :cond_6

    .line 183
    .line 184
    move-object/from16 v16, v2

    .line 185
    .line 186
    invoke-virtual {v11, v13}, Lp/n;->keyAt(I)J

    .line 187
    .line 188
    .line 189
    move-result-wide v1

    .line 190
    iget-object v15, v5, Landroidx/fragment/app/t0;->c:Ljava/lang/Cloneable;

    .line 191
    .line 192
    check-cast v15, Lp/n;

    .line 193
    .line 194
    invoke-virtual {v15, v1, v2}, Lp/n;->get(J)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    check-cast v1, Landroid/view/View;

    .line 199
    .line 200
    if-eqz v1, :cond_5

    .line 201
    .line 202
    invoke-virtual {v6, v1}, Landroidx/transition/e;->i(Landroid/view/View;)Z

    .line 203
    .line 204
    .line 205
    move-result v2

    .line 206
    if-eqz v2, :cond_5

    .line 207
    .line 208
    invoke-virtual {v7, v14}, Lp/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v2

    .line 212
    check-cast v2, Lx1/I;

    .line 213
    .line 214
    invoke-virtual {v9, v1}, Lp/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v15

    .line 218
    check-cast v15, Lx1/I;

    .line 219
    .line 220
    if-eqz v2, :cond_5

    .line 221
    .line 222
    if-eqz v15, :cond_5

    .line 223
    .line 224
    move/from16 v17, v8

    .line 225
    .line 226
    iget-object v8, v6, Landroidx/transition/e;->t:Ljava/util/ArrayList;

    .line 227
    .line 228
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    iget-object v2, v6, Landroidx/transition/e;->u:Ljava/util/ArrayList;

    .line 232
    .line 233
    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    invoke-virtual {v7, v14}, Lp/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    invoke-virtual {v9, v1}, Lp/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    goto :goto_5

    .line 243
    :cond_5
    :goto_4
    move/from16 v17, v8

    .line 244
    .line 245
    goto :goto_5

    .line 246
    :cond_6
    move-object/from16 v16, v2

    .line 247
    .line 248
    goto :goto_4

    .line 249
    :goto_5
    add-int/lit8 v13, v13, 0x1

    .line 250
    .line 251
    move-object/from16 v2, v16

    .line 252
    .line 253
    move/from16 v8, v17

    .line 254
    .line 255
    const/4 v1, 0x0

    .line 256
    goto :goto_3

    .line 257
    :cond_7
    move/from16 v17, v8

    .line 258
    .line 259
    move-object v1, v2

    .line 260
    goto/16 :goto_9

    .line 261
    .line 262
    :cond_8
    move-object v1, v2

    .line 263
    move/from16 v17, v8

    .line 264
    .line 265
    iget-object v2, v1, Landroidx/fragment/app/t0;->b:Ljava/lang/Cloneable;

    .line 266
    .line 267
    check-cast v2, Landroid/util/SparseArray;

    .line 268
    .line 269
    iget-object v8, v5, Landroidx/fragment/app/t0;->b:Ljava/lang/Cloneable;

    .line 270
    .line 271
    check-cast v8, Landroid/util/SparseArray;

    .line 272
    .line 273
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 274
    .line 275
    .line 276
    move-result v11

    .line 277
    const/4 v12, 0x0

    .line 278
    :goto_6
    if-ge v12, v11, :cond_e

    .line 279
    .line 280
    invoke-virtual {v2, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    move-result-object v13

    .line 284
    check-cast v13, Landroid/view/View;

    .line 285
    .line 286
    if-eqz v13, :cond_9

    .line 287
    .line 288
    invoke-virtual {v6, v13}, Landroidx/transition/e;->i(Landroid/view/View;)Z

    .line 289
    .line 290
    .line 291
    move-result v14

    .line 292
    if-eqz v14, :cond_9

    .line 293
    .line 294
    invoke-virtual {v2, v12}, Landroid/util/SparseArray;->keyAt(I)I

    .line 295
    .line 296
    .line 297
    move-result v14

    .line 298
    invoke-virtual {v8, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    move-result-object v14

    .line 302
    check-cast v14, Landroid/view/View;

    .line 303
    .line 304
    if-eqz v14, :cond_9

    .line 305
    .line 306
    invoke-virtual {v6, v14}, Landroidx/transition/e;->i(Landroid/view/View;)Z

    .line 307
    .line 308
    .line 309
    move-result v15

    .line 310
    if-eqz v15, :cond_9

    .line 311
    .line 312
    invoke-virtual {v7, v13}, Lp/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    .line 314
    .line 315
    move-result-object v15

    .line 316
    check-cast v15, Lx1/I;

    .line 317
    .line 318
    invoke-virtual {v9, v14}, Lp/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    move-result-object v16

    .line 322
    move-object/from16 v4, v16

    .line 323
    .line 324
    check-cast v4, Lx1/I;

    .line 325
    .line 326
    if-eqz v15, :cond_9

    .line 327
    .line 328
    if-eqz v4, :cond_9

    .line 329
    .line 330
    iget-object v0, v6, Landroidx/transition/e;->t:Ljava/util/ArrayList;

    .line 331
    .line 332
    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    .line 334
    .line 335
    iget-object v0, v6, Landroidx/transition/e;->u:Ljava/util/ArrayList;

    .line 336
    .line 337
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    .line 339
    .line 340
    invoke-virtual {v7, v13}, Lp/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    .line 342
    .line 343
    invoke-virtual {v9, v14}, Lp/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    .line 345
    .line 346
    :cond_9
    add-int/lit8 v12, v12, 0x1

    .line 347
    .line 348
    move-object/from16 v0, p0

    .line 349
    .line 350
    goto :goto_6

    .line 351
    :cond_a
    move-object v1, v2

    .line 352
    move/from16 v17, v8

    .line 353
    .line 354
    iget-object v0, v1, Landroidx/fragment/app/t0;->d:Ljava/lang/Object;

    .line 355
    .line 356
    check-cast v0, Lp/g;

    .line 357
    .line 358
    iget-object v2, v5, Landroidx/fragment/app/t0;->d:Ljava/lang/Object;

    .line 359
    .line 360
    check-cast v2, Lp/g;

    .line 361
    .line 362
    invoke-virtual {v0}, Lp/q;->size()I

    .line 363
    .line 364
    .line 365
    move-result v4

    .line 366
    const/4 v8, 0x0

    .line 367
    :goto_7
    if-ge v8, v4, :cond_e

    .line 368
    .line 369
    invoke-virtual {v0, v8}, Lp/q;->valueAt(I)Ljava/lang/Object;

    .line 370
    .line 371
    .line 372
    move-result-object v11

    .line 373
    check-cast v11, Landroid/view/View;

    .line 374
    .line 375
    if-eqz v11, :cond_b

    .line 376
    .line 377
    invoke-virtual {v6, v11}, Landroidx/transition/e;->i(Landroid/view/View;)Z

    .line 378
    .line 379
    .line 380
    move-result v12

    .line 381
    if-eqz v12, :cond_b

    .line 382
    .line 383
    invoke-virtual {v0, v8}, Lp/q;->keyAt(I)Ljava/lang/Object;

    .line 384
    .line 385
    .line 386
    move-result-object v12

    .line 387
    invoke-virtual {v2, v12}, Lp/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    .line 389
    .line 390
    move-result-object v12

    .line 391
    check-cast v12, Landroid/view/View;

    .line 392
    .line 393
    if-eqz v12, :cond_b

    .line 394
    .line 395
    invoke-virtual {v6, v12}, Landroidx/transition/e;->i(Landroid/view/View;)Z

    .line 396
    .line 397
    .line 398
    move-result v13

    .line 399
    if-eqz v13, :cond_b

    .line 400
    .line 401
    invoke-virtual {v7, v11}, Lp/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    .line 403
    .line 404
    move-result-object v13

    .line 405
    check-cast v13, Lx1/I;

    .line 406
    .line 407
    invoke-virtual {v9, v12}, Lp/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    .line 409
    .line 410
    move-result-object v14

    .line 411
    check-cast v14, Lx1/I;

    .line 412
    .line 413
    if-eqz v13, :cond_b

    .line 414
    .line 415
    if-eqz v14, :cond_b

    .line 416
    .line 417
    iget-object v15, v6, Landroidx/transition/e;->t:Ljava/util/ArrayList;

    .line 418
    .line 419
    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 420
    .line 421
    .line 422
    iget-object v13, v6, Landroidx/transition/e;->u:Ljava/util/ArrayList;

    .line 423
    .line 424
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 425
    .line 426
    .line 427
    invoke-virtual {v7, v11}, Lp/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    .line 429
    .line 430
    invoke-virtual {v9, v12}, Lp/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    .line 432
    .line 433
    :cond_b
    add-int/lit8 v8, v8, 0x1

    .line 434
    .line 435
    goto :goto_7

    .line 436
    :cond_c
    move-object v1, v2

    .line 437
    move/from16 v17, v8

    .line 438
    .line 439
    invoke-virtual {v7}, Lp/q;->size()I

    .line 440
    .line 441
    .line 442
    move-result v0

    .line 443
    add-int/lit8 v0, v0, -0x1

    .line 444
    .line 445
    :goto_8
    if-ltz v0, :cond_e

    .line 446
    .line 447
    invoke-virtual {v7, v0}, Lp/q;->keyAt(I)Ljava/lang/Object;

    .line 448
    .line 449
    .line 450
    move-result-object v2

    .line 451
    check-cast v2, Landroid/view/View;

    .line 452
    .line 453
    if-eqz v2, :cond_d

    .line 454
    .line 455
    invoke-virtual {v6, v2}, Landroidx/transition/e;->i(Landroid/view/View;)Z

    .line 456
    .line 457
    .line 458
    move-result v4

    .line 459
    if-eqz v4, :cond_d

    .line 460
    .line 461
    invoke-virtual {v9, v2}, Lp/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    .line 463
    .line 464
    move-result-object v2

    .line 465
    check-cast v2, Lx1/I;

    .line 466
    .line 467
    if-eqz v2, :cond_d

    .line 468
    .line 469
    iget-object v4, v2, Lx1/I;->b:Landroid/view/View;

    .line 470
    .line 471
    invoke-virtual {v6, v4}, Landroidx/transition/e;->i(Landroid/view/View;)Z

    .line 472
    .line 473
    .line 474
    move-result v4

    .line 475
    if-eqz v4, :cond_d

    .line 476
    .line 477
    invoke-virtual {v7, v0}, Lp/q;->removeAt(I)Ljava/lang/Object;

    .line 478
    .line 479
    .line 480
    move-result-object v4

    .line 481
    check-cast v4, Lx1/I;

    .line 482
    .line 483
    iget-object v8, v6, Landroidx/transition/e;->t:Ljava/util/ArrayList;

    .line 484
    .line 485
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 486
    .line 487
    .line 488
    iget-object v4, v6, Landroidx/transition/e;->u:Ljava/util/ArrayList;

    .line 489
    .line 490
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 491
    .line 492
    .line 493
    :cond_d
    add-int/lit8 v0, v0, -0x1

    .line 494
    .line 495
    goto :goto_8

    .line 496
    :cond_e
    :goto_9
    add-int/lit8 v10, v10, 0x1

    .line 497
    .line 498
    move-object/from16 v0, p0

    .line 499
    .line 500
    move-object v2, v1

    .line 501
    move/from16 v8, v17

    .line 502
    .line 503
    const/4 v1, 0x0

    .line 504
    goto/16 :goto_2

    .line 505
    .line 506
    :cond_f
    move/from16 v17, v8

    .line 507
    .line 508
    const/4 v0, 0x0

    .line 509
    :goto_a
    invoke-virtual {v7}, Lp/q;->size()I

    .line 510
    .line 511
    .line 512
    move-result v1

    .line 513
    if-ge v0, v1, :cond_11

    .line 514
    .line 515
    invoke-virtual {v7, v0}, Lp/q;->valueAt(I)Ljava/lang/Object;

    .line 516
    .line 517
    .line 518
    move-result-object v1

    .line 519
    check-cast v1, Lx1/I;

    .line 520
    .line 521
    iget-object v2, v1, Lx1/I;->b:Landroid/view/View;

    .line 522
    .line 523
    invoke-virtual {v6, v2}, Landroidx/transition/e;->i(Landroid/view/View;)Z

    .line 524
    .line 525
    .line 526
    move-result v2

    .line 527
    if-eqz v2, :cond_10

    .line 528
    .line 529
    iget-object v2, v6, Landroidx/transition/e;->t:Ljava/util/ArrayList;

    .line 530
    .line 531
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 532
    .line 533
    .line 534
    iget-object v1, v6, Landroidx/transition/e;->u:Ljava/util/ArrayList;

    .line 535
    .line 536
    const/4 v2, 0x0

    .line 537
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 538
    .line 539
    .line 540
    :cond_10
    add-int/lit8 v0, v0, 0x1

    .line 541
    .line 542
    goto :goto_a

    .line 543
    :cond_11
    const/4 v1, 0x0

    .line 544
    :goto_b
    invoke-virtual {v9}, Lp/q;->size()I

    .line 545
    .line 546
    .line 547
    move-result v0

    .line 548
    if-ge v1, v0, :cond_13

    .line 549
    .line 550
    invoke-virtual {v9, v1}, Lp/q;->valueAt(I)Ljava/lang/Object;

    .line 551
    .line 552
    .line 553
    move-result-object v0

    .line 554
    check-cast v0, Lx1/I;

    .line 555
    .line 556
    iget-object v2, v0, Lx1/I;->b:Landroid/view/View;

    .line 557
    .line 558
    invoke-virtual {v6, v2}, Landroidx/transition/e;->i(Landroid/view/View;)Z

    .line 559
    .line 560
    .line 561
    move-result v2

    .line 562
    if-eqz v2, :cond_12

    .line 563
    .line 564
    iget-object v2, v6, Landroidx/transition/e;->u:Ljava/util/ArrayList;

    .line 565
    .line 566
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 567
    .line 568
    .line 569
    iget-object v0, v6, Landroidx/transition/e;->t:Ljava/util/ArrayList;

    .line 570
    .line 571
    const/4 v2, 0x0

    .line 572
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 573
    .line 574
    .line 575
    goto :goto_c

    .line 576
    :cond_12
    const/4 v2, 0x0

    .line 577
    :goto_c
    add-int/lit8 v1, v1, 0x1

    .line 578
    .line 579
    goto :goto_b

    .line 580
    :cond_13
    invoke-static {}, Landroidx/transition/e;->h()Lp/g;

    .line 581
    .line 582
    .line 583
    move-result-object v0

    .line 584
    invoke-virtual {v0}, Lp/q;->size()I

    .line 585
    .line 586
    .line 587
    move-result v1

    .line 588
    invoke-virtual {v3}, Landroid/view/View;->getWindowId()Landroid/view/WindowId;

    .line 589
    .line 590
    .line 591
    move-result-object v2

    .line 592
    add-int/lit8 v1, v1, -0x1

    .line 593
    .line 594
    :goto_d
    if-ltz v1, :cond_19

    .line 595
    .line 596
    invoke-virtual {v0, v1}, Lp/q;->keyAt(I)Ljava/lang/Object;

    .line 597
    .line 598
    .line 599
    move-result-object v4

    .line 600
    check-cast v4, Landroid/animation/Animator;

    .line 601
    .line 602
    if-eqz v4, :cond_18

    .line 603
    .line 604
    invoke-virtual {v0, v4}, Lp/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    .line 606
    .line 607
    move-result-object v5

    .line 608
    check-cast v5, Lx1/t;

    .line 609
    .line 610
    if-eqz v5, :cond_18

    .line 611
    .line 612
    iget-object v7, v5, Lx1/t;->a:Landroid/view/View;

    .line 613
    .line 614
    if-eqz v7, :cond_18

    .line 615
    .line 616
    iget-object v8, v5, Lx1/t;->d:Landroid/view/WindowId;

    .line 617
    .line 618
    invoke-virtual {v2, v8}, Landroid/view/WindowId;->equals(Ljava/lang/Object;)Z

    .line 619
    .line 620
    .line 621
    move-result v8

    .line 622
    if-eqz v8, :cond_18

    .line 623
    .line 624
    move/from16 v8, v17

    .line 625
    .line 626
    invoke-virtual {v6, v7, v8}, Landroidx/transition/e;->getTransitionValues(Landroid/view/View;Z)Lx1/I;

    .line 627
    .line 628
    .line 629
    move-result-object v9

    .line 630
    invoke-virtual {v6, v7, v8}, Landroidx/transition/e;->g(Landroid/view/View;Z)Lx1/I;

    .line 631
    .line 632
    .line 633
    move-result-object v10

    .line 634
    if-nez v9, :cond_14

    .line 635
    .line 636
    if-nez v10, :cond_14

    .line 637
    .line 638
    iget-object v8, v6, Landroidx/transition/e;->q:Landroidx/fragment/app/t0;

    .line 639
    .line 640
    iget-object v8, v8, Landroidx/fragment/app/t0;->a:Ljava/lang/Object;

    .line 641
    .line 642
    check-cast v8, Lp/g;

    .line 643
    .line 644
    invoke-virtual {v8, v7}, Lp/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    .line 646
    .line 647
    move-result-object v7

    .line 648
    move-object v10, v7

    .line 649
    check-cast v10, Lx1/I;

    .line 650
    .line 651
    :cond_14
    if-nez v9, :cond_15

    .line 652
    .line 653
    if-eqz v10, :cond_18

    .line 654
    .line 655
    :cond_15
    iget-object v7, v5, Lx1/t;->c:Lx1/I;

    .line 656
    .line 657
    iget-object v5, v5, Lx1/t;->e:Landroidx/transition/e;

    .line 658
    .line 659
    invoke-virtual {v5, v7, v10}, Landroidx/transition/e;->isTransitionRequired(Lx1/I;Lx1/I;)Z

    .line 660
    .line 661
    .line 662
    move-result v7

    .line 663
    if-eqz v7, :cond_18

    .line 664
    .line 665
    invoke-virtual {v5}, Landroidx/transition/e;->getRootTransition()Landroidx/transition/e;

    .line 666
    .line 667
    .line 668
    move-result-object v5

    .line 669
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 670
    .line 671
    .line 672
    invoke-virtual {v4}, Landroid/animation/Animator;->isRunning()Z

    .line 673
    .line 674
    .line 675
    move-result v5

    .line 676
    if-nez v5, :cond_17

    .line 677
    .line 678
    invoke-virtual {v4}, Landroid/animation/Animator;->isStarted()Z

    .line 679
    .line 680
    .line 681
    move-result v5

    .line 682
    if-eqz v5, :cond_16

    .line 683
    .line 684
    goto :goto_e

    .line 685
    :cond_16
    invoke-virtual {v0, v4}, Lp/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    .line 687
    .line 688
    goto :goto_f

    .line 689
    :cond_17
    :goto_e
    invoke-virtual {v4}, Landroid/animation/Animator;->cancel()V

    .line 690
    .line 691
    .line 692
    :cond_18
    :goto_f
    add-int/lit8 v1, v1, -0x1

    .line 693
    .line 694
    const/16 v17, 0x1

    .line 695
    .line 696
    goto :goto_d

    .line 697
    :cond_19
    iget-object v4, v6, Landroidx/transition/e;->p:Landroidx/fragment/app/t0;

    .line 698
    .line 699
    iget-object v5, v6, Landroidx/transition/e;->q:Landroidx/fragment/app/t0;

    .line 700
    .line 701
    iget-object v0, v6, Landroidx/transition/e;->t:Ljava/util/ArrayList;

    .line 702
    .line 703
    iget-object v7, v6, Landroidx/transition/e;->u:Ljava/util/ArrayList;

    .line 704
    .line 705
    move-object v2, v6

    .line 706
    move-object v6, v0

    .line 707
    invoke-virtual/range {v2 .. v7}, Landroidx/transition/e;->f(Landroid/view/ViewGroup;Landroidx/fragment/app/t0;Landroidx/fragment/app/t0;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 708
    .line 709
    .line 710
    invoke-virtual {v2}, Landroidx/transition/e;->runAnimators()V

    .line 711
    .line 712
    .line 713
    const/16 v17, 0x1

    .line 714
    .line 715
    return v17
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lx1/A;->e:Landroid/view/ViewGroup;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 11
    .line 12
    .line 13
    sget-object p1, Lx1/B;->c:Ljava/util/ArrayList;

    .line 14
    .line 15
    iget-object v0, p0, Lx1/A;->e:Landroid/view/ViewGroup;

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    invoke-static {}, Lx1/B;->a()Lp/g;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1, v0}, Lp/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Ljava/util/ArrayList;

    .line 29
    .line 30
    if-eqz p1, :cond_0

    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-lez v1, :cond_0

    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_0

    .line 47
    .line 48
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    check-cast v1, Landroidx/transition/e;

    .line 53
    .line 54
    invoke-virtual {v1, v0}, Landroidx/transition/e;->resume(Landroid/view/View;)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    iget-object p1, p0, Lx1/A;->b:Landroidx/transition/e;

    .line 59
    .line 60
    const/4 v0, 0x1

    .line 61
    invoke-virtual {p1, v0}, Landroidx/transition/e;->e(Z)V

    .line 62
    .line 63
    .line 64
    return-void
.end method
