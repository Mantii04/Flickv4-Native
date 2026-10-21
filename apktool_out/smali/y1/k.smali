.class public abstract Ly1/k;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;IF)Landroid/animation/Animator;
    .locals 25

    .line 1
    move-object/from16 v8, p5

    .line 2
    .line 3
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 4
    .line 5
    .line 6
    move-result v9

    .line 7
    const/4 v0, 0x0

    .line 8
    const/4 v11, 0x0

    .line 9
    :goto_0
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x3

    .line 14
    const/4 v12, 0x0

    .line 15
    if-ne v1, v2, :cond_1

    .line 16
    .line 17
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-le v3, v9, :cond_0

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    move-object/from16 v21, v11

    .line 25
    .line 26
    move v9, v12

    .line 27
    goto/16 :goto_1d

    .line 28
    .line 29
    :cond_1
    :goto_1
    const/4 v3, 0x1

    .line 30
    if-eq v1, v3, :cond_0

    .line 31
    .line 32
    const/4 v4, 0x2

    .line 33
    if-eq v1, v4, :cond_2

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    const-string v5, "objectAnimator"

    .line 41
    .line 42
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    if-eqz v5, :cond_3

    .line 47
    .line 48
    new-instance v4, Landroid/animation/ObjectAnimator;

    .line 49
    .line 50
    invoke-direct {v4}, Landroid/animation/ObjectAnimator;-><init>()V

    .line 51
    .line 52
    .line 53
    move-object/from16 v0, p0

    .line 54
    .line 55
    move-object/from16 v1, p1

    .line 56
    .line 57
    move-object/from16 v2, p2

    .line 58
    .line 59
    move-object/from16 v6, p3

    .line 60
    .line 61
    move-object/from16 v3, p4

    .line 62
    .line 63
    move/from16 v5, p7

    .line 64
    .line 65
    invoke-static/range {v0 .. v6}, Ly1/k;->d(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Landroid/animation/ObjectAnimator;FLandroid/content/res/XmlResourceParser;)Landroid/animation/ValueAnimator;

    .line 66
    .line 67
    .line 68
    move-object/from16 v7, p3

    .line 69
    .line 70
    :goto_2
    move-object v0, v4

    .line 71
    :goto_3
    move/from16 v17, v9

    .line 72
    .line 73
    move-object/from16 v21, v11

    .line 74
    .line 75
    goto/16 :goto_1a

    .line 76
    .line 77
    :cond_3
    const-string v5, "animator"

    .line 78
    .line 79
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    if-eqz v5, :cond_4

    .line 84
    .line 85
    const/4 v4, 0x0

    .line 86
    move-object/from16 v0, p0

    .line 87
    .line 88
    move-object/from16 v1, p1

    .line 89
    .line 90
    move-object/from16 v2, p2

    .line 91
    .line 92
    move-object/from16 v6, p3

    .line 93
    .line 94
    move-object/from16 v3, p4

    .line 95
    .line 96
    move/from16 v5, p7

    .line 97
    .line 98
    invoke-static/range {v0 .. v6}, Ly1/k;->d(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Landroid/animation/ObjectAnimator;FLandroid/content/res/XmlResourceParser;)Landroid/animation/ValueAnimator;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    move-object v5, v1

    .line 103
    move-object v7, v6

    .line 104
    move-object v6, v2

    .line 105
    goto :goto_2

    .line 106
    :cond_4
    move-object/from16 v5, p1

    .line 107
    .line 108
    move-object/from16 v6, p2

    .line 109
    .line 110
    move-object/from16 v7, p3

    .line 111
    .line 112
    const-string v13, "set"

    .line 113
    .line 114
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v13

    .line 118
    if-eqz v13, :cond_5

    .line 119
    .line 120
    new-instance v0, Landroid/animation/AnimatorSet;

    .line 121
    .line 122
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 123
    .line 124
    .line 125
    sget-object v1, Ly1/a;->h:[I

    .line 126
    .line 127
    move-object/from16 v3, p4

    .line 128
    .line 129
    invoke-static {v5, v6, v3, v1}, LC/v;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 130
    .line 131
    .line 132
    move-result-object v13

    .line 133
    const-string v1, "ordering"

    .line 134
    .line 135
    invoke-static {v13, v7, v1, v12, v12}, LC/v;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    move-object v4, v3

    .line 140
    move-object v2, v6

    .line 141
    move-object v3, v7

    .line 142
    move/from16 v7, p7

    .line 143
    .line 144
    move v6, v1

    .line 145
    move-object v1, v5

    .line 146
    move-object v5, v0

    .line 147
    move-object/from16 v0, p0

    .line 148
    .line 149
    invoke-static/range {v0 .. v7}, Ly1/k;->a(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;IF)Landroid/animation/Animator;

    .line 150
    .line 151
    .line 152
    move-object v6, v2

    .line 153
    move-object v7, v3

    .line 154
    move-object v0, v5

    .line 155
    move-object v5, v1

    .line 156
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 157
    .line 158
    .line 159
    goto :goto_3

    .line 160
    :cond_5
    const-string v13, "propertyValuesHolder"

    .line 161
    .line 162
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result v1

    .line 166
    if-eqz v1, :cond_30

    .line 167
    .line 168
    invoke-static {v7}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    const/4 v14, 0x0

    .line 173
    :goto_4
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 174
    .line 175
    .line 176
    move-result v15

    .line 177
    if-eq v15, v2, :cond_2a

    .line 178
    .line 179
    if-eq v15, v3, :cond_2a

    .line 180
    .line 181
    if-eq v15, v4, :cond_6

    .line 182
    .line 183
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 184
    .line 185
    .line 186
    goto :goto_4

    .line 187
    :cond_6
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v15

    .line 191
    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    move-result v15

    .line 195
    if-eqz v15, :cond_29

    .line 196
    .line 197
    sget-object v15, Ly1/a;->i:[I

    .line 198
    .line 199
    invoke-static {v5, v6, v1, v15}, LC/v;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 200
    .line 201
    .line 202
    move-result-object v15

    .line 203
    const-string v10, "propertyName"

    .line 204
    .line 205
    invoke-static {v15, v7, v10, v2}, LC/v;->getNamedString(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v10

    .line 209
    const-string v12, "valueType"

    .line 210
    .line 211
    const/4 v3, 0x4

    .line 212
    invoke-static {v15, v7, v12, v4, v3}, LC/v;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    .line 213
    .line 214
    .line 215
    move-result v12

    .line 216
    move/from16 v16, v4

    .line 217
    .line 218
    move/from16 v17, v12

    .line 219
    .line 220
    const/4 v4, 0x0

    .line 221
    :goto_5
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 222
    .line 223
    .line 224
    move-result v3

    .line 225
    move-object/from16 v19, v1

    .line 226
    .line 227
    if-eq v3, v2, :cond_14

    .line 228
    .line 229
    const/4 v1, 0x1

    .line 230
    if-eq v3, v1, :cond_14

    .line 231
    .line 232
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    const-string v3, "keyframe"

    .line 237
    .line 238
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    move-result v1

    .line 242
    if-eqz v1, :cond_13

    .line 243
    .line 244
    sget-object v1, Ly1/a;->j:[I

    .line 245
    .line 246
    const-string v3, "value"

    .line 247
    .line 248
    move/from16 v2, v17

    .line 249
    .line 250
    move/from16 v17, v9

    .line 251
    .line 252
    const/4 v9, 0x4

    .line 253
    if-ne v2, v9, :cond_8

    .line 254
    .line 255
    invoke-static {v7}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 256
    .line 257
    .line 258
    move-result-object v2

    .line 259
    invoke-static {v5, v6, v2, v1}, LC/v;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 260
    .line 261
    .line 262
    move-result-object v2

    .line 263
    move-object/from16 v21, v11

    .line 264
    .line 265
    const/4 v9, 0x0

    .line 266
    invoke-static {v2, v7, v3, v9}, LC/v;->peekNamedValue(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Landroid/util/TypedValue;

    .line 267
    .line 268
    .line 269
    move-result-object v11

    .line 270
    if-eqz v11, :cond_7

    .line 271
    .line 272
    iget v9, v11, Landroid/util/TypedValue;->type:I

    .line 273
    .line 274
    invoke-static {v9}, Ly1/k;->c(I)Z

    .line 275
    .line 276
    .line 277
    move-result v9

    .line 278
    if-eqz v9, :cond_7

    .line 279
    .line 280
    const/4 v9, 0x3

    .line 281
    goto :goto_6

    .line 282
    :cond_7
    const/4 v9, 0x0

    .line 283
    :goto_6
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 284
    .line 285
    .line 286
    goto :goto_7

    .line 287
    :cond_8
    move-object/from16 v21, v11

    .line 288
    .line 289
    move v9, v2

    .line 290
    :goto_7
    invoke-static {v7}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 291
    .line 292
    .line 293
    move-result-object v2

    .line 294
    invoke-static {v5, v6, v2, v1}, LC/v;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 295
    .line 296
    .line 297
    move-result-object v1

    .line 298
    const/high16 v2, -0x40800000    # -1.0f

    .line 299
    .line 300
    const-string v11, "fraction"

    .line 301
    .line 302
    const/4 v5, 0x3

    .line 303
    invoke-static {v1, v7, v11, v5, v2}, LC/v;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    .line 304
    .line 305
    .line 306
    move-result v2

    .line 307
    const/4 v5, 0x0

    .line 308
    invoke-static {v1, v7, v3, v5}, LC/v;->peekNamedValue(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Landroid/util/TypedValue;

    .line 309
    .line 310
    .line 311
    move-result-object v11

    .line 312
    if-eqz v11, :cond_9

    .line 313
    .line 314
    const/16 v18, 0x1

    .line 315
    .line 316
    :goto_8
    const/4 v5, 0x4

    .line 317
    goto :goto_9

    .line 318
    :cond_9
    const/16 v18, 0x0

    .line 319
    .line 320
    goto :goto_8

    .line 321
    :goto_9
    if-ne v9, v5, :cond_b

    .line 322
    .line 323
    if-eqz v18, :cond_a

    .line 324
    .line 325
    iget v11, v11, Landroid/util/TypedValue;->type:I

    .line 326
    .line 327
    invoke-static {v11}, Ly1/k;->c(I)Z

    .line 328
    .line 329
    .line 330
    move-result v11

    .line 331
    if-eqz v11, :cond_a

    .line 332
    .line 333
    const/4 v11, 0x3

    .line 334
    goto :goto_a

    .line 335
    :cond_a
    const/4 v11, 0x0

    .line 336
    goto :goto_a

    .line 337
    :cond_b
    move v11, v9

    .line 338
    :goto_a
    if-eqz v18, :cond_e

    .line 339
    .line 340
    if-eqz v11, :cond_d

    .line 341
    .line 342
    const/4 v5, 0x1

    .line 343
    if-eq v11, v5, :cond_c

    .line 344
    .line 345
    const/4 v5, 0x3

    .line 346
    if-eq v11, v5, :cond_c

    .line 347
    .line 348
    const/4 v2, 0x0

    .line 349
    const/4 v5, 0x0

    .line 350
    goto :goto_b

    .line 351
    :cond_c
    const/4 v5, 0x0

    .line 352
    invoke-static {v1, v7, v3, v5, v5}, LC/v;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    .line 353
    .line 354
    .line 355
    move-result v3

    .line 356
    invoke-static {v2, v3}, Landroid/animation/Keyframe;->ofInt(FI)Landroid/animation/Keyframe;

    .line 357
    .line 358
    .line 359
    move-result-object v2

    .line 360
    goto :goto_b

    .line 361
    :cond_d
    const/4 v5, 0x0

    .line 362
    const/4 v11, 0x0

    .line 363
    invoke-static {v1, v7, v3, v5, v11}, LC/v;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    .line 364
    .line 365
    .line 366
    move-result v3

    .line 367
    invoke-static {v2, v3}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    .line 368
    .line 369
    .line 370
    move-result-object v2

    .line 371
    goto :goto_b

    .line 372
    :cond_e
    const/4 v5, 0x0

    .line 373
    if-nez v11, :cond_f

    .line 374
    .line 375
    invoke-static {v2}, Landroid/animation/Keyframe;->ofFloat(F)Landroid/animation/Keyframe;

    .line 376
    .line 377
    .line 378
    move-result-object v2

    .line 379
    goto :goto_b

    .line 380
    :cond_f
    invoke-static {v2}, Landroid/animation/Keyframe;->ofInt(F)Landroid/animation/Keyframe;

    .line 381
    .line 382
    .line 383
    move-result-object v2

    .line 384
    :goto_b
    const-string v3, "interpolator"

    .line 385
    .line 386
    const/4 v11, 0x1

    .line 387
    invoke-static {v1, v7, v3, v11, v5}, LC/v;->getNamedResourceId(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    .line 388
    .line 389
    .line 390
    move-result v3

    .line 391
    move-object/from16 v5, p0

    .line 392
    .line 393
    if-lez v3, :cond_10

    .line 394
    .line 395
    invoke-static {v5, v3}, Ly1/i;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    .line 396
    .line 397
    .line 398
    move-result-object v3

    .line 399
    invoke-virtual {v2, v3}, Landroid/animation/Keyframe;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 400
    .line 401
    .line 402
    :cond_10
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 403
    .line 404
    .line 405
    if-eqz v2, :cond_12

    .line 406
    .line 407
    if-nez v4, :cond_11

    .line 408
    .line 409
    new-instance v4, Ljava/util/ArrayList;

    .line 410
    .line 411
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 412
    .line 413
    .line 414
    :cond_11
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 415
    .line 416
    .line 417
    :cond_12
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 418
    .line 419
    .line 420
    goto :goto_c

    .line 421
    :cond_13
    move-object/from16 v5, p0

    .line 422
    .line 423
    move-object/from16 v21, v11

    .line 424
    .line 425
    move/from16 v2, v17

    .line 426
    .line 427
    move/from16 v17, v9

    .line 428
    .line 429
    move v9, v2

    .line 430
    :goto_c
    move/from16 v1, v17

    .line 431
    .line 432
    move/from16 v17, v9

    .line 433
    .line 434
    move v9, v1

    .line 435
    move-object/from16 v5, p1

    .line 436
    .line 437
    move-object/from16 v1, v19

    .line 438
    .line 439
    move-object/from16 v11, v21

    .line 440
    .line 441
    const/4 v2, 0x3

    .line 442
    goto/16 :goto_5

    .line 443
    .line 444
    :cond_14
    move-object/from16 v5, p0

    .line 445
    .line 446
    move-object/from16 v21, v11

    .line 447
    .line 448
    move/from16 v2, v17

    .line 449
    .line 450
    move/from16 v17, v9

    .line 451
    .line 452
    if-eqz v4, :cond_24

    .line 453
    .line 454
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 455
    .line 456
    .line 457
    move-result v1

    .line 458
    if-lez v1, :cond_24

    .line 459
    .line 460
    const/4 v9, 0x0

    .line 461
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 462
    .line 463
    .line 464
    move-result-object v3

    .line 465
    check-cast v3, Landroid/animation/Keyframe;

    .line 466
    .line 467
    add-int/lit8 v9, v1, -0x1

    .line 468
    .line 469
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 470
    .line 471
    .line 472
    move-result-object v9

    .line 473
    check-cast v9, Landroid/animation/Keyframe;

    .line 474
    .line 475
    invoke-virtual {v9}, Landroid/animation/Keyframe;->getFraction()F

    .line 476
    .line 477
    .line 478
    move-result v11

    .line 479
    move/from16 v18, v1

    .line 480
    .line 481
    const/high16 v1, 0x3f800000    # 1.0f

    .line 482
    .line 483
    cmpg-float v22, v11, v1

    .line 484
    .line 485
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 486
    .line 487
    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 488
    .line 489
    if-gez v22, :cond_18

    .line 490
    .line 491
    const/16 v20, 0x0

    .line 492
    .line 493
    cmpg-float v11, v11, v20

    .line 494
    .line 495
    if-gez v11, :cond_15

    .line 496
    .line 497
    const/high16 v11, 0x3f800000    # 1.0f

    .line 498
    .line 499
    invoke-virtual {v9, v11}, Landroid/animation/Keyframe;->setFraction(F)V

    .line 500
    .line 501
    .line 502
    goto :goto_e

    .line 503
    :cond_15
    const/high16 v23, 0x3f800000    # 1.0f

    .line 504
    .line 505
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 506
    .line 507
    .line 508
    move-result v11

    .line 509
    invoke-virtual {v9}, Landroid/animation/Keyframe;->getType()Ljava/lang/Class;

    .line 510
    .line 511
    .line 512
    move-result-object v6

    .line 513
    if-ne v6, v5, :cond_16

    .line 514
    .line 515
    invoke-static/range {v23 .. v23}, Landroid/animation/Keyframe;->ofFloat(F)Landroid/animation/Keyframe;

    .line 516
    .line 517
    .line 518
    move-result-object v6

    .line 519
    goto :goto_d

    .line 520
    :cond_16
    invoke-virtual {v9}, Landroid/animation/Keyframe;->getType()Ljava/lang/Class;

    .line 521
    .line 522
    .line 523
    move-result-object v6

    .line 524
    if-ne v6, v1, :cond_17

    .line 525
    .line 526
    invoke-static/range {v23 .. v23}, Landroid/animation/Keyframe;->ofInt(F)Landroid/animation/Keyframe;

    .line 527
    .line 528
    .line 529
    move-result-object v6

    .line 530
    goto :goto_d

    .line 531
    :cond_17
    invoke-static/range {v23 .. v23}, Landroid/animation/Keyframe;->ofObject(F)Landroid/animation/Keyframe;

    .line 532
    .line 533
    .line 534
    move-result-object v6

    .line 535
    :goto_d
    invoke-virtual {v4, v11, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 536
    .line 537
    .line 538
    add-int/lit8 v6, v18, 0x1

    .line 539
    .line 540
    move/from16 v18, v6

    .line 541
    .line 542
    :cond_18
    :goto_e
    invoke-virtual {v3}, Landroid/animation/Keyframe;->getFraction()F

    .line 543
    .line 544
    .line 545
    move-result v6

    .line 546
    const/4 v11, 0x0

    .line 547
    cmpl-float v9, v6, v11

    .line 548
    .line 549
    if-eqz v9, :cond_1c

    .line 550
    .line 551
    cmpg-float v6, v6, v11

    .line 552
    .line 553
    if-gez v6, :cond_19

    .line 554
    .line 555
    invoke-virtual {v3, v11}, Landroid/animation/Keyframe;->setFraction(F)V

    .line 556
    .line 557
    .line 558
    goto :goto_11

    .line 559
    :cond_19
    invoke-virtual {v3}, Landroid/animation/Keyframe;->getType()Ljava/lang/Class;

    .line 560
    .line 561
    .line 562
    move-result-object v6

    .line 563
    if-ne v6, v5, :cond_1a

    .line 564
    .line 565
    invoke-static {v11}, Landroid/animation/Keyframe;->ofFloat(F)Landroid/animation/Keyframe;

    .line 566
    .line 567
    .line 568
    move-result-object v1

    .line 569
    :goto_f
    const/4 v9, 0x0

    .line 570
    goto :goto_10

    .line 571
    :cond_1a
    invoke-virtual {v3}, Landroid/animation/Keyframe;->getType()Ljava/lang/Class;

    .line 572
    .line 573
    .line 574
    move-result-object v3

    .line 575
    if-ne v3, v1, :cond_1b

    .line 576
    .line 577
    invoke-static {v11}, Landroid/animation/Keyframe;->ofInt(F)Landroid/animation/Keyframe;

    .line 578
    .line 579
    .line 580
    move-result-object v1

    .line 581
    goto :goto_f

    .line 582
    :cond_1b
    invoke-static {v11}, Landroid/animation/Keyframe;->ofObject(F)Landroid/animation/Keyframe;

    .line 583
    .line 584
    .line 585
    move-result-object v1

    .line 586
    goto :goto_f

    .line 587
    :goto_10
    invoke-virtual {v4, v9, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 588
    .line 589
    .line 590
    add-int/lit8 v18, v18, 0x1

    .line 591
    .line 592
    :cond_1c
    :goto_11
    move/from16 v1, v18

    .line 593
    .line 594
    new-array v3, v1, [Landroid/animation/Keyframe;

    .line 595
    .line 596
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 597
    .line 598
    .line 599
    const/4 v9, 0x0

    .line 600
    :goto_12
    if-ge v9, v1, :cond_23

    .line 601
    .line 602
    aget-object v4, v3, v9

    .line 603
    .line 604
    invoke-virtual {v4}, Landroid/animation/Keyframe;->getFraction()F

    .line 605
    .line 606
    .line 607
    move-result v5

    .line 608
    const/4 v11, 0x0

    .line 609
    cmpg-float v5, v5, v11

    .line 610
    .line 611
    if-gez v5, :cond_1d

    .line 612
    .line 613
    if-nez v9, :cond_1e

    .line 614
    .line 615
    invoke-virtual {v4, v11}, Landroid/animation/Keyframe;->setFraction(F)V

    .line 616
    .line 617
    .line 618
    :cond_1d
    move/from16 v22, v1

    .line 619
    .line 620
    move/from16 v20, v11

    .line 621
    .line 622
    goto :goto_16

    .line 623
    :cond_1e
    add-int/lit8 v5, v1, -0x1

    .line 624
    .line 625
    if-ne v9, v5, :cond_1f

    .line 626
    .line 627
    const/high16 v11, 0x3f800000    # 1.0f

    .line 628
    .line 629
    invoke-virtual {v4, v11}, Landroid/animation/Keyframe;->setFraction(F)V

    .line 630
    .line 631
    .line 632
    move/from16 v22, v1

    .line 633
    .line 634
    const/16 v20, 0x0

    .line 635
    .line 636
    goto :goto_16

    .line 637
    :cond_1f
    const/high16 v11, 0x3f800000    # 1.0f

    .line 638
    .line 639
    add-int/lit8 v4, v9, 0x1

    .line 640
    .line 641
    move v6, v9

    .line 642
    :goto_13
    if-ge v4, v5, :cond_21

    .line 643
    .line 644
    aget-object v18, v3, v4

    .line 645
    .line 646
    invoke-virtual/range {v18 .. v18}, Landroid/animation/Keyframe;->getFraction()F

    .line 647
    .line 648
    .line 649
    move-result v18

    .line 650
    const/16 v20, 0x0

    .line 651
    .line 652
    cmpl-float v18, v18, v20

    .line 653
    .line 654
    if-ltz v18, :cond_20

    .line 655
    .line 656
    goto :goto_14

    .line 657
    :cond_20
    add-int/lit8 v6, v4, 0x1

    .line 658
    .line 659
    move/from16 v24, v6

    .line 660
    .line 661
    move v6, v4

    .line 662
    move/from16 v4, v24

    .line 663
    .line 664
    goto :goto_13

    .line 665
    :cond_21
    const/16 v20, 0x0

    .line 666
    .line 667
    :goto_14
    add-int/lit8 v4, v6, 0x1

    .line 668
    .line 669
    aget-object v4, v3, v4

    .line 670
    .line 671
    invoke-virtual {v4}, Landroid/animation/Keyframe;->getFraction()F

    .line 672
    .line 673
    .line 674
    move-result v4

    .line 675
    add-int/lit8 v5, v9, -0x1

    .line 676
    .line 677
    aget-object v5, v3, v5

    .line 678
    .line 679
    invoke-virtual {v5}, Landroid/animation/Keyframe;->getFraction()F

    .line 680
    .line 681
    .line 682
    move-result v5

    .line 683
    sub-float/2addr v4, v5

    .line 684
    sub-int v5, v6, v9

    .line 685
    .line 686
    add-int/lit8 v5, v5, 0x2

    .line 687
    .line 688
    int-to-float v5, v5

    .line 689
    div-float/2addr v4, v5

    .line 690
    move v5, v9

    .line 691
    :goto_15
    if-gt v5, v6, :cond_22

    .line 692
    .line 693
    aget-object v11, v3, v5

    .line 694
    .line 695
    add-int/lit8 v18, v5, -0x1

    .line 696
    .line 697
    aget-object v18, v3, v18

    .line 698
    .line 699
    invoke-virtual/range {v18 .. v18}, Landroid/animation/Keyframe;->getFraction()F

    .line 700
    .line 701
    .line 702
    move-result v18

    .line 703
    move/from16 v22, v1

    .line 704
    .line 705
    add-float v1, v18, v4

    .line 706
    .line 707
    invoke-virtual {v11, v1}, Landroid/animation/Keyframe;->setFraction(F)V

    .line 708
    .line 709
    .line 710
    add-int/lit8 v5, v5, 0x1

    .line 711
    .line 712
    move/from16 v1, v22

    .line 713
    .line 714
    const/high16 v11, 0x3f800000    # 1.0f

    .line 715
    .line 716
    goto :goto_15

    .line 717
    :cond_22
    move/from16 v22, v1

    .line 718
    .line 719
    :goto_16
    add-int/lit8 v9, v9, 0x1

    .line 720
    .line 721
    move/from16 v1, v22

    .line 722
    .line 723
    goto :goto_12

    .line 724
    :cond_23
    invoke-static {v10, v3}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    .line 725
    .line 726
    .line 727
    move-result-object v1

    .line 728
    const/4 v5, 0x3

    .line 729
    if-ne v2, v5, :cond_25

    .line 730
    .line 731
    invoke-static {}, Ly1/l;->getInstance()Ly1/l;

    .line 732
    .line 733
    .line 734
    move-result-object v2

    .line 735
    invoke-virtual {v1, v2}, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 736
    .line 737
    .line 738
    goto :goto_17

    .line 739
    :cond_24
    const/4 v5, 0x3

    .line 740
    const/4 v1, 0x0

    .line 741
    :cond_25
    :goto_17
    const/4 v9, 0x0

    .line 742
    const/4 v11, 0x1

    .line 743
    if-nez v1, :cond_26

    .line 744
    .line 745
    invoke-static {v15, v12, v9, v11, v10}, Ly1/k;->b(Landroid/content/res/TypedArray;IIILjava/lang/String;)Landroid/animation/PropertyValuesHolder;

    .line 746
    .line 747
    .line 748
    move-result-object v1

    .line 749
    :cond_26
    if-eqz v1, :cond_28

    .line 750
    .line 751
    if-nez v14, :cond_27

    .line 752
    .line 753
    new-instance v14, Ljava/util/ArrayList;

    .line 754
    .line 755
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 756
    .line 757
    .line 758
    :cond_27
    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 759
    .line 760
    .line 761
    :cond_28
    invoke-virtual {v15}, Landroid/content/res/TypedArray;->recycle()V

    .line 762
    .line 763
    .line 764
    goto :goto_18

    .line 765
    :cond_29
    move-object/from16 v19, v1

    .line 766
    .line 767
    move v5, v2

    .line 768
    move/from16 v16, v4

    .line 769
    .line 770
    move/from16 v17, v9

    .line 771
    .line 772
    move-object/from16 v21, v11

    .line 773
    .line 774
    move v9, v12

    .line 775
    move v11, v3

    .line 776
    :goto_18
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 777
    .line 778
    .line 779
    move-object/from16 v6, p2

    .line 780
    .line 781
    move v2, v5

    .line 782
    move v12, v9

    .line 783
    move v3, v11

    .line 784
    move/from16 v4, v16

    .line 785
    .line 786
    move/from16 v9, v17

    .line 787
    .line 788
    move-object/from16 v1, v19

    .line 789
    .line 790
    move-object/from16 v11, v21

    .line 791
    .line 792
    move-object/from16 v5, p1

    .line 793
    .line 794
    goto/16 :goto_4

    .line 795
    .line 796
    :cond_2a
    move/from16 v17, v9

    .line 797
    .line 798
    move-object/from16 v21, v11

    .line 799
    .line 800
    move v9, v12

    .line 801
    move v11, v3

    .line 802
    if-eqz v14, :cond_2b

    .line 803
    .line 804
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    .line 805
    .line 806
    .line 807
    move-result v1

    .line 808
    new-array v2, v1, [Landroid/animation/PropertyValuesHolder;

    .line 809
    .line 810
    move v12, v9

    .line 811
    :goto_19
    if-ge v12, v1, :cond_2c

    .line 812
    .line 813
    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 814
    .line 815
    .line 816
    move-result-object v3

    .line 817
    check-cast v3, Landroid/animation/PropertyValuesHolder;

    .line 818
    .line 819
    aput-object v3, v2, v12

    .line 820
    .line 821
    add-int/lit8 v12, v12, 0x1

    .line 822
    .line 823
    goto :goto_19

    .line 824
    :cond_2b
    const/4 v2, 0x0

    .line 825
    :cond_2c
    if-eqz v2, :cond_2d

    .line 826
    .line 827
    instance-of v1, v0, Landroid/animation/ValueAnimator;

    .line 828
    .line 829
    if-eqz v1, :cond_2d

    .line 830
    .line 831
    move-object v1, v0

    .line 832
    check-cast v1, Landroid/animation/ValueAnimator;

    .line 833
    .line 834
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 835
    .line 836
    .line 837
    :cond_2d
    move v12, v11

    .line 838
    :goto_1a
    if-eqz v8, :cond_2f

    .line 839
    .line 840
    if-nez v12, :cond_2f

    .line 841
    .line 842
    if-nez v21, :cond_2e

    .line 843
    .line 844
    new-instance v11, Ljava/util/ArrayList;

    .line 845
    .line 846
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 847
    .line 848
    .line 849
    goto :goto_1b

    .line 850
    :cond_2e
    move-object/from16 v11, v21

    .line 851
    .line 852
    :goto_1b
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 853
    .line 854
    .line 855
    goto :goto_1c

    .line 856
    :cond_2f
    move-object/from16 v11, v21

    .line 857
    .line 858
    :goto_1c
    move/from16 v9, v17

    .line 859
    .line 860
    goto/16 :goto_0

    .line 861
    .line 862
    :cond_30
    new-instance v0, Ljava/lang/RuntimeException;

    .line 863
    .line 864
    new-instance v1, Ljava/lang/StringBuilder;

    .line 865
    .line 866
    const-string v2, "Unknown animator name: "

    .line 867
    .line 868
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 869
    .line 870
    .line 871
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 872
    .line 873
    .line 874
    move-result-object v2

    .line 875
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 876
    .line 877
    .line 878
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 879
    .line 880
    .line 881
    move-result-object v1

    .line 882
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 883
    .line 884
    .line 885
    throw v0

    .line 886
    :goto_1d
    if-eqz v8, :cond_33

    .line 887
    .line 888
    if-eqz v21, :cond_33

    .line 889
    .line 890
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    .line 891
    .line 892
    .line 893
    move-result v1

    .line 894
    new-array v1, v1, [Landroid/animation/Animator;

    .line 895
    .line 896
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 897
    .line 898
    .line 899
    move-result-object v2

    .line 900
    move v12, v9

    .line 901
    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 902
    .line 903
    .line 904
    move-result v3

    .line 905
    if-eqz v3, :cond_31

    .line 906
    .line 907
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 908
    .line 909
    .line 910
    move-result-object v3

    .line 911
    check-cast v3, Landroid/animation/Animator;

    .line 912
    .line 913
    add-int/lit8 v4, v12, 0x1

    .line 914
    .line 915
    aput-object v3, v1, v12

    .line 916
    .line 917
    move v12, v4

    .line 918
    goto :goto_1e

    .line 919
    :cond_31
    if-nez p6, :cond_32

    .line 920
    .line 921
    invoke-virtual {v8, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 922
    .line 923
    .line 924
    return-object v0

    .line 925
    :cond_32
    invoke-virtual {v8, v1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 926
    .line 927
    .line 928
    :cond_33
    return-object v0
.end method

.method public static b(Landroid/content/res/TypedArray;IIILjava/lang/String;)Landroid/animation/PropertyValuesHolder;
    .locals 11

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    const/4 v2, 0x1

    .line 7
    const/4 v3, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    move v4, v2

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move v4, v3

    .line 13
    :goto_0
    if-eqz v4, :cond_1

    .line 14
    .line 15
    iget v1, v1, Landroid/util/TypedValue;->type:I

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_1
    move v1, v3

    .line 19
    :goto_1
    invoke-virtual {p0, p3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    if-eqz v5, :cond_2

    .line 24
    .line 25
    move v6, v2

    .line 26
    goto :goto_2

    .line 27
    :cond_2
    move v6, v3

    .line 28
    :goto_2
    if-eqz v6, :cond_3

    .line 29
    .line 30
    iget v5, v5, Landroid/util/TypedValue;->type:I

    .line 31
    .line 32
    goto :goto_3

    .line 33
    :cond_3
    move v5, v3

    .line 34
    :goto_3
    const/4 v7, 0x4

    .line 35
    const/4 v8, 0x3

    .line 36
    if-ne p1, v7, :cond_7

    .line 37
    .line 38
    if-eqz v4, :cond_4

    .line 39
    .line 40
    invoke-static {v1}, Ly1/k;->c(I)Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-nez p1, :cond_5

    .line 45
    .line 46
    :cond_4
    if-eqz v6, :cond_6

    .line 47
    .line 48
    invoke-static {v5}, Ly1/k;->c(I)Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-eqz p1, :cond_6

    .line 53
    .line 54
    :cond_5
    move p1, v8

    .line 55
    goto :goto_4

    .line 56
    :cond_6
    move p1, v3

    .line 57
    :cond_7
    :goto_4
    if-nez p1, :cond_8

    .line 58
    .line 59
    move v7, v2

    .line 60
    goto :goto_5

    .line 61
    :cond_8
    move v7, v3

    .line 62
    :goto_5
    const/4 v9, 0x0

    .line 63
    if-ne p1, v0, :cond_e

    .line 64
    .line 65
    invoke-virtual {p0, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {p0, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-static {p1}, LD/g;->createNodesFromPathData(Ljava/lang/String;)[LD/f;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    invoke-static {p0}, LD/g;->createNodesFromPathData(Ljava/lang/String;)[LD/f;

    .line 78
    .line 79
    .line 80
    move-result-object p3

    .line 81
    if-nez p2, :cond_9

    .line 82
    .line 83
    if-eqz p3, :cond_d

    .line 84
    .line 85
    :cond_9
    if-eqz p2, :cond_c

    .line 86
    .line 87
    new-instance v1, Ly1/j;

    .line 88
    .line 89
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 90
    .line 91
    .line 92
    if-eqz p3, :cond_b

    .line 93
    .line 94
    invoke-static {p2, p3}, LD/g;->canMorph([LD/f;[LD/f;)Z

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    if-eqz v4, :cond_a

    .line 99
    .line 100
    new-array p0, v0, [Ljava/lang/Object;

    .line 101
    .line 102
    aput-object p2, p0, v3

    .line 103
    .line 104
    aput-object p3, p0, v2

    .line 105
    .line 106
    invoke-static {p4, v1, p0}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    return-object p0

    .line 111
    :cond_a
    new-instance p2, Landroid/view/InflateException;

    .line 112
    .line 113
    const-string p3, " Can\'t morph from "

    .line 114
    .line 115
    const-string p4, " to "

    .line 116
    .line 117
    invoke-static {p3, p1, p4, p0}, Lb/c;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    invoke-direct {p2, p0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    throw p2

    .line 125
    :cond_b
    new-array p0, v2, [Ljava/lang/Object;

    .line 126
    .line 127
    aput-object p2, p0, v3

    .line 128
    .line 129
    invoke-static {p4, v1, p0}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    return-object p0

    .line 134
    :cond_c
    if-eqz p3, :cond_d

    .line 135
    .line 136
    new-instance p0, Ly1/j;

    .line 137
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    .line 140
    .line 141
    new-array p1, v2, [Ljava/lang/Object;

    .line 142
    .line 143
    aput-object p3, p1, v3

    .line 144
    .line 145
    invoke-static {p4, p0, p1}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    .line 146
    .line 147
    .line 148
    move-result-object p0

    .line 149
    return-object p0

    .line 150
    :cond_d
    return-object v9

    .line 151
    :cond_e
    if-ne p1, v8, :cond_f

    .line 152
    .line 153
    invoke-static {}, Ly1/l;->getInstance()Ly1/l;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    goto :goto_6

    .line 158
    :cond_f
    move-object p1, v9

    .line 159
    :goto_6
    const/4 v8, 0x5

    .line 160
    const/4 v10, 0x0

    .line 161
    if-eqz v7, :cond_15

    .line 162
    .line 163
    if-eqz v4, :cond_13

    .line 164
    .line 165
    if-ne v1, v8, :cond_10

    .line 166
    .line 167
    invoke-virtual {p0, p2, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 168
    .line 169
    .line 170
    move-result p2

    .line 171
    goto :goto_7

    .line 172
    :cond_10
    invoke-virtual {p0, p2, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 173
    .line 174
    .line 175
    move-result p2

    .line 176
    :goto_7
    if-eqz v6, :cond_12

    .line 177
    .line 178
    if-ne v5, v8, :cond_11

    .line 179
    .line 180
    invoke-virtual {p0, p3, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 181
    .line 182
    .line 183
    move-result p0

    .line 184
    goto :goto_8

    .line 185
    :cond_11
    invoke-virtual {p0, p3, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 186
    .line 187
    .line 188
    move-result p0

    .line 189
    :goto_8
    new-array p3, v0, [F

    .line 190
    .line 191
    aput p2, p3, v3

    .line 192
    .line 193
    aput p0, p3, v2

    .line 194
    .line 195
    invoke-static {p4, p3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    .line 196
    .line 197
    .line 198
    move-result-object p0

    .line 199
    :goto_9
    move-object v9, p0

    .line 200
    goto/16 :goto_e

    .line 201
    .line 202
    :cond_12
    new-array p0, v2, [F

    .line 203
    .line 204
    aput p2, p0, v3

    .line 205
    .line 206
    invoke-static {p4, p0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    .line 207
    .line 208
    .line 209
    move-result-object p0

    .line 210
    goto :goto_9

    .line 211
    :cond_13
    if-ne v5, v8, :cond_14

    .line 212
    .line 213
    invoke-virtual {p0, p3, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 214
    .line 215
    .line 216
    move-result p0

    .line 217
    goto :goto_a

    .line 218
    :cond_14
    invoke-virtual {p0, p3, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 219
    .line 220
    .line 221
    move-result p0

    .line 222
    :goto_a
    new-array p2, v2, [F

    .line 223
    .line 224
    aput p0, p2, v3

    .line 225
    .line 226
    invoke-static {p4, p2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    .line 227
    .line 228
    .line 229
    move-result-object p0

    .line 230
    goto :goto_9

    .line 231
    :cond_15
    if-eqz v4, :cond_1b

    .line 232
    .line 233
    if-ne v1, v8, :cond_16

    .line 234
    .line 235
    invoke-virtual {p0, p2, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 236
    .line 237
    .line 238
    move-result p2

    .line 239
    float-to-int p2, p2

    .line 240
    goto :goto_b

    .line 241
    :cond_16
    invoke-static {v1}, Ly1/k;->c(I)Z

    .line 242
    .line 243
    .line 244
    move-result v0

    .line 245
    if-eqz v0, :cond_17

    .line 246
    .line 247
    invoke-virtual {p0, p2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 248
    .line 249
    .line 250
    move-result p2

    .line 251
    goto :goto_b

    .line 252
    :cond_17
    invoke-virtual {p0, p2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 253
    .line 254
    .line 255
    move-result p2

    .line 256
    :goto_b
    if-eqz v6, :cond_1a

    .line 257
    .line 258
    if-ne v5, v8, :cond_18

    .line 259
    .line 260
    invoke-virtual {p0, p3, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 261
    .line 262
    .line 263
    move-result p0

    .line 264
    float-to-int p0, p0

    .line 265
    goto :goto_c

    .line 266
    :cond_18
    invoke-static {v5}, Ly1/k;->c(I)Z

    .line 267
    .line 268
    .line 269
    move-result v0

    .line 270
    if-eqz v0, :cond_19

    .line 271
    .line 272
    invoke-virtual {p0, p3, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 273
    .line 274
    .line 275
    move-result p0

    .line 276
    goto :goto_c

    .line 277
    :cond_19
    invoke-virtual {p0, p3, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 278
    .line 279
    .line 280
    move-result p0

    .line 281
    :goto_c
    filled-new-array {p2, p0}, [I

    .line 282
    .line 283
    .line 284
    move-result-object p0

    .line 285
    invoke-static {p4, p0}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    .line 286
    .line 287
    .line 288
    move-result-object v9

    .line 289
    goto :goto_e

    .line 290
    :cond_1a
    filled-new-array {p2}, [I

    .line 291
    .line 292
    .line 293
    move-result-object p0

    .line 294
    invoke-static {p4, p0}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    .line 295
    .line 296
    .line 297
    move-result-object v9

    .line 298
    goto :goto_e

    .line 299
    :cond_1b
    if-eqz v6, :cond_1e

    .line 300
    .line 301
    if-ne v5, v8, :cond_1c

    .line 302
    .line 303
    invoke-virtual {p0, p3, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 304
    .line 305
    .line 306
    move-result p0

    .line 307
    float-to-int p0, p0

    .line 308
    goto :goto_d

    .line 309
    :cond_1c
    invoke-static {v5}, Ly1/k;->c(I)Z

    .line 310
    .line 311
    .line 312
    move-result p2

    .line 313
    if-eqz p2, :cond_1d

    .line 314
    .line 315
    invoke-virtual {p0, p3, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 316
    .line 317
    .line 318
    move-result p0

    .line 319
    goto :goto_d

    .line 320
    :cond_1d
    invoke-virtual {p0, p3, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 321
    .line 322
    .line 323
    move-result p0

    .line 324
    :goto_d
    filled-new-array {p0}, [I

    .line 325
    .line 326
    .line 327
    move-result-object p0

    .line 328
    invoke-static {p4, p0}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    .line 329
    .line 330
    .line 331
    move-result-object v9

    .line 332
    :cond_1e
    :goto_e
    if-eqz v9, :cond_1f

    .line 333
    .line 334
    if-eqz p1, :cond_1f

    .line 335
    .line 336
    invoke-virtual {v9, p1}, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 337
    .line 338
    .line 339
    :cond_1f
    return-object v9
.end method

.method public static c(I)Z
    .locals 1

    .line 1
    const/16 v0, 0x1c

    .line 2
    .line 3
    if-lt p0, v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0x1f

    .line 6
    .line 7
    if-gt p0, v0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0
.end method

.method public static d(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Landroid/animation/ObjectAnimator;FLandroid/content/res/XmlResourceParser;)Landroid/animation/ValueAnimator;
    .locals 19

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    move-object/from16 v3, p6

    .line 8
    .line 9
    const/4 v4, 0x2

    .line 10
    const/4 v5, 0x0

    .line 11
    const/4 v6, 0x1

    .line 12
    sget-object v7, Ly1/a;->g:[I

    .line 13
    .line 14
    invoke-static {v0, v1, v2, v7}, LC/v;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 15
    .line 16
    .line 17
    move-result-object v7

    .line 18
    sget-object v8, Ly1/a;->k:[I

    .line 19
    .line 20
    invoke-static {v0, v1, v2, v8}, LC/v;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-nez p4, :cond_0

    .line 25
    .line 26
    new-instance v1, Landroid/animation/ValueAnimator;

    .line 27
    .line 28
    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move-object/from16 v1, p4

    .line 33
    .line 34
    :goto_0
    const/16 v2, 0x12c

    .line 35
    .line 36
    const-string v8, "duration"

    .line 37
    .line 38
    invoke-static {v7, v3, v8, v6, v2}, LC/v;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    int-to-long v8, v2

    .line 43
    const-string v2, "startOffset"

    .line 44
    .line 45
    invoke-static {v7, v3, v2, v4, v5}, LC/v;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    int-to-long v10, v2

    .line 50
    const-string v2, "valueType"

    .line 51
    .line 52
    const/4 v12, 0x7

    .line 53
    const/4 v13, 0x4

    .line 54
    invoke-static {v7, v3, v2, v12, v13}, LC/v;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    const-string v12, "valueFrom"

    .line 59
    .line 60
    invoke-static {v3, v12}, LC/v;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 61
    .line 62
    .line 63
    move-result v12

    .line 64
    const/4 v14, 0x3

    .line 65
    if-eqz v12, :cond_9

    .line 66
    .line 67
    const-string v12, "valueTo"

    .line 68
    .line 69
    invoke-static {v3, v12}, LC/v;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 70
    .line 71
    .line 72
    move-result v12

    .line 73
    if-eqz v12, :cond_9

    .line 74
    .line 75
    const/4 v12, 0x6

    .line 76
    const/4 v15, 0x5

    .line 77
    if-ne v2, v13, :cond_8

    .line 78
    .line 79
    invoke-virtual {v7, v15}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    if-eqz v2, :cond_1

    .line 84
    .line 85
    move/from16 v16, v6

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_1
    move/from16 v16, v5

    .line 89
    .line 90
    :goto_1
    if-eqz v16, :cond_2

    .line 91
    .line 92
    iget v2, v2, Landroid/util/TypedValue;->type:I

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_2
    move v2, v5

    .line 96
    :goto_2
    invoke-virtual {v7, v12}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    if-eqz v4, :cond_3

    .line 101
    .line 102
    move/from16 v17, v6

    .line 103
    .line 104
    goto :goto_3

    .line 105
    :cond_3
    move/from16 v17, v5

    .line 106
    .line 107
    :goto_3
    if-eqz v17, :cond_4

    .line 108
    .line 109
    iget v4, v4, Landroid/util/TypedValue;->type:I

    .line 110
    .line 111
    goto :goto_4

    .line 112
    :cond_4
    move v4, v5

    .line 113
    :goto_4
    if-eqz v16, :cond_5

    .line 114
    .line 115
    invoke-static {v2}, Ly1/k;->c(I)Z

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    if-nez v2, :cond_6

    .line 120
    .line 121
    :cond_5
    if-eqz v17, :cond_7

    .line 122
    .line 123
    invoke-static {v4}, Ly1/k;->c(I)Z

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    if-eqz v2, :cond_7

    .line 128
    .line 129
    :cond_6
    move v2, v14

    .line 130
    goto :goto_5

    .line 131
    :cond_7
    move v2, v5

    .line 132
    :cond_8
    :goto_5
    const-string v4, ""

    .line 133
    .line 134
    invoke-static {v7, v2, v15, v12, v4}, Ly1/k;->b(Landroid/content/res/TypedArray;IIILjava/lang/String;)Landroid/animation/PropertyValuesHolder;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    if-eqz v4, :cond_9

    .line 139
    .line 140
    new-array v12, v6, [Landroid/animation/PropertyValuesHolder;

    .line 141
    .line 142
    aput-object v4, v12, v5

    .line 143
    .line 144
    invoke-virtual {v1, v12}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 145
    .line 146
    .line 147
    :cond_9
    invoke-virtual {v1, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v1, v10, v11}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 151
    .line 152
    .line 153
    const-string v4, "repeatCount"

    .line 154
    .line 155
    invoke-static {v7, v3, v4, v14, v5}, LC/v;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    .line 156
    .line 157
    .line 158
    move-result v4

    .line 159
    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 160
    .line 161
    .line 162
    const-string v4, "repeatMode"

    .line 163
    .line 164
    invoke-static {v7, v3, v4, v13, v6}, LC/v;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    .line 165
    .line 166
    .line 167
    move-result v4

    .line 168
    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 169
    .line 170
    .line 171
    if-eqz v0, :cond_14

    .line 172
    .line 173
    move-object v4, v1

    .line 174
    check-cast v4, Landroid/animation/ObjectAnimator;

    .line 175
    .line 176
    const-string v8, "pathData"

    .line 177
    .line 178
    invoke-static {v0, v3, v8, v6}, LC/v;->getNamedString(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v8

    .line 182
    if-eqz v8, :cond_13

    .line 183
    .line 184
    const-string v9, "propertyXName"

    .line 185
    .line 186
    const/4 v10, 0x2

    .line 187
    invoke-static {v0, v3, v9, v10}, LC/v;->getNamedString(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v9

    .line 191
    const-string v11, "propertyYName"

    .line 192
    .line 193
    invoke-static {v0, v3, v11, v14}, LC/v;->getNamedString(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v11

    .line 197
    if-nez v9, :cond_b

    .line 198
    .line 199
    if-eqz v11, :cond_a

    .line 200
    .line 201
    goto :goto_6

    .line 202
    :cond_a
    new-instance v1, Landroid/view/InflateException;

    .line 203
    .line 204
    new-instance v2, Ljava/lang/StringBuilder;

    .line 205
    .line 206
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    const-string v0, " propertyXName or propertyYName is needed for PathData"

    .line 217
    .line 218
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    invoke-direct {v1, v0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    throw v1

    .line 229
    :cond_b
    :goto_6
    invoke-static {v8}, LD/g;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    .line 230
    .line 231
    .line 232
    move-result-object v2

    .line 233
    const/high16 v8, 0x3f000000    # 0.5f

    .line 234
    .line 235
    mul-float v8, v8, p5

    .line 236
    .line 237
    new-instance v10, Landroid/graphics/PathMeasure;

    .line 238
    .line 239
    invoke-direct {v10, v2, v5}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    .line 240
    .line 241
    .line 242
    new-instance v12, Ljava/util/ArrayList;

    .line 243
    .line 244
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 245
    .line 246
    .line 247
    const/4 v13, 0x0

    .line 248
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 249
    .line 250
    .line 251
    move-result-object v14

    .line 252
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    .line 254
    .line 255
    move v14, v13

    .line 256
    :goto_7
    invoke-virtual {v10}, Landroid/graphics/PathMeasure;->getLength()F

    .line 257
    .line 258
    .line 259
    move-result v15

    .line 260
    add-float/2addr v14, v15

    .line 261
    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 262
    .line 263
    .line 264
    move-result-object v15

    .line 265
    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    .line 267
    .line 268
    invoke-virtual {v10}, Landroid/graphics/PathMeasure;->nextContour()Z

    .line 269
    .line 270
    .line 271
    move-result v15

    .line 272
    if-nez v15, :cond_12

    .line 273
    .line 274
    new-instance v10, Landroid/graphics/PathMeasure;

    .line 275
    .line 276
    invoke-direct {v10, v2, v5}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    .line 277
    .line 278
    .line 279
    div-float v2, v14, v8

    .line 280
    .line 281
    float-to-int v2, v2

    .line 282
    add-int/2addr v2, v6

    .line 283
    const/16 v8, 0x64

    .line 284
    .line 285
    invoke-static {v8, v2}, Ljava/lang/Math;->min(II)I

    .line 286
    .line 287
    .line 288
    move-result v2

    .line 289
    new-array v8, v2, [F

    .line 290
    .line 291
    new-array v15, v2, [F

    .line 292
    .line 293
    move/from16 v16, v5

    .line 294
    .line 295
    const/4 v13, 0x2

    .line 296
    new-array v5, v13, [F

    .line 297
    .line 298
    add-int/lit8 v13, v2, -0x1

    .line 299
    .line 300
    int-to-float v13, v13

    .line 301
    div-float/2addr v14, v13

    .line 302
    move/from16 v17, v6

    .line 303
    .line 304
    move/from16 p2, v14

    .line 305
    .line 306
    move/from16 v6, v16

    .line 307
    .line 308
    move v13, v6

    .line 309
    const/16 p1, 0x0

    .line 310
    .line 311
    :goto_8
    const/4 v14, 0x0

    .line 312
    if-ge v6, v2, :cond_d

    .line 313
    .line 314
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    move-result-object v18

    .line 318
    check-cast v18, Ljava/lang/Float;

    .line 319
    .line 320
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Float;->floatValue()F

    .line 321
    .line 322
    .line 323
    move-result v18

    .line 324
    move/from16 p3, v2

    .line 325
    .line 326
    sub-float v2, p1, v18

    .line 327
    .line 328
    invoke-virtual {v10, v2, v5, v14}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 329
    .line 330
    .line 331
    aget v2, v5, v16

    .line 332
    .line 333
    aput v2, v8, v6

    .line 334
    .line 335
    aget v2, v5, v17

    .line 336
    .line 337
    aput v2, v15, v6

    .line 338
    .line 339
    add-float v2, p1, p2

    .line 340
    .line 341
    add-int/lit8 v14, v13, 0x1

    .line 342
    .line 343
    move/from16 p1, v2

    .line 344
    .line 345
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 346
    .line 347
    .line 348
    move-result v2

    .line 349
    if-ge v14, v2, :cond_c

    .line 350
    .line 351
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 352
    .line 353
    .line 354
    move-result-object v2

    .line 355
    check-cast v2, Ljava/lang/Float;

    .line 356
    .line 357
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 358
    .line 359
    .line 360
    move-result v2

    .line 361
    cmpl-float v2, p1, v2

    .line 362
    .line 363
    if-lez v2, :cond_c

    .line 364
    .line 365
    invoke-virtual {v10}, Landroid/graphics/PathMeasure;->nextContour()Z

    .line 366
    .line 367
    .line 368
    move v13, v14

    .line 369
    :cond_c
    add-int/lit8 v6, v6, 0x1

    .line 370
    .line 371
    move/from16 v2, p3

    .line 372
    .line 373
    goto :goto_8

    .line 374
    :cond_d
    if-eqz v9, :cond_e

    .line 375
    .line 376
    invoke-static {v9, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    .line 377
    .line 378
    .line 379
    move-result-object v2

    .line 380
    goto :goto_9

    .line 381
    :cond_e
    move-object v2, v14

    .line 382
    :goto_9
    if-eqz v11, :cond_f

    .line 383
    .line 384
    invoke-static {v11, v15}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    .line 385
    .line 386
    .line 387
    move-result-object v14

    .line 388
    :cond_f
    if-nez v2, :cond_10

    .line 389
    .line 390
    move/from16 v5, v17

    .line 391
    .line 392
    new-array v2, v5, [Landroid/animation/PropertyValuesHolder;

    .line 393
    .line 394
    aput-object v14, v2, v16

    .line 395
    .line 396
    invoke-virtual {v4, v2}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 397
    .line 398
    .line 399
    :goto_a
    move/from16 v5, v16

    .line 400
    .line 401
    goto :goto_b

    .line 402
    :cond_10
    move/from16 v5, v17

    .line 403
    .line 404
    if-nez v14, :cond_11

    .line 405
    .line 406
    new-array v5, v5, [Landroid/animation/PropertyValuesHolder;

    .line 407
    .line 408
    aput-object v2, v5, v16

    .line 409
    .line 410
    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 411
    .line 412
    .line 413
    goto :goto_a

    .line 414
    :cond_11
    const/4 v13, 0x2

    .line 415
    new-array v6, v13, [Landroid/animation/PropertyValuesHolder;

    .line 416
    .line 417
    aput-object v2, v6, v16

    .line 418
    .line 419
    aput-object v14, v6, v5

    .line 420
    .line 421
    invoke-virtual {v4, v6}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 422
    .line 423
    .line 424
    goto :goto_a

    .line 425
    :cond_12
    move/from16 v16, v5

    .line 426
    .line 427
    goto/16 :goto_7

    .line 428
    .line 429
    :cond_13
    move/from16 v16, v5

    .line 430
    .line 431
    const-string v2, "propertyName"

    .line 432
    .line 433
    invoke-static {v0, v3, v2, v5}, LC/v;->getNamedString(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    .line 434
    .line 435
    .line 436
    move-result-object v2

    .line 437
    invoke-virtual {v4, v2}, Landroid/animation/ObjectAnimator;->setPropertyName(Ljava/lang/String;)V

    .line 438
    .line 439
    .line 440
    :cond_14
    :goto_b
    const-string v2, "interpolator"

    .line 441
    .line 442
    invoke-static {v7, v3, v2, v5, v5}, LC/v;->getNamedResourceId(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    .line 443
    .line 444
    .line 445
    move-result v2

    .line 446
    if-lez v2, :cond_15

    .line 447
    .line 448
    move-object/from16 v3, p0

    .line 449
    .line 450
    invoke-static {v3, v2}, Ly1/i;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    .line 451
    .line 452
    .line 453
    move-result-object v2

    .line 454
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 455
    .line 456
    .line 457
    :cond_15
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 458
    .line 459
    .line 460
    if-eqz v0, :cond_16

    .line 461
    .line 462
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 463
    .line 464
    .line 465
    :cond_16
    return-object v1
.end method

.method public static loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 2
    invoke-static {p0, p1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-static {p0, v0, v1, p1}, Ly1/k;->loadAnimator(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;I)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public static loadAnimator(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;I)Landroid/animation/Animator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    .line 4
    invoke-static {p0, p1, p2, p3, v0}, Ly1/k;->loadAnimator(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;IF)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public static loadAnimator(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;IF)Landroid/animation/Animator;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 5
    const-string v1, "Can\'t load animation resource ID #0x"

    const/4 v2, 0x0

    .line 6
    :try_start_0
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    move-result-object v6
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    :try_start_1
    invoke-static {v6}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v10, p4

    invoke-static/range {v3 .. v10}, Ly1/k;->a(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;IF)Landroid/animation/Animator;

    move-result-object p0
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    return-object p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    move-object v2, v6

    goto :goto_2

    :catch_0
    move-exception v0

    move-object p0, v0

    move-object v2, v6

    goto :goto_0

    :catch_1
    move-exception v0

    move-object p0, v0

    move-object v2, v6

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :catch_2
    move-exception v0

    move-object p0, v0

    .line 9
    :goto_0
    :try_start_2
    new-instance p1, Landroid/content/res/Resources$NotFoundException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 12
    throw p1

    :catch_3
    move-exception v0

    move-object p0, v0

    .line 13
    :goto_1
    new-instance p1, Landroid/content/res/Resources$NotFoundException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 16
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_2
    if-eqz v2, :cond_0

    .line 17
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    .line 18
    :cond_0
    throw p0
.end method
