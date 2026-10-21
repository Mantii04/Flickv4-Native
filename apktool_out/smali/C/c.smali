.class public abstract LC/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/ThreadLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, LC/c;->a:Ljava/lang/ThreadLocal;

    .line 7
    .line 8
    return-void
.end method

.method public static createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x2

    .line 10
    if-eq v1, v2, :cond_0

    .line 11
    .line 12
    const/4 v3, 0x1

    .line 13
    if-eq v1, v3, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    if-ne v1, v2, :cond_1

    .line 17
    .line 18
    invoke-static {p0, p1, v0, p2}, LC/c;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :cond_1
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 24
    .line 25
    const-string p1, "No start tag found"

    .line 26
    .line 27
    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p0
.end method

.method public static createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    const-string v4, "selector"

    .line 12
    .line 13
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    if-eqz v4, :cond_11

    .line 18
    .line 19
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    const/4 v4, 0x1

    .line 24
    add-int/2addr v3, v4

    .line 25
    const/16 v5, 0x14

    .line 26
    .line 27
    new-array v6, v5, [[I

    .line 28
    .line 29
    new-array v5, v5, [I

    .line 30
    .line 31
    const/4 v7, 0x0

    .line 32
    move v8, v7

    .line 33
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 34
    .line 35
    .line 36
    move-result v9

    .line 37
    if-eq v9, v4, :cond_10

    .line 38
    .line 39
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 40
    .line 41
    .line 42
    move-result v10

    .line 43
    if-ge v10, v3, :cond_0

    .line 44
    .line 45
    const/4 v11, 0x3

    .line 46
    if-eq v9, v11, :cond_10

    .line 47
    .line 48
    :cond_0
    const/4 v11, 0x2

    .line 49
    if-ne v9, v11, :cond_f

    .line 50
    .line 51
    if-gt v10, v3, :cond_f

    .line 52
    .line 53
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v9

    .line 57
    const-string v10, "item"

    .line 58
    .line 59
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v9

    .line 63
    if-nez v9, :cond_1

    .line 64
    .line 65
    goto/16 :goto_a

    .line 66
    .line 67
    :cond_1
    sget-object v9, Landroidx/core/R$styleable;->ColorStateListItem:[I

    .line 68
    .line 69
    if-nez v2, :cond_2

    .line 70
    .line 71
    invoke-virtual {v0, v1, v9}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 72
    .line 73
    .line 74
    move-result-object v9

    .line 75
    goto :goto_1

    .line 76
    :cond_2
    invoke-virtual {v2, v1, v9, v7, v7}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 77
    .line 78
    .line 79
    move-result-object v9

    .line 80
    :goto_1
    sget v10, Landroidx/core/R$styleable;->ColorStateListItem_android_color:I

    .line 81
    .line 82
    const/4 v11, -0x1

    .line 83
    invoke-virtual {v9, v10, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 84
    .line 85
    .line 86
    move-result v10

    .line 87
    const v12, -0xff01

    .line 88
    .line 89
    .line 90
    const/16 v13, 0x1f

    .line 91
    .line 92
    if-eq v10, v11, :cond_5

    .line 93
    .line 94
    sget-object v11, LC/c;->a:Ljava/lang/ThreadLocal;

    .line 95
    .line 96
    invoke-virtual {v11}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v14

    .line 100
    check-cast v14, Landroid/util/TypedValue;

    .line 101
    .line 102
    if-nez v14, :cond_3

    .line 103
    .line 104
    new-instance v14, Landroid/util/TypedValue;

    .line 105
    .line 106
    invoke-direct {v14}, Landroid/util/TypedValue;-><init>()V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v11, v14}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    :cond_3
    invoke-virtual {v0, v10, v14, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 113
    .line 114
    .line 115
    iget v11, v14, Landroid/util/TypedValue;->type:I

    .line 116
    .line 117
    const/16 v14, 0x1c

    .line 118
    .line 119
    if-lt v11, v14, :cond_4

    .line 120
    .line 121
    if-gt v11, v13, :cond_4

    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_4
    :try_start_0
    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    .line 125
    .line 126
    .line 127
    move-result-object v10

    .line 128
    invoke-static {v0, v10, v2}, LC/c;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    .line 129
    .line 130
    .line 131
    move-result-object v10

    .line 132
    invoke-virtual {v10}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 133
    .line 134
    .line 135
    move-result v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    goto :goto_3

    .line 137
    :catch_0
    sget v10, Landroidx/core/R$styleable;->ColorStateListItem_android_color:I

    .line 138
    .line 139
    invoke-virtual {v9, v10, v12}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 140
    .line 141
    .line 142
    move-result v10

    .line 143
    goto :goto_3

    .line 144
    :cond_5
    :goto_2
    sget v10, Landroidx/core/R$styleable;->ColorStateListItem_android_color:I

    .line 145
    .line 146
    invoke-virtual {v9, v10, v12}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 147
    .line 148
    .line 149
    move-result v10

    .line 150
    :goto_3
    sget v11, Landroidx/core/R$styleable;->ColorStateListItem_android_alpha:I

    .line 151
    .line 152
    invoke-virtual {v9, v11}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 153
    .line 154
    .line 155
    move-result v11

    .line 156
    const/high16 v12, 0x3f800000    # 1.0f

    .line 157
    .line 158
    if-eqz v11, :cond_6

    .line 159
    .line 160
    sget v11, Landroidx/core/R$styleable;->ColorStateListItem_android_alpha:I

    .line 161
    .line 162
    invoke-virtual {v9, v11, v12}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 163
    .line 164
    .line 165
    move-result v11

    .line 166
    goto :goto_4

    .line 167
    :cond_6
    sget v11, Landroidx/core/R$styleable;->ColorStateListItem_alpha:I

    .line 168
    .line 169
    invoke-virtual {v9, v11}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 170
    .line 171
    .line 172
    move-result v11

    .line 173
    if-eqz v11, :cond_7

    .line 174
    .line 175
    sget v11, Landroidx/core/R$styleable;->ColorStateListItem_alpha:I

    .line 176
    .line 177
    invoke-virtual {v9, v11, v12}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 178
    .line 179
    .line 180
    move-result v11

    .line 181
    goto :goto_4

    .line 182
    :cond_7
    move v11, v12

    .line 183
    :goto_4
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 184
    .line 185
    const/high16 v15, -0x40800000    # -1.0f

    .line 186
    .line 187
    if-lt v14, v13, :cond_8

    .line 188
    .line 189
    sget v13, Landroidx/core/R$styleable;->ColorStateListItem_android_lStar:I

    .line 190
    .line 191
    invoke-virtual {v9, v13}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 192
    .line 193
    .line 194
    move-result v13

    .line 195
    if-eqz v13, :cond_8

    .line 196
    .line 197
    sget v13, Landroidx/core/R$styleable;->ColorStateListItem_android_lStar:I

    .line 198
    .line 199
    invoke-virtual {v9, v13, v15}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 200
    .line 201
    .line 202
    move-result v13

    .line 203
    goto :goto_5

    .line 204
    :cond_8
    sget v13, Landroidx/core/R$styleable;->ColorStateListItem_lStar:I

    .line 205
    .line 206
    invoke-virtual {v9, v13, v15}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 207
    .line 208
    .line 209
    move-result v13

    .line 210
    :goto_5
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 211
    .line 212
    .line 213
    invoke-interface {v1}, Landroid/util/AttributeSet;->getAttributeCount()I

    .line 214
    .line 215
    .line 216
    move-result v9

    .line 217
    new-array v14, v9, [I

    .line 218
    .line 219
    move v4, v7

    .line 220
    move v15, v4

    .line 221
    :goto_6
    if-ge v15, v9, :cond_b

    .line 222
    .line 223
    move/from16 v16, v12

    .line 224
    .line 225
    invoke-interface {v1, v15}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    .line 226
    .line 227
    .line 228
    move-result v12

    .line 229
    const v7, 0x10101a5

    .line 230
    .line 231
    .line 232
    if-eq v12, v7, :cond_a

    .line 233
    .line 234
    const v7, 0x101031f

    .line 235
    .line 236
    .line 237
    if-eq v12, v7, :cond_a

    .line 238
    .line 239
    sget v7, Landroidx/core/R$attr;->alpha:I

    .line 240
    .line 241
    if-eq v12, v7, :cond_a

    .line 242
    .line 243
    sget v7, Landroidx/core/R$attr;->lStar:I

    .line 244
    .line 245
    if-eq v12, v7, :cond_a

    .line 246
    .line 247
    add-int/lit8 v7, v4, 0x1

    .line 248
    .line 249
    const/4 v0, 0x0

    .line 250
    invoke-interface {v1, v15, v0}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    .line 251
    .line 252
    .line 253
    move-result v17

    .line 254
    if-eqz v17, :cond_9

    .line 255
    .line 256
    goto :goto_7

    .line 257
    :cond_9
    neg-int v12, v12

    .line 258
    :goto_7
    aput v12, v14, v4

    .line 259
    .line 260
    move v4, v7

    .line 261
    :cond_a
    add-int/lit8 v15, v15, 0x1

    .line 262
    .line 263
    move-object/from16 v0, p0

    .line 264
    .line 265
    move/from16 v12, v16

    .line 266
    .line 267
    const/4 v7, 0x0

    .line 268
    goto :goto_6

    .line 269
    :cond_b
    move/from16 v16, v12

    .line 270
    .line 271
    invoke-static {v14, v4}, Landroid/util/StateSet;->trimStateSet([II)[I

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    const/4 v4, 0x0

    .line 276
    cmpl-float v4, v13, v4

    .line 277
    .line 278
    if-ltz v4, :cond_c

    .line 279
    .line 280
    const/high16 v4, 0x42c80000    # 100.0f

    .line 281
    .line 282
    cmpg-float v4, v13, v4

    .line 283
    .line 284
    if-gtz v4, :cond_c

    .line 285
    .line 286
    const/4 v4, 0x1

    .line 287
    goto :goto_8

    .line 288
    :cond_c
    const/4 v4, 0x0

    .line 289
    :goto_8
    cmpl-float v7, v11, v16

    .line 290
    .line 291
    if-nez v7, :cond_d

    .line 292
    .line 293
    if-nez v4, :cond_d

    .line 294
    .line 295
    goto :goto_9

    .line 296
    :cond_d
    invoke-static {v10}, Landroid/graphics/Color;->alpha(I)I

    .line 297
    .line 298
    .line 299
    move-result v7

    .line 300
    int-to-float v7, v7

    .line 301
    mul-float/2addr v7, v11

    .line 302
    const/high16 v9, 0x3f000000    # 0.5f

    .line 303
    .line 304
    add-float/2addr v7, v9

    .line 305
    float-to-int v7, v7

    .line 306
    const/16 v9, 0xff

    .line 307
    .line 308
    const/4 v11, 0x0

    .line 309
    invoke-static {v7, v11, v9}, LG/a;->clamp(III)I

    .line 310
    .line 311
    .line 312
    move-result v7

    .line 313
    if-eqz v4, :cond_e

    .line 314
    .line 315
    invoke-static {v10}, LC/a;->a(I)LC/a;

    .line 316
    .line 317
    .line 318
    move-result-object v4

    .line 319
    iget v9, v4, LC/a;->a:F

    .line 320
    .line 321
    iget v4, v4, LC/a;->b:F

    .line 322
    .line 323
    invoke-static {v9, v4, v13}, LC/a;->toColor(FFF)I

    .line 324
    .line 325
    .line 326
    move-result v10

    .line 327
    :cond_e
    const v4, 0xffffff

    .line 328
    .line 329
    .line 330
    and-int/2addr v4, v10

    .line 331
    shl-int/lit8 v7, v7, 0x18

    .line 332
    .line 333
    or-int v10, v4, v7

    .line 334
    .line 335
    :goto_9
    invoke-static {v5, v8, v10}, LC/l;->append([III)[I

    .line 336
    .line 337
    .line 338
    move-result-object v5

    .line 339
    invoke-static {v6, v8, v0}, LC/l;->append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    .line 340
    .line 341
    .line 342
    move-result-object v0

    .line 343
    move-object v6, v0

    .line 344
    check-cast v6, [[I

    .line 345
    .line 346
    add-int/lit8 v8, v8, 0x1

    .line 347
    .line 348
    :cond_f
    :goto_a
    move-object/from16 v0, p0

    .line 349
    .line 350
    const/4 v4, 0x1

    .line 351
    const/4 v7, 0x0

    .line 352
    goto/16 :goto_0

    .line 353
    .line 354
    :cond_10
    new-array v0, v8, [I

    .line 355
    .line 356
    new-array v1, v8, [[I

    .line 357
    .line 358
    const/4 v11, 0x0

    .line 359
    invoke-static {v5, v11, v0, v11, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 360
    .line 361
    .line 362
    invoke-static {v6, v11, v1, v11, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 363
    .line 364
    .line 365
    new-instance v2, Landroid/content/res/ColorStateList;

    .line 366
    .line 367
    invoke-direct {v2, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 368
    .line 369
    .line 370
    return-object v2

    .line 371
    :cond_11
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 372
    .line 373
    new-instance v1, Ljava/lang/StringBuilder;

    .line 374
    .line 375
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 376
    .line 377
    .line 378
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v2

    .line 382
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    .line 384
    .line 385
    const-string v2, ": invalid color state list tag "

    .line 386
    .line 387
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    .line 389
    .line 390
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    .line 392
    .line 393
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v1

    .line 397
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 398
    .line 399
    .line 400
    throw v0
.end method

.method public static inflate(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p0, p1, p2}, LC/c;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    .line 6
    .line 7
    .line 8
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    return-object p0

    .line 10
    :catch_0
    move-exception p0

    .line 11
    const-string p1, "CSLCompat"

    .line 12
    .line 13
    const-string p2, "Failed to inflate ColorStateList."

    .line 14
    .line 15
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16
    .line 17
    .line 18
    const/4 p0, 0x0

    .line 19
    return-object p0
.end method
