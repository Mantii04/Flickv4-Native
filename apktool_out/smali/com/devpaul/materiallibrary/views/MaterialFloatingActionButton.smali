.class public Lcom/devpaul/materiallibrary/views/MaterialFloatingActionButton;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field public A:I

.field public final b:Landroid/graphics/Paint;

.field public final e:Landroid/graphics/Paint;

.field public final f:F

.field public final j:F

.field public final m:F

.field public final n:F

.field public p:I

.field public q:I

.field public r:Z

.field public final s:LI2/f;

.field public final t:LI2/k;

.field public final u:Landroid/graphics/Bitmap;

.field public final v:Landroid/graphics/Rect;

.field public final w:Landroid/graphics/RectF;

.field public final x:F

.field public y:F

.field public final z:Landroid/animation/ObjectAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 13

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Paint;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/devpaul/materiallibrary/views/MaterialFloatingActionButton;->b:Landroid/graphics/Paint;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/devpaul/materiallibrary/views/MaterialFloatingActionButton;->r:Z

    .line 14
    .line 15
    const/4 v2, -0x1

    .line 16
    const/4 v3, 0x0

    .line 17
    :try_start_0
    new-instance v4, Landroid/util/TypedValue;

    .line 18
    .line 19
    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 20
    .line 21
    .line 22
    iget v4, v4, Landroid/util/TypedValue;->data:I

    .line 23
    .line 24
    sget v5, Lcom/devpaul/materialfabmenu/R$attr;->colorAccent:I

    .line 25
    .line 26
    filled-new-array {v5}, [I

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {v3, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 35
    .line 36
    .line 37
    move-result v4
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception p1

    .line 43
    goto/16 :goto_4

    .line 44
    .line 45
    :catch_0
    move-exception v4

    .line 46
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    .line 48
    .line 49
    if-eqz v3, :cond_0

    .line 50
    .line 51
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 52
    .line 53
    .line 54
    :cond_0
    move v4, v2

    .line 55
    :goto_0
    sget-object v3, Lcom/devpaul/materialfabmenu/R$styleable;->MaterialFloatingActionButton:[I

    .line 56
    .line 57
    invoke-virtual {p1, p2, v3, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    sget p2, Lcom/devpaul/materialfabmenu/R$styleable;->MaterialFloatingActionButton_mat_fab_colorNormal:I

    .line 62
    .line 63
    if-ne v4, v2, :cond_1

    .line 64
    .line 65
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    const v3, 0x1060013

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    :cond_1
    invoke-virtual {p1, p2, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 77
    .line 78
    .line 79
    move-result p2

    .line 80
    iput p2, p0, Lcom/devpaul/materiallibrary/views/MaterialFloatingActionButton;->p:I

    .line 81
    .line 82
    sget v2, Lcom/devpaul/materialfabmenu/R$styleable;->MaterialFloatingActionButton_mat_fab_colorPressed:I

    .line 83
    .line 84
    invoke-static {p2}, LI2/a;->getDarkerColor(I)I

    .line 85
    .line 86
    .line 87
    move-result p2

    .line 88
    invoke-virtual {p1, v2, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 89
    .line 90
    .line 91
    move-result p2

    .line 92
    iput p2, p0, Lcom/devpaul/materiallibrary/views/MaterialFloatingActionButton;->q:I

    .line 93
    .line 94
    sget p2, Lcom/devpaul/materialfabmenu/R$styleable;->MaterialFloatingActionButton_mat_fab_icon:I

    .line 95
    .line 96
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 97
    .line 98
    .line 99
    move-result p2

    .line 100
    iput p2, p0, Lcom/devpaul/materiallibrary/views/MaterialFloatingActionButton;->A:I

    .line 101
    .line 102
    sget p2, Lcom/devpaul/materialfabmenu/R$styleable;->MaterialFloatingActionButton_mat_fab_use_selector:I

    .line 103
    .line 104
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 105
    .line 106
    .line 107
    move-result p2

    .line 108
    iput-boolean p2, p0, Lcom/devpaul/materiallibrary/views/MaterialFloatingActionButton;->r:Z

    .line 109
    .line 110
    sget p2, Lcom/devpaul/materialfabmenu/R$styleable;->MaterialFloatingActionButton_mat_fab_size:I

    .line 111
    .line 112
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 113
    .line 114
    .line 115
    move-result p2

    .line 116
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 117
    .line 118
    .line 119
    sget p1, Lcom/devpaul/materialfabmenu/R$dimen;->mat_fab_icon_size:I

    .line 120
    .line 121
    invoke-virtual {p0, p1}, Lcom/devpaul/materiallibrary/views/MaterialFloatingActionButton;->a(I)F

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    iput p1, p0, Lcom/devpaul/materiallibrary/views/MaterialFloatingActionButton;->x:F

    .line 126
    .line 127
    iget p1, p0, Lcom/devpaul/materiallibrary/views/MaterialFloatingActionButton;->A:I

    .line 128
    .line 129
    const/4 v2, 0x0

    .line 130
    if-eqz p1, :cond_2

    .line 131
    .line 132
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    iget v3, p0, Lcom/devpaul/materiallibrary/views/MaterialFloatingActionButton;->A:I

    .line 137
    .line 138
    invoke-static {p1, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    iput-object p1, p0, Lcom/devpaul/materiallibrary/views/MaterialFloatingActionButton;->u:Landroid/graphics/Bitmap;

    .line 143
    .line 144
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 145
    .line 146
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 147
    .line 148
    .line 149
    move-result-object v3

    .line 150
    iget-object v4, p0, Lcom/devpaul/materiallibrary/views/MaterialFloatingActionButton;->u:Landroid/graphics/Bitmap;

    .line 151
    .line 152
    invoke-direct {p1, v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/BitmapDrawable;->setAntiAlias(Z)V

    .line 156
    .line 157
    .line 158
    new-instance p1, Landroid/graphics/Rect;

    .line 159
    .line 160
    iget-object v3, p0, Lcom/devpaul/materiallibrary/views/MaterialFloatingActionButton;->u:Landroid/graphics/Bitmap;

    .line 161
    .line 162
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    .line 163
    .line 164
    .line 165
    move-result v3

    .line 166
    iget-object v4, p0, Lcom/devpaul/materiallibrary/views/MaterialFloatingActionButton;->u:Landroid/graphics/Bitmap;

    .line 167
    .line 168
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    .line 169
    .line 170
    .line 171
    move-result v4

    .line 172
    invoke-direct {p1, v0, v0, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 173
    .line 174
    .line 175
    iput-object p1, p0, Lcom/devpaul/materiallibrary/views/MaterialFloatingActionButton;->v:Landroid/graphics/Rect;

    .line 176
    .line 177
    new-instance p1, Landroid/graphics/RectF;

    .line 178
    .line 179
    iget v3, p0, Lcom/devpaul/materiallibrary/views/MaterialFloatingActionButton;->x:F

    .line 180
    .line 181
    invoke-direct {p1, v2, v2, v3, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 182
    .line 183
    .line 184
    iput-object p1, p0, Lcom/devpaul/materiallibrary/views/MaterialFloatingActionButton;->w:Landroid/graphics/RectF;

    .line 185
    .line 186
    goto :goto_1

    .line 187
    :cond_2
    invoke-direct {p0}, Lcom/devpaul/materiallibrary/views/MaterialFloatingActionButton;->getDefaulBitmap()Landroid/graphics/Bitmap;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    iput-object p1, p0, Lcom/devpaul/materiallibrary/views/MaterialFloatingActionButton;->u:Landroid/graphics/Bitmap;

    .line 192
    .line 193
    new-instance p1, Landroid/graphics/Rect;

    .line 194
    .line 195
    iget-object v3, p0, Lcom/devpaul/materiallibrary/views/MaterialFloatingActionButton;->u:Landroid/graphics/Bitmap;

    .line 196
    .line 197
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    .line 198
    .line 199
    .line 200
    move-result v3

    .line 201
    iget-object v4, p0, Lcom/devpaul/materiallibrary/views/MaterialFloatingActionButton;->u:Landroid/graphics/Bitmap;

    .line 202
    .line 203
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    .line 204
    .line 205
    .line 206
    move-result v4

    .line 207
    invoke-direct {p1, v0, v0, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 208
    .line 209
    .line 210
    iput-object p1, p0, Lcom/devpaul/materiallibrary/views/MaterialFloatingActionButton;->v:Landroid/graphics/Rect;

    .line 211
    .line 212
    new-instance p1, Landroid/graphics/RectF;

    .line 213
    .line 214
    iget v3, p0, Lcom/devpaul/materiallibrary/views/MaterialFloatingActionButton;->x:F

    .line 215
    .line 216
    invoke-direct {p1, v2, v2, v3, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 217
    .line 218
    .line 219
    iput-object p1, p0, Lcom/devpaul/materiallibrary/views/MaterialFloatingActionButton;->w:Landroid/graphics/RectF;

    .line 220
    .line 221
    :goto_1
    sget p1, Lcom/devpaul/materialfabmenu/R$dimen;->mat_fab_shadow_offset:I

    .line 222
    .line 223
    invoke-virtual {p0, p1}, Lcom/devpaul/materiallibrary/views/MaterialFloatingActionButton;->a(I)F

    .line 224
    .line 225
    .line 226
    move-result p1

    .line 227
    const/high16 v3, 0x3fc00000    # 1.5f

    .line 228
    .line 229
    mul-float/2addr p1, v3

    .line 230
    div-float v3, p1, v3

    .line 231
    .line 232
    sget v4, Lcom/devpaul/materialfabmenu/R$dimen;->mat_fab_shadow_max_radius:I

    .line 233
    .line 234
    invoke-virtual {p0, v4}, Lcom/devpaul/materiallibrary/views/MaterialFloatingActionButton;->a(I)F

    .line 235
    .line 236
    .line 237
    move-result v4

    .line 238
    sget v5, Lcom/devpaul/materialfabmenu/R$dimen;->mat_fab_shadow_min_radius:I

    .line 239
    .line 240
    invoke-virtual {p0, v5}, Lcom/devpaul/materiallibrary/views/MaterialFloatingActionButton;->a(I)F

    .line 241
    .line 242
    .line 243
    move-result v5

    .line 244
    const/high16 v6, 0x40000000    # 2.0f

    .line 245
    .line 246
    div-float/2addr v5, v6

    .line 247
    if-nez p2, :cond_3

    .line 248
    .line 249
    sget p2, Lcom/devpaul/materialfabmenu/R$dimen;->mat_fab_normal_size:I

    .line 250
    .line 251
    :goto_2
    invoke-virtual {p0, p2}, Lcom/devpaul/materiallibrary/views/MaterialFloatingActionButton;->a(I)F

    .line 252
    .line 253
    .line 254
    move-result p2

    .line 255
    goto :goto_3

    .line 256
    :cond_3
    sget p2, Lcom/devpaul/materialfabmenu/R$dimen;->mat_fab_mini_size:I

    .line 257
    .line 258
    goto :goto_2

    .line 259
    :goto_3
    iput p2, p0, Lcom/devpaul/materiallibrary/views/MaterialFloatingActionButton;->n:F

    .line 260
    .line 261
    const/high16 v7, 0x40800000    # 4.0f

    .line 262
    .line 263
    mul-float/2addr v7, v4

    .line 264
    add-float/2addr v7, p2

    .line 265
    const/high16 p2, 0x40400000    # 3.0f

    .line 266
    .line 267
    mul-float/2addr p2, p1

    .line 268
    add-float/2addr p2, v7

    .line 269
    iput p2, p0, Lcom/devpaul/materiallibrary/views/MaterialFloatingActionButton;->f:F

    .line 270
    .line 271
    div-float/2addr p2, v6

    .line 272
    iput p2, p0, Lcom/devpaul/materiallibrary/views/MaterialFloatingActionButton;->j:F

    .line 273
    .line 274
    iput p2, p0, Lcom/devpaul/materiallibrary/views/MaterialFloatingActionButton;->m:F

    .line 275
    .line 276
    iput v2, p0, Lcom/devpaul/materiallibrary/views/MaterialFloatingActionButton;->y:F

    .line 277
    .line 278
    new-array p2, v1, [F

    .line 279
    .line 280
    const/high16 v2, -0x3dcc0000    # -45.0f

    .line 281
    .line 282
    aput v2, p2, v0

    .line 283
    .line 284
    const-string v0, "rotation"

    .line 285
    .line 286
    invoke-static {p0, v0, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 287
    .line 288
    .line 289
    move-result-object p2

    .line 290
    iput-object p2, p0, Lcom/devpaul/materiallibrary/views/MaterialFloatingActionButton;->z:Landroid/animation/ObjectAnimator;

    .line 291
    .line 292
    const-wide/16 v7, 0xc8

    .line 293
    .line 294
    invoke-virtual {p2, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 295
    .line 296
    .line 297
    iget-object p2, p0, Lcom/devpaul/materiallibrary/views/MaterialFloatingActionButton;->z:Landroid/animation/ObjectAnimator;

    .line 298
    .line 299
    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    .line 300
    .line 301
    invoke-direct {v0}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    .line 302
    .line 303
    .line 304
    invoke-virtual {p2, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 305
    .line 306
    .line 307
    iget p2, p0, Lcom/devpaul/materiallibrary/views/MaterialFloatingActionButton;->n:F

    .line 308
    .line 309
    div-float/2addr p2, v6

    .line 310
    iget v0, p0, Lcom/devpaul/materiallibrary/views/MaterialFloatingActionButton;->x:F

    .line 311
    .line 312
    div-float/2addr v0, v6

    .line 313
    iget-object v2, p0, Lcom/devpaul/materiallibrary/views/MaterialFloatingActionButton;->w:Landroid/graphics/RectF;

    .line 314
    .line 315
    iget v9, p0, Lcom/devpaul/materiallibrary/views/MaterialFloatingActionButton;->j:F

    .line 316
    .line 317
    sub-float v10, v9, v0

    .line 318
    .line 319
    iget v11, p0, Lcom/devpaul/materiallibrary/views/MaterialFloatingActionButton;->m:F

    .line 320
    .line 321
    sub-float v12, v11, v0

    .line 322
    .line 323
    add-float/2addr v9, v0

    .line 324
    add-float/2addr v11, v0

    .line 325
    invoke-virtual {v2, v10, v12, v9, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 326
    .line 327
    .line 328
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 329
    .line 330
    iget-object v2, p0, Lcom/devpaul/materiallibrary/views/MaterialFloatingActionButton;->b:Landroid/graphics/Paint;

    .line 331
    .line 332
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 333
    .line 334
    .line 335
    iget v0, p0, Lcom/devpaul/materiallibrary/views/MaterialFloatingActionButton;->p:I

    .line 336
    .line 337
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 338
    .line 339
    .line 340
    new-instance v0, Landroid/graphics/Paint;

    .line 341
    .line 342
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 343
    .line 344
    .line 345
    iput-object v0, p0, Lcom/devpaul/materiallibrary/views/MaterialFloatingActionButton;->e:Landroid/graphics/Paint;

    .line 346
    .line 347
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 348
    .line 349
    .line 350
    iget-object v0, p0, Lcom/devpaul/materiallibrary/views/MaterialFloatingActionButton;->e:Landroid/graphics/Paint;

    .line 351
    .line 352
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 353
    .line 354
    .line 355
    iget-object v0, p0, Lcom/devpaul/materiallibrary/views/MaterialFloatingActionButton;->e:Landroid/graphics/Paint;

    .line 356
    .line 357
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 358
    .line 359
    .line 360
    new-instance v0, LI2/f;

    .line 361
    .line 362
    invoke-direct {v0, p0, v2}, LI2/f;-><init>(Landroid/view/View;Landroid/graphics/Paint;)V

    .line 363
    .line 364
    .line 365
    iput-object v0, p0, Lcom/devpaul/materiallibrary/views/MaterialFloatingActionButton;->s:LI2/f;

    .line 366
    .line 367
    iget v1, p0, Lcom/devpaul/materiallibrary/views/MaterialFloatingActionButton;->p:I

    .line 368
    .line 369
    invoke-static {v1}, LI2/a;->getDarkerColor(I)I

    .line 370
    .line 371
    .line 372
    move-result v1

    .line 373
    invoke-virtual {v0, v1}, LI2/f;->setRippleColor(I)V

    .line 374
    .line 375
    .line 376
    iget-object v0, p0, Lcom/devpaul/materiallibrary/views/MaterialFloatingActionButton;->s:LI2/f;

    .line 377
    .line 378
    iget v1, p0, Lcom/devpaul/materiallibrary/views/MaterialFloatingActionButton;->n:F

    .line 379
    .line 380
    float-to-int v1, v1

    .line 381
    div-int/lit8 v1, v1, 0x2

    .line 382
    .line 383
    int-to-float v1, v1

    .line 384
    invoke-virtual {v0, v1}, LI2/f;->setClipRadius(F)V

    .line 385
    .line 386
    .line 387
    iget-object v0, p0, Lcom/devpaul/materiallibrary/views/MaterialFloatingActionButton;->s:LI2/f;

    .line 388
    .line 389
    invoke-virtual {v0, v7, v8}, LI2/f;->setAnimationDuration(J)V

    .line 390
    .line 391
    .line 392
    iget-object v0, p0, Lcom/devpaul/materiallibrary/views/MaterialFloatingActionButton;->s:LI2/f;

    .line 393
    .line 394
    const/high16 v1, 0x3f400000    # 0.75f

    .line 395
    .line 396
    iget v9, p0, Lcom/devpaul/materiallibrary/views/MaterialFloatingActionButton;->n:F

    .line 397
    .line 398
    mul-float/2addr v9, v1

    .line 399
    div-float/2addr v9, v6

    .line 400
    float-to-int v1, v9

    .line 401
    int-to-float v1, v1

    .line 402
    invoke-virtual {v0, v1}, LI2/f;->setMaxRippleRadius(F)V

    .line 403
    .line 404
    .line 405
    iget-object v0, p0, Lcom/devpaul/materiallibrary/views/MaterialFloatingActionButton;->s:LI2/f;

    .line 406
    .line 407
    new-instance v1, Landroid/graphics/RectF;

    .line 408
    .line 409
    iget v6, p0, Lcom/devpaul/materiallibrary/views/MaterialFloatingActionButton;->j:F

    .line 410
    .line 411
    sub-float v9, v6, p2

    .line 412
    .line 413
    iget v10, p0, Lcom/devpaul/materiallibrary/views/MaterialFloatingActionButton;->m:F

    .line 414
    .line 415
    sub-float v11, v10, p2

    .line 416
    .line 417
    add-float/2addr v6, p2

    .line 418
    add-float/2addr v10, p2

    .line 419
    invoke-direct {v1, v9, v11, v6, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 420
    .line 421
    .line 422
    invoke-virtual {v0, v1}, LI2/f;->setBoundingRect(Landroid/graphics/RectF;)V

    .line 423
    .line 424
    .line 425
    new-instance p2, LI2/k;

    .line 426
    .line 427
    invoke-direct {p2, p0, v2}, LI2/k;-><init>(Landroid/view/View;Landroid/graphics/Paint;)V

    .line 428
    .line 429
    .line 430
    iput-object p2, p0, Lcom/devpaul/materiallibrary/views/MaterialFloatingActionButton;->t:LI2/k;

    .line 431
    .line 432
    iget v0, p0, Lcom/devpaul/materiallibrary/views/MaterialFloatingActionButton;->p:I

    .line 433
    .line 434
    invoke-virtual {p2, v0}, LI2/k;->setNormalColor(I)V

    .line 435
    .line 436
    .line 437
    iget-object p2, p0, Lcom/devpaul/materiallibrary/views/MaterialFloatingActionButton;->t:LI2/k;

    .line 438
    .line 439
    iget v0, p0, Lcom/devpaul/materiallibrary/views/MaterialFloatingActionButton;->q:I

    .line 440
    .line 441
    invoke-virtual {p2, v0}, LI2/k;->setPressedColor(I)V

    .line 442
    .line 443
    .line 444
    iget-object p2, p0, Lcom/devpaul/materiallibrary/views/MaterialFloatingActionButton;->t:LI2/k;

    .line 445
    .line 446
    invoke-virtual {p2, v7, v8}, LI2/k;->setAnimationDuration(J)V

    .line 447
    .line 448
    .line 449
    iget-object p2, p0, Lcom/devpaul/materiallibrary/views/MaterialFloatingActionButton;->t:LI2/k;

    .line 450
    .line 451
    invoke-virtual {p2, v3, p1, v5, v4}, LI2/k;->setShadowLimits(FFFF)V

    .line 452
    .line 453
    .line 454
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 455
    .line 456
    .line 457
    return-void

    .line 458
    :goto_4
    if-eqz v3, :cond_4

    .line 459
    .line 460
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 461
    .line 462
    .line 463
    :cond_4
    throw p1
.end method

.method private getDefaulBitmap()Landroid/graphics/Bitmap;
    .locals 9

    .line 1
    iget v0, p0, Lcom/devpaul/materiallibrary/views/MaterialFloatingActionButton;->x:F

    .line 2
    .line 3
    float-to-int v1, v0

    .line 4
    float-to-int v0, v0

    .line 5
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 6
    .line 7
    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 13
    .line 14
    .line 15
    new-instance v1, Landroid/graphics/Canvas;

    .line 16
    .line 17
    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 18
    .line 19
    .line 20
    sget v2, Lcom/devpaul/materialfabmenu/R$dimen;->mat_fab_single_dp:I

    .line 21
    .line 22
    invoke-virtual {p0, v2}, Lcom/devpaul/materiallibrary/views/MaterialFloatingActionButton;->a(I)F

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    div-int/lit8 v3, v3, 0x2

    .line 31
    .line 32
    int-to-float v3, v3

    .line 33
    sub-float/2addr v3, v2

    .line 34
    float-to-int v3, v3

    .line 35
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    div-int/lit8 v4, v4, 0x2

    .line 40
    .line 41
    int-to-float v4, v4

    .line 42
    add-float/2addr v4, v2

    .line 43
    float-to-int v4, v4

    .line 44
    new-instance v5, Landroid/graphics/Rect;

    .line 45
    .line 46
    float-to-int v6, v2

    .line 47
    mul-int/lit8 v6, v6, 0x4

    .line 48
    .line 49
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    .line 50
    .line 51
    .line 52
    move-result v7

    .line 53
    int-to-float v7, v7

    .line 54
    const/high16 v8, 0x40800000    # 4.0f

    .line 55
    .line 56
    mul-float/2addr v8, v2

    .line 57
    sub-float/2addr v7, v8

    .line 58
    float-to-int v7, v7

    .line 59
    invoke-direct {v5, v3, v6, v4, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 60
    .line 61
    .line 62
    new-instance v3, Landroid/graphics/Paint;

    .line 63
    .line 64
    const/4 v4, 0x1

    .line 65
    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    .line 66
    .line 67
    .line 68
    const/4 v4, -0x1

    .line 69
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 70
    .line 71
    .line 72
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 73
    .line 74
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 75
    .line 76
    .line 77
    const/16 v4, 0xff

    .line 78
    .line 79
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, v5, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 83
    .line 84
    .line 85
    float-to-int v4, v8

    .line 86
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    .line 87
    .line 88
    .line 89
    move-result v6

    .line 90
    div-int/lit8 v6, v6, 0x2

    .line 91
    .line 92
    int-to-float v6, v6

    .line 93
    sub-float/2addr v6, v2

    .line 94
    float-to-int v6, v6

    .line 95
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    .line 96
    .line 97
    .line 98
    move-result v7

    .line 99
    int-to-float v7, v7

    .line 100
    sub-float/2addr v7, v8

    .line 101
    float-to-int v7, v7

    .line 102
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    .line 103
    .line 104
    .line 105
    move-result v8

    .line 106
    div-int/lit8 v8, v8, 0x2

    .line 107
    .line 108
    int-to-float v8, v8

    .line 109
    add-float/2addr v8, v2

    .line 110
    float-to-int v2, v8

    .line 111
    invoke-virtual {v5, v4, v6, v7, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1, v5, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 115
    .line 116
    .line 117
    return-object v0
.end method


# virtual methods
.method public final a(I)F
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public getRotation()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/devpaul/materiallibrary/views/MaterialFloatingActionButton;->y:F

    .line 2
    .line 3
    return v0
.end method

.method public getSize()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/devpaul/materiallibrary/views/MaterialFloatingActionButton;->f:F

    .line 2
    .line 3
    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/devpaul/materiallibrary/views/MaterialFloatingActionButton;->r:Z

    .line 2
    .line 3
    iget-object v1, p0, Lcom/devpaul/materiallibrary/views/MaterialFloatingActionButton;->b:Landroid/graphics/Paint;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/devpaul/materiallibrary/views/MaterialFloatingActionButton;->s:LI2/f;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, LI2/f;->onDrawShadow(Landroid/graphics/Paint;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget v0, p0, Lcom/devpaul/materiallibrary/views/MaterialFloatingActionButton;->j:F

    .line 13
    .line 14
    iget v2, p0, Lcom/devpaul/materiallibrary/views/MaterialFloatingActionButton;->m:F

    .line 15
    .line 16
    iget v3, p0, Lcom/devpaul/materiallibrary/views/MaterialFloatingActionButton;->n:F

    .line 17
    .line 18
    const/high16 v4, 0x40000000    # 2.0f

    .line 19
    .line 20
    div-float/2addr v3, v4

    .line 21
    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 25
    .line 26
    .line 27
    iget v0, p0, Lcom/devpaul/materiallibrary/views/MaterialFloatingActionButton;->y:F

    .line 28
    .line 29
    iget v2, p0, Lcom/devpaul/materiallibrary/views/MaterialFloatingActionButton;->j:F

    .line 30
    .line 31
    iget v3, p0, Lcom/devpaul/materiallibrary/views/MaterialFloatingActionButton;->m:F

    .line 32
    .line 33
    invoke-virtual {p1, v0, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/devpaul/materiallibrary/views/MaterialFloatingActionButton;->u:Landroid/graphics/Bitmap;

    .line 37
    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    iget-object v2, p0, Lcom/devpaul/materiallibrary/views/MaterialFloatingActionButton;->v:Landroid/graphics/Rect;

    .line 41
    .line 42
    iget-object v3, p0, Lcom/devpaul/materiallibrary/views/MaterialFloatingActionButton;->w:Landroid/graphics/RectF;

    .line 43
    .line 44
    iget-object v4, p0, Lcom/devpaul/materiallibrary/views/MaterialFloatingActionButton;->e:Landroid/graphics/Paint;

    .line 45
    .line 46
    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 47
    .line 48
    .line 49
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 50
    .line 51
    .line 52
    iget-boolean v0, p0, Lcom/devpaul/materiallibrary/views/MaterialFloatingActionButton;->r:Z

    .line 53
    .line 54
    if-eqz v0, :cond_2

    .line 55
    .line 56
    iget-object p1, p0, Lcom/devpaul/materiallibrary/views/MaterialFloatingActionButton;->t:LI2/k;

    .line 57
    .line 58
    invoke-virtual {p1, v1}, LI2/k;->onDraw(Landroid/graphics/Paint;)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :cond_2
    iget-object v0, p0, Lcom/devpaul/materiallibrary/views/MaterialFloatingActionButton;->s:LI2/f;

    .line 63
    .line 64
    invoke-virtual {v0, p1}, LI2/f;->onDrawRipple(Landroid/graphics/Canvas;)V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public onMeasure(II)V
    .locals 0

    .line 1
    iget p1, p0, Lcom/devpaul/materiallibrary/views/MaterialFloatingActionButton;->f:F

    .line 2
    .line 3
    float-to-int p2, p1

    .line 4
    float-to-int p1, p1

    .line 5
    invoke-virtual {p0, p2, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/devpaul/materiallibrary/views/MaterialFloatingActionButton;->r:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/devpaul/materiallibrary/views/MaterialFloatingActionButton;->t:LI2/k;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, LI2/k;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/devpaul/materiallibrary/views/MaterialFloatingActionButton;->s:LI2/f;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, LI2/f;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    return p1
.end method

.method public setBackgroundCompat(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setButtonColor(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/devpaul/materiallibrary/views/MaterialFloatingActionButton;->p:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/devpaul/materiallibrary/views/MaterialFloatingActionButton;->b:Landroid/graphics/Paint;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setButtonPressedColor(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/devpaul/materiallibrary/views/MaterialFloatingActionButton;->q:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/devpaul/materiallibrary/views/MaterialFloatingActionButton;->t:LI2/k;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, LI2/k;->setPressedColor(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setIcon(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/devpaul/materiallibrary/views/MaterialFloatingActionButton;->A:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput p1, p0, Lcom/devpaul/materiallibrary/views/MaterialFloatingActionButton;->A:I

    .line 6
    .line 7
    :cond_0
    return-void
.end method

.method public setRotation(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/devpaul/materiallibrary/views/MaterialFloatingActionButton;->y:F

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setUseSelector(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/devpaul/materiallibrary/views/MaterialFloatingActionButton;->r:Z

    .line 2
    .line 3
    return-void
.end method
