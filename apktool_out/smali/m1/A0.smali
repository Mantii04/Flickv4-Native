.class public final Lm1/A0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public b:I

.field public e:I

.field public f:Landroid/widget/OverScroller;

.field public j:Landroid/view/animation/Interpolator;

.field public m:Z

.field public n:Z

.field public final synthetic p:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lm1/A0;->p:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    .line 6
    sget-object v0, Landroidx/recyclerview/widget/RecyclerView;->R0:Lm1/Q;

    .line 7
    .line 8
    iput-object v0, p0, Lm1/A0;->j:Landroid/view/animation/Interpolator;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iput-boolean v1, p0, Lm1/A0;->m:Z

    .line 12
    .line 13
    iput-boolean v1, p0, Lm1/A0;->n:Z

    .line 14
    .line 15
    new-instance v1, Landroid/widget/OverScroller;

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-direct {v1, p1, v0}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 22
    .line 23
    .line 24
    iput-object v1, p0, Lm1/A0;->f:Landroid/widget/OverScroller;

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lm1/A0;->m:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lm1/A0;->n:Z

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lm1/A0;->p:Landroidx/recyclerview/widget/RecyclerView;

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    .line 14
    invoke-static {v0, p0}, LM/p0;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public fling(II)V
    .locals 12

    .line 1
    iget-object v0, p0, Lm1/A0;->p:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 5
    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput v1, p0, Lm1/A0;->e:I

    .line 9
    .line 10
    iput v1, p0, Lm1/A0;->b:I

    .line 11
    .line 12
    iget-object v1, p0, Lm1/A0;->j:Landroid/view/animation/Interpolator;

    .line 13
    .line 14
    sget-object v2, Landroidx/recyclerview/widget/RecyclerView;->R0:Lm1/Q;

    .line 15
    .line 16
    if-eq v1, v2, :cond_0

    .line 17
    .line 18
    iput-object v2, p0, Lm1/A0;->j:Landroid/view/animation/Interpolator;

    .line 19
    .line 20
    new-instance v1, Landroid/widget/OverScroller;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-direct {v1, v0, v2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Lm1/A0;->f:Landroid/widget/OverScroller;

    .line 30
    .line 31
    :cond_0
    iget-object v3, p0, Lm1/A0;->f:Landroid/widget/OverScroller;

    .line 32
    .line 33
    const/high16 v8, -0x80000000

    .line 34
    .line 35
    const v9, 0x7fffffff

    .line 36
    .line 37
    .line 38
    const/4 v4, 0x0

    .line 39
    const/4 v5, 0x0

    .line 40
    const/high16 v10, -0x80000000

    .line 41
    .line 42
    const v11, 0x7fffffff

    .line 43
    .line 44
    .line 45
    move v6, p1

    .line 46
    move v7, p2

    .line 47
    invoke-virtual/range {v3 .. v11}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lm1/A0;->a()V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public run()V
    .locals 14

    .line 1
    iget-object v0, p0, Lm1/A0;->p:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->w:Lm1/i0;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lm1/A0;->stop()V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const/4 v8, 0x0

    .line 12
    iput-boolean v8, p0, Lm1/A0;->n:Z

    .line 13
    .line 14
    const/4 v9, 0x1

    .line 15
    iput-boolean v9, p0, Lm1/A0;->m:Z

    .line 16
    .line 17
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->m()V

    .line 18
    .line 19
    .line 20
    iget-object v10, p0, Lm1/A0;->f:Landroid/widget/OverScroller;

    .line 21
    .line 22
    invoke-virtual {v10}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_1d

    .line 27
    .line 28
    invoke-virtual {v10}, Landroid/widget/OverScroller;->getCurrX()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    invoke-virtual {v10}, Landroid/widget/OverScroller;->getCurrY()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    iget v3, p0, Lm1/A0;->b:I

    .line 37
    .line 38
    sub-int v3, v1, v3

    .line 39
    .line 40
    iget v4, p0, Lm1/A0;->e:I

    .line 41
    .line 42
    sub-int v4, v2, v4

    .line 43
    .line 44
    iput v1, p0, Lm1/A0;->b:I

    .line 45
    .line 46
    iput v2, p0, Lm1/A0;->e:I

    .line 47
    .line 48
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->R:Landroid/widget/EdgeEffect;

    .line 49
    .line 50
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->T:Landroid/widget/EdgeEffect;

    .line 51
    .line 52
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    invoke-static {v3, v1, v2, v5}, Landroidx/recyclerview/widget/RecyclerView;->l(ILandroid/widget/EdgeEffect;Landroid/widget/EdgeEffect;I)I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->S:Landroid/widget/EdgeEffect;

    .line 61
    .line 62
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->U:Landroid/widget/EdgeEffect;

    .line 63
    .line 64
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    invoke-static {v4, v2, v3, v5}, Landroidx/recyclerview/widget/RecyclerView;->l(ILandroid/widget/EdgeEffect;Landroid/widget/EdgeEffect;I)I

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->C0:[I

    .line 73
    .line 74
    aput v8, v3, v8

    .line 75
    .line 76
    aput v8, v3, v9

    .line 77
    .line 78
    const/4 v4, 0x0

    .line 79
    const/4 v5, 0x1

    .line 80
    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/RecyclerView;->dispatchNestedPreScroll(II[I[II)Z

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    iget-object v11, v0, Landroidx/recyclerview/widget/RecyclerView;->C0:[I

    .line 85
    .line 86
    if-eqz v3, :cond_1

    .line 87
    .line 88
    aget v3, v11, v8

    .line 89
    .line 90
    sub-int/2addr v1, v3

    .line 91
    aget v3, v11, v9

    .line 92
    .line 93
    sub-int/2addr v2, v3

    .line 94
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getOverScrollMode()I

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    const/4 v12, 0x2

    .line 99
    if-eq v3, v12, :cond_2

    .line 100
    .line 101
    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->k(II)V

    .line 102
    .line 103
    .line 104
    :cond_2
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->v:Lm1/V;

    .line 105
    .line 106
    if-eqz v3, :cond_6

    .line 107
    .line 108
    aput v8, v11, v8

    .line 109
    .line 110
    aput v8, v11, v9

    .line 111
    .line 112
    invoke-virtual {v0, v1, v2, v11}, Landroidx/recyclerview/widget/RecyclerView;->X(II[I)V

    .line 113
    .line 114
    .line 115
    aget v3, v11, v8

    .line 116
    .line 117
    aget v4, v11, v9

    .line 118
    .line 119
    sub-int/2addr v1, v3

    .line 120
    sub-int/2addr v2, v4

    .line 121
    iget-object v5, v0, Landroidx/recyclerview/widget/RecyclerView;->w:Lm1/i0;

    .line 122
    .line 123
    iget-object v5, v5, Lm1/i0;->e:Lm1/w0;

    .line 124
    .line 125
    if-eqz v5, :cond_5

    .line 126
    .line 127
    invoke-virtual {v5}, Lm1/w0;->isPendingInitialRun()Z

    .line 128
    .line 129
    .line 130
    move-result v6

    .line 131
    if-nez v6, :cond_5

    .line 132
    .line 133
    invoke-virtual {v5}, Lm1/w0;->isRunning()Z

    .line 134
    .line 135
    .line 136
    move-result v6

    .line 137
    if-eqz v6, :cond_5

    .line 138
    .line 139
    iget-object v6, v0, Landroidx/recyclerview/widget/RecyclerView;->q0:Lm1/x0;

    .line 140
    .line 141
    invoke-virtual {v6}, Lm1/x0;->getItemCount()I

    .line 142
    .line 143
    .line 144
    move-result v6

    .line 145
    if-nez v6, :cond_3

    .line 146
    .line 147
    invoke-virtual {v5}, Lm1/w0;->stop()V

    .line 148
    .line 149
    .line 150
    goto :goto_0

    .line 151
    :cond_3
    invoke-virtual {v5}, Lm1/w0;->getTargetPosition()I

    .line 152
    .line 153
    .line 154
    move-result v7

    .line 155
    if-lt v7, v6, :cond_4

    .line 156
    .line 157
    sub-int/2addr v6, v9

    .line 158
    invoke-virtual {v5, v6}, Lm1/w0;->setTargetPosition(I)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v5, v3, v4}, Lm1/w0;->a(II)V

    .line 162
    .line 163
    .line 164
    goto :goto_0

    .line 165
    :cond_4
    invoke-virtual {v5, v3, v4}, Lm1/w0;->a(II)V

    .line 166
    .line 167
    .line 168
    :cond_5
    :goto_0
    move v13, v3

    .line 169
    move v3, v1

    .line 170
    move v1, v13

    .line 171
    move v13, v4

    .line 172
    move v4, v2

    .line 173
    move v2, v13

    .line 174
    goto :goto_1

    .line 175
    :cond_6
    move v3, v1

    .line 176
    move v4, v2

    .line 177
    move v1, v8

    .line 178
    move v2, v1

    .line 179
    :goto_1
    iget-object v5, v0, Landroidx/recyclerview/widget/RecyclerView;->z:Ljava/util/ArrayList;

    .line 180
    .line 181
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 182
    .line 183
    .line 184
    move-result v5

    .line 185
    if-nez v5, :cond_7

    .line 186
    .line 187
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 188
    .line 189
    .line 190
    :cond_7
    iget-object v7, v0, Landroidx/recyclerview/widget/RecyclerView;->C0:[I

    .line 191
    .line 192
    aput v8, v7, v8

    .line 193
    .line 194
    aput v8, v7, v9

    .line 195
    .line 196
    const/4 v5, 0x0

    .line 197
    const/4 v6, 0x1

    .line 198
    invoke-virtual/range {v0 .. v7}, Landroidx/recyclerview/widget/RecyclerView;->dispatchNestedScroll(IIII[II[I)V

    .line 199
    .line 200
    .line 201
    aget v5, v11, v8

    .line 202
    .line 203
    sub-int/2addr v3, v5

    .line 204
    aget v5, v11, v9

    .line 205
    .line 206
    sub-int/2addr v4, v5

    .line 207
    if-nez v1, :cond_8

    .line 208
    .line 209
    if-eqz v2, :cond_9

    .line 210
    .line 211
    :cond_8
    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->r(II)V

    .line 212
    .line 213
    .line 214
    :cond_9
    invoke-static {v0}, Landroidx/recyclerview/widget/RecyclerView;->c(Landroidx/recyclerview/widget/RecyclerView;)Z

    .line 215
    .line 216
    .line 217
    move-result v5

    .line 218
    if-nez v5, :cond_a

    .line 219
    .line 220
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 221
    .line 222
    .line 223
    :cond_a
    invoke-virtual {v10}, Landroid/widget/OverScroller;->getCurrX()I

    .line 224
    .line 225
    .line 226
    move-result v5

    .line 227
    invoke-virtual {v10}, Landroid/widget/OverScroller;->getFinalX()I

    .line 228
    .line 229
    .line 230
    move-result v6

    .line 231
    if-ne v5, v6, :cond_b

    .line 232
    .line 233
    move v5, v9

    .line 234
    goto :goto_2

    .line 235
    :cond_b
    move v5, v8

    .line 236
    :goto_2
    invoke-virtual {v10}, Landroid/widget/OverScroller;->getCurrY()I

    .line 237
    .line 238
    .line 239
    move-result v6

    .line 240
    invoke-virtual {v10}, Landroid/widget/OverScroller;->getFinalY()I

    .line 241
    .line 242
    .line 243
    move-result v7

    .line 244
    if-ne v6, v7, :cond_c

    .line 245
    .line 246
    move v6, v9

    .line 247
    goto :goto_3

    .line 248
    :cond_c
    move v6, v8

    .line 249
    :goto_3
    invoke-virtual {v10}, Landroid/widget/OverScroller;->isFinished()Z

    .line 250
    .line 251
    .line 252
    move-result v7

    .line 253
    if-nez v7, :cond_f

    .line 254
    .line 255
    if-nez v5, :cond_d

    .line 256
    .line 257
    if-eqz v3, :cond_e

    .line 258
    .line 259
    :cond_d
    if-nez v6, :cond_f

    .line 260
    .line 261
    if-eqz v4, :cond_e

    .line 262
    .line 263
    goto :goto_4

    .line 264
    :cond_e
    move v5, v8

    .line 265
    goto :goto_5

    .line 266
    :cond_f
    :goto_4
    move v5, v9

    .line 267
    :goto_5
    iget-object v6, v0, Landroidx/recyclerview/widget/RecyclerView;->w:Lm1/i0;

    .line 268
    .line 269
    iget-object v6, v6, Lm1/i0;->e:Lm1/w0;

    .line 270
    .line 271
    if-eqz v6, :cond_10

    .line 272
    .line 273
    invoke-virtual {v6}, Lm1/w0;->isPendingInitialRun()Z

    .line 274
    .line 275
    .line 276
    move-result v6

    .line 277
    if-eqz v6, :cond_10

    .line 278
    .line 279
    goto/16 :goto_a

    .line 280
    .line 281
    :cond_10
    if-eqz v5, :cond_1c

    .line 282
    .line 283
    invoke-virtual {v0}, Landroid/view/View;->getOverScrollMode()I

    .line 284
    .line 285
    .line 286
    move-result v1

    .line 287
    if-eq v1, v12, :cond_1a

    .line 288
    .line 289
    invoke-virtual {v10}, Landroid/widget/OverScroller;->getCurrVelocity()F

    .line 290
    .line 291
    .line 292
    move-result v1

    .line 293
    float-to-int v1, v1

    .line 294
    if-gez v3, :cond_11

    .line 295
    .line 296
    neg-int v2, v1

    .line 297
    goto :goto_6

    .line 298
    :cond_11
    if-lez v3, :cond_12

    .line 299
    .line 300
    move v2, v1

    .line 301
    goto :goto_6

    .line 302
    :cond_12
    move v2, v8

    .line 303
    :goto_6
    if-gez v4, :cond_13

    .line 304
    .line 305
    neg-int v1, v1

    .line 306
    goto :goto_7

    .line 307
    :cond_13
    if-lez v4, :cond_14

    .line 308
    .line 309
    goto :goto_7

    .line 310
    :cond_14
    move v1, v8

    .line 311
    :goto_7
    if-gez v2, :cond_15

    .line 312
    .line 313
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->t()V

    .line 314
    .line 315
    .line 316
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->R:Landroid/widget/EdgeEffect;

    .line 317
    .line 318
    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 319
    .line 320
    .line 321
    move-result v3

    .line 322
    if-eqz v3, :cond_16

    .line 323
    .line 324
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->R:Landroid/widget/EdgeEffect;

    .line 325
    .line 326
    neg-int v4, v2

    .line 327
    invoke-virtual {v3, v4}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 328
    .line 329
    .line 330
    goto :goto_8

    .line 331
    :cond_15
    if-lez v2, :cond_16

    .line 332
    .line 333
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->u()V

    .line 334
    .line 335
    .line 336
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->T:Landroid/widget/EdgeEffect;

    .line 337
    .line 338
    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 339
    .line 340
    .line 341
    move-result v3

    .line 342
    if-eqz v3, :cond_16

    .line 343
    .line 344
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->T:Landroid/widget/EdgeEffect;

    .line 345
    .line 346
    invoke-virtual {v3, v2}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 347
    .line 348
    .line 349
    :cond_16
    :goto_8
    if-gez v1, :cond_17

    .line 350
    .line 351
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->v()V

    .line 352
    .line 353
    .line 354
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->S:Landroid/widget/EdgeEffect;

    .line 355
    .line 356
    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 357
    .line 358
    .line 359
    move-result v3

    .line 360
    if-eqz v3, :cond_18

    .line 361
    .line 362
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->S:Landroid/widget/EdgeEffect;

    .line 363
    .line 364
    neg-int v4, v1

    .line 365
    invoke-virtual {v3, v4}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 366
    .line 367
    .line 368
    goto :goto_9

    .line 369
    :cond_17
    if-lez v1, :cond_18

    .line 370
    .line 371
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->s()V

    .line 372
    .line 373
    .line 374
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->U:Landroid/widget/EdgeEffect;

    .line 375
    .line 376
    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 377
    .line 378
    .line 379
    move-result v3

    .line 380
    if-eqz v3, :cond_18

    .line 381
    .line 382
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->U:Landroid/widget/EdgeEffect;

    .line 383
    .line 384
    invoke-virtual {v3, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 385
    .line 386
    .line 387
    :cond_18
    :goto_9
    if-nez v2, :cond_19

    .line 388
    .line 389
    if-eqz v1, :cond_1a

    .line 390
    .line 391
    :cond_19
    invoke-static {v0}, LM/p0;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 392
    .line 393
    .line 394
    :cond_1a
    sget-boolean v1, Landroidx/recyclerview/widget/RecyclerView;->P0:Z

    .line 395
    .line 396
    if-eqz v1, :cond_1d

    .line 397
    .line 398
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->p0:Lm1/w;

    .line 399
    .line 400
    iget-object v2, v1, Lm1/w;->c:[I

    .line 401
    .line 402
    if-eqz v2, :cond_1b

    .line 403
    .line 404
    const/4 v3, -0x1

    .line 405
    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([II)V

    .line 406
    .line 407
    .line 408
    :cond_1b
    iput v8, v1, Lm1/w;->d:I

    .line 409
    .line 410
    goto :goto_b

    .line 411
    :cond_1c
    :goto_a
    invoke-virtual {p0}, Lm1/A0;->a()V

    .line 412
    .line 413
    .line 414
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->o0:Lm1/y;

    .line 415
    .line 416
    if-eqz v3, :cond_1d

    .line 417
    .line 418
    invoke-virtual {v3, v0, v1, v2}, Lm1/y;->a(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 419
    .line 420
    .line 421
    :cond_1d
    :goto_b
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->w:Lm1/i0;

    .line 422
    .line 423
    iget-object v1, v1, Lm1/i0;->e:Lm1/w0;

    .line 424
    .line 425
    if-eqz v1, :cond_1e

    .line 426
    .line 427
    invoke-virtual {v1}, Lm1/w0;->isPendingInitialRun()Z

    .line 428
    .line 429
    .line 430
    move-result v2

    .line 431
    if-eqz v2, :cond_1e

    .line 432
    .line 433
    invoke-virtual {v1, v8, v8}, Lm1/w0;->a(II)V

    .line 434
    .line 435
    .line 436
    :cond_1e
    iput-boolean v8, p0, Lm1/A0;->m:Z

    .line 437
    .line 438
    iget-boolean v1, p0, Lm1/A0;->n:Z

    .line 439
    .line 440
    if-eqz v1, :cond_1f

    .line 441
    .line 442
    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 443
    .line 444
    .line 445
    invoke-static {v0, p0}, LM/p0;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 446
    .line 447
    .line 448
    return-void

    .line 449
    :cond_1f
    invoke-virtual {v0, v8}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 450
    .line 451
    .line 452
    invoke-virtual {v0, v9}, Landroidx/recyclerview/widget/RecyclerView;->stopNestedScroll(I)V

    .line 453
    .line 454
    .line 455
    return-void
.end method

.method public smoothScrollBy(IIILandroid/view/animation/Interpolator;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lm1/A0;->p:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    const/high16 v1, -0x80000000

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-ne p3, v1, :cond_3

    .line 7
    .line 8
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 9
    .line 10
    .line 11
    move-result p3

    .line 12
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-le p3, v1, :cond_0

    .line 17
    .line 18
    const/4 v3, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v3, v2

    .line 21
    :goto_0
    if-eqz v3, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    :goto_1
    if-eqz v3, :cond_2

    .line 33
    .line 34
    goto :goto_2

    .line 35
    :cond_2
    move p3, v1

    .line 36
    :goto_2
    int-to-float p3, p3

    .line 37
    int-to-float v1, v4

    .line 38
    div-float/2addr p3, v1

    .line 39
    const/high16 v1, 0x3f800000    # 1.0f

    .line 40
    .line 41
    add-float/2addr p3, v1

    .line 42
    const/high16 v1, 0x43960000    # 300.0f

    .line 43
    .line 44
    mul-float/2addr p3, v1

    .line 45
    float-to-int p3, p3

    .line 46
    const/16 v1, 0x7d0

    .line 47
    .line 48
    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    .line 49
    .line 50
    .line 51
    move-result p3

    .line 52
    :cond_3
    move v8, p3

    .line 53
    if-nez p4, :cond_4

    .line 54
    .line 55
    sget-object p4, Landroidx/recyclerview/widget/RecyclerView;->R0:Lm1/Q;

    .line 56
    .line 57
    :cond_4
    iget-object p3, p0, Lm1/A0;->j:Landroid/view/animation/Interpolator;

    .line 58
    .line 59
    if-eq p3, p4, :cond_5

    .line 60
    .line 61
    iput-object p4, p0, Lm1/A0;->j:Landroid/view/animation/Interpolator;

    .line 62
    .line 63
    new-instance p3, Landroid/widget/OverScroller;

    .line 64
    .line 65
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-direct {p3, v1, p4}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 70
    .line 71
    .line 72
    iput-object p3, p0, Lm1/A0;->f:Landroid/widget/OverScroller;

    .line 73
    .line 74
    :cond_5
    iput v2, p0, Lm1/A0;->e:I

    .line 75
    .line 76
    iput v2, p0, Lm1/A0;->b:I

    .line 77
    .line 78
    const/4 p3, 0x2

    .line 79
    invoke-virtual {v0, p3}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 80
    .line 81
    .line 82
    iget-object v3, p0, Lm1/A0;->f:Landroid/widget/OverScroller;

    .line 83
    .line 84
    const/4 v4, 0x0

    .line 85
    const/4 v5, 0x0

    .line 86
    move v6, p1

    .line 87
    move v7, p2

    .line 88
    invoke-virtual/range {v3 .. v8}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0}, Lm1/A0;->a()V

    .line 92
    .line 93
    .line 94
    return-void
.end method

.method public stop()V
    .locals 1

    .line 1
    iget-object v0, p0, Lm1/A0;->p:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lm1/A0;->f:Landroid/widget/OverScroller;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 9
    .line 10
    .line 11
    return-void
.end method
