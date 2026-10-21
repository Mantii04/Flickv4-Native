.class public final Landroidx/mediarouter/app/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic b:Z

.field public final synthetic e:Landroidx/mediarouter/app/D;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/app/D;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/mediarouter/app/s;->e:Landroidx/mediarouter/app/D;

    .line 5
    .line 6
    iput-boolean p2, p0, Landroidx/mediarouter/app/s;->b:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 12

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/app/s;->e:Landroidx/mediarouter/app/D;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/mediarouter/app/D;->D:Landroid/widget/FrameLayout;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 10
    .line 11
    .line 12
    iget-boolean v1, v0, Landroidx/mediarouter/app/D;->q0:Z

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    iput-boolean v2, v0, Landroidx/mediarouter/app/D;->r0:Z

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iget-object v1, v0, Landroidx/mediarouter/app/D;->L:Landroid/widget/LinearLayout;

    .line 21
    .line 22
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 27
    .line 28
    iget-object v3, v0, Landroidx/mediarouter/app/D;->L:Landroid/widget/LinearLayout;

    .line 29
    .line 30
    const/4 v4, -0x1

    .line 31
    invoke-static {v3, v4}, Landroidx/mediarouter/app/D;->k(Landroid/view/View;I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Landroidx/mediarouter/app/D;->e()Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    invoke-virtual {v0, v3}, Landroidx/mediarouter/app/D;->q(Z)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 58
    .line 59
    const/high16 v5, 0x40000000    # 2.0f

    .line 60
    .line 61
    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    const/4 v5, 0x0

    .line 66
    invoke-virtual {v3, v4, v5}, Landroid/view/View;->measure(II)V

    .line 67
    .line 68
    .line 69
    iget-object v4, v0, Landroidx/mediarouter/app/D;->L:Landroid/widget/LinearLayout;

    .line 70
    .line 71
    invoke-static {v4, v1}, Landroidx/mediarouter/app/D;->k(Landroid/view/View;I)V

    .line 72
    .line 73
    .line 74
    iget-object v1, v0, Landroidx/mediarouter/app/D;->w:Landroid/view/View;

    .line 75
    .line 76
    if-nez v1, :cond_2

    .line 77
    .line 78
    iget-object v1, v0, Landroidx/mediarouter/app/D;->F:Landroid/widget/ImageView;

    .line 79
    .line 80
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    instance-of v1, v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 85
    .line 86
    if-eqz v1, :cond_2

    .line 87
    .line 88
    iget-object v1, v0, Landroidx/mediarouter/app/D;->F:Landroid/widget/ImageView;

    .line 89
    .line 90
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 95
    .line 96
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    if-eqz v1, :cond_2

    .line 101
    .line 102
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 107
    .line 108
    .line 109
    move-result v6

    .line 110
    invoke-virtual {v0, v4, v6}, Landroidx/mediarouter/app/D;->h(II)I

    .line 111
    .line 112
    .line 113
    move-result v4

    .line 114
    iget-object v6, v0, Landroidx/mediarouter/app/D;->F:Landroid/widget/ImageView;

    .line 115
    .line 116
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 117
    .line 118
    .line 119
    move-result v7

    .line 120
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    if-lt v7, v1, :cond_1

    .line 125
    .line 126
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_1
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 130
    .line 131
    :goto_0
    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 132
    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_2
    move v4, v5

    .line 136
    :goto_1
    invoke-virtual {v0}, Landroidx/mediarouter/app/D;->e()Z

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    invoke-virtual {v0, v1}, Landroidx/mediarouter/app/D;->i(Z)I

    .line 141
    .line 142
    .line 143
    move-result v1

    .line 144
    iget-object v6, v0, Landroidx/mediarouter/app/D;->R:Ljava/util/ArrayList;

    .line 145
    .line 146
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 147
    .line 148
    .line 149
    move-result v6

    .line 150
    invoke-virtual {v0}, Landroidx/mediarouter/app/D;->j()Z

    .line 151
    .line 152
    .line 153
    move-result v7

    .line 154
    iget-object v8, v0, Landroidx/mediarouter/app/D;->r:Lf1/U;

    .line 155
    .line 156
    if-eqz v7, :cond_3

    .line 157
    .line 158
    iget v7, v0, Landroidx/mediarouter/app/D;->Z:I

    .line 159
    .line 160
    invoke-virtual {v8}, Lf1/U;->getMemberRoutes()Ljava/util/List;

    .line 161
    .line 162
    .line 163
    move-result-object v9

    .line 164
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 165
    .line 166
    .line 167
    move-result v9

    .line 168
    mul-int/2addr v9, v7

    .line 169
    goto :goto_2

    .line 170
    :cond_3
    move v9, v5

    .line 171
    :goto_2
    if-lez v6, :cond_4

    .line 172
    .line 173
    iget v6, v0, Landroidx/mediarouter/app/D;->b0:I

    .line 174
    .line 175
    add-int/2addr v9, v6

    .line 176
    :cond_4
    iget v6, v0, Landroidx/mediarouter/app/D;->a0:I

    .line 177
    .line 178
    invoke-static {v9, v6}, Ljava/lang/Math;->min(II)I

    .line 179
    .line 180
    .line 181
    move-result v6

    .line 182
    iget-boolean v7, v0, Landroidx/mediarouter/app/D;->p0:Z

    .line 183
    .line 184
    if-eqz v7, :cond_5

    .line 185
    .line 186
    goto :goto_3

    .line 187
    :cond_5
    move v6, v5

    .line 188
    :goto_3
    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    .line 189
    .line 190
    .line 191
    move-result v7

    .line 192
    add-int/2addr v7, v1

    .line 193
    new-instance v9, Landroid/graphics/Rect;

    .line 194
    .line 195
    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v3, v9}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 199
    .line 200
    .line 201
    iget-object v3, v0, Landroidx/mediarouter/app/D;->C:Landroid/widget/LinearLayout;

    .line 202
    .line 203
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    .line 204
    .line 205
    .line 206
    move-result v3

    .line 207
    iget-object v10, v0, Landroidx/mediarouter/app/D;->D:Landroid/widget/FrameLayout;

    .line 208
    .line 209
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    .line 210
    .line 211
    .line 212
    move-result v10

    .line 213
    sub-int/2addr v3, v10

    .line 214
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    .line 215
    .line 216
    .line 217
    move-result v10

    .line 218
    sub-int/2addr v10, v3

    .line 219
    iget-object v3, v0, Landroidx/mediarouter/app/D;->w:Landroid/view/View;

    .line 220
    .line 221
    const/16 v11, 0x8

    .line 222
    .line 223
    if-nez v3, :cond_6

    .line 224
    .line 225
    if-lez v4, :cond_6

    .line 226
    .line 227
    if-gt v7, v10, :cond_6

    .line 228
    .line 229
    iget-object v1, v0, Landroidx/mediarouter/app/D;->F:Landroid/widget/ImageView;

    .line 230
    .line 231
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 232
    .line 233
    .line 234
    iget-object v1, v0, Landroidx/mediarouter/app/D;->F:Landroid/widget/ImageView;

    .line 235
    .line 236
    invoke-static {v1, v4}, Landroidx/mediarouter/app/D;->k(Landroid/view/View;I)V

    .line 237
    .line 238
    .line 239
    goto :goto_4

    .line 240
    :cond_6
    iget-object v3, v0, Landroidx/mediarouter/app/D;->P:Landroidx/mediarouter/app/OverlayListView;

    .line 241
    .line 242
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 243
    .line 244
    .line 245
    move-result-object v3

    .line 246
    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 247
    .line 248
    iget-object v4, v0, Landroidx/mediarouter/app/D;->L:Landroid/widget/LinearLayout;

    .line 249
    .line 250
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    .line 251
    .line 252
    .line 253
    move-result v4

    .line 254
    add-int/2addr v4, v3

    .line 255
    iget-object v3, v0, Landroidx/mediarouter/app/D;->D:Landroid/widget/FrameLayout;

    .line 256
    .line 257
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    .line 258
    .line 259
    .line 260
    move-result v3

    .line 261
    if-lt v4, v3, :cond_7

    .line 262
    .line 263
    iget-object v3, v0, Landroidx/mediarouter/app/D;->F:Landroid/widget/ImageView;

    .line 264
    .line 265
    invoke-virtual {v3, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 266
    .line 267
    .line 268
    :cond_7
    add-int v7, v6, v1

    .line 269
    .line 270
    move v4, v5

    .line 271
    :goto_4
    invoke-virtual {v0}, Landroidx/mediarouter/app/D;->e()Z

    .line 272
    .line 273
    .line 274
    move-result v1

    .line 275
    if-eqz v1, :cond_8

    .line 276
    .line 277
    if-gt v7, v10, :cond_8

    .line 278
    .line 279
    iget-object v1, v0, Landroidx/mediarouter/app/D;->M:Landroid/widget/RelativeLayout;

    .line 280
    .line 281
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 282
    .line 283
    .line 284
    goto :goto_5

    .line 285
    :cond_8
    iget-object v1, v0, Landroidx/mediarouter/app/D;->M:Landroid/widget/RelativeLayout;

    .line 286
    .line 287
    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 288
    .line 289
    .line 290
    :goto_5
    iget-object v1, v0, Landroidx/mediarouter/app/D;->M:Landroid/widget/RelativeLayout;

    .line 291
    .line 292
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 293
    .line 294
    .line 295
    move-result v1

    .line 296
    if-nez v1, :cond_9

    .line 297
    .line 298
    move v1, v2

    .line 299
    goto :goto_6

    .line 300
    :cond_9
    move v1, v5

    .line 301
    :goto_6
    invoke-virtual {v0, v1}, Landroidx/mediarouter/app/D;->q(Z)V

    .line 302
    .line 303
    .line 304
    iget-object v1, v0, Landroidx/mediarouter/app/D;->M:Landroid/widget/RelativeLayout;

    .line 305
    .line 306
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 307
    .line 308
    .line 309
    move-result v1

    .line 310
    if-nez v1, :cond_a

    .line 311
    .line 312
    move v1, v2

    .line 313
    goto :goto_7

    .line 314
    :cond_a
    move v1, v5

    .line 315
    :goto_7
    invoke-virtual {v0, v1}, Landroidx/mediarouter/app/D;->i(Z)I

    .line 316
    .line 317
    .line 318
    move-result v1

    .line 319
    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    .line 320
    .line 321
    .line 322
    move-result v3

    .line 323
    add-int/2addr v3, v1

    .line 324
    if-le v3, v10, :cond_b

    .line 325
    .line 326
    sub-int/2addr v3, v10

    .line 327
    sub-int/2addr v6, v3

    .line 328
    goto :goto_8

    .line 329
    :cond_b
    move v10, v3

    .line 330
    :goto_8
    iget-object v3, v0, Landroidx/mediarouter/app/D;->L:Landroid/widget/LinearLayout;

    .line 331
    .line 332
    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    .line 333
    .line 334
    .line 335
    iget-object v3, v0, Landroidx/mediarouter/app/D;->P:Landroidx/mediarouter/app/OverlayListView;

    .line 336
    .line 337
    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    .line 338
    .line 339
    .line 340
    iget-object v3, v0, Landroidx/mediarouter/app/D;->D:Landroid/widget/FrameLayout;

    .line 341
    .line 342
    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    .line 343
    .line 344
    .line 345
    iget-boolean v3, p0, Landroidx/mediarouter/app/s;->b:Z

    .line 346
    .line 347
    if-eqz v3, :cond_c

    .line 348
    .line 349
    iget-object v4, v0, Landroidx/mediarouter/app/D;->L:Landroid/widget/LinearLayout;

    .line 350
    .line 351
    invoke-virtual {v0, v4, v1}, Landroidx/mediarouter/app/D;->d(Landroid/view/View;I)V

    .line 352
    .line 353
    .line 354
    iget-object v1, v0, Landroidx/mediarouter/app/D;->P:Landroidx/mediarouter/app/OverlayListView;

    .line 355
    .line 356
    invoke-virtual {v0, v1, v6}, Landroidx/mediarouter/app/D;->d(Landroid/view/View;I)V

    .line 357
    .line 358
    .line 359
    iget-object v1, v0, Landroidx/mediarouter/app/D;->D:Landroid/widget/FrameLayout;

    .line 360
    .line 361
    invoke-virtual {v0, v1, v10}, Landroidx/mediarouter/app/D;->d(Landroid/view/View;I)V

    .line 362
    .line 363
    .line 364
    goto :goto_9

    .line 365
    :cond_c
    iget-object v4, v0, Landroidx/mediarouter/app/D;->L:Landroid/widget/LinearLayout;

    .line 366
    .line 367
    invoke-static {v4, v1}, Landroidx/mediarouter/app/D;->k(Landroid/view/View;I)V

    .line 368
    .line 369
    .line 370
    iget-object v1, v0, Landroidx/mediarouter/app/D;->P:Landroidx/mediarouter/app/OverlayListView;

    .line 371
    .line 372
    invoke-static {v1, v6}, Landroidx/mediarouter/app/D;->k(Landroid/view/View;I)V

    .line 373
    .line 374
    .line 375
    iget-object v1, v0, Landroidx/mediarouter/app/D;->D:Landroid/widget/FrameLayout;

    .line 376
    .line 377
    invoke-static {v1, v10}, Landroidx/mediarouter/app/D;->k(Landroid/view/View;I)V

    .line 378
    .line 379
    .line 380
    :goto_9
    iget-object v1, v0, Landroidx/mediarouter/app/D;->B:Landroid/widget/FrameLayout;

    .line 381
    .line 382
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    .line 383
    .line 384
    .line 385
    move-result v4

    .line 386
    invoke-static {v1, v4}, Landroidx/mediarouter/app/D;->k(Landroid/view/View;I)V

    .line 387
    .line 388
    .line 389
    invoke-virtual {v8}, Lf1/U;->getMemberRoutes()Ljava/util/List;

    .line 390
    .line 391
    .line 392
    move-result-object v1

    .line 393
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 394
    .line 395
    .line 396
    move-result v4

    .line 397
    if-eqz v4, :cond_d

    .line 398
    .line 399
    iget-object v1, v0, Landroidx/mediarouter/app/D;->R:Ljava/util/ArrayList;

    .line 400
    .line 401
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 402
    .line 403
    .line 404
    iget-object v0, v0, Landroidx/mediarouter/app/D;->Q:Landroidx/mediarouter/app/C;

    .line 405
    .line 406
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 407
    .line 408
    .line 409
    return-void

    .line 410
    :cond_d
    iget-object v4, v0, Landroidx/mediarouter/app/D;->R:Ljava/util/ArrayList;

    .line 411
    .line 412
    invoke-static {v4, v1}, Landroidx/mediarouter/app/G;->listUnorderedEquals(Ljava/util/List;Ljava/util/List;)Z

    .line 413
    .line 414
    .line 415
    move-result v4

    .line 416
    if-eqz v4, :cond_e

    .line 417
    .line 418
    iget-object v0, v0, Landroidx/mediarouter/app/D;->Q:Landroidx/mediarouter/app/C;

    .line 419
    .line 420
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 421
    .line 422
    .line 423
    return-void

    .line 424
    :cond_e
    const/4 v4, 0x0

    .line 425
    if-eqz v3, :cond_f

    .line 426
    .line 427
    iget-object v6, v0, Landroidx/mediarouter/app/D;->P:Landroidx/mediarouter/app/OverlayListView;

    .line 428
    .line 429
    iget-object v7, v0, Landroidx/mediarouter/app/D;->Q:Landroidx/mediarouter/app/C;

    .line 430
    .line 431
    invoke-static {v6, v7}, Landroidx/mediarouter/app/G;->getItemBoundMap(Landroid/widget/ListView;Landroid/widget/ArrayAdapter;)Ljava/util/HashMap;

    .line 432
    .line 433
    .line 434
    move-result-object v6

    .line 435
    goto :goto_a

    .line 436
    :cond_f
    move-object v6, v4

    .line 437
    :goto_a
    if-eqz v3, :cond_10

    .line 438
    .line 439
    iget-object v7, v0, Landroidx/mediarouter/app/D;->P:Landroidx/mediarouter/app/OverlayListView;

    .line 440
    .line 441
    iget-object v8, v0, Landroidx/mediarouter/app/D;->Q:Landroidx/mediarouter/app/C;

    .line 442
    .line 443
    iget-object v9, v0, Landroidx/mediarouter/app/D;->s:Landroid/content/Context;

    .line 444
    .line 445
    invoke-static {v9, v7, v8}, Landroidx/mediarouter/app/G;->getItemBitmapMap(Landroid/content/Context;Landroid/widget/ListView;Landroid/widget/ArrayAdapter;)Ljava/util/HashMap;

    .line 446
    .line 447
    .line 448
    move-result-object v7

    .line 449
    goto :goto_b

    .line 450
    :cond_10
    move-object v7, v4

    .line 451
    :goto_b
    iget-object v8, v0, Landroidx/mediarouter/app/D;->R:Ljava/util/ArrayList;

    .line 452
    .line 453
    invoke-static {v8, v1}, Landroidx/mediarouter/app/G;->getItemsAdded(Ljava/util/List;Ljava/util/List;)Ljava/util/Set;

    .line 454
    .line 455
    .line 456
    move-result-object v8

    .line 457
    iput-object v8, v0, Landroidx/mediarouter/app/D;->S:Ljava/util/Set;

    .line 458
    .line 459
    iget-object v8, v0, Landroidx/mediarouter/app/D;->R:Ljava/util/ArrayList;

    .line 460
    .line 461
    invoke-static {v8, v1}, Landroidx/mediarouter/app/G;->getItemsRemoved(Ljava/util/List;Ljava/util/List;)Ljava/util/Set;

    .line 462
    .line 463
    .line 464
    move-result-object v1

    .line 465
    iput-object v1, v0, Landroidx/mediarouter/app/D;->T:Ljava/util/Set;

    .line 466
    .line 467
    iget-object v1, v0, Landroidx/mediarouter/app/D;->R:Ljava/util/ArrayList;

    .line 468
    .line 469
    iget-object v8, v0, Landroidx/mediarouter/app/D;->S:Ljava/util/Set;

    .line 470
    .line 471
    invoke-virtual {v1, v5, v8}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 472
    .line 473
    .line 474
    iget-object v1, v0, Landroidx/mediarouter/app/D;->R:Ljava/util/ArrayList;

    .line 475
    .line 476
    iget-object v8, v0, Landroidx/mediarouter/app/D;->T:Ljava/util/Set;

    .line 477
    .line 478
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 479
    .line 480
    .line 481
    iget-object v1, v0, Landroidx/mediarouter/app/D;->Q:Landroidx/mediarouter/app/C;

    .line 482
    .line 483
    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 484
    .line 485
    .line 486
    if-eqz v3, :cond_11

    .line 487
    .line 488
    iget-boolean v1, v0, Landroidx/mediarouter/app/D;->p0:Z

    .line 489
    .line 490
    if-eqz v1, :cond_11

    .line 491
    .line 492
    iget-object v1, v0, Landroidx/mediarouter/app/D;->S:Ljava/util/Set;

    .line 493
    .line 494
    invoke-interface {v1}, Ljava/util/Set;->size()I

    .line 495
    .line 496
    .line 497
    move-result v1

    .line 498
    iget-object v3, v0, Landroidx/mediarouter/app/D;->T:Ljava/util/Set;

    .line 499
    .line 500
    invoke-interface {v3}, Ljava/util/Set;->size()I

    .line 501
    .line 502
    .line 503
    move-result v3

    .line 504
    add-int/2addr v3, v1

    .line 505
    if-lez v3, :cond_11

    .line 506
    .line 507
    iget-object v1, v0, Landroidx/mediarouter/app/D;->P:Landroidx/mediarouter/app/OverlayListView;

    .line 508
    .line 509
    invoke-virtual {v1, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 510
    .line 511
    .line 512
    iget-object v1, v0, Landroidx/mediarouter/app/D;->P:Landroidx/mediarouter/app/OverlayListView;

    .line 513
    .line 514
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 515
    .line 516
    .line 517
    iput-boolean v2, v0, Landroidx/mediarouter/app/D;->q0:Z

    .line 518
    .line 519
    iget-object v1, v0, Landroidx/mediarouter/app/D;->P:Landroidx/mediarouter/app/OverlayListView;

    .line 520
    .line 521
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 522
    .line 523
    .line 524
    move-result-object v1

    .line 525
    new-instance v2, Landroidx/mediarouter/app/u;

    .line 526
    .line 527
    invoke-direct {v2, v0, v6, v7}, Landroidx/mediarouter/app/u;-><init>(Landroidx/mediarouter/app/D;Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 528
    .line 529
    .line 530
    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 531
    .line 532
    .line 533
    return-void

    .line 534
    :cond_11
    iput-object v4, v0, Landroidx/mediarouter/app/D;->S:Ljava/util/Set;

    .line 535
    .line 536
    iput-object v4, v0, Landroidx/mediarouter/app/D;->T:Ljava/util/Set;

    .line 537
    .line 538
    return-void
.end method
