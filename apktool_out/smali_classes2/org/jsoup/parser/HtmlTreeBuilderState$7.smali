.class final enum Lorg/jsoup/parser/HtmlTreeBuilderState$7;
.super Lorg/jsoup/parser/HtmlTreeBuilderState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/parser/HtmlTreeBuilderState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "InBody"

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final e(Lk6/o;Lorg/jsoup/parser/a;)Z
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    iget-object v3, v1, Lk6/o;->a:Lorg/jsoup/parser/Token$TokenType;

    .line 8
    .line 9
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-eqz v3, :cond_84

    .line 14
    .line 15
    sget-object v5, Lk6/b;->h:[Ljava/lang/String;

    .line 16
    .line 17
    sget-object v6, Lk6/b;->c:[Ljava/lang/String;

    .line 18
    .line 19
    sget-object v7, Lk6/b;->f:[Ljava/lang/String;

    .line 20
    .line 21
    const-string v8, "name"

    .line 22
    .line 23
    sget-object v10, Lorg/jsoup/parser/a;->B:[Ljava/lang/String;

    .line 24
    .line 25
    const/4 v11, 0x1

    .line 26
    const-string v12, "html"

    .line 27
    .line 28
    const-string v13, "span"

    .line 29
    .line 30
    const-string v15, "form"

    .line 31
    .line 32
    const-string v9, "li"

    .line 33
    .line 34
    const/16 v16, 0x0

    .line 35
    .line 36
    const-string v4, "body"

    .line 37
    .line 38
    const-string v14, "p"

    .line 39
    .line 40
    if-eq v3, v11, :cond_37

    .line 41
    .line 42
    move/from16 v18, v11

    .line 43
    .line 44
    const/4 v11, 0x3

    .line 45
    const/4 v1, 0x2

    .line 46
    if-eq v3, v1, :cond_4

    .line 47
    .line 48
    if-eq v3, v11, :cond_3

    .line 49
    .line 50
    const/4 v1, 0x4

    .line 51
    if-eq v3, v1, :cond_0

    .line 52
    .line 53
    goto/16 :goto_1c

    .line 54
    .line 55
    :cond_0
    move-object/from16 v1, p1

    .line 56
    .line 57
    check-cast v1, Lk6/h;

    .line 58
    .line 59
    iget-object v3, v1, Lk6/h;->b:Ljava/lang/String;

    .line 60
    .line 61
    sget-object v4, Lorg/jsoup/parser/HtmlTreeBuilderState;->F:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-eqz v3, :cond_1

    .line 68
    .line 69
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/a;->e(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 70
    .line 71
    .line 72
    return v16

    .line 73
    :cond_1
    iget-boolean v3, v2, Lorg/jsoup/parser/a;->s:Z

    .line 74
    .line 75
    if-eqz v3, :cond_2

    .line 76
    .line 77
    invoke-static {v1}, Lorg/jsoup/parser/HtmlTreeBuilderState;->b(Lk6/o;)Z

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    if-eqz v3, :cond_2

    .line 82
    .line 83
    invoke-virtual {v2}, Lorg/jsoup/parser/a;->z()V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/a;->o(Lk6/h;)V

    .line 87
    .line 88
    .line 89
    return v18

    .line 90
    :cond_2
    invoke-virtual {v2}, Lorg/jsoup/parser/a;->z()V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/a;->o(Lk6/h;)V

    .line 94
    .line 95
    .line 96
    move/from16 v1, v16

    .line 97
    .line 98
    iput-boolean v1, v2, Lorg/jsoup/parser/a;->s:Z

    .line 99
    .line 100
    return v18

    .line 101
    :cond_3
    move-object/from16 v1, p1

    .line 102
    .line 103
    check-cast v1, Lk6/i;

    .line 104
    .line 105
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/a;->p(Lk6/i;)V

    .line 106
    .line 107
    .line 108
    return v18

    .line 109
    :cond_4
    move-object/from16 v1, p1

    .line 110
    .line 111
    check-cast v1, Lk6/l;

    .line 112
    .line 113
    iget-object v3, v1, Lk6/n;->c:Ljava/lang/String;

    .line 114
    .line 115
    sget-object v11, Lk6/b;->p:[Ljava/lang/String;

    .line 116
    .line 117
    invoke-static {v3, v11}, Lh6/j;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 118
    .line 119
    .line 120
    move-result v11

    .line 121
    if-eqz v11, :cond_19

    .line 122
    .line 123
    const/4 v1, 0x0

    .line 124
    :goto_0
    const/16 v4, 0x8

    .line 125
    .line 126
    if-ge v1, v4, :cond_7f

    .line 127
    .line 128
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/a;->g(Ljava/lang/String;)Lorg/jsoup/nodes/b;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    if-nez v4, :cond_5

    .line 133
    .line 134
    invoke-virtual/range {p0 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->f(Lk6/o;Lorg/jsoup/parser/a;)Z

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    return v1

    .line 139
    :cond_5
    iget-object v5, v2, Lorg/jsoup/parser/c;->d:Ljava/util/ArrayList;

    .line 140
    .line 141
    invoke-static {v5, v4}, Lorg/jsoup/parser/a;->u(Ljava/util/ArrayList;Lorg/jsoup/nodes/b;)Z

    .line 142
    .line 143
    .line 144
    move-result v5

    .line 145
    if-nez v5, :cond_6

    .line 146
    .line 147
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/a;->e(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v2, v4}, Lorg/jsoup/parser/a;->A(Lorg/jsoup/nodes/b;)V

    .line 151
    .line 152
    .line 153
    return v18

    .line 154
    :cond_6
    invoke-virtual {v4}, Lorg/jsoup/nodes/b;->nodeName()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v5

    .line 158
    invoke-virtual {v2, v5}, Lorg/jsoup/parser/a;->j(Ljava/lang/String;)Z

    .line 159
    .line 160
    .line 161
    move-result v5

    .line 162
    if-nez v5, :cond_7

    .line 163
    .line 164
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/a;->e(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 165
    .line 166
    .line 167
    const/16 v16, 0x0

    .line 168
    .line 169
    return v16

    .line 170
    :cond_7
    invoke-virtual {v2}, Lorg/jsoup/parser/c;->currentElement()Lorg/jsoup/nodes/b;

    .line 171
    .line 172
    .line 173
    move-result-object v5

    .line 174
    if-eq v5, v4, :cond_8

    .line 175
    .line 176
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/a;->e(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 177
    .line 178
    .line 179
    :cond_8
    iget-object v5, v2, Lorg/jsoup/parser/c;->d:Ljava/util/ArrayList;

    .line 180
    .line 181
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 182
    .line 183
    .line 184
    move-result v6

    .line 185
    const/4 v7, 0x0

    .line 186
    const/4 v8, 0x0

    .line 187
    const/4 v9, 0x0

    .line 188
    :goto_1
    if-ge v8, v6, :cond_b

    .line 189
    .line 190
    const/16 v11, 0x40

    .line 191
    .line 192
    if-ge v8, v11, :cond_b

    .line 193
    .line 194
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v11

    .line 198
    check-cast v11, Lorg/jsoup/nodes/b;

    .line 199
    .line 200
    if-ne v11, v4, :cond_9

    .line 201
    .line 202
    add-int/lit8 v7, v8, -0x1

    .line 203
    .line 204
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v7

    .line 208
    check-cast v7, Lorg/jsoup/nodes/b;

    .line 209
    .line 210
    move/from16 v9, v18

    .line 211
    .line 212
    goto :goto_2

    .line 213
    :cond_9
    if-eqz v9, :cond_a

    .line 214
    .line 215
    invoke-virtual {v11}, Lorg/jsoup/nodes/b;->nodeName()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v12

    .line 219
    invoke-static {v12, v10}, Lh6/j;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 220
    .line 221
    .line 222
    move-result v12

    .line 223
    if-eqz v12, :cond_a

    .line 224
    .line 225
    goto :goto_3

    .line 226
    :cond_a
    :goto_2
    add-int/lit8 v8, v8, 0x1

    .line 227
    .line 228
    goto :goto_1

    .line 229
    :cond_b
    const/4 v11, 0x0

    .line 230
    :goto_3
    if-nez v11, :cond_c

    .line 231
    .line 232
    invoke-virtual {v4}, Lorg/jsoup/nodes/b;->nodeName()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/a;->w(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v2, v4}, Lorg/jsoup/parser/a;->A(Lorg/jsoup/nodes/b;)V

    .line 240
    .line 241
    .line 242
    return v18

    .line 243
    :cond_c
    move-object v6, v11

    .line 244
    move-object v8, v6

    .line 245
    const/4 v5, 0x0

    .line 246
    :goto_4
    const/4 v9, -0x1

    .line 247
    const/4 v12, 0x3

    .line 248
    if-ge v5, v12, :cond_13

    .line 249
    .line 250
    iget-object v13, v2, Lorg/jsoup/parser/c;->d:Ljava/util/ArrayList;

    .line 251
    .line 252
    invoke-static {v13, v6}, Lorg/jsoup/parser/a;->u(Ljava/util/ArrayList;Lorg/jsoup/nodes/b;)Z

    .line 253
    .line 254
    .line 255
    move-result v13

    .line 256
    if-eqz v13, :cond_d

    .line 257
    .line 258
    invoke-virtual {v2, v6}, Lorg/jsoup/parser/a;->b(Lorg/jsoup/nodes/b;)Lorg/jsoup/nodes/b;

    .line 259
    .line 260
    .line 261
    move-result-object v6

    .line 262
    :cond_d
    iget-object v13, v2, Lorg/jsoup/parser/a;->p:Ljava/util/ArrayList;

    .line 263
    .line 264
    invoke-static {v13, v6}, Lorg/jsoup/parser/a;->u(Ljava/util/ArrayList;Lorg/jsoup/nodes/b;)Z

    .line 265
    .line 266
    .line 267
    move-result v13

    .line 268
    if-nez v13, :cond_e

    .line 269
    .line 270
    invoke-virtual {v2, v6}, Lorg/jsoup/parser/a;->B(Lorg/jsoup/nodes/b;)V

    .line 271
    .line 272
    .line 273
    goto :goto_7

    .line 274
    :cond_e
    if-ne v6, v4, :cond_f

    .line 275
    .line 276
    goto :goto_8

    .line 277
    :cond_f
    new-instance v13, Lorg/jsoup/nodes/b;

    .line 278
    .line 279
    invoke-virtual {v6}, Lorg/jsoup/nodes/b;->nodeName()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v14

    .line 283
    sget-object v15, Lk6/d;->d:Lk6/d;

    .line 284
    .line 285
    invoke-static {v14, v15}, Lk6/f;->valueOf(Ljava/lang/String;Lk6/d;)Lk6/f;

    .line 286
    .line 287
    .line 288
    move-result-object v14

    .line 289
    iget-object v15, v2, Lorg/jsoup/parser/c;->e:Ljava/lang/String;

    .line 290
    .line 291
    invoke-direct {v13, v14, v15}, Lorg/jsoup/nodes/b;-><init>(Lk6/f;Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    iget-object v14, v2, Lorg/jsoup/parser/a;->p:Ljava/util/ArrayList;

    .line 295
    .line 296
    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    .line 297
    .line 298
    .line 299
    move-result v15

    .line 300
    if-eq v15, v9, :cond_10

    .line 301
    .line 302
    move/from16 v17, v18

    .line 303
    .line 304
    goto :goto_5

    .line 305
    :cond_10
    const/16 v17, 0x0

    .line 306
    .line 307
    :goto_5
    invoke-static/range {v17 .. v17}, Lh6/k;->isTrue(Z)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {v14, v15, v13}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    iget-object v14, v2, Lorg/jsoup/parser/c;->d:Ljava/util/ArrayList;

    .line 314
    .line 315
    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    .line 316
    .line 317
    .line 318
    move-result v6

    .line 319
    if-eq v6, v9, :cond_11

    .line 320
    .line 321
    move/from16 v9, v18

    .line 322
    .line 323
    goto :goto_6

    .line 324
    :cond_11
    const/4 v9, 0x0

    .line 325
    :goto_6
    invoke-static {v9}, Lh6/k;->isTrue(Z)V

    .line 326
    .line 327
    .line 328
    invoke-virtual {v14, v6, v13}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    invoke-virtual {v8}, Lorg/jsoup/nodes/b;->parent()Lorg/jsoup/nodes/b;

    .line 332
    .line 333
    .line 334
    move-result-object v6

    .line 335
    if-eqz v6, :cond_12

    .line 336
    .line 337
    invoke-virtual {v8}, Lj6/p;->remove()V

    .line 338
    .line 339
    .line 340
    :cond_12
    invoke-virtual {v13, v8}, Lorg/jsoup/nodes/b;->appendChild(Lj6/p;)Lorg/jsoup/nodes/b;

    .line 341
    .line 342
    .line 343
    move-object v6, v13

    .line 344
    move-object v8, v6

    .line 345
    :goto_7
    add-int/lit8 v5, v5, 0x1

    .line 346
    .line 347
    goto :goto_4

    .line 348
    :cond_13
    :goto_8
    invoke-virtual {v7}, Lorg/jsoup/nodes/b;->nodeName()Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v5

    .line 352
    sget-object v6, Lk6/b;->q:[Ljava/lang/String;

    .line 353
    .line 354
    invoke-static {v5, v6}, Lh6/j;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 355
    .line 356
    .line 357
    move-result v5

    .line 358
    if-eqz v5, :cond_15

    .line 359
    .line 360
    invoke-virtual {v8}, Lorg/jsoup/nodes/b;->parent()Lorg/jsoup/nodes/b;

    .line 361
    .line 362
    .line 363
    move-result-object v5

    .line 364
    if-eqz v5, :cond_14

    .line 365
    .line 366
    invoke-virtual {v8}, Lj6/p;->remove()V

    .line 367
    .line 368
    .line 369
    :cond_14
    invoke-virtual {v2, v8}, Lorg/jsoup/parser/a;->s(Lj6/p;)V

    .line 370
    .line 371
    .line 372
    goto :goto_9

    .line 373
    :cond_15
    invoke-virtual {v8}, Lorg/jsoup/nodes/b;->parent()Lorg/jsoup/nodes/b;

    .line 374
    .line 375
    .line 376
    move-result-object v5

    .line 377
    if-eqz v5, :cond_16

    .line 378
    .line 379
    invoke-virtual {v8}, Lj6/p;->remove()V

    .line 380
    .line 381
    .line 382
    :cond_16
    invoke-virtual {v7, v8}, Lorg/jsoup/nodes/b;->appendChild(Lj6/p;)Lorg/jsoup/nodes/b;

    .line 383
    .line 384
    .line 385
    :goto_9
    new-instance v5, Lorg/jsoup/nodes/b;

    .line 386
    .line 387
    invoke-virtual {v4}, Lorg/jsoup/nodes/b;->tag()Lk6/f;

    .line 388
    .line 389
    .line 390
    move-result-object v6

    .line 391
    iget-object v7, v2, Lorg/jsoup/parser/c;->e:Ljava/lang/String;

    .line 392
    .line 393
    invoke-direct {v5, v6, v7}, Lorg/jsoup/nodes/b;-><init>(Lk6/f;Ljava/lang/String;)V

    .line 394
    .line 395
    .line 396
    invoke-virtual {v5}, Lorg/jsoup/nodes/b;->attributes()Lj6/c;

    .line 397
    .line 398
    .line 399
    move-result-object v6

    .line 400
    invoke-virtual {v4}, Lorg/jsoup/nodes/b;->attributes()Lj6/c;

    .line 401
    .line 402
    .line 403
    move-result-object v7

    .line 404
    invoke-virtual {v6, v7}, Lj6/c;->addAll(Lj6/c;)V

    .line 405
    .line 406
    .line 407
    invoke-virtual {v11}, Lj6/p;->childNodes()Ljava/util/List;

    .line 408
    .line 409
    .line 410
    move-result-object v6

    .line 411
    invoke-virtual {v11}, Lorg/jsoup/nodes/b;->childNodeSize()I

    .line 412
    .line 413
    .line 414
    move-result v7

    .line 415
    new-array v7, v7, [Lj6/p;

    .line 416
    .line 417
    invoke-interface {v6, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 418
    .line 419
    .line 420
    move-result-object v6

    .line 421
    check-cast v6, [Lj6/p;

    .line 422
    .line 423
    array-length v7, v6

    .line 424
    const/4 v8, 0x0

    .line 425
    :goto_a
    if-ge v8, v7, :cond_17

    .line 426
    .line 427
    aget-object v13, v6, v8

    .line 428
    .line 429
    invoke-virtual {v5, v13}, Lorg/jsoup/nodes/b;->appendChild(Lj6/p;)Lorg/jsoup/nodes/b;

    .line 430
    .line 431
    .line 432
    add-int/lit8 v8, v8, 0x1

    .line 433
    .line 434
    goto :goto_a

    .line 435
    :cond_17
    invoke-virtual {v11, v5}, Lorg/jsoup/nodes/b;->appendChild(Lj6/p;)Lorg/jsoup/nodes/b;

    .line 436
    .line 437
    .line 438
    invoke-virtual {v2, v4}, Lorg/jsoup/parser/a;->A(Lorg/jsoup/nodes/b;)V

    .line 439
    .line 440
    .line 441
    invoke-virtual {v2, v4}, Lorg/jsoup/parser/a;->B(Lorg/jsoup/nodes/b;)V

    .line 442
    .line 443
    .line 444
    iget-object v4, v2, Lorg/jsoup/parser/c;->d:Ljava/util/ArrayList;

    .line 445
    .line 446
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    .line 447
    .line 448
    .line 449
    move-result v4

    .line 450
    if-eq v4, v9, :cond_18

    .line 451
    .line 452
    move/from16 v6, v18

    .line 453
    .line 454
    goto :goto_b

    .line 455
    :cond_18
    const/4 v6, 0x0

    .line 456
    :goto_b
    invoke-static {v6}, Lh6/k;->isTrue(Z)V

    .line 457
    .line 458
    .line 459
    iget-object v6, v2, Lorg/jsoup/parser/c;->d:Ljava/util/ArrayList;

    .line 460
    .line 461
    add-int/lit8 v4, v4, 0x1

    .line 462
    .line 463
    invoke-virtual {v6, v4, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 464
    .line 465
    .line 466
    add-int/lit8 v1, v1, 0x1

    .line 467
    .line 468
    goto/16 :goto_0

    .line 469
    .line 470
    :cond_19
    sget-object v10, Lk6/b;->o:[Ljava/lang/String;

    .line 471
    .line 472
    invoke-static {v3, v10}, Lh6/j;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 473
    .line 474
    .line 475
    move-result v10

    .line 476
    if-eqz v10, :cond_1c

    .line 477
    .line 478
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/a;->j(Ljava/lang/String;)Z

    .line 479
    .line 480
    .line 481
    move-result v1

    .line 482
    if-nez v1, :cond_1a

    .line 483
    .line 484
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/a;->e(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 485
    .line 486
    .line 487
    const/16 v16, 0x0

    .line 488
    .line 489
    return v16

    .line 490
    :cond_1a
    invoke-static {v2, v3}, Lb/c;->v(Lorg/jsoup/parser/a;Ljava/lang/String;)Z

    .line 491
    .line 492
    .line 493
    move-result v1

    .line 494
    if-nez v1, :cond_1b

    .line 495
    .line 496
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/a;->e(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 497
    .line 498
    .line 499
    :cond_1b
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/a;->w(Ljava/lang/String;)V

    .line 500
    .line 501
    .line 502
    return v18

    .line 503
    :cond_1c
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 504
    .line 505
    .line 506
    move-result v10

    .line 507
    if-eqz v10, :cond_1d

    .line 508
    .line 509
    invoke-virtual/range {p0 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->f(Lk6/o;Lorg/jsoup/parser/a;)Z

    .line 510
    .line 511
    .line 512
    move-result v1

    .line 513
    return v1

    .line 514
    :cond_1d
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 515
    .line 516
    .line 517
    move-result v9

    .line 518
    sget-object v10, Lorg/jsoup/parser/a;->v:[Ljava/lang/String;

    .line 519
    .line 520
    if-eqz v9, :cond_20

    .line 521
    .line 522
    sget-object v1, Lorg/jsoup/parser/a;->w:[Ljava/lang/String;

    .line 523
    .line 524
    iget-object v4, v2, Lorg/jsoup/parser/a;->u:[Ljava/lang/String;

    .line 525
    .line 526
    const/16 v16, 0x0

    .line 527
    .line 528
    aput-object v3, v4, v16

    .line 529
    .line 530
    invoke-virtual {v2, v4, v10, v1}, Lorg/jsoup/parser/a;->l([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    .line 531
    .line 532
    .line 533
    move-result v1

    .line 534
    if-nez v1, :cond_1e

    .line 535
    .line 536
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/a;->e(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 537
    .line 538
    .line 539
    return v16

    .line 540
    :cond_1e
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/a;->f(Ljava/lang/String;)V

    .line 541
    .line 542
    .line 543
    invoke-virtual {v2}, Lorg/jsoup/parser/c;->currentElement()Lorg/jsoup/nodes/b;

    .line 544
    .line 545
    .line 546
    move-result-object v1

    .line 547
    invoke-virtual {v1}, Lorg/jsoup/nodes/b;->nodeName()Ljava/lang/String;

    .line 548
    .line 549
    .line 550
    move-result-object v1

    .line 551
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 552
    .line 553
    .line 554
    move-result v1

    .line 555
    if-nez v1, :cond_1f

    .line 556
    .line 557
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/a;->e(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 558
    .line 559
    .line 560
    :cond_1f
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/a;->w(Ljava/lang/String;)V

    .line 561
    .line 562
    .line 563
    return v18

    .line 564
    :cond_20
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 565
    .line 566
    .line 567
    move-result v9

    .line 568
    if-eqz v9, :cond_22

    .line 569
    .line 570
    invoke-virtual {v2, v4}, Lorg/jsoup/parser/a;->j(Ljava/lang/String;)Z

    .line 571
    .line 572
    .line 573
    move-result v1

    .line 574
    if-nez v1, :cond_21

    .line 575
    .line 576
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/a;->e(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 577
    .line 578
    .line 579
    const/16 v16, 0x0

    .line 580
    .line 581
    return v16

    .line 582
    :cond_21
    sget-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState;->A:Lorg/jsoup/parser/HtmlTreeBuilderState$18;

    .line 583
    .line 584
    iput-object v1, v2, Lorg/jsoup/parser/a;->k:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 585
    .line 586
    return v18

    .line 587
    :cond_22
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 588
    .line 589
    .line 590
    move-result v9

    .line 591
    if-eqz v9, :cond_23

    .line 592
    .line 593
    invoke-virtual {v2, v4}, Lorg/jsoup/parser/c;->processEndTag(Ljava/lang/String;)Z

    .line 594
    .line 595
    .line 596
    move-result v3

    .line 597
    if-eqz v3, :cond_7f

    .line 598
    .line 599
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/a;->process(Lk6/o;)Z

    .line 600
    .line 601
    .line 602
    move-result v1

    .line 603
    return v1

    .line 604
    :cond_23
    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 605
    .line 606
    .line 607
    move-result v4

    .line 608
    if-eqz v4, :cond_27

    .line 609
    .line 610
    iget-object v1, v2, Lorg/jsoup/parser/a;->o:Lj6/l;

    .line 611
    .line 612
    const/4 v4, 0x0

    .line 613
    iput-object v4, v2, Lorg/jsoup/parser/a;->o:Lj6/l;

    .line 614
    .line 615
    if-eqz v1, :cond_26

    .line 616
    .line 617
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/a;->j(Ljava/lang/String;)Z

    .line 618
    .line 619
    .line 620
    move-result v4

    .line 621
    if-nez v4, :cond_24

    .line 622
    .line 623
    goto :goto_c

    .line 624
    :cond_24
    invoke-static {v2, v3}, Lb/c;->v(Lorg/jsoup/parser/a;Ljava/lang/String;)Z

    .line 625
    .line 626
    .line 627
    move-result v3

    .line 628
    if-nez v3, :cond_25

    .line 629
    .line 630
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/a;->e(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 631
    .line 632
    .line 633
    :cond_25
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/a;->B(Lorg/jsoup/nodes/b;)V

    .line 634
    .line 635
    .line 636
    return v18

    .line 637
    :cond_26
    :goto_c
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/a;->e(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 638
    .line 639
    .line 640
    const/16 v16, 0x0

    .line 641
    .line 642
    return v16

    .line 643
    :cond_27
    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 644
    .line 645
    .line 646
    move-result v4

    .line 647
    if-eqz v4, :cond_2a

    .line 648
    .line 649
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/a;->i(Ljava/lang/String;)Z

    .line 650
    .line 651
    .line 652
    move-result v4

    .line 653
    if-nez v4, :cond_28

    .line 654
    .line 655
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/a;->e(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 656
    .line 657
    .line 658
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/c;->processStartTag(Ljava/lang/String;)Z

    .line 659
    .line 660
    .line 661
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/a;->process(Lk6/o;)Z

    .line 662
    .line 663
    .line 664
    move-result v1

    .line 665
    return v1

    .line 666
    :cond_28
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/a;->f(Ljava/lang/String;)V

    .line 667
    .line 668
    .line 669
    invoke-virtual {v2}, Lorg/jsoup/parser/c;->currentElement()Lorg/jsoup/nodes/b;

    .line 670
    .line 671
    .line 672
    move-result-object v1

    .line 673
    invoke-virtual {v1}, Lorg/jsoup/nodes/b;->nodeName()Ljava/lang/String;

    .line 674
    .line 675
    .line 676
    move-result-object v1

    .line 677
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 678
    .line 679
    .line 680
    move-result v1

    .line 681
    if-nez v1, :cond_29

    .line 682
    .line 683
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/a;->e(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 684
    .line 685
    .line 686
    :cond_29
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/a;->w(Ljava/lang/String;)V

    .line 687
    .line 688
    .line 689
    return v18

    .line 690
    :cond_2a
    invoke-static {v3, v7}, Lh6/j;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 691
    .line 692
    .line 693
    move-result v1

    .line 694
    if-eqz v1, :cond_2d

    .line 695
    .line 696
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/a;->j(Ljava/lang/String;)Z

    .line 697
    .line 698
    .line 699
    move-result v1

    .line 700
    if-nez v1, :cond_2b

    .line 701
    .line 702
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/a;->e(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 703
    .line 704
    .line 705
    const/16 v16, 0x0

    .line 706
    .line 707
    return v16

    .line 708
    :cond_2b
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/a;->f(Ljava/lang/String;)V

    .line 709
    .line 710
    .line 711
    invoke-virtual {v2}, Lorg/jsoup/parser/c;->currentElement()Lorg/jsoup/nodes/b;

    .line 712
    .line 713
    .line 714
    move-result-object v1

    .line 715
    invoke-virtual {v1}, Lorg/jsoup/nodes/b;->nodeName()Ljava/lang/String;

    .line 716
    .line 717
    .line 718
    move-result-object v1

    .line 719
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 720
    .line 721
    .line 722
    move-result v1

    .line 723
    if-nez v1, :cond_2c

    .line 724
    .line 725
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/a;->e(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 726
    .line 727
    .line 728
    :cond_2c
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/a;->w(Ljava/lang/String;)V

    .line 729
    .line 730
    .line 731
    return v18

    .line 732
    :cond_2d
    invoke-static {v3, v6}, Lh6/j;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 733
    .line 734
    .line 735
    move-result v1

    .line 736
    if-eqz v1, :cond_31

    .line 737
    .line 738
    const/4 v4, 0x0

    .line 739
    invoke-virtual {v2, v6, v10, v4}, Lorg/jsoup/parser/a;->l([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    .line 740
    .line 741
    .line 742
    move-result v1

    .line 743
    if-nez v1, :cond_2e

    .line 744
    .line 745
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/a;->e(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 746
    .line 747
    .line 748
    const/16 v16, 0x0

    .line 749
    .line 750
    return v16

    .line 751
    :cond_2e
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/a;->f(Ljava/lang/String;)V

    .line 752
    .line 753
    .line 754
    invoke-virtual {v2}, Lorg/jsoup/parser/c;->currentElement()Lorg/jsoup/nodes/b;

    .line 755
    .line 756
    .line 757
    move-result-object v1

    .line 758
    invoke-virtual {v1}, Lorg/jsoup/nodes/b;->nodeName()Ljava/lang/String;

    .line 759
    .line 760
    .line 761
    move-result-object v1

    .line 762
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 763
    .line 764
    .line 765
    move-result v1

    .line 766
    if-nez v1, :cond_2f

    .line 767
    .line 768
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/a;->e(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 769
    .line 770
    .line 771
    :cond_2f
    iget-object v1, v2, Lorg/jsoup/parser/c;->d:Ljava/util/ArrayList;

    .line 772
    .line 773
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 774
    .line 775
    .line 776
    move-result v1

    .line 777
    add-int/lit8 v1, v1, -0x1

    .line 778
    .line 779
    :goto_d
    if-ltz v1, :cond_7f

    .line 780
    .line 781
    iget-object v3, v2, Lorg/jsoup/parser/c;->d:Ljava/util/ArrayList;

    .line 782
    .line 783
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 784
    .line 785
    .line 786
    move-result-object v3

    .line 787
    check-cast v3, Lorg/jsoup/nodes/b;

    .line 788
    .line 789
    iget-object v4, v2, Lorg/jsoup/parser/c;->d:Ljava/util/ArrayList;

    .line 790
    .line 791
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 792
    .line 793
    .line 794
    invoke-virtual {v3}, Lorg/jsoup/nodes/b;->nodeName()Ljava/lang/String;

    .line 795
    .line 796
    .line 797
    move-result-object v3

    .line 798
    invoke-static {v3, v6}, Lh6/j;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 799
    .line 800
    .line 801
    move-result v3

    .line 802
    if-eqz v3, :cond_30

    .line 803
    .line 804
    goto/16 :goto_1c

    .line 805
    .line 806
    :cond_30
    add-int/lit8 v1, v1, -0x1

    .line 807
    .line 808
    goto :goto_d

    .line 809
    :cond_31
    const-string v1, "sarcasm"

    .line 810
    .line 811
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 812
    .line 813
    .line 814
    move-result v1

    .line 815
    if-eqz v1, :cond_32

    .line 816
    .line 817
    invoke-virtual/range {p0 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->f(Lk6/o;Lorg/jsoup/parser/a;)Z

    .line 818
    .line 819
    .line 820
    move-result v1

    .line 821
    return v1

    .line 822
    :cond_32
    invoke-static {v3, v5}, Lh6/j;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 823
    .line 824
    .line 825
    move-result v1

    .line 826
    if-eqz v1, :cond_35

    .line 827
    .line 828
    invoke-virtual {v2, v8}, Lorg/jsoup/parser/a;->j(Ljava/lang/String;)Z

    .line 829
    .line 830
    .line 831
    move-result v1

    .line 832
    if-nez v1, :cond_7f

    .line 833
    .line 834
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/a;->j(Ljava/lang/String;)Z

    .line 835
    .line 836
    .line 837
    move-result v1

    .line 838
    if-nez v1, :cond_33

    .line 839
    .line 840
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/a;->e(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 841
    .line 842
    .line 843
    const/16 v16, 0x0

    .line 844
    .line 845
    return v16

    .line 846
    :cond_33
    invoke-static {v2, v3}, Lb/c;->v(Lorg/jsoup/parser/a;Ljava/lang/String;)Z

    .line 847
    .line 848
    .line 849
    move-result v1

    .line 850
    if-nez v1, :cond_34

    .line 851
    .line 852
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/a;->e(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 853
    .line 854
    .line 855
    :cond_34
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/a;->w(Ljava/lang/String;)V

    .line 856
    .line 857
    .line 858
    invoke-virtual {v2}, Lorg/jsoup/parser/a;->c()V

    .line 859
    .line 860
    .line 861
    return v18

    .line 862
    :cond_35
    const-string v1, "br"

    .line 863
    .line 864
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 865
    .line 866
    .line 867
    move-result v3

    .line 868
    if-eqz v3, :cond_36

    .line 869
    .line 870
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/a;->e(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 871
    .line 872
    .line 873
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/c;->processStartTag(Ljava/lang/String;)Z

    .line 874
    .line 875
    .line 876
    const/16 v16, 0x0

    .line 877
    .line 878
    return v16

    .line 879
    :cond_36
    invoke-virtual/range {p0 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->f(Lk6/o;Lorg/jsoup/parser/a;)Z

    .line 880
    .line 881
    .line 882
    move-result v1

    .line 883
    return v1

    .line 884
    :cond_37
    move/from16 v18, v11

    .line 885
    .line 886
    move-object/from16 v1, p1

    .line 887
    .line 888
    check-cast v1, Lk6/m;

    .line 889
    .line 890
    iget-object v3, v1, Lk6/n;->c:Ljava/lang/String;

    .line 891
    .line 892
    const-string v11, "a"

    .line 893
    .line 894
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 895
    .line 896
    .line 897
    move-result v19

    .line 898
    if-eqz v19, :cond_39

    .line 899
    .line 900
    invoke-virtual {v2, v11}, Lorg/jsoup/parser/a;->g(Ljava/lang/String;)Lorg/jsoup/nodes/b;

    .line 901
    .line 902
    .line 903
    move-result-object v3

    .line 904
    if-eqz v3, :cond_38

    .line 905
    .line 906
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/a;->e(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 907
    .line 908
    .line 909
    invoke-virtual {v2, v11}, Lorg/jsoup/parser/c;->processEndTag(Ljava/lang/String;)Z

    .line 910
    .line 911
    .line 912
    invoke-virtual {v2, v11}, Lorg/jsoup/parser/a;->h(Ljava/lang/String;)Lorg/jsoup/nodes/b;

    .line 913
    .line 914
    .line 915
    move-result-object v3

    .line 916
    if-eqz v3, :cond_38

    .line 917
    .line 918
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/a;->A(Lorg/jsoup/nodes/b;)V

    .line 919
    .line 920
    .line 921
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/a;->B(Lorg/jsoup/nodes/b;)V

    .line 922
    .line 923
    .line 924
    :cond_38
    invoke-virtual {v2}, Lorg/jsoup/parser/a;->z()V

    .line 925
    .line 926
    .line 927
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/a;->n(Lk6/m;)Lorg/jsoup/nodes/b;

    .line 928
    .line 929
    .line 930
    move-result-object v1

    .line 931
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/a;->y(Lorg/jsoup/nodes/b;)V

    .line 932
    .line 933
    .line 934
    return v18

    .line 935
    :cond_39
    sget-object v11, Lk6/b;->i:[Ljava/lang/String;

    .line 936
    .line 937
    invoke-static {v3, v11}, Lh6/j;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 938
    .line 939
    .line 940
    move-result v11

    .line 941
    if-eqz v11, :cond_3a

    .line 942
    .line 943
    invoke-virtual {v2}, Lorg/jsoup/parser/a;->z()V

    .line 944
    .line 945
    .line 946
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/a;->q(Lk6/m;)Lorg/jsoup/nodes/b;

    .line 947
    .line 948
    .line 949
    const/4 v1, 0x0

    .line 950
    iput-boolean v1, v2, Lorg/jsoup/parser/a;->s:Z

    .line 951
    .line 952
    return v18

    .line 953
    :cond_3a
    sget-object v11, Lk6/b;->b:[Ljava/lang/String;

    .line 954
    .line 955
    invoke-static {v3, v11}, Lh6/j;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 956
    .line 957
    .line 958
    move-result v11

    .line 959
    if-eqz v11, :cond_3c

    .line 960
    .line 961
    invoke-virtual {v2, v14}, Lorg/jsoup/parser/a;->i(Ljava/lang/String;)Z

    .line 962
    .line 963
    .line 964
    move-result v3

    .line 965
    if-eqz v3, :cond_3b

    .line 966
    .line 967
    invoke-virtual {v2, v14}, Lorg/jsoup/parser/c;->processEndTag(Ljava/lang/String;)Z

    .line 968
    .line 969
    .line 970
    :cond_3b
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/a;->n(Lk6/m;)Lorg/jsoup/nodes/b;

    .line 971
    .line 972
    .line 973
    return v18

    .line 974
    :cond_3c
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 975
    .line 976
    .line 977
    move-result v11

    .line 978
    if-eqz v11, :cond_3d

    .line 979
    .line 980
    invoke-virtual {v2}, Lorg/jsoup/parser/a;->z()V

    .line 981
    .line 982
    .line 983
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/a;->n(Lk6/m;)Lorg/jsoup/nodes/b;

    .line 984
    .line 985
    .line 986
    return v18

    .line 987
    :cond_3d
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 988
    .line 989
    .line 990
    move-result v11

    .line 991
    sget-object v13, Lk6/b;->e:[Ljava/lang/String;

    .line 992
    .line 993
    if-eqz v11, :cond_42

    .line 994
    .line 995
    const/4 v11, 0x0

    .line 996
    iput-boolean v11, v2, Lorg/jsoup/parser/a;->s:Z

    .line 997
    .line 998
    iget-object v3, v2, Lorg/jsoup/parser/c;->d:Ljava/util/ArrayList;

    .line 999
    .line 1000
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 1001
    .line 1002
    .line 1003
    move-result v4

    .line 1004
    add-int/lit8 v4, v4, -0x1

    .line 1005
    .line 1006
    :goto_e
    if-lez v4, :cond_40

    .line 1007
    .line 1008
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1009
    .line 1010
    .line 1011
    move-result-object v5

    .line 1012
    check-cast v5, Lorg/jsoup/nodes/b;

    .line 1013
    .line 1014
    invoke-virtual {v5}, Lorg/jsoup/nodes/b;->nodeName()Ljava/lang/String;

    .line 1015
    .line 1016
    .line 1017
    move-result-object v6

    .line 1018
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1019
    .line 1020
    .line 1021
    move-result v6

    .line 1022
    if-eqz v6, :cond_3e

    .line 1023
    .line 1024
    invoke-virtual {v2, v9}, Lorg/jsoup/parser/c;->processEndTag(Ljava/lang/String;)Z

    .line 1025
    .line 1026
    .line 1027
    goto :goto_f

    .line 1028
    :cond_3e
    invoke-virtual {v5}, Lorg/jsoup/nodes/b;->nodeName()Ljava/lang/String;

    .line 1029
    .line 1030
    .line 1031
    move-result-object v6

    .line 1032
    invoke-static {v6, v10}, Lh6/j;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 1033
    .line 1034
    .line 1035
    move-result v6

    .line 1036
    if-eqz v6, :cond_3f

    .line 1037
    .line 1038
    invoke-virtual {v5}, Lorg/jsoup/nodes/b;->nodeName()Ljava/lang/String;

    .line 1039
    .line 1040
    .line 1041
    move-result-object v5

    .line 1042
    invoke-static {v5, v13}, Lh6/j;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 1043
    .line 1044
    .line 1045
    move-result v5

    .line 1046
    if-nez v5, :cond_3f

    .line 1047
    .line 1048
    goto :goto_f

    .line 1049
    :cond_3f
    add-int/lit8 v4, v4, -0x1

    .line 1050
    .line 1051
    goto :goto_e

    .line 1052
    :cond_40
    :goto_f
    invoke-virtual {v2, v14}, Lorg/jsoup/parser/a;->i(Ljava/lang/String;)Z

    .line 1053
    .line 1054
    .line 1055
    move-result v3

    .line 1056
    if-eqz v3, :cond_41

    .line 1057
    .line 1058
    invoke-virtual {v2, v14}, Lorg/jsoup/parser/c;->processEndTag(Ljava/lang/String;)Z

    .line 1059
    .line 1060
    .line 1061
    :cond_41
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/a;->n(Lk6/m;)Lorg/jsoup/nodes/b;

    .line 1062
    .line 1063
    .line 1064
    return v18

    .line 1065
    :cond_42
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1066
    .line 1067
    .line 1068
    move-result v9

    .line 1069
    if-eqz v9, :cond_44

    .line 1070
    .line 1071
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/a;->e(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 1072
    .line 1073
    .line 1074
    iget-object v2, v2, Lorg/jsoup/parser/c;->d:Ljava/util/ArrayList;

    .line 1075
    .line 1076
    const/4 v11, 0x0

    .line 1077
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1078
    .line 1079
    .line 1080
    move-result-object v2

    .line 1081
    check-cast v2, Lorg/jsoup/nodes/b;

    .line 1082
    .line 1083
    iget-object v1, v1, Lk6/n;->j:Lj6/c;

    .line 1084
    .line 1085
    invoke-virtual {v1}, Lj6/c;->iterator()Ljava/util/Iterator;

    .line 1086
    .line 1087
    .line 1088
    move-result-object v1

    .line 1089
    :cond_43
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 1090
    .line 1091
    .line 1092
    move-result v3

    .line 1093
    if-eqz v3, :cond_7f

    .line 1094
    .line 1095
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1096
    .line 1097
    .line 1098
    move-result-object v3

    .line 1099
    check-cast v3, Lj6/a;

    .line 1100
    .line 1101
    invoke-virtual {v3}, Lj6/a;->getKey()Ljava/lang/String;

    .line 1102
    .line 1103
    .line 1104
    move-result-object v4

    .line 1105
    invoke-virtual {v2, v4}, Lj6/p;->hasAttr(Ljava/lang/String;)Z

    .line 1106
    .line 1107
    .line 1108
    move-result v4

    .line 1109
    if-nez v4, :cond_43

    .line 1110
    .line 1111
    invoke-virtual {v2}, Lorg/jsoup/nodes/b;->attributes()Lj6/c;

    .line 1112
    .line 1113
    .line 1114
    move-result-object v4

    .line 1115
    invoke-virtual {v4, v3}, Lj6/c;->put(Lj6/a;)Lj6/c;

    .line 1116
    .line 1117
    .line 1118
    goto :goto_10

    .line 1119
    :cond_44
    sget-object v9, Lk6/b;->a:[Ljava/lang/String;

    .line 1120
    .line 1121
    invoke-static {v3, v9}, Lh6/j;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 1122
    .line 1123
    .line 1124
    move-result v9

    .line 1125
    if-eqz v9, :cond_45

    .line 1126
    .line 1127
    sget-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState;->j:Lorg/jsoup/parser/HtmlTreeBuilderState$4;

    .line 1128
    .line 1129
    move-object/from16 v3, p1

    .line 1130
    .line 1131
    iput-object v3, v2, Lorg/jsoup/parser/c;->f:Lk6/o;

    .line 1132
    .line 1133
    invoke-virtual {v1, v3, v2}, Lorg/jsoup/parser/HtmlTreeBuilderState$4;->e(Lk6/o;Lorg/jsoup/parser/a;)Z

    .line 1134
    .line 1135
    .line 1136
    move-result v1

    .line 1137
    return v1

    .line 1138
    :cond_45
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1139
    .line 1140
    .line 1141
    move-result v9

    .line 1142
    if-eqz v9, :cond_4a

    .line 1143
    .line 1144
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/a;->e(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 1145
    .line 1146
    .line 1147
    iget-object v3, v2, Lorg/jsoup/parser/c;->d:Ljava/util/ArrayList;

    .line 1148
    .line 1149
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 1150
    .line 1151
    .line 1152
    move-result v5

    .line 1153
    move/from16 v6, v18

    .line 1154
    .line 1155
    if-eq v5, v6, :cond_46

    .line 1156
    .line 1157
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 1158
    .line 1159
    .line 1160
    move-result v5

    .line 1161
    const/4 v7, 0x2

    .line 1162
    if-le v5, v7, :cond_47

    .line 1163
    .line 1164
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1165
    .line 1166
    .line 1167
    move-result-object v5

    .line 1168
    check-cast v5, Lorg/jsoup/nodes/b;

    .line 1169
    .line 1170
    invoke-virtual {v5}, Lorg/jsoup/nodes/b;->nodeName()Ljava/lang/String;

    .line 1171
    .line 1172
    .line 1173
    move-result-object v5

    .line 1174
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1175
    .line 1176
    .line 1177
    move-result v4

    .line 1178
    if-nez v4, :cond_47

    .line 1179
    .line 1180
    :cond_46
    :goto_11
    const/16 v16, 0x0

    .line 1181
    .line 1182
    goto/16 :goto_16

    .line 1183
    .line 1184
    :cond_47
    const/4 v11, 0x0

    .line 1185
    iput-boolean v11, v2, Lorg/jsoup/parser/a;->s:Z

    .line 1186
    .line 1187
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1188
    .line 1189
    .line 1190
    move-result-object v2

    .line 1191
    check-cast v2, Lorg/jsoup/nodes/b;

    .line 1192
    .line 1193
    iget-object v1, v1, Lk6/n;->j:Lj6/c;

    .line 1194
    .line 1195
    invoke-virtual {v1}, Lj6/c;->iterator()Ljava/util/Iterator;

    .line 1196
    .line 1197
    .line 1198
    move-result-object v1

    .line 1199
    :cond_48
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 1200
    .line 1201
    .line 1202
    move-result v3

    .line 1203
    if-eqz v3, :cond_49

    .line 1204
    .line 1205
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1206
    .line 1207
    .line 1208
    move-result-object v3

    .line 1209
    check-cast v3, Lj6/a;

    .line 1210
    .line 1211
    invoke-virtual {v3}, Lj6/a;->getKey()Ljava/lang/String;

    .line 1212
    .line 1213
    .line 1214
    move-result-object v4

    .line 1215
    invoke-virtual {v2, v4}, Lj6/p;->hasAttr(Ljava/lang/String;)Z

    .line 1216
    .line 1217
    .line 1218
    move-result v4

    .line 1219
    if-nez v4, :cond_48

    .line 1220
    .line 1221
    invoke-virtual {v2}, Lorg/jsoup/nodes/b;->attributes()Lj6/c;

    .line 1222
    .line 1223
    .line 1224
    move-result-object v4

    .line 1225
    invoke-virtual {v4, v3}, Lj6/c;->put(Lj6/a;)Lj6/c;

    .line 1226
    .line 1227
    .line 1228
    goto :goto_12

    .line 1229
    :cond_49
    const/16 v18, 0x1

    .line 1230
    .line 1231
    goto/16 :goto_1c

    .line 1232
    .line 1233
    :cond_4a
    const-string v9, "frameset"

    .line 1234
    .line 1235
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1236
    .line 1237
    .line 1238
    move-result v9

    .line 1239
    if-eqz v9, :cond_4f

    .line 1240
    .line 1241
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/a;->e(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 1242
    .line 1243
    .line 1244
    iget-object v3, v2, Lorg/jsoup/parser/c;->d:Ljava/util/ArrayList;

    .line 1245
    .line 1246
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 1247
    .line 1248
    .line 1249
    move-result v5

    .line 1250
    const/4 v6, 0x1

    .line 1251
    if-eq v5, v6, :cond_46

    .line 1252
    .line 1253
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 1254
    .line 1255
    .line 1256
    move-result v5

    .line 1257
    const/4 v7, 0x2

    .line 1258
    if-le v5, v7, :cond_4b

    .line 1259
    .line 1260
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1261
    .line 1262
    .line 1263
    move-result-object v5

    .line 1264
    check-cast v5, Lorg/jsoup/nodes/b;

    .line 1265
    .line 1266
    invoke-virtual {v5}, Lorg/jsoup/nodes/b;->nodeName()Ljava/lang/String;

    .line 1267
    .line 1268
    .line 1269
    move-result-object v5

    .line 1270
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1271
    .line 1272
    .line 1273
    move-result v4

    .line 1274
    if-nez v4, :cond_4b

    .line 1275
    .line 1276
    goto :goto_11

    .line 1277
    :cond_4b
    iget-boolean v4, v2, Lorg/jsoup/parser/a;->s:Z

    .line 1278
    .line 1279
    if-nez v4, :cond_4c

    .line 1280
    .line 1281
    goto :goto_11

    .line 1282
    :cond_4c
    const/4 v6, 0x1

    .line 1283
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1284
    .line 1285
    .line 1286
    move-result-object v4

    .line 1287
    check-cast v4, Lorg/jsoup/nodes/b;

    .line 1288
    .line 1289
    invoke-virtual {v4}, Lorg/jsoup/nodes/b;->parent()Lorg/jsoup/nodes/b;

    .line 1290
    .line 1291
    .line 1292
    move-result-object v5

    .line 1293
    if-eqz v5, :cond_4d

    .line 1294
    .line 1295
    invoke-virtual {v4}, Lj6/p;->remove()V

    .line 1296
    .line 1297
    .line 1298
    :cond_4d
    :goto_13
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 1299
    .line 1300
    .line 1301
    move-result v4

    .line 1302
    if-le v4, v6, :cond_4e

    .line 1303
    .line 1304
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 1305
    .line 1306
    .line 1307
    move-result v4

    .line 1308
    sub-int/2addr v4, v6

    .line 1309
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1310
    .line 1311
    .line 1312
    goto :goto_13

    .line 1313
    :cond_4e
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/a;->n(Lk6/m;)Lorg/jsoup/nodes/b;

    .line 1314
    .line 1315
    .line 1316
    sget-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState;->B:Lorg/jsoup/parser/HtmlTreeBuilderState$19;

    .line 1317
    .line 1318
    iput-object v1, v2, Lorg/jsoup/parser/a;->k:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 1319
    .line 1320
    return v6

    .line 1321
    :cond_4f
    invoke-static {v3, v6}, Lh6/j;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 1322
    .line 1323
    .line 1324
    move-result v4

    .line 1325
    if-eqz v4, :cond_52

    .line 1326
    .line 1327
    invoke-virtual {v2, v14}, Lorg/jsoup/parser/a;->i(Ljava/lang/String;)Z

    .line 1328
    .line 1329
    .line 1330
    move-result v3

    .line 1331
    if-eqz v3, :cond_50

    .line 1332
    .line 1333
    invoke-virtual {v2, v14}, Lorg/jsoup/parser/c;->processEndTag(Ljava/lang/String;)Z

    .line 1334
    .line 1335
    .line 1336
    :cond_50
    invoke-virtual {v2}, Lorg/jsoup/parser/c;->currentElement()Lorg/jsoup/nodes/b;

    .line 1337
    .line 1338
    .line 1339
    move-result-object v3

    .line 1340
    invoke-virtual {v3}, Lorg/jsoup/nodes/b;->nodeName()Ljava/lang/String;

    .line 1341
    .line 1342
    .line 1343
    move-result-object v3

    .line 1344
    invoke-static {v3, v6}, Lh6/j;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 1345
    .line 1346
    .line 1347
    move-result v3

    .line 1348
    if-eqz v3, :cond_51

    .line 1349
    .line 1350
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/a;->e(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 1351
    .line 1352
    .line 1353
    invoke-virtual {v2}, Lorg/jsoup/parser/a;->v()V

    .line 1354
    .line 1355
    .line 1356
    :cond_51
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/a;->n(Lk6/m;)Lorg/jsoup/nodes/b;

    .line 1357
    .line 1358
    .line 1359
    const/16 v18, 0x1

    .line 1360
    .line 1361
    return v18

    .line 1362
    :cond_52
    sget-object v4, Lk6/b;->d:[Ljava/lang/String;

    .line 1363
    .line 1364
    invoke-static {v3, v4}, Lh6/j;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 1365
    .line 1366
    .line 1367
    move-result v4

    .line 1368
    if-eqz v4, :cond_54

    .line 1369
    .line 1370
    invoke-virtual {v2, v14}, Lorg/jsoup/parser/a;->i(Ljava/lang/String;)Z

    .line 1371
    .line 1372
    .line 1373
    move-result v3

    .line 1374
    if-eqz v3, :cond_53

    .line 1375
    .line 1376
    invoke-virtual {v2, v14}, Lorg/jsoup/parser/c;->processEndTag(Ljava/lang/String;)Z

    .line 1377
    .line 1378
    .line 1379
    :cond_53
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/a;->n(Lk6/m;)Lorg/jsoup/nodes/b;

    .line 1380
    .line 1381
    .line 1382
    iget-object v1, v2, Lorg/jsoup/parser/c;->a:Lk6/a;

    .line 1383
    .line 1384
    const-string v3, "\n"

    .line 1385
    .line 1386
    invoke-virtual {v1, v3}, Lk6/a;->f(Ljava/lang/String;)Z

    .line 1387
    .line 1388
    .line 1389
    const/4 v11, 0x0

    .line 1390
    iput-boolean v11, v2, Lorg/jsoup/parser/a;->s:Z

    .line 1391
    .line 1392
    const/16 v18, 0x1

    .line 1393
    .line 1394
    return v18

    .line 1395
    :cond_54
    const/4 v11, 0x0

    .line 1396
    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1397
    .line 1398
    .line 1399
    move-result v4

    .line 1400
    if-eqz v4, :cond_57

    .line 1401
    .line 1402
    iget-object v3, v2, Lorg/jsoup/parser/a;->o:Lj6/l;

    .line 1403
    .line 1404
    if-eqz v3, :cond_55

    .line 1405
    .line 1406
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/a;->e(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 1407
    .line 1408
    .line 1409
    return v11

    .line 1410
    :cond_55
    invoke-virtual {v2, v14}, Lorg/jsoup/parser/a;->i(Ljava/lang/String;)Z

    .line 1411
    .line 1412
    .line 1413
    move-result v3

    .line 1414
    if-eqz v3, :cond_56

    .line 1415
    .line 1416
    invoke-virtual {v2, v14}, Lorg/jsoup/parser/c;->processEndTag(Ljava/lang/String;)Z

    .line 1417
    .line 1418
    .line 1419
    :cond_56
    const/4 v6, 0x1

    .line 1420
    invoke-virtual {v2, v1, v6}, Lorg/jsoup/parser/a;->r(Lk6/m;Z)V

    .line 1421
    .line 1422
    .line 1423
    return v6

    .line 1424
    :cond_57
    const/4 v6, 0x1

    .line 1425
    invoke-static {v3, v7}, Lh6/j;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 1426
    .line 1427
    .line 1428
    move-result v4

    .line 1429
    if-eqz v4, :cond_5c

    .line 1430
    .line 1431
    iput-boolean v11, v2, Lorg/jsoup/parser/a;->s:Z

    .line 1432
    .line 1433
    iget-object v3, v2, Lorg/jsoup/parser/c;->d:Ljava/util/ArrayList;

    .line 1434
    .line 1435
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 1436
    .line 1437
    .line 1438
    move-result v4

    .line 1439
    sub-int/2addr v4, v6

    .line 1440
    :goto_14
    if-lez v4, :cond_5a

    .line 1441
    .line 1442
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1443
    .line 1444
    .line 1445
    move-result-object v5

    .line 1446
    check-cast v5, Lorg/jsoup/nodes/b;

    .line 1447
    .line 1448
    invoke-virtual {v5}, Lorg/jsoup/nodes/b;->nodeName()Ljava/lang/String;

    .line 1449
    .line 1450
    .line 1451
    move-result-object v6

    .line 1452
    invoke-static {v6, v7}, Lh6/j;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 1453
    .line 1454
    .line 1455
    move-result v6

    .line 1456
    if-eqz v6, :cond_58

    .line 1457
    .line 1458
    invoke-virtual {v5}, Lorg/jsoup/nodes/b;->nodeName()Ljava/lang/String;

    .line 1459
    .line 1460
    .line 1461
    move-result-object v3

    .line 1462
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/c;->processEndTag(Ljava/lang/String;)Z

    .line 1463
    .line 1464
    .line 1465
    goto :goto_15

    .line 1466
    :cond_58
    invoke-virtual {v5}, Lorg/jsoup/nodes/b;->nodeName()Ljava/lang/String;

    .line 1467
    .line 1468
    .line 1469
    move-result-object v6

    .line 1470
    invoke-static {v6, v10}, Lh6/j;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 1471
    .line 1472
    .line 1473
    move-result v6

    .line 1474
    if-eqz v6, :cond_59

    .line 1475
    .line 1476
    invoke-virtual {v5}, Lorg/jsoup/nodes/b;->nodeName()Ljava/lang/String;

    .line 1477
    .line 1478
    .line 1479
    move-result-object v5

    .line 1480
    invoke-static {v5, v13}, Lh6/j;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 1481
    .line 1482
    .line 1483
    move-result v5

    .line 1484
    if-nez v5, :cond_59

    .line 1485
    .line 1486
    goto :goto_15

    .line 1487
    :cond_59
    add-int/lit8 v4, v4, -0x1

    .line 1488
    .line 1489
    goto :goto_14

    .line 1490
    :cond_5a
    :goto_15
    invoke-virtual {v2, v14}, Lorg/jsoup/parser/a;->i(Ljava/lang/String;)Z

    .line 1491
    .line 1492
    .line 1493
    move-result v3

    .line 1494
    if-eqz v3, :cond_5b

    .line 1495
    .line 1496
    invoke-virtual {v2, v14}, Lorg/jsoup/parser/c;->processEndTag(Ljava/lang/String;)Z

    .line 1497
    .line 1498
    .line 1499
    :cond_5b
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/a;->n(Lk6/m;)Lorg/jsoup/nodes/b;

    .line 1500
    .line 1501
    .line 1502
    const/16 v18, 0x1

    .line 1503
    .line 1504
    return v18

    .line 1505
    :cond_5c
    const-string v4, "plaintext"

    .line 1506
    .line 1507
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1508
    .line 1509
    .line 1510
    move-result v4

    .line 1511
    if-eqz v4, :cond_5e

    .line 1512
    .line 1513
    invoke-virtual {v2, v14}, Lorg/jsoup/parser/a;->i(Ljava/lang/String;)Z

    .line 1514
    .line 1515
    .line 1516
    move-result v3

    .line 1517
    if-eqz v3, :cond_5d

    .line 1518
    .line 1519
    invoke-virtual {v2, v14}, Lorg/jsoup/parser/c;->processEndTag(Ljava/lang/String;)Z

    .line 1520
    .line 1521
    .line 1522
    :cond_5d
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/a;->n(Lk6/m;)Lorg/jsoup/nodes/b;

    .line 1523
    .line 1524
    .line 1525
    iget-object v1, v2, Lorg/jsoup/parser/c;->b:Lorg/jsoup/parser/b;

    .line 1526
    .line 1527
    sget-object v2, Lorg/jsoup/parser/TokeniserState;->p:Lorg/jsoup/parser/TokeniserState$7;

    .line 1528
    .line 1529
    iput-object v2, v1, Lorg/jsoup/parser/b;->c:Lorg/jsoup/parser/TokeniserState;

    .line 1530
    .line 1531
    const/16 v18, 0x1

    .line 1532
    .line 1533
    return v18

    .line 1534
    :cond_5e
    const/16 v18, 0x1

    .line 1535
    .line 1536
    const-string v4, "button"

    .line 1537
    .line 1538
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1539
    .line 1540
    .line 1541
    move-result v6

    .line 1542
    if-eqz v6, :cond_60

    .line 1543
    .line 1544
    invoke-virtual {v2, v4}, Lorg/jsoup/parser/a;->i(Ljava/lang/String;)Z

    .line 1545
    .line 1546
    .line 1547
    move-result v3

    .line 1548
    if-eqz v3, :cond_5f

    .line 1549
    .line 1550
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/a;->e(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 1551
    .line 1552
    .line 1553
    invoke-virtual {v2, v4}, Lorg/jsoup/parser/c;->processEndTag(Ljava/lang/String;)Z

    .line 1554
    .line 1555
    .line 1556
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/a;->process(Lk6/o;)Z

    .line 1557
    .line 1558
    .line 1559
    return v18

    .line 1560
    :cond_5f
    invoke-virtual {v2}, Lorg/jsoup/parser/a;->z()V

    .line 1561
    .line 1562
    .line 1563
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/a;->n(Lk6/m;)Lorg/jsoup/nodes/b;

    .line 1564
    .line 1565
    .line 1566
    const/4 v11, 0x0

    .line 1567
    iput-boolean v11, v2, Lorg/jsoup/parser/a;->s:Z

    .line 1568
    .line 1569
    return v18

    .line 1570
    :cond_60
    sget-object v4, Lk6/b;->g:[Ljava/lang/String;

    .line 1571
    .line 1572
    invoke-static {v3, v4}, Lh6/j;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 1573
    .line 1574
    .line 1575
    move-result v4

    .line 1576
    if-eqz v4, :cond_61

    .line 1577
    .line 1578
    invoke-virtual {v2}, Lorg/jsoup/parser/a;->z()V

    .line 1579
    .line 1580
    .line 1581
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/a;->n(Lk6/m;)Lorg/jsoup/nodes/b;

    .line 1582
    .line 1583
    .line 1584
    move-result-object v1

    .line 1585
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/a;->y(Lorg/jsoup/nodes/b;)V

    .line 1586
    .line 1587
    .line 1588
    return v18

    .line 1589
    :cond_61
    const-string v4, "nobr"

    .line 1590
    .line 1591
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1592
    .line 1593
    .line 1594
    move-result v6

    .line 1595
    if-eqz v6, :cond_63

    .line 1596
    .line 1597
    invoke-virtual {v2}, Lorg/jsoup/parser/a;->z()V

    .line 1598
    .line 1599
    .line 1600
    invoke-virtual {v2, v4}, Lorg/jsoup/parser/a;->j(Ljava/lang/String;)Z

    .line 1601
    .line 1602
    .line 1603
    move-result v3

    .line 1604
    if-eqz v3, :cond_62

    .line 1605
    .line 1606
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/a;->e(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 1607
    .line 1608
    .line 1609
    invoke-virtual {v2, v4}, Lorg/jsoup/parser/c;->processEndTag(Ljava/lang/String;)Z

    .line 1610
    .line 1611
    .line 1612
    invoke-virtual {v2}, Lorg/jsoup/parser/a;->z()V

    .line 1613
    .line 1614
    .line 1615
    :cond_62
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/a;->n(Lk6/m;)Lorg/jsoup/nodes/b;

    .line 1616
    .line 1617
    .line 1618
    move-result-object v1

    .line 1619
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/a;->y(Lorg/jsoup/nodes/b;)V

    .line 1620
    .line 1621
    .line 1622
    const/16 v18, 0x1

    .line 1623
    .line 1624
    return v18

    .line 1625
    :cond_63
    const/16 v18, 0x1

    .line 1626
    .line 1627
    invoke-static {v3, v5}, Lh6/j;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 1628
    .line 1629
    .line 1630
    move-result v4

    .line 1631
    if-eqz v4, :cond_64

    .line 1632
    .line 1633
    invoke-virtual {v2}, Lorg/jsoup/parser/a;->z()V

    .line 1634
    .line 1635
    .line 1636
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/a;->n(Lk6/m;)Lorg/jsoup/nodes/b;

    .line 1637
    .line 1638
    .line 1639
    iget-object v1, v2, Lorg/jsoup/parser/a;->p:Ljava/util/ArrayList;

    .line 1640
    .line 1641
    const/4 v4, 0x0

    .line 1642
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1643
    .line 1644
    .line 1645
    const/4 v11, 0x0

    .line 1646
    iput-boolean v11, v2, Lorg/jsoup/parser/a;->s:Z

    .line 1647
    .line 1648
    return v18

    .line 1649
    :cond_64
    const-string v4, "table"

    .line 1650
    .line 1651
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1652
    .line 1653
    .line 1654
    move-result v4

    .line 1655
    sget-object v5, Lorg/jsoup/parser/HtmlTreeBuilderState;->r:Lorg/jsoup/parser/HtmlTreeBuilderState$9;

    .line 1656
    .line 1657
    if-eqz v4, :cond_66

    .line 1658
    .line 1659
    iget-object v3, v2, Lorg/jsoup/parser/c;->c:Lj6/h;

    .line 1660
    .line 1661
    invoke-virtual {v3}, Lj6/h;->quirksMode()Lorg/jsoup/nodes/Document$QuirksMode;

    .line 1662
    .line 1663
    .line 1664
    move-result-object v3

    .line 1665
    sget-object v4, Lorg/jsoup/nodes/Document$QuirksMode;->e:Lorg/jsoup/nodes/Document$QuirksMode;

    .line 1666
    .line 1667
    if-eq v3, v4, :cond_65

    .line 1668
    .line 1669
    invoke-virtual {v2, v14}, Lorg/jsoup/parser/a;->i(Ljava/lang/String;)Z

    .line 1670
    .line 1671
    .line 1672
    move-result v3

    .line 1673
    if-eqz v3, :cond_65

    .line 1674
    .line 1675
    invoke-virtual {v2, v14}, Lorg/jsoup/parser/c;->processEndTag(Ljava/lang/String;)Z

    .line 1676
    .line 1677
    .line 1678
    :cond_65
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/a;->n(Lk6/m;)Lorg/jsoup/nodes/b;

    .line 1679
    .line 1680
    .line 1681
    const/4 v11, 0x0

    .line 1682
    iput-boolean v11, v2, Lorg/jsoup/parser/a;->s:Z

    .line 1683
    .line 1684
    iput-object v5, v2, Lorg/jsoup/parser/a;->k:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 1685
    .line 1686
    const/16 v18, 0x1

    .line 1687
    .line 1688
    return v18

    .line 1689
    :cond_66
    const-string v4, "input"

    .line 1690
    .line 1691
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1692
    .line 1693
    .line 1694
    move-result v6

    .line 1695
    if-eqz v6, :cond_67

    .line 1696
    .line 1697
    invoke-virtual {v2}, Lorg/jsoup/parser/a;->z()V

    .line 1698
    .line 1699
    .line 1700
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/a;->q(Lk6/m;)Lorg/jsoup/nodes/b;

    .line 1701
    .line 1702
    .line 1703
    move-result-object v1

    .line 1704
    const-string v3, "type"

    .line 1705
    .line 1706
    invoke-virtual {v1, v3}, Lj6/p;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 1707
    .line 1708
    .line 1709
    move-result-object v1

    .line 1710
    const-string v3, "hidden"

    .line 1711
    .line 1712
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 1713
    .line 1714
    .line 1715
    move-result v1

    .line 1716
    if-nez v1, :cond_49

    .line 1717
    .line 1718
    const/4 v11, 0x0

    .line 1719
    iput-boolean v11, v2, Lorg/jsoup/parser/a;->s:Z

    .line 1720
    .line 1721
    const/16 v18, 0x1

    .line 1722
    .line 1723
    return v18

    .line 1724
    :cond_67
    const/16 v18, 0x1

    .line 1725
    .line 1726
    sget-object v6, Lk6/b;->j:[Ljava/lang/String;

    .line 1727
    .line 1728
    invoke-static {v3, v6}, Lh6/j;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 1729
    .line 1730
    .line 1731
    move-result v6

    .line 1732
    if-eqz v6, :cond_68

    .line 1733
    .line 1734
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/a;->q(Lk6/m;)Lorg/jsoup/nodes/b;

    .line 1735
    .line 1736
    .line 1737
    return v18

    .line 1738
    :cond_68
    const-string v6, "hr"

    .line 1739
    .line 1740
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1741
    .line 1742
    .line 1743
    move-result v7

    .line 1744
    if-eqz v7, :cond_6a

    .line 1745
    .line 1746
    invoke-virtual {v2, v14}, Lorg/jsoup/parser/a;->i(Ljava/lang/String;)Z

    .line 1747
    .line 1748
    .line 1749
    move-result v3

    .line 1750
    if-eqz v3, :cond_69

    .line 1751
    .line 1752
    invoke-virtual {v2, v14}, Lorg/jsoup/parser/c;->processEndTag(Ljava/lang/String;)Z

    .line 1753
    .line 1754
    .line 1755
    :cond_69
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/a;->q(Lk6/m;)Lorg/jsoup/nodes/b;

    .line 1756
    .line 1757
    .line 1758
    const/4 v11, 0x0

    .line 1759
    iput-boolean v11, v2, Lorg/jsoup/parser/a;->s:Z

    .line 1760
    .line 1761
    const/16 v18, 0x1

    .line 1762
    .line 1763
    return v18

    .line 1764
    :cond_6a
    const-string v7, "image"

    .line 1765
    .line 1766
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1767
    .line 1768
    .line 1769
    move-result v7

    .line 1770
    const-string v9, "svg"

    .line 1771
    .line 1772
    if-eqz v7, :cond_6c

    .line 1773
    .line 1774
    invoke-virtual {v2, v9}, Lorg/jsoup/parser/a;->h(Ljava/lang/String;)Lorg/jsoup/nodes/b;

    .line 1775
    .line 1776
    .line 1777
    move-result-object v3

    .line 1778
    if-nez v3, :cond_6b

    .line 1779
    .line 1780
    const-string v3, "img"

    .line 1781
    .line 1782
    invoke-virtual {v1, v3}, Lk6/n;->n(Ljava/lang/String;)V

    .line 1783
    .line 1784
    .line 1785
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/a;->process(Lk6/o;)Z

    .line 1786
    .line 1787
    .line 1788
    move-result v1

    .line 1789
    return v1

    .line 1790
    :cond_6b
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/a;->n(Lk6/m;)Lorg/jsoup/nodes/b;

    .line 1791
    .line 1792
    .line 1793
    const/16 v18, 0x1

    .line 1794
    .line 1795
    return v18

    .line 1796
    :cond_6c
    const-string v7, "isindex"

    .line 1797
    .line 1798
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1799
    .line 1800
    .line 1801
    move-result v10

    .line 1802
    if-eqz v10, :cond_72

    .line 1803
    .line 1804
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/a;->e(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 1805
    .line 1806
    .line 1807
    iget-object v3, v2, Lorg/jsoup/parser/a;->o:Lj6/l;

    .line 1808
    .line 1809
    if-eqz v3, :cond_6d

    .line 1810
    .line 1811
    goto/16 :goto_11

    .line 1812
    .line 1813
    :goto_16
    return v16

    .line 1814
    :cond_6d
    invoke-virtual {v2, v15}, Lorg/jsoup/parser/c;->processStartTag(Ljava/lang/String;)Z

    .line 1815
    .line 1816
    .line 1817
    iget-object v3, v1, Lk6/n;->j:Lj6/c;

    .line 1818
    .line 1819
    const-string v5, "action"

    .line 1820
    .line 1821
    invoke-virtual {v3, v5}, Lj6/c;->hasKey(Ljava/lang/String;)Z

    .line 1822
    .line 1823
    .line 1824
    move-result v3

    .line 1825
    if-eqz v3, :cond_6e

    .line 1826
    .line 1827
    iget-object v3, v2, Lorg/jsoup/parser/a;->o:Lj6/l;

    .line 1828
    .line 1829
    iget-object v9, v1, Lk6/n;->j:Lj6/c;

    .line 1830
    .line 1831
    invoke-virtual {v9, v5}, Lj6/c;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 1832
    .line 1833
    .line 1834
    move-result-object v9

    .line 1835
    invoke-virtual {v3, v5, v9}, Lorg/jsoup/nodes/b;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/b;

    .line 1836
    .line 1837
    .line 1838
    :cond_6e
    invoke-virtual {v2, v6}, Lorg/jsoup/parser/c;->processStartTag(Ljava/lang/String;)Z

    .line 1839
    .line 1840
    .line 1841
    const-string v3, "label"

    .line 1842
    .line 1843
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/c;->processStartTag(Ljava/lang/String;)Z

    .line 1844
    .line 1845
    .line 1846
    iget-object v5, v1, Lk6/n;->j:Lj6/c;

    .line 1847
    .line 1848
    const-string v9, "prompt"

    .line 1849
    .line 1850
    invoke-virtual {v5, v9}, Lj6/c;->hasKey(Ljava/lang/String;)Z

    .line 1851
    .line 1852
    .line 1853
    move-result v5

    .line 1854
    if-eqz v5, :cond_6f

    .line 1855
    .line 1856
    iget-object v5, v1, Lk6/n;->j:Lj6/c;

    .line 1857
    .line 1858
    invoke-virtual {v5, v9}, Lj6/c;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 1859
    .line 1860
    .line 1861
    move-result-object v5

    .line 1862
    goto :goto_17

    .line 1863
    :cond_6f
    const-string v5, "This is a searchable index. Enter search keywords: "

    .line 1864
    .line 1865
    :goto_17
    new-instance v9, Lk6/h;

    .line 1866
    .line 1867
    invoke-direct {v9}, Lk6/h;-><init>()V

    .line 1868
    .line 1869
    .line 1870
    iput-object v5, v9, Lk6/h;->b:Ljava/lang/String;

    .line 1871
    .line 1872
    invoke-virtual {v2, v9}, Lorg/jsoup/parser/a;->process(Lk6/o;)Z

    .line 1873
    .line 1874
    .line 1875
    new-instance v5, Lj6/c;

    .line 1876
    .line 1877
    invoke-direct {v5}, Lj6/c;-><init>()V

    .line 1878
    .line 1879
    .line 1880
    iget-object v1, v1, Lk6/n;->j:Lj6/c;

    .line 1881
    .line 1882
    invoke-virtual {v1}, Lj6/c;->iterator()Ljava/util/Iterator;

    .line 1883
    .line 1884
    .line 1885
    move-result-object v1

    .line 1886
    :cond_70
    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 1887
    .line 1888
    .line 1889
    move-result v9

    .line 1890
    if-eqz v9, :cond_71

    .line 1891
    .line 1892
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1893
    .line 1894
    .line 1895
    move-result-object v9

    .line 1896
    check-cast v9, Lj6/a;

    .line 1897
    .line 1898
    invoke-virtual {v9}, Lj6/a;->getKey()Ljava/lang/String;

    .line 1899
    .line 1900
    .line 1901
    move-result-object v10

    .line 1902
    sget-object v11, Lk6/b;->k:[Ljava/lang/String;

    .line 1903
    .line 1904
    invoke-static {v10, v11}, Lh6/j;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 1905
    .line 1906
    .line 1907
    move-result v10

    .line 1908
    if-nez v10, :cond_70

    .line 1909
    .line 1910
    invoke-virtual {v5, v9}, Lj6/c;->put(Lj6/a;)Lj6/c;

    .line 1911
    .line 1912
    .line 1913
    goto :goto_18

    .line 1914
    :cond_71
    invoke-virtual {v5, v8, v7}, Lj6/c;->put(Ljava/lang/String;Ljava/lang/String;)Lj6/c;

    .line 1915
    .line 1916
    .line 1917
    invoke-virtual {v2, v4, v5}, Lorg/jsoup/parser/a;->processStartTag(Ljava/lang/String;Lj6/c;)Z

    .line 1918
    .line 1919
    .line 1920
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/c;->processEndTag(Ljava/lang/String;)Z

    .line 1921
    .line 1922
    .line 1923
    invoke-virtual {v2, v6}, Lorg/jsoup/parser/c;->processStartTag(Ljava/lang/String;)Z

    .line 1924
    .line 1925
    .line 1926
    invoke-virtual {v2, v15}, Lorg/jsoup/parser/c;->processEndTag(Ljava/lang/String;)Z

    .line 1927
    .line 1928
    .line 1929
    const/16 v18, 0x1

    .line 1930
    .line 1931
    return v18

    .line 1932
    :cond_72
    const-string v4, "textarea"

    .line 1933
    .line 1934
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1935
    .line 1936
    .line 1937
    move-result v4

    .line 1938
    if-eqz v4, :cond_73

    .line 1939
    .line 1940
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/a;->n(Lk6/m;)Lorg/jsoup/nodes/b;

    .line 1941
    .line 1942
    .line 1943
    iget-object v1, v2, Lorg/jsoup/parser/c;->b:Lorg/jsoup/parser/b;

    .line 1944
    .line 1945
    sget-object v3, Lorg/jsoup/parser/TokeniserState;->f:Lorg/jsoup/parser/TokeniserState$3;

    .line 1946
    .line 1947
    iput-object v3, v1, Lorg/jsoup/parser/b;->c:Lorg/jsoup/parser/TokeniserState;

    .line 1948
    .line 1949
    iget-object v1, v2, Lorg/jsoup/parser/a;->k:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 1950
    .line 1951
    iput-object v1, v2, Lorg/jsoup/parser/a;->l:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 1952
    .line 1953
    const/4 v11, 0x0

    .line 1954
    iput-boolean v11, v2, Lorg/jsoup/parser/a;->s:Z

    .line 1955
    .line 1956
    sget-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState;->q:Lorg/jsoup/parser/HtmlTreeBuilderState$8;

    .line 1957
    .line 1958
    iput-object v1, v2, Lorg/jsoup/parser/a;->k:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 1959
    .line 1960
    const/16 v18, 0x1

    .line 1961
    .line 1962
    return v18

    .line 1963
    :cond_73
    const-string v4, "xmp"

    .line 1964
    .line 1965
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1966
    .line 1967
    .line 1968
    move-result v4

    .line 1969
    if-eqz v4, :cond_75

    .line 1970
    .line 1971
    invoke-virtual {v2, v14}, Lorg/jsoup/parser/a;->i(Ljava/lang/String;)Z

    .line 1972
    .line 1973
    .line 1974
    move-result v3

    .line 1975
    if-eqz v3, :cond_74

    .line 1976
    .line 1977
    invoke-virtual {v2, v14}, Lorg/jsoup/parser/c;->processEndTag(Ljava/lang/String;)Z

    .line 1978
    .line 1979
    .line 1980
    :cond_74
    invoke-virtual {v2}, Lorg/jsoup/parser/a;->z()V

    .line 1981
    .line 1982
    .line 1983
    const/4 v11, 0x0

    .line 1984
    iput-boolean v11, v2, Lorg/jsoup/parser/a;->s:Z

    .line 1985
    .line 1986
    invoke-static {v1, v2}, Lorg/jsoup/parser/HtmlTreeBuilderState;->d(Lk6/m;Lorg/jsoup/parser/a;)V

    .line 1987
    .line 1988
    .line 1989
    const/16 v18, 0x1

    .line 1990
    .line 1991
    return v18

    .line 1992
    :cond_75
    const/4 v11, 0x0

    .line 1993
    const/16 v18, 0x1

    .line 1994
    .line 1995
    const-string v4, "iframe"

    .line 1996
    .line 1997
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1998
    .line 1999
    .line 2000
    move-result v4

    .line 2001
    if-eqz v4, :cond_76

    .line 2002
    .line 2003
    iput-boolean v11, v2, Lorg/jsoup/parser/a;->s:Z

    .line 2004
    .line 2005
    invoke-static {v1, v2}, Lorg/jsoup/parser/HtmlTreeBuilderState;->d(Lk6/m;Lorg/jsoup/parser/a;)V

    .line 2006
    .line 2007
    .line 2008
    return v18

    .line 2009
    :cond_76
    const-string v4, "noembed"

    .line 2010
    .line 2011
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2012
    .line 2013
    .line 2014
    move-result v4

    .line 2015
    if-eqz v4, :cond_77

    .line 2016
    .line 2017
    invoke-static {v1, v2}, Lorg/jsoup/parser/HtmlTreeBuilderState;->d(Lk6/m;Lorg/jsoup/parser/a;)V

    .line 2018
    .line 2019
    .line 2020
    return v18

    .line 2021
    :cond_77
    const-string v4, "select"

    .line 2022
    .line 2023
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2024
    .line 2025
    .line 2026
    move-result v4

    .line 2027
    if-eqz v4, :cond_7a

    .line 2028
    .line 2029
    invoke-virtual {v2}, Lorg/jsoup/parser/a;->z()V

    .line 2030
    .line 2031
    .line 2032
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/a;->n(Lk6/m;)Lorg/jsoup/nodes/b;

    .line 2033
    .line 2034
    .line 2035
    const/4 v11, 0x0

    .line 2036
    iput-boolean v11, v2, Lorg/jsoup/parser/a;->s:Z

    .line 2037
    .line 2038
    iget-object v1, v2, Lorg/jsoup/parser/a;->k:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 2039
    .line 2040
    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 2041
    .line 2042
    .line 2043
    move-result v3

    .line 2044
    if-nez v3, :cond_78

    .line 2045
    .line 2046
    sget-object v3, Lorg/jsoup/parser/HtmlTreeBuilderState;->t:Lorg/jsoup/parser/HtmlTreeBuilderState$11;

    .line 2047
    .line 2048
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 2049
    .line 2050
    .line 2051
    move-result v3

    .line 2052
    if-nez v3, :cond_78

    .line 2053
    .line 2054
    sget-object v3, Lorg/jsoup/parser/HtmlTreeBuilderState;->v:Lorg/jsoup/parser/HtmlTreeBuilderState$13;

    .line 2055
    .line 2056
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 2057
    .line 2058
    .line 2059
    move-result v3

    .line 2060
    if-nez v3, :cond_78

    .line 2061
    .line 2062
    sget-object v3, Lorg/jsoup/parser/HtmlTreeBuilderState;->w:Lorg/jsoup/parser/HtmlTreeBuilderState$14;

    .line 2063
    .line 2064
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 2065
    .line 2066
    .line 2067
    move-result v3

    .line 2068
    if-nez v3, :cond_78

    .line 2069
    .line 2070
    sget-object v3, Lorg/jsoup/parser/HtmlTreeBuilderState;->x:Lorg/jsoup/parser/HtmlTreeBuilderState$15;

    .line 2071
    .line 2072
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 2073
    .line 2074
    .line 2075
    move-result v1

    .line 2076
    if-eqz v1, :cond_79

    .line 2077
    .line 2078
    :cond_78
    const/16 v18, 0x1

    .line 2079
    .line 2080
    goto :goto_19

    .line 2081
    :cond_79
    sget-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState;->y:Lorg/jsoup/parser/HtmlTreeBuilderState$16;

    .line 2082
    .line 2083
    iput-object v1, v2, Lorg/jsoup/parser/a;->k:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 2084
    .line 2085
    const/16 v18, 0x1

    .line 2086
    .line 2087
    return v18

    .line 2088
    :goto_19
    sget-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState;->z:Lorg/jsoup/parser/HtmlTreeBuilderState$17;

    .line 2089
    .line 2090
    iput-object v1, v2, Lorg/jsoup/parser/a;->k:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 2091
    .line 2092
    return v18

    .line 2093
    :cond_7a
    sget-object v4, Lk6/b;->l:[Ljava/lang/String;

    .line 2094
    .line 2095
    invoke-static {v3, v4}, Lh6/j;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 2096
    .line 2097
    .line 2098
    move-result v4

    .line 2099
    if-eqz v4, :cond_7c

    .line 2100
    .line 2101
    const-string v3, "option"

    .line 2102
    .line 2103
    invoke-static {v2, v3}, Lb/c;->v(Lorg/jsoup/parser/a;Ljava/lang/String;)Z

    .line 2104
    .line 2105
    .line 2106
    move-result v4

    .line 2107
    if-eqz v4, :cond_7b

    .line 2108
    .line 2109
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/c;->processEndTag(Ljava/lang/String;)Z

    .line 2110
    .line 2111
    .line 2112
    :cond_7b
    invoke-virtual {v2}, Lorg/jsoup/parser/a;->z()V

    .line 2113
    .line 2114
    .line 2115
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/a;->n(Lk6/m;)Lorg/jsoup/nodes/b;

    .line 2116
    .line 2117
    .line 2118
    const/16 v18, 0x1

    .line 2119
    .line 2120
    return v18

    .line 2121
    :cond_7c
    sget-object v4, Lk6/b;->m:[Ljava/lang/String;

    .line 2122
    .line 2123
    invoke-static {v3, v4}, Lh6/j;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 2124
    .line 2125
    .line 2126
    move-result v4

    .line 2127
    if-eqz v4, :cond_80

    .line 2128
    .line 2129
    const-string v3, "ruby"

    .line 2130
    .line 2131
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/a;->j(Ljava/lang/String;)Z

    .line 2132
    .line 2133
    .line 2134
    move-result v4

    .line 2135
    if-eqz v4, :cond_49

    .line 2136
    .line 2137
    invoke-static {v2, v3}, Lb/c;->v(Lorg/jsoup/parser/a;Ljava/lang/String;)Z

    .line 2138
    .line 2139
    .line 2140
    move-result v4

    .line 2141
    if-nez v4, :cond_7e

    .line 2142
    .line 2143
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/a;->e(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 2144
    .line 2145
    .line 2146
    iget-object v4, v2, Lorg/jsoup/parser/c;->d:Ljava/util/ArrayList;

    .line 2147
    .line 2148
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 2149
    .line 2150
    .line 2151
    move-result v4

    .line 2152
    const/16 v18, 0x1

    .line 2153
    .line 2154
    add-int/lit8 v4, v4, -0x1

    .line 2155
    .line 2156
    :goto_1a
    if-ltz v4, :cond_7e

    .line 2157
    .line 2158
    iget-object v5, v2, Lorg/jsoup/parser/c;->d:Ljava/util/ArrayList;

    .line 2159
    .line 2160
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2161
    .line 2162
    .line 2163
    move-result-object v5

    .line 2164
    check-cast v5, Lorg/jsoup/nodes/b;

    .line 2165
    .line 2166
    invoke-virtual {v5}, Lorg/jsoup/nodes/b;->nodeName()Ljava/lang/String;

    .line 2167
    .line 2168
    .line 2169
    move-result-object v5

    .line 2170
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2171
    .line 2172
    .line 2173
    move-result v5

    .line 2174
    if-eqz v5, :cond_7d

    .line 2175
    .line 2176
    goto :goto_1b

    .line 2177
    :cond_7d
    iget-object v5, v2, Lorg/jsoup/parser/c;->d:Ljava/util/ArrayList;

    .line 2178
    .line 2179
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2180
    .line 2181
    .line 2182
    add-int/lit8 v4, v4, -0x1

    .line 2183
    .line 2184
    goto :goto_1a

    .line 2185
    :cond_7e
    :goto_1b
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/a;->n(Lk6/m;)Lorg/jsoup/nodes/b;

    .line 2186
    .line 2187
    .line 2188
    const/16 v18, 0x1

    .line 2189
    .line 2190
    :cond_7f
    :goto_1c
    return v18

    .line 2191
    :cond_80
    const/16 v18, 0x1

    .line 2192
    .line 2193
    const-string v4, "math"

    .line 2194
    .line 2195
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2196
    .line 2197
    .line 2198
    move-result v4

    .line 2199
    if-eqz v4, :cond_81

    .line 2200
    .line 2201
    invoke-virtual {v2}, Lorg/jsoup/parser/a;->z()V

    .line 2202
    .line 2203
    .line 2204
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/a;->n(Lk6/m;)Lorg/jsoup/nodes/b;

    .line 2205
    .line 2206
    .line 2207
    return v18

    .line 2208
    :cond_81
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2209
    .line 2210
    .line 2211
    move-result v4

    .line 2212
    if-eqz v4, :cond_82

    .line 2213
    .line 2214
    invoke-virtual {v2}, Lorg/jsoup/parser/a;->z()V

    .line 2215
    .line 2216
    .line 2217
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/a;->n(Lk6/m;)Lorg/jsoup/nodes/b;

    .line 2218
    .line 2219
    .line 2220
    return v18

    .line 2221
    :cond_82
    sget-object v4, Lk6/b;->n:[Ljava/lang/String;

    .line 2222
    .line 2223
    invoke-static {v3, v4}, Lh6/j;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 2224
    .line 2225
    .line 2226
    move-result v3

    .line 2227
    if-eqz v3, :cond_83

    .line 2228
    .line 2229
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/a;->e(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 2230
    .line 2231
    .line 2232
    const/16 v16, 0x0

    .line 2233
    .line 2234
    return v16

    .line 2235
    :cond_83
    invoke-virtual {v2}, Lorg/jsoup/parser/a;->z()V

    .line 2236
    .line 2237
    .line 2238
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/a;->n(Lk6/m;)Lorg/jsoup/nodes/b;

    .line 2239
    .line 2240
    .line 2241
    return v18

    .line 2242
    :cond_84
    const/16 v16, 0x0

    .line 2243
    .line 2244
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/a;->e(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 2245
    .line 2246
    .line 2247
    return v16
.end method

.method public final f(Lk6/o;Lorg/jsoup/parser/a;)Z
    .locals 5

    .line 1
    iget-object v0, p2, Lorg/jsoup/parser/c;->h:Lk6/d;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    check-cast p1, Lk6/l;

    .line 7
    .line 8
    invoke-virtual {p1}, Lk6/n;->m()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {v0, p1}, Lk6/d;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iget-object v0, p2, Lorg/jsoup/parser/c;->d:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const/4 v2, 0x1

    .line 23
    sub-int/2addr v1, v2

    .line 24
    :goto_0
    if-ltz v1, :cond_3

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Lorg/jsoup/nodes/b;

    .line 31
    .line 32
    invoke-virtual {v3}, Lorg/jsoup/nodes/b;->nodeName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    if-eqz v4, :cond_1

    .line 41
    .line 42
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/a;->f(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2}, Lorg/jsoup/parser/c;->currentElement()Lorg/jsoup/nodes/b;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lorg/jsoup/nodes/b;->nodeName()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-nez v0, :cond_0

    .line 58
    .line 59
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/a;->e(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 60
    .line 61
    .line 62
    :cond_0
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/a;->w(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    return v2

    .line 66
    :cond_1
    invoke-virtual {v3}, Lorg/jsoup/nodes/b;->nodeName()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    sget-object v4, Lorg/jsoup/parser/a;->B:[Ljava/lang/String;

    .line 71
    .line 72
    invoke-static {v3, v4}, Lh6/j;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    if-eqz v3, :cond_2

    .line 77
    .line 78
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/a;->e(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 79
    .line 80
    .line 81
    const/4 p1, 0x0

    .line 82
    return p1

    .line 83
    :cond_2
    add-int/lit8 v1, v1, -0x1

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_3
    return v2
.end method
