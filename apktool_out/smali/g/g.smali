.class public final Lg/g;
.super Lg/p;
.source "SourceFile"


# instance fields
.field public A:I

.field public B:I

.field public C:Z

.field public y:Lg/b;

.field public z:Lg/f;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, v0}, Lg/g;-><init>(Lg/b;Landroid/content/res/Resources;)V

    return-void
.end method

.method public constructor <init>(Lg/b;Landroid/content/res/Resources;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lg/l;-><init>()V

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lg/g;->A:I

    .line 4
    iput v0, p0, Lg/g;->B:I

    .line 5
    new-instance v0, Lg/b;

    invoke-direct {v0, p1, p0, p2}, Lg/b;-><init>(Lg/b;Lg/g;Landroid/content/res/Resources;)V

    .line 6
    invoke-virtual {p0, v0}, Lg/g;->d(Lg/b;)V

    .line 7
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lg/g;->onStateChange([I)Z

    .line 8
    invoke-virtual {p0}, Lg/g;->jumpToCurrentState()V

    return-void
.end method

.method public static createFromXmlInner(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Lg/g;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "animated-selector"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    new-instance v2, Lg/g;

    .line 14
    .line 15
    invoke-direct {v2}, Lg/g;-><init>()V

    .line 16
    .line 17
    .line 18
    move-object v3, p0

    .line 19
    move-object v4, p1

    .line 20
    move-object v5, p2

    .line 21
    move-object v6, p3

    .line 22
    move-object v7, p4

    .line 23
    invoke-virtual/range {v2 .. v7}, Lg/g;->inflate(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 24
    .line 25
    .line 26
    return-object v2

    .line 27
    :cond_0
    move-object v5, p2

    .line 28
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 29
    .line 30
    new-instance p1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string p2, ": invalid animated-selector tag "

    .line 43
    .line 44
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw p0
.end method


# virtual methods
.method public final d(Lg/b;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lg/l;->b:Lg/b;

    .line 2
    .line 3
    iget v0, p0, Lg/l;->p:I

    .line 4
    .line 5
    if-ltz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Lg/k;->getChild(I)Landroid/graphics/drawable/Drawable;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lg/l;->f:Landroid/graphics/drawable/Drawable;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lg/l;->b(Landroid/graphics/drawable/Drawable;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lg/l;->j:Landroid/graphics/drawable/Drawable;

    .line 20
    .line 21
    iput-object p1, p0, Lg/p;->w:Lg/o;

    .line 22
    .line 23
    iput-object p1, p0, Lg/g;->y:Lg/b;

    .line 24
    .line 25
    return-void
.end method

.method public inflate(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 21
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
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p4

    .line 8
    .line 9
    move-object/from16 v4, p5

    .line 10
    .line 11
    sget-object v5, Landroidx/appcompat/resources/R$styleable;->AnimatedStateListDrawableCompat:[I

    .line 12
    .line 13
    invoke-static {v2, v4, v3, v5}, LC/v;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    sget v6, Landroidx/appcompat/resources/R$styleable;->AnimatedStateListDrawableCompat_android_visible:I

    .line 18
    .line 19
    const/4 v7, 0x1

    .line 20
    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 21
    .line 22
    .line 23
    move-result v6

    .line 24
    invoke-virtual {v0, v6, v7}, Lg/g;->setVisible(ZZ)Z

    .line 25
    .line 26
    .line 27
    iget-object v6, v0, Lg/g;->y:Lg/b;

    .line 28
    .line 29
    iget v8, v6, Lg/k;->d:I

    .line 30
    .line 31
    invoke-static {v5}, Lh/c;->getChangingConfigurations(Landroid/content/res/TypedArray;)I

    .line 32
    .line 33
    .line 34
    move-result v9

    .line 35
    or-int/2addr v8, v9

    .line 36
    iput v8, v6, Lg/k;->d:I

    .line 37
    .line 38
    sget v8, Landroidx/appcompat/resources/R$styleable;->AnimatedStateListDrawableCompat_android_variablePadding:I

    .line 39
    .line 40
    iget-boolean v9, v6, Lg/k;->i:Z

    .line 41
    .line 42
    invoke-virtual {v5, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 43
    .line 44
    .line 45
    move-result v8

    .line 46
    invoke-virtual {v6, v8}, Lg/k;->setVariablePadding(Z)V

    .line 47
    .line 48
    .line 49
    sget v8, Landroidx/appcompat/resources/R$styleable;->AnimatedStateListDrawableCompat_android_constantSize:I

    .line 50
    .line 51
    iget-boolean v9, v6, Lg/k;->l:Z

    .line 52
    .line 53
    invoke-virtual {v5, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 54
    .line 55
    .line 56
    move-result v8

    .line 57
    invoke-virtual {v6, v8}, Lg/k;->setConstantSize(Z)V

    .line 58
    .line 59
    .line 60
    sget v8, Landroidx/appcompat/resources/R$styleable;->AnimatedStateListDrawableCompat_android_enterFadeDuration:I

    .line 61
    .line 62
    iget v9, v6, Lg/k;->y:I

    .line 63
    .line 64
    invoke-virtual {v5, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 65
    .line 66
    .line 67
    move-result v8

    .line 68
    invoke-virtual {v6, v8}, Lg/k;->setEnterFadeDuration(I)V

    .line 69
    .line 70
    .line 71
    sget v8, Landroidx/appcompat/resources/R$styleable;->AnimatedStateListDrawableCompat_android_exitFadeDuration:I

    .line 72
    .line 73
    iget v9, v6, Lg/k;->z:I

    .line 74
    .line 75
    invoke-virtual {v5, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 76
    .line 77
    .line 78
    move-result v8

    .line 79
    invoke-virtual {v6, v8}, Lg/k;->setExitFadeDuration(I)V

    .line 80
    .line 81
    .line 82
    sget v8, Landroidx/appcompat/resources/R$styleable;->AnimatedStateListDrawableCompat_android_dither:I

    .line 83
    .line 84
    iget-boolean v6, v6, Lg/k;->w:Z

    .line 85
    .line 86
    invoke-virtual {v5, v8, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 87
    .line 88
    .line 89
    move-result v6

    .line 90
    invoke-virtual {v0, v6}, Lg/l;->setDither(Z)V

    .line 91
    .line 92
    .line 93
    iget-object v6, v0, Lg/l;->b:Lg/b;

    .line 94
    .line 95
    const/4 v8, 0x0

    .line 96
    if-eqz v2, :cond_1

    .line 97
    .line 98
    iput-object v2, v6, Lg/k;->b:Landroid/content/res/Resources;

    .line 99
    .line 100
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 101
    .line 102
    .line 103
    move-result-object v9

    .line 104
    iget v9, v9, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 105
    .line 106
    if-nez v9, :cond_0

    .line 107
    .line 108
    const/16 v9, 0xa0

    .line 109
    .line 110
    :cond_0
    iget v10, v6, Lg/k;->c:I

    .line 111
    .line 112
    iput v9, v6, Lg/k;->c:I

    .line 113
    .line 114
    if-eq v10, v9, :cond_2

    .line 115
    .line 116
    iput-boolean v8, v6, Lg/k;->m:Z

    .line 117
    .line 118
    iput-boolean v8, v6, Lg/k;->j:Z

    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_1
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    .line 123
    .line 124
    :cond_2
    :goto_0
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 125
    .line 126
    .line 127
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 128
    .line 129
    .line 130
    move-result v5

    .line 131
    add-int/2addr v5, v7

    .line 132
    :goto_1
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 133
    .line 134
    .line 135
    move-result v6

    .line 136
    if-eq v6, v7, :cond_1a

    .line 137
    .line 138
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 139
    .line 140
    .line 141
    move-result v9

    .line 142
    if-ge v9, v5, :cond_3

    .line 143
    .line 144
    const/4 v10, 0x3

    .line 145
    if-eq v6, v10, :cond_1a

    .line 146
    .line 147
    :cond_3
    const/4 v10, 0x2

    .line 148
    if-eq v6, v10, :cond_4

    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_4
    if-le v9, v5, :cond_5

    .line 152
    .line 153
    goto :goto_1

    .line 154
    :cond_5
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v6

    .line 158
    const-string v9, "item"

    .line 159
    .line 160
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v6

    .line 164
    const/4 v9, 0x4

    .line 165
    const/4 v11, 0x0

    .line 166
    const/4 v12, -0x1

    .line 167
    if-eqz v6, :cond_f

    .line 168
    .line 169
    sget-object v6, Landroidx/appcompat/resources/R$styleable;->AnimatedStateListDrawableItem:[I

    .line 170
    .line 171
    invoke-static {v2, v4, v3, v6}, LC/v;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 172
    .line 173
    .line 174
    move-result-object v6

    .line 175
    sget v13, Landroidx/appcompat/resources/R$styleable;->AnimatedStateListDrawableItem_android_id:I

    .line 176
    .line 177
    invoke-virtual {v6, v13, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 178
    .line 179
    .line 180
    move-result v13

    .line 181
    sget v14, Landroidx/appcompat/resources/R$styleable;->AnimatedStateListDrawableItem_android_drawable:I

    .line 182
    .line 183
    invoke-virtual {v6, v14, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 184
    .line 185
    .line 186
    move-result v12

    .line 187
    if-lez v12, :cond_6

    .line 188
    .line 189
    invoke-static {}, Ll/D1;->get()Ll/D1;

    .line 190
    .line 191
    .line 192
    move-result-object v11

    .line 193
    invoke-virtual {v11, v1, v12}, Ll/D1;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 194
    .line 195
    .line 196
    move-result-object v11

    .line 197
    :cond_6
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 198
    .line 199
    .line 200
    invoke-interface {v3}, Landroid/util/AttributeSet;->getAttributeCount()I

    .line 201
    .line 202
    .line 203
    move-result v6

    .line 204
    new-array v12, v6, [I

    .line 205
    .line 206
    move v14, v8

    .line 207
    move v15, v14

    .line 208
    :goto_2
    if-ge v14, v6, :cond_9

    .line 209
    .line 210
    invoke-interface {v3, v14}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    .line 211
    .line 212
    .line 213
    move-result v7

    .line 214
    if-eqz v7, :cond_8

    .line 215
    .line 216
    const v10, 0x10100d0

    .line 217
    .line 218
    .line 219
    if-eq v7, v10, :cond_8

    .line 220
    .line 221
    const v10, 0x1010199

    .line 222
    .line 223
    .line 224
    if-eq v7, v10, :cond_8

    .line 225
    .line 226
    add-int/lit8 v10, v15, 0x1

    .line 227
    .line 228
    invoke-interface {v3, v14, v8}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    .line 229
    .line 230
    .line 231
    move-result v16

    .line 232
    if-eqz v16, :cond_7

    .line 233
    .line 234
    goto :goto_3

    .line 235
    :cond_7
    neg-int v7, v7

    .line 236
    :goto_3
    aput v7, v12, v15

    .line 237
    .line 238
    move v15, v10

    .line 239
    :cond_8
    add-int/lit8 v14, v14, 0x1

    .line 240
    .line 241
    const/4 v7, 0x1

    .line 242
    const/4 v10, 0x2

    .line 243
    goto :goto_2

    .line 244
    :cond_9
    invoke-static {v12, v15}, Landroid/util/StateSet;->trimStateSet([II)[I

    .line 245
    .line 246
    .line 247
    move-result-object v6

    .line 248
    const-string v7, ": <item> tag requires a \'drawable\' attribute or child tag defining a drawable"

    .line 249
    .line 250
    if-nez v11, :cond_d

    .line 251
    .line 252
    :goto_4
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 253
    .line 254
    .line 255
    move-result v10

    .line 256
    if-ne v10, v9, :cond_a

    .line 257
    .line 258
    goto :goto_4

    .line 259
    :cond_a
    const/4 v11, 0x2

    .line 260
    if-ne v10, v11, :cond_c

    .line 261
    .line 262
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v9

    .line 266
    const-string v10, "vector"

    .line 267
    .line 268
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 269
    .line 270
    .line 271
    move-result v9

    .line 272
    if-eqz v9, :cond_b

    .line 273
    .line 274
    invoke-static/range {p2 .. p5}, Ly1/v;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Ly1/v;

    .line 275
    .line 276
    .line 277
    move-result-object v11

    .line 278
    goto :goto_5

    .line 279
    :cond_b
    invoke-static/range {p2 .. p5}, Lh/c;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 280
    .line 281
    .line 282
    move-result-object v11

    .line 283
    goto :goto_5

    .line 284
    :cond_c
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    .line 285
    .line 286
    new-instance v2, Ljava/lang/StringBuilder;

    .line 287
    .line 288
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 289
    .line 290
    .line 291
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v3

    .line 295
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v2

    .line 305
    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    throw v1

    .line 309
    :cond_d
    :goto_5
    if-eqz v11, :cond_e

    .line 310
    .line 311
    iget-object v7, v0, Lg/g;->y:Lg/b;

    .line 312
    .line 313
    invoke-virtual {v7, v11}, Lg/k;->addChild(Landroid/graphics/drawable/Drawable;)I

    .line 314
    .line 315
    .line 316
    move-result v9

    .line 317
    iget-object v10, v7, Lg/o;->H:[[I

    .line 318
    .line 319
    aput-object v6, v10, v9

    .line 320
    .line 321
    iget-object v6, v7, Lg/b;->J:Lp/r;

    .line 322
    .line 323
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 324
    .line 325
    .line 326
    move-result-object v7

    .line 327
    invoke-virtual {v6, v9, v7}, Lp/r;->put(ILjava/lang/Object;)V

    .line 328
    .line 329
    .line 330
    :goto_6
    const/4 v7, 0x1

    .line 331
    goto/16 :goto_1

    .line 332
    .line 333
    :cond_e
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    .line 334
    .line 335
    new-instance v2, Ljava/lang/StringBuilder;

    .line 336
    .line 337
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 338
    .line 339
    .line 340
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v3

    .line 344
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    .line 346
    .line 347
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    .line 349
    .line 350
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v2

    .line 354
    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 355
    .line 356
    .line 357
    throw v1

    .line 358
    :cond_f
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v6

    .line 362
    const-string v7, "transition"

    .line 363
    .line 364
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 365
    .line 366
    .line 367
    move-result v6

    .line 368
    if-eqz v6, :cond_19

    .line 369
    .line 370
    sget-object v6, Landroidx/appcompat/resources/R$styleable;->AnimatedStateListDrawableTransition:[I

    .line 371
    .line 372
    invoke-static {v2, v4, v3, v6}, LC/v;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 373
    .line 374
    .line 375
    move-result-object v6

    .line 376
    sget v7, Landroidx/appcompat/resources/R$styleable;->AnimatedStateListDrawableTransition_android_fromId:I

    .line 377
    .line 378
    invoke-virtual {v6, v7, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 379
    .line 380
    .line 381
    move-result v7

    .line 382
    sget v10, Landroidx/appcompat/resources/R$styleable;->AnimatedStateListDrawableTransition_android_toId:I

    .line 383
    .line 384
    invoke-virtual {v6, v10, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 385
    .line 386
    .line 387
    move-result v10

    .line 388
    sget v13, Landroidx/appcompat/resources/R$styleable;->AnimatedStateListDrawableTransition_android_drawable:I

    .line 389
    .line 390
    invoke-virtual {v6, v13, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 391
    .line 392
    .line 393
    move-result v13

    .line 394
    if-lez v13, :cond_10

    .line 395
    .line 396
    invoke-static {}, Ll/D1;->get()Ll/D1;

    .line 397
    .line 398
    .line 399
    move-result-object v11

    .line 400
    invoke-virtual {v11, v1, v13}, Ll/D1;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 401
    .line 402
    .line 403
    move-result-object v11

    .line 404
    :cond_10
    sget v13, Landroidx/appcompat/resources/R$styleable;->AnimatedStateListDrawableTransition_android_reversible:I

    .line 405
    .line 406
    invoke-virtual {v6, v13, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 407
    .line 408
    .line 409
    move-result v13

    .line 410
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 411
    .line 412
    .line 413
    const-string v6, ": <transition> tag requires a \'drawable\' attribute or child tag defining a drawable"

    .line 414
    .line 415
    if-nez v11, :cond_14

    .line 416
    .line 417
    :goto_7
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 418
    .line 419
    .line 420
    move-result v11

    .line 421
    if-ne v11, v9, :cond_11

    .line 422
    .line 423
    goto :goto_7

    .line 424
    :cond_11
    const/4 v14, 0x2

    .line 425
    if-ne v11, v14, :cond_13

    .line 426
    .line 427
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 428
    .line 429
    .line 430
    move-result-object v9

    .line 431
    const-string v11, "animated-vector"

    .line 432
    .line 433
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 434
    .line 435
    .line 436
    move-result v9

    .line 437
    if-eqz v9, :cond_12

    .line 438
    .line 439
    invoke-static/range {p1 .. p5}, Ly1/h;->createFromXmlInner(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Ly1/h;

    .line 440
    .line 441
    .line 442
    move-result-object v11

    .line 443
    goto :goto_8

    .line 444
    :cond_12
    invoke-static/range {p2 .. p5}, Lh/c;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 445
    .line 446
    .line 447
    move-result-object v11

    .line 448
    goto :goto_8

    .line 449
    :cond_13
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    .line 450
    .line 451
    new-instance v2, Ljava/lang/StringBuilder;

    .line 452
    .line 453
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 454
    .line 455
    .line 456
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 457
    .line 458
    .line 459
    move-result-object v3

    .line 460
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    .line 462
    .line 463
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    .line 465
    .line 466
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 467
    .line 468
    .line 469
    move-result-object v2

    .line 470
    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 471
    .line 472
    .line 473
    throw v1

    .line 474
    :cond_14
    :goto_8
    if-eqz v11, :cond_18

    .line 475
    .line 476
    if-eq v7, v12, :cond_17

    .line 477
    .line 478
    if-eq v10, v12, :cond_17

    .line 479
    .line 480
    iget-object v6, v0, Lg/g;->y:Lg/b;

    .line 481
    .line 482
    invoke-virtual {v6, v11}, Lg/k;->addChild(Landroid/graphics/drawable/Drawable;)I

    .line 483
    .line 484
    .line 485
    move-result v9

    .line 486
    int-to-long v11, v7

    .line 487
    const/16 v7, 0x20

    .line 488
    .line 489
    shl-long v14, v11, v7

    .line 490
    .line 491
    move/from16 v16, v7

    .line 492
    .line 493
    int-to-long v7, v10

    .line 494
    or-long/2addr v14, v7

    .line 495
    if-eqz v13, :cond_15

    .line 496
    .line 497
    const-wide v17, 0x200000000L

    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    goto :goto_9

    .line 503
    :cond_15
    const-wide/16 v17, 0x0

    .line 504
    .line 505
    :goto_9
    iget-object v10, v6, Lg/b;->I:Lp/n;

    .line 506
    .line 507
    int-to-long v1, v9

    .line 508
    or-long v19, v1, v17

    .line 509
    .line 510
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 511
    .line 512
    .line 513
    move-result-object v9

    .line 514
    invoke-virtual {v10, v14, v15, v9}, Lp/n;->append(JLjava/lang/Object;)V

    .line 515
    .line 516
    .line 517
    if-eqz v13, :cond_16

    .line 518
    .line 519
    shl-long v7, v7, v16

    .line 520
    .line 521
    or-long/2addr v7, v11

    .line 522
    iget-object v6, v6, Lg/b;->I:Lp/n;

    .line 523
    .line 524
    const-wide v9, 0x100000000L

    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    or-long/2addr v1, v9

    .line 530
    or-long v1, v1, v17

    .line 531
    .line 532
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 533
    .line 534
    .line 535
    move-result-object v1

    .line 536
    invoke-virtual {v6, v7, v8, v1}, Lp/n;->append(JLjava/lang/Object;)V

    .line 537
    .line 538
    .line 539
    :cond_16
    move-object/from16 v1, p1

    .line 540
    .line 541
    move-object/from16 v2, p2

    .line 542
    .line 543
    const/4 v7, 0x1

    .line 544
    const/4 v8, 0x0

    .line 545
    goto/16 :goto_1

    .line 546
    .line 547
    :cond_17
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    .line 548
    .line 549
    new-instance v2, Ljava/lang/StringBuilder;

    .line 550
    .line 551
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 552
    .line 553
    .line 554
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 555
    .line 556
    .line 557
    move-result-object v3

    .line 558
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    .line 560
    .line 561
    const-string v3, ": <transition> tag requires \'fromId\' & \'toId\' attributes"

    .line 562
    .line 563
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    .line 565
    .line 566
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 567
    .line 568
    .line 569
    move-result-object v2

    .line 570
    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 571
    .line 572
    .line 573
    throw v1

    .line 574
    :cond_18
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    .line 575
    .line 576
    new-instance v2, Ljava/lang/StringBuilder;

    .line 577
    .line 578
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 579
    .line 580
    .line 581
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 582
    .line 583
    .line 584
    move-result-object v3

    .line 585
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    .line 587
    .line 588
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    .line 590
    .line 591
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 592
    .line 593
    .line 594
    move-result-object v2

    .line 595
    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 596
    .line 597
    .line 598
    throw v1

    .line 599
    :cond_19
    move-object/from16 v1, p1

    .line 600
    .line 601
    move-object/from16 v2, p2

    .line 602
    .line 603
    goto/16 :goto_6

    .line 604
    .line 605
    :cond_1a
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 606
    .line 607
    .line 608
    move-result-object v1

    .line 609
    invoke-virtual {v0, v1}, Lg/g;->onStateChange([I)Z

    .line 610
    .line 611
    .line 612
    return-void
.end method

.method public isStateful()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public jumpToCurrentState()V
    .locals 1

    .line 1
    invoke-super {p0}, Lg/l;->jumpToCurrentState()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lg/g;->z:Lg/f;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lg/f;->stop()V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lg/g;->z:Lg/f;

    .line 13
    .line 14
    iget v0, p0, Lg/g;->A:I

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lg/l;->c(I)Z

    .line 17
    .line 18
    .line 19
    const/4 v0, -0x1

    .line 20
    iput v0, p0, Lg/g;->A:I

    .line 21
    .line 22
    iput v0, p0, Lg/g;->B:I

    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lg/g;->C:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0}, Lg/p;->mutate()Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-ne v0, p0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lg/g;->y:Lg/b;

    .line 12
    .line 13
    iget-object v1, v0, Lg/b;->I:Lp/n;

    .line 14
    .line 15
    invoke-virtual {v1}, Lp/n;->clone()Lp/n;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iput-object v1, v0, Lg/b;->I:Lp/n;

    .line 20
    .line 21
    iget-object v1, v0, Lg/b;->J:Lp/r;

    .line 22
    .line 23
    invoke-virtual {v1}, Lp/r;->clone()Lp/r;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    iput-object v1, v0, Lg/b;->J:Lp/r;

    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Lg/g;->C:Z

    .line 31
    .line 32
    :cond_0
    return-object p0
.end method

.method public onStateChange([I)Z
    .locals 14

    .line 1
    iget-object v0, p0, Lg/g;->y:Lg/b;

    .line 2
    .line 3
    iget-object v1, v0, Lg/o;->H:[[I

    .line 4
    .line 5
    invoke-virtual {v0}, Lg/k;->getChildCount()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x0

    .line 10
    move v4, v3

    .line 11
    :goto_0
    const/4 v5, -0x1

    .line 12
    if-ge v4, v2, :cond_1

    .line 13
    .line 14
    aget-object v6, v1, v4

    .line 15
    .line 16
    invoke-static {v6, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    .line 17
    .line 18
    .line 19
    move-result v6

    .line 20
    if-eqz v6, :cond_0

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    move v4, v5

    .line 27
    :goto_1
    if-ltz v4, :cond_2

    .line 28
    .line 29
    goto :goto_3

    .line 30
    :cond_2
    sget-object v1, Landroid/util/StateSet;->WILD_CARD:[I

    .line 31
    .line 32
    iget-object v2, v0, Lg/o;->H:[[I

    .line 33
    .line 34
    invoke-virtual {v0}, Lg/k;->getChildCount()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    move v4, v3

    .line 39
    :goto_2
    if-ge v4, v0, :cond_4

    .line 40
    .line 41
    aget-object v6, v2, v4

    .line 42
    .line 43
    invoke-static {v6, v1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    .line 44
    .line 45
    .line 46
    move-result v6

    .line 47
    if-eqz v6, :cond_3

    .line 48
    .line 49
    goto :goto_3

    .line 50
    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_4
    move v4, v5

    .line 54
    :goto_3
    iget v0, p0, Lg/l;->p:I

    .line 55
    .line 56
    if-eq v4, v0, :cond_11

    .line 57
    .line 58
    iget-object v1, p0, Lg/g;->z:Lg/f;

    .line 59
    .line 60
    const/4 v2, 0x1

    .line 61
    if-eqz v1, :cond_7

    .line 62
    .line 63
    iget v0, p0, Lg/g;->A:I

    .line 64
    .line 65
    if-ne v4, v0, :cond_5

    .line 66
    .line 67
    goto/16 :goto_9

    .line 68
    .line 69
    :cond_5
    iget v0, p0, Lg/g;->B:I

    .line 70
    .line 71
    if-ne v4, v0, :cond_6

    .line 72
    .line 73
    invoke-virtual {v1}, Lg/f;->canReverse()Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_6

    .line 78
    .line 79
    invoke-virtual {v1}, Lg/f;->reverse()V

    .line 80
    .line 81
    .line 82
    iget v0, p0, Lg/g;->B:I

    .line 83
    .line 84
    iput v0, p0, Lg/g;->A:I

    .line 85
    .line 86
    iput v4, p0, Lg/g;->B:I

    .line 87
    .line 88
    goto/16 :goto_9

    .line 89
    .line 90
    :cond_6
    iget v0, p0, Lg/g;->A:I

    .line 91
    .line 92
    invoke-virtual {v1}, Lg/f;->stop()V

    .line 93
    .line 94
    .line 95
    :cond_7
    const/4 v1, 0x0

    .line 96
    iput-object v1, p0, Lg/g;->z:Lg/f;

    .line 97
    .line 98
    iput v5, p0, Lg/g;->B:I

    .line 99
    .line 100
    iput v5, p0, Lg/g;->A:I

    .line 101
    .line 102
    iget-object v1, p0, Lg/g;->y:Lg/b;

    .line 103
    .line 104
    if-gez v0, :cond_8

    .line 105
    .line 106
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    .line 108
    .line 109
    move v5, v3

    .line 110
    goto :goto_4

    .line 111
    :cond_8
    iget-object v5, v1, Lg/b;->J:Lp/r;

    .line 112
    .line 113
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 114
    .line 115
    .line 116
    move-result-object v6

    .line 117
    invoke-virtual {v5, v0, v6}, Lp/r;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v5

    .line 121
    check-cast v5, Ljava/lang/Integer;

    .line 122
    .line 123
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 124
    .line 125
    .line 126
    move-result v5

    .line 127
    :goto_4
    if-gez v4, :cond_9

    .line 128
    .line 129
    move v6, v3

    .line 130
    goto :goto_5

    .line 131
    :cond_9
    iget-object v6, v1, Lg/b;->J:Lp/r;

    .line 132
    .line 133
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 134
    .line 135
    .line 136
    move-result-object v7

    .line 137
    invoke-virtual {v6, v4, v7}, Lp/r;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v6

    .line 141
    check-cast v6, Ljava/lang/Integer;

    .line 142
    .line 143
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 144
    .line 145
    .line 146
    move-result v6

    .line 147
    :goto_5
    if-eqz v6, :cond_10

    .line 148
    .line 149
    if-nez v5, :cond_a

    .line 150
    .line 151
    goto/16 :goto_8

    .line 152
    .line 153
    :cond_a
    int-to-long v7, v5

    .line 154
    const/16 v5, 0x20

    .line 155
    .line 156
    shl-long/2addr v7, v5

    .line 157
    int-to-long v5, v6

    .line 158
    or-long/2addr v5, v7

    .line 159
    iget-object v7, v1, Lg/b;->I:Lp/n;

    .line 160
    .line 161
    const-wide/16 v8, -0x1

    .line 162
    .line 163
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 164
    .line 165
    .line 166
    move-result-object v10

    .line 167
    invoke-virtual {v7, v5, v6, v10}, Lp/n;->get(JLjava/lang/Object;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v7

    .line 171
    check-cast v7, Ljava/lang/Long;

    .line 172
    .line 173
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 174
    .line 175
    .line 176
    move-result-wide v10

    .line 177
    long-to-int v7, v10

    .line 178
    if-gez v7, :cond_b

    .line 179
    .line 180
    goto/16 :goto_8

    .line 181
    .line 182
    :cond_b
    iget-object v10, v1, Lg/b;->I:Lp/n;

    .line 183
    .line 184
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 185
    .line 186
    .line 187
    move-result-object v11

    .line 188
    invoke-virtual {v10, v5, v6, v11}, Lp/n;->get(JLjava/lang/Object;)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v10

    .line 192
    check-cast v10, Ljava/lang/Long;

    .line 193
    .line 194
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    .line 195
    .line 196
    .line 197
    move-result-wide v10

    .line 198
    const-wide v12, 0x200000000L

    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    and-long/2addr v10, v12

    .line 204
    const-wide/16 v12, 0x0

    .line 205
    .line 206
    cmp-long v10, v10, v12

    .line 207
    .line 208
    if-eqz v10, :cond_c

    .line 209
    .line 210
    move v10, v2

    .line 211
    goto :goto_6

    .line 212
    :cond_c
    move v10, v3

    .line 213
    :goto_6
    invoke-virtual {p0, v7}, Lg/l;->c(I)Z

    .line 214
    .line 215
    .line 216
    invoke-virtual {p0}, Lg/l;->getCurrent()Landroid/graphics/drawable/Drawable;

    .line 217
    .line 218
    .line 219
    move-result-object v7

    .line 220
    instance-of v11, v7, Landroid/graphics/drawable/AnimationDrawable;

    .line 221
    .line 222
    if-eqz v11, :cond_e

    .line 223
    .line 224
    iget-object v1, v1, Lg/b;->I:Lp/n;

    .line 225
    .line 226
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 227
    .line 228
    .line 229
    move-result-object v8

    .line 230
    invoke-virtual {v1, v5, v6, v8}, Lp/n;->get(JLjava/lang/Object;)Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v1

    .line 234
    check-cast v1, Ljava/lang/Long;

    .line 235
    .line 236
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 237
    .line 238
    .line 239
    move-result-wide v5

    .line 240
    const-wide v8, 0x100000000L

    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    and-long/2addr v5, v8

    .line 246
    cmp-long v1, v5, v12

    .line 247
    .line 248
    if-eqz v1, :cond_d

    .line 249
    .line 250
    move v3, v2

    .line 251
    :cond_d
    new-instance v1, Lg/d;

    .line 252
    .line 253
    check-cast v7, Landroid/graphics/drawable/AnimationDrawable;

    .line 254
    .line 255
    invoke-direct {v1, v7, v3, v10}, Lg/d;-><init>(Landroid/graphics/drawable/AnimationDrawable;ZZ)V

    .line 256
    .line 257
    .line 258
    goto :goto_7

    .line 259
    :cond_e
    instance-of v1, v7, Ly1/h;

    .line 260
    .line 261
    if-eqz v1, :cond_f

    .line 262
    .line 263
    new-instance v1, Lg/c;

    .line 264
    .line 265
    check-cast v7, Ly1/h;

    .line 266
    .line 267
    invoke-direct {v1, v7}, Lg/c;-><init>(Ly1/h;)V

    .line 268
    .line 269
    .line 270
    goto :goto_7

    .line 271
    :cond_f
    instance-of v1, v7, Landroid/graphics/drawable/Animatable;

    .line 272
    .line 273
    if-eqz v1, :cond_10

    .line 274
    .line 275
    new-instance v1, Lg/a;

    .line 276
    .line 277
    check-cast v7, Landroid/graphics/drawable/Animatable;

    .line 278
    .line 279
    invoke-direct {v1, v7}, Lg/a;-><init>(Landroid/graphics/drawable/Animatable;)V

    .line 280
    .line 281
    .line 282
    :goto_7
    invoke-virtual {v1}, Lg/f;->start()V

    .line 283
    .line 284
    .line 285
    iput-object v1, p0, Lg/g;->z:Lg/f;

    .line 286
    .line 287
    iput v0, p0, Lg/g;->B:I

    .line 288
    .line 289
    iput v4, p0, Lg/g;->A:I

    .line 290
    .line 291
    goto :goto_9

    .line 292
    :cond_10
    :goto_8
    invoke-virtual {p0, v4}, Lg/l;->c(I)Z

    .line 293
    .line 294
    .line 295
    move-result v0

    .line 296
    if-eqz v0, :cond_11

    .line 297
    .line 298
    :goto_9
    move v3, v2

    .line 299
    :cond_11
    invoke-virtual {p0}, Lg/l;->getCurrent()Landroid/graphics/drawable/Drawable;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    if-eqz v0, :cond_12

    .line 304
    .line 305
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 306
    .line 307
    .line 308
    move-result p1

    .line 309
    or-int/2addr p1, v3

    .line 310
    return p1

    .line 311
    :cond_12
    return v3
.end method

.method public setVisible(ZZ)Z
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lg/l;->setVisible(ZZ)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lg/g;->z:Lg/f;

    .line 6
    .line 7
    if-eqz v1, :cond_2

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    if-eqz p2, :cond_2

    .line 12
    .line 13
    :cond_0
    if-eqz p1, :cond_1

    .line 14
    .line 15
    invoke-virtual {v1}, Lg/f;->start()V

    .line 16
    .line 17
    .line 18
    return v0

    .line 19
    :cond_1
    invoke-virtual {p0}, Lg/g;->jumpToCurrentState()V

    .line 20
    .line 21
    .line 22
    :cond_2
    return v0
.end method
