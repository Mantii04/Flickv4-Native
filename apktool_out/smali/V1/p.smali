.class public final LV1/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LW1/a;
.implements LV1/l;
.implements LV1/n;


# instance fields
.field public final a:Landroid/graphics/Path;

.field public final b:Landroid/graphics/RectF;

.field public final c:Ljava/lang/String;

.field public final d:Z

.field public final e:LT1/G;

.field public final f:LW1/f;

.field public final g:LW1/f;

.field public final h:LW1/f;

.field public final i:LV1/c;

.field public j:Z


# direct methods
.method public constructor <init>(LT1/G;Lb2/b;La2/i;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Path;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, LV1/p;->a:Landroid/graphics/Path;

    .line 10
    .line 11
    new-instance v0, Landroid/graphics/RectF;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, LV1/p;->b:Landroid/graphics/RectF;

    .line 17
    .line 18
    new-instance v0, LV1/c;

    .line 19
    .line 20
    invoke-direct {v0}, LV1/c;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, LV1/p;->i:LV1/c;

    .line 24
    .line 25
    invoke-virtual {p3}, La2/i;->getName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, LV1/p;->c:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {p3}, La2/i;->isHidden()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    iput-boolean v0, p0, LV1/p;->d:Z

    .line 36
    .line 37
    iput-object p1, p0, LV1/p;->e:LT1/G;

    .line 38
    .line 39
    invoke-virtual {p3}, La2/i;->getPosition()LZ1/m;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-interface {p1}, LZ1/m;->createAnimation()LW1/f;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    iput-object p1, p0, LV1/p;->f:LW1/f;

    .line 48
    .line 49
    invoke-virtual {p3}, La2/i;->getSize()LZ1/f;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0}, LZ1/f;->createAnimation()LW1/f;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iput-object v0, p0, LV1/p;->g:LW1/f;

    .line 58
    .line 59
    invoke-virtual {p3}, La2/i;->getCornerRadius()LZ1/b;

    .line 60
    .line 61
    .line 62
    move-result-object p3

    .line 63
    invoke-virtual {p3}, LZ1/b;->createAnimation()LW1/f;

    .line 64
    .line 65
    .line 66
    move-result-object p3

    .line 67
    iput-object p3, p0, LV1/p;->h:LW1/f;

    .line 68
    .line 69
    invoke-virtual {p2, p1}, Lb2/b;->addAnimation(LW1/f;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2, v0}, Lb2/b;->addAnimation(LW1/f;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2, p3}, Lb2/b;->addAnimation(LW1/f;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, p0}, LW1/f;->addUpdateListener(LW1/a;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, p0}, LW1/f;->addUpdateListener(LW1/a;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p3, p0}, LW1/f;->addUpdateListener(LW1/a;)V

    .line 85
    .line 86
    .line 87
    return-void
.end method


# virtual methods
.method public addValueCallback(Ljava/lang/Object;Lg2/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lg2/c;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, LT1/K;->d:Landroid/graphics/PointF;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, LV1/p;->g:LW1/f;

    .line 6
    .line 7
    invoke-virtual {p1, p2}, LW1/f;->setValueCallback(Lg2/c;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    sget-object v0, LT1/K;->f:Landroid/graphics/PointF;

    .line 12
    .line 13
    if-ne p1, v0, :cond_1

    .line 14
    .line 15
    iget-object p1, p0, LV1/p;->f:LW1/f;

    .line 16
    .line 17
    invoke-virtual {p1, p2}, LW1/f;->setValueCallback(Lg2/c;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    sget-object v0, LT1/K;->e:Ljava/lang/Float;

    .line 22
    .line 23
    if-ne p1, v0, :cond_2

    .line 24
    .line 25
    iget-object p1, p0, LV1/p;->h:LW1/f;

    .line 26
    .line 27
    invoke-virtual {p1, p2}, LW1/f;->setValueCallback(Lg2/c;)V

    .line 28
    .line 29
    .line 30
    :cond_2
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, LV1/p;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-boolean v1, v0, LV1/p;->j:Z

    .line 4
    .line 5
    iget-object v2, v0, LV1/p;->a:Landroid/graphics/Path;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v2

    .line 10
    :cond_0
    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 11
    .line 12
    .line 13
    iget-boolean v1, v0, LV1/p;->d:Z

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    iput-boolean v3, v0, LV1/p;->j:Z

    .line 19
    .line 20
    return-object v2

    .line 21
    :cond_1
    iget-object v1, v0, LV1/p;->g:LW1/f;

    .line 22
    .line 23
    invoke-virtual {v1}, LW1/f;->getValue()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Landroid/graphics/PointF;

    .line 28
    .line 29
    iget v4, v1, Landroid/graphics/PointF;->x:F

    .line 30
    .line 31
    const/high16 v5, 0x40000000    # 2.0f

    .line 32
    .line 33
    div-float/2addr v4, v5

    .line 34
    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 35
    .line 36
    div-float/2addr v1, v5

    .line 37
    const/4 v6, 0x0

    .line 38
    iget-object v7, v0, LV1/p;->h:LW1/f;

    .line 39
    .line 40
    if-nez v7, :cond_2

    .line 41
    .line 42
    move v7, v6

    .line 43
    goto :goto_0

    .line 44
    :cond_2
    check-cast v7, LW1/h;

    .line 45
    .line 46
    invoke-virtual {v7}, LW1/h;->getFloatValue()F

    .line 47
    .line 48
    .line 49
    move-result v7

    .line 50
    :goto_0
    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    .line 51
    .line 52
    .line 53
    move-result v8

    .line 54
    cmpl-float v9, v7, v8

    .line 55
    .line 56
    if-lez v9, :cond_3

    .line 57
    .line 58
    move v7, v8

    .line 59
    :cond_3
    iget-object v8, v0, LV1/p;->f:LW1/f;

    .line 60
    .line 61
    invoke-virtual {v8}, LW1/f;->getValue()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v8

    .line 65
    check-cast v8, Landroid/graphics/PointF;

    .line 66
    .line 67
    iget v9, v8, Landroid/graphics/PointF;->x:F

    .line 68
    .line 69
    add-float/2addr v9, v4

    .line 70
    iget v10, v8, Landroid/graphics/PointF;->y:F

    .line 71
    .line 72
    sub-float/2addr v10, v1

    .line 73
    add-float/2addr v10, v7

    .line 74
    invoke-virtual {v2, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 75
    .line 76
    .line 77
    iget v9, v8, Landroid/graphics/PointF;->x:F

    .line 78
    .line 79
    add-float/2addr v9, v4

    .line 80
    iget v10, v8, Landroid/graphics/PointF;->y:F

    .line 81
    .line 82
    add-float/2addr v10, v1

    .line 83
    sub-float/2addr v10, v7

    .line 84
    invoke-virtual {v2, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 85
    .line 86
    .line 87
    cmpl-float v9, v7, v6

    .line 88
    .line 89
    iget-object v10, v0, LV1/p;->b:Landroid/graphics/RectF;

    .line 90
    .line 91
    const/4 v11, 0x0

    .line 92
    const/high16 v12, 0x42b40000    # 90.0f

    .line 93
    .line 94
    if-lez v9, :cond_4

    .line 95
    .line 96
    iget v13, v8, Landroid/graphics/PointF;->x:F

    .line 97
    .line 98
    add-float/2addr v13, v4

    .line 99
    mul-float v14, v7, v5

    .line 100
    .line 101
    sub-float v15, v13, v14

    .line 102
    .line 103
    move/from16 v16, v5

    .line 104
    .line 105
    iget v5, v8, Landroid/graphics/PointF;->y:F

    .line 106
    .line 107
    add-float/2addr v5, v1

    .line 108
    sub-float v14, v5, v14

    .line 109
    .line 110
    invoke-virtual {v10, v15, v14, v13, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v2, v10, v6, v12, v11}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 114
    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_4
    move/from16 v16, v5

    .line 118
    .line 119
    :goto_1
    iget v5, v8, Landroid/graphics/PointF;->x:F

    .line 120
    .line 121
    sub-float/2addr v5, v4

    .line 122
    add-float/2addr v5, v7

    .line 123
    iget v6, v8, Landroid/graphics/PointF;->y:F

    .line 124
    .line 125
    add-float/2addr v6, v1

    .line 126
    invoke-virtual {v2, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 127
    .line 128
    .line 129
    if-lez v9, :cond_5

    .line 130
    .line 131
    iget v5, v8, Landroid/graphics/PointF;->x:F

    .line 132
    .line 133
    sub-float/2addr v5, v4

    .line 134
    iget v6, v8, Landroid/graphics/PointF;->y:F

    .line 135
    .line 136
    add-float/2addr v6, v1

    .line 137
    mul-float v13, v7, v16

    .line 138
    .line 139
    sub-float v14, v6, v13

    .line 140
    .line 141
    add-float/2addr v13, v5

    .line 142
    invoke-virtual {v10, v5, v14, v13, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v2, v10, v12, v12, v11}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 146
    .line 147
    .line 148
    :cond_5
    iget v5, v8, Landroid/graphics/PointF;->x:F

    .line 149
    .line 150
    sub-float/2addr v5, v4

    .line 151
    iget v6, v8, Landroid/graphics/PointF;->y:F

    .line 152
    .line 153
    sub-float/2addr v6, v1

    .line 154
    add-float/2addr v6, v7

    .line 155
    invoke-virtual {v2, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 156
    .line 157
    .line 158
    if-lez v9, :cond_6

    .line 159
    .line 160
    iget v5, v8, Landroid/graphics/PointF;->x:F

    .line 161
    .line 162
    sub-float/2addr v5, v4

    .line 163
    iget v6, v8, Landroid/graphics/PointF;->y:F

    .line 164
    .line 165
    sub-float/2addr v6, v1

    .line 166
    mul-float v13, v7, v16

    .line 167
    .line 168
    add-float v14, v5, v13

    .line 169
    .line 170
    add-float/2addr v13, v6

    .line 171
    invoke-virtual {v10, v5, v6, v14, v13}, Landroid/graphics/RectF;->set(FFFF)V

    .line 172
    .line 173
    .line 174
    const/high16 v5, 0x43340000    # 180.0f

    .line 175
    .line 176
    invoke-virtual {v2, v10, v5, v12, v11}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 177
    .line 178
    .line 179
    :cond_6
    iget v5, v8, Landroid/graphics/PointF;->x:F

    .line 180
    .line 181
    add-float/2addr v5, v4

    .line 182
    sub-float/2addr v5, v7

    .line 183
    iget v6, v8, Landroid/graphics/PointF;->y:F

    .line 184
    .line 185
    sub-float/2addr v6, v1

    .line 186
    invoke-virtual {v2, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 187
    .line 188
    .line 189
    if-lez v9, :cond_7

    .line 190
    .line 191
    iget v5, v8, Landroid/graphics/PointF;->x:F

    .line 192
    .line 193
    add-float/2addr v5, v4

    .line 194
    mul-float v7, v7, v16

    .line 195
    .line 196
    sub-float v4, v5, v7

    .line 197
    .line 198
    iget v6, v8, Landroid/graphics/PointF;->y:F

    .line 199
    .line 200
    sub-float/2addr v6, v1

    .line 201
    add-float/2addr v7, v6

    .line 202
    invoke-virtual {v10, v4, v6, v5, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 203
    .line 204
    .line 205
    const/high16 v1, 0x43870000    # 270.0f

    .line 206
    .line 207
    invoke-virtual {v2, v10, v1, v12, v11}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 208
    .line 209
    .line 210
    :cond_7
    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 211
    .line 212
    .line 213
    iget-object v1, v0, LV1/p;->i:LV1/c;

    .line 214
    .line 215
    invoke-virtual {v1, v2}, LV1/c;->apply(Landroid/graphics/Path;)V

    .line 216
    .line 217
    .line 218
    iput-boolean v3, v0, LV1/p;->j:Z

    .line 219
    .line 220
    return-object v2
.end method

.method public onValueChanged()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, LV1/p;->j:Z

    .line 3
    .line 4
    iget-object v0, p0, LV1/p;->e:LT1/G;

    .line 5
    .line 6
    invoke-virtual {v0}, LT1/G;->invalidateSelf()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public resolveKeyPath(LY1/e;ILjava/util/List;LY1/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LY1/e;",
            "I",
            "Ljava/util/List<",
            "LY1/e;",
            ">;",
            "LY1/e;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {p1, p2, p3, p4, p0}, Lf2/g;->resolveKeyPath(LY1/e;ILjava/util/List;LY1/e;LV1/l;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setContents(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LV1/d;",
            ">;",
            "Ljava/util/List<",
            "LV1/d;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 p2, 0x0

    .line 2
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-ge p2, v0, :cond_1

    .line 7
    .line 8
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, LV1/d;

    .line 13
    .line 14
    instance-of v1, v0, LV1/t;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    check-cast v0, LV1/t;

    .line 19
    .line 20
    iget-object v1, v0, LV1/t;->c:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    .line 21
    .line 22
    sget-object v2, Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;->b:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    .line 23
    .line 24
    if-ne v1, v2, :cond_0

    .line 25
    .line 26
    iget-object v1, p0, LV1/p;->i:LV1/c;

    .line 27
    .line 28
    iget-object v1, v1, LV1/c;->a:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p0}, LV1/t;->a(LW1/a;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    add-int/lit8 p2, p2, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    return-void
.end method
