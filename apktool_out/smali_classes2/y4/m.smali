.class public final synthetic Ly4/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Lflix/com/vision/activities/AnimesListActivity;


# direct methods
.method public synthetic constructor <init>(Lflix/com/vision/activities/AnimesListActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Ly4/m;->b:I

    iput-object p1, p0, Ly4/m;->e:Lflix/com/vision/activities/AnimesListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 3

    .line 1
    iget p1, p0, Ly4/m;->b:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Ly4/m;->e:Lflix/com/vision/activities/AnimesListActivity;

    .line 7
    .line 8
    if-nez p2, :cond_0

    .line 9
    .line 10
    iget-object p2, p1, Lflix/com/vision/activities/AnimesListActivity;->v:Landroid/widget/ImageView;

    .line 11
    .line 12
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    .line 13
    .line 14
    sget v1, Lflix/com/vision/R$color;->white:I

    .line 15
    .line 16
    invoke-static {p1, v1}, LA/h;->getColor(Landroid/content/Context;I)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 21
    .line 22
    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 26
    .line 27
    .line 28
    iget-object p2, p1, Lflix/com/vision/activities/AnimesListActivity;->n:Landroid/widget/TextView;

    .line 29
    .line 30
    invoke-virtual {p1}, Le/v;->getResources()Landroid/content/res/Resources;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    sget v1, Lflix/com/vision/R$color;->white:I

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 41
    .line 42
    .line 43
    iget-object p2, p1, Lflix/com/vision/activities/AnimesListActivity;->m:Landroid/widget/RelativeLayout;

    .line 44
    .line 45
    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    const/high16 v0, 0x3f800000    # 1.0f

    .line 50
    .line 51
    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 56
    .line 57
    .line 58
    iget-object p1, p1, Lflix/com/vision/activities/AnimesListActivity;->m:Landroid/widget/RelativeLayout;

    .line 59
    .line 60
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_0
    iget-object p2, p1, Lflix/com/vision/activities/AnimesListActivity;->v:Landroid/widget/ImageView;

    .line 73
    .line 74
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    .line 75
    .line 76
    sget v1, Lflix/com/vision/R$color;->black:I

    .line 77
    .line 78
    invoke-static {p1, v1}, LA/h;->getColor(Landroid/content/Context;I)I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 83
    .line 84
    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 88
    .line 89
    .line 90
    iget-object p2, p1, Lflix/com/vision/activities/AnimesListActivity;->n:Landroid/widget/TextView;

    .line 91
    .line 92
    invoke-virtual {p1}, Le/v;->getResources()Landroid/content/res/Resources;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    sget v1, Lflix/com/vision/R$color;->black:I

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 103
    .line 104
    .line 105
    iget-object p2, p1, Lflix/com/vision/activities/AnimesListActivity;->m:Landroid/widget/RelativeLayout;

    .line 106
    .line 107
    const-wide/16 v0, 0x64

    .line 108
    .line 109
    const v2, 0x3f83d70a    # 1.03f

    .line 110
    .line 111
    .line 112
    invoke-static {p2, v0, v1, v2}, Lb/c;->r(Landroid/widget/RelativeLayout;JF)V

    .line 113
    .line 114
    .line 115
    iget-object p1, p1, Lflix/com/vision/activities/AnimesListActivity;->m:Landroid/widget/RelativeLayout;

    .line 116
    .line 117
    invoke-static {p1, v0, v1, v2}, Lb/c;->w(Landroid/widget/RelativeLayout;JF)V

    .line 118
    .line 119
    .line 120
    :goto_0
    return-void

    .line 121
    :pswitch_0
    iget-object p1, p0, Ly4/m;->e:Lflix/com/vision/activities/AnimesListActivity;

    .line 122
    .line 123
    if-nez p2, :cond_1

    .line 124
    .line 125
    iget-object p2, p1, Lflix/com/vision/activities/AnimesListActivity;->u:Landroid/widget/ImageView;

    .line 126
    .line 127
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    .line 128
    .line 129
    sget v1, Lflix/com/vision/R$color;->white:I

    .line 130
    .line 131
    invoke-static {p1, v1}, LA/h;->getColor(Landroid/content/Context;I)I

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 136
    .line 137
    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 141
    .line 142
    .line 143
    iget-object p2, p1, Lflix/com/vision/activities/AnimesListActivity;->p:Landroid/widget/TextView;

    .line 144
    .line 145
    invoke-virtual {p1}, Le/v;->getResources()Landroid/content/res/Resources;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    sget v1, Lflix/com/vision/R$color;->white:I

    .line 150
    .line 151
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 156
    .line 157
    .line 158
    iget-object p2, p1, Lflix/com/vision/activities/AnimesListActivity;->j:Landroid/widget/RelativeLayout;

    .line 159
    .line 160
    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 161
    .line 162
    .line 163
    move-result-object p2

    .line 164
    const/high16 v0, 0x3f800000    # 1.0f

    .line 165
    .line 166
    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 167
    .line 168
    .line 169
    move-result-object p2

    .line 170
    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 171
    .line 172
    .line 173
    iget-object p1, p1, Lflix/com/vision/activities/AnimesListActivity;->j:Landroid/widget/RelativeLayout;

    .line 174
    .line 175
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 184
    .line 185
    .line 186
    goto :goto_1

    .line 187
    :cond_1
    iget-object p2, p1, Lflix/com/vision/activities/AnimesListActivity;->u:Landroid/widget/ImageView;

    .line 188
    .line 189
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    .line 190
    .line 191
    sget v1, Lflix/com/vision/R$color;->black:I

    .line 192
    .line 193
    invoke-static {p1, v1}, LA/h;->getColor(Landroid/content/Context;I)I

    .line 194
    .line 195
    .line 196
    move-result v1

    .line 197
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 198
    .line 199
    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 203
    .line 204
    .line 205
    iget-object p2, p1, Lflix/com/vision/activities/AnimesListActivity;->p:Landroid/widget/TextView;

    .line 206
    .line 207
    invoke-virtual {p1}, Le/v;->getResources()Landroid/content/res/Resources;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    sget v1, Lflix/com/vision/R$color;->black:I

    .line 212
    .line 213
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 214
    .line 215
    .line 216
    move-result v0

    .line 217
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 218
    .line 219
    .line 220
    iget-object p2, p1, Lflix/com/vision/activities/AnimesListActivity;->j:Landroid/widget/RelativeLayout;

    .line 221
    .line 222
    const-wide/16 v0, 0x64

    .line 223
    .line 224
    const v2, 0x3f83d70a    # 1.03f

    .line 225
    .line 226
    .line 227
    invoke-static {p2, v0, v1, v2}, Lb/c;->r(Landroid/widget/RelativeLayout;JF)V

    .line 228
    .line 229
    .line 230
    iget-object p1, p1, Lflix/com/vision/activities/AnimesListActivity;->j:Landroid/widget/RelativeLayout;

    .line 231
    .line 232
    invoke-static {p1, v0, v1, v2}, Lb/c;->w(Landroid/widget/RelativeLayout;JF)V

    .line 233
    .line 234
    .line 235
    :goto_1
    return-void

    .line 236
    :pswitch_1
    iget-object p1, p0, Ly4/m;->e:Lflix/com/vision/activities/AnimesListActivity;

    .line 237
    .line 238
    if-nez p2, :cond_2

    .line 239
    .line 240
    iget-object p2, p1, Lflix/com/vision/activities/AnimesListActivity;->t:Landroid/widget/ImageView;

    .line 241
    .line 242
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    .line 243
    .line 244
    sget v1, Lflix/com/vision/R$color;->white:I

    .line 245
    .line 246
    invoke-static {p1, v1}, LA/h;->getColor(Landroid/content/Context;I)I

    .line 247
    .line 248
    .line 249
    move-result v1

    .line 250
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 251
    .line 252
    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 256
    .line 257
    .line 258
    iget-object p2, p1, Lflix/com/vision/activities/AnimesListActivity;->q:Landroid/widget/TextView;

    .line 259
    .line 260
    invoke-virtual {p1}, Le/v;->getResources()Landroid/content/res/Resources;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    sget v1, Lflix/com/vision/R$color;->white:I

    .line 265
    .line 266
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 267
    .line 268
    .line 269
    move-result v0

    .line 270
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 271
    .line 272
    .line 273
    iget-object p2, p1, Lflix/com/vision/activities/AnimesListActivity;->f:Landroid/widget/RelativeLayout;

    .line 274
    .line 275
    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 276
    .line 277
    .line 278
    move-result-object p2

    .line 279
    const/high16 v0, 0x3f800000    # 1.0f

    .line 280
    .line 281
    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 282
    .line 283
    .line 284
    move-result-object p2

    .line 285
    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 286
    .line 287
    .line 288
    iget-object p1, p1, Lflix/com/vision/activities/AnimesListActivity;->f:Landroid/widget/RelativeLayout;

    .line 289
    .line 290
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 291
    .line 292
    .line 293
    move-result-object p1

    .line 294
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 295
    .line 296
    .line 297
    move-result-object p1

    .line 298
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 299
    .line 300
    .line 301
    goto :goto_2

    .line 302
    :cond_2
    iget-object p2, p1, Lflix/com/vision/activities/AnimesListActivity;->t:Landroid/widget/ImageView;

    .line 303
    .line 304
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    .line 305
    .line 306
    sget v1, Lflix/com/vision/R$color;->black:I

    .line 307
    .line 308
    invoke-static {p1, v1}, LA/h;->getColor(Landroid/content/Context;I)I

    .line 309
    .line 310
    .line 311
    move-result v1

    .line 312
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 313
    .line 314
    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 318
    .line 319
    .line 320
    iget-object p2, p1, Lflix/com/vision/activities/AnimesListActivity;->q:Landroid/widget/TextView;

    .line 321
    .line 322
    invoke-virtual {p1}, Le/v;->getResources()Landroid/content/res/Resources;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    sget v1, Lflix/com/vision/R$color;->black:I

    .line 327
    .line 328
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 329
    .line 330
    .line 331
    move-result v0

    .line 332
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 333
    .line 334
    .line 335
    iget-object p2, p1, Lflix/com/vision/activities/AnimesListActivity;->f:Landroid/widget/RelativeLayout;

    .line 336
    .line 337
    const-wide/16 v0, 0x64

    .line 338
    .line 339
    const v2, 0x3f83d70a    # 1.03f

    .line 340
    .line 341
    .line 342
    invoke-static {p2, v0, v1, v2}, Lb/c;->r(Landroid/widget/RelativeLayout;JF)V

    .line 343
    .line 344
    .line 345
    iget-object p1, p1, Lflix/com/vision/activities/AnimesListActivity;->f:Landroid/widget/RelativeLayout;

    .line 346
    .line 347
    invoke-static {p1, v0, v1, v2}, Lb/c;->w(Landroid/widget/RelativeLayout;JF)V

    .line 348
    .line 349
    .line 350
    :goto_2
    return-void

    .line 351
    :pswitch_2
    iget-object p1, p0, Ly4/m;->e:Lflix/com/vision/activities/AnimesListActivity;

    .line 352
    .line 353
    if-nez p2, :cond_3

    .line 354
    .line 355
    iget-object p2, p1, Lflix/com/vision/activities/AnimesListActivity;->s:Landroid/widget/ImageView;

    .line 356
    .line 357
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    .line 358
    .line 359
    sget v1, Lflix/com/vision/R$color;->white:I

    .line 360
    .line 361
    invoke-static {p1, v1}, LA/h;->getColor(Landroid/content/Context;I)I

    .line 362
    .line 363
    .line 364
    move-result v1

    .line 365
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 366
    .line 367
    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 368
    .line 369
    .line 370
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 371
    .line 372
    .line 373
    iget-object p2, p1, Lflix/com/vision/activities/AnimesListActivity;->r:Landroid/widget/TextView;

    .line 374
    .line 375
    invoke-virtual {p1}, Le/v;->getResources()Landroid/content/res/Resources;

    .line 376
    .line 377
    .line 378
    move-result-object v0

    .line 379
    sget v1, Lflix/com/vision/R$color;->white:I

    .line 380
    .line 381
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 382
    .line 383
    .line 384
    move-result v0

    .line 385
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 386
    .line 387
    .line 388
    iget-object p2, p1, Lflix/com/vision/activities/AnimesListActivity;->e:Landroid/widget/RelativeLayout;

    .line 389
    .line 390
    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 391
    .line 392
    .line 393
    move-result-object p2

    .line 394
    const/high16 v0, 0x3f800000    # 1.0f

    .line 395
    .line 396
    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 397
    .line 398
    .line 399
    move-result-object p2

    .line 400
    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 401
    .line 402
    .line 403
    iget-object p1, p1, Lflix/com/vision/activities/AnimesListActivity;->e:Landroid/widget/RelativeLayout;

    .line 404
    .line 405
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 406
    .line 407
    .line 408
    move-result-object p1

    .line 409
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 410
    .line 411
    .line 412
    move-result-object p1

    .line 413
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 414
    .line 415
    .line 416
    goto :goto_3

    .line 417
    :cond_3
    iget-object p2, p1, Lflix/com/vision/activities/AnimesListActivity;->s:Landroid/widget/ImageView;

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
    move-result v1

    .line 427
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 428
    .line 429
    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 430
    .line 431
    .line 432
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 433
    .line 434
    .line 435
    iget-object p2, p1, Lflix/com/vision/activities/AnimesListActivity;->r:Landroid/widget/TextView;

    .line 436
    .line 437
    invoke-virtual {p1}, Le/v;->getResources()Landroid/content/res/Resources;

    .line 438
    .line 439
    .line 440
    move-result-object v0

    .line 441
    sget v1, Lflix/com/vision/R$color;->black:I

    .line 442
    .line 443
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 444
    .line 445
    .line 446
    move-result v0

    .line 447
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 448
    .line 449
    .line 450
    iget-object p2, p1, Lflix/com/vision/activities/AnimesListActivity;->e:Landroid/widget/RelativeLayout;

    .line 451
    .line 452
    const-wide/16 v0, 0x64

    .line 453
    .line 454
    const v2, 0x3f83d70a    # 1.03f

    .line 455
    .line 456
    .line 457
    invoke-static {p2, v0, v1, v2}, Lb/c;->r(Landroid/widget/RelativeLayout;JF)V

    .line 458
    .line 459
    .line 460
    iget-object p1, p1, Lflix/com/vision/activities/AnimesListActivity;->e:Landroid/widget/RelativeLayout;

    .line 461
    .line 462
    invoke-static {p1, v0, v1, v2}, Lb/c;->w(Landroid/widget/RelativeLayout;JF)V

    .line 463
    .line 464
    .line 465
    :goto_3
    return-void

    .line 466
    nop

    .line 467
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
