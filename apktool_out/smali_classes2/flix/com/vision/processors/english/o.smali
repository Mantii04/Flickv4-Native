.class public final synthetic Lflix/com/vision/processors/english/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/webkit/ValueCallback;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lflix/com/vision/processors/english/m;


# direct methods
.method public synthetic constructor <init>(Lflix/com/vision/processors/english/m;I)V
    .locals 0

    .line 1
    iput p2, p0, Lflix/com/vision/processors/english/o;->a:I

    iput-object p1, p0, Lflix/com/vision/processors/english/o;->b:Lflix/com/vision/processors/english/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceiveValue(Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget v0, p0, Lflix/com/vision/processors/english/o;->a:I

    .line 2
    .line 3
    check-cast p1, Ljava/lang/String;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lflix/com/vision/processors/english/o;->b:Lflix/com/vision/processors/english/m;

    .line 9
    .line 10
    check-cast v0, Lflix/com/vision/processors/english/B;

    .line 11
    .line 12
    if-eqz p1, :cond_8

    .line 13
    .line 14
    const-string v1, "null"

    .line 15
    .line 16
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_8

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    goto/16 :goto_2

    .line 29
    .line 30
    :cond_0
    invoke-static {p1}, Lorg/apache/commons/lang3/StringEscapeUtils;->unescapeJava(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const-string v1, "\""

    .line 35
    .line 36
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_1

    .line 41
    .line 42
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_1

    .line 47
    .line 48
    const/4 v1, 0x1

    .line 49
    invoke-static {v1, v1, p1}, LA/i;->d(IILjava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-static {p1}, Lg6/e;->parse(Ljava/lang/String;)Lj6/h;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    const-string v2, "content"

    .line 63
    .line 64
    invoke-virtual {p1, v2}, Lorg/jsoup/nodes/b;->getElementById(Ljava/lang/String;)Lorg/jsoup/nodes/b;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    if-nez p1, :cond_2

    .line 69
    .line 70
    const-string p1, "StreamingCommunity"

    .line 71
    .line 72
    const-string v2, "Element with ID \'content\' not found in HTML"

    .line 73
    .line 74
    invoke-static {p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_2
    const-string v2, "A"

    .line 79
    .line 80
    invoke-virtual {p1, v2}, Lorg/jsoup/nodes/b;->getElementsByTag(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    if-eqz v2, :cond_6

    .line 93
    .line 94
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    check-cast v2, Lorg/jsoup/nodes/b;

    .line 99
    .line 100
    const-string v3, "DIV"

    .line 101
    .line 102
    invoke-virtual {v2, v3}, Lorg/jsoup/nodes/b;->getElementsByTag(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    invoke-virtual {v3}, Lorg/jsoup/select/Elements;->first()Lorg/jsoup/nodes/b;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    if-nez v3, :cond_4

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_4
    const-string v4, "IMG"

    .line 114
    .line 115
    invoke-virtual {v3, v4}, Lorg/jsoup/nodes/b;->getElementsByTag(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    invoke-virtual {v3}, Lorg/jsoup/select/Elements;->first()Lorg/jsoup/nodes/b;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    if-eqz v3, :cond_3

    .line 124
    .line 125
    const-string v4, "alt"

    .line 126
    .line 127
    invoke-virtual {v3, v4}, Lj6/p;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v5

    .line 131
    if-eqz v5, :cond_3

    .line 132
    .line 133
    invoke-virtual {v3, v4}, Lj6/p;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    iget-object v4, v0, Lflix/com/vision/processors/english/B;->b:Lflix/com/vision/models/Movie;

    .line 138
    .line 139
    invoke-virtual {v4}, Lflix/com/vision/models/Movie;->getTitle()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v4

    .line 143
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 144
    .line 145
    .line 146
    move-result v3

    .line 147
    if-nez v3, :cond_5

    .line 148
    .line 149
    goto :goto_0

    .line 150
    :cond_5
    const-string v3, "href"

    .line 151
    .line 152
    invoke-virtual {v2, v3}, Lj6/p;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 157
    .line 158
    .line 159
    move-result v3

    .line 160
    if-nez v3, :cond_3

    .line 161
    .line 162
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    goto :goto_0

    .line 166
    :cond_6
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 167
    .line 168
    .line 169
    move-result p1

    .line 170
    if-nez p1, :cond_7

    .line 171
    .line 172
    goto :goto_2

    .line 173
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    .line 177
    .line 178
    const/4 v2, 0x0

    .line 179
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    check-cast v1, Ljava/lang/String;

    .line 184
    .line 185
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    const-string v1, "/season-"

    .line 189
    .line 190
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    iget v1, v0, Lflix/com/vision/processors/english/B;->e:I

    .line 194
    .line 195
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    new-instance v1, Ljava/lang/Thread;

    .line 203
    .line 204
    new-instance v2, Lflix/com/vision/processors/english/z;

    .line 205
    .line 206
    const/4 v3, 0x1

    .line 207
    invoke-direct {v2, v0, p1, v3}, Lflix/com/vision/processors/english/z;-><init>(Lflix/com/vision/processors/english/B;Ljava/lang/String;I)V

    .line 208
    .line 209
    .line 210
    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 214
    .line 215
    .line 216
    :cond_8
    :goto_2
    return-void

    .line 217
    :pswitch_0
    iget-object v0, p0, Lflix/com/vision/processors/english/o;->b:Lflix/com/vision/processors/english/m;

    .line 218
    .line 219
    check-cast v0, Lflix/com/vision/processors/english/y;

    .line 220
    .line 221
    if-eqz p1, :cond_b

    .line 222
    .line 223
    const-string v1, "null"

    .line 224
    .line 225
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    move-result v1

    .line 229
    if-nez v1, :cond_b

    .line 230
    .line 231
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 232
    .line 233
    .line 234
    move-result v1

    .line 235
    if-eqz v1, :cond_9

    .line 236
    .line 237
    goto :goto_3

    .line 238
    :cond_9
    invoke-static {p1}, Lorg/apache/commons/lang3/StringEscapeUtils;->unescapeJava(Ljava/lang/String;)Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object p1

    .line 242
    const-string v1, "\""

    .line 243
    .line 244
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 245
    .line 246
    .line 247
    move-result v2

    .line 248
    if-eqz v2, :cond_a

    .line 249
    .line 250
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 251
    .line 252
    .line 253
    move-result v1

    .line 254
    if-eqz v1, :cond_a

    .line 255
    .line 256
    const/4 v1, 0x1

    .line 257
    invoke-static {v1, v1, p1}, LA/i;->d(IILjava/lang/String;)Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object p1

    .line 261
    :cond_a
    :try_start_0
    new-instance v1, Ljava/lang/Thread;

    .line 262
    .line 263
    new-instance v2, Lflix/com/vision/processors/english/w;

    .line 264
    .line 265
    const/4 v3, 0x1

    .line 266
    invoke-direct {v2, v0, p1, v3}, Lflix/com/vision/processors/english/w;-><init>(Lflix/com/vision/processors/english/y;Ljava/lang/String;I)V

    .line 267
    .line 268
    .line 269
    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    .line 274
    .line 275
    goto :goto_3

    .line 276
    :catch_0
    move-exception p1

    .line 277
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 278
    .line 279
    .line 280
    :cond_b
    :goto_3
    return-void

    .line 281
    :pswitch_1
    iget-object v0, p0, Lflix/com/vision/processors/english/o;->b:Lflix/com/vision/processors/english/m;

    .line 282
    .line 283
    check-cast v0, Lflix/com/vision/processors/english/v;

    .line 284
    .line 285
    if-eqz p1, :cond_e

    .line 286
    .line 287
    const-string v1, "null"

    .line 288
    .line 289
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 290
    .line 291
    .line 292
    move-result v1

    .line 293
    if-nez v1, :cond_e

    .line 294
    .line 295
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 296
    .line 297
    .line 298
    move-result v1

    .line 299
    if-eqz v1, :cond_c

    .line 300
    .line 301
    goto :goto_4

    .line 302
    :cond_c
    invoke-static {p1}, Lorg/apache/commons/lang3/StringEscapeUtils;->unescapeJava(Ljava/lang/String;)Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object p1

    .line 306
    const-string v1, "\""

    .line 307
    .line 308
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 309
    .line 310
    .line 311
    move-result v2

    .line 312
    if-eqz v2, :cond_d

    .line 313
    .line 314
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 315
    .line 316
    .line 317
    move-result v1

    .line 318
    if-eqz v1, :cond_d

    .line 319
    .line 320
    const/4 v1, 0x1

    .line 321
    invoke-static {v1, v1, p1}, LA/i;->d(IILjava/lang/String;)Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object p1

    .line 325
    :cond_d
    :try_start_1
    invoke-static {p1}, Lflix/com/vision/utils/JsonUtils;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 326
    .line 327
    .line 328
    move-result-object p1

    .line 329
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    .line 330
    .line 331
    .line 332
    move-result-object p1

    .line 333
    new-instance v1, Ljava/lang/Thread;

    .line 334
    .line 335
    new-instance v2, Lflix/com/vision/activities/leanback/fragment/a;

    .line 336
    .line 337
    const/16 v3, 0x8

    .line 338
    .line 339
    invoke-direct {v2, v3, v0, p1}, Lflix/com/vision/activities/leanback/fragment/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 340
    .line 341
    .line 342
    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 343
    .line 344
    .line 345
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 346
    .line 347
    .line 348
    goto :goto_4

    .line 349
    :catch_1
    move-exception p1

    .line 350
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 351
    .line 352
    .line 353
    :cond_e
    :goto_4
    return-void

    .line 354
    :pswitch_2
    iget-object v0, p0, Lflix/com/vision/processors/english/o;->b:Lflix/com/vision/processors/english/m;

    .line 355
    .line 356
    check-cast v0, Lflix/com/vision/processors/english/s;

    .line 357
    .line 358
    if-eqz p1, :cond_11

    .line 359
    .line 360
    const-string v1, "null"

    .line 361
    .line 362
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 363
    .line 364
    .line 365
    move-result v1

    .line 366
    if-nez v1, :cond_11

    .line 367
    .line 368
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 369
    .line 370
    .line 371
    move-result v1

    .line 372
    if-eqz v1, :cond_f

    .line 373
    .line 374
    goto :goto_5

    .line 375
    :cond_f
    invoke-static {p1}, Lorg/apache/commons/lang3/StringEscapeUtils;->unescapeJava(Ljava/lang/String;)Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object p1

    .line 379
    const-string v1, "\""

    .line 380
    .line 381
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 382
    .line 383
    .line 384
    move-result v2

    .line 385
    if-eqz v2, :cond_10

    .line 386
    .line 387
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 388
    .line 389
    .line 390
    move-result v1

    .line 391
    if-eqz v1, :cond_10

    .line 392
    .line 393
    const/4 v1, 0x1

    .line 394
    invoke-static {v1, v1, p1}, LA/i;->d(IILjava/lang/String;)Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object p1

    .line 398
    :cond_10
    :try_start_2
    invoke-static {p1}, Lflix/com/vision/utils/JsonUtils;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 399
    .line 400
    .line 401
    move-result-object p1

    .line 402
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    .line 403
    .line 404
    .line 405
    move-result-object p1

    .line 406
    new-instance v1, Ljava/lang/Thread;

    .line 407
    .line 408
    new-instance v2, Lflix/com/vision/activities/leanback/fragment/a;

    .line 409
    .line 410
    const/4 v3, 0x5

    .line 411
    invoke-direct {v2, v3, v0, p1}, Lflix/com/vision/activities/leanback/fragment/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 412
    .line 413
    .line 414
    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 415
    .line 416
    .line 417
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 418
    .line 419
    .line 420
    goto :goto_5

    .line 421
    :catch_2
    move-exception p1

    .line 422
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 423
    .line 424
    .line 425
    :cond_11
    :goto_5
    return-void

    .line 426
    :pswitch_3
    iget-object v0, p0, Lflix/com/vision/processors/english/o;->b:Lflix/com/vision/processors/english/m;

    .line 427
    .line 428
    check-cast v0, Lflix/com/vision/processors/english/q;

    .line 429
    .line 430
    if-eqz p1, :cond_14

    .line 431
    .line 432
    const-string v1, "null"

    .line 433
    .line 434
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 435
    .line 436
    .line 437
    move-result v1

    .line 438
    if-nez v1, :cond_14

    .line 439
    .line 440
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 441
    .line 442
    .line 443
    move-result v1

    .line 444
    if-eqz v1, :cond_12

    .line 445
    .line 446
    goto :goto_6

    .line 447
    :cond_12
    invoke-static {p1}, Lorg/apache/commons/lang3/StringEscapeUtils;->unescapeJava(Ljava/lang/String;)Ljava/lang/String;

    .line 448
    .line 449
    .line 450
    move-result-object p1

    .line 451
    const-string v1, "\""

    .line 452
    .line 453
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 454
    .line 455
    .line 456
    move-result v2

    .line 457
    if-eqz v2, :cond_13

    .line 458
    .line 459
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 460
    .line 461
    .line 462
    move-result v1

    .line 463
    if-eqz v1, :cond_13

    .line 464
    .line 465
    const/4 v1, 0x1

    .line 466
    invoke-static {v1, v1, p1}, LA/i;->d(IILjava/lang/String;)Ljava/lang/String;

    .line 467
    .line 468
    .line 469
    move-result-object p1

    .line 470
    :cond_13
    :try_start_3
    new-instance v1, Ljava/lang/Thread;

    .line 471
    .line 472
    new-instance v2, Lflix/com/vision/processors/english/n;

    .line 473
    .line 474
    const/4 v3, 0x1

    .line 475
    invoke-direct {v2, v0, p1, v3}, Lflix/com/vision/processors/english/n;-><init>(Lflix/com/vision/processors/english/q;Ljava/lang/String;I)V

    .line 476
    .line 477
    .line 478
    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 479
    .line 480
    .line 481
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 482
    .line 483
    .line 484
    goto :goto_6

    .line 485
    :catch_3
    move-exception p1

    .line 486
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 487
    .line 488
    .line 489
    :cond_14
    :goto_6
    return-void

    .line 490
    nop

    .line 491
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
