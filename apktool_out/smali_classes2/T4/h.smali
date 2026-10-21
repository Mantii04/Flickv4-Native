.class public final LT4/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lflix/com/vision/helpers/CursorLayout;


# direct methods
.method public constructor <init>(Lflix/com/vision/helpers/CursorLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LT4/h;->b:Lflix/com/vision/helpers/CursorLayout;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, LT4/h;->b:Lflix/com/vision/helpers/CursorLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v2, v0, Lflix/com/vision/helpers/CursorLayout;->f:LT4/g;

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 19
    .line 20
    .line 21
    move-result-wide v1

    .line 22
    iget-wide v3, v0, Lflix/com/vision/helpers/CursorLayout;->q:J

    .line 23
    .line 24
    sub-long v3, v1, v3

    .line 25
    .line 26
    iput-wide v1, v0, Lflix/com/vision/helpers/CursorLayout;->q:J

    .line 27
    .line 28
    long-to-float v1, v3

    .line 29
    const v2, 0x3d4ccccd    # 0.05f

    .line 30
    .line 31
    .line 32
    mul-float/2addr v1, v2

    .line 33
    iget-object v2, v0, Lflix/com/vision/helpers/CursorLayout;->m:Landroid/graphics/PointF;

    .line 34
    .line 35
    iget v3, v2, Landroid/graphics/PointF;->x:F

    .line 36
    .line 37
    iget-object v4, v0, Lflix/com/vision/helpers/CursorLayout;->e:Landroid/graphics/Point;

    .line 38
    .line 39
    iget v4, v4, Landroid/graphics/Point;->x:I

    .line 40
    .line 41
    int-to-float v4, v4

    .line 42
    const/high16 v5, 0x3f800000    # 1.0f

    .line 43
    .line 44
    invoke-virtual {v0, v4, v5}, Lflix/com/vision/helpers/CursorLayout;->bound(FF)F

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    mul-float/2addr v4, v1

    .line 49
    add-float/2addr v4, v3

    .line 50
    sget v3, Lflix/com/vision/helpers/CursorLayout;->y:F

    .line 51
    .line 52
    invoke-virtual {v0, v4, v3}, Lflix/com/vision/helpers/CursorLayout;->bound(FF)F

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    iget-object v4, v0, Lflix/com/vision/helpers/CursorLayout;->m:Landroid/graphics/PointF;

    .line 57
    .line 58
    iget v4, v4, Landroid/graphics/PointF;->y:F

    .line 59
    .line 60
    iget-object v6, v0, Lflix/com/vision/helpers/CursorLayout;->e:Landroid/graphics/Point;

    .line 61
    .line 62
    iget v6, v6, Landroid/graphics/Point;->y:I

    .line 63
    .line 64
    int-to-float v6, v6

    .line 65
    invoke-virtual {v0, v6, v5}, Lflix/com/vision/helpers/CursorLayout;->bound(FF)F

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    mul-float/2addr v5, v1

    .line 70
    add-float/2addr v5, v4

    .line 71
    sget v1, Lflix/com/vision/helpers/CursorLayout;->y:F

    .line 72
    .line 73
    invoke-virtual {v0, v5, v1}, Lflix/com/vision/helpers/CursorLayout;->bound(FF)F

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    invoke-virtual {v2, v3, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 78
    .line 79
    .line 80
    iget-object v1, v0, Lflix/com/vision/helpers/CursorLayout;->m:Landroid/graphics/PointF;

    .line 81
    .line 82
    iget v1, v1, Landroid/graphics/PointF;->x:F

    .line 83
    .line 84
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    const v2, 0x3dcccccd    # 0.1f

    .line 89
    .line 90
    .line 91
    cmpg-float v1, v1, v2

    .line 92
    .line 93
    const/4 v3, 0x0

    .line 94
    if-gez v1, :cond_1

    .line 95
    .line 96
    iget-object v1, v0, Lflix/com/vision/helpers/CursorLayout;->m:Landroid/graphics/PointF;

    .line 97
    .line 98
    iput v3, v1, Landroid/graphics/PointF;->x:F

    .line 99
    .line 100
    :cond_1
    iget-object v1, v0, Lflix/com/vision/helpers/CursorLayout;->m:Landroid/graphics/PointF;

    .line 101
    .line 102
    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 103
    .line 104
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    cmpg-float v1, v1, v2

    .line 109
    .line 110
    if-gez v1, :cond_2

    .line 111
    .line 112
    iget-object v1, v0, Lflix/com/vision/helpers/CursorLayout;->m:Landroid/graphics/PointF;

    .line 113
    .line 114
    iput v3, v1, Landroid/graphics/PointF;->y:F

    .line 115
    .line 116
    :cond_2
    iget-object v1, v0, Lflix/com/vision/helpers/CursorLayout;->e:Landroid/graphics/Point;

    .line 117
    .line 118
    iget v2, v1, Landroid/graphics/Point;->x:I

    .line 119
    .line 120
    if-nez v2, :cond_3

    .line 121
    .line 122
    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 123
    .line 124
    if-nez v1, :cond_3

    .line 125
    .line 126
    iget-object v1, v0, Lflix/com/vision/helpers/CursorLayout;->m:Landroid/graphics/PointF;

    .line 127
    .line 128
    iget v2, v1, Landroid/graphics/PointF;->x:F

    .line 129
    .line 130
    cmpl-float v2, v2, v3

    .line 131
    .line 132
    if-nez v2, :cond_3

    .line 133
    .line 134
    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 135
    .line 136
    cmpl-float v1, v1, v3

    .line 137
    .line 138
    if-nez v1, :cond_3

    .line 139
    .line 140
    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    if-eqz v1, :cond_d

    .line 145
    .line 146
    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    iget-object v0, v0, Lflix/com/vision/helpers/CursorLayout;->f:LT4/g;

    .line 151
    .line 152
    const-wide/16 v2, 0x1388

    .line 153
    .line 154
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 155
    .line 156
    .line 157
    return-void

    .line 158
    :cond_3
    iget-object v1, v0, Lflix/com/vision/helpers/CursorLayout;->s:Landroid/graphics/PointF;

    .line 159
    .line 160
    iget-object v2, v0, Lflix/com/vision/helpers/CursorLayout;->j:Landroid/graphics/PointF;

    .line 161
    .line 162
    invoke-virtual {v1, v2}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 163
    .line 164
    .line 165
    iget-object v1, v0, Lflix/com/vision/helpers/CursorLayout;->j:Landroid/graphics/PointF;

    .line 166
    .line 167
    iget-object v2, v0, Lflix/com/vision/helpers/CursorLayout;->m:Landroid/graphics/PointF;

    .line 168
    .line 169
    iget v4, v2, Landroid/graphics/PointF;->x:F

    .line 170
    .line 171
    iget v2, v2, Landroid/graphics/PointF;->y:F

    .line 172
    .line 173
    invoke-virtual {v1, v4, v2}, Landroid/graphics/PointF;->offset(FF)V

    .line 174
    .line 175
    .line 176
    iget-object v1, v0, Lflix/com/vision/helpers/CursorLayout;->j:Landroid/graphics/PointF;

    .line 177
    .line 178
    iget v2, v1, Landroid/graphics/PointF;->x:F

    .line 179
    .line 180
    cmpg-float v4, v2, v3

    .line 181
    .line 182
    if-gez v4, :cond_4

    .line 183
    .line 184
    iput v3, v1, Landroid/graphics/PointF;->x:F

    .line 185
    .line 186
    goto :goto_0

    .line 187
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 188
    .line 189
    .line 190
    move-result v1

    .line 191
    add-int/lit8 v1, v1, -0x1

    .line 192
    .line 193
    int-to-float v1, v1

    .line 194
    cmpl-float v1, v2, v1

    .line 195
    .line 196
    if-lez v1, :cond_5

    .line 197
    .line 198
    iget-object v1, v0, Lflix/com/vision/helpers/CursorLayout;->j:Landroid/graphics/PointF;

    .line 199
    .line 200
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 201
    .line 202
    .line 203
    move-result v2

    .line 204
    add-int/lit8 v2, v2, -0x1

    .line 205
    .line 206
    int-to-float v2, v2

    .line 207
    iput v2, v1, Landroid/graphics/PointF;->x:F

    .line 208
    .line 209
    :cond_5
    :goto_0
    iget-object v1, v0, Lflix/com/vision/helpers/CursorLayout;->j:Landroid/graphics/PointF;

    .line 210
    .line 211
    iget v2, v1, Landroid/graphics/PointF;->y:F

    .line 212
    .line 213
    cmpg-float v4, v2, v3

    .line 214
    .line 215
    if-gez v4, :cond_6

    .line 216
    .line 217
    iput v3, v1, Landroid/graphics/PointF;->y:F

    .line 218
    .line 219
    goto :goto_1

    .line 220
    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 221
    .line 222
    .line 223
    move-result v1

    .line 224
    add-int/lit8 v1, v1, -0x1

    .line 225
    .line 226
    int-to-float v1, v1

    .line 227
    cmpl-float v1, v2, v1

    .line 228
    .line 229
    if-lez v1, :cond_7

    .line 230
    .line 231
    iget-object v1, v0, Lflix/com/vision/helpers/CursorLayout;->j:Landroid/graphics/PointF;

    .line 232
    .line 233
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 234
    .line 235
    .line 236
    move-result v2

    .line 237
    add-int/lit8 v2, v2, -0x1

    .line 238
    .line 239
    int-to-float v2, v2

    .line 240
    iput v2, v1, Landroid/graphics/PointF;->y:F

    .line 241
    .line 242
    :cond_7
    :goto_1
    iget-object v1, v0, Lflix/com/vision/helpers/CursorLayout;->s:Landroid/graphics/PointF;

    .line 243
    .line 244
    iget-object v2, v0, Lflix/com/vision/helpers/CursorLayout;->j:Landroid/graphics/PointF;

    .line 245
    .line 246
    invoke-virtual {v1, v2}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    .line 247
    .line 248
    .line 249
    move-result v1

    .line 250
    if-nez v1, :cond_8

    .line 251
    .line 252
    iget-boolean v1, v0, Lflix/com/vision/helpers/CursorLayout;->p:Z

    .line 253
    .line 254
    if-eqz v1, :cond_8

    .line 255
    .line 256
    iget-object v1, v0, Lflix/com/vision/helpers/CursorLayout;->j:Landroid/graphics/PointF;

    .line 257
    .line 258
    iget v2, v1, Landroid/graphics/PointF;->x:F

    .line 259
    .line 260
    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 261
    .line 262
    const/4 v4, 0x2

    .line 263
    invoke-virtual {v0, v2, v1, v4}, Lflix/com/vision/helpers/CursorLayout;->dispatchMotionEvent(FFI)V

    .line 264
    .line 265
    .line 266
    :cond_8
    const/4 v1, 0x0

    .line 267
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 268
    .line 269
    .line 270
    move-result-object v1

    .line 271
    if-eqz v1, :cond_c

    .line 272
    .line 273
    iget-object v2, v0, Lflix/com/vision/helpers/CursorLayout;->j:Landroid/graphics/PointF;

    .line 274
    .line 275
    iget v2, v2, Landroid/graphics/PointF;->y:F

    .line 276
    .line 277
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 278
    .line 279
    .line 280
    move-result v4

    .line 281
    sget v5, Lflix/com/vision/helpers/CursorLayout;->z:I

    .line 282
    .line 283
    sub-int/2addr v4, v5

    .line 284
    int-to-float v4, v4

    .line 285
    cmpl-float v2, v2, v4

    .line 286
    .line 287
    if-lez v2, :cond_9

    .line 288
    .line 289
    iget-object v2, v0, Lflix/com/vision/helpers/CursorLayout;->m:Landroid/graphics/PointF;

    .line 290
    .line 291
    iget v2, v2, Landroid/graphics/PointF;->y:F

    .line 292
    .line 293
    cmpl-float v4, v2, v3

    .line 294
    .line 295
    if-lez v4, :cond_a

    .line 296
    .line 297
    float-to-int v2, v2

    .line 298
    invoke-virtual {v1, v2}, Landroid/view/View;->canScrollVertically(I)Z

    .line 299
    .line 300
    .line 301
    move-result v2

    .line 302
    if-eqz v2, :cond_a

    .line 303
    .line 304
    invoke-virtual {v1}, Landroid/view/View;->getScrollX()I

    .line 305
    .line 306
    .line 307
    move-result v2

    .line 308
    invoke-virtual {v1}, Landroid/view/View;->getScrollY()I

    .line 309
    .line 310
    .line 311
    move-result v4

    .line 312
    iget-object v5, v0, Lflix/com/vision/helpers/CursorLayout;->m:Landroid/graphics/PointF;

    .line 313
    .line 314
    iget v5, v5, Landroid/graphics/PointF;->y:F

    .line 315
    .line 316
    float-to-int v5, v5

    .line 317
    add-int/2addr v4, v5

    .line 318
    invoke-virtual {v1, v2, v4}, Landroid/view/View;->scrollTo(II)V

    .line 319
    .line 320
    .line 321
    goto :goto_2

    .line 322
    :cond_9
    iget-object v2, v0, Lflix/com/vision/helpers/CursorLayout;->j:Landroid/graphics/PointF;

    .line 323
    .line 324
    iget v2, v2, Landroid/graphics/PointF;->y:F

    .line 325
    .line 326
    int-to-float v4, v5

    .line 327
    cmpg-float v2, v2, v4

    .line 328
    .line 329
    if-gez v2, :cond_a

    .line 330
    .line 331
    iget-object v2, v0, Lflix/com/vision/helpers/CursorLayout;->m:Landroid/graphics/PointF;

    .line 332
    .line 333
    iget v2, v2, Landroid/graphics/PointF;->y:F

    .line 334
    .line 335
    cmpg-float v4, v2, v3

    .line 336
    .line 337
    if-gez v4, :cond_a

    .line 338
    .line 339
    float-to-int v2, v2

    .line 340
    invoke-virtual {v1, v2}, Landroid/view/View;->canScrollVertically(I)Z

    .line 341
    .line 342
    .line 343
    move-result v2

    .line 344
    if-eqz v2, :cond_a

    .line 345
    .line 346
    invoke-virtual {v1}, Landroid/view/View;->getScrollX()I

    .line 347
    .line 348
    .line 349
    move-result v2

    .line 350
    invoke-virtual {v1}, Landroid/view/View;->getScrollY()I

    .line 351
    .line 352
    .line 353
    move-result v4

    .line 354
    iget-object v5, v0, Lflix/com/vision/helpers/CursorLayout;->m:Landroid/graphics/PointF;

    .line 355
    .line 356
    iget v5, v5, Landroid/graphics/PointF;->y:F

    .line 357
    .line 358
    float-to-int v5, v5

    .line 359
    add-int/2addr v4, v5

    .line 360
    invoke-virtual {v1, v2, v4}, Landroid/view/View;->scrollTo(II)V

    .line 361
    .line 362
    .line 363
    :cond_a
    :goto_2
    iget-object v2, v0, Lflix/com/vision/helpers/CursorLayout;->j:Landroid/graphics/PointF;

    .line 364
    .line 365
    iget v2, v2, Landroid/graphics/PointF;->x:F

    .line 366
    .line 367
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 368
    .line 369
    .line 370
    move-result v4

    .line 371
    sget v5, Lflix/com/vision/helpers/CursorLayout;->z:I

    .line 372
    .line 373
    sub-int/2addr v4, v5

    .line 374
    int-to-float v4, v4

    .line 375
    cmpl-float v2, v2, v4

    .line 376
    .line 377
    if-lez v2, :cond_b

    .line 378
    .line 379
    iget-object v2, v0, Lflix/com/vision/helpers/CursorLayout;->m:Landroid/graphics/PointF;

    .line 380
    .line 381
    iget v2, v2, Landroid/graphics/PointF;->x:F

    .line 382
    .line 383
    cmpl-float v3, v2, v3

    .line 384
    .line 385
    if-lez v3, :cond_c

    .line 386
    .line 387
    float-to-int v2, v2

    .line 388
    invoke-virtual {v1, v2}, Landroid/view/View;->canScrollHorizontally(I)Z

    .line 389
    .line 390
    .line 391
    move-result v2

    .line 392
    if-eqz v2, :cond_c

    .line 393
    .line 394
    invoke-virtual {v1}, Landroid/view/View;->getScrollX()I

    .line 395
    .line 396
    .line 397
    move-result v2

    .line 398
    iget-object v3, v0, Lflix/com/vision/helpers/CursorLayout;->m:Landroid/graphics/PointF;

    .line 399
    .line 400
    iget v3, v3, Landroid/graphics/PointF;->x:F

    .line 401
    .line 402
    float-to-int v3, v3

    .line 403
    add-int/2addr v2, v3

    .line 404
    invoke-virtual {v1}, Landroid/view/View;->getScrollY()I

    .line 405
    .line 406
    .line 407
    move-result v3

    .line 408
    invoke-virtual {v1, v2, v3}, Landroid/view/View;->scrollTo(II)V

    .line 409
    .line 410
    .line 411
    goto :goto_3

    .line 412
    :cond_b
    iget-object v2, v0, Lflix/com/vision/helpers/CursorLayout;->j:Landroid/graphics/PointF;

    .line 413
    .line 414
    iget v2, v2, Landroid/graphics/PointF;->x:F

    .line 415
    .line 416
    int-to-float v4, v5

    .line 417
    cmpg-float v2, v2, v4

    .line 418
    .line 419
    if-gez v2, :cond_c

    .line 420
    .line 421
    iget-object v2, v0, Lflix/com/vision/helpers/CursorLayout;->m:Landroid/graphics/PointF;

    .line 422
    .line 423
    iget v2, v2, Landroid/graphics/PointF;->x:F

    .line 424
    .line 425
    cmpg-float v3, v2, v3

    .line 426
    .line 427
    if-gez v3, :cond_c

    .line 428
    .line 429
    float-to-int v2, v2

    .line 430
    invoke-virtual {v1, v2}, Landroid/view/View;->canScrollHorizontally(I)Z

    .line 431
    .line 432
    .line 433
    move-result v2

    .line 434
    if-eqz v2, :cond_c

    .line 435
    .line 436
    invoke-virtual {v1}, Landroid/view/View;->getScrollX()I

    .line 437
    .line 438
    .line 439
    move-result v2

    .line 440
    iget-object v3, v0, Lflix/com/vision/helpers/CursorLayout;->m:Landroid/graphics/PointF;

    .line 441
    .line 442
    iget v3, v3, Landroid/graphics/PointF;->x:F

    .line 443
    .line 444
    float-to-int v3, v3

    .line 445
    add-int/2addr v2, v3

    .line 446
    invoke-virtual {v1}, Landroid/view/View;->getScrollY()I

    .line 447
    .line 448
    .line 449
    move-result v3

    .line 450
    invoke-virtual {v1, v2, v3}, Landroid/view/View;->scrollTo(II)V

    .line 451
    .line 452
    .line 453
    :cond_c
    :goto_3
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 454
    .line 455
    .line 456
    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    .line 457
    .line 458
    .line 459
    move-result-object v1

    .line 460
    if-eqz v1, :cond_d

    .line 461
    .line 462
    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    .line 463
    .line 464
    .line 465
    move-result-object v0

    .line 466
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 467
    .line 468
    .line 469
    :cond_d
    return-void
.end method
