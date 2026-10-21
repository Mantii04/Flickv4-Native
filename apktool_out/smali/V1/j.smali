.class public final LV1/j;
.super LV1/b;
.source "SourceFile"


# instance fields
.field public final o:Ljava/lang/String;

.field public final p:Z

.field public final q:Lp/n;

.field public final r:Lp/n;

.field public final s:Landroid/graphics/RectF;

.field public final t:Lcom/airbnb/lottie/model/content/GradientType;

.field public final u:I

.field public final v:LW1/f;

.field public final w:LW1/f;

.field public final x:LW1/f;

.field public y:LW1/u;


# direct methods
.method public constructor <init>(LT1/G;Lb2/b;La2/e;)V
    .locals 11

    .line 1
    invoke-virtual {p3}, La2/e;->getCapType()Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;->toPaintCap()Landroid/graphics/Paint$Cap;

    .line 6
    .line 7
    .line 8
    move-result-object v4

    .line 9
    invoke-virtual {p3}, La2/e;->getJoinType()Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;->toPaintJoin()Landroid/graphics/Paint$Join;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    invoke-virtual {p3}, La2/e;->getMiterLimit()F

    .line 18
    .line 19
    .line 20
    move-result v6

    .line 21
    invoke-virtual {p3}, La2/e;->getOpacity()LZ1/d;

    .line 22
    .line 23
    .line 24
    move-result-object v7

    .line 25
    invoke-virtual {p3}, La2/e;->getWidth()LZ1/b;

    .line 26
    .line 27
    .line 28
    move-result-object v8

    .line 29
    invoke-virtual {p3}, La2/e;->getLineDashPattern()Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v9

    .line 33
    invoke-virtual {p3}, La2/e;->getDashOffset()LZ1/b;

    .line 34
    .line 35
    .line 36
    move-result-object v10

    .line 37
    move-object v1, p0

    .line 38
    move-object v2, p1

    .line 39
    move-object v3, p2

    .line 40
    invoke-direct/range {v1 .. v10}, LV1/b;-><init>(LT1/G;Lb2/b;Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;FLZ1/d;LZ1/b;Ljava/util/List;LZ1/b;)V

    .line 41
    .line 42
    .line 43
    new-instance p1, Lp/n;

    .line 44
    .line 45
    invoke-direct {p1}, Lp/n;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object p1, v1, LV1/j;->q:Lp/n;

    .line 49
    .line 50
    new-instance p1, Lp/n;

    .line 51
    .line 52
    invoke-direct {p1}, Lp/n;-><init>()V

    .line 53
    .line 54
    .line 55
    iput-object p1, v1, LV1/j;->r:Lp/n;

    .line 56
    .line 57
    new-instance p1, Landroid/graphics/RectF;

    .line 58
    .line 59
    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    .line 60
    .line 61
    .line 62
    iput-object p1, v1, LV1/j;->s:Landroid/graphics/RectF;

    .line 63
    .line 64
    invoke-virtual {p3}, La2/e;->getName()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    iput-object p1, v1, LV1/j;->o:Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {p3}, La2/e;->getGradientType()Lcom/airbnb/lottie/model/content/GradientType;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    iput-object p1, v1, LV1/j;->t:Lcom/airbnb/lottie/model/content/GradientType;

    .line 75
    .line 76
    invoke-virtual {p3}, La2/e;->isHidden()Z

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    iput-boolean p1, v1, LV1/j;->p:Z

    .line 81
    .line 82
    invoke-virtual {v2}, LT1/G;->getComposition()LT1/i;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {p1}, LT1/i;->getDuration()F

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    const/high16 p2, 0x42000000    # 32.0f

    .line 91
    .line 92
    div-float/2addr p1, p2

    .line 93
    float-to-int p1, p1

    .line 94
    iput p1, v1, LV1/j;->u:I

    .line 95
    .line 96
    invoke-virtual {p3}, La2/e;->getGradientColor()LZ1/c;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-virtual {p1}, LZ1/c;->createAnimation()LW1/f;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    iput-object p1, v1, LV1/j;->v:LW1/f;

    .line 105
    .line 106
    invoke-virtual {p1, p0}, LW1/f;->addUpdateListener(LW1/a;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v3, p1}, Lb2/b;->addAnimation(LW1/f;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p3}, La2/e;->getStartPoint()LZ1/f;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-virtual {p1}, LZ1/f;->createAnimation()LW1/f;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    iput-object p1, v1, LV1/j;->w:LW1/f;

    .line 121
    .line 122
    invoke-virtual {p1, p0}, LW1/f;->addUpdateListener(LW1/a;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v3, p1}, Lb2/b;->addAnimation(LW1/f;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p3}, La2/e;->getEndPoint()LZ1/f;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    invoke-virtual {p1}, LZ1/f;->createAnimation()LW1/f;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    iput-object p1, v1, LV1/j;->x:LW1/f;

    .line 137
    .line 138
    invoke-virtual {p1, p0}, LW1/f;->addUpdateListener(LW1/a;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v3, p1}, Lb2/b;->addAnimation(LW1/f;)V

    .line 142
    .line 143
    .line 144
    return-void
.end method


# virtual methods
.method public final a([I)[I
    .locals 4

    .line 1
    iget-object v0, p0, LV1/j;->y:LW1/u;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, LW1/u;->getValue()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, [Ljava/lang/Integer;

    .line 10
    .line 11
    array-length v1, p1

    .line 12
    array-length v2, v0

    .line 13
    const/4 v3, 0x0

    .line 14
    if-ne v1, v2, :cond_0

    .line 15
    .line 16
    :goto_0
    array-length v1, p1

    .line 17
    if-ge v3, v1, :cond_1

    .line 18
    .line 19
    aget-object v1, v0, v3

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    aput v1, p1, v3

    .line 26
    .line 27
    add-int/lit8 v3, v3, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    array-length p1, v0

    .line 31
    new-array p1, p1, [I

    .line 32
    .line 33
    :goto_1
    array-length v1, v0

    .line 34
    if-ge v3, v1, :cond_1

    .line 35
    .line 36
    aget-object v1, v0, v3

    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    aput v1, p1, v3

    .line 43
    .line 44
    add-int/lit8 v3, v3, 0x1

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    return-object p1
.end method

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
    invoke-super {p0, p1, p2}, LV1/b;->addValueCallback(Ljava/lang/Object;Lg2/c;)V

    .line 2
    .line 3
    .line 4
    sget-object v0, LT1/K;->z:[Ljava/lang/Integer;

    .line 5
    .line 6
    if-ne p1, v0, :cond_2

    .line 7
    .line 8
    iget-object p1, p0, LV1/j;->y:LW1/u;

    .line 9
    .line 10
    iget-object v0, p0, LV1/b;->f:Lb2/b;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lb2/b;->removeAnimation(LW1/f;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    if-nez p2, :cond_1

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    iput-object p1, p0, LV1/j;->y:LW1/u;

    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    new-instance p1, LW1/u;

    .line 24
    .line 25
    invoke-direct {p1, p2}, LW1/u;-><init>(Lg2/c;)V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, LV1/j;->y:LW1/u;

    .line 29
    .line 30
    invoke-virtual {p1, p0}, LW1/f;->addUpdateListener(LW1/a;)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, LV1/j;->y:LW1/u;

    .line 34
    .line 35
    invoke-virtual {v0, p1}, Lb2/b;->addAnimation(LW1/f;)V

    .line 36
    .line 37
    .line 38
    :cond_2
    return-void
.end method

.method public final b()I
    .locals 4

    .line 1
    iget-object v0, p0, LV1/j;->w:LW1/f;

    .line 2
    .line 3
    invoke-virtual {v0}, LW1/f;->getProgress()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget v1, p0, LV1/j;->u:I

    .line 8
    .line 9
    int-to-float v2, v1

    .line 10
    mul-float/2addr v0, v2

    .line 11
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget-object v2, p0, LV1/j;->x:LW1/f;

    .line 16
    .line 17
    invoke-virtual {v2}, LW1/f;->getProgress()F

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    int-to-float v3, v1

    .line 22
    mul-float/2addr v2, v3

    .line 23
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    iget-object v3, p0, LV1/j;->v:LW1/f;

    .line 28
    .line 29
    invoke-virtual {v3}, LW1/f;->getProgress()F

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    int-to-float v1, v1

    .line 34
    mul-float/2addr v3, v1

    .line 35
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    const/16 v3, 0x20f

    .line 42
    .line 43
    mul-int/2addr v3, v0

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const/16 v3, 0x11

    .line 46
    .line 47
    :goto_0
    if-eqz v2, :cond_1

    .line 48
    .line 49
    mul-int/lit8 v3, v3, 0x1f

    .line 50
    .line 51
    mul-int/2addr v3, v2

    .line 52
    :cond_1
    if-eqz v1, :cond_2

    .line 53
    .line 54
    mul-int/lit8 v3, v3, 0x1f

    .line 55
    .line 56
    mul-int/2addr v3, v1

    .line 57
    :cond_2
    return v3
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    iget-boolean v2, v0, LV1/j;->p:Z

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v2, v0, LV1/j;->s:Landroid/graphics/RectF;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-virtual {v0, v2, v1, v3}, LV1/b;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 14
    .line 15
    .line 16
    sget-object v2, Lcom/airbnb/lottie/model/content/GradientType;->b:Lcom/airbnb/lottie/model/content/GradientType;

    .line 17
    .line 18
    iget-object v3, v0, LV1/j;->t:Lcom/airbnb/lottie/model/content/GradientType;

    .line 19
    .line 20
    iget-object v4, v0, LV1/j;->v:LW1/f;

    .line 21
    .line 22
    iget-object v5, v0, LV1/j;->x:LW1/f;

    .line 23
    .line 24
    iget-object v6, v0, LV1/j;->w:LW1/f;

    .line 25
    .line 26
    if-ne v3, v2, :cond_2

    .line 27
    .line 28
    invoke-virtual {v0}, LV1/j;->b()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    int-to-long v2, v2

    .line 33
    iget-object v7, v0, LV1/j;->q:Lp/n;

    .line 34
    .line 35
    invoke-virtual {v7, v2, v3}, Lp/n;->get(J)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v8

    .line 39
    check-cast v8, Landroid/graphics/LinearGradient;

    .line 40
    .line 41
    if-eqz v8, :cond_1

    .line 42
    .line 43
    goto/16 :goto_1

    .line 44
    .line 45
    :cond_1
    invoke-virtual {v6}, LW1/f;->getValue()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    check-cast v6, Landroid/graphics/PointF;

    .line 50
    .line 51
    invoke-virtual {v5}, LW1/f;->getValue()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    check-cast v5, Landroid/graphics/PointF;

    .line 56
    .line 57
    invoke-virtual {v4}, LW1/f;->getValue()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    check-cast v4, La2/c;

    .line 62
    .line 63
    invoke-virtual {v4}, La2/c;->getColors()[I

    .line 64
    .line 65
    .line 66
    move-result-object v8

    .line 67
    invoke-virtual {v0, v8}, LV1/j;->a([I)[I

    .line 68
    .line 69
    .line 70
    move-result-object v14

    .line 71
    invoke-virtual {v4}, La2/c;->getPositions()[F

    .line 72
    .line 73
    .line 74
    move-result-object v15

    .line 75
    iget v10, v6, Landroid/graphics/PointF;->x:F

    .line 76
    .line 77
    iget v11, v6, Landroid/graphics/PointF;->y:F

    .line 78
    .line 79
    iget v12, v5, Landroid/graphics/PointF;->x:F

    .line 80
    .line 81
    iget v13, v5, Landroid/graphics/PointF;->y:F

    .line 82
    .line 83
    new-instance v9, Landroid/graphics/LinearGradient;

    .line 84
    .line 85
    sget-object v16, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 86
    .line 87
    invoke-direct/range {v9 .. v16}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v7, v2, v3, v9}, Lp/n;->put(JLjava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    :goto_0
    move-object v8, v9

    .line 94
    goto :goto_1

    .line 95
    :cond_2
    invoke-virtual {v0}, LV1/j;->b()I

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    int-to-long v2, v2

    .line 100
    iget-object v7, v0, LV1/j;->r:Lp/n;

    .line 101
    .line 102
    invoke-virtual {v7, v2, v3}, Lp/n;->get(J)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v8

    .line 106
    check-cast v8, Landroid/graphics/RadialGradient;

    .line 107
    .line 108
    if-eqz v8, :cond_3

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_3
    invoke-virtual {v6}, LW1/f;->getValue()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v6

    .line 115
    check-cast v6, Landroid/graphics/PointF;

    .line 116
    .line 117
    invoke-virtual {v5}, LW1/f;->getValue()Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v5

    .line 121
    check-cast v5, Landroid/graphics/PointF;

    .line 122
    .line 123
    invoke-virtual {v4}, LW1/f;->getValue()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    check-cast v4, La2/c;

    .line 128
    .line 129
    invoke-virtual {v4}, La2/c;->getColors()[I

    .line 130
    .line 131
    .line 132
    move-result-object v8

    .line 133
    invoke-virtual {v0, v8}, LV1/j;->a([I)[I

    .line 134
    .line 135
    .line 136
    move-result-object v13

    .line 137
    invoke-virtual {v4}, La2/c;->getPositions()[F

    .line 138
    .line 139
    .line 140
    move-result-object v14

    .line 141
    iget v10, v6, Landroid/graphics/PointF;->x:F

    .line 142
    .line 143
    iget v11, v6, Landroid/graphics/PointF;->y:F

    .line 144
    .line 145
    iget v4, v5, Landroid/graphics/PointF;->x:F

    .line 146
    .line 147
    iget v5, v5, Landroid/graphics/PointF;->y:F

    .line 148
    .line 149
    sub-float/2addr v4, v10

    .line 150
    float-to-double v8, v4

    .line 151
    sub-float/2addr v5, v11

    .line 152
    float-to-double v4, v5

    .line 153
    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    .line 154
    .line 155
    .line 156
    move-result-wide v4

    .line 157
    double-to-float v12, v4

    .line 158
    new-instance v9, Landroid/graphics/RadialGradient;

    .line 159
    .line 160
    sget-object v15, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 161
    .line 162
    invoke-direct/range {v9 .. v15}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v7, v2, v3, v9}, Lp/n;->put(JLjava/lang/Object;)V

    .line 166
    .line 167
    .line 168
    goto :goto_0

    .line 169
    :goto_1
    invoke-virtual {v8, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 170
    .line 171
    .line 172
    iget-object v2, v0, LV1/b;->i:LU1/a;

    .line 173
    .line 174
    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 175
    .line 176
    .line 177
    invoke-super/range {p0 .. p3}, LV1/b;->draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 178
    .line 179
    .line 180
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, LV1/j;->o:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
