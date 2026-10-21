.class public final Lu/h;
.super Lu/m;
.source "SourceFile"


# instance fields
.field public D0:I

.field public E0:I

.field public F0:I

.field public G0:I

.field public H0:I

.field public I0:I

.field public J0:F

.field public K0:F

.field public L0:F

.field public M0:F

.field public N0:F

.field public O0:F

.field public P0:I

.field public Q0:I

.field public R0:I

.field public S0:I

.field public T0:I

.field public U0:I

.field public V0:I

.field public final W0:Ljava/util/ArrayList;

.field public X0:[Lu/e;

.field public Y0:[Lu/e;

.field public Z0:[I

.field public a1:[Lu/e;

.field public b1:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lu/m;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lu/h;->D0:I

    .line 6
    .line 7
    iput v0, p0, Lu/h;->E0:I

    .line 8
    .line 9
    iput v0, p0, Lu/h;->F0:I

    .line 10
    .line 11
    iput v0, p0, Lu/h;->G0:I

    .line 12
    .line 13
    iput v0, p0, Lu/h;->H0:I

    .line 14
    .line 15
    iput v0, p0, Lu/h;->I0:I

    .line 16
    .line 17
    const/high16 v1, 0x3f000000    # 0.5f

    .line 18
    .line 19
    iput v1, p0, Lu/h;->J0:F

    .line 20
    .line 21
    iput v1, p0, Lu/h;->K0:F

    .line 22
    .line 23
    iput v1, p0, Lu/h;->L0:F

    .line 24
    .line 25
    iput v1, p0, Lu/h;->M0:F

    .line 26
    .line 27
    iput v1, p0, Lu/h;->N0:F

    .line 28
    .line 29
    iput v1, p0, Lu/h;->O0:F

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    iput v1, p0, Lu/h;->P0:I

    .line 33
    .line 34
    iput v1, p0, Lu/h;->Q0:I

    .line 35
    .line 36
    const/4 v2, 0x2

    .line 37
    iput v2, p0, Lu/h;->R0:I

    .line 38
    .line 39
    iput v2, p0, Lu/h;->S0:I

    .line 40
    .line 41
    iput v1, p0, Lu/h;->T0:I

    .line 42
    .line 43
    iput v0, p0, Lu/h;->U0:I

    .line 44
    .line 45
    iput v1, p0, Lu/h;->V0:I

    .line 46
    .line 47
    new-instance v0, Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .line 51
    .line 52
    iput-object v0, p0, Lu/h;->W0:Ljava/util/ArrayList;

    .line 53
    .line 54
    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lu/h;->X0:[Lu/e;

    .line 56
    .line 57
    iput-object v0, p0, Lu/h;->Y0:[Lu/e;

    .line 58
    .line 59
    iput-object v0, p0, Lu/h;->Z0:[I

    .line 60
    .line 61
    iput v1, p0, Lu/h;->b1:I

    .line 62
    .line 63
    return-void
.end method


# virtual methods
.method public addToSolver(Lr/f;Z)V
    .locals 11

    .line 1
    invoke-super {p0, p1, p2}, Lu/e;->addToSolver(Lr/f;Z)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lu/e;->getParent()Lu/e;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const/4 p2, 0x0

    .line 9
    const/4 v0, 0x1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lu/e;->getParent()Lu/e;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Lu/f;

    .line 17
    .line 18
    invoke-virtual {p1}, Lu/f;->isRtl()Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    move p1, v0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move p1, p2

    .line 27
    :goto_0
    iget v1, p0, Lu/h;->T0:I

    .line 28
    .line 29
    iget-object v2, p0, Lu/h;->W0:Ljava/util/ArrayList;

    .line 30
    .line 31
    if-eqz v1, :cond_1b

    .line 32
    .line 33
    if-eq v1, v0, :cond_19

    .line 34
    .line 35
    const/4 v3, 0x2

    .line 36
    if-eq v1, v3, :cond_3

    .line 37
    .line 38
    const/4 v3, 0x3

    .line 39
    if-eq v1, v3, :cond_1

    .line 40
    .line 41
    goto/16 :goto_e

    .line 42
    .line 43
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    move v3, p2

    .line 48
    :goto_1
    if-ge v3, v1, :cond_1c

    .line 49
    .line 50
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    check-cast v4, Lu/g;

    .line 55
    .line 56
    add-int/lit8 v5, v1, -0x1

    .line 57
    .line 58
    if-ne v3, v5, :cond_2

    .line 59
    .line 60
    move v5, v0

    .line 61
    goto :goto_2

    .line 62
    :cond_2
    move v5, p2

    .line 63
    :goto_2
    invoke-virtual {v4, p1, v3, v5}, Lu/g;->createConstraints(ZIZ)V

    .line 64
    .line 65
    .line 66
    add-int/lit8 v3, v3, 0x1

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_3
    iget-object v1, p0, Lu/h;->Z0:[I

    .line 70
    .line 71
    if-eqz v1, :cond_1c

    .line 72
    .line 73
    iget-object v1, p0, Lu/h;->Y0:[Lu/e;

    .line 74
    .line 75
    if-eqz v1, :cond_1c

    .line 76
    .line 77
    iget-object v1, p0, Lu/h;->X0:[Lu/e;

    .line 78
    .line 79
    if-nez v1, :cond_4

    .line 80
    .line 81
    goto/16 :goto_e

    .line 82
    .line 83
    :cond_4
    move v1, p2

    .line 84
    :goto_3
    iget v2, p0, Lu/h;->b1:I

    .line 85
    .line 86
    if-ge v1, v2, :cond_5

    .line 87
    .line 88
    iget-object v2, p0, Lu/h;->a1:[Lu/e;

    .line 89
    .line 90
    aget-object v2, v2, v1

    .line 91
    .line 92
    invoke-virtual {v2}, Lu/e;->resetAnchors()V

    .line 93
    .line 94
    .line 95
    add-int/lit8 v1, v1, 0x1

    .line 96
    .line 97
    goto :goto_3

    .line 98
    :cond_5
    iget-object v1, p0, Lu/h;->Z0:[I

    .line 99
    .line 100
    aget v2, v1, p2

    .line 101
    .line 102
    aget v1, v1, v0

    .line 103
    .line 104
    iget v3, p0, Lu/h;->J0:F

    .line 105
    .line 106
    const/4 v4, 0x0

    .line 107
    move v5, p2

    .line 108
    :goto_4
    const/16 v6, 0x8

    .line 109
    .line 110
    if-ge v5, v2, :cond_c

    .line 111
    .line 112
    if-eqz p1, :cond_6

    .line 113
    .line 114
    sub-int v3, v2, v5

    .line 115
    .line 116
    sub-int/2addr v3, v0

    .line 117
    const/high16 v7, 0x3f800000    # 1.0f

    .line 118
    .line 119
    iget v8, p0, Lu/h;->J0:F

    .line 120
    .line 121
    sub-float/2addr v7, v8

    .line 122
    goto :goto_5

    .line 123
    :cond_6
    move v7, v3

    .line 124
    move v3, v5

    .line 125
    :goto_5
    iget-object v8, p0, Lu/h;->Y0:[Lu/e;

    .line 126
    .line 127
    aget-object v3, v8, v3

    .line 128
    .line 129
    if-eqz v3, :cond_b

    .line 130
    .line 131
    invoke-virtual {v3}, Lu/e;->getVisibility()I

    .line 132
    .line 133
    .line 134
    move-result v8

    .line 135
    if-ne v8, v6, :cond_7

    .line 136
    .line 137
    goto :goto_6

    .line 138
    :cond_7
    iget-object v6, v3, Lu/e;->I:Lu/d;

    .line 139
    .line 140
    if-nez v5, :cond_8

    .line 141
    .line 142
    iget-object v8, p0, Lu/e;->I:Lu/d;

    .line 143
    .line 144
    invoke-virtual {p0}, Lu/m;->getPaddingLeft()I

    .line 145
    .line 146
    .line 147
    move-result v9

    .line 148
    invoke-virtual {v3, v6, v8, v9}, Lu/e;->connect(Lu/d;Lu/d;I)V

    .line 149
    .line 150
    .line 151
    iget v8, p0, Lu/h;->D0:I

    .line 152
    .line 153
    invoke-virtual {v3, v8}, Lu/e;->setHorizontalChainStyle(I)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v3, v7}, Lu/e;->setHorizontalBiasPercent(F)V

    .line 157
    .line 158
    .line 159
    :cond_8
    add-int/lit8 v8, v2, -0x1

    .line 160
    .line 161
    if-ne v5, v8, :cond_9

    .line 162
    .line 163
    invoke-virtual {p0}, Lu/m;->getPaddingRight()I

    .line 164
    .line 165
    .line 166
    move-result v8

    .line 167
    iget-object v9, v3, Lu/e;->K:Lu/d;

    .line 168
    .line 169
    iget-object v10, p0, Lu/e;->K:Lu/d;

    .line 170
    .line 171
    invoke-virtual {v3, v9, v10, v8}, Lu/e;->connect(Lu/d;Lu/d;I)V

    .line 172
    .line 173
    .line 174
    :cond_9
    if-lez v5, :cond_a

    .line 175
    .line 176
    if-eqz v4, :cond_a

    .line 177
    .line 178
    iget v8, p0, Lu/h;->P0:I

    .line 179
    .line 180
    iget-object v9, v4, Lu/e;->K:Lu/d;

    .line 181
    .line 182
    invoke-virtual {v3, v6, v9, v8}, Lu/e;->connect(Lu/d;Lu/d;I)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v4, v9, v6, p2}, Lu/e;->connect(Lu/d;Lu/d;I)V

    .line 186
    .line 187
    .line 188
    :cond_a
    move-object v4, v3

    .line 189
    :cond_b
    :goto_6
    add-int/lit8 v5, v5, 0x1

    .line 190
    .line 191
    move v3, v7

    .line 192
    goto :goto_4

    .line 193
    :cond_c
    move p1, p2

    .line 194
    :goto_7
    if-ge p1, v1, :cond_12

    .line 195
    .line 196
    iget-object v3, p0, Lu/h;->X0:[Lu/e;

    .line 197
    .line 198
    aget-object v3, v3, p1

    .line 199
    .line 200
    if-eqz v3, :cond_11

    .line 201
    .line 202
    invoke-virtual {v3}, Lu/e;->getVisibility()I

    .line 203
    .line 204
    .line 205
    move-result v5

    .line 206
    if-ne v5, v6, :cond_d

    .line 207
    .line 208
    goto :goto_8

    .line 209
    :cond_d
    iget-object v5, v3, Lu/e;->J:Lu/d;

    .line 210
    .line 211
    if-nez p1, :cond_e

    .line 212
    .line 213
    iget-object v7, p0, Lu/e;->J:Lu/d;

    .line 214
    .line 215
    invoke-virtual {p0}, Lu/m;->getPaddingTop()I

    .line 216
    .line 217
    .line 218
    move-result v8

    .line 219
    invoke-virtual {v3, v5, v7, v8}, Lu/e;->connect(Lu/d;Lu/d;I)V

    .line 220
    .line 221
    .line 222
    iget v7, p0, Lu/h;->E0:I

    .line 223
    .line 224
    invoke-virtual {v3, v7}, Lu/e;->setVerticalChainStyle(I)V

    .line 225
    .line 226
    .line 227
    iget v7, p0, Lu/h;->K0:F

    .line 228
    .line 229
    invoke-virtual {v3, v7}, Lu/e;->setVerticalBiasPercent(F)V

    .line 230
    .line 231
    .line 232
    :cond_e
    add-int/lit8 v7, v1, -0x1

    .line 233
    .line 234
    if-ne p1, v7, :cond_f

    .line 235
    .line 236
    invoke-virtual {p0}, Lu/m;->getPaddingBottom()I

    .line 237
    .line 238
    .line 239
    move-result v7

    .line 240
    iget-object v8, v3, Lu/e;->L:Lu/d;

    .line 241
    .line 242
    iget-object v9, p0, Lu/e;->L:Lu/d;

    .line 243
    .line 244
    invoke-virtual {v3, v8, v9, v7}, Lu/e;->connect(Lu/d;Lu/d;I)V

    .line 245
    .line 246
    .line 247
    :cond_f
    if-lez p1, :cond_10

    .line 248
    .line 249
    if-eqz v4, :cond_10

    .line 250
    .line 251
    iget v7, p0, Lu/h;->Q0:I

    .line 252
    .line 253
    iget-object v8, v4, Lu/e;->L:Lu/d;

    .line 254
    .line 255
    invoke-virtual {v3, v5, v8, v7}, Lu/e;->connect(Lu/d;Lu/d;I)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v4, v8, v5, p2}, Lu/e;->connect(Lu/d;Lu/d;I)V

    .line 259
    .line 260
    .line 261
    :cond_10
    move-object v4, v3

    .line 262
    :cond_11
    :goto_8
    add-int/lit8 p1, p1, 0x1

    .line 263
    .line 264
    goto :goto_7

    .line 265
    :cond_12
    move p1, p2

    .line 266
    :goto_9
    if-ge p1, v2, :cond_1c

    .line 267
    .line 268
    move v3, p2

    .line 269
    :goto_a
    if-ge v3, v1, :cond_18

    .line 270
    .line 271
    mul-int v4, v3, v2

    .line 272
    .line 273
    add-int/2addr v4, p1

    .line 274
    iget v5, p0, Lu/h;->V0:I

    .line 275
    .line 276
    if-ne v5, v0, :cond_13

    .line 277
    .line 278
    mul-int v4, p1, v1

    .line 279
    .line 280
    add-int/2addr v4, v3

    .line 281
    :cond_13
    iget-object v5, p0, Lu/h;->a1:[Lu/e;

    .line 282
    .line 283
    array-length v7, v5

    .line 284
    if-lt v4, v7, :cond_14

    .line 285
    .line 286
    goto :goto_b

    .line 287
    :cond_14
    aget-object v4, v5, v4

    .line 288
    .line 289
    if-eqz v4, :cond_17

    .line 290
    .line 291
    invoke-virtual {v4}, Lu/e;->getVisibility()I

    .line 292
    .line 293
    .line 294
    move-result v5

    .line 295
    if-ne v5, v6, :cond_15

    .line 296
    .line 297
    goto :goto_b

    .line 298
    :cond_15
    iget-object v5, p0, Lu/h;->Y0:[Lu/e;

    .line 299
    .line 300
    aget-object v5, v5, p1

    .line 301
    .line 302
    iget-object v7, p0, Lu/h;->X0:[Lu/e;

    .line 303
    .line 304
    aget-object v7, v7, v3

    .line 305
    .line 306
    if-eq v4, v5, :cond_16

    .line 307
    .line 308
    iget-object v8, v5, Lu/e;->I:Lu/d;

    .line 309
    .line 310
    iget-object v9, v4, Lu/e;->I:Lu/d;

    .line 311
    .line 312
    invoke-virtual {v4, v9, v8, p2}, Lu/e;->connect(Lu/d;Lu/d;I)V

    .line 313
    .line 314
    .line 315
    iget-object v8, v4, Lu/e;->K:Lu/d;

    .line 316
    .line 317
    iget-object v5, v5, Lu/e;->K:Lu/d;

    .line 318
    .line 319
    invoke-virtual {v4, v8, v5, p2}, Lu/e;->connect(Lu/d;Lu/d;I)V

    .line 320
    .line 321
    .line 322
    :cond_16
    if-eq v4, v7, :cond_17

    .line 323
    .line 324
    iget-object v5, v7, Lu/e;->J:Lu/d;

    .line 325
    .line 326
    iget-object v8, v4, Lu/e;->J:Lu/d;

    .line 327
    .line 328
    invoke-virtual {v4, v8, v5, p2}, Lu/e;->connect(Lu/d;Lu/d;I)V

    .line 329
    .line 330
    .line 331
    iget-object v5, v4, Lu/e;->L:Lu/d;

    .line 332
    .line 333
    iget-object v7, v7, Lu/e;->L:Lu/d;

    .line 334
    .line 335
    invoke-virtual {v4, v5, v7, p2}, Lu/e;->connect(Lu/d;Lu/d;I)V

    .line 336
    .line 337
    .line 338
    :cond_17
    :goto_b
    add-int/lit8 v3, v3, 0x1

    .line 339
    .line 340
    goto :goto_a

    .line 341
    :cond_18
    add-int/lit8 p1, p1, 0x1

    .line 342
    .line 343
    goto :goto_9

    .line 344
    :cond_19
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 345
    .line 346
    .line 347
    move-result v1

    .line 348
    move v3, p2

    .line 349
    :goto_c
    if-ge v3, v1, :cond_1c

    .line 350
    .line 351
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 352
    .line 353
    .line 354
    move-result-object v4

    .line 355
    check-cast v4, Lu/g;

    .line 356
    .line 357
    add-int/lit8 v5, v1, -0x1

    .line 358
    .line 359
    if-ne v3, v5, :cond_1a

    .line 360
    .line 361
    move v5, v0

    .line 362
    goto :goto_d

    .line 363
    :cond_1a
    move v5, p2

    .line 364
    :goto_d
    invoke-virtual {v4, p1, v3, v5}, Lu/g;->createConstraints(ZIZ)V

    .line 365
    .line 366
    .line 367
    add-int/lit8 v3, v3, 0x1

    .line 368
    .line 369
    goto :goto_c

    .line 370
    :cond_1b
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 371
    .line 372
    .line 373
    move-result v1

    .line 374
    if-lez v1, :cond_1c

    .line 375
    .line 376
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 377
    .line 378
    .line 379
    move-result-object v1

    .line 380
    check-cast v1, Lu/g;

    .line 381
    .line 382
    invoke-virtual {v1, p1, p2, v0}, Lu/g;->createConstraints(ZIZ)V

    .line 383
    .line 384
    .line 385
    :cond_1c
    :goto_e
    invoke-virtual {p0, p2}, Lu/m;->needsCallbackFromSolver(Z)V

    .line 386
    .line 387
    .line 388
    return-void
.end method

.method public final g(Lu/e;I)I
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lu/e;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->f:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 10
    .line 11
    if-ne v1, v2, :cond_5

    .line 12
    .line 13
    iget v1, p1, Lu/e;->s:I

    .line 14
    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    return v0

    .line 18
    :cond_1
    const/4 v0, 0x2

    .line 19
    const/4 v2, 0x1

    .line 20
    if-ne v1, v0, :cond_3

    .line 21
    .line 22
    iget v0, p1, Lu/e;->z:F

    .line 23
    .line 24
    int-to-float p2, p2

    .line 25
    mul-float/2addr v0, p2

    .line 26
    float-to-int v8, v0

    .line 27
    invoke-virtual {p1}, Lu/e;->getHeight()I

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    if-eq v8, p2, :cond_2

    .line 32
    .line 33
    invoke-virtual {p1, v2}, Lu/e;->setMeasureRequested(Z)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Lu/e;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    invoke-virtual {p1}, Lu/e;->getWidth()I

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 45
    .line 46
    move-object v3, p0

    .line 47
    move-object v4, p1

    .line 48
    invoke-virtual/range {v3 .. v8}, Lu/m;->measure(Lu/e;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 49
    .line 50
    .line 51
    :cond_2
    return v8

    .line 52
    :cond_3
    move-object v4, p1

    .line 53
    if-ne v1, v2, :cond_4

    .line 54
    .line 55
    invoke-virtual {v4}, Lu/e;->getHeight()I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    return p1

    .line 60
    :cond_4
    const/4 p1, 0x3

    .line 61
    if-ne v1, p1, :cond_6

    .line 62
    .line 63
    invoke-virtual {v4}, Lu/e;->getWidth()I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    int-to-float p1, p1

    .line 68
    iget p2, v4, Lu/e;->X:F

    .line 69
    .line 70
    mul-float/2addr p1, p2

    .line 71
    const/high16 p2, 0x3f000000    # 0.5f

    .line 72
    .line 73
    add-float/2addr p1, p2

    .line 74
    float-to-int p1, p1

    .line 75
    return p1

    .line 76
    :cond_5
    move-object v4, p1

    .line 77
    :cond_6
    invoke-virtual {v4}, Lu/e;->getHeight()I

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    return p1
.end method

.method public final h(Lu/e;I)I
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lu/e;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->f:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 10
    .line 11
    if-ne v1, v2, :cond_5

    .line 12
    .line 13
    iget v1, p1, Lu/e;->r:I

    .line 14
    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    return v0

    .line 18
    :cond_1
    const/4 v0, 0x2

    .line 19
    const/4 v2, 0x1

    .line 20
    if-ne v1, v0, :cond_3

    .line 21
    .line 22
    iget v0, p1, Lu/e;->w:F

    .line 23
    .line 24
    int-to-float p2, p2

    .line 25
    mul-float/2addr v0, p2

    .line 26
    float-to-int v6, v0

    .line 27
    invoke-virtual {p1}, Lu/e;->getWidth()I

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    if-eq v6, p2, :cond_2

    .line 32
    .line 33
    invoke-virtual {p1, v2}, Lu/e;->setMeasureRequested(Z)V

    .line 34
    .line 35
    .line 36
    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 37
    .line 38
    invoke-virtual {p1}, Lu/e;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 39
    .line 40
    .line 41
    move-result-object v7

    .line 42
    invoke-virtual {p1}, Lu/e;->getHeight()I

    .line 43
    .line 44
    .line 45
    move-result v8

    .line 46
    move-object v3, p0

    .line 47
    move-object v4, p1

    .line 48
    invoke-virtual/range {v3 .. v8}, Lu/m;->measure(Lu/e;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 49
    .line 50
    .line 51
    :cond_2
    return v6

    .line 52
    :cond_3
    move-object v4, p1

    .line 53
    if-ne v1, v2, :cond_4

    .line 54
    .line 55
    invoke-virtual {v4}, Lu/e;->getWidth()I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    return p1

    .line 60
    :cond_4
    const/4 p1, 0x3

    .line 61
    if-ne v1, p1, :cond_6

    .line 62
    .line 63
    invoke-virtual {v4}, Lu/e;->getHeight()I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    int-to-float p1, p1

    .line 68
    iget p2, v4, Lu/e;->X:F

    .line 69
    .line 70
    mul-float/2addr p1, p2

    .line 71
    const/high16 p2, 0x3f000000    # 0.5f

    .line 72
    .line 73
    add-float/2addr p1, p2

    .line 74
    float-to-int p1, p1

    .line 75
    return p1

    .line 76
    :cond_5
    move-object v4, p1

    .line 77
    :cond_6
    invoke-virtual {v4}, Lu/e;->getWidth()I

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    return p1
.end method

.method public measure(IIII)V
    .locals 36

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v8, p1

    .line 4
    .line 5
    iget v0, v1, Lu/k;->r0:I

    .line 6
    .line 7
    const/4 v12, 0x0

    .line 8
    if-lez v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v1}, Lu/m;->measureChildren()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {v1, v12, v12}, Lu/m;->setMeasure(II)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v12}, Lu/m;->needsCallbackFromSolver(Z)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    invoke-virtual {v1}, Lu/m;->getPaddingLeft()I

    .line 24
    .line 25
    .line 26
    move-result v13

    .line 27
    invoke-virtual {v1}, Lu/m;->getPaddingRight()I

    .line 28
    .line 29
    .line 30
    move-result v14

    .line 31
    invoke-virtual {v1}, Lu/m;->getPaddingTop()I

    .line 32
    .line 33
    .line 34
    move-result v15

    .line 35
    invoke-virtual {v1}, Lu/m;->getPaddingBottom()I

    .line 36
    .line 37
    .line 38
    move-result v16

    .line 39
    const/4 v0, 0x2

    .line 40
    new-array v2, v0, [I

    .line 41
    .line 42
    sub-int v3, p2, v13

    .line 43
    .line 44
    sub-int/2addr v3, v14

    .line 45
    iget v4, v1, Lu/h;->V0:I

    .line 46
    .line 47
    const/4 v5, 0x1

    .line 48
    if-ne v4, v5, :cond_1

    .line 49
    .line 50
    sub-int v3, p4, v15

    .line 51
    .line 52
    sub-int v3, v3, v16

    .line 53
    .line 54
    :cond_1
    move v7, v3

    .line 55
    const/4 v3, -0x1

    .line 56
    if-nez v4, :cond_3

    .line 57
    .line 58
    iget v4, v1, Lu/h;->D0:I

    .line 59
    .line 60
    if-ne v4, v3, :cond_2

    .line 61
    .line 62
    iput v12, v1, Lu/h;->D0:I

    .line 63
    .line 64
    :cond_2
    iget v4, v1, Lu/h;->E0:I

    .line 65
    .line 66
    if-ne v4, v3, :cond_5

    .line 67
    .line 68
    iput v12, v1, Lu/h;->E0:I

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_3
    iget v4, v1, Lu/h;->D0:I

    .line 72
    .line 73
    if-ne v4, v3, :cond_4

    .line 74
    .line 75
    iput v12, v1, Lu/h;->D0:I

    .line 76
    .line 77
    :cond_4
    iget v4, v1, Lu/h;->E0:I

    .line 78
    .line 79
    if-ne v4, v3, :cond_5

    .line 80
    .line 81
    iput v12, v1, Lu/h;->E0:I

    .line 82
    .line 83
    :cond_5
    :goto_0
    iget-object v3, v1, Lu/k;->q0:[Lu/e;

    .line 84
    .line 85
    move v4, v12

    .line 86
    move v6, v4

    .line 87
    move/from16 v28, v6

    .line 88
    .line 89
    :goto_1
    iget v12, v1, Lu/k;->r0:I

    .line 90
    .line 91
    const/16 v0, 0x8

    .line 92
    .line 93
    if-ge v4, v12, :cond_7

    .line 94
    .line 95
    iget-object v12, v1, Lu/k;->q0:[Lu/e;

    .line 96
    .line 97
    aget-object v12, v12, v4

    .line 98
    .line 99
    invoke-virtual {v12}, Lu/e;->getVisibility()I

    .line 100
    .line 101
    .line 102
    move-result v12

    .line 103
    if-ne v12, v0, :cond_6

    .line 104
    .line 105
    add-int/lit8 v6, v6, 0x1

    .line 106
    .line 107
    :cond_6
    add-int/lit8 v4, v4, 0x1

    .line 108
    .line 109
    const/4 v0, 0x2

    .line 110
    goto :goto_1

    .line 111
    :cond_7
    if-lez v6, :cond_a

    .line 112
    .line 113
    sub-int/2addr v12, v6

    .line 114
    new-array v3, v12, [Lu/e;

    .line 115
    .line 116
    move/from16 v4, v28

    .line 117
    .line 118
    move v6, v4

    .line 119
    :goto_2
    iget v12, v1, Lu/k;->r0:I

    .line 120
    .line 121
    if-ge v4, v12, :cond_9

    .line 122
    .line 123
    iget-object v12, v1, Lu/k;->q0:[Lu/e;

    .line 124
    .line 125
    aget-object v12, v12, v4

    .line 126
    .line 127
    invoke-virtual {v12}, Lu/e;->getVisibility()I

    .line 128
    .line 129
    .line 130
    move-result v5

    .line 131
    if-eq v5, v0, :cond_8

    .line 132
    .line 133
    aput-object v12, v3, v6

    .line 134
    .line 135
    add-int/lit8 v6, v6, 0x1

    .line 136
    .line 137
    :cond_8
    add-int/lit8 v4, v4, 0x1

    .line 138
    .line 139
    const/4 v5, 0x1

    .line 140
    goto :goto_2

    .line 141
    :cond_9
    move v0, v6

    .line 142
    :goto_3
    move-object v12, v3

    .line 143
    goto :goto_4

    .line 144
    :cond_a
    move v0, v12

    .line 145
    goto :goto_3

    .line 146
    :goto_4
    iput-object v12, v1, Lu/h;->a1:[Lu/e;

    .line 147
    .line 148
    iput v0, v1, Lu/h;->b1:I

    .line 149
    .line 150
    iget v3, v1, Lu/h;->T0:I

    .line 151
    .line 152
    iget-object v4, v1, Lu/h;->W0:Ljava/util/ArrayList;

    .line 153
    .line 154
    if-eqz v3, :cond_67

    .line 155
    .line 156
    iget-object v5, v1, Lu/e;->J:Lu/d;

    .line 157
    .line 158
    iget-object v6, v1, Lu/e;->I:Lu/d;

    .line 159
    .line 160
    move/from16 v29, v13

    .line 161
    .line 162
    iget-object v13, v1, Lu/e;->K:Lu/d;

    .line 163
    .line 164
    move-object/from16 v30, v13

    .line 165
    .line 166
    iget-object v13, v1, Lu/e;->L:Lu/d;

    .line 167
    .line 168
    move-object/from16 v31, v13

    .line 169
    .line 170
    sget-object v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->e:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 171
    .line 172
    move/from16 v32, v14

    .line 173
    .line 174
    sget-object v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->f:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 175
    .line 176
    move/from16 v19, v0

    .line 177
    .line 178
    const/4 v0, 0x1

    .line 179
    if-eq v3, v0, :cond_4d

    .line 180
    .line 181
    const/4 v0, 0x2

    .line 182
    if-eq v3, v0, :cond_26

    .line 183
    .line 184
    const/4 v0, 0x3

    .line 185
    if-eq v3, v0, :cond_b

    .line 186
    .line 187
    move-object/from16 v34, v2

    .line 188
    .line 189
    :goto_5
    move/from16 v33, v15

    .line 190
    .line 191
    :goto_6
    const/16 v35, 0x1

    .line 192
    .line 193
    goto/16 :goto_38

    .line 194
    .line 195
    :cond_b
    move-object v0, v2

    .line 196
    iget v2, v1, Lu/h;->V0:I

    .line 197
    .line 198
    if-nez v19, :cond_c

    .line 199
    .line 200
    move-object/from16 v34, v0

    .line 201
    .line 202
    goto :goto_5

    .line 203
    :cond_c
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 204
    .line 205
    .line 206
    move-object v3, v0

    .line 207
    new-instance v0, Lu/g;

    .line 208
    .line 209
    move-object/from16 v17, v3

    .line 210
    .line 211
    iget-object v3, v1, Lu/e;->I:Lu/d;

    .line 212
    .line 213
    move-object/from16 v20, v4

    .line 214
    .line 215
    iget-object v4, v1, Lu/e;->J:Lu/d;

    .line 216
    .line 217
    move-object/from16 v21, v5

    .line 218
    .line 219
    iget-object v5, v1, Lu/e;->K:Lu/d;

    .line 220
    .line 221
    move-object/from16 v22, v6

    .line 222
    .line 223
    iget-object v6, v1, Lu/e;->L:Lu/d;

    .line 224
    .line 225
    move/from16 v33, v15

    .line 226
    .line 227
    move-object/from16 v34, v17

    .line 228
    .line 229
    move/from16 v15, v19

    .line 230
    .line 231
    move-object/from16 v11, v20

    .line 232
    .line 233
    const/16 v35, 0x1

    .line 234
    .line 235
    invoke-direct/range {v0 .. v7}, Lu/g;-><init>(Lu/h;ILu/d;Lu/d;Lu/d;Lu/d;I)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    if-nez v2, :cond_13

    .line 242
    .line 243
    move/from16 v3, v28

    .line 244
    .line 245
    move v4, v3

    .line 246
    move v5, v4

    .line 247
    move v6, v5

    .line 248
    :goto_7
    if-ge v3, v15, :cond_1b

    .line 249
    .line 250
    add-int/lit8 v4, v4, 0x1

    .line 251
    .line 252
    aget-object v10, v12, v3

    .line 253
    .line 254
    invoke-virtual {v1, v10, v7}, Lu/h;->h(Lu/e;I)I

    .line 255
    .line 256
    .line 257
    move-result v17

    .line 258
    move/from16 v18, v2

    .line 259
    .line 260
    invoke-virtual {v10}, Lu/e;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 261
    .line 262
    .line 263
    move-result-object v2

    .line 264
    if-ne v2, v14, :cond_d

    .line 265
    .line 266
    add-int/lit8 v5, v5, 0x1

    .line 267
    .line 268
    :cond_d
    move/from16 v19, v5

    .line 269
    .line 270
    if-eq v6, v7, :cond_e

    .line 271
    .line 272
    iget v2, v1, Lu/h;->P0:I

    .line 273
    .line 274
    add-int/2addr v2, v6

    .line 275
    add-int v2, v2, v17

    .line 276
    .line 277
    if-le v2, v7, :cond_f

    .line 278
    .line 279
    :cond_e
    iget-object v2, v0, Lu/g;->b:Lu/e;

    .line 280
    .line 281
    if-eqz v2, :cond_f

    .line 282
    .line 283
    move/from16 v5, v35

    .line 284
    .line 285
    goto :goto_8

    .line 286
    :cond_f
    move/from16 v5, v28

    .line 287
    .line 288
    :goto_8
    if-nez v5, :cond_10

    .line 289
    .line 290
    if-lez v3, :cond_10

    .line 291
    .line 292
    iget v2, v1, Lu/h;->U0:I

    .line 293
    .line 294
    if-lez v2, :cond_10

    .line 295
    .line 296
    if-le v4, v2, :cond_10

    .line 297
    .line 298
    move/from16 v5, v35

    .line 299
    .line 300
    :cond_10
    if-eqz v5, :cond_11

    .line 301
    .line 302
    new-instance v0, Lu/g;

    .line 303
    .line 304
    move v2, v3

    .line 305
    iget-object v3, v1, Lu/e;->I:Lu/d;

    .line 306
    .line 307
    move v5, v4

    .line 308
    iget-object v4, v1, Lu/e;->J:Lu/d;

    .line 309
    .line 310
    move v6, v5

    .line 311
    iget-object v5, v1, Lu/e;->K:Lu/d;

    .line 312
    .line 313
    move/from16 v20, v6

    .line 314
    .line 315
    iget-object v6, v1, Lu/e;->L:Lu/d;

    .line 316
    .line 317
    move v9, v2

    .line 318
    move/from16 v2, v18

    .line 319
    .line 320
    invoke-direct/range {v0 .. v7}, Lu/g;-><init>(Lu/h;ILu/d;Lu/d;Lu/d;Lu/d;I)V

    .line 321
    .line 322
    .line 323
    invoke-virtual {v0, v9}, Lu/g;->setStartIndex(I)V

    .line 324
    .line 325
    .line 326
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    .line 328
    .line 329
    move/from16 v6, v17

    .line 330
    .line 331
    move/from16 v4, v20

    .line 332
    .line 333
    goto :goto_a

    .line 334
    :cond_11
    move v9, v3

    .line 335
    move/from16 v2, v18

    .line 336
    .line 337
    if-lez v9, :cond_12

    .line 338
    .line 339
    iget v3, v1, Lu/h;->P0:I

    .line 340
    .line 341
    add-int v3, v3, v17

    .line 342
    .line 343
    add-int/2addr v3, v6

    .line 344
    move v6, v3

    .line 345
    :goto_9
    move/from16 v4, v28

    .line 346
    .line 347
    goto :goto_a

    .line 348
    :cond_12
    move/from16 v6, v17

    .line 349
    .line 350
    goto :goto_9

    .line 351
    :goto_a
    invoke-virtual {v0, v10}, Lu/g;->add(Lu/e;)V

    .line 352
    .line 353
    .line 354
    add-int/lit8 v3, v9, 0x1

    .line 355
    .line 356
    move/from16 v5, v19

    .line 357
    .line 358
    goto :goto_7

    .line 359
    :cond_13
    move/from16 v3, v28

    .line 360
    .line 361
    move v4, v3

    .line 362
    move v9, v4

    .line 363
    :goto_b
    if-ge v9, v15, :cond_1a

    .line 364
    .line 365
    aget-object v10, v12, v9

    .line 366
    .line 367
    invoke-virtual {v1, v10, v7}, Lu/h;->g(Lu/e;I)I

    .line 368
    .line 369
    .line 370
    move-result v17

    .line 371
    invoke-virtual {v10}, Lu/e;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 372
    .line 373
    .line 374
    move-result-object v5

    .line 375
    if-ne v5, v14, :cond_14

    .line 376
    .line 377
    add-int/lit8 v3, v3, 0x1

    .line 378
    .line 379
    :cond_14
    move/from16 v18, v3

    .line 380
    .line 381
    if-eq v4, v7, :cond_15

    .line 382
    .line 383
    iget v3, v1, Lu/h;->Q0:I

    .line 384
    .line 385
    add-int/2addr v3, v4

    .line 386
    add-int v3, v3, v17

    .line 387
    .line 388
    if-le v3, v7, :cond_16

    .line 389
    .line 390
    :cond_15
    iget-object v3, v0, Lu/g;->b:Lu/e;

    .line 391
    .line 392
    if-eqz v3, :cond_16

    .line 393
    .line 394
    move/from16 v5, v35

    .line 395
    .line 396
    goto :goto_c

    .line 397
    :cond_16
    move/from16 v5, v28

    .line 398
    .line 399
    :goto_c
    if-nez v5, :cond_17

    .line 400
    .line 401
    if-lez v9, :cond_17

    .line 402
    .line 403
    iget v3, v1, Lu/h;->U0:I

    .line 404
    .line 405
    if-lez v3, :cond_17

    .line 406
    .line 407
    if-gez v3, :cond_17

    .line 408
    .line 409
    move/from16 v5, v35

    .line 410
    .line 411
    :cond_17
    if-eqz v5, :cond_19

    .line 412
    .line 413
    new-instance v0, Lu/g;

    .line 414
    .line 415
    iget-object v3, v1, Lu/e;->I:Lu/d;

    .line 416
    .line 417
    iget-object v4, v1, Lu/e;->J:Lu/d;

    .line 418
    .line 419
    iget-object v5, v1, Lu/e;->K:Lu/d;

    .line 420
    .line 421
    iget-object v6, v1, Lu/e;->L:Lu/d;

    .line 422
    .line 423
    invoke-direct/range {v0 .. v7}, Lu/g;-><init>(Lu/h;ILu/d;Lu/d;Lu/d;Lu/d;I)V

    .line 424
    .line 425
    .line 426
    invoke-virtual {v0, v9}, Lu/g;->setStartIndex(I)V

    .line 427
    .line 428
    .line 429
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 430
    .line 431
    .line 432
    :cond_18
    move/from16 v4, v17

    .line 433
    .line 434
    goto :goto_d

    .line 435
    :cond_19
    if-lez v9, :cond_18

    .line 436
    .line 437
    iget v3, v1, Lu/h;->Q0:I

    .line 438
    .line 439
    add-int v3, v3, v17

    .line 440
    .line 441
    add-int/2addr v3, v4

    .line 442
    move v4, v3

    .line 443
    :goto_d
    invoke-virtual {v0, v10}, Lu/g;->add(Lu/e;)V

    .line 444
    .line 445
    .line 446
    add-int/lit8 v9, v9, 0x1

    .line 447
    .line 448
    move/from16 v3, v18

    .line 449
    .line 450
    goto :goto_b

    .line 451
    :cond_1a
    move v5, v3

    .line 452
    :cond_1b
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 453
    .line 454
    .line 455
    move-result v0

    .line 456
    invoke-virtual {v1}, Lu/m;->getPaddingLeft()I

    .line 457
    .line 458
    .line 459
    move-result v3

    .line 460
    invoke-virtual {v1}, Lu/m;->getPaddingTop()I

    .line 461
    .line 462
    .line 463
    move-result v4

    .line 464
    invoke-virtual {v1}, Lu/m;->getPaddingRight()I

    .line 465
    .line 466
    .line 467
    move-result v6

    .line 468
    invoke-virtual {v1}, Lu/m;->getPaddingBottom()I

    .line 469
    .line 470
    .line 471
    move-result v9

    .line 472
    invoke-virtual {v1}, Lu/e;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 473
    .line 474
    .line 475
    move-result-object v10

    .line 476
    if-eq v10, v13, :cond_1d

    .line 477
    .line 478
    invoke-virtual {v1}, Lu/e;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 479
    .line 480
    .line 481
    move-result-object v10

    .line 482
    if-ne v10, v13, :cond_1c

    .line 483
    .line 484
    goto :goto_e

    .line 485
    :cond_1c
    move/from16 v10, v28

    .line 486
    .line 487
    goto :goto_f

    .line 488
    :cond_1d
    :goto_e
    move/from16 v10, v35

    .line 489
    .line 490
    :goto_f
    if-lez v5, :cond_1f

    .line 491
    .line 492
    if-eqz v10, :cond_1f

    .line 493
    .line 494
    move/from16 v5, v28

    .line 495
    .line 496
    :goto_10
    if-ge v5, v0, :cond_1f

    .line 497
    .line 498
    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 499
    .line 500
    .line 501
    move-result-object v10

    .line 502
    check-cast v10, Lu/g;

    .line 503
    .line 504
    if-nez v2, :cond_1e

    .line 505
    .line 506
    invoke-virtual {v10}, Lu/g;->getWidth()I

    .line 507
    .line 508
    .line 509
    move-result v12

    .line 510
    sub-int v12, v7, v12

    .line 511
    .line 512
    invoke-virtual {v10, v12}, Lu/g;->measureMatchConstraints(I)V

    .line 513
    .line 514
    .line 515
    goto :goto_11

    .line 516
    :cond_1e
    invoke-virtual {v10}, Lu/g;->getHeight()I

    .line 517
    .line 518
    .line 519
    move-result v12

    .line 520
    sub-int v12, v7, v12

    .line 521
    .line 522
    invoke-virtual {v10, v12}, Lu/g;->measureMatchConstraints(I)V

    .line 523
    .line 524
    .line 525
    :goto_11
    add-int/lit8 v5, v5, 0x1

    .line 526
    .line 527
    goto :goto_10

    .line 528
    :cond_1f
    move/from16 v23, v3

    .line 529
    .line 530
    move/from16 v24, v4

    .line 531
    .line 532
    move/from16 v25, v6

    .line 533
    .line 534
    move/from16 v26, v9

    .line 535
    .line 536
    move-object/from16 v20, v21

    .line 537
    .line 538
    move-object/from16 v19, v22

    .line 539
    .line 540
    move/from16 v3, v28

    .line 541
    .line 542
    move v4, v3

    .line 543
    move v5, v4

    .line 544
    move-object/from16 v21, v30

    .line 545
    .line 546
    move-object/from16 v22, v31

    .line 547
    .line 548
    :goto_12
    if-ge v3, v0, :cond_25

    .line 549
    .line 550
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 551
    .line 552
    .line 553
    move-result-object v6

    .line 554
    check-cast v6, Lu/g;

    .line 555
    .line 556
    if-nez v2, :cond_22

    .line 557
    .line 558
    add-int/lit8 v9, v0, -0x1

    .line 559
    .line 560
    if-ge v3, v9, :cond_20

    .line 561
    .line 562
    add-int/lit8 v9, v3, 0x1

    .line 563
    .line 564
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 565
    .line 566
    .line 567
    move-result-object v9

    .line 568
    check-cast v9, Lu/g;

    .line 569
    .line 570
    iget-object v9, v9, Lu/g;->b:Lu/e;

    .line 571
    .line 572
    iget-object v9, v9, Lu/e;->J:Lu/d;

    .line 573
    .line 574
    move-object/from16 v22, v9

    .line 575
    .line 576
    move/from16 v26, v28

    .line 577
    .line 578
    goto :goto_13

    .line 579
    :cond_20
    invoke-virtual {v1}, Lu/m;->getPaddingBottom()I

    .line 580
    .line 581
    .line 582
    move-result v9

    .line 583
    move/from16 v26, v9

    .line 584
    .line 585
    move-object/from16 v22, v31

    .line 586
    .line 587
    :goto_13
    iget-object v9, v6, Lu/g;->b:Lu/e;

    .line 588
    .line 589
    iget-object v9, v9, Lu/e;->L:Lu/d;

    .line 590
    .line 591
    move/from16 v18, v2

    .line 592
    .line 593
    move-object/from16 v17, v6

    .line 594
    .line 595
    move/from16 v27, v7

    .line 596
    .line 597
    invoke-virtual/range {v17 .. v27}, Lu/g;->setup(ILu/d;Lu/d;Lu/d;Lu/d;IIIII)V

    .line 598
    .line 599
    .line 600
    invoke-virtual {v6}, Lu/g;->getWidth()I

    .line 601
    .line 602
    .line 603
    move-result v10

    .line 604
    invoke-static {v4, v10}, Ljava/lang/Math;->max(II)I

    .line 605
    .line 606
    .line 607
    move-result v4

    .line 608
    invoke-virtual {v6}, Lu/g;->getHeight()I

    .line 609
    .line 610
    .line 611
    move-result v6

    .line 612
    add-int/2addr v6, v5

    .line 613
    if-lez v3, :cond_21

    .line 614
    .line 615
    iget v5, v1, Lu/h;->Q0:I

    .line 616
    .line 617
    add-int/2addr v6, v5

    .line 618
    :cond_21
    move v5, v6

    .line 619
    move-object/from16 v20, v9

    .line 620
    .line 621
    move/from16 v24, v28

    .line 622
    .line 623
    goto :goto_15

    .line 624
    :cond_22
    add-int/lit8 v9, v0, -0x1

    .line 625
    .line 626
    if-ge v3, v9, :cond_23

    .line 627
    .line 628
    add-int/lit8 v9, v3, 0x1

    .line 629
    .line 630
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 631
    .line 632
    .line 633
    move-result-object v9

    .line 634
    check-cast v9, Lu/g;

    .line 635
    .line 636
    iget-object v9, v9, Lu/g;->b:Lu/e;

    .line 637
    .line 638
    iget-object v9, v9, Lu/e;->I:Lu/d;

    .line 639
    .line 640
    move-object/from16 v21, v9

    .line 641
    .line 642
    move/from16 v25, v28

    .line 643
    .line 644
    goto :goto_14

    .line 645
    :cond_23
    invoke-virtual {v1}, Lu/m;->getPaddingRight()I

    .line 646
    .line 647
    .line 648
    move-result v9

    .line 649
    move/from16 v25, v9

    .line 650
    .line 651
    move-object/from16 v21, v30

    .line 652
    .line 653
    :goto_14
    iget-object v9, v6, Lu/g;->b:Lu/e;

    .line 654
    .line 655
    iget-object v9, v9, Lu/e;->K:Lu/d;

    .line 656
    .line 657
    move/from16 v18, v2

    .line 658
    .line 659
    move-object/from16 v17, v6

    .line 660
    .line 661
    move/from16 v27, v7

    .line 662
    .line 663
    invoke-virtual/range {v17 .. v27}, Lu/g;->setup(ILu/d;Lu/d;Lu/d;Lu/d;IIIII)V

    .line 664
    .line 665
    .line 666
    invoke-virtual/range {v17 .. v17}, Lu/g;->getWidth()I

    .line 667
    .line 668
    .line 669
    move-result v6

    .line 670
    add-int/2addr v6, v4

    .line 671
    invoke-virtual/range {v17 .. v17}, Lu/g;->getHeight()I

    .line 672
    .line 673
    .line 674
    move-result v4

    .line 675
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    .line 676
    .line 677
    .line 678
    move-result v4

    .line 679
    if-lez v3, :cond_24

    .line 680
    .line 681
    iget v5, v1, Lu/h;->P0:I

    .line 682
    .line 683
    add-int/2addr v6, v5

    .line 684
    :cond_24
    move v5, v4

    .line 685
    move v4, v6

    .line 686
    move-object/from16 v19, v9

    .line 687
    .line 688
    move/from16 v23, v28

    .line 689
    .line 690
    :goto_15
    add-int/lit8 v3, v3, 0x1

    .line 691
    .line 692
    goto/16 :goto_12

    .line 693
    .line 694
    :cond_25
    aput v4, v34, v28

    .line 695
    .line 696
    aput v5, v34, v35

    .line 697
    .line 698
    goto/16 :goto_38

    .line 699
    .line 700
    :cond_26
    move-object/from16 v34, v2

    .line 701
    .line 702
    move/from16 v33, v15

    .line 703
    .line 704
    move/from16 v15, v19

    .line 705
    .line 706
    const/16 v35, 0x1

    .line 707
    .line 708
    iget v0, v1, Lu/h;->V0:I

    .line 709
    .line 710
    if-nez v0, :cond_2c

    .line 711
    .line 712
    iget v2, v1, Lu/h;->U0:I

    .line 713
    .line 714
    if-gtz v2, :cond_2b

    .line 715
    .line 716
    move/from16 v2, v28

    .line 717
    .line 718
    move v3, v2

    .line 719
    move v4, v3

    .line 720
    :goto_16
    if-ge v2, v15, :cond_2a

    .line 721
    .line 722
    if-lez v2, :cond_27

    .line 723
    .line 724
    iget v5, v1, Lu/h;->P0:I

    .line 725
    .line 726
    add-int/2addr v3, v5

    .line 727
    :cond_27
    aget-object v5, v12, v2

    .line 728
    .line 729
    if-nez v5, :cond_28

    .line 730
    .line 731
    goto :goto_17

    .line 732
    :cond_28
    invoke-virtual {v1, v5, v7}, Lu/h;->h(Lu/e;I)I

    .line 733
    .line 734
    .line 735
    move-result v5

    .line 736
    add-int/2addr v5, v3

    .line 737
    if-le v5, v7, :cond_29

    .line 738
    .line 739
    goto :goto_18

    .line 740
    :cond_29
    add-int/lit8 v4, v4, 0x1

    .line 741
    .line 742
    move v3, v5

    .line 743
    :goto_17
    add-int/lit8 v2, v2, 0x1

    .line 744
    .line 745
    goto :goto_16

    .line 746
    :cond_2a
    :goto_18
    move/from16 v2, v28

    .line 747
    .line 748
    goto :goto_1c

    .line 749
    :cond_2b
    move v4, v2

    .line 750
    goto :goto_18

    .line 751
    :cond_2c
    iget v2, v1, Lu/h;->U0:I

    .line 752
    .line 753
    if-gtz v2, :cond_31

    .line 754
    .line 755
    move/from16 v2, v28

    .line 756
    .line 757
    move v3, v2

    .line 758
    move v4, v3

    .line 759
    :goto_19
    if-ge v2, v15, :cond_30

    .line 760
    .line 761
    if-lez v2, :cond_2d

    .line 762
    .line 763
    iget v5, v1, Lu/h;->Q0:I

    .line 764
    .line 765
    add-int/2addr v3, v5

    .line 766
    :cond_2d
    aget-object v5, v12, v2

    .line 767
    .line 768
    if-nez v5, :cond_2e

    .line 769
    .line 770
    goto :goto_1a

    .line 771
    :cond_2e
    invoke-virtual {v1, v5, v7}, Lu/h;->g(Lu/e;I)I

    .line 772
    .line 773
    .line 774
    move-result v5

    .line 775
    add-int/2addr v5, v3

    .line 776
    if-le v5, v7, :cond_2f

    .line 777
    .line 778
    goto :goto_1b

    .line 779
    :cond_2f
    add-int/lit8 v4, v4, 0x1

    .line 780
    .line 781
    move v3, v5

    .line 782
    :goto_1a
    add-int/lit8 v2, v2, 0x1

    .line 783
    .line 784
    goto :goto_19

    .line 785
    :cond_30
    :goto_1b
    move v2, v4

    .line 786
    :cond_31
    move/from16 v4, v28

    .line 787
    .line 788
    :goto_1c
    iget-object v3, v1, Lu/h;->Z0:[I

    .line 789
    .line 790
    if-nez v3, :cond_32

    .line 791
    .line 792
    const/4 v3, 0x2

    .line 793
    new-array v3, v3, [I

    .line 794
    .line 795
    iput-object v3, v1, Lu/h;->Z0:[I

    .line 796
    .line 797
    :cond_32
    if-nez v2, :cond_33

    .line 798
    .line 799
    move/from16 v3, v35

    .line 800
    .line 801
    if-eq v0, v3, :cond_34

    .line 802
    .line 803
    :cond_33
    if-nez v4, :cond_35

    .line 804
    .line 805
    if-nez v0, :cond_35

    .line 806
    .line 807
    :cond_34
    const/4 v5, 0x1

    .line 808
    goto :goto_1d

    .line 809
    :cond_35
    move/from16 v5, v28

    .line 810
    .line 811
    :goto_1d
    if-nez v5, :cond_4c

    .line 812
    .line 813
    if-nez v0, :cond_36

    .line 814
    .line 815
    int-to-float v2, v15

    .line 816
    int-to-float v3, v4

    .line 817
    div-float/2addr v2, v3

    .line 818
    float-to-double v2, v2

    .line 819
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    .line 820
    .line 821
    .line 822
    move-result-wide v2

    .line 823
    double-to-int v2, v2

    .line 824
    goto :goto_1e

    .line 825
    :cond_36
    int-to-float v3, v15

    .line 826
    int-to-float v4, v2

    .line 827
    div-float/2addr v3, v4

    .line 828
    float-to-double v3, v3

    .line 829
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    .line 830
    .line 831
    .line 832
    move-result-wide v3

    .line 833
    double-to-int v4, v3

    .line 834
    :goto_1e
    iget-object v3, v1, Lu/h;->Y0:[Lu/e;

    .line 835
    .line 836
    const/4 v6, 0x0

    .line 837
    if-eqz v3, :cond_38

    .line 838
    .line 839
    array-length v9, v3

    .line 840
    if-ge v9, v4, :cond_37

    .line 841
    .line 842
    goto :goto_1f

    .line 843
    :cond_37
    invoke-static {v3, v6}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 844
    .line 845
    .line 846
    goto :goto_20

    .line 847
    :cond_38
    :goto_1f
    new-array v3, v4, [Lu/e;

    .line 848
    .line 849
    iput-object v3, v1, Lu/h;->Y0:[Lu/e;

    .line 850
    .line 851
    :goto_20
    iget-object v3, v1, Lu/h;->X0:[Lu/e;

    .line 852
    .line 853
    if-eqz v3, :cond_3a

    .line 854
    .line 855
    array-length v9, v3

    .line 856
    if-ge v9, v2, :cond_39

    .line 857
    .line 858
    goto :goto_21

    .line 859
    :cond_39
    invoke-static {v3, v6}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 860
    .line 861
    .line 862
    goto :goto_22

    .line 863
    :cond_3a
    :goto_21
    new-array v3, v2, [Lu/e;

    .line 864
    .line 865
    iput-object v3, v1, Lu/h;->X0:[Lu/e;

    .line 866
    .line 867
    :goto_22
    move/from16 v3, v28

    .line 868
    .line 869
    :goto_23
    if-ge v3, v4, :cond_43

    .line 870
    .line 871
    move/from16 v6, v28

    .line 872
    .line 873
    :goto_24
    if-ge v6, v2, :cond_42

    .line 874
    .line 875
    mul-int v9, v6, v4

    .line 876
    .line 877
    add-int/2addr v9, v3

    .line 878
    const/4 v10, 0x1

    .line 879
    if-ne v0, v10, :cond_3b

    .line 880
    .line 881
    mul-int v9, v3, v2

    .line 882
    .line 883
    add-int/2addr v9, v6

    .line 884
    :cond_3b
    array-length v10, v12

    .line 885
    if-lt v9, v10, :cond_3c

    .line 886
    .line 887
    goto :goto_25

    .line 888
    :cond_3c
    aget-object v9, v12, v9

    .line 889
    .line 890
    if-nez v9, :cond_3d

    .line 891
    .line 892
    goto :goto_25

    .line 893
    :cond_3d
    invoke-virtual {v1, v9, v7}, Lu/h;->h(Lu/e;I)I

    .line 894
    .line 895
    .line 896
    move-result v10

    .line 897
    iget-object v11, v1, Lu/h;->Y0:[Lu/e;

    .line 898
    .line 899
    aget-object v11, v11, v3

    .line 900
    .line 901
    if-eqz v11, :cond_3e

    .line 902
    .line 903
    invoke-virtual {v11}, Lu/e;->getWidth()I

    .line 904
    .line 905
    .line 906
    move-result v11

    .line 907
    if-ge v11, v10, :cond_3f

    .line 908
    .line 909
    :cond_3e
    iget-object v10, v1, Lu/h;->Y0:[Lu/e;

    .line 910
    .line 911
    aput-object v9, v10, v3

    .line 912
    .line 913
    :cond_3f
    invoke-virtual {v1, v9, v7}, Lu/h;->g(Lu/e;I)I

    .line 914
    .line 915
    .line 916
    move-result v10

    .line 917
    iget-object v11, v1, Lu/h;->X0:[Lu/e;

    .line 918
    .line 919
    aget-object v11, v11, v6

    .line 920
    .line 921
    if-eqz v11, :cond_40

    .line 922
    .line 923
    invoke-virtual {v11}, Lu/e;->getHeight()I

    .line 924
    .line 925
    .line 926
    move-result v11

    .line 927
    if-ge v11, v10, :cond_41

    .line 928
    .line 929
    :cond_40
    iget-object v10, v1, Lu/h;->X0:[Lu/e;

    .line 930
    .line 931
    aput-object v9, v10, v6

    .line 932
    .line 933
    :cond_41
    :goto_25
    add-int/lit8 v6, v6, 0x1

    .line 934
    .line 935
    goto :goto_24

    .line 936
    :cond_42
    add-int/lit8 v3, v3, 0x1

    .line 937
    .line 938
    goto :goto_23

    .line 939
    :cond_43
    move/from16 v3, v28

    .line 940
    .line 941
    move v6, v3

    .line 942
    :goto_26
    if-ge v3, v4, :cond_46

    .line 943
    .line 944
    iget-object v9, v1, Lu/h;->Y0:[Lu/e;

    .line 945
    .line 946
    aget-object v9, v9, v3

    .line 947
    .line 948
    if-eqz v9, :cond_45

    .line 949
    .line 950
    if-lez v3, :cond_44

    .line 951
    .line 952
    iget v10, v1, Lu/h;->P0:I

    .line 953
    .line 954
    add-int/2addr v6, v10

    .line 955
    :cond_44
    invoke-virtual {v1, v9, v7}, Lu/h;->h(Lu/e;I)I

    .line 956
    .line 957
    .line 958
    move-result v9

    .line 959
    add-int/2addr v9, v6

    .line 960
    move v6, v9

    .line 961
    :cond_45
    add-int/lit8 v3, v3, 0x1

    .line 962
    .line 963
    goto :goto_26

    .line 964
    :cond_46
    move/from16 v3, v28

    .line 965
    .line 966
    move v9, v3

    .line 967
    :goto_27
    if-ge v3, v2, :cond_49

    .line 968
    .line 969
    iget-object v10, v1, Lu/h;->X0:[Lu/e;

    .line 970
    .line 971
    aget-object v10, v10, v3

    .line 972
    .line 973
    if-eqz v10, :cond_48

    .line 974
    .line 975
    if-lez v3, :cond_47

    .line 976
    .line 977
    iget v11, v1, Lu/h;->Q0:I

    .line 978
    .line 979
    add-int/2addr v9, v11

    .line 980
    :cond_47
    invoke-virtual {v1, v10, v7}, Lu/h;->g(Lu/e;I)I

    .line 981
    .line 982
    .line 983
    move-result v10

    .line 984
    add-int/2addr v10, v9

    .line 985
    move v9, v10

    .line 986
    :cond_48
    add-int/lit8 v3, v3, 0x1

    .line 987
    .line 988
    goto :goto_27

    .line 989
    :cond_49
    aput v6, v34, v28

    .line 990
    .line 991
    const/4 v3, 0x1

    .line 992
    aput v9, v34, v3

    .line 993
    .line 994
    if-nez v0, :cond_4b

    .line 995
    .line 996
    if-le v6, v7, :cond_4a

    .line 997
    .line 998
    if-le v4, v3, :cond_4a

    .line 999
    .line 1000
    add-int/lit8 v4, v4, -0x1

    .line 1001
    .line 1002
    goto/16 :goto_1d

    .line 1003
    .line 1004
    :cond_4a
    move v5, v3

    .line 1005
    goto/16 :goto_1d

    .line 1006
    .line 1007
    :cond_4b
    if-le v9, v7, :cond_4a

    .line 1008
    .line 1009
    if-le v2, v3, :cond_4a

    .line 1010
    .line 1011
    add-int/lit8 v2, v2, -0x1

    .line 1012
    .line 1013
    goto/16 :goto_1d

    .line 1014
    .line 1015
    :cond_4c
    const/4 v3, 0x1

    .line 1016
    iget-object v0, v1, Lu/h;->Z0:[I

    .line 1017
    .line 1018
    aput v4, v0, v28

    .line 1019
    .line 1020
    aput v2, v0, v3

    .line 1021
    .line 1022
    goto/16 :goto_6

    .line 1023
    .line 1024
    :cond_4d
    move-object/from16 v34, v2

    .line 1025
    .line 1026
    move-object v11, v4

    .line 1027
    move-object/from16 v21, v5

    .line 1028
    .line 1029
    move-object/from16 v22, v6

    .line 1030
    .line 1031
    move/from16 v33, v15

    .line 1032
    .line 1033
    move/from16 v15, v19

    .line 1034
    .line 1035
    iget v2, v1, Lu/h;->V0:I

    .line 1036
    .line 1037
    if-nez v15, :cond_4e

    .line 1038
    .line 1039
    goto/16 :goto_6

    .line 1040
    .line 1041
    :cond_4e
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 1042
    .line 1043
    .line 1044
    new-instance v0, Lu/g;

    .line 1045
    .line 1046
    iget-object v3, v1, Lu/e;->I:Lu/d;

    .line 1047
    .line 1048
    iget-object v4, v1, Lu/e;->J:Lu/d;

    .line 1049
    .line 1050
    iget-object v5, v1, Lu/e;->K:Lu/d;

    .line 1051
    .line 1052
    iget-object v6, v1, Lu/e;->L:Lu/d;

    .line 1053
    .line 1054
    invoke-direct/range {v0 .. v7}, Lu/g;-><init>(Lu/h;ILu/d;Lu/d;Lu/d;Lu/d;I)V

    .line 1055
    .line 1056
    .line 1057
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1058
    .line 1059
    .line 1060
    if-nez v2, :cond_55

    .line 1061
    .line 1062
    move/from16 v3, v28

    .line 1063
    .line 1064
    move v4, v3

    .line 1065
    move v9, v4

    .line 1066
    :goto_28
    if-ge v9, v15, :cond_5c

    .line 1067
    .line 1068
    aget-object v10, v12, v9

    .line 1069
    .line 1070
    invoke-virtual {v1, v10, v7}, Lu/h;->h(Lu/e;I)I

    .line 1071
    .line 1072
    .line 1073
    move-result v17

    .line 1074
    invoke-virtual {v10}, Lu/e;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1075
    .line 1076
    .line 1077
    move-result-object v5

    .line 1078
    if-ne v5, v14, :cond_4f

    .line 1079
    .line 1080
    add-int/lit8 v3, v3, 0x1

    .line 1081
    .line 1082
    :cond_4f
    move/from16 v18, v3

    .line 1083
    .line 1084
    if-eq v4, v7, :cond_50

    .line 1085
    .line 1086
    iget v3, v1, Lu/h;->P0:I

    .line 1087
    .line 1088
    add-int/2addr v3, v4

    .line 1089
    add-int v3, v3, v17

    .line 1090
    .line 1091
    if-le v3, v7, :cond_51

    .line 1092
    .line 1093
    :cond_50
    iget-object v3, v0, Lu/g;->b:Lu/e;

    .line 1094
    .line 1095
    if-eqz v3, :cond_51

    .line 1096
    .line 1097
    const/4 v5, 0x1

    .line 1098
    goto :goto_29

    .line 1099
    :cond_51
    move/from16 v5, v28

    .line 1100
    .line 1101
    :goto_29
    if-nez v5, :cond_52

    .line 1102
    .line 1103
    if-lez v9, :cond_52

    .line 1104
    .line 1105
    iget v3, v1, Lu/h;->U0:I

    .line 1106
    .line 1107
    if-lez v3, :cond_52

    .line 1108
    .line 1109
    rem-int v3, v9, v3

    .line 1110
    .line 1111
    if-nez v3, :cond_52

    .line 1112
    .line 1113
    const/4 v5, 0x1

    .line 1114
    :cond_52
    if-eqz v5, :cond_54

    .line 1115
    .line 1116
    new-instance v0, Lu/g;

    .line 1117
    .line 1118
    iget-object v3, v1, Lu/e;->I:Lu/d;

    .line 1119
    .line 1120
    iget-object v4, v1, Lu/e;->J:Lu/d;

    .line 1121
    .line 1122
    iget-object v5, v1, Lu/e;->K:Lu/d;

    .line 1123
    .line 1124
    iget-object v6, v1, Lu/e;->L:Lu/d;

    .line 1125
    .line 1126
    invoke-direct/range {v0 .. v7}, Lu/g;-><init>(Lu/h;ILu/d;Lu/d;Lu/d;Lu/d;I)V

    .line 1127
    .line 1128
    .line 1129
    invoke-virtual {v0, v9}, Lu/g;->setStartIndex(I)V

    .line 1130
    .line 1131
    .line 1132
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1133
    .line 1134
    .line 1135
    :cond_53
    move/from16 v4, v17

    .line 1136
    .line 1137
    goto :goto_2a

    .line 1138
    :cond_54
    if-lez v9, :cond_53

    .line 1139
    .line 1140
    iget v3, v1, Lu/h;->P0:I

    .line 1141
    .line 1142
    add-int v3, v3, v17

    .line 1143
    .line 1144
    add-int/2addr v3, v4

    .line 1145
    move v4, v3

    .line 1146
    :goto_2a
    invoke-virtual {v0, v10}, Lu/g;->add(Lu/e;)V

    .line 1147
    .line 1148
    .line 1149
    add-int/lit8 v9, v9, 0x1

    .line 1150
    .line 1151
    move/from16 v3, v18

    .line 1152
    .line 1153
    goto :goto_28

    .line 1154
    :cond_55
    move/from16 v3, v28

    .line 1155
    .line 1156
    move v4, v3

    .line 1157
    move v9, v4

    .line 1158
    :goto_2b
    if-ge v9, v15, :cond_5c

    .line 1159
    .line 1160
    aget-object v10, v12, v9

    .line 1161
    .line 1162
    invoke-virtual {v1, v10, v7}, Lu/h;->g(Lu/e;I)I

    .line 1163
    .line 1164
    .line 1165
    move-result v17

    .line 1166
    invoke-virtual {v10}, Lu/e;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1167
    .line 1168
    .line 1169
    move-result-object v5

    .line 1170
    if-ne v5, v14, :cond_56

    .line 1171
    .line 1172
    add-int/lit8 v3, v3, 0x1

    .line 1173
    .line 1174
    :cond_56
    move/from16 v18, v3

    .line 1175
    .line 1176
    if-eq v4, v7, :cond_57

    .line 1177
    .line 1178
    iget v3, v1, Lu/h;->Q0:I

    .line 1179
    .line 1180
    add-int/2addr v3, v4

    .line 1181
    add-int v3, v3, v17

    .line 1182
    .line 1183
    if-le v3, v7, :cond_58

    .line 1184
    .line 1185
    :cond_57
    iget-object v3, v0, Lu/g;->b:Lu/e;

    .line 1186
    .line 1187
    if-eqz v3, :cond_58

    .line 1188
    .line 1189
    const/4 v5, 0x1

    .line 1190
    goto :goto_2c

    .line 1191
    :cond_58
    move/from16 v5, v28

    .line 1192
    .line 1193
    :goto_2c
    if-nez v5, :cond_59

    .line 1194
    .line 1195
    if-lez v9, :cond_59

    .line 1196
    .line 1197
    iget v3, v1, Lu/h;->U0:I

    .line 1198
    .line 1199
    if-lez v3, :cond_59

    .line 1200
    .line 1201
    rem-int v3, v9, v3

    .line 1202
    .line 1203
    if-nez v3, :cond_59

    .line 1204
    .line 1205
    const/4 v5, 0x1

    .line 1206
    :cond_59
    if-eqz v5, :cond_5b

    .line 1207
    .line 1208
    new-instance v0, Lu/g;

    .line 1209
    .line 1210
    iget-object v3, v1, Lu/e;->I:Lu/d;

    .line 1211
    .line 1212
    iget-object v4, v1, Lu/e;->J:Lu/d;

    .line 1213
    .line 1214
    iget-object v5, v1, Lu/e;->K:Lu/d;

    .line 1215
    .line 1216
    iget-object v6, v1, Lu/e;->L:Lu/d;

    .line 1217
    .line 1218
    invoke-direct/range {v0 .. v7}, Lu/g;-><init>(Lu/h;ILu/d;Lu/d;Lu/d;Lu/d;I)V

    .line 1219
    .line 1220
    .line 1221
    invoke-virtual {v0, v9}, Lu/g;->setStartIndex(I)V

    .line 1222
    .line 1223
    .line 1224
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1225
    .line 1226
    .line 1227
    :cond_5a
    move/from16 v4, v17

    .line 1228
    .line 1229
    goto :goto_2d

    .line 1230
    :cond_5b
    if-lez v9, :cond_5a

    .line 1231
    .line 1232
    iget v3, v1, Lu/h;->Q0:I

    .line 1233
    .line 1234
    add-int v3, v3, v17

    .line 1235
    .line 1236
    add-int/2addr v3, v4

    .line 1237
    move v4, v3

    .line 1238
    :goto_2d
    invoke-virtual {v0, v10}, Lu/g;->add(Lu/e;)V

    .line 1239
    .line 1240
    .line 1241
    add-int/lit8 v9, v9, 0x1

    .line 1242
    .line 1243
    move/from16 v3, v18

    .line 1244
    .line 1245
    goto :goto_2b

    .line 1246
    :cond_5c
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 1247
    .line 1248
    .line 1249
    move-result v0

    .line 1250
    invoke-virtual {v1}, Lu/m;->getPaddingLeft()I

    .line 1251
    .line 1252
    .line 1253
    move-result v4

    .line 1254
    invoke-virtual {v1}, Lu/m;->getPaddingTop()I

    .line 1255
    .line 1256
    .line 1257
    move-result v5

    .line 1258
    invoke-virtual {v1}, Lu/m;->getPaddingRight()I

    .line 1259
    .line 1260
    .line 1261
    move-result v6

    .line 1262
    invoke-virtual {v1}, Lu/m;->getPaddingBottom()I

    .line 1263
    .line 1264
    .line 1265
    move-result v9

    .line 1266
    invoke-virtual {v1}, Lu/e;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1267
    .line 1268
    .line 1269
    move-result-object v10

    .line 1270
    if-eq v10, v13, :cond_5e

    .line 1271
    .line 1272
    invoke-virtual {v1}, Lu/e;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1273
    .line 1274
    .line 1275
    move-result-object v10

    .line 1276
    if-ne v10, v13, :cond_5d

    .line 1277
    .line 1278
    goto :goto_2e

    .line 1279
    :cond_5d
    move/from16 v10, v28

    .line 1280
    .line 1281
    goto :goto_2f

    .line 1282
    :cond_5e
    :goto_2e
    const/4 v10, 0x1

    .line 1283
    :goto_2f
    if-lez v3, :cond_60

    .line 1284
    .line 1285
    if-eqz v10, :cond_60

    .line 1286
    .line 1287
    move/from16 v3, v28

    .line 1288
    .line 1289
    :goto_30
    if-ge v3, v0, :cond_60

    .line 1290
    .line 1291
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1292
    .line 1293
    .line 1294
    move-result-object v10

    .line 1295
    check-cast v10, Lu/g;

    .line 1296
    .line 1297
    if-nez v2, :cond_5f

    .line 1298
    .line 1299
    invoke-virtual {v10}, Lu/g;->getWidth()I

    .line 1300
    .line 1301
    .line 1302
    move-result v12

    .line 1303
    sub-int v12, v7, v12

    .line 1304
    .line 1305
    invoke-virtual {v10, v12}, Lu/g;->measureMatchConstraints(I)V

    .line 1306
    .line 1307
    .line 1308
    goto :goto_31

    .line 1309
    :cond_5f
    invoke-virtual {v10}, Lu/g;->getHeight()I

    .line 1310
    .line 1311
    .line 1312
    move-result v12

    .line 1313
    sub-int v12, v7, v12

    .line 1314
    .line 1315
    invoke-virtual {v10, v12}, Lu/g;->measureMatchConstraints(I)V

    .line 1316
    .line 1317
    .line 1318
    :goto_31
    add-int/lit8 v3, v3, 0x1

    .line 1319
    .line 1320
    goto :goto_30

    .line 1321
    :cond_60
    move/from16 v23, v4

    .line 1322
    .line 1323
    move/from16 v24, v5

    .line 1324
    .line 1325
    move/from16 v25, v6

    .line 1326
    .line 1327
    move/from16 v26, v9

    .line 1328
    .line 1329
    move-object/from16 v20, v21

    .line 1330
    .line 1331
    move-object/from16 v19, v22

    .line 1332
    .line 1333
    move/from16 v3, v28

    .line 1334
    .line 1335
    move v4, v3

    .line 1336
    move v5, v4

    .line 1337
    move-object/from16 v21, v30

    .line 1338
    .line 1339
    move-object/from16 v22, v31

    .line 1340
    .line 1341
    :goto_32
    if-ge v3, v0, :cond_66

    .line 1342
    .line 1343
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1344
    .line 1345
    .line 1346
    move-result-object v6

    .line 1347
    check-cast v6, Lu/g;

    .line 1348
    .line 1349
    if-nez v2, :cond_63

    .line 1350
    .line 1351
    add-int/lit8 v9, v0, -0x1

    .line 1352
    .line 1353
    if-ge v3, v9, :cond_61

    .line 1354
    .line 1355
    add-int/lit8 v9, v3, 0x1

    .line 1356
    .line 1357
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1358
    .line 1359
    .line 1360
    move-result-object v9

    .line 1361
    check-cast v9, Lu/g;

    .line 1362
    .line 1363
    iget-object v9, v9, Lu/g;->b:Lu/e;

    .line 1364
    .line 1365
    iget-object v9, v9, Lu/e;->J:Lu/d;

    .line 1366
    .line 1367
    move-object/from16 v22, v9

    .line 1368
    .line 1369
    move/from16 v26, v28

    .line 1370
    .line 1371
    goto :goto_33

    .line 1372
    :cond_61
    invoke-virtual {v1}, Lu/m;->getPaddingBottom()I

    .line 1373
    .line 1374
    .line 1375
    move-result v9

    .line 1376
    move/from16 v26, v9

    .line 1377
    .line 1378
    move-object/from16 v22, v31

    .line 1379
    .line 1380
    :goto_33
    iget-object v9, v6, Lu/g;->b:Lu/e;

    .line 1381
    .line 1382
    iget-object v9, v9, Lu/e;->L:Lu/d;

    .line 1383
    .line 1384
    move/from16 v18, v2

    .line 1385
    .line 1386
    move-object/from16 v17, v6

    .line 1387
    .line 1388
    move/from16 v27, v7

    .line 1389
    .line 1390
    invoke-virtual/range {v17 .. v27}, Lu/g;->setup(ILu/d;Lu/d;Lu/d;Lu/d;IIIII)V

    .line 1391
    .line 1392
    .line 1393
    invoke-virtual {v6}, Lu/g;->getWidth()I

    .line 1394
    .line 1395
    .line 1396
    move-result v10

    .line 1397
    invoke-static {v4, v10}, Ljava/lang/Math;->max(II)I

    .line 1398
    .line 1399
    .line 1400
    move-result v4

    .line 1401
    invoke-virtual {v6}, Lu/g;->getHeight()I

    .line 1402
    .line 1403
    .line 1404
    move-result v6

    .line 1405
    add-int/2addr v6, v5

    .line 1406
    if-lez v3, :cond_62

    .line 1407
    .line 1408
    iget v5, v1, Lu/h;->Q0:I

    .line 1409
    .line 1410
    add-int/2addr v6, v5

    .line 1411
    :cond_62
    move v5, v6

    .line 1412
    move-object/from16 v20, v9

    .line 1413
    .line 1414
    move/from16 v24, v28

    .line 1415
    .line 1416
    goto :goto_35

    .line 1417
    :cond_63
    add-int/lit8 v9, v0, -0x1

    .line 1418
    .line 1419
    if-ge v3, v9, :cond_64

    .line 1420
    .line 1421
    add-int/lit8 v9, v3, 0x1

    .line 1422
    .line 1423
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1424
    .line 1425
    .line 1426
    move-result-object v9

    .line 1427
    check-cast v9, Lu/g;

    .line 1428
    .line 1429
    iget-object v9, v9, Lu/g;->b:Lu/e;

    .line 1430
    .line 1431
    iget-object v9, v9, Lu/e;->I:Lu/d;

    .line 1432
    .line 1433
    move-object/from16 v21, v9

    .line 1434
    .line 1435
    move/from16 v25, v28

    .line 1436
    .line 1437
    goto :goto_34

    .line 1438
    :cond_64
    invoke-virtual {v1}, Lu/m;->getPaddingRight()I

    .line 1439
    .line 1440
    .line 1441
    move-result v9

    .line 1442
    move/from16 v25, v9

    .line 1443
    .line 1444
    move-object/from16 v21, v30

    .line 1445
    .line 1446
    :goto_34
    iget-object v9, v6, Lu/g;->b:Lu/e;

    .line 1447
    .line 1448
    iget-object v9, v9, Lu/e;->K:Lu/d;

    .line 1449
    .line 1450
    move/from16 v18, v2

    .line 1451
    .line 1452
    move-object/from16 v17, v6

    .line 1453
    .line 1454
    move/from16 v27, v7

    .line 1455
    .line 1456
    invoke-virtual/range {v17 .. v27}, Lu/g;->setup(ILu/d;Lu/d;Lu/d;Lu/d;IIIII)V

    .line 1457
    .line 1458
    .line 1459
    invoke-virtual/range {v17 .. v17}, Lu/g;->getWidth()I

    .line 1460
    .line 1461
    .line 1462
    move-result v6

    .line 1463
    add-int/2addr v6, v4

    .line 1464
    invoke-virtual/range {v17 .. v17}, Lu/g;->getHeight()I

    .line 1465
    .line 1466
    .line 1467
    move-result v4

    .line 1468
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    .line 1469
    .line 1470
    .line 1471
    move-result v4

    .line 1472
    if-lez v3, :cond_65

    .line 1473
    .line 1474
    iget v5, v1, Lu/h;->P0:I

    .line 1475
    .line 1476
    add-int/2addr v6, v5

    .line 1477
    :cond_65
    move v5, v4

    .line 1478
    move v4, v6

    .line 1479
    move-object/from16 v19, v9

    .line 1480
    .line 1481
    move/from16 v23, v28

    .line 1482
    .line 1483
    :goto_35
    add-int/lit8 v3, v3, 0x1

    .line 1484
    .line 1485
    goto/16 :goto_32

    .line 1486
    .line 1487
    :cond_66
    aput v4, v34, v28

    .line 1488
    .line 1489
    const/16 v35, 0x1

    .line 1490
    .line 1491
    aput v5, v34, v35

    .line 1492
    .line 1493
    goto/16 :goto_6

    .line 1494
    .line 1495
    :cond_67
    move-object/from16 v34, v2

    .line 1496
    .line 1497
    move-object v11, v4

    .line 1498
    move/from16 v29, v13

    .line 1499
    .line 1500
    move/from16 v32, v14

    .line 1501
    .line 1502
    move/from16 v33, v15

    .line 1503
    .line 1504
    move v15, v0

    .line 1505
    iget v2, v1, Lu/h;->V0:I

    .line 1506
    .line 1507
    if-nez v15, :cond_68

    .line 1508
    .line 1509
    goto/16 :goto_6

    .line 1510
    .line 1511
    :cond_68
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 1512
    .line 1513
    .line 1514
    move-result v0

    .line 1515
    if-nez v0, :cond_69

    .line 1516
    .line 1517
    new-instance v0, Lu/g;

    .line 1518
    .line 1519
    iget-object v3, v1, Lu/e;->I:Lu/d;

    .line 1520
    .line 1521
    iget-object v4, v1, Lu/e;->J:Lu/d;

    .line 1522
    .line 1523
    iget-object v5, v1, Lu/e;->K:Lu/d;

    .line 1524
    .line 1525
    iget-object v6, v1, Lu/e;->L:Lu/d;

    .line 1526
    .line 1527
    invoke-direct/range {v0 .. v7}, Lu/g;-><init>(Lu/h;ILu/d;Lu/d;Lu/d;Lu/d;I)V

    .line 1528
    .line 1529
    .line 1530
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1531
    .line 1532
    .line 1533
    goto :goto_36

    .line 1534
    :cond_69
    move/from16 v0, v28

    .line 1535
    .line 1536
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1537
    .line 1538
    .line 1539
    move-result-object v3

    .line 1540
    move-object/from16 v17, v3

    .line 1541
    .line 1542
    check-cast v17, Lu/g;

    .line 1543
    .line 1544
    invoke-virtual/range {v17 .. v17}, Lu/g;->clear()V

    .line 1545
    .line 1546
    .line 1547
    invoke-virtual {v1}, Lu/m;->getPaddingLeft()I

    .line 1548
    .line 1549
    .line 1550
    move-result v23

    .line 1551
    invoke-virtual {v1}, Lu/m;->getPaddingTop()I

    .line 1552
    .line 1553
    .line 1554
    move-result v24

    .line 1555
    invoke-virtual {v1}, Lu/m;->getPaddingRight()I

    .line 1556
    .line 1557
    .line 1558
    move-result v25

    .line 1559
    invoke-virtual {v1}, Lu/m;->getPaddingBottom()I

    .line 1560
    .line 1561
    .line 1562
    move-result v26

    .line 1563
    iget-object v0, v1, Lu/e;->K:Lu/d;

    .line 1564
    .line 1565
    iget-object v3, v1, Lu/e;->L:Lu/d;

    .line 1566
    .line 1567
    iget-object v4, v1, Lu/e;->I:Lu/d;

    .line 1568
    .line 1569
    iget-object v5, v1, Lu/e;->J:Lu/d;

    .line 1570
    .line 1571
    move-object/from16 v21, v0

    .line 1572
    .line 1573
    move/from16 v18, v2

    .line 1574
    .line 1575
    move-object/from16 v22, v3

    .line 1576
    .line 1577
    move-object/from16 v19, v4

    .line 1578
    .line 1579
    move-object/from16 v20, v5

    .line 1580
    .line 1581
    move/from16 v27, v7

    .line 1582
    .line 1583
    invoke-virtual/range {v17 .. v27}, Lu/g;->setup(ILu/d;Lu/d;Lu/d;Lu/d;IIIII)V

    .line 1584
    .line 1585
    .line 1586
    move-object/from16 v0, v17

    .line 1587
    .line 1588
    :goto_36
    const/4 v2, 0x0

    .line 1589
    :goto_37
    if-ge v2, v15, :cond_6a

    .line 1590
    .line 1591
    aget-object v3, v12, v2

    .line 1592
    .line 1593
    invoke-virtual {v0, v3}, Lu/g;->add(Lu/e;)V

    .line 1594
    .line 1595
    .line 1596
    add-int/lit8 v2, v2, 0x1

    .line 1597
    .line 1598
    goto :goto_37

    .line 1599
    :cond_6a
    invoke-virtual {v0}, Lu/g;->getWidth()I

    .line 1600
    .line 1601
    .line 1602
    move-result v2

    .line 1603
    const/16 v28, 0x0

    .line 1604
    .line 1605
    aput v2, v34, v28

    .line 1606
    .line 1607
    invoke-virtual {v0}, Lu/g;->getHeight()I

    .line 1608
    .line 1609
    .line 1610
    move-result v0

    .line 1611
    const/16 v35, 0x1

    .line 1612
    .line 1613
    aput v0, v34, v35

    .line 1614
    .line 1615
    :goto_38
    aget v0, v34, v28

    .line 1616
    .line 1617
    add-int v0, v0, v29

    .line 1618
    .line 1619
    add-int v0, v0, v32

    .line 1620
    .line 1621
    aget v2, v34, v35

    .line 1622
    .line 1623
    add-int v2, v2, v33

    .line 1624
    .line 1625
    add-int v2, v2, v16

    .line 1626
    .line 1627
    const/high16 v3, -0x80000000

    .line 1628
    .line 1629
    const/high16 v4, 0x40000000    # 2.0f

    .line 1630
    .line 1631
    if-ne v8, v4, :cond_6b

    .line 1632
    .line 1633
    move/from16 v0, p2

    .line 1634
    .line 1635
    :goto_39
    move/from16 v10, p3

    .line 1636
    .line 1637
    goto :goto_3a

    .line 1638
    :cond_6b
    if-ne v8, v3, :cond_6c

    .line 1639
    .line 1640
    move/from16 v9, p2

    .line 1641
    .line 1642
    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    .line 1643
    .line 1644
    .line 1645
    move-result v0

    .line 1646
    goto :goto_39

    .line 1647
    :cond_6c
    move/from16 v10, p3

    .line 1648
    .line 1649
    if-nez v8, :cond_6d

    .line 1650
    .line 1651
    goto :goto_3a

    .line 1652
    :cond_6d
    move/from16 v0, v28

    .line 1653
    .line 1654
    :goto_3a
    if-ne v10, v4, :cond_6e

    .line 1655
    .line 1656
    move/from16 v2, p4

    .line 1657
    .line 1658
    goto :goto_3b

    .line 1659
    :cond_6e
    if-ne v10, v3, :cond_6f

    .line 1660
    .line 1661
    move/from16 v11, p4

    .line 1662
    .line 1663
    invoke-static {v2, v11}, Ljava/lang/Math;->min(II)I

    .line 1664
    .line 1665
    .line 1666
    move-result v2

    .line 1667
    goto :goto_3b

    .line 1668
    :cond_6f
    if-nez v10, :cond_70

    .line 1669
    .line 1670
    goto :goto_3b

    .line 1671
    :cond_70
    move/from16 v2, v28

    .line 1672
    .line 1673
    :goto_3b
    invoke-virtual {v1, v0, v2}, Lu/m;->setMeasure(II)V

    .line 1674
    .line 1675
    .line 1676
    invoke-virtual {v1, v0}, Lu/e;->setWidth(I)V

    .line 1677
    .line 1678
    .line 1679
    invoke-virtual {v1, v2}, Lu/e;->setHeight(I)V

    .line 1680
    .line 1681
    .line 1682
    iget v0, v1, Lu/k;->r0:I

    .line 1683
    .line 1684
    if-lez v0, :cond_71

    .line 1685
    .line 1686
    move/from16 v12, v35

    .line 1687
    .line 1688
    goto :goto_3c

    .line 1689
    :cond_71
    move/from16 v12, v28

    .line 1690
    .line 1691
    :goto_3c
    invoke-virtual {v1, v12}, Lu/m;->needsCallbackFromSolver(Z)V

    .line 1692
    .line 1693
    .line 1694
    return-void
.end method

.method public setFirstHorizontalBias(F)V
    .locals 0

    .line 1
    iput p1, p0, Lu/h;->L0:F

    .line 2
    .line 3
    return-void
.end method

.method public setFirstHorizontalStyle(I)V
    .locals 0

    .line 1
    iput p1, p0, Lu/h;->F0:I

    .line 2
    .line 3
    return-void
.end method

.method public setFirstVerticalBias(F)V
    .locals 0

    .line 1
    iput p1, p0, Lu/h;->M0:F

    .line 2
    .line 3
    return-void
.end method

.method public setFirstVerticalStyle(I)V
    .locals 0

    .line 1
    iput p1, p0, Lu/h;->G0:I

    .line 2
    .line 3
    return-void
.end method

.method public setHorizontalAlign(I)V
    .locals 0

    .line 1
    iput p1, p0, Lu/h;->R0:I

    .line 2
    .line 3
    return-void
.end method

.method public setHorizontalBias(F)V
    .locals 0

    .line 1
    iput p1, p0, Lu/h;->J0:F

    .line 2
    .line 3
    return-void
.end method

.method public setHorizontalGap(I)V
    .locals 0

    .line 1
    iput p1, p0, Lu/h;->P0:I

    .line 2
    .line 3
    return-void
.end method

.method public setHorizontalStyle(I)V
    .locals 0

    .line 1
    iput p1, p0, Lu/h;->D0:I

    .line 2
    .line 3
    return-void
.end method

.method public setLastHorizontalBias(F)V
    .locals 0

    .line 1
    iput p1, p0, Lu/h;->N0:F

    .line 2
    .line 3
    return-void
.end method

.method public setLastHorizontalStyle(I)V
    .locals 0

    .line 1
    iput p1, p0, Lu/h;->H0:I

    .line 2
    .line 3
    return-void
.end method

.method public setLastVerticalBias(F)V
    .locals 0

    .line 1
    iput p1, p0, Lu/h;->O0:F

    .line 2
    .line 3
    return-void
.end method

.method public setLastVerticalStyle(I)V
    .locals 0

    .line 1
    iput p1, p0, Lu/h;->I0:I

    .line 2
    .line 3
    return-void
.end method

.method public setMaxElementsWrap(I)V
    .locals 0

    .line 1
    iput p1, p0, Lu/h;->U0:I

    .line 2
    .line 3
    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    .line 1
    iput p1, p0, Lu/h;->V0:I

    .line 2
    .line 3
    return-void
.end method

.method public setVerticalAlign(I)V
    .locals 0

    .line 1
    iput p1, p0, Lu/h;->S0:I

    .line 2
    .line 3
    return-void
.end method

.method public setVerticalBias(F)V
    .locals 0

    .line 1
    iput p1, p0, Lu/h;->K0:F

    .line 2
    .line 3
    return-void
.end method

.method public setVerticalGap(I)V
    .locals 0

    .line 1
    iput p1, p0, Lu/h;->Q0:I

    .line 2
    .line 3
    return-void
.end method

.method public setVerticalStyle(I)V
    .locals 0

    .line 1
    iput p1, p0, Lu/h;->E0:I

    .line 2
    .line 3
    return-void
.end method

.method public setWrapMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lu/h;->T0:I

    .line 2
    .line 3
    return-void
.end method
