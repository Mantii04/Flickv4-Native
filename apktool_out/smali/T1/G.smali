.class public final LT1/G;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;
.implements Landroid/graphics/drawable/Animatable;


# instance fields
.field public A:Z

.field public final b:Landroid/graphics/Matrix;

.field public e:LT1/i;

.field public final f:Lf2/e;

.field public j:F

.field public m:Z

.field public n:Z

.field public final p:Ljava/util/ArrayList;

.field public q:Landroid/widget/ImageView$ScaleType;

.field public r:LX1/b;

.field public s:Ljava/lang/String;

.field public t:LX1/a;

.field public u:Z

.field public v:Lb2/c;

.field public w:I

.field public x:Z

.field public y:Z

.field public final z:Z


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Matrix;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, LT1/G;->b:Landroid/graphics/Matrix;

    .line 10
    .line 11
    new-instance v0, Lf2/e;

    .line 12
    .line 13
    invoke-direct {v0}, Lf2/e;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, LT1/G;->f:Lf2/e;

    .line 17
    .line 18
    const/high16 v1, 0x3f800000    # 1.0f

    .line 19
    .line 20
    iput v1, p0, LT1/G;->j:F

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    iput-boolean v1, p0, LT1/G;->m:Z

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    iput-boolean v2, p0, LT1/G;->n:Z

    .line 27
    .line 28
    new-instance v3, Ljava/util/HashSet;

    .line 29
    .line 30
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 31
    .line 32
    .line 33
    new-instance v3, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object v3, p0, LT1/G;->p:Ljava/util/ArrayList;

    .line 39
    .line 40
    new-instance v3, LT1/w;

    .line 41
    .line 42
    invoke-direct {v3, p0}, LT1/w;-><init>(LT1/G;)V

    .line 43
    .line 44
    .line 45
    const/16 v4, 0xff

    .line 46
    .line 47
    iput v4, p0, LT1/G;->w:I

    .line 48
    .line 49
    iput-boolean v1, p0, LT1/G;->z:Z

    .line 50
    .line 51
    iput-boolean v2, p0, LT1/G;->A:Z

    .line 52
    .line 53
    invoke-virtual {v0, v3}, Lf2/a;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Canvas;)V
    .locals 9

    .line 1
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    .line 2
    .line 3
    iget-object v1, p0, LT1/G;->q:Landroid/widget/ImageView$ScaleType;

    .line 4
    .line 5
    iget-object v2, p0, LT1/G;->b:Landroid/graphics/Matrix;

    .line 6
    .line 7
    const/high16 v3, 0x40000000    # 2.0f

    .line 8
    .line 9
    const/high16 v4, 0x3f800000    # 1.0f

    .line 10
    .line 11
    const/4 v5, -0x1

    .line 12
    if-ne v0, v1, :cond_3

    .line 13
    .line 14
    iget-object v0, p0, LT1/G;->v:Lb2/c;

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    goto/16 :goto_2

    .line 19
    .line 20
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    int-to-float v1, v1

    .line 29
    iget-object v6, p0, LT1/G;->e:LT1/i;

    .line 30
    .line 31
    invoke-virtual {v6}, LT1/i;->getBounds()Landroid/graphics/Rect;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    int-to-float v6, v6

    .line 40
    div-float/2addr v1, v6

    .line 41
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    int-to-float v6, v6

    .line 46
    iget-object v7, p0, LT1/G;->e:LT1/i;

    .line 47
    .line 48
    invoke-virtual {v7}, LT1/i;->getBounds()Landroid/graphics/Rect;

    .line 49
    .line 50
    .line 51
    move-result-object v7

    .line 52
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    .line 53
    .line 54
    .line 55
    move-result v7

    .line 56
    int-to-float v7, v7

    .line 57
    div-float/2addr v6, v7

    .line 58
    iget-boolean v7, p0, LT1/G;->z:Z

    .line 59
    .line 60
    if-eqz v7, :cond_2

    .line 61
    .line 62
    invoke-static {v1, v6}, Ljava/lang/Math;->min(FF)F

    .line 63
    .line 64
    .line 65
    move-result v7

    .line 66
    cmpg-float v8, v7, v4

    .line 67
    .line 68
    if-gez v8, :cond_1

    .line 69
    .line 70
    div-float v8, v4, v7

    .line 71
    .line 72
    div-float/2addr v1, v8

    .line 73
    div-float/2addr v6, v8

    .line 74
    goto :goto_0

    .line 75
    :cond_1
    move v8, v4

    .line 76
    :goto_0
    cmpl-float v4, v8, v4

    .line 77
    .line 78
    if-lez v4, :cond_2

    .line 79
    .line 80
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 81
    .line 82
    .line 83
    move-result v5

    .line 84
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    int-to-float v4, v4

    .line 89
    div-float/2addr v4, v3

    .line 90
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    int-to-float v0, v0

    .line 95
    div-float/2addr v0, v3

    .line 96
    mul-float v3, v4, v7

    .line 97
    .line 98
    mul-float/2addr v7, v0

    .line 99
    sub-float/2addr v4, v3

    .line 100
    sub-float/2addr v0, v7

    .line 101
    invoke-virtual {p1, v4, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, v8, v8, v3, v7}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 105
    .line 106
    .line 107
    :cond_2
    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v2, v1, v6}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 111
    .line 112
    .line 113
    iget-object v0, p0, LT1/G;->v:Lb2/c;

    .line 114
    .line 115
    iget v1, p0, LT1/G;->w:I

    .line 116
    .line 117
    invoke-virtual {v0, p1, v2, v1}, Lb2/b;->draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 118
    .line 119
    .line 120
    if-lez v5, :cond_7

    .line 121
    .line 122
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 123
    .line 124
    .line 125
    return-void

    .line 126
    :cond_3
    iget-object v0, p0, LT1/G;->v:Lb2/c;

    .line 127
    .line 128
    if-nez v0, :cond_4

    .line 129
    .line 130
    goto/16 :goto_2

    .line 131
    .line 132
    :cond_4
    iget v0, p0, LT1/G;->j:F

    .line 133
    .line 134
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    int-to-float v1, v1

    .line 139
    iget-object v6, p0, LT1/G;->e:LT1/i;

    .line 140
    .line 141
    invoke-virtual {v6}, LT1/i;->getBounds()Landroid/graphics/Rect;

    .line 142
    .line 143
    .line 144
    move-result-object v6

    .line 145
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    .line 146
    .line 147
    .line 148
    move-result v6

    .line 149
    int-to-float v6, v6

    .line 150
    div-float/2addr v1, v6

    .line 151
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    .line 152
    .line 153
    .line 154
    move-result v6

    .line 155
    int-to-float v6, v6

    .line 156
    iget-object v7, p0, LT1/G;->e:LT1/i;

    .line 157
    .line 158
    invoke-virtual {v7}, LT1/i;->getBounds()Landroid/graphics/Rect;

    .line 159
    .line 160
    .line 161
    move-result-object v7

    .line 162
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    .line 163
    .line 164
    .line 165
    move-result v7

    .line 166
    int-to-float v7, v7

    .line 167
    div-float/2addr v6, v7

    .line 168
    invoke-static {v1, v6}, Ljava/lang/Math;->min(FF)F

    .line 169
    .line 170
    .line 171
    move-result v1

    .line 172
    cmpl-float v6, v0, v1

    .line 173
    .line 174
    if-lez v6, :cond_5

    .line 175
    .line 176
    iget v0, p0, LT1/G;->j:F

    .line 177
    .line 178
    div-float/2addr v0, v1

    .line 179
    goto :goto_1

    .line 180
    :cond_5
    move v1, v0

    .line 181
    move v0, v4

    .line 182
    :goto_1
    cmpl-float v4, v0, v4

    .line 183
    .line 184
    if-lez v4, :cond_6

    .line 185
    .line 186
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 187
    .line 188
    .line 189
    move-result v5

    .line 190
    iget-object v4, p0, LT1/G;->e:LT1/i;

    .line 191
    .line 192
    invoke-virtual {v4}, LT1/i;->getBounds()Landroid/graphics/Rect;

    .line 193
    .line 194
    .line 195
    move-result-object v4

    .line 196
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 197
    .line 198
    .line 199
    move-result v4

    .line 200
    int-to-float v4, v4

    .line 201
    div-float/2addr v4, v3

    .line 202
    iget-object v6, p0, LT1/G;->e:LT1/i;

    .line 203
    .line 204
    invoke-virtual {v6}, LT1/i;->getBounds()Landroid/graphics/Rect;

    .line 205
    .line 206
    .line 207
    move-result-object v6

    .line 208
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    .line 209
    .line 210
    .line 211
    move-result v6

    .line 212
    int-to-float v6, v6

    .line 213
    div-float/2addr v6, v3

    .line 214
    mul-float v3, v4, v1

    .line 215
    .line 216
    mul-float v7, v6, v1

    .line 217
    .line 218
    invoke-virtual {p0}, LT1/G;->getScale()F

    .line 219
    .line 220
    .line 221
    move-result v8

    .line 222
    mul-float/2addr v8, v4

    .line 223
    sub-float/2addr v8, v3

    .line 224
    invoke-virtual {p0}, LT1/G;->getScale()F

    .line 225
    .line 226
    .line 227
    move-result v4

    .line 228
    mul-float/2addr v4, v6

    .line 229
    sub-float/2addr v4, v7

    .line 230
    invoke-virtual {p1, v8, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {p1, v0, v0, v3, v7}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 234
    .line 235
    .line 236
    :cond_6
    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v2, v1, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 240
    .line 241
    .line 242
    iget-object v0, p0, LT1/G;->v:Lb2/c;

    .line 243
    .line 244
    iget v1, p0, LT1/G;->w:I

    .line 245
    .line 246
    invoke-virtual {v0, p1, v2, v1}, Lb2/b;->draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 247
    .line 248
    .line 249
    if-lez v5, :cond_7

    .line 250
    .line 251
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 252
    .line 253
    .line 254
    :cond_7
    :goto_2
    return-void
.end method

.method public addValueCallback(LY1/e;Ljava/lang/Object;Lg2/c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LY1/e;",
            "TT;",
            "Lg2/c;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LT1/G;->v:Lb2/c;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, LT1/G;->p:Ljava/util/ArrayList;

    .line 6
    .line 7
    new-instance v1, LT1/v;

    .line 8
    .line 9
    invoke-direct {v1, p0, p1, p2, p3}, LT1/v;-><init>(LT1/G;LY1/e;Ljava/lang/Object;Lg2/c;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-virtual {p1}, LY1/e;->getResolvedElement()LY1/f;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const/4 v1, 0x1

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {p1}, LY1/e;->getResolvedElement()LY1/f;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-interface {p1, p2, p3}, LY1/f;->addValueCallback(Ljava/lang/Object;Lg2/c;)V

    .line 28
    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    invoke-virtual {p0, p1}, LT1/G;->resolveKeyPath(LY1/e;)Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const/4 v0, 0x0

    .line 36
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-ge v0, v2, :cond_2

    .line 41
    .line 42
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    check-cast v2, LY1/e;

    .line 47
    .line 48
    invoke-virtual {v2}, LY1/e;->getResolvedElement()LY1/f;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-interface {v2, p2, p3}, LY1/f;->addValueCallback(Ljava/lang/Object;Lg2/c;)V

    .line 53
    .line 54
    .line 55
    add-int/lit8 v0, v0, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    xor-int/2addr v1, p1

    .line 63
    :goto_1
    if-eqz v1, :cond_3

    .line 64
    .line 65
    invoke-virtual {p0}, LT1/G;->invalidateSelf()V

    .line 66
    .line 67
    .line 68
    sget-object p1, LT1/K;->w:Ljava/lang/Float;

    .line 69
    .line 70
    if-ne p2, p1, :cond_3

    .line 71
    .line 72
    invoke-virtual {p0}, LT1/G;->getProgress()F

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    invoke-virtual {p0, p1}, LT1/G;->setProgress(F)V

    .line 77
    .line 78
    .line 79
    :cond_3
    return-void
.end method

.method public final b()V
    .locals 3

    .line 1
    iget-object v0, p0, LT1/G;->e:LT1/i;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, LT1/G;->getScale()F

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iget-object v1, p0, LT1/G;->e:LT1/i;

    .line 11
    .line 12
    invoke-virtual {v1}, LT1/i;->getBounds()Landroid/graphics/Rect;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    int-to-float v1, v1

    .line 21
    mul-float/2addr v1, v0

    .line 22
    float-to-int v1, v1

    .line 23
    iget-object v2, p0, LT1/G;->e:LT1/i;

    .line 24
    .line 25
    invoke-virtual {v2}, LT1/i;->getBounds()Landroid/graphics/Rect;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    int-to-float v2, v2

    .line 34
    mul-float/2addr v2, v0

    .line 35
    float-to-int v0, v2

    .line 36
    const/4 v2, 0x0

    .line 37
    invoke-virtual {p0, v2, v2, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public cancelAnimation()V
    .locals 1

    .line 1
    iget-object v0, p0, LT1/G;->p:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, LT1/G;->f:Lf2/e;

    .line 7
    .line 8
    invoke-virtual {v0}, Lf2/e;->cancel()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public clearComposition()V
    .locals 2

    .line 1
    iget-object v0, p0, LT1/G;->f:Lf2/e;

    .line 2
    .line 3
    invoke-virtual {v0}, Lf2/e;->isRunning()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lf2/e;->cancel()V

    .line 10
    .line 11
    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    iput-object v1, p0, LT1/G;->e:LT1/i;

    .line 14
    .line 15
    iput-object v1, p0, LT1/G;->v:Lb2/c;

    .line 16
    .line 17
    iput-object v1, p0, LT1/G;->r:LX1/b;

    .line 18
    .line 19
    invoke-virtual {v0}, Lf2/e;->clearComposition()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, LT1/G;->invalidateSelf()V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, LT1/G;->A:Z

    .line 3
    .line 4
    const-string v0, "Drawable#draw"

    .line 5
    .line 6
    invoke-static {v0}, LT1/c;->beginSection(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-boolean v1, p0, LT1/G;->n:Z

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    :try_start_0
    invoke-virtual {p0, p1}, LT1/G;->a(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    const-string v1, "Lottie crashed in draw!"

    .line 19
    .line 20
    invoke-static {v1, p1}, Lf2/d;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {p0, p1}, LT1/G;->a(Landroid/graphics/Canvas;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    invoke-static {v0}, LT1/c;->endSection(Ljava/lang/String;)F

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public enableMergePathsForKitKatAndAbove(Z)V
    .locals 3

    .line 2
    iget-boolean v0, p0, LT1/G;->u:Z

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iput-boolean p1, p0, LT1/G;->u:Z

    .line 4
    iget-object p1, p0, LT1/G;->e:LT1/i;

    if-eqz p1, :cond_1

    .line 5
    new-instance v0, Lb2/c;

    .line 6
    invoke-static {p1}, Ld2/s;->parse(LT1/i;)Lb2/e;

    move-result-object p1

    iget-object v1, p0, LT1/G;->e:LT1/i;

    invoke-virtual {v1}, LT1/i;->getLayers()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, LT1/G;->e:LT1/i;

    invoke-direct {v0, p0, p1, v1, v2}, Lb2/c;-><init>(LT1/G;Lb2/e;Ljava/util/List;LT1/i;)V

    iput-object v0, p0, LT1/G;->v:Lb2/c;

    :cond_1
    :goto_0
    return-void
.end method

.method public enableMergePathsForKitKatAndAbove()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, LT1/G;->u:Z

    return v0
.end method

.method public endAnimation()V
    .locals 1

    .line 1
    iget-object v0, p0, LT1/G;->p:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, LT1/G;->f:Lf2/e;

    .line 7
    .line 8
    invoke-virtual {v0}, Lf2/e;->endAnimation()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .line 1
    iget v0, p0, LT1/G;->w:I

    .line 2
    .line 3
    return v0
.end method

.method public getComposition()LT1/i;
    .locals 1

    .line 1
    iget-object v0, p0, LT1/G;->e:LT1/i;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFrame()I
    .locals 1

    .line 1
    iget-object v0, p0, LT1/G;->f:Lf2/e;

    .line 2
    .line 3
    invoke-virtual {v0}, Lf2/e;->getFrame()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    float-to-int v0, v0

    .line 8
    return v0
.end method

.method public getImageAsset(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    move-object v0, v1

    .line 9
    goto :goto_1

    .line 10
    :cond_0
    iget-object v0, p0, LT1/G;->r:LX1/b;

    .line 11
    .line 12
    if-eqz v0, :cond_3

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    if-nez v2, :cond_2

    .line 19
    .line 20
    :cond_1
    move-object v2, v1

    .line 21
    goto :goto_0

    .line 22
    :cond_2
    instance-of v3, v2, Landroid/view/View;

    .line 23
    .line 24
    if-eqz v3, :cond_1

    .line 25
    .line 26
    check-cast v2, Landroid/view/View;

    .line 27
    .line 28
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    :goto_0
    invoke-virtual {v0, v2}, LX1/b;->hasSameContext(Landroid/content/Context;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_3

    .line 37
    .line 38
    iput-object v1, p0, LT1/G;->r:LX1/b;

    .line 39
    .line 40
    :cond_3
    iget-object v0, p0, LT1/G;->r:LX1/b;

    .line 41
    .line 42
    if-nez v0, :cond_4

    .line 43
    .line 44
    new-instance v0, LX1/b;

    .line 45
    .line 46
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    iget-object v3, p0, LT1/G;->s:Ljava/lang/String;

    .line 51
    .line 52
    iget-object v4, p0, LT1/G;->e:LT1/i;

    .line 53
    .line 54
    invoke-virtual {v4}, LT1/i;->getImages()Ljava/util/Map;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    invoke-direct {v0, v2, v3, v1, v4}, LX1/b;-><init>(Landroid/graphics/drawable/Drawable$Callback;Ljava/lang/String;LT1/b;Ljava/util/Map;)V

    .line 59
    .line 60
    .line 61
    iput-object v0, p0, LT1/G;->r:LX1/b;

    .line 62
    .line 63
    :cond_4
    iget-object v0, p0, LT1/G;->r:LX1/b;

    .line 64
    .line 65
    :goto_1
    if-eqz v0, :cond_5

    .line 66
    .line 67
    invoke-virtual {v0, p1}, LX1/b;->bitmapForId(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    return-object p1

    .line 72
    :cond_5
    return-object v1
.end method

.method public getImageAssetsFolder()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, LT1/G;->s:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 2

    .line 1
    iget-object v0, p0, LT1/G;->e:LT1/i;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, -0x1

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-virtual {v0}, LT1/i;->getBounds()Landroid/graphics/Rect;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    int-to-float v0, v0

    .line 16
    invoke-virtual {p0}, LT1/G;->getScale()F

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    mul-float/2addr v1, v0

    .line 21
    float-to-int v0, v1

    .line 22
    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    .line 1
    iget-object v0, p0, LT1/G;->e:LT1/i;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, -0x1

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-virtual {v0}, LT1/i;->getBounds()Landroid/graphics/Rect;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    int-to-float v0, v0

    .line 16
    invoke-virtual {p0}, LT1/G;->getScale()F

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    mul-float/2addr v1, v0

    .line 21
    float-to-int v0, v1

    .line 22
    return v0
.end method

.method public getMaxFrame()F
    .locals 1

    .line 1
    iget-object v0, p0, LT1/G;->f:Lf2/e;

    .line 2
    .line 3
    invoke-virtual {v0}, Lf2/e;->getMaxFrame()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getMinFrame()F
    .locals 1

    .line 1
    iget-object v0, p0, LT1/G;->f:Lf2/e;

    .line 2
    .line 3
    invoke-virtual {v0}, Lf2/e;->getMinFrame()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getOpacity()I
    .locals 1

    .line 1
    const/4 v0, -0x3

    .line 2
    return v0
.end method

.method public getPerformanceTracker()LT1/P;
    .locals 1

    .line 1
    iget-object v0, p0, LT1/G;->e:LT1/i;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, LT1/i;->getPerformanceTracker()LT1/P;

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

.method public getProgress()F
    .locals 1

    .line 1
    iget-object v0, p0, LT1/G;->f:Lf2/e;

    .line 2
    .line 3
    invoke-virtual {v0}, Lf2/e;->getAnimatedValueAbsolute()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getRepeatCount()I
    .locals 1

    .line 1
    iget-object v0, p0, LT1/G;->f:Lf2/e;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getRepeatCount()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getRepeatMode()I
    .locals 1

    .line 1
    iget-object v0, p0, LT1/G;->f:Lf2/e;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getRepeatMode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getScale()F
    .locals 1

    .line 1
    iget v0, p0, LT1/G;->j:F

    .line 2
    .line 3
    return v0
.end method

.method public getSpeed()F
    .locals 1

    .line 1
    iget-object v0, p0, LT1/G;->f:Lf2/e;

    .line 2
    .line 3
    invoke-virtual {v0}, Lf2/e;->getSpeed()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getTextDelegate()LT1/S;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public getTypeface(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    move-object v0, v1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, LT1/G;->t:LX1/a;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    new-instance v0, LX1/a;

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-direct {v0, v2, v1}, LX1/a;-><init>(Landroid/graphics/drawable/Drawable$Callback;LT1/a;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, LT1/G;->t:LX1/a;

    .line 24
    .line 25
    :cond_1
    iget-object v0, p0, LT1/G;->t:LX1/a;

    .line 26
    .line 27
    :goto_0
    if-eqz v0, :cond_2

    .line 28
    .line 29
    invoke-virtual {v0, p1, p2}, LX1/a;->getTypeface(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    return-object p1

    .line 34
    :cond_2
    return-object v1
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
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-interface {p1, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public invalidateSelf()V
    .locals 1

    .line 1
    iget-boolean v0, p0, LT1/G;->A:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, LT1/G;->A:Z

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 16
    .line 17
    .line 18
    :cond_1
    :goto_0
    return-void
.end method

.method public isAnimating()Z
    .locals 1

    .line 1
    iget-object v0, p0, LT1/G;->f:Lf2/e;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lf2/e;->isRunning()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public isApplyingOpacityToLayersEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, LT1/G;->y:Z

    .line 2
    .line 3
    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, LT1/G;->isAnimating()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public pauseAnimation()V
    .locals 1

    .line 1
    iget-object v0, p0, LT1/G;->p:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, LT1/G;->f:Lf2/e;

    .line 7
    .line 8
    invoke-virtual {v0}, Lf2/e;->pauseAnimation()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public playAnimation()V
    .locals 3

    .line 1
    iget-object v0, p0, LT1/G;->v:Lb2/c;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, LT1/G;->p:Ljava/util/ArrayList;

    .line 6
    .line 7
    new-instance v1, LT1/x;

    .line 8
    .line 9
    invoke-direct {v1, p0}, LT1/x;-><init>(LT1/G;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-boolean v0, p0, LT1/G;->m:Z

    .line 17
    .line 18
    iget-object v1, p0, LT1/G;->f:Lf2/e;

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0}, LT1/G;->getRepeatCount()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_2

    .line 27
    .line 28
    :cond_1
    invoke-virtual {v1}, Lf2/e;->playAnimation()V

    .line 29
    .line 30
    .line 31
    :cond_2
    iget-boolean v0, p0, LT1/G;->m:Z

    .line 32
    .line 33
    if-nez v0, :cond_4

    .line 34
    .line 35
    invoke-virtual {p0}, LT1/G;->getSpeed()F

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    const/4 v2, 0x0

    .line 40
    cmpg-float v0, v0, v2

    .line 41
    .line 42
    if-gez v0, :cond_3

    .line 43
    .line 44
    invoke-virtual {p0}, LT1/G;->getMinFrame()F

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    goto :goto_0

    .line 49
    :cond_3
    invoke-virtual {p0}, LT1/G;->getMaxFrame()F

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    :goto_0
    float-to-int v0, v0

    .line 54
    invoke-virtual {p0, v0}, LT1/G;->setFrame(I)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Lf2/e;->endAnimation()V

    .line 58
    .line 59
    .line 60
    :cond_4
    return-void
.end method

.method public resolveKeyPath(LY1/e;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LY1/e;",
            ")",
            "Ljava/util/List<",
            "LY1/e;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LT1/G;->v:Lb2/c;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string p1, "Cannot resolve KeyPath. Composition is not set yet."

    .line 6
    .line 7
    invoke-static {p1}, Lf2/d;->warning(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 11
    .line 12
    return-object p1

    .line 13
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, LT1/G;->v:Lb2/c;

    .line 19
    .line 20
    new-instance v2, LY1/e;

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    new-array v4, v3, [Ljava/lang/String;

    .line 24
    .line 25
    invoke-direct {v2, v4}, LY1/e;-><init>([Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p1, v3, v0, v2}, Lb2/b;->resolveKeyPath(LY1/e;ILjava/util/List;LY1/e;)V

    .line 29
    .line 30
    .line 31
    return-object v0
.end method

.method public resumeAnimation()V
    .locals 3

    .line 1
    iget-object v0, p0, LT1/G;->v:Lb2/c;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, LT1/G;->p:Ljava/util/ArrayList;

    .line 6
    .line 7
    new-instance v1, LT1/y;

    .line 8
    .line 9
    invoke-direct {v1, p0}, LT1/y;-><init>(LT1/G;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-boolean v0, p0, LT1/G;->m:Z

    .line 17
    .line 18
    iget-object v1, p0, LT1/G;->f:Lf2/e;

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0}, LT1/G;->getRepeatCount()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_2

    .line 27
    .line 28
    :cond_1
    invoke-virtual {v1}, Lf2/e;->resumeAnimation()V

    .line 29
    .line 30
    .line 31
    :cond_2
    iget-boolean v0, p0, LT1/G;->m:Z

    .line 32
    .line 33
    if-nez v0, :cond_4

    .line 34
    .line 35
    invoke-virtual {p0}, LT1/G;->getSpeed()F

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    const/4 v2, 0x0

    .line 40
    cmpg-float v0, v0, v2

    .line 41
    .line 42
    if-gez v0, :cond_3

    .line 43
    .line 44
    invoke-virtual {p0}, LT1/G;->getMinFrame()F

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    goto :goto_0

    .line 49
    :cond_3
    invoke-virtual {p0}, LT1/G;->getMaxFrame()F

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    :goto_0
    float-to-int v0, v0

    .line 54
    invoke-virtual {p0, v0}, LT1/G;->setFrame(I)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Lf2/e;->endAnimation()V

    .line 58
    .line 59
    .line 60
    :cond_4
    return-void
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
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-interface {p1, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    .line 1
    iput p1, p0, LT1/G;->w:I

    .line 2
    .line 3
    invoke-virtual {p0}, LT1/G;->invalidateSelf()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setApplyingOpacityToLayersEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, LT1/G;->y:Z

    .line 2
    .line 3
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 1
    const-string p1, "Use addColorFilter instead."

    .line 2
    .line 3
    invoke-static {p1}, Lf2/d;->warning(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setComposition(LT1/i;)Z
    .locals 4

    .line 1
    iget-object v0, p0, LT1/G;->e:LT1/i;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-ne v0, p1, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iput-boolean v1, p0, LT1/G;->A:Z

    .line 8
    .line 9
    invoke-virtual {p0}, LT1/G;->clearComposition()V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, LT1/G;->e:LT1/i;

    .line 13
    .line 14
    new-instance v0, Lb2/c;

    .line 15
    .line 16
    invoke-static {p1}, Ld2/s;->parse(LT1/i;)Lb2/e;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iget-object v2, p0, LT1/G;->e:LT1/i;

    .line 21
    .line 22
    invoke-virtual {v2}, LT1/i;->getLayers()Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    iget-object v3, p0, LT1/G;->e:LT1/i;

    .line 27
    .line 28
    invoke-direct {v0, p0, v1, v2, v3}, Lb2/c;-><init>(LT1/G;Lb2/e;Ljava/util/List;LT1/i;)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, LT1/G;->v:Lb2/c;

    .line 32
    .line 33
    iget-object v0, p0, LT1/G;->f:Lf2/e;

    .line 34
    .line 35
    invoke-virtual {v0, p1}, Lf2/e;->setComposition(LT1/i;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Lf2/e;->getAnimatedFraction()F

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    invoke-virtual {p0, v0}, LT1/G;->setProgress(F)V

    .line 43
    .line 44
    .line 45
    iget v0, p0, LT1/G;->j:F

    .line 46
    .line 47
    invoke-virtual {p0, v0}, LT1/G;->setScale(F)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, LT1/G;->b()V

    .line 51
    .line 52
    .line 53
    new-instance v0, Ljava/util/ArrayList;

    .line 54
    .line 55
    iget-object v1, p0, LT1/G;->p:Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-eqz v2, :cond_1

    .line 69
    .line 70
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    check-cast v2, LT1/F;

    .line 75
    .line 76
    invoke-interface {v2, p1}, LT1/F;->run(LT1/i;)V

    .line 77
    .line 78
    .line 79
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 84
    .line 85
    .line 86
    iget-boolean v0, p0, LT1/G;->x:Z

    .line 87
    .line 88
    invoke-virtual {p1, v0}, LT1/i;->setPerformanceTrackingEnabled(Z)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    instance-of v0, p1, Landroid/widget/ImageView;

    .line 96
    .line 97
    if-eqz v0, :cond_2

    .line 98
    .line 99
    check-cast p1, Landroid/widget/ImageView;

    .line 100
    .line 101
    const/4 v0, 0x0

    .line 102
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 106
    .line 107
    .line 108
    :cond_2
    const/4 p1, 0x1

    .line 109
    return p1
.end method

.method public setFontAssetDelegate(LT1/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, LT1/G;->t:LX1/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, LX1/a;->setDelegate(LT1/a;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setFrame(I)V
    .locals 2

    .line 1
    iget-object v0, p0, LT1/G;->e:LT1/i;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, LT1/G;->p:Ljava/util/ArrayList;

    .line 6
    .line 7
    new-instance v1, LT1/t;

    .line 8
    .line 9
    invoke-direct {v1, p0, p1}, LT1/t;-><init>(LT1/G;I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-object v0, p0, LT1/G;->f:Lf2/e;

    .line 17
    .line 18
    int-to-float p1, p1

    .line 19
    invoke-virtual {v0, p1}, Lf2/e;->setFrame(F)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public setImageAssetDelegate(LT1/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, LT1/G;->r:LX1/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, LX1/b;->setDelegate(LT1/b;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setImagesAssetsFolder(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, LT1/G;->s:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setMaxFrame(I)V
    .locals 2

    .line 1
    iget-object v0, p0, LT1/G;->e:LT1/i;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, LT1/G;->p:Ljava/util/ArrayList;

    new-instance v1, LT1/B;

    invoke-direct {v1, p0, p1}, LT1/B;-><init>(LT1/G;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    int-to-float p1, p1

    const v0, 0x3f7d70a4    # 0.99f

    add-float/2addr p1, v0

    .line 3
    iget-object v0, p0, LT1/G;->f:Lf2/e;

    invoke-virtual {v0, p1}, Lf2/e;->setMaxFrame(F)V

    return-void
.end method

.method public setMaxFrame(Ljava/lang/String;)V
    .locals 3

    .line 4
    iget-object v0, p0, LT1/G;->e:LT1/i;

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, LT1/G;->p:Ljava/util/ArrayList;

    new-instance v1, LT1/E;

    invoke-direct {v1, p0, p1}, LT1/E;-><init>(LT1/G;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 6
    :cond_0
    invoke-virtual {v0, p1}, LT1/i;->getMarker(Ljava/lang/String;)LY1/h;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    iget p1, v0, LY1/h;->b:F

    iget v0, v0, LY1/h;->c:F

    add-float/2addr p1, v0

    float-to-int p1, p1

    invoke-virtual {p0, p1}, LT1/G;->setMaxFrame(I)V

    return-void

    .line 8
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot find marker with name "

    const-string v2, "."

    .line 9
    invoke-static {v1, p1, v2}, LA/i;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMaxProgress(F)V
    .locals 2

    .line 1
    iget-object v0, p0, LT1/G;->e:LT1/i;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, LT1/G;->p:Ljava/util/ArrayList;

    .line 6
    .line 7
    new-instance v1, LT1/C;

    .line 8
    .line 9
    invoke-direct {v1, p0, p1}, LT1/C;-><init>(LT1/G;F)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-virtual {v0}, LT1/i;->getStartFrame()F

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iget-object v1, p0, LT1/G;->e:LT1/i;

    .line 21
    .line 22
    invoke-virtual {v1}, LT1/i;->getEndFrame()F

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-static {v0, v1, p1}, Lf2/g;->lerp(FFF)F

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    float-to-int p1, p1

    .line 31
    invoke-virtual {p0, p1}, LT1/G;->setMaxFrame(I)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public setMinAndMaxFrame(II)V
    .locals 2

    .line 14
    iget-object v0, p0, LT1/G;->e:LT1/i;

    if-nez v0, :cond_0

    .line 15
    iget-object v0, p0, LT1/G;->p:Ljava/util/ArrayList;

    new-instance v1, LT1/s;

    invoke-direct {v1, p0, p1, p2}, LT1/s;-><init>(LT1/G;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    int-to-float p1, p1

    int-to-float p2, p2

    const v0, 0x3f7d70a4    # 0.99f

    add-float/2addr p2, v0

    .line 16
    iget-object v0, p0, LT1/G;->f:Lf2/e;

    invoke-virtual {v0, p1, p2}, Lf2/e;->setMinAndMaxFrames(FF)V

    return-void
.end method

.method public setMinAndMaxFrame(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, LT1/G;->e:LT1/i;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, LT1/G;->p:Ljava/util/ArrayList;

    new-instance v1, LT1/r;

    invoke-direct {v1, p0, p1}, LT1/r;-><init>(LT1/G;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, LT1/i;->getMarker(Ljava/lang/String;)LY1/h;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    iget p1, v0, LY1/h;->b:F

    float-to-int p1, p1

    .line 5
    iget v0, v0, LY1/h;->c:F

    float-to-int v0, v0

    add-int/2addr v0, p1

    invoke-virtual {p0, p1, v0}, LT1/G;->setMinAndMaxFrame(II)V

    return-void

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot find marker with name "

    const-string v2, "."

    .line 7
    invoke-static {v1, p1, v2}, LA/i;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMinFrame(I)V
    .locals 2

    .line 1
    iget-object v0, p0, LT1/G;->e:LT1/i;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, LT1/G;->p:Ljava/util/ArrayList;

    new-instance v1, LT1/z;

    invoke-direct {v1, p0, p1}, LT1/z;-><init>(LT1/G;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, LT1/G;->f:Lf2/e;

    invoke-virtual {v0, p1}, Lf2/e;->setMinFrame(I)V

    return-void
.end method

.method public setMinFrame(Ljava/lang/String;)V
    .locals 3

    .line 4
    iget-object v0, p0, LT1/G;->e:LT1/i;

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, LT1/G;->p:Ljava/util/ArrayList;

    new-instance v1, LT1/D;

    invoke-direct {v1, p0, p1}, LT1/D;-><init>(LT1/G;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 6
    :cond_0
    invoke-virtual {v0, p1}, LT1/i;->getMarker(Ljava/lang/String;)LY1/h;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    iget p1, v0, LY1/h;->b:F

    float-to-int p1, p1

    invoke-virtual {p0, p1}, LT1/G;->setMinFrame(I)V

    return-void

    .line 8
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot find marker with name "

    const-string v2, "."

    .line 9
    invoke-static {v1, p1, v2}, LA/i;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMinProgress(F)V
    .locals 2

    .line 1
    iget-object v0, p0, LT1/G;->e:LT1/i;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, LT1/G;->p:Ljava/util/ArrayList;

    .line 6
    .line 7
    new-instance v1, LT1/A;

    .line 8
    .line 9
    invoke-direct {v1, p0, p1}, LT1/A;-><init>(LT1/G;F)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-virtual {v0}, LT1/i;->getStartFrame()F

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iget-object v1, p0, LT1/G;->e:LT1/i;

    .line 21
    .line 22
    invoke-virtual {v1}, LT1/i;->getEndFrame()F

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-static {v0, v1, p1}, Lf2/g;->lerp(FFF)F

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    float-to-int p1, p1

    .line 31
    invoke-virtual {p0, p1}, LT1/G;->setMinFrame(I)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public setPerformanceTrackingEnabled(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, LT1/G;->x:Z

    .line 2
    .line 3
    iget-object v0, p0, LT1/G;->e:LT1/i;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1}, LT1/i;->setPerformanceTrackingEnabled(Z)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setProgress(F)V
    .locals 3

    .line 1
    iget-object v0, p0, LT1/G;->e:LT1/i;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, LT1/G;->p:Ljava/util/ArrayList;

    .line 6
    .line 7
    new-instance v1, LT1/u;

    .line 8
    .line 9
    invoke-direct {v1, p0, p1}, LT1/u;-><init>(LT1/G;F)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    const-string v0, "Drawable#setProgress"

    .line 17
    .line 18
    invoke-static {v0}, LT1/c;->beginSection(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, LT1/G;->e:LT1/i;

    .line 22
    .line 23
    invoke-virtual {v1}, LT1/i;->getStartFrame()F

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    iget-object v2, p0, LT1/G;->e:LT1/i;

    .line 28
    .line 29
    invoke-virtual {v2}, LT1/i;->getEndFrame()F

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    invoke-static {v1, v2, p1}, Lf2/g;->lerp(FFF)F

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    iget-object v1, p0, LT1/G;->f:Lf2/e;

    .line 38
    .line 39
    invoke-virtual {v1, p1}, Lf2/e;->setFrame(F)V

    .line 40
    .line 41
    .line 42
    invoke-static {v0}, LT1/c;->endSection(Ljava/lang/String;)F

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public setRepeatCount(I)V
    .locals 1

    .line 1
    iget-object v0, p0, LT1/G;->f:Lf2/e;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setRepeatMode(I)V
    .locals 1

    .line 1
    iget-object v0, p0, LT1/G;->f:Lf2/e;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lf2/e;->setRepeatMode(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setSafeMode(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, LT1/G;->n:Z

    .line 2
    .line 3
    return-void
.end method

.method public setScale(F)V
    .locals 0

    .line 1
    iput p1, p0, LT1/G;->j:F

    .line 2
    .line 3
    invoke-virtual {p0}, LT1/G;->b()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setSpeed(F)V
    .locals 1

    .line 1
    iget-object v0, p0, LT1/G;->f:Lf2/e;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lf2/e;->setSpeed(F)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setTextDelegate(LT1/S;)V
    .locals 0

    .line 1
    return-void
.end method

.method public start()V
    .locals 0

    .line 1
    invoke-virtual {p0}, LT1/G;->playAnimation()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public stop()V
    .locals 0

    .line 1
    invoke-virtual {p0}, LT1/G;->endAnimation()V

    .line 2
    .line 3
    .line 4
    return-void
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
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-interface {p1, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public useTextGlyphs()Z
    .locals 1

    .line 1
    iget-object v0, p0, LT1/G;->e:LT1/i;

    .line 2
    .line 3
    invoke-virtual {v0}, LT1/i;->getCharacters()Lp/r;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lp/r;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-lez v0, :cond_0

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
