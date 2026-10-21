.class public Lflix/com/vision/utils/ArcNavigationView;
.super LA3/k;
.source "SourceFile"


# instance fields
.field public J:Lh5/b;

.field public K:I

.field public L:I

.field public M:Landroid/graphics/Path;

.field public N:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, LA3/k;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lflix/com/vision/utils/ArcNavigationView;->K:I

    .line 6
    .line 7
    iput v0, p0, Lflix/com/vision/utils/ArcNavigationView;->L:I

    .line 8
    .line 9
    invoke-virtual {p0, p1, p2}, Lflix/com/vision/utils/ArcNavigationView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private setInsetsColor(I)V
    .locals 2

    .line 1
    :try_start_0
    const-class v0, Lx3/F;

    .line 2
    .line 3
    const-string v1, "b"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 11
    .line 12
    .line 13
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    .line 14
    .line 15
    invoke-direct {v1, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :catch_0
    move-exception p1

    .line 23
    goto :goto_0

    .line 24
    :catch_1
    move-exception p1

    .line 25
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 26
    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lflix/com/vision/utils/ArcNavigationView;->M:Landroid/graphics/Path;

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 7
    .line 8
    .line 9
    invoke-super {p0, p1}, LA3/k;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    new-instance v0, Lh5/b;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lh5/b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lflix/com/vision/utils/ArcNavigationView;->J:Lh5/b;

    .line 7
    .line 8
    invoke-static {p0}, LM/p0;->getElevation(Landroid/view/View;)F

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    invoke-virtual {v0, p1}, Lh5/b;->setElevation(F)V

    .line 13
    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 17
    .line 18
    .line 19
    invoke-direct {p0, p1}, Lflix/com/vision/utils/ArcNavigationView;->setInsetsColor(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const/16 p2, 0xf

    .line 27
    .line 28
    invoke-static {p1, p2}, Lh5/b;->dpToPx(Landroid/content/Context;I)F

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public measureChild(Landroid/view/View;II)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/android/material/internal/NavigationMenuView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    const/high16 p3, 0x40000000    # 2.0f

    .line 10
    .line 11
    invoke-static {p2, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-static {v0, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 20
    .line 21
    .line 22
    move-result p3

    .line 23
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->measureChild(Landroid/view/View;II)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 6

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 2
    .line 3
    .line 4
    move p2, p1

    .line 5
    move-object p1, p0

    .line 6
    if-eqz p2, :cond_a

    .line 7
    .line 8
    iget-object p2, p1, Lflix/com/vision/utils/ArcNavigationView;->J:Lh5/b;

    .line 9
    .line 10
    if-nez p2, :cond_0

    .line 11
    .line 12
    goto/16 :goto_4

    .line 13
    .line 14
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    iput p2, p1, Lflix/com/vision/utils/ArcNavigationView;->K:I

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    iput p2, p1, Lflix/com/vision/utils/ArcNavigationView;->L:I

    .line 25
    .line 26
    if-lez p2, :cond_a

    .line 27
    .line 28
    iget p2, p1, Lflix/com/vision/utils/ArcNavigationView;->K:I

    .line 29
    .line 30
    if-lez p2, :cond_a

    .line 31
    .line 32
    new-instance p2, Landroid/graphics/Path;

    .line 33
    .line 34
    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    .line 35
    .line 36
    .line 37
    new-instance p3, Landroid/graphics/Path;

    .line 38
    .line 39
    invoke-direct {p3}, Landroid/graphics/Path;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object p3, p1, Lflix/com/vision/utils/ArcNavigationView;->N:Landroid/graphics/Path;

    .line 43
    .line 44
    iget-object p3, p1, Lflix/com/vision/utils/ArcNavigationView;->J:Lh5/b;

    .line 45
    .line 46
    invoke-virtual {p3}, Lh5/b;->getArcWidth()F

    .line 47
    .line 48
    .line 49
    move-result p3

    .line 50
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 51
    .line 52
    .line 53
    move-result-object p4

    .line 54
    check-cast p4, Lc0/f;

    .line 55
    .line 56
    iget-object p5, p1, Lflix/com/vision/utils/ArcNavigationView;->J:Lh5/b;

    .line 57
    .line 58
    invoke-virtual {p5}, Lh5/b;->isCropInside()Z

    .line 59
    .line 60
    .line 61
    move-result p5

    .line 62
    const/4 v0, 0x5

    .line 63
    const v1, 0x800005

    .line 64
    .line 65
    .line 66
    const/4 v2, 0x3

    .line 67
    const v3, 0x800003

    .line 68
    .line 69
    .line 70
    const/high16 v4, 0x40000000    # 2.0f

    .line 71
    .line 72
    const/4 v5, 0x0

    .line 73
    if-eqz p5, :cond_4

    .line 74
    .line 75
    iget p4, p4, Lc0/f;->a:I

    .line 76
    .line 77
    if-eq p4, v3, :cond_3

    .line 78
    .line 79
    if-ne p4, v2, :cond_1

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_1
    if-eq p4, v1, :cond_2

    .line 83
    .line 84
    if-ne p4, v0, :cond_8

    .line 85
    .line 86
    :cond_2
    iget-object p4, p1, Lflix/com/vision/utils/ArcNavigationView;->N:Landroid/graphics/Path;

    .line 87
    .line 88
    invoke-virtual {p4, v5, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 89
    .line 90
    .line 91
    iget-object p4, p1, Lflix/com/vision/utils/ArcNavigationView;->N:Landroid/graphics/Path;

    .line 92
    .line 93
    iget p5, p1, Lflix/com/vision/utils/ArcNavigationView;->K:I

    .line 94
    .line 95
    int-to-float p5, p5

    .line 96
    div-float v0, p5, v4

    .line 97
    .line 98
    invoke-virtual {p4, p3, v0, v5, p5}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 99
    .line 100
    .line 101
    iget-object p4, p1, Lflix/com/vision/utils/ArcNavigationView;->N:Landroid/graphics/Path;

    .line 102
    .line 103
    invoke-virtual {p4}, Landroid/graphics/Path;->close()V

    .line 104
    .line 105
    .line 106
    iget p4, p1, Lflix/com/vision/utils/ArcNavigationView;->L:I

    .line 107
    .line 108
    int-to-float p4, p4

    .line 109
    invoke-virtual {p2, p4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p2, v5, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 113
    .line 114
    .line 115
    iget p4, p1, Lflix/com/vision/utils/ArcNavigationView;->K:I

    .line 116
    .line 117
    int-to-float p4, p4

    .line 118
    div-float p5, p4, v4

    .line 119
    .line 120
    invoke-virtual {p2, p3, p5, v5, p4}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 121
    .line 122
    .line 123
    iget p3, p1, Lflix/com/vision/utils/ArcNavigationView;->L:I

    .line 124
    .line 125
    int-to-float p3, p3

    .line 126
    iget p4, p1, Lflix/com/vision/utils/ArcNavigationView;->K:I

    .line 127
    .line 128
    int-to-float p4, p4

    .line 129
    invoke-virtual {p2, p3, p4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p2}, Landroid/graphics/Path;->close()V

    .line 133
    .line 134
    .line 135
    goto/16 :goto_2

    .line 136
    .line 137
    :cond_3
    :goto_0
    iget-object p4, p1, Lflix/com/vision/utils/ArcNavigationView;->N:Landroid/graphics/Path;

    .line 138
    .line 139
    iget p5, p1, Lflix/com/vision/utils/ArcNavigationView;->L:I

    .line 140
    .line 141
    int-to-float p5, p5

    .line 142
    invoke-virtual {p4, p5, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 143
    .line 144
    .line 145
    iget-object p4, p1, Lflix/com/vision/utils/ArcNavigationView;->N:Landroid/graphics/Path;

    .line 146
    .line 147
    iget p5, p1, Lflix/com/vision/utils/ArcNavigationView;->L:I

    .line 148
    .line 149
    int-to-float p5, p5

    .line 150
    sub-float v0, p5, p3

    .line 151
    .line 152
    iget v1, p1, Lflix/com/vision/utils/ArcNavigationView;->K:I

    .line 153
    .line 154
    int-to-float v1, v1

    .line 155
    div-float v2, v1, v4

    .line 156
    .line 157
    invoke-virtual {p4, v0, v2, p5, v1}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 158
    .line 159
    .line 160
    iget-object p4, p1, Lflix/com/vision/utils/ArcNavigationView;->N:Landroid/graphics/Path;

    .line 161
    .line 162
    invoke-virtual {p4}, Landroid/graphics/Path;->close()V

    .line 163
    .line 164
    .line 165
    invoke-virtual {p2, v5, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 166
    .line 167
    .line 168
    iget p4, p1, Lflix/com/vision/utils/ArcNavigationView;->L:I

    .line 169
    .line 170
    int-to-float p4, p4

    .line 171
    invoke-virtual {p2, p4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 172
    .line 173
    .line 174
    iget p4, p1, Lflix/com/vision/utils/ArcNavigationView;->L:I

    .line 175
    .line 176
    int-to-float p4, p4

    .line 177
    sub-float p3, p4, p3

    .line 178
    .line 179
    iget p5, p1, Lflix/com/vision/utils/ArcNavigationView;->K:I

    .line 180
    .line 181
    int-to-float p5, p5

    .line 182
    div-float v0, p5, v4

    .line 183
    .line 184
    invoke-virtual {p2, p3, v0, p4, p5}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 185
    .line 186
    .line 187
    iget p3, p1, Lflix/com/vision/utils/ArcNavigationView;->K:I

    .line 188
    .line 189
    int-to-float p3, p3

    .line 190
    invoke-virtual {p2, v5, p3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {p2}, Landroid/graphics/Path;->close()V

    .line 194
    .line 195
    .line 196
    goto/16 :goto_2

    .line 197
    .line 198
    :cond_4
    iget p4, p4, Lc0/f;->a:I

    .line 199
    .line 200
    if-eq p4, v3, :cond_7

    .line 201
    .line 202
    if-ne p4, v2, :cond_5

    .line 203
    .line 204
    goto :goto_1

    .line 205
    :cond_5
    if-eq p4, v1, :cond_6

    .line 206
    .line 207
    if-ne p4, v0, :cond_8

    .line 208
    .line 209
    :cond_6
    iget-object p4, p1, Lflix/com/vision/utils/ArcNavigationView;->N:Landroid/graphics/Path;

    .line 210
    .line 211
    div-float p5, p3, v4

    .line 212
    .line 213
    invoke-virtual {p4, p5, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 214
    .line 215
    .line 216
    iget-object p4, p1, Lflix/com/vision/utils/ArcNavigationView;->N:Landroid/graphics/Path;

    .line 217
    .line 218
    neg-float p3, p3

    .line 219
    div-float/2addr p3, v4

    .line 220
    iget v0, p1, Lflix/com/vision/utils/ArcNavigationView;->K:I

    .line 221
    .line 222
    int-to-float v0, v0

    .line 223
    div-float v1, v0, v4

    .line 224
    .line 225
    invoke-virtual {p4, p3, v1, p5, v0}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 226
    .line 227
    .line 228
    iget-object p4, p1, Lflix/com/vision/utils/ArcNavigationView;->N:Landroid/graphics/Path;

    .line 229
    .line 230
    invoke-virtual {p4}, Landroid/graphics/Path;->close()V

    .line 231
    .line 232
    .line 233
    iget p4, p1, Lflix/com/vision/utils/ArcNavigationView;->L:I

    .line 234
    .line 235
    int-to-float p4, p4

    .line 236
    invoke-virtual {p2, p4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {p2, p5, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 240
    .line 241
    .line 242
    iget p4, p1, Lflix/com/vision/utils/ArcNavigationView;->K:I

    .line 243
    .line 244
    int-to-float p4, p4

    .line 245
    div-float v0, p4, v4

    .line 246
    .line 247
    invoke-virtual {p2, p3, v0, p5, p4}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 248
    .line 249
    .line 250
    iget p3, p1, Lflix/com/vision/utils/ArcNavigationView;->L:I

    .line 251
    .line 252
    int-to-float p3, p3

    .line 253
    iget p4, p1, Lflix/com/vision/utils/ArcNavigationView;->K:I

    .line 254
    .line 255
    int-to-float p4, p4

    .line 256
    invoke-virtual {p2, p3, p4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {p2}, Landroid/graphics/Path;->close()V

    .line 260
    .line 261
    .line 262
    goto :goto_2

    .line 263
    :cond_7
    :goto_1
    iget-object p4, p1, Lflix/com/vision/utils/ArcNavigationView;->N:Landroid/graphics/Path;

    .line 264
    .line 265
    iget p5, p1, Lflix/com/vision/utils/ArcNavigationView;->L:I

    .line 266
    .line 267
    int-to-float p5, p5

    .line 268
    div-float/2addr p3, v4

    .line 269
    sub-float/2addr p5, p3

    .line 270
    invoke-virtual {p4, p5, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 271
    .line 272
    .line 273
    iget-object p4, p1, Lflix/com/vision/utils/ArcNavigationView;->N:Landroid/graphics/Path;

    .line 274
    .line 275
    iget p5, p1, Lflix/com/vision/utils/ArcNavigationView;->L:I

    .line 276
    .line 277
    int-to-float p5, p5

    .line 278
    add-float v0, p5, p3

    .line 279
    .line 280
    iget v1, p1, Lflix/com/vision/utils/ArcNavigationView;->K:I

    .line 281
    .line 282
    int-to-float v1, v1

    .line 283
    div-float v2, v1, v4

    .line 284
    .line 285
    sub-float/2addr p5, p3

    .line 286
    invoke-virtual {p4, v0, v2, p5, v1}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 287
    .line 288
    .line 289
    iget-object p4, p1, Lflix/com/vision/utils/ArcNavigationView;->N:Landroid/graphics/Path;

    .line 290
    .line 291
    invoke-virtual {p4}, Landroid/graphics/Path;->close()V

    .line 292
    .line 293
    .line 294
    invoke-virtual {p2, v5, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 295
    .line 296
    .line 297
    iget p4, p1, Lflix/com/vision/utils/ArcNavigationView;->L:I

    .line 298
    .line 299
    int-to-float p4, p4

    .line 300
    sub-float/2addr p4, p3

    .line 301
    invoke-virtual {p2, p4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 302
    .line 303
    .line 304
    iget p4, p1, Lflix/com/vision/utils/ArcNavigationView;->L:I

    .line 305
    .line 306
    int-to-float p4, p4

    .line 307
    add-float p5, p4, p3

    .line 308
    .line 309
    iget v0, p1, Lflix/com/vision/utils/ArcNavigationView;->K:I

    .line 310
    .line 311
    int-to-float v0, v0

    .line 312
    div-float v1, v0, v4

    .line 313
    .line 314
    sub-float/2addr p4, p3

    .line 315
    invoke-virtual {p2, p5, v1, p4, v0}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 316
    .line 317
    .line 318
    iget p3, p1, Lflix/com/vision/utils/ArcNavigationView;->K:I

    .line 319
    .line 320
    int-to-float p3, p3

    .line 321
    invoke-virtual {p2, v5, p3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {p2}, Landroid/graphics/Path;->close()V

    .line 325
    .line 326
    .line 327
    :cond_8
    :goto_2
    iput-object p2, p1, Lflix/com/vision/utils/ArcNavigationView;->M:Landroid/graphics/Path;

    .line 328
    .line 329
    iget-object p2, p1, Lflix/com/vision/utils/ArcNavigationView;->J:Lh5/b;

    .line 330
    .line 331
    invoke-virtual {p2}, Lh5/b;->getElevation()F

    .line 332
    .line 333
    .line 334
    move-result p2

    .line 335
    invoke-static {p0, p2}, LM/p0;->setElevation(Landroid/view/View;F)V

    .line 336
    .line 337
    .line 338
    new-instance p2, Lh5/a;

    .line 339
    .line 340
    invoke-direct {p2, p0}, Lh5/a;-><init>(Lflix/com/vision/utils/ArcNavigationView;)V

    .line 341
    .line 342
    .line 343
    invoke-virtual {p0, p2}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 344
    .line 345
    .line 346
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 347
    .line 348
    .line 349
    move-result p2

    .line 350
    const/4 p3, 0x0

    .line 351
    :goto_3
    if-ge p3, p2, :cond_a

    .line 352
    .line 353
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 354
    .line 355
    .line 356
    move-result-object p4

    .line 357
    instance-of p5, p4, Lcom/google/android/material/internal/NavigationMenuView;

    .line 358
    .line 359
    if-eqz p5, :cond_9

    .line 360
    .line 361
    iget-object p5, p1, Lflix/com/vision/utils/ArcNavigationView;->J:Lh5/b;

    .line 362
    .line 363
    invoke-virtual {p5}, Lh5/b;->getBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    .line 364
    .line 365
    .line 366
    move-result-object p5

    .line 367
    invoke-virtual {p4, p5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 368
    .line 369
    .line 370
    iget-object p5, p1, Lflix/com/vision/utils/ArcNavigationView;->J:Lh5/b;

    .line 371
    .line 372
    invoke-virtual {p5}, Lh5/b;->getElevation()F

    .line 373
    .line 374
    .line 375
    move-result p5

    .line 376
    invoke-static {p4, p5}, LM/p0;->setElevation(Landroid/view/View;F)V

    .line 377
    .line 378
    .line 379
    :cond_9
    add-int/lit8 p3, p3, 0x1

    .line 380
    .line 381
    goto :goto_3

    .line 382
    :cond_a
    :goto_4
    return-void
.end method
