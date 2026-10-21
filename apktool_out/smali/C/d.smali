.class public final LC/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/graphics/Shader;

.field public final b:Landroid/content/res/ColorStateList;

.field public c:I


# direct methods
.method public constructor <init>(Landroid/graphics/Shader;Landroid/content/res/ColorStateList;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LC/d;->a:Landroid/graphics/Shader;

    .line 5
    .line 6
    iput-object p2, p0, LC/d;->b:Landroid/content/res/ColorStateList;

    .line 7
    .line 8
    iput p3, p0, LC/d;->c:I

    .line 9
    .line 10
    return-void
.end method

.method public static a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)LC/d;
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    const/4 v3, 0x0

    .line 6
    const-string v4, "gradient"

    .line 7
    .line 8
    const/4 v5, 0x1

    .line 9
    const/4 v6, 0x2

    .line 10
    const/4 v7, 0x0

    .line 11
    invoke-virtual/range {p0 .. p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    .line 12
    .line 13
    .line 14
    move-result-object v8

    .line 15
    invoke-static {v8}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 16
    .line 17
    .line 18
    move-result-object v9

    .line 19
    :goto_0
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 20
    .line 21
    .line 22
    move-result v10

    .line 23
    if-eq v10, v6, :cond_0

    .line 24
    .line 25
    if-eq v10, v5, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    if-ne v10, v6, :cond_16

    .line 29
    .line 30
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v10

    .line 34
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    const/4 v11, 0x0

    .line 38
    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v12

    .line 42
    if-nez v12, :cond_2

    .line 43
    .line 44
    const-string v2, "selector"

    .line 45
    .line 46
    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-eqz v2, :cond_1

    .line 51
    .line 52
    invoke-static {v0, v8, v9, v1}, LC/c;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    new-instance v1, LC/d;

    .line 57
    .line 58
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    invoke-direct {v1, v11, v0, v2}, LC/d;-><init>(Landroid/graphics/Shader;Landroid/content/res/ColorStateList;I)V

    .line 63
    .line 64
    .line 65
    return-object v1

    .line 66
    :cond_1
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 67
    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v2, ": unsupported complex color tag "

    .line 81
    .line 82
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    throw v0

    .line 96
    :cond_2
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v10

    .line 100
    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v4

    .line 104
    if-eqz v4, :cond_15

    .line 105
    .line 106
    sget-object v4, Landroidx/core/R$styleable;->GradientColor:[I

    .line 107
    .line 108
    invoke-static {v0, v1, v9, v4}, LC/v;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    sget v10, Landroidx/core/R$styleable;->GradientColor_android_startX:I

    .line 113
    .line 114
    const-string v12, "startX"

    .line 115
    .line 116
    invoke-static {v4, v8, v12, v10, v7}, LC/v;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    .line 117
    .line 118
    .line 119
    move-result v14

    .line 120
    const-string v10, "startY"

    .line 121
    .line 122
    sget v12, Landroidx/core/R$styleable;->GradientColor_android_startY:I

    .line 123
    .line 124
    invoke-static {v4, v8, v10, v12, v7}, LC/v;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    .line 125
    .line 126
    .line 127
    move-result v15

    .line 128
    const-string v10, "endX"

    .line 129
    .line 130
    sget v12, Landroidx/core/R$styleable;->GradientColor_android_endX:I

    .line 131
    .line 132
    invoke-static {v4, v8, v10, v12, v7}, LC/v;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    .line 133
    .line 134
    .line 135
    move-result v16

    .line 136
    const-string v10, "endY"

    .line 137
    .line 138
    sget v12, Landroidx/core/R$styleable;->GradientColor_android_endY:I

    .line 139
    .line 140
    invoke-static {v4, v8, v10, v12, v7}, LC/v;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    .line 141
    .line 142
    .line 143
    move-result v17

    .line 144
    const-string v10, "centerX"

    .line 145
    .line 146
    sget v12, Landroidx/core/R$styleable;->GradientColor_android_centerX:I

    .line 147
    .line 148
    invoke-static {v4, v8, v10, v12, v7}, LC/v;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    .line 149
    .line 150
    .line 151
    move-result v10

    .line 152
    const-string v12, "centerY"

    .line 153
    .line 154
    sget v13, Landroidx/core/R$styleable;->GradientColor_android_centerY:I

    .line 155
    .line 156
    invoke-static {v4, v8, v12, v13, v7}, LC/v;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    .line 157
    .line 158
    .line 159
    move-result v12

    .line 160
    sget v13, Landroidx/core/R$styleable;->GradientColor_android_type:I

    .line 161
    .line 162
    const-string v11, "type"

    .line 163
    .line 164
    invoke-static {v4, v8, v11, v13, v3}, LC/v;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    .line 165
    .line 166
    .line 167
    move-result v11

    .line 168
    const-string v13, "startColor"

    .line 169
    .line 170
    sget v6, Landroidx/core/R$styleable;->GradientColor_android_startColor:I

    .line 171
    .line 172
    invoke-static {v4, v8, v13, v6, v3}, LC/v;->getNamedColor(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    .line 173
    .line 174
    .line 175
    move-result v6

    .line 176
    const-string v13, "centerColor"

    .line 177
    .line 178
    invoke-static {v8, v13}, LC/v;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 179
    .line 180
    .line 181
    move-result v19

    .line 182
    sget v2, Landroidx/core/R$styleable;->GradientColor_android_centerColor:I

    .line 183
    .line 184
    invoke-static {v4, v8, v13, v2, v3}, LC/v;->getNamedColor(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    .line 185
    .line 186
    .line 187
    move-result v2

    .line 188
    const-string v13, "endColor"

    .line 189
    .line 190
    move/from16 v21, v5

    .line 191
    .line 192
    sget v5, Landroidx/core/R$styleable;->GradientColor_android_endColor:I

    .line 193
    .line 194
    invoke-static {v4, v8, v13, v5, v3}, LC/v;->getNamedColor(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    .line 195
    .line 196
    .line 197
    move-result v5

    .line 198
    const-string v13, "tileMode"

    .line 199
    .line 200
    sget v7, Landroidx/core/R$styleable;->GradientColor_android_tileMode:I

    .line 201
    .line 202
    invoke-static {v4, v8, v13, v7, v3}, LC/v;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    .line 203
    .line 204
    .line 205
    move-result v7

    .line 206
    const-string v13, "gradientRadius"

    .line 207
    .line 208
    sget v3, Landroidx/core/R$styleable;->GradientColor_android_gradientRadius:I

    .line 209
    .line 210
    move/from16 v23, v14

    .line 211
    .line 212
    const/4 v14, 0x0

    .line 213
    invoke-static {v4, v8, v13, v3, v14}, LC/v;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    .line 214
    .line 215
    .line 216
    move-result v3

    .line 217
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 218
    .line 219
    .line 220
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 221
    .line 222
    .line 223
    move-result v4

    .line 224
    add-int/lit8 v4, v4, 0x1

    .line 225
    .line 226
    new-instance v13, Ljava/util/ArrayList;

    .line 227
    .line 228
    const/16 v14, 0x14

    .line 229
    .line 230
    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 231
    .line 232
    .line 233
    move/from16 v24, v3

    .line 234
    .line 235
    new-instance v3, Ljava/util/ArrayList;

    .line 236
    .line 237
    invoke-direct {v3, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 238
    .line 239
    .line 240
    :goto_1
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 241
    .line 242
    .line 243
    move-result v14

    .line 244
    move-object/from16 v25, v8

    .line 245
    .line 246
    move/from16 v8, v21

    .line 247
    .line 248
    if-eq v14, v8, :cond_8

    .line 249
    .line 250
    invoke-interface/range {v25 .. v25}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 251
    .line 252
    .line 253
    move-result v8

    .line 254
    move/from16 v26, v15

    .line 255
    .line 256
    if-ge v8, v4, :cond_3

    .line 257
    .line 258
    const/4 v15, 0x3

    .line 259
    if-eq v14, v15, :cond_9

    .line 260
    .line 261
    :cond_3
    const/4 v15, 0x2

    .line 262
    if-eq v14, v15, :cond_4

    .line 263
    .line 264
    :goto_2
    move-object/from16 v8, v25

    .line 265
    .line 266
    move/from16 v15, v26

    .line 267
    .line 268
    const/16 v21, 0x1

    .line 269
    .line 270
    goto :goto_1

    .line 271
    :cond_4
    if-gt v8, v4, :cond_6

    .line 272
    .line 273
    invoke-interface/range {v25 .. v25}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v8

    .line 277
    const-string v14, "item"

    .line 278
    .line 279
    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 280
    .line 281
    .line 282
    move-result v8

    .line 283
    if-nez v8, :cond_5

    .line 284
    .line 285
    goto :goto_2

    .line 286
    :cond_5
    sget-object v8, Landroidx/core/R$styleable;->GradientColorItem:[I

    .line 287
    .line 288
    invoke-static {v0, v1, v9, v8}, LC/v;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 289
    .line 290
    .line 291
    move-result-object v8

    .line 292
    sget v14, Landroidx/core/R$styleable;->GradientColorItem_android_color:I

    .line 293
    .line 294
    invoke-virtual {v8, v14}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 295
    .line 296
    .line 297
    move-result v14

    .line 298
    sget v15, Landroidx/core/R$styleable;->GradientColorItem_android_offset:I

    .line 299
    .line 300
    invoke-virtual {v8, v15}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 301
    .line 302
    .line 303
    move-result v15

    .line 304
    if-eqz v14, :cond_7

    .line 305
    .line 306
    if-eqz v15, :cond_7

    .line 307
    .line 308
    sget v14, Landroidx/core/R$styleable;->GradientColorItem_android_color:I

    .line 309
    .line 310
    const/4 v15, 0x0

    .line 311
    invoke-virtual {v8, v14, v15}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 312
    .line 313
    .line 314
    move-result v14

    .line 315
    sget v15, Landroidx/core/R$styleable;->GradientColorItem_android_offset:I

    .line 316
    .line 317
    const/4 v0, 0x0

    .line 318
    invoke-virtual {v8, v15, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 319
    .line 320
    .line 321
    move-result v15

    .line 322
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 323
    .line 324
    .line 325
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 326
    .line 327
    .line 328
    move-result-object v0

    .line 329
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    .line 331
    .line 332
    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 333
    .line 334
    .line 335
    move-result-object v0

    .line 336
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    .line 338
    .line 339
    :cond_6
    move-object/from16 v0, p0

    .line 340
    .line 341
    goto :goto_2

    .line 342
    :cond_7
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 343
    .line 344
    new-instance v1, Ljava/lang/StringBuilder;

    .line 345
    .line 346
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 347
    .line 348
    .line 349
    invoke-interface/range {v25 .. v25}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v2

    .line 353
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    const-string v2, ": <item> tag requires a \'color\' attribute and a \'offset\' attribute!"

    .line 357
    .line 358
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v1

    .line 365
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 366
    .line 367
    .line 368
    throw v0

    .line 369
    :cond_8
    move/from16 v26, v15

    .line 370
    .line 371
    :cond_9
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 372
    .line 373
    .line 374
    move-result v0

    .line 375
    if-lez v0, :cond_a

    .line 376
    .line 377
    new-instance v0, LC/k;

    .line 378
    .line 379
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 380
    .line 381
    .line 382
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 383
    .line 384
    .line 385
    move-result v1

    .line 386
    new-array v4, v1, [I

    .line 387
    .line 388
    iput-object v4, v0, LC/k;->a:Ljava/lang/Object;

    .line 389
    .line 390
    new-array v4, v1, [F

    .line 391
    .line 392
    iput-object v4, v0, LC/k;->b:Ljava/lang/Object;

    .line 393
    .line 394
    const/4 v15, 0x0

    .line 395
    :goto_3
    if-ge v15, v1, :cond_b

    .line 396
    .line 397
    iget-object v4, v0, LC/k;->a:Ljava/lang/Object;

    .line 398
    .line 399
    check-cast v4, [I

    .line 400
    .line 401
    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 402
    .line 403
    .line 404
    move-result-object v8

    .line 405
    check-cast v8, Ljava/lang/Integer;

    .line 406
    .line 407
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 408
    .line 409
    .line 410
    move-result v8

    .line 411
    aput v8, v4, v15

    .line 412
    .line 413
    iget-object v4, v0, LC/k;->b:Ljava/lang/Object;

    .line 414
    .line 415
    check-cast v4, [F

    .line 416
    .line 417
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 418
    .line 419
    .line 420
    move-result-object v8

    .line 421
    check-cast v8, Ljava/lang/Float;

    .line 422
    .line 423
    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    .line 424
    .line 425
    .line 426
    move-result v8

    .line 427
    aput v8, v4, v15

    .line 428
    .line 429
    const/16 v21, 0x1

    .line 430
    .line 431
    add-int/lit8 v15, v15, 0x1

    .line 432
    .line 433
    goto :goto_3

    .line 434
    :cond_a
    const/4 v0, 0x0

    .line 435
    :cond_b
    if-eqz v0, :cond_c

    .line 436
    .line 437
    :goto_4
    const/4 v8, 0x1

    .line 438
    const/4 v15, 0x2

    .line 439
    goto :goto_5

    .line 440
    :cond_c
    if-eqz v19, :cond_d

    .line 441
    .line 442
    new-instance v0, LC/k;

    .line 443
    .line 444
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 445
    .line 446
    .line 447
    filled-new-array {v6, v2, v5}, [I

    .line 448
    .line 449
    .line 450
    move-result-object v1

    .line 451
    iput-object v1, v0, LC/k;->a:Ljava/lang/Object;

    .line 452
    .line 453
    const/4 v15, 0x3

    .line 454
    new-array v1, v15, [F

    .line 455
    .line 456
    fill-array-data v1, :array_0

    .line 457
    .line 458
    .line 459
    iput-object v1, v0, LC/k;->b:Ljava/lang/Object;

    .line 460
    .line 461
    goto :goto_4

    .line 462
    :cond_d
    new-instance v0, LC/k;

    .line 463
    .line 464
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 465
    .line 466
    .line 467
    filled-new-array {v6, v5}, [I

    .line 468
    .line 469
    .line 470
    move-result-object v1

    .line 471
    iput-object v1, v0, LC/k;->a:Ljava/lang/Object;

    .line 472
    .line 473
    const/4 v15, 0x2

    .line 474
    new-array v1, v15, [F

    .line 475
    .line 476
    fill-array-data v1, :array_1

    .line 477
    .line 478
    .line 479
    iput-object v1, v0, LC/k;->b:Ljava/lang/Object;

    .line 480
    .line 481
    const/4 v8, 0x1

    .line 482
    :goto_5
    if-eq v11, v8, :cond_11

    .line 483
    .line 484
    if-eq v11, v15, :cond_10

    .line 485
    .line 486
    new-instance v13, Landroid/graphics/LinearGradient;

    .line 487
    .line 488
    if-eq v7, v8, :cond_f

    .line 489
    .line 490
    if-eq v7, v15, :cond_e

    .line 491
    .line 492
    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 493
    .line 494
    :goto_6
    move-object/from16 v20, v1

    .line 495
    .line 496
    goto :goto_7

    .line 497
    :cond_e
    sget-object v1, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    .line 498
    .line 499
    goto :goto_6

    .line 500
    :cond_f
    sget-object v1, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    .line 501
    .line 502
    goto :goto_6

    .line 503
    :goto_7
    iget-object v1, v0, LC/k;->a:Ljava/lang/Object;

    .line 504
    .line 505
    move-object/from16 v18, v1

    .line 506
    .line 507
    check-cast v18, [I

    .line 508
    .line 509
    iget-object v0, v0, LC/k;->b:Ljava/lang/Object;

    .line 510
    .line 511
    move-object/from16 v19, v0

    .line 512
    .line 513
    check-cast v19, [F

    .line 514
    .line 515
    move/from16 v14, v23

    .line 516
    .line 517
    move/from16 v15, v26

    .line 518
    .line 519
    invoke-direct/range {v13 .. v20}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 520
    .line 521
    .line 522
    goto :goto_9

    .line 523
    :cond_10
    new-instance v13, Landroid/graphics/SweepGradient;

    .line 524
    .line 525
    iget-object v1, v0, LC/k;->a:Ljava/lang/Object;

    .line 526
    .line 527
    check-cast v1, [I

    .line 528
    .line 529
    iget-object v0, v0, LC/k;->b:Ljava/lang/Object;

    .line 530
    .line 531
    check-cast v0, [F

    .line 532
    .line 533
    invoke-direct {v13, v10, v12, v1, v0}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    .line 534
    .line 535
    .line 536
    goto :goto_9

    .line 537
    :cond_11
    const/16 v22, 0x0

    .line 538
    .line 539
    cmpg-float v1, v24, v22

    .line 540
    .line 541
    if-lez v1, :cond_14

    .line 542
    .line 543
    const/4 v15, 0x2

    .line 544
    new-instance v18, Landroid/graphics/RadialGradient;

    .line 545
    .line 546
    const/4 v8, 0x1

    .line 547
    if-eq v7, v8, :cond_13

    .line 548
    .line 549
    if-eq v7, v15, :cond_12

    .line 550
    .line 551
    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 552
    .line 553
    goto :goto_8

    .line 554
    :cond_12
    sget-object v1, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    .line 555
    .line 556
    goto :goto_8

    .line 557
    :cond_13
    sget-object v1, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    .line 558
    .line 559
    :goto_8
    iget-object v2, v0, LC/k;->a:Ljava/lang/Object;

    .line 560
    .line 561
    move-object/from16 v22, v2

    .line 562
    .line 563
    check-cast v22, [I

    .line 564
    .line 565
    iget-object v0, v0, LC/k;->b:Ljava/lang/Object;

    .line 566
    .line 567
    move-object/from16 v23, v0

    .line 568
    .line 569
    check-cast v23, [F

    .line 570
    .line 571
    move/from16 v19, v10

    .line 572
    .line 573
    move/from16 v20, v12

    .line 574
    .line 575
    move/from16 v21, v24

    .line 576
    .line 577
    move-object/from16 v24, v1

    .line 578
    .line 579
    invoke-direct/range {v18 .. v24}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 580
    .line 581
    .line 582
    move-object/from16 v13, v18

    .line 583
    .line 584
    :goto_9
    new-instance v0, LC/d;

    .line 585
    .line 586
    const/4 v1, 0x0

    .line 587
    const/4 v15, 0x0

    .line 588
    invoke-direct {v0, v13, v1, v15}, LC/d;-><init>(Landroid/graphics/Shader;Landroid/content/res/ColorStateList;I)V

    .line 589
    .line 590
    .line 591
    return-object v0

    .line 592
    :cond_14
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 593
    .line 594
    const-string v1, "<gradient> tag requires \'gradientRadius\' attribute with radial type"

    .line 595
    .line 596
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 597
    .line 598
    .line 599
    throw v0

    .line 600
    :cond_15
    move-object/from16 v25, v8

    .line 601
    .line 602
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 603
    .line 604
    new-instance v1, Ljava/lang/StringBuilder;

    .line 605
    .line 606
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 607
    .line 608
    .line 609
    invoke-interface/range {v25 .. v25}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 610
    .line 611
    .line 612
    move-result-object v2

    .line 613
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    .line 615
    .line 616
    const-string v2, ": invalid gradient color tag "

    .line 617
    .line 618
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 619
    .line 620
    .line 621
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    .line 623
    .line 624
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 625
    .line 626
    .line 627
    move-result-object v1

    .line 628
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 629
    .line 630
    .line 631
    throw v0

    .line 632
    :cond_16
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 633
    .line 634
    const-string v1, "No start tag found"

    .line 635
    .line 636
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 637
    .line 638
    .line 639
    throw v0

    .line 640
    nop

    .line 641
    :array_0
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static inflate(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)LC/d;
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0, p1, p2}, LC/d;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)LC/d;

    .line 2
    .line 3
    .line 4
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object p0

    .line 6
    :catch_0
    move-exception p0

    .line 7
    const-string p1, "ComplexColorCompat"

    .line 8
    .line 9
    const-string p2, "Failed to inflate ComplexColor."

    .line 10
    .line 11
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 12
    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    return-object p0
.end method


# virtual methods
.method public getColor()I
    .locals 1

    .line 1
    iget v0, p0, LC/d;->c:I

    .line 2
    .line 3
    return v0
.end method

.method public getShader()Landroid/graphics/Shader;
    .locals 1

    .line 1
    iget-object v0, p0, LC/d;->a:Landroid/graphics/Shader;

    .line 2
    .line 3
    return-object v0
.end method

.method public isGradient()Z
    .locals 1

    .line 1
    iget-object v0, p0, LC/d;->a:Landroid/graphics/Shader;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    return v0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    return v0
.end method

.method public isStateful()Z
    .locals 1

    .line 1
    iget-object v0, p0, LC/d;->a:Landroid/graphics/Shader;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, LC/d;->b:Landroid/content/res/ColorStateList;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    return v0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    return v0
.end method

.method public onStateChanged([I)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, LC/d;->isStateful()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, LC/d;->b:Landroid/content/res/ColorStateList;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-virtual {v0, p1, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    iget v0, p0, LC/d;->c:I

    .line 18
    .line 19
    if-eq p1, v0, :cond_0

    .line 20
    .line 21
    iput p1, p0, LC/d;->c:I

    .line 22
    .line 23
    const/4 p1, 0x1

    .line 24
    return p1

    .line 25
    :cond_0
    const/4 p1, 0x0

    .line 26
    return p1
.end method

.method public setColor(I)V
    .locals 0

    .line 1
    iput p1, p0, LC/d;->c:I

    .line 2
    .line 3
    return-void
.end method

.method public willDraw()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, LC/d;->isGradient()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget v0, p0, LC/d;->c:I

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    return v0

    .line 14
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 15
    return v0
.end method
