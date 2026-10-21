.class public abstract Ld2/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Le2/a;

.field public static final b:Le2/a;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    const-string v8, "sk"

    .line 2
    .line 3
    const-string v9, "sa"

    .line 4
    .line 5
    const-string v0, "a"

    .line 6
    .line 7
    const-string v1, "p"

    .line 8
    .line 9
    const-string v2, "s"

    .line 10
    .line 11
    const-string v3, "rz"

    .line 12
    .line 13
    const-string v4, "r"

    .line 14
    .line 15
    const-string v5, "o"

    .line 16
    .line 17
    const-string v6, "so"

    .line 18
    .line 19
    const-string v7, "eo"

    .line 20
    .line 21
    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0}, Le2/a;->of([Ljava/lang/String;)Le2/a;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Ld2/c;->a:Le2/a;

    .line 30
    .line 31
    const-string v0, "k"

    .line 32
    .line 33
    filled-new-array {v0}, [Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {v0}, Le2/a;->of([Ljava/lang/String;)Le2/a;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sput-object v0, Ld2/c;->b:Le2/a;

    .line 42
    .line 43
    return-void
.end method

.method public static parse(Lcom/airbnb/lottie/parser/moshi/a;LT1/i;)LZ1/l;
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    sget-object v3, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->f:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 10
    .line 11
    const/4 v8, 0x0

    .line 12
    if-ne v1, v3, :cond_0

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    move v9, v1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v9, v8

    .line 18
    :goto_0
    if-eqz v9, :cond_1

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->beginObject()V

    .line 21
    .line 22
    .line 23
    :cond_1
    const/4 v1, 0x0

    .line 24
    const/4 v11, 0x0

    .line 25
    const/4 v12, 0x0

    .line 26
    const/4 v13, 0x0

    .line 27
    const/4 v14, 0x0

    .line 28
    const/4 v15, 0x0

    .line 29
    const/16 v21, 0x0

    .line 30
    .line 31
    const/16 v22, 0x0

    .line 32
    .line 33
    const/16 v23, 0x0

    .line 34
    .line 35
    :goto_1
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    const/high16 v4, 0x3f800000    # 1.0f

    .line 40
    .line 41
    const/4 v5, 0x0

    .line 42
    if-eqz v3, :cond_6

    .line 43
    .line 44
    sget-object v3, Ld2/c;->a:Le2/a;

    .line 45
    .line 46
    invoke-virtual {v0, v3}, Lcom/airbnb/lottie/parser/moshi/a;->selectName(Le2/a;)I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    packed-switch v3, :pswitch_data_0

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->skipName()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->skipValue()V

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :pswitch_0
    invoke-static {v0, v2, v8}, Ld2/d;->parseFloat(Lcom/airbnb/lottie/parser/moshi/a;LT1/i;Z)LZ1/b;

    .line 61
    .line 62
    .line 63
    move-result-object v15

    .line 64
    goto :goto_1

    .line 65
    :pswitch_1
    invoke-static {v0, v2, v8}, Ld2/d;->parseFloat(Lcom/airbnb/lottie/parser/moshi/a;LT1/i;Z)LZ1/b;

    .line 66
    .line 67
    .line 68
    move-result-object v14

    .line 69
    goto :goto_1

    .line 70
    :pswitch_2
    invoke-static {v0, v2, v8}, Ld2/d;->parseFloat(Lcom/airbnb/lottie/parser/moshi/a;LT1/i;Z)LZ1/b;

    .line 71
    .line 72
    .line 73
    move-result-object v23

    .line 74
    goto :goto_1

    .line 75
    :pswitch_3
    invoke-static {v0, v2, v8}, Ld2/d;->parseFloat(Lcom/airbnb/lottie/parser/moshi/a;LT1/i;Z)LZ1/b;

    .line 76
    .line 77
    .line 78
    move-result-object v22

    .line 79
    goto :goto_1

    .line 80
    :pswitch_4
    invoke-static/range {p0 .. p1}, Ld2/d;->b(Lcom/airbnb/lottie/parser/moshi/a;LT1/i;)LZ1/d;

    .line 81
    .line 82
    .line 83
    move-result-object v21

    .line 84
    goto :goto_1

    .line 85
    :pswitch_5
    const-string v1, "Lottie doesn\'t support 3D layers."

    .line 86
    .line 87
    invoke-virtual {v2, v1}, LT1/i;->addWarning(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    :pswitch_6
    invoke-static {v0, v2, v8}, Ld2/d;->parseFloat(Lcom/airbnb/lottie/parser/moshi/a;LT1/i;Z)LZ1/b;

    .line 91
    .line 92
    .line 93
    move-result-object v16

    .line 94
    invoke-virtual/range {v16 .. v16}, LZ1/b;->getKeyframes()Ljava/util/List;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    if-eqz v1, :cond_3

    .line 103
    .line 104
    invoke-virtual/range {v16 .. v16}, LZ1/b;->getKeyframes()Ljava/util/List;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    move-object v3, v1

    .line 109
    new-instance v1, Lg2/a;

    .line 110
    .line 111
    move-object v4, v3

    .line 112
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    move-object v6, v4

    .line 117
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    invoke-virtual {v2}, LT1/i;->getEndFrame()F

    .line 122
    .line 123
    .line 124
    move-result v5

    .line 125
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 126
    .line 127
    .line 128
    move-result-object v7

    .line 129
    const/4 v5, 0x0

    .line 130
    move-object/from16 v17, v6

    .line 131
    .line 132
    const/4 v6, 0x0

    .line 133
    move-object/from16 v10, v17

    .line 134
    .line 135
    invoke-direct/range {v1 .. v7}, Lg2/a;-><init>(LT1/i;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 136
    .line 137
    .line 138
    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    :cond_2
    move-object/from16 v2, p1

    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_3
    invoke-virtual/range {v16 .. v16}, LZ1/b;->getKeyframes()Ljava/util/List;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    check-cast v1, Lg2/a;

    .line 153
    .line 154
    iget-object v1, v1, Lg2/a;->b:Ljava/lang/Object;

    .line 155
    .line 156
    if-nez v1, :cond_2

    .line 157
    .line 158
    invoke-virtual/range {v16 .. v16}, LZ1/b;->getKeyframes()Ljava/util/List;

    .line 159
    .line 160
    .line 161
    move-result-object v10

    .line 162
    new-instance v1, Lg2/a;

    .line 163
    .line 164
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 165
    .line 166
    .line 167
    move-result-object v3

    .line 168
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 169
    .line 170
    .line 171
    move-result-object v4

    .line 172
    invoke-virtual/range {p1 .. p1}, LT1/i;->getEndFrame()F

    .line 173
    .line 174
    .line 175
    move-result v2

    .line 176
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 177
    .line 178
    .line 179
    move-result-object v7

    .line 180
    const/4 v5, 0x0

    .line 181
    const/4 v6, 0x0

    .line 182
    move-object/from16 v2, p1

    .line 183
    .line 184
    invoke-direct/range {v1 .. v7}, Lg2/a;-><init>(LT1/i;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 185
    .line 186
    .line 187
    invoke-interface {v10, v8, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    :goto_2
    move-object/from16 v1, v16

    .line 191
    .line 192
    goto/16 :goto_1

    .line 193
    .line 194
    :pswitch_7
    new-instance v13, LZ1/g;

    .line 195
    .line 196
    sget-object v3, Ld2/A;->a:Ld2/A;

    .line 197
    .line 198
    invoke-static {v0, v2, v4, v3}, Ld2/r;->a(Lcom/airbnb/lottie/parser/moshi/a;LT1/i;FLd2/H;)Ljava/util/ArrayList;

    .line 199
    .line 200
    .line 201
    move-result-object v3

    .line 202
    invoke-direct {v13, v3}, LZ1/g;-><init>(Ljava/util/List;)V

    .line 203
    .line 204
    .line 205
    goto/16 :goto_1

    .line 206
    .line 207
    :pswitch_8
    invoke-static/range {p0 .. p1}, Ld2/a;->a(Lcom/airbnb/lottie/parser/moshi/a;LT1/i;)LZ1/m;

    .line 208
    .line 209
    .line 210
    move-result-object v12

    .line 211
    goto/16 :goto_1

    .line 212
    .line 213
    :pswitch_9
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->beginObject()V

    .line 214
    .line 215
    .line 216
    :goto_3
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->hasNext()Z

    .line 217
    .line 218
    .line 219
    move-result v3

    .line 220
    if-eqz v3, :cond_5

    .line 221
    .line 222
    sget-object v3, Ld2/c;->b:Le2/a;

    .line 223
    .line 224
    invoke-virtual {v0, v3}, Lcom/airbnb/lottie/parser/moshi/a;->selectName(Le2/a;)I

    .line 225
    .line 226
    .line 227
    move-result v3

    .line 228
    if-eqz v3, :cond_4

    .line 229
    .line 230
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->skipName()V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->skipValue()V

    .line 234
    .line 235
    .line 236
    goto :goto_3

    .line 237
    :cond_4
    invoke-static/range {p0 .. p1}, Ld2/a;->parse(Lcom/airbnb/lottie/parser/moshi/a;LT1/i;)LZ1/e;

    .line 238
    .line 239
    .line 240
    move-result-object v11

    .line 241
    goto :goto_3

    .line 242
    :cond_5
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->endObject()V

    .line 243
    .line 244
    .line 245
    goto/16 :goto_1

    .line 246
    .line 247
    :cond_6
    if-eqz v9, :cond_7

    .line 248
    .line 249
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->endObject()V

    .line 250
    .line 251
    .line 252
    :cond_7
    if-eqz v11, :cond_9

    .line 253
    .line 254
    invoke-virtual {v11}, LZ1/e;->isStatic()Z

    .line 255
    .line 256
    .line 257
    move-result v0

    .line 258
    if-eqz v0, :cond_8

    .line 259
    .line 260
    invoke-virtual {v11}, LZ1/e;->getKeyframes()Ljava/util/List;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    check-cast v0, Lg2/a;

    .line 269
    .line 270
    iget-object v0, v0, Lg2/a;->b:Ljava/lang/Object;

    .line 271
    .line 272
    check-cast v0, Landroid/graphics/PointF;

    .line 273
    .line 274
    invoke-virtual {v0, v5, v5}, Landroid/graphics/PointF;->equals(FF)Z

    .line 275
    .line 276
    .line 277
    move-result v0

    .line 278
    if-eqz v0, :cond_8

    .line 279
    .line 280
    goto :goto_4

    .line 281
    :cond_8
    move-object/from16 v17, v11

    .line 282
    .line 283
    goto :goto_5

    .line 284
    :cond_9
    :goto_4
    const/16 v17, 0x0

    .line 285
    .line 286
    :goto_5
    if-eqz v12, :cond_a

    .line 287
    .line 288
    instance-of v0, v12, LZ1/i;

    .line 289
    .line 290
    if-nez v0, :cond_b

    .line 291
    .line 292
    invoke-interface {v12}, LZ1/m;->isStatic()Z

    .line 293
    .line 294
    .line 295
    move-result v0

    .line 296
    if-eqz v0, :cond_b

    .line 297
    .line 298
    invoke-interface {v12}, LZ1/m;->getKeyframes()Ljava/util/List;

    .line 299
    .line 300
    .line 301
    move-result-object v0

    .line 302
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    move-result-object v0

    .line 306
    check-cast v0, Lg2/a;

    .line 307
    .line 308
    iget-object v0, v0, Lg2/a;->b:Ljava/lang/Object;

    .line 309
    .line 310
    check-cast v0, Landroid/graphics/PointF;

    .line 311
    .line 312
    invoke-virtual {v0, v5, v5}, Landroid/graphics/PointF;->equals(FF)Z

    .line 313
    .line 314
    .line 315
    move-result v0

    .line 316
    if-eqz v0, :cond_b

    .line 317
    .line 318
    :cond_a
    const/4 v12, 0x0

    .line 319
    :cond_b
    if-eqz v1, :cond_d

    .line 320
    .line 321
    invoke-virtual {v1}, LZ1/b;->isStatic()Z

    .line 322
    .line 323
    .line 324
    move-result v0

    .line 325
    if-eqz v0, :cond_c

    .line 326
    .line 327
    invoke-virtual {v1}, LZ1/b;->getKeyframes()Ljava/util/List;

    .line 328
    .line 329
    .line 330
    move-result-object v0

    .line 331
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 332
    .line 333
    .line 334
    move-result-object v0

    .line 335
    check-cast v0, Lg2/a;

    .line 336
    .line 337
    iget-object v0, v0, Lg2/a;->b:Ljava/lang/Object;

    .line 338
    .line 339
    check-cast v0, Ljava/lang/Float;

    .line 340
    .line 341
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 342
    .line 343
    .line 344
    move-result v0

    .line 345
    cmpl-float v0, v0, v5

    .line 346
    .line 347
    if-nez v0, :cond_c

    .line 348
    .line 349
    goto :goto_6

    .line 350
    :cond_c
    move-object/from16 v20, v1

    .line 351
    .line 352
    goto :goto_7

    .line 353
    :cond_d
    :goto_6
    const/16 v20, 0x0

    .line 354
    .line 355
    :goto_7
    if-eqz v13, :cond_f

    .line 356
    .line 357
    invoke-virtual {v13}, LZ1/g;->isStatic()Z

    .line 358
    .line 359
    .line 360
    move-result v0

    .line 361
    if-eqz v0, :cond_e

    .line 362
    .line 363
    invoke-virtual {v13}, LZ1/g;->getKeyframes()Ljava/util/List;

    .line 364
    .line 365
    .line 366
    move-result-object v0

    .line 367
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 368
    .line 369
    .line 370
    move-result-object v0

    .line 371
    check-cast v0, Lg2/a;

    .line 372
    .line 373
    iget-object v0, v0, Lg2/a;->b:Ljava/lang/Object;

    .line 374
    .line 375
    check-cast v0, Lg2/d;

    .line 376
    .line 377
    invoke-virtual {v0, v4, v4}, Lg2/d;->equals(FF)Z

    .line 378
    .line 379
    .line 380
    move-result v0

    .line 381
    if-eqz v0, :cond_e

    .line 382
    .line 383
    goto :goto_8

    .line 384
    :cond_e
    move-object/from16 v19, v13

    .line 385
    .line 386
    goto :goto_9

    .line 387
    :cond_f
    :goto_8
    const/16 v19, 0x0

    .line 388
    .line 389
    :goto_9
    if-eqz v14, :cond_11

    .line 390
    .line 391
    invoke-virtual {v14}, LZ1/b;->isStatic()Z

    .line 392
    .line 393
    .line 394
    move-result v0

    .line 395
    if-eqz v0, :cond_10

    .line 396
    .line 397
    invoke-virtual {v14}, LZ1/b;->getKeyframes()Ljava/util/List;

    .line 398
    .line 399
    .line 400
    move-result-object v0

    .line 401
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 402
    .line 403
    .line 404
    move-result-object v0

    .line 405
    check-cast v0, Lg2/a;

    .line 406
    .line 407
    iget-object v0, v0, Lg2/a;->b:Ljava/lang/Object;

    .line 408
    .line 409
    check-cast v0, Ljava/lang/Float;

    .line 410
    .line 411
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 412
    .line 413
    .line 414
    move-result v0

    .line 415
    cmpl-float v0, v0, v5

    .line 416
    .line 417
    if-nez v0, :cond_10

    .line 418
    .line 419
    goto :goto_a

    .line 420
    :cond_10
    move-object/from16 v24, v14

    .line 421
    .line 422
    goto :goto_b

    .line 423
    :cond_11
    :goto_a
    const/16 v24, 0x0

    .line 424
    .line 425
    :goto_b
    if-eqz v15, :cond_13

    .line 426
    .line 427
    invoke-virtual {v15}, LZ1/b;->isStatic()Z

    .line 428
    .line 429
    .line 430
    move-result v0

    .line 431
    if-eqz v0, :cond_12

    .line 432
    .line 433
    invoke-virtual {v15}, LZ1/b;->getKeyframes()Ljava/util/List;

    .line 434
    .line 435
    .line 436
    move-result-object v0

    .line 437
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 438
    .line 439
    .line 440
    move-result-object v0

    .line 441
    check-cast v0, Lg2/a;

    .line 442
    .line 443
    iget-object v0, v0, Lg2/a;->b:Ljava/lang/Object;

    .line 444
    .line 445
    check-cast v0, Ljava/lang/Float;

    .line 446
    .line 447
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 448
    .line 449
    .line 450
    move-result v0

    .line 451
    cmpl-float v0, v0, v5

    .line 452
    .line 453
    if-nez v0, :cond_12

    .line 454
    .line 455
    goto :goto_c

    .line 456
    :cond_12
    move-object/from16 v25, v15

    .line 457
    .line 458
    goto :goto_d

    .line 459
    :cond_13
    :goto_c
    const/16 v25, 0x0

    .line 460
    .line 461
    :goto_d
    new-instance v16, LZ1/l;

    .line 462
    .line 463
    move-object/from16 v18, v12

    .line 464
    .line 465
    invoke-direct/range {v16 .. v25}, LZ1/l;-><init>(LZ1/e;LZ1/m;LZ1/g;LZ1/b;LZ1/d;LZ1/b;LZ1/b;LZ1/b;LZ1/b;)V

    .line 466
    .line 467
    .line 468
    return-object v16

    .line 469
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
