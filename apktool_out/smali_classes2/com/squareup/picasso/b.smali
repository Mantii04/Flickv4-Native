.class public final Lcom/squareup/picasso/b;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field public final a:Lm4/p;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lm4/p;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/squareup/picasso/b;->a:Lm4/p;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/squareup/picasso/b;->a:Lm4/p;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x1

    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    :pswitch_0
    sget-object v0, Lm4/D;->k:Lm4/y;

    .line 12
    .line 13
    new-instance v1, Lm4/m;

    .line 14
    .line 15
    invoke-direct {v1, p1}, Lm4/m;-><init>(Landroid/os/Message;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 23
    .line 24
    iget-object v0, v1, Lm4/p;->g:Ljava/util/LinkedHashSet;

    .line 25
    .line 26
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_0

    .line 31
    .line 32
    goto/16 :goto_b

    .line 33
    .line 34
    :cond_0
    iget-object v0, v1, Lm4/p;->f:Ljava/util/WeakHashMap;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/util/WeakHashMap;->values()Ljava/util/Collection;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-eqz v3, :cond_3

    .line 49
    .line 50
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    check-cast v3, Lm4/s;

    .line 55
    .line 56
    iget-object v4, v3, Lm4/s;->f:Lm4/s;

    .line 57
    .line 58
    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    if-eqz v4, :cond_1

    .line 63
    .line 64
    if-nez v2, :cond_2

    .line 65
    .line 66
    new-instance v2, Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .line 70
    .line 71
    :cond_2
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_3
    if-eqz v2, :cond_1a

    .line 79
    .line 80
    const/16 p1, 0xd

    .line 81
    .line 82
    iget-object v0, v1, Lm4/p;->i:Lm4/y;

    .line 83
    .line 84
    invoke-virtual {v0, p1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 89
    .line 90
    .line 91
    return-void

    .line 92
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 93
    .line 94
    iget-object v0, v1, Lm4/p;->g:Ljava/util/LinkedHashSet;

    .line 95
    .line 96
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-nez v0, :cond_4

    .line 101
    .line 102
    goto/16 :goto_b

    .line 103
    .line 104
    :cond_4
    iget-object v0, v1, Lm4/p;->d:Ljava/util/LinkedHashMap;

    .line 105
    .line 106
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    :cond_5
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    if-eqz v2, :cond_1a

    .line 119
    .line 120
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    check-cast v2, Lcom/squareup/picasso/a;

    .line 125
    .line 126
    iget-object v5, v2, Lcom/squareup/picasso/a;->e:Lm4/D;

    .line 127
    .line 128
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    .line 130
    .line 131
    iget-object v5, v2, Lcom/squareup/picasso/a;->s:Lm4/s;

    .line 132
    .line 133
    iget-object v6, v2, Lcom/squareup/picasso/a;->t:Ljava/util/ArrayList;

    .line 134
    .line 135
    if-eqz v6, :cond_6

    .line 136
    .line 137
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 138
    .line 139
    .line 140
    move-result v7

    .line 141
    if-nez v7, :cond_6

    .line 142
    .line 143
    move v7, v4

    .line 144
    goto :goto_2

    .line 145
    :cond_6
    move v7, v3

    .line 146
    :goto_2
    if-nez v5, :cond_7

    .line 147
    .line 148
    if-nez v7, :cond_7

    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_7
    iget-object v8, v1, Lm4/p;->f:Ljava/util/WeakHashMap;

    .line 152
    .line 153
    if-eqz v5, :cond_8

    .line 154
    .line 155
    iget-object v9, v5, Lm4/s;->f:Lm4/s;

    .line 156
    .line 157
    invoke-virtual {v9, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result v9

    .line 161
    if-eqz v9, :cond_8

    .line 162
    .line 163
    invoke-virtual {v2, v5}, Lcom/squareup/picasso/a;->d(Lm4/s;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v5}, Lm4/s;->a()Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v9

    .line 170
    invoke-virtual {v8, v9, v5}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    :cond_8
    if-eqz v7, :cond_a

    .line 174
    .line 175
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 176
    .line 177
    .line 178
    move-result v5

    .line 179
    sub-int/2addr v5, v4

    .line 180
    :goto_3
    if-ltz v5, :cond_a

    .line 181
    .line 182
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v7

    .line 186
    check-cast v7, Lm4/s;

    .line 187
    .line 188
    iget-object v9, v7, Lm4/s;->f:Lm4/s;

    .line 189
    .line 190
    invoke-virtual {v9, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    move-result v9

    .line 194
    if-nez v9, :cond_9

    .line 195
    .line 196
    goto :goto_4

    .line 197
    :cond_9
    invoke-virtual {v2, v7}, Lcom/squareup/picasso/a;->d(Lm4/s;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v7}, Lm4/s;->a()Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v9

    .line 204
    invoke-virtual {v8, v9, v7}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    :goto_4
    add-int/lit8 v5, v5, -0x1

    .line 208
    .line 209
    goto :goto_3

    .line 210
    :cond_a
    invoke-virtual {v2}, Lcom/squareup/picasso/a;->b()Z

    .line 211
    .line 212
    .line 213
    move-result v2

    .line 214
    if-eqz v2, :cond_5

    .line 215
    .line 216
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 217
    .line 218
    .line 219
    goto :goto_1

    .line 220
    :pswitch_3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 221
    .line 222
    .line 223
    return-void

    .line 224
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 225
    .line 226
    check-cast p1, Landroid/net/NetworkInfo;

    .line 227
    .line 228
    iget-object v0, v1, Lm4/p;->b:Lm4/G;

    .line 229
    .line 230
    instance-of v2, v0, Lm4/G;

    .line 231
    .line 232
    if-eqz v2, :cond_f

    .line 233
    .line 234
    const/4 v2, 0x3

    .line 235
    if-eqz p1, :cond_e

    .line 236
    .line 237
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 238
    .line 239
    .line 240
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    .line 241
    .line 242
    .line 243
    move-result v5

    .line 244
    if-nez v5, :cond_b

    .line 245
    .line 246
    goto :goto_5

    .line 247
    :cond_b
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    .line 248
    .line 249
    .line 250
    move-result v5

    .line 251
    if-eqz v5, :cond_d

    .line 252
    .line 253
    if-eq v5, v4, :cond_c

    .line 254
    .line 255
    const/4 v4, 0x6

    .line 256
    if-eq v5, v4, :cond_c

    .line 257
    .line 258
    const/16 v4, 0x9

    .line 259
    .line 260
    if-eq v5, v4, :cond_c

    .line 261
    .line 262
    invoke-virtual {v0, v2}, Lm4/G;->a(I)V

    .line 263
    .line 264
    .line 265
    goto :goto_6

    .line 266
    :cond_c
    const/4 v2, 0x4

    .line 267
    invoke-virtual {v0, v2}, Lm4/G;->a(I)V

    .line 268
    .line 269
    .line 270
    goto :goto_6

    .line 271
    :cond_d
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtype()I

    .line 272
    .line 273
    .line 274
    move-result v5

    .line 275
    packed-switch v5, :pswitch_data_1

    .line 276
    .line 277
    .line 278
    packed-switch v5, :pswitch_data_2

    .line 279
    .line 280
    .line 281
    invoke-virtual {v0, v2}, Lm4/G;->a(I)V

    .line 282
    .line 283
    .line 284
    goto :goto_6

    .line 285
    :pswitch_5
    invoke-virtual {v0, v2}, Lm4/G;->a(I)V

    .line 286
    .line 287
    .line 288
    goto :goto_6

    .line 289
    :pswitch_6
    const/4 v2, 0x2

    .line 290
    invoke-virtual {v0, v2}, Lm4/G;->a(I)V

    .line 291
    .line 292
    .line 293
    goto :goto_6

    .line 294
    :pswitch_7
    invoke-virtual {v0, v4}, Lm4/G;->a(I)V

    .line 295
    .line 296
    .line 297
    goto :goto_6

    .line 298
    :cond_e
    :goto_5
    invoke-virtual {v0, v2}, Lm4/G;->a(I)V

    .line 299
    .line 300
    .line 301
    :cond_f
    :goto_6
    if-eqz p1, :cond_1a

    .line 302
    .line 303
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 304
    .line 305
    .line 306
    move-result p1

    .line 307
    if-eqz p1, :cond_1a

    .line 308
    .line 309
    iget-object p1, v1, Lm4/p;->e:Ljava/util/WeakHashMap;

    .line 310
    .line 311
    invoke-virtual {p1}, Ljava/util/WeakHashMap;->isEmpty()Z

    .line 312
    .line 313
    .line 314
    move-result v0

    .line 315
    if-nez v0, :cond_1a

    .line 316
    .line 317
    invoke-virtual {p1}, Ljava/util/WeakHashMap;->values()Ljava/util/Collection;

    .line 318
    .line 319
    .line 320
    move-result-object p1

    .line 321
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 322
    .line 323
    .line 324
    move-result-object p1

    .line 325
    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 326
    .line 327
    .line 328
    move-result v0

    .line 329
    if-eqz v0, :cond_1a

    .line 330
    .line 331
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 332
    .line 333
    .line 334
    move-result-object v0

    .line 335
    check-cast v0, Lm4/s;

    .line 336
    .line 337
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 338
    .line 339
    .line 340
    iget-object v2, v0, Lm4/s;->a:Lm4/D;

    .line 341
    .line 342
    invoke-virtual {v1, v0, v3}, Lm4/p;->d(Lm4/s;Z)V

    .line 343
    .line 344
    .line 345
    goto :goto_7

    .line 346
    :pswitch_8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 347
    .line 348
    .line 349
    new-instance p1, Ljava/util/ArrayList;

    .line 350
    .line 351
    iget-object v0, v1, Lm4/p;->l:Ljava/util/ArrayList;

    .line 352
    .line 353
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 354
    .line 355
    .line 356
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 357
    .line 358
    .line 359
    const/16 v0, 0x8

    .line 360
    .line 361
    iget-object v1, v1, Lm4/p;->i:Lm4/y;

    .line 362
    .line 363
    invoke-virtual {v1, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 364
    .line 365
    .line 366
    move-result-object v0

    .line 367
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 368
    .line 369
    .line 370
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 371
    .line 372
    .line 373
    move-result v0

    .line 374
    if-eqz v0, :cond_10

    .line 375
    .line 376
    goto/16 :goto_b

    .line 377
    .line 378
    :cond_10
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 379
    .line 380
    .line 381
    move-result-object p1

    .line 382
    check-cast p1, Lcom/squareup/picasso/a;

    .line 383
    .line 384
    iget-object p1, p1, Lcom/squareup/picasso/a;->e:Lm4/D;

    .line 385
    .line 386
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 387
    .line 388
    .line 389
    return-void

    .line 390
    :pswitch_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 391
    .line 392
    check-cast p1, Lcom/squareup/picasso/a;

    .line 393
    .line 394
    invoke-virtual {v1, p1, v3}, Lm4/p;->c(Lcom/squareup/picasso/a;Z)V

    .line 395
    .line 396
    .line 397
    return-void

    .line 398
    :pswitch_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 399
    .line 400
    check-cast p1, Lcom/squareup/picasso/a;

    .line 401
    .line 402
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 403
    .line 404
    .line 405
    iget-object v0, p1, Lcom/squareup/picasso/a;->v:Ljava/util/concurrent/Future;

    .line 406
    .line 407
    if-eqz v0, :cond_11

    .line 408
    .line 409
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    .line 410
    .line 411
    .line 412
    move-result v0

    .line 413
    if-eqz v0, :cond_11

    .line 414
    .line 415
    return-void

    .line 416
    :cond_11
    iget-object v0, v1, Lm4/p;->b:Lm4/G;

    .line 417
    .line 418
    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    .line 419
    .line 420
    .line 421
    move-result v5

    .line 422
    if-eqz v5, :cond_12

    .line 423
    .line 424
    invoke-virtual {v1, p1, v3}, Lm4/p;->c(Lcom/squareup/picasso/a;Z)V

    .line 425
    .line 426
    .line 427
    return-void

    .line 428
    :cond_12
    iget-boolean v5, v1, Lm4/p;->m:Z

    .line 429
    .line 430
    if-eqz v5, :cond_13

    .line 431
    .line 432
    sget-object v2, Lm4/W;->a:Ljava/lang/StringBuilder;

    .line 433
    .line 434
    const-string v2, "connectivity"

    .line 435
    .line 436
    iget-object v6, v1, Lm4/p;->a:Landroid/content/Context;

    .line 437
    .line 438
    invoke-virtual {v6, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 439
    .line 440
    .line 441
    move-result-object v2

    .line 442
    check-cast v2, Landroid/net/ConnectivityManager;

    .line 443
    .line 444
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 445
    .line 446
    .line 447
    move-result-object v2

    .line 448
    :cond_13
    iget v6, p1, Lcom/squareup/picasso/a;->z:I

    .line 449
    .line 450
    iget-object v7, p1, Lcom/squareup/picasso/a;->r:Lm4/L;

    .line 451
    .line 452
    if-lez v6, :cond_14

    .line 453
    .line 454
    sub-int/2addr v6, v4

    .line 455
    iput v6, p1, Lcom/squareup/picasso/a;->z:I

    .line 456
    .line 457
    invoke-virtual {v7, v2}, Lm4/L;->d(Landroid/net/NetworkInfo;)Z

    .line 458
    .line 459
    .line 460
    move-result v2

    .line 461
    goto :goto_8

    .line 462
    :cond_14
    move v2, v3

    .line 463
    :goto_8
    if-eqz v2, :cond_16

    .line 464
    .line 465
    iget-object v1, p1, Lcom/squareup/picasso/a;->e:Lm4/D;

    .line 466
    .line 467
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 468
    .line 469
    .line 470
    iget-object v1, p1, Lcom/squareup/picasso/a;->x:Ljava/lang/Exception;

    .line 471
    .line 472
    instance-of v1, v1, Lcom/squareup/picasso/NetworkRequestHandler$ContentLengthException;

    .line 473
    .line 474
    if-eqz v1, :cond_15

    .line 475
    .line 476
    iget v1, p1, Lcom/squareup/picasso/a;->q:I

    .line 477
    .line 478
    or-int/2addr v1, v4

    .line 479
    iput v1, p1, Lcom/squareup/picasso/a;->q:I

    .line 480
    .line 481
    :cond_15
    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 482
    .line 483
    .line 484
    move-result-object v0

    .line 485
    iput-object v0, p1, Lcom/squareup/picasso/a;->v:Ljava/util/concurrent/Future;

    .line 486
    .line 487
    return-void

    .line 488
    :cond_16
    if-eqz v5, :cond_17

    .line 489
    .line 490
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 491
    .line 492
    .line 493
    instance-of v0, v7, Lcom/squareup/picasso/d;

    .line 494
    .line 495
    if-eqz v0, :cond_17

    .line 496
    .line 497
    move v0, v4

    .line 498
    goto :goto_9

    .line 499
    :cond_17
    move v0, v3

    .line 500
    :goto_9
    invoke-virtual {v1, p1, v0}, Lm4/p;->c(Lcom/squareup/picasso/a;Z)V

    .line 501
    .line 502
    .line 503
    if-eqz v0, :cond_1a

    .line 504
    .line 505
    iget-object v0, p1, Lcom/squareup/picasso/a;->s:Lm4/s;

    .line 506
    .line 507
    iget-object v1, v1, Lm4/p;->e:Ljava/util/WeakHashMap;

    .line 508
    .line 509
    if-eqz v0, :cond_18

    .line 510
    .line 511
    invoke-virtual {v0}, Lm4/s;->a()Ljava/lang/Object;

    .line 512
    .line 513
    .line 514
    move-result-object v2

    .line 515
    if-eqz v2, :cond_18

    .line 516
    .line 517
    iput-boolean v4, v0, Lm4/s;->g:Z

    .line 518
    .line 519
    invoke-virtual {v1, v2, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    .line 521
    .line 522
    :cond_18
    iget-object p1, p1, Lcom/squareup/picasso/a;->t:Ljava/util/ArrayList;

    .line 523
    .line 524
    if-eqz p1, :cond_1a

    .line 525
    .line 526
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 527
    .line 528
    .line 529
    move-result v0

    .line 530
    :goto_a
    if-ge v3, v0, :cond_1a

    .line 531
    .line 532
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 533
    .line 534
    .line 535
    move-result-object v2

    .line 536
    check-cast v2, Lm4/s;

    .line 537
    .line 538
    invoke-virtual {v2}, Lm4/s;->a()Ljava/lang/Object;

    .line 539
    .line 540
    .line 541
    move-result-object v5

    .line 542
    if-eqz v5, :cond_19

    .line 543
    .line 544
    iput-boolean v4, v2, Lm4/s;->g:Z

    .line 545
    .line 546
    invoke-virtual {v1, v5, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    .line 548
    .line 549
    :cond_19
    add-int/2addr v3, v4

    .line 550
    goto :goto_a

    .line 551
    :cond_1a
    :goto_b
    return-void

    .line 552
    :pswitch_b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 553
    .line 554
    check-cast p1, Lcom/squareup/picasso/a;

    .line 555
    .line 556
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 557
    .line 558
    .line 559
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 560
    .line 561
    .line 562
    iget-object v0, p1, Lcom/squareup/picasso/a;->u:Landroid/graphics/Bitmap;

    .line 563
    .line 564
    iget-object v2, v1, Lm4/p;->j:Lm4/v;

    .line 565
    .line 566
    iget-object v3, p1, Lcom/squareup/picasso/a;->n:Ljava/lang/String;

    .line 567
    .line 568
    invoke-virtual {v2, v3, v0}, Lm4/v;->set(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 569
    .line 570
    .line 571
    iget-object v0, v1, Lm4/p;->d:Ljava/util/LinkedHashMap;

    .line 572
    .line 573
    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    .line 575
    .line 576
    invoke-virtual {v1, p1}, Lm4/p;->a(Lcom/squareup/picasso/a;)V

    .line 577
    .line 578
    .line 579
    iget-object p1, p1, Lcom/squareup/picasso/a;->e:Lm4/D;

    .line 580
    .line 581
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 582
    .line 583
    .line 584
    return-void

    .line 585
    :pswitch_c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 586
    .line 587
    check-cast p1, Lm4/s;

    .line 588
    .line 589
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 590
    .line 591
    .line 592
    iget-object v0, p1, Lm4/s;->e:Ljava/lang/String;

    .line 593
    .line 594
    iget-object v2, v1, Lm4/p;->d:Ljava/util/LinkedHashMap;

    .line 595
    .line 596
    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    .line 598
    .line 599
    move-result-object v3

    .line 600
    check-cast v3, Lcom/squareup/picasso/a;

    .line 601
    .line 602
    if-eqz v3, :cond_1b

    .line 603
    .line 604
    invoke-virtual {v3, p1}, Lcom/squareup/picasso/a;->d(Lm4/s;)V

    .line 605
    .line 606
    .line 607
    invoke-virtual {v3}, Lcom/squareup/picasso/a;->b()Z

    .line 608
    .line 609
    .line 610
    move-result v3

    .line 611
    if-eqz v3, :cond_1b

    .line 612
    .line 613
    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    .line 615
    .line 616
    :cond_1b
    iget-object v0, v1, Lm4/p;->g:Ljava/util/LinkedHashSet;

    .line 617
    .line 618
    iget-object v2, p1, Lm4/s;->f:Lm4/s;

    .line 619
    .line 620
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 621
    .line 622
    .line 623
    move-result v0

    .line 624
    if-eqz v0, :cond_1c

    .line 625
    .line 626
    iget-object v0, v1, Lm4/p;->f:Ljava/util/WeakHashMap;

    .line 627
    .line 628
    invoke-virtual {p1}, Lm4/s;->a()Ljava/lang/Object;

    .line 629
    .line 630
    .line 631
    move-result-object v2

    .line 632
    invoke-virtual {v0, v2}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    .line 634
    .line 635
    :cond_1c
    iget-object v0, v1, Lm4/p;->e:Ljava/util/WeakHashMap;

    .line 636
    .line 637
    invoke-virtual {p1}, Lm4/s;->a()Ljava/lang/Object;

    .line 638
    .line 639
    .line 640
    move-result-object p1

    .line 641
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    .line 643
    .line 644
    move-result-object p1

    .line 645
    check-cast p1, Lm4/s;

    .line 646
    .line 647
    return-void

    .line 648
    :pswitch_d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 649
    .line 650
    check-cast p1, Lm4/s;

    .line 651
    .line 652
    invoke-virtual {v1, p1, v4}, Lm4/p;->d(Lm4/s;Z)V

    .line 653
    .line 654
    .line 655
    return-void

    .line 656
    nop

    .line 657
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch

    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    :pswitch_data_2
    .packed-switch 0xc
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method
