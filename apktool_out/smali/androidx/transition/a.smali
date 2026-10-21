.class public final Landroidx/transition/a;
.super Landroidx/transition/e;
.source "SourceFile"


# static fields
.field public static final K:[Ljava/lang/String;

.field public static final L:Lx1/b;

.field public static final M:Lx1/c;

.field public static final N:Lx1/d;

.field public static final O:Lx1/e;

.field public static final P:Lx1/f;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const-string v0, "android:changeBounds:clip"

    .line 2
    .line 3
    const-string v1, "android:changeBounds:parent"

    .line 4
    .line 5
    const-string v2, "android:changeBounds:bounds"

    .line 6
    .line 7
    const-string v3, "android:changeBounds:windowX"

    .line 8
    .line 9
    const-string v4, "android:changeBounds:windowY"

    .line 10
    .line 11
    filled-new-array {v2, v0, v1, v3, v4}, [Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Landroidx/transition/a;->K:[Ljava/lang/String;

    .line 16
    .line 17
    new-instance v0, Lx1/b;

    .line 18
    .line 19
    const-class v1, Landroid/graphics/PointF;

    .line 20
    .line 21
    const-string v2, "topLeft"

    .line 22
    .line 23
    invoke-direct {v0, v1, v2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    sput-object v0, Landroidx/transition/a;->L:Lx1/b;

    .line 27
    .line 28
    new-instance v0, Lx1/c;

    .line 29
    .line 30
    const-string v3, "bottomRight"

    .line 31
    .line 32
    invoke-direct {v0, v1, v3}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Landroidx/transition/a;->M:Lx1/c;

    .line 36
    .line 37
    new-instance v0, Lx1/d;

    .line 38
    .line 39
    invoke-direct {v0, v1, v3}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    sput-object v0, Landroidx/transition/a;->N:Lx1/d;

    .line 43
    .line 44
    new-instance v0, Lx1/e;

    .line 45
    .line 46
    invoke-direct {v0, v1, v2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Landroidx/transition/a;->O:Lx1/e;

    .line 50
    .line 51
    new-instance v0, Lx1/f;

    .line 52
    .line 53
    const-string v2, "position"

    .line 54
    .line 55
    invoke-direct {v0, v1, v2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    sput-object v0, Landroidx/transition/a;->P:Lx1/f;

    .line 59
    .line 60
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/transition/e;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static m(Lx1/I;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lx1/I;->b:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->isLaidOut()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return-void

    .line 23
    :cond_1
    :goto_0
    iget-object v1, p0, Lx1/I;->a:Ljava/util/HashMap;

    .line 24
    .line 25
    new-instance v2, Landroid/graphics/Rect;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    invoke-direct {v2, v3, v4, v5, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 44
    .line 45
    .line 46
    const-string v0, "android:changeBounds:bounds"

    .line 47
    .line 48
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    iget-object p0, p0, Lx1/I;->b:Landroid/view/View;

    .line 52
    .line 53
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    const-string v0, "android:changeBounds:parent"

    .line 58
    .line 59
    invoke-virtual {v1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    return-void
.end method


# virtual methods
.method public captureEndValues(Lx1/I;)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroidx/transition/a;->m(Lx1/I;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public captureStartValues(Lx1/I;)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroidx/transition/a;->m(Lx1/I;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Lx1/I;Lx1/I;)Landroid/animation/Animator;
    .locals 18

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    if-eqz v0, :cond_11

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto/16 :goto_5

    .line 10
    .line 11
    :cond_0
    iget-object v0, v0, Lx1/I;->a:Ljava/util/HashMap;

    .line 12
    .line 13
    iget-object v5, v1, Lx1/I;->a:Ljava/util/HashMap;

    .line 14
    .line 15
    const-string v6, "android:changeBounds:parent"

    .line 16
    .line 17
    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v7

    .line 21
    check-cast v7, Landroid/view/ViewGroup;

    .line 22
    .line 23
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v6

    .line 27
    check-cast v6, Landroid/view/ViewGroup;

    .line 28
    .line 29
    if-eqz v7, :cond_11

    .line 30
    .line 31
    if-nez v6, :cond_1

    .line 32
    .line 33
    goto/16 :goto_5

    .line 34
    .line 35
    :cond_1
    const-string v6, "android:changeBounds:bounds"

    .line 36
    .line 37
    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v7

    .line 41
    check-cast v7, Landroid/graphics/Rect;

    .line 42
    .line 43
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    check-cast v6, Landroid/graphics/Rect;

    .line 48
    .line 49
    iget v8, v7, Landroid/graphics/Rect;->left:I

    .line 50
    .line 51
    iget v9, v6, Landroid/graphics/Rect;->left:I

    .line 52
    .line 53
    iget v10, v7, Landroid/graphics/Rect;->top:I

    .line 54
    .line 55
    iget v11, v6, Landroid/graphics/Rect;->top:I

    .line 56
    .line 57
    iget v12, v7, Landroid/graphics/Rect;->right:I

    .line 58
    .line 59
    iget v13, v6, Landroid/graphics/Rect;->right:I

    .line 60
    .line 61
    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    .line 62
    .line 63
    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    .line 64
    .line 65
    sub-int v14, v12, v8

    .line 66
    .line 67
    sub-int v15, v7, v10

    .line 68
    .line 69
    const/16 p1, 0x0

    .line 70
    .line 71
    sub-int v3, v13, v9

    .line 72
    .line 73
    const/16 v16, 0x1

    .line 74
    .line 75
    sub-int v4, v6, v11

    .line 76
    .line 77
    const-string v2, "android:changeBounds:clip"

    .line 78
    .line 79
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    check-cast v0, Landroid/graphics/Rect;

    .line 84
    .line 85
    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    check-cast v2, Landroid/graphics/Rect;

    .line 90
    .line 91
    if-eqz v14, :cond_2

    .line 92
    .line 93
    if-nez v15, :cond_3

    .line 94
    .line 95
    :cond_2
    if-eqz v3, :cond_7

    .line 96
    .line 97
    if-eqz v4, :cond_7

    .line 98
    .line 99
    :cond_3
    if-ne v8, v9, :cond_5

    .line 100
    .line 101
    if-eq v10, v11, :cond_4

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_4
    move/from16 v5, p1

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_5
    :goto_0
    move/from16 v5, v16

    .line 108
    .line 109
    :goto_1
    if-ne v12, v13, :cond_6

    .line 110
    .line 111
    if-eq v7, v6, :cond_8

    .line 112
    .line 113
    :cond_6
    add-int/lit8 v5, v5, 0x1

    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_7
    move/from16 v5, p1

    .line 117
    .line 118
    :cond_8
    :goto_2
    if-eqz v0, :cond_9

    .line 119
    .line 120
    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v17

    .line 124
    if-eqz v17, :cond_a

    .line 125
    .line 126
    :cond_9
    if-nez v0, :cond_b

    .line 127
    .line 128
    if-eqz v2, :cond_b

    .line 129
    .line 130
    :cond_a
    add-int/lit8 v5, v5, 0x1

    .line 131
    .line 132
    :cond_b
    if-lez v5, :cond_11

    .line 133
    .line 134
    iget-object v0, v1, Lx1/I;->b:Landroid/view/View;

    .line 135
    .line 136
    invoke-static {v0, v8, v10, v12, v7}, Lx1/M;->a(Landroid/view/View;IIII)V

    .line 137
    .line 138
    .line 139
    const/4 v1, 0x2

    .line 140
    if-ne v5, v1, :cond_d

    .line 141
    .line 142
    if-ne v14, v3, :cond_c

    .line 143
    .line 144
    if-ne v15, v4, :cond_c

    .line 145
    .line 146
    invoke-virtual/range {p0 .. p0}, Landroidx/transition/e;->getPathMotion()Lx1/p;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    int-to-float v2, v8

    .line 151
    int-to-float v3, v10

    .line 152
    int-to-float v4, v9

    .line 153
    int-to-float v5, v11

    .line 154
    invoke-virtual {v1, v2, v3, v4, v5}, Lx1/p;->getPath(FFFF)Landroid/graphics/Path;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    sget-object v2, Landroidx/transition/a;->P:Lx1/f;

    .line 159
    .line 160
    invoke-static {v0, v2, v1}, Lx1/o;->a(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    goto :goto_4

    .line 165
    :cond_c
    new-instance v1, Lx1/i;

    .line 166
    .line 167
    invoke-direct {v1, v0}, Lx1/i;-><init>(Landroid/view/View;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual/range {p0 .. p0}, Landroidx/transition/e;->getPathMotion()Lx1/p;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    int-to-float v3, v8

    .line 175
    int-to-float v4, v10

    .line 176
    int-to-float v5, v9

    .line 177
    int-to-float v8, v11

    .line 178
    invoke-virtual {v2, v3, v4, v5, v8}, Lx1/p;->getPath(FFFF)Landroid/graphics/Path;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    sget-object v3, Landroidx/transition/a;->L:Lx1/b;

    .line 183
    .line 184
    invoke-static {v1, v3, v2}, Lx1/o;->a(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    invoke-virtual/range {p0 .. p0}, Landroidx/transition/e;->getPathMotion()Lx1/p;

    .line 189
    .line 190
    .line 191
    move-result-object v3

    .line 192
    int-to-float v4, v12

    .line 193
    int-to-float v5, v7

    .line 194
    int-to-float v7, v13

    .line 195
    int-to-float v6, v6

    .line 196
    invoke-virtual {v3, v4, v5, v7, v6}, Lx1/p;->getPath(FFFF)Landroid/graphics/Path;

    .line 197
    .line 198
    .line 199
    move-result-object v3

    .line 200
    sget-object v4, Landroidx/transition/a;->M:Lx1/c;

    .line 201
    .line 202
    invoke-static {v1, v4, v3}, Lx1/o;->a(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    .line 203
    .line 204
    .line 205
    move-result-object v3

    .line 206
    new-instance v4, Landroid/animation/AnimatorSet;

    .line 207
    .line 208
    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 209
    .line 210
    .line 211
    const/4 v5, 0x2

    .line 212
    new-array v5, v5, [Landroid/animation/Animator;

    .line 213
    .line 214
    aput-object v2, v5, p1

    .line 215
    .line 216
    aput-object v3, v5, v16

    .line 217
    .line 218
    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 219
    .line 220
    .line 221
    new-instance v2, Lx1/g;

    .line 222
    .line 223
    invoke-direct {v2, v1}, Lx1/g;-><init>(Lx1/i;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v4, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 227
    .line 228
    .line 229
    move-object v1, v4

    .line 230
    goto :goto_4

    .line 231
    :cond_d
    if-ne v8, v9, :cond_f

    .line 232
    .line 233
    if-eq v10, v11, :cond_e

    .line 234
    .line 235
    goto :goto_3

    .line 236
    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroidx/transition/e;->getPathMotion()Lx1/p;

    .line 237
    .line 238
    .line 239
    move-result-object v1

    .line 240
    int-to-float v2, v12

    .line 241
    int-to-float v3, v7

    .line 242
    int-to-float v4, v13

    .line 243
    int-to-float v5, v6

    .line 244
    invoke-virtual {v1, v2, v3, v4, v5}, Lx1/p;->getPath(FFFF)Landroid/graphics/Path;

    .line 245
    .line 246
    .line 247
    move-result-object v1

    .line 248
    sget-object v2, Landroidx/transition/a;->N:Lx1/d;

    .line 249
    .line 250
    invoke-static {v0, v2, v1}, Lx1/o;->a(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    .line 251
    .line 252
    .line 253
    move-result-object v1

    .line 254
    goto :goto_4

    .line 255
    :cond_f
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroidx/transition/e;->getPathMotion()Lx1/p;

    .line 256
    .line 257
    .line 258
    move-result-object v1

    .line 259
    int-to-float v2, v8

    .line 260
    int-to-float v3, v10

    .line 261
    int-to-float v4, v9

    .line 262
    int-to-float v5, v11

    .line 263
    invoke-virtual {v1, v2, v3, v4, v5}, Lx1/p;->getPath(FFFF)Landroid/graphics/Path;

    .line 264
    .line 265
    .line 266
    move-result-object v1

    .line 267
    sget-object v2, Landroidx/transition/a;->O:Lx1/e;

    .line 268
    .line 269
    invoke-static {v0, v2, v1}, Lx1/o;->a(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    .line 270
    .line 271
    .line 272
    move-result-object v1

    .line 273
    :goto_4
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 274
    .line 275
    .line 276
    move-result-object v2

    .line 277
    instance-of v2, v2, Landroid/view/ViewGroup;

    .line 278
    .line 279
    if-eqz v2, :cond_10

    .line 280
    .line 281
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 282
    .line 283
    .line 284
    move-result-object v0

    .line 285
    check-cast v0, Landroid/view/ViewGroup;

    .line 286
    .line 287
    move/from16 v2, v16

    .line 288
    .line 289
    invoke-static {v0, v2}, La/c;->f(Landroid/view/ViewGroup;Z)V

    .line 290
    .line 291
    .line 292
    invoke-virtual/range {p0 .. p0}, Landroidx/transition/e;->getRootTransition()Landroidx/transition/e;

    .line 293
    .line 294
    .line 295
    move-result-object v2

    .line 296
    new-instance v3, Lx1/h;

    .line 297
    .line 298
    invoke-direct {v3, v0}, Lx1/h;-><init>(Landroid/view/ViewGroup;)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v2, v3}, Landroidx/transition/e;->addListener(Lx1/w;)Landroidx/transition/e;

    .line 302
    .line 303
    .line 304
    :cond_10
    return-object v1

    .line 305
    :cond_11
    :goto_5
    const/4 v0, 0x0

    .line 306
    return-object v0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Landroidx/transition/a;->K:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
