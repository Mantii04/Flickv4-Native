.class public final Le4/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final b:I

.field public final e:I

.field public final f:I

.field public final j:J

.field public final m:Landroidx/recyclerview/widget/RecyclerView;

.field public final n:Le4/e;

.field public p:I

.field public final q:Ljava/util/ArrayList;

.field public r:I

.field public s:F

.field public t:F

.field public u:Z

.field public v:Landroid/view/VelocityTracker;

.field public w:I

.field public x:Landroid/view/View;

.field public y:Z


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;Le4/e;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Le4/g;->p:I

    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Le4/g;->q:Ljava/util/ArrayList;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput v0, p0, Le4/g;->r:I

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    iput v1, p0, Le4/g;->b:I

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    mul-int/lit8 v1, v1, 0x10

    .line 36
    .line 37
    iput v1, p0, Le4/g;->e:I

    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    iput v0, p0, Le4/g;->f:I

    .line 44
    .line 45
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    const/high16 v1, 0x10e0000

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    int-to-long v0, v0

    .line 60
    iput-wide v0, p0, Le4/g;->j:J

    .line 61
    .line 62
    iput-object p1, p0, Le4/g;->m:Landroidx/recyclerview/widget/RecyclerView;

    .line 63
    .line 64
    iput-object p2, p0, Le4/g;->n:Le4/e;

    .line 65
    .line 66
    return-void
.end method


# virtual methods
.method public makeScrollListener()Lm1/m0;
    .locals 1

    .line 1
    new-instance v0, Le4/a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Le4/a;-><init>(Le4/g;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "AndroidLintClickableViewAccessibility"
        }
    .end annotation

    .line 1
    iget p1, p0, Le4/g;->p:I

    .line 2
    .line 3
    iget-object v0, p0, Le4/g;->m:Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    if-ge p1, v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    iput p1, p0, Le4/g;->p:I

    .line 13
    .line 14
    :cond_0
    invoke-static {p2}, LM/F;->getActionMasked(Landroid/view/MotionEvent;)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    const/4 v2, 0x1

    .line 19
    const/4 v3, 0x0

    .line 20
    const/4 v4, 0x0

    .line 21
    if-eqz p1, :cond_13

    .line 22
    .line 23
    iget-wide v5, p0, Le4/g;->j:J

    .line 24
    .line 25
    const/4 v7, -0x1

    .line 26
    const/high16 v8, 0x3f800000    # 1.0f

    .line 27
    .line 28
    const/4 v9, 0x0

    .line 29
    if-eq p1, v2, :cond_8

    .line 30
    .line 31
    const/4 v10, 0x3

    .line 32
    if-eq p1, v1, :cond_4

    .line 33
    .line 34
    if-eq p1, v10, :cond_1

    .line 35
    .line 36
    goto/16 :goto_b

    .line 37
    .line 38
    :cond_1
    iget-object p1, p0, Le4/g;->v:Landroid/view/VelocityTracker;

    .line 39
    .line 40
    if-nez p1, :cond_2

    .line 41
    .line 42
    goto/16 :goto_b

    .line 43
    .line 44
    :cond_2
    iget-object p1, p0, Le4/g;->x:Landroid/view/View;

    .line 45
    .line 46
    if-eqz p1, :cond_3

    .line 47
    .line 48
    iget-boolean p2, p0, Le4/g;->u:Z

    .line 49
    .line 50
    if-eqz p2, :cond_3

    .line 51
    .line 52
    invoke-static {p1}, Li4/b;->animate(Landroid/view/View;)Li4/b;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p1, v9}, Li4/b;->translationX(F)Li4/b;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p1, v8}, Li4/b;->alpha(F)Li4/b;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p1, v5, v6}, Li4/b;->setDuration(J)Li4/b;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p1, v3}, Li4/b;->setListener(Lh4/a;)Li4/b;

    .line 69
    .line 70
    .line 71
    :cond_3
    iget-object p1, p0, Le4/g;->v:Landroid/view/VelocityTracker;

    .line 72
    .line 73
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 74
    .line 75
    .line 76
    iput-object v3, p0, Le4/g;->v:Landroid/view/VelocityTracker;

    .line 77
    .line 78
    iput v9, p0, Le4/g;->s:F

    .line 79
    .line 80
    iput v9, p0, Le4/g;->t:F

    .line 81
    .line 82
    iput-object v3, p0, Le4/g;->x:Landroid/view/View;

    .line 83
    .line 84
    iput v7, p0, Le4/g;->w:I

    .line 85
    .line 86
    iput-boolean v4, p0, Le4/g;->u:Z

    .line 87
    .line 88
    return v4

    .line 89
    :cond_4
    iget-object p1, p0, Le4/g;->v:Landroid/view/VelocityTracker;

    .line 90
    .line 91
    if-eqz p1, :cond_18

    .line 92
    .line 93
    iget-boolean v1, p0, Le4/g;->y:Z

    .line 94
    .line 95
    if-eqz v1, :cond_5

    .line 96
    .line 97
    goto/16 :goto_b

    .line 98
    .line 99
    :cond_5
    invoke-virtual {p1, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    iget v1, p0, Le4/g;->s:F

    .line 107
    .line 108
    sub-float/2addr p1, v1

    .line 109
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    iget v3, p0, Le4/g;->t:F

    .line 114
    .line 115
    sub-float/2addr v1, v3

    .line 116
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 117
    .line 118
    .line 119
    move-result v3

    .line 120
    iget v5, p0, Le4/g;->b:I

    .line 121
    .line 122
    int-to-float v6, v5

    .line 123
    cmpl-float v3, v3, v6

    .line 124
    .line 125
    if-lez v3, :cond_7

    .line 126
    .line 127
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 132
    .line 133
    .line 134
    move-result v3

    .line 135
    const/high16 v6, 0x40000000    # 2.0f

    .line 136
    .line 137
    div-float/2addr v3, v6

    .line 138
    cmpg-float v1, v1, v3

    .line 139
    .line 140
    if-gez v1, :cond_7

    .line 141
    .line 142
    iput-boolean v2, p0, Le4/g;->u:Z

    .line 143
    .line 144
    cmpl-float v1, p1, v9

    .line 145
    .line 146
    if-lez v1, :cond_6

    .line 147
    .line 148
    goto :goto_0

    .line 149
    :cond_6
    neg-int v5, v5

    .line 150
    :goto_0
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->requestDisallowInterceptTouchEvent(Z)V

    .line 151
    .line 152
    .line 153
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    invoke-static {p2}, LM/F;->getActionIndex(Landroid/view/MotionEvent;)I

    .line 158
    .line 159
    .line 160
    move-result p2

    .line 161
    shl-int/lit8 p2, p2, 0x8

    .line 162
    .line 163
    or-int/2addr p2, v10

    .line 164
    invoke-virtual {v1, p2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 168
    .line 169
    .line 170
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 171
    .line 172
    .line 173
    iget-boolean p2, p0, Le4/g;->u:Z

    .line 174
    .line 175
    if-eqz p2, :cond_7

    .line 176
    .line 177
    iget-object p2, p0, Le4/g;->x:Landroid/view/View;

    .line 178
    .line 179
    int-to-float v0, v5

    .line 180
    sub-float v0, p1, v0

    .line 181
    .line 182
    invoke-static {p2, v0}, Li4/a;->setTranslationX(Landroid/view/View;F)V

    .line 183
    .line 184
    .line 185
    iget-object p2, p0, Le4/g;->x:Landroid/view/View;

    .line 186
    .line 187
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 188
    .line 189
    .line 190
    move-result p1

    .line 191
    mul-float/2addr p1, v6

    .line 192
    iget v0, p0, Le4/g;->p:I

    .line 193
    .line 194
    int-to-float v0, v0

    .line 195
    div-float/2addr p1, v0

    .line 196
    sub-float p1, v8, p1

    .line 197
    .line 198
    invoke-static {v8, p1}, Ljava/lang/Math;->min(FF)F

    .line 199
    .line 200
    .line 201
    move-result p1

    .line 202
    invoke-static {v9, p1}, Ljava/lang/Math;->max(FF)F

    .line 203
    .line 204
    .line 205
    move-result p1

    .line 206
    invoke-static {p2, p1}, Li4/a;->setAlpha(Landroid/view/View;F)V

    .line 207
    .line 208
    .line 209
    :cond_7
    iget-boolean p1, p0, Le4/g;->u:Z

    .line 210
    .line 211
    if-eqz p1, :cond_18

    .line 212
    .line 213
    return v2

    .line 214
    :cond_8
    iget-object p1, p0, Le4/g;->v:Landroid/view/VelocityTracker;

    .line 215
    .line 216
    if-nez p1, :cond_9

    .line 217
    .line 218
    goto/16 :goto_b

    .line 219
    .line 220
    :cond_9
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 221
    .line 222
    .line 223
    move-result p1

    .line 224
    iget v0, p0, Le4/g;->s:F

    .line 225
    .line 226
    sub-float/2addr p1, v0

    .line 227
    iget-object v0, p0, Le4/g;->v:Landroid/view/VelocityTracker;

    .line 228
    .line 229
    invoke-virtual {v0, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 230
    .line 231
    .line 232
    iget-object p2, p0, Le4/g;->v:Landroid/view/VelocityTracker;

    .line 233
    .line 234
    const/16 v0, 0x3e8

    .line 235
    .line 236
    invoke-virtual {p2, v0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 237
    .line 238
    .line 239
    iget-object p2, p0, Le4/g;->v:Landroid/view/VelocityTracker;

    .line 240
    .line 241
    invoke-virtual {p2}, Landroid/view/VelocityTracker;->getXVelocity()F

    .line 242
    .line 243
    .line 244
    move-result p2

    .line 245
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 246
    .line 247
    .line 248
    move-result v0

    .line 249
    iget-object v10, p0, Le4/g;->v:Landroid/view/VelocityTracker;

    .line 250
    .line 251
    invoke-virtual {v10}, Landroid/view/VelocityTracker;->getYVelocity()F

    .line 252
    .line 253
    .line 254
    move-result v10

    .line 255
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    .line 256
    .line 257
    .line 258
    move-result v10

    .line 259
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 260
    .line 261
    .line 262
    move-result v11

    .line 263
    iget v12, p0, Le4/g;->p:I

    .line 264
    .line 265
    div-int/2addr v12, v1

    .line 266
    int-to-float v1, v12

    .line 267
    cmpl-float v1, v11, v1

    .line 268
    .line 269
    if-lez v1, :cond_b

    .line 270
    .line 271
    iget-boolean v1, p0, Le4/g;->u:Z

    .line 272
    .line 273
    if-eqz v1, :cond_b

    .line 274
    .line 275
    cmpl-float p1, p1, v9

    .line 276
    .line 277
    if-lez p1, :cond_a

    .line 278
    .line 279
    move p1, v2

    .line 280
    goto :goto_1

    .line 281
    :cond_a
    move p1, v4

    .line 282
    :goto_1
    move p2, p1

    .line 283
    move p1, v2

    .line 284
    goto :goto_5

    .line 285
    :cond_b
    iget v1, p0, Le4/g;->e:I

    .line 286
    .line 287
    int-to-float v1, v1

    .line 288
    cmpg-float v1, v1, v0

    .line 289
    .line 290
    if-gtz v1, :cond_10

    .line 291
    .line 292
    iget v1, p0, Le4/g;->f:I

    .line 293
    .line 294
    int-to-float v1, v1

    .line 295
    cmpg-float v1, v0, v1

    .line 296
    .line 297
    if-gtz v1, :cond_10

    .line 298
    .line 299
    cmpg-float v0, v10, v0

    .line 300
    .line 301
    if-gez v0, :cond_10

    .line 302
    .line 303
    iget-boolean v0, p0, Le4/g;->u:Z

    .line 304
    .line 305
    if-eqz v0, :cond_10

    .line 306
    .line 307
    cmpg-float p2, p2, v9

    .line 308
    .line 309
    if-gez p2, :cond_c

    .line 310
    .line 311
    move p2, v2

    .line 312
    goto :goto_2

    .line 313
    :cond_c
    move p2, v4

    .line 314
    :goto_2
    cmpg-float p1, p1, v9

    .line 315
    .line 316
    if-gez p1, :cond_d

    .line 317
    .line 318
    move p1, v2

    .line 319
    goto :goto_3

    .line 320
    :cond_d
    move p1, v4

    .line 321
    :goto_3
    if-ne p2, p1, :cond_e

    .line 322
    .line 323
    move p1, v2

    .line 324
    goto :goto_4

    .line 325
    :cond_e
    move p1, v4

    .line 326
    :goto_4
    iget-object p2, p0, Le4/g;->v:Landroid/view/VelocityTracker;

    .line 327
    .line 328
    invoke-virtual {p2}, Landroid/view/VelocityTracker;->getXVelocity()F

    .line 329
    .line 330
    .line 331
    move-result p2

    .line 332
    cmpl-float p2, p2, v9

    .line 333
    .line 334
    if-lez p2, :cond_f

    .line 335
    .line 336
    move p2, v2

    .line 337
    goto :goto_5

    .line 338
    :cond_f
    move p2, v4

    .line 339
    goto :goto_5

    .line 340
    :cond_10
    move p1, v4

    .line 341
    move p2, p1

    .line 342
    :goto_5
    if-eqz p1, :cond_12

    .line 343
    .line 344
    iget p1, p0, Le4/g;->w:I

    .line 345
    .line 346
    if-eq p1, v7, :cond_12

    .line 347
    .line 348
    iget-object v0, p0, Le4/g;->x:Landroid/view/View;

    .line 349
    .line 350
    iget v1, p0, Le4/g;->r:I

    .line 351
    .line 352
    add-int/2addr v1, v2

    .line 353
    iput v1, p0, Le4/g;->r:I

    .line 354
    .line 355
    invoke-static {v0}, Li4/b;->animate(Landroid/view/View;)Li4/b;

    .line 356
    .line 357
    .line 358
    move-result-object v1

    .line 359
    if-eqz p2, :cond_11

    .line 360
    .line 361
    iget p2, p0, Le4/g;->p:I

    .line 362
    .line 363
    :goto_6
    int-to-float p2, p2

    .line 364
    goto :goto_7

    .line 365
    :cond_11
    iget p2, p0, Le4/g;->p:I

    .line 366
    .line 367
    neg-int p2, p2

    .line 368
    goto :goto_6

    .line 369
    :goto_7
    invoke-virtual {v1, p2}, Li4/b;->translationX(F)Li4/b;

    .line 370
    .line 371
    .line 372
    move-result-object p2

    .line 373
    invoke-virtual {p2, v9}, Li4/b;->alpha(F)Li4/b;

    .line 374
    .line 375
    .line 376
    move-result-object p2

    .line 377
    invoke-virtual {p2, v5, v6}, Li4/b;->setDuration(J)Li4/b;

    .line 378
    .line 379
    .line 380
    move-result-object p2

    .line 381
    new-instance v1, Le4/b;

    .line 382
    .line 383
    invoke-direct {v1, p0, p1, v0}, Le4/b;-><init>(Le4/g;ILandroid/view/View;)V

    .line 384
    .line 385
    .line 386
    invoke-virtual {p2, v1}, Li4/b;->setListener(Lh4/a;)Li4/b;

    .line 387
    .line 388
    .line 389
    goto :goto_8

    .line 390
    :cond_12
    iget-object p1, p0, Le4/g;->x:Landroid/view/View;

    .line 391
    .line 392
    invoke-static {p1}, Li4/b;->animate(Landroid/view/View;)Li4/b;

    .line 393
    .line 394
    .line 395
    move-result-object p1

    .line 396
    invoke-virtual {p1, v9}, Li4/b;->translationX(F)Li4/b;

    .line 397
    .line 398
    .line 399
    move-result-object p1

    .line 400
    invoke-virtual {p1, v8}, Li4/b;->alpha(F)Li4/b;

    .line 401
    .line 402
    .line 403
    move-result-object p1

    .line 404
    invoke-virtual {p1, v5, v6}, Li4/b;->setDuration(J)Li4/b;

    .line 405
    .line 406
    .line 407
    move-result-object p1

    .line 408
    invoke-virtual {p1, v3}, Li4/b;->setListener(Lh4/a;)Li4/b;

    .line 409
    .line 410
    .line 411
    :goto_8
    iget-object p1, p0, Le4/g;->v:Landroid/view/VelocityTracker;

    .line 412
    .line 413
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 414
    .line 415
    .line 416
    iput-object v3, p0, Le4/g;->v:Landroid/view/VelocityTracker;

    .line 417
    .line 418
    iput v9, p0, Le4/g;->s:F

    .line 419
    .line 420
    iput v9, p0, Le4/g;->t:F

    .line 421
    .line 422
    iput-object v3, p0, Le4/g;->x:Landroid/view/View;

    .line 423
    .line 424
    iput v7, p0, Le4/g;->w:I

    .line 425
    .line 426
    iput-boolean v4, p0, Le4/g;->u:Z

    .line 427
    .line 428
    return v4

    .line 429
    :cond_13
    iget-boolean p1, p0, Le4/g;->y:Z

    .line 430
    .line 431
    if-eqz p1, :cond_14

    .line 432
    .line 433
    goto :goto_b

    .line 434
    :cond_14
    new-instance p1, Landroid/graphics/Rect;

    .line 435
    .line 436
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 437
    .line 438
    .line 439
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 440
    .line 441
    .line 442
    move-result v5

    .line 443
    new-array v1, v1, [I

    .line 444
    .line 445
    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 446
    .line 447
    .line 448
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 449
    .line 450
    .line 451
    move-result v6

    .line 452
    float-to-int v6, v6

    .line 453
    aget v7, v1, v4

    .line 454
    .line 455
    sub-int/2addr v6, v7

    .line 456
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 457
    .line 458
    .line 459
    move-result v7

    .line 460
    float-to-int v7, v7

    .line 461
    aget v1, v1, v2

    .line 462
    .line 463
    sub-int/2addr v7, v1

    .line 464
    move v1, v4

    .line 465
    :goto_9
    if-ge v1, v5, :cond_16

    .line 466
    .line 467
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 468
    .line 469
    .line 470
    move-result-object v2

    .line 471
    invoke-virtual {v2, p1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 472
    .line 473
    .line 474
    invoke-virtual {p1, v6, v7}, Landroid/graphics/Rect;->contains(II)Z

    .line 475
    .line 476
    .line 477
    move-result v8

    .line 478
    if-eqz v8, :cond_15

    .line 479
    .line 480
    iput-object v2, p0, Le4/g;->x:Landroid/view/View;

    .line 481
    .line 482
    goto :goto_a

    .line 483
    :cond_15
    add-int/lit8 v1, v1, 0x1

    .line 484
    .line 485
    goto :goto_9

    .line 486
    :cond_16
    :goto_a
    iget-object p1, p0, Le4/g;->x:Landroid/view/View;

    .line 487
    .line 488
    if-eqz p1, :cond_18

    .line 489
    .line 490
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 491
    .line 492
    .line 493
    move-result p1

    .line 494
    iput p1, p0, Le4/g;->s:F

    .line 495
    .line 496
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 497
    .line 498
    .line 499
    move-result p1

    .line 500
    iput p1, p0, Le4/g;->t:F

    .line 501
    .line 502
    iget-object p1, p0, Le4/g;->x:Landroid/view/View;

    .line 503
    .line 504
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    .line 505
    .line 506
    .line 507
    move-result p1

    .line 508
    iput p1, p0, Le4/g;->w:I

    .line 509
    .line 510
    iget-object v0, p0, Le4/g;->n:Le4/e;

    .line 511
    .line 512
    check-cast v0, Ld4/d;

    .line 513
    .line 514
    invoke-virtual {v0, p1}, Ld4/d;->canDismiss(I)Z

    .line 515
    .line 516
    .line 517
    move-result p1

    .line 518
    if-eqz p1, :cond_17

    .line 519
    .line 520
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 521
    .line 522
    .line 523
    move-result-object p1

    .line 524
    iput-object p1, p0, Le4/g;->v:Landroid/view/VelocityTracker;

    .line 525
    .line 526
    invoke-virtual {p1, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 527
    .line 528
    .line 529
    return v4

    .line 530
    :cond_17
    iput-object v3, p0, Le4/g;->x:Landroid/view/View;

    .line 531
    .line 532
    :cond_18
    :goto_b
    return v4
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 1
    xor-int/lit8 p1, p1, 0x1

    .line 2
    .line 3
    iput-boolean p1, p0, Le4/g;->y:Z

    .line 4
    .line 5
    return-void
.end method
