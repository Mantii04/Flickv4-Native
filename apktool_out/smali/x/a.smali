.class public final Lx/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv/c;


# instance fields
.field public final a:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public final synthetic h:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lx/a;->h:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lx/a;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 7
    .line 8
    return-void
.end method

.method public static a(III)Z
    .locals 2

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    const/high16 v1, 0x40000000    # 2.0f

    .line 20
    .line 21
    if-ne p0, v1, :cond_2

    .line 22
    .line 23
    const/high16 p0, -0x80000000

    .line 24
    .line 25
    if-eq v0, p0, :cond_1

    .line 26
    .line 27
    if-nez v0, :cond_2

    .line 28
    .line 29
    :cond_1
    if-ne p2, p1, :cond_2

    .line 30
    .line 31
    :goto_0
    const/4 p0, 0x1

    .line 32
    return p0

    .line 33
    :cond_2
    const/4 p0, 0x0

    .line 34
    return p0
.end method


# virtual methods
.method public captureLayoutInfo(IIIIII)V
    .locals 0

    .line 1
    iput p3, p0, Lx/a;->b:I

    .line 2
    .line 3
    iput p4, p0, Lx/a;->c:I

    .line 4
    .line 5
    iput p5, p0, Lx/a;->d:I

    .line 6
    .line 7
    iput p6, p0, Lx/a;->e:I

    .line 8
    .line 9
    iput p1, p0, Lx/a;->f:I

    .line 10
    .line 11
    iput p2, p0, Lx/a;->g:I

    .line 12
    .line 13
    return-void
.end method

.method public final didMeasures()V
    .locals 4

    .line 1
    iget-object v0, p0, Lx/a;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    move v3, v2

    .line 9
    :goto_0
    if-ge v3, v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    add-int/lit8 v3, v3, 0x1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-lez v1, :cond_1

    .line 24
    .line 25
    :goto_1
    if-ge v2, v1, :cond_1

    .line 26
    .line 27
    iget-object v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    check-cast v3, Landroidx/constraintlayout/widget/c;

    .line 34
    .line 35
    invoke-virtual {v3, v0}, Landroidx/constraintlayout/widget/c;->updatePostMeasure(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 36
    .line 37
    .line 38
    add-int/lit8 v2, v2, 0x1

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    return-void
.end method

.method public final measure(Lu/e;Lv/b;)V
    .locals 17
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongCall"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto/16 :goto_e

    .line 10
    .line 11
    :cond_0
    invoke-virtual {v1}, Lu/e;->getVisibility()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    const/16 v4, 0x8

    .line 16
    .line 17
    const/4 v5, 0x0

    .line 18
    if-ne v3, v4, :cond_1

    .line 19
    .line 20
    invoke-virtual {v1}, Lu/e;->isInPlaceholder()Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-nez v3, :cond_1

    .line 25
    .line 26
    iput v5, v2, Lv/b;->e:I

    .line 27
    .line 28
    iput v5, v2, Lv/b;->f:I

    .line 29
    .line 30
    iput v5, v2, Lv/b;->g:I

    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    invoke-virtual {v1}, Lu/e;->getParent()Lu/e;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    if-nez v3, :cond_2

    .line 38
    .line 39
    goto/16 :goto_e

    .line 40
    .line 41
    :cond_2
    iget-object v3, v2, Lv/b;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 42
    .line 43
    iget-object v4, v2, Lv/b;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 44
    .line 45
    iget v6, v2, Lv/b;->c:I

    .line 46
    .line 47
    iget v7, v2, Lv/b;->d:I

    .line 48
    .line 49
    iget v8, v0, Lx/a;->b:I

    .line 50
    .line 51
    iget v9, v0, Lx/a;->c:I

    .line 52
    .line 53
    add-int/2addr v8, v9

    .line 54
    iget v9, v0, Lx/a;->d:I

    .line 55
    .line 56
    invoke-virtual {v1}, Lu/e;->getCompanionWidget()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v10

    .line 60
    check-cast v10, Landroid/view/View;

    .line 61
    .line 62
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 63
    .line 64
    .line 65
    move-result v11

    .line 66
    const/4 v12, 0x3

    .line 67
    const/4 v13, -0x1

    .line 68
    const/4 v14, -0x2

    .line 69
    const/4 v5, 0x2

    .line 70
    const/4 v15, 0x1

    .line 71
    if-eqz v11, :cond_b

    .line 72
    .line 73
    if-eq v11, v15, :cond_a

    .line 74
    .line 75
    if-eq v11, v5, :cond_4

    .line 76
    .line 77
    if-eq v11, v12, :cond_3

    .line 78
    .line 79
    const/4 v6, 0x0

    .line 80
    goto :goto_2

    .line 81
    :cond_3
    iget v6, v0, Lx/a;->f:I

    .line 82
    .line 83
    invoke-virtual {v1}, Lu/e;->getHorizontalMargin()I

    .line 84
    .line 85
    .line 86
    move-result v11

    .line 87
    add-int/2addr v11, v9

    .line 88
    invoke-static {v6, v11, v13}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 89
    .line 90
    .line 91
    move-result v6

    .line 92
    goto :goto_2

    .line 93
    :cond_4
    iget v6, v0, Lx/a;->f:I

    .line 94
    .line 95
    invoke-static {v6, v9, v14}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 96
    .line 97
    .line 98
    move-result v6

    .line 99
    iget v9, v1, Lu/e;->r:I

    .line 100
    .line 101
    if-ne v9, v15, :cond_5

    .line 102
    .line 103
    move v9, v15

    .line 104
    goto :goto_0

    .line 105
    :cond_5
    const/4 v9, 0x0

    .line 106
    :goto_0
    iget v11, v2, Lv/b;->j:I

    .line 107
    .line 108
    if-eq v11, v15, :cond_6

    .line 109
    .line 110
    if-ne v11, v5, :cond_c

    .line 111
    .line 112
    :cond_6
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    .line 113
    .line 114
    .line 115
    move-result v11

    .line 116
    invoke-virtual {v1}, Lu/e;->getHeight()I

    .line 117
    .line 118
    .line 119
    move-result v13

    .line 120
    if-ne v11, v13, :cond_7

    .line 121
    .line 122
    move v11, v15

    .line 123
    goto :goto_1

    .line 124
    :cond_7
    const/4 v11, 0x0

    .line 125
    :goto_1
    iget v13, v2, Lv/b;->j:I

    .line 126
    .line 127
    if-eq v13, v5, :cond_9

    .line 128
    .line 129
    if-eqz v9, :cond_9

    .line 130
    .line 131
    if-eqz v9, :cond_8

    .line 132
    .line 133
    if-nez v11, :cond_9

    .line 134
    .line 135
    :cond_8
    invoke-virtual {v1}, Lu/e;->isResolvedHorizontally()Z

    .line 136
    .line 137
    .line 138
    move-result v9

    .line 139
    if-eqz v9, :cond_c

    .line 140
    .line 141
    :cond_9
    invoke-virtual {v1}, Lu/e;->getWidth()I

    .line 142
    .line 143
    .line 144
    move-result v6

    .line 145
    const/high16 v11, 0x40000000    # 2.0f

    .line 146
    .line 147
    invoke-static {v6, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 148
    .line 149
    .line 150
    move-result v6

    .line 151
    goto :goto_2

    .line 152
    :cond_a
    const/high16 v11, 0x40000000    # 2.0f

    .line 153
    .line 154
    iget v6, v0, Lx/a;->f:I

    .line 155
    .line 156
    invoke-static {v6, v9, v14}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 157
    .line 158
    .line 159
    move-result v6

    .line 160
    goto :goto_2

    .line 161
    :cond_b
    const/high16 v11, 0x40000000    # 2.0f

    .line 162
    .line 163
    invoke-static {v6, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 164
    .line 165
    .line 166
    move-result v6

    .line 167
    :cond_c
    :goto_2
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 168
    .line 169
    .line 170
    move-result v9

    .line 171
    if-eqz v9, :cond_15

    .line 172
    .line 173
    if-eq v9, v15, :cond_14

    .line 174
    .line 175
    if-eq v9, v5, :cond_e

    .line 176
    .line 177
    if-eq v9, v12, :cond_d

    .line 178
    .line 179
    const/4 v7, 0x0

    .line 180
    goto :goto_5

    .line 181
    :cond_d
    iget v7, v0, Lx/a;->g:I

    .line 182
    .line 183
    invoke-virtual {v1}, Lu/e;->getVerticalMargin()I

    .line 184
    .line 185
    .line 186
    move-result v9

    .line 187
    add-int/2addr v9, v8

    .line 188
    const/4 v8, -0x1

    .line 189
    invoke-static {v7, v9, v8}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 190
    .line 191
    .line 192
    move-result v7

    .line 193
    goto :goto_5

    .line 194
    :cond_e
    iget v7, v0, Lx/a;->g:I

    .line 195
    .line 196
    invoke-static {v7, v8, v14}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 197
    .line 198
    .line 199
    move-result v7

    .line 200
    iget v8, v1, Lu/e;->s:I

    .line 201
    .line 202
    if-ne v8, v15, :cond_f

    .line 203
    .line 204
    move v8, v15

    .line 205
    goto :goto_3

    .line 206
    :cond_f
    const/4 v8, 0x0

    .line 207
    :goto_3
    iget v9, v2, Lv/b;->j:I

    .line 208
    .line 209
    if-eq v9, v15, :cond_10

    .line 210
    .line 211
    if-ne v9, v5, :cond_16

    .line 212
    .line 213
    :cond_10
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    .line 214
    .line 215
    .line 216
    move-result v9

    .line 217
    invoke-virtual {v1}, Lu/e;->getWidth()I

    .line 218
    .line 219
    .line 220
    move-result v11

    .line 221
    if-ne v9, v11, :cond_11

    .line 222
    .line 223
    move v9, v15

    .line 224
    goto :goto_4

    .line 225
    :cond_11
    const/4 v9, 0x0

    .line 226
    :goto_4
    iget v11, v2, Lv/b;->j:I

    .line 227
    .line 228
    if-eq v11, v5, :cond_13

    .line 229
    .line 230
    if-eqz v8, :cond_13

    .line 231
    .line 232
    if-eqz v8, :cond_12

    .line 233
    .line 234
    if-nez v9, :cond_13

    .line 235
    .line 236
    :cond_12
    invoke-virtual {v1}, Lu/e;->isResolvedVertically()Z

    .line 237
    .line 238
    .line 239
    move-result v8

    .line 240
    if-eqz v8, :cond_16

    .line 241
    .line 242
    :cond_13
    invoke-virtual {v1}, Lu/e;->getHeight()I

    .line 243
    .line 244
    .line 245
    move-result v7

    .line 246
    const/high16 v11, 0x40000000    # 2.0f

    .line 247
    .line 248
    invoke-static {v7, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 249
    .line 250
    .line 251
    move-result v7

    .line 252
    goto :goto_5

    .line 253
    :cond_14
    const/high16 v11, 0x40000000    # 2.0f

    .line 254
    .line 255
    iget v7, v0, Lx/a;->g:I

    .line 256
    .line 257
    invoke-static {v7, v8, v14}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 258
    .line 259
    .line 260
    move-result v7

    .line 261
    goto :goto_5

    .line 262
    :cond_15
    const/high16 v11, 0x40000000    # 2.0f

    .line 263
    .line 264
    invoke-static {v7, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 265
    .line 266
    .line 267
    move-result v7

    .line 268
    :cond_16
    :goto_5
    invoke-virtual {v1}, Lu/e;->getParent()Lu/e;

    .line 269
    .line 270
    .line 271
    move-result-object v8

    .line 272
    check-cast v8, Lu/f;

    .line 273
    .line 274
    iget-object v9, v0, Lx/a;->h:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 275
    .line 276
    if-eqz v8, :cond_17

    .line 277
    .line 278
    iget v11, v9, Landroidx/constraintlayout/widget/ConstraintLayout;->r:I

    .line 279
    .line 280
    const/16 v12, 0x100

    .line 281
    .line 282
    invoke-static {v11, v12}, Lu/l;->enabled(II)Z

    .line 283
    .line 284
    .line 285
    move-result v11

    .line 286
    if-eqz v11, :cond_17

    .line 287
    .line 288
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    .line 289
    .line 290
    .line 291
    move-result v11

    .line 292
    invoke-virtual {v1}, Lu/e;->getWidth()I

    .line 293
    .line 294
    .line 295
    move-result v12

    .line 296
    if-ne v11, v12, :cond_17

    .line 297
    .line 298
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    .line 299
    .line 300
    .line 301
    move-result v11

    .line 302
    invoke-virtual {v8}, Lu/e;->getWidth()I

    .line 303
    .line 304
    .line 305
    move-result v12

    .line 306
    if-ge v11, v12, :cond_17

    .line 307
    .line 308
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    .line 309
    .line 310
    .line 311
    move-result v11

    .line 312
    invoke-virtual {v1}, Lu/e;->getHeight()I

    .line 313
    .line 314
    .line 315
    move-result v12

    .line 316
    if-ne v11, v12, :cond_17

    .line 317
    .line 318
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    .line 319
    .line 320
    .line 321
    move-result v11

    .line 322
    invoke-virtual {v8}, Lu/e;->getHeight()I

    .line 323
    .line 324
    .line 325
    move-result v8

    .line 326
    if-ge v11, v8, :cond_17

    .line 327
    .line 328
    invoke-virtual {v10}, Landroid/view/View;->getBaseline()I

    .line 329
    .line 330
    .line 331
    move-result v8

    .line 332
    invoke-virtual {v1}, Lu/e;->getBaselineDistance()I

    .line 333
    .line 334
    .line 335
    move-result v11

    .line 336
    if-ne v8, v11, :cond_17

    .line 337
    .line 338
    invoke-virtual {v1}, Lu/e;->isMeasureRequested()Z

    .line 339
    .line 340
    .line 341
    move-result v8

    .line 342
    if-nez v8, :cond_17

    .line 343
    .line 344
    invoke-virtual {v1}, Lu/e;->getLastHorizontalMeasureSpec()I

    .line 345
    .line 346
    .line 347
    move-result v8

    .line 348
    invoke-virtual {v1}, Lu/e;->getWidth()I

    .line 349
    .line 350
    .line 351
    move-result v11

    .line 352
    invoke-static {v8, v6, v11}, Lx/a;->a(III)Z

    .line 353
    .line 354
    .line 355
    move-result v8

    .line 356
    if-eqz v8, :cond_17

    .line 357
    .line 358
    invoke-virtual {v1}, Lu/e;->getLastVerticalMeasureSpec()I

    .line 359
    .line 360
    .line 361
    move-result v8

    .line 362
    invoke-virtual {v1}, Lu/e;->getHeight()I

    .line 363
    .line 364
    .line 365
    move-result v11

    .line 366
    invoke-static {v8, v7, v11}, Lx/a;->a(III)Z

    .line 367
    .line 368
    .line 369
    move-result v8

    .line 370
    if-eqz v8, :cond_17

    .line 371
    .line 372
    invoke-virtual {v1}, Lu/e;->getWidth()I

    .line 373
    .line 374
    .line 375
    move-result v3

    .line 376
    iput v3, v2, Lv/b;->e:I

    .line 377
    .line 378
    invoke-virtual {v1}, Lu/e;->getHeight()I

    .line 379
    .line 380
    .line 381
    move-result v3

    .line 382
    iput v3, v2, Lv/b;->f:I

    .line 383
    .line 384
    invoke-virtual {v1}, Lu/e;->getBaselineDistance()I

    .line 385
    .line 386
    .line 387
    move-result v1

    .line 388
    iput v1, v2, Lv/b;->g:I

    .line 389
    .line 390
    return-void

    .line 391
    :cond_17
    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->f:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 392
    .line 393
    if-ne v3, v8, :cond_18

    .line 394
    .line 395
    move v11, v15

    .line 396
    goto :goto_6

    .line 397
    :cond_18
    const/4 v11, 0x0

    .line 398
    :goto_6
    if-ne v4, v8, :cond_19

    .line 399
    .line 400
    move v8, v15

    .line 401
    goto :goto_7

    .line 402
    :cond_19
    const/4 v8, 0x0

    .line 403
    :goto_7
    sget-object v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->j:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 404
    .line 405
    sget-object v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 406
    .line 407
    if-eq v4, v12, :cond_1b

    .line 408
    .line 409
    if-ne v4, v13, :cond_1a

    .line 410
    .line 411
    goto :goto_8

    .line 412
    :cond_1a
    const/4 v4, 0x0

    .line 413
    goto :goto_9

    .line 414
    :cond_1b
    :goto_8
    move v4, v15

    .line 415
    :goto_9
    if-eq v3, v12, :cond_1d

    .line 416
    .line 417
    if-ne v3, v13, :cond_1c

    .line 418
    .line 419
    goto :goto_a

    .line 420
    :cond_1c
    const/4 v3, 0x0

    .line 421
    goto :goto_b

    .line 422
    :cond_1d
    :goto_a
    move v3, v15

    .line 423
    :goto_b
    const/4 v12, 0x0

    .line 424
    if-eqz v11, :cond_1e

    .line 425
    .line 426
    iget v13, v1, Lu/e;->X:F

    .line 427
    .line 428
    cmpl-float v13, v13, v12

    .line 429
    .line 430
    if-lez v13, :cond_1e

    .line 431
    .line 432
    move v13, v15

    .line 433
    goto :goto_c

    .line 434
    :cond_1e
    const/4 v13, 0x0

    .line 435
    :goto_c
    if-eqz v8, :cond_1f

    .line 436
    .line 437
    iget v14, v1, Lu/e;->X:F

    .line 438
    .line 439
    cmpl-float v12, v14, v12

    .line 440
    .line 441
    if-lez v12, :cond_1f

    .line 442
    .line 443
    move v12, v15

    .line 444
    goto :goto_d

    .line 445
    :cond_1f
    const/4 v12, 0x0

    .line 446
    :goto_d
    if-nez v10, :cond_20

    .line 447
    .line 448
    :goto_e
    return-void

    .line 449
    :cond_20
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 450
    .line 451
    .line 452
    move-result-object v14

    .line 453
    check-cast v14, Landroidx/constraintlayout/widget/e;

    .line 454
    .line 455
    iget v0, v2, Lv/b;->j:I

    .line 456
    .line 457
    if-eq v0, v15, :cond_22

    .line 458
    .line 459
    if-eq v0, v5, :cond_22

    .line 460
    .line 461
    if-eqz v11, :cond_22

    .line 462
    .line 463
    iget v0, v1, Lu/e;->r:I

    .line 464
    .line 465
    if-nez v0, :cond_22

    .line 466
    .line 467
    if-eqz v8, :cond_22

    .line 468
    .line 469
    iget v0, v1, Lu/e;->s:I

    .line 470
    .line 471
    if-eqz v0, :cond_21

    .line 472
    .line 473
    goto :goto_f

    .line 474
    :cond_21
    const/4 v0, -0x1

    .line 475
    const/4 v8, 0x0

    .line 476
    const/4 v11, 0x0

    .line 477
    const/4 v15, 0x0

    .line 478
    goto/16 :goto_18

    .line 479
    .line 480
    :cond_22
    :goto_f
    instance-of v0, v10, Landroidx/constraintlayout/widget/m;

    .line 481
    .line 482
    if-eqz v0, :cond_23

    .line 483
    .line 484
    instance-of v0, v1, Lu/m;

    .line 485
    .line 486
    if-eqz v0, :cond_23

    .line 487
    .line 488
    move-object v0, v1

    .line 489
    check-cast v0, Lu/m;

    .line 490
    .line 491
    move-object v5, v10

    .line 492
    check-cast v5, Landroidx/constraintlayout/widget/m;

    .line 493
    .line 494
    invoke-virtual {v5, v0, v6, v7}, Landroidx/constraintlayout/widget/m;->onMeasure(Lu/m;II)V

    .line 495
    .line 496
    .line 497
    goto :goto_10

    .line 498
    :cond_23
    invoke-virtual {v10, v6, v7}, Landroid/view/View;->measure(II)V

    .line 499
    .line 500
    .line 501
    :goto_10
    invoke-virtual {v1, v6, v7}, Lu/e;->setLastMeasureSpec(II)V

    .line 502
    .line 503
    .line 504
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    .line 505
    .line 506
    .line 507
    move-result v0

    .line 508
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    .line 509
    .line 510
    .line 511
    move-result v5

    .line 512
    invoke-virtual {v10}, Landroid/view/View;->getBaseline()I

    .line 513
    .line 514
    .line 515
    move-result v8

    .line 516
    iget v11, v1, Lu/e;->u:I

    .line 517
    .line 518
    if-lez v11, :cond_24

    .line 519
    .line 520
    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    .line 521
    .line 522
    .line 523
    move-result v11

    .line 524
    goto :goto_11

    .line 525
    :cond_24
    move v11, v0

    .line 526
    :goto_11
    iget v15, v1, Lu/e;->v:I

    .line 527
    .line 528
    if-lez v15, :cond_25

    .line 529
    .line 530
    invoke-static {v15, v11}, Ljava/lang/Math;->min(II)I

    .line 531
    .line 532
    .line 533
    move-result v11

    .line 534
    :cond_25
    iget v15, v1, Lu/e;->x:I

    .line 535
    .line 536
    if-lez v15, :cond_26

    .line 537
    .line 538
    invoke-static {v15, v5}, Ljava/lang/Math;->max(II)I

    .line 539
    .line 540
    .line 541
    move-result v15

    .line 542
    :goto_12
    move/from16 v16, v3

    .line 543
    .line 544
    goto :goto_13

    .line 545
    :cond_26
    move v15, v5

    .line 546
    goto :goto_12

    .line 547
    :goto_13
    iget v3, v1, Lu/e;->y:I

    .line 548
    .line 549
    if-lez v3, :cond_27

    .line 550
    .line 551
    invoke-static {v3, v15}, Ljava/lang/Math;->min(II)I

    .line 552
    .line 553
    .line 554
    move-result v15

    .line 555
    :cond_27
    iget v3, v9, Landroidx/constraintlayout/widget/ConstraintLayout;->r:I

    .line 556
    .line 557
    const/4 v9, 0x1

    .line 558
    invoke-static {v3, v9}, Lu/l;->enabled(II)Z

    .line 559
    .line 560
    .line 561
    move-result v3

    .line 562
    if-nez v3, :cond_29

    .line 563
    .line 564
    const/high16 v3, 0x3f000000    # 0.5f

    .line 565
    .line 566
    if-eqz v13, :cond_28

    .line 567
    .line 568
    if-eqz v4, :cond_28

    .line 569
    .line 570
    iget v4, v1, Lu/e;->X:F

    .line 571
    .line 572
    int-to-float v9, v15

    .line 573
    mul-float/2addr v9, v4

    .line 574
    add-float/2addr v9, v3

    .line 575
    float-to-int v11, v9

    .line 576
    goto :goto_14

    .line 577
    :cond_28
    if-eqz v12, :cond_29

    .line 578
    .line 579
    if-eqz v16, :cond_29

    .line 580
    .line 581
    iget v4, v1, Lu/e;->X:F

    .line 582
    .line 583
    int-to-float v9, v11

    .line 584
    div-float/2addr v9, v4

    .line 585
    add-float/2addr v9, v3

    .line 586
    float-to-int v15, v9

    .line 587
    :cond_29
    :goto_14
    if-ne v0, v11, :cond_2b

    .line 588
    .line 589
    if-eq v5, v15, :cond_2a

    .line 590
    .line 591
    goto :goto_16

    .line 592
    :cond_2a
    :goto_15
    const/4 v0, -0x1

    .line 593
    goto :goto_18

    .line 594
    :cond_2b
    :goto_16
    if-eq v0, v11, :cond_2c

    .line 595
    .line 596
    const/high16 v0, 0x40000000    # 2.0f

    .line 597
    .line 598
    invoke-static {v11, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 599
    .line 600
    .line 601
    move-result v6

    .line 602
    goto :goto_17

    .line 603
    :cond_2c
    const/high16 v0, 0x40000000    # 2.0f

    .line 604
    .line 605
    :goto_17
    if-eq v5, v15, :cond_2d

    .line 606
    .line 607
    invoke-static {v15, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 608
    .line 609
    .line 610
    move-result v7

    .line 611
    :cond_2d
    invoke-virtual {v10, v6, v7}, Landroid/view/View;->measure(II)V

    .line 612
    .line 613
    .line 614
    invoke-virtual {v1, v6, v7}, Lu/e;->setLastMeasureSpec(II)V

    .line 615
    .line 616
    .line 617
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    .line 618
    .line 619
    .line 620
    move-result v11

    .line 621
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    .line 622
    .line 623
    .line 624
    move-result v15

    .line 625
    invoke-virtual {v10}, Landroid/view/View;->getBaseline()I

    .line 626
    .line 627
    .line 628
    move-result v8

    .line 629
    goto :goto_15

    .line 630
    :goto_18
    if-eq v8, v0, :cond_2e

    .line 631
    .line 632
    const/4 v9, 0x1

    .line 633
    goto :goto_19

    .line 634
    :cond_2e
    const/4 v9, 0x0

    .line 635
    :goto_19
    iget v0, v2, Lv/b;->c:I

    .line 636
    .line 637
    if-ne v11, v0, :cond_30

    .line 638
    .line 639
    iget v0, v2, Lv/b;->d:I

    .line 640
    .line 641
    if-eq v15, v0, :cond_2f

    .line 642
    .line 643
    goto :goto_1a

    .line 644
    :cond_2f
    const/4 v5, 0x0

    .line 645
    goto :goto_1b

    .line 646
    :cond_30
    :goto_1a
    const/4 v5, 0x1

    .line 647
    :goto_1b
    iput-boolean v5, v2, Lv/b;->i:Z

    .line 648
    .line 649
    iget-boolean v0, v14, Landroidx/constraintlayout/widget/e;->c0:Z

    .line 650
    .line 651
    if-eqz v0, :cond_31

    .line 652
    .line 653
    const/4 v9, 0x1

    .line 654
    :cond_31
    if-eqz v9, :cond_32

    .line 655
    .line 656
    const/4 v0, -0x1

    .line 657
    if-eq v8, v0, :cond_32

    .line 658
    .line 659
    invoke-virtual {v1}, Lu/e;->getBaselineDistance()I

    .line 660
    .line 661
    .line 662
    move-result v0

    .line 663
    if-eq v0, v8, :cond_32

    .line 664
    .line 665
    const/4 v0, 0x1

    .line 666
    iput-boolean v0, v2, Lv/b;->i:Z

    .line 667
    .line 668
    :cond_32
    iput v11, v2, Lv/b;->e:I

    .line 669
    .line 670
    iput v15, v2, Lv/b;->f:I

    .line 671
    .line 672
    iput-boolean v9, v2, Lv/b;->h:Z

    .line 673
    .line 674
    iput v8, v2, Lv/b;->g:I

    .line 675
    .line 676
    return-void
.end method
