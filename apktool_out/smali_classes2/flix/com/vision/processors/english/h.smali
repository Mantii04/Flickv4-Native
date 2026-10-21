.class public final synthetic Lflix/com/vision/processors/english/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic b:Lflix/com/vision/processors/english/m;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:I

.field public final synthetic j:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(ILflix/com/vision/processors/english/m;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lflix/com/vision/processors/english/h;->b:Lflix/com/vision/processors/english/m;

    iput-object p3, p0, Lflix/com/vision/processors/english/h;->e:Ljava/lang/String;

    iput p1, p0, Lflix/com/vision/processors/english/h;->f:I

    iput-object p4, p0, Lflix/com/vision/processors/english/h;->j:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 23

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v5, v1, Lflix/com/vision/processors/english/h;->j:Ljava/lang/String;

    .line 4
    .line 5
    move-object/from16 v0, p1

    .line 6
    .line 7
    check-cast v0, Lcom/google/gson/JsonElement;

    .line 8
    .line 9
    iget-object v3, v1, Lflix/com/vision/processors/english/h;->b:Lflix/com/vision/processors/english/m;

    .line 10
    .line 11
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    const-string v2, ".avi"

    .line 15
    .line 16
    const-string v4, ".mkv"

    .line 17
    .line 18
    const-string v6, ".mp4"

    .line 19
    .line 20
    const-string v7, "name"

    .line 21
    .line 22
    const-string v8, "fileSize"

    .line 23
    .line 24
    const-string v9, "files"

    .line 25
    .line 26
    :try_start_0
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    .line 27
    .line 28
    .line 29
    move-result v10

    .line 30
    if-eqz v10, :cond_0

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 33
    .line 34
    .line 35
    move-result-object v10

    .line 36
    invoke-virtual {v10, v9}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result v10

    .line 40
    if-eqz v10, :cond_0

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v0, v9}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    goto :goto_0

    .line 51
    :catch_0
    move-exception v0

    .line 52
    goto/16 :goto_a

    .line 53
    .line 54
    :cond_0
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->isJsonArray()Z

    .line 55
    .line 56
    .line 57
    move-result v9

    .line 58
    if-eqz v9, :cond_1

    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    .line 61
    .line 62
    .line 63
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    goto :goto_0

    .line 65
    :cond_1
    const/4 v0, 0x0

    .line 66
    :goto_0
    const-string v9, ""

    .line 67
    .line 68
    if-eqz v0, :cond_10

    .line 69
    .line 70
    const/4 v14, 0x0

    .line 71
    :goto_1
    :try_start_1
    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->size()I

    .line 72
    .line 73
    .line 74
    move-result v15
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 75
    const-string v11, "size"

    .line 76
    .line 77
    const-wide/16 v16, 0x0

    .line 78
    .line 79
    const-string v12, "link"

    .line 80
    .line 81
    const-string v13, "url"

    .line 82
    .line 83
    if-ge v14, v15, :cond_a

    .line 84
    .line 85
    :try_start_2
    invoke-virtual {v0, v14}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    .line 86
    .line 87
    .line 88
    move-result-object v15

    .line 89
    invoke-virtual {v15}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    .line 90
    .line 91
    .line 92
    move-result v18

    .line 93
    if-eqz v18, :cond_7

    .line 94
    .line 95
    invoke-virtual {v15}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 96
    .line 97
    .line 98
    move-result-object v15

    .line 99
    invoke-virtual {v15, v13}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    .line 100
    .line 101
    .line 102
    move-result v18

    .line 103
    if-eqz v18, :cond_2

    .line 104
    .line 105
    invoke-virtual {v15, v13}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 106
    .line 107
    .line 108
    move-result-object v18

    .line 109
    invoke-virtual/range {v18 .. v18}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v18

    .line 113
    goto :goto_2

    .line 114
    :cond_2
    invoke-virtual {v15, v12}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    .line 115
    .line 116
    .line 117
    move-result v18

    .line 118
    if-eqz v18, :cond_3

    .line 119
    .line 120
    invoke-virtual {v15, v12}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 121
    .line 122
    .line 123
    move-result-object v18

    .line 124
    invoke-virtual/range {v18 .. v18}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v18

    .line 128
    goto :goto_2

    .line 129
    :cond_3
    move-object/from16 v18, v9

    .line 130
    .line 131
    :goto_2
    invoke-virtual {v15, v11}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    .line 132
    .line 133
    .line 134
    move-result v19

    .line 135
    if-eqz v19, :cond_4

    .line 136
    .line 137
    invoke-virtual {v15, v11}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 138
    .line 139
    .line 140
    move-result-object v19

    .line 141
    invoke-virtual/range {v19 .. v19}, Lcom/google/gson/JsonElement;->getAsLong()J

    .line 142
    .line 143
    .line 144
    move-result-wide v19

    .line 145
    goto :goto_3

    .line 146
    :cond_4
    invoke-virtual {v15, v8}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    .line 147
    .line 148
    .line 149
    move-result v19

    .line 150
    if-eqz v19, :cond_5

    .line 151
    .line 152
    invoke-virtual {v15, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 153
    .line 154
    .line 155
    move-result-object v19

    .line 156
    invoke-virtual/range {v19 .. v19}, Lcom/google/gson/JsonElement;->getAsLong()J

    .line 157
    .line 158
    .line 159
    move-result-wide v19

    .line 160
    goto :goto_3

    .line 161
    :cond_5
    move-wide/from16 v19, v16

    .line 162
    .line 163
    :goto_3
    invoke-virtual {v15, v7}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    .line 164
    .line 165
    .line 166
    move-result v21

    .line 167
    if-eqz v21, :cond_6

    .line 168
    .line 169
    invoke-virtual {v15, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 170
    .line 171
    .line 172
    move-result-object v15

    .line 173
    invoke-virtual {v15}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v15

    .line 177
    goto :goto_4

    .line 178
    :cond_6
    move-object v15, v9

    .line 179
    goto :goto_4

    .line 180
    :cond_7
    invoke-virtual {v15}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v18

    .line 184
    move-object v15, v9

    .line 185
    move-wide/from16 v19, v16

    .line 186
    .line 187
    :goto_4
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v10

    .line 191
    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v15

    .line 195
    invoke-virtual {v10, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 196
    .line 197
    .line 198
    move-result v22

    .line 199
    if-nez v22, :cond_8

    .line 200
    .line 201
    invoke-virtual {v10, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 202
    .line 203
    .line 204
    move-result v22

    .line 205
    if-nez v22, :cond_8

    .line 206
    .line 207
    invoke-virtual {v10, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 208
    .line 209
    .line 210
    move-result v10

    .line 211
    if-nez v10, :cond_8

    .line 212
    .line 213
    invoke-virtual {v15, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 214
    .line 215
    .line 216
    move-result v10

    .line 217
    if-nez v10, :cond_8

    .line 218
    .line 219
    invoke-virtual {v15, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 220
    .line 221
    .line 222
    move-result v10

    .line 223
    if-nez v10, :cond_8

    .line 224
    .line 225
    invoke-virtual {v15, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 226
    .line 227
    .line 228
    move-result v10

    .line 229
    if-eqz v10, :cond_9

    .line 230
    .line 231
    :cond_8
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->isEmpty()Z

    .line 232
    .line 233
    .line 234
    move-result v10

    .line 235
    if-nez v10, :cond_9

    .line 236
    .line 237
    goto :goto_5

    .line 238
    :cond_9
    add-int/lit8 v14, v14, 0x1

    .line 239
    .line 240
    goto/16 :goto_1

    .line 241
    .line 242
    :cond_a
    move-wide/from16 v19, v16

    .line 243
    .line 244
    const/16 v18, 0x0

    .line 245
    .line 246
    :goto_5
    if-nez v18, :cond_f

    .line 247
    .line 248
    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->size()I

    .line 249
    .line 250
    .line 251
    move-result v2

    .line 252
    if-lez v2, :cond_f

    .line 253
    .line 254
    const/4 v2, 0x0

    .line 255
    invoke-virtual {v0, v2}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    .line 260
    .line 261
    .line 262
    move-result v2

    .line 263
    if-eqz v2, :cond_e

    .line 264
    .line 265
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    invoke-virtual {v0, v13}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    .line 270
    .line 271
    .line 272
    move-result v2

    .line 273
    if-eqz v2, :cond_b

    .line 274
    .line 275
    invoke-virtual {v0, v13}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 276
    .line 277
    .line 278
    move-result-object v2

    .line 279
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v2

    .line 283
    goto :goto_6

    .line 284
    :cond_b
    invoke-virtual {v0, v12}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    .line 285
    .line 286
    .line 287
    move-result v2

    .line 288
    if-eqz v2, :cond_c

    .line 289
    .line 290
    invoke-virtual {v0, v12}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 291
    .line 292
    .line 293
    move-result-object v2

    .line 294
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v2

    .line 298
    goto :goto_6

    .line 299
    :cond_c
    move-object v2, v9

    .line 300
    :goto_6
    invoke-virtual {v0, v11}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    .line 301
    .line 302
    .line 303
    move-result v4

    .line 304
    if-eqz v4, :cond_d

    .line 305
    .line 306
    invoke-virtual {v0, v11}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsLong()J

    .line 311
    .line 312
    .line 313
    move-result-wide v6

    .line 314
    move-wide/from16 v19, v6

    .line 315
    .line 316
    goto :goto_7

    .line 317
    :cond_d
    move-wide/from16 v19, v16

    .line 318
    .line 319
    :goto_7
    move-object v11, v2

    .line 320
    goto :goto_8

    .line 321
    :cond_e
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v11
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 325
    goto :goto_8

    .line 326
    :cond_f
    move-object/from16 v11, v18

    .line 327
    .line 328
    goto :goto_8

    .line 329
    :cond_10
    const-wide/16 v16, 0x0

    .line 330
    .line 331
    move-wide/from16 v19, v16

    .line 332
    .line 333
    const/4 v11, 0x0

    .line 334
    :goto_8
    iget-object v4, v1, Lflix/com/vision/processors/english/h;->e:Ljava/lang/String;

    .line 335
    .line 336
    if-eqz v11, :cond_15

    .line 337
    .line 338
    :try_start_3
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    .line 339
    .line 340
    .line 341
    move-result v0

    .line 342
    if-nez v0, :cond_15

    .line 343
    .line 344
    cmp-long v0, v19, v16

    .line 345
    .line 346
    if-lez v0, :cond_11

    .line 347
    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    .line 349
    .line 350
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 351
    .line 352
    .line 353
    const-string v2, " ["

    .line 354
    .line 355
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    .line 357
    .line 358
    invoke-static/range {v19 .. v20}, LT4/m;->readableFileSize(J)Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v2

    .line 362
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    const-string v2, "]"

    .line 366
    .line 367
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    .line 369
    .line 370
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object v9

    .line 374
    :cond_11
    new-instance v0, Lflix/com/vision/models/VideoSource;

    .line 375
    .line 376
    invoke-direct {v0}, Lflix/com/vision/models/VideoSource;-><init>()V

    .line 377
    .line 378
    .line 379
    iput-object v11, v0, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    .line 380
    .line 381
    if-eqz v4, :cond_12

    .line 382
    .line 383
    const-string v2, "http"

    .line 384
    .line 385
    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 386
    .line 387
    .line 388
    move-result v2

    .line 389
    if-eqz v2, :cond_12

    .line 390
    .line 391
    invoke-virtual {v3, v4}, Lflix/com/vision/processors/english/m;->getDomainName(Ljava/lang/String;)Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object v2

    .line 395
    if-eqz v2, :cond_13

    .line 396
    .line 397
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 398
    .line 399
    .line 400
    move-result v5

    .line 401
    if-nez v5, :cond_13

    .line 402
    .line 403
    new-instance v5, Ljava/lang/StringBuilder;

    .line 404
    .line 405
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 406
    .line 407
    .line 408
    const-string v6, "["

    .line 409
    .line 410
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    .line 412
    .line 413
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    .line 415
    .line 416
    const-string v2, "] [OFFCLOUD]"

    .line 417
    .line 418
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    .line 420
    .line 421
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    .line 423
    .line 424
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 425
    .line 426
    .line 427
    move-result-object v2

    .line 428
    iput-object v2, v0, Lflix/com/vision/models/VideoSource;->label:Ljava/lang/String;

    .line 429
    .line 430
    goto :goto_9

    .line 431
    :cond_12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 432
    .line 433
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 434
    .line 435
    .line 436
    const-string v5, "[OFFCLOUD] [FAST]"

    .line 437
    .line 438
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    .line 440
    .line 441
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    .line 443
    .line 444
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 445
    .line 446
    .line 447
    move-result-object v2

    .line 448
    iput-object v2, v0, Lflix/com/vision/models/VideoSource;->label:Ljava/lang/String;

    .line 449
    .line 450
    :cond_13
    :goto_9
    invoke-virtual {v3, v4}, Lflix/com/vision/processors/english/m;->getOriginalName(Ljava/lang/String;)Ljava/lang/String;

    .line 451
    .line 452
    .line 453
    move-result-object v2

    .line 454
    iput-object v2, v0, Lflix/com/vision/models/VideoSource;->originalFileName:Ljava/lang/String;

    .line 455
    .line 456
    const/4 v2, 0x1

    .line 457
    iput-boolean v2, v0, Lflix/com/vision/models/VideoSource;->streamable:Z

    .line 458
    .line 459
    iput-boolean v2, v0, Lflix/com/vision/models/VideoSource;->isOffCloud:Z

    .line 460
    .line 461
    const-string v2, "magnet"

    .line 462
    .line 463
    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 464
    .line 465
    .line 466
    move-result v2

    .line 467
    iput-boolean v2, v0, Lflix/com/vision/models/VideoSource;->isTorrentMagnet:Z

    .line 468
    .line 469
    invoke-static {v0}, Lflix/com/vision/activities/LinksActivity;->setRDQtyLabel(Lflix/com/vision/models/VideoSource;)V

    .line 470
    .line 471
    .line 472
    iget v2, v0, Lflix/com/vision/models/VideoSource;->quality:I

    .line 473
    .line 474
    if-nez v2, :cond_14

    .line 475
    .line 476
    const/16 v2, 0x12c

    .line 477
    .line 478
    iput v2, v0, Lflix/com/vision/models/VideoSource;->quality:I

    .line 479
    .line 480
    :cond_14
    invoke-virtual {v3, v0}, Lflix/com/vision/processors/english/m;->addLink(Lflix/com/vision/models/VideoSource;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 481
    .line 482
    .line 483
    return-void

    .line 484
    :cond_15
    const/4 v0, 0x3

    .line 485
    iget v6, v1, Lflix/com/vision/processors/english/h;->f:I

    .line 486
    .line 487
    if-ge v6, v0, :cond_16

    .line 488
    .line 489
    :try_start_4
    new-instance v0, Landroid/os/Handler;

    .line 490
    .line 491
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 492
    .line 493
    .line 494
    move-result-object v2

    .line 495
    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 496
    .line 497
    .line 498
    new-instance v2, Lflix/com/vision/processors/english/i;

    .line 499
    .line 500
    const/4 v7, 0x1

    .line 501
    invoke-direct/range {v2 .. v7}, Lflix/com/vision/processors/english/i;-><init>(Lflix/com/vision/processors/english/m;Ljava/lang/String;Ljava/lang/String;II)V

    .line 502
    .line 503
    .line 504
    const-wide/16 v3, 0x9c4

    .line 505
    .line 506
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 507
    .line 508
    .line 509
    return-void

    .line 510
    :goto_a
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 511
    .line 512
    .line 513
    :cond_16
    return-void
.end method
