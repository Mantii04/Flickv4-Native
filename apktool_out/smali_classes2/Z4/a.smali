.class public final synthetic LZ4/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:LZ4/e;

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(LZ4/e;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p3, p0, LZ4/a;->b:I

    iput-object p1, p0, LZ4/a;->e:LZ4/e;

    iput-object p2, p0, LZ4/a;->f:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget v0, v1, LZ4/a;->b:I

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v0, v1, LZ4/a;->e:LZ4/e;

    .line 9
    .line 10
    iget-boolean v2, v0, LZ4/e;->f:Z

    .line 11
    .line 12
    iget-object v3, v1, LZ4/a;->f:Ljava/lang/String;

    .line 13
    .line 14
    iget-object v4, v0, LZ4/e;->d:Ljava/lang/String;

    .line 15
    .line 16
    const-string v6, "/"

    .line 17
    .line 18
    const-string v7, "href"

    .line 19
    .line 20
    const-string v8, "A"

    .line 21
    .line 22
    if-eqz v2, :cond_6

    .line 23
    .line 24
    const-string v2, " "

    .line 25
    .line 26
    iget-object v9, v0, LZ4/e;->b:Lflix/com/vision/models/Movie;

    .line 27
    .line 28
    :try_start_0
    invoke-static {v3}, Lg6/e;->parse(Ljava/lang/String;)Lj6/h;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {v3, v8}, Lorg/jsoup/nodes/b;->getElementsByTag(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {v3}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    iget-object v10, v0, LZ4/e;->e:Ljava/util/ArrayList;

    .line 45
    .line 46
    if-eqz v8, :cond_5

    .line 47
    .line 48
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v8

    .line 52
    check-cast v8, Lorg/jsoup/nodes/b;

    .line 53
    .line 54
    invoke-virtual {v8}, Lorg/jsoup/nodes/b;->text()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v11

    .line 58
    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v11

    .line 62
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    .line 63
    .line 64
    .line 65
    move-result v12

    .line 66
    if-nez v12, :cond_0

    .line 67
    .line 68
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 69
    .line 70
    .line 71
    move-result v12

    .line 72
    const/16 v13, 0xf

    .line 73
    .line 74
    if-ge v12, v13, :cond_1

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_1
    invoke-virtual {v8, v7}, Lj6/p;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v8

    .line 81
    invoke-virtual {v9}, Lflix/com/vision/models/Movie;->getTitle()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v12

    .line 85
    new-instance v13, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v9}, Lflix/com/vision/models/Movie;->getYear()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v12

    .line 100
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v12

    .line 107
    invoke-virtual {v9}, Lflix/com/vision/models/Movie;->getTitle()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v13

    .line 111
    const-string v14, ":"

    .line 112
    .line 113
    const-string v15, ""

    .line 114
    .line 115
    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v13

    .line 119
    const-string v14, " - "

    .line 120
    .line 121
    invoke-virtual {v13, v14, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v13

    .line 125
    const-string v14, "-"

    .line 126
    .line 127
    invoke-virtual {v13, v14, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v13

    .line 131
    new-instance v14, Ljava/lang/StringBuilder;

    .line 132
    .line 133
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v9}, Lflix/com/vision/models/Movie;->getYear()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v15

    .line 146
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v14

    .line 153
    invoke-virtual {v9}, Lflix/com/vision/models/Movie;->getTitle()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v15

    .line 157
    invoke-static {v15}, Lh5/n;->removeSpecialChars(Ljava/lang/String;)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v15

    .line 161
    invoke-static {v11}, Lh5/n;->removeSpecialChars(Ljava/lang/String;)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v16

    .line 165
    new-instance v5, Ljava/lang/StringBuilder;

    .line 166
    .line 167
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    .line 169
    .line 170
    move-object/from16 v17, v3

    .line 171
    .line 172
    const-string v3, "&"

    .line 173
    .line 174
    invoke-virtual {v13, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v3

    .line 178
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v9}, Lflix/com/vision/models/Movie;->getYear()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v3

    .line 188
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v3

    .line 195
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v5

    .line 199
    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v13

    .line 203
    invoke-virtual {v5, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 204
    .line 205
    .line 206
    move-result v5

    .line 207
    if-nez v5, :cond_2

    .line 208
    .line 209
    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v5

    .line 213
    invoke-virtual {v11, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 214
    .line 215
    .line 216
    move-result v5

    .line 217
    if-nez v5, :cond_2

    .line 218
    .line 219
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v3

    .line 223
    invoke-virtual {v11, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 224
    .line 225
    .line 226
    move-result v3

    .line 227
    if-nez v3, :cond_2

    .line 228
    .line 229
    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v3

    .line 233
    invoke-virtual {v11, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 234
    .line 235
    .line 236
    move-result v3

    .line 237
    if-eqz v3, :cond_4

    .line 238
    .line 239
    goto :goto_1

    .line 240
    :catch_0
    move-exception v0

    .line 241
    goto :goto_2

    .line 242
    :cond_2
    :goto_1
    invoke-virtual {v8, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 243
    .line 244
    .line 245
    move-result v3

    .line 246
    if-eqz v3, :cond_3

    .line 247
    .line 248
    new-instance v3, Ljava/lang/StringBuilder;

    .line 249
    .line 250
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v8

    .line 263
    :cond_3
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    .line 265
    .line 266
    :cond_4
    move-object/from16 v3, v17

    .line 267
    .line 268
    goto/16 :goto_0

    .line 269
    .line 270
    :cond_5
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 271
    .line 272
    .line 273
    move-result v2

    .line 274
    if-lez v2, :cond_e

    .line 275
    .line 276
    const/4 v2, 0x0

    .line 277
    iput-boolean v2, v0, LZ4/e;->f:Z

    .line 278
    .line 279
    new-instance v2, Landroid/os/Handler;

    .line 280
    .line 281
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 282
    .line 283
    .line 284
    move-result-object v3

    .line 285
    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 286
    .line 287
    .line 288
    new-instance v3, LZ4/c;

    .line 289
    .line 290
    const/4 v4, 0x2

    .line 291
    invoke-direct {v3, v0, v4}, LZ4/c;-><init>(LZ4/e;I)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 295
    .line 296
    .line 297
    goto/16 :goto_5

    .line 298
    .line 299
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 300
    .line 301
    .line 302
    goto/16 :goto_5

    .line 303
    .line 304
    :cond_6
    iget v2, v0, LZ4/e;->g:I

    .line 305
    .line 306
    const/16 v5, 0x28

    .line 307
    .line 308
    if-le v2, v5, :cond_7

    .line 309
    .line 310
    goto/16 :goto_4

    .line 311
    .line 312
    :cond_7
    new-instance v2, Ljava/util/ArrayList;

    .line 313
    .line 314
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 315
    .line 316
    .line 317
    invoke-static {v3}, Lg6/e;->parse(Ljava/lang/String;)Lj6/h;

    .line 318
    .line 319
    .line 320
    move-result-object v3

    .line 321
    invoke-virtual {v3, v8}, Lorg/jsoup/nodes/b;->getElementsByTag(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    .line 322
    .line 323
    .line 324
    move-result-object v3

    .line 325
    invoke-virtual {v3}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 326
    .line 327
    .line 328
    move-result-object v3

    .line 329
    :catch_1
    :cond_8
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 330
    .line 331
    .line 332
    move-result v5

    .line 333
    if-eqz v5, :cond_d

    .line 334
    .line 335
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 336
    .line 337
    .line 338
    move-result-object v5

    .line 339
    check-cast v5, Lorg/jsoup/nodes/b;

    .line 340
    .line 341
    iget v8, v0, LZ4/e;->g:I

    .line 342
    .line 343
    const/16 v9, 0xa

    .line 344
    .line 345
    if-le v8, v9, :cond_9

    .line 346
    .line 347
    goto :goto_4

    .line 348
    :cond_9
    invoke-virtual {v5, v7}, Lj6/p;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v8

    .line 352
    invoke-virtual {v8, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 353
    .line 354
    .line 355
    move-result v10

    .line 356
    if-nez v10, :cond_8

    .line 357
    .line 358
    invoke-virtual {v8, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 359
    .line 360
    .line 361
    move-result v10

    .line 362
    if-eqz v10, :cond_a

    .line 363
    .line 364
    goto :goto_3

    .line 365
    :cond_a
    invoke-virtual {v5}, Lorg/jsoup/nodes/b;->text()Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object v5

    .line 369
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 370
    .line 371
    .line 372
    move-result v5

    .line 373
    if-ge v5, v9, :cond_b

    .line 374
    .line 375
    goto :goto_3

    .line 376
    :cond_b
    const-string v5, ".rar"

    .line 377
    .line 378
    invoke-virtual {v8, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 379
    .line 380
    .line 381
    move-result v5

    .line 382
    if-nez v5, :cond_8

    .line 383
    .line 384
    invoke-static {v8}, Lflix/com/vision/App;->isRdSupported(Ljava/lang/String;)Z

    .line 385
    .line 386
    .line 387
    move-result v5

    .line 388
    if-nez v5, :cond_c

    .line 389
    .line 390
    goto :goto_3

    .line 391
    :cond_c
    iget v5, v0, LZ4/e;->g:I

    .line 392
    .line 393
    const/4 v9, 0x1

    .line 394
    add-int/2addr v5, v9

    .line 395
    iput v5, v0, LZ4/e;->g:I

    .line 396
    .line 397
    new-instance v5, Lflix/com/vision/models/VideoSource;

    .line 398
    .line 399
    invoke-direct {v5}, Lflix/com/vision/models/VideoSource;-><init>()V

    .line 400
    .line 401
    .line 402
    const/4 v10, 0x0

    .line 403
    iput-boolean v10, v5, Lflix/com/vision/models/VideoSource;->streamable:Z

    .line 404
    .line 405
    iput-boolean v9, v5, Lflix/com/vision/models/VideoSource;->rd_checked:Z

    .line 406
    .line 407
    iput-boolean v9, v5, Lflix/com/vision/models/VideoSource;->isPremiumSupported:Z

    .line 408
    .line 409
    iput-boolean v9, v5, Lflix/com/vision/models/VideoSource;->external_link:Z

    .line 410
    .line 411
    iput-object v8, v5, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    .line 412
    .line 413
    :try_start_2
    invoke-virtual {v0, v5}, Lflix/com/vision/processors/english/m;->addLink(Lflix/com/vision/models/VideoSource;)V

    .line 414
    .line 415
    .line 416
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 417
    .line 418
    .line 419
    goto :goto_3

    .line 420
    :cond_d
    :goto_4
    new-instance v2, Landroid/os/Handler;

    .line 421
    .line 422
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 423
    .line 424
    .line 425
    move-result-object v3

    .line 426
    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 427
    .line 428
    .line 429
    new-instance v3, LZ4/c;

    .line 430
    .line 431
    const/4 v4, 0x1

    .line 432
    invoke-direct {v3, v0, v4}, LZ4/c;-><init>(LZ4/e;I)V

    .line 433
    .line 434
    .line 435
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 436
    .line 437
    .line 438
    :cond_e
    :goto_5
    return-void

    .line 439
    :pswitch_0
    iget-object v0, v1, LZ4/a;->e:LZ4/e;

    .line 440
    .line 441
    iget-object v2, v0, LZ4/e;->a:Landroid/webkit/WebView;

    .line 442
    .line 443
    if-nez v2, :cond_f

    .line 444
    .line 445
    new-instance v2, Landroid/webkit/WebView;

    .line 446
    .line 447
    iget-object v3, v0, LZ4/e;->c:Landroid/content/Context;

    .line 448
    .line 449
    invoke-direct {v2, v3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 450
    .line 451
    .line 452
    iput-object v2, v0, LZ4/e;->a:Landroid/webkit/WebView;

    .line 453
    .line 454
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 455
    .line 456
    .line 457
    move-result-object v2

    .line 458
    const/4 v4, 0x1

    .line 459
    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 460
    .line 461
    .line 462
    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 463
    .line 464
    .line 465
    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 466
    .line 467
    .line 468
    const/4 v4, -0x1

    .line 469
    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 470
    .line 471
    .line 472
    const-string v4, "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36"

    .line 473
    .line 474
    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 475
    .line 476
    .line 477
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 478
    .line 479
    const/16 v4, 0x190

    .line 480
    .line 481
    invoke-direct {v2, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 482
    .line 483
    .line 484
    iget-object v4, v0, LZ4/e;->a:Landroid/webkit/WebView;

    .line 485
    .line 486
    const v5, 0x3c23d70a    # 0.01f

    .line 487
    .line 488
    .line 489
    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    .line 490
    .line 491
    .line 492
    instance-of v4, v3, Landroid/app/Activity;

    .line 493
    .line 494
    if-eqz v4, :cond_f

    .line 495
    .line 496
    check-cast v3, Landroid/app/Activity;

    .line 497
    .line 498
    const v4, 0x1020002

    .line 499
    .line 500
    .line 501
    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 502
    .line 503
    .line 504
    move-result-object v3

    .line 505
    check-cast v3, Landroid/view/ViewGroup;

    .line 506
    .line 507
    if-eqz v3, :cond_f

    .line 508
    .line 509
    iget-object v4, v0, LZ4/e;->a:Landroid/webkit/WebView;

    .line 510
    .line 511
    invoke-virtual {v3, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 512
    .line 513
    .line 514
    :cond_f
    const-string v2, "Accept-Language"

    .line 515
    .line 516
    const-string v3, "en-US,en;q=0.9"

    .line 517
    .line 518
    const-string v4, "Accept"

    .line 519
    .line 520
    const-string v5, "text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,*/*;q=0.8"

    .line 521
    .line 522
    invoke-static {v2, v3, v4, v5}, Lb/c;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    .line 523
    .line 524
    .line 525
    move-result-object v2

    .line 526
    iget-object v3, v0, LZ4/e;->a:Landroid/webkit/WebView;

    .line 527
    .line 528
    new-instance v4, LZ4/d;

    .line 529
    .line 530
    invoke-direct {v4, v0}, LZ4/d;-><init>(LZ4/e;)V

    .line 531
    .line 532
    .line 533
    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 534
    .line 535
    .line 536
    iget-object v0, v0, LZ4/e;->a:Landroid/webkit/WebView;

    .line 537
    .line 538
    iget-object v3, v1, LZ4/a;->f:Ljava/lang/String;

    .line 539
    .line 540
    invoke-virtual {v0, v3, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 541
    .line 542
    .line 543
    return-void

    .line 544
    nop

    .line 545
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
