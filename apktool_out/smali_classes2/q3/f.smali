.class public final Lq3/f;
.super LG3/j;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;
.implements Lx3/I;


# static fields
.field public static final Q0:[I

.field public static final R0:Landroid/graphics/drawable/ShapeDrawable;


# instance fields
.field public A0:I

.field public B0:Z

.field public C0:I

.field public D0:I

.field public E0:Landroid/graphics/ColorFilter;

.field public F0:Landroid/graphics/PorterDuffColorFilter;

.field public G0:Landroid/content/res/ColorStateList;

.field public H:Landroid/content/res/ColorStateList;

.field public H0:Landroid/graphics/PorterDuff$Mode;

.field public I:Landroid/content/res/ColorStateList;

.field public I0:[I

.field public J:F

.field public J0:Z

.field public K:F

.field public K0:Landroid/content/res/ColorStateList;

.field public L:Landroid/content/res/ColorStateList;

.field public L0:Ljava/lang/ref/WeakReference;

.field public M:F

.field public M0:Landroid/text/TextUtils$TruncateAt;

.field public N:Landroid/content/res/ColorStateList;

.field public N0:Z

.field public O:Ljava/lang/CharSequence;

.field public O0:I

.field public P:Z

.field public P0:Z

.field public Q:Landroid/graphics/drawable/Drawable;

.field public R:Landroid/content/res/ColorStateList;

.field public S:F

.field public T:Z

.field public U:Z

.field public V:Landroid/graphics/drawable/Drawable;

.field public W:Landroid/graphics/drawable/RippleDrawable;

.field public X:Landroid/content/res/ColorStateList;

.field public Y:F

.field public Z:Ljava/lang/CharSequence;

.field public a0:Z

.field public b0:Z

.field public c0:Landroid/graphics/drawable/Drawable;

.field public d0:Landroid/content/res/ColorStateList;

.field public e0:Lg3/c;

.field public f0:Lg3/c;

.field public g0:F

.field public h0:F

.field public i0:F

.field public j0:F

.field public k0:F

.field public l0:F

.field public m0:F

.field public n0:F

.field public final o0:Landroid/content/Context;

.field public final p0:Landroid/graphics/Paint;

.field public final q0:Landroid/graphics/Paint$FontMetrics;

.field public final r0:Landroid/graphics/RectF;

.field public final s0:Landroid/graphics/PointF;

.field public final t0:Landroid/graphics/Path;

.field public final u0:Lx3/J;

.field public v0:I

.field public w0:I

.field public x0:I

.field public y0:I

.field public z0:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const v0, 0x101009e

    .line 2
    .line 3
    .line 4
    filled-new-array {v0}, [I

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sput-object v0, Lq3/f;->Q0:[I

    .line 9
    .line 10
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    .line 11
    .line 12
    new-instance v1, Landroid/graphics/drawable/shapes/OvalShape;

    .line 13
    .line 14
    invoke-direct {v1}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lq3/f;->R0:Landroid/graphics/drawable/ShapeDrawable;

    .line 21
    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, LG3/j;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 2
    .line 3
    .line 4
    const/high16 p2, -0x40800000    # -1.0f

    .line 5
    .line 6
    iput p2, p0, Lq3/f;->K:F

    .line 7
    .line 8
    new-instance p2, Landroid/graphics/Paint;

    .line 9
    .line 10
    const/4 p3, 0x1

    .line 11
    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    .line 12
    .line 13
    .line 14
    iput-object p2, p0, Lq3/f;->p0:Landroid/graphics/Paint;

    .line 15
    .line 16
    new-instance p2, Landroid/graphics/Paint$FontMetrics;

    .line 17
    .line 18
    invoke-direct {p2}, Landroid/graphics/Paint$FontMetrics;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object p2, p0, Lq3/f;->q0:Landroid/graphics/Paint$FontMetrics;

    .line 22
    .line 23
    new-instance p2, Landroid/graphics/RectF;

    .line 24
    .line 25
    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object p2, p0, Lq3/f;->r0:Landroid/graphics/RectF;

    .line 29
    .line 30
    new-instance p2, Landroid/graphics/PointF;

    .line 31
    .line 32
    invoke-direct {p2}, Landroid/graphics/PointF;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object p2, p0, Lq3/f;->s0:Landroid/graphics/PointF;

    .line 36
    .line 37
    new-instance p2, Landroid/graphics/Path;

    .line 38
    .line 39
    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object p2, p0, Lq3/f;->t0:Landroid/graphics/Path;

    .line 43
    .line 44
    const/16 p2, 0xff

    .line 45
    .line 46
    iput p2, p0, Lq3/f;->D0:I

    .line 47
    .line 48
    sget-object p2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 49
    .line 50
    iput-object p2, p0, Lq3/f;->H0:Landroid/graphics/PorterDuff$Mode;

    .line 51
    .line 52
    new-instance p2, Ljava/lang/ref/WeakReference;

    .line 53
    .line 54
    const/4 p4, 0x0

    .line 55
    invoke-direct {p2, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    iput-object p2, p0, Lq3/f;->L0:Ljava/lang/ref/WeakReference;

    .line 59
    .line 60
    invoke-virtual {p0, p1}, LG3/j;->initializeElevationOverlay(Landroid/content/Context;)V

    .line 61
    .line 62
    .line 63
    iput-object p1, p0, Lq3/f;->o0:Landroid/content/Context;

    .line 64
    .line 65
    new-instance p2, Lx3/J;

    .line 66
    .line 67
    invoke-direct {p2, p0}, Lx3/J;-><init>(Lx3/I;)V

    .line 68
    .line 69
    .line 70
    iput-object p2, p0, Lq3/f;->u0:Lx3/J;

    .line 71
    .line 72
    const-string p4, ""

    .line 73
    .line 74
    iput-object p4, p0, Lq3/f;->O:Ljava/lang/CharSequence;

    .line 75
    .line 76
    invoke-virtual {p2}, Lx3/J;->getTextPaint()Landroid/text/TextPaint;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 89
    .line 90
    iput p1, p2, Landroid/text/TextPaint;->density:F

    .line 91
    .line 92
    sget-object p1, Lq3/f;->Q0:[I

    .line 93
    .line 94
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0, p1}, Lq3/f;->setCloseIconState([I)Z

    .line 98
    .line 99
    .line 100
    iput-boolean p3, p0, Lq3/f;->N0:Z

    .line 101
    .line 102
    sget-object p1, LD3/a;->a:[I

    .line 103
    .line 104
    sget-object p1, Lq3/f;->R0:Landroid/graphics/drawable/ShapeDrawable;

    .line 105
    .line 106
    const/4 p2, -0x1

    .line 107
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 108
    .line 109
    .line 110
    return-void
.end method

.method public static createFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)Lq3/f;
    .locals 7

    .line 1
    new-instance v0, Lq3/f;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2, p3}, Lq3/f;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 4
    .line 5
    .line 6
    sget-object v3, Lcom/google/android/material/R$styleable;->Chip:[I

    .line 7
    .line 8
    const/4 p0, 0x0

    .line 9
    new-array v6, p0, [I

    .line 10
    .line 11
    iget-object v1, v0, Lq3/f;->o0:Landroid/content/Context;

    .line 12
    .line 13
    move-object v2, p1

    .line 14
    move v4, p2

    .line 15
    move v5, p3

    .line 16
    invoke-static/range {v1 .. v6}, Lx3/L;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    sget p2, Lcom/google/android/material/R$styleable;->Chip_shapeAppearance:I

    .line 21
    .line 22
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    iput-boolean p2, v0, Lq3/f;->P0:Z

    .line 27
    .line 28
    sget p2, Lcom/google/android/material/R$styleable;->Chip_chipSurfaceColor:I

    .line 29
    .line 30
    iget-object p3, v0, Lq3/f;->o0:Landroid/content/Context;

    .line 31
    .line 32
    invoke-static {p3, p1, p2}, LC3/d;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    iget-object v1, v0, Lq3/f;->H:Landroid/content/res/ColorStateList;

    .line 37
    .line 38
    if-eq v1, p2, :cond_0

    .line 39
    .line 40
    iput-object p2, v0, Lq3/f;->H:Landroid/content/res/ColorStateList;

    .line 41
    .line 42
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-virtual {v0, p2}, Lq3/f;->onStateChange([I)Z

    .line 47
    .line 48
    .line 49
    :cond_0
    sget p2, Lcom/google/android/material/R$styleable;->Chip_chipBackgroundColor:I

    .line 50
    .line 51
    invoke-static {p3, p1, p2}, LC3/d;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    invoke-virtual {v0, p2}, Lq3/f;->setChipBackgroundColor(Landroid/content/res/ColorStateList;)V

    .line 56
    .line 57
    .line 58
    sget p2, Lcom/google/android/material/R$styleable;->Chip_chipMinHeight:I

    .line 59
    .line 60
    const/4 v1, 0x0

    .line 61
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 62
    .line 63
    .line 64
    move-result p2

    .line 65
    invoke-virtual {v0, p2}, Lq3/f;->setChipMinHeight(F)V

    .line 66
    .line 67
    .line 68
    sget p2, Lcom/google/android/material/R$styleable;->Chip_chipCornerRadius:I

    .line 69
    .line 70
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 71
    .line 72
    .line 73
    move-result p2

    .line 74
    if-eqz p2, :cond_1

    .line 75
    .line 76
    sget p2, Lcom/google/android/material/R$styleable;->Chip_chipCornerRadius:I

    .line 77
    .line 78
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 79
    .line 80
    .line 81
    move-result p2

    .line 82
    invoke-virtual {v0, p2}, Lq3/f;->setChipCornerRadius(F)V

    .line 83
    .line 84
    .line 85
    :cond_1
    sget p2, Lcom/google/android/material/R$styleable;->Chip_chipStrokeColor:I

    .line 86
    .line 87
    invoke-static {p3, p1, p2}, LC3/d;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    invoke-virtual {v0, p2}, Lq3/f;->setChipStrokeColor(Landroid/content/res/ColorStateList;)V

    .line 92
    .line 93
    .line 94
    sget p2, Lcom/google/android/material/R$styleable;->Chip_chipStrokeWidth:I

    .line 95
    .line 96
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 97
    .line 98
    .line 99
    move-result p2

    .line 100
    invoke-virtual {v0, p2}, Lq3/f;->setChipStrokeWidth(F)V

    .line 101
    .line 102
    .line 103
    sget p2, Lcom/google/android/material/R$styleable;->Chip_rippleColor:I

    .line 104
    .line 105
    invoke-static {p3, p1, p2}, LC3/d;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 106
    .line 107
    .line 108
    move-result-object p2

    .line 109
    invoke-virtual {v0, p2}, Lq3/f;->setRippleColor(Landroid/content/res/ColorStateList;)V

    .line 110
    .line 111
    .line 112
    sget p2, Lcom/google/android/material/R$styleable;->Chip_android_text:I

    .line 113
    .line 114
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    invoke-virtual {v0, p2}, Lq3/f;->setText(Ljava/lang/CharSequence;)V

    .line 119
    .line 120
    .line 121
    sget p2, Lcom/google/android/material/R$styleable;->Chip_android_textAppearance:I

    .line 122
    .line 123
    invoke-static {p3, p1, p2}, LC3/d;->getTextAppearance(Landroid/content/Context;Landroid/content/res/TypedArray;I)LC3/g;

    .line 124
    .line 125
    .line 126
    move-result-object p2

    .line 127
    sget v3, Lcom/google/android/material/R$styleable;->Chip_android_textSize:I

    .line 128
    .line 129
    invoke-virtual {p2}, LC3/g;->getTextSize()F

    .line 130
    .line 131
    .line 132
    move-result v4

    .line 133
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 134
    .line 135
    .line 136
    move-result v3

    .line 137
    invoke-virtual {p2, v3}, LC3/g;->setTextSize(F)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0, p2}, Lq3/f;->setTextAppearance(LC3/g;)V

    .line 141
    .line 142
    .line 143
    sget p2, Lcom/google/android/material/R$styleable;->Chip_android_ellipsize:I

    .line 144
    .line 145
    invoke-virtual {p1, p2, p0}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 146
    .line 147
    .line 148
    move-result p2

    .line 149
    const/4 v3, 0x1

    .line 150
    if-eq p2, v3, :cond_4

    .line 151
    .line 152
    const/4 v3, 0x2

    .line 153
    if-eq p2, v3, :cond_3

    .line 154
    .line 155
    const/4 v3, 0x3

    .line 156
    if-eq p2, v3, :cond_2

    .line 157
    .line 158
    goto :goto_0

    .line 159
    :cond_2
    sget-object p2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 160
    .line 161
    invoke-virtual {v0, p2}, Lq3/f;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 162
    .line 163
    .line 164
    goto :goto_0

    .line 165
    :cond_3
    sget-object p2, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    .line 166
    .line 167
    invoke-virtual {v0, p2}, Lq3/f;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 168
    .line 169
    .line 170
    goto :goto_0

    .line 171
    :cond_4
    sget-object p2, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    .line 172
    .line 173
    invoke-virtual {v0, p2}, Lq3/f;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 174
    .line 175
    .line 176
    :goto_0
    sget p2, Lcom/google/android/material/R$styleable;->Chip_chipIconVisible:I

    .line 177
    .line 178
    invoke-virtual {p1, p2, p0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 179
    .line 180
    .line 181
    move-result p2

    .line 182
    invoke-virtual {v0, p2}, Lq3/f;->setChipIconVisible(Z)V

    .line 183
    .line 184
    .line 185
    const-string p2, "http://schemas.android.com/apk/res-auto"

    .line 186
    .line 187
    if-eqz v2, :cond_5

    .line 188
    .line 189
    const-string v3, "chipIconEnabled"

    .line 190
    .line 191
    invoke-interface {v2, p2, v3}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v3

    .line 195
    if-eqz v3, :cond_5

    .line 196
    .line 197
    const-string v3, "chipIconVisible"

    .line 198
    .line 199
    invoke-interface {v2, p2, v3}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v3

    .line 203
    if-nez v3, :cond_5

    .line 204
    .line 205
    sget v3, Lcom/google/android/material/R$styleable;->Chip_chipIconEnabled:I

    .line 206
    .line 207
    invoke-virtual {p1, v3, p0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 208
    .line 209
    .line 210
    move-result v3

    .line 211
    invoke-virtual {v0, v3}, Lq3/f;->setChipIconVisible(Z)V

    .line 212
    .line 213
    .line 214
    :cond_5
    sget v3, Lcom/google/android/material/R$styleable;->Chip_chipIcon:I

    .line 215
    .line 216
    invoke-static {p3, p1, v3}, LC3/d;->getDrawable(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    .line 217
    .line 218
    .line 219
    move-result-object v3

    .line 220
    invoke-virtual {v0, v3}, Lq3/f;->setChipIcon(Landroid/graphics/drawable/Drawable;)V

    .line 221
    .line 222
    .line 223
    sget v3, Lcom/google/android/material/R$styleable;->Chip_chipIconTint:I

    .line 224
    .line 225
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 226
    .line 227
    .line 228
    move-result v3

    .line 229
    if-eqz v3, :cond_6

    .line 230
    .line 231
    sget v3, Lcom/google/android/material/R$styleable;->Chip_chipIconTint:I

    .line 232
    .line 233
    invoke-static {p3, p1, v3}, LC3/d;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 234
    .line 235
    .line 236
    move-result-object v3

    .line 237
    invoke-virtual {v0, v3}, Lq3/f;->setChipIconTint(Landroid/content/res/ColorStateList;)V

    .line 238
    .line 239
    .line 240
    :cond_6
    sget v3, Lcom/google/android/material/R$styleable;->Chip_chipIconSize:I

    .line 241
    .line 242
    const/high16 v4, -0x40800000    # -1.0f

    .line 243
    .line 244
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 245
    .line 246
    .line 247
    move-result v3

    .line 248
    invoke-virtual {v0, v3}, Lq3/f;->setChipIconSize(F)V

    .line 249
    .line 250
    .line 251
    sget v3, Lcom/google/android/material/R$styleable;->Chip_closeIconVisible:I

    .line 252
    .line 253
    invoke-virtual {p1, v3, p0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 254
    .line 255
    .line 256
    move-result v3

    .line 257
    invoke-virtual {v0, v3}, Lq3/f;->setCloseIconVisible(Z)V

    .line 258
    .line 259
    .line 260
    if-eqz v2, :cond_7

    .line 261
    .line 262
    const-string v3, "closeIconEnabled"

    .line 263
    .line 264
    invoke-interface {v2, p2, v3}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v3

    .line 268
    if-eqz v3, :cond_7

    .line 269
    .line 270
    const-string v3, "closeIconVisible"

    .line 271
    .line 272
    invoke-interface {v2, p2, v3}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v3

    .line 276
    if-nez v3, :cond_7

    .line 277
    .line 278
    sget v3, Lcom/google/android/material/R$styleable;->Chip_closeIconEnabled:I

    .line 279
    .line 280
    invoke-virtual {p1, v3, p0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 281
    .line 282
    .line 283
    move-result v3

    .line 284
    invoke-virtual {v0, v3}, Lq3/f;->setCloseIconVisible(Z)V

    .line 285
    .line 286
    .line 287
    :cond_7
    sget v3, Lcom/google/android/material/R$styleable;->Chip_closeIcon:I

    .line 288
    .line 289
    invoke-static {p3, p1, v3}, LC3/d;->getDrawable(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    .line 290
    .line 291
    .line 292
    move-result-object v3

    .line 293
    invoke-virtual {v0, v3}, Lq3/f;->setCloseIcon(Landroid/graphics/drawable/Drawable;)V

    .line 294
    .line 295
    .line 296
    sget v3, Lcom/google/android/material/R$styleable;->Chip_closeIconTint:I

    .line 297
    .line 298
    invoke-static {p3, p1, v3}, LC3/d;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 299
    .line 300
    .line 301
    move-result-object v3

    .line 302
    invoke-virtual {v0, v3}, Lq3/f;->setCloseIconTint(Landroid/content/res/ColorStateList;)V

    .line 303
    .line 304
    .line 305
    sget v3, Lcom/google/android/material/R$styleable;->Chip_closeIconSize:I

    .line 306
    .line 307
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 308
    .line 309
    .line 310
    move-result v3

    .line 311
    invoke-virtual {v0, v3}, Lq3/f;->setCloseIconSize(F)V

    .line 312
    .line 313
    .line 314
    sget v3, Lcom/google/android/material/R$styleable;->Chip_android_checkable:I

    .line 315
    .line 316
    invoke-virtual {p1, v3, p0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 317
    .line 318
    .line 319
    move-result v3

    .line 320
    invoke-virtual {v0, v3}, Lq3/f;->setCheckable(Z)V

    .line 321
    .line 322
    .line 323
    sget v3, Lcom/google/android/material/R$styleable;->Chip_checkedIconVisible:I

    .line 324
    .line 325
    invoke-virtual {p1, v3, p0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 326
    .line 327
    .line 328
    move-result v3

    .line 329
    invoke-virtual {v0, v3}, Lq3/f;->setCheckedIconVisible(Z)V

    .line 330
    .line 331
    .line 332
    if-eqz v2, :cond_8

    .line 333
    .line 334
    const-string v3, "checkedIconEnabled"

    .line 335
    .line 336
    invoke-interface {v2, p2, v3}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v3

    .line 340
    if-eqz v3, :cond_8

    .line 341
    .line 342
    const-string v3, "checkedIconVisible"

    .line 343
    .line 344
    invoke-interface {v2, p2, v3}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object p2

    .line 348
    if-nez p2, :cond_8

    .line 349
    .line 350
    sget p2, Lcom/google/android/material/R$styleable;->Chip_checkedIconEnabled:I

    .line 351
    .line 352
    invoke-virtual {p1, p2, p0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 353
    .line 354
    .line 355
    move-result p0

    .line 356
    invoke-virtual {v0, p0}, Lq3/f;->setCheckedIconVisible(Z)V

    .line 357
    .line 358
    .line 359
    :cond_8
    sget p0, Lcom/google/android/material/R$styleable;->Chip_checkedIcon:I

    .line 360
    .line 361
    invoke-static {p3, p1, p0}, LC3/d;->getDrawable(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    .line 362
    .line 363
    .line 364
    move-result-object p0

    .line 365
    invoke-virtual {v0, p0}, Lq3/f;->setCheckedIcon(Landroid/graphics/drawable/Drawable;)V

    .line 366
    .line 367
    .line 368
    sget p0, Lcom/google/android/material/R$styleable;->Chip_checkedIconTint:I

    .line 369
    .line 370
    invoke-virtual {p1, p0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 371
    .line 372
    .line 373
    move-result p0

    .line 374
    if-eqz p0, :cond_9

    .line 375
    .line 376
    sget p0, Lcom/google/android/material/R$styleable;->Chip_checkedIconTint:I

    .line 377
    .line 378
    invoke-static {p3, p1, p0}, LC3/d;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 379
    .line 380
    .line 381
    move-result-object p0

    .line 382
    invoke-virtual {v0, p0}, Lq3/f;->setCheckedIconTint(Landroid/content/res/ColorStateList;)V

    .line 383
    .line 384
    .line 385
    :cond_9
    sget p0, Lcom/google/android/material/R$styleable;->Chip_showMotionSpec:I

    .line 386
    .line 387
    invoke-static {p3, p1, p0}, Lg3/c;->createFromAttribute(Landroid/content/Context;Landroid/content/res/TypedArray;I)Lg3/c;

    .line 388
    .line 389
    .line 390
    move-result-object p0

    .line 391
    invoke-virtual {v0, p0}, Lq3/f;->setShowMotionSpec(Lg3/c;)V

    .line 392
    .line 393
    .line 394
    sget p0, Lcom/google/android/material/R$styleable;->Chip_hideMotionSpec:I

    .line 395
    .line 396
    invoke-static {p3, p1, p0}, Lg3/c;->createFromAttribute(Landroid/content/Context;Landroid/content/res/TypedArray;I)Lg3/c;

    .line 397
    .line 398
    .line 399
    move-result-object p0

    .line 400
    invoke-virtual {v0, p0}, Lq3/f;->setHideMotionSpec(Lg3/c;)V

    .line 401
    .line 402
    .line 403
    sget p0, Lcom/google/android/material/R$styleable;->Chip_chipStartPadding:I

    .line 404
    .line 405
    invoke-virtual {p1, p0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 406
    .line 407
    .line 408
    move-result p0

    .line 409
    invoke-virtual {v0, p0}, Lq3/f;->setChipStartPadding(F)V

    .line 410
    .line 411
    .line 412
    sget p0, Lcom/google/android/material/R$styleable;->Chip_iconStartPadding:I

    .line 413
    .line 414
    invoke-virtual {p1, p0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 415
    .line 416
    .line 417
    move-result p0

    .line 418
    invoke-virtual {v0, p0}, Lq3/f;->setIconStartPadding(F)V

    .line 419
    .line 420
    .line 421
    sget p0, Lcom/google/android/material/R$styleable;->Chip_iconEndPadding:I

    .line 422
    .line 423
    invoke-virtual {p1, p0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 424
    .line 425
    .line 426
    move-result p0

    .line 427
    invoke-virtual {v0, p0}, Lq3/f;->setIconEndPadding(F)V

    .line 428
    .line 429
    .line 430
    sget p0, Lcom/google/android/material/R$styleable;->Chip_textStartPadding:I

    .line 431
    .line 432
    invoke-virtual {p1, p0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 433
    .line 434
    .line 435
    move-result p0

    .line 436
    invoke-virtual {v0, p0}, Lq3/f;->setTextStartPadding(F)V

    .line 437
    .line 438
    .line 439
    sget p0, Lcom/google/android/material/R$styleable;->Chip_textEndPadding:I

    .line 440
    .line 441
    invoke-virtual {p1, p0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 442
    .line 443
    .line 444
    move-result p0

    .line 445
    invoke-virtual {v0, p0}, Lq3/f;->setTextEndPadding(F)V

    .line 446
    .line 447
    .line 448
    sget p0, Lcom/google/android/material/R$styleable;->Chip_closeIconStartPadding:I

    .line 449
    .line 450
    invoke-virtual {p1, p0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 451
    .line 452
    .line 453
    move-result p0

    .line 454
    invoke-virtual {v0, p0}, Lq3/f;->setCloseIconStartPadding(F)V

    .line 455
    .line 456
    .line 457
    sget p0, Lcom/google/android/material/R$styleable;->Chip_closeIconEndPadding:I

    .line 458
    .line 459
    invoke-virtual {p1, p0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 460
    .line 461
    .line 462
    move-result p0

    .line 463
    invoke-virtual {v0, p0}, Lq3/f;->setCloseIconEndPadding(F)V

    .line 464
    .line 465
    .line 466
    sget p0, Lcom/google/android/material/R$styleable;->Chip_chipEndPadding:I

    .line 467
    .line 468
    invoke-virtual {p1, p0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 469
    .line 470
    .line 471
    move-result p0

    .line 472
    invoke-virtual {v0, p0}, Lq3/f;->setChipEndPadding(F)V

    .line 473
    .line 474
    .line 475
    sget p0, Lcom/google/android/material/R$styleable;->Chip_android_maxWidth:I

    .line 476
    .line 477
    const p2, 0x7fffffff

    .line 478
    .line 479
    .line 480
    invoke-virtual {p1, p0, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 481
    .line 482
    .line 483
    move-result p0

    .line 484
    invoke-virtual {v0, p0}, Lq3/f;->setMaxWidth(I)V

    .line 485
    .line 486
    .line 487
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 488
    .line 489
    .line 490
    return-object v0
.end method

.method public static l(Landroid/content/res/ColorStateList;)Z
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->isStateful()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0
.end method

.method public static m(Landroid/graphics/drawable/Drawable;)Z
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0
.end method

.method public static r(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 5
    .line 6
    .line 7
    :cond_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 4
    .line 5
    .line 6
    move-result-object v8

    .line 7
    invoke-virtual {v8}, Landroid/graphics/Rect;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_18

    .line 12
    .line 13
    invoke-virtual {v0}, Lq3/f;->getAlpha()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    goto/16 :goto_9

    .line 20
    .line 21
    :cond_0
    iget v6, v0, Lq3/f;->D0:I

    .line 22
    .line 23
    const/16 v9, 0xff

    .line 24
    .line 25
    const/4 v10, 0x0

    .line 26
    if-ge v6, v9, :cond_1

    .line 27
    .line 28
    iget v1, v8, Landroid/graphics/Rect;->left:I

    .line 29
    .line 30
    int-to-float v2, v1

    .line 31
    iget v1, v8, Landroid/graphics/Rect;->top:I

    .line 32
    .line 33
    int-to-float v3, v1

    .line 34
    iget v1, v8, Landroid/graphics/Rect;->right:I

    .line 35
    .line 36
    int-to-float v4, v1

    .line 37
    iget v1, v8, Landroid/graphics/Rect;->bottom:I

    .line 38
    .line 39
    int-to-float v5, v1

    .line 40
    move-object/from16 v1, p1

    .line 41
    .line 42
    invoke-static/range {v1 .. v6}, Ln3/b;->saveLayerAlpha(Landroid/graphics/Canvas;FFFFI)I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    move v11, v2

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    move-object/from16 v1, p1

    .line 49
    .line 50
    move v11, v10

    .line 51
    :goto_0
    iget-boolean v2, v0, Lq3/f;->P0:Z

    .line 52
    .line 53
    iget-object v3, v0, Lq3/f;->p0:Landroid/graphics/Paint;

    .line 54
    .line 55
    iget-object v12, v0, Lq3/f;->r0:Landroid/graphics/RectF;

    .line 56
    .line 57
    if-nez v2, :cond_2

    .line 58
    .line 59
    iget v2, v0, Lq3/f;->v0:I

    .line 60
    .line 61
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 62
    .line 63
    .line 64
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 65
    .line 66
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v12, v8}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Lq3/f;->getChipCornerRadius()F

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    invoke-virtual {v0}, Lq3/f;->getChipCornerRadius()F

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    invoke-virtual {v1, v12, v2, v4, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 81
    .line 82
    .line 83
    :cond_2
    iget-boolean v2, v0, Lq3/f;->P0:Z

    .line 84
    .line 85
    if-nez v2, :cond_4

    .line 86
    .line 87
    iget v2, v0, Lq3/f;->w0:I

    .line 88
    .line 89
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 90
    .line 91
    .line 92
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 93
    .line 94
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 95
    .line 96
    .line 97
    iget-object v2, v0, Lq3/f;->E0:Landroid/graphics/ColorFilter;

    .line 98
    .line 99
    if-eqz v2, :cond_3

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_3
    iget-object v2, v0, Lq3/f;->F0:Landroid/graphics/PorterDuffColorFilter;

    .line 103
    .line 104
    :goto_1
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v12, v8}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0}, Lq3/f;->getChipCornerRadius()F

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    invoke-virtual {v0}, Lq3/f;->getChipCornerRadius()F

    .line 115
    .line 116
    .line 117
    move-result v4

    .line 118
    invoke-virtual {v1, v12, v2, v4, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 119
    .line 120
    .line 121
    :cond_4
    iget-boolean v2, v0, Lq3/f;->P0:Z

    .line 122
    .line 123
    if-eqz v2, :cond_5

    .line 124
    .line 125
    invoke-super/range {p0 .. p1}, LG3/j;->draw(Landroid/graphics/Canvas;)V

    .line 126
    .line 127
    .line 128
    :cond_5
    iget v2, v0, Lq3/f;->M:F

    .line 129
    .line 130
    const/4 v4, 0x0

    .line 131
    cmpl-float v2, v2, v4

    .line 132
    .line 133
    const/high16 v13, 0x40000000    # 2.0f

    .line 134
    .line 135
    if-lez v2, :cond_8

    .line 136
    .line 137
    iget-boolean v2, v0, Lq3/f;->P0:Z

    .line 138
    .line 139
    if-nez v2, :cond_8

    .line 140
    .line 141
    iget v2, v0, Lq3/f;->y0:I

    .line 142
    .line 143
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 144
    .line 145
    .line 146
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 147
    .line 148
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 149
    .line 150
    .line 151
    iget-boolean v2, v0, Lq3/f;->P0:Z

    .line 152
    .line 153
    if-nez v2, :cond_7

    .line 154
    .line 155
    iget-object v2, v0, Lq3/f;->E0:Landroid/graphics/ColorFilter;

    .line 156
    .line 157
    if-eqz v2, :cond_6

    .line 158
    .line 159
    goto :goto_2

    .line 160
    :cond_6
    iget-object v2, v0, Lq3/f;->F0:Landroid/graphics/PorterDuffColorFilter;

    .line 161
    .line 162
    :goto_2
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 163
    .line 164
    .line 165
    :cond_7
    iget v2, v8, Landroid/graphics/Rect;->left:I

    .line 166
    .line 167
    int-to-float v2, v2

    .line 168
    iget v5, v0, Lq3/f;->M:F

    .line 169
    .line 170
    div-float/2addr v5, v13

    .line 171
    add-float/2addr v2, v5

    .line 172
    iget v6, v8, Landroid/graphics/Rect;->top:I

    .line 173
    .line 174
    int-to-float v6, v6

    .line 175
    add-float/2addr v6, v5

    .line 176
    iget v7, v8, Landroid/graphics/Rect;->right:I

    .line 177
    .line 178
    int-to-float v7, v7

    .line 179
    sub-float/2addr v7, v5

    .line 180
    iget v14, v8, Landroid/graphics/Rect;->bottom:I

    .line 181
    .line 182
    int-to-float v14, v14

    .line 183
    sub-float/2addr v14, v5

    .line 184
    invoke-virtual {v12, v2, v6, v7, v14}, Landroid/graphics/RectF;->set(FFFF)V

    .line 185
    .line 186
    .line 187
    iget v2, v0, Lq3/f;->K:F

    .line 188
    .line 189
    iget v5, v0, Lq3/f;->M:F

    .line 190
    .line 191
    div-float/2addr v5, v13

    .line 192
    sub-float/2addr v2, v5

    .line 193
    invoke-virtual {v1, v12, v2, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 194
    .line 195
    .line 196
    :cond_8
    iget v2, v0, Lq3/f;->z0:I

    .line 197
    .line 198
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 199
    .line 200
    .line 201
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 202
    .line 203
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v12, v8}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 207
    .line 208
    .line 209
    iget-boolean v2, v0, Lq3/f;->P0:Z

    .line 210
    .line 211
    if-nez v2, :cond_9

    .line 212
    .line 213
    invoke-virtual {v0}, Lq3/f;->getChipCornerRadius()F

    .line 214
    .line 215
    .line 216
    move-result v2

    .line 217
    invoke-virtual {v0}, Lq3/f;->getChipCornerRadius()F

    .line 218
    .line 219
    .line 220
    move-result v5

    .line 221
    invoke-virtual {v1, v12, v2, v5, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 222
    .line 223
    .line 224
    goto :goto_3

    .line 225
    :cond_9
    new-instance v2, Landroid/graphics/RectF;

    .line 226
    .line 227
    invoke-direct {v2, v8}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 228
    .line 229
    .line 230
    iget-object v5, v0, Lq3/f;->t0:Landroid/graphics/Path;

    .line 231
    .line 232
    invoke-virtual {v0, v2, v5}, LG3/j;->calculatePathForSize(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v0}, LG3/j;->getBoundsAsRectF()Landroid/graphics/RectF;

    .line 236
    .line 237
    .line 238
    move-result-object v2

    .line 239
    invoke-super {v0, v1, v3, v5, v2}, LG3/j;->drawShape(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Landroid/graphics/RectF;)V

    .line 240
    .line 241
    .line 242
    :goto_3
    invoke-virtual {v0}, Lq3/f;->p()Z

    .line 243
    .line 244
    .line 245
    move-result v2

    .line 246
    if-eqz v2, :cond_a

    .line 247
    .line 248
    invoke-virtual {v0, v8, v12}, Lq3/f;->i(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 249
    .line 250
    .line 251
    iget v2, v12, Landroid/graphics/RectF;->left:F

    .line 252
    .line 253
    iget v3, v12, Landroid/graphics/RectF;->top:F

    .line 254
    .line 255
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 256
    .line 257
    .line 258
    iget-object v5, v0, Lq3/f;->Q:Landroid/graphics/drawable/Drawable;

    .line 259
    .line 260
    invoke-virtual {v12}, Landroid/graphics/RectF;->width()F

    .line 261
    .line 262
    .line 263
    move-result v6

    .line 264
    float-to-int v6, v6

    .line 265
    invoke-virtual {v12}, Landroid/graphics/RectF;->height()F

    .line 266
    .line 267
    .line 268
    move-result v7

    .line 269
    float-to-int v7, v7

    .line 270
    invoke-virtual {v5, v10, v10, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 271
    .line 272
    .line 273
    iget-object v5, v0, Lq3/f;->Q:Landroid/graphics/drawable/Drawable;

    .line 274
    .line 275
    invoke-virtual {v5, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 276
    .line 277
    .line 278
    neg-float v2, v2

    .line 279
    neg-float v3, v3

    .line 280
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 281
    .line 282
    .line 283
    :cond_a
    invoke-virtual {v0}, Lq3/f;->o()Z

    .line 284
    .line 285
    .line 286
    move-result v2

    .line 287
    if-eqz v2, :cond_b

    .line 288
    .line 289
    invoke-virtual {v0, v8, v12}, Lq3/f;->i(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 290
    .line 291
    .line 292
    iget v2, v12, Landroid/graphics/RectF;->left:F

    .line 293
    .line 294
    iget v3, v12, Landroid/graphics/RectF;->top:F

    .line 295
    .line 296
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 297
    .line 298
    .line 299
    iget-object v5, v0, Lq3/f;->c0:Landroid/graphics/drawable/Drawable;

    .line 300
    .line 301
    invoke-virtual {v12}, Landroid/graphics/RectF;->width()F

    .line 302
    .line 303
    .line 304
    move-result v6

    .line 305
    float-to-int v6, v6

    .line 306
    invoke-virtual {v12}, Landroid/graphics/RectF;->height()F

    .line 307
    .line 308
    .line 309
    move-result v7

    .line 310
    float-to-int v7, v7

    .line 311
    invoke-virtual {v5, v10, v10, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 312
    .line 313
    .line 314
    iget-object v5, v0, Lq3/f;->c0:Landroid/graphics/drawable/Drawable;

    .line 315
    .line 316
    invoke-virtual {v5, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 317
    .line 318
    .line 319
    neg-float v2, v2

    .line 320
    neg-float v3, v3

    .line 321
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 322
    .line 323
    .line 324
    :cond_b
    iget-boolean v2, v0, Lq3/f;->N0:Z

    .line 325
    .line 326
    if-eqz v2, :cond_14

    .line 327
    .line 328
    iget-object v2, v0, Lq3/f;->O:Ljava/lang/CharSequence;

    .line 329
    .line 330
    if-eqz v2, :cond_14

    .line 331
    .line 332
    iget-object v2, v0, Lq3/f;->s0:Landroid/graphics/PointF;

    .line 333
    .line 334
    invoke-virtual {v2, v4, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 335
    .line 336
    .line 337
    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    .line 338
    .line 339
    iget-object v4, v0, Lq3/f;->O:Ljava/lang/CharSequence;

    .line 340
    .line 341
    iget-object v5, v0, Lq3/f;->u0:Lx3/J;

    .line 342
    .line 343
    if-eqz v4, :cond_d

    .line 344
    .line 345
    iget v4, v0, Lq3/f;->g0:F

    .line 346
    .line 347
    invoke-virtual {v0}, Lq3/f;->j()F

    .line 348
    .line 349
    .line 350
    move-result v6

    .line 351
    add-float/2addr v6, v4

    .line 352
    iget v4, v0, Lq3/f;->j0:F

    .line 353
    .line 354
    add-float/2addr v6, v4

    .line 355
    invoke-static {v0}, LE/c;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    .line 356
    .line 357
    .line 358
    move-result v4

    .line 359
    if-nez v4, :cond_c

    .line 360
    .line 361
    iget v4, v8, Landroid/graphics/Rect;->left:I

    .line 362
    .line 363
    int-to-float v4, v4

    .line 364
    add-float/2addr v4, v6

    .line 365
    iput v4, v2, Landroid/graphics/PointF;->x:F

    .line 366
    .line 367
    goto :goto_4

    .line 368
    :cond_c
    iget v3, v8, Landroid/graphics/Rect;->right:I

    .line 369
    .line 370
    int-to-float v3, v3

    .line 371
    sub-float/2addr v3, v6

    .line 372
    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 373
    .line 374
    sget-object v3, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    .line 375
    .line 376
    :goto_4
    invoke-virtual {v8}, Landroid/graphics/Rect;->centerY()I

    .line 377
    .line 378
    .line 379
    move-result v4

    .line 380
    int-to-float v4, v4

    .line 381
    invoke-virtual {v5}, Lx3/J;->getTextPaint()Landroid/text/TextPaint;

    .line 382
    .line 383
    .line 384
    move-result-object v6

    .line 385
    iget-object v7, v0, Lq3/f;->q0:Landroid/graphics/Paint$FontMetrics;

    .line 386
    .line 387
    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    .line 388
    .line 389
    .line 390
    iget v6, v7, Landroid/graphics/Paint$FontMetrics;->descent:F

    .line 391
    .line 392
    iget v7, v7, Landroid/graphics/Paint$FontMetrics;->ascent:F

    .line 393
    .line 394
    add-float/2addr v6, v7

    .line 395
    div-float/2addr v6, v13

    .line 396
    sub-float/2addr v4, v6

    .line 397
    iput v4, v2, Landroid/graphics/PointF;->y:F

    .line 398
    .line 399
    :cond_d
    invoke-virtual {v12}, Landroid/graphics/RectF;->setEmpty()V

    .line 400
    .line 401
    .line 402
    iget-object v4, v0, Lq3/f;->O:Ljava/lang/CharSequence;

    .line 403
    .line 404
    if-eqz v4, :cond_f

    .line 405
    .line 406
    iget v4, v0, Lq3/f;->g0:F

    .line 407
    .line 408
    invoke-virtual {v0}, Lq3/f;->j()F

    .line 409
    .line 410
    .line 411
    move-result v6

    .line 412
    add-float/2addr v6, v4

    .line 413
    iget v4, v0, Lq3/f;->j0:F

    .line 414
    .line 415
    add-float/2addr v6, v4

    .line 416
    iget v4, v0, Lq3/f;->n0:F

    .line 417
    .line 418
    invoke-virtual {v0}, Lq3/f;->k()F

    .line 419
    .line 420
    .line 421
    move-result v7

    .line 422
    add-float/2addr v7, v4

    .line 423
    iget v4, v0, Lq3/f;->k0:F

    .line 424
    .line 425
    add-float/2addr v7, v4

    .line 426
    invoke-static {v0}, LE/c;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    .line 427
    .line 428
    .line 429
    move-result v4

    .line 430
    if-nez v4, :cond_e

    .line 431
    .line 432
    iget v4, v8, Landroid/graphics/Rect;->left:I

    .line 433
    .line 434
    int-to-float v4, v4

    .line 435
    add-float/2addr v4, v6

    .line 436
    iput v4, v12, Landroid/graphics/RectF;->left:F

    .line 437
    .line 438
    iget v4, v8, Landroid/graphics/Rect;->right:I

    .line 439
    .line 440
    int-to-float v4, v4

    .line 441
    sub-float/2addr v4, v7

    .line 442
    iput v4, v12, Landroid/graphics/RectF;->right:F

    .line 443
    .line 444
    goto :goto_5

    .line 445
    :cond_e
    iget v4, v8, Landroid/graphics/Rect;->left:I

    .line 446
    .line 447
    int-to-float v4, v4

    .line 448
    add-float/2addr v4, v7

    .line 449
    iput v4, v12, Landroid/graphics/RectF;->left:F

    .line 450
    .line 451
    iget v4, v8, Landroid/graphics/Rect;->right:I

    .line 452
    .line 453
    int-to-float v4, v4

    .line 454
    sub-float/2addr v4, v6

    .line 455
    iput v4, v12, Landroid/graphics/RectF;->right:F

    .line 456
    .line 457
    :goto_5
    iget v4, v8, Landroid/graphics/Rect;->top:I

    .line 458
    .line 459
    int-to-float v4, v4

    .line 460
    iput v4, v12, Landroid/graphics/RectF;->top:F

    .line 461
    .line 462
    iget v4, v8, Landroid/graphics/Rect;->bottom:I

    .line 463
    .line 464
    int-to-float v4, v4

    .line 465
    iput v4, v12, Landroid/graphics/RectF;->bottom:F

    .line 466
    .line 467
    :cond_f
    invoke-virtual {v5}, Lx3/J;->getTextAppearance()LC3/g;

    .line 468
    .line 469
    .line 470
    move-result-object v4

    .line 471
    if-eqz v4, :cond_10

    .line 472
    .line 473
    invoke-virtual {v5}, Lx3/J;->getTextPaint()Landroid/text/TextPaint;

    .line 474
    .line 475
    .line 476
    move-result-object v4

    .line 477
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 478
    .line 479
    .line 480
    move-result-object v6

    .line 481
    iput-object v6, v4, Landroid/text/TextPaint;->drawableState:[I

    .line 482
    .line 483
    iget-object v4, v0, Lq3/f;->o0:Landroid/content/Context;

    .line 484
    .line 485
    invoke-virtual {v5, v4}, Lx3/J;->updateTextPaintDrawState(Landroid/content/Context;)V

    .line 486
    .line 487
    .line 488
    :cond_10
    invoke-virtual {v5}, Lx3/J;->getTextPaint()Landroid/text/TextPaint;

    .line 489
    .line 490
    .line 491
    move-result-object v4

    .line 492
    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 493
    .line 494
    .line 495
    invoke-virtual {v0}, Lq3/f;->getText()Ljava/lang/CharSequence;

    .line 496
    .line 497
    .line 498
    move-result-object v3

    .line 499
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 500
    .line 501
    .line 502
    move-result-object v3

    .line 503
    invoke-virtual {v5, v3}, Lx3/J;->getTextWidth(Ljava/lang/String;)F

    .line 504
    .line 505
    .line 506
    move-result v3

    .line 507
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 508
    .line 509
    .line 510
    move-result v3

    .line 511
    invoke-virtual {v12}, Landroid/graphics/RectF;->width()F

    .line 512
    .line 513
    .line 514
    move-result v4

    .line 515
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    .line 516
    .line 517
    .line 518
    move-result v4

    .line 519
    if-le v3, v4, :cond_11

    .line 520
    .line 521
    const/4 v3, 0x1

    .line 522
    move v14, v3

    .line 523
    goto :goto_6

    .line 524
    :cond_11
    move v14, v10

    .line 525
    :goto_6
    if-eqz v14, :cond_12

    .line 526
    .line 527
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 528
    .line 529
    .line 530
    move-result v3

    .line 531
    invoke-virtual {v1, v12}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 532
    .line 533
    .line 534
    move v15, v3

    .line 535
    goto :goto_7

    .line 536
    :cond_12
    move v15, v10

    .line 537
    :goto_7
    iget-object v3, v0, Lq3/f;->O:Ljava/lang/CharSequence;

    .line 538
    .line 539
    if-eqz v14, :cond_13

    .line 540
    .line 541
    iget-object v4, v0, Lq3/f;->M0:Landroid/text/TextUtils$TruncateAt;

    .line 542
    .line 543
    if-eqz v4, :cond_13

    .line 544
    .line 545
    invoke-virtual {v5}, Lx3/J;->getTextPaint()Landroid/text/TextPaint;

    .line 546
    .line 547
    .line 548
    move-result-object v4

    .line 549
    invoke-virtual {v12}, Landroid/graphics/RectF;->width()F

    .line 550
    .line 551
    .line 552
    move-result v6

    .line 553
    iget-object v7, v0, Lq3/f;->M0:Landroid/text/TextUtils$TruncateAt;

    .line 554
    .line 555
    invoke-static {v3, v4, v6, v7}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    .line 556
    .line 557
    .line 558
    move-result-object v3

    .line 559
    :cond_13
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 560
    .line 561
    .line 562
    move-result v4

    .line 563
    move-object v6, v5

    .line 564
    iget v5, v2, Landroid/graphics/PointF;->x:F

    .line 565
    .line 566
    iget v2, v2, Landroid/graphics/PointF;->y:F

    .line 567
    .line 568
    invoke-virtual {v6}, Lx3/J;->getTextPaint()Landroid/text/TextPaint;

    .line 569
    .line 570
    .line 571
    move-result-object v7

    .line 572
    move v6, v2

    .line 573
    move-object v2, v3

    .line 574
    const/4 v3, 0x0

    .line 575
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 576
    .line 577
    .line 578
    if-eqz v14, :cond_14

    .line 579
    .line 580
    invoke-virtual {v1, v15}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 581
    .line 582
    .line 583
    :cond_14
    invoke-virtual {v0}, Lq3/f;->q()Z

    .line 584
    .line 585
    .line 586
    move-result v2

    .line 587
    if-eqz v2, :cond_17

    .line 588
    .line 589
    invoke-virtual {v12}, Landroid/graphics/RectF;->setEmpty()V

    .line 590
    .line 591
    .line 592
    invoke-virtual {v0}, Lq3/f;->q()Z

    .line 593
    .line 594
    .line 595
    move-result v2

    .line 596
    if-eqz v2, :cond_16

    .line 597
    .line 598
    iget v2, v0, Lq3/f;->n0:F

    .line 599
    .line 600
    iget v3, v0, Lq3/f;->m0:F

    .line 601
    .line 602
    add-float/2addr v2, v3

    .line 603
    invoke-static {v0}, LE/c;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    .line 604
    .line 605
    .line 606
    move-result v3

    .line 607
    if-nez v3, :cond_15

    .line 608
    .line 609
    iget v3, v8, Landroid/graphics/Rect;->right:I

    .line 610
    .line 611
    int-to-float v3, v3

    .line 612
    sub-float/2addr v3, v2

    .line 613
    iput v3, v12, Landroid/graphics/RectF;->right:F

    .line 614
    .line 615
    iget v2, v0, Lq3/f;->Y:F

    .line 616
    .line 617
    sub-float/2addr v3, v2

    .line 618
    iput v3, v12, Landroid/graphics/RectF;->left:F

    .line 619
    .line 620
    goto :goto_8

    .line 621
    :cond_15
    iget v3, v8, Landroid/graphics/Rect;->left:I

    .line 622
    .line 623
    int-to-float v3, v3

    .line 624
    add-float/2addr v3, v2

    .line 625
    iput v3, v12, Landroid/graphics/RectF;->left:F

    .line 626
    .line 627
    iget v2, v0, Lq3/f;->Y:F

    .line 628
    .line 629
    add-float/2addr v3, v2

    .line 630
    iput v3, v12, Landroid/graphics/RectF;->right:F

    .line 631
    .line 632
    :goto_8
    invoke-virtual {v8}, Landroid/graphics/Rect;->exactCenterY()F

    .line 633
    .line 634
    .line 635
    move-result v2

    .line 636
    iget v3, v0, Lq3/f;->Y:F

    .line 637
    .line 638
    div-float v4, v3, v13

    .line 639
    .line 640
    sub-float/2addr v2, v4

    .line 641
    iput v2, v12, Landroid/graphics/RectF;->top:F

    .line 642
    .line 643
    add-float/2addr v2, v3

    .line 644
    iput v2, v12, Landroid/graphics/RectF;->bottom:F

    .line 645
    .line 646
    :cond_16
    iget v2, v12, Landroid/graphics/RectF;->left:F

    .line 647
    .line 648
    iget v3, v12, Landroid/graphics/RectF;->top:F

    .line 649
    .line 650
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 651
    .line 652
    .line 653
    iget-object v4, v0, Lq3/f;->V:Landroid/graphics/drawable/Drawable;

    .line 654
    .line 655
    invoke-virtual {v12}, Landroid/graphics/RectF;->width()F

    .line 656
    .line 657
    .line 658
    move-result v5

    .line 659
    float-to-int v5, v5

    .line 660
    invoke-virtual {v12}, Landroid/graphics/RectF;->height()F

    .line 661
    .line 662
    .line 663
    move-result v6

    .line 664
    float-to-int v6, v6

    .line 665
    invoke-virtual {v4, v10, v10, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 666
    .line 667
    .line 668
    sget-object v4, LD3/a;->a:[I

    .line 669
    .line 670
    iget-object v4, v0, Lq3/f;->W:Landroid/graphics/drawable/RippleDrawable;

    .line 671
    .line 672
    iget-object v5, v0, Lq3/f;->V:Landroid/graphics/drawable/Drawable;

    .line 673
    .line 674
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 675
    .line 676
    .line 677
    move-result-object v5

    .line 678
    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 679
    .line 680
    .line 681
    iget-object v4, v0, Lq3/f;->W:Landroid/graphics/drawable/RippleDrawable;

    .line 682
    .line 683
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 684
    .line 685
    .line 686
    iget-object v4, v0, Lq3/f;->W:Landroid/graphics/drawable/RippleDrawable;

    .line 687
    .line 688
    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 689
    .line 690
    .line 691
    neg-float v2, v2

    .line 692
    neg-float v3, v3

    .line 693
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 694
    .line 695
    .line 696
    :cond_17
    iget v2, v0, Lq3/f;->D0:I

    .line 697
    .line 698
    if-ge v2, v9, :cond_18

    .line 699
    .line 700
    invoke-virtual {v1, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 701
    .line 702
    .line 703
    :cond_18
    :goto_9
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .line 1
    iget v0, p0, Lq3/f;->D0:I

    .line 2
    .line 3
    return v0
.end method

.method public getCheckedIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lq3/f;->c0:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCheckedIconTint()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Lq3/f;->d0:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    return-object v0
.end method

.method public getChipBackgroundColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Lq3/f;->I:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    return-object v0
.end method

.method public getChipCornerRadius()F
    .locals 1

    .line 1
    iget-boolean v0, p0, Lq3/f;->P0:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, LG3/j;->getTopLeftCornerResolvedSize()F

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    iget v0, p0, Lq3/f;->K:F

    .line 11
    .line 12
    return v0
.end method

.method public getChipEndPadding()F
    .locals 1

    .line 1
    iget v0, p0, Lq3/f;->n0:F

    .line 2
    .line 3
    return v0
.end method

.method public getChipIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lq3/f;->Q:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0}, LE/c;->unwrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public getChipIconSize()F
    .locals 1

    .line 1
    iget v0, p0, Lq3/f;->S:F

    .line 2
    .line 3
    return v0
.end method

.method public getChipIconTint()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Lq3/f;->R:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    return-object v0
.end method

.method public getChipMinHeight()F
    .locals 1

    .line 1
    iget v0, p0, Lq3/f;->J:F

    .line 2
    .line 3
    return v0
.end method

.method public getChipStartPadding()F
    .locals 1

    .line 1
    iget v0, p0, Lq3/f;->g0:F

    .line 2
    .line 3
    return v0
.end method

.method public getChipStrokeColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Lq3/f;->L:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    return-object v0
.end method

.method public getChipStrokeWidth()F
    .locals 1

    .line 1
    iget v0, p0, Lq3/f;->M:F

    .line 2
    .line 3
    return v0
.end method

.method public getCloseIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lq3/f;->V:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0}, LE/c;->unwrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public getCloseIconContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lq3/f;->Z:Ljava/lang/CharSequence;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCloseIconEndPadding()F
    .locals 1

    .line 1
    iget v0, p0, Lq3/f;->m0:F

    .line 2
    .line 3
    return v0
.end method

.method public getCloseIconSize()F
    .locals 1

    .line 1
    iget v0, p0, Lq3/f;->Y:F

    .line 2
    .line 3
    return v0
.end method

.method public getCloseIconStartPadding()F
    .locals 1

    .line 1
    iget v0, p0, Lq3/f;->l0:F

    .line 2
    .line 3
    return v0
.end method

.method public getCloseIconState()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lq3/f;->I0:[I

    .line 2
    .line 3
    return-object v0
.end method

.method public getCloseIconTint()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Lq3/f;->X:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCloseIconTouchBounds(Landroid/graphics/RectF;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Landroid/graphics/RectF;->setEmpty()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lq3/f;->q()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    iget v1, p0, Lq3/f;->n0:F

    .line 15
    .line 16
    iget v2, p0, Lq3/f;->m0:F

    .line 17
    .line 18
    add-float/2addr v1, v2

    .line 19
    iget v2, p0, Lq3/f;->Y:F

    .line 20
    .line 21
    add-float/2addr v1, v2

    .line 22
    iget v2, p0, Lq3/f;->l0:F

    .line 23
    .line 24
    add-float/2addr v1, v2

    .line 25
    iget v2, p0, Lq3/f;->k0:F

    .line 26
    .line 27
    add-float/2addr v1, v2

    .line 28
    invoke-static {p0}, LE/c;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-nez v2, :cond_0

    .line 33
    .line 34
    iget v2, v0, Landroid/graphics/Rect;->right:I

    .line 35
    .line 36
    int-to-float v2, v2

    .line 37
    iput v2, p1, Landroid/graphics/RectF;->right:F

    .line 38
    .line 39
    sub-float/2addr v2, v1

    .line 40
    iput v2, p1, Landroid/graphics/RectF;->left:F

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    iget v2, v0, Landroid/graphics/Rect;->left:I

    .line 44
    .line 45
    int-to-float v2, v2

    .line 46
    iput v2, p1, Landroid/graphics/RectF;->left:F

    .line 47
    .line 48
    add-float/2addr v2, v1

    .line 49
    iput v2, p1, Landroid/graphics/RectF;->right:F

    .line 50
    .line 51
    :goto_0
    iget v1, v0, Landroid/graphics/Rect;->top:I

    .line 52
    .line 53
    int-to-float v1, v1

    .line 54
    iput v1, p1, Landroid/graphics/RectF;->top:F

    .line 55
    .line 56
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 57
    .line 58
    int-to-float v0, v0

    .line 59
    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    .line 60
    .line 61
    :cond_1
    return-void
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    .line 1
    iget-object v0, p0, Lq3/f;->E0:Landroid/graphics/ColorFilter;

    .line 2
    .line 3
    return-object v0
.end method

.method public getEllipsize()Landroid/text/TextUtils$TruncateAt;
    .locals 1

    .line 1
    iget-object v0, p0, Lq3/f;->M0:Landroid/text/TextUtils$TruncateAt;

    .line 2
    .line 3
    return-object v0
.end method

.method public getHideMotionSpec()Lg3/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lq3/f;->f0:Lg3/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIconEndPadding()F
    .locals 1

    .line 1
    iget v0, p0, Lq3/f;->i0:F

    .line 2
    .line 3
    return v0
.end method

.method public getIconStartPadding()F
    .locals 1

    .line 1
    iget v0, p0, Lq3/f;->h0:F

    .line 2
    .line 3
    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lq3/f;->J:F

    .line 2
    .line 3
    float-to-int v0, v0

    .line 4
    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 3

    .line 1
    iget v0, p0, Lq3/f;->g0:F

    .line 2
    .line 3
    invoke-virtual {p0}, Lq3/f;->j()F

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    add-float/2addr v1, v0

    .line 8
    iget v0, p0, Lq3/f;->j0:F

    .line 9
    .line 10
    add-float/2addr v1, v0

    .line 11
    invoke-virtual {p0}, Lq3/f;->getText()Ljava/lang/CharSequence;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v2, p0, Lq3/f;->u0:Lx3/J;

    .line 20
    .line 21
    invoke-virtual {v2, v0}, Lx3/J;->getTextWidth(Ljava/lang/String;)F

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    add-float/2addr v0, v1

    .line 26
    iget v1, p0, Lq3/f;->k0:F

    .line 27
    .line 28
    add-float/2addr v0, v1

    .line 29
    invoke-virtual {p0}, Lq3/f;->k()F

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    add-float/2addr v1, v0

    .line 34
    iget v0, p0, Lq3/f;->n0:F

    .line 35
    .line 36
    add-float/2addr v1, v0

    .line 37
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    iget v1, p0, Lq3/f;->O0:I

    .line 42
    .line 43
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    return v0
.end method

.method public getOpacity()I
    .locals 1

    .line 1
    const/4 v0, -0x3

    .line 2
    return v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 1
    iget-boolean v0, p0, Lq3/f;->P0:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1}, LG3/j;->getOutline(Landroid/graphics/Outline;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    iget v1, p0, Lq3/f;->K:F

    .line 20
    .line 21
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    .line 22
    .line 23
    .line 24
    move-object v2, p1

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    invoke-virtual {p0}, Lq3/f;->getIntrinsicWidth()I

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    invoke-virtual {p0}, Lq3/f;->getIntrinsicHeight()I

    .line 31
    .line 32
    .line 33
    move-result v6

    .line 34
    iget v7, p0, Lq3/f;->K:F

    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    const/4 v4, 0x0

    .line 38
    move-object v2, p1

    .line 39
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    .line 40
    .line 41
    .line 42
    :goto_0
    invoke-virtual {p0}, Lq3/f;->getAlpha()I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    int-to-float p1, p1

    .line 47
    const/high16 v0, 0x437f0000    # 255.0f

    .line 48
    .line 49
    div-float/2addr p1, v0

    .line 50
    invoke-virtual {v2, p1}, Landroid/graphics/Outline;->setAlpha(F)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public getRippleColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Lq3/f;->N:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    return-object v0
.end method

.method public getShowMotionSpec()Lg3/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lq3/f;->e0:Lg3/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lq3/f;->O:Ljava/lang/CharSequence;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTextAppearance()LC3/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lq3/f;->u0:Lx3/J;

    .line 2
    .line 3
    invoke-virtual {v0}, Lx3/J;->getTextAppearance()LC3/g;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getTextEndPadding()F
    .locals 1

    .line 1
    iget v0, p0, Lq3/f;->k0:F

    .line 2
    .line 3
    return v0
.end method

.method public getTextStartPadding()F
    .locals 1

    .line 1
    iget v0, p0, Lq3/f;->j0:F

    .line 2
    .line 3
    return v0
.end method

.method public getUseCompatRipple()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lq3/f;->J0:Z

    .line 2
    .line 3
    return v0
.end method

.method public final h(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 5
    .line 6
    .line 7
    invoke-static {p0}, LE/c;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-static {p1, v0}, LE/c;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getLevel()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lq3/f;->V:Landroid/graphics/drawable/Drawable;

    .line 30
    .line 31
    if-ne p1, v0, :cond_2

    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    invoke-virtual {p0}, Lq3/f;->getCloseIconState()[I

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 44
    .line 45
    .line 46
    :cond_1
    iget-object v0, p0, Lq3/f;->X:Landroid/content/res/ColorStateList;

    .line 47
    .line 48
    invoke-static {p1, v0}, LE/c;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_2
    iget-object v0, p0, Lq3/f;->Q:Landroid/graphics/drawable/Drawable;

    .line 53
    .line 54
    if-ne p1, v0, :cond_3

    .line 55
    .line 56
    iget-boolean v1, p0, Lq3/f;->T:Z

    .line 57
    .line 58
    if-eqz v1, :cond_3

    .line 59
    .line 60
    iget-object v1, p0, Lq3/f;->R:Landroid/content/res/ColorStateList;

    .line 61
    .line 62
    invoke-static {v0, v1}, LE/c;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 63
    .line 64
    .line 65
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_4

    .line 70
    .line 71
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 76
    .line 77
    .line 78
    :cond_4
    :goto_0
    return-void
.end method

.method public final i(Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .locals 5

    .line 1
    invoke-virtual {p2}, Landroid/graphics/RectF;->setEmpty()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lq3/f;->p()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0}, Lq3/f;->o()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    return-void

    .line 18
    :cond_1
    :goto_0
    iget v0, p0, Lq3/f;->g0:F

    .line 19
    .line 20
    iget v1, p0, Lq3/f;->h0:F

    .line 21
    .line 22
    add-float/2addr v0, v1

    .line 23
    iget-boolean v1, p0, Lq3/f;->B0:Z

    .line 24
    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    iget-object v1, p0, Lq3/f;->c0:Landroid/graphics/drawable/Drawable;

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_2
    iget-object v1, p0, Lq3/f;->Q:Landroid/graphics/drawable/Drawable;

    .line 31
    .line 32
    :goto_1
    iget v2, p0, Lq3/f;->S:F

    .line 33
    .line 34
    const/4 v3, 0x0

    .line 35
    cmpg-float v4, v2, v3

    .line 36
    .line 37
    if-gtz v4, :cond_3

    .line 38
    .line 39
    if-eqz v1, :cond_3

    .line 40
    .line 41
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    int-to-float v2, v1

    .line 46
    :cond_3
    invoke-static {p0}, LE/c;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-nez v1, :cond_4

    .line 51
    .line 52
    iget v1, p1, Landroid/graphics/Rect;->left:I

    .line 53
    .line 54
    int-to-float v1, v1

    .line 55
    add-float/2addr v1, v0

    .line 56
    iput v1, p2, Landroid/graphics/RectF;->left:F

    .line 57
    .line 58
    add-float/2addr v1, v2

    .line 59
    iput v1, p2, Landroid/graphics/RectF;->right:F

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_4
    iget v1, p1, Landroid/graphics/Rect;->right:I

    .line 63
    .line 64
    int-to-float v1, v1

    .line 65
    sub-float/2addr v1, v0

    .line 66
    iput v1, p2, Landroid/graphics/RectF;->right:F

    .line 67
    .line 68
    sub-float/2addr v1, v2

    .line 69
    iput v1, p2, Landroid/graphics/RectF;->left:F

    .line 70
    .line 71
    :goto_2
    iget-boolean v0, p0, Lq3/f;->B0:Z

    .line 72
    .line 73
    if-eqz v0, :cond_5

    .line 74
    .line 75
    iget-object v0, p0, Lq3/f;->c0:Landroid/graphics/drawable/Drawable;

    .line 76
    .line 77
    goto :goto_3

    .line 78
    :cond_5
    iget-object v0, p0, Lq3/f;->Q:Landroid/graphics/drawable/Drawable;

    .line 79
    .line 80
    :goto_3
    iget v1, p0, Lq3/f;->S:F

    .line 81
    .line 82
    cmpg-float v2, v1, v3

    .line 83
    .line 84
    if-gtz v2, :cond_6

    .line 85
    .line 86
    if-eqz v0, :cond_6

    .line 87
    .line 88
    iget-object v1, p0, Lq3/f;->o0:Landroid/content/Context;

    .line 89
    .line 90
    const/16 v2, 0x18

    .line 91
    .line 92
    invoke-static {v1, v2}, Lx3/T;->dpToPx(Landroid/content/Context;I)F

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    float-to-double v1, v1

    .line 97
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    .line 98
    .line 99
    .line 100
    move-result-wide v1

    .line 101
    double-to-float v1, v1

    .line 102
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    int-to-float v2, v2

    .line 107
    cmpg-float v2, v2, v1

    .line 108
    .line 109
    if-gtz v2, :cond_6

    .line 110
    .line 111
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    int-to-float v1, v0

    .line 116
    :cond_6
    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterY()F

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    const/high16 v0, 0x40000000    # 2.0f

    .line 121
    .line 122
    div-float v0, v1, v0

    .line 123
    .line 124
    sub-float/2addr p1, v0

    .line 125
    iput p1, p2, Landroid/graphics/RectF;->top:F

    .line 126
    .line 127
    add-float/2addr p1, v1

    .line 128
    iput p1, p2, Landroid/graphics/RectF;->bottom:F

    .line 129
    .line 130
    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-interface {p1, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public isCheckable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lq3/f;->a0:Z

    .line 2
    .line 3
    return v0
.end method

.method public isCloseIconStateful()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lq3/f;->V:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    invoke-static {v0}, Lq3/f;->m(Landroid/graphics/drawable/Drawable;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isCloseIconVisible()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lq3/f;->U:Z

    .line 2
    .line 3
    return v0
.end method

.method public isStateful()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lq3/f;->H:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    invoke-static {v0}, Lq3/f;->l(Landroid/content/res/ColorStateList;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_4

    .line 8
    .line 9
    iget-object v0, p0, Lq3/f;->I:Landroid/content/res/ColorStateList;

    .line 10
    .line 11
    invoke-static {v0}, Lq3/f;->l(Landroid/content/res/ColorStateList;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_4

    .line 16
    .line 17
    iget-object v0, p0, Lq3/f;->L:Landroid/content/res/ColorStateList;

    .line 18
    .line 19
    invoke-static {v0}, Lq3/f;->l(Landroid/content/res/ColorStateList;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_4

    .line 24
    .line 25
    iget-boolean v0, p0, Lq3/f;->J0:Z

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    iget-object v0, p0, Lq3/f;->K0:Landroid/content/res/ColorStateList;

    .line 30
    .line 31
    invoke-static {v0}, Lq3/f;->l(Landroid/content/res/ColorStateList;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_4

    .line 36
    .line 37
    :cond_0
    iget-object v0, p0, Lq3/f;->u0:Lx3/J;

    .line 38
    .line 39
    invoke-virtual {v0}, Lx3/J;->getTextAppearance()LC3/g;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    invoke-virtual {v0}, LC3/g;->getTextColor()Landroid/content/res/ColorStateList;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    if-eqz v1, :cond_1

    .line 50
    .line 51
    invoke-virtual {v0}, LC3/g;->getTextColor()Landroid/content/res/ColorStateList;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    iget-boolean v0, p0, Lq3/f;->b0:Z

    .line 63
    .line 64
    if-eqz v0, :cond_2

    .line 65
    .line 66
    iget-object v0, p0, Lq3/f;->c0:Landroid/graphics/drawable/Drawable;

    .line 67
    .line 68
    if-eqz v0, :cond_2

    .line 69
    .line 70
    iget-boolean v0, p0, Lq3/f;->a0:Z

    .line 71
    .line 72
    if-eqz v0, :cond_2

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    iget-object v0, p0, Lq3/f;->Q:Landroid/graphics/drawable/Drawable;

    .line 76
    .line 77
    invoke-static {v0}, Lq3/f;->m(Landroid/graphics/drawable/Drawable;)Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-nez v0, :cond_4

    .line 82
    .line 83
    iget-object v0, p0, Lq3/f;->c0:Landroid/graphics/drawable/Drawable;

    .line 84
    .line 85
    invoke-static {v0}, Lq3/f;->m(Landroid/graphics/drawable/Drawable;)Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-nez v0, :cond_4

    .line 90
    .line 91
    iget-object v0, p0, Lq3/f;->G0:Landroid/content/res/ColorStateList;

    .line 92
    .line 93
    invoke-static {v0}, Lq3/f;->l(Landroid/content/res/ColorStateList;)Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-eqz v0, :cond_3

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_3
    const/4 v0, 0x0

    .line 101
    return v0

    .line 102
    :cond_4
    :goto_0
    const/4 v0, 0x1

    .line 103
    return v0
.end method

.method public final j()F
    .locals 4

    .line 1
    invoke-virtual {p0}, Lq3/f;->p()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    invoke-virtual {p0}, Lq3/f;->o()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    return v1

    .line 16
    :cond_1
    :goto_0
    iget v0, p0, Lq3/f;->h0:F

    .line 17
    .line 18
    iget-boolean v2, p0, Lq3/f;->B0:Z

    .line 19
    .line 20
    if-eqz v2, :cond_2

    .line 21
    .line 22
    iget-object v2, p0, Lq3/f;->c0:Landroid/graphics/drawable/Drawable;

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_2
    iget-object v2, p0, Lq3/f;->Q:Landroid/graphics/drawable/Drawable;

    .line 26
    .line 27
    :goto_1
    iget v3, p0, Lq3/f;->S:F

    .line 28
    .line 29
    cmpg-float v1, v3, v1

    .line 30
    .line 31
    if-gtz v1, :cond_3

    .line 32
    .line 33
    if-eqz v2, :cond_3

    .line 34
    .line 35
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    int-to-float v3, v1

    .line 40
    :cond_3
    add-float/2addr v3, v0

    .line 41
    iget v0, p0, Lq3/f;->i0:F

    .line 42
    .line 43
    add-float/2addr v3, v0

    .line 44
    return v3
.end method

.method public final k()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lq3/f;->q()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget v0, p0, Lq3/f;->l0:F

    .line 8
    .line 9
    iget v1, p0, Lq3/f;->Y:F

    .line 10
    .line 11
    add-float/2addr v0, v1

    .line 12
    iget v1, p0, Lq3/f;->m0:F

    .line 13
    .line 14
    add-float/2addr v0, v1

    .line 15
    return v0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    return v0
.end method

.method public final n([I[I)Z
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-super {p0, p1}, LG3/j;->onStateChange([I)Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    iget-object v2, p0, Lq3/f;->H:Landroid/content/res/ColorStateList;

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    iget v4, p0, Lq3/f;->v0:I

    .line 12
    .line 13
    invoke-virtual {v2, p1, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v2, v3

    .line 19
    :goto_0
    invoke-virtual {p0, v2}, LG3/j;->compositeElevationOverlayIfNeeded(I)I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    iget v4, p0, Lq3/f;->v0:I

    .line 24
    .line 25
    if-eq v4, v2, :cond_1

    .line 26
    .line 27
    iput v2, p0, Lq3/f;->v0:I

    .line 28
    .line 29
    move v1, v0

    .line 30
    :cond_1
    iget-object v4, p0, Lq3/f;->I:Landroid/content/res/ColorStateList;

    .line 31
    .line 32
    if-eqz v4, :cond_2

    .line 33
    .line 34
    iget v5, p0, Lq3/f;->w0:I

    .line 35
    .line 36
    invoke-virtual {v4, p1, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    goto :goto_1

    .line 41
    :cond_2
    move v4, v3

    .line 42
    :goto_1
    invoke-virtual {p0, v4}, LG3/j;->compositeElevationOverlayIfNeeded(I)I

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    iget v5, p0, Lq3/f;->w0:I

    .line 47
    .line 48
    if-eq v5, v4, :cond_3

    .line 49
    .line 50
    iput v4, p0, Lq3/f;->w0:I

    .line 51
    .line 52
    move v1, v0

    .line 53
    :cond_3
    invoke-static {v2, v4}, Lr3/a;->layer(II)I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    iget v4, p0, Lq3/f;->x0:I

    .line 58
    .line 59
    if-eq v4, v2, :cond_4

    .line 60
    .line 61
    move v4, v0

    .line 62
    goto :goto_2

    .line 63
    :cond_4
    move v4, v3

    .line 64
    :goto_2
    invoke-virtual {p0}, LG3/j;->getFillColor()Landroid/content/res/ColorStateList;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    if-nez v5, :cond_5

    .line 69
    .line 70
    move v5, v0

    .line 71
    goto :goto_3

    .line 72
    :cond_5
    move v5, v3

    .line 73
    :goto_3
    or-int/2addr v4, v5

    .line 74
    if-eqz v4, :cond_6

    .line 75
    .line 76
    iput v2, p0, Lq3/f;->x0:I

    .line 77
    .line 78
    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {p0, v1}, LG3/j;->setFillColor(Landroid/content/res/ColorStateList;)V

    .line 83
    .line 84
    .line 85
    move v1, v0

    .line 86
    :cond_6
    iget-object v2, p0, Lq3/f;->L:Landroid/content/res/ColorStateList;

    .line 87
    .line 88
    if-eqz v2, :cond_7

    .line 89
    .line 90
    iget v4, p0, Lq3/f;->y0:I

    .line 91
    .line 92
    invoke-virtual {v2, p1, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    goto :goto_4

    .line 97
    :cond_7
    move v2, v3

    .line 98
    :goto_4
    iget v4, p0, Lq3/f;->y0:I

    .line 99
    .line 100
    if-eq v4, v2, :cond_8

    .line 101
    .line 102
    iput v2, p0, Lq3/f;->y0:I

    .line 103
    .line 104
    move v1, v0

    .line 105
    :cond_8
    iget-object v2, p0, Lq3/f;->K0:Landroid/content/res/ColorStateList;

    .line 106
    .line 107
    if-eqz v2, :cond_9

    .line 108
    .line 109
    invoke-static {p1}, LD3/a;->shouldDrawRippleCompat([I)Z

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    if-eqz v2, :cond_9

    .line 114
    .line 115
    iget-object v2, p0, Lq3/f;->K0:Landroid/content/res/ColorStateList;

    .line 116
    .line 117
    iget v4, p0, Lq3/f;->z0:I

    .line 118
    .line 119
    invoke-virtual {v2, p1, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    goto :goto_5

    .line 124
    :cond_9
    move v2, v3

    .line 125
    :goto_5
    iget v4, p0, Lq3/f;->z0:I

    .line 126
    .line 127
    if-eq v4, v2, :cond_a

    .line 128
    .line 129
    iput v2, p0, Lq3/f;->z0:I

    .line 130
    .line 131
    iget-boolean v2, p0, Lq3/f;->J0:Z

    .line 132
    .line 133
    if-eqz v2, :cond_a

    .line 134
    .line 135
    move v1, v0

    .line 136
    :cond_a
    iget-object v2, p0, Lq3/f;->u0:Lx3/J;

    .line 137
    .line 138
    invoke-virtual {v2}, Lx3/J;->getTextAppearance()LC3/g;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    if-eqz v4, :cond_b

    .line 143
    .line 144
    invoke-virtual {v2}, Lx3/J;->getTextAppearance()LC3/g;

    .line 145
    .line 146
    .line 147
    move-result-object v4

    .line 148
    invoke-virtual {v4}, LC3/g;->getTextColor()Landroid/content/res/ColorStateList;

    .line 149
    .line 150
    .line 151
    move-result-object v4

    .line 152
    if-eqz v4, :cond_b

    .line 153
    .line 154
    invoke-virtual {v2}, Lx3/J;->getTextAppearance()LC3/g;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    invoke-virtual {v2}, LC3/g;->getTextColor()Landroid/content/res/ColorStateList;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    iget v4, p0, Lq3/f;->A0:I

    .line 163
    .line 164
    invoke-virtual {v2, p1, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 165
    .line 166
    .line 167
    move-result v2

    .line 168
    goto :goto_6

    .line 169
    :cond_b
    move v2, v3

    .line 170
    :goto_6
    iget v4, p0, Lq3/f;->A0:I

    .line 171
    .line 172
    if-eq v4, v2, :cond_c

    .line 173
    .line 174
    iput v2, p0, Lq3/f;->A0:I

    .line 175
    .line 176
    move v1, v0

    .line 177
    :cond_c
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    if-nez v2, :cond_d

    .line 182
    .line 183
    goto :goto_8

    .line 184
    :cond_d
    array-length v4, v2

    .line 185
    move v5, v3

    .line 186
    :goto_7
    if-ge v5, v4, :cond_f

    .line 187
    .line 188
    aget v6, v2, v5

    .line 189
    .line 190
    const v7, 0x10100a0

    .line 191
    .line 192
    .line 193
    if-ne v6, v7, :cond_e

    .line 194
    .line 195
    iget-boolean v2, p0, Lq3/f;->a0:Z

    .line 196
    .line 197
    if-eqz v2, :cond_f

    .line 198
    .line 199
    move v2, v0

    .line 200
    goto :goto_9

    .line 201
    :cond_e
    add-int/2addr v5, v0

    .line 202
    goto :goto_7

    .line 203
    :cond_f
    :goto_8
    move v2, v3

    .line 204
    :goto_9
    iget-boolean v4, p0, Lq3/f;->B0:Z

    .line 205
    .line 206
    if-eq v4, v2, :cond_11

    .line 207
    .line 208
    iget-object v4, p0, Lq3/f;->c0:Landroid/graphics/drawable/Drawable;

    .line 209
    .line 210
    if-eqz v4, :cond_11

    .line 211
    .line 212
    invoke-virtual {p0}, Lq3/f;->j()F

    .line 213
    .line 214
    .line 215
    move-result v1

    .line 216
    iput-boolean v2, p0, Lq3/f;->B0:Z

    .line 217
    .line 218
    invoke-virtual {p0}, Lq3/f;->j()F

    .line 219
    .line 220
    .line 221
    move-result v2

    .line 222
    cmpl-float v1, v1, v2

    .line 223
    .line 224
    if-eqz v1, :cond_10

    .line 225
    .line 226
    move v1, v0

    .line 227
    move v2, v1

    .line 228
    goto :goto_a

    .line 229
    :cond_10
    move v1, v0

    .line 230
    :cond_11
    move v2, v3

    .line 231
    :goto_a
    iget-object v4, p0, Lq3/f;->G0:Landroid/content/res/ColorStateList;

    .line 232
    .line 233
    if-eqz v4, :cond_12

    .line 234
    .line 235
    iget v5, p0, Lq3/f;->C0:I

    .line 236
    .line 237
    invoke-virtual {v4, p1, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 238
    .line 239
    .line 240
    move-result v4

    .line 241
    goto :goto_b

    .line 242
    :cond_12
    move v4, v3

    .line 243
    :goto_b
    iget v5, p0, Lq3/f;->C0:I

    .line 244
    .line 245
    if-eq v5, v4, :cond_13

    .line 246
    .line 247
    iput v4, p0, Lq3/f;->C0:I

    .line 248
    .line 249
    iget-object v1, p0, Lq3/f;->G0:Landroid/content/res/ColorStateList;

    .line 250
    .line 251
    iget-object v4, p0, Lq3/f;->H0:Landroid/graphics/PorterDuff$Mode;

    .line 252
    .line 253
    invoke-static {p0, v1, v4}, Lt3/c;->updateTintFilter(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    .line 254
    .line 255
    .line 256
    move-result-object v1

    .line 257
    iput-object v1, p0, Lq3/f;->F0:Landroid/graphics/PorterDuffColorFilter;

    .line 258
    .line 259
    goto :goto_c

    .line 260
    :cond_13
    move v0, v1

    .line 261
    :goto_c
    iget-object v1, p0, Lq3/f;->Q:Landroid/graphics/drawable/Drawable;

    .line 262
    .line 263
    invoke-static {v1}, Lq3/f;->m(Landroid/graphics/drawable/Drawable;)Z

    .line 264
    .line 265
    .line 266
    move-result v1

    .line 267
    if-eqz v1, :cond_14

    .line 268
    .line 269
    iget-object v1, p0, Lq3/f;->Q:Landroid/graphics/drawable/Drawable;

    .line 270
    .line 271
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 272
    .line 273
    .line 274
    move-result v1

    .line 275
    or-int/2addr v0, v1

    .line 276
    :cond_14
    iget-object v1, p0, Lq3/f;->c0:Landroid/graphics/drawable/Drawable;

    .line 277
    .line 278
    invoke-static {v1}, Lq3/f;->m(Landroid/graphics/drawable/Drawable;)Z

    .line 279
    .line 280
    .line 281
    move-result v1

    .line 282
    if-eqz v1, :cond_15

    .line 283
    .line 284
    iget-object v1, p0, Lq3/f;->c0:Landroid/graphics/drawable/Drawable;

    .line 285
    .line 286
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 287
    .line 288
    .line 289
    move-result v1

    .line 290
    or-int/2addr v0, v1

    .line 291
    :cond_15
    iget-object v1, p0, Lq3/f;->V:Landroid/graphics/drawable/Drawable;

    .line 292
    .line 293
    invoke-static {v1}, Lq3/f;->m(Landroid/graphics/drawable/Drawable;)Z

    .line 294
    .line 295
    .line 296
    move-result v1

    .line 297
    if-eqz v1, :cond_16

    .line 298
    .line 299
    array-length v1, p1

    .line 300
    array-length v4, p2

    .line 301
    add-int/2addr v1, v4

    .line 302
    new-array v1, v1, [I

    .line 303
    .line 304
    array-length v4, p1

    .line 305
    invoke-static {p1, v3, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 306
    .line 307
    .line 308
    array-length p1, p1

    .line 309
    array-length v4, p2

    .line 310
    invoke-static {p2, v3, v1, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 311
    .line 312
    .line 313
    iget-object p1, p0, Lq3/f;->V:Landroid/graphics/drawable/Drawable;

    .line 314
    .line 315
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 316
    .line 317
    .line 318
    move-result p1

    .line 319
    or-int/2addr v0, p1

    .line 320
    :cond_16
    sget-object p1, LD3/a;->a:[I

    .line 321
    .line 322
    iget-object p1, p0, Lq3/f;->W:Landroid/graphics/drawable/RippleDrawable;

    .line 323
    .line 324
    invoke-static {p1}, Lq3/f;->m(Landroid/graphics/drawable/Drawable;)Z

    .line 325
    .line 326
    .line 327
    move-result p1

    .line 328
    if-eqz p1, :cond_17

    .line 329
    .line 330
    iget-object p1, p0, Lq3/f;->W:Landroid/graphics/drawable/RippleDrawable;

    .line 331
    .line 332
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 333
    .line 334
    .line 335
    move-result p1

    .line 336
    or-int/2addr v0, p1

    .line 337
    :cond_17
    if-eqz v0, :cond_18

    .line 338
    .line 339
    invoke-virtual {p0}, LG3/j;->invalidateSelf()V

    .line 340
    .line 341
    .line 342
    :cond_18
    if-eqz v2, :cond_19

    .line 343
    .line 344
    invoke-virtual {p0}, Lq3/f;->onSizeChange()V

    .line 345
    .line 346
    .line 347
    :cond_19
    return v0
.end method

.method public final o()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lq3/f;->b0:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lq3/f;->c0:Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-boolean v0, p0, Lq3/f;->B0:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    return v0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    return v0
.end method

.method public onLayoutDirectionChanged(I)Z
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onLayoutDirectionChanged(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lq3/f;->p()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Lq3/f;->Q:Landroid/graphics/drawable/Drawable;

    .line 12
    .line 13
    invoke-static {v1, p1}, LE/c;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    or-int/2addr v0, v1

    .line 18
    :cond_0
    invoke-virtual {p0}, Lq3/f;->o()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    iget-object v1, p0, Lq3/f;->c0:Landroid/graphics/drawable/Drawable;

    .line 25
    .line 26
    invoke-static {v1, p1}, LE/c;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    or-int/2addr v0, v1

    .line 31
    :cond_1
    invoke-virtual {p0}, Lq3/f;->q()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    iget-object v1, p0, Lq3/f;->V:Landroid/graphics/drawable/Drawable;

    .line 38
    .line 39
    invoke-static {v1, p1}, LE/c;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    or-int/2addr v0, p1

    .line 44
    :cond_2
    if-eqz v0, :cond_3

    .line 45
    .line 46
    invoke-virtual {p0}, LG3/j;->invalidateSelf()V

    .line 47
    .line 48
    .line 49
    :cond_3
    const/4 p1, 0x1

    .line 50
    return p1
.end method

.method public onLevelChange(I)Z
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onLevelChange(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lq3/f;->p()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Lq3/f;->Q:Landroid/graphics/drawable/Drawable;

    .line 12
    .line 13
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    or-int/2addr v0, v1

    .line 18
    :cond_0
    invoke-virtual {p0}, Lq3/f;->o()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    iget-object v1, p0, Lq3/f;->c0:Landroid/graphics/drawable/Drawable;

    .line 25
    .line 26
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    or-int/2addr v0, v1

    .line 31
    :cond_1
    invoke-virtual {p0}, Lq3/f;->q()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    iget-object v1, p0, Lq3/f;->V:Landroid/graphics/drawable/Drawable;

    .line 38
    .line 39
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    or-int/2addr v0, p1

    .line 44
    :cond_2
    if-eqz v0, :cond_3

    .line 45
    .line 46
    invoke-virtual {p0}, LG3/j;->invalidateSelf()V

    .line 47
    .line 48
    .line 49
    :cond_3
    return v0
.end method

.method public onSizeChange()V
    .locals 1

    .line 1
    iget-object v0, p0, Lq3/f;->L0:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lq3/e;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Lq3/e;->onChipDrawableSizeChange()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public onStateChange([I)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lq3/f;->P0:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1}, LG3/j;->onStateChange([I)Z

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0}, Lq3/f;->getCloseIconState()[I

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p0, p1, v0}, Lq3/f;->n([I[I)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    return p1
.end method

.method public onTextSizeChange()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lq3/f;->onSizeChange()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, LG3/j;->invalidateSelf()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final p()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lq3/f;->P:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lq3/f;->Q:Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    if-eqz v0, :cond_0

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

.method public final q()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lq3/f;->U:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lq3/f;->V:Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    if-eqz v0, :cond_0

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

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-interface {p1, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 1
    iget v0, p0, Lq3/f;->D0:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput p1, p0, Lq3/f;->D0:I

    .line 6
    .line 7
    invoke-virtual {p0}, LG3/j;->invalidateSelf()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setCheckable(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lq3/f;->a0:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_1

    .line 4
    .line 5
    iput-boolean p1, p0, Lq3/f;->a0:Z

    .line 6
    .line 7
    invoke-virtual {p0}, Lq3/f;->j()F

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    iget-boolean p1, p0, Lq3/f;->B0:Z

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p0, Lq3/f;->B0:Z

    .line 19
    .line 20
    :cond_0
    invoke-virtual {p0}, Lq3/f;->j()F

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    invoke-virtual {p0}, LG3/j;->invalidateSelf()V

    .line 25
    .line 26
    .line 27
    cmpl-float p1, v0, p1

    .line 28
    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    invoke-virtual {p0}, Lq3/f;->onSizeChange()V

    .line 32
    .line 33
    .line 34
    :cond_1
    return-void
.end method

.method public setCheckableResource(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lq3/f;->o0:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    invoke-virtual {p0, p1}, Lq3/f;->setCheckable(Z)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public setCheckedIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lq3/f;->c0:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lq3/f;->j()F

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iput-object p1, p0, Lq3/f;->c0:Landroid/graphics/drawable/Drawable;

    .line 10
    .line 11
    invoke-virtual {p0}, Lq3/f;->j()F

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    iget-object v1, p0, Lq3/f;->c0:Landroid/graphics/drawable/Drawable;

    .line 16
    .line 17
    invoke-static {v1}, Lq3/f;->r(Landroid/graphics/drawable/Drawable;)V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lq3/f;->c0:Landroid/graphics/drawable/Drawable;

    .line 21
    .line 22
    invoke-virtual {p0, v1}, Lq3/f;->h(Landroid/graphics/drawable/Drawable;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, LG3/j;->invalidateSelf()V

    .line 26
    .line 27
    .line 28
    cmpl-float p1, v0, p1

    .line 29
    .line 30
    if-eqz p1, :cond_0

    .line 31
    .line 32
    invoke-virtual {p0}, Lq3/f;->onSizeChange()V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method

.method public setCheckedIconResource(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lq3/f;->o0:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lf/a;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Lq3/f;->setCheckedIcon(Landroid/graphics/drawable/Drawable;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public setCheckedIconTint(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lq3/f;->d0:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    if-eq v0, p1, :cond_1

    .line 4
    .line 5
    iput-object p1, p0, Lq3/f;->d0:Landroid/content/res/ColorStateList;

    .line 6
    .line 7
    iget-boolean v0, p0, Lq3/f;->b0:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lq3/f;->c0:Landroid/graphics/drawable/Drawable;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-boolean v1, p0, Lq3/f;->a0:Z

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-static {v0, p1}, LE/c;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p0, p1}, Lq3/f;->onStateChange([I)Z

    .line 27
    .line 28
    .line 29
    :cond_1
    return-void
.end method

.method public setCheckedIconTintResource(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lq3/f;->o0:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lf/a;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Lq3/f;->setCheckedIconTint(Landroid/content/res/ColorStateList;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public setCheckedIconVisible(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lq3/f;->o0:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lq3/f;->setCheckedIconVisible(Z)V

    return-void
.end method

.method public setCheckedIconVisible(Z)V
    .locals 1

    .line 2
    iget-boolean v0, p0, Lq3/f;->b0:Z

    if-eq v0, p1, :cond_1

    .line 3
    invoke-virtual {p0}, Lq3/f;->o()Z

    move-result v0

    .line 4
    iput-boolean p1, p0, Lq3/f;->b0:Z

    .line 5
    invoke-virtual {p0}, Lq3/f;->o()Z

    move-result p1

    if-eq v0, p1, :cond_1

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Lq3/f;->c0:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lq3/f;->h(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lq3/f;->c0:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Lq3/f;->r(Landroid/graphics/drawable/Drawable;)V

    .line 8
    :goto_0
    invoke-virtual {p0}, LG3/j;->invalidateSelf()V

    .line 9
    invoke-virtual {p0}, Lq3/f;->onSizeChange()V

    :cond_1
    return-void
.end method

.method public setChipBackgroundColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lq3/f;->I:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Lq3/f;->I:Landroid/content/res/ColorStateList;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p0, p1}, Lq3/f;->onStateChange([I)Z

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public setChipBackgroundColorResource(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lq3/f;->o0:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lf/a;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Lq3/f;->setChipBackgroundColor(Landroid/content/res/ColorStateList;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public setChipCornerRadius(F)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget v0, p0, Lq3/f;->K:F

    .line 2
    .line 3
    cmpl-float v0, v0, p1

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iput p1, p0, Lq3/f;->K:F

    .line 8
    .line 9
    invoke-virtual {p0}, LG3/j;->getShapeAppearanceModel()LG3/p;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, LG3/p;->withCornerSize(F)LG3/p;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p0, p1}, LG3/j;->setShapeAppearanceModel(LG3/p;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public setChipCornerRadiusResource(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lq3/f;->o0:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    invoke-virtual {p0, p1}, Lq3/f;->setChipCornerRadius(F)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public setChipEndPadding(F)V
    .locals 1

    .line 1
    iget v0, p0, Lq3/f;->n0:F

    .line 2
    .line 3
    cmpl-float v0, v0, p1

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iput p1, p0, Lq3/f;->n0:F

    .line 8
    .line 9
    invoke-virtual {p0}, LG3/j;->invalidateSelf()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lq3/f;->onSizeChange()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public setChipEndPaddingResource(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lq3/f;->o0:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    invoke-virtual {p0, p1}, Lq3/f;->setChipEndPadding(F)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public setChipIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lq3/f;->getChipIcon()Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eq v0, p1, :cond_2

    .line 6
    .line 7
    invoke-virtual {p0}, Lq3/f;->j()F

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-static {p1}, LE/c;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p1, 0x0

    .line 23
    :goto_0
    iput-object p1, p0, Lq3/f;->Q:Landroid/graphics/drawable/Drawable;

    .line 24
    .line 25
    invoke-virtual {p0}, Lq3/f;->j()F

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    invoke-static {v0}, Lq3/f;->r(Landroid/graphics/drawable/Drawable;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lq3/f;->p()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    iget-object v0, p0, Lq3/f;->Q:Landroid/graphics/drawable/Drawable;

    .line 39
    .line 40
    invoke-virtual {p0, v0}, Lq3/f;->h(Landroid/graphics/drawable/Drawable;)V

    .line 41
    .line 42
    .line 43
    :cond_1
    invoke-virtual {p0}, LG3/j;->invalidateSelf()V

    .line 44
    .line 45
    .line 46
    cmpl-float p1, v1, p1

    .line 47
    .line 48
    if-eqz p1, :cond_2

    .line 49
    .line 50
    invoke-virtual {p0}, Lq3/f;->onSizeChange()V

    .line 51
    .line 52
    .line 53
    :cond_2
    return-void
.end method

.method public setChipIconResource(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lq3/f;->o0:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lf/a;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Lq3/f;->setChipIcon(Landroid/graphics/drawable/Drawable;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public setChipIconSize(F)V
    .locals 1

    .line 1
    iget v0, p0, Lq3/f;->S:F

    .line 2
    .line 3
    cmpl-float v0, v0, p1

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lq3/f;->j()F

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iput p1, p0, Lq3/f;->S:F

    .line 12
    .line 13
    invoke-virtual {p0}, Lq3/f;->j()F

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    invoke-virtual {p0}, LG3/j;->invalidateSelf()V

    .line 18
    .line 19
    .line 20
    cmpl-float p1, v0, p1

    .line 21
    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0}, Lq3/f;->onSizeChange()V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public setChipIconSizeResource(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lq3/f;->o0:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    invoke-virtual {p0, p1}, Lq3/f;->setChipIconSize(F)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public setChipIconTint(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lq3/f;->T:Z

    .line 3
    .line 4
    iget-object v0, p0, Lq3/f;->R:Landroid/content/res/ColorStateList;

    .line 5
    .line 6
    if-eq v0, p1, :cond_1

    .line 7
    .line 8
    iput-object p1, p0, Lq3/f;->R:Landroid/content/res/ColorStateList;

    .line 9
    .line 10
    invoke-virtual {p0}, Lq3/f;->p()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lq3/f;->Q:Landroid/graphics/drawable/Drawable;

    .line 17
    .line 18
    invoke-static {v0, p1}, LE/c;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p0, p1}, Lq3/f;->onStateChange([I)Z

    .line 26
    .line 27
    .line 28
    :cond_1
    return-void
.end method

.method public setChipIconTintResource(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lq3/f;->o0:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lf/a;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Lq3/f;->setChipIconTint(Landroid/content/res/ColorStateList;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public setChipIconVisible(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lq3/f;->o0:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lq3/f;->setChipIconVisible(Z)V

    return-void
.end method

.method public setChipIconVisible(Z)V
    .locals 1

    .line 2
    iget-boolean v0, p0, Lq3/f;->P:Z

    if-eq v0, p1, :cond_1

    .line 3
    invoke-virtual {p0}, Lq3/f;->p()Z

    move-result v0

    .line 4
    iput-boolean p1, p0, Lq3/f;->P:Z

    .line 5
    invoke-virtual {p0}, Lq3/f;->p()Z

    move-result p1

    if-eq v0, p1, :cond_1

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Lq3/f;->Q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lq3/f;->h(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lq3/f;->Q:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Lq3/f;->r(Landroid/graphics/drawable/Drawable;)V

    .line 8
    :goto_0
    invoke-virtual {p0}, LG3/j;->invalidateSelf()V

    .line 9
    invoke-virtual {p0}, Lq3/f;->onSizeChange()V

    :cond_1
    return-void
.end method

.method public setChipMinHeight(F)V
    .locals 1

    .line 1
    iget v0, p0, Lq3/f;->J:F

    .line 2
    .line 3
    cmpl-float v0, v0, p1

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iput p1, p0, Lq3/f;->J:F

    .line 8
    .line 9
    invoke-virtual {p0}, LG3/j;->invalidateSelf()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lq3/f;->onSizeChange()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public setChipMinHeightResource(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lq3/f;->o0:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    invoke-virtual {p0, p1}, Lq3/f;->setChipMinHeight(F)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public setChipStartPadding(F)V
    .locals 1

    .line 1
    iget v0, p0, Lq3/f;->g0:F

    .line 2
    .line 3
    cmpl-float v0, v0, p1

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iput p1, p0, Lq3/f;->g0:F

    .line 8
    .line 9
    invoke-virtual {p0}, LG3/j;->invalidateSelf()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lq3/f;->onSizeChange()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public setChipStartPaddingResource(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lq3/f;->o0:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    invoke-virtual {p0, p1}, Lq3/f;->setChipStartPadding(F)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public setChipStrokeColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lq3/f;->L:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    if-eq v0, p1, :cond_1

    .line 4
    .line 5
    iput-object p1, p0, Lq3/f;->L:Landroid/content/res/ColorStateList;

    .line 6
    .line 7
    iget-boolean v0, p0, Lq3/f;->P0:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, p1}, LG3/j;->setStrokeColor(Landroid/content/res/ColorStateList;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p0, p1}, Lq3/f;->onStateChange([I)Z

    .line 19
    .line 20
    .line 21
    :cond_1
    return-void
.end method

.method public setChipStrokeColorResource(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lq3/f;->o0:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lf/a;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Lq3/f;->setChipStrokeColor(Landroid/content/res/ColorStateList;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public setChipStrokeWidth(F)V
    .locals 1

    .line 1
    iget v0, p0, Lq3/f;->M:F

    .line 2
    .line 3
    cmpl-float v0, v0, p1

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iput p1, p0, Lq3/f;->M:F

    .line 8
    .line 9
    iget-object v0, p0, Lq3/f;->p0:Landroid/graphics/Paint;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 12
    .line 13
    .line 14
    iget-boolean v0, p0, Lq3/f;->P0:Z

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-super {p0, p1}, LG3/j;->setStrokeWidth(F)V

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {p0}, LG3/j;->invalidateSelf()V

    .line 22
    .line 23
    .line 24
    :cond_1
    return-void
.end method

.method public setChipStrokeWidthResource(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lq3/f;->o0:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    invoke-virtual {p0, p1}, Lq3/f;->setChipStrokeWidth(F)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public setCloseIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lq3/f;->getCloseIcon()Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eq v0, p1, :cond_2

    .line 6
    .line 7
    invoke-virtual {p0}, Lq3/f;->k()F

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-static {p1}, LE/c;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p1, 0x0

    .line 23
    :goto_0
    iput-object p1, p0, Lq3/f;->V:Landroid/graphics/drawable/Drawable;

    .line 24
    .line 25
    sget-object p1, LD3/a;->a:[I

    .line 26
    .line 27
    new-instance p1, Landroid/graphics/drawable/RippleDrawable;

    .line 28
    .line 29
    invoke-virtual {p0}, Lq3/f;->getRippleColor()Landroid/content/res/ColorStateList;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-static {v2}, LD3/a;->sanitizeRippleDrawableColor(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    iget-object v3, p0, Lq3/f;->V:Landroid/graphics/drawable/Drawable;

    .line 38
    .line 39
    sget-object v4, Lq3/f;->R0:Landroid/graphics/drawable/ShapeDrawable;

    .line 40
    .line 41
    invoke-direct {p1, v2, v3, v4}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 42
    .line 43
    .line 44
    iput-object p1, p0, Lq3/f;->W:Landroid/graphics/drawable/RippleDrawable;

    .line 45
    .line 46
    invoke-virtual {p0}, Lq3/f;->k()F

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    invoke-static {v0}, Lq3/f;->r(Landroid/graphics/drawable/Drawable;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lq3/f;->q()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_1

    .line 58
    .line 59
    iget-object v0, p0, Lq3/f;->V:Landroid/graphics/drawable/Drawable;

    .line 60
    .line 61
    invoke-virtual {p0, v0}, Lq3/f;->h(Landroid/graphics/drawable/Drawable;)V

    .line 62
    .line 63
    .line 64
    :cond_1
    invoke-virtual {p0}, LG3/j;->invalidateSelf()V

    .line 65
    .line 66
    .line 67
    cmpl-float p1, v1, p1

    .line 68
    .line 69
    if-eqz p1, :cond_2

    .line 70
    .line 71
    invoke-virtual {p0}, Lq3/f;->onSizeChange()V

    .line 72
    .line 73
    .line 74
    :cond_2
    return-void
.end method

.method public setCloseIconContentDescription(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lq3/f;->Z:Ljava/lang/CharSequence;

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    invoke-static {}, LK/c;->getInstance()LK/c;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, LK/c;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lq3/f;->Z:Ljava/lang/CharSequence;

    .line 14
    .line 15
    invoke-virtual {p0}, LG3/j;->invalidateSelf()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public setCloseIconEndPadding(F)V
    .locals 1

    .line 1
    iget v0, p0, Lq3/f;->m0:F

    .line 2
    .line 3
    cmpl-float v0, v0, p1

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iput p1, p0, Lq3/f;->m0:F

    .line 8
    .line 9
    invoke-virtual {p0}, LG3/j;->invalidateSelf()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lq3/f;->q()Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0}, Lq3/f;->onSizeChange()V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public setCloseIconEndPaddingResource(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lq3/f;->o0:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    invoke-virtual {p0, p1}, Lq3/f;->setCloseIconEndPadding(F)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public setCloseIconResource(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lq3/f;->o0:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lf/a;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Lq3/f;->setCloseIcon(Landroid/graphics/drawable/Drawable;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public setCloseIconSize(F)V
    .locals 1

    .line 1
    iget v0, p0, Lq3/f;->Y:F

    .line 2
    .line 3
    cmpl-float v0, v0, p1

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iput p1, p0, Lq3/f;->Y:F

    .line 8
    .line 9
    invoke-virtual {p0}, LG3/j;->invalidateSelf()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lq3/f;->q()Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0}, Lq3/f;->onSizeChange()V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public setCloseIconSizeResource(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lq3/f;->o0:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    invoke-virtual {p0, p1}, Lq3/f;->setCloseIconSize(F)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public setCloseIconStartPadding(F)V
    .locals 1

    .line 1
    iget v0, p0, Lq3/f;->l0:F

    .line 2
    .line 3
    cmpl-float v0, v0, p1

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iput p1, p0, Lq3/f;->l0:F

    .line 8
    .line 9
    invoke-virtual {p0}, LG3/j;->invalidateSelf()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lq3/f;->q()Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0}, Lq3/f;->onSizeChange()V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public setCloseIconStartPaddingResource(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lq3/f;->o0:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    invoke-virtual {p0, p1}, Lq3/f;->setCloseIconStartPadding(F)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public setCloseIconState([I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lq3/f;->I0:[I

    .line 2
    .line 3
    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iput-object p1, p0, Lq3/f;->I0:[I

    .line 10
    .line 11
    invoke-virtual {p0}, Lq3/f;->q()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p0, v0, p1}, Lq3/f;->n([I[I)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    return p1

    .line 26
    :cond_0
    const/4 p1, 0x0

    .line 27
    return p1
.end method

.method public setCloseIconTint(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lq3/f;->X:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    if-eq v0, p1, :cond_1

    .line 4
    .line 5
    iput-object p1, p0, Lq3/f;->X:Landroid/content/res/ColorStateList;

    .line 6
    .line 7
    invoke-virtual {p0}, Lq3/f;->q()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lq3/f;->V:Landroid/graphics/drawable/Drawable;

    .line 14
    .line 15
    invoke-static {v0, p1}, LE/c;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p0, p1}, Lq3/f;->onStateChange([I)Z

    .line 23
    .line 24
    .line 25
    :cond_1
    return-void
.end method

.method public setCloseIconTintResource(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lq3/f;->o0:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lf/a;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Lq3/f;->setCloseIconTint(Landroid/content/res/ColorStateList;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public setCloseIconVisible(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lq3/f;->U:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Lq3/f;->q()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iput-boolean p1, p0, Lq3/f;->U:Z

    .line 10
    .line 11
    invoke-virtual {p0}, Lq3/f;->q()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eq v0, p1, :cond_1

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    iget-object p1, p0, Lq3/f;->V:Landroid/graphics/drawable/Drawable;

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Lq3/f;->h(Landroid/graphics/drawable/Drawable;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object p1, p0, Lq3/f;->V:Landroid/graphics/drawable/Drawable;

    .line 26
    .line 27
    invoke-static {p1}, Lq3/f;->r(Landroid/graphics/drawable/Drawable;)V

    .line 28
    .line 29
    .line 30
    :goto_0
    invoke-virtual {p0}, LG3/j;->invalidateSelf()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lq3/f;->onSizeChange()V

    .line 34
    .line 35
    .line 36
    :cond_1
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lq3/f;->E0:Landroid/graphics/ColorFilter;

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Lq3/f;->E0:Landroid/graphics/ColorFilter;

    .line 6
    .line 7
    invoke-virtual {p0}, LG3/j;->invalidateSelf()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setDelegate(Lq3/e;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lq3/f;->L0:Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    return-void
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lq3/f;->M0:Landroid/text/TextUtils$TruncateAt;

    .line 2
    .line 3
    return-void
.end method

.method public setHideMotionSpec(Lg3/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lq3/f;->f0:Lg3/c;

    .line 2
    .line 3
    return-void
.end method

.method public setHideMotionSpecResource(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lq3/f;->o0:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lg3/c;->createFromResource(Landroid/content/Context;I)Lg3/c;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Lq3/f;->setHideMotionSpec(Lg3/c;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public setIconEndPadding(F)V
    .locals 1

    .line 1
    iget v0, p0, Lq3/f;->i0:F

    .line 2
    .line 3
    cmpl-float v0, v0, p1

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lq3/f;->j()F

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iput p1, p0, Lq3/f;->i0:F

    .line 12
    .line 13
    invoke-virtual {p0}, Lq3/f;->j()F

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    invoke-virtual {p0}, LG3/j;->invalidateSelf()V

    .line 18
    .line 19
    .line 20
    cmpl-float p1, v0, p1

    .line 21
    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0}, Lq3/f;->onSizeChange()V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public setIconEndPaddingResource(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lq3/f;->o0:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    invoke-virtual {p0, p1}, Lq3/f;->setIconEndPadding(F)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public setIconStartPadding(F)V
    .locals 1

    .line 1
    iget v0, p0, Lq3/f;->h0:F

    .line 2
    .line 3
    cmpl-float v0, v0, p1

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lq3/f;->j()F

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iput p1, p0, Lq3/f;->h0:F

    .line 12
    .line 13
    invoke-virtual {p0}, Lq3/f;->j()F

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    invoke-virtual {p0}, LG3/j;->invalidateSelf()V

    .line 18
    .line 19
    .line 20
    cmpl-float p1, v0, p1

    .line 21
    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0}, Lq3/f;->onSizeChange()V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public setIconStartPaddingResource(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lq3/f;->o0:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    invoke-virtual {p0, p1}, Lq3/f;->setIconStartPadding(F)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lq3/f;->O0:I

    .line 2
    .line 3
    return-void
.end method

.method public setRippleColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lq3/f;->N:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    if-eq v0, p1, :cond_1

    .line 4
    .line 5
    iput-object p1, p0, Lq3/f;->N:Landroid/content/res/ColorStateList;

    .line 6
    .line 7
    iget-boolean v0, p0, Lq3/f;->J0:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {p1}, LD3/a;->sanitizeRippleDrawableColor(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    :goto_0
    iput-object p1, p0, Lq3/f;->K0:Landroid/content/res/ColorStateList;

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p0, p1}, Lq3/f;->onStateChange([I)Z

    .line 24
    .line 25
    .line 26
    :cond_1
    return-void
.end method

.method public setRippleColorResource(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lq3/f;->o0:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lf/a;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Lq3/f;->setRippleColor(Landroid/content/res/ColorStateList;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public setShowMotionSpec(Lg3/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lq3/f;->e0:Lg3/c;

    .line 2
    .line 3
    return-void
.end method

.method public setShowMotionSpecResource(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lq3/f;->o0:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lg3/c;->createFromResource(Landroid/content/Context;I)Lg3/c;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Lq3/f;->setShowMotionSpec(Lg3/c;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-string p1, ""

    .line 4
    .line 5
    :cond_0
    iget-object v0, p0, Lq3/f;->O:Ljava/lang/CharSequence;

    .line 6
    .line 7
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    iput-object p1, p0, Lq3/f;->O:Ljava/lang/CharSequence;

    .line 14
    .line 15
    iget-object p1, p0, Lq3/f;->u0:Lx3/J;

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    invoke-virtual {p1, v0}, Lx3/J;->setTextWidthDirty(Z)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, LG3/j;->invalidateSelf()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lq3/f;->onSizeChange()V

    .line 25
    .line 26
    .line 27
    :cond_1
    return-void
.end method

.method public setTextAppearance(LC3/g;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lq3/f;->u0:Lx3/J;

    .line 2
    .line 3
    iget-object v1, p0, Lq3/f;->o0:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v0, p1, v1}, Lx3/J;->setTextAppearance(LC3/g;Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setTextAppearanceResource(I)V
    .locals 2

    .line 1
    new-instance v0, LC3/g;

    .line 2
    .line 3
    iget-object v1, p0, Lq3/f;->o0:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {v0, v1, p1}, LC3/g;-><init>(Landroid/content/Context;I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lq3/f;->setTextAppearance(LC3/g;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setTextEndPadding(F)V
    .locals 1

    .line 1
    iget v0, p0, Lq3/f;->k0:F

    .line 2
    .line 3
    cmpl-float v0, v0, p1

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iput p1, p0, Lq3/f;->k0:F

    .line 8
    .line 9
    invoke-virtual {p0}, LG3/j;->invalidateSelf()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lq3/f;->onSizeChange()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public setTextEndPaddingResource(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lq3/f;->o0:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    invoke-virtual {p0, p1}, Lq3/f;->setTextEndPadding(F)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public setTextSize(F)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lq3/f;->getTextAppearance()LC3/g;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1}, LC3/g;->setTextSize(F)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lq3/f;->u0:Lx3/J;

    .line 11
    .line 12
    invoke-virtual {v0}, Lx3/J;->getTextPaint()Landroid/text/TextPaint;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lq3/f;->onTextSizeChange()V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public setTextStartPadding(F)V
    .locals 1

    .line 1
    iget v0, p0, Lq3/f;->j0:F

    .line 2
    .line 3
    cmpl-float v0, v0, p1

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iput p1, p0, Lq3/f;->j0:F

    .line 8
    .line 9
    invoke-virtual {p0}, LG3/j;->invalidateSelf()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lq3/f;->onSizeChange()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public setTextStartPaddingResource(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lq3/f;->o0:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    invoke-virtual {p0, p1}, Lq3/f;->setTextStartPadding(F)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lq3/f;->G0:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Lq3/f;->G0:Landroid/content/res/ColorStateList;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p0, p1}, Lq3/f;->onStateChange([I)Z

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lq3/f;->H0:Landroid/graphics/PorterDuff$Mode;

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Lq3/f;->H0:Landroid/graphics/PorterDuff$Mode;

    .line 6
    .line 7
    iget-object v0, p0, Lq3/f;->G0:Landroid/content/res/ColorStateList;

    .line 8
    .line 9
    invoke-static {p0, v0, p1}, Lt3/c;->updateTintFilter(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lq3/f;->F0:Landroid/graphics/PorterDuffColorFilter;

    .line 14
    .line 15
    invoke-virtual {p0}, LG3/j;->invalidateSelf()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public setUseCompatRipple(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lq3/f;->J0:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_1

    .line 4
    .line 5
    iput-boolean p1, p0, Lq3/f;->J0:Z

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lq3/f;->N:Landroid/content/res/ColorStateList;

    .line 10
    .line 11
    invoke-static {p1}, LD3/a;->sanitizeRippleDrawableColor(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    :goto_0
    iput-object p1, p0, Lq3/f;->K0:Landroid/content/res/ColorStateList;

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p0, p1}, Lq3/f;->onStateChange([I)Z

    .line 24
    .line 25
    .line 26
    :cond_1
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lq3/f;->p()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Lq3/f;->Q:Landroid/graphics/drawable/Drawable;

    .line 12
    .line 13
    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    or-int/2addr v0, v1

    .line 18
    :cond_0
    invoke-virtual {p0}, Lq3/f;->o()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    iget-object v1, p0, Lq3/f;->c0:Landroid/graphics/drawable/Drawable;

    .line 25
    .line 26
    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    or-int/2addr v0, v1

    .line 31
    :cond_1
    invoke-virtual {p0}, Lq3/f;->q()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    iget-object v1, p0, Lq3/f;->V:Landroid/graphics/drawable/Drawable;

    .line 38
    .line 39
    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    or-int/2addr v0, p1

    .line 44
    :cond_2
    if-eqz v0, :cond_3

    .line 45
    .line 46
    invoke-virtual {p0}, LG3/j;->invalidateSelf()V

    .line 47
    .line 48
    .line 49
    :cond_3
    return v0
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-interface {p1, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
