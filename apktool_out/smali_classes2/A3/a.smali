.class public final synthetic LA3/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, LA3/a;->b:I

    iput-object p1, p0, LA3/a;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    .line 1
    const/high16 v0, 0x43e10000    # 450.0f

    .line 2
    .line 3
    const/high16 v1, -0x1000000

    .line 4
    .line 5
    iget-object v2, p0, LA3/a;->e:Ljava/lang/Object;

    .line 6
    .line 7
    iget v3, p0, LA3/a;->b:I

    .line 8
    .line 9
    packed-switch v3, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    sget v3, Lflix/com/vision/activities/adult/AdultVideosSearchActivity;->y:I

    .line 13
    .line 14
    check-cast v2, Lflix/com/vision/activities/adult/AdultVideosSearchActivity;

    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    .line 20
    .line 21
    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Ljava/lang/Integer;

    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    filled-new-array {p1, v1}, [I

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-direct {v3, v4, p1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3, v0}, Landroid/graphics/drawable/GradientDrawable;->setGradientRadius(F)V

    .line 41
    .line 42
    .line 43
    iget-object p1, v2, Lflix/com/vision/activities/adult/AdultVideosSearchActivity;->b:Landroid/widget/RelativeLayout;

    .line 44
    .line 45
    invoke-virtual {p1, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :pswitch_0
    sget v3, Lflix/com/vision/activities/adult/AdultVideosFavoritesActivity;->v:I

    .line 50
    .line 51
    check-cast v2, Lflix/com/vision/activities/adult/AdultVideosFavoritesActivity;

    .line 52
    .line 53
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    .line 57
    .line 58
    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 59
    .line 60
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    check-cast p1, Ljava/lang/Integer;

    .line 65
    .line 66
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    filled-new-array {p1, v1}, [I

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-direct {v3, v4, p1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3, v0}, Landroid/graphics/drawable/GradientDrawable;->setGradientRadius(F)V

    .line 78
    .line 79
    .line 80
    iget-object p1, v2, Lflix/com/vision/activities/adult/AdultVideosFavoritesActivity;->e:Landroid/widget/RelativeLayout;

    .line 81
    .line 82
    invoke-virtual {p1, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :pswitch_1
    sget v3, Lflix/com/vision/activities/adult/AdultVideosActivity;->C:I

    .line 87
    .line 88
    check-cast v2, Lflix/com/vision/activities/adult/AdultVideosActivity;

    .line 89
    .line 90
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    .line 94
    .line 95
    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 96
    .line 97
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    check-cast p1, Ljava/lang/Integer;

    .line 102
    .line 103
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    filled-new-array {p1, v1}, [I

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-direct {v3, v4, p1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v3, v0}, Landroid/graphics/drawable/GradientDrawable;->setGradientRadius(F)V

    .line 115
    .line 116
    .line 117
    iget-object p1, v2, Lflix/com/vision/activities/adult/AdultVideosActivity;->f:Landroid/widget/RelativeLayout;

    .line 118
    .line 119
    invoke-virtual {p1, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 120
    .line 121
    .line 122
    return-void

    .line 123
    :pswitch_2
    sget v3, Lflix/com/vision/activities/adult/AdultHistoryActivity;->v:I

    .line 124
    .line 125
    check-cast v2, Lflix/com/vision/activities/adult/AdultHistoryActivity;

    .line 126
    .line 127
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    .line 129
    .line 130
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    .line 131
    .line 132
    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 133
    .line 134
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    check-cast p1, Ljava/lang/Integer;

    .line 139
    .line 140
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 141
    .line 142
    .line 143
    move-result p1

    .line 144
    filled-new-array {p1, v1}, [I

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    invoke-direct {v3, v4, p1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v3, v0}, Landroid/graphics/drawable/GradientDrawable;->setGradientRadius(F)V

    .line 152
    .line 153
    .line 154
    iget-object p1, v2, Lflix/com/vision/activities/adult/AdultHistoryActivity;->e:Landroid/widget/RelativeLayout;

    .line 155
    .line 156
    invoke-virtual {p1, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 157
    .line 158
    .line 159
    return-void

    .line 160
    :pswitch_3
    sget v3, Lflix/com/vision/activities/adult/AdultCategoriesActivity;->w:I

    .line 161
    .line 162
    check-cast v2, Lflix/com/vision/activities/adult/AdultCategoriesActivity;

    .line 163
    .line 164
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 165
    .line 166
    .line 167
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    .line 168
    .line 169
    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 170
    .line 171
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    check-cast p1, Ljava/lang/Integer;

    .line 176
    .line 177
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 178
    .line 179
    .line 180
    move-result p1

    .line 181
    filled-new-array {p1, v1}, [I

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    invoke-direct {v3, v4, p1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v3, v0}, Landroid/graphics/drawable/GradientDrawable;->setGradientRadius(F)V

    .line 189
    .line 190
    .line 191
    iget-object p1, v2, Lflix/com/vision/activities/adult/AdultCategoriesActivity;->f:Landroid/widget/RelativeLayout;

    .line 192
    .line 193
    invoke-virtual {p1, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 194
    .line 195
    .line 196
    return-void

    .line 197
    :pswitch_4
    sget v3, Lflix/com/vision/activities/SearchActivityTV;->I:I

    .line 198
    .line 199
    check-cast v2, Lflix/com/vision/activities/SearchActivityTV;

    .line 200
    .line 201
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 202
    .line 203
    .line 204
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    .line 205
    .line 206
    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 207
    .line 208
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    check-cast p1, Ljava/lang/Integer;

    .line 213
    .line 214
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 215
    .line 216
    .line 217
    move-result p1

    .line 218
    filled-new-array {p1, v1}, [I

    .line 219
    .line 220
    .line 221
    move-result-object p1

    .line 222
    invoke-direct {v3, v4, p1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v3, v0}, Landroid/graphics/drawable/GradientDrawable;->setGradientRadius(F)V

    .line 226
    .line 227
    .line 228
    iget-object p1, v2, Lflix/com/vision/activities/SearchActivityTV;->D:Landroid/widget/LinearLayout;

    .line 229
    .line 230
    invoke-virtual {p1, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 231
    .line 232
    .line 233
    return-void

    .line 234
    :pswitch_5
    sget v3, Lflix/com/vision/activities/SearchActivityClassic;->m:I

    .line 235
    .line 236
    check-cast v2, Lflix/com/vision/activities/SearchActivityClassic;

    .line 237
    .line 238
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 239
    .line 240
    .line 241
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    .line 242
    .line 243
    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 244
    .line 245
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object p1

    .line 249
    check-cast p1, Ljava/lang/Integer;

    .line 250
    .line 251
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 252
    .line 253
    .line 254
    move-result p1

    .line 255
    filled-new-array {p1, v1}, [I

    .line 256
    .line 257
    .line 258
    move-result-object p1

    .line 259
    invoke-direct {v3, v4, p1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v3, v0}, Landroid/graphics/drawable/GradientDrawable;->setGradientRadius(F)V

    .line 263
    .line 264
    .line 265
    iget-object p1, v2, Lflix/com/vision/activities/SearchActivityClassic;->b:Landroid/widget/RelativeLayout;

    .line 266
    .line 267
    invoke-virtual {p1, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 268
    .line 269
    .line 270
    return-void

    .line 271
    :pswitch_6
    sget v3, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->a1:I

    .line 272
    .line 273
    check-cast v2, Lflix/com/vision/activities/MovieDetailActivityLeanBack;

    .line 274
    .line 275
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 276
    .line 277
    .line 278
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    .line 279
    .line 280
    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 281
    .line 282
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object p1

    .line 286
    check-cast p1, Ljava/lang/Integer;

    .line 287
    .line 288
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 289
    .line 290
    .line 291
    move-result p1

    .line 292
    filled-new-array {p1, v1}, [I

    .line 293
    .line 294
    .line 295
    move-result-object p1

    .line 296
    invoke-direct {v3, v4, p1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v3, v0}, Landroid/graphics/drawable/GradientDrawable;->setGradientRadius(F)V

    .line 300
    .line 301
    .line 302
    iget-object p1, v2, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->J0:Landroid/widget/FrameLayout;

    .line 303
    .line 304
    invoke-virtual {p1, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 305
    .line 306
    .line 307
    return-void

    .line 308
    :pswitch_7
    sget v3, Lflix/com/vision/activities/MovieDetailActivity;->S0:I

    .line 309
    .line 310
    check-cast v2, Lflix/com/vision/activities/MovieDetailActivity;

    .line 311
    .line 312
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 313
    .line 314
    .line 315
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    .line 316
    .line 317
    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 318
    .line 319
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    move-result-object p1

    .line 323
    check-cast p1, Ljava/lang/Integer;

    .line 324
    .line 325
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 326
    .line 327
    .line 328
    move-result p1

    .line 329
    filled-new-array {p1, v1}, [I

    .line 330
    .line 331
    .line 332
    move-result-object p1

    .line 333
    invoke-direct {v3, v4, p1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 334
    .line 335
    .line 336
    invoke-virtual {v3, v0}, Landroid/graphics/drawable/GradientDrawable;->setGradientRadius(F)V

    .line 337
    .line 338
    .line 339
    iget-object p1, v2, Lflix/com/vision/activities/MovieDetailActivity;->B0:Landroid/widget/FrameLayout;

    .line 340
    .line 341
    invoke-virtual {p1, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 342
    .line 343
    .line 344
    return-void

    .line 345
    :pswitch_8
    sget v3, Lflix/com/vision/activities/MainActivity;->T:I

    .line 346
    .line 347
    check-cast v2, Lflix/com/vision/activities/MainActivity;

    .line 348
    .line 349
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 350
    .line 351
    .line 352
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    .line 353
    .line 354
    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 355
    .line 356
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 357
    .line 358
    .line 359
    move-result-object p1

    .line 360
    check-cast p1, Ljava/lang/Integer;

    .line 361
    .line 362
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 363
    .line 364
    .line 365
    move-result p1

    .line 366
    filled-new-array {p1, v1}, [I

    .line 367
    .line 368
    .line 369
    move-result-object p1

    .line 370
    invoke-direct {v3, v4, p1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 371
    .line 372
    .line 373
    invoke-virtual {v3, v0}, Landroid/graphics/drawable/GradientDrawable;->setGradientRadius(F)V

    .line 374
    .line 375
    .line 376
    iget-object p1, v2, Lflix/com/vision/activities/MainActivity;->t:Landroid/widget/RelativeLayout;

    .line 377
    .line 378
    invoke-virtual {p1, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 379
    .line 380
    .line 381
    return-void

    .line 382
    :pswitch_9
    sget v3, Lflix/com/vision/activities/FilterActivity;->O:I

    .line 383
    .line 384
    check-cast v2, Lflix/com/vision/activities/FilterActivity;

    .line 385
    .line 386
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 387
    .line 388
    .line 389
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    .line 390
    .line 391
    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 392
    .line 393
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 394
    .line 395
    .line 396
    move-result-object p1

    .line 397
    check-cast p1, Ljava/lang/Integer;

    .line 398
    .line 399
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 400
    .line 401
    .line 402
    move-result p1

    .line 403
    filled-new-array {p1, v1}, [I

    .line 404
    .line 405
    .line 406
    move-result-object p1

    .line 407
    invoke-direct {v3, v4, p1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 408
    .line 409
    .line 410
    invoke-virtual {v3, v0}, Landroid/graphics/drawable/GradientDrawable;->setGradientRadius(F)V

    .line 411
    .line 412
    .line 413
    iget-object p1, v2, Lflix/com/vision/activities/FilterActivity;->w:Landroid/widget/RelativeLayout;

    .line 414
    .line 415
    invoke-virtual {p1, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 416
    .line 417
    .line 418
    return-void

    .line 419
    :pswitch_a
    sget v3, Lflix/com/vision/activities/DramaSearchResultActivity;->z:I

    .line 420
    .line 421
    check-cast v2, Lflix/com/vision/activities/DramaSearchResultActivity;

    .line 422
    .line 423
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 424
    .line 425
    .line 426
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    .line 427
    .line 428
    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 429
    .line 430
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 431
    .line 432
    .line 433
    move-result-object p1

    .line 434
    check-cast p1, Ljava/lang/Integer;

    .line 435
    .line 436
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 437
    .line 438
    .line 439
    move-result p1

    .line 440
    filled-new-array {p1, v1}, [I

    .line 441
    .line 442
    .line 443
    move-result-object p1

    .line 444
    invoke-direct {v3, v4, p1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 445
    .line 446
    .line 447
    invoke-virtual {v3, v0}, Landroid/graphics/drawable/GradientDrawable;->setGradientRadius(F)V

    .line 448
    .line 449
    .line 450
    iget-object p1, v2, Lflix/com/vision/activities/DramaSearchResultActivity;->w:Landroid/widget/LinearLayout;

    .line 451
    .line 452
    invoke-virtual {p1, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 453
    .line 454
    .line 455
    return-void

    .line 456
    :pswitch_b
    sget v3, Lflix/com/vision/activities/DramaSearchActivityMobile;->t:I

    .line 457
    .line 458
    check-cast v2, Lflix/com/vision/activities/DramaSearchActivityMobile;

    .line 459
    .line 460
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 461
    .line 462
    .line 463
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    .line 464
    .line 465
    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 466
    .line 467
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 468
    .line 469
    .line 470
    move-result-object p1

    .line 471
    check-cast p1, Ljava/lang/Integer;

    .line 472
    .line 473
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 474
    .line 475
    .line 476
    move-result p1

    .line 477
    filled-new-array {p1, v1}, [I

    .line 478
    .line 479
    .line 480
    move-result-object p1

    .line 481
    invoke-direct {v3, v4, p1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 482
    .line 483
    .line 484
    invoke-virtual {v3, v0}, Landroid/graphics/drawable/GradientDrawable;->setGradientRadius(F)V

    .line 485
    .line 486
    .line 487
    iget-object p1, v2, Lflix/com/vision/activities/DramaSearchActivityMobile;->b:Landroid/widget/RelativeLayout;

    .line 488
    .line 489
    invoke-virtual {p1, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 490
    .line 491
    .line 492
    return-void

    .line 493
    :pswitch_c
    sget v3, Lflix/com/vision/activities/DramaDetailActivity;->A:I

    .line 494
    .line 495
    check-cast v2, Lflix/com/vision/activities/DramaDetailActivity;

    .line 496
    .line 497
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 498
    .line 499
    .line 500
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    .line 501
    .line 502
    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 503
    .line 504
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 505
    .line 506
    .line 507
    move-result-object p1

    .line 508
    check-cast p1, Ljava/lang/Integer;

    .line 509
    .line 510
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 511
    .line 512
    .line 513
    move-result p1

    .line 514
    filled-new-array {p1, v1}, [I

    .line 515
    .line 516
    .line 517
    move-result-object p1

    .line 518
    invoke-direct {v3, v4, p1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 519
    .line 520
    .line 521
    invoke-virtual {v3, v0}, Landroid/graphics/drawable/GradientDrawable;->setGradientRadius(F)V

    .line 522
    .line 523
    .line 524
    iget-object p1, v2, Lflix/com/vision/activities/DramaDetailActivity;->x:Landroid/widget/RelativeLayout;

    .line 525
    .line 526
    invoke-virtual {p1, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 527
    .line 528
    .line 529
    return-void

    .line 530
    :pswitch_d
    sget v3, Lflix/com/vision/activities/CastMoviesActivity;->G:I

    .line 531
    .line 532
    check-cast v2, Lflix/com/vision/activities/CastMoviesActivity;

    .line 533
    .line 534
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 535
    .line 536
    .line 537
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    .line 538
    .line 539
    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 540
    .line 541
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 542
    .line 543
    .line 544
    move-result-object p1

    .line 545
    check-cast p1, Ljava/lang/Integer;

    .line 546
    .line 547
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 548
    .line 549
    .line 550
    move-result p1

    .line 551
    filled-new-array {p1, v1}, [I

    .line 552
    .line 553
    .line 554
    move-result-object p1

    .line 555
    invoke-direct {v3, v4, p1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 556
    .line 557
    .line 558
    invoke-virtual {v3, v0}, Landroid/graphics/drawable/GradientDrawable;->setGradientRadius(F)V

    .line 559
    .line 560
    .line 561
    iget-object p1, v2, Lflix/com/vision/activities/CastMoviesActivity;->z:Landroid/widget/LinearLayout;

    .line 562
    .line 563
    invoke-virtual {p1, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 564
    .line 565
    .line 566
    return-void

    .line 567
    :pswitch_e
    sget v3, Lflix/com/vision/activities/AnimesListActivity;->E:I

    .line 568
    .line 569
    check-cast v2, Lflix/com/vision/activities/AnimesListActivity;

    .line 570
    .line 571
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 572
    .line 573
    .line 574
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    .line 575
    .line 576
    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 577
    .line 578
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 579
    .line 580
    .line 581
    move-result-object p1

    .line 582
    check-cast p1, Ljava/lang/Integer;

    .line 583
    .line 584
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 585
    .line 586
    .line 587
    move-result p1

    .line 588
    filled-new-array {p1, v1}, [I

    .line 589
    .line 590
    .line 591
    move-result-object p1

    .line 592
    invoke-direct {v3, v4, p1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 593
    .line 594
    .line 595
    invoke-virtual {v3, v0}, Landroid/graphics/drawable/GradientDrawable;->setGradientRadius(F)V

    .line 596
    .line 597
    .line 598
    iget-object p1, v2, Lflix/com/vision/activities/AnimesListActivity;->y:Landroid/widget/RelativeLayout;

    .line 599
    .line 600
    invoke-virtual {p1, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 601
    .line 602
    .line 603
    return-void

    .line 604
    :pswitch_f
    sget v3, Lflix/com/vision/activities/AnimeSearchResultActivty;->z:I

    .line 605
    .line 606
    check-cast v2, Lflix/com/vision/activities/AnimeSearchResultActivty;

    .line 607
    .line 608
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 609
    .line 610
    .line 611
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    .line 612
    .line 613
    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 614
    .line 615
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 616
    .line 617
    .line 618
    move-result-object p1

    .line 619
    check-cast p1, Ljava/lang/Integer;

    .line 620
    .line 621
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 622
    .line 623
    .line 624
    move-result p1

    .line 625
    filled-new-array {p1, v1}, [I

    .line 626
    .line 627
    .line 628
    move-result-object p1

    .line 629
    invoke-direct {v3, v4, p1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 630
    .line 631
    .line 632
    invoke-virtual {v3, v0}, Landroid/graphics/drawable/GradientDrawable;->setGradientRadius(F)V

    .line 633
    .line 634
    .line 635
    iget-object p1, v2, Lflix/com/vision/activities/AnimeSearchResultActivty;->x:Landroid/widget/LinearLayout;

    .line 636
    .line 637
    invoke-virtual {p1, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 638
    .line 639
    .line 640
    return-void

    .line 641
    :pswitch_10
    sget v3, Lflix/com/vision/activities/AnimeDetailActivity;->D:I

    .line 642
    .line 643
    check-cast v2, Lflix/com/vision/activities/AnimeDetailActivity;

    .line 644
    .line 645
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 646
    .line 647
    .line 648
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    .line 649
    .line 650
    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 651
    .line 652
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 653
    .line 654
    .line 655
    move-result-object p1

    .line 656
    check-cast p1, Ljava/lang/Integer;

    .line 657
    .line 658
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 659
    .line 660
    .line 661
    move-result p1

    .line 662
    filled-new-array {p1, v1}, [I

    .line 663
    .line 664
    .line 665
    move-result-object p1

    .line 666
    invoke-direct {v3, v4, p1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 667
    .line 668
    .line 669
    invoke-virtual {v3, v0}, Landroid/graphics/drawable/GradientDrawable;->setGradientRadius(F)V

    .line 670
    .line 671
    .line 672
    iget-object p1, v2, Lflix/com/vision/activities/AnimeDetailActivity;->z:Landroid/widget/RelativeLayout;

    .line 673
    .line 674
    invoke-virtual {p1, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 675
    .line 676
    .line 677
    return-void

    .line 678
    :pswitch_11
    sget-object v3, Lflix/com/vision/App;->z:Ljava/util/ArrayList;

    .line 679
    .line 680
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    .line 681
    .line 682
    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 683
    .line 684
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 685
    .line 686
    .line 687
    move-result-object p1

    .line 688
    check-cast p1, Ljava/lang/Integer;

    .line 689
    .line 690
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 691
    .line 692
    .line 693
    move-result p1

    .line 694
    filled-new-array {p1, v1}, [I

    .line 695
    .line 696
    .line 697
    move-result-object p1

    .line 698
    invoke-direct {v3, v4, p1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 699
    .line 700
    .line 701
    invoke-virtual {v3, v0}, Landroid/graphics/drawable/GradientDrawable;->setGradientRadius(F)V

    .line 702
    .line 703
    .line 704
    check-cast v2, Landroid/view/View;

    .line 705
    .line 706
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 707
    .line 708
    .line 709
    return-void

    .line 710
    :pswitch_12
    sget v0, Lio/github/giangpham96/expandable_textview/ExpandableTextView;->A:I

    .line 711
    .line 712
    const-string v0, "this$0"

    .line 713
    .line 714
    check-cast v2, Lio/github/giangpham96/expandable_textview/ExpandableTextView;

    .line 715
    .line 716
    invoke-static {v2, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 717
    .line 718
    .line 719
    const-string v0, "value"

    .line 720
    .line 721
    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 722
    .line 723
    .line 724
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 725
    .line 726
    .line 727
    move-result-object v0

    .line 728
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 729
    .line 730
    .line 731
    move-result-object v1

    .line 732
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 733
    .line 734
    .line 735
    move-result-object p1

    .line 736
    const-string v3, "null cannot be cast to non-null type kotlin.Int"

    .line 737
    .line 738
    invoke-static {p1, v3}, Lkotlin/jvm/internal/j;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 739
    .line 740
    .line 741
    check-cast p1, Ljava/lang/Integer;

    .line 742
    .line 743
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 744
    .line 745
    .line 746
    move-result p1

    .line 747
    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 748
    .line 749
    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 750
    .line 751
    .line 752
    return-void

    .line 753
    :pswitch_13
    sget v3, Lflix/com/vision/tv/TVCategoriesActivity;->H:I

    .line 754
    .line 755
    check-cast v2, Lflix/com/vision/tv/TVCategoriesActivity;

    .line 756
    .line 757
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 758
    .line 759
    .line 760
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    .line 761
    .line 762
    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 763
    .line 764
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 765
    .line 766
    .line 767
    move-result-object p1

    .line 768
    check-cast p1, Ljava/lang/Integer;

    .line 769
    .line 770
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 771
    .line 772
    .line 773
    move-result p1

    .line 774
    filled-new-array {p1, v1}, [I

    .line 775
    .line 776
    .line 777
    move-result-object p1

    .line 778
    invoke-direct {v3, v4, p1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 779
    .line 780
    .line 781
    invoke-virtual {v3, v0}, Landroid/graphics/drawable/GradientDrawable;->setGradientRadius(F)V

    .line 782
    .line 783
    .line 784
    iget-object p1, v2, Lflix/com/vision/tv/TVCategoriesActivity;->e:Landroid/widget/RelativeLayout;

    .line 785
    .line 786
    invoke-virtual {p1, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 787
    .line 788
    .line 789
    return-void

    .line 790
    :pswitch_14
    check-cast v2, LK3/l;

    .line 791
    .line 792
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 793
    .line 794
    .line 795
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 796
    .line 797
    .line 798
    move-result-object p1

    .line 799
    check-cast p1, Ljava/lang/Float;

    .line 800
    .line 801
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 802
    .line 803
    .line 804
    move-result p1

    .line 805
    iget-object v0, v2, LK3/r;->d:Lcom/google/android/material/internal/CheckableImageButton;

    .line 806
    .line 807
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 808
    .line 809
    .line 810
    return-void

    .line 811
    :pswitch_15
    sget v3, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->T:I

    .line 812
    .line 813
    check-cast v2, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;

    .line 814
    .line 815
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 816
    .line 817
    .line 818
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    .line 819
    .line 820
    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 821
    .line 822
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 823
    .line 824
    .line 825
    move-result-object p1

    .line 826
    check-cast p1, Ljava/lang/Integer;

    .line 827
    .line 828
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 829
    .line 830
    .line 831
    move-result p1

    .line 832
    filled-new-array {p1, v1}, [I

    .line 833
    .line 834
    .line 835
    move-result-object p1

    .line 836
    invoke-direct {v3, v4, p1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 837
    .line 838
    .line 839
    invoke-virtual {v3, v0}, Landroid/graphics/drawable/GradientDrawable;->setGradientRadius(F)V

    .line 840
    .line 841
    .line 842
    iget-object p1, v2, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->y:Landroid/widget/RelativeLayout;

    .line 843
    .line 844
    invoke-virtual {p1, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 845
    .line 846
    .line 847
    return-void

    .line 848
    :pswitch_16
    sget v3, Lflix/com/vision/activities/leanback/CastMoviesActivityLeanBack;->H:I

    .line 849
    .line 850
    check-cast v2, Lflix/com/vision/activities/leanback/CastMoviesActivityLeanBack;

    .line 851
    .line 852
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 853
    .line 854
    .line 855
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    .line 856
    .line 857
    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 858
    .line 859
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 860
    .line 861
    .line 862
    move-result-object p1

    .line 863
    check-cast p1, Ljava/lang/Integer;

    .line 864
    .line 865
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 866
    .line 867
    .line 868
    move-result p1

    .line 869
    filled-new-array {p1, v1}, [I

    .line 870
    .line 871
    .line 872
    move-result-object p1

    .line 873
    invoke-direct {v3, v4, p1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 874
    .line 875
    .line 876
    invoke-virtual {v3, v0}, Landroid/graphics/drawable/GradientDrawable;->setGradientRadius(F)V

    .line 877
    .line 878
    .line 879
    iget-object p1, v2, Lflix/com/vision/activities/leanback/CastMoviesActivityLeanBack;->u:Landroid/widget/LinearLayout;

    .line 880
    .line 881
    invoke-virtual {p1, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 882
    .line 883
    .line 884
    return-void

    .line 885
    :pswitch_17
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    .line 886
    .line 887
    .line 888
    move-result p1

    .line 889
    sget v0, LA3/c;->a:I

    .line 890
    .line 891
    const/4 v1, 0x0

    .line 892
    invoke-static {v0, v1, p1}, Lg3/a;->lerp(IIF)I

    .line 893
    .line 894
    .line 895
    move-result p1

    .line 896
    const/high16 v0, -0x67000000

    .line 897
    .line 898
    invoke-static {v0, p1}, LD/a;->setAlphaComponent(II)I

    .line 899
    .line 900
    .line 901
    move-result p1

    .line 902
    check-cast v2, Landroidx/drawerlayout/widget/DrawerLayout;

    .line 903
    .line 904
    invoke-virtual {v2, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->setScrimColor(I)V

    .line 905
    .line 906
    .line 907
    return-void

    .line 908
    nop

    .line 909
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
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
