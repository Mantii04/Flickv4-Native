.class public final LL1/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final f:Ljava/lang/String;


# instance fields
.field public final b:LC1/x;

.field public final e:LC1/o;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "EnqueueRunnable"

    .line 2
    .line 3
    invoke-static {v0}, LB1/t;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, LL1/e;->f:Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(LC1/x;)V
    .locals 1

    .line 1
    new-instance v0, LC1/o;

    invoke-direct {v0}, LC1/o;-><init>()V

    invoke-direct {p0, p1, v0}, LL1/e;-><init>(LC1/x;LC1/o;)V

    return-void
.end method

.method public constructor <init>(LC1/x;LC1/o;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, LL1/e;->b:LC1/x;

    .line 4
    iput-object p2, p0, LL1/e;->e:LC1/o;

    return-void
.end method

.method public static a(LC1/x;)Z
    .locals 24

    .line 1
    invoke-virtual/range {p0 .. p0}, LC1/x;->getParents()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, LL1/e;->f:Ljava/lang/String;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    move v3, v2

    .line 15
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    if-eqz v4, :cond_2

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    check-cast v4, LC1/x;

    .line 26
    .line 27
    invoke-virtual {v4}, LC1/x;->isEnqueued()Z

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    if-nez v5, :cond_0

    .line 32
    .line 33
    invoke-static {v4}, LL1/e;->a(LC1/x;)Z

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    or-int/2addr v3, v4

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    invoke-static {}, LB1/t;->get()LB1/t;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    new-instance v6, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string v7, "Already enqueued work ids ("

    .line 46
    .line 47
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    const-string v7, ", "

    .line 51
    .line 52
    invoke-virtual {v4}, LC1/x;->getIds()Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    invoke-static {v7, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v4, ")"

    .line 64
    .line 65
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    invoke-virtual {v5, v1, v4}, LB1/t;->warning(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_1
    move v3, v2

    .line 77
    :cond_2
    invoke-static/range {p0 .. p0}, LC1/x;->prerequisitesFor(LC1/x;)Ljava/util/Set;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual/range {p0 .. p0}, LC1/x;->getWorkManagerImpl()LC1/G;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    invoke-virtual/range {p0 .. p0}, LC1/x;->getWork()Ljava/util/List;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    new-array v6, v2, [Ljava/lang/String;

    .line 90
    .line 91
    invoke-interface {v0, v6}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    check-cast v0, [Ljava/lang/String;

    .line 96
    .line 97
    invoke-virtual/range {p0 .. p0}, LC1/x;->getName()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v6

    .line 101
    invoke-virtual/range {p0 .. p0}, LC1/x;->getExistingWorkPolicy()Landroidx/work/ExistingWorkPolicy;

    .line 102
    .line 103
    .line 104
    move-result-object v7

    .line 105
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 106
    .line 107
    .line 108
    move-result-wide v8

    .line 109
    invoke-virtual {v4}, LC1/G;->getWorkDatabase()Landroidx/work/impl/WorkDatabase;

    .line 110
    .line 111
    .line 112
    move-result-object v10

    .line 113
    if-eqz v0, :cond_3

    .line 114
    .line 115
    array-length v12, v0

    .line 116
    if-lez v12, :cond_3

    .line 117
    .line 118
    const/4 v12, 0x1

    .line 119
    goto :goto_1

    .line 120
    :cond_3
    move v12, v2

    .line 121
    :goto_1
    sget-object v13, Landroidx/work/WorkInfo$State;->f:Landroidx/work/WorkInfo$State;

    .line 122
    .line 123
    sget-object v14, Landroidx/work/WorkInfo$State;->n:Landroidx/work/WorkInfo$State;

    .line 124
    .line 125
    sget-object v15, Landroidx/work/WorkInfo$State;->j:Landroidx/work/WorkInfo$State;

    .line 126
    .line 127
    if-eqz v12, :cond_a

    .line 128
    .line 129
    array-length v11, v0

    .line 130
    move/from16 v17, v2

    .line 131
    .line 132
    move/from16 v18, v17

    .line 133
    .line 134
    const/16 v16, 0x1

    .line 135
    .line 136
    :goto_2
    if-ge v2, v11, :cond_9

    .line 137
    .line 138
    move/from16 v19, v2

    .line 139
    .line 140
    aget-object v2, v0, v19

    .line 141
    .line 142
    invoke-virtual {v10}, Landroidx/work/impl/WorkDatabase;->workSpecDao()LK1/F;

    .line 143
    .line 144
    .line 145
    move-result-object v20

    .line 146
    move/from16 v21, v3

    .line 147
    .line 148
    move-object/from16 v3, v20

    .line 149
    .line 150
    check-cast v3, LK1/U;

    .line 151
    .line 152
    invoke-virtual {v3, v2}, LK1/U;->getWorkSpec(Ljava/lang/String;)LK1/E;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    if-nez v3, :cond_5

    .line 157
    .line 158
    invoke-static {}, LB1/t;->get()LB1/t;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    new-instance v3, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    const-string v4, "Prerequisite "

    .line 165
    .line 166
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    const-string v2, " doesn\'t exist; not enqueuing"

    .line 173
    .line 174
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    invoke-virtual {v0, v1, v2}, LB1/t;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    :cond_4
    :goto_3
    const/4 v2, 0x0

    .line 185
    goto/16 :goto_13

    .line 186
    .line 187
    :cond_5
    iget-object v2, v3, LK1/E;->b:Landroidx/work/WorkInfo$State;

    .line 188
    .line 189
    if-ne v2, v13, :cond_6

    .line 190
    .line 191
    const/4 v3, 0x1

    .line 192
    goto :goto_4

    .line 193
    :cond_6
    const/4 v3, 0x0

    .line 194
    :goto_4
    and-int v16, v16, v3

    .line 195
    .line 196
    if-ne v2, v15, :cond_7

    .line 197
    .line 198
    const/16 v18, 0x1

    .line 199
    .line 200
    goto :goto_5

    .line 201
    :cond_7
    if-ne v2, v14, :cond_8

    .line 202
    .line 203
    const/16 v17, 0x1

    .line 204
    .line 205
    :cond_8
    :goto_5
    add-int/lit8 v2, v19, 0x1

    .line 206
    .line 207
    move/from16 v3, v21

    .line 208
    .line 209
    goto :goto_2

    .line 210
    :cond_9
    :goto_6
    move/from16 v21, v3

    .line 211
    .line 212
    goto :goto_7

    .line 213
    :cond_a
    const/16 v16, 0x1

    .line 214
    .line 215
    const/16 v17, 0x0

    .line 216
    .line 217
    const/16 v18, 0x0

    .line 218
    .line 219
    goto :goto_6

    .line 220
    :goto_7
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 221
    .line 222
    .line 223
    move-result v1

    .line 224
    sget-object v2, Landroidx/work/WorkInfo$State;->b:Landroidx/work/WorkInfo$State;

    .line 225
    .line 226
    if-nez v1, :cond_19

    .line 227
    .line 228
    if-nez v12, :cond_19

    .line 229
    .line 230
    invoke-virtual {v10}, Landroidx/work/impl/WorkDatabase;->workSpecDao()LK1/F;

    .line 231
    .line 232
    .line 233
    move-result-object v3

    .line 234
    check-cast v3, LK1/U;

    .line 235
    .line 236
    invoke-virtual {v3, v6}, LK1/U;->getWorkSpecIdAndStatesForName(Ljava/lang/String;)Ljava/util/List;

    .line 237
    .line 238
    .line 239
    move-result-object v3

    .line 240
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 241
    .line 242
    .line 243
    move-result v11

    .line 244
    if-nez v11, :cond_19

    .line 245
    .line 246
    sget-object v11, Landroidx/work/ExistingWorkPolicy;->f:Landroidx/work/ExistingWorkPolicy;

    .line 247
    .line 248
    move/from16 v19, v1

    .line 249
    .line 250
    sget-object v1, Landroidx/work/ExistingWorkPolicy;->j:Landroidx/work/ExistingWorkPolicy;

    .line 251
    .line 252
    if-eq v7, v11, :cond_b

    .line 253
    .line 254
    if-ne v7, v1, :cond_c

    .line 255
    .line 256
    :cond_b
    const/4 v11, 0x0

    .line 257
    goto :goto_9

    .line 258
    :cond_c
    sget-object v1, Landroidx/work/ExistingWorkPolicy;->e:Landroidx/work/ExistingWorkPolicy;

    .line 259
    .line 260
    if-ne v7, v1, :cond_e

    .line 261
    .line 262
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 263
    .line 264
    .line 265
    move-result-object v1

    .line 266
    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 267
    .line 268
    .line 269
    move-result v7

    .line 270
    if-eqz v7, :cond_e

    .line 271
    .line 272
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object v7

    .line 276
    check-cast v7, LK1/D;

    .line 277
    .line 278
    iget-object v7, v7, LK1/D;->b:Landroidx/work/WorkInfo$State;

    .line 279
    .line 280
    if-eq v7, v2, :cond_4

    .line 281
    .line 282
    sget-object v11, Landroidx/work/WorkInfo$State;->e:Landroidx/work/WorkInfo$State;

    .line 283
    .line 284
    if-ne v7, v11, :cond_d

    .line 285
    .line 286
    goto :goto_3

    .line 287
    :cond_e
    const/4 v11, 0x0

    .line 288
    invoke-static {v6, v4, v11}, LL1/d;->forName(Ljava/lang/String;LC1/G;Z)LL1/d;

    .line 289
    .line 290
    .line 291
    move-result-object v1

    .line 292
    invoke-virtual {v1}, LL1/d;->run()V

    .line 293
    .line 294
    .line 295
    invoke-virtual {v10}, Landroidx/work/impl/WorkDatabase;->workSpecDao()LK1/F;

    .line 296
    .line 297
    .line 298
    move-result-object v1

    .line 299
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 300
    .line 301
    .line 302
    move-result-object v3

    .line 303
    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 304
    .line 305
    .line 306
    move-result v7

    .line 307
    if-eqz v7, :cond_f

    .line 308
    .line 309
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 310
    .line 311
    .line 312
    move-result-object v7

    .line 313
    check-cast v7, LK1/D;

    .line 314
    .line 315
    iget-object v7, v7, LK1/D;->a:Ljava/lang/String;

    .line 316
    .line 317
    move-object v13, v1

    .line 318
    check-cast v13, LK1/U;

    .line 319
    .line 320
    invoke-virtual {v13, v7}, LK1/U;->delete(Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    goto :goto_8

    .line 324
    :cond_f
    move-object/from16 v20, v4

    .line 325
    .line 326
    move-object/from16 v23, v5

    .line 327
    .line 328
    const/4 v1, 0x1

    .line 329
    goto/16 :goto_f

    .line 330
    .line 331
    :goto_9
    invoke-virtual {v10}, Landroidx/work/impl/WorkDatabase;->dependencyDao()LK1/b;

    .line 332
    .line 333
    .line 334
    move-result-object v12

    .line 335
    new-instance v11, Ljava/util/ArrayList;

    .line 336
    .line 337
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 338
    .line 339
    .line 340
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 341
    .line 342
    .line 343
    move-result-object v3

    .line 344
    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 345
    .line 346
    .line 347
    move-result v20

    .line 348
    if-eqz v20, :cond_14

    .line 349
    .line 350
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 351
    .line 352
    .line 353
    move-result-object v20

    .line 354
    move-object/from16 v22, v3

    .line 355
    .line 356
    move-object/from16 v3, v20

    .line 357
    .line 358
    check-cast v3, LK1/D;

    .line 359
    .line 360
    move-object/from16 v20, v4

    .line 361
    .line 362
    iget-object v4, v3, LK1/D;->a:Ljava/lang/String;

    .line 363
    .line 364
    move-object/from16 v23, v5

    .line 365
    .line 366
    move-object v5, v12

    .line 367
    check-cast v5, LK1/d;

    .line 368
    .line 369
    invoke-virtual {v5, v4}, LK1/d;->hasDependents(Ljava/lang/String;)Z

    .line 370
    .line 371
    .line 372
    move-result v4

    .line 373
    if-nez v4, :cond_13

    .line 374
    .line 375
    iget-object v4, v3, LK1/D;->b:Landroidx/work/WorkInfo$State;

    .line 376
    .line 377
    if-ne v4, v13, :cond_10

    .line 378
    .line 379
    const/4 v5, 0x1

    .line 380
    goto :goto_b

    .line 381
    :cond_10
    const/4 v5, 0x0

    .line 382
    :goto_b
    and-int v5, v16, v5

    .line 383
    .line 384
    if-ne v4, v15, :cond_11

    .line 385
    .line 386
    const/16 v18, 0x1

    .line 387
    .line 388
    goto :goto_c

    .line 389
    :cond_11
    if-ne v4, v14, :cond_12

    .line 390
    .line 391
    const/16 v17, 0x1

    .line 392
    .line 393
    :cond_12
    :goto_c
    iget-object v3, v3, LK1/D;->a:Ljava/lang/String;

    .line 394
    .line 395
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 396
    .line 397
    .line 398
    move/from16 v16, v5

    .line 399
    .line 400
    :cond_13
    move-object/from16 v4, v20

    .line 401
    .line 402
    move-object/from16 v3, v22

    .line 403
    .line 404
    move-object/from16 v5, v23

    .line 405
    .line 406
    goto :goto_a

    .line 407
    :cond_14
    move-object/from16 v20, v4

    .line 408
    .line 409
    move-object/from16 v23, v5

    .line 410
    .line 411
    if-ne v7, v1, :cond_17

    .line 412
    .line 413
    if-nez v17, :cond_15

    .line 414
    .line 415
    if-eqz v18, :cond_17

    .line 416
    .line 417
    :cond_15
    invoke-virtual {v10}, Landroidx/work/impl/WorkDatabase;->workSpecDao()LK1/F;

    .line 418
    .line 419
    .line 420
    move-result-object v1

    .line 421
    check-cast v1, LK1/U;

    .line 422
    .line 423
    invoke-virtual {v1, v6}, LK1/U;->getWorkSpecIdAndStatesForName(Ljava/lang/String;)Ljava/util/List;

    .line 424
    .line 425
    .line 426
    move-result-object v3

    .line 427
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 428
    .line 429
    .line 430
    move-result-object v3

    .line 431
    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 432
    .line 433
    .line 434
    move-result v4

    .line 435
    if-eqz v4, :cond_16

    .line 436
    .line 437
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 438
    .line 439
    .line 440
    move-result-object v4

    .line 441
    check-cast v4, LK1/D;

    .line 442
    .line 443
    iget-object v4, v4, LK1/D;->a:Ljava/lang/String;

    .line 444
    .line 445
    invoke-virtual {v1, v4}, LK1/U;->delete(Ljava/lang/String;)V

    .line 446
    .line 447
    .line 448
    goto :goto_d

    .line 449
    :cond_16
    sget-object v11, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 450
    .line 451
    const/16 v17, 0x0

    .line 452
    .line 453
    const/16 v18, 0x0

    .line 454
    .line 455
    :cond_17
    invoke-interface {v11, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 456
    .line 457
    .line 458
    move-result-object v0

    .line 459
    check-cast v0, [Ljava/lang/String;

    .line 460
    .line 461
    array-length v1, v0

    .line 462
    if-lez v1, :cond_18

    .line 463
    .line 464
    const/4 v12, 0x1

    .line 465
    goto :goto_e

    .line 466
    :cond_18
    const/4 v12, 0x0

    .line 467
    :goto_e
    const/4 v1, 0x0

    .line 468
    goto :goto_f

    .line 469
    :cond_19
    move/from16 v19, v1

    .line 470
    .line 471
    move-object/from16 v20, v4

    .line 472
    .line 473
    move-object/from16 v23, v5

    .line 474
    .line 475
    goto :goto_e

    .line 476
    :goto_f
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 477
    .line 478
    .line 479
    move-result-object v3

    .line 480
    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 481
    .line 482
    .line 483
    move-result v4

    .line 484
    if-eqz v4, :cond_20

    .line 485
    .line 486
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 487
    .line 488
    .line 489
    move-result-object v4

    .line 490
    check-cast v4, LB1/L;

    .line 491
    .line 492
    invoke-virtual {v4}, LB1/L;->getWorkSpec()LK1/E;

    .line 493
    .line 494
    .line 495
    move-result-object v5

    .line 496
    if-eqz v12, :cond_1c

    .line 497
    .line 498
    if-nez v16, :cond_1c

    .line 499
    .line 500
    if-eqz v18, :cond_1a

    .line 501
    .line 502
    iput-object v15, v5, LK1/E;->b:Landroidx/work/WorkInfo$State;

    .line 503
    .line 504
    goto :goto_11

    .line 505
    :cond_1a
    if-eqz v17, :cond_1b

    .line 506
    .line 507
    iput-object v14, v5, LK1/E;->b:Landroidx/work/WorkInfo$State;

    .line 508
    .line 509
    goto :goto_11

    .line 510
    :cond_1b
    sget-object v7, Landroidx/work/WorkInfo$State;->m:Landroidx/work/WorkInfo$State;

    .line 511
    .line 512
    iput-object v7, v5, LK1/E;->b:Landroidx/work/WorkInfo$State;

    .line 513
    .line 514
    goto :goto_11

    .line 515
    :cond_1c
    iput-wide v8, v5, LK1/E;->n:J

    .line 516
    .line 517
    :goto_11
    iget-object v7, v5, LK1/E;->b:Landroidx/work/WorkInfo$State;

    .line 518
    .line 519
    if-ne v7, v2, :cond_1d

    .line 520
    .line 521
    const/4 v1, 0x1

    .line 522
    :cond_1d
    invoke-virtual {v10}, Landroidx/work/impl/WorkDatabase;->workSpecDao()LK1/F;

    .line 523
    .line 524
    .line 525
    move-result-object v7

    .line 526
    invoke-virtual/range {v20 .. v20}, LC1/G;->getSchedulers()Ljava/util/List;

    .line 527
    .line 528
    .line 529
    move-result-object v11

    .line 530
    invoke-static {v11, v5}, LL1/f;->wrapInConstraintTrackingWorkerIfNeeded(Ljava/util/List;LK1/E;)LK1/E;

    .line 531
    .line 532
    .line 533
    move-result-object v5

    .line 534
    check-cast v7, LK1/U;

    .line 535
    .line 536
    invoke-virtual {v7, v5}, LK1/U;->insertWorkSpec(LK1/E;)V

    .line 537
    .line 538
    .line 539
    if-eqz v12, :cond_1e

    .line 540
    .line 541
    array-length v5, v0

    .line 542
    const/4 v7, 0x0

    .line 543
    :goto_12
    if-ge v7, v5, :cond_1e

    .line 544
    .line 545
    aget-object v11, v0, v7

    .line 546
    .line 547
    new-instance v13, LK1/a;

    .line 548
    .line 549
    move-object/from16 v22, v0

    .line 550
    .line 551
    invoke-virtual {v4}, LB1/L;->getStringId()Ljava/lang/String;

    .line 552
    .line 553
    .line 554
    move-result-object v0

    .line 555
    invoke-direct {v13, v0, v11}, LK1/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    .line 557
    .line 558
    invoke-virtual {v10}, Landroidx/work/impl/WorkDatabase;->dependencyDao()LK1/b;

    .line 559
    .line 560
    .line 561
    move-result-object v0

    .line 562
    check-cast v0, LK1/d;

    .line 563
    .line 564
    invoke-virtual {v0, v13}, LK1/d;->insertDependency(LK1/a;)V

    .line 565
    .line 566
    .line 567
    add-int/lit8 v7, v7, 0x1

    .line 568
    .line 569
    move-object/from16 v0, v22

    .line 570
    .line 571
    goto :goto_12

    .line 572
    :cond_1e
    move-object/from16 v22, v0

    .line 573
    .line 574
    invoke-virtual {v10}, Landroidx/work/impl/WorkDatabase;->workTagDao()LK1/Y;

    .line 575
    .line 576
    .line 577
    move-result-object v0

    .line 578
    invoke-virtual {v4}, LB1/L;->getStringId()Ljava/lang/String;

    .line 579
    .line 580
    .line 581
    move-result-object v5

    .line 582
    invoke-virtual {v4}, LB1/L;->getTags()Ljava/util/Set;

    .line 583
    .line 584
    .line 585
    move-result-object v7

    .line 586
    check-cast v0, LK1/b0;

    .line 587
    .line 588
    invoke-virtual {v0, v5, v7}, LK1/b0;->insertTags(Ljava/lang/String;Ljava/util/Set;)V

    .line 589
    .line 590
    .line 591
    if-nez v19, :cond_1f

    .line 592
    .line 593
    invoke-virtual {v10}, Landroidx/work/impl/WorkDatabase;->workNameDao()LK1/t;

    .line 594
    .line 595
    .line 596
    move-result-object v0

    .line 597
    new-instance v5, LK1/s;

    .line 598
    .line 599
    invoke-virtual {v4}, LB1/L;->getStringId()Ljava/lang/String;

    .line 600
    .line 601
    .line 602
    move-result-object v4

    .line 603
    invoke-direct {v5, v6, v4}, LK1/s;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    .line 605
    .line 606
    check-cast v0, LK1/v;

    .line 607
    .line 608
    invoke-virtual {v0, v5}, LK1/v;->insert(LK1/s;)V

    .line 609
    .line 610
    .line 611
    :cond_1f
    move-object/from16 v0, v22

    .line 612
    .line 613
    goto/16 :goto_10

    .line 614
    .line 615
    :cond_20
    move v2, v1

    .line 616
    :goto_13
    invoke-virtual/range {p0 .. p0}, LC1/x;->markEnqueued()V

    .line 617
    .line 618
    .line 619
    or-int v0, v21, v2

    .line 620
    .line 621
    return v0
.end method


# virtual methods
.method public addToDatabase()Z
    .locals 2

    .line 1
    iget-object v0, p0, LL1/e;->b:LC1/x;

    .line 2
    .line 3
    invoke-virtual {v0}, LC1/x;->getWorkManagerImpl()LC1/G;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, LC1/G;->getWorkDatabase()Landroidx/work/impl/WorkDatabase;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 12
    .line 13
    .line 14
    :try_start_0
    invoke-static {v0}, LL1/e;->a(LC1/x;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 22
    .line 23
    .line 24
    return v0

    .line 25
    :catchall_0
    move-exception v0

    .line 26
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 27
    .line 28
    .line 29
    throw v0
.end method

.method public getOperation()LB1/B;
    .locals 1

    .line 1
    iget-object v0, p0, LL1/e;->e:LC1/o;

    .line 2
    .line 3
    return-object v0
.end method

.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, LL1/e;->e:LC1/o;

    .line 2
    .line 3
    iget-object v1, p0, LL1/e;->b:LC1/x;

    .line 4
    .line 5
    const-string v2, "WorkContinuation has cycles ("

    .line 6
    .line 7
    :try_start_0
    invoke-virtual {v1}, LC1/x;->hasCycles()Z

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    if-nez v3, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, LL1/e;->addToDatabase()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    invoke-virtual {v1}, LC1/x;->getWorkManagerImpl()LC1/G;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, LC1/G;->getApplicationContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const-class v2, Landroidx/work/impl/background/systemalarm/RescheduleReceiver;

    .line 28
    .line 29
    const/4 v3, 0x1

    .line 30
    invoke-static {v1, v2, v3}, LL1/p;->setComponentEnabled(Landroid/content/Context;Ljava/lang/Class;Z)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, LL1/e;->scheduleWorkInBackground()V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception v1

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    :goto_0
    sget-object v1, LB1/B;->a:LB1/z;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, LC1/o;->markState(LB1/A;)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_1
    new-instance v3, Ljava/lang/IllegalStateException;

    .line 46
    .line 47
    new-instance v4, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v1, ")"

    .line 56
    .line 57
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-direct {v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    :goto_1
    new-instance v2, LB1/x;

    .line 69
    .line 70
    invoke-direct {v2, v1}, LB1/x;-><init>(Ljava/lang/Throwable;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v2}, LC1/o;->markState(LB1/A;)V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method public scheduleWorkInBackground()V
    .locals 3

    .line 1
    iget-object v0, p0, LL1/e;->b:LC1/x;

    .line 2
    .line 3
    invoke-virtual {v0}, LC1/x;->getWorkManagerImpl()LC1/G;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, LC1/G;->getConfiguration()LB1/c;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0}, LC1/G;->getWorkDatabase()Landroidx/work/impl/WorkDatabase;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v0}, LC1/G;->getSchedulers()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v1, v2, v0}, LC1/u;->schedule(LB1/c;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
