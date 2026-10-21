.class public final synthetic LC4/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Lm1/V;

.field public final synthetic f:Lm1/B0;


# direct methods
.method public synthetic constructor <init>(Lm1/V;Lm1/B0;I)V
    .locals 0

    .line 1
    iput p3, p0, LC4/b;->b:I

    iput-object p1, p0, LC4/b;->e:Lm1/V;

    iput-object p2, p0, LC4/b;->f:Lm1/B0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 8

    .line 1
    iget v0, p0, LC4/b;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, LC4/b;->e:Lm1/V;

    .line 7
    .line 8
    check-cast p1, LC4/m0;

    .line 9
    .line 10
    iget-object v0, p0, LC4/b;->f:Lm1/B0;

    .line 11
    .line 12
    check-cast v0, LC4/l0;

    .line 13
    .line 14
    const/4 v1, 0x6

    .line 15
    const/4 v2, 0x0

    .line 16
    if-eqz p2, :cond_1

    .line 17
    .line 18
    iget-object p2, p1, LC4/m0;->l:Lflix/com/vision/activities/MainActivity;

    .line 19
    .line 20
    if-eqz p2, :cond_0

    .line 21
    .line 22
    :try_start_0
    iget-object v3, v0, LC4/l0;->A:Landroid/widget/ImageView;

    .line 23
    .line 24
    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    .line 25
    .line 26
    .line 27
    iget-object v3, v0, LC4/l0;->A:Landroid/widget/ImageView;

    .line 28
    .line 29
    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    .line 34
    .line 35
    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-static {v3}, Lg1/g;->from(Landroid/graphics/Bitmap;)Lg1/e;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-virtual {v3}, Lg1/e;->generate()Lg1/g;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    iget-object v4, v0, LC4/l0;->u:Lflix/com/vision/models/Movie;

    .line 48
    .line 49
    invoke-virtual {v3, v2}, Lg1/g;->getDarkVibrantColor(I)I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    iput v2, v4, Lflix/com/vision/models/Movie;->color:I

    .line 54
    .line 55
    iget-object v2, v0, LC4/l0;->u:Lflix/com/vision/models/Movie;

    .line 56
    .line 57
    iget v2, v2, Lflix/com/vision/models/Movie;->color:I

    .line 58
    .line 59
    invoke-virtual {p2, v2}, Lflix/com/vision/activities/MainActivity;->extractDominantColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .line 61
    .line 62
    :catch_0
    :cond_0
    iget-object p2, v0, LC4/l0;->v:Landroid/widget/RelativeLayout;

    .line 63
    .line 64
    iget-object p1, p1, LC4/m0;->g:Lflix/com/vision/activities/WatchedAcvivity;

    .line 65
    .line 66
    invoke-virtual {p1}, Le/v;->getResources()Landroid/content/res/Resources;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    sget v2, Lflix/com/vision/R$drawable;->rounded_border_poster:I

    .line 71
    .line 72
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {p2, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 77
    .line 78
    .line 79
    iget-object p1, v0, LC4/l0;->x:Landroid/widget/TextView;

    .line 80
    .line 81
    const/4 p2, 0x1

    .line 82
    invoke-virtual {p1, p2}, Landroid/view/View;->setHorizontalFadingEdgeEnabled(Z)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, p2}, Landroid/view/View;->setFocusable(Z)V

    .line 86
    .line 87
    .line 88
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    .line 89
    .line 90
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, p2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    .line 108
    .line 109
    iget-object p1, v0, LC4/l0;->v:Landroid/widget/RelativeLayout;

    .line 110
    .line 111
    const/4 p2, 0x0

    .line 112
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 113
    .line 114
    .line 115
    iget-object p1, v0, LC4/l0;->x:Landroid/widget/TextView;

    .line 116
    .line 117
    invoke-virtual {p1, v2}, Landroid/view/View;->setHorizontalFadingEdgeEnabled(Z)V

    .line 118
    .line 119
    .line 120
    sget-object p2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 121
    .line 122
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1, v2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 135
    .line 136
    .line 137
    :goto_0
    return-void

    .line 138
    :pswitch_0
    iget-object p1, p0, LC4/b;->e:Lm1/V;

    .line 139
    .line 140
    check-cast p1, LC4/h0;

    .line 141
    .line 142
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 143
    .line 144
    .line 145
    iget-object v0, p0, LC4/b;->f:Lm1/B0;

    .line 146
    .line 147
    check-cast v0, LC4/g0;

    .line 148
    .line 149
    if-eqz p2, :cond_2

    .line 150
    .line 151
    iget-object p2, v0, LC4/g0;->v:Landroid/view/View;

    .line 152
    .line 153
    iget-object p1, p1, LC4/h0;->e:Landroid/app/Activity;

    .line 154
    .line 155
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    sget v0, Lflix/com/vision/R$drawable;->season_item_border_selected:I

    .line 160
    .line 161
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    invoke-virtual {p2, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 166
    .line 167
    .line 168
    goto :goto_1

    .line 169
    :cond_2
    iget-object p1, v0, LC4/g0;->v:Landroid/view/View;

    .line 170
    .line 171
    const/4 p2, 0x0

    .line 172
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 173
    .line 174
    .line 175
    :goto_1
    return-void

    .line 176
    :pswitch_1
    iget-object v0, p0, LC4/b;->e:Lm1/V;

    .line 177
    .line 178
    check-cast v0, LC4/c0;

    .line 179
    .line 180
    iget v1, v0, LC4/c0;->d:I

    .line 181
    .line 182
    const/16 v2, 0xc8

    .line 183
    .line 184
    if-eqz p2, :cond_4

    .line 185
    .line 186
    iget-object p2, v0, LC4/c0;->e:LU4/l;

    .line 187
    .line 188
    instance-of v0, p2, Lflix/com/vision/tv/TVCategoriesActivity;

    .line 189
    .line 190
    if-eqz v0, :cond_3

    .line 191
    .line 192
    check-cast p2, Lflix/com/vision/tv/TVCategoriesActivity;

    .line 193
    .line 194
    iget-object v0, p0, LC4/b;->f:Lm1/B0;

    .line 195
    .line 196
    check-cast v0, LC4/b0;

    .line 197
    .line 198
    iget-object v0, v0, LC4/b0;->u:Lflix/com/vision/tv/TVCategory;

    .line 199
    .line 200
    invoke-virtual {v0}, Lflix/com/vision/tv/TVCategory;->getCategoryName()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    invoke-virtual {p2, v0}, Lflix/com/vision/tv/TVCategoriesActivity;->ToastChannel(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    :cond_3
    if-eq v1, v2, :cond_5

    .line 208
    .line 209
    const/high16 p2, 0x41a00000    # 20.0f

    .line 210
    .line 211
    const v0, 0x3f8ccccd    # 1.1f

    .line 212
    .line 213
    .line 214
    invoke-static {p1, p2, p2, p2, v0}, Lb/c;->e(Landroid/view/View;FFFF)Landroid/view/ViewPropertyAnimator;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 219
    .line 220
    .line 221
    move-result-object p1

    .line 222
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 223
    .line 224
    .line 225
    goto :goto_2

    .line 226
    :cond_4
    if-eq v1, v2, :cond_5

    .line 227
    .line 228
    const/4 p2, 0x0

    .line 229
    const/high16 v0, 0x3f800000    # 1.0f

    .line 230
    .line 231
    invoke-static {p1, p2, p2, p2, v0}, Lb/c;->e(Landroid/view/View;FFFF)Landroid/view/ViewPropertyAnimator;

    .line 232
    .line 233
    .line 234
    move-result-object p1

    .line 235
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 240
    .line 241
    .line 242
    :cond_5
    :goto_2
    return-void

    .line 243
    :pswitch_2
    iget-object v0, p0, LC4/b;->e:Lm1/V;

    .line 244
    .line 245
    check-cast v0, LC4/Z;

    .line 246
    .line 247
    iget-object v0, v0, LC4/Z;->d:Landroid/app/Activity;

    .line 248
    .line 249
    iget-object v1, p0, LC4/b;->f:Lm1/B0;

    .line 250
    .line 251
    check-cast v1, LC4/Y;

    .line 252
    .line 253
    const-wide/16 v2, 0xc8

    .line 254
    .line 255
    if-eqz p2, :cond_7

    .line 256
    .line 257
    iget-object p2, v1, LC4/Y;->w:Landroid/widget/TextView;

    .line 258
    .line 259
    const/4 v4, 0x0

    .line 260
    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 261
    .line 262
    .line 263
    iget-object p2, v1, LC4/Y;->x:Landroid/view/View;

    .line 264
    .line 265
    invoke-virtual {p2}, Landroid/view/View;->isActivated()Z

    .line 266
    .line 267
    .line 268
    move-result p2

    .line 269
    if-nez p2, :cond_6

    .line 270
    .line 271
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 272
    .line 273
    .line 274
    move-result-object p2

    .line 275
    sget v4, Lflix/com/vision/R$color;->black:I

    .line 276
    .line 277
    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getColor(I)I

    .line 278
    .line 279
    .line 280
    move-result p2

    .line 281
    iget-object v4, v1, LC4/Y;->v:Landroid/widget/TextView;

    .line 282
    .line 283
    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 287
    .line 288
    .line 289
    move-result-object p2

    .line 290
    sget v0, Lflix/com/vision/R$color;->black:I

    .line 291
    .line 292
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 293
    .line 294
    .line 295
    move-result p2

    .line 296
    iget-object v0, v1, LC4/Y;->w:Landroid/widget/TextView;

    .line 297
    .line 298
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 299
    .line 300
    .line 301
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 302
    .line 303
    .line 304
    move-result-object p1

    .line 305
    const p2, 0x3f8ccccd    # 1.1f

    .line 306
    .line 307
    .line 308
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 309
    .line 310
    .line 311
    move-result-object p1

    .line 312
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 313
    .line 314
    .line 315
    move-result-object p1

    .line 316
    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 317
    .line 318
    .line 319
    move-result-object p1

    .line 320
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 321
    .line 322
    .line 323
    goto :goto_3

    .line 324
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 325
    .line 326
    .line 327
    move-result-object p1

    .line 328
    const/high16 p2, 0x3f800000    # 1.0f

    .line 329
    .line 330
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 331
    .line 332
    .line 333
    move-result-object p1

    .line 334
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 335
    .line 336
    .line 337
    move-result-object p1

    .line 338
    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 339
    .line 340
    .line 341
    move-result-object p1

    .line 342
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 343
    .line 344
    .line 345
    iget-object p1, v1, LC4/Y;->v:Landroid/widget/TextView;

    .line 346
    .line 347
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 348
    .line 349
    .line 350
    move-result-object p2

    .line 351
    sget v2, Lflix/com/vision/R$color;->white:I

    .line 352
    .line 353
    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getColor(I)I

    .line 354
    .line 355
    .line 356
    move-result p2

    .line 357
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 358
    .line 359
    .line 360
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 361
    .line 362
    .line 363
    move-result-object p1

    .line 364
    sget p2, Lflix/com/vision/R$color;->white:I

    .line 365
    .line 366
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    .line 367
    .line 368
    .line 369
    move-result p1

    .line 370
    iget-object p2, v1, LC4/Y;->w:Landroid/widget/TextView;

    .line 371
    .line 372
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 373
    .line 374
    .line 375
    const/4 p1, 0x4

    .line 376
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 377
    .line 378
    .line 379
    :goto_3
    return-void

    .line 380
    :pswitch_3
    iget-object v0, p0, LC4/b;->e:Lm1/V;

    .line 381
    .line 382
    check-cast v0, LC4/P;

    .line 383
    .line 384
    iget-object v1, v0, LC4/P;->h:Landroid/app/Activity;

    .line 385
    .line 386
    iget-object v2, p0, LC4/b;->f:Lm1/B0;

    .line 387
    .line 388
    check-cast v2, LC4/O;

    .line 389
    .line 390
    const/4 v3, 0x6

    .line 391
    const-wide/16 v4, 0xc8

    .line 392
    .line 393
    const/4 v6, 0x0

    .line 394
    if-eqz p2, :cond_b

    .line 395
    .line 396
    iget-object p2, v0, LC4/P;->m:Lflix/com/vision/activities/MainActivity;

    .line 397
    .line 398
    if-eqz p2, :cond_8

    .line 399
    .line 400
    :try_start_1
    iget-object v0, v2, LC4/O;->A:Landroid/widget/ImageView;

    .line 401
    .line 402
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 403
    .line 404
    .line 405
    iget-object v0, v2, LC4/O;->A:Landroid/widget/ImageView;

    .line 406
    .line 407
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 408
    .line 409
    .line 410
    move-result-object v0

    .line 411
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 412
    .line 413
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 414
    .line 415
    .line 416
    move-result-object v0

    .line 417
    invoke-static {v0}, Lg1/g;->from(Landroid/graphics/Bitmap;)Lg1/e;

    .line 418
    .line 419
    .line 420
    move-result-object v0

    .line 421
    invoke-virtual {v0}, Lg1/e;->generate()Lg1/g;

    .line 422
    .line 423
    .line 424
    move-result-object v0

    .line 425
    iget-object v7, v2, LC4/O;->u:Lflix/com/vision/models/Movie;

    .line 426
    .line 427
    invoke-virtual {v0, v6}, Lg1/g;->getDarkVibrantColor(I)I

    .line 428
    .line 429
    .line 430
    move-result v0

    .line 431
    iput v0, v7, Lflix/com/vision/models/Movie;->color:I

    .line 432
    .line 433
    iget-object v0, v2, LC4/O;->u:Lflix/com/vision/models/Movie;

    .line 434
    .line 435
    iget v0, v0, Lflix/com/vision/models/Movie;->color:I

    .line 436
    .line 437
    invoke-virtual {p2, v0}, Lflix/com/vision/activities/MainActivity;->extractDominantColor(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 438
    .line 439
    .line 440
    goto :goto_4

    .line 441
    :catch_1
    move-exception p2

    .line 442
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 443
    .line 444
    .line 445
    :cond_8
    :goto_4
    instance-of p2, v1, Lflix/com/vision/activities/MainActivity;

    .line 446
    .line 447
    if-nez p2, :cond_9

    .line 448
    .line 449
    instance-of p2, v1, Lflix/com/vision/activities/SearchResultsActivity;

    .line 450
    .line 451
    if-nez p2, :cond_9

    .line 452
    .line 453
    instance-of p2, v1, Lflix/com/vision/activities/MovieDetailActivityLeanBack;

    .line 454
    .line 455
    if-eqz p2, :cond_a

    .line 456
    .line 457
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 458
    .line 459
    .line 460
    move-result-object p1

    .line 461
    const p2, 0x3f8ccccd    # 1.1f

    .line 462
    .line 463
    .line 464
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 465
    .line 466
    .line 467
    move-result-object p1

    .line 468
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 469
    .line 470
    .line 471
    move-result-object p1

    .line 472
    invoke-virtual {p1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 473
    .line 474
    .line 475
    move-result-object p1

    .line 476
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 477
    .line 478
    .line 479
    :cond_a
    iget-object p1, v2, LC4/O;->v:Landroid/widget/RelativeLayout;

    .line 480
    .line 481
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 482
    .line 483
    .line 484
    move-result-object p2

    .line 485
    sget v0, Lflix/com/vision/R$drawable;->rounded_border_poster:I

    .line 486
    .line 487
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 488
    .line 489
    .line 490
    move-result-object p2

    .line 491
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 492
    .line 493
    .line 494
    iget-object p1, v2, LC4/O;->x:Landroid/widget/TextView;

    .line 495
    .line 496
    const/4 p2, 0x1

    .line 497
    invoke-virtual {p1, p2}, Landroid/view/View;->setHorizontalFadingEdgeEnabled(Z)V

    .line 498
    .line 499
    .line 500
    invoke-virtual {p1, p2}, Landroid/view/View;->setFocusable(Z)V

    .line 501
    .line 502
    .line 503
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    .line 504
    .line 505
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 506
    .line 507
    .line 508
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    .line 509
    .line 510
    .line 511
    invoke-virtual {p1, p2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 512
    .line 513
    .line 514
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 515
    .line 516
    .line 517
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 518
    .line 519
    .line 520
    goto :goto_5

    .line 521
    :cond_b
    instance-of p2, v1, Lflix/com/vision/activities/MainActivity;

    .line 522
    .line 523
    if-nez p2, :cond_c

    .line 524
    .line 525
    instance-of p2, v1, Lflix/com/vision/activities/SearchResultsActivity;

    .line 526
    .line 527
    if-nez p2, :cond_c

    .line 528
    .line 529
    instance-of p2, v1, Lflix/com/vision/activities/MovieDetailActivityLeanBack;

    .line 530
    .line 531
    if-eqz p2, :cond_d

    .line 532
    .line 533
    :cond_c
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 534
    .line 535
    .line 536
    move-result-object p1

    .line 537
    const/high16 p2, 0x3f800000    # 1.0f

    .line 538
    .line 539
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 540
    .line 541
    .line 542
    move-result-object p1

    .line 543
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 544
    .line 545
    .line 546
    move-result-object p1

    .line 547
    invoke-virtual {p1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 548
    .line 549
    .line 550
    move-result-object p1

    .line 551
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 552
    .line 553
    .line 554
    :cond_d
    iget-object p1, v2, LC4/O;->v:Landroid/widget/RelativeLayout;

    .line 555
    .line 556
    const/4 p2, 0x0

    .line 557
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 558
    .line 559
    .line 560
    iget-object p1, v2, LC4/O;->x:Landroid/widget/TextView;

    .line 561
    .line 562
    invoke-virtual {p1, v6}, Landroid/view/View;->setHorizontalFadingEdgeEnabled(Z)V

    .line 563
    .line 564
    .line 565
    sget-object p2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 566
    .line 567
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 568
    .line 569
    .line 570
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    .line 571
    .line 572
    .line 573
    invoke-virtual {p1, v6}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 574
    .line 575
    .line 576
    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 577
    .line 578
    .line 579
    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setSelected(Z)V

    .line 580
    .line 581
    .line 582
    :goto_5
    return-void

    .line 583
    :pswitch_4
    iget-object p1, p0, LC4/b;->e:Lm1/V;

    .line 584
    .line 585
    check-cast p1, LC4/I;

    .line 586
    .line 587
    iget-object p1, p1, LC4/I;->h:Landroid/content/Context;

    .line 588
    .line 589
    iget-object v0, p0, LC4/b;->f:Lm1/B0;

    .line 590
    .line 591
    check-cast v0, LC4/H;

    .line 592
    .line 593
    if-eqz p2, :cond_e

    .line 594
    .line 595
    iget-object p2, v0, LC4/H;->w:Landroid/widget/TextView;

    .line 596
    .line 597
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 598
    .line 599
    .line 600
    move-result-object p1

    .line 601
    sget v0, Lflix/com/vision/R$color;->black:I

    .line 602
    .line 603
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 604
    .line 605
    .line 606
    move-result p1

    .line 607
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 608
    .line 609
    .line 610
    goto :goto_6

    .line 611
    :cond_e
    iget-object p2, v0, LC4/H;->w:Landroid/widget/TextView;

    .line 612
    .line 613
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 614
    .line 615
    .line 616
    move-result-object p1

    .line 617
    sget v0, Lflix/com/vision/R$color;->white:I

    .line 618
    .line 619
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 620
    .line 621
    .line 622
    move-result p1

    .line 623
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 624
    .line 625
    .line 626
    :goto_6
    return-void

    .line 627
    :pswitch_5
    iget-object p1, p0, LC4/b;->e:Lm1/V;

    .line 628
    .line 629
    check-cast p1, LC4/B;

    .line 630
    .line 631
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 632
    .line 633
    .line 634
    iget-object v0, p0, LC4/b;->f:Lm1/B0;

    .line 635
    .line 636
    check-cast v0, LC4/A;

    .line 637
    .line 638
    const/4 v1, 0x6

    .line 639
    if-eqz p2, :cond_f

    .line 640
    .line 641
    iget-object p2, v0, LC4/A;->v:Landroid/widget/FrameLayout;

    .line 642
    .line 643
    iget-object p1, p1, LC4/B;->e:Lflix/com/vision/activities/DramaHomeActivity;

    .line 644
    .line 645
    invoke-virtual {p1}, Le/v;->getResources()Landroid/content/res/Resources;

    .line 646
    .line 647
    .line 648
    move-result-object p1

    .line 649
    sget v2, Lflix/com/vision/R$drawable;->rounded_border_poster:I

    .line 650
    .line 651
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 652
    .line 653
    .line 654
    move-result-object p1

    .line 655
    invoke-virtual {p2, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 656
    .line 657
    .line 658
    iget-object p1, v0, LC4/A;->x:Landroid/widget/TextView;

    .line 659
    .line 660
    const/4 p2, 0x1

    .line 661
    invoke-virtual {p1, p2}, Landroid/view/View;->setHorizontalFadingEdgeEnabled(Z)V

    .line 662
    .line 663
    .line 664
    invoke-virtual {p1, p2}, Landroid/view/View;->setFocusable(Z)V

    .line 665
    .line 666
    .line 667
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    .line 668
    .line 669
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 670
    .line 671
    .line 672
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    .line 673
    .line 674
    .line 675
    invoke-virtual {p1, p2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 676
    .line 677
    .line 678
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 679
    .line 680
    .line 681
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 682
    .line 683
    .line 684
    goto :goto_7

    .line 685
    :cond_f
    iget-object p1, v0, LC4/A;->v:Landroid/widget/FrameLayout;

    .line 686
    .line 687
    const/4 p2, 0x0

    .line 688
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 689
    .line 690
    .line 691
    iget-object p1, v0, LC4/A;->v:Landroid/widget/FrameLayout;

    .line 692
    .line 693
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 694
    .line 695
    .line 696
    iget-object p1, v0, LC4/A;->x:Landroid/widget/TextView;

    .line 697
    .line 698
    const/4 p2, 0x0

    .line 699
    invoke-virtual {p1, p2}, Landroid/view/View;->setHorizontalFadingEdgeEnabled(Z)V

    .line 700
    .line 701
    .line 702
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 703
    .line 704
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 705
    .line 706
    .line 707
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    .line 708
    .line 709
    .line 710
    invoke-virtual {p1, p2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 711
    .line 712
    .line 713
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 714
    .line 715
    .line 716
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 717
    .line 718
    .line 719
    :goto_7
    return-void

    .line 720
    :pswitch_6
    iget-object p1, p0, LC4/b;->e:Lm1/V;

    .line 721
    .line 722
    check-cast p1, LC4/z;

    .line 723
    .line 724
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 725
    .line 726
    .line 727
    iget-object v0, p0, LC4/b;->f:Lm1/B0;

    .line 728
    .line 729
    check-cast v0, LC4/y;

    .line 730
    .line 731
    const/4 v1, 0x6

    .line 732
    if-eqz p2, :cond_10

    .line 733
    .line 734
    iget-object p2, v0, LC4/y;->v:Landroid/widget/FrameLayout;

    .line 735
    .line 736
    iget-object p1, p1, LC4/z;->e:Landroid/app/Activity;

    .line 737
    .line 738
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 739
    .line 740
    .line 741
    move-result-object p1

    .line 742
    sget v2, Lflix/com/vision/R$drawable;->rounded_border_poster:I

    .line 743
    .line 744
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 745
    .line 746
    .line 747
    move-result-object p1

    .line 748
    invoke-virtual {p2, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 749
    .line 750
    .line 751
    iget-object p1, v0, LC4/y;->x:Landroid/widget/TextView;

    .line 752
    .line 753
    const/4 p2, 0x1

    .line 754
    invoke-virtual {p1, p2}, Landroid/view/View;->setHorizontalFadingEdgeEnabled(Z)V

    .line 755
    .line 756
    .line 757
    invoke-virtual {p1, p2}, Landroid/view/View;->setFocusable(Z)V

    .line 758
    .line 759
    .line 760
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    .line 761
    .line 762
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 763
    .line 764
    .line 765
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    .line 766
    .line 767
    .line 768
    invoke-virtual {p1, p2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 769
    .line 770
    .line 771
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 772
    .line 773
    .line 774
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 775
    .line 776
    .line 777
    goto :goto_8

    .line 778
    :cond_10
    iget-object p1, v0, LC4/y;->v:Landroid/widget/FrameLayout;

    .line 779
    .line 780
    const/4 p2, 0x0

    .line 781
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 782
    .line 783
    .line 784
    iget-object p1, v0, LC4/y;->v:Landroid/widget/FrameLayout;

    .line 785
    .line 786
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 787
    .line 788
    .line 789
    iget-object p1, v0, LC4/y;->x:Landroid/widget/TextView;

    .line 790
    .line 791
    const/4 p2, 0x0

    .line 792
    invoke-virtual {p1, p2}, Landroid/view/View;->setHorizontalFadingEdgeEnabled(Z)V

    .line 793
    .line 794
    .line 795
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 796
    .line 797
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 798
    .line 799
    .line 800
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    .line 801
    .line 802
    .line 803
    invoke-virtual {p1, p2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 804
    .line 805
    .line 806
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 807
    .line 808
    .line 809
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 810
    .line 811
    .line 812
    :goto_8
    return-void

    .line 813
    :pswitch_7
    iget-object v0, p0, LC4/b;->e:Lm1/V;

    .line 814
    .line 815
    check-cast v0, LC4/w;

    .line 816
    .line 817
    iget-object v0, v0, LC4/w;->f:Landroid/app/Activity;

    .line 818
    .line 819
    iget-object v1, p0, LC4/b;->f:Lm1/B0;

    .line 820
    .line 821
    check-cast v1, LC4/v;

    .line 822
    .line 823
    if-eqz p2, :cond_11

    .line 824
    .line 825
    const/high16 p2, 0x41a00000    # 20.0f

    .line 826
    .line 827
    const v2, 0x3f8ccccd    # 1.1f

    .line 828
    .line 829
    .line 830
    invoke-static {p1, p2, p2, p2, v2}, Lb/c;->e(Landroid/view/View;FFFF)Landroid/view/ViewPropertyAnimator;

    .line 831
    .line 832
    .line 833
    move-result-object p1

    .line 834
    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 835
    .line 836
    .line 837
    move-result-object p1

    .line 838
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 839
    .line 840
    .line 841
    iget-object p1, v1, LC4/v;->w:Landroid/widget/RelativeLayout;

    .line 842
    .line 843
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 844
    .line 845
    .line 846
    move-result-object p2

    .line 847
    sget v0, Lflix/com/vision/R$color;->colorAccent:I

    .line 848
    .line 849
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 850
    .line 851
    .line 852
    move-result p2

    .line 853
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 854
    .line 855
    .line 856
    iget-object p1, v1, LC4/v;->x:Landroid/view/View;

    .line 857
    .line 858
    const p2, 0x3f4ccccd    # 0.8f

    .line 859
    .line 860
    .line 861
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 862
    .line 863
    .line 864
    goto :goto_9

    .line 865
    :cond_11
    const/4 p2, 0x0

    .line 866
    const/high16 v2, 0x3f800000    # 1.0f

    .line 867
    .line 868
    invoke-static {p1, p2, p2, p2, v2}, Lb/c;->e(Landroid/view/View;FFFF)Landroid/view/ViewPropertyAnimator;

    .line 869
    .line 870
    .line 871
    move-result-object p1

    .line 872
    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 873
    .line 874
    .line 875
    move-result-object p1

    .line 876
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 877
    .line 878
    .line 879
    iget-object p1, v1, LC4/v;->w:Landroid/widget/RelativeLayout;

    .line 880
    .line 881
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 882
    .line 883
    .line 884
    move-result-object p2

    .line 885
    sget v0, Lflix/com/vision/R$color;->transparent:I

    .line 886
    .line 887
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 888
    .line 889
    .line 890
    move-result p2

    .line 891
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 892
    .line 893
    .line 894
    iget-object p1, v1, LC4/v;->x:Landroid/view/View;

    .line 895
    .line 896
    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 897
    .line 898
    .line 899
    :goto_9
    return-void

    .line 900
    :pswitch_8
    iget-object v0, p0, LC4/b;->e:Lm1/V;

    .line 901
    .line 902
    check-cast v0, LC4/u;

    .line 903
    .line 904
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 905
    .line 906
    .line 907
    iget-object v1, p0, LC4/b;->f:Lm1/B0;

    .line 908
    .line 909
    check-cast v1, LC4/t;

    .line 910
    .line 911
    const-wide/16 v2, 0xc8

    .line 912
    .line 913
    if-eqz p2, :cond_12

    .line 914
    .line 915
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 916
    .line 917
    .line 918
    move-result-object p1

    .line 919
    const p2, 0x3f933333    # 1.15f

    .line 920
    .line 921
    .line 922
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 923
    .line 924
    .line 925
    move-result-object p1

    .line 926
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 927
    .line 928
    .line 929
    move-result-object p1

    .line 930
    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 931
    .line 932
    .line 933
    move-result-object p1

    .line 934
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 935
    .line 936
    .line 937
    iget-object p1, v1, Lm1/B0;->a:Landroid/view/View;

    .line 938
    .line 939
    const/high16 p2, 0x41200000    # 10.0f

    .line 940
    .line 941
    invoke-virtual {p1, p2}, Landroid/view/View;->setElevation(F)V

    .line 942
    .line 943
    .line 944
    iget-object p1, v1, LC4/t;->w:Landroid/widget/TextView;

    .line 945
    .line 946
    const/4 p2, 0x1

    .line 947
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 948
    .line 949
    .line 950
    iget-object p1, v0, LC4/u;->e:Landroid/content/Context;

    .line 951
    .line 952
    instance-of p2, p1, Lflix/com/vision/tv/ChannelsListActivityLegacy;

    .line 953
    .line 954
    if-eqz p2, :cond_13

    .line 955
    .line 956
    check-cast p1, Lflix/com/vision/tv/ChannelsListActivityLegacy;

    .line 957
    .line 958
    iget-object p2, v1, LC4/t;->u:Lflix/com/vision/models/ChannelTv;

    .line 959
    .line 960
    iget-object p2, p2, Lflix/com/vision/models/ChannelTv;->label:Ljava/lang/String;

    .line 961
    .line 962
    invoke-virtual {p1, p2}, Lflix/com/vision/tv/ChannelsListActivityLegacy;->ToastChannel(Ljava/lang/String;)V

    .line 963
    .line 964
    .line 965
    goto :goto_a

    .line 966
    :cond_12
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 967
    .line 968
    .line 969
    move-result-object p1

    .line 970
    const/high16 p2, 0x3f800000    # 1.0f

    .line 971
    .line 972
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 973
    .line 974
    .line 975
    move-result-object p1

    .line 976
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 977
    .line 978
    .line 979
    move-result-object p1

    .line 980
    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 981
    .line 982
    .line 983
    move-result-object p1

    .line 984
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 985
    .line 986
    .line 987
    iget-object p1, v1, Lm1/B0;->a:Landroid/view/View;

    .line 988
    .line 989
    const/4 p2, 0x0

    .line 990
    invoke-virtual {p1, p2}, Landroid/view/View;->setElevation(F)V

    .line 991
    .line 992
    .line 993
    iget-object p1, v1, LC4/t;->w:Landroid/widget/TextView;

    .line 994
    .line 995
    const/4 p2, 0x0

    .line 996
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 997
    .line 998
    .line 999
    :cond_13
    :goto_a
    return-void

    .line 1000
    :pswitch_9
    iget-object v0, p0, LC4/b;->e:Lm1/V;

    .line 1001
    .line 1002
    check-cast v0, LC4/k;

    .line 1003
    .line 1004
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1005
    .line 1006
    .line 1007
    iget-object v1, p0, LC4/b;->f:Lm1/B0;

    .line 1008
    .line 1009
    check-cast v1, LC4/j;

    .line 1010
    .line 1011
    const/4 v2, 0x6

    .line 1012
    if-eqz p2, :cond_14

    .line 1013
    .line 1014
    const/high16 p2, 0x41a00000    # 20.0f

    .line 1015
    .line 1016
    const v3, 0x3f8ccccd    # 1.1f

    .line 1017
    .line 1018
    .line 1019
    invoke-static {p1, p2, p2, p2, v3}, Lb/c;->e(Landroid/view/View;FFFF)Landroid/view/ViewPropertyAnimator;

    .line 1020
    .line 1021
    .line 1022
    move-result-object p1

    .line 1023
    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 1024
    .line 1025
    .line 1026
    move-result-object p1

    .line 1027
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1028
    .line 1029
    .line 1030
    iget-object p1, v1, LC4/j;->v:Landroid/widget/FrameLayout;

    .line 1031
    .line 1032
    iget-object p2, v0, LC4/k;->g:Landroid/app/Activity;

    .line 1033
    .line 1034
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 1035
    .line 1036
    .line 1037
    move-result-object p2

    .line 1038
    sget v0, Lflix/com/vision/R$drawable;->rounded_border_poster:I

    .line 1039
    .line 1040
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 1041
    .line 1042
    .line 1043
    move-result-object p2

    .line 1044
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1045
    .line 1046
    .line 1047
    iget-object p1, v1, LC4/j;->x:Landroid/widget/TextView;

    .line 1048
    .line 1049
    const/4 p2, 0x1

    .line 1050
    invoke-virtual {p1, p2}, Landroid/view/View;->setHorizontalFadingEdgeEnabled(Z)V

    .line 1051
    .line 1052
    .line 1053
    invoke-virtual {p1, p2}, Landroid/view/View;->setFocusable(Z)V

    .line 1054
    .line 1055
    .line 1056
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    .line 1057
    .line 1058
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1059
    .line 1060
    .line 1061
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    .line 1062
    .line 1063
    .line 1064
    invoke-virtual {p1, p2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 1065
    .line 1066
    .line 1067
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 1068
    .line 1069
    .line 1070
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1071
    .line 1072
    .line 1073
    goto :goto_b

    .line 1074
    :cond_14
    const/4 p2, 0x0

    .line 1075
    const/high16 v0, 0x3f800000    # 1.0f

    .line 1076
    .line 1077
    invoke-static {p1, p2, p2, p2, v0}, Lb/c;->e(Landroid/view/View;FFFF)Landroid/view/ViewPropertyAnimator;

    .line 1078
    .line 1079
    .line 1080
    move-result-object p1

    .line 1081
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 1082
    .line 1083
    .line 1084
    move-result-object p1

    .line 1085
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1086
    .line 1087
    .line 1088
    iget-object p1, v1, LC4/j;->v:Landroid/widget/FrameLayout;

    .line 1089
    .line 1090
    const/4 p2, 0x0

    .line 1091
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1092
    .line 1093
    .line 1094
    iget-object p1, v1, LC4/j;->v:Landroid/widget/FrameLayout;

    .line 1095
    .line 1096
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1097
    .line 1098
    .line 1099
    iget-object p1, v1, LC4/j;->x:Landroid/widget/TextView;

    .line 1100
    .line 1101
    const/4 p2, 0x0

    .line 1102
    invoke-virtual {p1, p2}, Landroid/view/View;->setHorizontalFadingEdgeEnabled(Z)V

    .line 1103
    .line 1104
    .line 1105
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 1106
    .line 1107
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1108
    .line 1109
    .line 1110
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    .line 1111
    .line 1112
    .line 1113
    invoke-virtual {p1, p2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 1114
    .line 1115
    .line 1116
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 1117
    .line 1118
    .line 1119
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1120
    .line 1121
    .line 1122
    :goto_b
    return-void

    .line 1123
    :pswitch_a
    iget-object v0, p0, LC4/b;->e:Lm1/V;

    .line 1124
    .line 1125
    check-cast v0, LC4/h;

    .line 1126
    .line 1127
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1128
    .line 1129
    .line 1130
    iget-object v1, p0, LC4/b;->f:Lm1/B0;

    .line 1131
    .line 1132
    check-cast v1, LC4/g;

    .line 1133
    .line 1134
    const/4 v2, 0x1

    .line 1135
    const-string v3, "pref_adult_zone_animate"

    .line 1136
    .line 1137
    if-eqz p2, :cond_16

    .line 1138
    .line 1139
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 1140
    .line 1141
    .line 1142
    move-result-object p2

    .line 1143
    iget-object p2, p2, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 1144
    .line 1145
    invoke-interface {p2, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 1146
    .line 1147
    .line 1148
    move-result p2

    .line 1149
    if-eqz p2, :cond_15

    .line 1150
    .line 1151
    const/high16 p2, 0x41a00000    # 20.0f

    .line 1152
    .line 1153
    const v2, 0x3f8ccccd    # 1.1f

    .line 1154
    .line 1155
    .line 1156
    invoke-static {p1, p2, p2, p2, v2}, Lb/c;->e(Landroid/view/View;FFFF)Landroid/view/ViewPropertyAnimator;

    .line 1157
    .line 1158
    .line 1159
    move-result-object p1

    .line 1160
    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 1161
    .line 1162
    .line 1163
    move-result-object p1

    .line 1164
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1165
    .line 1166
    .line 1167
    :cond_15
    iget-object p1, v1, LC4/g;->v:Landroid/widget/LinearLayout;

    .line 1168
    .line 1169
    iget-object p2, v0, LC4/h;->e:Landroid/app/Activity;

    .line 1170
    .line 1171
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 1172
    .line 1173
    .line 1174
    move-result-object p2

    .line 1175
    sget v0, Lflix/com/vision/R$drawable;->season_item_border_selected:I

    .line 1176
    .line 1177
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 1178
    .line 1179
    .line 1180
    move-result-object p2

    .line 1181
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1182
    .line 1183
    .line 1184
    goto :goto_c

    .line 1185
    :cond_16
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 1186
    .line 1187
    .line 1188
    move-result-object p2

    .line 1189
    iget-object p2, p2, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 1190
    .line 1191
    invoke-interface {p2, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 1192
    .line 1193
    .line 1194
    move-result p2

    .line 1195
    if-eqz p2, :cond_17

    .line 1196
    .line 1197
    const/4 p2, 0x0

    .line 1198
    const/high16 v0, 0x3f800000    # 1.0f

    .line 1199
    .line 1200
    invoke-static {p1, p2, p2, p2, v0}, Lb/c;->e(Landroid/view/View;FFFF)Landroid/view/ViewPropertyAnimator;

    .line 1201
    .line 1202
    .line 1203
    move-result-object p1

    .line 1204
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 1205
    .line 1206
    .line 1207
    move-result-object p1

    .line 1208
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1209
    .line 1210
    .line 1211
    :cond_17
    iget-object p1, v1, LC4/g;->v:Landroid/widget/LinearLayout;

    .line 1212
    .line 1213
    const/4 p2, 0x0

    .line 1214
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1215
    .line 1216
    .line 1217
    :goto_c
    return-void

    .line 1218
    :pswitch_b
    iget-object v0, p0, LC4/b;->e:Lm1/V;

    .line 1219
    .line 1220
    check-cast v0, LC4/d;

    .line 1221
    .line 1222
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1223
    .line 1224
    .line 1225
    iget-object v1, p0, LC4/b;->f:Lm1/B0;

    .line 1226
    .line 1227
    check-cast v1, LC4/c;

    .line 1228
    .line 1229
    const/4 v2, 0x0

    .line 1230
    const-string v3, "pref_adult_zone_animate"

    .line 1231
    .line 1232
    if-eqz p2, :cond_19

    .line 1233
    .line 1234
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 1235
    .line 1236
    .line 1237
    move-result-object p2

    .line 1238
    iget-object p2, p2, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 1239
    .line 1240
    invoke-interface {p2, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 1241
    .line 1242
    .line 1243
    move-result p2

    .line 1244
    if-eqz p2, :cond_18

    .line 1245
    .line 1246
    const/high16 p2, 0x41a00000    # 20.0f

    .line 1247
    .line 1248
    const v2, 0x3f8ccccd    # 1.1f

    .line 1249
    .line 1250
    .line 1251
    invoke-static {p1, p2, p2, p2, v2}, Lb/c;->e(Landroid/view/View;FFFF)Landroid/view/ViewPropertyAnimator;

    .line 1252
    .line 1253
    .line 1254
    move-result-object p1

    .line 1255
    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 1256
    .line 1257
    .line 1258
    move-result-object p1

    .line 1259
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1260
    .line 1261
    .line 1262
    :cond_18
    iget-object p1, v1, LC4/c;->v:Landroid/widget/LinearLayout;

    .line 1263
    .line 1264
    iget-object p2, v0, LC4/d;->g:Lflix/com/vision/activities/adult/AdultCategoriesActivity;

    .line 1265
    .line 1266
    invoke-virtual {p2}, Le/v;->getResources()Landroid/content/res/Resources;

    .line 1267
    .line 1268
    .line 1269
    move-result-object p2

    .line 1270
    sget v0, Lflix/com/vision/R$drawable;->season_item_border_selected:I

    .line 1271
    .line 1272
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 1273
    .line 1274
    .line 1275
    move-result-object p2

    .line 1276
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1277
    .line 1278
    .line 1279
    goto :goto_d

    .line 1280
    :cond_19
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 1281
    .line 1282
    .line 1283
    move-result-object p2

    .line 1284
    iget-object p2, p2, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 1285
    .line 1286
    invoke-interface {p2, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 1287
    .line 1288
    .line 1289
    move-result p2

    .line 1290
    if-eqz p2, :cond_1a

    .line 1291
    .line 1292
    const/4 p2, 0x0

    .line 1293
    const/high16 v0, 0x3f800000    # 1.0f

    .line 1294
    .line 1295
    invoke-static {p1, p2, p2, p2, v0}, Lb/c;->e(Landroid/view/View;FFFF)Landroid/view/ViewPropertyAnimator;

    .line 1296
    .line 1297
    .line 1298
    move-result-object p1

    .line 1299
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 1300
    .line 1301
    .line 1302
    move-result-object p1

    .line 1303
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1304
    .line 1305
    .line 1306
    :cond_1a
    iget-object p1, v1, LC4/c;->v:Landroid/widget/LinearLayout;

    .line 1307
    .line 1308
    const/4 p2, 0x0

    .line 1309
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1310
    .line 1311
    .line 1312
    :goto_d
    return-void

    .line 1313
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
