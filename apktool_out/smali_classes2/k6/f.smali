.class public final Lk6/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final j:Ljava/util/HashMap;

.field public static final k:[Ljava/lang/String;

.field public static final l:[Ljava/lang/String;

.field public static final m:[Ljava/lang/String;

.field public static final n:[Ljava/lang/String;

.field public static final o:[Ljava/lang/String;

.field public static final p:[Ljava/lang/String;


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 67

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lk6/f;->j:Ljava/util/HashMap;

    .line 7
    .line 8
    const-string v60, "article"

    .line 9
    .line 10
    const-string v61, "main"

    .line 11
    .line 12
    const-string v1, "html"

    .line 13
    .line 14
    const-string v2, "head"

    .line 15
    .line 16
    const-string v3, "body"

    .line 17
    .line 18
    const-string v4, "frameset"

    .line 19
    .line 20
    const-string v5, "script"

    .line 21
    .line 22
    const-string v6, "noscript"

    .line 23
    .line 24
    const-string v7, "style"

    .line 25
    .line 26
    const-string v8, "meta"

    .line 27
    .line 28
    const-string v9, "link"

    .line 29
    .line 30
    const-string v10, "title"

    .line 31
    .line 32
    const-string v11, "frame"

    .line 33
    .line 34
    const-string v12, "noframes"

    .line 35
    .line 36
    const-string v13, "section"

    .line 37
    .line 38
    const-string v14, "nav"

    .line 39
    .line 40
    const-string v15, "aside"

    .line 41
    .line 42
    const-string v16, "hgroup"

    .line 43
    .line 44
    const-string v17, "header"

    .line 45
    .line 46
    const-string v18, "footer"

    .line 47
    .line 48
    const-string v19, "p"

    .line 49
    .line 50
    const-string v20, "h1"

    .line 51
    .line 52
    const-string v21, "h2"

    .line 53
    .line 54
    const-string v22, "h3"

    .line 55
    .line 56
    const-string v23, "h4"

    .line 57
    .line 58
    const-string v24, "h5"

    .line 59
    .line 60
    const-string v25, "h6"

    .line 61
    .line 62
    const-string v26, "ul"

    .line 63
    .line 64
    const-string v27, "ol"

    .line 65
    .line 66
    const-string v28, "pre"

    .line 67
    .line 68
    const-string v29, "div"

    .line 69
    .line 70
    const-string v30, "blockquote"

    .line 71
    .line 72
    const-string v31, "hr"

    .line 73
    .line 74
    const-string v32, "address"

    .line 75
    .line 76
    const-string v33, "figure"

    .line 77
    .line 78
    const-string v34, "figcaption"

    .line 79
    .line 80
    const-string v35, "form"

    .line 81
    .line 82
    const-string v36, "fieldset"

    .line 83
    .line 84
    const-string v37, "ins"

    .line 85
    .line 86
    const-string v38, "del"

    .line 87
    .line 88
    const-string v39, "dl"

    .line 89
    .line 90
    const-string v40, "dt"

    .line 91
    .line 92
    const-string v41, "dd"

    .line 93
    .line 94
    const-string v42, "li"

    .line 95
    .line 96
    const-string v43, "table"

    .line 97
    .line 98
    const-string v44, "caption"

    .line 99
    .line 100
    const-string v45, "thead"

    .line 101
    .line 102
    const-string v46, "tfoot"

    .line 103
    .line 104
    const-string v47, "tbody"

    .line 105
    .line 106
    const-string v48, "colgroup"

    .line 107
    .line 108
    const-string v49, "col"

    .line 109
    .line 110
    const-string v50, "tr"

    .line 111
    .line 112
    const-string v51, "th"

    .line 113
    .line 114
    const-string v52, "td"

    .line 115
    .line 116
    const-string v53, "video"

    .line 117
    .line 118
    const-string v54, "audio"

    .line 119
    .line 120
    const-string v55, "canvas"

    .line 121
    .line 122
    const-string v56, "details"

    .line 123
    .line 124
    const-string v57, "menu"

    .line 125
    .line 126
    const-string v58, "plaintext"

    .line 127
    .line 128
    const-string v59, "template"

    .line 129
    .line 130
    const-string v62, "svg"

    .line 131
    .line 132
    const-string v63, "math"

    .line 133
    .line 134
    filled-new-array/range {v1 .. v63}, [Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    const-string v63, "track"

    .line 139
    .line 140
    const-string v64, "data"

    .line 141
    .line 142
    const-string v1, "object"

    .line 143
    .line 144
    const-string v2, "base"

    .line 145
    .line 146
    const-string v3, "font"

    .line 147
    .line 148
    const-string v4, "tt"

    .line 149
    .line 150
    const-string v5, "i"

    .line 151
    .line 152
    const-string v6, "b"

    .line 153
    .line 154
    const-string v7, "u"

    .line 155
    .line 156
    const-string v8, "big"

    .line 157
    .line 158
    const-string v9, "small"

    .line 159
    .line 160
    const-string v10, "em"

    .line 161
    .line 162
    const-string v11, "strong"

    .line 163
    .line 164
    const-string v12, "dfn"

    .line 165
    .line 166
    const-string v13, "code"

    .line 167
    .line 168
    const-string v14, "samp"

    .line 169
    .line 170
    const-string v15, "kbd"

    .line 171
    .line 172
    const-string v16, "var"

    .line 173
    .line 174
    const-string v17, "cite"

    .line 175
    .line 176
    const-string v18, "abbr"

    .line 177
    .line 178
    const-string v19, "time"

    .line 179
    .line 180
    const-string v20, "acronym"

    .line 181
    .line 182
    const-string v21, "mark"

    .line 183
    .line 184
    const-string v22, "ruby"

    .line 185
    .line 186
    const-string v23, "rt"

    .line 187
    .line 188
    const-string v24, "rp"

    .line 189
    .line 190
    const-string v25, "a"

    .line 191
    .line 192
    const-string v26, "img"

    .line 193
    .line 194
    const-string v27, "br"

    .line 195
    .line 196
    const-string v28, "wbr"

    .line 197
    .line 198
    const-string v29, "map"

    .line 199
    .line 200
    const-string v30, "q"

    .line 201
    .line 202
    const-string v31, "sub"

    .line 203
    .line 204
    const-string v32, "sup"

    .line 205
    .line 206
    const-string v33, "bdo"

    .line 207
    .line 208
    const-string v34, "iframe"

    .line 209
    .line 210
    const-string v35, "embed"

    .line 211
    .line 212
    const-string v36, "span"

    .line 213
    .line 214
    const-string v37, "input"

    .line 215
    .line 216
    const-string v38, "select"

    .line 217
    .line 218
    const-string v39, "textarea"

    .line 219
    .line 220
    const-string v40, "label"

    .line 221
    .line 222
    const-string v41, "button"

    .line 223
    .line 224
    const-string v42, "optgroup"

    .line 225
    .line 226
    const-string v43, "option"

    .line 227
    .line 228
    const-string v44, "legend"

    .line 229
    .line 230
    const-string v45, "datalist"

    .line 231
    .line 232
    const-string v46, "keygen"

    .line 233
    .line 234
    const-string v47, "output"

    .line 235
    .line 236
    const-string v48, "progress"

    .line 237
    .line 238
    const-string v49, "meter"

    .line 239
    .line 240
    const-string v50, "area"

    .line 241
    .line 242
    const-string v51, "param"

    .line 243
    .line 244
    const-string v52, "source"

    .line 245
    .line 246
    const-string v53, "track"

    .line 247
    .line 248
    const-string v54, "summary"

    .line 249
    .line 250
    const-string v55, "command"

    .line 251
    .line 252
    const-string v56, "device"

    .line 253
    .line 254
    const-string v57, "area"

    .line 255
    .line 256
    const-string v58, "basefont"

    .line 257
    .line 258
    const-string v59, "bgsound"

    .line 259
    .line 260
    const-string v60, "menuitem"

    .line 261
    .line 262
    const-string v61, "param"

    .line 263
    .line 264
    const-string v62, "source"

    .line 265
    .line 266
    const-string v65, "bdi"

    .line 267
    .line 268
    const-string v66, "s"

    .line 269
    .line 270
    filled-new-array/range {v1 .. v66}, [Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v1

    .line 274
    sput-object v1, Lk6/f;->k:[Ljava/lang/String;

    .line 275
    .line 276
    const-string v19, "menuitem"

    .line 277
    .line 278
    const-string v20, "param"

    .line 279
    .line 280
    const-string v2, "meta"

    .line 281
    .line 282
    const-string v3, "link"

    .line 283
    .line 284
    const-string v4, "base"

    .line 285
    .line 286
    const-string v5, "frame"

    .line 287
    .line 288
    const-string v6, "img"

    .line 289
    .line 290
    const-string v7, "br"

    .line 291
    .line 292
    const-string v8, "wbr"

    .line 293
    .line 294
    const-string v9, "embed"

    .line 295
    .line 296
    const-string v10, "hr"

    .line 297
    .line 298
    const-string v11, "input"

    .line 299
    .line 300
    const-string v12, "keygen"

    .line 301
    .line 302
    const-string v13, "col"

    .line 303
    .line 304
    const-string v14, "command"

    .line 305
    .line 306
    const-string v15, "device"

    .line 307
    .line 308
    const-string v16, "area"

    .line 309
    .line 310
    const-string v17, "basefont"

    .line 311
    .line 312
    const-string v18, "bgsound"

    .line 313
    .line 314
    const-string v21, "source"

    .line 315
    .line 316
    const-string v22, "track"

    .line 317
    .line 318
    filled-new-array/range {v2 .. v22}, [Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v1

    .line 322
    sput-object v1, Lk6/f;->l:[Ljava/lang/String;

    .line 323
    .line 324
    const-string v17, "style"

    .line 325
    .line 326
    const-string v18, "ins"

    .line 327
    .line 328
    const-string v2, "title"

    .line 329
    .line 330
    const-string v3, "a"

    .line 331
    .line 332
    const-string v4, "p"

    .line 333
    .line 334
    const-string v5, "h1"

    .line 335
    .line 336
    const-string v6, "h2"

    .line 337
    .line 338
    const-string v7, "h3"

    .line 339
    .line 340
    const-string v8, "h4"

    .line 341
    .line 342
    const-string v9, "h5"

    .line 343
    .line 344
    const-string v10, "h6"

    .line 345
    .line 346
    const-string v11, "pre"

    .line 347
    .line 348
    const-string v12, "address"

    .line 349
    .line 350
    const-string v13, "li"

    .line 351
    .line 352
    const-string v14, "th"

    .line 353
    .line 354
    const-string v15, "td"

    .line 355
    .line 356
    const-string v16, "script"

    .line 357
    .line 358
    const-string v19, "del"

    .line 359
    .line 360
    const-string v20, "s"

    .line 361
    .line 362
    filled-new-array/range {v2 .. v20}, [Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v1

    .line 366
    sput-object v1, Lk6/f;->m:[Ljava/lang/String;

    .line 367
    .line 368
    const-string v1, "pre"

    .line 369
    .line 370
    const-string v2, "plaintext"

    .line 371
    .line 372
    const-string v3, "title"

    .line 373
    .line 374
    const-string v4, "textarea"

    .line 375
    .line 376
    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object v1

    .line 380
    sput-object v1, Lk6/f;->n:[Ljava/lang/String;

    .line 381
    .line 382
    const-string v9, "object"

    .line 383
    .line 384
    const-string v10, "output"

    .line 385
    .line 386
    const-string v5, "button"

    .line 387
    .line 388
    const-string v6, "fieldset"

    .line 389
    .line 390
    const-string v7, "input"

    .line 391
    .line 392
    const-string v8, "keygen"

    .line 393
    .line 394
    const-string v11, "select"

    .line 395
    .line 396
    const-string v12, "textarea"

    .line 397
    .line 398
    filled-new-array/range {v5 .. v12}, [Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object v1

    .line 402
    sput-object v1, Lk6/f;->o:[Ljava/lang/String;

    .line 403
    .line 404
    const-string v1, "input"

    .line 405
    .line 406
    const-string v2, "keygen"

    .line 407
    .line 408
    const-string v3, "object"

    .line 409
    .line 410
    const-string v5, "select"

    .line 411
    .line 412
    filled-new-array {v1, v2, v3, v5, v4}, [Ljava/lang/String;

    .line 413
    .line 414
    .line 415
    move-result-object v1

    .line 416
    sput-object v1, Lk6/f;->p:[Ljava/lang/String;

    .line 417
    .line 418
    const/4 v1, 0x0

    .line 419
    move v2, v1

    .line 420
    :goto_0
    const/16 v3, 0x3f

    .line 421
    .line 422
    if-ge v2, v3, :cond_0

    .line 423
    .line 424
    aget-object v3, v0, v2

    .line 425
    .line 426
    new-instance v4, Lk6/f;

    .line 427
    .line 428
    invoke-direct {v4, v3}, Lk6/f;-><init>(Ljava/lang/String;)V

    .line 429
    .line 430
    .line 431
    sget-object v5, Lk6/f;->j:Ljava/util/HashMap;

    .line 432
    .line 433
    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    .line 435
    .line 436
    add-int/lit8 v2, v2, 0x1

    .line 437
    .line 438
    goto :goto_0

    .line 439
    :cond_0
    sget-object v0, Lk6/f;->k:[Ljava/lang/String;

    .line 440
    .line 441
    array-length v2, v0

    .line 442
    move v3, v1

    .line 443
    :goto_1
    if-ge v3, v2, :cond_1

    .line 444
    .line 445
    aget-object v4, v0, v3

    .line 446
    .line 447
    new-instance v5, Lk6/f;

    .line 448
    .line 449
    invoke-direct {v5, v4}, Lk6/f;-><init>(Ljava/lang/String;)V

    .line 450
    .line 451
    .line 452
    iput-boolean v1, v5, Lk6/f;->b:Z

    .line 453
    .line 454
    iput-boolean v1, v5, Lk6/f;->c:Z

    .line 455
    .line 456
    sget-object v6, Lk6/f;->j:Ljava/util/HashMap;

    .line 457
    .line 458
    invoke-virtual {v6, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    .line 460
    .line 461
    add-int/lit8 v3, v3, 0x1

    .line 462
    .line 463
    goto :goto_1

    .line 464
    :cond_1
    sget-object v0, Lk6/f;->l:[Ljava/lang/String;

    .line 465
    .line 466
    array-length v2, v0

    .line 467
    move v3, v1

    .line 468
    :goto_2
    const/4 v4, 0x1

    .line 469
    if-ge v3, v2, :cond_2

    .line 470
    .line 471
    aget-object v5, v0, v3

    .line 472
    .line 473
    sget-object v6, Lk6/f;->j:Ljava/util/HashMap;

    .line 474
    .line 475
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    .line 477
    .line 478
    move-result-object v5

    .line 479
    check-cast v5, Lk6/f;

    .line 480
    .line 481
    invoke-static {v5}, Lh6/k;->notNull(Ljava/lang/Object;)V

    .line 482
    .line 483
    .line 484
    iput-boolean v1, v5, Lk6/f;->d:Z

    .line 485
    .line 486
    iput-boolean v4, v5, Lk6/f;->e:Z

    .line 487
    .line 488
    add-int/lit8 v3, v3, 0x1

    .line 489
    .line 490
    goto :goto_2

    .line 491
    :cond_2
    sget-object v0, Lk6/f;->m:[Ljava/lang/String;

    .line 492
    .line 493
    array-length v2, v0

    .line 494
    move v3, v1

    .line 495
    :goto_3
    if-ge v3, v2, :cond_3

    .line 496
    .line 497
    aget-object v5, v0, v3

    .line 498
    .line 499
    sget-object v6, Lk6/f;->j:Ljava/util/HashMap;

    .line 500
    .line 501
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    .line 503
    .line 504
    move-result-object v5

    .line 505
    check-cast v5, Lk6/f;

    .line 506
    .line 507
    invoke-static {v5}, Lh6/k;->notNull(Ljava/lang/Object;)V

    .line 508
    .line 509
    .line 510
    iput-boolean v1, v5, Lk6/f;->c:Z

    .line 511
    .line 512
    add-int/lit8 v3, v3, 0x1

    .line 513
    .line 514
    goto :goto_3

    .line 515
    :cond_3
    sget-object v0, Lk6/f;->n:[Ljava/lang/String;

    .line 516
    .line 517
    array-length v2, v0

    .line 518
    move v3, v1

    .line 519
    :goto_4
    if-ge v3, v2, :cond_4

    .line 520
    .line 521
    aget-object v5, v0, v3

    .line 522
    .line 523
    sget-object v6, Lk6/f;->j:Ljava/util/HashMap;

    .line 524
    .line 525
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    .line 527
    .line 528
    move-result-object v5

    .line 529
    check-cast v5, Lk6/f;

    .line 530
    .line 531
    invoke-static {v5}, Lh6/k;->notNull(Ljava/lang/Object;)V

    .line 532
    .line 533
    .line 534
    iput-boolean v4, v5, Lk6/f;->g:Z

    .line 535
    .line 536
    add-int/lit8 v3, v3, 0x1

    .line 537
    .line 538
    goto :goto_4

    .line 539
    :cond_4
    sget-object v0, Lk6/f;->o:[Ljava/lang/String;

    .line 540
    .line 541
    array-length v2, v0

    .line 542
    move v3, v1

    .line 543
    :goto_5
    if-ge v3, v2, :cond_5

    .line 544
    .line 545
    aget-object v5, v0, v3

    .line 546
    .line 547
    sget-object v6, Lk6/f;->j:Ljava/util/HashMap;

    .line 548
    .line 549
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    .line 551
    .line 552
    move-result-object v5

    .line 553
    check-cast v5, Lk6/f;

    .line 554
    .line 555
    invoke-static {v5}, Lh6/k;->notNull(Ljava/lang/Object;)V

    .line 556
    .line 557
    .line 558
    iput-boolean v4, v5, Lk6/f;->h:Z

    .line 559
    .line 560
    add-int/lit8 v3, v3, 0x1

    .line 561
    .line 562
    goto :goto_5

    .line 563
    :cond_5
    sget-object v0, Lk6/f;->p:[Ljava/lang/String;

    .line 564
    .line 565
    array-length v2, v0

    .line 566
    :goto_6
    if-ge v1, v2, :cond_6

    .line 567
    .line 568
    aget-object v3, v0, v1

    .line 569
    .line 570
    sget-object v5, Lk6/f;->j:Ljava/util/HashMap;

    .line 571
    .line 572
    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    .line 574
    .line 575
    move-result-object v3

    .line 576
    check-cast v3, Lk6/f;

    .line 577
    .line 578
    invoke-static {v3}, Lh6/k;->notNull(Ljava/lang/Object;)V

    .line 579
    .line 580
    .line 581
    iput-boolean v4, v3, Lk6/f;->i:Z

    .line 582
    .line 583
    add-int/lit8 v1, v1, 0x1

    .line 584
    .line 585
    goto :goto_6

    .line 586
    :cond_6
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lk6/f;->b:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lk6/f;->c:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lk6/f;->d:Z

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lk6/f;->e:Z

    .line 13
    .line 14
    iput-boolean v0, p0, Lk6/f;->f:Z

    .line 15
    .line 16
    iput-boolean v0, p0, Lk6/f;->g:Z

    .line 17
    .line 18
    iput-boolean v0, p0, Lk6/f;->h:Z

    .line 19
    .line 20
    iput-boolean v0, p0, Lk6/f;->i:Z

    .line 21
    .line 22
    iput-object p1, p0, Lk6/f;->a:Ljava/lang/String;

    .line 23
    .line 24
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lk6/f;
    .locals 1

    .line 8
    sget-object v0, Lk6/d;->d:Lk6/d;

    invoke-static {p0, v0}, Lk6/f;->valueOf(Ljava/lang/String;Lk6/d;)Lk6/f;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;Lk6/d;)Lk6/f;
    .locals 2

    .line 1
    invoke-static {p0}, Lh6/k;->notNull(Ljava/lang/Object;)V

    .line 2
    sget-object v0, Lk6/f;->j:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk6/f;

    if-nez v1, :cond_1

    .line 3
    invoke-virtual {p1, p0}, Lk6/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-static {p0}, Lh6/k;->notEmpty(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lk6/f;

    if-nez p1, :cond_0

    .line 6
    new-instance p1, Lk6/f;

    invoke-direct {p1, p0}, Lk6/f;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 7
    iput-boolean p0, p1, Lk6/f;->b:Z

    :cond_0
    return-object p1

    :cond_1
    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    instance-of v0, p1, Lk6/f;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_1
    check-cast p1, Lk6/f;

    .line 10
    .line 11
    iget-object v0, p1, Lk6/f;->a:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v1, p0, Lk6/f;->a:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_2
    iget-boolean v0, p0, Lk6/f;->d:Z

    .line 23
    .line 24
    iget-boolean v1, p1, Lk6/f;->d:Z

    .line 25
    .line 26
    if-eq v0, v1, :cond_3

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_3
    iget-boolean v0, p0, Lk6/f;->e:Z

    .line 30
    .line 31
    iget-boolean v1, p1, Lk6/f;->e:Z

    .line 32
    .line 33
    if-eq v0, v1, :cond_4

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_4
    iget-boolean v0, p0, Lk6/f;->c:Z

    .line 37
    .line 38
    iget-boolean v1, p1, Lk6/f;->c:Z

    .line 39
    .line 40
    if-eq v0, v1, :cond_5

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_5
    iget-boolean v0, p0, Lk6/f;->b:Z

    .line 44
    .line 45
    iget-boolean v1, p1, Lk6/f;->b:Z

    .line 46
    .line 47
    if-eq v0, v1, :cond_6

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_6
    iget-boolean v0, p0, Lk6/f;->g:Z

    .line 51
    .line 52
    iget-boolean v1, p1, Lk6/f;->g:Z

    .line 53
    .line 54
    if-eq v0, v1, :cond_7

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_7
    iget-boolean v0, p0, Lk6/f;->f:Z

    .line 58
    .line 59
    iget-boolean v1, p1, Lk6/f;->f:Z

    .line 60
    .line 61
    if-eq v0, v1, :cond_8

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_8
    iget-boolean v0, p0, Lk6/f;->h:Z

    .line 65
    .line 66
    iget-boolean v1, p1, Lk6/f;->h:Z

    .line 67
    .line 68
    if-eq v0, v1, :cond_9

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_9
    iget-boolean v0, p0, Lk6/f;->i:Z

    .line 72
    .line 73
    iget-boolean p1, p1, Lk6/f;->i:Z

    .line 74
    .line 75
    if-ne v0, p1, :cond_a

    .line 76
    .line 77
    :goto_0
    const/4 p1, 0x1

    .line 78
    return p1

    .line 79
    :cond_a
    :goto_1
    const/4 p1, 0x0

    .line 80
    return p1
.end method

.method public formatAsBlock()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lk6/f;->c:Z

    .line 2
    .line 3
    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lk6/f;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lk6/f;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-boolean v1, p0, Lk6/f;->b:Z

    .line 10
    .line 11
    add-int/2addr v0, v1

    .line 12
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    .line 14
    iget-boolean v1, p0, Lk6/f;->c:Z

    .line 15
    .line 16
    add-int/2addr v0, v1

    .line 17
    mul-int/lit8 v0, v0, 0x1f

    .line 18
    .line 19
    iget-boolean v1, p0, Lk6/f;->d:Z

    .line 20
    .line 21
    add-int/2addr v0, v1

    .line 22
    mul-int/lit8 v0, v0, 0x1f

    .line 23
    .line 24
    iget-boolean v1, p0, Lk6/f;->e:Z

    .line 25
    .line 26
    add-int/2addr v0, v1

    .line 27
    mul-int/lit8 v0, v0, 0x1f

    .line 28
    .line 29
    iget-boolean v1, p0, Lk6/f;->f:Z

    .line 30
    .line 31
    add-int/2addr v0, v1

    .line 32
    mul-int/lit8 v0, v0, 0x1f

    .line 33
    .line 34
    iget-boolean v1, p0, Lk6/f;->g:Z

    .line 35
    .line 36
    add-int/2addr v0, v1

    .line 37
    mul-int/lit8 v0, v0, 0x1f

    .line 38
    .line 39
    iget-boolean v1, p0, Lk6/f;->h:Z

    .line 40
    .line 41
    add-int/2addr v0, v1

    .line 42
    mul-int/lit8 v0, v0, 0x1f

    .line 43
    .line 44
    iget-boolean v1, p0, Lk6/f;->i:Z

    .line 45
    .line 46
    add-int/2addr v0, v1

    .line 47
    return v0
.end method

.method public isBlock()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lk6/f;->b:Z

    .line 2
    .line 3
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lk6/f;->e:Z

    .line 2
    .line 3
    return v0
.end method

.method public isFormListed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lk6/f;->h:Z

    .line 2
    .line 3
    return v0
.end method

.method public isKnownTag()Z
    .locals 2

    .line 1
    sget-object v0, Lk6/f;->j:Ljava/util/HashMap;

    .line 2
    .line 3
    iget-object v1, p0, Lk6/f;->a:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public isSelfClosing()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lk6/f;->e:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lk6/f;->f:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0

    .line 12
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 13
    return v0
.end method

.method public preserveWhitespace()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lk6/f;->g:Z

    .line 2
    .line 3
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lk6/f;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
