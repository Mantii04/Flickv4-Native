.class public abstract Ld2/t;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Le2/a;

.field public static final b:Le2/a;

.field public static final c:Le2/a;

.field public static final d:Le2/a;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    const-string v9, "chars"

    .line 2
    .line 3
    const-string v10, "markers"

    .line 4
    .line 5
    const-string v0, "w"

    .line 6
    .line 7
    const-string v1, "h"

    .line 8
    .line 9
    const-string v2, "ip"

    .line 10
    .line 11
    const-string v3, "op"

    .line 12
    .line 13
    const-string v4, "fr"

    .line 14
    .line 15
    const-string v5, "v"

    .line 16
    .line 17
    const-string v6, "layers"

    .line 18
    .line 19
    const-string v7, "assets"

    .line 20
    .line 21
    const-string v8, "fonts"

    .line 22
    .line 23
    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0}, Le2/a;->of([Ljava/lang/String;)Le2/a;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sput-object v0, Ld2/t;->a:Le2/a;

    .line 32
    .line 33
    const-string v5, "p"

    .line 34
    .line 35
    const-string v6, "u"

    .line 36
    .line 37
    const-string v1, "id"

    .line 38
    .line 39
    const-string v2, "layers"

    .line 40
    .line 41
    const-string v3, "w"

    .line 42
    .line 43
    const-string v4, "h"

    .line 44
    .line 45
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-static {v0}, Le2/a;->of([Ljava/lang/String;)Le2/a;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    sput-object v0, Ld2/t;->b:Le2/a;

    .line 54
    .line 55
    const-string v0, "list"

    .line 56
    .line 57
    filled-new-array {v0}, [Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-static {v0}, Le2/a;->of([Ljava/lang/String;)Le2/a;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    sput-object v0, Ld2/t;->c:Le2/a;

    .line 66
    .line 67
    const-string v0, "tm"

    .line 68
    .line 69
    const-string v1, "dr"

    .line 70
    .line 71
    const-string v2, "cm"

    .line 72
    .line 73
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-static {v0}, Le2/a;->of([Ljava/lang/String;)Le2/a;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    sput-object v0, Ld2/t;->d:Le2/a;

    .line 82
    .line 83
    return-void
.end method

.method public static parse(Lcom/airbnb/lottie/parser/moshi/a;)LT1/i;
    .locals 35
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {}, Lf2/h;->dpScale()F

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    new-instance v9, Lp/n;

    .line 9
    .line 10
    invoke-direct {v9}, Lp/n;-><init>()V

    .line 11
    .line 12
    .line 13
    new-instance v8, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    new-instance v10, Ljava/util/HashMap;

    .line 19
    .line 20
    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 21
    .line 22
    .line 23
    new-instance v11, Ljava/util/HashMap;

    .line 24
    .line 25
    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 26
    .line 27
    .line 28
    new-instance v13, Ljava/util/HashMap;

    .line 29
    .line 30
    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 31
    .line 32
    .line 33
    new-instance v14, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .line 37
    .line 38
    new-instance v12, Lp/r;

    .line 39
    .line 40
    invoke-direct {v12}, Lp/r;-><init>()V

    .line 41
    .line 42
    .line 43
    new-instance v3, LT1/i;

    .line 44
    .line 45
    invoke-direct {v3}, LT1/i;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->beginObject()V

    .line 49
    .line 50
    .line 51
    const/4 v6, 0x0

    .line 52
    const/4 v7, 0x0

    .line 53
    const/4 v15, 0x0

    .line 54
    const/16 v16, 0x0

    .line 55
    .line 56
    const/16 v17, 0x0

    .line 57
    .line 58
    :goto_0
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->hasNext()Z

    .line 59
    .line 60
    .line 61
    move-result v18

    .line 62
    if-eqz v18, :cond_26

    .line 63
    .line 64
    sget-object v4, Ld2/t;->a:Le2/a;

    .line 65
    .line 66
    invoke-virtual {v0, v4}, Lcom/airbnb/lottie/parser/moshi/a;->selectName(Le2/a;)I

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    const/16 v21, 0x0

    .line 71
    .line 72
    packed-switch v4, :pswitch_data_0

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->skipName()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->skipValue()V

    .line 79
    .line 80
    .line 81
    move/from16 v25, v1

    .line 82
    .line 83
    move/from16 v22, v2

    .line 84
    .line 85
    move-object/from16 v23, v12

    .line 86
    .line 87
    move-object/from16 v26, v14

    .line 88
    .line 89
    move v12, v15

    .line 90
    goto/16 :goto_13

    .line 91
    .line 92
    :pswitch_0
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->beginArray()V

    .line 93
    .line 94
    .line 95
    :goto_1
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->hasNext()Z

    .line 96
    .line 97
    .line 98
    move-result v4

    .line 99
    if-eqz v4, :cond_4

    .line 100
    .line 101
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->beginObject()V

    .line 102
    .line 103
    .line 104
    move-object/from16 v4, v21

    .line 105
    .line 106
    const/16 v22, 0x0

    .line 107
    .line 108
    const/16 v23, 0x0

    .line 109
    .line 110
    :goto_2
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->hasNext()Z

    .line 111
    .line 112
    .line 113
    move-result v20

    .line 114
    if-eqz v20, :cond_3

    .line 115
    .line 116
    sget-object v5, Ld2/t;->d:Le2/a;

    .line 117
    .line 118
    invoke-virtual {v0, v5}, Lcom/airbnb/lottie/parser/moshi/a;->selectName(Le2/a;)I

    .line 119
    .line 120
    .line 121
    move-result v5

    .line 122
    if-eqz v5, :cond_2

    .line 123
    .line 124
    if-eq v5, v1, :cond_1

    .line 125
    .line 126
    const/4 v1, 0x2

    .line 127
    if-eq v5, v1, :cond_0

    .line 128
    .line 129
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->skipName()V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->skipValue()V

    .line 133
    .line 134
    .line 135
    :goto_3
    const/4 v1, 0x1

    .line 136
    goto :goto_2

    .line 137
    :cond_0
    move v5, v2

    .line 138
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->nextDouble()D

    .line 139
    .line 140
    .line 141
    move-result-wide v1

    .line 142
    double-to-float v1, v1

    .line 143
    move/from16 v23, v1

    .line 144
    .line 145
    :goto_4
    move v2, v5

    .line 146
    goto :goto_3

    .line 147
    :cond_1
    move v5, v2

    .line 148
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->nextDouble()D

    .line 149
    .line 150
    .line 151
    move-result-wide v1

    .line 152
    double-to-float v1, v1

    .line 153
    move/from16 v22, v1

    .line 154
    .line 155
    goto :goto_4

    .line 156
    :cond_2
    move v5, v2

    .line 157
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->nextString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v4

    .line 161
    goto :goto_3

    .line 162
    :cond_3
    move v5, v2

    .line 163
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->endObject()V

    .line 164
    .line 165
    .line 166
    new-instance v1, LY1/h;

    .line 167
    .line 168
    move/from16 v2, v22

    .line 169
    .line 170
    move/from16 v22, v5

    .line 171
    .line 172
    move/from16 v5, v23

    .line 173
    .line 174
    invoke-direct {v1, v4, v2, v5}, LY1/h;-><init>(Ljava/lang/String;FF)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    move/from16 v2, v22

    .line 181
    .line 182
    const/4 v1, 0x1

    .line 183
    goto :goto_1

    .line 184
    :cond_4
    move/from16 v22, v2

    .line 185
    .line 186
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->endArray()V

    .line 187
    .line 188
    .line 189
    :goto_5
    move-object/from16 v23, v12

    .line 190
    .line 191
    move-object/from16 v26, v14

    .line 192
    .line 193
    move v12, v15

    .line 194
    :goto_6
    const/16 v25, 0x1

    .line 195
    .line 196
    goto/16 :goto_13

    .line 197
    .line 198
    :pswitch_1
    move/from16 v22, v2

    .line 199
    .line 200
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->beginArray()V

    .line 201
    .line 202
    .line 203
    :goto_7
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->hasNext()Z

    .line 204
    .line 205
    .line 206
    move-result v1

    .line 207
    if-eqz v1, :cond_f

    .line 208
    .line 209
    sget-object v1, Ld2/j;->a:Le2/a;

    .line 210
    .line 211
    new-instance v1, Ljava/util/ArrayList;

    .line 212
    .line 213
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->beginObject()V

    .line 217
    .line 218
    .line 219
    const-wide/16 v4, 0x0

    .line 220
    .line 221
    move-wide/from16 v29, v4

    .line 222
    .line 223
    move-wide/from16 v31, v29

    .line 224
    .line 225
    move-object/from16 v33, v21

    .line 226
    .line 227
    move-object/from16 v34, v33

    .line 228
    .line 229
    const/16 v28, 0x0

    .line 230
    .line 231
    :goto_8
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->hasNext()Z

    .line 232
    .line 233
    .line 234
    move-result v2

    .line 235
    if-eqz v2, :cond_e

    .line 236
    .line 237
    sget-object v2, Ld2/j;->a:Le2/a;

    .line 238
    .line 239
    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/parser/moshi/a;->selectName(Le2/a;)I

    .line 240
    .line 241
    .line 242
    move-result v2

    .line 243
    if-eqz v2, :cond_d

    .line 244
    .line 245
    const/4 v4, 0x1

    .line 246
    if-eq v2, v4, :cond_c

    .line 247
    .line 248
    const/4 v4, 0x2

    .line 249
    if-eq v2, v4, :cond_b

    .line 250
    .line 251
    const/4 v4, 0x3

    .line 252
    if-eq v2, v4, :cond_a

    .line 253
    .line 254
    const/4 v4, 0x4

    .line 255
    if-eq v2, v4, :cond_9

    .line 256
    .line 257
    const/4 v4, 0x5

    .line 258
    if-eq v2, v4, :cond_5

    .line 259
    .line 260
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->skipName()V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->skipValue()V

    .line 264
    .line 265
    .line 266
    goto :goto_8

    .line 267
    :cond_5
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->beginObject()V

    .line 268
    .line 269
    .line 270
    :goto_9
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->hasNext()Z

    .line 271
    .line 272
    .line 273
    move-result v2

    .line 274
    if-eqz v2, :cond_8

    .line 275
    .line 276
    sget-object v2, Ld2/j;->b:Le2/a;

    .line 277
    .line 278
    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/parser/moshi/a;->selectName(Le2/a;)I

    .line 279
    .line 280
    .line 281
    move-result v2

    .line 282
    if-eqz v2, :cond_6

    .line 283
    .line 284
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->skipName()V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->skipValue()V

    .line 288
    .line 289
    .line 290
    goto :goto_9

    .line 291
    :cond_6
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->beginArray()V

    .line 292
    .line 293
    .line 294
    :goto_a
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->hasNext()Z

    .line 295
    .line 296
    .line 297
    move-result v2

    .line 298
    if-eqz v2, :cond_7

    .line 299
    .line 300
    invoke-static {v0, v3}, Ld2/g;->a(Lcom/airbnb/lottie/parser/moshi/a;LT1/i;)La2/b;

    .line 301
    .line 302
    .line 303
    move-result-object v2

    .line 304
    check-cast v2, La2/m;

    .line 305
    .line 306
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    .line 308
    .line 309
    goto :goto_a

    .line 310
    :cond_7
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->endArray()V

    .line 311
    .line 312
    .line 313
    goto :goto_9

    .line 314
    :cond_8
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->endObject()V

    .line 315
    .line 316
    .line 317
    goto :goto_8

    .line 318
    :cond_9
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->nextString()Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v34

    .line 322
    goto :goto_8

    .line 323
    :cond_a
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->nextString()Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v33

    .line 327
    goto :goto_8

    .line 328
    :cond_b
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->nextDouble()D

    .line 329
    .line 330
    .line 331
    move-result-wide v31

    .line 332
    goto :goto_8

    .line 333
    :cond_c
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->nextDouble()D

    .line 334
    .line 335
    .line 336
    move-result-wide v29

    .line 337
    goto :goto_8

    .line 338
    :cond_d
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->nextString()Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v2

    .line 342
    const/4 v4, 0x0

    .line 343
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    .line 344
    .line 345
    .line 346
    move-result v28

    .line 347
    goto :goto_8

    .line 348
    :cond_e
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->endObject()V

    .line 349
    .line 350
    .line 351
    new-instance v26, LY1/d;

    .line 352
    .line 353
    move-object/from16 v27, v1

    .line 354
    .line 355
    invoke-direct/range {v26 .. v34}, LY1/d;-><init>(Ljava/util/List;CDDLjava/lang/String;Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    move-object/from16 v1, v26

    .line 359
    .line 360
    invoke-virtual {v1}, LY1/d;->hashCode()I

    .line 361
    .line 362
    .line 363
    move-result v2

    .line 364
    invoke-virtual {v12, v2, v1}, Lp/r;->put(ILjava/lang/Object;)V

    .line 365
    .line 366
    .line 367
    goto/16 :goto_7

    .line 368
    .line 369
    :cond_f
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->endArray()V

    .line 370
    .line 371
    .line 372
    goto/16 :goto_5

    .line 373
    .line 374
    :pswitch_2
    move/from16 v22, v2

    .line 375
    .line 376
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->beginObject()V

    .line 377
    .line 378
    .line 379
    :goto_b
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->hasNext()Z

    .line 380
    .line 381
    .line 382
    move-result v1

    .line 383
    if-eqz v1, :cond_17

    .line 384
    .line 385
    sget-object v1, Ld2/t;->c:Le2/a;

    .line 386
    .line 387
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/parser/moshi/a;->selectName(Le2/a;)I

    .line 388
    .line 389
    .line 390
    move-result v1

    .line 391
    if-eqz v1, :cond_10

    .line 392
    .line 393
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->skipName()V

    .line 394
    .line 395
    .line 396
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->skipValue()V

    .line 397
    .line 398
    .line 399
    goto :goto_b

    .line 400
    :cond_10
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->beginArray()V

    .line 401
    .line 402
    .line 403
    :goto_c
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->hasNext()Z

    .line 404
    .line 405
    .line 406
    move-result v1

    .line 407
    if-eqz v1, :cond_16

    .line 408
    .line 409
    sget-object v1, Ld2/k;->a:Le2/a;

    .line 410
    .line 411
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->beginObject()V

    .line 412
    .line 413
    .line 414
    move-object/from16 v1, v21

    .line 415
    .line 416
    move-object v2, v1

    .line 417
    move-object v4, v2

    .line 418
    const/4 v5, 0x0

    .line 419
    :goto_d
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->hasNext()Z

    .line 420
    .line 421
    .line 422
    move-result v20

    .line 423
    if-eqz v20, :cond_15

    .line 424
    .line 425
    move-object/from16 v23, v12

    .line 426
    .line 427
    sget-object v12, Ld2/k;->a:Le2/a;

    .line 428
    .line 429
    invoke-virtual {v0, v12}, Lcom/airbnb/lottie/parser/moshi/a;->selectName(Le2/a;)I

    .line 430
    .line 431
    .line 432
    move-result v12

    .line 433
    if-eqz v12, :cond_14

    .line 434
    .line 435
    move-object/from16 v26, v14

    .line 436
    .line 437
    const/4 v14, 0x1

    .line 438
    if-eq v12, v14, :cond_13

    .line 439
    .line 440
    const/4 v14, 0x2

    .line 441
    if-eq v12, v14, :cond_12

    .line 442
    .line 443
    const/4 v14, 0x3

    .line 444
    if-eq v12, v14, :cond_11

    .line 445
    .line 446
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->skipName()V

    .line 447
    .line 448
    .line 449
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->skipValue()V

    .line 450
    .line 451
    .line 452
    :goto_e
    move-object/from16 v12, v23

    .line 453
    .line 454
    move-object/from16 v14, v26

    .line 455
    .line 456
    goto :goto_d

    .line 457
    :cond_11
    move v12, v15

    .line 458
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->nextDouble()D

    .line 459
    .line 460
    .line 461
    move-result-wide v14

    .line 462
    double-to-float v5, v14

    .line 463
    move v15, v12

    .line 464
    goto :goto_e

    .line 465
    :cond_12
    move v12, v15

    .line 466
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->nextString()Ljava/lang/String;

    .line 467
    .line 468
    .line 469
    move-result-object v4

    .line 470
    goto :goto_e

    .line 471
    :cond_13
    move v12, v15

    .line 472
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->nextString()Ljava/lang/String;

    .line 473
    .line 474
    .line 475
    move-result-object v2

    .line 476
    goto :goto_e

    .line 477
    :cond_14
    move-object/from16 v26, v14

    .line 478
    .line 479
    move v12, v15

    .line 480
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->nextString()Ljava/lang/String;

    .line 481
    .line 482
    .line 483
    move-result-object v1

    .line 484
    move-object/from16 v12, v23

    .line 485
    .line 486
    goto :goto_d

    .line 487
    :cond_15
    move-object/from16 v23, v12

    .line 488
    .line 489
    move-object/from16 v26, v14

    .line 490
    .line 491
    move v12, v15

    .line 492
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->endObject()V

    .line 493
    .line 494
    .line 495
    new-instance v14, LY1/c;

    .line 496
    .line 497
    invoke-direct {v14, v1, v2, v4, v5}, LY1/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;F)V

    .line 498
    .line 499
    .line 500
    invoke-virtual {v14}, LY1/c;->getName()Ljava/lang/String;

    .line 501
    .line 502
    .line 503
    move-result-object v1

    .line 504
    invoke-virtual {v13, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    .line 506
    .line 507
    move v15, v12

    .line 508
    move-object/from16 v12, v23

    .line 509
    .line 510
    move-object/from16 v14, v26

    .line 511
    .line 512
    goto :goto_c

    .line 513
    :cond_16
    move-object/from16 v23, v12

    .line 514
    .line 515
    move-object/from16 v26, v14

    .line 516
    .line 517
    move v12, v15

    .line 518
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->endArray()V

    .line 519
    .line 520
    .line 521
    move-object/from16 v12, v23

    .line 522
    .line 523
    goto/16 :goto_b

    .line 524
    .line 525
    :cond_17
    move-object/from16 v23, v12

    .line 526
    .line 527
    move-object/from16 v26, v14

    .line 528
    .line 529
    move v12, v15

    .line 530
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->endObject()V

    .line 531
    .line 532
    .line 533
    goto/16 :goto_6

    .line 534
    .line 535
    :pswitch_3
    move/from16 v22, v2

    .line 536
    .line 537
    move-object/from16 v23, v12

    .line 538
    .line 539
    move-object/from16 v26, v14

    .line 540
    .line 541
    move v12, v15

    .line 542
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->beginArray()V

    .line 543
    .line 544
    .line 545
    :goto_f
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->hasNext()Z

    .line 546
    .line 547
    .line 548
    move-result v1

    .line 549
    if-eqz v1, :cond_21

    .line 550
    .line 551
    new-instance v1, Ljava/util/ArrayList;

    .line 552
    .line 553
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 554
    .line 555
    .line 556
    new-instance v2, Lp/n;

    .line 557
    .line 558
    invoke-direct {v2}, Lp/n;-><init>()V

    .line 559
    .line 560
    .line 561
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->beginObject()V

    .line 562
    .line 563
    .line 564
    move-object/from16 v30, v21

    .line 565
    .line 566
    move-object/from16 v31, v30

    .line 567
    .line 568
    move-object/from16 v32, v31

    .line 569
    .line 570
    const/16 v28, 0x0

    .line 571
    .line 572
    const/16 v29, 0x0

    .line 573
    .line 574
    :goto_10
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->hasNext()Z

    .line 575
    .line 576
    .line 577
    move-result v4

    .line 578
    if-eqz v4, :cond_1f

    .line 579
    .line 580
    sget-object v4, Ld2/t;->b:Le2/a;

    .line 581
    .line 582
    invoke-virtual {v0, v4}, Lcom/airbnb/lottie/parser/moshi/a;->selectName(Le2/a;)I

    .line 583
    .line 584
    .line 585
    move-result v4

    .line 586
    if-eqz v4, :cond_1e

    .line 587
    .line 588
    const/4 v14, 0x1

    .line 589
    if-eq v4, v14, :cond_1c

    .line 590
    .line 591
    const/4 v14, 0x2

    .line 592
    if-eq v4, v14, :cond_1b

    .line 593
    .line 594
    const/4 v14, 0x3

    .line 595
    if-eq v4, v14, :cond_1a

    .line 596
    .line 597
    const/4 v5, 0x4

    .line 598
    if-eq v4, v5, :cond_19

    .line 599
    .line 600
    const/4 v5, 0x5

    .line 601
    if-eq v4, v5, :cond_18

    .line 602
    .line 603
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->skipName()V

    .line 604
    .line 605
    .line 606
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->skipValue()V

    .line 607
    .line 608
    .line 609
    goto :goto_10

    .line 610
    :cond_18
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->nextString()Ljava/lang/String;

    .line 611
    .line 612
    .line 613
    move-result-object v32

    .line 614
    goto :goto_10

    .line 615
    :cond_19
    const/4 v5, 0x5

    .line 616
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->nextString()Ljava/lang/String;

    .line 617
    .line 618
    .line 619
    move-result-object v31

    .line 620
    goto :goto_10

    .line 621
    :cond_1a
    const/4 v5, 0x5

    .line 622
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->nextInt()I

    .line 623
    .line 624
    .line 625
    move-result v29

    .line 626
    goto :goto_10

    .line 627
    :cond_1b
    const/4 v5, 0x5

    .line 628
    const/4 v14, 0x3

    .line 629
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->nextInt()I

    .line 630
    .line 631
    .line 632
    move-result v28

    .line 633
    goto :goto_10

    .line 634
    :cond_1c
    const/4 v5, 0x5

    .line 635
    const/4 v14, 0x3

    .line 636
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->beginArray()V

    .line 637
    .line 638
    .line 639
    :goto_11
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->hasNext()Z

    .line 640
    .line 641
    .line 642
    move-result v4

    .line 643
    if-eqz v4, :cond_1d

    .line 644
    .line 645
    invoke-static {v0, v3}, Ld2/s;->parse(Lcom/airbnb/lottie/parser/moshi/a;LT1/i;)Lb2/e;

    .line 646
    .line 647
    .line 648
    move-result-object v4

    .line 649
    invoke-virtual {v4}, Lb2/e;->getId()J

    .line 650
    .line 651
    .line 652
    move-result-wide v14

    .line 653
    invoke-virtual {v2, v14, v15, v4}, Lp/n;->put(JLjava/lang/Object;)V

    .line 654
    .line 655
    .line 656
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 657
    .line 658
    .line 659
    const/4 v14, 0x3

    .line 660
    goto :goto_11

    .line 661
    :cond_1d
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->endArray()V

    .line 662
    .line 663
    .line 664
    goto :goto_10

    .line 665
    :cond_1e
    const/4 v5, 0x5

    .line 666
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->nextString()Ljava/lang/String;

    .line 667
    .line 668
    .line 669
    move-result-object v30

    .line 670
    goto :goto_10

    .line 671
    :cond_1f
    const/4 v5, 0x5

    .line 672
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->endObject()V

    .line 673
    .line 674
    .line 675
    if-eqz v31, :cond_20

    .line 676
    .line 677
    new-instance v27, LT1/H;

    .line 678
    .line 679
    invoke-direct/range {v27 .. v32}, LT1/H;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    .line 681
    .line 682
    move-object/from16 v1, v27

    .line 683
    .line 684
    invoke-virtual {v1}, LT1/H;->getId()Ljava/lang/String;

    .line 685
    .line 686
    .line 687
    move-result-object v2

    .line 688
    invoke-virtual {v11, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 689
    .line 690
    .line 691
    goto/16 :goto_f

    .line 692
    .line 693
    :cond_20
    move-object/from16 v2, v30

    .line 694
    .line 695
    invoke-virtual {v10, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 696
    .line 697
    .line 698
    goto/16 :goto_f

    .line 699
    .line 700
    :cond_21
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->endArray()V

    .line 701
    .line 702
    .line 703
    goto/16 :goto_6

    .line 704
    .line 705
    :pswitch_4
    move/from16 v22, v2

    .line 706
    .line 707
    move-object/from16 v23, v12

    .line 708
    .line 709
    move-object/from16 v26, v14

    .line 710
    .line 711
    move v12, v15

    .line 712
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->beginArray()V

    .line 713
    .line 714
    .line 715
    const/4 v1, 0x0

    .line 716
    :cond_22
    :goto_12
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->hasNext()Z

    .line 717
    .line 718
    .line 719
    move-result v2

    .line 720
    if-eqz v2, :cond_24

    .line 721
    .line 722
    invoke-static {v0, v3}, Ld2/s;->parse(Lcom/airbnb/lottie/parser/moshi/a;LT1/i;)Lb2/e;

    .line 723
    .line 724
    .line 725
    move-result-object v2

    .line 726
    invoke-virtual {v2}, Lb2/e;->getLayerType()Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    .line 727
    .line 728
    .line 729
    move-result-object v4

    .line 730
    sget-object v5, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->e:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    .line 731
    .line 732
    if-ne v4, v5, :cond_23

    .line 733
    .line 734
    const/16 v25, 0x1

    .line 735
    .line 736
    add-int/lit8 v1, v1, 0x1

    .line 737
    .line 738
    :cond_23
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 739
    .line 740
    .line 741
    invoke-virtual {v2}, Lb2/e;->getId()J

    .line 742
    .line 743
    .line 744
    move-result-wide v4

    .line 745
    invoke-virtual {v9, v4, v5, v2}, Lp/n;->put(JLjava/lang/Object;)V

    .line 746
    .line 747
    .line 748
    const/4 v4, 0x4

    .line 749
    if-le v1, v4, :cond_22

    .line 750
    .line 751
    new-instance v2, Ljava/lang/StringBuilder;

    .line 752
    .line 753
    const-string v5, "You have "

    .line 754
    .line 755
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 756
    .line 757
    .line 758
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 759
    .line 760
    .line 761
    const-string v5, " images. Lottie should primarily be used with shapes. If you are using Adobe Illustrator, convert the Illustrator layers to shape layers."

    .line 762
    .line 763
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 764
    .line 765
    .line 766
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 767
    .line 768
    .line 769
    move-result-object v2

    .line 770
    invoke-static {v2}, Lf2/d;->warning(Ljava/lang/String;)V

    .line 771
    .line 772
    .line 773
    goto :goto_12

    .line 774
    :cond_24
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->endArray()V

    .line 775
    .line 776
    .line 777
    goto/16 :goto_6

    .line 778
    .line 779
    :pswitch_5
    move/from16 v22, v2

    .line 780
    .line 781
    move-object/from16 v23, v12

    .line 782
    .line 783
    move-object/from16 v26, v14

    .line 784
    .line 785
    move v12, v15

    .line 786
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->nextString()Ljava/lang/String;

    .line 787
    .line 788
    .line 789
    move-result-object v1

    .line 790
    const-string v2, "\\."

    .line 791
    .line 792
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 793
    .line 794
    .line 795
    move-result-object v1

    .line 796
    const/16 v19, 0x0

    .line 797
    .line 798
    aget-object v2, v1, v19

    .line 799
    .line 800
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 801
    .line 802
    .line 803
    move-result v27

    .line 804
    const/16 v25, 0x1

    .line 805
    .line 806
    aget-object v2, v1, v25

    .line 807
    .line 808
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 809
    .line 810
    .line 811
    move-result v28

    .line 812
    const/16 v24, 0x2

    .line 813
    .line 814
    aget-object v1, v1, v24

    .line 815
    .line 816
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 817
    .line 818
    .line 819
    move-result v29

    .line 820
    const/16 v32, 0x0

    .line 821
    .line 822
    const/16 v30, 0x4

    .line 823
    .line 824
    const/16 v31, 0x4

    .line 825
    .line 826
    invoke-static/range {v27 .. v32}, Lf2/h;->isAtLeastVersion(IIIIII)Z

    .line 827
    .line 828
    .line 829
    move-result v1

    .line 830
    if-nez v1, :cond_25

    .line 831
    .line 832
    const-string v1, "Lottie only supports bodymovin >= 4.4.0"

    .line 833
    .line 834
    invoke-virtual {v3, v1}, LT1/i;->addWarning(Ljava/lang/String;)V

    .line 835
    .line 836
    .line 837
    :cond_25
    :goto_13
    move v15, v12

    .line 838
    move/from16 v2, v22

    .line 839
    .line 840
    move-object/from16 v12, v23

    .line 841
    .line 842
    move/from16 v1, v25

    .line 843
    .line 844
    move-object/from16 v14, v26

    .line 845
    .line 846
    goto/16 :goto_0

    .line 847
    .line 848
    :pswitch_6
    move/from16 v25, v1

    .line 849
    .line 850
    move/from16 v22, v2

    .line 851
    .line 852
    move-object/from16 v23, v12

    .line 853
    .line 854
    move-object/from16 v26, v14

    .line 855
    .line 856
    move v12, v15

    .line 857
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->nextDouble()D

    .line 858
    .line 859
    .line 860
    move-result-wide v1

    .line 861
    double-to-float v1, v1

    .line 862
    move/from16 v17, v1

    .line 863
    .line 864
    :goto_14
    move/from16 v2, v22

    .line 865
    .line 866
    move-object/from16 v12, v23

    .line 867
    .line 868
    :goto_15
    move/from16 v1, v25

    .line 869
    .line 870
    goto/16 :goto_0

    .line 871
    .line 872
    :pswitch_7
    move/from16 v25, v1

    .line 873
    .line 874
    move/from16 v22, v2

    .line 875
    .line 876
    move-object/from16 v23, v12

    .line 877
    .line 878
    move-object/from16 v26, v14

    .line 879
    .line 880
    move v12, v15

    .line 881
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->nextDouble()D

    .line 882
    .line 883
    .line 884
    move-result-wide v1

    .line 885
    double-to-float v1, v1

    .line 886
    const v2, 0x3c23d70a    # 0.01f

    .line 887
    .line 888
    .line 889
    sub-float v16, v1, v2

    .line 890
    .line 891
    goto :goto_14

    .line 892
    :pswitch_8
    move/from16 v25, v1

    .line 893
    .line 894
    move/from16 v22, v2

    .line 895
    .line 896
    move-object/from16 v23, v12

    .line 897
    .line 898
    move-object/from16 v26, v14

    .line 899
    .line 900
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->nextDouble()D

    .line 901
    .line 902
    .line 903
    move-result-wide v1

    .line 904
    double-to-float v15, v1

    .line 905
    move/from16 v2, v22

    .line 906
    .line 907
    goto :goto_15

    .line 908
    :pswitch_9
    move/from16 v25, v1

    .line 909
    .line 910
    move/from16 v22, v2

    .line 911
    .line 912
    move-object/from16 v23, v12

    .line 913
    .line 914
    move-object/from16 v26, v14

    .line 915
    .line 916
    move v12, v15

    .line 917
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->nextInt()I

    .line 918
    .line 919
    .line 920
    move-result v7

    .line 921
    :goto_16
    move-object/from16 v12, v23

    .line 922
    .line 923
    goto/16 :goto_0

    .line 924
    .line 925
    :pswitch_a
    move/from16 v25, v1

    .line 926
    .line 927
    move/from16 v22, v2

    .line 928
    .line 929
    move-object/from16 v23, v12

    .line 930
    .line 931
    move-object/from16 v26, v14

    .line 932
    .line 933
    move v12, v15

    .line 934
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->nextInt()I

    .line 935
    .line 936
    .line 937
    move-result v6

    .line 938
    goto :goto_16

    .line 939
    :cond_26
    move/from16 v22, v2

    .line 940
    .line 941
    move-object/from16 v23, v12

    .line 942
    .line 943
    move-object/from16 v26, v14

    .line 944
    .line 945
    move v12, v15

    .line 946
    int-to-float v0, v6

    .line 947
    mul-float v0, v0, v22

    .line 948
    .line 949
    float-to-int v0, v0

    .line 950
    int-to-float v1, v7

    .line 951
    mul-float v1, v1, v22

    .line 952
    .line 953
    float-to-int v1, v1

    .line 954
    new-instance v4, Landroid/graphics/Rect;

    .line 955
    .line 956
    const/4 v2, 0x0

    .line 957
    invoke-direct {v4, v2, v2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 958
    .line 959
    .line 960
    move v5, v12

    .line 961
    move/from16 v6, v16

    .line 962
    .line 963
    move/from16 v7, v17

    .line 964
    .line 965
    move-object/from16 v12, v23

    .line 966
    .line 967
    invoke-virtual/range {v3 .. v14}, LT1/i;->init(Landroid/graphics/Rect;FFFLjava/util/List;Lp/n;Ljava/util/Map;Ljava/util/Map;Lp/r;Ljava/util/Map;Ljava/util/List;)V

    .line 968
    .line 969
    .line 970
    return-object v3

    .line 971
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
