.class public Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field public static final A:[I

.field public static final B:[I


# instance fields
.field public final b:Z

.field public final e:Z

.field public final f:Z

.field public final j:Z

.field public final m:I

.field public final n:I

.field public final p:I

.field public final q:I

.field public final r:Landroid/graphics/Paint;

.field public final s:Landroid/graphics/Paint;

.field public final t:Landroid/graphics/Paint;

.field public final u:Landroid/graphics/Paint;

.field public final v:Landroid/graphics/Rect;

.field public final w:Landroid/graphics/Rect;

.field public final x:Landroid/graphics/Rect;

.field public final y:Landroid/graphics/Rect;

.field public z:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/high16 v1, -0x1000000

    .line 3
    .line 4
    filled-new-array {v0, v1}, [I

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    sput-object v2, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->A:[I

    .line 9
    .line 10
    filled-new-array {v1, v0}, [I

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->B:[I

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const/high16 v0, 0x42a00000    # 80.0f

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-static {v1, v0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    float-to-int p1, p1

    .line 20
    if-eqz p2, :cond_8

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    sget-object v2, Lcom/bosphere/fadingedgelayout/R$styleable;->FadingEdgeLayout:[I

    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    invoke-virtual {v0, p2, v2, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    sget v0, Lcom/bosphere/fadingedgelayout/R$styleable;->FadingEdgeLayout_fel_edge:I

    .line 34
    .line 35
    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    and-int/lit8 v2, v0, 0x1

    .line 40
    .line 41
    if-ne v2, v1, :cond_0

    .line 42
    .line 43
    move v2, v1

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    move v2, v3

    .line 46
    :goto_0
    iput-boolean v2, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->b:Z

    .line 47
    .line 48
    and-int/lit8 v2, v0, 0x2

    .line 49
    .line 50
    const/4 v4, 0x2

    .line 51
    if-ne v2, v4, :cond_1

    .line 52
    .line 53
    move v2, v1

    .line 54
    goto :goto_1

    .line 55
    :cond_1
    move v2, v3

    .line 56
    :goto_1
    iput-boolean v2, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->e:Z

    .line 57
    .line 58
    and-int/lit8 v2, v0, 0x4

    .line 59
    .line 60
    const/4 v5, 0x4

    .line 61
    if-ne v2, v5, :cond_2

    .line 62
    .line 63
    move v2, v1

    .line 64
    goto :goto_2

    .line 65
    :cond_2
    move v2, v3

    .line 66
    :goto_2
    iput-boolean v2, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->f:Z

    .line 67
    .line 68
    const/16 v2, 0x8

    .line 69
    .line 70
    and-int/2addr v0, v2

    .line 71
    if-ne v0, v2, :cond_3

    .line 72
    .line 73
    move v3, v1

    .line 74
    :cond_3
    iput-boolean v3, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->j:Z

    .line 75
    .line 76
    sget v0, Lcom/bosphere/fadingedgelayout/R$styleable;->FadingEdgeLayout_fel_size_top:I

    .line 77
    .line 78
    invoke-virtual {p2, v0, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    iput v0, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->m:I

    .line 83
    .line 84
    sget v0, Lcom/bosphere/fadingedgelayout/R$styleable;->FadingEdgeLayout_fel_size_bottom:I

    .line 85
    .line 86
    invoke-virtual {p2, v0, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    iput v0, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->n:I

    .line 91
    .line 92
    sget v0, Lcom/bosphere/fadingedgelayout/R$styleable;->FadingEdgeLayout_fel_size_left:I

    .line 93
    .line 94
    invoke-virtual {p2, v0, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    iput v0, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->p:I

    .line 99
    .line 100
    sget v0, Lcom/bosphere/fadingedgelayout/R$styleable;->FadingEdgeLayout_fel_size_right:I

    .line 101
    .line 102
    invoke-virtual {p2, v0, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    iput p1, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->q:I

    .line 107
    .line 108
    iget-boolean v0, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->b:Z

    .line 109
    .line 110
    if-eqz v0, :cond_4

    .line 111
    .line 112
    iget v0, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->m:I

    .line 113
    .line 114
    if-lez v0, :cond_4

    .line 115
    .line 116
    iget v0, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->z:I

    .line 117
    .line 118
    or-int/2addr v0, v1

    .line 119
    iput v0, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->z:I

    .line 120
    .line 121
    :cond_4
    iget-boolean v0, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->f:Z

    .line 122
    .line 123
    if-eqz v0, :cond_5

    .line 124
    .line 125
    iget v0, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->p:I

    .line 126
    .line 127
    if-lez v0, :cond_5

    .line 128
    .line 129
    iget v0, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->z:I

    .line 130
    .line 131
    or-int/2addr v0, v5

    .line 132
    iput v0, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->z:I

    .line 133
    .line 134
    :cond_5
    iget-boolean v0, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->e:Z

    .line 135
    .line 136
    if-eqz v0, :cond_6

    .line 137
    .line 138
    iget v0, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->n:I

    .line 139
    .line 140
    if-lez v0, :cond_6

    .line 141
    .line 142
    iget v0, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->z:I

    .line 143
    .line 144
    or-int/2addr v0, v4

    .line 145
    iput v0, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->z:I

    .line 146
    .line 147
    :cond_6
    iget-boolean v0, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->j:Z

    .line 148
    .line 149
    if-eqz v0, :cond_7

    .line 150
    .line 151
    if-lez p1, :cond_7

    .line 152
    .line 153
    iget p1, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->z:I

    .line 154
    .line 155
    or-int/2addr p1, v2

    .line 156
    iput p1, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->z:I

    .line 157
    .line 158
    :cond_7
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 159
    .line 160
    .line 161
    goto :goto_3

    .line 162
    :cond_8
    iput p1, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->q:I

    .line 163
    .line 164
    iput p1, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->p:I

    .line 165
    .line 166
    iput p1, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->n:I

    .line 167
    .line 168
    iput p1, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->m:I

    .line 169
    .line 170
    :goto_3
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    .line 171
    .line 172
    sget-object p2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    .line 173
    .line 174
    invoke-direct {p1, p2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 175
    .line 176
    .line 177
    new-instance p2, Landroid/graphics/Paint;

    .line 178
    .line 179
    invoke-direct {p2, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 180
    .line 181
    .line 182
    iput-object p2, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->r:Landroid/graphics/Paint;

    .line 183
    .line 184
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 185
    .line 186
    .line 187
    new-instance p2, Landroid/graphics/Paint;

    .line 188
    .line 189
    invoke-direct {p2, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 190
    .line 191
    .line 192
    iput-object p2, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->s:Landroid/graphics/Paint;

    .line 193
    .line 194
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 195
    .line 196
    .line 197
    new-instance p2, Landroid/graphics/Paint;

    .line 198
    .line 199
    invoke-direct {p2, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 200
    .line 201
    .line 202
    iput-object p2, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->t:Landroid/graphics/Paint;

    .line 203
    .line 204
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 205
    .line 206
    .line 207
    new-instance p2, Landroid/graphics/Paint;

    .line 208
    .line 209
    invoke-direct {p2, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 210
    .line 211
    .line 212
    iput-object p2, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->u:Landroid/graphics/Paint;

    .line 213
    .line 214
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 215
    .line 216
    .line 217
    new-instance p1, Landroid/graphics/Rect;

    .line 218
    .line 219
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 220
    .line 221
    .line 222
    iput-object p1, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->v:Landroid/graphics/Rect;

    .line 223
    .line 224
    new-instance p1, Landroid/graphics/Rect;

    .line 225
    .line 226
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 227
    .line 228
    .line 229
    iput-object p1, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->x:Landroid/graphics/Rect;

    .line 230
    .line 231
    new-instance p1, Landroid/graphics/Rect;

    .line 232
    .line 233
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 234
    .line 235
    .line 236
    iput-object p1, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->w:Landroid/graphics/Rect;

    .line 237
    .line 238
    new-instance p1, Landroid/graphics/Rect;

    .line 239
    .line 240
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 241
    .line 242
    .line 243
    iput-object p1, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->y:Landroid/graphics/Rect;

    .line 244
    .line 245
    return-void
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-boolean v2, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->b:Z

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    if-nez v2, :cond_1

    .line 13
    .line 14
    iget-boolean v2, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->e:Z

    .line 15
    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    iget-boolean v2, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->f:Z

    .line 19
    .line 20
    if-nez v2, :cond_1

    .line 21
    .line 22
    iget-boolean v2, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->j:Z

    .line 23
    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v2, 0x0

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    :goto_0
    move v2, v3

    .line 30
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    const/16 v5, 0x8

    .line 35
    .line 36
    if-eq v4, v5, :cond_2

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    if-nez v2, :cond_3

    .line 43
    .line 44
    :cond_2
    move-object v1, p1

    .line 45
    goto/16 :goto_2

    .line 46
    .line 47
    :cond_3
    iget v0, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->z:I

    .line 48
    .line 49
    and-int/lit8 v1, v0, 0x1

    .line 50
    .line 51
    sget-object v11, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->A:[I

    .line 52
    .line 53
    if-ne v1, v3, :cond_4

    .line 54
    .line 55
    and-int/lit8 v0, v0, -0x2

    .line 56
    .line 57
    iput v0, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->z:I

    .line 58
    .line 59
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    sub-int/2addr v0, v1

    .line 68
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    sub-int/2addr v0, v1

    .line 73
    iget v1, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->m:I

    .line 74
    .line 75
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 92
    .line 93
    .line 94
    move-result v4

    .line 95
    sub-int/2addr v3, v4

    .line 96
    add-int/2addr v0, v2

    .line 97
    iget-object v4, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->v:Landroid/graphics/Rect;

    .line 98
    .line 99
    invoke-virtual {v4, v1, v2, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 100
    .line 101
    .line 102
    new-instance v6, Landroid/graphics/LinearGradient;

    .line 103
    .line 104
    int-to-float v7, v1

    .line 105
    int-to-float v8, v2

    .line 106
    int-to-float v10, v0

    .line 107
    const/4 v12, 0x0

    .line 108
    sget-object v13, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 109
    .line 110
    move v9, v7

    .line 111
    invoke-direct/range {v6 .. v13}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 112
    .line 113
    .line 114
    iget-object v0, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->r:Landroid/graphics/Paint;

    .line 115
    .line 116
    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 117
    .line 118
    .line 119
    :cond_4
    iget v0, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->z:I

    .line 120
    .line 121
    and-int/lit8 v1, v0, 0x4

    .line 122
    .line 123
    const/4 v2, 0x4

    .line 124
    if-ne v1, v2, :cond_5

    .line 125
    .line 126
    and-int/lit8 v0, v0, -0x5

    .line 127
    .line 128
    iput v0, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->z:I

    .line 129
    .line 130
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    sub-int/2addr v0, v1

    .line 139
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    sub-int/2addr v0, v1

    .line 144
    iget v1, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->p:I

    .line 145
    .line 146
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 155
    .line 156
    .line 157
    move-result v2

    .line 158
    add-int/2addr v0, v1

    .line 159
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 160
    .line 161
    .line 162
    move-result v3

    .line 163
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 164
    .line 165
    .line 166
    move-result v4

    .line 167
    sub-int/2addr v3, v4

    .line 168
    iget-object v4, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->x:Landroid/graphics/Rect;

    .line 169
    .line 170
    invoke-virtual {v4, v1, v2, v0, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 171
    .line 172
    .line 173
    new-instance v6, Landroid/graphics/LinearGradient;

    .line 174
    .line 175
    int-to-float v7, v1

    .line 176
    int-to-float v8, v2

    .line 177
    int-to-float v9, v0

    .line 178
    const/4 v12, 0x0

    .line 179
    sget-object v13, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 180
    .line 181
    move v10, v8

    .line 182
    invoke-direct/range {v6 .. v13}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 183
    .line 184
    .line 185
    iget-object v0, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->t:Landroid/graphics/Paint;

    .line 186
    .line 187
    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 188
    .line 189
    .line 190
    :cond_5
    iget v0, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->z:I

    .line 191
    .line 192
    and-int/lit8 v1, v0, 0x2

    .line 193
    .line 194
    sget-object v11, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->B:[I

    .line 195
    .line 196
    const/4 v2, 0x2

    .line 197
    if-ne v1, v2, :cond_6

    .line 198
    .line 199
    and-int/lit8 v0, v0, -0x3

    .line 200
    .line 201
    iput v0, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->z:I

    .line 202
    .line 203
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 204
    .line 205
    .line 206
    move-result v0

    .line 207
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 208
    .line 209
    .line 210
    move-result v1

    .line 211
    sub-int/2addr v0, v1

    .line 212
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 213
    .line 214
    .line 215
    move-result v1

    .line 216
    sub-int/2addr v0, v1

    .line 217
    iget v1, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->n:I

    .line 218
    .line 219
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 220
    .line 221
    .line 222
    move-result v1

    .line 223
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 224
    .line 225
    .line 226
    move-result v2

    .line 227
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 228
    .line 229
    .line 230
    move-result v3

    .line 231
    add-int/2addr v3, v0

    .line 232
    sub-int/2addr v3, v1

    .line 233
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 234
    .line 235
    .line 236
    move-result v0

    .line 237
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 238
    .line 239
    .line 240
    move-result v4

    .line 241
    sub-int/2addr v0, v4

    .line 242
    add-int/2addr v1, v3

    .line 243
    iget-object v4, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->w:Landroid/graphics/Rect;

    .line 244
    .line 245
    invoke-virtual {v4, v2, v3, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 246
    .line 247
    .line 248
    new-instance v6, Landroid/graphics/LinearGradient;

    .line 249
    .line 250
    int-to-float v7, v2

    .line 251
    int-to-float v8, v3

    .line 252
    int-to-float v10, v1

    .line 253
    const/4 v12, 0x0

    .line 254
    sget-object v13, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 255
    .line 256
    move v9, v7

    .line 257
    invoke-direct/range {v6 .. v13}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 258
    .line 259
    .line 260
    iget-object v0, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->s:Landroid/graphics/Paint;

    .line 261
    .line 262
    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 263
    .line 264
    .line 265
    :cond_6
    iget v0, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->z:I

    .line 266
    .line 267
    and-int/lit8 v1, v0, 0x8

    .line 268
    .line 269
    if-ne v1, v5, :cond_7

    .line 270
    .line 271
    and-int/lit8 v0, v0, -0x9

    .line 272
    .line 273
    iput v0, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->z:I

    .line 274
    .line 275
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 276
    .line 277
    .line 278
    move-result v0

    .line 279
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 280
    .line 281
    .line 282
    move-result v1

    .line 283
    sub-int/2addr v0, v1

    .line 284
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 285
    .line 286
    .line 287
    move-result v1

    .line 288
    sub-int/2addr v0, v1

    .line 289
    iget v1, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->q:I

    .line 290
    .line 291
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 292
    .line 293
    .line 294
    move-result v1

    .line 295
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 296
    .line 297
    .line 298
    move-result v2

    .line 299
    add-int/2addr v2, v0

    .line 300
    sub-int/2addr v2, v1

    .line 301
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 302
    .line 303
    .line 304
    move-result v0

    .line 305
    add-int/2addr v1, v2

    .line 306
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 307
    .line 308
    .line 309
    move-result v3

    .line 310
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 311
    .line 312
    .line 313
    move-result v4

    .line 314
    sub-int/2addr v3, v4

    .line 315
    iget-object v4, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->y:Landroid/graphics/Rect;

    .line 316
    .line 317
    invoke-virtual {v4, v2, v0, v1, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 318
    .line 319
    .line 320
    new-instance v6, Landroid/graphics/LinearGradient;

    .line 321
    .line 322
    int-to-float v7, v2

    .line 323
    int-to-float v8, v0

    .line 324
    int-to-float v9, v1

    .line 325
    const/4 v12, 0x0

    .line 326
    sget-object v13, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 327
    .line 328
    move v10, v8

    .line 329
    invoke-direct/range {v6 .. v13}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 330
    .line 331
    .line 332
    iget-object v0, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->u:Landroid/graphics/Paint;

    .line 333
    .line 334
    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 335
    .line 336
    .line 337
    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 338
    .line 339
    .line 340
    move-result v0

    .line 341
    int-to-float v4, v0

    .line 342
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 343
    .line 344
    .line 345
    move-result v0

    .line 346
    int-to-float v5, v0

    .line 347
    const/4 v6, 0x0

    .line 348
    const/16 v7, 0x1f

    .line 349
    .line 350
    const/4 v2, 0x0

    .line 351
    const/4 v3, 0x0

    .line 352
    move-object v1, p1

    .line 353
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    .line 354
    .line 355
    .line 356
    move-result p1

    .line 357
    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 358
    .line 359
    .line 360
    iget-boolean v0, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->b:Z

    .line 361
    .line 362
    if-eqz v0, :cond_8

    .line 363
    .line 364
    iget v0, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->m:I

    .line 365
    .line 366
    if-lez v0, :cond_8

    .line 367
    .line 368
    iget-object v0, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->v:Landroid/graphics/Rect;

    .line 369
    .line 370
    iget-object v2, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->r:Landroid/graphics/Paint;

    .line 371
    .line 372
    invoke-virtual {v1, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 373
    .line 374
    .line 375
    :cond_8
    iget-boolean v0, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->e:Z

    .line 376
    .line 377
    if-eqz v0, :cond_9

    .line 378
    .line 379
    iget v0, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->n:I

    .line 380
    .line 381
    if-lez v0, :cond_9

    .line 382
    .line 383
    iget-object v0, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->w:Landroid/graphics/Rect;

    .line 384
    .line 385
    iget-object v2, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->s:Landroid/graphics/Paint;

    .line 386
    .line 387
    invoke-virtual {v1, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 388
    .line 389
    .line 390
    :cond_9
    iget-boolean v0, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->f:Z

    .line 391
    .line 392
    if-eqz v0, :cond_a

    .line 393
    .line 394
    iget v0, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->p:I

    .line 395
    .line 396
    if-lez v0, :cond_a

    .line 397
    .line 398
    iget-object v0, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->x:Landroid/graphics/Rect;

    .line 399
    .line 400
    iget-object v2, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->t:Landroid/graphics/Paint;

    .line 401
    .line 402
    invoke-virtual {v1, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 403
    .line 404
    .line 405
    :cond_a
    iget-boolean v0, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->j:Z

    .line 406
    .line 407
    if-eqz v0, :cond_b

    .line 408
    .line 409
    iget v0, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->q:I

    .line 410
    .line 411
    if-lez v0, :cond_b

    .line 412
    .line 413
    iget-object v0, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->y:Landroid/graphics/Rect;

    .line 414
    .line 415
    iget-object v2, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->u:Landroid/graphics/Paint;

    .line 416
    .line 417
    invoke-virtual {v1, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 418
    .line 419
    .line 420
    :cond_b
    invoke-virtual {v1, p1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 421
    .line 422
    .line 423
    return-void

    .line 424
    :goto_2
    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 425
    .line 426
    .line 427
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    if-eq p1, p3, :cond_0

    .line 5
    .line 6
    iget p1, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->z:I

    .line 7
    .line 8
    or-int/lit8 p1, p1, 0xc

    .line 9
    .line 10
    iput p1, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->z:I

    .line 11
    .line 12
    :cond_0
    if-eq p2, p4, :cond_1

    .line 13
    .line 14
    iget p1, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->z:I

    .line 15
    .line 16
    or-int/lit8 p1, p1, 0x3

    .line 17
    .line 18
    iput p1, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->z:I

    .line 19
    .line 20
    :cond_1
    return-void
.end method

.method public setPadding(IIII)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eq v0, p1, :cond_0

    .line 6
    .line 7
    iget v0, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->z:I

    .line 8
    .line 9
    or-int/lit8 v0, v0, 0x4

    .line 10
    .line 11
    iput v0, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->z:I

    .line 12
    .line 13
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eq v0, p2, :cond_1

    .line 18
    .line 19
    iget v0, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->z:I

    .line 20
    .line 21
    or-int/lit8 v0, v0, 0x1

    .line 22
    .line 23
    iput v0, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->z:I

    .line 24
    .line 25
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eq v0, p3, :cond_2

    .line 30
    .line 31
    iget v0, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->z:I

    .line 32
    .line 33
    or-int/lit8 v0, v0, 0x8

    .line 34
    .line 35
    iput v0, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->z:I

    .line 36
    .line 37
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eq v0, p4, :cond_3

    .line 42
    .line 43
    iget v0, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->z:I

    .line 44
    .line 45
    or-int/lit8 v0, v0, 0x2

    .line 46
    .line 47
    iput v0, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->z:I

    .line 48
    .line 49
    :cond_3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 50
    .line 51
    .line 52
    return-void
.end method
