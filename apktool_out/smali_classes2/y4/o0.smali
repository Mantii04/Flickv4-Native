.class public final synthetic Ly4/o0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Lflix/com/vision/activities/MovieDetailActivity;


# direct methods
.method public synthetic constructor <init>(Lflix/com/vision/activities/MovieDetailActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Ly4/o0;->b:I

    iput-object p1, p0, Ly4/o0;->e:Lflix/com/vision/activities/MovieDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 5

    .line 1
    iget p1, p0, Ly4/o0;->b:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Ly4/o0;->e:Lflix/com/vision/activities/MovieDetailActivity;

    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    iget-object p2, p1, Lflix/com/vision/activities/MovieDetailActivity;->j:Landroid/widget/ImageView;

    .line 11
    .line 12
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    .line 13
    .line 14
    sget v1, Lflix/com/vision/R$color;->black:I

    .line 15
    .line 16
    invoke-static {p1, v1}, LA/h;->getColor(Landroid/content/Context;I)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 21
    .line 22
    invoke-direct {v0, p1, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object p2, p1, Lflix/com/vision/activities/MovieDetailActivity;->j:Landroid/widget/ImageView;

    .line 30
    .line 31
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    .line 32
    .line 33
    sget v1, Lflix/com/vision/R$color;->white:I

    .line 34
    .line 35
    invoke-static {p1, v1}, LA/h;->getColor(Landroid/content/Context;I)I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 40
    .line 41
    invoke-direct {v0, p1, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 45
    .line 46
    .line 47
    :goto_0
    return-void

    .line 48
    :pswitch_0
    iget-object p1, p0, Ly4/o0;->e:Lflix/com/vision/activities/MovieDetailActivity;

    .line 49
    .line 50
    if-eqz p2, :cond_1

    .line 51
    .line 52
    iget-object p2, p1, Lflix/com/vision/activities/MovieDetailActivity;->f:Landroid/widget/ImageView;

    .line 53
    .line 54
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    .line 55
    .line 56
    sget v1, Lflix/com/vision/R$color;->black:I

    .line 57
    .line 58
    invoke-static {p1, v1}, LA/h;->getColor(Landroid/content/Context;I)I

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 63
    .line 64
    invoke-direct {v0, p1, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_1
    iget-object p2, p1, Lflix/com/vision/activities/MovieDetailActivity;->f:Landroid/widget/ImageView;

    .line 72
    .line 73
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    .line 74
    .line 75
    sget v1, Lflix/com/vision/R$color;->white:I

    .line 76
    .line 77
    invoke-static {p1, v1}, LA/h;->getColor(Landroid/content/Context;I)I

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 82
    .line 83
    invoke-direct {v0, p1, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 87
    .line 88
    .line 89
    :goto_1
    return-void

    .line 90
    :pswitch_1
    iget-object p1, p0, Ly4/o0;->e:Lflix/com/vision/activities/MovieDetailActivity;

    .line 91
    .line 92
    const-wide/16 v0, 0x64

    .line 93
    .line 94
    if-eqz p2, :cond_2

    .line 95
    .line 96
    iget-object p2, p1, Lflix/com/vision/activities/MovieDetailActivity;->n:Landroid/widget/ImageView;

    .line 97
    .line 98
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    .line 99
    .line 100
    sget v3, Lflix/com/vision/R$color;->black:I

    .line 101
    .line 102
    invoke-static {p1, v3}, LA/h;->getColor(Landroid/content/Context;I)I

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 107
    .line 108
    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 112
    .line 113
    .line 114
    iget-object p2, p1, Lflix/com/vision/activities/MovieDetailActivity;->k0:Landroid/widget/RelativeLayout;

    .line 115
    .line 116
    const v2, 0x3f828f5c    # 1.02f

    .line 117
    .line 118
    .line 119
    invoke-static {p2, v0, v1, v2}, Lb/c;->r(Landroid/widget/RelativeLayout;JF)V

    .line 120
    .line 121
    .line 122
    iget-object p1, p1, Lflix/com/vision/activities/MovieDetailActivity;->k0:Landroid/widget/RelativeLayout;

    .line 123
    .line 124
    :goto_2
    invoke-static {p1, v0, v1, v2}, Lb/c;->w(Landroid/widget/RelativeLayout;JF)V

    .line 125
    .line 126
    .line 127
    goto :goto_3

    .line 128
    :cond_2
    iget-object p2, p1, Lflix/com/vision/activities/MovieDetailActivity;->n:Landroid/widget/ImageView;

    .line 129
    .line 130
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    .line 131
    .line 132
    sget v3, Lflix/com/vision/R$color;->accent:I

    .line 133
    .line 134
    invoke-static {p1, v3}, LA/h;->getColor(Landroid/content/Context;I)I

    .line 135
    .line 136
    .line 137
    move-result v3

    .line 138
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 139
    .line 140
    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 144
    .line 145
    .line 146
    iget-object p2, p1, Lflix/com/vision/activities/MovieDetailActivity;->k0:Landroid/widget/RelativeLayout;

    .line 147
    .line 148
    const/high16 v2, 0x3f800000    # 1.0f

    .line 149
    .line 150
    invoke-static {p2, v0, v1, v2}, Lb/c;->r(Landroid/widget/RelativeLayout;JF)V

    .line 151
    .line 152
    .line 153
    iget-object p1, p1, Lflix/com/vision/activities/MovieDetailActivity;->k0:Landroid/widget/RelativeLayout;

    .line 154
    .line 155
    goto :goto_2

    .line 156
    :goto_3
    return-void

    .line 157
    :pswitch_2
    iget-object p1, p0, Ly4/o0;->e:Lflix/com/vision/activities/MovieDetailActivity;

    .line 158
    .line 159
    const-wide/16 v0, 0x64

    .line 160
    .line 161
    if-eqz p2, :cond_3

    .line 162
    .line 163
    iget-object p2, p1, Lflix/com/vision/activities/MovieDetailActivity;->A0:Landroid/widget/ImageView;

    .line 164
    .line 165
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    .line 166
    .line 167
    sget v3, Lflix/com/vision/R$color;->black:I

    .line 168
    .line 169
    invoke-static {p1, v3}, LA/h;->getColor(Landroid/content/Context;I)I

    .line 170
    .line 171
    .line 172
    move-result v3

    .line 173
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 174
    .line 175
    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 179
    .line 180
    .line 181
    iget-object p2, p1, Lflix/com/vision/activities/MovieDetailActivity;->i0:Landroid/widget/RelativeLayout;

    .line 182
    .line 183
    const v2, 0x3f828f5c    # 1.02f

    .line 184
    .line 185
    .line 186
    invoke-static {p2, v0, v1, v2}, Lb/c;->r(Landroid/widget/RelativeLayout;JF)V

    .line 187
    .line 188
    .line 189
    iget-object p1, p1, Lflix/com/vision/activities/MovieDetailActivity;->i0:Landroid/widget/RelativeLayout;

    .line 190
    .line 191
    :goto_4
    invoke-static {p1, v0, v1, v2}, Lb/c;->w(Landroid/widget/RelativeLayout;JF)V

    .line 192
    .line 193
    .line 194
    goto :goto_5

    .line 195
    :cond_3
    iget-object p2, p1, Lflix/com/vision/activities/MovieDetailActivity;->A0:Landroid/widget/ImageView;

    .line 196
    .line 197
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    .line 198
    .line 199
    sget v3, Lflix/com/vision/R$color;->white:I

    .line 200
    .line 201
    invoke-static {p1, v3}, LA/h;->getColor(Landroid/content/Context;I)I

    .line 202
    .line 203
    .line 204
    move-result v3

    .line 205
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 206
    .line 207
    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 211
    .line 212
    .line 213
    iget-object p2, p1, Lflix/com/vision/activities/MovieDetailActivity;->i0:Landroid/widget/RelativeLayout;

    .line 214
    .line 215
    const/high16 v2, 0x3f800000    # 1.0f

    .line 216
    .line 217
    invoke-static {p2, v0, v1, v2}, Lb/c;->r(Landroid/widget/RelativeLayout;JF)V

    .line 218
    .line 219
    .line 220
    iget-object p1, p1, Lflix/com/vision/activities/MovieDetailActivity;->i0:Landroid/widget/RelativeLayout;

    .line 221
    .line 222
    goto :goto_4

    .line 223
    :goto_5
    return-void

    .line 224
    :pswitch_3
    iget-object p1, p0, Ly4/o0;->e:Lflix/com/vision/activities/MovieDetailActivity;

    .line 225
    .line 226
    const-wide/16 v0, 0x64

    .line 227
    .line 228
    if-nez p2, :cond_4

    .line 229
    .line 230
    iget-object p2, p1, Lflix/com/vision/activities/MovieDetailActivity;->x0:Landroid/widget/TextView;

    .line 231
    .line 232
    invoke-virtual {p1}, Le/v;->getResources()Landroid/content/res/Resources;

    .line 233
    .line 234
    .line 235
    move-result-object v2

    .line 236
    sget v3, Lflix/com/vision/R$color;->white:I

    .line 237
    .line 238
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    .line 239
    .line 240
    .line 241
    move-result v2

    .line 242
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 243
    .line 244
    .line 245
    iget-object p2, p1, Lflix/com/vision/activities/MovieDetailActivity;->j0:Landroid/widget/RelativeLayout;

    .line 246
    .line 247
    const/high16 v2, 0x3f800000    # 1.0f

    .line 248
    .line 249
    invoke-static {p2, v0, v1, v2}, Lb/c;->r(Landroid/widget/RelativeLayout;JF)V

    .line 250
    .line 251
    .line 252
    iget-object p1, p1, Lflix/com/vision/activities/MovieDetailActivity;->j0:Landroid/widget/RelativeLayout;

    .line 253
    .line 254
    :goto_6
    invoke-static {p1, v0, v1, v2}, Lb/c;->w(Landroid/widget/RelativeLayout;JF)V

    .line 255
    .line 256
    .line 257
    goto :goto_7

    .line 258
    :cond_4
    iget-object p2, p1, Lflix/com/vision/activities/MovieDetailActivity;->x0:Landroid/widget/TextView;

    .line 259
    .line 260
    invoke-virtual {p1}, Le/v;->getResources()Landroid/content/res/Resources;

    .line 261
    .line 262
    .line 263
    move-result-object v2

    .line 264
    sget v3, Lflix/com/vision/R$color;->black:I

    .line 265
    .line 266
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    .line 267
    .line 268
    .line 269
    move-result v2

    .line 270
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 271
    .line 272
    .line 273
    iget-object p2, p1, Lflix/com/vision/activities/MovieDetailActivity;->j0:Landroid/widget/RelativeLayout;

    .line 274
    .line 275
    const v2, 0x3f83d70a    # 1.03f

    .line 276
    .line 277
    .line 278
    invoke-static {p2, v0, v1, v2}, Lb/c;->r(Landroid/widget/RelativeLayout;JF)V

    .line 279
    .line 280
    .line 281
    iget-object p1, p1, Lflix/com/vision/activities/MovieDetailActivity;->j0:Landroid/widget/RelativeLayout;

    .line 282
    .line 283
    goto :goto_6

    .line 284
    :goto_7
    return-void

    .line 285
    :pswitch_4
    iget-object p1, p0, Ly4/o0;->e:Lflix/com/vision/activities/MovieDetailActivity;

    .line 286
    .line 287
    if-nez p2, :cond_5

    .line 288
    .line 289
    iget-object p2, p1, Lflix/com/vision/activities/MovieDetailActivity;->z0:Landroid/widget/ImageView;

    .line 290
    .line 291
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    .line 292
    .line 293
    sget v1, Lflix/com/vision/R$color;->white:I

    .line 294
    .line 295
    invoke-static {p1, v1}, LA/h;->getColor(Landroid/content/Context;I)I

    .line 296
    .line 297
    .line 298
    move-result v1

    .line 299
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 300
    .line 301
    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 305
    .line 306
    .line 307
    iget-object p2, p1, Lflix/com/vision/activities/MovieDetailActivity;->w0:Landroid/widget/TextView;

    .line 308
    .line 309
    invoke-virtual {p1}, Le/v;->getResources()Landroid/content/res/Resources;

    .line 310
    .line 311
    .line 312
    move-result-object v0

    .line 313
    sget v1, Lflix/com/vision/R$color;->white:I

    .line 314
    .line 315
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 316
    .line 317
    .line 318
    move-result v0

    .line 319
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 320
    .line 321
    .line 322
    iget-object p2, p1, Lflix/com/vision/activities/MovieDetailActivity;->g0:Landroid/widget/LinearLayout;

    .line 323
    .line 324
    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 325
    .line 326
    .line 327
    move-result-object p2

    .line 328
    const/high16 v0, 0x3f800000    # 1.0f

    .line 329
    .line 330
    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 331
    .line 332
    .line 333
    move-result-object p2

    .line 334
    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 335
    .line 336
    .line 337
    iget-object p1, p1, Lflix/com/vision/activities/MovieDetailActivity;->g0:Landroid/widget/LinearLayout;

    .line 338
    .line 339
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 340
    .line 341
    .line 342
    move-result-object p1

    .line 343
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 344
    .line 345
    .line 346
    move-result-object p1

    .line 347
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 348
    .line 349
    .line 350
    goto :goto_8

    .line 351
    :cond_5
    iget-object p2, p1, Lflix/com/vision/activities/MovieDetailActivity;->z0:Landroid/widget/ImageView;

    .line 352
    .line 353
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    .line 354
    .line 355
    sget v1, Lflix/com/vision/R$color;->black:I

    .line 356
    .line 357
    invoke-static {p1, v1}, LA/h;->getColor(Landroid/content/Context;I)I

    .line 358
    .line 359
    .line 360
    move-result v1

    .line 361
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 362
    .line 363
    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 364
    .line 365
    .line 366
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 367
    .line 368
    .line 369
    iget-object p2, p1, Lflix/com/vision/activities/MovieDetailActivity;->w0:Landroid/widget/TextView;

    .line 370
    .line 371
    invoke-virtual {p1}, Le/v;->getResources()Landroid/content/res/Resources;

    .line 372
    .line 373
    .line 374
    move-result-object v0

    .line 375
    sget v1, Lflix/com/vision/R$color;->black:I

    .line 376
    .line 377
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 378
    .line 379
    .line 380
    move-result v0

    .line 381
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 382
    .line 383
    .line 384
    iget-object p2, p1, Lflix/com/vision/activities/MovieDetailActivity;->g0:Landroid/widget/LinearLayout;

    .line 385
    .line 386
    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 387
    .line 388
    .line 389
    move-result-object p2

    .line 390
    const-wide/16 v0, 0x64

    .line 391
    .line 392
    invoke-virtual {p2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 393
    .line 394
    .line 395
    move-result-object p2

    .line 396
    const v2, 0x3f83d70a    # 1.03f

    .line 397
    .line 398
    .line 399
    invoke-virtual {p2, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 400
    .line 401
    .line 402
    move-result-object p2

    .line 403
    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 404
    .line 405
    .line 406
    iget-object p1, p1, Lflix/com/vision/activities/MovieDetailActivity;->g0:Landroid/widget/LinearLayout;

    .line 407
    .line 408
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 409
    .line 410
    .line 411
    move-result-object p1

    .line 412
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 413
    .line 414
    .line 415
    move-result-object p1

    .line 416
    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 417
    .line 418
    .line 419
    move-result-object p1

    .line 420
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 421
    .line 422
    .line 423
    :goto_8
    return-void

    .line 424
    nop

    .line 425
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
