.class public final LP0/G;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:LP3/A;

.field public static final e:LP3/A;


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public b:I

.field public c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x3a

    .line 2
    .line 3
    invoke-static {v0}, LP3/A;->on(C)LP3/A;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, LP0/G;->d:LP3/A;

    .line 8
    .line 9
    const/16 v0, 0x2a

    .line 10
    .line 11
    invoke-static {v0}, LP3/A;->on(C)LP3/A;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, LP0/G;->e:LP3/A;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, LP0/G;->a:Ljava/util/ArrayList;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, LP0/G;->b:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public read(Lv0/D;Lv0/c0;Ljava/util/List;)I
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv0/D;",
            "Lv0/c0;",
            "Ljava/util/List<",
            "Landroidx/media3/common/Metadata$Entry;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    const/4 v3, 0x4

    .line 8
    const/4 v4, 0x3

    .line 9
    const/4 v5, 0x2

    .line 10
    const/4 v6, 0x0

    .line 11
    const/4 v8, 0x1

    .line 12
    iget v9, v1, LP0/G;->b:I

    .line 13
    .line 14
    if-eqz v9, :cond_12

    .line 15
    .line 16
    if-eq v9, v8, :cond_10

    .line 17
    .line 18
    iget-object v12, v1, LP0/G;->a:Ljava/util/ArrayList;

    .line 19
    .line 20
    const/16 v13, 0xb01

    .line 21
    .line 22
    const/16 v14, 0xb04

    .line 23
    .line 24
    const/16 v15, 0xb00

    .line 25
    .line 26
    const/16 v16, 0x8

    .line 27
    .line 28
    const/16 v7, 0xb03

    .line 29
    .line 30
    const/16 v10, 0x890

    .line 31
    .line 32
    if-eq v9, v5, :cond_c

    .line 33
    .line 34
    if-ne v9, v4, :cond_b

    .line 35
    .line 36
    invoke-interface {v0}, Lv0/D;->getPosition()J

    .line 37
    .line 38
    .line 39
    move-result-wide v17

    .line 40
    invoke-interface {v0}, Lv0/D;->getLength()J

    .line 41
    .line 42
    .line 43
    move-result-wide v19

    .line 44
    invoke-interface {v0}, Lv0/D;->getPosition()J

    .line 45
    .line 46
    .line 47
    move-result-wide v21

    .line 48
    sub-long v19, v19, v21

    .line 49
    .line 50
    iget v9, v1, LP0/G;->c:I

    .line 51
    .line 52
    int-to-long v8, v9

    .line 53
    sub-long v8, v19, v8

    .line 54
    .line 55
    long-to-int v8, v8

    .line 56
    new-instance v9, Landroidx/media3/common/util/ParsableByteArray;

    .line 57
    .line 58
    invoke-direct {v9, v8}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v9}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 62
    .line 63
    .line 64
    move-result-object v11

    .line 65
    invoke-interface {v0, v11, v6, v8}, Lv0/D;->readFully([BII)V

    .line 66
    .line 67
    .line 68
    move v0, v6

    .line 69
    :goto_0
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 70
    .line 71
    .line 72
    move-result v8

    .line 73
    if-ge v0, v8, :cond_a

    .line 74
    .line 75
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v8

    .line 79
    check-cast v8, LP0/F;

    .line 80
    .line 81
    iget-wide v5, v8, LP0/F;->a:J

    .line 82
    .line 83
    sub-long v5, v5, v17

    .line 84
    .line 85
    long-to-int v5, v5

    .line 86
    invoke-virtual {v9, v5}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v9, v3}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v9}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    .line 93
    .line 94
    .line 95
    move-result v5

    .line 96
    invoke-virtual {v9, v5}, Landroidx/media3/common/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v6

    .line 100
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    const/4 v11, 0x0

    .line 104
    const/16 v22, -0x1

    .line 105
    .line 106
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    .line 107
    .line 108
    .line 109
    move-result v23

    .line 110
    sparse-switch v23, :sswitch_data_0

    .line 111
    .line 112
    .line 113
    goto :goto_1

    .line 114
    :sswitch_0
    const-string v3, "Super_SlowMotion_BGM"

    .line 115
    .line 116
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v3

    .line 120
    if-nez v3, :cond_0

    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_0
    const/16 v22, 0x4

    .line 124
    .line 125
    goto :goto_1

    .line 126
    :sswitch_1
    const-string v3, "Super_SlowMotion_Deflickering_On"

    .line 127
    .line 128
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v3

    .line 132
    if-nez v3, :cond_1

    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_1
    move/from16 v22, v4

    .line 136
    .line 137
    goto :goto_1

    .line 138
    :sswitch_2
    const-string v3, "Super_SlowMotion_Data"

    .line 139
    .line 140
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v3

    .line 144
    if-nez v3, :cond_2

    .line 145
    .line 146
    goto :goto_1

    .line 147
    :cond_2
    const/16 v22, 0x2

    .line 148
    .line 149
    goto :goto_1

    .line 150
    :sswitch_3
    const-string v3, "Super_SlowMotion_Edit_Data"

    .line 151
    .line 152
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result v3

    .line 156
    if-nez v3, :cond_3

    .line 157
    .line 158
    goto :goto_1

    .line 159
    :cond_3
    const/16 v22, 0x1

    .line 160
    .line 161
    goto :goto_1

    .line 162
    :sswitch_4
    const-string v3, "SlowMotion_Data"

    .line 163
    .line 164
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    move-result v3

    .line 168
    if-nez v3, :cond_4

    .line 169
    .line 170
    goto :goto_1

    .line 171
    :cond_4
    const/16 v22, 0x0

    .line 172
    .line 173
    :goto_1
    packed-switch v22, :pswitch_data_0

    .line 174
    .line 175
    .line 176
    const-string v0, "Invalid SEF name"

    .line 177
    .line 178
    invoke-static {v0, v11}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    throw v0

    .line 183
    :pswitch_0
    move v3, v13

    .line 184
    goto :goto_2

    .line 185
    :pswitch_1
    move v3, v14

    .line 186
    goto :goto_2

    .line 187
    :pswitch_2
    move v3, v15

    .line 188
    goto :goto_2

    .line 189
    :pswitch_3
    move v3, v7

    .line 190
    goto :goto_2

    .line 191
    :pswitch_4
    move v3, v10

    .line 192
    :goto_2
    add-int/lit8 v5, v5, 0x8

    .line 193
    .line 194
    iget v6, v8, LP0/F;->b:I

    .line 195
    .line 196
    sub-int/2addr v6, v5

    .line 197
    if-eq v3, v10, :cond_7

    .line 198
    .line 199
    if-eq v3, v15, :cond_6

    .line 200
    .line 201
    if-eq v3, v13, :cond_6

    .line 202
    .line 203
    if-eq v3, v7, :cond_6

    .line 204
    .line 205
    if-ne v3, v14, :cond_5

    .line 206
    .line 207
    goto :goto_3

    .line 208
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 209
    .line 210
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 211
    .line 212
    .line 213
    throw v0

    .line 214
    :cond_6
    :goto_3
    move-object/from16 v3, p3

    .line 215
    .line 216
    :goto_4
    const/4 v11, 0x1

    .line 217
    goto/16 :goto_7

    .line 218
    .line 219
    :cond_7
    new-instance v3, Ljava/util/ArrayList;

    .line 220
    .line 221
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v9, v6}, Landroidx/media3/common/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v5

    .line 228
    sget-object v6, LP0/G;->e:LP3/A;

    .line 229
    .line 230
    invoke-virtual {v6, v5}, LP3/A;->splitToList(Ljava/lang/CharSequence;)Ljava/util/List;

    .line 231
    .line 232
    .line 233
    move-result-object v5

    .line 234
    const/4 v6, 0x0

    .line 235
    :goto_5
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 236
    .line 237
    .line 238
    move-result v8

    .line 239
    if-ge v6, v8, :cond_9

    .line 240
    .line 241
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v8

    .line 245
    check-cast v8, Ljava/lang/CharSequence;

    .line 246
    .line 247
    sget-object v11, LP0/G;->d:LP3/A;

    .line 248
    .line 249
    invoke-virtual {v11, v8}, LP3/A;->splitToList(Ljava/lang/CharSequence;)Ljava/util/List;

    .line 250
    .line 251
    .line 252
    move-result-object v8

    .line 253
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 254
    .line 255
    .line 256
    move-result v11

    .line 257
    if-ne v11, v4, :cond_8

    .line 258
    .line 259
    const/4 v11, 0x0

    .line 260
    :try_start_0
    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v22

    .line 264
    check-cast v22, Ljava/lang/String;

    .line 265
    .line 266
    invoke-static/range {v22 .. v22}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 267
    .line 268
    .line 269
    move-result-wide v25

    .line 270
    const/4 v11, 0x1

    .line 271
    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    move-result-object v19
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 275
    const/4 v11, 0x0

    .line 276
    :try_start_1
    check-cast v19, Ljava/lang/String;

    .line 277
    .line 278
    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 279
    .line 280
    .line 281
    move-result-wide v27

    .line 282
    const/4 v4, 0x2

    .line 283
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    move-result-object v8

    .line 287
    check-cast v8, Ljava/lang/String;

    .line 288
    .line 289
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 290
    .line 291
    .line 292
    move-result v4

    .line 293
    const/16 v22, 0x1

    .line 294
    .line 295
    add-int/lit8 v4, v4, -0x1

    .line 296
    .line 297
    shl-int v29, v22, v4

    .line 298
    .line 299
    new-instance v24, LK0/b;

    .line 300
    .line 301
    invoke-direct/range {v24 .. v29}, LK0/b;-><init>(JJI)V

    .line 302
    .line 303
    .line 304
    move-object/from16 v4, v24

    .line 305
    .line 306
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 307
    .line 308
    .line 309
    add-int/lit8 v6, v6, 0x1

    .line 310
    .line 311
    const/4 v4, 0x3

    .line 312
    goto :goto_5

    .line 313
    :catch_0
    move-exception v0

    .line 314
    goto :goto_6

    .line 315
    :catch_1
    move-exception v0

    .line 316
    const/4 v11, 0x0

    .line 317
    :goto_6
    invoke-static {v11, v0}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 318
    .line 319
    .line 320
    move-result-object v0

    .line 321
    throw v0

    .line 322
    :cond_8
    const/4 v11, 0x0

    .line 323
    invoke-static {v11, v11}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    throw v0

    .line 328
    :cond_9
    new-instance v4, LK0/c;

    .line 329
    .line 330
    invoke-direct {v4, v3}, LK0/c;-><init>(Ljava/util/List;)V

    .line 331
    .line 332
    .line 333
    move-object/from16 v3, p3

    .line 334
    .line 335
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 336
    .line 337
    .line 338
    goto :goto_4

    .line 339
    :goto_7
    add-int/2addr v0, v11

    .line 340
    const/4 v3, 0x4

    .line 341
    const/4 v4, 0x3

    .line 342
    const/4 v5, 0x2

    .line 343
    const/4 v6, 0x0

    .line 344
    goto/16 :goto_0

    .line 345
    .line 346
    :cond_a
    const-wide/16 v4, 0x0

    .line 347
    .line 348
    const/4 v11, 0x1

    .line 349
    iput-wide v4, v2, Lv0/c0;->a:J

    .line 350
    .line 351
    return v11

    .line 352
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 353
    .line 354
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 355
    .line 356
    .line 357
    throw v0

    .line 358
    :cond_c
    invoke-interface {v0}, Lv0/D;->getLength()J

    .line 359
    .line 360
    .line 361
    move-result-wide v3

    .line 362
    iget v5, v1, LP0/G;->c:I

    .line 363
    .line 364
    add-int/lit8 v5, v5, -0x14

    .line 365
    .line 366
    new-instance v6, Landroidx/media3/common/util/ParsableByteArray;

    .line 367
    .line 368
    invoke-direct {v6, v5}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    .line 369
    .line 370
    .line 371
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 372
    .line 373
    .line 374
    move-result-object v8

    .line 375
    const/4 v9, 0x0

    .line 376
    invoke-interface {v0, v8, v9, v5}, Lv0/D;->readFully([BII)V

    .line 377
    .line 378
    .line 379
    const/4 v0, 0x0

    .line 380
    :goto_8
    div-int/lit8 v8, v5, 0xc

    .line 381
    .line 382
    if-ge v0, v8, :cond_e

    .line 383
    .line 384
    const/4 v8, 0x2

    .line 385
    invoke-virtual {v6, v8}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 386
    .line 387
    .line 388
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianShort()S

    .line 389
    .line 390
    .line 391
    move-result v8

    .line 392
    if-eq v8, v10, :cond_d

    .line 393
    .line 394
    if-eq v8, v15, :cond_d

    .line 395
    .line 396
    if-eq v8, v13, :cond_d

    .line 397
    .line 398
    if-eq v8, v7, :cond_d

    .line 399
    .line 400
    if-eq v8, v14, :cond_d

    .line 401
    .line 402
    move/from16 v9, v16

    .line 403
    .line 404
    invoke-virtual {v6, v9}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 405
    .line 406
    .line 407
    :goto_9
    const/4 v11, 0x1

    .line 408
    goto :goto_a

    .line 409
    :cond_d
    iget v9, v1, LP0/G;->c:I

    .line 410
    .line 411
    int-to-long v10, v9

    .line 412
    sub-long v10, v3, v10

    .line 413
    .line 414
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    .line 415
    .line 416
    .line 417
    move-result v9

    .line 418
    int-to-long v13, v9

    .line 419
    sub-long/2addr v10, v13

    .line 420
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    .line 421
    .line 422
    .line 423
    move-result v9

    .line 424
    new-instance v13, LP0/F;

    .line 425
    .line 426
    invoke-direct {v13, v8, v10, v11, v9}, LP0/F;-><init>(IJI)V

    .line 427
    .line 428
    .line 429
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 430
    .line 431
    .line 432
    goto :goto_9

    .line 433
    :goto_a
    add-int/2addr v0, v11

    .line 434
    const/16 v10, 0x890

    .line 435
    .line 436
    const/16 v13, 0xb01

    .line 437
    .line 438
    const/16 v14, 0xb04

    .line 439
    .line 440
    const/16 v16, 0x8

    .line 441
    .line 442
    goto :goto_8

    .line 443
    :cond_e
    const/4 v11, 0x1

    .line 444
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    .line 445
    .line 446
    .line 447
    move-result v0

    .line 448
    if-eqz v0, :cond_f

    .line 449
    .line 450
    const-wide/16 v4, 0x0

    .line 451
    .line 452
    iput-wide v4, v2, Lv0/c0;->a:J

    .line 453
    .line 454
    return v11

    .line 455
    :cond_f
    const/4 v0, 0x3

    .line 456
    iput v0, v1, LP0/G;->b:I

    .line 457
    .line 458
    const/4 v9, 0x0

    .line 459
    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 460
    .line 461
    .line 462
    move-result-object v0

    .line 463
    check-cast v0, LP0/F;

    .line 464
    .line 465
    iget-wide v3, v0, LP0/F;->a:J

    .line 466
    .line 467
    iput-wide v3, v2, Lv0/c0;->a:J

    .line 468
    .line 469
    return v11

    .line 470
    :cond_10
    move v9, v6

    .line 471
    new-instance v3, Landroidx/media3/common/util/ParsableByteArray;

    .line 472
    .line 473
    const/16 v4, 0x8

    .line 474
    .line 475
    invoke-direct {v3, v4}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    .line 476
    .line 477
    .line 478
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 479
    .line 480
    .line 481
    move-result-object v5

    .line 482
    invoke-interface {v0, v5, v9, v4}, Lv0/D;->readFully([BII)V

    .line 483
    .line 484
    .line 485
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    .line 486
    .line 487
    .line 488
    move-result v5

    .line 489
    add-int/2addr v5, v4

    .line 490
    iput v5, v1, LP0/G;->c:I

    .line 491
    .line 492
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    .line 493
    .line 494
    .line 495
    move-result v3

    .line 496
    const v4, 0x53454654

    .line 497
    .line 498
    .line 499
    if-eq v3, v4, :cond_11

    .line 500
    .line 501
    const-wide/16 v4, 0x0

    .line 502
    .line 503
    iput-wide v4, v2, Lv0/c0;->a:J

    .line 504
    .line 505
    const/4 v11, 0x1

    .line 506
    return v11

    .line 507
    :cond_11
    const/4 v11, 0x1

    .line 508
    invoke-interface {v0}, Lv0/D;->getPosition()J

    .line 509
    .line 510
    .line 511
    move-result-wide v3

    .line 512
    iget v0, v1, LP0/G;->c:I

    .line 513
    .line 514
    add-int/lit8 v0, v0, -0xc

    .line 515
    .line 516
    int-to-long v5, v0

    .line 517
    sub-long/2addr v3, v5

    .line 518
    iput-wide v3, v2, Lv0/c0;->a:J

    .line 519
    .line 520
    const/4 v4, 0x2

    .line 521
    iput v4, v1, LP0/G;->b:I

    .line 522
    .line 523
    return v11

    .line 524
    :cond_12
    const-wide/16 v4, 0x0

    .line 525
    .line 526
    invoke-interface {v0}, Lv0/D;->getLength()J

    .line 527
    .line 528
    .line 529
    move-result-wide v6

    .line 530
    const-wide/16 v8, -0x1

    .line 531
    .line 532
    cmp-long v0, v6, v8

    .line 533
    .line 534
    if-eqz v0, :cond_14

    .line 535
    .line 536
    const-wide/16 v8, 0x8

    .line 537
    .line 538
    cmp-long v0, v6, v8

    .line 539
    .line 540
    if-gez v0, :cond_13

    .line 541
    .line 542
    goto :goto_b

    .line 543
    :cond_13
    sub-long v3, v6, v8

    .line 544
    .line 545
    goto :goto_c

    .line 546
    :cond_14
    :goto_b
    move-wide v3, v4

    .line 547
    :goto_c
    iput-wide v3, v2, Lv0/c0;->a:J

    .line 548
    .line 549
    const/4 v11, 0x1

    .line 550
    iput v11, v1, LP0/G;->b:I

    .line 551
    .line 552
    return v11

    .line 553
    :sswitch_data_0
    .sparse-switch
        -0x6604662e -> :sswitch_4
        -0x4f6659e5 -> :sswitch_3
        -0x4a96a712 -> :sswitch_2
        -0x3182f331 -> :sswitch_1
        0x68f2d704 -> :sswitch_0
    .end sparse-switch

    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public reset()V
    .locals 1

    .line 1
    iget-object v0, p0, LP0/G;->a:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput v0, p0, LP0/G;->b:I

    .line 8
    .line 9
    return-void
.end method
