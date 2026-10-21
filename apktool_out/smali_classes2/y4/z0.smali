.class public final synthetic Ly4/z0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Lflix/com/vision/activities/MovieDetailActivityLeanBack;


# direct methods
.method public synthetic constructor <init>(Lflix/com/vision/activities/MovieDetailActivityLeanBack;I)V
    .locals 0

    .line 1
    iput p2, p0, Ly4/z0;->b:I

    iput-object p1, p0, Ly4/z0;->e:Lflix/com/vision/activities/MovieDetailActivityLeanBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 5

    .line 1
    iget p1, p0, Ly4/z0;->b:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Ly4/z0;->e:Lflix/com/vision/activities/MovieDetailActivityLeanBack;

    .line 7
    .line 8
    const-wide/16 v0, 0x64

    .line 9
    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    iget-object p2, p1, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->w:Landroid/widget/ImageView;

    .line 13
    .line 14
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    .line 15
    .line 16
    sget v3, Lflix/com/vision/R$color;->black:I

    .line 17
    .line 18
    invoke-static {p1, v3}, LA/h;->getColor(Landroid/content/Context;I)I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 23
    .line 24
    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 28
    .line 29
    .line 30
    iget-object p2, p1, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->s0:Landroid/widget/RelativeLayout;

    .line 31
    .line 32
    const v2, 0x3f828f5c    # 1.02f

    .line 33
    .line 34
    .line 35
    invoke-static {p2, v0, v1, v2}, Lb/c;->r(Landroid/widget/RelativeLayout;JF)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p1, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->s0:Landroid/widget/RelativeLayout;

    .line 39
    .line 40
    :goto_0
    invoke-static {p1, v0, v1, v2}, Lb/c;->w(Landroid/widget/RelativeLayout;JF)V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_0
    iget-object p2, p1, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->w:Landroid/widget/ImageView;

    .line 45
    .line 46
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    .line 47
    .line 48
    sget v3, Lflix/com/vision/R$color;->accent:I

    .line 49
    .line 50
    invoke-static {p1, v3}, LA/h;->getColor(Landroid/content/Context;I)I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 55
    .line 56
    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 60
    .line 61
    .line 62
    iget-object p2, p1, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->s0:Landroid/widget/RelativeLayout;

    .line 63
    .line 64
    const/high16 v2, 0x3f800000    # 1.0f

    .line 65
    .line 66
    invoke-static {p2, v0, v1, v2}, Lb/c;->r(Landroid/widget/RelativeLayout;JF)V

    .line 67
    .line 68
    .line 69
    iget-object p1, p1, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->s0:Landroid/widget/RelativeLayout;

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :goto_1
    return-void

    .line 73
    :pswitch_0
    iget-object p1, p0, Ly4/z0;->e:Lflix/com/vision/activities/MovieDetailActivityLeanBack;

    .line 74
    .line 75
    const-wide/16 v0, 0x64

    .line 76
    .line 77
    if-eqz p2, :cond_1

    .line 78
    .line 79
    iget-object p2, p1, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->I0:Landroid/widget/ImageView;

    .line 80
    .line 81
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    .line 82
    .line 83
    sget v3, Lflix/com/vision/R$color;->black:I

    .line 84
    .line 85
    invoke-static {p1, v3}, LA/h;->getColor(Landroid/content/Context;I)I

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 90
    .line 91
    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 95
    .line 96
    .line 97
    iget-object p2, p1, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->q0:Landroid/widget/RelativeLayout;

    .line 98
    .line 99
    const v2, 0x3f828f5c    # 1.02f

    .line 100
    .line 101
    .line 102
    invoke-static {p2, v0, v1, v2}, Lb/c;->r(Landroid/widget/RelativeLayout;JF)V

    .line 103
    .line 104
    .line 105
    iget-object p1, p1, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->q0:Landroid/widget/RelativeLayout;

    .line 106
    .line 107
    :goto_2
    invoke-static {p1, v0, v1, v2}, Lb/c;->w(Landroid/widget/RelativeLayout;JF)V

    .line 108
    .line 109
    .line 110
    goto :goto_3

    .line 111
    :cond_1
    iget-object p2, p1, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->I0:Landroid/widget/ImageView;

    .line 112
    .line 113
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    .line 114
    .line 115
    sget v3, Lflix/com/vision/R$color;->white:I

    .line 116
    .line 117
    invoke-static {p1, v3}, LA/h;->getColor(Landroid/content/Context;I)I

    .line 118
    .line 119
    .line 120
    move-result v3

    .line 121
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 122
    .line 123
    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 127
    .line 128
    .line 129
    iget-object p2, p1, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->q0:Landroid/widget/RelativeLayout;

    .line 130
    .line 131
    const/high16 v2, 0x3f800000    # 1.0f

    .line 132
    .line 133
    invoke-static {p2, v0, v1, v2}, Lb/c;->r(Landroid/widget/RelativeLayout;JF)V

    .line 134
    .line 135
    .line 136
    iget-object p1, p1, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->q0:Landroid/widget/RelativeLayout;

    .line 137
    .line 138
    goto :goto_2

    .line 139
    :goto_3
    return-void

    .line 140
    :pswitch_1
    iget-object p1, p0, Ly4/z0;->e:Lflix/com/vision/activities/MovieDetailActivityLeanBack;

    .line 141
    .line 142
    const-wide/16 v0, 0xc8

    .line 143
    .line 144
    if-nez p2, :cond_2

    .line 145
    .line 146
    iget-object p2, p1, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->F0:Landroid/widget/TextView;

    .line 147
    .line 148
    invoke-virtual {p1}, Le/v;->getResources()Landroid/content/res/Resources;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    sget v3, Lflix/com/vision/R$color;->white:I

    .line 153
    .line 154
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    .line 155
    .line 156
    .line 157
    move-result v2

    .line 158
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 159
    .line 160
    .line 161
    iget-object p1, p1, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->r0:Landroid/widget/RelativeLayout;

    .line 162
    .line 163
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    const/high16 p2, 0x3f800000    # 1.0f

    .line 168
    .line 169
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 182
    .line 183
    .line 184
    goto :goto_4

    .line 185
    :cond_2
    iget-object p2, p1, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->F0:Landroid/widget/TextView;

    .line 186
    .line 187
    invoke-virtual {p1}, Le/v;->getResources()Landroid/content/res/Resources;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    sget v3, Lflix/com/vision/R$color;->black:I

    .line 192
    .line 193
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    .line 194
    .line 195
    .line 196
    move-result v2

    .line 197
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 198
    .line 199
    .line 200
    iget-object p1, p1, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->r0:Landroid/widget/RelativeLayout;

    .line 201
    .line 202
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    const p2, 0x3f8ccccd    # 1.1f

    .line 207
    .line 208
    .line 209
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 222
    .line 223
    .line 224
    :goto_4
    return-void

    .line 225
    :pswitch_2
    iget-object p1, p0, Ly4/z0;->e:Lflix/com/vision/activities/MovieDetailActivityLeanBack;

    .line 226
    .line 227
    const-wide/16 v0, 0xc8

    .line 228
    .line 229
    if-nez p2, :cond_3

    .line 230
    .line 231
    iget-object p2, p1, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->H0:Landroid/widget/ImageView;

    .line 232
    .line 233
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    .line 234
    .line 235
    sget v3, Lflix/com/vision/R$color;->white:I

    .line 236
    .line 237
    invoke-static {p1, v3}, LA/h;->getColor(Landroid/content/Context;I)I

    .line 238
    .line 239
    .line 240
    move-result v3

    .line 241
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 242
    .line 243
    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 247
    .line 248
    .line 249
    iget-object p2, p1, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->E0:Landroid/widget/TextView;

    .line 250
    .line 251
    invoke-virtual {p1}, Le/v;->getResources()Landroid/content/res/Resources;

    .line 252
    .line 253
    .line 254
    move-result-object v2

    .line 255
    sget v3, Lflix/com/vision/R$color;->white:I

    .line 256
    .line 257
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    .line 258
    .line 259
    .line 260
    move-result v2

    .line 261
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 262
    .line 263
    .line 264
    iget-object p1, p1, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->o0:Landroid/widget/LinearLayout;

    .line 265
    .line 266
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 267
    .line 268
    .line 269
    move-result-object p1

    .line 270
    const/high16 p2, 0x3f800000    # 1.0f

    .line 271
    .line 272
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 273
    .line 274
    .line 275
    move-result-object p1

    .line 276
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 277
    .line 278
    .line 279
    move-result-object p1

    .line 280
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 281
    .line 282
    .line 283
    move-result-object p1

    .line 284
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 285
    .line 286
    .line 287
    goto :goto_5

    .line 288
    :cond_3
    iget-object p2, p1, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->H0:Landroid/widget/ImageView;

    .line 289
    .line 290
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    .line 291
    .line 292
    sget v3, Lflix/com/vision/R$color;->black:I

    .line 293
    .line 294
    invoke-static {p1, v3}, LA/h;->getColor(Landroid/content/Context;I)I

    .line 295
    .line 296
    .line 297
    move-result v3

    .line 298
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 299
    .line 300
    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 304
    .line 305
    .line 306
    iget-object p2, p1, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->E0:Landroid/widget/TextView;

    .line 307
    .line 308
    invoke-virtual {p1}, Le/v;->getResources()Landroid/content/res/Resources;

    .line 309
    .line 310
    .line 311
    move-result-object v2

    .line 312
    sget v3, Lflix/com/vision/R$color;->black:I

    .line 313
    .line 314
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    .line 315
    .line 316
    .line 317
    move-result v2

    .line 318
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 319
    .line 320
    .line 321
    iget-object p1, p1, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->o0:Landroid/widget/LinearLayout;

    .line 322
    .line 323
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 324
    .line 325
    .line 326
    move-result-object p1

    .line 327
    const p2, 0x3f8ccccd    # 1.1f

    .line 328
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
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 339
    .line 340
    .line 341
    move-result-object p1

    .line 342
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 343
    .line 344
    .line 345
    :goto_5
    return-void

    .line 346
    :pswitch_3
    iget-object p1, p0, Ly4/z0;->e:Lflix/com/vision/activities/MovieDetailActivityLeanBack;

    .line 347
    .line 348
    const-wide/16 v0, 0x64

    .line 349
    .line 350
    if-eqz p2, :cond_4

    .line 351
    .line 352
    iget-object p2, p1, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->j:Landroid/widget/ImageView;

    .line 353
    .line 354
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    .line 355
    .line 356
    sget v3, Lflix/com/vision/R$color;->black:I

    .line 357
    .line 358
    invoke-static {p1, v3}, LA/h;->getColor(Landroid/content/Context;I)I

    .line 359
    .line 360
    .line 361
    move-result v3

    .line 362
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 363
    .line 364
    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 365
    .line 366
    .line 367
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 368
    .line 369
    .line 370
    iget-object p2, p1, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->e:Landroid/widget/RelativeLayout;

    .line 371
    .line 372
    const v2, 0x3f828f5c    # 1.02f

    .line 373
    .line 374
    .line 375
    invoke-static {p2, v0, v1, v2}, Lb/c;->r(Landroid/widget/RelativeLayout;JF)V

    .line 376
    .line 377
    .line 378
    iget-object p1, p1, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->e:Landroid/widget/RelativeLayout;

    .line 379
    .line 380
    :goto_6
    invoke-static {p1, v0, v1, v2}, Lb/c;->w(Landroid/widget/RelativeLayout;JF)V

    .line 381
    .line 382
    .line 383
    goto :goto_7

    .line 384
    :cond_4
    iget-object p2, p1, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->j:Landroid/widget/ImageView;

    .line 385
    .line 386
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    .line 387
    .line 388
    sget v3, Lflix/com/vision/R$color;->white:I

    .line 389
    .line 390
    invoke-static {p1, v3}, LA/h;->getColor(Landroid/content/Context;I)I

    .line 391
    .line 392
    .line 393
    move-result v3

    .line 394
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 395
    .line 396
    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 397
    .line 398
    .line 399
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 400
    .line 401
    .line 402
    iget-object p2, p1, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->e:Landroid/widget/RelativeLayout;

    .line 403
    .line 404
    const/high16 v2, 0x3f800000    # 1.0f

    .line 405
    .line 406
    invoke-static {p2, v0, v1, v2}, Lb/c;->r(Landroid/widget/RelativeLayout;JF)V

    .line 407
    .line 408
    .line 409
    iget-object p1, p1, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->e:Landroid/widget/RelativeLayout;

    .line 410
    .line 411
    goto :goto_6

    .line 412
    :goto_7
    return-void

    .line 413
    :pswitch_4
    iget-object p1, p0, Ly4/z0;->e:Lflix/com/vision/activities/MovieDetailActivityLeanBack;

    .line 414
    .line 415
    if-eqz p2, :cond_5

    .line 416
    .line 417
    iget-object p2, p1, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->u:Landroid/widget/ImageView;

    .line 418
    .line 419
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    .line 420
    .line 421
    sget v1, Lflix/com/vision/R$color;->black:I

    .line 422
    .line 423
    invoke-static {p1, v1}, LA/h;->getColor(Landroid/content/Context;I)I

    .line 424
    .line 425
    .line 426
    move-result p1

    .line 427
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 428
    .line 429
    invoke-direct {v0, p1, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 430
    .line 431
    .line 432
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 433
    .line 434
    .line 435
    goto :goto_8

    .line 436
    :cond_5
    iget-object p2, p1, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->u:Landroid/widget/ImageView;

    .line 437
    .line 438
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    .line 439
    .line 440
    sget v1, Lflix/com/vision/R$color;->white:I

    .line 441
    .line 442
    invoke-static {p1, v1}, LA/h;->getColor(Landroid/content/Context;I)I

    .line 443
    .line 444
    .line 445
    move-result p1

    .line 446
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 447
    .line 448
    invoke-direct {v0, p1, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 449
    .line 450
    .line 451
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 452
    .line 453
    .line 454
    :goto_8
    return-void

    .line 455
    :pswitch_5
    iget-object p1, p0, Ly4/z0;->e:Lflix/com/vision/activities/MovieDetailActivityLeanBack;

    .line 456
    .line 457
    if-eqz p2, :cond_6

    .line 458
    .line 459
    iget-object p2, p1, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->t:Landroid/widget/ImageView;

    .line 460
    .line 461
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    .line 462
    .line 463
    sget v1, Lflix/com/vision/R$color;->black:I

    .line 464
    .line 465
    invoke-static {p1, v1}, LA/h;->getColor(Landroid/content/Context;I)I

    .line 466
    .line 467
    .line 468
    move-result p1

    .line 469
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 470
    .line 471
    invoke-direct {v0, p1, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 472
    .line 473
    .line 474
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 475
    .line 476
    .line 477
    goto :goto_9

    .line 478
    :cond_6
    iget-object p2, p1, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->t:Landroid/widget/ImageView;

    .line 479
    .line 480
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    .line 481
    .line 482
    sget v1, Lflix/com/vision/R$color;->white:I

    .line 483
    .line 484
    invoke-static {p1, v1}, LA/h;->getColor(Landroid/content/Context;I)I

    .line 485
    .line 486
    .line 487
    move-result p1

    .line 488
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 489
    .line 490
    invoke-direct {v0, p1, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 491
    .line 492
    .line 493
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 494
    .line 495
    .line 496
    :goto_9
    return-void

    .line 497
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
