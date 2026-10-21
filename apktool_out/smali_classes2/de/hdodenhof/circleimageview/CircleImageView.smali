.class public Lde/hdodenhof/circleimageview/CircleImageView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# static fields
.field public static final D:Landroid/widget/ImageView$ScaleType;

.field public static final E:Landroid/graphics/Bitmap$Config;


# instance fields
.field public A:Z

.field public B:Z

.field public C:Z

.field public final b:Landroid/graphics/RectF;

.field public final e:Landroid/graphics/RectF;

.field public final f:Landroid/graphics/Matrix;

.field public final j:Landroid/graphics/Paint;

.field public final m:Landroid/graphics/Paint;

.field public final n:Landroid/graphics/Paint;

.field public p:I

.field public q:I

.field public r:I

.field public s:Landroid/graphics/Bitmap;

.field public t:Landroid/graphics/BitmapShader;

.field public u:I

.field public v:I

.field public w:F

.field public x:F

.field public y:Landroid/graphics/ColorFilter;

.field public final z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 2
    .line 3
    sput-object v0, Lde/hdodenhof/circleimageview/CircleImageView;->D:Landroid/widget/ImageView$ScaleType;

    .line 4
    .line 5
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 6
    .line 7
    sput-object v0, Lde/hdodenhof/circleimageview/CircleImageView;->E:Landroid/graphics/Bitmap$Config;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lde/hdodenhof/circleimageview/CircleImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lde/hdodenhof/circleimageview/CircleImageView;->b:Landroid/graphics/RectF;

    .line 4
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lde/hdodenhof/circleimageview/CircleImageView;->e:Landroid/graphics/RectF;

    .line 5
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lde/hdodenhof/circleimageview/CircleImageView;->f:Landroid/graphics/Matrix;

    .line 6
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lde/hdodenhof/circleimageview/CircleImageView;->j:Landroid/graphics/Paint;

    .line 7
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lde/hdodenhof/circleimageview/CircleImageView;->m:Landroid/graphics/Paint;

    .line 8
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lde/hdodenhof/circleimageview/CircleImageView;->n:Landroid/graphics/Paint;

    const/high16 v0, -0x1000000

    .line 9
    iput v0, p0, Lde/hdodenhof/circleimageview/CircleImageView;->p:I

    const/4 v1, 0x0

    .line 10
    iput v1, p0, Lde/hdodenhof/circleimageview/CircleImageView;->q:I

    .line 11
    iput v1, p0, Lde/hdodenhof/circleimageview/CircleImageView;->r:I

    .line 12
    sget-object v2, Lde/hdodenhof/circleimageview/R$styleable;->CircleImageView:[I

    invoke-virtual {p1, p2, v2, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 13
    sget p2, Lde/hdodenhof/circleimageview/R$styleable;->CircleImageView_civ_border_width:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lde/hdodenhof/circleimageview/CircleImageView;->q:I

    .line 14
    sget p2, Lde/hdodenhof/circleimageview/R$styleable;->CircleImageView_civ_border_color:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lde/hdodenhof/circleimageview/CircleImageView;->p:I

    .line 15
    sget p2, Lde/hdodenhof/circleimageview/R$styleable;->CircleImageView_civ_border_overlay:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lde/hdodenhof/circleimageview/CircleImageView;->B:Z

    .line 16
    sget p2, Lde/hdodenhof/circleimageview/R$styleable;->CircleImageView_civ_circle_background_color:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lde/hdodenhof/circleimageview/CircleImageView;->r:I

    .line 17
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 18
    sget-object p1, Lde/hdodenhof/circleimageview/CircleImageView;->D:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 p1, 0x1

    .line 19
    iput-boolean p1, p0, Lde/hdodenhof/circleimageview/CircleImageView;->z:Z

    .line 20
    new-instance p1, Lw4/a;

    invoke-direct {p1, p0}, Lw4/a;-><init>(Lde/hdodenhof/circleimageview/CircleImageView;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 21
    iget-boolean p1, p0, Lde/hdodenhof/circleimageview/CircleImageView;->A:Z

    if-eqz p1, :cond_0

    .line 22
    invoke-virtual {p0}, Lde/hdodenhof/circleimageview/CircleImageView;->b()V

    .line 23
    iput-boolean v1, p0, Lde/hdodenhof/circleimageview/CircleImageView;->A:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lde/hdodenhof/circleimageview/CircleImageView;->C:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iput-object v1, p0, Lde/hdodenhof/circleimageview/CircleImageView;->s:Landroid/graphics/Bitmap;

    .line 7
    .line 8
    goto :goto_3

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    goto :goto_2

    .line 16
    :cond_1
    instance-of v2, v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 17
    .line 18
    if-eqz v2, :cond_2

    .line 19
    .line 20
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    goto :goto_2

    .line 27
    :cond_2
    :try_start_0
    instance-of v2, v0, Landroid/graphics/drawable/ColorDrawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    sget-object v3, Lde/hdodenhof/circleimageview/CircleImageView;->E:Landroid/graphics/Bitmap$Config;

    .line 30
    .line 31
    if-eqz v2, :cond_3

    .line 32
    .line 33
    const/4 v2, 0x2

    .line 34
    :try_start_1
    invoke-static {v2, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    goto :goto_0

    .line 39
    :catch_0
    move-exception v0

    .line 40
    goto :goto_1

    .line 41
    :cond_3
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    invoke-static {v2, v4, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    :goto_0
    new-instance v3, Landroid/graphics/Canvas;

    .line 54
    .line 55
    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3}, Landroid/graphics/Canvas;->getWidth()I

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    invoke-virtual {v3}, Landroid/graphics/Canvas;->getHeight()I

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    const/4 v6, 0x0

    .line 67
    invoke-virtual {v0, v6, v6, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 71
    .line 72
    .line 73
    move-object v1, v2

    .line 74
    goto :goto_2

    .line 75
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 76
    .line 77
    .line 78
    :goto_2
    iput-object v1, p0, Lde/hdodenhof/circleimageview/CircleImageView;->s:Landroid/graphics/Bitmap;

    .line 79
    .line 80
    :goto_3
    invoke-virtual {p0}, Lde/hdodenhof/circleimageview/CircleImageView;->b()V

    .line 81
    .line 82
    .line 83
    return-void
.end method

.method public final b()V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lde/hdodenhof/circleimageview/CircleImageView;->z:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iput-boolean v1, p0, Lde/hdodenhof/circleimageview/CircleImageView;->A:Z

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    iget-object v0, p0, Lde/hdodenhof/circleimageview/CircleImageView;->s:Landroid/graphics/Bitmap;

    .line 23
    .line 24
    if-nez v0, :cond_2

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_2
    new-instance v0, Landroid/graphics/BitmapShader;

    .line 31
    .line 32
    iget-object v2, p0, Lde/hdodenhof/circleimageview/CircleImageView;->s:Landroid/graphics/Bitmap;

    .line 33
    .line 34
    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 35
    .line 36
    invoke-direct {v0, v2, v3, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lde/hdodenhof/circleimageview/CircleImageView;->t:Landroid/graphics/BitmapShader;

    .line 40
    .line 41
    iget-object v0, p0, Lde/hdodenhof/circleimageview/CircleImageView;->j:Landroid/graphics/Paint;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 44
    .line 45
    .line 46
    iget-object v2, p0, Lde/hdodenhof/circleimageview/CircleImageView;->t:Landroid/graphics/BitmapShader;

    .line 47
    .line 48
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 49
    .line 50
    .line 51
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 52
    .line 53
    iget-object v3, p0, Lde/hdodenhof/circleimageview/CircleImageView;->m:Landroid/graphics/Paint;

    .line 54
    .line 55
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 59
    .line 60
    .line 61
    iget v2, p0, Lde/hdodenhof/circleimageview/CircleImageView;->p:I

    .line 62
    .line 63
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 64
    .line 65
    .line 66
    iget v2, p0, Lde/hdodenhof/circleimageview/CircleImageView;->q:I

    .line 67
    .line 68
    int-to-float v2, v2

    .line 69
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 70
    .line 71
    .line 72
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 73
    .line 74
    iget-object v3, p0, Lde/hdodenhof/circleimageview/CircleImageView;->n:Landroid/graphics/Paint;

    .line 75
    .line 76
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 80
    .line 81
    .line 82
    iget v1, p0, Lde/hdodenhof/circleimageview/CircleImageView;->r:I

    .line 83
    .line 84
    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 85
    .line 86
    .line 87
    iget-object v1, p0, Lde/hdodenhof/circleimageview/CircleImageView;->s:Landroid/graphics/Bitmap;

    .line 88
    .line 89
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    iput v1, p0, Lde/hdodenhof/circleimageview/CircleImageView;->v:I

    .line 94
    .line 95
    iget-object v1, p0, Lde/hdodenhof/circleimageview/CircleImageView;->s:Landroid/graphics/Bitmap;

    .line 96
    .line 97
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    iput v1, p0, Lde/hdodenhof/circleimageview/CircleImageView;->u:I

    .line 102
    .line 103
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    sub-int/2addr v1, v2

    .line 112
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    sub-int/2addr v1, v2

    .line 117
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 122
    .line 123
    .line 124
    move-result v3

    .line 125
    sub-int/2addr v2, v3

    .line 126
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 127
    .line 128
    .line 129
    move-result v3

    .line 130
    sub-int/2addr v2, v3

    .line 131
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 132
    .line 133
    .line 134
    move-result v3

    .line 135
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 136
    .line 137
    .line 138
    move-result v4

    .line 139
    int-to-float v4, v4

    .line 140
    sub-int/2addr v1, v3

    .line 141
    int-to-float v1, v1

    .line 142
    const/high16 v5, 0x40000000    # 2.0f

    .line 143
    .line 144
    div-float/2addr v1, v5

    .line 145
    add-float/2addr v1, v4

    .line 146
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 147
    .line 148
    .line 149
    move-result v4

    .line 150
    int-to-float v4, v4

    .line 151
    sub-int/2addr v2, v3

    .line 152
    int-to-float v2, v2

    .line 153
    div-float/2addr v2, v5

    .line 154
    add-float/2addr v2, v4

    .line 155
    new-instance v4, Landroid/graphics/RectF;

    .line 156
    .line 157
    int-to-float v3, v3

    .line 158
    add-float v6, v1, v3

    .line 159
    .line 160
    add-float/2addr v3, v2

    .line 161
    invoke-direct {v4, v1, v2, v6, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 162
    .line 163
    .line 164
    iget-object v1, p0, Lde/hdodenhof/circleimageview/CircleImageView;->e:Landroid/graphics/RectF;

    .line 165
    .line 166
    invoke-virtual {v1, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    .line 170
    .line 171
    .line 172
    move-result v2

    .line 173
    iget v3, p0, Lde/hdodenhof/circleimageview/CircleImageView;->q:I

    .line 174
    .line 175
    int-to-float v3, v3

    .line 176
    sub-float/2addr v2, v3

    .line 177
    div-float/2addr v2, v5

    .line 178
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    .line 179
    .line 180
    .line 181
    move-result v3

    .line 182
    iget v4, p0, Lde/hdodenhof/circleimageview/CircleImageView;->q:I

    .line 183
    .line 184
    int-to-float v4, v4

    .line 185
    sub-float/2addr v3, v4

    .line 186
    div-float/2addr v3, v5

    .line 187
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    .line 188
    .line 189
    .line 190
    move-result v2

    .line 191
    iput v2, p0, Lde/hdodenhof/circleimageview/CircleImageView;->x:F

    .line 192
    .line 193
    iget-object v2, p0, Lde/hdodenhof/circleimageview/CircleImageView;->b:Landroid/graphics/RectF;

    .line 194
    .line 195
    invoke-virtual {v2, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 196
    .line 197
    .line 198
    iget-boolean v1, p0, Lde/hdodenhof/circleimageview/CircleImageView;->B:Z

    .line 199
    .line 200
    if-nez v1, :cond_3

    .line 201
    .line 202
    iget v1, p0, Lde/hdodenhof/circleimageview/CircleImageView;->q:I

    .line 203
    .line 204
    if-lez v1, :cond_3

    .line 205
    .line 206
    int-to-float v1, v1

    .line 207
    const/high16 v3, 0x3f800000    # 1.0f

    .line 208
    .line 209
    sub-float/2addr v1, v3

    .line 210
    invoke-virtual {v2, v1, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 211
    .line 212
    .line 213
    :cond_3
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    .line 214
    .line 215
    .line 216
    move-result v1

    .line 217
    div-float/2addr v1, v5

    .line 218
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    .line 219
    .line 220
    .line 221
    move-result v3

    .line 222
    div-float/2addr v3, v5

    .line 223
    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    .line 224
    .line 225
    .line 226
    move-result v1

    .line 227
    iput v1, p0, Lde/hdodenhof/circleimageview/CircleImageView;->w:F

    .line 228
    .line 229
    iget-object v1, p0, Lde/hdodenhof/circleimageview/CircleImageView;->y:Landroid/graphics/ColorFilter;

    .line 230
    .line 231
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 232
    .line 233
    .line 234
    iget-object v0, p0, Lde/hdodenhof/circleimageview/CircleImageView;->f:Landroid/graphics/Matrix;

    .line 235
    .line 236
    const/4 v1, 0x0

    .line 237
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 238
    .line 239
    .line 240
    iget v1, p0, Lde/hdodenhof/circleimageview/CircleImageView;->u:I

    .line 241
    .line 242
    int-to-float v1, v1

    .line 243
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    .line 244
    .line 245
    .line 246
    move-result v3

    .line 247
    mul-float/2addr v3, v1

    .line 248
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    .line 249
    .line 250
    .line 251
    move-result v1

    .line 252
    iget v4, p0, Lde/hdodenhof/circleimageview/CircleImageView;->v:I

    .line 253
    .line 254
    int-to-float v4, v4

    .line 255
    mul-float/2addr v1, v4

    .line 256
    cmpl-float v1, v3, v1

    .line 257
    .line 258
    const/high16 v3, 0x3f000000    # 0.5f

    .line 259
    .line 260
    const/4 v4, 0x0

    .line 261
    if-lez v1, :cond_4

    .line 262
    .line 263
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    .line 264
    .line 265
    .line 266
    move-result v1

    .line 267
    iget v5, p0, Lde/hdodenhof/circleimageview/CircleImageView;->v:I

    .line 268
    .line 269
    int-to-float v5, v5

    .line 270
    div-float/2addr v1, v5

    .line 271
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    .line 272
    .line 273
    .line 274
    move-result v5

    .line 275
    iget v6, p0, Lde/hdodenhof/circleimageview/CircleImageView;->u:I

    .line 276
    .line 277
    int-to-float v6, v6

    .line 278
    mul-float/2addr v6, v1

    .line 279
    sub-float/2addr v5, v6

    .line 280
    mul-float/2addr v5, v3

    .line 281
    move v7, v5

    .line 282
    move v5, v4

    .line 283
    move v4, v7

    .line 284
    goto :goto_0

    .line 285
    :cond_4
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    .line 286
    .line 287
    .line 288
    move-result v1

    .line 289
    iget v5, p0, Lde/hdodenhof/circleimageview/CircleImageView;->u:I

    .line 290
    .line 291
    int-to-float v5, v5

    .line 292
    div-float/2addr v1, v5

    .line 293
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    .line 294
    .line 295
    .line 296
    move-result v5

    .line 297
    iget v6, p0, Lde/hdodenhof/circleimageview/CircleImageView;->v:I

    .line 298
    .line 299
    int-to-float v6, v6

    .line 300
    mul-float/2addr v6, v1

    .line 301
    sub-float/2addr v5, v6

    .line 302
    mul-float/2addr v5, v3

    .line 303
    :goto_0
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 304
    .line 305
    .line 306
    add-float/2addr v4, v3

    .line 307
    float-to-int v1, v4

    .line 308
    int-to-float v1, v1

    .line 309
    iget v4, v2, Landroid/graphics/RectF;->left:F

    .line 310
    .line 311
    add-float/2addr v1, v4

    .line 312
    add-float/2addr v5, v3

    .line 313
    float-to-int v3, v5

    .line 314
    int-to-float v3, v3

    .line 315
    iget v2, v2, Landroid/graphics/RectF;->top:F

    .line 316
    .line 317
    add-float/2addr v3, v2

    .line 318
    invoke-virtual {v0, v1, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 319
    .line 320
    .line 321
    iget-object v1, p0, Lde/hdodenhof/circleimageview/CircleImageView;->t:Landroid/graphics/BitmapShader;

    .line 322
    .line 323
    invoke-virtual {v1, v0}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 324
    .line 325
    .line 326
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 327
    .line 328
    .line 329
    return-void
.end method

.method public getBorderColor()I
    .locals 1

    .line 1
    iget v0, p0, Lde/hdodenhof/circleimageview/CircleImageView;->p:I

    .line 2
    .line 3
    return v0
.end method

.method public getBorderWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lde/hdodenhof/circleimageview/CircleImageView;->q:I

    .line 2
    .line 3
    return v0
.end method

.method public getCircleBackgroundColor()I
    .locals 1

    .line 1
    iget v0, p0, Lde/hdodenhof/circleimageview/CircleImageView;->r:I

    .line 2
    .line 3
    return v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    .line 1
    iget-object v0, p0, Lde/hdodenhof/circleimageview/CircleImageView;->y:Landroid/graphics/ColorFilter;

    .line 2
    .line 3
    return-object v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .line 1
    sget-object v0, Lde/hdodenhof/circleimageview/CircleImageView;->D:Landroid/widget/ImageView$ScaleType;

    .line 2
    .line 3
    return-object v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lde/hdodenhof/circleimageview/CircleImageView;->C:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lde/hdodenhof/circleimageview/CircleImageView;->s:Landroid/graphics/Bitmap;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_1
    iget v0, p0, Lde/hdodenhof/circleimageview/CircleImageView;->r:I

    .line 15
    .line 16
    iget-object v1, p0, Lde/hdodenhof/circleimageview/CircleImageView;->b:Landroid/graphics/RectF;

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    iget v3, p0, Lde/hdodenhof/circleimageview/CircleImageView;->w:F

    .line 29
    .line 30
    iget-object v4, p0, Lde/hdodenhof/circleimageview/CircleImageView;->n:Landroid/graphics/Paint;

    .line 31
    .line 32
    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 33
    .line 34
    .line 35
    :cond_2
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    iget v2, p0, Lde/hdodenhof/circleimageview/CircleImageView;->w:F

    .line 44
    .line 45
    iget-object v3, p0, Lde/hdodenhof/circleimageview/CircleImageView;->j:Landroid/graphics/Paint;

    .line 46
    .line 47
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 48
    .line 49
    .line 50
    iget v0, p0, Lde/hdodenhof/circleimageview/CircleImageView;->q:I

    .line 51
    .line 52
    if-lez v0, :cond_3

    .line 53
    .line 54
    iget-object v0, p0, Lde/hdodenhof/circleimageview/CircleImageView;->e:Landroid/graphics/RectF;

    .line 55
    .line 56
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    iget v2, p0, Lde/hdodenhof/circleimageview/CircleImageView;->x:F

    .line 65
    .line 66
    iget-object v3, p0, Lde/hdodenhof/circleimageview/CircleImageView;->m:Landroid/graphics/Paint;

    .line 67
    .line 68
    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 69
    .line 70
    .line 71
    :cond_3
    :goto_0
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lde/hdodenhof/circleimageview/CircleImageView;->b()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-object v2, p0, Lde/hdodenhof/circleimageview/CircleImageView;->e:Landroid/graphics/RectF;

    .line 10
    .line 11
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    sub-float/2addr v0, v3

    .line 16
    float-to-double v3, v0

    .line 17
    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    .line 18
    .line 19
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    .line 20
    .line 21
    .line 22
    move-result-wide v3

    .line 23
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    sub-float/2addr v1, v0

    .line 28
    float-to-double v0, v1

    .line 29
    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->pow(DD)D

    .line 30
    .line 31
    .line 32
    move-result-wide v0

    .line 33
    add-double/2addr v0, v3

    .line 34
    iget v2, p0, Lde/hdodenhof/circleimageview/CircleImageView;->x:F

    .line 35
    .line 36
    float-to-double v2, v2

    .line 37
    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->pow(DD)D

    .line 38
    .line 39
    .line 40
    move-result-wide v2

    .line 41
    cmpg-double v0, v0, v2

    .line 42
    .line 43
    if-gtz v0, :cond_0

    .line 44
    .line 45
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-eqz p1, :cond_0

    .line 50
    .line 51
    const/4 p1, 0x1

    .line 52
    return p1

    .line 53
    :cond_0
    const/4 p1, 0x0

    .line 54
    return p1
.end method

.method public setAdjustViewBounds(Z)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 5
    .line 6
    const-string v0, "adjustViewBounds not supported."

    .line 7
    .line 8
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    throw p1
.end method

.method public setBorderColor(I)V
    .locals 1

    .line 1
    iget v0, p0, Lde/hdodenhof/circleimageview/CircleImageView;->p:I

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Lde/hdodenhof/circleimageview/CircleImageView;->p:I

    .line 7
    .line 8
    iget-object v0, p0, Lde/hdodenhof/circleimageview/CircleImageView;->m:Landroid/graphics/Paint;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public setBorderOverlay(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lde/hdodenhof/circleimageview/CircleImageView;->B:Z

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-boolean p1, p0, Lde/hdodenhof/circleimageview/CircleImageView;->B:Z

    .line 7
    .line 8
    invoke-virtual {p0}, Lde/hdodenhof/circleimageview/CircleImageView;->b()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setBorderWidth(I)V
    .locals 1

    .line 1
    iget v0, p0, Lde/hdodenhof/circleimageview/CircleImageView;->q:I

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Lde/hdodenhof/circleimageview/CircleImageView;->q:I

    .line 7
    .line 8
    invoke-virtual {p0}, Lde/hdodenhof/circleimageview/CircleImageView;->b()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setCircleBackgroundColor(I)V
    .locals 1

    .line 1
    iget v0, p0, Lde/hdodenhof/circleimageview/CircleImageView;->r:I

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Lde/hdodenhof/circleimageview/CircleImageView;->r:I

    .line 7
    .line 8
    iget-object v0, p0, Lde/hdodenhof/circleimageview/CircleImageView;->n:Landroid/graphics/Paint;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public setCircleBackgroundColorResource(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-virtual {p0, p1}, Lde/hdodenhof/circleimageview/CircleImageView;->setCircleBackgroundColor(I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lde/hdodenhof/circleimageview/CircleImageView;->y:Landroid/graphics/ColorFilter;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-object p1, p0, Lde/hdodenhof/circleimageview/CircleImageView;->y:Landroid/graphics/ColorFilter;

    .line 7
    .line 8
    iget-object v0, p0, Lde/hdodenhof/circleimageview/CircleImageView;->j:Landroid/graphics/Paint;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public setDisableCircularTransformation(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lde/hdodenhof/circleimageview/CircleImageView;->C:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-boolean p1, p0, Lde/hdodenhof/circleimageview/CircleImageView;->C:Z

    .line 7
    .line 8
    invoke-virtual {p0}, Lde/hdodenhof/circleimageview/CircleImageView;->a()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lde/hdodenhof/circleimageview/CircleImageView;->a()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lde/hdodenhof/circleimageview/CircleImageView;->a()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public setImageResource(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lde/hdodenhof/circleimageview/CircleImageView;->a()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lde/hdodenhof/circleimageview/CircleImageView;->a()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public setPadding(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lde/hdodenhof/circleimageview/CircleImageView;->b()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public setPaddingRelative(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->setPaddingRelative(IIII)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lde/hdodenhof/circleimageview/CircleImageView;->b()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 3

    .line 1
    sget-object v0, Lde/hdodenhof/circleimageview/CircleImageView;->D:Landroid/widget/ImageView$ScaleType;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v2, "ScaleType "

    .line 11
    .line 12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string p1, " not supported."

    .line 19
    .line 20
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw v0
.end method
