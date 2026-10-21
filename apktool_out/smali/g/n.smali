.class public final Lg/n;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# static fields
.field public static final m:F


# instance fields
.field public final a:Landroid/graphics/Paint;

.field public final b:F

.field public final c:F

.field public final d:F

.field public e:F

.field public f:Z

.field public final g:Landroid/graphics/Path;

.field public final h:I

.field public i:Z

.field public j:F

.field public k:F

.field public final l:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-wide v0, 0x4046800000000000L    # 45.0

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    double-to-float v0, v0

    .line 11
    sput v0, Lg/n;->m:F

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Paint;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lg/n;->a:Landroid/graphics/Paint;

    .line 10
    .line 11
    new-instance v1, Landroid/graphics/Path;

    .line 12
    .line 13
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lg/n;->g:Landroid/graphics/Path;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    iput-boolean v1, p0, Lg/n;->i:Z

    .line 20
    .line 21
    const/4 v2, 0x2

    .line 22
    iput v2, p0, Lg/n;->l:I

    .line 23
    .line 24
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 25
    .line 26
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 27
    .line 28
    .line 29
    sget-object v2, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    .line 30
    .line 31
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 32
    .line 33
    .line 34
    sget-object v2, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 37
    .line 38
    .line 39
    const/4 v2, 0x1

    .line 40
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    sget-object v0, Landroidx/appcompat/R$styleable;->DrawerArrowToggle:[I

    .line 48
    .line 49
    sget v3, Landroidx/appcompat/R$attr;->drawerArrowStyle:I

    .line 50
    .line 51
    sget v4, Landroidx/appcompat/R$style;->Base_Widget_AppCompat_DrawerArrowToggle:I

    .line 52
    .line 53
    const/4 v5, 0x0

    .line 54
    invoke-virtual {p1, v5, v0, v3, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    sget v0, Landroidx/appcompat/R$styleable;->DrawerArrowToggle_color:I

    .line 59
    .line 60
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    invoke-virtual {p0, v0}, Lg/n;->setColor(I)V

    .line 65
    .line 66
    .line 67
    sget v0, Landroidx/appcompat/R$styleable;->DrawerArrowToggle_thickness:I

    .line 68
    .line 69
    const/4 v3, 0x0

    .line 70
    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    invoke-virtual {p0, v0}, Lg/n;->setBarThickness(F)V

    .line 75
    .line 76
    .line 77
    sget v0, Landroidx/appcompat/R$styleable;->DrawerArrowToggle_spinBars:I

    .line 78
    .line 79
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    invoke-virtual {p0, v0}, Lg/n;->setSpinEnabled(Z)V

    .line 84
    .line 85
    .line 86
    sget v0, Landroidx/appcompat/R$styleable;->DrawerArrowToggle_gapBetweenBars:I

    .line 87
    .line 88
    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    int-to-float v0, v0

    .line 97
    invoke-virtual {p0, v0}, Lg/n;->setGapSize(F)V

    .line 98
    .line 99
    .line 100
    sget v0, Landroidx/appcompat/R$styleable;->DrawerArrowToggle_drawableSize:I

    .line 101
    .line 102
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    iput v0, p0, Lg/n;->h:I

    .line 107
    .line 108
    sget v0, Landroidx/appcompat/R$styleable;->DrawerArrowToggle_barLength:I

    .line 109
    .line 110
    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    int-to-float v0, v0

    .line 119
    iput v0, p0, Lg/n;->c:F

    .line 120
    .line 121
    sget v0, Landroidx/appcompat/R$styleable;->DrawerArrowToggle_arrowHeadLength:I

    .line 122
    .line 123
    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    int-to-float v0, v0

    .line 132
    iput v0, p0, Lg/n;->b:F

    .line 133
    .line 134
    sget v0, Landroidx/appcompat/R$styleable;->DrawerArrowToggle_arrowShaftLength:I

    .line 135
    .line 136
    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    iput v0, p0, Lg/n;->d:F

    .line 141
    .line 142
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 143
    .line 144
    .line 145
    return-void
.end method

.method public static a(FFF)F
    .locals 0

    .line 1
    invoke-static {p1, p0, p2, p0}, Lb/c;->a(FFFF)F

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    iget v3, v0, Lg/n;->l:I

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    const/4 v5, 0x1

    .line 13
    if-eqz v3, :cond_2

    .line 14
    .line 15
    if-eq v3, v5, :cond_1

    .line 16
    .line 17
    const/4 v6, 0x3

    .line 18
    if-eq v3, v6, :cond_0

    .line 19
    .line 20
    invoke-static {v0}, LE/c;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-ne v3, v5, :cond_2

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-static {v0}, LE/c;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-nez v3, :cond_2

    .line 32
    .line 33
    :cond_1
    :goto_0
    move v4, v5

    .line 34
    :cond_2
    iget v3, v0, Lg/n;->b:F

    .line 35
    .line 36
    mul-float/2addr v3, v3

    .line 37
    const/high16 v6, 0x40000000    # 2.0f

    .line 38
    .line 39
    mul-float/2addr v3, v6

    .line 40
    float-to-double v7, v3

    .line 41
    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    .line 42
    .line 43
    .line 44
    move-result-wide v7

    .line 45
    double-to-float v3, v7

    .line 46
    iget v7, v0, Lg/n;->j:F

    .line 47
    .line 48
    iget v8, v0, Lg/n;->c:F

    .line 49
    .line 50
    invoke-static {v8, v3, v7}, Lg/n;->a(FFF)F

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    iget v7, v0, Lg/n;->d:F

    .line 55
    .line 56
    iget v9, v0, Lg/n;->j:F

    .line 57
    .line 58
    invoke-static {v8, v7, v9}, Lg/n;->a(FFF)F

    .line 59
    .line 60
    .line 61
    move-result v7

    .line 62
    iget v8, v0, Lg/n;->k:F

    .line 63
    .line 64
    iget v9, v0, Lg/n;->j:F

    .line 65
    .line 66
    const/4 v10, 0x0

    .line 67
    invoke-static {v10, v8, v9}, Lg/n;->a(FFF)F

    .line 68
    .line 69
    .line 70
    move-result v8

    .line 71
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    .line 72
    .line 73
    .line 74
    move-result v8

    .line 75
    int-to-float v8, v8

    .line 76
    sget v9, Lg/n;->m:F

    .line 77
    .line 78
    iget v11, v0, Lg/n;->j:F

    .line 79
    .line 80
    invoke-static {v10, v9, v11}, Lg/n;->a(FFF)F

    .line 81
    .line 82
    .line 83
    move-result v9

    .line 84
    if-eqz v4, :cond_3

    .line 85
    .line 86
    move v11, v10

    .line 87
    goto :goto_1

    .line 88
    :cond_3
    const/high16 v11, -0x3ccc0000    # -180.0f

    .line 89
    .line 90
    :goto_1
    const/high16 v12, 0x43340000    # 180.0f

    .line 91
    .line 92
    if-eqz v4, :cond_4

    .line 93
    .line 94
    move v13, v12

    .line 95
    goto :goto_2

    .line 96
    :cond_4
    move v13, v10

    .line 97
    :goto_2
    iget v14, v0, Lg/n;->j:F

    .line 98
    .line 99
    invoke-static {v11, v13, v14}, Lg/n;->a(FFF)F

    .line 100
    .line 101
    .line 102
    move-result v11

    .line 103
    float-to-double v13, v3

    .line 104
    move v15, v6

    .line 105
    float-to-double v5, v9

    .line 106
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    .line 107
    .line 108
    .line 109
    move-result-wide v16

    .line 110
    mul-double v16, v16, v13

    .line 111
    .line 112
    move v9, v4

    .line 113
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->round(D)J

    .line 114
    .line 115
    .line 116
    move-result-wide v3

    .line 117
    long-to-float v3, v3

    .line 118
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    .line 119
    .line 120
    .line 121
    move-result-wide v4

    .line 122
    mul-double/2addr v4, v13

    .line 123
    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    .line 124
    .line 125
    .line 126
    move-result-wide v4

    .line 127
    long-to-float v4, v4

    .line 128
    iget-object v5, v0, Lg/n;->g:Landroid/graphics/Path;

    .line 129
    .line 130
    invoke-virtual {v5}, Landroid/graphics/Path;->rewind()V

    .line 131
    .line 132
    .line 133
    iget v6, v0, Lg/n;->e:F

    .line 134
    .line 135
    iget-object v13, v0, Lg/n;->a:Landroid/graphics/Paint;

    .line 136
    .line 137
    invoke-virtual {v13}, Landroid/graphics/Paint;->getStrokeWidth()F

    .line 138
    .line 139
    .line 140
    move-result v14

    .line 141
    add-float/2addr v14, v6

    .line 142
    iget v6, v0, Lg/n;->k:F

    .line 143
    .line 144
    neg-float v6, v6

    .line 145
    move/from16 v16, v15

    .line 146
    .line 147
    iget v15, v0, Lg/n;->j:F

    .line 148
    .line 149
    invoke-static {v14, v6, v15}, Lg/n;->a(FFF)F

    .line 150
    .line 151
    .line 152
    move-result v6

    .line 153
    neg-float v14, v7

    .line 154
    div-float v14, v14, v16

    .line 155
    .line 156
    add-float v15, v14, v8

    .line 157
    .line 158
    invoke-virtual {v5, v15, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 159
    .line 160
    .line 161
    mul-float v8, v8, v16

    .line 162
    .line 163
    sub-float/2addr v7, v8

    .line 164
    invoke-virtual {v5, v7, v10}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v5, v14, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v5, v3, v4}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 171
    .line 172
    .line 173
    neg-float v6, v6

    .line 174
    invoke-virtual {v5, v14, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 175
    .line 176
    .line 177
    neg-float v4, v4

    .line 178
    invoke-virtual {v5, v3, v4}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v5}, Landroid/graphics/Path;->close()V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 185
    .line 186
    .line 187
    invoke-virtual {v13}, Landroid/graphics/Paint;->getStrokeWidth()F

    .line 188
    .line 189
    .line 190
    move-result v3

    .line 191
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 192
    .line 193
    .line 194
    move-result v4

    .line 195
    int-to-float v4, v4

    .line 196
    const/high16 v6, 0x40400000    # 3.0f

    .line 197
    .line 198
    mul-float/2addr v6, v3

    .line 199
    sub-float/2addr v4, v6

    .line 200
    iget v6, v0, Lg/n;->e:F

    .line 201
    .line 202
    mul-float v7, v6, v16

    .line 203
    .line 204
    sub-float/2addr v4, v7

    .line 205
    float-to-int v4, v4

    .line 206
    div-int/lit8 v4, v4, 0x4

    .line 207
    .line 208
    mul-int/lit8 v4, v4, 0x2

    .line 209
    .line 210
    int-to-float v4, v4

    .line 211
    const/high16 v7, 0x3fc00000    # 1.5f

    .line 212
    .line 213
    mul-float/2addr v3, v7

    .line 214
    add-float/2addr v3, v6

    .line 215
    add-float/2addr v3, v4

    .line 216
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    .line 217
    .line 218
    .line 219
    move-result v2

    .line 220
    int-to-float v2, v2

    .line 221
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 222
    .line 223
    .line 224
    iget-boolean v2, v0, Lg/n;->f:Z

    .line 225
    .line 226
    if-eqz v2, :cond_6

    .line 227
    .line 228
    iget-boolean v2, v0, Lg/n;->i:Z

    .line 229
    .line 230
    xor-int/2addr v2, v9

    .line 231
    if-eqz v2, :cond_5

    .line 232
    .line 233
    const/4 v2, -0x1

    .line 234
    goto :goto_3

    .line 235
    :cond_5
    const/4 v2, 0x1

    .line 236
    :goto_3
    int-to-float v2, v2

    .line 237
    mul-float/2addr v11, v2

    .line 238
    invoke-virtual {v1, v11}, Landroid/graphics/Canvas;->rotate(F)V

    .line 239
    .line 240
    .line 241
    goto :goto_4

    .line 242
    :cond_6
    if-eqz v9, :cond_7

    .line 243
    .line 244
    invoke-virtual {v1, v12}, Landroid/graphics/Canvas;->rotate(F)V

    .line 245
    .line 246
    .line 247
    :cond_7
    :goto_4
    invoke-virtual {v1, v5, v13}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 251
    .line 252
    .line 253
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lg/n;->h:I

    .line 2
    .line 3
    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lg/n;->h:I

    .line 2
    .line 3
    return v0
.end method

.method public getOpacity()I
    .locals 1

    .line 1
    const/4 v0, -0x3

    .line 2
    return v0
.end method

.method public setAlpha(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lg/n;->a:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eq p1, v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public setBarThickness(F)V
    .locals 4

    .line 1
    iget-object v0, p0, Lg/n;->a:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    cmpl-float v1, v1, p1

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 12
    .line 13
    .line 14
    const/high16 v0, 0x40000000    # 2.0f

    .line 15
    .line 16
    div-float/2addr p1, v0

    .line 17
    float-to-double v0, p1

    .line 18
    sget p1, Lg/n;->m:F

    .line 19
    .line 20
    float-to-double v2, p1

    .line 21
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    .line 22
    .line 23
    .line 24
    move-result-wide v2

    .line 25
    mul-double/2addr v2, v0

    .line 26
    double-to-float p1, v2

    .line 27
    iput p1, p0, Lg/n;->k:F

    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method public setColor(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lg/n;->a:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eq p1, v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lg/n;->a:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setGapSize(F)V
    .locals 1

    .line 1
    iget v0, p0, Lg/n;->e:F

    .line 2
    .line 3
    cmpl-float v0, p1, v0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iput p1, p0, Lg/n;->e:F

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public setProgress(F)V
    .locals 1

    .line 1
    iget v0, p0, Lg/n;->j:F

    .line 2
    .line 3
    cmpl-float v0, v0, p1

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iput p1, p0, Lg/n;->j:F

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public setSpinEnabled(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lg/n;->f:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-boolean p1, p0, Lg/n;->f:Z

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setVerticalMirror(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lg/n;->i:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-boolean p1, p0, Lg/n;->i:Z

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
