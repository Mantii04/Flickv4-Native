.class public final Lcom/google/android/material/internal/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public A:Landroid/graphics/Typeface;

.field public B:Landroid/graphics/Typeface;

.field public C:Landroid/graphics/Typeface;

.field public D:LC3/b;

.field public E:LC3/b;

.field public F:Landroid/text/TextUtils$TruncateAt;

.field public G:Ljava/lang/CharSequence;

.field public H:Ljava/lang/CharSequence;

.field public I:Z

.field public J:Z

.field public K:Landroid/graphics/Bitmap;

.field public L:F

.field public M:F

.field public N:F

.field public O:F

.field public P:F

.field public Q:I

.field public R:[I

.field public S:Z

.field public final T:Landroid/text/TextPaint;

.field public final U:Landroid/text/TextPaint;

.field public V:Landroid/animation/TimeInterpolator;

.field public W:Landroid/animation/TimeInterpolator;

.field public X:F

.field public Y:F

.field public Z:F

.field public final a:Landroid/view/View;

.field public a0:Landroid/content/res/ColorStateList;

.field public b:F

.field public b0:F

.field public c:Z

.field public c0:F

.field public d:F

.field public d0:F

.field public e:F

.field public e0:Landroid/content/res/ColorStateList;

.field public f:I

.field public f0:F

.field public final g:Landroid/graphics/Rect;

.field public g0:F

.field public final h:Landroid/graphics/Rect;

.field public h0:F

.field public final i:Landroid/graphics/RectF;

.field public i0:Landroid/text/StaticLayout;

.field public j:I

.field public j0:F

.field public k:I

.field public k0:F

.field public l:F

.field public l0:F

.field public m:F

.field public m0:Ljava/lang/CharSequence;

.field public n:Landroid/content/res/ColorStateList;

.field public n0:I

.field public o:Landroid/content/res/ColorStateList;

.field public o0:F

.field public p:I

.field public p0:F

.field public q:F

.field public q0:I

.field public r:F

.field public s:F

.field public t:F

.field public u:F

.field public v:F

.field public w:Landroid/graphics/Typeface;

.field public x:Landroid/graphics/Typeface;

.field public y:Landroid/graphics/Typeface;

.field public z:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x10

    .line 5
    .line 6
    iput v0, p0, Lcom/google/android/material/internal/a;->j:I

    .line 7
    .line 8
    iput v0, p0, Lcom/google/android/material/internal/a;->k:I

    .line 9
    .line 10
    const/high16 v0, 0x41700000    # 15.0f

    .line 11
    .line 12
    iput v0, p0, Lcom/google/android/material/internal/a;->l:F

    .line 13
    .line 14
    iput v0, p0, Lcom/google/android/material/internal/a;->m:F

    .line 15
    .line 16
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/google/android/material/internal/a;->F:Landroid/text/TextUtils$TruncateAt;

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lcom/google/android/material/internal/a;->J:Z

    .line 22
    .line 23
    iput v0, p0, Lcom/google/android/material/internal/a;->n0:I

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    iput v1, p0, Lcom/google/android/material/internal/a;->o0:F

    .line 27
    .line 28
    const/high16 v1, 0x3f800000    # 1.0f

    .line 29
    .line 30
    iput v1, p0, Lcom/google/android/material/internal/a;->p0:F

    .line 31
    .line 32
    iput v0, p0, Lcom/google/android/material/internal/a;->q0:I

    .line 33
    .line 34
    iput-object p1, p0, Lcom/google/android/material/internal/a;->a:Landroid/view/View;

    .line 35
    .line 36
    new-instance v0, Landroid/text/TextPaint;

    .line 37
    .line 38
    const/16 v2, 0x81

    .line 39
    .line 40
    invoke-direct {v0, v2}, Landroid/text/TextPaint;-><init>(I)V

    .line 41
    .line 42
    .line 43
    iput-object v0, p0, Lcom/google/android/material/internal/a;->T:Landroid/text/TextPaint;

    .line 44
    .line 45
    new-instance v2, Landroid/text/TextPaint;

    .line 46
    .line 47
    invoke-direct {v2, v0}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    .line 48
    .line 49
    .line 50
    iput-object v2, p0, Lcom/google/android/material/internal/a;->U:Landroid/text/TextPaint;

    .line 51
    .line 52
    new-instance v0, Landroid/graphics/Rect;

    .line 53
    .line 54
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 55
    .line 56
    .line 57
    iput-object v0, p0, Lcom/google/android/material/internal/a;->h:Landroid/graphics/Rect;

    .line 58
    .line 59
    new-instance v0, Landroid/graphics/Rect;

    .line 60
    .line 61
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 62
    .line 63
    .line 64
    iput-object v0, p0, Lcom/google/android/material/internal/a;->g:Landroid/graphics/Rect;

    .line 65
    .line 66
    new-instance v0, Landroid/graphics/RectF;

    .line 67
    .line 68
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 69
    .line 70
    .line 71
    iput-object v0, p0, Lcom/google/android/material/internal/a;->i:Landroid/graphics/RectF;

    .line 72
    .line 73
    iget v0, p0, Lcom/google/android/material/internal/a;->d:F

    .line 74
    .line 75
    const/high16 v2, 0x3f000000    # 0.5f

    .line 76
    .line 77
    invoke-static {v1, v0, v2, v0}, Lb/c;->a(FFFF)F

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    iput v0, p0, Lcom/google/android/material/internal/a;->e:F

    .line 82
    .line 83
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/a;->maybeUpdateFontWeightAdjustment(Landroid/content/res/Configuration;)V

    .line 96
    .line 97
    .line 98
    return-void
.end method

.method public static a(IIF)I
    .locals 5

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    .line 3
    sub-float/2addr v0, p2

    .line 4
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    int-to-float v1, v1

    .line 9
    mul-float/2addr v1, v0

    .line 10
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    int-to-float v2, v2

    .line 15
    mul-float/2addr v2, p2

    .line 16
    add-float/2addr v2, v1

    .line 17
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    int-to-float v1, v1

    .line 22
    mul-float/2addr v1, v0

    .line 23
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    int-to-float v3, v3

    .line 28
    mul-float/2addr v3, p2

    .line 29
    add-float/2addr v3, v1

    .line 30
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    int-to-float v1, v1

    .line 35
    mul-float/2addr v1, v0

    .line 36
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    int-to-float v4, v4

    .line 41
    mul-float/2addr v4, p2

    .line 42
    add-float/2addr v4, v1

    .line 43
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    int-to-float p0, p0

    .line 48
    mul-float/2addr p0, v0

    .line 49
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    int-to-float p1, p1

    .line 54
    mul-float/2addr p1, p2

    .line 55
    add-float/2addr p1, p0

    .line 56
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 61
    .line 62
    .line 63
    move-result p2

    .line 64
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    invoke-static {p0, p2, v0, p1}, Landroid/graphics/Color;->argb(IIII)I

    .line 73
    .line 74
    .line 75
    move-result p0

    .line 76
    return p0
.end method

.method public static e(FFFLandroid/animation/TimeInterpolator;)F
    .locals 0

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    invoke-interface {p3, p2}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    :cond_0
    invoke-static {p0, p1, p2}, Lg3/a;->lerp(FFF)F

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method


# virtual methods
.method public final b(Ljava/lang/CharSequence;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/a;->a:Landroid/view/View;

    .line 2
    .line 3
    invoke-static {v0}, LM/p0;->getLayoutDirection(Landroid/view/View;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    if-ne v0, v2, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move v2, v1

    .line 13
    :goto_0
    iget-boolean v0, p0, Lcom/google/android/material/internal/a;->J:Z

    .line 14
    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    sget-object v0, LK/p;->d:LK/o;

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    sget-object v0, LK/p;->c:LK/o;

    .line 23
    .line 24
    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    invoke-interface {v0, p1, v1, v2}, LK/j;->isRtl(Ljava/lang/CharSequence;II)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    return p1

    .line 33
    :cond_2
    return v2
.end method

.method public final c(FZ)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/a;->G:Ljava/lang/CharSequence;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_f

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/internal/a;->h:Landroid/graphics/Rect;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    int-to-float v0, v0

    .line 14
    iget-object v1, p0, Lcom/google/android/material/internal/a;->g:Landroid/graphics/Rect;

    .line 15
    .line 16
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    int-to-float v1, v1

    .line 21
    const/high16 v2, 0x3f800000    # 1.0f

    .line 22
    .line 23
    sub-float v3, p1, v2

    .line 24
    .line 25
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    const v4, 0x3727c5ac    # 1.0E-5f

    .line 30
    .line 31
    .line 32
    cmpg-float v3, v3, v4

    .line 33
    .line 34
    const/4 v5, 0x0

    .line 35
    const/4 v6, 0x1

    .line 36
    if-gez v3, :cond_1

    .line 37
    .line 38
    move v3, v6

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    move v3, v5

    .line 41
    :goto_0
    const/4 v7, 0x0

    .line 42
    if-eqz v3, :cond_2

    .line 43
    .line 44
    iget p1, p0, Lcom/google/android/material/internal/a;->m:F

    .line 45
    .line 46
    iget p2, p0, Lcom/google/android/material/internal/a;->f0:F

    .line 47
    .line 48
    iput v2, p0, Lcom/google/android/material/internal/a;->L:F

    .line 49
    .line 50
    iget-object v1, p0, Lcom/google/android/material/internal/a;->w:Landroid/graphics/Typeface;

    .line 51
    .line 52
    goto :goto_4

    .line 53
    :cond_2
    iget v3, p0, Lcom/google/android/material/internal/a;->l:F

    .line 54
    .line 55
    iget v8, p0, Lcom/google/android/material/internal/a;->g0:F

    .line 56
    .line 57
    iget-object v9, p0, Lcom/google/android/material/internal/a;->z:Landroid/graphics/Typeface;

    .line 58
    .line 59
    sub-float v10, p1, v7

    .line 60
    .line 61
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    .line 62
    .line 63
    .line 64
    move-result v10

    .line 65
    cmpg-float v4, v10, v4

    .line 66
    .line 67
    if-gez v4, :cond_3

    .line 68
    .line 69
    iput v2, p0, Lcom/google/android/material/internal/a;->L:F

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_3
    iget v4, p0, Lcom/google/android/material/internal/a;->l:F

    .line 73
    .line 74
    iget v10, p0, Lcom/google/android/material/internal/a;->m:F

    .line 75
    .line 76
    iget-object v11, p0, Lcom/google/android/material/internal/a;->W:Landroid/animation/TimeInterpolator;

    .line 77
    .line 78
    invoke-static {v4, v10, p1, v11}, Lcom/google/android/material/internal/a;->e(FFFLandroid/animation/TimeInterpolator;)F

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    iget v4, p0, Lcom/google/android/material/internal/a;->l:F

    .line 83
    .line 84
    div-float/2addr p1, v4

    .line 85
    iput p1, p0, Lcom/google/android/material/internal/a;->L:F

    .line 86
    .line 87
    :goto_1
    iget p1, p0, Lcom/google/android/material/internal/a;->m:F

    .line 88
    .line 89
    iget v4, p0, Lcom/google/android/material/internal/a;->l:F

    .line 90
    .line 91
    div-float/2addr p1, v4

    .line 92
    mul-float v4, v1, p1

    .line 93
    .line 94
    if-nez p2, :cond_5

    .line 95
    .line 96
    iget-boolean p2, p0, Lcom/google/android/material/internal/a;->c:Z

    .line 97
    .line 98
    if-eqz p2, :cond_4

    .line 99
    .line 100
    goto :goto_3

    .line 101
    :cond_4
    cmpl-float p2, v4, v0

    .line 102
    .line 103
    if-lez p2, :cond_5

    .line 104
    .line 105
    div-float/2addr v0, p1

    .line 106
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    move v0, p1

    .line 111
    :goto_2
    move p1, v3

    .line 112
    move p2, v8

    .line 113
    move-object v1, v9

    .line 114
    goto :goto_4

    .line 115
    :cond_5
    :goto_3
    move v0, v1

    .line 116
    goto :goto_2

    .line 117
    :goto_4
    cmpl-float v3, v0, v7

    .line 118
    .line 119
    iget-object v4, p0, Lcom/google/android/material/internal/a;->T:Landroid/text/TextPaint;

    .line 120
    .line 121
    if-lez v3, :cond_d

    .line 122
    .line 123
    iget v3, p0, Lcom/google/android/material/internal/a;->M:F

    .line 124
    .line 125
    cmpl-float v3, v3, p1

    .line 126
    .line 127
    if-eqz v3, :cond_6

    .line 128
    .line 129
    move v3, v6

    .line 130
    goto :goto_5

    .line 131
    :cond_6
    move v3, v5

    .line 132
    :goto_5
    iget v7, p0, Lcom/google/android/material/internal/a;->h0:F

    .line 133
    .line 134
    cmpl-float v7, v7, p2

    .line 135
    .line 136
    if-eqz v7, :cond_7

    .line 137
    .line 138
    move v7, v6

    .line 139
    goto :goto_6

    .line 140
    :cond_7
    move v7, v5

    .line 141
    :goto_6
    iget-object v8, p0, Lcom/google/android/material/internal/a;->C:Landroid/graphics/Typeface;

    .line 142
    .line 143
    if-eq v8, v1, :cond_8

    .line 144
    .line 145
    move v8, v6

    .line 146
    goto :goto_7

    .line 147
    :cond_8
    move v8, v5

    .line 148
    :goto_7
    iget-object v9, p0, Lcom/google/android/material/internal/a;->i0:Landroid/text/StaticLayout;

    .line 149
    .line 150
    if-eqz v9, :cond_9

    .line 151
    .line 152
    invoke-virtual {v9}, Landroid/text/Layout;->getWidth()I

    .line 153
    .line 154
    .line 155
    move-result v9

    .line 156
    int-to-float v9, v9

    .line 157
    cmpl-float v9, v0, v9

    .line 158
    .line 159
    if-eqz v9, :cond_9

    .line 160
    .line 161
    move v9, v6

    .line 162
    goto :goto_8

    .line 163
    :cond_9
    move v9, v5

    .line 164
    :goto_8
    if-nez v3, :cond_b

    .line 165
    .line 166
    if-nez v7, :cond_b

    .line 167
    .line 168
    if-nez v9, :cond_b

    .line 169
    .line 170
    if-nez v8, :cond_b

    .line 171
    .line 172
    iget-boolean v3, p0, Lcom/google/android/material/internal/a;->S:Z

    .line 173
    .line 174
    if-eqz v3, :cond_a

    .line 175
    .line 176
    goto :goto_9

    .line 177
    :cond_a
    move v3, v5

    .line 178
    goto :goto_a

    .line 179
    :cond_b
    :goto_9
    move v3, v6

    .line 180
    :goto_a
    iput p1, p0, Lcom/google/android/material/internal/a;->M:F

    .line 181
    .line 182
    iput p2, p0, Lcom/google/android/material/internal/a;->h0:F

    .line 183
    .line 184
    iput-object v1, p0, Lcom/google/android/material/internal/a;->C:Landroid/graphics/Typeface;

    .line 185
    .line 186
    iput-boolean v5, p0, Lcom/google/android/material/internal/a;->S:Z

    .line 187
    .line 188
    iget p1, p0, Lcom/google/android/material/internal/a;->L:F

    .line 189
    .line 190
    cmpl-float p1, p1, v2

    .line 191
    .line 192
    if-eqz p1, :cond_c

    .line 193
    .line 194
    move p1, v6

    .line 195
    goto :goto_b

    .line 196
    :cond_c
    move p1, v5

    .line 197
    :goto_b
    invoke-virtual {v4, p1}, Landroid/graphics/Paint;->setLinearText(Z)V

    .line 198
    .line 199
    .line 200
    goto :goto_c

    .line 201
    :cond_d
    move v3, v5

    .line 202
    :goto_c
    iget-object p1, p0, Lcom/google/android/material/internal/a;->H:Ljava/lang/CharSequence;

    .line 203
    .line 204
    if-eqz p1, :cond_e

    .line 205
    .line 206
    if-eqz v3, :cond_16

    .line 207
    .line 208
    :cond_e
    iget p1, p0, Lcom/google/android/material/internal/a;->M:F

    .line 209
    .line 210
    invoke-virtual {v4, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 211
    .line 212
    .line 213
    iget-object p1, p0, Lcom/google/android/material/internal/a;->C:Landroid/graphics/Typeface;

    .line 214
    .line 215
    invoke-virtual {v4, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 216
    .line 217
    .line 218
    iget p1, p0, Lcom/google/android/material/internal/a;->h0:F

    .line 219
    .line 220
    invoke-virtual {v4, p1}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    .line 221
    .line 222
    .line 223
    iget-object p1, p0, Lcom/google/android/material/internal/a;->G:Ljava/lang/CharSequence;

    .line 224
    .line 225
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/a;->b(Ljava/lang/CharSequence;)Z

    .line 226
    .line 227
    .line 228
    move-result p1

    .line 229
    iput-boolean p1, p0, Lcom/google/android/material/internal/a;->I:Z

    .line 230
    .line 231
    iget p2, p0, Lcom/google/android/material/internal/a;->n0:I

    .line 232
    .line 233
    if-le p2, v6, :cond_f

    .line 234
    .line 235
    if-eqz p1, :cond_10

    .line 236
    .line 237
    iget-boolean v1, p0, Lcom/google/android/material/internal/a;->c:Z

    .line 238
    .line 239
    if-eqz v1, :cond_f

    .line 240
    .line 241
    goto :goto_d

    .line 242
    :cond_f
    move p2, v6

    .line 243
    :cond_10
    :goto_d
    const/4 v1, 0x0

    .line 244
    if-ne p2, v6, :cond_11

    .line 245
    .line 246
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 247
    .line 248
    goto :goto_e

    .line 249
    :cond_11
    iget v2, p0, Lcom/google/android/material/internal/a;->j:I

    .line 250
    .line 251
    invoke-static {v2, p1}, LM/s;->getAbsoluteGravity(II)I

    .line 252
    .line 253
    .line 254
    move-result v2

    .line 255
    and-int/lit8 v2, v2, 0x7

    .line 256
    .line 257
    if-eq v2, v6, :cond_15

    .line 258
    .line 259
    const/4 v3, 0x5

    .line 260
    if-eq v2, v3, :cond_13

    .line 261
    .line 262
    iget-boolean v2, p0, Lcom/google/android/material/internal/a;->I:Z

    .line 263
    .line 264
    if-eqz v2, :cond_12

    .line 265
    .line 266
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .line 267
    .line 268
    goto :goto_e

    .line 269
    :cond_12
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 270
    .line 271
    goto :goto_e

    .line 272
    :cond_13
    iget-boolean v2, p0, Lcom/google/android/material/internal/a;->I:Z

    .line 273
    .line 274
    if-eqz v2, :cond_14

    .line 275
    .line 276
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 277
    .line 278
    goto :goto_e

    .line 279
    :cond_14
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .line 280
    .line 281
    goto :goto_e

    .line 282
    :cond_15
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 283
    .line 284
    :goto_e
    iget-object v3, p0, Lcom/google/android/material/internal/a;->G:Ljava/lang/CharSequence;

    .line 285
    .line 286
    float-to-int v0, v0

    .line 287
    invoke-static {v3, v4, v0}, Lcom/google/android/material/internal/b;->obtain(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)Lcom/google/android/material/internal/b;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    iget-object v3, p0, Lcom/google/android/material/internal/a;->F:Landroid/text/TextUtils$TruncateAt;

    .line 292
    .line 293
    invoke-virtual {v0, v3}, Lcom/google/android/material/internal/b;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Lcom/google/android/material/internal/b;

    .line 294
    .line 295
    .line 296
    move-result-object v0

    .line 297
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/b;->setIsRtl(Z)Lcom/google/android/material/internal/b;

    .line 298
    .line 299
    .line 300
    move-result-object p1

    .line 301
    invoke-virtual {p1, v2}, Lcom/google/android/material/internal/b;->setAlignment(Landroid/text/Layout$Alignment;)Lcom/google/android/material/internal/b;

    .line 302
    .line 303
    .line 304
    move-result-object p1

    .line 305
    invoke-virtual {p1, v5}, Lcom/google/android/material/internal/b;->setIncludePad(Z)Lcom/google/android/material/internal/b;

    .line 306
    .line 307
    .line 308
    move-result-object p1

    .line 309
    invoke-virtual {p1, p2}, Lcom/google/android/material/internal/b;->setMaxLines(I)Lcom/google/android/material/internal/b;

    .line 310
    .line 311
    .line 312
    move-result-object p1

    .line 313
    iget p2, p0, Lcom/google/android/material/internal/a;->o0:F

    .line 314
    .line 315
    iget v0, p0, Lcom/google/android/material/internal/a;->p0:F

    .line 316
    .line 317
    invoke-virtual {p1, p2, v0}, Lcom/google/android/material/internal/b;->setLineSpacing(FF)Lcom/google/android/material/internal/b;

    .line 318
    .line 319
    .line 320
    move-result-object p1

    .line 321
    iget p2, p0, Lcom/google/android/material/internal/a;->q0:I

    .line 322
    .line 323
    invoke-virtual {p1, p2}, Lcom/google/android/material/internal/b;->setHyphenationFrequency(I)Lcom/google/android/material/internal/b;

    .line 324
    .line 325
    .line 326
    move-result-object p1

    .line 327
    invoke-virtual {p1, v1}, Lcom/google/android/material/internal/b;->setStaticLayoutBuilderConfigurer(Lx3/G;)Lcom/google/android/material/internal/b;

    .line 328
    .line 329
    .line 330
    move-result-object p1

    .line 331
    invoke-virtual {p1}, Lcom/google/android/material/internal/b;->build()Landroid/text/StaticLayout;

    .line 332
    .line 333
    .line 334
    move-result-object p1

    .line 335
    invoke-static {p1}, LL/h;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    .line 337
    .line 338
    move-result-object p1

    .line 339
    check-cast p1, Landroid/text/StaticLayout;

    .line 340
    .line 341
    iput-object p1, p0, Lcom/google/android/material/internal/a;->i0:Landroid/text/StaticLayout;

    .line 342
    .line 343
    invoke-virtual {p1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    .line 344
    .line 345
    .line 346
    move-result-object p1

    .line 347
    iput-object p1, p0, Lcom/google/android/material/internal/a;->H:Ljava/lang/CharSequence;

    .line 348
    .line 349
    :cond_16
    :goto_f
    return-void
.end method

.method public final d(Landroid/content/res/ColorStateList;)I
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/internal/a;->R:[I

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    invoke-virtual {p1, v1, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1

    .line 14
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    return p1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/google/android/material/internal/a;->H:Ljava/lang/CharSequence;

    .line 6
    .line 7
    if-eqz v1, :cond_b

    .line 8
    .line 9
    iget-object v1, p0, Lcom/google/android/material/internal/a;->i:Landroid/graphics/RectF;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const/4 v3, 0x0

    .line 16
    cmpl-float v2, v2, v3

    .line 17
    .line 18
    if-lez v2, :cond_b

    .line 19
    .line 20
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    cmpl-float v1, v1, v3

    .line 25
    .line 26
    if-lez v1, :cond_b

    .line 27
    .line 28
    iget-object v8, p0, Lcom/google/android/material/internal/a;->T:Landroid/text/TextPaint;

    .line 29
    .line 30
    iget v1, p0, Lcom/google/android/material/internal/a;->M:F

    .line 31
    .line 32
    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 33
    .line 34
    .line 35
    iget v1, p0, Lcom/google/android/material/internal/a;->u:F

    .line 36
    .line 37
    iget v2, p0, Lcom/google/android/material/internal/a;->v:F

    .line 38
    .line 39
    iget v3, p0, Lcom/google/android/material/internal/a;->L:F

    .line 40
    .line 41
    const/high16 v4, 0x3f800000    # 1.0f

    .line 42
    .line 43
    cmpl-float v4, v3, v4

    .line 44
    .line 45
    if-eqz v4, :cond_0

    .line 46
    .line 47
    iget-boolean v4, p0, Lcom/google/android/material/internal/a;->c:Z

    .line 48
    .line 49
    if-nez v4, :cond_0

    .line 50
    .line 51
    invoke-virtual {p1, v3, v3, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 52
    .line 53
    .line 54
    :cond_0
    iget v3, p0, Lcom/google/android/material/internal/a;->n0:I

    .line 55
    .line 56
    const/4 v9, 0x1

    .line 57
    if-le v3, v9, :cond_a

    .line 58
    .line 59
    iget-boolean v3, p0, Lcom/google/android/material/internal/a;->I:Z

    .line 60
    .line 61
    if-eqz v3, :cond_1

    .line 62
    .line 63
    iget-boolean v3, p0, Lcom/google/android/material/internal/a;->c:Z

    .line 64
    .line 65
    if-eqz v3, :cond_a

    .line 66
    .line 67
    :cond_1
    iget-boolean v3, p0, Lcom/google/android/material/internal/a;->c:Z

    .line 68
    .line 69
    if-eqz v3, :cond_2

    .line 70
    .line 71
    iget v3, p0, Lcom/google/android/material/internal/a;->b:F

    .line 72
    .line 73
    iget v4, p0, Lcom/google/android/material/internal/a;->e:F

    .line 74
    .line 75
    cmpl-float v3, v3, v4

    .line 76
    .line 77
    if-lez v3, :cond_a

    .line 78
    .line 79
    :cond_2
    iget v1, p0, Lcom/google/android/material/internal/a;->u:F

    .line 80
    .line 81
    iget-object v3, p0, Lcom/google/android/material/internal/a;->i0:Landroid/text/StaticLayout;

    .line 82
    .line 83
    const/4 v10, 0x0

    .line 84
    invoke-virtual {v3, v10}, Landroid/text/StaticLayout;->getLineStart(I)I

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    int-to-float v3, v3

    .line 89
    sub-float/2addr v1, v3

    .line 90
    invoke-virtual {v8}, Landroid/graphics/Paint;->getAlpha()I

    .line 91
    .line 92
    .line 93
    move-result v11

    .line 94
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 95
    .line 96
    .line 97
    iget-boolean v1, p0, Lcom/google/android/material/internal/a;->c:Z

    .line 98
    .line 99
    const/16 v12, 0x1f

    .line 100
    .line 101
    if-nez v1, :cond_4

    .line 102
    .line 103
    iget v1, p0, Lcom/google/android/material/internal/a;->l0:F

    .line 104
    .line 105
    int-to-float v2, v11

    .line 106
    mul-float/2addr v1, v2

    .line 107
    float-to-int v1, v1

    .line 108
    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 109
    .line 110
    .line 111
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 112
    .line 113
    if-lt v1, v12, :cond_3

    .line 114
    .line 115
    iget v1, p0, Lcom/google/android/material/internal/a;->N:F

    .line 116
    .line 117
    iget v2, p0, Lcom/google/android/material/internal/a;->O:F

    .line 118
    .line 119
    iget v3, p0, Lcom/google/android/material/internal/a;->P:F

    .line 120
    .line 121
    iget v4, p0, Lcom/google/android/material/internal/a;->Q:I

    .line 122
    .line 123
    invoke-virtual {v8}, Landroid/graphics/Paint;->getAlpha()I

    .line 124
    .line 125
    .line 126
    move-result v5

    .line 127
    invoke-static {v4, v5}, Lr3/a;->compositeARGBWithAlpha(II)I

    .line 128
    .line 129
    .line 130
    move-result v4

    .line 131
    invoke-virtual {v8, v1, v2, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 132
    .line 133
    .line 134
    :cond_3
    iget-object v1, p0, Lcom/google/android/material/internal/a;->i0:Landroid/text/StaticLayout;

    .line 135
    .line 136
    invoke-virtual {v1, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 137
    .line 138
    .line 139
    :cond_4
    iget-boolean v1, p0, Lcom/google/android/material/internal/a;->c:Z

    .line 140
    .line 141
    if-nez v1, :cond_5

    .line 142
    .line 143
    iget v1, p0, Lcom/google/android/material/internal/a;->k0:F

    .line 144
    .line 145
    int-to-float v2, v11

    .line 146
    mul-float/2addr v1, v2

    .line 147
    float-to-int v1, v1

    .line 148
    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 149
    .line 150
    .line 151
    :cond_5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 152
    .line 153
    if-lt v1, v12, :cond_6

    .line 154
    .line 155
    iget v2, p0, Lcom/google/android/material/internal/a;->N:F

    .line 156
    .line 157
    iget v3, p0, Lcom/google/android/material/internal/a;->O:F

    .line 158
    .line 159
    iget v4, p0, Lcom/google/android/material/internal/a;->P:F

    .line 160
    .line 161
    iget v5, p0, Lcom/google/android/material/internal/a;->Q:I

    .line 162
    .line 163
    invoke-virtual {v8}, Landroid/graphics/Paint;->getAlpha()I

    .line 164
    .line 165
    .line 166
    move-result v6

    .line 167
    invoke-static {v5, v6}, Lr3/a;->compositeARGBWithAlpha(II)I

    .line 168
    .line 169
    .line 170
    move-result v5

    .line 171
    invoke-virtual {v8, v2, v3, v4, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 172
    .line 173
    .line 174
    :cond_6
    iget-object v2, p0, Lcom/google/android/material/internal/a;->i0:Landroid/text/StaticLayout;

    .line 175
    .line 176
    invoke-virtual {v2, v10}, Landroid/text/Layout;->getLineBaseline(I)I

    .line 177
    .line 178
    .line 179
    move-result v2

    .line 180
    iget-object v3, p0, Lcom/google/android/material/internal/a;->m0:Ljava/lang/CharSequence;

    .line 181
    .line 182
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 183
    .line 184
    .line 185
    move-result v5

    .line 186
    int-to-float v7, v2

    .line 187
    const/4 v4, 0x0

    .line 188
    const/4 v6, 0x0

    .line 189
    move-object v2, p1

    .line 190
    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 191
    .line 192
    .line 193
    if-lt v1, v12, :cond_7

    .line 194
    .line 195
    iget p1, p0, Lcom/google/android/material/internal/a;->N:F

    .line 196
    .line 197
    iget v1, p0, Lcom/google/android/material/internal/a;->O:F

    .line 198
    .line 199
    iget v3, p0, Lcom/google/android/material/internal/a;->P:F

    .line 200
    .line 201
    iget v4, p0, Lcom/google/android/material/internal/a;->Q:I

    .line 202
    .line 203
    invoke-virtual {v8, p1, v1, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 204
    .line 205
    .line 206
    :cond_7
    iget-boolean p1, p0, Lcom/google/android/material/internal/a;->c:Z

    .line 207
    .line 208
    if-nez p1, :cond_9

    .line 209
    .line 210
    iget-object p1, p0, Lcom/google/android/material/internal/a;->m0:Ljava/lang/CharSequence;

    .line 211
    .line 212
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object p1

    .line 220
    const-string v1, "\u2026"

    .line 221
    .line 222
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 223
    .line 224
    .line 225
    move-result v1

    .line 226
    if-eqz v1, :cond_8

    .line 227
    .line 228
    invoke-static {v9, v10, p1}, LA/i;->d(IILjava/lang/String;)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object p1

    .line 232
    :cond_8
    move-object v3, p1

    .line 233
    invoke-virtual {v8, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 234
    .line 235
    .line 236
    iget-object p1, p0, Lcom/google/android/material/internal/a;->i0:Landroid/text/StaticLayout;

    .line 237
    .line 238
    invoke-virtual {p1, v10}, Landroid/text/Layout;->getLineEnd(I)I

    .line 239
    .line 240
    .line 241
    move-result p1

    .line 242
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 243
    .line 244
    .line 245
    move-result v1

    .line 246
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    .line 247
    .line 248
    .line 249
    move-result v5

    .line 250
    const/4 v6, 0x0

    .line 251
    const/4 v4, 0x0

    .line 252
    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 253
    .line 254
    .line 255
    :cond_9
    move-object p1, v2

    .line 256
    goto :goto_0

    .line 257
    :cond_a
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 258
    .line 259
    .line 260
    iget-object v1, p0, Lcom/google/android/material/internal/a;->i0:Landroid/text/StaticLayout;

    .line 261
    .line 262
    invoke-virtual {v1, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 263
    .line 264
    .line 265
    :goto_0
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 266
    .line 267
    .line 268
    :cond_b
    return-void
.end method

.method public final f(Landroid/graphics/Typeface;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/a;->E:LC3/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, LC3/b;->cancel()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/internal/a;->y:Landroid/graphics/Typeface;

    .line 9
    .line 10
    if-eq v0, p1, :cond_2

    .line 11
    .line 12
    iput-object p1, p0, Lcom/google/android/material/internal/a;->y:Landroid/graphics/Typeface;

    .line 13
    .line 14
    iget-object v0, p0, Lcom/google/android/material/internal/a;->a:Landroid/view/View;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0, p1}, LC3/k;->maybeCopyWithFontWeightAdjustment(Landroid/content/res/Configuration;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iput-object p1, p0, Lcom/google/android/material/internal/a;->x:Landroid/graphics/Typeface;

    .line 33
    .line 34
    if-nez p1, :cond_1

    .line 35
    .line 36
    iget-object p1, p0, Lcom/google/android/material/internal/a;->y:Landroid/graphics/Typeface;

    .line 37
    .line 38
    :cond_1
    iput-object p1, p0, Lcom/google/android/material/internal/a;->w:Landroid/graphics/Typeface;

    .line 39
    .line 40
    const/4 p1, 0x1

    .line 41
    return p1

    .line 42
    :cond_2
    const/4 p1, 0x0

    .line 43
    return p1
.end method

.method public final g(Landroid/graphics/Typeface;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/a;->D:LC3/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, LC3/b;->cancel()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/internal/a;->B:Landroid/graphics/Typeface;

    .line 9
    .line 10
    if-eq v0, p1, :cond_2

    .line 11
    .line 12
    iput-object p1, p0, Lcom/google/android/material/internal/a;->B:Landroid/graphics/Typeface;

    .line 13
    .line 14
    iget-object v0, p0, Lcom/google/android/material/internal/a;->a:Landroid/view/View;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0, p1}, LC3/k;->maybeCopyWithFontWeightAdjustment(Landroid/content/res/Configuration;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iput-object p1, p0, Lcom/google/android/material/internal/a;->A:Landroid/graphics/Typeface;

    .line 33
    .line 34
    if-nez p1, :cond_1

    .line 35
    .line 36
    iget-object p1, p0, Lcom/google/android/material/internal/a;->B:Landroid/graphics/Typeface;

    .line 37
    .line 38
    :cond_1
    iput-object p1, p0, Lcom/google/android/material/internal/a;->z:Landroid/graphics/Typeface;

    .line 39
    .line 40
    const/4 p1, 0x1

    .line 41
    return p1

    .line 42
    :cond_2
    const/4 p1, 0x0

    .line 43
    return p1
.end method

.method public getCollapsedTextActualBounds(Landroid/graphics/RectF;II)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/a;->G:Ljava/lang/CharSequence;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/material/internal/a;->b(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iput-boolean v0, p0, Lcom/google/android/material/internal/a;->I:Z

    .line 8
    .line 9
    const/high16 v1, 0x40000000    # 2.0f

    .line 10
    .line 11
    const/4 v2, 0x5

    .line 12
    const v3, 0x800005

    .line 13
    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    const/16 v5, 0x11

    .line 17
    .line 18
    iget-object v6, p0, Lcom/google/android/material/internal/a;->h:Landroid/graphics/Rect;

    .line 19
    .line 20
    if-eq p3, v5, :cond_5

    .line 21
    .line 22
    and-int/lit8 v7, p3, 0x7

    .line 23
    .line 24
    if-ne v7, v4, :cond_0

    .line 25
    .line 26
    goto :goto_3

    .line 27
    :cond_0
    and-int v7, p3, v3

    .line 28
    .line 29
    if-eq v7, v3, :cond_3

    .line 30
    .line 31
    and-int/lit8 v7, p3, 0x5

    .line 32
    .line 33
    if-ne v7, v2, :cond_1

    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_1
    if-eqz v0, :cond_2

    .line 37
    .line 38
    iget v0, v6, Landroid/graphics/Rect;->right:I

    .line 39
    .line 40
    int-to-float v0, v0

    .line 41
    iget v7, p0, Lcom/google/android/material/internal/a;->j0:F

    .line 42
    .line 43
    :goto_0
    sub-float/2addr v0, v7

    .line 44
    goto :goto_4

    .line 45
    :cond_2
    iget v0, v6, Landroid/graphics/Rect;->left:I

    .line 46
    .line 47
    :goto_1
    int-to-float v0, v0

    .line 48
    goto :goto_4

    .line 49
    :cond_3
    :goto_2
    if-eqz v0, :cond_4

    .line 50
    .line 51
    iget v0, v6, Landroid/graphics/Rect;->left:I

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_4
    iget v0, v6, Landroid/graphics/Rect;->right:I

    .line 55
    .line 56
    int-to-float v0, v0

    .line 57
    iget v7, p0, Lcom/google/android/material/internal/a;->j0:F

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_5
    :goto_3
    int-to-float v0, p2

    .line 61
    div-float/2addr v0, v1

    .line 62
    iget v7, p0, Lcom/google/android/material/internal/a;->j0:F

    .line 63
    .line 64
    div-float/2addr v7, v1

    .line 65
    goto :goto_0

    .line 66
    :goto_4
    iget v7, v6, Landroid/graphics/Rect;->left:I

    .line 67
    .line 68
    int-to-float v7, v7

    .line 69
    invoke-static {v0, v7}, Ljava/lang/Math;->max(FF)F

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    iput v0, p1, Landroid/graphics/RectF;->left:F

    .line 74
    .line 75
    iget v7, v6, Landroid/graphics/Rect;->top:I

    .line 76
    .line 77
    int-to-float v7, v7

    .line 78
    iput v7, p1, Landroid/graphics/RectF;->top:F

    .line 79
    .line 80
    if-eq p3, v5, :cond_b

    .line 81
    .line 82
    and-int/lit8 v5, p3, 0x7

    .line 83
    .line 84
    if-ne v5, v4, :cond_6

    .line 85
    .line 86
    goto :goto_8

    .line 87
    :cond_6
    and-int p2, p3, v3

    .line 88
    .line 89
    if-eq p2, v3, :cond_9

    .line 90
    .line 91
    and-int/lit8 p2, p3, 0x5

    .line 92
    .line 93
    if-ne p2, v2, :cond_7

    .line 94
    .line 95
    goto :goto_7

    .line 96
    :cond_7
    iget-boolean p2, p0, Lcom/google/android/material/internal/a;->I:Z

    .line 97
    .line 98
    if-eqz p2, :cond_8

    .line 99
    .line 100
    iget p2, v6, Landroid/graphics/Rect;->right:I

    .line 101
    .line 102
    :goto_5
    int-to-float p2, p2

    .line 103
    goto :goto_9

    .line 104
    :cond_8
    iget p2, p0, Lcom/google/android/material/internal/a;->j0:F

    .line 105
    .line 106
    :goto_6
    add-float/2addr p2, v0

    .line 107
    goto :goto_9

    .line 108
    :cond_9
    :goto_7
    iget-boolean p2, p0, Lcom/google/android/material/internal/a;->I:Z

    .line 109
    .line 110
    if-eqz p2, :cond_a

    .line 111
    .line 112
    iget p2, p0, Lcom/google/android/material/internal/a;->j0:F

    .line 113
    .line 114
    goto :goto_6

    .line 115
    :cond_a
    iget p2, v6, Landroid/graphics/Rect;->right:I

    .line 116
    .line 117
    goto :goto_5

    .line 118
    :cond_b
    :goto_8
    int-to-float p2, p2

    .line 119
    div-float/2addr p2, v1

    .line 120
    iget p3, p0, Lcom/google/android/material/internal/a;->j0:F

    .line 121
    .line 122
    div-float/2addr p3, v1

    .line 123
    add-float/2addr p2, p3

    .line 124
    :goto_9
    iget p3, v6, Landroid/graphics/Rect;->right:I

    .line 125
    .line 126
    int-to-float p3, p3

    .line 127
    invoke-static {p2, p3}, Ljava/lang/Math;->min(FF)F

    .line 128
    .line 129
    .line 130
    move-result p2

    .line 131
    iput p2, p1, Landroid/graphics/RectF;->right:F

    .line 132
    .line 133
    iget p2, v6, Landroid/graphics/Rect;->top:I

    .line 134
    .line 135
    int-to-float p2, p2

    .line 136
    invoke-virtual {p0}, Lcom/google/android/material/internal/a;->getCollapsedTextHeight()F

    .line 137
    .line 138
    .line 139
    move-result p3

    .line 140
    add-float/2addr p3, p2

    .line 141
    iput p3, p1, Landroid/graphics/RectF;->bottom:F

    .line 142
    .line 143
    return-void
.end method

.method public getCollapsedTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/a;->o:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCollapsedTextGravity()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/internal/a;->k:I

    .line 2
    .line 3
    return v0
.end method

.method public getCollapsedTextHeight()F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/a;->U:Landroid/text/TextPaint;

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/material/internal/a;->m:F

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/google/android/material/internal/a;->w:Landroid/graphics/Typeface;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 11
    .line 12
    .line 13
    iget v1, p0, Lcom/google/android/material/internal/a;->f0:F

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    neg-float v0, v0

    .line 23
    return v0
.end method

.method public getCollapsedTextSize()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/internal/a;->m:F

    .line 2
    .line 3
    return v0
.end method

.method public getCollapsedTypeface()Landroid/graphics/Typeface;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/a;->w:Landroid/graphics/Typeface;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 7
    .line 8
    return-object v0
.end method

.method public getCurrentCollapsedTextColor()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/a;->o:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/material/internal/a;->d(Landroid/content/res/ColorStateList;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getExpandedLineCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/internal/a;->p:I

    .line 2
    .line 3
    return v0
.end method

.method public getExpandedTextFullHeight()F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/a;->U:Landroid/text/TextPaint;

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/material/internal/a;->l:F

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/google/android/material/internal/a;->z:Landroid/graphics/Typeface;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 11
    .line 12
    .line 13
    iget v1, p0, Lcom/google/android/material/internal/a;->g0:F

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    neg-float v1, v1

    .line 23
    invoke-virtual {v0}, Landroid/graphics/Paint;->descent()F

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    add-float/2addr v0, v1

    .line 28
    return v0
.end method

.method public getExpandedTextGravity()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/internal/a;->j:I

    .line 2
    .line 3
    return v0
.end method

.method public getExpandedTextHeight()F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/a;->U:Landroid/text/TextPaint;

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/material/internal/a;->l:F

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/google/android/material/internal/a;->z:Landroid/graphics/Typeface;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 11
    .line 12
    .line 13
    iget v1, p0, Lcom/google/android/material/internal/a;->g0:F

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    neg-float v0, v0

    .line 23
    return v0
.end method

.method public getExpandedTextSize()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/internal/a;->l:F

    .line 2
    .line 3
    return v0
.end method

.method public getExpandedTypeface()Landroid/graphics/Typeface;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/a;->z:Landroid/graphics/Typeface;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 7
    .line 8
    return-object v0
.end method

.method public getExpansionFraction()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/internal/a;->b:F

    .line 2
    .line 3
    return v0
.end method

.method public getFadeModeThresholdFraction()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/internal/a;->e:F

    .line 2
    .line 3
    return v0
.end method

.method public getHyphenationFrequency()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/internal/a;->q0:I

    .line 2
    .line 3
    return v0
.end method

.method public getLineCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/a;->i0:Landroid/text/StaticLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public getLineSpacingAdd()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/a;->i0:Landroid/text/StaticLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/text/Layout;->getSpacingAdd()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getLineSpacingMultiplier()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/a;->i0:Landroid/text/StaticLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/text/Layout;->getSpacingMultiplier()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getMaxLines()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/internal/a;->n0:I

    .line 2
    .line 3
    return v0
.end method

.method public getPositionInterpolator()Landroid/animation/TimeInterpolator;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/a;->V:Landroid/animation/TimeInterpolator;

    .line 2
    .line 3
    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/a;->G:Ljava/lang/CharSequence;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTitleTextEllipsize()Landroid/text/TextUtils$TruncateAt;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/a;->F:Landroid/text/TextUtils$TruncateAt;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h(F)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/internal/a;->c(FZ)V

    .line 3
    .line 4
    .line 5
    iget-object p1, p0, Lcom/google/android/material/internal/a;->a:Landroid/view/View;

    .line 6
    .line 7
    invoke-static {p1}, LM/p0;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final isStateful()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/a;->o:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/internal/a;->n:Landroid/content/res/ColorStateList;

    .line 12
    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    :cond_1
    const/4 v0, 0x1

    .line 22
    return v0

    .line 23
    :cond_2
    const/4 v0, 0x0

    .line 24
    return v0
.end method

.method public maybeUpdateFontWeightAdjustment(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1f

    .line 4
    .line 5
    if-lt v0, v1, :cond_4

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/material/internal/a;->y:Landroid/graphics/Typeface;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {p1, v0}, LC3/k;->maybeCopyWithFontWeightAdjustment(Landroid/content/res/Configuration;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/google/android/material/internal/a;->x:Landroid/graphics/Typeface;

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/internal/a;->B:Landroid/graphics/Typeface;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-static {p1, v0}, LC3/k;->maybeCopyWithFontWeightAdjustment(Landroid/content/res/Configuration;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iput-object p1, p0, Lcom/google/android/material/internal/a;->A:Landroid/graphics/Typeface;

    .line 26
    .line 27
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/internal/a;->x:Landroid/graphics/Typeface;

    .line 28
    .line 29
    if-eqz p1, :cond_2

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    iget-object p1, p0, Lcom/google/android/material/internal/a;->y:Landroid/graphics/Typeface;

    .line 33
    .line 34
    :goto_0
    iput-object p1, p0, Lcom/google/android/material/internal/a;->w:Landroid/graphics/Typeface;

    .line 35
    .line 36
    iget-object p1, p0, Lcom/google/android/material/internal/a;->A:Landroid/graphics/Typeface;

    .line 37
    .line 38
    if-eqz p1, :cond_3

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_3
    iget-object p1, p0, Lcom/google/android/material/internal/a;->B:Landroid/graphics/Typeface;

    .line 42
    .line 43
    :goto_1
    iput-object p1, p0, Lcom/google/android/material/internal/a;->z:Landroid/graphics/Typeface;

    .line 44
    .line 45
    const/4 p1, 0x1

    .line 46
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/a;->recalculate(Z)V

    .line 47
    .line 48
    .line 49
    :cond_4
    return-void
.end method

.method public recalculate()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/material/internal/a;->recalculate(Z)V

    return-void
.end method

.method public recalculate(Z)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 2
    iget-object v2, v0, Lcom/google/android/material/internal/a;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    if-gtz v3, :cond_1

    :cond_0
    if-eqz v1, :cond_19

    :cond_1
    const/high16 v3, 0x3f800000    # 1.0f

    .line 3
    invoke-virtual {v0, v3, v1}, Lcom/google/android/material/internal/a;->c(FZ)V

    .line 4
    iget-object v4, v0, Lcom/google/android/material/internal/a;->H:Ljava/lang/CharSequence;

    iget-object v5, v0, Lcom/google/android/material/internal/a;->T:Landroid/text/TextPaint;

    if-eqz v4, :cond_2

    iget-object v6, v0, Lcom/google/android/material/internal/a;->i0:Landroid/text/StaticLayout;

    if-eqz v6, :cond_2

    .line 5
    invoke-virtual {v6}, Landroid/text/Layout;->getWidth()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, v0, Lcom/google/android/material/internal/a;->F:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v4, v5, v6, v7}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v0, Lcom/google/android/material/internal/a;->m0:Ljava/lang/CharSequence;

    .line 6
    :cond_2
    iget-object v4, v0, Lcom/google/android/material/internal/a;->m0:Ljava/lang/CharSequence;

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v4, :cond_3

    .line 7
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v8

    invoke-virtual {v5, v4, v7, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v4

    .line 8
    iput v4, v0, Lcom/google/android/material/internal/a;->j0:F

    goto :goto_0

    .line 9
    :cond_3
    iput v6, v0, Lcom/google/android/material/internal/a;->j0:F

    .line 10
    :goto_0
    iget v4, v0, Lcom/google/android/material/internal/a;->k:I

    .line 11
    iget-boolean v8, v0, Lcom/google/android/material/internal/a;->I:Z

    .line 12
    invoke-static {v4, v8}, LM/s;->getAbsoluteGravity(II)I

    move-result v4

    and-int/lit8 v8, v4, 0x70

    .line 13
    iget-object v9, v0, Lcom/google/android/material/internal/a;->h:Landroid/graphics/Rect;

    const/16 v10, 0x50

    const/16 v11, 0x30

    const/high16 v12, 0x40000000    # 2.0f

    if-eq v8, v11, :cond_5

    if-eq v8, v10, :cond_4

    .line 14
    invoke-virtual {v5}, Landroid/graphics/Paint;->descent()F

    move-result v8

    invoke-virtual {v5}, Landroid/graphics/Paint;->ascent()F

    move-result v13

    sub-float/2addr v8, v13

    div-float/2addr v8, v12

    .line 15
    invoke-virtual {v9}, Landroid/graphics/Rect;->centerY()I

    move-result v13

    int-to-float v13, v13

    sub-float/2addr v13, v8

    iput v13, v0, Lcom/google/android/material/internal/a;->r:F

    goto :goto_1

    .line 16
    :cond_4
    iget v8, v9, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v8

    invoke-virtual {v5}, Landroid/graphics/Paint;->ascent()F

    move-result v13

    add-float/2addr v13, v8

    iput v13, v0, Lcom/google/android/material/internal/a;->r:F

    goto :goto_1

    .line 17
    :cond_5
    iget v8, v9, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    iput v8, v0, Lcom/google/android/material/internal/a;->r:F

    :goto_1
    const v8, 0x800007

    and-int/2addr v4, v8

    const/4 v13, 0x5

    const/4 v14, 0x1

    if-eq v4, v14, :cond_7

    if-eq v4, v13, :cond_6

    .line 18
    iget v4, v9, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iput v4, v0, Lcom/google/android/material/internal/a;->t:F

    goto :goto_2

    .line 19
    :cond_6
    iget v4, v9, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget v15, v0, Lcom/google/android/material/internal/a;->j0:F

    sub-float/2addr v4, v15

    iput v4, v0, Lcom/google/android/material/internal/a;->t:F

    goto :goto_2

    .line 20
    :cond_7
    invoke-virtual {v9}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    int-to-float v4, v4

    iget v15, v0, Lcom/google/android/material/internal/a;->j0:F

    div-float/2addr v15, v12

    sub-float/2addr v4, v15

    iput v4, v0, Lcom/google/android/material/internal/a;->t:F

    .line 21
    :goto_2
    invoke-virtual {v0, v6, v1}, Lcom/google/android/material/internal/a;->c(FZ)V

    .line 22
    iget-object v1, v0, Lcom/google/android/material/internal/a;->i0:Landroid/text/StaticLayout;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroid/text/Layout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    goto :goto_3

    :cond_8
    move v1, v6

    .line 23
    :goto_3
    iget-object v4, v0, Lcom/google/android/material/internal/a;->i0:Landroid/text/StaticLayout;

    if-eqz v4, :cond_9

    iget v15, v0, Lcom/google/android/material/internal/a;->n0:I

    if-le v15, v14, :cond_9

    .line 24
    invoke-virtual {v4}, Landroid/text/Layout;->getWidth()I

    move-result v4

    int-to-float v4, v4

    goto :goto_4

    .line 25
    :cond_9
    iget-object v4, v0, Lcom/google/android/material/internal/a;->H:Ljava/lang/CharSequence;

    if-eqz v4, :cond_a

    .line 26
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v15

    invoke-virtual {v5, v4, v7, v15}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v4

    goto :goto_4

    :cond_a
    move v4, v6

    .line 27
    :goto_4
    iget-object v15, v0, Lcom/google/android/material/internal/a;->i0:Landroid/text/StaticLayout;

    if-eqz v15, :cond_b

    invoke-virtual {v15}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v15

    goto :goto_5

    :cond_b
    move v15, v7

    :goto_5
    iput v15, v0, Lcom/google/android/material/internal/a;->p:I

    .line 28
    iget v15, v0, Lcom/google/android/material/internal/a;->j:I

    move/from16 v16, v8

    .line 29
    iget-boolean v8, v0, Lcom/google/android/material/internal/a;->I:Z

    .line 30
    invoke-static {v15, v8}, LM/s;->getAbsoluteGravity(II)I

    move-result v8

    and-int/lit8 v15, v8, 0x70

    move/from16 v17, v12

    .line 31
    iget-object v12, v0, Lcom/google/android/material/internal/a;->g:Landroid/graphics/Rect;

    if-eq v15, v11, :cond_d

    if-eq v15, v10, :cond_c

    div-float v1, v1, v17

    .line 32
    invoke-virtual {v12}, Landroid/graphics/Rect;->centerY()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v10, v1

    iput v10, v0, Lcom/google/android/material/internal/a;->q:F

    goto :goto_6

    .line 33
    :cond_c
    iget v10, v12, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v10

    sub-float/2addr v10, v1

    invoke-virtual {v5}, Landroid/graphics/Paint;->descent()F

    move-result v1

    add-float/2addr v1, v10

    iput v1, v0, Lcom/google/android/material/internal/a;->q:F

    goto :goto_6

    .line 34
    :cond_d
    iget v1, v12, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iput v1, v0, Lcom/google/android/material/internal/a;->q:F

    :goto_6
    and-int v1, v8, v16

    if-eq v1, v14, :cond_f

    if-eq v1, v13, :cond_e

    .line 35
    iget v1, v12, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iput v1, v0, Lcom/google/android/material/internal/a;->s:F

    goto :goto_7

    .line 36
    :cond_e
    iget v1, v12, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float/2addr v1, v4

    iput v1, v0, Lcom/google/android/material/internal/a;->s:F

    goto :goto_7

    .line 37
    :cond_f
    invoke-virtual {v12}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    div-float v4, v4, v17

    sub-float/2addr v1, v4

    iput v1, v0, Lcom/google/android/material/internal/a;->s:F

    .line 38
    :goto_7
    iget-object v1, v0, Lcom/google/android/material/internal/a;->K:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_10

    .line 39
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v1, 0x0

    .line 40
    iput-object v1, v0, Lcom/google/android/material/internal/a;->K:Landroid/graphics/Bitmap;

    .line 41
    :cond_10
    iget v1, v0, Lcom/google/android/material/internal/a;->b:F

    invoke-virtual {v0, v1}, Lcom/google/android/material/internal/a;->h(F)V

    .line 42
    iget v1, v0, Lcom/google/android/material/internal/a;->b:F

    .line 43
    iget-boolean v4, v0, Lcom/google/android/material/internal/a;->c:Z

    iget-object v8, v0, Lcom/google/android/material/internal/a;->i:Landroid/graphics/RectF;

    if-eqz v4, :cond_12

    .line 44
    iget v4, v0, Lcom/google/android/material/internal/a;->e:F

    cmpg-float v4, v1, v4

    if-gez v4, :cond_11

    move-object v9, v12

    :cond_11
    invoke-virtual {v8, v9}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    goto :goto_8

    .line 45
    :cond_12
    iget v4, v12, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v10, v9, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    iget-object v11, v0, Lcom/google/android/material/internal/a;->V:Landroid/animation/TimeInterpolator;

    .line 46
    invoke-static {v4, v10, v1, v11}, Lcom/google/android/material/internal/a;->e(FFFLandroid/animation/TimeInterpolator;)F

    move-result v4

    iput v4, v8, Landroid/graphics/RectF;->left:F

    .line 47
    iget v4, v0, Lcom/google/android/material/internal/a;->q:F

    iget v10, v0, Lcom/google/android/material/internal/a;->r:F

    iget-object v11, v0, Lcom/google/android/material/internal/a;->V:Landroid/animation/TimeInterpolator;

    invoke-static {v4, v10, v1, v11}, Lcom/google/android/material/internal/a;->e(FFFLandroid/animation/TimeInterpolator;)F

    move-result v4

    iput v4, v8, Landroid/graphics/RectF;->top:F

    .line 48
    iget v4, v12, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget v10, v9, Landroid/graphics/Rect;->right:I

    int-to-float v10, v10

    iget-object v11, v0, Lcom/google/android/material/internal/a;->V:Landroid/animation/TimeInterpolator;

    .line 49
    invoke-static {v4, v10, v1, v11}, Lcom/google/android/material/internal/a;->e(FFFLandroid/animation/TimeInterpolator;)F

    move-result v4

    iput v4, v8, Landroid/graphics/RectF;->right:F

    .line 50
    iget v4, v12, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v9

    iget-object v10, v0, Lcom/google/android/material/internal/a;->V:Landroid/animation/TimeInterpolator;

    .line 51
    invoke-static {v4, v9, v1, v10}, Lcom/google/android/material/internal/a;->e(FFFLandroid/animation/TimeInterpolator;)F

    move-result v4

    iput v4, v8, Landroid/graphics/RectF;->bottom:F

    .line 52
    :goto_8
    iget-boolean v4, v0, Lcom/google/android/material/internal/a;->c:Z

    if-eqz v4, :cond_14

    .line 53
    iget v4, v0, Lcom/google/android/material/internal/a;->e:F

    cmpg-float v4, v1, v4

    if-gez v4, :cond_13

    .line 54
    iget v4, v0, Lcom/google/android/material/internal/a;->s:F

    iput v4, v0, Lcom/google/android/material/internal/a;->u:F

    .line 55
    iget v4, v0, Lcom/google/android/material/internal/a;->q:F

    iput v4, v0, Lcom/google/android/material/internal/a;->v:F

    .line 56
    invoke-virtual {v0, v6}, Lcom/google/android/material/internal/a;->h(F)V

    move v4, v6

    goto :goto_9

    .line 57
    :cond_13
    iget v4, v0, Lcom/google/android/material/internal/a;->t:F

    iput v4, v0, Lcom/google/android/material/internal/a;->u:F

    .line 58
    iget v4, v0, Lcom/google/android/material/internal/a;->r:F

    iget v8, v0, Lcom/google/android/material/internal/a;->f:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v4, v7

    iput v4, v0, Lcom/google/android/material/internal/a;->v:F

    .line 59
    invoke-virtual {v0, v3}, Lcom/google/android/material/internal/a;->h(F)V

    move v4, v3

    goto :goto_9

    .line 60
    :cond_14
    iget v4, v0, Lcom/google/android/material/internal/a;->s:F

    iget v7, v0, Lcom/google/android/material/internal/a;->t:F

    iget-object v8, v0, Lcom/google/android/material/internal/a;->V:Landroid/animation/TimeInterpolator;

    invoke-static {v4, v7, v1, v8}, Lcom/google/android/material/internal/a;->e(FFFLandroid/animation/TimeInterpolator;)F

    move-result v4

    iput v4, v0, Lcom/google/android/material/internal/a;->u:F

    .line 61
    iget v4, v0, Lcom/google/android/material/internal/a;->q:F

    iget v7, v0, Lcom/google/android/material/internal/a;->r:F

    iget-object v8, v0, Lcom/google/android/material/internal/a;->V:Landroid/animation/TimeInterpolator;

    invoke-static {v4, v7, v1, v8}, Lcom/google/android/material/internal/a;->e(FFFLandroid/animation/TimeInterpolator;)F

    move-result v4

    iput v4, v0, Lcom/google/android/material/internal/a;->v:F

    .line 62
    invoke-virtual {v0, v1}, Lcom/google/android/material/internal/a;->h(F)V

    move v4, v1

    :goto_9
    sub-float v7, v3, v1

    .line 63
    sget-object v8, Lg3/a;->b:Lh0/b;

    .line 64
    invoke-static {v6, v3, v7, v8}, Lcom/google/android/material/internal/a;->e(FFFLandroid/animation/TimeInterpolator;)F

    move-result v7

    sub-float v7, v3, v7

    .line 65
    iput v7, v0, Lcom/google/android/material/internal/a;->k0:F

    .line 66
    invoke-static {v2}, LM/p0;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 67
    invoke-static {v3, v6, v1, v8}, Lcom/google/android/material/internal/a;->e(FFFLandroid/animation/TimeInterpolator;)F

    move-result v7

    .line 68
    iput v7, v0, Lcom/google/android/material/internal/a;->l0:F

    .line 69
    invoke-static {v2}, LM/p0;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 70
    iget-object v7, v0, Lcom/google/android/material/internal/a;->o:Landroid/content/res/ColorStateList;

    iget-object v9, v0, Lcom/google/android/material/internal/a;->n:Landroid/content/res/ColorStateList;

    if-eq v7, v9, :cond_15

    .line 71
    invoke-virtual {v0, v9}, Lcom/google/android/material/internal/a;->d(Landroid/content/res/ColorStateList;)I

    move-result v7

    .line 72
    invoke-virtual {v0}, Lcom/google/android/material/internal/a;->getCurrentCollapsedTextColor()I

    move-result v9

    .line 73
    invoke-static {v7, v9, v4}, Lcom/google/android/material/internal/a;->a(IIF)I

    move-result v4

    .line 74
    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_a

    .line 75
    :cond_15
    invoke-virtual {v0}, Lcom/google/android/material/internal/a;->getCurrentCollapsedTextColor()I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 76
    :goto_a
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 77
    iget v7, v0, Lcom/google/android/material/internal/a;->f0:F

    iget v9, v0, Lcom/google/android/material/internal/a;->g0:F

    cmpl-float v10, v7, v9

    if-eqz v10, :cond_16

    .line 78
    invoke-static {v9, v7, v1, v8}, Lcom/google/android/material/internal/a;->e(FFFLandroid/animation/TimeInterpolator;)F

    move-result v7

    .line 79
    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    goto :goto_b

    .line 80
    :cond_16
    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    .line 81
    :goto_b
    iget v7, v0, Lcom/google/android/material/internal/a;->b0:F

    iget v8, v0, Lcom/google/android/material/internal/a;->X:F

    .line 82
    invoke-static {v7, v8, v1}, Lg3/a;->lerp(FFF)F

    move-result v7

    .line 83
    iput v7, v0, Lcom/google/android/material/internal/a;->N:F

    .line 84
    iget v7, v0, Lcom/google/android/material/internal/a;->c0:F

    iget v8, v0, Lcom/google/android/material/internal/a;->Y:F

    .line 85
    invoke-static {v7, v8, v1}, Lg3/a;->lerp(FFF)F

    move-result v7

    .line 86
    iput v7, v0, Lcom/google/android/material/internal/a;->O:F

    .line 87
    iget v7, v0, Lcom/google/android/material/internal/a;->d0:F

    iget v8, v0, Lcom/google/android/material/internal/a;->Z:F

    .line 88
    invoke-static {v7, v8, v1}, Lg3/a;->lerp(FFF)F

    move-result v7

    .line 89
    iput v7, v0, Lcom/google/android/material/internal/a;->P:F

    .line 90
    iget-object v7, v0, Lcom/google/android/material/internal/a;->e0:Landroid/content/res/ColorStateList;

    .line 91
    invoke-virtual {v0, v7}, Lcom/google/android/material/internal/a;->d(Landroid/content/res/ColorStateList;)I

    move-result v7

    iget-object v8, v0, Lcom/google/android/material/internal/a;->a0:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v8}, Lcom/google/android/material/internal/a;->d(Landroid/content/res/ColorStateList;)I

    move-result v8

    .line 92
    invoke-static {v7, v8, v1}, Lcom/google/android/material/internal/a;->a(IIF)I

    move-result v7

    iput v7, v0, Lcom/google/android/material/internal/a;->Q:I

    .line 93
    iget v8, v0, Lcom/google/android/material/internal/a;->N:F

    iget v9, v0, Lcom/google/android/material/internal/a;->O:F

    iget v10, v0, Lcom/google/android/material/internal/a;->P:F

    invoke-virtual {v5, v8, v9, v10, v7}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 94
    iget-boolean v7, v0, Lcom/google/android/material/internal/a;->c:Z

    if-eqz v7, :cond_18

    .line 95
    invoke-virtual {v5}, Landroid/graphics/Paint;->getAlpha()I

    move-result v7

    .line 96
    iget v8, v0, Lcom/google/android/material/internal/a;->e:F

    cmpg-float v9, v1, v8

    if-gtz v9, :cond_17

    .line 97
    iget v9, v0, Lcom/google/android/material/internal/a;->d:F

    invoke-static {v3, v6, v9, v8, v1}, Lg3/a;->lerp(FFFFF)F

    move-result v1

    goto :goto_c

    .line 98
    :cond_17
    invoke-static {v6, v3, v8, v3, v1}, Lg3/a;->lerp(FFFFF)F

    move-result v1

    :goto_c
    int-to-float v3, v7

    mul-float/2addr v1, v3

    float-to-int v1, v1

    .line 99
    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    const/16 v1, 0x1f

    if-lt v4, v1, :cond_18

    .line 100
    iget v1, v0, Lcom/google/android/material/internal/a;->N:F

    iget v3, v0, Lcom/google/android/material/internal/a;->O:F

    iget v4, v0, Lcom/google/android/material/internal/a;->P:F

    iget v6, v0, Lcom/google/android/material/internal/a;->Q:I

    .line 101
    invoke-virtual {v5}, Landroid/graphics/Paint;->getAlpha()I

    move-result v7

    invoke-static {v6, v7}, Lr3/a;->compositeARGBWithAlpha(II)I

    move-result v6

    .line 102
    invoke-virtual {v5, v1, v3, v4, v6}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 103
    :cond_18
    invoke-static {v2}, LM/p0;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_19
    return-void
.end method

.method public setCollapsedAndExpandedTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/a;->o:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    if-ne v0, p1, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/material/internal/a;->n:Landroid/content/res/ColorStateList;

    .line 6
    .line 7
    if-eq v0, p1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    return-void

    .line 11
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/google/android/material/internal/a;->o:Landroid/content/res/ColorStateList;

    .line 12
    .line 13
    iput-object p1, p0, Lcom/google/android/material/internal/a;->n:Landroid/content/res/ColorStateList;

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/google/android/material/internal/a;->recalculate()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public setCollapsedBounds(IIII)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/material/internal/a;->h:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    if-ne v1, p1, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->top:I

    if-ne v1, p2, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->right:I

    if-ne v1, p3, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    if-ne v1, p4, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/google/android/material/internal/a;->S:Z

    return-void
.end method

.method public setCollapsedBounds(Landroid/graphics/Rect;)V
    .locals 3

    .line 1
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/google/android/material/internal/a;->setCollapsedBounds(IIII)V

    return-void
.end method

.method public setCollapsedTextAppearance(I)V
    .locals 4

    .line 1
    new-instance v0, LC3/g;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/material/internal/a;->a:Landroid/view/View;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-direct {v0, v2, p1}, LC3/g;-><init>(Landroid/content/Context;I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, LC3/g;->getTextColor()Landroid/content/res/ColorStateList;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, LC3/g;->getTextColor()Landroid/content/res/ColorStateList;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lcom/google/android/material/internal/a;->o:Landroid/content/res/ColorStateList;

    .line 23
    .line 24
    :cond_0
    invoke-virtual {v0}, LC3/g;->getTextSize()F

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    const/4 v2, 0x0

    .line 29
    cmpl-float p1, p1, v2

    .line 30
    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    invoke-virtual {v0}, LC3/g;->getTextSize()F

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    iput p1, p0, Lcom/google/android/material/internal/a;->m:F

    .line 38
    .line 39
    :cond_1
    iget-object p1, v0, LC3/g;->a:Landroid/content/res/ColorStateList;

    .line 40
    .line 41
    if-eqz p1, :cond_2

    .line 42
    .line 43
    iput-object p1, p0, Lcom/google/android/material/internal/a;->a0:Landroid/content/res/ColorStateList;

    .line 44
    .line 45
    :cond_2
    iget p1, v0, LC3/g;->e:F

    .line 46
    .line 47
    iput p1, p0, Lcom/google/android/material/internal/a;->Y:F

    .line 48
    .line 49
    iget p1, v0, LC3/g;->f:F

    .line 50
    .line 51
    iput p1, p0, Lcom/google/android/material/internal/a;->Z:F

    .line 52
    .line 53
    iget p1, v0, LC3/g;->g:F

    .line 54
    .line 55
    iput p1, p0, Lcom/google/android/material/internal/a;->X:F

    .line 56
    .line 57
    iget p1, v0, LC3/g;->i:F

    .line 58
    .line 59
    iput p1, p0, Lcom/google/android/material/internal/a;->f0:F

    .line 60
    .line 61
    iget-object p1, p0, Lcom/google/android/material/internal/a;->E:LC3/b;

    .line 62
    .line 63
    if-eqz p1, :cond_3

    .line 64
    .line 65
    invoke-virtual {p1}, LC3/b;->cancel()V

    .line 66
    .line 67
    .line 68
    :cond_3
    new-instance p1, LC3/b;

    .line 69
    .line 70
    new-instance v2, Lx3/d;

    .line 71
    .line 72
    invoke-direct {v2, p0}, Lx3/d;-><init>(Lcom/google/android/material/internal/a;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, LC3/g;->getFallbackFont()Landroid/graphics/Typeface;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-direct {p1, v2, v3}, LC3/b;-><init>(LC3/a;Landroid/graphics/Typeface;)V

    .line 80
    .line 81
    .line 82
    iput-object p1, p0, Lcom/google/android/material/internal/a;->E:LC3/b;

    .line 83
    .line 84
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    iget-object v1, p0, Lcom/google/android/material/internal/a;->E:LC3/b;

    .line 89
    .line 90
    invoke-virtual {v0, p1, v1}, LC3/g;->getFontAsync(Landroid/content/Context;LC3/i;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0}, Lcom/google/android/material/internal/a;->recalculate()V

    .line 94
    .line 95
    .line 96
    return-void
.end method

.method public setCollapsedTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/a;->o:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/material/internal/a;->o:Landroid/content/res/ColorStateList;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/material/internal/a;->recalculate()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setCollapsedTextGravity(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/internal/a;->k:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput p1, p0, Lcom/google/android/material/internal/a;->k:I

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/material/internal/a;->recalculate()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setCollapsedTextSize(F)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/internal/a;->m:F

    .line 2
    .line 3
    cmpl-float v0, v0, p1

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iput p1, p0, Lcom/google/android/material/internal/a;->m:F

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/android/material/internal/a;->recalculate()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public setCollapsedTypeface(Landroid/graphics/Typeface;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/a;->f(Landroid/graphics/Typeface;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/material/internal/a;->recalculate()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setCurrentOffsetY(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/internal/a;->f:I

    .line 2
    .line 3
    return-void
.end method

.method public setExpandedBounds(IIII)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/material/internal/a;->g:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    if-ne v1, p1, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->top:I

    if-ne v1, p2, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->right:I

    if-ne v1, p3, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    if-ne v1, p4, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/google/android/material/internal/a;->S:Z

    return-void
.end method

.method public setExpandedBounds(Landroid/graphics/Rect;)V
    .locals 3

    .line 1
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/google/android/material/internal/a;->setExpandedBounds(IIII)V

    return-void
.end method

.method public setExpandedLetterSpacing(F)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/internal/a;->g0:F

    .line 2
    .line 3
    cmpl-float v0, v0, p1

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iput p1, p0, Lcom/google/android/material/internal/a;->g0:F

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/android/material/internal/a;->recalculate()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public setExpandedTextAppearance(I)V
    .locals 4

    .line 1
    new-instance v0, LC3/g;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/material/internal/a;->a:Landroid/view/View;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-direct {v0, v2, p1}, LC3/g;-><init>(Landroid/content/Context;I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, LC3/g;->getTextColor()Landroid/content/res/ColorStateList;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, LC3/g;->getTextColor()Landroid/content/res/ColorStateList;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lcom/google/android/material/internal/a;->n:Landroid/content/res/ColorStateList;

    .line 23
    .line 24
    :cond_0
    invoke-virtual {v0}, LC3/g;->getTextSize()F

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    const/4 v2, 0x0

    .line 29
    cmpl-float p1, p1, v2

    .line 30
    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    invoke-virtual {v0}, LC3/g;->getTextSize()F

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    iput p1, p0, Lcom/google/android/material/internal/a;->l:F

    .line 38
    .line 39
    :cond_1
    iget-object p1, v0, LC3/g;->a:Landroid/content/res/ColorStateList;

    .line 40
    .line 41
    if-eqz p1, :cond_2

    .line 42
    .line 43
    iput-object p1, p0, Lcom/google/android/material/internal/a;->e0:Landroid/content/res/ColorStateList;

    .line 44
    .line 45
    :cond_2
    iget p1, v0, LC3/g;->e:F

    .line 46
    .line 47
    iput p1, p0, Lcom/google/android/material/internal/a;->c0:F

    .line 48
    .line 49
    iget p1, v0, LC3/g;->f:F

    .line 50
    .line 51
    iput p1, p0, Lcom/google/android/material/internal/a;->d0:F

    .line 52
    .line 53
    iget p1, v0, LC3/g;->g:F

    .line 54
    .line 55
    iput p1, p0, Lcom/google/android/material/internal/a;->b0:F

    .line 56
    .line 57
    iget p1, v0, LC3/g;->i:F

    .line 58
    .line 59
    iput p1, p0, Lcom/google/android/material/internal/a;->g0:F

    .line 60
    .line 61
    iget-object p1, p0, Lcom/google/android/material/internal/a;->D:LC3/b;

    .line 62
    .line 63
    if-eqz p1, :cond_3

    .line 64
    .line 65
    invoke-virtual {p1}, LC3/b;->cancel()V

    .line 66
    .line 67
    .line 68
    :cond_3
    new-instance p1, LC3/b;

    .line 69
    .line 70
    new-instance v2, Lx3/e;

    .line 71
    .line 72
    invoke-direct {v2, p0}, Lx3/e;-><init>(Lcom/google/android/material/internal/a;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, LC3/g;->getFallbackFont()Landroid/graphics/Typeface;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-direct {p1, v2, v3}, LC3/b;-><init>(LC3/a;Landroid/graphics/Typeface;)V

    .line 80
    .line 81
    .line 82
    iput-object p1, p0, Lcom/google/android/material/internal/a;->D:LC3/b;

    .line 83
    .line 84
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    iget-object v1, p0, Lcom/google/android/material/internal/a;->D:LC3/b;

    .line 89
    .line 90
    invoke-virtual {v0, p1, v1}, LC3/g;->getFontAsync(Landroid/content/Context;LC3/i;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0}, Lcom/google/android/material/internal/a;->recalculate()V

    .line 94
    .line 95
    .line 96
    return-void
.end method

.method public setExpandedTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/a;->n:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/material/internal/a;->n:Landroid/content/res/ColorStateList;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/material/internal/a;->recalculate()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setExpandedTextGravity(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/internal/a;->j:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput p1, p0, Lcom/google/android/material/internal/a;->j:I

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/material/internal/a;->recalculate()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setExpandedTextSize(F)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/internal/a;->l:F

    .line 2
    .line 3
    cmpl-float v0, v0, p1

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iput p1, p0, Lcom/google/android/material/internal/a;->l:F

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/android/material/internal/a;->recalculate()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public setExpandedTypeface(Landroid/graphics/Typeface;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/a;->g(Landroid/graphics/Typeface;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/material/internal/a;->recalculate()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setExpansionFraction(F)V
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    const/high16 v1, 0x3f800000    # 1.0f

    .line 3
    .line 4
    invoke-static {p1, v0, v1}, LG/a;->clamp(FFF)F

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    iget v2, p0, Lcom/google/android/material/internal/a;->b:F

    .line 9
    .line 10
    cmpl-float v2, p1, v2

    .line 11
    .line 12
    if-eqz v2, :cond_8

    .line 13
    .line 14
    iput p1, p0, Lcom/google/android/material/internal/a;->b:F

    .line 15
    .line 16
    iget-boolean v2, p0, Lcom/google/android/material/internal/a;->c:Z

    .line 17
    .line 18
    iget-object v3, p0, Lcom/google/android/material/internal/a;->i:Landroid/graphics/RectF;

    .line 19
    .line 20
    iget-object v4, p0, Lcom/google/android/material/internal/a;->h:Landroid/graphics/Rect;

    .line 21
    .line 22
    iget-object v5, p0, Lcom/google/android/material/internal/a;->g:Landroid/graphics/Rect;

    .line 23
    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    iget v2, p0, Lcom/google/android/material/internal/a;->e:F

    .line 27
    .line 28
    cmpg-float v2, p1, v2

    .line 29
    .line 30
    if-gez v2, :cond_0

    .line 31
    .line 32
    move-object v4, v5

    .line 33
    :cond_0
    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    iget v2, v5, Landroid/graphics/Rect;->left:I

    .line 38
    .line 39
    int-to-float v2, v2

    .line 40
    iget v6, v4, Landroid/graphics/Rect;->left:I

    .line 41
    .line 42
    int-to-float v6, v6

    .line 43
    iget-object v7, p0, Lcom/google/android/material/internal/a;->V:Landroid/animation/TimeInterpolator;

    .line 44
    .line 45
    invoke-static {v2, v6, p1, v7}, Lcom/google/android/material/internal/a;->e(FFFLandroid/animation/TimeInterpolator;)F

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    iput v2, v3, Landroid/graphics/RectF;->left:F

    .line 50
    .line 51
    iget v2, p0, Lcom/google/android/material/internal/a;->q:F

    .line 52
    .line 53
    iget v6, p0, Lcom/google/android/material/internal/a;->r:F

    .line 54
    .line 55
    iget-object v7, p0, Lcom/google/android/material/internal/a;->V:Landroid/animation/TimeInterpolator;

    .line 56
    .line 57
    invoke-static {v2, v6, p1, v7}, Lcom/google/android/material/internal/a;->e(FFFLandroid/animation/TimeInterpolator;)F

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    iput v2, v3, Landroid/graphics/RectF;->top:F

    .line 62
    .line 63
    iget v2, v5, Landroid/graphics/Rect;->right:I

    .line 64
    .line 65
    int-to-float v2, v2

    .line 66
    iget v6, v4, Landroid/graphics/Rect;->right:I

    .line 67
    .line 68
    int-to-float v6, v6

    .line 69
    iget-object v7, p0, Lcom/google/android/material/internal/a;->V:Landroid/animation/TimeInterpolator;

    .line 70
    .line 71
    invoke-static {v2, v6, p1, v7}, Lcom/google/android/material/internal/a;->e(FFFLandroid/animation/TimeInterpolator;)F

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    iput v2, v3, Landroid/graphics/RectF;->right:F

    .line 76
    .line 77
    iget v2, v5, Landroid/graphics/Rect;->bottom:I

    .line 78
    .line 79
    int-to-float v2, v2

    .line 80
    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    .line 81
    .line 82
    int-to-float v4, v4

    .line 83
    iget-object v5, p0, Lcom/google/android/material/internal/a;->V:Landroid/animation/TimeInterpolator;

    .line 84
    .line 85
    invoke-static {v2, v4, p1, v5}, Lcom/google/android/material/internal/a;->e(FFFLandroid/animation/TimeInterpolator;)F

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    iput v2, v3, Landroid/graphics/RectF;->bottom:F

    .line 90
    .line 91
    :goto_0
    iget-boolean v2, p0, Lcom/google/android/material/internal/a;->c:Z

    .line 92
    .line 93
    if-eqz v2, :cond_3

    .line 94
    .line 95
    iget v2, p0, Lcom/google/android/material/internal/a;->e:F

    .line 96
    .line 97
    cmpg-float v2, p1, v2

    .line 98
    .line 99
    if-gez v2, :cond_2

    .line 100
    .line 101
    iget v2, p0, Lcom/google/android/material/internal/a;->s:F

    .line 102
    .line 103
    iput v2, p0, Lcom/google/android/material/internal/a;->u:F

    .line 104
    .line 105
    iget v2, p0, Lcom/google/android/material/internal/a;->q:F

    .line 106
    .line 107
    iput v2, p0, Lcom/google/android/material/internal/a;->v:F

    .line 108
    .line 109
    invoke-virtual {p0, v0}, Lcom/google/android/material/internal/a;->h(F)V

    .line 110
    .line 111
    .line 112
    move v2, v0

    .line 113
    goto :goto_1

    .line 114
    :cond_2
    iget v2, p0, Lcom/google/android/material/internal/a;->t:F

    .line 115
    .line 116
    iput v2, p0, Lcom/google/android/material/internal/a;->u:F

    .line 117
    .line 118
    iget v2, p0, Lcom/google/android/material/internal/a;->r:F

    .line 119
    .line 120
    const/4 v3, 0x0

    .line 121
    iget v4, p0, Lcom/google/android/material/internal/a;->f:I

    .line 122
    .line 123
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    .line 124
    .line 125
    .line 126
    move-result v3

    .line 127
    int-to-float v3, v3

    .line 128
    sub-float/2addr v2, v3

    .line 129
    iput v2, p0, Lcom/google/android/material/internal/a;->v:F

    .line 130
    .line 131
    invoke-virtual {p0, v1}, Lcom/google/android/material/internal/a;->h(F)V

    .line 132
    .line 133
    .line 134
    move v2, v1

    .line 135
    goto :goto_1

    .line 136
    :cond_3
    iget v2, p0, Lcom/google/android/material/internal/a;->s:F

    .line 137
    .line 138
    iget v3, p0, Lcom/google/android/material/internal/a;->t:F

    .line 139
    .line 140
    iget-object v4, p0, Lcom/google/android/material/internal/a;->V:Landroid/animation/TimeInterpolator;

    .line 141
    .line 142
    invoke-static {v2, v3, p1, v4}, Lcom/google/android/material/internal/a;->e(FFFLandroid/animation/TimeInterpolator;)F

    .line 143
    .line 144
    .line 145
    move-result v2

    .line 146
    iput v2, p0, Lcom/google/android/material/internal/a;->u:F

    .line 147
    .line 148
    iget v2, p0, Lcom/google/android/material/internal/a;->q:F

    .line 149
    .line 150
    iget v3, p0, Lcom/google/android/material/internal/a;->r:F

    .line 151
    .line 152
    iget-object v4, p0, Lcom/google/android/material/internal/a;->V:Landroid/animation/TimeInterpolator;

    .line 153
    .line 154
    invoke-static {v2, v3, p1, v4}, Lcom/google/android/material/internal/a;->e(FFFLandroid/animation/TimeInterpolator;)F

    .line 155
    .line 156
    .line 157
    move-result v2

    .line 158
    iput v2, p0, Lcom/google/android/material/internal/a;->v:F

    .line 159
    .line 160
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/a;->h(F)V

    .line 161
    .line 162
    .line 163
    move v2, p1

    .line 164
    :goto_1
    sub-float v3, v1, p1

    .line 165
    .line 166
    sget-object v4, Lg3/a;->b:Lh0/b;

    .line 167
    .line 168
    invoke-static {v0, v1, v3, v4}, Lcom/google/android/material/internal/a;->e(FFFLandroid/animation/TimeInterpolator;)F

    .line 169
    .line 170
    .line 171
    move-result v3

    .line 172
    sub-float v3, v1, v3

    .line 173
    .line 174
    iput v3, p0, Lcom/google/android/material/internal/a;->k0:F

    .line 175
    .line 176
    iget-object v3, p0, Lcom/google/android/material/internal/a;->a:Landroid/view/View;

    .line 177
    .line 178
    invoke-static {v3}, LM/p0;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 179
    .line 180
    .line 181
    invoke-static {v1, v0, p1, v4}, Lcom/google/android/material/internal/a;->e(FFFLandroid/animation/TimeInterpolator;)F

    .line 182
    .line 183
    .line 184
    move-result v5

    .line 185
    iput v5, p0, Lcom/google/android/material/internal/a;->l0:F

    .line 186
    .line 187
    invoke-static {v3}, LM/p0;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 188
    .line 189
    .line 190
    iget-object v5, p0, Lcom/google/android/material/internal/a;->o:Landroid/content/res/ColorStateList;

    .line 191
    .line 192
    iget-object v6, p0, Lcom/google/android/material/internal/a;->n:Landroid/content/res/ColorStateList;

    .line 193
    .line 194
    iget-object v7, p0, Lcom/google/android/material/internal/a;->T:Landroid/text/TextPaint;

    .line 195
    .line 196
    if-eq v5, v6, :cond_4

    .line 197
    .line 198
    invoke-virtual {p0, v6}, Lcom/google/android/material/internal/a;->d(Landroid/content/res/ColorStateList;)I

    .line 199
    .line 200
    .line 201
    move-result v5

    .line 202
    invoke-virtual {p0}, Lcom/google/android/material/internal/a;->getCurrentCollapsedTextColor()I

    .line 203
    .line 204
    .line 205
    move-result v6

    .line 206
    invoke-static {v5, v6, v2}, Lcom/google/android/material/internal/a;->a(IIF)I

    .line 207
    .line 208
    .line 209
    move-result v2

    .line 210
    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 211
    .line 212
    .line 213
    goto :goto_2

    .line 214
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/material/internal/a;->getCurrentCollapsedTextColor()I

    .line 215
    .line 216
    .line 217
    move-result v2

    .line 218
    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 219
    .line 220
    .line 221
    :goto_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 222
    .line 223
    iget v5, p0, Lcom/google/android/material/internal/a;->f0:F

    .line 224
    .line 225
    iget v6, p0, Lcom/google/android/material/internal/a;->g0:F

    .line 226
    .line 227
    cmpl-float v8, v5, v6

    .line 228
    .line 229
    if-eqz v8, :cond_5

    .line 230
    .line 231
    invoke-static {v6, v5, p1, v4}, Lcom/google/android/material/internal/a;->e(FFFLandroid/animation/TimeInterpolator;)F

    .line 232
    .line 233
    .line 234
    move-result v4

    .line 235
    invoke-virtual {v7, v4}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    .line 236
    .line 237
    .line 238
    goto :goto_3

    .line 239
    :cond_5
    invoke-virtual {v7, v5}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    .line 240
    .line 241
    .line 242
    :goto_3
    iget v4, p0, Lcom/google/android/material/internal/a;->b0:F

    .line 243
    .line 244
    iget v5, p0, Lcom/google/android/material/internal/a;->X:F

    .line 245
    .line 246
    invoke-static {v4, v5, p1}, Lg3/a;->lerp(FFF)F

    .line 247
    .line 248
    .line 249
    move-result v4

    .line 250
    iput v4, p0, Lcom/google/android/material/internal/a;->N:F

    .line 251
    .line 252
    iget v4, p0, Lcom/google/android/material/internal/a;->c0:F

    .line 253
    .line 254
    iget v5, p0, Lcom/google/android/material/internal/a;->Y:F

    .line 255
    .line 256
    invoke-static {v4, v5, p1}, Lg3/a;->lerp(FFF)F

    .line 257
    .line 258
    .line 259
    move-result v4

    .line 260
    iput v4, p0, Lcom/google/android/material/internal/a;->O:F

    .line 261
    .line 262
    iget v4, p0, Lcom/google/android/material/internal/a;->d0:F

    .line 263
    .line 264
    iget v5, p0, Lcom/google/android/material/internal/a;->Z:F

    .line 265
    .line 266
    invoke-static {v4, v5, p1}, Lg3/a;->lerp(FFF)F

    .line 267
    .line 268
    .line 269
    move-result v4

    .line 270
    iput v4, p0, Lcom/google/android/material/internal/a;->P:F

    .line 271
    .line 272
    iget-object v4, p0, Lcom/google/android/material/internal/a;->e0:Landroid/content/res/ColorStateList;

    .line 273
    .line 274
    invoke-virtual {p0, v4}, Lcom/google/android/material/internal/a;->d(Landroid/content/res/ColorStateList;)I

    .line 275
    .line 276
    .line 277
    move-result v4

    .line 278
    iget-object v5, p0, Lcom/google/android/material/internal/a;->a0:Landroid/content/res/ColorStateList;

    .line 279
    .line 280
    invoke-virtual {p0, v5}, Lcom/google/android/material/internal/a;->d(Landroid/content/res/ColorStateList;)I

    .line 281
    .line 282
    .line 283
    move-result v5

    .line 284
    invoke-static {v4, v5, p1}, Lcom/google/android/material/internal/a;->a(IIF)I

    .line 285
    .line 286
    .line 287
    move-result v4

    .line 288
    iput v4, p0, Lcom/google/android/material/internal/a;->Q:I

    .line 289
    .line 290
    iget v5, p0, Lcom/google/android/material/internal/a;->N:F

    .line 291
    .line 292
    iget v6, p0, Lcom/google/android/material/internal/a;->O:F

    .line 293
    .line 294
    iget v8, p0, Lcom/google/android/material/internal/a;->P:F

    .line 295
    .line 296
    invoke-virtual {v7, v5, v6, v8, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 297
    .line 298
    .line 299
    iget-boolean v4, p0, Lcom/google/android/material/internal/a;->c:Z

    .line 300
    .line 301
    if-eqz v4, :cond_7

    .line 302
    .line 303
    invoke-virtual {v7}, Landroid/graphics/Paint;->getAlpha()I

    .line 304
    .line 305
    .line 306
    move-result v4

    .line 307
    iget v5, p0, Lcom/google/android/material/internal/a;->e:F

    .line 308
    .line 309
    cmpg-float v6, p1, v5

    .line 310
    .line 311
    if-gtz v6, :cond_6

    .line 312
    .line 313
    iget v6, p0, Lcom/google/android/material/internal/a;->d:F

    .line 314
    .line 315
    invoke-static {v1, v0, v6, v5, p1}, Lg3/a;->lerp(FFFFF)F

    .line 316
    .line 317
    .line 318
    move-result p1

    .line 319
    goto :goto_4

    .line 320
    :cond_6
    invoke-static {v0, v1, v5, v1, p1}, Lg3/a;->lerp(FFFFF)F

    .line 321
    .line 322
    .line 323
    move-result p1

    .line 324
    :goto_4
    int-to-float v0, v4

    .line 325
    mul-float/2addr p1, v0

    .line 326
    float-to-int p1, p1

    .line 327
    invoke-virtual {v7, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 328
    .line 329
    .line 330
    const/16 p1, 0x1f

    .line 331
    .line 332
    if-lt v2, p1, :cond_7

    .line 333
    .line 334
    iget p1, p0, Lcom/google/android/material/internal/a;->N:F

    .line 335
    .line 336
    iget v0, p0, Lcom/google/android/material/internal/a;->O:F

    .line 337
    .line 338
    iget v1, p0, Lcom/google/android/material/internal/a;->P:F

    .line 339
    .line 340
    iget v2, p0, Lcom/google/android/material/internal/a;->Q:I

    .line 341
    .line 342
    invoke-virtual {v7}, Landroid/graphics/Paint;->getAlpha()I

    .line 343
    .line 344
    .line 345
    move-result v4

    .line 346
    invoke-static {v2, v4}, Lr3/a;->compositeARGBWithAlpha(II)I

    .line 347
    .line 348
    .line 349
    move-result v2

    .line 350
    invoke-virtual {v7, p1, v0, v1, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 351
    .line 352
    .line 353
    :cond_7
    invoke-static {v3}, LM/p0;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 354
    .line 355
    .line 356
    :cond_8
    return-void
.end method

.method public setFadeModeEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/material/internal/a;->c:Z

    .line 2
    .line 3
    return-void
.end method

.method public setFadeModeStartFraction(F)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/google/android/material/internal/a;->d:F

    .line 2
    .line 3
    const/high16 v0, 0x3f800000    # 1.0f

    .line 4
    .line 5
    const/high16 v1, 0x3f000000    # 0.5f

    .line 6
    .line 7
    invoke-static {v0, p1, v1, p1}, Lb/c;->a(FFFF)F

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iput p1, p0, Lcom/google/android/material/internal/a;->e:F

    .line 12
    .line 13
    return-void
.end method

.method public setHyphenationFrequency(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/internal/a;->q0:I

    .line 2
    .line 3
    return-void
.end method

.method public setLineSpacingAdd(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/internal/a;->o0:F

    .line 2
    .line 3
    return-void
.end method

.method public setLineSpacingMultiplier(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/internal/a;->p0:F

    .line 2
    .line 3
    return-void
.end method

.method public setMaxLines(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/internal/a;->n0:I

    .line 2
    .line 3
    if-eq p1, v0, :cond_1

    .line 4
    .line 5
    iput p1, p0, Lcom/google/android/material/internal/a;->n0:I

    .line 6
    .line 7
    iget-object p1, p0, Lcom/google/android/material/internal/a;->K:Landroid/graphics/Bitmap;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    iput-object p1, p0, Lcom/google/android/material/internal/a;->K:Landroid/graphics/Bitmap;

    .line 16
    .line 17
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/internal/a;->recalculate()V

    .line 18
    .line 19
    .line 20
    :cond_1
    return-void
.end method

.method public setPositionInterpolator(Landroid/animation/TimeInterpolator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/internal/a;->V:Landroid/animation/TimeInterpolator;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/internal/a;->recalculate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setRtlTextDirectionHeuristicsEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/material/internal/a;->J:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setState([I)Z
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/internal/a;->R:[I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/internal/a;->isStateful()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/android/material/internal/a;->recalculate()V

    .line 10
    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    return p1

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    return p1
.end method

.method public setStaticLayoutBuilderConfigurer(Lx3/G;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/a;->recalculate(Z)V

    .line 5
    .line 6
    .line 7
    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/material/internal/a;->G:Ljava/lang/CharSequence;

    .line 4
    .line 5
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    return-void

    .line 13
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/google/android/material/internal/a;->G:Ljava/lang/CharSequence;

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    iput-object p1, p0, Lcom/google/android/material/internal/a;->H:Ljava/lang/CharSequence;

    .line 17
    .line 18
    iget-object v0, p0, Lcom/google/android/material/internal/a;->K:Landroid/graphics/Bitmap;

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lcom/google/android/material/internal/a;->K:Landroid/graphics/Bitmap;

    .line 26
    .line 27
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/material/internal/a;->recalculate()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public setTextSizeInterpolator(Landroid/animation/TimeInterpolator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/internal/a;->W:Landroid/animation/TimeInterpolator;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/internal/a;->recalculate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setTitleTextEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/internal/a;->F:Landroid/text/TextUtils$TruncateAt;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/internal/a;->recalculate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setTypefaces(Landroid/graphics/Typeface;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/a;->f(Landroid/graphics/Typeface;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/a;->g(Landroid/graphics/Typeface;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    return-void

    .line 15
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/internal/a;->recalculate()V

    .line 16
    .line 17
    .line 18
    return-void
.end method
