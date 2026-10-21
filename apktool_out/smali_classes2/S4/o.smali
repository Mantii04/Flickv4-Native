.class public LS4/o;
.super Landroid/app/DialogFragment;
.source "SourceFile"


# instance fields
.field public b:Landroid/widget/Button;

.field public e:Landroid/widget/Button;

.field public f:Landroid/widget/LinearLayout;

.field public j:Landroid/widget/LinearLayout;

.field public m:Landroid/widget/LinearLayout;

.field public n:Landroid/widget/LinearLayout;

.field public p:Landroid/widget/LinearLayout;

.field public q:Landroid/widget/Spinner;

.field public r:Landroid/widget/Spinner;

.field public s:Landroid/widget/Spinner;

.field public t:Landroid/widget/Spinner;

.field public u:Landroid/widget/Spinner;

.field public v:Landroid/widget/CheckBox;

.field public w:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static newInstance(ZLandroid/app/Activity;)LS4/o;
    .locals 0

    .line 1
    new-instance p0, LS4/o;

    .line 2
    .line 3
    invoke-direct {p0}, LS4/o;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 75

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v0, ""

    .line 4
    .line 5
    sget v2, Lflix/com/vision/R$layout;->filter_setting_fragment_anime:I

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    move-object/from16 v4, p1

    .line 9
    .line 10
    move-object/from16 v5, p2

    .line 11
    .line 12
    invoke-virtual {v4, v2, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v1}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    const/4 v5, 0x1

    .line 25
    invoke-virtual {v4, v5}, Landroid/view/Window;->requestFeature(I)Z

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v5}, Landroid/app/DialogFragment;->setCancelable(Z)V

    .line 29
    .line 30
    .line 31
    sget v4, Lflix/com/vision/R$id;->lin_sort:I

    .line 32
    .line 33
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    check-cast v4, Landroid/widget/LinearLayout;

    .line 38
    .line 39
    iput-object v4, v1, LS4/o;->p:Landroid/widget/LinearLayout;

    .line 40
    .line 41
    sget v4, Lflix/com/vision/R$id;->spinner_sort:I

    .line 42
    .line 43
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    check-cast v4, Landroid/widget/Spinner;

    .line 48
    .line 49
    iput-object v4, v1, LS4/o;->r:Landroid/widget/Spinner;

    .line 50
    .line 51
    sget v4, Lflix/com/vision/R$id;->lin_hsfk:I

    .line 52
    .line 53
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    check-cast v4, Landroid/widget/LinearLayout;

    .line 58
    .line 59
    iput-object v4, v1, LS4/o;->w:Landroid/widget/LinearLayout;

    .line 60
    .line 61
    sget v4, Lflix/com/vision/R$id;->check_nsfk:I

    .line 62
    .line 63
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    check-cast v4, Landroid/widget/CheckBox;

    .line 68
    .line 69
    iput-object v4, v1, LS4/o;->v:Landroid/widget/CheckBox;

    .line 70
    .line 71
    sget v4, Lflix/com/vision/R$id;->lin_lang:I

    .line 72
    .line 73
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    check-cast v4, Landroid/widget/LinearLayout;

    .line 78
    .line 79
    iput-object v4, v1, LS4/o;->j:Landroid/widget/LinearLayout;

    .line 80
    .line 81
    sget v4, Lflix/com/vision/R$id;->lin_genre:I

    .line 82
    .line 83
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    check-cast v4, Landroid/widget/LinearLayout;

    .line 88
    .line 89
    iput-object v4, v1, LS4/o;->f:Landroid/widget/LinearLayout;

    .line 90
    .line 91
    sget v4, Lflix/com/vision/R$id;->lin_year:I

    .line 92
    .line 93
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    check-cast v4, Landroid/widget/LinearLayout;

    .line 98
    .line 99
    iput-object v4, v1, LS4/o;->m:Landroid/widget/LinearLayout;

    .line 100
    .line 101
    sget v4, Lflix/com/vision/R$id;->lin_type:I

    .line 102
    .line 103
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    check-cast v4, Landroid/widget/LinearLayout;

    .line 108
    .line 109
    iput-object v4, v1, LS4/o;->n:Landroid/widget/LinearLayout;

    .line 110
    .line 111
    iget-object v4, v1, LS4/o;->f:Landroid/widget/LinearLayout;

    .line 112
    .line 113
    new-instance v5, LS4/f;

    .line 114
    .line 115
    invoke-direct {v5, v1}, LS4/f;-><init>(LS4/o;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    .line 120
    .line 121
    iget-object v4, v1, LS4/o;->f:Landroid/widget/LinearLayout;

    .line 122
    .line 123
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 124
    .line 125
    .line 126
    iget-object v4, v1, LS4/o;->p:Landroid/widget/LinearLayout;

    .line 127
    .line 128
    new-instance v5, LS4/g;

    .line 129
    .line 130
    invoke-direct {v5, v1}, LS4/g;-><init>(LS4/o;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    .line 135
    .line 136
    iget-object v4, v1, LS4/o;->j:Landroid/widget/LinearLayout;

    .line 137
    .line 138
    new-instance v5, LS4/h;

    .line 139
    .line 140
    invoke-direct {v5, v1}, LS4/h;-><init>(LS4/o;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    .line 145
    .line 146
    iget-object v4, v1, LS4/o;->n:Landroid/widget/LinearLayout;

    .line 147
    .line 148
    new-instance v5, LS4/i;

    .line 149
    .line 150
    invoke-direct {v5, v1}, LS4/i;-><init>(LS4/o;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    .line 155
    .line 156
    iget-object v4, v1, LS4/o;->m:Landroid/widget/LinearLayout;

    .line 157
    .line 158
    new-instance v5, LS4/j;

    .line 159
    .line 160
    invoke-direct {v5, v1}, LS4/j;-><init>(LS4/o;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    .line 165
    .line 166
    sget v4, Lflix/com/vision/R$id;->cancel_but:I

    .line 167
    .line 168
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 169
    .line 170
    .line 171
    move-result-object v4

    .line 172
    check-cast v4, Landroid/widget/Button;

    .line 173
    .line 174
    iput-object v4, v1, LS4/o;->e:Landroid/widget/Button;

    .line 175
    .line 176
    sget v4, Lflix/com/vision/R$id;->save_but:I

    .line 177
    .line 178
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 179
    .line 180
    .line 181
    move-result-object v4

    .line 182
    check-cast v4, Landroid/widget/Button;

    .line 183
    .line 184
    iput-object v4, v1, LS4/o;->b:Landroid/widget/Button;

    .line 185
    .line 186
    sget v4, Lflix/com/vision/R$id;->spinner_genre:I

    .line 187
    .line 188
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 189
    .line 190
    .line 191
    move-result-object v4

    .line 192
    check-cast v4, Landroid/widget/Spinner;

    .line 193
    .line 194
    iput-object v4, v1, LS4/o;->q:Landroid/widget/Spinner;

    .line 195
    .line 196
    sget v4, Lflix/com/vision/R$id;->spinner_lang:I

    .line 197
    .line 198
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 199
    .line 200
    .line 201
    move-result-object v4

    .line 202
    check-cast v4, Landroid/widget/Spinner;

    .line 203
    .line 204
    iput-object v4, v1, LS4/o;->t:Landroid/widget/Spinner;

    .line 205
    .line 206
    sget v4, Lflix/com/vision/R$id;->spinner_year:I

    .line 207
    .line 208
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 209
    .line 210
    .line 211
    move-result-object v4

    .line 212
    check-cast v4, Landroid/widget/Spinner;

    .line 213
    .line 214
    iput-object v4, v1, LS4/o;->s:Landroid/widget/Spinner;

    .line 215
    .line 216
    sget v4, Lflix/com/vision/R$id;->spinner_type:I

    .line 217
    .line 218
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 219
    .line 220
    .line 221
    move-result-object v4

    .line 222
    check-cast v4, Landroid/widget/Spinner;

    .line 223
    .line 224
    iput-object v4, v1, LS4/o;->u:Landroid/widget/Spinner;

    .line 225
    .line 226
    new-instance v4, Ljava/util/ArrayList;

    .line 227
    .line 228
    const-string v5, "All"

    .line 229
    .line 230
    const-string v6, "Dubbed"

    .line 231
    .line 232
    const-string v7, "Subbed"

    .line 233
    .line 234
    filled-new-array {v5, v6, v7}, [Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v6

    .line 238
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 239
    .line 240
    .line 241
    move-result-object v6

    .line 242
    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 243
    .line 244
    .line 245
    new-instance v6, Ljava/util/ArrayList;

    .line 246
    .line 247
    const-string v9, "TV Series"

    .line 248
    .line 249
    const-string v10, "OVA"

    .line 250
    .line 251
    const-string v7, "All"

    .line 252
    .line 253
    const-string v8, "Movie"

    .line 254
    .line 255
    const-string v11, "ONA"

    .line 256
    .line 257
    const-string v12, "Special"

    .line 258
    .line 259
    filled-new-array/range {v7 .. v12}, [Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v7

    .line 263
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 264
    .line 265
    .line 266
    move-result-object v7

    .line 267
    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 268
    .line 269
    .line 270
    new-instance v7, Ljava/util/ArrayList;

    .line 271
    .line 272
    const-string v49, "Thriller"

    .line 273
    .line 274
    const-string v50, "Vampire"

    .line 275
    .line 276
    const-string v8, "All"

    .line 277
    .line 278
    const-string v9, "Action"

    .line 279
    .line 280
    const-string v10, "Adventure"

    .line 281
    .line 282
    const-string v11, "Cars"

    .line 283
    .line 284
    const-string v12, "Comedy"

    .line 285
    .line 286
    const-string v13, "Dementia"

    .line 287
    .line 288
    const-string v14, "Demons"

    .line 289
    .line 290
    const-string v15, "Drama"

    .line 291
    .line 292
    const-string v16, "Ecchi"

    .line 293
    .line 294
    const-string v17, "Fantasy"

    .line 295
    .line 296
    const-string v18, "Game"

    .line 297
    .line 298
    const-string v19, "Harem"

    .line 299
    .line 300
    const-string v20, "Historical"

    .line 301
    .line 302
    const-string v21, "Horror"

    .line 303
    .line 304
    const-string v22, "Josei"

    .line 305
    .line 306
    const-string v23, "Kids"

    .line 307
    .line 308
    const-string v24, "Magic"

    .line 309
    .line 310
    const-string v25, "Martial"

    .line 311
    .line 312
    const-string v26, "Arts"

    .line 313
    .line 314
    const-string v27, "Mecha"

    .line 315
    .line 316
    const-string v28, "Military"

    .line 317
    .line 318
    const-string v29, "Music"

    .line 319
    .line 320
    const-string v30, "Mystery"

    .line 321
    .line 322
    const-string v31, "Parody"

    .line 323
    .line 324
    const-string v32, "Police"

    .line 325
    .line 326
    const-string v33, "Psychological"

    .line 327
    .line 328
    const-string v34, "Romance"

    .line 329
    .line 330
    const-string v35, "Samurai"

    .line 331
    .line 332
    const-string v36, "School"

    .line 333
    .line 334
    const-string v37, "Sci-Fi"

    .line 335
    .line 336
    const-string v38, "Seinen"

    .line 337
    .line 338
    const-string v39, "Shoujo"

    .line 339
    .line 340
    const-string v40, "Shoujo Ai"

    .line 341
    .line 342
    const-string v41, "Shounen"

    .line 343
    .line 344
    const-string v42, "Shounen Ai"

    .line 345
    .line 346
    const-string v43, "Slice of Life"

    .line 347
    .line 348
    const-string v44, "Space"

    .line 349
    .line 350
    const-string v45, "Sports"

    .line 351
    .line 352
    const-string v46, "Super"

    .line 353
    .line 354
    const-string v47, "Power"

    .line 355
    .line 356
    const-string v48, "Supernatural"

    .line 357
    .line 358
    const-string v51, "Yaoi"

    .line 359
    .line 360
    const-string v52, "Yuri"

    .line 361
    .line 362
    filled-new-array/range {v8 .. v52}, [Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v8

    .line 366
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 367
    .line 368
    .line 369
    move-result-object v8

    .line 370
    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 371
    .line 372
    .line 373
    new-instance v8, Ljava/util/ArrayList;

    .line 374
    .line 375
    const-string v71, "1963"

    .line 376
    .line 377
    const-string v72, "1962"

    .line 378
    .line 379
    const-string v9, "All"

    .line 380
    .line 381
    const-string v10, "2023"

    .line 382
    .line 383
    const-string v11, "2023"

    .line 384
    .line 385
    const-string v12, "2022"

    .line 386
    .line 387
    const-string v13, "2021"

    .line 388
    .line 389
    const-string v14, "2020"

    .line 390
    .line 391
    const-string v15, "2019"

    .line 392
    .line 393
    const-string v16, "2018"

    .line 394
    .line 395
    const-string v17, "2017"

    .line 396
    .line 397
    const-string v18, "2016"

    .line 398
    .line 399
    const-string v19, "2015"

    .line 400
    .line 401
    const-string v20, "2014"

    .line 402
    .line 403
    const-string v21, "2013"

    .line 404
    .line 405
    const-string v22, "2012"

    .line 406
    .line 407
    const-string v23, "2011"

    .line 408
    .line 409
    const-string v24, "2010"

    .line 410
    .line 411
    const-string v25, "2009"

    .line 412
    .line 413
    const-string v26, "2008"

    .line 414
    .line 415
    const-string v27, "2007"

    .line 416
    .line 417
    const-string v28, "2006"

    .line 418
    .line 419
    const-string v29, "2005"

    .line 420
    .line 421
    const-string v30, "2004"

    .line 422
    .line 423
    const-string v31, "2003"

    .line 424
    .line 425
    const-string v32, "2002"

    .line 426
    .line 427
    const-string v33, "2001"

    .line 428
    .line 429
    const-string v34, "2000"

    .line 430
    .line 431
    const-string v35, "1999"

    .line 432
    .line 433
    const-string v36, "1998"

    .line 434
    .line 435
    const-string v37, "1997"

    .line 436
    .line 437
    const-string v38, "1996"

    .line 438
    .line 439
    const-string v39, "1995"

    .line 440
    .line 441
    const-string v40, "1994"

    .line 442
    .line 443
    const-string v41, "1993"

    .line 444
    .line 445
    const-string v42, "1992"

    .line 446
    .line 447
    const-string v43, "1991"

    .line 448
    .line 449
    const-string v44, "1990"

    .line 450
    .line 451
    const-string v45, "1989"

    .line 452
    .line 453
    const-string v46, "1988"

    .line 454
    .line 455
    const-string v47, "1987"

    .line 456
    .line 457
    const-string v48, "1986"

    .line 458
    .line 459
    const-string v49, "1985"

    .line 460
    .line 461
    const-string v50, "1984"

    .line 462
    .line 463
    const-string v51, "1983"

    .line 464
    .line 465
    const-string v52, "1982"

    .line 466
    .line 467
    const-string v53, "1981"

    .line 468
    .line 469
    const-string v54, "1980"

    .line 470
    .line 471
    const-string v55, "1979"

    .line 472
    .line 473
    const-string v56, "1978"

    .line 474
    .line 475
    const-string v57, "1977"

    .line 476
    .line 477
    const-string v58, "1976"

    .line 478
    .line 479
    const-string v59, "1975"

    .line 480
    .line 481
    const-string v60, "1974"

    .line 482
    .line 483
    const-string v61, "1973"

    .line 484
    .line 485
    const-string v62, "1972"

    .line 486
    .line 487
    const-string v63, "1971"

    .line 488
    .line 489
    const-string v64, "1970"

    .line 490
    .line 491
    const-string v65, "1969"

    .line 492
    .line 493
    const-string v66, "1968"

    .line 494
    .line 495
    const-string v67, "1967"

    .line 496
    .line 497
    const-string v68, "1966"

    .line 498
    .line 499
    const-string v69, "1965"

    .line 500
    .line 501
    const-string v70, "1964"

    .line 502
    .line 503
    const-string v73, "1961"

    .line 504
    .line 505
    const-string v74, "1960"

    .line 506
    .line 507
    filled-new-array/range {v9 .. v74}, [Ljava/lang/String;

    .line 508
    .line 509
    .line 510
    move-result-object v9

    .line 511
    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 512
    .line 513
    .line 514
    move-result-object v9

    .line 515
    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 516
    .line 517
    .line 518
    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    .line 519
    .line 520
    .line 521
    move-result-object v9

    .line 522
    sget v10, Lflix/com/vision/R$array;->langs:I

    .line 523
    .line 524
    sget v11, Lflix/com/vision/R$layout;->spinner_row1:I

    .line 525
    .line 526
    invoke-static {v9, v10, v11}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    .line 527
    .line 528
    .line 529
    move-result-object v9

    .line 530
    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    .line 531
    .line 532
    .line 533
    move-result-object v10

    .line 534
    sget v11, Lflix/com/vision/R$array;->types:I

    .line 535
    .line 536
    sget v12, Lflix/com/vision/R$layout;->spinner_row1:I

    .line 537
    .line 538
    invoke-static {v10, v11, v12}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    .line 539
    .line 540
    .line 541
    move-result-object v10

    .line 542
    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    .line 543
    .line 544
    .line 545
    move-result-object v11

    .line 546
    sget v12, Lflix/com/vision/R$array;->years:I

    .line 547
    .line 548
    sget v13, Lflix/com/vision/R$layout;->spinner_row1:I

    .line 549
    .line 550
    invoke-static {v11, v12, v13}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    .line 551
    .line 552
    .line 553
    move-result-object v11

    .line 554
    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    .line 555
    .line 556
    .line 557
    move-result-object v12

    .line 558
    sget v13, Lflix/com/vision/R$array;->genres_anim:I

    .line 559
    .line 560
    sget v14, Lflix/com/vision/R$layout;->spinner_row1:I

    .line 561
    .line 562
    invoke-static {v12, v13, v14}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    .line 563
    .line 564
    .line 565
    move-result-object v12

    .line 566
    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    .line 567
    .line 568
    .line 569
    move-result-object v13

    .line 570
    sget v14, Lflix/com/vision/R$array;->server_sortby:I

    .line 571
    .line 572
    sget v15, Lflix/com/vision/R$layout;->spinner_row1:I

    .line 573
    .line 574
    invoke-static {v13, v14, v15}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    .line 575
    .line 576
    .line 577
    move-result-object v13

    .line 578
    iget-object v14, v1, LS4/o;->v:Landroid/widget/CheckBox;

    .line 579
    .line 580
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 581
    .line 582
    .line 583
    move-result-object v15

    .line 584
    iget-object v15, v15, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 585
    .line 586
    move-object/from16 p1, v2

    .line 587
    .line 588
    const-string v2, "pref_hide_adult_content_anime"

    .line 589
    .line 590
    invoke-interface {v15, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 591
    .line 592
    .line 593
    move-result v2

    .line 594
    invoke-virtual {v14, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 595
    .line 596
    .line 597
    iget-object v2, v1, LS4/o;->w:Landroid/widget/LinearLayout;

    .line 598
    .line 599
    new-instance v14, LS4/k;

    .line 600
    .line 601
    invoke-direct {v14, v1}, LS4/k;-><init>(LS4/o;)V

    .line 602
    .line 603
    .line 604
    invoke-virtual {v2, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 605
    .line 606
    .line 607
    iget-object v2, v1, LS4/o;->v:Landroid/widget/CheckBox;

    .line 608
    .line 609
    new-instance v14, LS4/l;

    .line 610
    .line 611
    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    .line 612
    .line 613
    .line 614
    invoke-virtual {v2, v14}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 615
    .line 616
    .line 617
    iget-object v2, v1, LS4/o;->r:Landroid/widget/Spinner;

    .line 618
    .line 619
    invoke-virtual {v2, v13}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 620
    .line 621
    .line 622
    iget-object v2, v1, LS4/o;->s:Landroid/widget/Spinner;

    .line 623
    .line 624
    invoke-virtual {v2, v11}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 625
    .line 626
    .line 627
    iget-object v2, v1, LS4/o;->q:Landroid/widget/Spinner;

    .line 628
    .line 629
    invoke-virtual {v2, v12}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 630
    .line 631
    .line 632
    iget-object v2, v1, LS4/o;->t:Landroid/widget/Spinner;

    .line 633
    .line 634
    invoke-virtual {v2, v9}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 635
    .line 636
    .line 637
    iget-object v2, v1, LS4/o;->u:Landroid/widget/Spinner;

    .line 638
    .line 639
    invoke-virtual {v2, v10}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 640
    .line 641
    .line 642
    iget-object v2, v1, LS4/o;->r:Landroid/widget/Spinner;

    .line 643
    .line 644
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 645
    .line 646
    .line 647
    move-result-object v9

    .line 648
    iget-object v9, v9, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 649
    .line 650
    const-string v10, "sort_by_index_anime"

    .line 651
    .line 652
    invoke-interface {v9, v10, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 653
    .line 654
    .line 655
    move-result v3

    .line 656
    invoke-virtual {v2, v3}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 657
    .line 658
    .line 659
    iget-object v2, v1, LS4/o;->r:Landroid/widget/Spinner;

    .line 660
    .line 661
    new-instance v3, LS4/m;

    .line 662
    .line 663
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 664
    .line 665
    .line 666
    invoke-virtual {v2, v3}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 667
    .line 668
    .line 669
    :try_start_0
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 670
    .line 671
    .line 672
    move-result-object v2

    .line 673
    iget-object v2, v2, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 674
    .line 675
    const-string v3, "year_anime"

    .line 676
    .line 677
    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 678
    .line 679
    .line 680
    move-result-object v2

    .line 681
    if-ne v2, v0, :cond_0

    .line 682
    .line 683
    move-object v2, v5

    .line 684
    :cond_0
    iget-object v3, v1, LS4/o;->s:Landroid/widget/Spinner;

    .line 685
    .line 686
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 687
    .line 688
    .line 689
    move-result v2

    .line 690
    invoke-virtual {v3, v2}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 691
    .line 692
    .line 693
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 694
    .line 695
    .line 696
    move-result-object v2

    .line 697
    iget-object v2, v2, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 698
    .line 699
    const-string v3, "genre_anime"

    .line 700
    .line 701
    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 702
    .line 703
    .line 704
    move-result-object v2

    .line 705
    if-ne v2, v0, :cond_1

    .line 706
    .line 707
    move-object v2, v5

    .line 708
    :cond_1
    iget-object v3, v1, LS4/o;->q:Landroid/widget/Spinner;

    .line 709
    .line 710
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 711
    .line 712
    .line 713
    move-result v2

    .line 714
    invoke-virtual {v3, v2}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 715
    .line 716
    .line 717
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 718
    .line 719
    .line 720
    move-result-object v2

    .line 721
    iget-object v2, v2, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 722
    .line 723
    const-string v3, "type_anime"

    .line 724
    .line 725
    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 726
    .line 727
    .line 728
    move-result-object v2

    .line 729
    if-ne v2, v0, :cond_2

    .line 730
    .line 731
    move-object v2, v5

    .line 732
    :cond_2
    iget-object v3, v1, LS4/o;->u:Landroid/widget/Spinner;

    .line 733
    .line 734
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 735
    .line 736
    .line 737
    move-result v2

    .line 738
    invoke-virtual {v3, v2}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 739
    .line 740
    .line 741
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 742
    .line 743
    .line 744
    move-result-object v2

    .line 745
    iget-object v2, v2, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 746
    .line 747
    const-string v3, "lang_anime"

    .line 748
    .line 749
    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 750
    .line 751
    .line 752
    move-result-object v2

    .line 753
    if-ne v2, v0, :cond_3

    .line 754
    .line 755
    goto :goto_0

    .line 756
    :cond_3
    move-object v5, v2

    .line 757
    :goto_0
    iget-object v0, v1, LS4/o;->t:Landroid/widget/Spinner;

    .line 758
    .line 759
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 760
    .line 761
    .line 762
    move-result v2

    .line 763
    invoke-virtual {v0, v2}, Landroid/widget/AdapterView;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 764
    .line 765
    .line 766
    goto :goto_1

    .line 767
    :catch_0
    move-exception v0

    .line 768
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 769
    .line 770
    .line 771
    :goto_1
    iget-object v0, v1, LS4/o;->b:Landroid/widget/Button;

    .line 772
    .line 773
    new-instance v2, LS4/n;

    .line 774
    .line 775
    invoke-direct {v2, v1}, LS4/n;-><init>(LS4/o;)V

    .line 776
    .line 777
    .line 778
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 779
    .line 780
    .line 781
    iget-object v0, v1, LS4/o;->e:Landroid/widget/Button;

    .line 782
    .line 783
    new-instance v2, LS4/a;

    .line 784
    .line 785
    invoke-direct {v2, v1}, LS4/a;-><init>(LS4/o;)V

    .line 786
    .line 787
    .line 788
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 789
    .line 790
    .line 791
    iget-object v0, v1, LS4/o;->u:Landroid/widget/Spinner;

    .line 792
    .line 793
    new-instance v2, LS4/b;

    .line 794
    .line 795
    invoke-direct {v2, v1, v6}, LS4/b;-><init>(LS4/o;Ljava/util/ArrayList;)V

    .line 796
    .line 797
    .line 798
    invoke-virtual {v0, v2}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 799
    .line 800
    .line 801
    iget-object v0, v1, LS4/o;->t:Landroid/widget/Spinner;

    .line 802
    .line 803
    new-instance v2, LS4/c;

    .line 804
    .line 805
    invoke-direct {v2, v1, v4}, LS4/c;-><init>(LS4/o;Ljava/util/ArrayList;)V

    .line 806
    .line 807
    .line 808
    invoke-virtual {v0, v2}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 809
    .line 810
    .line 811
    iget-object v0, v1, LS4/o;->s:Landroid/widget/Spinner;

    .line 812
    .line 813
    new-instance v2, LS4/d;

    .line 814
    .line 815
    invoke-direct {v2, v1, v8}, LS4/d;-><init>(LS4/o;Ljava/util/ArrayList;)V

    .line 816
    .line 817
    .line 818
    invoke-virtual {v0, v2}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 819
    .line 820
    .line 821
    iget-object v0, v1, LS4/o;->q:Landroid/widget/Spinner;

    .line 822
    .line 823
    new-instance v2, LS4/e;

    .line 824
    .line 825
    invoke-direct {v2, v1, v7}, LS4/e;-><init>(LS4/o;Ljava/util/ArrayList;)V

    .line 826
    .line 827
    .line 828
    invoke-virtual {v0, v2}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 829
    .line 830
    .line 831
    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/app/DialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
