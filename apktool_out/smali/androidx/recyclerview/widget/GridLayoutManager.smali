.class public Landroidx/recyclerview/widget/GridLayoutManager;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "SourceFile"


# instance fields
.field public E:Z

.field public F:I

.field public G:[I

.field public H:[Landroid/view/View;

.field public final I:Landroid/util/SparseIntArray;

.field public final J:Landroid/util/SparseIntArray;

.field public final K:Lm1/z;

.field public final L:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->E:Z

    const/4 p1, -0x1

    .line 12
    iput p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->F:I

    .line 13
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->I:Landroid/util/SparseIntArray;

    .line 14
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->J:Landroid/util/SparseIntArray;

    .line 15
    new-instance p1, Lm1/z;

    invoke-direct {p1}, Lm1/z;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->K:Lm1/z;

    .line 16
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->L:Landroid/graphics/Rect;

    .line 17
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIZ)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p3, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    const/4 p1, 0x0

    .line 19
    iput-boolean p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->E:Z

    const/4 p1, -0x1

    .line 20
    iput p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->F:I

    .line 21
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->I:Landroid/util/SparseIntArray;

    .line 22
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->J:Landroid/util/SparseIntArray;

    .line 23
    new-instance p1, Lm1/z;

    invoke-direct {p1}, Lm1/z;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->K:Lm1/z;

    .line 24
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->L:Landroid/graphics/Rect;

    .line 25
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->E:Z

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->F:I

    .line 4
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->I:Landroid/util/SparseIntArray;

    .line 5
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->J:Landroid/util/SparseIntArray;

    .line 6
    new-instance v0, Lm1/z;

    invoke-direct {v0}, Lm1/z;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->K:Lm1/z;

    .line 7
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->L:Landroid/graphics/Rect;

    .line 8
    invoke-static {p1, p2, p3, p4}, Lm1/i0;->getProperties(Landroid/content/Context;Landroid/util/AttributeSet;II)Lm1/h0;

    move-result-object p1

    .line 9
    iget p1, p1, Lm1/h0;->b:I

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    return-void
.end method


# virtual methods
.method public final C(Lm1/p0;Lm1/x0;Lm1/F;Lm1/E;)V
    .locals 17

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
    move-object/from16 v3, p3

    .line 8
    .line 9
    move-object/from16 v6, p4

    .line 10
    .line 11
    iget-object v4, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Lm1/L;

    .line 12
    .line 13
    invoke-virtual {v4}, Lm1/L;->getModeInOther()I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    const/4 v7, 0x1

    .line 18
    const/high16 v8, 0x40000000    # 2.0f

    .line 19
    .line 20
    if-eq v4, v8, :cond_0

    .line 21
    .line 22
    move v9, v7

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v9, 0x0

    .line 25
    :goto_0
    invoke-virtual {v0}, Lm1/i0;->getChildCount()I

    .line 26
    .line 27
    .line 28
    move-result v10

    .line 29
    if-lez v10, :cond_1

    .line 30
    .line 31
    iget-object v10, v0, Landroidx/recyclerview/widget/GridLayoutManager;->G:[I

    .line 32
    .line 33
    iget v11, v0, Landroidx/recyclerview/widget/GridLayoutManager;->F:I

    .line 34
    .line 35
    aget v10, v10, v11

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    const/4 v10, 0x0

    .line 39
    :goto_1
    if-eqz v9, :cond_2

    .line 40
    .line 41
    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->S()V

    .line 42
    .line 43
    .line 44
    :cond_2
    iget v11, v3, Lm1/F;->e:I

    .line 45
    .line 46
    if-ne v11, v7, :cond_3

    .line 47
    .line 48
    move v11, v7

    .line 49
    goto :goto_2

    .line 50
    :cond_3
    const/4 v11, 0x0

    .line 51
    :goto_2
    iget v12, v0, Landroidx/recyclerview/widget/GridLayoutManager;->F:I

    .line 52
    .line 53
    if-nez v11, :cond_4

    .line 54
    .line 55
    iget v12, v3, Lm1/F;->d:I

    .line 56
    .line 57
    invoke-virtual {v0, v12, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->P(ILm1/p0;Lm1/x0;)I

    .line 58
    .line 59
    .line 60
    move-result v12

    .line 61
    iget v13, v3, Lm1/F;->d:I

    .line 62
    .line 63
    invoke-virtual {v0, v13, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->Q(ILm1/p0;Lm1/x0;)I

    .line 64
    .line 65
    .line 66
    move-result v13

    .line 67
    add-int/2addr v12, v13

    .line 68
    :cond_4
    const/4 v13, 0x0

    .line 69
    :goto_3
    iget v14, v0, Landroidx/recyclerview/widget/GridLayoutManager;->F:I

    .line 70
    .line 71
    if-ge v13, v14, :cond_8

    .line 72
    .line 73
    iget v14, v3, Lm1/F;->d:I

    .line 74
    .line 75
    if-ltz v14, :cond_8

    .line 76
    .line 77
    invoke-virtual {v2}, Lm1/x0;->getItemCount()I

    .line 78
    .line 79
    .line 80
    move-result v15

    .line 81
    if-ge v14, v15, :cond_8

    .line 82
    .line 83
    if-lez v12, :cond_8

    .line 84
    .line 85
    iget v14, v3, Lm1/F;->d:I

    .line 86
    .line 87
    invoke-virtual {v0, v14, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->Q(ILm1/p0;Lm1/x0;)I

    .line 88
    .line 89
    .line 90
    move-result v15

    .line 91
    iget v8, v0, Landroidx/recyclerview/widget/GridLayoutManager;->F:I

    .line 92
    .line 93
    if-gt v15, v8, :cond_7

    .line 94
    .line 95
    sub-int/2addr v12, v15

    .line 96
    if-gez v12, :cond_5

    .line 97
    .line 98
    goto :goto_4

    .line 99
    :cond_5
    invoke-virtual {v3, v1}, Lm1/F;->a(Lm1/p0;)Landroid/view/View;

    .line 100
    .line 101
    .line 102
    move-result-object v8

    .line 103
    if-nez v8, :cond_6

    .line 104
    .line 105
    goto :goto_4

    .line 106
    :cond_6
    iget-object v14, v0, Landroidx/recyclerview/widget/GridLayoutManager;->H:[Landroid/view/View;

    .line 107
    .line 108
    aput-object v8, v14, v13

    .line 109
    .line 110
    add-int/lit8 v13, v13, 0x1

    .line 111
    .line 112
    const/high16 v8, 0x40000000    # 2.0f

    .line 113
    .line 114
    goto :goto_3

    .line 115
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 116
    .line 117
    const-string v2, "Item at position "

    .line 118
    .line 119
    const-string v3, " requires "

    .line 120
    .line 121
    const-string v4, " spans but GridLayoutManager has only "

    .line 122
    .line 123
    invoke-static {v14, v15, v2, v3, v4}, LA/i;->p(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    iget v3, v0, Landroidx/recyclerview/widget/GridLayoutManager;->F:I

    .line 128
    .line 129
    const-string v4, " spans."

    .line 130
    .line 131
    invoke-static {v2, v3, v4}, LA/i;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    throw v1

    .line 139
    :cond_8
    :goto_4
    if-nez v13, :cond_9

    .line 140
    .line 141
    iput-boolean v7, v6, Lm1/E;->b:Z

    .line 142
    .line 143
    return-void

    .line 144
    :cond_9
    if-eqz v11, :cond_a

    .line 145
    .line 146
    move v15, v7

    .line 147
    move v14, v13

    .line 148
    const/4 v12, 0x0

    .line 149
    goto :goto_5

    .line 150
    :cond_a
    add-int/lit8 v12, v13, -0x1

    .line 151
    .line 152
    const/4 v14, -0x1

    .line 153
    const/4 v15, -0x1

    .line 154
    :goto_5
    const/4 v8, 0x0

    .line 155
    :goto_6
    if-eq v12, v14, :cond_b

    .line 156
    .line 157
    iget-object v7, v0, Landroidx/recyclerview/widget/GridLayoutManager;->H:[Landroid/view/View;

    .line 158
    .line 159
    aget-object v7, v7, v12

    .line 160
    .line 161
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 162
    .line 163
    .line 164
    move-result-object v16

    .line 165
    move-object/from16 v5, v16

    .line 166
    .line 167
    check-cast v5, Lm1/A;

    .line 168
    .line 169
    invoke-virtual {v0, v7}, Lm1/i0;->getPosition(Landroid/view/View;)I

    .line 170
    .line 171
    .line 172
    move-result v7

    .line 173
    invoke-virtual {v0, v7, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->Q(ILm1/p0;Lm1/x0;)I

    .line 174
    .line 175
    .line 176
    move-result v7

    .line 177
    iput v7, v5, Lm1/A;->f:I

    .line 178
    .line 179
    iput v8, v5, Lm1/A;->e:I

    .line 180
    .line 181
    add-int/2addr v8, v7

    .line 182
    add-int/2addr v12, v15

    .line 183
    const/4 v7, 0x1

    .line 184
    goto :goto_6

    .line 185
    :cond_b
    const/4 v1, 0x0

    .line 186
    const/4 v2, 0x0

    .line 187
    const/4 v5, 0x0

    .line 188
    :goto_7
    if-ge v2, v13, :cond_11

    .line 189
    .line 190
    iget-object v7, v0, Landroidx/recyclerview/widget/GridLayoutManager;->H:[Landroid/view/View;

    .line 191
    .line 192
    aget-object v7, v7, v2

    .line 193
    .line 194
    iget-object v8, v3, Lm1/F;->k:Ljava/util/List;

    .line 195
    .line 196
    if-nez v8, :cond_d

    .line 197
    .line 198
    if-eqz v11, :cond_c

    .line 199
    .line 200
    invoke-virtual {v0, v7}, Lm1/i0;->addView(Landroid/view/View;)V

    .line 201
    .line 202
    .line 203
    const/4 v8, 0x0

    .line 204
    goto :goto_8

    .line 205
    :cond_c
    const/4 v8, 0x0

    .line 206
    invoke-virtual {v0, v7, v8}, Lm1/i0;->addView(Landroid/view/View;I)V

    .line 207
    .line 208
    .line 209
    goto :goto_8

    .line 210
    :cond_d
    const/4 v8, 0x0

    .line 211
    if-eqz v11, :cond_e

    .line 212
    .line 213
    invoke-virtual {v0, v7}, Lm1/i0;->addDisappearingView(Landroid/view/View;)V

    .line 214
    .line 215
    .line 216
    goto :goto_8

    .line 217
    :cond_e
    invoke-virtual {v0, v7, v8}, Lm1/i0;->addDisappearingView(Landroid/view/View;I)V

    .line 218
    .line 219
    .line 220
    :goto_8
    iget-object v12, v0, Landroidx/recyclerview/widget/GridLayoutManager;->L:Landroid/graphics/Rect;

    .line 221
    .line 222
    invoke-virtual {v0, v7, v12}, Lm1/i0;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v0, v7, v8, v4}, Landroidx/recyclerview/widget/GridLayoutManager;->R(Landroid/view/View;ZI)V

    .line 226
    .line 227
    .line 228
    iget-object v8, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Lm1/L;

    .line 229
    .line 230
    invoke-virtual {v8, v7}, Lm1/L;->getDecoratedMeasurement(Landroid/view/View;)I

    .line 231
    .line 232
    .line 233
    move-result v8

    .line 234
    if-le v8, v5, :cond_f

    .line 235
    .line 236
    move v5, v8

    .line 237
    :cond_f
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 238
    .line 239
    .line 240
    move-result-object v8

    .line 241
    check-cast v8, Lm1/A;

    .line 242
    .line 243
    iget-object v12, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Lm1/L;

    .line 244
    .line 245
    invoke-virtual {v12, v7}, Lm1/L;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    .line 246
    .line 247
    .line 248
    move-result v7

    .line 249
    int-to-float v7, v7

    .line 250
    const/high16 v12, 0x3f800000    # 1.0f

    .line 251
    .line 252
    mul-float/2addr v7, v12

    .line 253
    iget v8, v8, Lm1/A;->f:I

    .line 254
    .line 255
    int-to-float v8, v8

    .line 256
    div-float/2addr v7, v8

    .line 257
    cmpl-float v8, v7, v1

    .line 258
    .line 259
    if-lez v8, :cond_10

    .line 260
    .line 261
    move v1, v7

    .line 262
    :cond_10
    add-int/lit8 v2, v2, 0x1

    .line 263
    .line 264
    goto :goto_7

    .line 265
    :cond_11
    if-eqz v9, :cond_13

    .line 266
    .line 267
    iget v2, v0, Landroidx/recyclerview/widget/GridLayoutManager;->F:I

    .line 268
    .line 269
    int-to-float v2, v2

    .line 270
    mul-float/2addr v1, v2

    .line 271
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 272
    .line 273
    .line 274
    move-result v1

    .line 275
    invoke-static {v1, v10}, Ljava/lang/Math;->max(II)I

    .line 276
    .line 277
    .line 278
    move-result v1

    .line 279
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->L(I)V

    .line 280
    .line 281
    .line 282
    const/4 v5, 0x0

    .line 283
    const/4 v8, 0x0

    .line 284
    :goto_9
    if-ge v8, v13, :cond_13

    .line 285
    .line 286
    iget-object v1, v0, Landroidx/recyclerview/widget/GridLayoutManager;->H:[Landroid/view/View;

    .line 287
    .line 288
    aget-object v1, v1, v8

    .line 289
    .line 290
    const/4 v2, 0x1

    .line 291
    const/high16 v4, 0x40000000    # 2.0f

    .line 292
    .line 293
    invoke-virtual {v0, v1, v2, v4}, Landroidx/recyclerview/widget/GridLayoutManager;->R(Landroid/view/View;ZI)V

    .line 294
    .line 295
    .line 296
    iget-object v2, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Lm1/L;

    .line 297
    .line 298
    invoke-virtual {v2, v1}, Lm1/L;->getDecoratedMeasurement(Landroid/view/View;)I

    .line 299
    .line 300
    .line 301
    move-result v1

    .line 302
    if-le v1, v5, :cond_12

    .line 303
    .line 304
    move v5, v1

    .line 305
    :cond_12
    add-int/lit8 v8, v8, 0x1

    .line 306
    .line 307
    goto :goto_9

    .line 308
    :cond_13
    const/4 v8, 0x0

    .line 309
    :goto_a
    if-ge v8, v13, :cond_17

    .line 310
    .line 311
    iget-object v1, v0, Landroidx/recyclerview/widget/GridLayoutManager;->H:[Landroid/view/View;

    .line 312
    .line 313
    aget-object v1, v1, v8

    .line 314
    .line 315
    iget-object v2, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Lm1/L;

    .line 316
    .line 317
    invoke-virtual {v2, v1}, Lm1/L;->getDecoratedMeasurement(Landroid/view/View;)I

    .line 318
    .line 319
    .line 320
    move-result v2

    .line 321
    if-eq v2, v5, :cond_15

    .line 322
    .line 323
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 324
    .line 325
    .line 326
    move-result-object v2

    .line 327
    check-cast v2, Lm1/A;

    .line 328
    .line 329
    iget-object v4, v2, Lm1/j0;->b:Landroid/graphics/Rect;

    .line 330
    .line 331
    iget v7, v4, Landroid/graphics/Rect;->top:I

    .line 332
    .line 333
    iget v9, v4, Landroid/graphics/Rect;->bottom:I

    .line 334
    .line 335
    add-int/2addr v7, v9

    .line 336
    iget v9, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 337
    .line 338
    add-int/2addr v7, v9

    .line 339
    iget v9, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 340
    .line 341
    add-int/2addr v7, v9

    .line 342
    iget v9, v4, Landroid/graphics/Rect;->left:I

    .line 343
    .line 344
    iget v4, v4, Landroid/graphics/Rect;->right:I

    .line 345
    .line 346
    add-int/2addr v9, v4

    .line 347
    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 348
    .line 349
    add-int/2addr v9, v4

    .line 350
    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 351
    .line 352
    add-int/2addr v9, v4

    .line 353
    iget v4, v2, Lm1/A;->e:I

    .line 354
    .line 355
    iget v10, v2, Lm1/A;->f:I

    .line 356
    .line 357
    invoke-virtual {v0, v4, v10}, Landroidx/recyclerview/widget/GridLayoutManager;->N(II)I

    .line 358
    .line 359
    .line 360
    move-result v4

    .line 361
    iget v10, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    .line 362
    .line 363
    const/4 v11, 0x1

    .line 364
    if-ne v10, v11, :cond_14

    .line 365
    .line 366
    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 367
    .line 368
    const/4 v10, 0x0

    .line 369
    const/high16 v11, 0x40000000    # 2.0f

    .line 370
    .line 371
    invoke-static {v4, v11, v9, v2, v10}, Lm1/i0;->getChildMeasureSpec(IIIIZ)I

    .line 372
    .line 373
    .line 374
    move-result v2

    .line 375
    sub-int v4, v5, v7

    .line 376
    .line 377
    invoke-static {v4, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 378
    .line 379
    .line 380
    move-result v4

    .line 381
    goto :goto_b

    .line 382
    :cond_14
    const/4 v10, 0x0

    .line 383
    const/high16 v11, 0x40000000    # 2.0f

    .line 384
    .line 385
    sub-int v9, v5, v9

    .line 386
    .line 387
    invoke-static {v9, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 388
    .line 389
    .line 390
    move-result v9

    .line 391
    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 392
    .line 393
    invoke-static {v4, v11, v7, v2, v10}, Lm1/i0;->getChildMeasureSpec(IIIIZ)I

    .line 394
    .line 395
    .line 396
    move-result v4

    .line 397
    move v2, v9

    .line 398
    :goto_b
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 399
    .line 400
    .line 401
    move-result-object v7

    .line 402
    check-cast v7, Lm1/j0;

    .line 403
    .line 404
    invoke-virtual {v0, v1, v2, v4, v7}, Lm1/i0;->l(Landroid/view/View;IILm1/j0;)Z

    .line 405
    .line 406
    .line 407
    move-result v7

    .line 408
    if-eqz v7, :cond_16

    .line 409
    .line 410
    invoke-virtual {v1, v2, v4}, Landroid/view/View;->measure(II)V

    .line 411
    .line 412
    .line 413
    goto :goto_c

    .line 414
    :cond_15
    const/4 v10, 0x0

    .line 415
    const/high16 v11, 0x40000000    # 2.0f

    .line 416
    .line 417
    :cond_16
    :goto_c
    add-int/lit8 v8, v8, 0x1

    .line 418
    .line 419
    goto :goto_a

    .line 420
    :cond_17
    const/4 v10, 0x0

    .line 421
    iput v5, v6, Lm1/E;->a:I

    .line 422
    .line 423
    iget v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    .line 424
    .line 425
    const/4 v11, 0x1

    .line 426
    if-ne v1, v11, :cond_19

    .line 427
    .line 428
    iget v1, v3, Lm1/F;->f:I

    .line 429
    .line 430
    const/4 v2, -0x1

    .line 431
    if-ne v1, v2, :cond_18

    .line 432
    .line 433
    iget v8, v3, Lm1/F;->b:I

    .line 434
    .line 435
    sub-int v1, v8, v5

    .line 436
    .line 437
    move v3, v1

    .line 438
    move v1, v10

    .line 439
    move v2, v1

    .line 440
    goto :goto_e

    .line 441
    :cond_18
    iget v8, v3, Lm1/F;->b:I

    .line 442
    .line 443
    add-int v1, v8, v5

    .line 444
    .line 445
    move v3, v8

    .line 446
    move v2, v10

    .line 447
    move v8, v1

    .line 448
    move v1, v2

    .line 449
    goto :goto_e

    .line 450
    :cond_19
    const/4 v2, -0x1

    .line 451
    iget v1, v3, Lm1/F;->f:I

    .line 452
    .line 453
    if-ne v1, v2, :cond_1a

    .line 454
    .line 455
    iget v8, v3, Lm1/F;->b:I

    .line 456
    .line 457
    sub-int v1, v8, v5

    .line 458
    .line 459
    move v2, v8

    .line 460
    :goto_d
    move v3, v10

    .line 461
    move v8, v3

    .line 462
    goto :goto_e

    .line 463
    :cond_1a
    iget v8, v3, Lm1/F;->b:I

    .line 464
    .line 465
    add-int v1, v8, v5

    .line 466
    .line 467
    move v2, v1

    .line 468
    move v1, v8

    .line 469
    goto :goto_d

    .line 470
    :goto_e
    if-ge v10, v13, :cond_1f

    .line 471
    .line 472
    iget-object v4, v0, Landroidx/recyclerview/widget/GridLayoutManager;->H:[Landroid/view/View;

    .line 473
    .line 474
    aget-object v4, v4, v10

    .line 475
    .line 476
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 477
    .line 478
    .line 479
    move-result-object v5

    .line 480
    move-object v7, v5

    .line 481
    check-cast v7, Lm1/A;

    .line 482
    .line 483
    iget v5, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    .line 484
    .line 485
    const/4 v11, 0x1

    .line 486
    if-ne v5, v11, :cond_1c

    .line 487
    .line 488
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->isLayoutRTL()Z

    .line 489
    .line 490
    .line 491
    move-result v1

    .line 492
    if-eqz v1, :cond_1b

    .line 493
    .line 494
    invoke-virtual {v0}, Lm1/i0;->getPaddingLeft()I

    .line 495
    .line 496
    .line 497
    move-result v1

    .line 498
    iget-object v2, v0, Landroidx/recyclerview/widget/GridLayoutManager;->G:[I

    .line 499
    .line 500
    iget v5, v0, Landroidx/recyclerview/widget/GridLayoutManager;->F:I

    .line 501
    .line 502
    iget v9, v7, Lm1/A;->e:I

    .line 503
    .line 504
    sub-int/2addr v5, v9

    .line 505
    aget v2, v2, v5

    .line 506
    .line 507
    add-int/2addr v2, v1

    .line 508
    iget-object v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Lm1/L;

    .line 509
    .line 510
    invoke-virtual {v1, v4}, Lm1/L;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    .line 511
    .line 512
    .line 513
    move-result v1

    .line 514
    sub-int v1, v2, v1

    .line 515
    .line 516
    :goto_f
    move v5, v2

    .line 517
    move v2, v1

    .line 518
    move-object v1, v4

    .line 519
    move v4, v5

    .line 520
    move v5, v8

    .line 521
    goto :goto_10

    .line 522
    :cond_1b
    invoke-virtual {v0}, Lm1/i0;->getPaddingLeft()I

    .line 523
    .line 524
    .line 525
    move-result v1

    .line 526
    iget-object v2, v0, Landroidx/recyclerview/widget/GridLayoutManager;->G:[I

    .line 527
    .line 528
    iget v5, v7, Lm1/A;->e:I

    .line 529
    .line 530
    aget v2, v2, v5

    .line 531
    .line 532
    add-int/2addr v1, v2

    .line 533
    iget-object v2, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Lm1/L;

    .line 534
    .line 535
    invoke-virtual {v2, v4}, Lm1/L;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    .line 536
    .line 537
    .line 538
    move-result v2

    .line 539
    add-int/2addr v2, v1

    .line 540
    goto :goto_f

    .line 541
    :cond_1c
    invoke-virtual {v0}, Lm1/i0;->getPaddingTop()I

    .line 542
    .line 543
    .line 544
    move-result v3

    .line 545
    iget-object v5, v0, Landroidx/recyclerview/widget/GridLayoutManager;->G:[I

    .line 546
    .line 547
    iget v8, v7, Lm1/A;->e:I

    .line 548
    .line 549
    aget v5, v5, v8

    .line 550
    .line 551
    add-int/2addr v3, v5

    .line 552
    iget-object v5, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Lm1/L;

    .line 553
    .line 554
    invoke-virtual {v5, v4}, Lm1/L;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    .line 555
    .line 556
    .line 557
    move-result v5

    .line 558
    add-int v8, v5, v3

    .line 559
    .line 560
    goto :goto_f

    .line 561
    :goto_10
    invoke-virtual/range {v0 .. v5}, Lm1/i0;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    .line 562
    .line 563
    .line 564
    move v8, v4

    .line 565
    move-object v4, v1

    .line 566
    move v1, v2

    .line 567
    move v2, v8

    .line 568
    move v8, v5

    .line 569
    invoke-virtual {v7}, Lm1/j0;->isItemRemoved()Z

    .line 570
    .line 571
    .line 572
    move-result v5

    .line 573
    if-nez v5, :cond_1d

    .line 574
    .line 575
    invoke-virtual {v7}, Lm1/j0;->isItemChanged()Z

    .line 576
    .line 577
    .line 578
    move-result v5

    .line 579
    if-eqz v5, :cond_1e

    .line 580
    .line 581
    :cond_1d
    const/4 v11, 0x1

    .line 582
    goto :goto_11

    .line 583
    :cond_1e
    const/4 v11, 0x1

    .line 584
    goto :goto_12

    .line 585
    :goto_11
    iput-boolean v11, v6, Lm1/E;->c:Z

    .line 586
    .line 587
    :goto_12
    iget-boolean v5, v6, Lm1/E;->d:Z

    .line 588
    .line 589
    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    .line 590
    .line 591
    .line 592
    move-result v4

    .line 593
    or-int/2addr v4, v5

    .line 594
    iput-boolean v4, v6, Lm1/E;->d:Z

    .line 595
    .line 596
    add-int/lit8 v10, v10, 0x1

    .line 597
    .line 598
    goto/16 :goto_e

    .line 599
    .line 600
    :cond_1f
    iget-object v1, v0, Landroidx/recyclerview/widget/GridLayoutManager;->H:[Landroid/view/View;

    .line 601
    .line 602
    const/4 v2, 0x0

    .line 603
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 604
    .line 605
    .line 606
    return-void
.end method

.method public final D(Lm1/p0;Lm1/x0;Lm1/D;I)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->S()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Lm1/x0;->getItemCount()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-lez v0, :cond_3

    .line 9
    .line 10
    invoke-virtual {p2}, Lm1/x0;->isPreLayout()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_3

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    if-ne p4, v0, :cond_0

    .line 18
    .line 19
    move p4, v0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p4, 0x0

    .line 22
    :goto_0
    iget v1, p3, Lm1/D;->b:I

    .line 23
    .line 24
    invoke-virtual {p0, v1, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->P(ILm1/p0;Lm1/x0;)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz p4, :cond_1

    .line 29
    .line 30
    :goto_1
    if-lez v1, :cond_3

    .line 31
    .line 32
    iget p4, p3, Lm1/D;->b:I

    .line 33
    .line 34
    if-lez p4, :cond_3

    .line 35
    .line 36
    add-int/lit8 p4, p4, -0x1

    .line 37
    .line 38
    iput p4, p3, Lm1/D;->b:I

    .line 39
    .line 40
    invoke-virtual {p0, p4, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->P(ILm1/p0;Lm1/x0;)I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    invoke-virtual {p2}, Lm1/x0;->getItemCount()I

    .line 46
    .line 47
    .line 48
    move-result p4

    .line 49
    sub-int/2addr p4, v0

    .line 50
    iget v0, p3, Lm1/D;->b:I

    .line 51
    .line 52
    :goto_2
    if-ge v0, p4, :cond_2

    .line 53
    .line 54
    add-int/lit8 v2, v0, 0x1

    .line 55
    .line 56
    invoke-virtual {p0, v2, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->P(ILm1/p0;Lm1/x0;)I

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    if-le v3, v1, :cond_2

    .line 61
    .line 62
    move v0, v2

    .line 63
    move v1, v3

    .line 64
    goto :goto_2

    .line 65
    :cond_2
    iput v0, p3, Lm1/D;->b:I

    .line 66
    .line 67
    :cond_3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->M()V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public final L(I)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->G:[I

    .line 2
    .line 3
    iget v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->F:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    array-length v3, v0

    .line 9
    add-int/lit8 v4, v1, 0x1

    .line 10
    .line 11
    if-ne v3, v4, :cond_0

    .line 12
    .line 13
    array-length v3, v0

    .line 14
    sub-int/2addr v3, v2

    .line 15
    aget v3, v0, v3

    .line 16
    .line 17
    if-eq v3, p1, :cond_1

    .line 18
    .line 19
    :cond_0
    add-int/lit8 v0, v1, 0x1

    .line 20
    .line 21
    new-array v0, v0, [I

    .line 22
    .line 23
    :cond_1
    const/4 v3, 0x0

    .line 24
    aput v3, v0, v3

    .line 25
    .line 26
    div-int v4, p1, v1

    .line 27
    .line 28
    rem-int/2addr p1, v1

    .line 29
    move v5, v3

    .line 30
    :goto_0
    if-gt v2, v1, :cond_3

    .line 31
    .line 32
    add-int/2addr v3, p1

    .line 33
    if-lez v3, :cond_2

    .line 34
    .line 35
    sub-int v6, v1, v3

    .line 36
    .line 37
    if-ge v6, p1, :cond_2

    .line 38
    .line 39
    add-int/lit8 v6, v4, 0x1

    .line 40
    .line 41
    sub-int/2addr v3, v1

    .line 42
    goto :goto_1

    .line 43
    :cond_2
    move v6, v4

    .line 44
    :goto_1
    add-int/2addr v5, v6

    .line 45
    aput v5, v0, v2

    .line 46
    .line 47
    add-int/lit8 v2, v2, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_3
    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->G:[I

    .line 51
    .line 52
    return-void
.end method

.method public final M()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->H:[Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    array-length v0, v0

    .line 6
    iget v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->F:I

    .line 7
    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    return-void

    .line 12
    :cond_1
    :goto_0
    iget v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->F:I

    .line 13
    .line 14
    new-array v0, v0, [Landroid/view/View;

    .line 15
    .line 16
    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->H:[Landroid/view/View;

    .line 17
    .line 18
    return-void
.end method

.method public final N(II)I
    .locals 3

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->isLayoutRTL()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->G:[I

    .line 13
    .line 14
    iget v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->F:I

    .line 15
    .line 16
    sub-int v2, v1, p1

    .line 17
    .line 18
    aget v2, v0, v2

    .line 19
    .line 20
    sub-int/2addr v1, p1

    .line 21
    sub-int/2addr v1, p2

    .line 22
    aget p1, v0, v1

    .line 23
    .line 24
    sub-int/2addr v2, p1

    .line 25
    return v2

    .line 26
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->G:[I

    .line 27
    .line 28
    add-int/2addr p2, p1

    .line 29
    aget p2, v0, p2

    .line 30
    .line 31
    aget p1, v0, p1

    .line 32
    .line 33
    sub-int/2addr p2, p1

    .line 34
    return p2
.end method

.method public final O(ILm1/p0;Lm1/x0;)I
    .locals 1

    .line 1
    invoke-virtual {p3}, Lm1/x0;->isPreLayout()Z

    .line 2
    .line 3
    .line 4
    move-result p3

    .line 5
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->K:Lm1/z;

    .line 6
    .line 7
    if-nez p3, :cond_0

    .line 8
    .line 9
    iget p2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->F:I

    .line 10
    .line 11
    invoke-virtual {v0, p1, p2}, Lm1/B;->getSpanGroupIndex(II)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1

    .line 16
    :cond_0
    invoke-virtual {p2, p1}, Lm1/p0;->convertPreLayoutPositionToPostLayout(I)I

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    const/4 p3, -0x1

    .line 21
    if-ne p2, p3, :cond_1

    .line 22
    .line 23
    new-instance p2, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string p3, "Cannot find span size for pre layout position. "

    .line 26
    .line 27
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const-string p2, "GridLayoutManager"

    .line 38
    .line 39
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    const/4 p1, 0x0

    .line 43
    return p1

    .line 44
    :cond_1
    iget p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->F:I

    .line 45
    .line 46
    invoke-virtual {v0, p2, p1}, Lm1/B;->getSpanGroupIndex(II)I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    return p1
.end method

.method public final P(ILm1/p0;Lm1/x0;)I
    .locals 2

    .line 1
    invoke-virtual {p3}, Lm1/x0;->isPreLayout()Z

    .line 2
    .line 3
    .line 4
    move-result p3

    .line 5
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->K:Lm1/z;

    .line 6
    .line 7
    if-nez p3, :cond_0

    .line 8
    .line 9
    iget p2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->F:I

    .line 10
    .line 11
    invoke-virtual {v0, p1, p2}, Lm1/z;->getSpanIndex(II)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1

    .line 16
    :cond_0
    iget-object p3, p0, Landroidx/recyclerview/widget/GridLayoutManager;->J:Landroid/util/SparseIntArray;

    .line 17
    .line 18
    const/4 v1, -0x1

    .line 19
    invoke-virtual {p3, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    .line 20
    .line 21
    .line 22
    move-result p3

    .line 23
    if-eq p3, v1, :cond_1

    .line 24
    .line 25
    return p3

    .line 26
    :cond_1
    invoke-virtual {p2, p1}, Lm1/p0;->convertPreLayoutPositionToPostLayout(I)I

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    if-ne p2, v1, :cond_2

    .line 31
    .line 32
    new-instance p2, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string p3, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:"

    .line 35
    .line 36
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    const-string p2, "GridLayoutManager"

    .line 47
    .line 48
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    const/4 p1, 0x0

    .line 52
    return p1

    .line 53
    :cond_2
    iget p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->F:I

    .line 54
    .line 55
    invoke-virtual {v0, p2, p1}, Lm1/z;->getSpanIndex(II)I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    return p1
.end method

.method public final Q(ILm1/p0;Lm1/x0;)I
    .locals 2

    .line 1
    invoke-virtual {p3}, Lm1/x0;->isPreLayout()Z

    .line 2
    .line 3
    .line 4
    move-result p3

    .line 5
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->K:Lm1/z;

    .line 6
    .line 7
    if-nez p3, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lm1/z;->getSpanSize(I)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1

    .line 14
    :cond_0
    iget-object p3, p0, Landroidx/recyclerview/widget/GridLayoutManager;->I:Landroid/util/SparseIntArray;

    .line 15
    .line 16
    const/4 v1, -0x1

    .line 17
    invoke-virtual {p3, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    .line 18
    .line 19
    .line 20
    move-result p3

    .line 21
    if-eq p3, v1, :cond_1

    .line 22
    .line 23
    return p3

    .line 24
    :cond_1
    invoke-virtual {p2, p1}, Lm1/p0;->convertPreLayoutPositionToPostLayout(I)I

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    if-ne p2, v1, :cond_2

    .line 29
    .line 30
    new-instance p2, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string p3, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:"

    .line 33
    .line 34
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    const-string p2, "GridLayoutManager"

    .line 45
    .line 46
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    const/4 p1, 0x1

    .line 50
    return p1

    .line 51
    :cond_2
    invoke-virtual {v0, p2}, Lm1/z;->getSpanSize(I)I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    return p1
.end method

.method public final R(Landroid/view/View;ZI)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lm1/A;

    .line 6
    .line 7
    iget-object v1, v0, Lm1/j0;->b:Landroid/graphics/Rect;

    .line 8
    .line 9
    iget v2, v1, Landroid/graphics/Rect;->top:I

    .line 10
    .line 11
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    .line 12
    .line 13
    add-int/2addr v2, v3

    .line 14
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 15
    .line 16
    add-int/2addr v2, v3

    .line 17
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 18
    .line 19
    add-int/2addr v2, v3

    .line 20
    iget v3, v1, Landroid/graphics/Rect;->left:I

    .line 21
    .line 22
    iget v1, v1, Landroid/graphics/Rect;->right:I

    .line 23
    .line 24
    add-int/2addr v3, v1

    .line 25
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 26
    .line 27
    add-int/2addr v3, v1

    .line 28
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 29
    .line 30
    add-int/2addr v3, v1

    .line 31
    iget v1, v0, Lm1/A;->e:I

    .line 32
    .line 33
    iget v4, v0, Lm1/A;->f:I

    .line 34
    .line 35
    invoke-virtual {p0, v1, v4}, Landroidx/recyclerview/widget/GridLayoutManager;->N(II)I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    iget v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    .line 40
    .line 41
    const/4 v5, 0x0

    .line 42
    const/4 v6, 0x1

    .line 43
    if-ne v4, v6, :cond_0

    .line 44
    .line 45
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 46
    .line 47
    invoke-static {v1, p3, v3, v4, v5}, Lm1/i0;->getChildMeasureSpec(IIIIZ)I

    .line 48
    .line 49
    .line 50
    move-result p3

    .line 51
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Lm1/L;

    .line 52
    .line 53
    invoke-virtual {v1}, Lm1/L;->getTotalSpace()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    invoke-virtual {p0}, Lm1/i0;->getHeightMode()I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 62
    .line 63
    invoke-static {v1, v3, v2, v0, v6}, Lm1/i0;->getChildMeasureSpec(IIIIZ)I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    goto :goto_0

    .line 68
    :cond_0
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 69
    .line 70
    invoke-static {v1, p3, v2, v4, v5}, Lm1/i0;->getChildMeasureSpec(IIIIZ)I

    .line 71
    .line 72
    .line 73
    move-result p3

    .line 74
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Lm1/L;

    .line 75
    .line 76
    invoke-virtual {v1}, Lm1/L;->getTotalSpace()I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    invoke-virtual {p0}, Lm1/i0;->getWidthMode()I

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 85
    .line 86
    invoke-static {v1, v2, v3, v0, v6}, Lm1/i0;->getChildMeasureSpec(IIIIZ)I

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    move v7, v0

    .line 91
    move v0, p3

    .line 92
    move p3, v7

    .line 93
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    check-cast v1, Lm1/j0;

    .line 98
    .line 99
    if-eqz p2, :cond_1

    .line 100
    .line 101
    invoke-virtual {p0, p1, p3, v0, v1}, Lm1/i0;->l(Landroid/view/View;IILm1/j0;)Z

    .line 102
    .line 103
    .line 104
    move-result p2

    .line 105
    goto :goto_1

    .line 106
    :cond_1
    invoke-virtual {p0, p1, p3, v0, v1}, Lm1/i0;->j(Landroid/view/View;IILm1/j0;)Z

    .line 107
    .line 108
    .line 109
    move-result p2

    .line 110
    :goto_1
    if-eqz p2, :cond_2

    .line 111
    .line 112
    invoke-virtual {p1, p3, v0}, Landroid/view/View;->measure(II)V

    .line 113
    .line 114
    .line 115
    :cond_2
    return-void
.end method

.method public final S()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lm1/i0;->getWidth()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-virtual {p0}, Lm1/i0;->getPaddingRight()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    sub-int/2addr v0, v1

    .line 17
    invoke-virtual {p0}, Lm1/i0;->getPaddingLeft()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    :goto_0
    sub-int/2addr v0, v1

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    invoke-virtual {p0}, Lm1/i0;->getHeight()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-virtual {p0}, Lm1/i0;->getPaddingBottom()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    sub-int/2addr v0, v1

    .line 32
    invoke-virtual {p0}, Lm1/i0;->getPaddingTop()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    goto :goto_0

    .line 37
    :goto_1
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->L(I)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public checkLayoutParams(Lm1/j0;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Lm1/A;

    .line 2
    .line 3
    return p1
.end method

.method public computeHorizontalScrollOffset(Lm1/x0;)I
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->computeHorizontalScrollOffset(Lm1/x0;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public computeHorizontalScrollRange(Lm1/x0;)I
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->computeHorizontalScrollRange(Lm1/x0;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public computeVerticalScrollOffset(Lm1/x0;)I
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->computeVerticalScrollOffset(Lm1/x0;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public computeVerticalScrollRange(Lm1/x0;)I
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->computeVerticalScrollRange(Lm1/x0;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public generateDefaultLayoutParams()Lm1/j0;
    .locals 3

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, -0x2

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lm1/A;

    .line 8
    .line 9
    invoke-direct {v0, v2, v1}, Lm1/A;-><init>(II)V

    .line 10
    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    new-instance v0, Lm1/A;

    .line 14
    .line 15
    invoke-direct {v0, v1, v2}, Lm1/A;-><init>(II)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method public generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Lm1/j0;
    .locals 1

    .line 1
    new-instance v0, Lm1/A;

    invoke-direct {v0, p1, p2}, Lm1/A;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lm1/j0;
    .locals 1

    .line 2
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lm1/A;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Lm1/A;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Lm1/A;

    invoke-direct {v0, p1}, Lm1/A;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getColumnCountForAccessibility(Lm1/p0;Lm1/x0;)I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->F:I

    .line 7
    .line 8
    return p1

    .line 9
    :cond_0
    invoke-virtual {p2}, Lm1/x0;->getItemCount()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-ge v0, v1, :cond_1

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    return p1

    .line 17
    :cond_1
    invoke-virtual {p2}, Lm1/x0;->getItemCount()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    sub-int/2addr v0, v1

    .line 22
    invoke-virtual {p0, v0, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->O(ILm1/p0;Lm1/x0;)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    add-int/2addr p1, v1

    .line 27
    return p1
.end method

.method public getRowCountForAccessibility(Lm1/p0;Lm1/x0;)I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->F:I

    .line 6
    .line 7
    return p1

    .line 8
    :cond_0
    invoke-virtual {p2}, Lm1/x0;->getItemCount()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x1

    .line 13
    if-ge v0, v1, :cond_1

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    return p1

    .line 17
    :cond_1
    invoke-virtual {p2}, Lm1/x0;->getItemCount()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    sub-int/2addr v0, v1

    .line 22
    invoke-virtual {p0, v0, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->O(ILm1/p0;Lm1/x0;)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    add-int/2addr p1, v1

    .line 27
    return p1
.end method

.method public getSpanCount()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->F:I

    .line 2
    .line 3
    return v0
.end method

.method public final m(Lm1/x0;Lm1/F;Lm1/g0;)V
    .locals 6

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->F:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    move v2, v1

    .line 5
    :goto_0
    iget v3, p0, Landroidx/recyclerview/widget/GridLayoutManager;->F:I

    .line 6
    .line 7
    if-ge v2, v3, :cond_0

    .line 8
    .line 9
    iget v3, p2, Lm1/F;->d:I

    .line 10
    .line 11
    if-ltz v3, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Lm1/x0;->getItemCount()I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    if-ge v3, v4, :cond_0

    .line 18
    .line 19
    if-lez v0, :cond_0

    .line 20
    .line 21
    iget v3, p2, Lm1/F;->d:I

    .line 22
    .line 23
    iget v4, p2, Lm1/F;->g:I

    .line 24
    .line 25
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    move-object v5, p3

    .line 30
    check-cast v5, Lm1/w;

    .line 31
    .line 32
    invoke-virtual {v5, v3, v4}, Lm1/w;->addPosition(II)V

    .line 33
    .line 34
    .line 35
    iget-object v4, p0, Landroidx/recyclerview/widget/GridLayoutManager;->K:Lm1/z;

    .line 36
    .line 37
    invoke-virtual {v4, v3}, Lm1/z;->getSpanSize(I)I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    sub-int/2addr v0, v3

    .line 42
    iget v3, p2, Lm1/F;->d:I

    .line 43
    .line 44
    iget v4, p2, Lm1/F;->e:I

    .line 45
    .line 46
    add-int/2addr v3, v4

    .line 47
    iput v3, p2, Lm1/F;->d:I

    .line 48
    .line 49
    add-int/lit8 v2, v2, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    return-void
.end method

.method public onFocusSearchFailed(Landroid/view/View;ILm1/p0;Lm1/x0;)Landroid/view/View;
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    move-object/from16 v2, p4

    .line 6
    .line 7
    invoke-virtual/range {p0 .. p1}, Lm1/i0;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    const/4 v4, 0x0

    .line 12
    if-nez v3, :cond_0

    .line 13
    .line 14
    return-object v4

    .line 15
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 16
    .line 17
    .line 18
    move-result-object v5

    .line 19
    check-cast v5, Lm1/A;

    .line 20
    .line 21
    iget v6, v5, Lm1/A;->e:I

    .line 22
    .line 23
    iget v5, v5, Lm1/A;->f:I

    .line 24
    .line 25
    add-int/2addr v5, v6

    .line 26
    invoke-super/range {p0 .. p4}, Landroidx/recyclerview/widget/LinearLayoutManager;->onFocusSearchFailed(Landroid/view/View;ILm1/p0;Lm1/x0;)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v7

    .line 30
    if-nez v7, :cond_1

    .line 31
    .line 32
    return-object v4

    .line 33
    :cond_1
    move/from16 v7, p2

    .line 34
    .line 35
    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->q(I)I

    .line 36
    .line 37
    .line 38
    move-result v7

    .line 39
    const/4 v9, 0x1

    .line 40
    if-ne v7, v9, :cond_2

    .line 41
    .line 42
    move v7, v9

    .line 43
    goto :goto_0

    .line 44
    :cond_2
    const/4 v7, 0x0

    .line 45
    :goto_0
    iget-boolean v10, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    .line 46
    .line 47
    const/4 v11, -0x1

    .line 48
    if-eq v7, v10, :cond_3

    .line 49
    .line 50
    invoke-virtual {v0}, Lm1/i0;->getChildCount()I

    .line 51
    .line 52
    .line 53
    move-result v7

    .line 54
    sub-int/2addr v7, v9

    .line 55
    move v10, v11

    .line 56
    move v12, v10

    .line 57
    goto :goto_1

    .line 58
    :cond_3
    invoke-virtual {v0}, Lm1/i0;->getChildCount()I

    .line 59
    .line 60
    .line 61
    move-result v7

    .line 62
    move v10, v7

    .line 63
    move v12, v9

    .line 64
    const/4 v7, 0x0

    .line 65
    :goto_1
    iget v13, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    .line 66
    .line 67
    if-ne v13, v9, :cond_4

    .line 68
    .line 69
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->isLayoutRTL()Z

    .line 70
    .line 71
    .line 72
    move-result v13

    .line 73
    if-eqz v13, :cond_4

    .line 74
    .line 75
    move v13, v9

    .line 76
    goto :goto_2

    .line 77
    :cond_4
    const/4 v13, 0x0

    .line 78
    :goto_2
    invoke-virtual {v0, v7, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->O(ILm1/p0;Lm1/x0;)I

    .line 79
    .line 80
    .line 81
    move-result v14

    .line 82
    move v15, v11

    .line 83
    move/from16 v16, v15

    .line 84
    .line 85
    const/4 v8, 0x0

    .line 86
    const/16 v17, 0x0

    .line 87
    .line 88
    move v11, v7

    .line 89
    move-object v7, v4

    .line 90
    :goto_3
    if-eq v11, v10, :cond_5

    .line 91
    .line 92
    invoke-virtual {v0, v11, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->O(ILm1/p0;Lm1/x0;)I

    .line 93
    .line 94
    .line 95
    move-result v9

    .line 96
    invoke-virtual {v0, v11}, Lm1/i0;->getChildAt(I)Landroid/view/View;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    if-ne v1, v3, :cond_6

    .line 101
    .line 102
    :cond_5
    :goto_4
    move-object/from16 v21, v4

    .line 103
    .line 104
    move-object/from16 v19, v7

    .line 105
    .line 106
    goto/16 :goto_d

    .line 107
    .line 108
    :cond_6
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    .line 109
    .line 110
    .line 111
    move-result v18

    .line 112
    if-eqz v18, :cond_a

    .line 113
    .line 114
    if-eq v9, v14, :cond_a

    .line 115
    .line 116
    if-eqz v4, :cond_7

    .line 117
    .line 118
    goto :goto_4

    .line 119
    :cond_7
    move-object/from16 v18, v3

    .line 120
    .line 121
    move-object/from16 v21, v4

    .line 122
    .line 123
    :cond_8
    move-object/from16 v19, v7

    .line 124
    .line 125
    move/from16 v20, v8

    .line 126
    .line 127
    :cond_9
    move/from16 v4, v16

    .line 128
    .line 129
    move/from16 v7, v17

    .line 130
    .line 131
    goto/16 :goto_b

    .line 132
    .line 133
    :cond_a
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 134
    .line 135
    .line 136
    move-result-object v9

    .line 137
    check-cast v9, Lm1/A;

    .line 138
    .line 139
    iget v2, v9, Lm1/A;->e:I

    .line 140
    .line 141
    move-object/from16 v18, v3

    .line 142
    .line 143
    iget v3, v9, Lm1/A;->f:I

    .line 144
    .line 145
    add-int/2addr v3, v2

    .line 146
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    .line 147
    .line 148
    .line 149
    move-result v19

    .line 150
    if-eqz v19, :cond_b

    .line 151
    .line 152
    if-ne v2, v6, :cond_b

    .line 153
    .line 154
    if-ne v3, v5, :cond_b

    .line 155
    .line 156
    return-object v1

    .line 157
    :cond_b
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    .line 158
    .line 159
    .line 160
    move-result v19

    .line 161
    if-eqz v19, :cond_c

    .line 162
    .line 163
    if-eqz v4, :cond_d

    .line 164
    .line 165
    :cond_c
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    .line 166
    .line 167
    .line 168
    move-result v19

    .line 169
    if-nez v19, :cond_e

    .line 170
    .line 171
    if-nez v7, :cond_e

    .line 172
    .line 173
    :cond_d
    move-object/from16 v21, v4

    .line 174
    .line 175
    :goto_5
    move-object/from16 v19, v7

    .line 176
    .line 177
    move/from16 v20, v8

    .line 178
    .line 179
    move/from16 v4, v16

    .line 180
    .line 181
    move/from16 v7, v17

    .line 182
    .line 183
    goto :goto_9

    .line 184
    :cond_e
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    .line 185
    .line 186
    .line 187
    move-result v19

    .line 188
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    .line 189
    .line 190
    .line 191
    move-result v20

    .line 192
    move-object/from16 v21, v4

    .line 193
    .line 194
    sub-int v4, v20, v19

    .line 195
    .line 196
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    .line 197
    .line 198
    .line 199
    move-result v19

    .line 200
    if-eqz v19, :cond_11

    .line 201
    .line 202
    if-le v4, v8, :cond_f

    .line 203
    .line 204
    :goto_6
    goto :goto_5

    .line 205
    :cond_f
    if-ne v4, v8, :cond_8

    .line 206
    .line 207
    if-le v2, v15, :cond_10

    .line 208
    .line 209
    const/4 v4, 0x1

    .line 210
    goto :goto_7

    .line 211
    :cond_10
    const/4 v4, 0x0

    .line 212
    :goto_7
    if-ne v13, v4, :cond_8

    .line 213
    .line 214
    goto :goto_6

    .line 215
    :cond_11
    if-nez v21, :cond_8

    .line 216
    .line 217
    move-object/from16 v19, v7

    .line 218
    .line 219
    move/from16 v20, v8

    .line 220
    .line 221
    const/4 v7, 0x0

    .line 222
    const/4 v8, 0x1

    .line 223
    invoke-virtual {v0, v1, v7, v8}, Lm1/i0;->isViewPartiallyVisible(Landroid/view/View;ZZ)Z

    .line 224
    .line 225
    .line 226
    move-result v22

    .line 227
    if-eqz v22, :cond_9

    .line 228
    .line 229
    move/from16 v7, v17

    .line 230
    .line 231
    if-le v4, v7, :cond_12

    .line 232
    .line 233
    move/from16 v4, v16

    .line 234
    .line 235
    goto :goto_9

    .line 236
    :cond_12
    if-ne v4, v7, :cond_15

    .line 237
    .line 238
    move/from16 v4, v16

    .line 239
    .line 240
    if-le v2, v4, :cond_13

    .line 241
    .line 242
    goto :goto_8

    .line 243
    :cond_13
    const/4 v8, 0x0

    .line 244
    :goto_8
    if-ne v13, v8, :cond_16

    .line 245
    .line 246
    :goto_9
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    .line 247
    .line 248
    .line 249
    move-result v8

    .line 250
    if-eqz v8, :cond_14

    .line 251
    .line 252
    iget v8, v9, Lm1/A;->e:I

    .line 253
    .line 254
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    .line 255
    .line 256
    .line 257
    move-result v3

    .line 258
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    .line 259
    .line 260
    .line 261
    move-result v2

    .line 262
    sub-int v2, v3, v2

    .line 263
    .line 264
    move/from16 v16, v4

    .line 265
    .line 266
    move/from16 v17, v7

    .line 267
    .line 268
    move v15, v8

    .line 269
    move-object/from16 v7, v19

    .line 270
    .line 271
    move-object v4, v1

    .line 272
    move v8, v2

    .line 273
    goto :goto_c

    .line 274
    :cond_14
    iget v4, v9, Lm1/A;->e:I

    .line 275
    .line 276
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    .line 277
    .line 278
    .line 279
    move-result v3

    .line 280
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    .line 281
    .line 282
    .line 283
    move-result v2

    .line 284
    sub-int v17, v3, v2

    .line 285
    .line 286
    move-object v7, v1

    .line 287
    move/from16 v16, v4

    .line 288
    .line 289
    :goto_a
    move/from16 v8, v20

    .line 290
    .line 291
    move-object/from16 v4, v21

    .line 292
    .line 293
    goto :goto_c

    .line 294
    :cond_15
    move/from16 v4, v16

    .line 295
    .line 296
    :cond_16
    :goto_b
    move/from16 v16, v4

    .line 297
    .line 298
    move/from16 v17, v7

    .line 299
    .line 300
    move-object/from16 v7, v19

    .line 301
    .line 302
    goto :goto_a

    .line 303
    :goto_c
    add-int/2addr v11, v12

    .line 304
    move-object/from16 v1, p3

    .line 305
    .line 306
    move-object/from16 v2, p4

    .line 307
    .line 308
    move-object/from16 v3, v18

    .line 309
    .line 310
    const/4 v9, 0x1

    .line 311
    goto/16 :goto_3

    .line 312
    .line 313
    :goto_d
    if-eqz v21, :cond_17

    .line 314
    .line 315
    return-object v21

    .line 316
    :cond_17
    return-object v19
.end method

.method public onInitializeAccessibilityNodeInfo(Lm1/p0;Lm1/x0;LN/n;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lm1/i0;->onInitializeAccessibilityNodeInfo(Lm1/p0;Lm1/x0;LN/n;)V

    .line 2
    .line 3
    .line 4
    const-class p1, Landroid/widget/GridView;

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p3, p1}, LN/n;->setClassName(Ljava/lang/CharSequence;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Lm1/p0;Lm1/x0;Landroid/view/View;LN/n;)V
    .locals 7

    .line 1
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Lm1/A;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, p3, p4}, Lm1/i0;->c(Landroid/view/View;LN/n;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    check-cast v0, Lm1/A;

    .line 14
    .line 15
    invoke-virtual {v0}, Lm1/j0;->getViewLayoutPosition()I

    .line 16
    .line 17
    .line 18
    move-result p3

    .line 19
    invoke-virtual {p0, p3, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->O(ILm1/p0;Lm1/x0;)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    iget p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    .line 24
    .line 25
    if-nez p1, :cond_1

    .line 26
    .line 27
    move v3, v1

    .line 28
    invoke-virtual {v0}, Lm1/A;->getSpanIndex()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    invoke-virtual {v0}, Lm1/A;->getSpanSize()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    const/4 v5, 0x0

    .line 37
    const/4 v6, 0x0

    .line 38
    const/4 v4, 0x1

    .line 39
    invoke-static/range {v1 .. v6}, LN/m;->obtain(IIIIZZ)LN/m;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p4, p1}, LN/n;->setCollectionItemInfo(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_1
    move v3, v1

    .line 48
    invoke-virtual {v0}, Lm1/A;->getSpanIndex()I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    invoke-virtual {v0}, Lm1/A;->getSpanSize()I

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    const/4 v5, 0x0

    .line 57
    const/4 v6, 0x0

    .line 58
    const/4 v2, 0x1

    .line 59
    move v3, p1

    .line 60
    invoke-static/range {v1 .. v6}, LN/m;->obtain(IIIIZZ)LN/m;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p4, p1}, LN/n;->setCollectionItemInfo(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public onItemsAdded(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->K:Lm1/z;

    .line 2
    .line 3
    invoke-virtual {p1}, Lm1/B;->invalidateSpanIndexCache()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lm1/B;->invalidateSpanGroupIndexCache()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onItemsChanged(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->K:Lm1/z;

    .line 2
    .line 3
    invoke-virtual {p1}, Lm1/B;->invalidateSpanIndexCache()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lm1/B;->invalidateSpanGroupIndexCache()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onItemsMoved(Landroidx/recyclerview/widget/RecyclerView;III)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->K:Lm1/z;

    .line 2
    .line 3
    invoke-virtual {p1}, Lm1/B;->invalidateSpanIndexCache()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lm1/B;->invalidateSpanGroupIndexCache()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onItemsRemoved(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->K:Lm1/z;

    .line 2
    .line 3
    invoke-virtual {p1}, Lm1/B;->invalidateSpanIndexCache()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lm1/B;->invalidateSpanGroupIndexCache()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onItemsUpdated(Landroidx/recyclerview/widget/RecyclerView;IILjava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->K:Lm1/z;

    .line 2
    .line 3
    invoke-virtual {p1}, Lm1/B;->invalidateSpanIndexCache()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lm1/B;->invalidateSpanGroupIndexCache()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onLayoutChildren(Lm1/p0;Lm1/x0;)V
    .locals 7

    .line 1
    invoke-virtual {p2}, Lm1/x0;->isPreLayout()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->J:Landroid/util/SparseIntArray;

    .line 6
    .line 7
    iget-object v2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->I:Landroid/util/SparseIntArray;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lm1/i0;->getChildCount()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v3, 0x0

    .line 16
    :goto_0
    if-ge v3, v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0, v3}, Lm1/i0;->getChildAt(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    check-cast v4, Lm1/A;

    .line 27
    .line 28
    invoke-virtual {v4}, Lm1/j0;->getViewLayoutPosition()I

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    invoke-virtual {v4}, Lm1/A;->getSpanSize()I

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    invoke-virtual {v2, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v4}, Lm1/A;->getSpanIndex()I

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    invoke-virtual {v1, v5, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 44
    .line 45
    .line 46
    add-int/lit8 v3, v3, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->onLayoutChildren(Lm1/p0;Lm1/x0;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->clear()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public onLayoutCompleted(Lm1/x0;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->onLayoutCompleted(Lm1/x0;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->E:Z

    .line 6
    .line 7
    return-void
.end method

.method public scrollHorizontallyBy(ILm1/p0;Lm1/x0;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->S()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->M()V

    .line 5
    .line 6
    .line 7
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollHorizontallyBy(ILm1/p0;Lm1/x0;)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public scrollVerticallyBy(ILm1/p0;Lm1/x0;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->S()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->M()V

    .line 5
    .line 6
    .line 7
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollVerticallyBy(ILm1/p0;Lm1/x0;)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public setMeasuredDimension(Landroid/graphics/Rect;II)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->G:[I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1, p2, p3}, Lm1/i0;->setMeasuredDimension(Landroid/graphics/Rect;II)V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0}, Lm1/i0;->getPaddingLeft()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-virtual {p0}, Lm1/i0;->getPaddingRight()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    add-int/2addr v1, v0

    .line 17
    invoke-virtual {p0}, Lm1/i0;->getPaddingTop()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-virtual {p0}, Lm1/i0;->getPaddingBottom()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    add-int/2addr v2, v0

    .line 26
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    .line 27
    .line 28
    const/4 v3, 0x1

    .line 29
    if-ne v0, v3, :cond_1

    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    add-int/2addr p1, v2

    .line 36
    invoke-virtual {p0}, Lm1/i0;->getMinimumHeight()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    invoke-static {p3, p1, v0}, Lm1/i0;->chooseSize(III)I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    iget-object p3, p0, Landroidx/recyclerview/widget/GridLayoutManager;->G:[I

    .line 45
    .line 46
    array-length v0, p3

    .line 47
    sub-int/2addr v0, v3

    .line 48
    aget p3, p3, v0

    .line 49
    .line 50
    add-int/2addr p3, v1

    .line 51
    invoke-virtual {p0}, Lm1/i0;->getMinimumWidth()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    invoke-static {p2, p3, v0}, Lm1/i0;->chooseSize(III)I

    .line 56
    .line 57
    .line 58
    move-result p2

    .line 59
    goto :goto_0

    .line 60
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    add-int/2addr p1, v1

    .line 65
    invoke-virtual {p0}, Lm1/i0;->getMinimumWidth()I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    invoke-static {p2, p1, v0}, Lm1/i0;->chooseSize(III)I

    .line 70
    .line 71
    .line 72
    move-result p2

    .line 73
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->G:[I

    .line 74
    .line 75
    array-length v0, p1

    .line 76
    sub-int/2addr v0, v3

    .line 77
    aget p1, p1, v0

    .line 78
    .line 79
    add-int/2addr p1, v2

    .line 80
    invoke-virtual {p0}, Lm1/i0;->getMinimumHeight()I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    invoke-static {p3, p1, v0}, Lm1/i0;->chooseSize(III)I

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    :goto_0
    invoke-virtual {p0, p2, p1}, Lm1/i0;->setMeasuredDimension(II)V

    .line 89
    .line 90
    .line 91
    return-void
.end method

.method public setSpanCount(I)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->F:I

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->E:Z

    .line 8
    .line 9
    if-lt p1, v0, :cond_1

    .line 10
    .line 11
    iput p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->F:I

    .line 12
    .line 13
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->K:Lm1/z;

    .line 14
    .line 15
    invoke-virtual {p1}, Lm1/B;->invalidateSpanIndexCache()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lm1/i0;->requestLayout()V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 23
    .line 24
    const-string v1, "Span count should be at least 1. Provided "

    .line 25
    .line 26
    invoke-static {p1, v1}, LA/i;->f(ILjava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw v0
.end method

.method public setStackFromEnd(Z)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setStackFromEnd(Z)V

    .line 5
    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 9
    .line 10
    const-string v0, "GridLayoutManager does not support stack from end. Consider using reverse layout"

    .line 11
    .line 12
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw p1
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->z:Lm1/H;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->E:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    return v0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    return v0
.end method

.method public final x(Lm1/p0;Lm1/x0;ZZ)Landroid/view/View;
    .locals 9

    .line 1
    invoke-virtual {p0}, Lm1/i0;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result p3

    .line 5
    const/4 v0, 0x1

    .line 6
    if-eqz p4, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lm1/i0;->getChildCount()I

    .line 9
    .line 10
    .line 11
    move-result p3

    .line 12
    sub-int/2addr p3, v0

    .line 13
    const/4 p4, -0x1

    .line 14
    move v0, p4

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p4, 0x0

    .line 17
    move v8, p4

    .line 18
    move p4, p3

    .line 19
    move p3, v8

    .line 20
    :goto_0
    invoke-virtual {p2}, Lm1/x0;->getItemCount()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->r()V

    .line 25
    .line 26
    .line 27
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Lm1/L;

    .line 28
    .line 29
    invoke-virtual {v2}, Lm1/L;->getStartAfterPadding()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Lm1/L;

    .line 34
    .line 35
    invoke-virtual {v3}, Lm1/L;->getEndAfterPadding()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    const/4 v4, 0x0

    .line 40
    move-object v5, v4

    .line 41
    :goto_1
    if-eq p3, p4, :cond_6

    .line 42
    .line 43
    invoke-virtual {p0, p3}, Lm1/i0;->getChildAt(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    invoke-virtual {p0, v6}, Lm1/i0;->getPosition(Landroid/view/View;)I

    .line 48
    .line 49
    .line 50
    move-result v7

    .line 51
    if-ltz v7, :cond_5

    .line 52
    .line 53
    if-ge v7, v1, :cond_5

    .line 54
    .line 55
    invoke-virtual {p0, v7, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->P(ILm1/p0;Lm1/x0;)I

    .line 56
    .line 57
    .line 58
    move-result v7

    .line 59
    if-eqz v7, :cond_1

    .line 60
    .line 61
    goto :goto_3

    .line 62
    :cond_1
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 63
    .line 64
    .line 65
    move-result-object v7

    .line 66
    check-cast v7, Lm1/j0;

    .line 67
    .line 68
    invoke-virtual {v7}, Lm1/j0;->isItemRemoved()Z

    .line 69
    .line 70
    .line 71
    move-result v7

    .line 72
    if-eqz v7, :cond_2

    .line 73
    .line 74
    if-nez v5, :cond_5

    .line 75
    .line 76
    move-object v5, v6

    .line 77
    goto :goto_3

    .line 78
    :cond_2
    iget-object v7, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Lm1/L;

    .line 79
    .line 80
    invoke-virtual {v7, v6}, Lm1/L;->getDecoratedStart(Landroid/view/View;)I

    .line 81
    .line 82
    .line 83
    move-result v7

    .line 84
    if-ge v7, v3, :cond_4

    .line 85
    .line 86
    iget-object v7, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Lm1/L;

    .line 87
    .line 88
    invoke-virtual {v7, v6}, Lm1/L;->getDecoratedEnd(Landroid/view/View;)I

    .line 89
    .line 90
    .line 91
    move-result v7

    .line 92
    if-ge v7, v2, :cond_3

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_3
    return-object v6

    .line 96
    :cond_4
    :goto_2
    if-nez v4, :cond_5

    .line 97
    .line 98
    move-object v4, v6

    .line 99
    :cond_5
    :goto_3
    add-int/2addr p3, v0

    .line 100
    goto :goto_1

    .line 101
    :cond_6
    if-eqz v4, :cond_7

    .line 102
    .line 103
    return-object v4

    .line 104
    :cond_7
    return-object v5
.end method
