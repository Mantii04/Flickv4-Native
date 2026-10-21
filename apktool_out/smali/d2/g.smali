.class public abstract Ld2/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Le2/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "ty"

    .line 2
    .line 3
    const-string v1, "d"

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Le2/a;->of([Ljava/lang/String;)Le2/a;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sput-object v0, Ld2/g;->a:Le2/a;

    .line 14
    .line 15
    return-void
.end method

.method public static a(Lcom/airbnb/lottie/parser/moshi/a;LT1/i;)La2/b;
    .locals 34

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "o"

    .line 6
    .line 7
    const-string v3, "g"

    .line 8
    .line 9
    const-string v4, "d"

    .line 10
    .line 11
    const/4 v5, 0x3

    .line 12
    const/4 v6, 0x4

    .line 13
    const/4 v7, 0x5

    .line 14
    const/4 v8, 0x0

    .line 15
    const/4 v10, 0x1

    .line 16
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->beginObject()V

    .line 17
    .line 18
    .line 19
    const/4 v11, 0x2

    .line 20
    move v12, v11

    .line 21
    :goto_0
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v13

    .line 25
    const/4 v14, 0x0

    .line 26
    if-eqz v13, :cond_2

    .line 27
    .line 28
    sget-object v13, Ld2/g;->a:Le2/a;

    .line 29
    .line 30
    invoke-virtual {v0, v13}, Lcom/airbnb/lottie/parser/moshi/a;->selectName(Le2/a;)I

    .line 31
    .line 32
    .line 33
    move-result v13

    .line 34
    if-eqz v13, :cond_1

    .line 35
    .line 36
    if-eq v13, v10, :cond_0

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->skipName()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->skipValue()V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->nextInt()I

    .line 46
    .line 47
    .line 48
    move-result v12

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->nextString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v13

    .line 54
    goto :goto_1

    .line 55
    :cond_2
    move-object v13, v14

    .line 56
    :goto_1
    if-nez v13, :cond_3

    .line 57
    .line 58
    return-object v14

    .line 59
    :cond_3
    sget-object v15, Lcom/airbnb/lottie/model/content/GradientType;->e:Lcom/airbnb/lottie/model/content/GradientType;

    .line 60
    .line 61
    sget-object v16, Lcom/airbnb/lottie/model/content/GradientType;->b:Lcom/airbnb/lottie/model/content/GradientType;

    .line 62
    .line 63
    const/high16 v9, 0x3f800000    # 1.0f

    .line 64
    .line 65
    const/16 v18, 0x0

    .line 66
    .line 67
    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    .line 68
    .line 69
    .line 70
    move-result v19

    .line 71
    sparse-switch v19, :sswitch_data_0

    .line 72
    .line 73
    .line 74
    :goto_2
    const/4 v14, -0x1

    .line 75
    goto/16 :goto_3

    .line 76
    .line 77
    :sswitch_0
    const-string v14, "tr"

    .line 78
    .line 79
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v14

    .line 83
    if-nez v14, :cond_4

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_4
    const/16 v14, 0xc

    .line 87
    .line 88
    goto/16 :goto_3

    .line 89
    .line 90
    :sswitch_1
    const-string v14, "tm"

    .line 91
    .line 92
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v14

    .line 96
    if-nez v14, :cond_5

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_5
    const/16 v14, 0xb

    .line 100
    .line 101
    goto/16 :goto_3

    .line 102
    .line 103
    :sswitch_2
    const-string v14, "st"

    .line 104
    .line 105
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v14

    .line 109
    if-nez v14, :cond_6

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_6
    const/16 v14, 0xa

    .line 113
    .line 114
    goto/16 :goto_3

    .line 115
    .line 116
    :sswitch_3
    const-string v14, "sr"

    .line 117
    .line 118
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v14

    .line 122
    if-nez v14, :cond_7

    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_7
    const/16 v14, 0x9

    .line 126
    .line 127
    goto/16 :goto_3

    .line 128
    .line 129
    :sswitch_4
    const-string v14, "sh"

    .line 130
    .line 131
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v14

    .line 135
    if-nez v14, :cond_8

    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_8
    const/16 v14, 0x8

    .line 139
    .line 140
    goto/16 :goto_3

    .line 141
    .line 142
    :sswitch_5
    const-string v14, "rp"

    .line 143
    .line 144
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v14

    .line 148
    if-nez v14, :cond_9

    .line 149
    .line 150
    goto :goto_2

    .line 151
    :cond_9
    const/4 v14, 0x7

    .line 152
    goto :goto_3

    .line 153
    :sswitch_6
    const-string v14, "rc"

    .line 154
    .line 155
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result v14

    .line 159
    if-nez v14, :cond_a

    .line 160
    .line 161
    goto :goto_2

    .line 162
    :cond_a
    const/4 v14, 0x6

    .line 163
    goto :goto_3

    .line 164
    :sswitch_7
    const-string v14, "mm"

    .line 165
    .line 166
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    move-result v14

    .line 170
    if-nez v14, :cond_b

    .line 171
    .line 172
    goto :goto_2

    .line 173
    :cond_b
    move v14, v7

    .line 174
    goto :goto_3

    .line 175
    :sswitch_8
    const-string v14, "gs"

    .line 176
    .line 177
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    move-result v14

    .line 181
    if-nez v14, :cond_c

    .line 182
    .line 183
    goto :goto_2

    .line 184
    :cond_c
    move v14, v6

    .line 185
    goto :goto_3

    .line 186
    :sswitch_9
    const-string v14, "gr"

    .line 187
    .line 188
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    move-result v14

    .line 192
    if-nez v14, :cond_d

    .line 193
    .line 194
    goto :goto_2

    .line 195
    :cond_d
    move v14, v5

    .line 196
    goto :goto_3

    .line 197
    :sswitch_a
    const-string v14, "gf"

    .line 198
    .line 199
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    move-result v14

    .line 203
    if-nez v14, :cond_e

    .line 204
    .line 205
    goto/16 :goto_2

    .line 206
    .line 207
    :cond_e
    move v14, v11

    .line 208
    goto :goto_3

    .line 209
    :sswitch_b
    const-string v14, "fl"

    .line 210
    .line 211
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    move-result v14

    .line 215
    if-nez v14, :cond_f

    .line 216
    .line 217
    goto/16 :goto_2

    .line 218
    .line 219
    :cond_f
    move v14, v10

    .line 220
    goto :goto_3

    .line 221
    :sswitch_c
    const-string v14, "el"

    .line 222
    .line 223
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    move-result v14

    .line 227
    if-nez v14, :cond_10

    .line 228
    .line 229
    goto/16 :goto_2

    .line 230
    .line 231
    :cond_10
    move v14, v8

    .line 232
    :goto_3
    packed-switch v14, :pswitch_data_0

    .line 233
    .line 234
    .line 235
    const-string v1, "Unknown shape type "

    .line 236
    .line 237
    invoke-virtual {v1, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v1

    .line 241
    invoke-static {v1}, Lf2/d;->warning(Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    const/4 v14, 0x0

    .line 245
    goto/16 :goto_20

    .line 246
    .line 247
    :pswitch_0
    invoke-static/range {p0 .. p1}, Ld2/c;->parse(Lcom/airbnb/lottie/parser/moshi/a;LT1/i;)LZ1/l;

    .line 248
    .line 249
    .line 250
    move-result-object v14

    .line 251
    goto/16 :goto_20

    .line 252
    .line 253
    :pswitch_1
    sget-object v2, Ld2/G;->a:Le2/a;

    .line 254
    .line 255
    move/from16 v18, v8

    .line 256
    .line 257
    const/4 v13, 0x0

    .line 258
    const/4 v14, 0x0

    .line 259
    const/4 v15, 0x0

    .line 260
    const/16 v16, 0x0

    .line 261
    .line 262
    const/16 v17, 0x0

    .line 263
    .line 264
    :goto_4
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->hasNext()Z

    .line 265
    .line 266
    .line 267
    move-result v2

    .line 268
    if-eqz v2, :cond_17

    .line 269
    .line 270
    sget-object v2, Ld2/G;->a:Le2/a;

    .line 271
    .line 272
    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/parser/moshi/a;->selectName(Le2/a;)I

    .line 273
    .line 274
    .line 275
    move-result v2

    .line 276
    if-eqz v2, :cond_16

    .line 277
    .line 278
    if-eq v2, v10, :cond_15

    .line 279
    .line 280
    if-eq v2, v11, :cond_14

    .line 281
    .line 282
    if-eq v2, v5, :cond_13

    .line 283
    .line 284
    if-eq v2, v6, :cond_12

    .line 285
    .line 286
    if-eq v2, v7, :cond_11

    .line 287
    .line 288
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->skipValue()V

    .line 289
    .line 290
    .line 291
    goto :goto_4

    .line 292
    :cond_11
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->nextBoolean()Z

    .line 293
    .line 294
    .line 295
    move-result v18

    .line 296
    goto :goto_4

    .line 297
    :cond_12
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->nextInt()I

    .line 298
    .line 299
    .line 300
    move-result v2

    .line 301
    invoke-static {v2}, Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;->forId(I)Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    .line 302
    .line 303
    .line 304
    move-result-object v14

    .line 305
    goto :goto_4

    .line 306
    :cond_13
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->nextString()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v13

    .line 310
    goto :goto_4

    .line 311
    :cond_14
    invoke-static {v0, v1, v8}, Ld2/d;->parseFloat(Lcom/airbnb/lottie/parser/moshi/a;LT1/i;Z)LZ1/b;

    .line 312
    .line 313
    .line 314
    move-result-object v17

    .line 315
    goto :goto_4

    .line 316
    :cond_15
    invoke-static {v0, v1, v8}, Ld2/d;->parseFloat(Lcom/airbnb/lottie/parser/moshi/a;LT1/i;Z)LZ1/b;

    .line 317
    .line 318
    .line 319
    move-result-object v16

    .line 320
    goto :goto_4

    .line 321
    :cond_16
    invoke-static {v0, v1, v8}, Ld2/d;->parseFloat(Lcom/airbnb/lottie/parser/moshi/a;LT1/i;Z)LZ1/b;

    .line 322
    .line 323
    .line 324
    move-result-object v15

    .line 325
    goto :goto_4

    .line 326
    :cond_17
    new-instance v12, La2/p;

    .line 327
    .line 328
    invoke-direct/range {v12 .. v18}, La2/p;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;LZ1/b;LZ1/b;LZ1/b;Z)V

    .line 329
    .line 330
    .line 331
    :goto_5
    move-object v14, v12

    .line 332
    goto/16 :goto_20

    .line 333
    .line 334
    :pswitch_2
    sget-object v5, Ld2/F;->a:Le2/a;

    .line 335
    .line 336
    new-instance v5, Ljava/util/ArrayList;

    .line 337
    .line 338
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 339
    .line 340
    .line 341
    move/from16 v30, v8

    .line 342
    .line 343
    move/from16 v29, v18

    .line 344
    .line 345
    const/16 v21, 0x0

    .line 346
    .line 347
    const/16 v22, 0x0

    .line 348
    .line 349
    const/16 v24, 0x0

    .line 350
    .line 351
    const/16 v25, 0x0

    .line 352
    .line 353
    const/16 v26, 0x0

    .line 354
    .line 355
    const/16 v27, 0x0

    .line 356
    .line 357
    const/16 v28, 0x0

    .line 358
    .line 359
    :cond_18
    :goto_6
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->hasNext()Z

    .line 360
    .line 361
    .line 362
    move-result v6

    .line 363
    if-eqz v6, :cond_20

    .line 364
    .line 365
    sget-object v6, Ld2/F;->a:Le2/a;

    .line 366
    .line 367
    invoke-virtual {v0, v6}, Lcom/airbnb/lottie/parser/moshi/a;->selectName(Le2/a;)I

    .line 368
    .line 369
    .line 370
    move-result v6

    .line 371
    packed-switch v6, :pswitch_data_1

    .line 372
    .line 373
    .line 374
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->skipValue()V

    .line 375
    .line 376
    .line 377
    goto :goto_6

    .line 378
    :pswitch_3
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->beginArray()V

    .line 379
    .line 380
    .line 381
    :goto_7
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->hasNext()Z

    .line 382
    .line 383
    .line 384
    move-result v6

    .line 385
    if-eqz v6, :cond_1f

    .line 386
    .line 387
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->beginObject()V

    .line 388
    .line 389
    .line 390
    const/4 v6, 0x0

    .line 391
    const/4 v7, 0x0

    .line 392
    :goto_8
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->hasNext()Z

    .line 393
    .line 394
    .line 395
    move-result v9

    .line 396
    if-eqz v9, :cond_1b

    .line 397
    .line 398
    sget-object v9, Ld2/F;->b:Le2/a;

    .line 399
    .line 400
    invoke-virtual {v0, v9}, Lcom/airbnb/lottie/parser/moshi/a;->selectName(Le2/a;)I

    .line 401
    .line 402
    .line 403
    move-result v9

    .line 404
    if-eqz v9, :cond_1a

    .line 405
    .line 406
    if-eq v9, v10, :cond_19

    .line 407
    .line 408
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->skipName()V

    .line 409
    .line 410
    .line 411
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->skipValue()V

    .line 412
    .line 413
    .line 414
    goto :goto_8

    .line 415
    :cond_19
    invoke-static/range {p0 .. p1}, Ld2/d;->parseFloat(Lcom/airbnb/lottie/parser/moshi/a;LT1/i;)LZ1/b;

    .line 416
    .line 417
    .line 418
    move-result-object v7

    .line 419
    goto :goto_8

    .line 420
    :cond_1a
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->nextString()Ljava/lang/String;

    .line 421
    .line 422
    .line 423
    move-result-object v6

    .line 424
    goto :goto_8

    .line 425
    :cond_1b
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->endObject()V

    .line 426
    .line 427
    .line 428
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 429
    .line 430
    .line 431
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    .line 432
    .line 433
    .line 434
    move-result v9

    .line 435
    sparse-switch v9, :sswitch_data_1

    .line 436
    .line 437
    .line 438
    :goto_9
    const/4 v6, -0x1

    .line 439
    goto :goto_a

    .line 440
    :sswitch_d
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 441
    .line 442
    .line 443
    move-result v6

    .line 444
    if-nez v6, :cond_1c

    .line 445
    .line 446
    goto :goto_9

    .line 447
    :cond_1c
    move v6, v11

    .line 448
    goto :goto_a

    .line 449
    :sswitch_e
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 450
    .line 451
    .line 452
    move-result v6

    .line 453
    if-nez v6, :cond_1d

    .line 454
    .line 455
    goto :goto_9

    .line 456
    :cond_1d
    move v6, v10

    .line 457
    goto :goto_a

    .line 458
    :sswitch_f
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 459
    .line 460
    .line 461
    move-result v6

    .line 462
    if-nez v6, :cond_1e

    .line 463
    .line 464
    goto :goto_9

    .line 465
    :cond_1e
    move v6, v8

    .line 466
    :goto_a
    packed-switch v6, :pswitch_data_2

    .line 467
    .line 468
    .line 469
    goto :goto_7

    .line 470
    :pswitch_4
    move-object/from16 v22, v7

    .line 471
    .line 472
    goto :goto_7

    .line 473
    :pswitch_5
    invoke-virtual {v1, v10}, LT1/i;->setHasDashPattern(Z)V

    .line 474
    .line 475
    .line 476
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 477
    .line 478
    .line 479
    goto :goto_7

    .line 480
    :cond_1f
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->endArray()V

    .line 481
    .line 482
    .line 483
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 484
    .line 485
    .line 486
    move-result v6

    .line 487
    if-ne v6, v10, :cond_18

    .line 488
    .line 489
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 490
    .line 491
    .line 492
    move-result-object v6

    .line 493
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 494
    .line 495
    .line 496
    goto/16 :goto_6

    .line 497
    .line 498
    :pswitch_6
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->nextBoolean()Z

    .line 499
    .line 500
    .line 501
    move-result v30

    .line 502
    goto/16 :goto_6

    .line 503
    .line 504
    :pswitch_7
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->nextDouble()D

    .line 505
    .line 506
    .line 507
    move-result-wide v6

    .line 508
    double-to-float v6, v6

    .line 509
    move/from16 v29, v6

    .line 510
    .line 511
    goto/16 :goto_6

    .line 512
    .line 513
    :pswitch_8
    invoke-static {}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;->values()[Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

    .line 514
    .line 515
    .line 516
    move-result-object v6

    .line 517
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->nextInt()I

    .line 518
    .line 519
    .line 520
    move-result v7

    .line 521
    sub-int/2addr v7, v10

    .line 522
    aget-object v28, v6, v7

    .line 523
    .line 524
    goto/16 :goto_6

    .line 525
    .line 526
    :pswitch_9
    invoke-static {}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;->values()[Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

    .line 527
    .line 528
    .line 529
    move-result-object v6

    .line 530
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->nextInt()I

    .line 531
    .line 532
    .line 533
    move-result v7

    .line 534
    sub-int/2addr v7, v10

    .line 535
    aget-object v27, v6, v7

    .line 536
    .line 537
    goto/16 :goto_6

    .line 538
    .line 539
    :pswitch_a
    invoke-static/range {p0 .. p1}, Ld2/d;->b(Lcom/airbnb/lottie/parser/moshi/a;LT1/i;)LZ1/d;

    .line 540
    .line 541
    .line 542
    move-result-object v25

    .line 543
    goto/16 :goto_6

    .line 544
    .line 545
    :pswitch_b
    invoke-static/range {p0 .. p1}, Ld2/d;->parseFloat(Lcom/airbnb/lottie/parser/moshi/a;LT1/i;)LZ1/b;

    .line 546
    .line 547
    .line 548
    move-result-object v26

    .line 549
    goto/16 :goto_6

    .line 550
    .line 551
    :pswitch_c
    invoke-static/range {p0 .. p1}, Ld2/d;->a(Lcom/airbnb/lottie/parser/moshi/a;LT1/i;)LZ1/a;

    .line 552
    .line 553
    .line 554
    move-result-object v24

    .line 555
    goto/16 :goto_6

    .line 556
    .line 557
    :pswitch_d
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->nextString()Ljava/lang/String;

    .line 558
    .line 559
    .line 560
    move-result-object v21

    .line 561
    goto/16 :goto_6

    .line 562
    .line 563
    :cond_20
    new-instance v20, La2/o;

    .line 564
    .line 565
    move-object/from16 v23, v5

    .line 566
    .line 567
    invoke-direct/range {v20 .. v30}, La2/o;-><init>(Ljava/lang/String;LZ1/b;Ljava/util/List;LZ1/a;LZ1/d;LZ1/b;Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;FZ)V

    .line 568
    .line 569
    .line 570
    :goto_b
    move-object/from16 v14, v20

    .line 571
    .line 572
    goto/16 :goto_20

    .line 573
    .line 574
    :pswitch_e
    sget-object v2, Ld2/x;->a:Le2/a;

    .line 575
    .line 576
    move/from16 v30, v8

    .line 577
    .line 578
    const/16 v21, 0x0

    .line 579
    .line 580
    const/16 v22, 0x0

    .line 581
    .line 582
    const/16 v23, 0x0

    .line 583
    .line 584
    const/16 v24, 0x0

    .line 585
    .line 586
    const/16 v25, 0x0

    .line 587
    .line 588
    const/16 v26, 0x0

    .line 589
    .line 590
    const/16 v27, 0x0

    .line 591
    .line 592
    const/16 v28, 0x0

    .line 593
    .line 594
    const/16 v29, 0x0

    .line 595
    .line 596
    :goto_c
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->hasNext()Z

    .line 597
    .line 598
    .line 599
    move-result v2

    .line 600
    if-eqz v2, :cond_21

    .line 601
    .line 602
    sget-object v2, Ld2/x;->a:Le2/a;

    .line 603
    .line 604
    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/parser/moshi/a;->selectName(Le2/a;)I

    .line 605
    .line 606
    .line 607
    move-result v2

    .line 608
    packed-switch v2, :pswitch_data_3

    .line 609
    .line 610
    .line 611
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->skipName()V

    .line 612
    .line 613
    .line 614
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->skipValue()V

    .line 615
    .line 616
    .line 617
    goto :goto_c

    .line 618
    :pswitch_f
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->nextBoolean()Z

    .line 619
    .line 620
    .line 621
    move-result v30

    .line 622
    goto :goto_c

    .line 623
    :pswitch_10
    invoke-static {v0, v1, v8}, Ld2/d;->parseFloat(Lcom/airbnb/lottie/parser/moshi/a;LT1/i;Z)LZ1/b;

    .line 624
    .line 625
    .line 626
    move-result-object v28

    .line 627
    goto :goto_c

    .line 628
    :pswitch_11
    invoke-static/range {p0 .. p1}, Ld2/d;->parseFloat(Lcom/airbnb/lottie/parser/moshi/a;LT1/i;)LZ1/b;

    .line 629
    .line 630
    .line 631
    move-result-object v26

    .line 632
    goto :goto_c

    .line 633
    :pswitch_12
    invoke-static {v0, v1, v8}, Ld2/d;->parseFloat(Lcom/airbnb/lottie/parser/moshi/a;LT1/i;Z)LZ1/b;

    .line 634
    .line 635
    .line 636
    move-result-object v29

    .line 637
    goto :goto_c

    .line 638
    :pswitch_13
    invoke-static/range {p0 .. p1}, Ld2/d;->parseFloat(Lcom/airbnb/lottie/parser/moshi/a;LT1/i;)LZ1/b;

    .line 639
    .line 640
    .line 641
    move-result-object v27

    .line 642
    goto :goto_c

    .line 643
    :pswitch_14
    invoke-static {v0, v1, v8}, Ld2/d;->parseFloat(Lcom/airbnb/lottie/parser/moshi/a;LT1/i;Z)LZ1/b;

    .line 644
    .line 645
    .line 646
    move-result-object v25

    .line 647
    goto :goto_c

    .line 648
    :pswitch_15
    invoke-static/range {p0 .. p1}, Ld2/a;->a(Lcom/airbnb/lottie/parser/moshi/a;LT1/i;)LZ1/m;

    .line 649
    .line 650
    .line 651
    move-result-object v24

    .line 652
    goto :goto_c

    .line 653
    :pswitch_16
    invoke-static {v0, v1, v8}, Ld2/d;->parseFloat(Lcom/airbnb/lottie/parser/moshi/a;LT1/i;Z)LZ1/b;

    .line 654
    .line 655
    .line 656
    move-result-object v23

    .line 657
    goto :goto_c

    .line 658
    :pswitch_17
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->nextInt()I

    .line 659
    .line 660
    .line 661
    move-result v2

    .line 662
    invoke-static {v2}, Lcom/airbnb/lottie/model/content/PolystarShape$Type;->forValue(I)Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    .line 663
    .line 664
    .line 665
    move-result-object v22

    .line 666
    goto :goto_c

    .line 667
    :pswitch_18
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->nextString()Ljava/lang/String;

    .line 668
    .line 669
    .line 670
    move-result-object v21

    .line 671
    goto :goto_c

    .line 672
    :cond_21
    new-instance v20, La2/h;

    .line 673
    .line 674
    invoke-direct/range {v20 .. v30}, La2/h;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/PolystarShape$Type;LZ1/b;LZ1/m;LZ1/b;LZ1/b;LZ1/b;LZ1/b;LZ1/b;Z)V

    .line 675
    .line 676
    .line 677
    goto :goto_b

    .line 678
    :pswitch_19
    sget-object v2, Ld2/E;->a:Le2/a;

    .line 679
    .line 680
    move v2, v8

    .line 681
    const/4 v3, 0x0

    .line 682
    const/4 v14, 0x0

    .line 683
    :goto_d
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->hasNext()Z

    .line 684
    .line 685
    .line 686
    move-result v4

    .line 687
    if-eqz v4, :cond_26

    .line 688
    .line 689
    sget-object v4, Ld2/E;->a:Le2/a;

    .line 690
    .line 691
    invoke-virtual {v0, v4}, Lcom/airbnb/lottie/parser/moshi/a;->selectName(Le2/a;)I

    .line 692
    .line 693
    .line 694
    move-result v4

    .line 695
    if-eqz v4, :cond_25

    .line 696
    .line 697
    if-eq v4, v10, :cond_24

    .line 698
    .line 699
    if-eq v4, v11, :cond_23

    .line 700
    .line 701
    if-eq v4, v5, :cond_22

    .line 702
    .line 703
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->skipValue()V

    .line 704
    .line 705
    .line 706
    goto :goto_d

    .line 707
    :cond_22
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->nextBoolean()Z

    .line 708
    .line 709
    .line 710
    move-result v2

    .line 711
    goto :goto_d

    .line 712
    :cond_23
    new-instance v3, LZ1/h;

    .line 713
    .line 714
    invoke-static {}, Lf2/h;->dpScale()F

    .line 715
    .line 716
    .line 717
    move-result v4

    .line 718
    sget-object v6, Ld2/B;->a:Ld2/B;

    .line 719
    .line 720
    invoke-static {v0, v1, v4, v6}, Ld2/r;->a(Lcom/airbnb/lottie/parser/moshi/a;LT1/i;FLd2/H;)Ljava/util/ArrayList;

    .line 721
    .line 722
    .line 723
    move-result-object v4

    .line 724
    invoke-direct {v3, v4}, LZ1/h;-><init>(Ljava/util/List;)V

    .line 725
    .line 726
    .line 727
    goto :goto_d

    .line 728
    :cond_24
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->nextInt()I

    .line 729
    .line 730
    .line 731
    move-result v8

    .line 732
    goto :goto_d

    .line 733
    :cond_25
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->nextString()Ljava/lang/String;

    .line 734
    .line 735
    .line 736
    move-result-object v14

    .line 737
    goto :goto_d

    .line 738
    :cond_26
    new-instance v1, La2/n;

    .line 739
    .line 740
    invoke-direct {v1, v14, v8, v3, v2}, La2/n;-><init>(Ljava/lang/String;ILZ1/h;Z)V

    .line 741
    .line 742
    .line 743
    :goto_e
    move-object v14, v1

    .line 744
    goto/16 :goto_20

    .line 745
    .line 746
    :pswitch_1a
    sget-object v2, Ld2/z;->a:Le2/a;

    .line 747
    .line 748
    move/from16 v17, v8

    .line 749
    .line 750
    const/4 v13, 0x0

    .line 751
    const/4 v14, 0x0

    .line 752
    const/4 v15, 0x0

    .line 753
    const/16 v16, 0x0

    .line 754
    .line 755
    :goto_f
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->hasNext()Z

    .line 756
    .line 757
    .line 758
    move-result v2

    .line 759
    if-eqz v2, :cond_2c

    .line 760
    .line 761
    sget-object v2, Ld2/z;->a:Le2/a;

    .line 762
    .line 763
    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/parser/moshi/a;->selectName(Le2/a;)I

    .line 764
    .line 765
    .line 766
    move-result v2

    .line 767
    if-eqz v2, :cond_2b

    .line 768
    .line 769
    if-eq v2, v10, :cond_2a

    .line 770
    .line 771
    if-eq v2, v11, :cond_29

    .line 772
    .line 773
    if-eq v2, v5, :cond_28

    .line 774
    .line 775
    if-eq v2, v6, :cond_27

    .line 776
    .line 777
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->skipValue()V

    .line 778
    .line 779
    .line 780
    goto :goto_f

    .line 781
    :cond_27
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->nextBoolean()Z

    .line 782
    .line 783
    .line 784
    move-result v17

    .line 785
    goto :goto_f

    .line 786
    :cond_28
    invoke-static/range {p0 .. p1}, Ld2/c;->parse(Lcom/airbnb/lottie/parser/moshi/a;LT1/i;)LZ1/l;

    .line 787
    .line 788
    .line 789
    move-result-object v16

    .line 790
    goto :goto_f

    .line 791
    :cond_29
    invoke-static {v0, v1, v8}, Ld2/d;->parseFloat(Lcom/airbnb/lottie/parser/moshi/a;LT1/i;Z)LZ1/b;

    .line 792
    .line 793
    .line 794
    move-result-object v15

    .line 795
    goto :goto_f

    .line 796
    :cond_2a
    invoke-static {v0, v1, v8}, Ld2/d;->parseFloat(Lcom/airbnb/lottie/parser/moshi/a;LT1/i;Z)LZ1/b;

    .line 797
    .line 798
    .line 799
    move-result-object v14

    .line 800
    goto :goto_f

    .line 801
    :cond_2b
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->nextString()Ljava/lang/String;

    .line 802
    .line 803
    .line 804
    move-result-object v13

    .line 805
    goto :goto_f

    .line 806
    :cond_2c
    new-instance v12, La2/j;

    .line 807
    .line 808
    invoke-direct/range {v12 .. v17}, La2/j;-><init>(Ljava/lang/String;LZ1/b;LZ1/b;LZ1/l;Z)V

    .line 809
    .line 810
    .line 811
    goto/16 :goto_5

    .line 812
    .line 813
    :pswitch_1b
    sget-object v2, Ld2/y;->a:Le2/a;

    .line 814
    .line 815
    move/from16 v17, v8

    .line 816
    .line 817
    const/4 v13, 0x0

    .line 818
    const/4 v14, 0x0

    .line 819
    const/4 v15, 0x0

    .line 820
    const/16 v16, 0x0

    .line 821
    .line 822
    :goto_10
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->hasNext()Z

    .line 823
    .line 824
    .line 825
    move-result v2

    .line 826
    if-eqz v2, :cond_32

    .line 827
    .line 828
    sget-object v2, Ld2/y;->a:Le2/a;

    .line 829
    .line 830
    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/parser/moshi/a;->selectName(Le2/a;)I

    .line 831
    .line 832
    .line 833
    move-result v2

    .line 834
    if-eqz v2, :cond_31

    .line 835
    .line 836
    if-eq v2, v10, :cond_30

    .line 837
    .line 838
    if-eq v2, v11, :cond_2f

    .line 839
    .line 840
    if-eq v2, v5, :cond_2e

    .line 841
    .line 842
    if-eq v2, v6, :cond_2d

    .line 843
    .line 844
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->skipValue()V

    .line 845
    .line 846
    .line 847
    goto :goto_10

    .line 848
    :cond_2d
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->nextBoolean()Z

    .line 849
    .line 850
    .line 851
    move-result v17

    .line 852
    goto :goto_10

    .line 853
    :cond_2e
    invoke-static/range {p0 .. p1}, Ld2/d;->parseFloat(Lcom/airbnb/lottie/parser/moshi/a;LT1/i;)LZ1/b;

    .line 854
    .line 855
    .line 856
    move-result-object v16

    .line 857
    goto :goto_10

    .line 858
    :cond_2f
    invoke-static/range {p0 .. p1}, Ld2/d;->c(Lcom/airbnb/lottie/parser/moshi/a;LT1/i;)LZ1/f;

    .line 859
    .line 860
    .line 861
    move-result-object v15

    .line 862
    goto :goto_10

    .line 863
    :cond_30
    invoke-static/range {p0 .. p1}, Ld2/a;->a(Lcom/airbnb/lottie/parser/moshi/a;LT1/i;)LZ1/m;

    .line 864
    .line 865
    .line 866
    move-result-object v14

    .line 867
    goto :goto_10

    .line 868
    :cond_31
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->nextString()Ljava/lang/String;

    .line 869
    .line 870
    .line 871
    move-result-object v13

    .line 872
    goto :goto_10

    .line 873
    :cond_32
    new-instance v12, La2/i;

    .line 874
    .line 875
    invoke-direct/range {v12 .. v17}, La2/i;-><init>(Ljava/lang/String;LZ1/m;LZ1/f;LZ1/b;Z)V

    .line 876
    .line 877
    .line 878
    goto/16 :goto_5

    .line 879
    .line 880
    :pswitch_1c
    sget-object v2, Ld2/u;->a:Le2/a;

    .line 881
    .line 882
    const/4 v2, 0x0

    .line 883
    const/4 v14, 0x0

    .line 884
    :goto_11
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->hasNext()Z

    .line 885
    .line 886
    .line 887
    move-result v3

    .line 888
    if-eqz v3, :cond_36

    .line 889
    .line 890
    sget-object v3, Ld2/u;->a:Le2/a;

    .line 891
    .line 892
    invoke-virtual {v0, v3}, Lcom/airbnb/lottie/parser/moshi/a;->selectName(Le2/a;)I

    .line 893
    .line 894
    .line 895
    move-result v3

    .line 896
    if-eqz v3, :cond_35

    .line 897
    .line 898
    if-eq v3, v10, :cond_34

    .line 899
    .line 900
    if-eq v3, v11, :cond_33

    .line 901
    .line 902
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->skipName()V

    .line 903
    .line 904
    .line 905
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->skipValue()V

    .line 906
    .line 907
    .line 908
    goto :goto_11

    .line 909
    :cond_33
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->nextBoolean()Z

    .line 910
    .line 911
    .line 912
    move-result v8

    .line 913
    goto :goto_11

    .line 914
    :cond_34
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->nextInt()I

    .line 915
    .line 916
    .line 917
    move-result v2

    .line 918
    invoke-static {v2}, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;->forId(I)Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    .line 919
    .line 920
    .line 921
    move-result-object v2

    .line 922
    goto :goto_11

    .line 923
    :cond_35
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->nextString()Ljava/lang/String;

    .line 924
    .line 925
    .line 926
    move-result-object v14

    .line 927
    goto :goto_11

    .line 928
    :cond_36
    new-instance v3, La2/g;

    .line 929
    .line 930
    invoke-direct {v3, v14, v2, v8}, La2/g;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;Z)V

    .line 931
    .line 932
    .line 933
    const-string v2, "Animation contains merge paths. Merge paths are only supported on KitKat+ and must be manually enabled by calling enableMergePathsForKitKatAndAbove()."

    .line 934
    .line 935
    invoke-virtual {v1, v2}, LT1/i;->addWarning(Ljava/lang/String;)V

    .line 936
    .line 937
    .line 938
    move-object v14, v3

    .line 939
    goto/16 :goto_20

    .line 940
    .line 941
    :pswitch_1d
    sget-object v5, Ld2/n;->a:Le2/a;

    .line 942
    .line 943
    new-instance v5, Ljava/util/ArrayList;

    .line 944
    .line 945
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 946
    .line 947
    .line 948
    move/from16 v33, v8

    .line 949
    .line 950
    move/from16 v30, v18

    .line 951
    .line 952
    const/16 v21, 0x0

    .line 953
    .line 954
    const/16 v22, 0x0

    .line 955
    .line 956
    const/16 v23, 0x0

    .line 957
    .line 958
    const/16 v24, 0x0

    .line 959
    .line 960
    const/16 v25, 0x0

    .line 961
    .line 962
    const/16 v26, 0x0

    .line 963
    .line 964
    const/16 v27, 0x0

    .line 965
    .line 966
    const/16 v28, 0x0

    .line 967
    .line 968
    const/16 v29, 0x0

    .line 969
    .line 970
    const/16 v32, 0x0

    .line 971
    .line 972
    :cond_37
    :goto_12
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->hasNext()Z

    .line 973
    .line 974
    .line 975
    move-result v6

    .line 976
    if-eqz v6, :cond_43

    .line 977
    .line 978
    sget-object v6, Ld2/n;->a:Le2/a;

    .line 979
    .line 980
    invoke-virtual {v0, v6}, Lcom/airbnb/lottie/parser/moshi/a;->selectName(Le2/a;)I

    .line 981
    .line 982
    .line 983
    move-result v6

    .line 984
    packed-switch v6, :pswitch_data_4

    .line 985
    .line 986
    .line 987
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->skipName()V

    .line 988
    .line 989
    .line 990
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->skipValue()V

    .line 991
    .line 992
    .line 993
    goto :goto_12

    .line 994
    :pswitch_1e
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->beginArray()V

    .line 995
    .line 996
    .line 997
    :cond_38
    :goto_13
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->hasNext()Z

    .line 998
    .line 999
    .line 1000
    move-result v6

    .line 1001
    if-eqz v6, :cond_3e

    .line 1002
    .line 1003
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->beginObject()V

    .line 1004
    .line 1005
    .line 1006
    const/4 v6, 0x0

    .line 1007
    const/4 v7, 0x0

    .line 1008
    :goto_14
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->hasNext()Z

    .line 1009
    .line 1010
    .line 1011
    move-result v11

    .line 1012
    if-eqz v11, :cond_3b

    .line 1013
    .line 1014
    sget-object v11, Ld2/n;->c:Le2/a;

    .line 1015
    .line 1016
    invoke-virtual {v0, v11}, Lcom/airbnb/lottie/parser/moshi/a;->selectName(Le2/a;)I

    .line 1017
    .line 1018
    .line 1019
    move-result v11

    .line 1020
    if-eqz v11, :cond_3a

    .line 1021
    .line 1022
    if-eq v11, v10, :cond_39

    .line 1023
    .line 1024
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->skipName()V

    .line 1025
    .line 1026
    .line 1027
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->skipValue()V

    .line 1028
    .line 1029
    .line 1030
    goto :goto_14

    .line 1031
    :cond_39
    invoke-static/range {p0 .. p1}, Ld2/d;->parseFloat(Lcom/airbnb/lottie/parser/moshi/a;LT1/i;)LZ1/b;

    .line 1032
    .line 1033
    .line 1034
    move-result-object v7

    .line 1035
    goto :goto_14

    .line 1036
    :cond_3a
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->nextString()Ljava/lang/String;

    .line 1037
    .line 1038
    .line 1039
    move-result-object v6

    .line 1040
    goto :goto_14

    .line 1041
    :cond_3b
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->endObject()V

    .line 1042
    .line 1043
    .line 1044
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1045
    .line 1046
    .line 1047
    move-result v11

    .line 1048
    if-eqz v11, :cond_3c

    .line 1049
    .line 1050
    move-object/from16 v32, v7

    .line 1051
    .line 1052
    goto :goto_13

    .line 1053
    :cond_3c
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1054
    .line 1055
    .line 1056
    move-result v11

    .line 1057
    if-nez v11, :cond_3d

    .line 1058
    .line 1059
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1060
    .line 1061
    .line 1062
    move-result v6

    .line 1063
    if-eqz v6, :cond_38

    .line 1064
    .line 1065
    :cond_3d
    invoke-virtual {v1, v10}, LT1/i;->setHasDashPattern(Z)V

    .line 1066
    .line 1067
    .line 1068
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1069
    .line 1070
    .line 1071
    goto :goto_13

    .line 1072
    :cond_3e
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->endArray()V

    .line 1073
    .line 1074
    .line 1075
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 1076
    .line 1077
    .line 1078
    move-result v6

    .line 1079
    if-ne v6, v10, :cond_37

    .line 1080
    .line 1081
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1082
    .line 1083
    .line 1084
    move-result-object v6

    .line 1085
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1086
    .line 1087
    .line 1088
    goto :goto_12

    .line 1089
    :pswitch_1f
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->nextBoolean()Z

    .line 1090
    .line 1091
    .line 1092
    move-result v33

    .line 1093
    goto :goto_12

    .line 1094
    :pswitch_20
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->nextDouble()D

    .line 1095
    .line 1096
    .line 1097
    move-result-wide v6

    .line 1098
    double-to-float v6, v6

    .line 1099
    move/from16 v30, v6

    .line 1100
    .line 1101
    goto/16 :goto_12

    .line 1102
    .line 1103
    :pswitch_21
    invoke-static {}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;->values()[Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

    .line 1104
    .line 1105
    .line 1106
    move-result-object v6

    .line 1107
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->nextInt()I

    .line 1108
    .line 1109
    .line 1110
    move-result v7

    .line 1111
    sub-int/2addr v7, v10

    .line 1112
    aget-object v29, v6, v7

    .line 1113
    .line 1114
    goto/16 :goto_12

    .line 1115
    .line 1116
    :pswitch_22
    invoke-static {}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;->values()[Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

    .line 1117
    .line 1118
    .line 1119
    move-result-object v6

    .line 1120
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->nextInt()I

    .line 1121
    .line 1122
    .line 1123
    move-result v7

    .line 1124
    sub-int/2addr v7, v10

    .line 1125
    aget-object v28, v6, v7

    .line 1126
    .line 1127
    goto/16 :goto_12

    .line 1128
    .line 1129
    :pswitch_23
    invoke-static/range {p0 .. p1}, Ld2/d;->parseFloat(Lcom/airbnb/lottie/parser/moshi/a;LT1/i;)LZ1/b;

    .line 1130
    .line 1131
    .line 1132
    move-result-object v27

    .line 1133
    goto/16 :goto_12

    .line 1134
    .line 1135
    :pswitch_24
    invoke-static/range {p0 .. p1}, Ld2/d;->c(Lcom/airbnb/lottie/parser/moshi/a;LT1/i;)LZ1/f;

    .line 1136
    .line 1137
    .line 1138
    move-result-object v26

    .line 1139
    goto/16 :goto_12

    .line 1140
    .line 1141
    :pswitch_25
    invoke-static/range {p0 .. p1}, Ld2/d;->c(Lcom/airbnb/lottie/parser/moshi/a;LT1/i;)LZ1/f;

    .line 1142
    .line 1143
    .line 1144
    move-result-object v25

    .line 1145
    goto/16 :goto_12

    .line 1146
    .line 1147
    :pswitch_26
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->nextInt()I

    .line 1148
    .line 1149
    .line 1150
    move-result v6

    .line 1151
    if-ne v6, v10, :cond_3f

    .line 1152
    .line 1153
    move-object/from16 v22, v16

    .line 1154
    .line 1155
    goto/16 :goto_12

    .line 1156
    .line 1157
    :cond_3f
    move-object/from16 v22, v15

    .line 1158
    .line 1159
    goto/16 :goto_12

    .line 1160
    .line 1161
    :pswitch_27
    invoke-static/range {p0 .. p1}, Ld2/d;->b(Lcom/airbnb/lottie/parser/moshi/a;LT1/i;)LZ1/d;

    .line 1162
    .line 1163
    .line 1164
    move-result-object v24

    .line 1165
    goto/16 :goto_12

    .line 1166
    .line 1167
    :pswitch_28
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->beginObject()V

    .line 1168
    .line 1169
    .line 1170
    const/4 v6, -0x1

    .line 1171
    :goto_15
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->hasNext()Z

    .line 1172
    .line 1173
    .line 1174
    move-result v7

    .line 1175
    if-eqz v7, :cond_42

    .line 1176
    .line 1177
    sget-object v7, Ld2/n;->b:Le2/a;

    .line 1178
    .line 1179
    invoke-virtual {v0, v7}, Lcom/airbnb/lottie/parser/moshi/a;->selectName(Le2/a;)I

    .line 1180
    .line 1181
    .line 1182
    move-result v7

    .line 1183
    if-eqz v7, :cond_41

    .line 1184
    .line 1185
    if-eq v7, v10, :cond_40

    .line 1186
    .line 1187
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->skipName()V

    .line 1188
    .line 1189
    .line 1190
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->skipValue()V

    .line 1191
    .line 1192
    .line 1193
    goto :goto_15

    .line 1194
    :cond_40
    new-instance v7, LZ1/c;

    .line 1195
    .line 1196
    new-instance v11, Ld2/l;

    .line 1197
    .line 1198
    invoke-direct {v11, v6}, Ld2/l;-><init>(I)V

    .line 1199
    .line 1200
    .line 1201
    invoke-static {v0, v1, v9, v11}, Ld2/r;->a(Lcom/airbnb/lottie/parser/moshi/a;LT1/i;FLd2/H;)Ljava/util/ArrayList;

    .line 1202
    .line 1203
    .line 1204
    move-result-object v11

    .line 1205
    invoke-direct {v7, v11}, LZ1/c;-><init>(Ljava/util/List;)V

    .line 1206
    .line 1207
    .line 1208
    move-object/from16 v23, v7

    .line 1209
    .line 1210
    goto :goto_15

    .line 1211
    :cond_41
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->nextInt()I

    .line 1212
    .line 1213
    .line 1214
    move-result v6

    .line 1215
    goto :goto_15

    .line 1216
    :cond_42
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->endObject()V

    .line 1217
    .line 1218
    .line 1219
    goto/16 :goto_12

    .line 1220
    .line 1221
    :pswitch_29
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->nextString()Ljava/lang/String;

    .line 1222
    .line 1223
    .line 1224
    move-result-object v21

    .line 1225
    goto/16 :goto_12

    .line 1226
    .line 1227
    :cond_43
    new-instance v20, La2/e;

    .line 1228
    .line 1229
    move-object/from16 v31, v5

    .line 1230
    .line 1231
    invoke-direct/range {v20 .. v33}, La2/e;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/GradientType;LZ1/c;LZ1/d;LZ1/f;LZ1/f;LZ1/b;Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;FLjava/util/List;LZ1/b;Z)V

    .line 1232
    .line 1233
    .line 1234
    goto/16 :goto_b

    .line 1235
    .line 1236
    :pswitch_2a
    sget-object v2, Ld2/D;->a:Le2/a;

    .line 1237
    .line 1238
    new-instance v2, Ljava/util/ArrayList;

    .line 1239
    .line 1240
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1241
    .line 1242
    .line 1243
    const/4 v14, 0x0

    .line 1244
    :goto_16
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->hasNext()Z

    .line 1245
    .line 1246
    .line 1247
    move-result v3

    .line 1248
    if-eqz v3, :cond_49

    .line 1249
    .line 1250
    sget-object v3, Ld2/D;->a:Le2/a;

    .line 1251
    .line 1252
    invoke-virtual {v0, v3}, Lcom/airbnb/lottie/parser/moshi/a;->selectName(Le2/a;)I

    .line 1253
    .line 1254
    .line 1255
    move-result v3

    .line 1256
    if-eqz v3, :cond_48

    .line 1257
    .line 1258
    if-eq v3, v10, :cond_47

    .line 1259
    .line 1260
    if-eq v3, v11, :cond_44

    .line 1261
    .line 1262
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->skipValue()V

    .line 1263
    .line 1264
    .line 1265
    goto :goto_16

    .line 1266
    :cond_44
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->beginArray()V

    .line 1267
    .line 1268
    .line 1269
    :cond_45
    :goto_17
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->hasNext()Z

    .line 1270
    .line 1271
    .line 1272
    move-result v3

    .line 1273
    if-eqz v3, :cond_46

    .line 1274
    .line 1275
    invoke-static/range {p0 .. p1}, Ld2/g;->a(Lcom/airbnb/lottie/parser/moshi/a;LT1/i;)La2/b;

    .line 1276
    .line 1277
    .line 1278
    move-result-object v3

    .line 1279
    if-eqz v3, :cond_45

    .line 1280
    .line 1281
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1282
    .line 1283
    .line 1284
    goto :goto_17

    .line 1285
    :cond_46
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->endArray()V

    .line 1286
    .line 1287
    .line 1288
    goto :goto_16

    .line 1289
    :cond_47
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->nextBoolean()Z

    .line 1290
    .line 1291
    .line 1292
    move-result v8

    .line 1293
    goto :goto_16

    .line 1294
    :cond_48
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->nextString()Ljava/lang/String;

    .line 1295
    .line 1296
    .line 1297
    move-result-object v14

    .line 1298
    goto :goto_16

    .line 1299
    :cond_49
    new-instance v1, La2/m;

    .line 1300
    .line 1301
    invoke-direct {v1, v14, v2, v8}, La2/m;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    .line 1302
    .line 1303
    .line 1304
    goto/16 :goto_e

    .line 1305
    .line 1306
    :pswitch_2b
    sget-object v2, Ld2/m;->a:Le2/a;

    .line 1307
    .line 1308
    sget-object v2, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    .line 1309
    .line 1310
    move-object/from16 v23, v2

    .line 1311
    .line 1312
    move/from16 v30, v8

    .line 1313
    .line 1314
    const/16 v21, 0x0

    .line 1315
    .line 1316
    const/16 v22, 0x0

    .line 1317
    .line 1318
    const/16 v24, 0x0

    .line 1319
    .line 1320
    const/16 v25, 0x0

    .line 1321
    .line 1322
    const/16 v26, 0x0

    .line 1323
    .line 1324
    const/16 v27, 0x0

    .line 1325
    .line 1326
    :goto_18
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->hasNext()Z

    .line 1327
    .line 1328
    .line 1329
    move-result v2

    .line 1330
    if-eqz v2, :cond_4f

    .line 1331
    .line 1332
    sget-object v2, Ld2/m;->a:Le2/a;

    .line 1333
    .line 1334
    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/parser/moshi/a;->selectName(Le2/a;)I

    .line 1335
    .line 1336
    .line 1337
    move-result v2

    .line 1338
    packed-switch v2, :pswitch_data_5

    .line 1339
    .line 1340
    .line 1341
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->skipName()V

    .line 1342
    .line 1343
    .line 1344
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->skipValue()V

    .line 1345
    .line 1346
    .line 1347
    goto :goto_18

    .line 1348
    :pswitch_2c
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->nextBoolean()Z

    .line 1349
    .line 1350
    .line 1351
    move-result v30

    .line 1352
    goto :goto_18

    .line 1353
    :pswitch_2d
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->nextInt()I

    .line 1354
    .line 1355
    .line 1356
    move-result v2

    .line 1357
    if-ne v2, v10, :cond_4a

    .line 1358
    .line 1359
    sget-object v2, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    .line 1360
    .line 1361
    :goto_19
    move-object/from16 v23, v2

    .line 1362
    .line 1363
    goto :goto_18

    .line 1364
    :cond_4a
    sget-object v2, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    .line 1365
    .line 1366
    goto :goto_19

    .line 1367
    :pswitch_2e
    invoke-static/range {p0 .. p1}, Ld2/d;->c(Lcom/airbnb/lottie/parser/moshi/a;LT1/i;)LZ1/f;

    .line 1368
    .line 1369
    .line 1370
    move-result-object v27

    .line 1371
    goto :goto_18

    .line 1372
    :pswitch_2f
    invoke-static/range {p0 .. p1}, Ld2/d;->c(Lcom/airbnb/lottie/parser/moshi/a;LT1/i;)LZ1/f;

    .line 1373
    .line 1374
    .line 1375
    move-result-object v26

    .line 1376
    goto :goto_18

    .line 1377
    :pswitch_30
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->nextInt()I

    .line 1378
    .line 1379
    .line 1380
    move-result v2

    .line 1381
    if-ne v2, v10, :cond_4b

    .line 1382
    .line 1383
    move-object/from16 v22, v16

    .line 1384
    .line 1385
    goto :goto_18

    .line 1386
    :cond_4b
    move-object/from16 v22, v15

    .line 1387
    .line 1388
    goto :goto_18

    .line 1389
    :pswitch_31
    invoke-static/range {p0 .. p1}, Ld2/d;->b(Lcom/airbnb/lottie/parser/moshi/a;LT1/i;)LZ1/d;

    .line 1390
    .line 1391
    .line 1392
    move-result-object v25

    .line 1393
    goto :goto_18

    .line 1394
    :pswitch_32
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->beginObject()V

    .line 1395
    .line 1396
    .line 1397
    const/4 v2, -0x1

    .line 1398
    :goto_1a
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->hasNext()Z

    .line 1399
    .line 1400
    .line 1401
    move-result v3

    .line 1402
    if-eqz v3, :cond_4e

    .line 1403
    .line 1404
    sget-object v3, Ld2/m;->b:Le2/a;

    .line 1405
    .line 1406
    invoke-virtual {v0, v3}, Lcom/airbnb/lottie/parser/moshi/a;->selectName(Le2/a;)I

    .line 1407
    .line 1408
    .line 1409
    move-result v3

    .line 1410
    if-eqz v3, :cond_4d

    .line 1411
    .line 1412
    if-eq v3, v10, :cond_4c

    .line 1413
    .line 1414
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->skipName()V

    .line 1415
    .line 1416
    .line 1417
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->skipValue()V

    .line 1418
    .line 1419
    .line 1420
    goto :goto_1a

    .line 1421
    :cond_4c
    new-instance v3, LZ1/c;

    .line 1422
    .line 1423
    new-instance v4, Ld2/l;

    .line 1424
    .line 1425
    invoke-direct {v4, v2}, Ld2/l;-><init>(I)V

    .line 1426
    .line 1427
    .line 1428
    invoke-static {v0, v1, v9, v4}, Ld2/r;->a(Lcom/airbnb/lottie/parser/moshi/a;LT1/i;FLd2/H;)Ljava/util/ArrayList;

    .line 1429
    .line 1430
    .line 1431
    move-result-object v4

    .line 1432
    invoke-direct {v3, v4}, LZ1/c;-><init>(Ljava/util/List;)V

    .line 1433
    .line 1434
    .line 1435
    move-object/from16 v24, v3

    .line 1436
    .line 1437
    goto :goto_1a

    .line 1438
    :cond_4d
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->nextInt()I

    .line 1439
    .line 1440
    .line 1441
    move-result v2

    .line 1442
    goto :goto_1a

    .line 1443
    :cond_4e
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->endObject()V

    .line 1444
    .line 1445
    .line 1446
    goto :goto_18

    .line 1447
    :pswitch_33
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->nextString()Ljava/lang/String;

    .line 1448
    .line 1449
    .line 1450
    move-result-object v21

    .line 1451
    goto :goto_18

    .line 1452
    :cond_4f
    new-instance v20, La2/d;

    .line 1453
    .line 1454
    const/16 v28, 0x0

    .line 1455
    .line 1456
    const/16 v29, 0x0

    .line 1457
    .line 1458
    invoke-direct/range {v20 .. v30}, La2/d;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/GradientType;Landroid/graphics/Path$FillType;LZ1/c;LZ1/d;LZ1/f;LZ1/f;LZ1/b;LZ1/b;Z)V

    .line 1459
    .line 1460
    .line 1461
    goto/16 :goto_b

    .line 1462
    .line 1463
    :pswitch_34
    sget-object v2, Ld2/C;->a:Le2/a;

    .line 1464
    .line 1465
    move v14, v8

    .line 1466
    move/from16 v18, v14

    .line 1467
    .line 1468
    move v2, v10

    .line 1469
    const/4 v13, 0x0

    .line 1470
    const/16 v16, 0x0

    .line 1471
    .line 1472
    const/16 v17, 0x0

    .line 1473
    .line 1474
    :goto_1b
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->hasNext()Z

    .line 1475
    .line 1476
    .line 1477
    move-result v3

    .line 1478
    if-eqz v3, :cond_56

    .line 1479
    .line 1480
    sget-object v3, Ld2/C;->a:Le2/a;

    .line 1481
    .line 1482
    invoke-virtual {v0, v3}, Lcom/airbnb/lottie/parser/moshi/a;->selectName(Le2/a;)I

    .line 1483
    .line 1484
    .line 1485
    move-result v3

    .line 1486
    if-eqz v3, :cond_55

    .line 1487
    .line 1488
    if-eq v3, v10, :cond_54

    .line 1489
    .line 1490
    if-eq v3, v11, :cond_53

    .line 1491
    .line 1492
    if-eq v3, v5, :cond_52

    .line 1493
    .line 1494
    if-eq v3, v6, :cond_51

    .line 1495
    .line 1496
    if-eq v3, v7, :cond_50

    .line 1497
    .line 1498
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->skipName()V

    .line 1499
    .line 1500
    .line 1501
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->skipValue()V

    .line 1502
    .line 1503
    .line 1504
    goto :goto_1b

    .line 1505
    :cond_50
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->nextBoolean()Z

    .line 1506
    .line 1507
    .line 1508
    move-result v18

    .line 1509
    goto :goto_1b

    .line 1510
    :cond_51
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->nextInt()I

    .line 1511
    .line 1512
    .line 1513
    move-result v2

    .line 1514
    goto :goto_1b

    .line 1515
    :cond_52
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->nextBoolean()Z

    .line 1516
    .line 1517
    .line 1518
    move-result v14

    .line 1519
    goto :goto_1b

    .line 1520
    :cond_53
    invoke-static/range {p0 .. p1}, Ld2/d;->b(Lcom/airbnb/lottie/parser/moshi/a;LT1/i;)LZ1/d;

    .line 1521
    .line 1522
    .line 1523
    move-result-object v17

    .line 1524
    goto :goto_1b

    .line 1525
    :cond_54
    invoke-static/range {p0 .. p1}, Ld2/d;->a(Lcom/airbnb/lottie/parser/moshi/a;LT1/i;)LZ1/a;

    .line 1526
    .line 1527
    .line 1528
    move-result-object v16

    .line 1529
    goto :goto_1b

    .line 1530
    :cond_55
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->nextString()Ljava/lang/String;

    .line 1531
    .line 1532
    .line 1533
    move-result-object v13

    .line 1534
    goto :goto_1b

    .line 1535
    :cond_56
    if-ne v2, v10, :cond_57

    .line 1536
    .line 1537
    sget-object v1, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    .line 1538
    .line 1539
    :goto_1c
    move-object v15, v1

    .line 1540
    goto :goto_1d

    .line 1541
    :cond_57
    sget-object v1, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    .line 1542
    .line 1543
    goto :goto_1c

    .line 1544
    :goto_1d
    new-instance v12, La2/l;

    .line 1545
    .line 1546
    invoke-direct/range {v12 .. v18}, La2/l;-><init>(Ljava/lang/String;ZLandroid/graphics/Path$FillType;LZ1/a;LZ1/d;Z)V

    .line 1547
    .line 1548
    .line 1549
    goto/16 :goto_5

    .line 1550
    .line 1551
    :pswitch_35
    sget-object v2, Ld2/e;->a:Le2/a;

    .line 1552
    .line 1553
    if-ne v12, v5, :cond_58

    .line 1554
    .line 1555
    move v2, v10

    .line 1556
    goto :goto_1e

    .line 1557
    :cond_58
    move v2, v8

    .line 1558
    :goto_1e
    move/from16 v16, v2

    .line 1559
    .line 1560
    move/from16 v17, v8

    .line 1561
    .line 1562
    const/4 v13, 0x0

    .line 1563
    const/4 v14, 0x0

    .line 1564
    const/4 v15, 0x0

    .line 1565
    :goto_1f
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->hasNext()Z

    .line 1566
    .line 1567
    .line 1568
    move-result v2

    .line 1569
    if-eqz v2, :cond_5f

    .line 1570
    .line 1571
    sget-object v2, Ld2/e;->a:Le2/a;

    .line 1572
    .line 1573
    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/parser/moshi/a;->selectName(Le2/a;)I

    .line 1574
    .line 1575
    .line 1576
    move-result v2

    .line 1577
    if-eqz v2, :cond_5e

    .line 1578
    .line 1579
    if-eq v2, v10, :cond_5d

    .line 1580
    .line 1581
    if-eq v2, v11, :cond_5c

    .line 1582
    .line 1583
    if-eq v2, v5, :cond_5b

    .line 1584
    .line 1585
    if-eq v2, v6, :cond_59

    .line 1586
    .line 1587
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->skipName()V

    .line 1588
    .line 1589
    .line 1590
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->skipValue()V

    .line 1591
    .line 1592
    .line 1593
    goto :goto_1f

    .line 1594
    :cond_59
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->nextInt()I

    .line 1595
    .line 1596
    .line 1597
    move-result v2

    .line 1598
    if-ne v2, v5, :cond_5a

    .line 1599
    .line 1600
    move/from16 v16, v10

    .line 1601
    .line 1602
    goto :goto_1f

    .line 1603
    :cond_5a
    move/from16 v16, v8

    .line 1604
    .line 1605
    goto :goto_1f

    .line 1606
    :cond_5b
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->nextBoolean()Z

    .line 1607
    .line 1608
    .line 1609
    move-result v17

    .line 1610
    goto :goto_1f

    .line 1611
    :cond_5c
    invoke-static/range {p0 .. p1}, Ld2/d;->c(Lcom/airbnb/lottie/parser/moshi/a;LT1/i;)LZ1/f;

    .line 1612
    .line 1613
    .line 1614
    move-result-object v15

    .line 1615
    goto :goto_1f

    .line 1616
    :cond_5d
    invoke-static/range {p0 .. p1}, Ld2/a;->a(Lcom/airbnb/lottie/parser/moshi/a;LT1/i;)LZ1/m;

    .line 1617
    .line 1618
    .line 1619
    move-result-object v14

    .line 1620
    goto :goto_1f

    .line 1621
    :cond_5e
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->nextString()Ljava/lang/String;

    .line 1622
    .line 1623
    .line 1624
    move-result-object v13

    .line 1625
    goto :goto_1f

    .line 1626
    :cond_5f
    new-instance v12, La2/a;

    .line 1627
    .line 1628
    invoke-direct/range {v12 .. v17}, La2/a;-><init>(Ljava/lang/String;LZ1/m;LZ1/f;ZZ)V

    .line 1629
    .line 1630
    .line 1631
    goto/16 :goto_5

    .line 1632
    .line 1633
    :goto_20
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->hasNext()Z

    .line 1634
    .line 1635
    .line 1636
    move-result v1

    .line 1637
    if-eqz v1, :cond_60

    .line 1638
    .line 1639
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->skipValue()V

    .line 1640
    .line 1641
    .line 1642
    goto :goto_20

    .line 1643
    :cond_60
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->endObject()V

    .line 1644
    .line 1645
    .line 1646
    return-object v14

    .line 1647
    :sswitch_data_0
    .sparse-switch
        0xca7 -> :sswitch_c
        0xcc6 -> :sswitch_b
        0xcdf -> :sswitch_a
        0xceb -> :sswitch_9
        0xcec -> :sswitch_8
        0xda0 -> :sswitch_7
        0xe31 -> :sswitch_6
        0xe3e -> :sswitch_5
        0xe55 -> :sswitch_4
        0xe5f -> :sswitch_3
        0xe61 -> :sswitch_2
        0xe79 -> :sswitch_1
        0xe7e -> :sswitch_0
    .end sparse-switch

    .line 1648
    .line 1649
    .line 1650
    .line 1651
    .line 1652
    .line 1653
    .line 1654
    .line 1655
    .line 1656
    .line 1657
    .line 1658
    .line 1659
    .line 1660
    .line 1661
    .line 1662
    .line 1663
    .line 1664
    .line 1665
    .line 1666
    .line 1667
    .line 1668
    .line 1669
    .line 1670
    .line 1671
    .line 1672
    .line 1673
    .line 1674
    .line 1675
    .line 1676
    .line 1677
    .line 1678
    .line 1679
    .line 1680
    .line 1681
    .line 1682
    .line 1683
    .line 1684
    .line 1685
    .line 1686
    .line 1687
    .line 1688
    .line 1689
    .line 1690
    .line 1691
    .line 1692
    .line 1693
    .line 1694
    .line 1695
    .line 1696
    .line 1697
    .line 1698
    .line 1699
    .line 1700
    .line 1701
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_35
        :pswitch_34
        :pswitch_2b
        :pswitch_2a
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_e
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1702
    .line 1703
    .line 1704
    .line 1705
    .line 1706
    .line 1707
    .line 1708
    .line 1709
    .line 1710
    .line 1711
    .line 1712
    .line 1713
    .line 1714
    .line 1715
    .line 1716
    .line 1717
    .line 1718
    .line 1719
    .line 1720
    .line 1721
    .line 1722
    .line 1723
    .line 1724
    .line 1725
    .line 1726
    .line 1727
    .line 1728
    .line 1729
    .line 1730
    .line 1731
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_3
    .end packed-switch

    .line 1732
    .line 1733
    .line 1734
    .line 1735
    .line 1736
    .line 1737
    .line 1738
    .line 1739
    .line 1740
    .line 1741
    .line 1742
    .line 1743
    .line 1744
    .line 1745
    .line 1746
    .line 1747
    .line 1748
    .line 1749
    .line 1750
    .line 1751
    .line 1752
    .line 1753
    :sswitch_data_1
    .sparse-switch
        0x64 -> :sswitch_f
        0x67 -> :sswitch_e
        0x6f -> :sswitch_d
    .end sparse-switch

    .line 1754
    .line 1755
    .line 1756
    .line 1757
    .line 1758
    .line 1759
    .line 1760
    .line 1761
    .line 1762
    .line 1763
    .line 1764
    .line 1765
    .line 1766
    .line 1767
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_4
    .end packed-switch

    .line 1768
    .line 1769
    .line 1770
    .line 1771
    .line 1772
    .line 1773
    .line 1774
    .line 1775
    .line 1776
    .line 1777
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
    .end packed-switch

    .line 1778
    .line 1779
    .line 1780
    .line 1781
    .line 1782
    .line 1783
    .line 1784
    .line 1785
    .line 1786
    .line 1787
    .line 1788
    .line 1789
    .line 1790
    .line 1791
    .line 1792
    .line 1793
    .line 1794
    .line 1795
    .line 1796
    .line 1797
    .line 1798
    .line 1799
    .line 1800
    .line 1801
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
    .end packed-switch

    .line 1802
    .line 1803
    .line 1804
    .line 1805
    .line 1806
    .line 1807
    .line 1808
    .line 1809
    .line 1810
    .line 1811
    .line 1812
    .line 1813
    .line 1814
    .line 1815
    .line 1816
    .line 1817
    .line 1818
    .line 1819
    .line 1820
    .line 1821
    .line 1822
    .line 1823
    .line 1824
    .line 1825
    .line 1826
    .line 1827
    .line 1828
    .line 1829
    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
    .end packed-switch
.end method
