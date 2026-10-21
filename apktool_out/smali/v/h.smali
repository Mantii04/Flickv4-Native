.class public abstract Lv/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lv/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lv/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lv/b;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lv/h;->a:Lv/b;

    .line 7
    .line 8
    return-void
.end method

.method public static a(Lu/e;)Z
    .locals 9

    .line 1
    invoke-virtual {p0}, Lu/e;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lu/e;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p0}, Lu/e;->getParent()Lu/e;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lu/e;->getParent()Lu/e;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Lu/f;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v2, 0x0

    .line 23
    :goto_0
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 24
    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    invoke-virtual {v2}, Lu/e;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    :cond_1
    if-eqz v2, :cond_2

    .line 32
    .line 33
    invoke-virtual {v2}, Lu/e;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    :cond_2
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->f:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 38
    .line 39
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->e:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 40
    .line 41
    const/4 v5, 0x0

    .line 42
    const/4 v6, 0x0

    .line 43
    const/4 v7, 0x1

    .line 44
    if-eq v0, v3, :cond_5

    .line 45
    .line 46
    invoke-virtual {p0}, Lu/e;->isResolvedHorizontally()Z

    .line 47
    .line 48
    .line 49
    move-result v8

    .line 50
    if-nez v8, :cond_5

    .line 51
    .line 52
    if-eq v0, v4, :cond_5

    .line 53
    .line 54
    if-ne v0, v2, :cond_3

    .line 55
    .line 56
    iget v8, p0, Lu/e;->r:I

    .line 57
    .line 58
    if-nez v8, :cond_3

    .line 59
    .line 60
    iget v8, p0, Lu/e;->X:F

    .line 61
    .line 62
    cmpl-float v8, v8, v5

    .line 63
    .line 64
    if-nez v8, :cond_3

    .line 65
    .line 66
    invoke-virtual {p0, v6}, Lu/e;->hasDanglingDimension(I)Z

    .line 67
    .line 68
    .line 69
    move-result v8

    .line 70
    if-nez v8, :cond_5

    .line 71
    .line 72
    :cond_3
    if-ne v0, v2, :cond_4

    .line 73
    .line 74
    iget v0, p0, Lu/e;->r:I

    .line 75
    .line 76
    if-ne v0, v7, :cond_4

    .line 77
    .line 78
    invoke-virtual {p0}, Lu/e;->getWidth()I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    invoke-virtual {p0, v6, v0}, Lu/e;->hasResolvedTargets(II)Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-eqz v0, :cond_4

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_4
    move v0, v6

    .line 90
    goto :goto_2

    .line 91
    :cond_5
    :goto_1
    move v0, v7

    .line 92
    :goto_2
    if-eq v1, v3, :cond_8

    .line 93
    .line 94
    invoke-virtual {p0}, Lu/e;->isResolvedVertically()Z

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    if-nez v3, :cond_8

    .line 99
    .line 100
    if-eq v1, v4, :cond_8

    .line 101
    .line 102
    if-ne v1, v2, :cond_6

    .line 103
    .line 104
    iget v3, p0, Lu/e;->s:I

    .line 105
    .line 106
    if-nez v3, :cond_6

    .line 107
    .line 108
    iget v3, p0, Lu/e;->X:F

    .line 109
    .line 110
    cmpl-float v3, v3, v5

    .line 111
    .line 112
    if-nez v3, :cond_6

    .line 113
    .line 114
    invoke-virtual {p0, v7}, Lu/e;->hasDanglingDimension(I)Z

    .line 115
    .line 116
    .line 117
    move-result v3

    .line 118
    if-nez v3, :cond_8

    .line 119
    .line 120
    :cond_6
    if-ne v1, v2, :cond_7

    .line 121
    .line 122
    iget v1, p0, Lu/e;->s:I

    .line 123
    .line 124
    if-ne v1, v7, :cond_7

    .line 125
    .line 126
    invoke-virtual {p0}, Lu/e;->getHeight()I

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    invoke-virtual {p0, v7, v1}, Lu/e;->hasResolvedTargets(II)Z

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    if-eqz v1, :cond_7

    .line 135
    .line 136
    goto :goto_3

    .line 137
    :cond_7
    move v1, v6

    .line 138
    goto :goto_4

    .line 139
    :cond_8
    :goto_3
    move v1, v7

    .line 140
    :goto_4
    iget p0, p0, Lu/e;->X:F

    .line 141
    .line 142
    cmpl-float p0, p0, v5

    .line 143
    .line 144
    if-lez p0, :cond_9

    .line 145
    .line 146
    if-nez v0, :cond_a

    .line 147
    .line 148
    if-eqz v1, :cond_9

    .line 149
    .line 150
    goto :goto_5

    .line 151
    :cond_9
    if-eqz v0, :cond_b

    .line 152
    .line 153
    if-eqz v1, :cond_b

    .line 154
    .line 155
    :cond_a
    :goto_5
    return v7

    .line 156
    :cond_b
    return v6
.end method

.method public static b(ILu/e;Lv/c;Z)V
    .locals 18

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    .line 7
    invoke-virtual {v0}, Lu/e;->isHorizontalSolvingPassDone()Z

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    if-eqz v3, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    instance-of v3, v0, Lu/f;

    .line 15
    .line 16
    const/4 v4, 0x0

    .line 17
    if-nez v3, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0}, Lu/e;->isMeasureRequested()Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_1

    .line 24
    .line 25
    add-int/lit8 v3, p0, 0x1

    .line 26
    .line 27
    invoke-static {v0}, Lv/h;->a(Lu/e;)Z

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    if-eqz v5, :cond_1

    .line 32
    .line 33
    new-instance v5, Lv/b;

    .line 34
    .line 35
    invoke-direct {v5}, Lv/b;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-static {v3, v0, v1, v5, v4}, Lu/f;->measure(ILu/e;Lv/c;Lv/b;I)Z

    .line 39
    .line 40
    .line 41
    :cond_1
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->b:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 42
    .line 43
    invoke-virtual {v0, v3}, Lu/e;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lu/d;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 48
    .line 49
    invoke-virtual {v0, v5}, Lu/e;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lu/d;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    invoke-virtual {v3}, Lu/d;->getFinalValue()I

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    invoke-virtual {v5}, Lu/d;->getFinalValue()I

    .line 58
    .line 59
    .line 60
    move-result v7

    .line 61
    invoke-virtual {v3}, Lu/d;->getDependents()Ljava/util/HashSet;

    .line 62
    .line 63
    .line 64
    move-result-object v8

    .line 65
    sget-object v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->f:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 66
    .line 67
    if-eqz v8, :cond_d

    .line 68
    .line 69
    invoke-virtual {v3}, Lu/d;->hasFinalValue()Z

    .line 70
    .line 71
    .line 72
    move-result v8

    .line 73
    if-eqz v8, :cond_d

    .line 74
    .line 75
    invoke-virtual {v3}, Lu/d;->getDependents()Ljava/util/HashSet;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 84
    .line 85
    .line 86
    move-result v8

    .line 87
    if-eqz v8, :cond_d

    .line 88
    .line 89
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v8

    .line 93
    check-cast v8, Lu/d;

    .line 94
    .line 95
    iget-object v13, v8, Lu/d;->d:Lu/e;

    .line 96
    .line 97
    add-int/lit8 v14, p0, 0x1

    .line 98
    .line 99
    invoke-static {v13}, Lv/h;->a(Lu/e;)Z

    .line 100
    .line 101
    .line 102
    move-result v15

    .line 103
    invoke-virtual {v13}, Lu/e;->isMeasureRequested()Z

    .line 104
    .line 105
    .line 106
    move-result v16

    .line 107
    if-eqz v16, :cond_2

    .line 108
    .line 109
    if-eqz v15, :cond_2

    .line 110
    .line 111
    const/16 v16, 0x1

    .line 112
    .line 113
    new-instance v10, Lv/b;

    .line 114
    .line 115
    invoke-direct {v10}, Lv/b;-><init>()V

    .line 116
    .line 117
    .line 118
    invoke-static {v14, v13, v1, v10, v4}, Lu/f;->measure(ILu/e;Lv/c;Lv/b;I)Z

    .line 119
    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_2
    const/16 v16, 0x1

    .line 123
    .line 124
    :goto_1
    iget-object v10, v13, Lu/e;->I:Lu/d;

    .line 125
    .line 126
    const/16 v17, 0x0

    .line 127
    .line 128
    iget-object v11, v13, Lu/e;->K:Lu/d;

    .line 129
    .line 130
    if-ne v8, v10, :cond_3

    .line 131
    .line 132
    iget-object v4, v11, Lu/d;->f:Lu/d;

    .line 133
    .line 134
    if-eqz v4, :cond_3

    .line 135
    .line 136
    invoke-virtual {v4}, Lu/d;->hasFinalValue()Z

    .line 137
    .line 138
    .line 139
    move-result v4

    .line 140
    if-nez v4, :cond_4

    .line 141
    .line 142
    :cond_3
    if-ne v8, v11, :cond_5

    .line 143
    .line 144
    iget-object v4, v10, Lu/d;->f:Lu/d;

    .line 145
    .line 146
    if-eqz v4, :cond_5

    .line 147
    .line 148
    invoke-virtual {v4}, Lu/d;->hasFinalValue()Z

    .line 149
    .line 150
    .line 151
    move-result v4

    .line 152
    if-eqz v4, :cond_5

    .line 153
    .line 154
    :cond_4
    move/from16 v4, v16

    .line 155
    .line 156
    goto :goto_2

    .line 157
    :cond_5
    const/4 v4, 0x0

    .line 158
    :goto_2
    invoke-virtual {v13}, Lu/e;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 159
    .line 160
    .line 161
    move-result-object v12

    .line 162
    if-ne v12, v9, :cond_8

    .line 163
    .line 164
    if-eqz v15, :cond_6

    .line 165
    .line 166
    goto :goto_3

    .line 167
    :cond_6
    invoke-virtual {v13}, Lu/e;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 168
    .line 169
    .line 170
    move-result-object v8

    .line 171
    if-ne v8, v9, :cond_9

    .line 172
    .line 173
    iget v8, v13, Lu/e;->v:I

    .line 174
    .line 175
    if-ltz v8, :cond_9

    .line 176
    .line 177
    iget v8, v13, Lu/e;->u:I

    .line 178
    .line 179
    if-ltz v8, :cond_9

    .line 180
    .line 181
    invoke-virtual {v13}, Lu/e;->getVisibility()I

    .line 182
    .line 183
    .line 184
    move-result v8

    .line 185
    const/16 v10, 0x8

    .line 186
    .line 187
    if-eq v8, v10, :cond_7

    .line 188
    .line 189
    iget v8, v13, Lu/e;->r:I

    .line 190
    .line 191
    if-nez v8, :cond_9

    .line 192
    .line 193
    invoke-virtual {v13}, Lu/e;->getDimensionRatio()F

    .line 194
    .line 195
    .line 196
    move-result v8

    .line 197
    cmpl-float v8, v8, v17

    .line 198
    .line 199
    if-nez v8, :cond_9

    .line 200
    .line 201
    :cond_7
    invoke-virtual {v13}, Lu/e;->isInHorizontalChain()Z

    .line 202
    .line 203
    .line 204
    move-result v8

    .line 205
    if-nez v8, :cond_9

    .line 206
    .line 207
    invoke-virtual {v13}, Lu/e;->isInVirtualLayout()Z

    .line 208
    .line 209
    .line 210
    move-result v8

    .line 211
    if-nez v8, :cond_9

    .line 212
    .line 213
    if-eqz v4, :cond_9

    .line 214
    .line 215
    invoke-virtual {v13}, Lu/e;->isInHorizontalChain()Z

    .line 216
    .line 217
    .line 218
    move-result v4

    .line 219
    if-nez v4, :cond_9

    .line 220
    .line 221
    invoke-static {v14, v0, v1, v13, v2}, Lv/h;->d(ILu/e;Lv/c;Lu/e;Z)V

    .line 222
    .line 223
    .line 224
    goto :goto_4

    .line 225
    :cond_8
    :goto_3
    invoke-virtual {v13}, Lu/e;->isMeasureRequested()Z

    .line 226
    .line 227
    .line 228
    move-result v12

    .line 229
    if-eqz v12, :cond_a

    .line 230
    .line 231
    :cond_9
    :goto_4
    const/4 v4, 0x0

    .line 232
    goto/16 :goto_0

    .line 233
    .line 234
    :cond_a
    if-ne v8, v10, :cond_b

    .line 235
    .line 236
    iget-object v12, v11, Lu/d;->f:Lu/d;

    .line 237
    .line 238
    if-nez v12, :cond_b

    .line 239
    .line 240
    invoke-virtual {v10}, Lu/d;->getMargin()I

    .line 241
    .line 242
    .line 243
    move-result v4

    .line 244
    add-int/2addr v4, v6

    .line 245
    invoke-virtual {v13}, Lu/e;->getWidth()I

    .line 246
    .line 247
    .line 248
    move-result v8

    .line 249
    add-int/2addr v8, v4

    .line 250
    invoke-virtual {v13, v4, v8}, Lu/e;->setFinalHorizontal(II)V

    .line 251
    .line 252
    .line 253
    invoke-static {v14, v13, v1, v2}, Lv/h;->b(ILu/e;Lv/c;Z)V

    .line 254
    .line 255
    .line 256
    goto :goto_4

    .line 257
    :cond_b
    if-ne v8, v11, :cond_c

    .line 258
    .line 259
    iget-object v8, v10, Lu/d;->f:Lu/d;

    .line 260
    .line 261
    if-nez v8, :cond_c

    .line 262
    .line 263
    invoke-virtual {v11}, Lu/d;->getMargin()I

    .line 264
    .line 265
    .line 266
    move-result v4

    .line 267
    sub-int v4, v6, v4

    .line 268
    .line 269
    invoke-virtual {v13}, Lu/e;->getWidth()I

    .line 270
    .line 271
    .line 272
    move-result v8

    .line 273
    sub-int v8, v4, v8

    .line 274
    .line 275
    invoke-virtual {v13, v8, v4}, Lu/e;->setFinalHorizontal(II)V

    .line 276
    .line 277
    .line 278
    invoke-static {v14, v13, v1, v2}, Lv/h;->b(ILu/e;Lv/c;Z)V

    .line 279
    .line 280
    .line 281
    goto :goto_4

    .line 282
    :cond_c
    if-eqz v4, :cond_9

    .line 283
    .line 284
    invoke-virtual {v13}, Lu/e;->isInHorizontalChain()Z

    .line 285
    .line 286
    .line 287
    move-result v4

    .line 288
    if-nez v4, :cond_9

    .line 289
    .line 290
    invoke-static {v14, v13, v1, v2}, Lv/h;->c(ILu/e;Lv/c;Z)V

    .line 291
    .line 292
    .line 293
    goto :goto_4

    .line 294
    :cond_d
    const/16 v16, 0x1

    .line 295
    .line 296
    const/16 v17, 0x0

    .line 297
    .line 298
    instance-of v3, v0, Lu/i;

    .line 299
    .line 300
    if-eqz v3, :cond_e

    .line 301
    .line 302
    return-void

    .line 303
    :cond_e
    invoke-virtual {v5}, Lu/d;->getDependents()Ljava/util/HashSet;

    .line 304
    .line 305
    .line 306
    move-result-object v3

    .line 307
    if-eqz v3, :cond_1b

    .line 308
    .line 309
    invoke-virtual {v5}, Lu/d;->hasFinalValue()Z

    .line 310
    .line 311
    .line 312
    move-result v3

    .line 313
    if-eqz v3, :cond_1b

    .line 314
    .line 315
    invoke-virtual {v5}, Lu/d;->getDependents()Ljava/util/HashSet;

    .line 316
    .line 317
    .line 318
    move-result-object v3

    .line 319
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 320
    .line 321
    .line 322
    move-result-object v3

    .line 323
    :cond_f
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 324
    .line 325
    .line 326
    move-result v4

    .line 327
    if-eqz v4, :cond_1b

    .line 328
    .line 329
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 330
    .line 331
    .line 332
    move-result-object v4

    .line 333
    check-cast v4, Lu/d;

    .line 334
    .line 335
    iget-object v5, v4, Lu/d;->d:Lu/e;

    .line 336
    .line 337
    add-int/lit8 v10, p0, 0x1

    .line 338
    .line 339
    invoke-static {v5}, Lv/h;->a(Lu/e;)Z

    .line 340
    .line 341
    .line 342
    move-result v6

    .line 343
    invoke-virtual {v5}, Lu/e;->isMeasureRequested()Z

    .line 344
    .line 345
    .line 346
    move-result v8

    .line 347
    if-eqz v8, :cond_10

    .line 348
    .line 349
    if-eqz v6, :cond_10

    .line 350
    .line 351
    new-instance v8, Lv/b;

    .line 352
    .line 353
    invoke-direct {v8}, Lv/b;-><init>()V

    .line 354
    .line 355
    .line 356
    const/4 v11, 0x0

    .line 357
    invoke-static {v10, v5, v1, v8, v11}, Lu/f;->measure(ILu/e;Lv/c;Lv/b;I)Z

    .line 358
    .line 359
    .line 360
    goto :goto_6

    .line 361
    :cond_10
    const/4 v11, 0x0

    .line 362
    :goto_6
    iget-object v8, v5, Lu/e;->I:Lu/d;

    .line 363
    .line 364
    iget-object v12, v5, Lu/e;->K:Lu/d;

    .line 365
    .line 366
    if-ne v4, v8, :cond_11

    .line 367
    .line 368
    iget-object v13, v12, Lu/d;->f:Lu/d;

    .line 369
    .line 370
    if-eqz v13, :cond_11

    .line 371
    .line 372
    invoke-virtual {v13}, Lu/d;->hasFinalValue()Z

    .line 373
    .line 374
    .line 375
    move-result v13

    .line 376
    if-nez v13, :cond_12

    .line 377
    .line 378
    :cond_11
    if-ne v4, v12, :cond_13

    .line 379
    .line 380
    iget-object v13, v8, Lu/d;->f:Lu/d;

    .line 381
    .line 382
    if-eqz v13, :cond_13

    .line 383
    .line 384
    invoke-virtual {v13}, Lu/d;->hasFinalValue()Z

    .line 385
    .line 386
    .line 387
    move-result v13

    .line 388
    if-eqz v13, :cond_13

    .line 389
    .line 390
    :cond_12
    move/from16 v13, v16

    .line 391
    .line 392
    goto :goto_7

    .line 393
    :cond_13
    move v13, v11

    .line 394
    :goto_7
    invoke-virtual {v5}, Lu/e;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 395
    .line 396
    .line 397
    move-result-object v14

    .line 398
    if-ne v14, v9, :cond_14

    .line 399
    .line 400
    if-eqz v6, :cond_15

    .line 401
    .line 402
    :cond_14
    const/16 v6, 0x8

    .line 403
    .line 404
    goto :goto_8

    .line 405
    :cond_15
    invoke-virtual {v5}, Lu/e;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 406
    .line 407
    .line 408
    move-result-object v4

    .line 409
    if-ne v4, v9, :cond_17

    .line 410
    .line 411
    iget v4, v5, Lu/e;->v:I

    .line 412
    .line 413
    if-ltz v4, :cond_17

    .line 414
    .line 415
    iget v4, v5, Lu/e;->u:I

    .line 416
    .line 417
    if-ltz v4, :cond_17

    .line 418
    .line 419
    invoke-virtual {v5}, Lu/e;->getVisibility()I

    .line 420
    .line 421
    .line 422
    move-result v4

    .line 423
    const/16 v6, 0x8

    .line 424
    .line 425
    if-eq v4, v6, :cond_16

    .line 426
    .line 427
    iget v4, v5, Lu/e;->r:I

    .line 428
    .line 429
    if-nez v4, :cond_f

    .line 430
    .line 431
    invoke-virtual {v5}, Lu/e;->getDimensionRatio()F

    .line 432
    .line 433
    .line 434
    move-result v4

    .line 435
    cmpl-float v4, v4, v17

    .line 436
    .line 437
    if-nez v4, :cond_f

    .line 438
    .line 439
    :cond_16
    invoke-virtual {v5}, Lu/e;->isInHorizontalChain()Z

    .line 440
    .line 441
    .line 442
    move-result v4

    .line 443
    if-nez v4, :cond_f

    .line 444
    .line 445
    invoke-virtual {v5}, Lu/e;->isInVirtualLayout()Z

    .line 446
    .line 447
    .line 448
    move-result v4

    .line 449
    if-nez v4, :cond_f

    .line 450
    .line 451
    if-eqz v13, :cond_f

    .line 452
    .line 453
    invoke-virtual {v5}, Lu/e;->isInHorizontalChain()Z

    .line 454
    .line 455
    .line 456
    move-result v4

    .line 457
    if-nez v4, :cond_f

    .line 458
    .line 459
    invoke-static {v10, v0, v1, v5, v2}, Lv/h;->d(ILu/e;Lv/c;Lu/e;Z)V

    .line 460
    .line 461
    .line 462
    goto/16 :goto_5

    .line 463
    .line 464
    :cond_17
    const/16 v6, 0x8

    .line 465
    .line 466
    goto/16 :goto_5

    .line 467
    .line 468
    :goto_8
    invoke-virtual {v5}, Lu/e;->isMeasureRequested()Z

    .line 469
    .line 470
    .line 471
    move-result v14

    .line 472
    if-eqz v14, :cond_18

    .line 473
    .line 474
    goto/16 :goto_5

    .line 475
    .line 476
    :cond_18
    if-ne v4, v8, :cond_19

    .line 477
    .line 478
    iget-object v14, v12, Lu/d;->f:Lu/d;

    .line 479
    .line 480
    if-nez v14, :cond_19

    .line 481
    .line 482
    invoke-virtual {v8}, Lu/d;->getMargin()I

    .line 483
    .line 484
    .line 485
    move-result v4

    .line 486
    add-int/2addr v4, v7

    .line 487
    invoke-virtual {v5}, Lu/e;->getWidth()I

    .line 488
    .line 489
    .line 490
    move-result v8

    .line 491
    add-int/2addr v8, v4

    .line 492
    invoke-virtual {v5, v4, v8}, Lu/e;->setFinalHorizontal(II)V

    .line 493
    .line 494
    .line 495
    invoke-static {v10, v5, v1, v2}, Lv/h;->b(ILu/e;Lv/c;Z)V

    .line 496
    .line 497
    .line 498
    goto/16 :goto_5

    .line 499
    .line 500
    :cond_19
    if-ne v4, v12, :cond_1a

    .line 501
    .line 502
    iget-object v4, v8, Lu/d;->f:Lu/d;

    .line 503
    .line 504
    if-nez v4, :cond_1a

    .line 505
    .line 506
    invoke-virtual {v12}, Lu/d;->getMargin()I

    .line 507
    .line 508
    .line 509
    move-result v4

    .line 510
    sub-int v4, v7, v4

    .line 511
    .line 512
    invoke-virtual {v5}, Lu/e;->getWidth()I

    .line 513
    .line 514
    .line 515
    move-result v8

    .line 516
    sub-int v8, v4, v8

    .line 517
    .line 518
    invoke-virtual {v5, v8, v4}, Lu/e;->setFinalHorizontal(II)V

    .line 519
    .line 520
    .line 521
    invoke-static {v10, v5, v1, v2}, Lv/h;->b(ILu/e;Lv/c;Z)V

    .line 522
    .line 523
    .line 524
    goto/16 :goto_5

    .line 525
    .line 526
    :cond_1a
    if-eqz v13, :cond_f

    .line 527
    .line 528
    invoke-virtual {v5}, Lu/e;->isInHorizontalChain()Z

    .line 529
    .line 530
    .line 531
    move-result v4

    .line 532
    if-nez v4, :cond_f

    .line 533
    .line 534
    invoke-static {v10, v5, v1, v2}, Lv/h;->c(ILu/e;Lv/c;Z)V

    .line 535
    .line 536
    .line 537
    goto/16 :goto_5

    .line 538
    .line 539
    :cond_1b
    invoke-virtual {v0}, Lu/e;->markHorizontalSolvingPassDone()V

    .line 540
    .line 541
    .line 542
    return-void
.end method

.method public static c(ILu/e;Lv/c;Z)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Lu/e;->getHorizontalBiasPercent()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p1, Lu/e;->I:Lu/d;

    .line 6
    .line 7
    iget-object v2, v1, Lu/d;->f:Lu/d;

    .line 8
    .line 9
    invoke-virtual {v2}, Lu/d;->getFinalValue()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    iget-object v3, p1, Lu/e;->K:Lu/d;

    .line 14
    .line 15
    iget-object v4, v3, Lu/d;->f:Lu/d;

    .line 16
    .line 17
    invoke-virtual {v4}, Lu/d;->getFinalValue()I

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    invoke-virtual {v1}, Lu/d;->getMargin()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    add-int/2addr v1, v2

    .line 26
    invoke-virtual {v3}, Lu/d;->getMargin()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    sub-int v3, v4, v3

    .line 31
    .line 32
    const/high16 v5, 0x3f000000    # 0.5f

    .line 33
    .line 34
    if-ne v2, v4, :cond_0

    .line 35
    .line 36
    move v0, v5

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    move v2, v1

    .line 39
    move v4, v3

    .line 40
    :goto_0
    invoke-virtual {p1}, Lu/e;->getWidth()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    sub-int v3, v4, v2

    .line 45
    .line 46
    sub-int/2addr v3, v1

    .line 47
    if-le v2, v4, :cond_1

    .line 48
    .line 49
    sub-int v3, v2, v4

    .line 50
    .line 51
    sub-int/2addr v3, v1

    .line 52
    :cond_1
    if-lez v3, :cond_2

    .line 53
    .line 54
    int-to-float v3, v3

    .line 55
    mul-float/2addr v0, v3

    .line 56
    add-float/2addr v0, v5

    .line 57
    :goto_1
    float-to-int v0, v0

    .line 58
    goto :goto_2

    .line 59
    :cond_2
    int-to-float v3, v3

    .line 60
    mul-float/2addr v0, v3

    .line 61
    goto :goto_1

    .line 62
    :goto_2
    add-int/2addr v0, v2

    .line 63
    add-int v3, v0, v1

    .line 64
    .line 65
    if-le v2, v4, :cond_3

    .line 66
    .line 67
    sub-int v3, v0, v1

    .line 68
    .line 69
    :cond_3
    invoke-virtual {p1, v0, v3}, Lu/e;->setFinalHorizontal(II)V

    .line 70
    .line 71
    .line 72
    add-int/lit8 p0, p0, 0x1

    .line 73
    .line 74
    invoke-static {p0, p1, p2, p3}, Lv/h;->b(ILu/e;Lv/c;Z)V

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method public static d(ILu/e;Lv/c;Lu/e;Z)V
    .locals 7

    .line 1
    invoke-virtual {p3}, Lu/e;->getHorizontalBiasPercent()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p3, Lu/e;->I:Lu/d;

    .line 6
    .line 7
    iget-object v2, v1, Lu/d;->f:Lu/d;

    .line 8
    .line 9
    invoke-virtual {v2}, Lu/d;->getFinalValue()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-virtual {v1}, Lu/d;->getMargin()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    add-int/2addr v1, v2

    .line 18
    iget-object v2, p3, Lu/e;->K:Lu/d;

    .line 19
    .line 20
    iget-object v3, v2, Lu/d;->f:Lu/d;

    .line 21
    .line 22
    invoke-virtual {v3}, Lu/d;->getFinalValue()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    invoke-virtual {v2}, Lu/d;->getMargin()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    sub-int/2addr v3, v2

    .line 31
    if-lt v3, v1, :cond_4

    .line 32
    .line 33
    invoke-virtual {p3}, Lu/e;->getWidth()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    invoke-virtual {p3}, Lu/e;->getVisibility()I

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    const/16 v5, 0x8

    .line 42
    .line 43
    const/high16 v6, 0x3f000000    # 0.5f

    .line 44
    .line 45
    if-eq v4, v5, :cond_3

    .line 46
    .line 47
    iget v4, p3, Lu/e;->r:I

    .line 48
    .line 49
    const/4 v5, 0x2

    .line 50
    if-ne v4, v5, :cond_1

    .line 51
    .line 52
    instance-of v2, p1, Lu/f;

    .line 53
    .line 54
    if-eqz v2, :cond_0

    .line 55
    .line 56
    invoke-virtual {p1}, Lu/e;->getWidth()I

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {p1}, Lu/e;->getParent()Lu/e;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p1}, Lu/e;->getWidth()I

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    :goto_0
    invoke-virtual {p3}, Lu/e;->getHorizontalBiasPercent()F

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    mul-float/2addr v2, v6

    .line 74
    int-to-float p1, p1

    .line 75
    mul-float/2addr v2, p1

    .line 76
    float-to-int v2, v2

    .line 77
    goto :goto_1

    .line 78
    :cond_1
    if-nez v4, :cond_2

    .line 79
    .line 80
    sub-int v2, v3, v1

    .line 81
    .line 82
    :cond_2
    :goto_1
    iget p1, p3, Lu/e;->u:I

    .line 83
    .line 84
    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    iget p1, p3, Lu/e;->v:I

    .line 89
    .line 90
    if-lez p1, :cond_3

    .line 91
    .line 92
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    :cond_3
    sub-int/2addr v3, v1

    .line 97
    sub-int/2addr v3, v2

    .line 98
    int-to-float p1, v3

    .line 99
    mul-float/2addr v0, p1

    .line 100
    add-float/2addr v0, v6

    .line 101
    float-to-int p1, v0

    .line 102
    add-int/2addr v1, p1

    .line 103
    add-int/2addr v2, v1

    .line 104
    invoke-virtual {p3, v1, v2}, Lu/e;->setFinalHorizontal(II)V

    .line 105
    .line 106
    .line 107
    add-int/lit8 p0, p0, 0x1

    .line 108
    .line 109
    invoke-static {p0, p3, p2, p4}, Lv/h;->b(ILu/e;Lv/c;Z)V

    .line 110
    .line 111
    .line 112
    :cond_4
    return-void
.end method

.method public static e(ILu/e;Lv/c;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Lu/e;->getVerticalBiasPercent()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p1, Lu/e;->J:Lu/d;

    .line 6
    .line 7
    iget-object v2, v1, Lu/d;->f:Lu/d;

    .line 8
    .line 9
    invoke-virtual {v2}, Lu/d;->getFinalValue()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    iget-object v3, p1, Lu/e;->L:Lu/d;

    .line 14
    .line 15
    iget-object v4, v3, Lu/d;->f:Lu/d;

    .line 16
    .line 17
    invoke-virtual {v4}, Lu/d;->getFinalValue()I

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    invoke-virtual {v1}, Lu/d;->getMargin()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    add-int/2addr v1, v2

    .line 26
    invoke-virtual {v3}, Lu/d;->getMargin()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    sub-int v3, v4, v3

    .line 31
    .line 32
    const/high16 v5, 0x3f000000    # 0.5f

    .line 33
    .line 34
    if-ne v2, v4, :cond_0

    .line 35
    .line 36
    move v0, v5

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    move v2, v1

    .line 39
    move v4, v3

    .line 40
    :goto_0
    invoke-virtual {p1}, Lu/e;->getHeight()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    sub-int v3, v4, v2

    .line 45
    .line 46
    sub-int/2addr v3, v1

    .line 47
    if-le v2, v4, :cond_1

    .line 48
    .line 49
    sub-int v3, v2, v4

    .line 50
    .line 51
    sub-int/2addr v3, v1

    .line 52
    :cond_1
    if-lez v3, :cond_2

    .line 53
    .line 54
    int-to-float v3, v3

    .line 55
    mul-float/2addr v0, v3

    .line 56
    add-float/2addr v0, v5

    .line 57
    :goto_1
    float-to-int v0, v0

    .line 58
    goto :goto_2

    .line 59
    :cond_2
    int-to-float v3, v3

    .line 60
    mul-float/2addr v0, v3

    .line 61
    goto :goto_1

    .line 62
    :goto_2
    add-int v3, v2, v0

    .line 63
    .line 64
    add-int v5, v3, v1

    .line 65
    .line 66
    if-le v2, v4, :cond_3

    .line 67
    .line 68
    sub-int v3, v2, v0

    .line 69
    .line 70
    sub-int v5, v3, v1

    .line 71
    .line 72
    :cond_3
    invoke-virtual {p1, v3, v5}, Lu/e;->setFinalVertical(II)V

    .line 73
    .line 74
    .line 75
    add-int/lit8 p0, p0, 0x1

    .line 76
    .line 77
    invoke-static {p0, p1, p2}, Lv/h;->g(ILu/e;Lv/c;)V

    .line 78
    .line 79
    .line 80
    return-void
.end method

.method public static f(ILu/e;Lv/c;Lu/e;)V
    .locals 7

    .line 1
    invoke-virtual {p3}, Lu/e;->getVerticalBiasPercent()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p3, Lu/e;->J:Lu/d;

    .line 6
    .line 7
    iget-object v2, v1, Lu/d;->f:Lu/d;

    .line 8
    .line 9
    invoke-virtual {v2}, Lu/d;->getFinalValue()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-virtual {v1}, Lu/d;->getMargin()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    add-int/2addr v1, v2

    .line 18
    iget-object v2, p3, Lu/e;->L:Lu/d;

    .line 19
    .line 20
    iget-object v3, v2, Lu/d;->f:Lu/d;

    .line 21
    .line 22
    invoke-virtual {v3}, Lu/d;->getFinalValue()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    invoke-virtual {v2}, Lu/d;->getMargin()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    sub-int/2addr v3, v2

    .line 31
    if-lt v3, v1, :cond_4

    .line 32
    .line 33
    invoke-virtual {p3}, Lu/e;->getHeight()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    invoke-virtual {p3}, Lu/e;->getVisibility()I

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    const/16 v5, 0x8

    .line 42
    .line 43
    const/high16 v6, 0x3f000000    # 0.5f

    .line 44
    .line 45
    if-eq v4, v5, :cond_3

    .line 46
    .line 47
    iget v4, p3, Lu/e;->s:I

    .line 48
    .line 49
    const/4 v5, 0x2

    .line 50
    if-ne v4, v5, :cond_1

    .line 51
    .line 52
    instance-of v2, p1, Lu/f;

    .line 53
    .line 54
    if-eqz v2, :cond_0

    .line 55
    .line 56
    invoke-virtual {p1}, Lu/e;->getHeight()I

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {p1}, Lu/e;->getParent()Lu/e;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p1}, Lu/e;->getHeight()I

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    :goto_0
    mul-float v2, v0, v6

    .line 70
    .line 71
    int-to-float p1, p1

    .line 72
    mul-float/2addr v2, p1

    .line 73
    float-to-int v2, v2

    .line 74
    goto :goto_1

    .line 75
    :cond_1
    if-nez v4, :cond_2

    .line 76
    .line 77
    sub-int v2, v3, v1

    .line 78
    .line 79
    :cond_2
    :goto_1
    iget p1, p3, Lu/e;->x:I

    .line 80
    .line 81
    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    iget p1, p3, Lu/e;->y:I

    .line 86
    .line 87
    if-lez p1, :cond_3

    .line 88
    .line 89
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    :cond_3
    sub-int/2addr v3, v1

    .line 94
    sub-int/2addr v3, v2

    .line 95
    int-to-float p1, v3

    .line 96
    mul-float/2addr v0, p1

    .line 97
    add-float/2addr v0, v6

    .line 98
    float-to-int p1, v0

    .line 99
    add-int/2addr v1, p1

    .line 100
    add-int/2addr v2, v1

    .line 101
    invoke-virtual {p3, v1, v2}, Lu/e;->setFinalVertical(II)V

    .line 102
    .line 103
    .line 104
    add-int/lit8 p0, p0, 0x1

    .line 105
    .line 106
    invoke-static {p0, p3, p2}, Lv/h;->g(ILu/e;Lv/c;)V

    .line 107
    .line 108
    .line 109
    :cond_4
    return-void
.end method

.method public static g(ILu/e;Lv/c;)V
    .locals 18

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    invoke-virtual {v0}, Lu/e;->isVerticalSolvingPassDone()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    instance-of v2, v0, Lu/f;

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    if-nez v2, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0}, Lu/e;->isMeasureRequested()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    add-int/lit8 v2, p0, 0x1

    .line 24
    .line 25
    invoke-static {v0}, Lv/h;->a(Lu/e;)Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-eqz v4, :cond_1

    .line 30
    .line 31
    new-instance v4, Lv/b;

    .line 32
    .line 33
    invoke-direct {v4}, Lv/b;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-static {v2, v0, v1, v4, v3}, Lu/f;->measure(ILu/e;Lv/c;Lv/b;I)Z

    .line 37
    .line 38
    .line 39
    :cond_1
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->e:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 40
    .line 41
    invoke-virtual {v0, v2}, Lu/e;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lu/d;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->j:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 46
    .line 47
    invoke-virtual {v0, v4}, Lu/e;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lu/d;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    invoke-virtual {v2}, Lu/d;->getFinalValue()I

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    invoke-virtual {v4}, Lu/d;->getFinalValue()I

    .line 56
    .line 57
    .line 58
    move-result v6

    .line 59
    invoke-virtual {v2}, Lu/d;->getDependents()Ljava/util/HashSet;

    .line 60
    .line 61
    .line 62
    move-result-object v7

    .line 63
    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->f:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 64
    .line 65
    const/16 v11, 0x8

    .line 66
    .line 67
    if-eqz v7, :cond_d

    .line 68
    .line 69
    invoke-virtual {v2}, Lu/d;->hasFinalValue()Z

    .line 70
    .line 71
    .line 72
    move-result v7

    .line 73
    if-eqz v7, :cond_d

    .line 74
    .line 75
    invoke-virtual {v2}, Lu/d;->getDependents()Ljava/util/HashSet;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 84
    .line 85
    .line 86
    move-result v7

    .line 87
    if-eqz v7, :cond_d

    .line 88
    .line 89
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v7

    .line 93
    check-cast v7, Lu/d;

    .line 94
    .line 95
    iget-object v12, v7, Lu/d;->d:Lu/e;

    .line 96
    .line 97
    add-int/lit8 v13, p0, 0x1

    .line 98
    .line 99
    invoke-static {v12}, Lv/h;->a(Lu/e;)Z

    .line 100
    .line 101
    .line 102
    move-result v14

    .line 103
    invoke-virtual {v12}, Lu/e;->isMeasureRequested()Z

    .line 104
    .line 105
    .line 106
    move-result v15

    .line 107
    if-eqz v15, :cond_2

    .line 108
    .line 109
    if-eqz v14, :cond_2

    .line 110
    .line 111
    new-instance v15, Lv/b;

    .line 112
    .line 113
    invoke-direct {v15}, Lv/b;-><init>()V

    .line 114
    .line 115
    .line 116
    invoke-static {v13, v12, v1, v15, v3}, Lu/f;->measure(ILu/e;Lv/c;Lv/b;I)Z

    .line 117
    .line 118
    .line 119
    :cond_2
    iget-object v15, v12, Lu/e;->J:Lu/d;

    .line 120
    .line 121
    const/16 v16, 0x1

    .line 122
    .line 123
    iget-object v9, v12, Lu/e;->L:Lu/d;

    .line 124
    .line 125
    const/16 v17, 0x0

    .line 126
    .line 127
    if-ne v7, v15, :cond_3

    .line 128
    .line 129
    iget-object v10, v9, Lu/d;->f:Lu/d;

    .line 130
    .line 131
    if-eqz v10, :cond_3

    .line 132
    .line 133
    invoke-virtual {v10}, Lu/d;->hasFinalValue()Z

    .line 134
    .line 135
    .line 136
    move-result v10

    .line 137
    if-nez v10, :cond_4

    .line 138
    .line 139
    :cond_3
    if-ne v7, v9, :cond_5

    .line 140
    .line 141
    iget-object v10, v15, Lu/d;->f:Lu/d;

    .line 142
    .line 143
    if-eqz v10, :cond_5

    .line 144
    .line 145
    invoke-virtual {v10}, Lu/d;->hasFinalValue()Z

    .line 146
    .line 147
    .line 148
    move-result v10

    .line 149
    if-eqz v10, :cond_5

    .line 150
    .line 151
    :cond_4
    move/from16 v10, v16

    .line 152
    .line 153
    goto :goto_1

    .line 154
    :cond_5
    move v10, v3

    .line 155
    :goto_1
    invoke-virtual {v12}, Lu/e;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    if-ne v3, v8, :cond_8

    .line 160
    .line 161
    if-eqz v14, :cond_6

    .line 162
    .line 163
    goto :goto_2

    .line 164
    :cond_6
    invoke-virtual {v12}, Lu/e;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 165
    .line 166
    .line 167
    move-result-object v3

    .line 168
    if-ne v3, v8, :cond_9

    .line 169
    .line 170
    iget v3, v12, Lu/e;->y:I

    .line 171
    .line 172
    if-ltz v3, :cond_9

    .line 173
    .line 174
    iget v3, v12, Lu/e;->x:I

    .line 175
    .line 176
    if-ltz v3, :cond_9

    .line 177
    .line 178
    invoke-virtual {v12}, Lu/e;->getVisibility()I

    .line 179
    .line 180
    .line 181
    move-result v3

    .line 182
    if-eq v3, v11, :cond_7

    .line 183
    .line 184
    iget v3, v12, Lu/e;->s:I

    .line 185
    .line 186
    if-nez v3, :cond_9

    .line 187
    .line 188
    invoke-virtual {v12}, Lu/e;->getDimensionRatio()F

    .line 189
    .line 190
    .line 191
    move-result v3

    .line 192
    cmpl-float v3, v3, v17

    .line 193
    .line 194
    if-nez v3, :cond_9

    .line 195
    .line 196
    :cond_7
    invoke-virtual {v12}, Lu/e;->isInVerticalChain()Z

    .line 197
    .line 198
    .line 199
    move-result v3

    .line 200
    if-nez v3, :cond_9

    .line 201
    .line 202
    invoke-virtual {v12}, Lu/e;->isInVirtualLayout()Z

    .line 203
    .line 204
    .line 205
    move-result v3

    .line 206
    if-nez v3, :cond_9

    .line 207
    .line 208
    if-eqz v10, :cond_9

    .line 209
    .line 210
    invoke-virtual {v12}, Lu/e;->isInVerticalChain()Z

    .line 211
    .line 212
    .line 213
    move-result v3

    .line 214
    if-nez v3, :cond_9

    .line 215
    .line 216
    invoke-static {v13, v0, v1, v12}, Lv/h;->f(ILu/e;Lv/c;Lu/e;)V

    .line 217
    .line 218
    .line 219
    goto :goto_3

    .line 220
    :cond_8
    :goto_2
    invoke-virtual {v12}, Lu/e;->isMeasureRequested()Z

    .line 221
    .line 222
    .line 223
    move-result v3

    .line 224
    if-eqz v3, :cond_a

    .line 225
    .line 226
    :cond_9
    :goto_3
    const/4 v3, 0x0

    .line 227
    goto/16 :goto_0

    .line 228
    .line 229
    :cond_a
    if-ne v7, v15, :cond_b

    .line 230
    .line 231
    iget-object v3, v9, Lu/d;->f:Lu/d;

    .line 232
    .line 233
    if-nez v3, :cond_b

    .line 234
    .line 235
    invoke-virtual {v15}, Lu/d;->getMargin()I

    .line 236
    .line 237
    .line 238
    move-result v3

    .line 239
    add-int/2addr v3, v5

    .line 240
    invoke-virtual {v12}, Lu/e;->getHeight()I

    .line 241
    .line 242
    .line 243
    move-result v7

    .line 244
    add-int/2addr v7, v3

    .line 245
    invoke-virtual {v12, v3, v7}, Lu/e;->setFinalVertical(II)V

    .line 246
    .line 247
    .line 248
    invoke-static {v13, v12, v1}, Lv/h;->g(ILu/e;Lv/c;)V

    .line 249
    .line 250
    .line 251
    goto :goto_3

    .line 252
    :cond_b
    if-ne v7, v9, :cond_c

    .line 253
    .line 254
    iget-object v3, v15, Lu/d;->f:Lu/d;

    .line 255
    .line 256
    if-nez v3, :cond_c

    .line 257
    .line 258
    invoke-virtual {v9}, Lu/d;->getMargin()I

    .line 259
    .line 260
    .line 261
    move-result v3

    .line 262
    sub-int v3, v5, v3

    .line 263
    .line 264
    invoke-virtual {v12}, Lu/e;->getHeight()I

    .line 265
    .line 266
    .line 267
    move-result v7

    .line 268
    sub-int v7, v3, v7

    .line 269
    .line 270
    invoke-virtual {v12, v7, v3}, Lu/e;->setFinalVertical(II)V

    .line 271
    .line 272
    .line 273
    invoke-static {v13, v12, v1}, Lv/h;->g(ILu/e;Lv/c;)V

    .line 274
    .line 275
    .line 276
    goto :goto_3

    .line 277
    :cond_c
    if-eqz v10, :cond_9

    .line 278
    .line 279
    invoke-virtual {v12}, Lu/e;->isInVerticalChain()Z

    .line 280
    .line 281
    .line 282
    move-result v3

    .line 283
    if-nez v3, :cond_9

    .line 284
    .line 285
    invoke-static {v13, v12, v1}, Lv/h;->e(ILu/e;Lv/c;)V

    .line 286
    .line 287
    .line 288
    goto :goto_3

    .line 289
    :cond_d
    const/16 v16, 0x1

    .line 290
    .line 291
    const/16 v17, 0x0

    .line 292
    .line 293
    instance-of v2, v0, Lu/i;

    .line 294
    .line 295
    if-eqz v2, :cond_e

    .line 296
    .line 297
    return-void

    .line 298
    :cond_e
    invoke-virtual {v4}, Lu/d;->getDependents()Ljava/util/HashSet;

    .line 299
    .line 300
    .line 301
    move-result-object v2

    .line 302
    if-eqz v2, :cond_1a

    .line 303
    .line 304
    invoke-virtual {v4}, Lu/d;->hasFinalValue()Z

    .line 305
    .line 306
    .line 307
    move-result v2

    .line 308
    if-eqz v2, :cond_1a

    .line 309
    .line 310
    invoke-virtual {v4}, Lu/d;->getDependents()Ljava/util/HashSet;

    .line 311
    .line 312
    .line 313
    move-result-object v2

    .line 314
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 315
    .line 316
    .line 317
    move-result-object v2

    .line 318
    :cond_f
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 319
    .line 320
    .line 321
    move-result v3

    .line 322
    if-eqz v3, :cond_1a

    .line 323
    .line 324
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    move-result-object v3

    .line 328
    check-cast v3, Lu/d;

    .line 329
    .line 330
    iget-object v4, v3, Lu/d;->d:Lu/e;

    .line 331
    .line 332
    add-int/lit8 v5, p0, 0x1

    .line 333
    .line 334
    invoke-static {v4}, Lv/h;->a(Lu/e;)Z

    .line 335
    .line 336
    .line 337
    move-result v7

    .line 338
    invoke-virtual {v4}, Lu/e;->isMeasureRequested()Z

    .line 339
    .line 340
    .line 341
    move-result v9

    .line 342
    if-eqz v9, :cond_10

    .line 343
    .line 344
    if-eqz v7, :cond_10

    .line 345
    .line 346
    new-instance v9, Lv/b;

    .line 347
    .line 348
    invoke-direct {v9}, Lv/b;-><init>()V

    .line 349
    .line 350
    .line 351
    const/4 v10, 0x0

    .line 352
    invoke-static {v5, v4, v1, v9, v10}, Lu/f;->measure(ILu/e;Lv/c;Lv/b;I)Z

    .line 353
    .line 354
    .line 355
    :cond_10
    iget-object v9, v4, Lu/e;->J:Lu/d;

    .line 356
    .line 357
    iget-object v10, v4, Lu/e;->L:Lu/d;

    .line 358
    .line 359
    if-ne v3, v9, :cond_11

    .line 360
    .line 361
    iget-object v12, v10, Lu/d;->f:Lu/d;

    .line 362
    .line 363
    if-eqz v12, :cond_11

    .line 364
    .line 365
    invoke-virtual {v12}, Lu/d;->hasFinalValue()Z

    .line 366
    .line 367
    .line 368
    move-result v12

    .line 369
    if-nez v12, :cond_12

    .line 370
    .line 371
    :cond_11
    if-ne v3, v10, :cond_13

    .line 372
    .line 373
    iget-object v12, v9, Lu/d;->f:Lu/d;

    .line 374
    .line 375
    if-eqz v12, :cond_13

    .line 376
    .line 377
    invoke-virtual {v12}, Lu/d;->hasFinalValue()Z

    .line 378
    .line 379
    .line 380
    move-result v12

    .line 381
    if-eqz v12, :cond_13

    .line 382
    .line 383
    :cond_12
    move/from16 v12, v16

    .line 384
    .line 385
    goto :goto_5

    .line 386
    :cond_13
    const/4 v12, 0x0

    .line 387
    :goto_5
    invoke-virtual {v4}, Lu/e;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 388
    .line 389
    .line 390
    move-result-object v13

    .line 391
    if-ne v13, v8, :cond_16

    .line 392
    .line 393
    if-eqz v7, :cond_14

    .line 394
    .line 395
    goto :goto_6

    .line 396
    :cond_14
    invoke-virtual {v4}, Lu/e;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 397
    .line 398
    .line 399
    move-result-object v3

    .line 400
    if-ne v3, v8, :cond_f

    .line 401
    .line 402
    iget v3, v4, Lu/e;->y:I

    .line 403
    .line 404
    if-ltz v3, :cond_f

    .line 405
    .line 406
    iget v3, v4, Lu/e;->x:I

    .line 407
    .line 408
    if-ltz v3, :cond_f

    .line 409
    .line 410
    invoke-virtual {v4}, Lu/e;->getVisibility()I

    .line 411
    .line 412
    .line 413
    move-result v3

    .line 414
    if-eq v3, v11, :cond_15

    .line 415
    .line 416
    iget v3, v4, Lu/e;->s:I

    .line 417
    .line 418
    if-nez v3, :cond_f

    .line 419
    .line 420
    invoke-virtual {v4}, Lu/e;->getDimensionRatio()F

    .line 421
    .line 422
    .line 423
    move-result v3

    .line 424
    cmpl-float v3, v3, v17

    .line 425
    .line 426
    if-nez v3, :cond_f

    .line 427
    .line 428
    :cond_15
    invoke-virtual {v4}, Lu/e;->isInVerticalChain()Z

    .line 429
    .line 430
    .line 431
    move-result v3

    .line 432
    if-nez v3, :cond_f

    .line 433
    .line 434
    invoke-virtual {v4}, Lu/e;->isInVirtualLayout()Z

    .line 435
    .line 436
    .line 437
    move-result v3

    .line 438
    if-nez v3, :cond_f

    .line 439
    .line 440
    if-eqz v12, :cond_f

    .line 441
    .line 442
    invoke-virtual {v4}, Lu/e;->isInVerticalChain()Z

    .line 443
    .line 444
    .line 445
    move-result v3

    .line 446
    if-nez v3, :cond_f

    .line 447
    .line 448
    invoke-static {v5, v0, v1, v4}, Lv/h;->f(ILu/e;Lv/c;Lu/e;)V

    .line 449
    .line 450
    .line 451
    goto/16 :goto_4

    .line 452
    .line 453
    :cond_16
    :goto_6
    invoke-virtual {v4}, Lu/e;->isMeasureRequested()Z

    .line 454
    .line 455
    .line 456
    move-result v7

    .line 457
    if-eqz v7, :cond_17

    .line 458
    .line 459
    goto/16 :goto_4

    .line 460
    .line 461
    :cond_17
    if-ne v3, v9, :cond_18

    .line 462
    .line 463
    iget-object v7, v10, Lu/d;->f:Lu/d;

    .line 464
    .line 465
    if-nez v7, :cond_18

    .line 466
    .line 467
    invoke-virtual {v9}, Lu/d;->getMargin()I

    .line 468
    .line 469
    .line 470
    move-result v3

    .line 471
    add-int/2addr v3, v6

    .line 472
    invoke-virtual {v4}, Lu/e;->getHeight()I

    .line 473
    .line 474
    .line 475
    move-result v7

    .line 476
    add-int/2addr v7, v3

    .line 477
    invoke-virtual {v4, v3, v7}, Lu/e;->setFinalVertical(II)V

    .line 478
    .line 479
    .line 480
    invoke-static {v5, v4, v1}, Lv/h;->g(ILu/e;Lv/c;)V

    .line 481
    .line 482
    .line 483
    goto/16 :goto_4

    .line 484
    .line 485
    :cond_18
    if-ne v3, v10, :cond_19

    .line 486
    .line 487
    iget-object v3, v9, Lu/d;->f:Lu/d;

    .line 488
    .line 489
    if-nez v3, :cond_19

    .line 490
    .line 491
    invoke-virtual {v10}, Lu/d;->getMargin()I

    .line 492
    .line 493
    .line 494
    move-result v3

    .line 495
    sub-int v3, v6, v3

    .line 496
    .line 497
    invoke-virtual {v4}, Lu/e;->getHeight()I

    .line 498
    .line 499
    .line 500
    move-result v7

    .line 501
    sub-int v7, v3, v7

    .line 502
    .line 503
    invoke-virtual {v4, v7, v3}, Lu/e;->setFinalVertical(II)V

    .line 504
    .line 505
    .line 506
    invoke-static {v5, v4, v1}, Lv/h;->g(ILu/e;Lv/c;)V

    .line 507
    .line 508
    .line 509
    goto/16 :goto_4

    .line 510
    .line 511
    :cond_19
    if-eqz v12, :cond_f

    .line 512
    .line 513
    invoke-virtual {v4}, Lu/e;->isInVerticalChain()Z

    .line 514
    .line 515
    .line 516
    move-result v3

    .line 517
    if-nez v3, :cond_f

    .line 518
    .line 519
    invoke-static {v5, v4, v1}, Lv/h;->e(ILu/e;Lv/c;)V

    .line 520
    .line 521
    .line 522
    goto/16 :goto_4

    .line 523
    .line 524
    :cond_1a
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->m:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 525
    .line 526
    invoke-virtual {v0, v2}, Lu/e;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lu/d;

    .line 527
    .line 528
    .line 529
    move-result-object v2

    .line 530
    invoke-virtual {v2}, Lu/d;->getDependents()Ljava/util/HashSet;

    .line 531
    .line 532
    .line 533
    move-result-object v3

    .line 534
    if-eqz v3, :cond_1f

    .line 535
    .line 536
    invoke-virtual {v2}, Lu/d;->hasFinalValue()Z

    .line 537
    .line 538
    .line 539
    move-result v3

    .line 540
    if-eqz v3, :cond_1f

    .line 541
    .line 542
    invoke-virtual {v2}, Lu/d;->getFinalValue()I

    .line 543
    .line 544
    .line 545
    move-result v3

    .line 546
    invoke-virtual {v2}, Lu/d;->getDependents()Ljava/util/HashSet;

    .line 547
    .line 548
    .line 549
    move-result-object v2

    .line 550
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 551
    .line 552
    .line 553
    move-result-object v2

    .line 554
    :cond_1b
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 555
    .line 556
    .line 557
    move-result v4

    .line 558
    if-eqz v4, :cond_1f

    .line 559
    .line 560
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 561
    .line 562
    .line 563
    move-result-object v4

    .line 564
    check-cast v4, Lu/d;

    .line 565
    .line 566
    iget-object v5, v4, Lu/d;->d:Lu/e;

    .line 567
    .line 568
    add-int/lit8 v9, p0, 0x1

    .line 569
    .line 570
    invoke-static {v5}, Lv/h;->a(Lu/e;)Z

    .line 571
    .line 572
    .line 573
    move-result v6

    .line 574
    invoke-virtual {v5}, Lu/e;->isMeasureRequested()Z

    .line 575
    .line 576
    .line 577
    move-result v7

    .line 578
    if-eqz v7, :cond_1c

    .line 579
    .line 580
    if-eqz v6, :cond_1c

    .line 581
    .line 582
    new-instance v7, Lv/b;

    .line 583
    .line 584
    invoke-direct {v7}, Lv/b;-><init>()V

    .line 585
    .line 586
    .line 587
    const/4 v10, 0x0

    .line 588
    invoke-static {v9, v5, v1, v7, v10}, Lu/f;->measure(ILu/e;Lv/c;Lv/b;I)Z

    .line 589
    .line 590
    .line 591
    goto :goto_8

    .line 592
    :cond_1c
    const/4 v10, 0x0

    .line 593
    :goto_8
    invoke-virtual {v5}, Lu/e;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 594
    .line 595
    .line 596
    move-result-object v7

    .line 597
    if-ne v7, v8, :cond_1d

    .line 598
    .line 599
    if-eqz v6, :cond_1b

    .line 600
    .line 601
    :cond_1d
    invoke-virtual {v5}, Lu/e;->isMeasureRequested()Z

    .line 602
    .line 603
    .line 604
    move-result v6

    .line 605
    if-eqz v6, :cond_1e

    .line 606
    .line 607
    goto :goto_7

    .line 608
    :cond_1e
    iget-object v6, v5, Lu/e;->M:Lu/d;

    .line 609
    .line 610
    if-ne v4, v6, :cond_1b

    .line 611
    .line 612
    invoke-virtual {v4}, Lu/d;->getMargin()I

    .line 613
    .line 614
    .line 615
    move-result v4

    .line 616
    add-int/2addr v4, v3

    .line 617
    invoke-virtual {v5, v4}, Lu/e;->setFinalBaseline(I)V

    .line 618
    .line 619
    .line 620
    :try_start_0
    invoke-static {v9, v5, v1}, Lv/h;->g(ILu/e;Lv/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 621
    .line 622
    .line 623
    goto :goto_7

    .line 624
    :catchall_0
    move-exception v0

    .line 625
    throw v0

    .line 626
    :cond_1f
    invoke-virtual {v0}, Lu/e;->markVerticalSolvingPassDone()V

    .line 627
    .line 628
    .line 629
    return-void
.end method

.method public static solvingPass(Lu/f;Lv/c;)V
    .locals 14

    .line 1
    invoke-virtual {p0}, Lu/e;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lu/e;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p0}, Lu/e;->resetFinalResolution()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lu/n;->getChildren()Ljava/util/ArrayList;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    const/4 v4, 0x0

    .line 21
    move v5, v4

    .line 22
    :goto_0
    if-ge v5, v3, :cond_0

    .line 23
    .line 24
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v6

    .line 28
    check-cast v6, Lu/e;

    .line 29
    .line 30
    invoke-virtual {v6}, Lu/e;->resetFinalResolution()V

    .line 31
    .line 32
    .line 33
    add-int/lit8 v5, v5, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {p0}, Lu/f;->isRtl()Z

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 41
    .line 42
    if-ne v0, v6, :cond_1

    .line 43
    .line 44
    invoke-virtual {p0}, Lu/e;->getWidth()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    invoke-virtual {p0, v4, v0}, Lu/e;->setFinalHorizontal(II)V

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    invoke-virtual {p0, v4}, Lu/e;->setFinalLeft(I)V

    .line 53
    .line 54
    .line 55
    :goto_1
    move v0, v4

    .line 56
    move v7, v0

    .line 57
    move v8, v7

    .line 58
    :goto_2
    const/4 v9, 0x1

    .line 59
    const/high16 v10, 0x3f000000    # 0.5f

    .line 60
    .line 61
    const/4 v11, -0x1

    .line 62
    if-ge v0, v3, :cond_7

    .line 63
    .line 64
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v12

    .line 68
    check-cast v12, Lu/e;

    .line 69
    .line 70
    instance-of v13, v12, Lu/i;

    .line 71
    .line 72
    if-eqz v13, :cond_5

    .line 73
    .line 74
    check-cast v12, Lu/i;

    .line 75
    .line 76
    invoke-virtual {v12}, Lu/i;->getOrientation()I

    .line 77
    .line 78
    .line 79
    move-result v13

    .line 80
    if-ne v13, v9, :cond_6

    .line 81
    .line 82
    invoke-virtual {v12}, Lu/i;->getRelativeBegin()I

    .line 83
    .line 84
    .line 85
    move-result v7

    .line 86
    if-eq v7, v11, :cond_2

    .line 87
    .line 88
    invoke-virtual {v12}, Lu/i;->getRelativeBegin()I

    .line 89
    .line 90
    .line 91
    move-result v7

    .line 92
    invoke-virtual {v12, v7}, Lu/i;->setFinalValue(I)V

    .line 93
    .line 94
    .line 95
    goto :goto_3

    .line 96
    :cond_2
    invoke-virtual {v12}, Lu/i;->getRelativeEnd()I

    .line 97
    .line 98
    .line 99
    move-result v7

    .line 100
    if-eq v7, v11, :cond_3

    .line 101
    .line 102
    invoke-virtual {p0}, Lu/e;->isResolvedHorizontally()Z

    .line 103
    .line 104
    .line 105
    move-result v7

    .line 106
    if-eqz v7, :cond_3

    .line 107
    .line 108
    invoke-virtual {p0}, Lu/e;->getWidth()I

    .line 109
    .line 110
    .line 111
    move-result v7

    .line 112
    invoke-virtual {v12}, Lu/i;->getRelativeEnd()I

    .line 113
    .line 114
    .line 115
    move-result v10

    .line 116
    sub-int/2addr v7, v10

    .line 117
    invoke-virtual {v12, v7}, Lu/i;->setFinalValue(I)V

    .line 118
    .line 119
    .line 120
    goto :goto_3

    .line 121
    :cond_3
    invoke-virtual {p0}, Lu/e;->isResolvedHorizontally()Z

    .line 122
    .line 123
    .line 124
    move-result v7

    .line 125
    if-eqz v7, :cond_4

    .line 126
    .line 127
    invoke-virtual {v12}, Lu/i;->getRelativePercent()F

    .line 128
    .line 129
    .line 130
    move-result v7

    .line 131
    invoke-virtual {p0}, Lu/e;->getWidth()I

    .line 132
    .line 133
    .line 134
    move-result v11

    .line 135
    int-to-float v11, v11

    .line 136
    mul-float/2addr v7, v11

    .line 137
    add-float/2addr v7, v10

    .line 138
    float-to-int v7, v7

    .line 139
    invoke-virtual {v12, v7}, Lu/i;->setFinalValue(I)V

    .line 140
    .line 141
    .line 142
    :cond_4
    :goto_3
    move v7, v9

    .line 143
    goto :goto_4

    .line 144
    :cond_5
    instance-of v10, v12, Lu/a;

    .line 145
    .line 146
    if-eqz v10, :cond_6

    .line 147
    .line 148
    check-cast v12, Lu/a;

    .line 149
    .line 150
    invoke-virtual {v12}, Lu/a;->getOrientation()I

    .line 151
    .line 152
    .line 153
    move-result v10

    .line 154
    if-nez v10, :cond_6

    .line 155
    .line 156
    move v8, v9

    .line 157
    :cond_6
    :goto_4
    add-int/lit8 v0, v0, 0x1

    .line 158
    .line 159
    goto :goto_2

    .line 160
    :cond_7
    if-eqz v7, :cond_9

    .line 161
    .line 162
    move v0, v4

    .line 163
    :goto_5
    if-ge v0, v3, :cond_9

    .line 164
    .line 165
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v7

    .line 169
    check-cast v7, Lu/e;

    .line 170
    .line 171
    instance-of v12, v7, Lu/i;

    .line 172
    .line 173
    if-eqz v12, :cond_8

    .line 174
    .line 175
    check-cast v7, Lu/i;

    .line 176
    .line 177
    invoke-virtual {v7}, Lu/i;->getOrientation()I

    .line 178
    .line 179
    .line 180
    move-result v12

    .line 181
    if-ne v12, v9, :cond_8

    .line 182
    .line 183
    invoke-static {v4, v7, p1, v5}, Lv/h;->b(ILu/e;Lv/c;Z)V

    .line 184
    .line 185
    .line 186
    :cond_8
    add-int/lit8 v0, v0, 0x1

    .line 187
    .line 188
    goto :goto_5

    .line 189
    :cond_9
    invoke-static {v4, p0, p1, v5}, Lv/h;->b(ILu/e;Lv/c;Z)V

    .line 190
    .line 191
    .line 192
    if-eqz v8, :cond_b

    .line 193
    .line 194
    move v0, v4

    .line 195
    :goto_6
    if-ge v0, v3, :cond_b

    .line 196
    .line 197
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v7

    .line 201
    check-cast v7, Lu/e;

    .line 202
    .line 203
    instance-of v8, v7, Lu/a;

    .line 204
    .line 205
    if-eqz v8, :cond_a

    .line 206
    .line 207
    check-cast v7, Lu/a;

    .line 208
    .line 209
    invoke-virtual {v7}, Lu/a;->getOrientation()I

    .line 210
    .line 211
    .line 212
    move-result v8

    .line 213
    if-nez v8, :cond_a

    .line 214
    .line 215
    invoke-virtual {v7}, Lu/a;->allSolved()Z

    .line 216
    .line 217
    .line 218
    move-result v8

    .line 219
    if-eqz v8, :cond_a

    .line 220
    .line 221
    invoke-static {v9, v7, p1, v5}, Lv/h;->b(ILu/e;Lv/c;Z)V

    .line 222
    .line 223
    .line 224
    :cond_a
    add-int/lit8 v0, v0, 0x1

    .line 225
    .line 226
    goto :goto_6

    .line 227
    :cond_b
    if-ne v1, v6, :cond_c

    .line 228
    .line 229
    invoke-virtual {p0}, Lu/e;->getHeight()I

    .line 230
    .line 231
    .line 232
    move-result v0

    .line 233
    invoke-virtual {p0, v4, v0}, Lu/e;->setFinalVertical(II)V

    .line 234
    .line 235
    .line 236
    goto :goto_7

    .line 237
    :cond_c
    invoke-virtual {p0, v4}, Lu/e;->setFinalTop(I)V

    .line 238
    .line 239
    .line 240
    :goto_7
    move v0, v4

    .line 241
    move v1, v0

    .line 242
    move v6, v1

    .line 243
    :goto_8
    if-ge v0, v3, :cond_12

    .line 244
    .line 245
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object v7

    .line 249
    check-cast v7, Lu/e;

    .line 250
    .line 251
    instance-of v8, v7, Lu/i;

    .line 252
    .line 253
    if-eqz v8, :cond_10

    .line 254
    .line 255
    check-cast v7, Lu/i;

    .line 256
    .line 257
    invoke-virtual {v7}, Lu/i;->getOrientation()I

    .line 258
    .line 259
    .line 260
    move-result v8

    .line 261
    if-nez v8, :cond_11

    .line 262
    .line 263
    invoke-virtual {v7}, Lu/i;->getRelativeBegin()I

    .line 264
    .line 265
    .line 266
    move-result v1

    .line 267
    if-eq v1, v11, :cond_d

    .line 268
    .line 269
    invoke-virtual {v7}, Lu/i;->getRelativeBegin()I

    .line 270
    .line 271
    .line 272
    move-result v1

    .line 273
    invoke-virtual {v7, v1}, Lu/i;->setFinalValue(I)V

    .line 274
    .line 275
    .line 276
    goto :goto_9

    .line 277
    :cond_d
    invoke-virtual {v7}, Lu/i;->getRelativeEnd()I

    .line 278
    .line 279
    .line 280
    move-result v1

    .line 281
    if-eq v1, v11, :cond_e

    .line 282
    .line 283
    invoke-virtual {p0}, Lu/e;->isResolvedVertically()Z

    .line 284
    .line 285
    .line 286
    move-result v1

    .line 287
    if-eqz v1, :cond_e

    .line 288
    .line 289
    invoke-virtual {p0}, Lu/e;->getHeight()I

    .line 290
    .line 291
    .line 292
    move-result v1

    .line 293
    invoke-virtual {v7}, Lu/i;->getRelativeEnd()I

    .line 294
    .line 295
    .line 296
    move-result v8

    .line 297
    sub-int/2addr v1, v8

    .line 298
    invoke-virtual {v7, v1}, Lu/i;->setFinalValue(I)V

    .line 299
    .line 300
    .line 301
    goto :goto_9

    .line 302
    :cond_e
    invoke-virtual {p0}, Lu/e;->isResolvedVertically()Z

    .line 303
    .line 304
    .line 305
    move-result v1

    .line 306
    if-eqz v1, :cond_f

    .line 307
    .line 308
    invoke-virtual {v7}, Lu/i;->getRelativePercent()F

    .line 309
    .line 310
    .line 311
    move-result v1

    .line 312
    invoke-virtual {p0}, Lu/e;->getHeight()I

    .line 313
    .line 314
    .line 315
    move-result v8

    .line 316
    int-to-float v8, v8

    .line 317
    mul-float/2addr v1, v8

    .line 318
    add-float/2addr v1, v10

    .line 319
    float-to-int v1, v1

    .line 320
    invoke-virtual {v7, v1}, Lu/i;->setFinalValue(I)V

    .line 321
    .line 322
    .line 323
    :cond_f
    :goto_9
    move v1, v9

    .line 324
    goto :goto_a

    .line 325
    :cond_10
    instance-of v8, v7, Lu/a;

    .line 326
    .line 327
    if-eqz v8, :cond_11

    .line 328
    .line 329
    check-cast v7, Lu/a;

    .line 330
    .line 331
    invoke-virtual {v7}, Lu/a;->getOrientation()I

    .line 332
    .line 333
    .line 334
    move-result v7

    .line 335
    if-ne v7, v9, :cond_11

    .line 336
    .line 337
    move v6, v9

    .line 338
    :cond_11
    :goto_a
    add-int/lit8 v0, v0, 0x1

    .line 339
    .line 340
    goto :goto_8

    .line 341
    :cond_12
    if-eqz v1, :cond_14

    .line 342
    .line 343
    move v0, v4

    .line 344
    :goto_b
    if-ge v0, v3, :cond_14

    .line 345
    .line 346
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 347
    .line 348
    .line 349
    move-result-object v1

    .line 350
    check-cast v1, Lu/e;

    .line 351
    .line 352
    instance-of v7, v1, Lu/i;

    .line 353
    .line 354
    if-eqz v7, :cond_13

    .line 355
    .line 356
    check-cast v1, Lu/i;

    .line 357
    .line 358
    invoke-virtual {v1}, Lu/i;->getOrientation()I

    .line 359
    .line 360
    .line 361
    move-result v7

    .line 362
    if-nez v7, :cond_13

    .line 363
    .line 364
    invoke-static {v9, v1, p1}, Lv/h;->g(ILu/e;Lv/c;)V

    .line 365
    .line 366
    .line 367
    :cond_13
    add-int/lit8 v0, v0, 0x1

    .line 368
    .line 369
    goto :goto_b

    .line 370
    :cond_14
    invoke-static {v4, p0, p1}, Lv/h;->g(ILu/e;Lv/c;)V

    .line 371
    .line 372
    .line 373
    if-eqz v6, :cond_16

    .line 374
    .line 375
    move p0, v4

    .line 376
    :goto_c
    if-ge p0, v3, :cond_16

    .line 377
    .line 378
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 379
    .line 380
    .line 381
    move-result-object v0

    .line 382
    check-cast v0, Lu/e;

    .line 383
    .line 384
    instance-of v1, v0, Lu/a;

    .line 385
    .line 386
    if-eqz v1, :cond_15

    .line 387
    .line 388
    check-cast v0, Lu/a;

    .line 389
    .line 390
    invoke-virtual {v0}, Lu/a;->getOrientation()I

    .line 391
    .line 392
    .line 393
    move-result v1

    .line 394
    if-ne v1, v9, :cond_15

    .line 395
    .line 396
    invoke-virtual {v0}, Lu/a;->allSolved()Z

    .line 397
    .line 398
    .line 399
    move-result v1

    .line 400
    if-eqz v1, :cond_15

    .line 401
    .line 402
    invoke-static {v9, v0, p1}, Lv/h;->g(ILu/e;Lv/c;)V

    .line 403
    .line 404
    .line 405
    :cond_15
    add-int/lit8 p0, p0, 0x1

    .line 406
    .line 407
    goto :goto_c

    .line 408
    :cond_16
    move p0, v4

    .line 409
    :goto_d
    if-ge p0, v3, :cond_1a

    .line 410
    .line 411
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 412
    .line 413
    .line 414
    move-result-object v0

    .line 415
    check-cast v0, Lu/e;

    .line 416
    .line 417
    invoke-virtual {v0}, Lu/e;->isMeasureRequested()Z

    .line 418
    .line 419
    .line 420
    move-result v1

    .line 421
    if-eqz v1, :cond_19

    .line 422
    .line 423
    invoke-static {v0}, Lv/h;->a(Lu/e;)Z

    .line 424
    .line 425
    .line 426
    move-result v1

    .line 427
    if-eqz v1, :cond_19

    .line 428
    .line 429
    sget-object v1, Lv/h;->a:Lv/b;

    .line 430
    .line 431
    invoke-static {v4, v0, p1, v1, v4}, Lu/f;->measure(ILu/e;Lv/c;Lv/b;I)Z

    .line 432
    .line 433
    .line 434
    instance-of v1, v0, Lu/i;

    .line 435
    .line 436
    if-eqz v1, :cond_18

    .line 437
    .line 438
    move-object v1, v0

    .line 439
    check-cast v1, Lu/i;

    .line 440
    .line 441
    invoke-virtual {v1}, Lu/i;->getOrientation()I

    .line 442
    .line 443
    .line 444
    move-result v1

    .line 445
    if-nez v1, :cond_17

    .line 446
    .line 447
    invoke-static {v4, v0, p1}, Lv/h;->g(ILu/e;Lv/c;)V

    .line 448
    .line 449
    .line 450
    goto :goto_e

    .line 451
    :cond_17
    invoke-static {v4, v0, p1, v5}, Lv/h;->b(ILu/e;Lv/c;Z)V

    .line 452
    .line 453
    .line 454
    goto :goto_e

    .line 455
    :cond_18
    invoke-static {v4, v0, p1, v5}, Lv/h;->b(ILu/e;Lv/c;Z)V

    .line 456
    .line 457
    .line 458
    invoke-static {v4, v0, p1}, Lv/h;->g(ILu/e;Lv/c;)V

    .line 459
    .line 460
    .line 461
    :cond_19
    :goto_e
    add-int/lit8 p0, p0, 0x1

    .line 462
    .line 463
    goto :goto_d

    .line 464
    :cond_1a
    return-void
.end method
