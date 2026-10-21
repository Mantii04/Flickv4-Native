.class public final synthetic Ly4/v1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Lflix/com/vision/activities/UserTorrentsActivity;

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lflix/com/vision/activities/UserTorrentsActivity;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p3, p0, Ly4/v1;->b:I

    iput-object p1, p0, Ly4/v1;->e:Lflix/com/vision/activities/UserTorrentsActivity;

    iput-object p2, p0, Ly4/v1;->f:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResponse(Ljava/lang/Object;)V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v0, "]"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-string v3, "success"

    .line 7
    .line 8
    const-string v4, "size"

    .line 9
    .line 10
    iget-object v5, v1, Ly4/v1;->e:Lflix/com/vision/activities/UserTorrentsActivity;

    .line 11
    .line 12
    iget-object v6, v1, Ly4/v1;->f:Ljava/lang/String;

    .line 13
    .line 14
    iget v8, v1, Ly4/v1;->b:I

    .line 15
    .line 16
    packed-switch v8, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    move-object/from16 v8, p1

    .line 20
    .line 21
    check-cast v8, Ljava/lang/String;

    .line 22
    .line 23
    sget v9, Lflix/com/vision/activities/UserTorrentsActivity;->y:I

    .line 24
    .line 25
    const-string v9, "id"

    .line 26
    .line 27
    const-string v10, "name"

    .line 28
    .line 29
    const-string v11, "files"

    .line 30
    .line 31
    const-string v12, "data"

    .line 32
    .line 33
    :try_start_0
    invoke-static {v8}, Lcom/google/gson/JsonParser;->parseString(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 34
    .line 35
    .line 36
    move-result-object v8

    .line 37
    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 38
    .line 39
    .line 40
    move-result-object v8

    .line 41
    invoke-virtual {v8, v3}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result v13

    .line 45
    if-eqz v13, :cond_8

    .line 46
    .line 47
    invoke-virtual {v8, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-eqz v3, :cond_8

    .line 56
    .line 57
    invoke-virtual {v8, v12}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-eqz v3, :cond_8

    .line 62
    .line 63
    invoke-virtual {v8, v12}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->isJsonArray()Z

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    if-eqz v3, :cond_0

    .line 72
    .line 73
    invoke-virtual {v8, v12}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    invoke-virtual {v3, v2}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    goto :goto_0

    .line 86
    :catch_0
    move-exception v0

    .line 87
    goto/16 :goto_7

    .line 88
    .line 89
    :cond_0
    invoke-virtual {v8, v12}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    :goto_0
    invoke-virtual {v3, v11}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    .line 94
    .line 95
    .line 96
    move-result v8

    .line 97
    if-eqz v8, :cond_8

    .line 98
    .line 99
    invoke-virtual {v3, v11}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    move v8, v2

    .line 104
    :goto_1
    invoke-virtual {v3}, Lcom/google/gson/JsonArray;->size()I

    .line 105
    .line 106
    .line 107
    move-result v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    iget-object v12, v5, Lflix/com/vision/activities/UserTorrentsActivity;->x:Ljava/util/ArrayList;

    .line 109
    .line 110
    if-ge v8, v11, :cond_6

    .line 111
    .line 112
    :try_start_1
    invoke-virtual {v3, v8}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    .line 113
    .line 114
    .line 115
    move-result-object v11

    .line 116
    invoke-virtual {v11}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 117
    .line 118
    .line 119
    move-result-object v11

    .line 120
    invoke-virtual {v11, v10}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    .line 121
    .line 122
    .line 123
    move-result v13

    .line 124
    if-eqz v13, :cond_1

    .line 125
    .line 126
    invoke-virtual {v11, v10}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 127
    .line 128
    .line 129
    move-result-object v13

    .line 130
    invoke-virtual {v13}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v13

    .line 134
    goto :goto_2

    .line 135
    :cond_1
    new-instance v13, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    .line 139
    .line 140
    const-string v14, "File "

    .line 141
    .line 142
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v13

    .line 152
    :goto_2
    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v14

    .line 156
    const-string v15, ".mp4"

    .line 157
    .line 158
    invoke-virtual {v14, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 159
    .line 160
    .line 161
    move-result v14

    .line 162
    if-nez v14, :cond_3

    .line 163
    .line 164
    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v14

    .line 168
    const-string v15, ".mkv"

    .line 169
    .line 170
    invoke-virtual {v14, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 171
    .line 172
    .line 173
    move-result v14

    .line 174
    if-nez v14, :cond_3

    .line 175
    .line 176
    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v14

    .line 180
    const-string v15, ".avi"

    .line 181
    .line 182
    invoke-virtual {v14, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 183
    .line 184
    .line 185
    move-result v14

    .line 186
    if-eqz v14, :cond_2

    .line 187
    .line 188
    goto :goto_3

    .line 189
    :cond_2
    const/4 v1, 0x1

    .line 190
    goto :goto_6

    .line 191
    :cond_3
    :goto_3
    invoke-virtual {v11, v4}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    .line 192
    .line 193
    .line 194
    move-result v14

    .line 195
    if-eqz v14, :cond_4

    .line 196
    .line 197
    invoke-virtual {v11, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 198
    .line 199
    .line 200
    move-result-object v14

    .line 201
    invoke-virtual {v14}, Lcom/google/gson/JsonElement;->getAsLong()J

    .line 202
    .line 203
    .line 204
    move-result-wide v14

    .line 205
    goto :goto_4

    .line 206
    :cond_4
    const-wide/16 v14, 0x0

    .line 207
    .line 208
    :goto_4
    invoke-virtual {v11, v9}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    .line 209
    .line 210
    .line 211
    move-result v16

    .line 212
    if-eqz v16, :cond_5

    .line 213
    .line 214
    invoke-virtual {v11, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 215
    .line 216
    .line 217
    move-result-object v11

    .line 218
    invoke-virtual {v11}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v11

    .line 222
    goto :goto_5

    .line 223
    :cond_5
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v11

    .line 227
    :goto_5
    new-instance v7, Lflix/com/vision/models/VideoSource;

    .line 228
    .line 229
    invoke-direct {v7}, Lflix/com/vision/models/VideoSource;-><init>()V

    .line 230
    .line 231
    .line 232
    iput-boolean v2, v7, Lflix/com/vision/models/VideoSource;->streamable:Z

    .line 233
    .line 234
    new-instance v2, Ljava/lang/StringBuilder;

    .line 235
    .line 236
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    const-string v1, " ["

    .line 243
    .line 244
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-static {v14, v15}, LT4/m;->readableFileSize(J)Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v1

    .line 251
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v1

    .line 261
    iput-object v1, v7, Lflix/com/vision/models/VideoSource;->label:Ljava/lang/String;

    .line 262
    .line 263
    iput-object v11, v7, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    .line 264
    .line 265
    iput-object v13, v7, Lflix/com/vision/models/VideoSource;->originalFileName:Ljava/lang/String;

    .line 266
    .line 267
    const/4 v1, 0x1

    .line 268
    iput-boolean v1, v7, Lflix/com/vision/models/VideoSource;->isTorbox:Z

    .line 269
    .line 270
    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    .line 272
    .line 273
    :goto_6
    add-int/2addr v8, v1

    .line 274
    move-object/from16 v1, p0

    .line 275
    .line 276
    const/4 v2, 0x0

    .line 277
    goto/16 :goto_1

    .line 278
    .line 279
    :cond_6
    invoke-virtual {v5}, Lflix/com/vision/activities/UserTorrentsActivity;->h()V

    .line 280
    .line 281
    .line 282
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 283
    .line 284
    .line 285
    move-result v0

    .line 286
    if-lez v0, :cond_7

    .line 287
    .line 288
    invoke-virtual {v5, v6, v12}, Lflix/com/vision/activities/UserTorrentsActivity;->f(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 289
    .line 290
    .line 291
    goto :goto_8

    .line 292
    :cond_7
    const-string v0, "No playable video files found in this torrent."

    .line 293
    .line 294
    const/4 v1, 0x0

    .line 295
    invoke-static {v5, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 300
    .line 301
    .line 302
    goto :goto_8

    .line 303
    :goto_7
    invoke-virtual {v5}, Lflix/com/vision/activities/UserTorrentsActivity;->h()V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 307
    .line 308
    .line 309
    :cond_8
    :goto_8
    return-void

    .line 310
    :pswitch_0
    move v1, v2

    .line 311
    move-object/from16 v2, p1

    .line 312
    .line 313
    check-cast v2, Ljava/lang/String;

    .line 314
    .line 315
    sget v7, Lflix/com/vision/activities/UserTorrentsActivity;->y:I

    .line 316
    .line 317
    const-class v7, Lflix/com/vision/activities/MovieDetailActivity;

    .line 318
    .line 319
    const-string v8, ""

    .line 320
    .line 321
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v2

    .line 325
    new-instance v9, Ljava/util/ArrayList;

    .line 326
    .line 327
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 328
    .line 329
    .line 330
    :try_start_2
    invoke-static {v2}, Lcom/google/gson/JsonParser;->parseString(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 331
    .line 332
    .line 333
    move-result-object v2

    .line 334
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 335
    .line 336
    .line 337
    move-result-object v2

    .line 338
    const-string v10, "status"

    .line 339
    .line 340
    invoke-virtual {v2, v10}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 341
    .line 342
    .line 343
    move-result-object v10

    .line 344
    invoke-virtual {v10}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object v10

    .line 348
    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 349
    .line 350
    .line 351
    move-result v3

    .line 352
    if-nez v3, :cond_9

    .line 353
    .line 354
    goto/16 :goto_c

    .line 355
    .line 356
    :cond_9
    const-string v3, "content"

    .line 357
    .line 358
    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 359
    .line 360
    .line 361
    move-result-object v2

    .line 362
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    .line 363
    .line 364
    .line 365
    move-result-object v2

    .line 366
    :goto_9
    invoke-virtual {v2}, Lcom/google/gson/JsonArray;->size()I

    .line 367
    .line 368
    .line 369
    move-result v3

    .line 370
    if-ge v1, v3, :cond_d

    .line 371
    .line 372
    invoke-virtual {v2, v1}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    .line 373
    .line 374
    .line 375
    move-result-object v3

    .line 376
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 377
    .line 378
    .line 379
    move-result-object v3

    .line 380
    const-string v10, "stream_link"

    .line 381
    .line 382
    invoke-virtual {v3, v10}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 383
    .line 384
    .line 385
    move-result-object v10

    .line 386
    invoke-virtual {v10}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object v10

    .line 390
    if-eqz v10, :cond_c

    .line 391
    .line 392
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    .line 393
    .line 394
    .line 395
    move-result v11

    .line 396
    const/16 v12, 0xa

    .line 397
    .line 398
    if-le v11, v12, :cond_c

    .line 399
    .line 400
    invoke-virtual {v3, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 401
    .line 402
    .line 403
    move-result-object v3

    .line 404
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsInt()I

    .line 405
    .line 406
    .line 407
    move-result v3

    .line 408
    if-eqz v3, :cond_a

    .line 409
    .line 410
    const/4 v11, -0x1

    .line 411
    if-eq v3, v11, :cond_a

    .line 412
    .line 413
    int-to-long v11, v3

    .line 414
    invoke-static {v11, v12}, LT4/m;->readableFileSize(J)Ljava/lang/String;

    .line 415
    .line 416
    .line 417
    move-result-object v3

    .line 418
    goto :goto_a

    .line 419
    :catch_1
    move-exception v0

    .line 420
    goto :goto_b

    .line 421
    :cond_a
    move-object v3, v8

    .line 422
    :goto_a
    new-instance v11, Lflix/com/vision/models/VideoSource;

    .line 423
    .line 424
    invoke-direct {v11}, Lflix/com/vision/models/VideoSource;-><init>()V

    .line 425
    .line 426
    .line 427
    const/4 v12, 0x1

    .line 428
    iput-boolean v12, v11, Lflix/com/vision/models/VideoSource;->streamable:Z

    .line 429
    .line 430
    new-instance v12, Ljava/lang/StringBuilder;

    .line 431
    .line 432
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 433
    .line 434
    .line 435
    const-string v13, "[PREMIUMIZE.ME] [FAST] ["

    .line 436
    .line 437
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    .line 439
    .line 440
    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    .line 442
    .line 443
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    .line 445
    .line 446
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 447
    .line 448
    .line 449
    move-result-object v3

    .line 450
    iput-object v3, v11, Lflix/com/vision/models/VideoSource;->label:Ljava/lang/String;

    .line 451
    .line 452
    iput-object v10, v11, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    .line 453
    .line 454
    const/4 v12, 0x1

    .line 455
    iput-boolean v12, v11, Lflix/com/vision/models/VideoSource;->isPremiumize:Z

    .line 456
    .line 457
    invoke-static {v11}, Lflix/com/vision/activities/LinksActivity;->setRDQtyLabel(Lflix/com/vision/models/VideoSource;)V

    .line 458
    .line 459
    .line 460
    iget v3, v11, Lflix/com/vision/models/VideoSource;->quality:I

    .line 461
    .line 462
    if-nez v3, :cond_b

    .line 463
    .line 464
    const/16 v3, 0x12c

    .line 465
    .line 466
    iput v3, v11, Lflix/com/vision/models/VideoSource;->quality:I

    .line 467
    .line 468
    :cond_b
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 469
    .line 470
    .line 471
    :cond_c
    const/16 v16, 0x1

    .line 472
    .line 473
    add-int/lit8 v1, v1, 0x1

    .line 474
    .line 475
    goto :goto_9

    .line 476
    :cond_d
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 477
    .line 478
    .line 479
    move-result v0

    .line 480
    if-lez v0, :cond_e

    .line 481
    .line 482
    iget-object v0, v5, Lflix/com/vision/activities/UserTorrentsActivity;->u:Ljava/util/HashMap;

    .line 483
    .line 484
    invoke-virtual {v0, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    .line 486
    .line 487
    invoke-virtual {v5, v9}, Lflix/com/vision/activities/UserTorrentsActivity;->e(Ljava/util/ArrayList;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 488
    .line 489
    .line 490
    goto :goto_c

    .line 491
    :goto_b
    :try_start_3
    invoke-virtual {v7}, Ljava/lang/Class;->toString()Ljava/lang/String;

    .line 492
    .line 493
    .line 494
    move-result-object v1

    .line 495
    invoke-static {v1, v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 496
    .line 497
    .line 498
    goto :goto_c

    .line 499
    :catch_2
    move-exception v0

    .line 500
    invoke-virtual {v7}, Ljava/lang/Class;->toString()Ljava/lang/String;

    .line 501
    .line 502
    .line 503
    move-result-object v1

    .line 504
    invoke-static {v1, v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 505
    .line 506
    .line 507
    :cond_e
    :goto_c
    return-void

    .line 508
    nop

    .line 509
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
