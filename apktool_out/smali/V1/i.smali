.class public final LV1/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LV1/f;
.implements LW1/a;
.implements LV1/l;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Z

.field public final c:Lb2/b;

.field public final d:Lp/n;

.field public final e:Lp/n;

.field public final f:Landroid/graphics/Path;

.field public final g:LU1/a;

.field public final h:Landroid/graphics/RectF;

.field public final i:Ljava/util/ArrayList;

.field public final j:Lcom/airbnb/lottie/model/content/GradientType;

.field public final k:LW1/f;

.field public final l:LW1/f;

.field public final m:LW1/f;

.field public final n:LW1/f;

.field public o:LW1/u;

.field public p:LW1/u;

.field public final q:LT1/G;

.field public final r:I


# direct methods
.method public constructor <init>(LT1/G;Lb2/b;La2/d;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lp/n;

    .line 5
    .line 6
    invoke-direct {v0}, Lp/n;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, LV1/i;->d:Lp/n;

    .line 10
    .line 11
    new-instance v0, Lp/n;

    .line 12
    .line 13
    invoke-direct {v0}, Lp/n;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, LV1/i;->e:Lp/n;

    .line 17
    .line 18
    new-instance v0, Landroid/graphics/Path;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, LV1/i;->f:Landroid/graphics/Path;

    .line 24
    .line 25
    new-instance v1, LU1/a;

    .line 26
    .line 27
    const/4 v2, 0x1

    .line 28
    invoke-direct {v1, v2}, LU1/a;-><init>(I)V

    .line 29
    .line 30
    .line 31
    iput-object v1, p0, LV1/i;->g:LU1/a;

    .line 32
    .line 33
    new-instance v1, Landroid/graphics/RectF;

    .line 34
    .line 35
    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object v1, p0, LV1/i;->h:Landroid/graphics/RectF;

    .line 39
    .line 40
    new-instance v1, Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object v1, p0, LV1/i;->i:Ljava/util/ArrayList;

    .line 46
    .line 47
    iput-object p2, p0, LV1/i;->c:Lb2/b;

    .line 48
    .line 49
    invoke-virtual {p3}, La2/d;->getName()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    iput-object v1, p0, LV1/i;->a:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {p3}, La2/d;->isHidden()Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    iput-boolean v1, p0, LV1/i;->b:Z

    .line 60
    .line 61
    iput-object p1, p0, LV1/i;->q:LT1/G;

    .line 62
    .line 63
    invoke-virtual {p3}, La2/d;->getGradientType()Lcom/airbnb/lottie/model/content/GradientType;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    iput-object v1, p0, LV1/i;->j:Lcom/airbnb/lottie/model/content/GradientType;

    .line 68
    .line 69
    invoke-virtual {p3}, La2/d;->getFillType()Landroid/graphics/Path$FillType;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, LT1/G;->getComposition()LT1/i;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {p1}, LT1/i;->getDuration()F

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    const/high16 v0, 0x42000000    # 32.0f

    .line 85
    .line 86
    div-float/2addr p1, v0

    .line 87
    float-to-int p1, p1

    .line 88
    iput p1, p0, LV1/i;->r:I

    .line 89
    .line 90
    invoke-virtual {p3}, La2/d;->getGradientColor()LZ1/c;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-virtual {p1}, LZ1/c;->createAnimation()LW1/f;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    iput-object p1, p0, LV1/i;->k:LW1/f;

    .line 99
    .line 100
    invoke-virtual {p1, p0}, LW1/f;->addUpdateListener(LW1/a;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p2, p1}, Lb2/b;->addAnimation(LW1/f;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p3}, La2/d;->getOpacity()LZ1/d;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-virtual {p1}, LZ1/d;->createAnimation()LW1/f;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    iput-object p1, p0, LV1/i;->l:LW1/f;

    .line 115
    .line 116
    invoke-virtual {p1, p0}, LW1/f;->addUpdateListener(LW1/a;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p2, p1}, Lb2/b;->addAnimation(LW1/f;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p3}, La2/d;->getStartPoint()LZ1/f;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    invoke-virtual {p1}, LZ1/f;->createAnimation()LW1/f;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    iput-object p1, p0, LV1/i;->m:LW1/f;

    .line 131
    .line 132
    invoke-virtual {p1, p0}, LW1/f;->addUpdateListener(LW1/a;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p2, p1}, Lb2/b;->addAnimation(LW1/f;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p3}, La2/d;->getEndPoint()LZ1/f;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    invoke-virtual {p1}, LZ1/f;->createAnimation()LW1/f;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    iput-object p1, p0, LV1/i;->n:LW1/f;

    .line 147
    .line 148
    invoke-virtual {p1, p0}, LW1/f;->addUpdateListener(LW1/a;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p2, p1}, Lb2/b;->addAnimation(LW1/f;)V

    .line 152
    .line 153
    .line 154
    return-void
.end method


# virtual methods
.method public final a([I)[I
    .locals 4

    .line 1
    iget-object v0, p0, LV1/i;->p:LW1/u;

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
    .locals 3
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
    sget-object v0, LT1/K;->a:Landroid/graphics/PointF;

    .line 2
    .line 3
    const/4 v0, 0x4

    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, LV1/i;->l:LW1/f;

    .line 11
    .line 12
    invoke-virtual {p1, p2}, LW1/f;->setValueCallback(Lg2/c;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    sget-object v0, LT1/K;->y:Landroid/graphics/ColorFilter;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    iget-object v2, p0, LV1/i;->c:Lb2/b;

    .line 20
    .line 21
    if-ne p1, v0, :cond_3

    .line 22
    .line 23
    iget-object p1, p0, LV1/i;->o:LW1/u;

    .line 24
    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    invoke-virtual {v2, p1}, Lb2/b;->removeAnimation(LW1/f;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    if-nez p2, :cond_2

    .line 31
    .line 32
    iput-object v1, p0, LV1/i;->o:LW1/u;

    .line 33
    .line 34
    return-void

    .line 35
    :cond_2
    new-instance p1, LW1/u;

    .line 36
    .line 37
    invoke-direct {p1, p2}, LW1/u;-><init>(Lg2/c;)V

    .line 38
    .line 39
    .line 40
    iput-object p1, p0, LV1/i;->o:LW1/u;

    .line 41
    .line 42
    invoke-virtual {p1, p0}, LW1/f;->addUpdateListener(LW1/a;)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, LV1/i;->o:LW1/u;

    .line 46
    .line 47
    invoke-virtual {v2, p1}, Lb2/b;->addAnimation(LW1/f;)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_3
    sget-object v0, LT1/K;->z:[Ljava/lang/Integer;

    .line 52
    .line 53
    if-ne p1, v0, :cond_6

    .line 54
    .line 55
    iget-object p1, p0, LV1/i;->p:LW1/u;

    .line 56
    .line 57
    if-eqz p1, :cond_4

    .line 58
    .line 59
    invoke-virtual {v2, p1}, Lb2/b;->removeAnimation(LW1/f;)V

    .line 60
    .line 61
    .line 62
    :cond_4
    if-nez p2, :cond_5

    .line 63
    .line 64
    iput-object v1, p0, LV1/i;->p:LW1/u;

    .line 65
    .line 66
    return-void

    .line 67
    :cond_5
    new-instance p1, LW1/u;

    .line 68
    .line 69
    invoke-direct {p1, p2}, LW1/u;-><init>(Lg2/c;)V

    .line 70
    .line 71
    .line 72
    iput-object p1, p0, LV1/i;->p:LW1/u;

    .line 73
    .line 74
    invoke-virtual {p1, p0}, LW1/f;->addUpdateListener(LW1/a;)V

    .line 75
    .line 76
    .line 77
    iget-object p1, p0, LV1/i;->p:LW1/u;

    .line 78
    .line 79
    invoke-virtual {v2, p1}, Lb2/b;->addAnimation(LW1/f;)V

    .line 80
    .line 81
    .line 82
    :cond_6
    return-void
.end method

.method public final b()I
    .locals 4

    .line 1
    iget-object v0, p0, LV1/i;->m:LW1/f;

    .line 2
    .line 3
    invoke-virtual {v0}, LW1/f;->getProgress()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget v1, p0, LV1/i;->r:I

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
    iget-object v2, p0, LV1/i;->n:LW1/f;

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
    iget-object v3, p0, LV1/i;->k:LW1/f;

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
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    iget-boolean v2, v0, LV1/i;->b:Z

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const-string v2, "GradientFillContent#draw"

    .line 11
    .line 12
    invoke-static {v2}, LT1/c;->beginSection(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v3, v0, LV1/i;->f:Landroid/graphics/Path;

    .line 16
    .line 17
    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 18
    .line 19
    .line 20
    const/4 v4, 0x0

    .line 21
    move v5, v4

    .line 22
    :goto_0
    iget-object v6, v0, LV1/i;->i:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 25
    .line 26
    .line 27
    move-result v7

    .line 28
    if-ge v5, v7, :cond_1

    .line 29
    .line 30
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v6

    .line 34
    check-cast v6, LV1/n;

    .line 35
    .line 36
    invoke-interface {v6}, LV1/n;->getPath()Landroid/graphics/Path;

    .line 37
    .line 38
    .line 39
    move-result-object v6

    .line 40
    invoke-virtual {v3, v6, v1}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 41
    .line 42
    .line 43
    add-int/lit8 v5, v5, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    iget-object v5, v0, LV1/i;->h:Landroid/graphics/RectF;

    .line 47
    .line 48
    invoke-virtual {v3, v5, v4}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 49
    .line 50
    .line 51
    sget-object v5, Lcom/airbnb/lottie/model/content/GradientType;->b:Lcom/airbnb/lottie/model/content/GradientType;

    .line 52
    .line 53
    iget-object v6, v0, LV1/i;->j:Lcom/airbnb/lottie/model/content/GradientType;

    .line 54
    .line 55
    iget-object v7, v0, LV1/i;->k:LW1/f;

    .line 56
    .line 57
    iget-object v8, v0, LV1/i;->n:LW1/f;

    .line 58
    .line 59
    iget-object v9, v0, LV1/i;->m:LW1/f;

    .line 60
    .line 61
    if-ne v6, v5, :cond_3

    .line 62
    .line 63
    invoke-virtual {v0}, LV1/i;->b()I

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    int-to-long v5, v5

    .line 68
    iget-object v10, v0, LV1/i;->d:Lp/n;

    .line 69
    .line 70
    invoke-virtual {v10, v5, v6}, Lp/n;->get(J)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v11

    .line 74
    check-cast v11, Landroid/graphics/LinearGradient;

    .line 75
    .line 76
    if-eqz v11, :cond_2

    .line 77
    .line 78
    goto/16 :goto_2

    .line 79
    .line 80
    :cond_2
    invoke-virtual {v9}, LW1/f;->getValue()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v9

    .line 84
    check-cast v9, Landroid/graphics/PointF;

    .line 85
    .line 86
    invoke-virtual {v8}, LW1/f;->getValue()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v8

    .line 90
    check-cast v8, Landroid/graphics/PointF;

    .line 91
    .line 92
    invoke-virtual {v7}, LW1/f;->getValue()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v7

    .line 96
    check-cast v7, La2/c;

    .line 97
    .line 98
    invoke-virtual {v7}, La2/c;->getColors()[I

    .line 99
    .line 100
    .line 101
    move-result-object v11

    .line 102
    invoke-virtual {v0, v11}, LV1/i;->a([I)[I

    .line 103
    .line 104
    .line 105
    move-result-object v17

    .line 106
    invoke-virtual {v7}, La2/c;->getPositions()[F

    .line 107
    .line 108
    .line 109
    move-result-object v18

    .line 110
    new-instance v12, Landroid/graphics/LinearGradient;

    .line 111
    .line 112
    iget v13, v9, Landroid/graphics/PointF;->x:F

    .line 113
    .line 114
    iget v14, v9, Landroid/graphics/PointF;->y:F

    .line 115
    .line 116
    iget v15, v8, Landroid/graphics/PointF;->x:F

    .line 117
    .line 118
    iget v7, v8, Landroid/graphics/PointF;->y:F

    .line 119
    .line 120
    sget-object v19, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 121
    .line 122
    move/from16 v16, v7

    .line 123
    .line 124
    invoke-direct/range {v12 .. v19}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v10, v5, v6, v12}, Lp/n;->put(JLjava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    :goto_1
    move-object v11, v12

    .line 131
    goto :goto_2

    .line 132
    :cond_3
    invoke-virtual {v0}, LV1/i;->b()I

    .line 133
    .line 134
    .line 135
    move-result v5

    .line 136
    int-to-long v5, v5

    .line 137
    iget-object v10, v0, LV1/i;->e:Lp/n;

    .line 138
    .line 139
    invoke-virtual {v10, v5, v6}, Lp/n;->get(J)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v11

    .line 143
    check-cast v11, Landroid/graphics/RadialGradient;

    .line 144
    .line 145
    if-eqz v11, :cond_4

    .line 146
    .line 147
    goto :goto_2

    .line 148
    :cond_4
    invoke-virtual {v9}, LW1/f;->getValue()Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v9

    .line 152
    check-cast v9, Landroid/graphics/PointF;

    .line 153
    .line 154
    invoke-virtual {v8}, LW1/f;->getValue()Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v8

    .line 158
    check-cast v8, Landroid/graphics/PointF;

    .line 159
    .line 160
    invoke-virtual {v7}, LW1/f;->getValue()Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v7

    .line 164
    check-cast v7, La2/c;

    .line 165
    .line 166
    invoke-virtual {v7}, La2/c;->getColors()[I

    .line 167
    .line 168
    .line 169
    move-result-object v11

    .line 170
    invoke-virtual {v0, v11}, LV1/i;->a([I)[I

    .line 171
    .line 172
    .line 173
    move-result-object v16

    .line 174
    invoke-virtual {v7}, La2/c;->getPositions()[F

    .line 175
    .line 176
    .line 177
    move-result-object v17

    .line 178
    iget v13, v9, Landroid/graphics/PointF;->x:F

    .line 179
    .line 180
    iget v14, v9, Landroid/graphics/PointF;->y:F

    .line 181
    .line 182
    iget v7, v8, Landroid/graphics/PointF;->x:F

    .line 183
    .line 184
    iget v8, v8, Landroid/graphics/PointF;->y:F

    .line 185
    .line 186
    sub-float/2addr v7, v13

    .line 187
    float-to-double v11, v7

    .line 188
    sub-float/2addr v8, v14

    .line 189
    float-to-double v7, v8

    .line 190
    invoke-static {v11, v12, v7, v8}, Ljava/lang/Math;->hypot(DD)D

    .line 191
    .line 192
    .line 193
    move-result-wide v7

    .line 194
    double-to-float v7, v7

    .line 195
    const/4 v8, 0x0

    .line 196
    cmpg-float v8, v7, v8

    .line 197
    .line 198
    if-gtz v8, :cond_5

    .line 199
    .line 200
    const v7, 0x3a83126f    # 0.001f

    .line 201
    .line 202
    .line 203
    :cond_5
    move v15, v7

    .line 204
    new-instance v12, Landroid/graphics/RadialGradient;

    .line 205
    .line 206
    sget-object v18, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 207
    .line 208
    invoke-direct/range {v12 .. v18}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v10, v5, v6, v12}, Lp/n;->put(JLjava/lang/Object;)V

    .line 212
    .line 213
    .line 214
    goto :goto_1

    .line 215
    :goto_2
    invoke-virtual {v11, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 216
    .line 217
    .line 218
    iget-object v1, v0, LV1/i;->g:LU1/a;

    .line 219
    .line 220
    invoke-virtual {v1, v11}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 221
    .line 222
    .line 223
    iget-object v5, v0, LV1/i;->o:LW1/u;

    .line 224
    .line 225
    if-eqz v5, :cond_6

    .line 226
    .line 227
    invoke-virtual {v5}, LW1/u;->getValue()Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v5

    .line 231
    check-cast v5, Landroid/graphics/ColorFilter;

    .line 232
    .line 233
    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 234
    .line 235
    .line 236
    :cond_6
    move/from16 v5, p3

    .line 237
    .line 238
    int-to-float v5, v5

    .line 239
    const/high16 v6, 0x437f0000    # 255.0f

    .line 240
    .line 241
    div-float/2addr v5, v6

    .line 242
    iget-object v7, v0, LV1/i;->l:LW1/f;

    .line 243
    .line 244
    invoke-virtual {v7}, LW1/f;->getValue()Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v7

    .line 248
    check-cast v7, Ljava/lang/Integer;

    .line 249
    .line 250
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 251
    .line 252
    .line 253
    move-result v7

    .line 254
    int-to-float v7, v7

    .line 255
    mul-float/2addr v5, v7

    .line 256
    const/high16 v7, 0x42c80000    # 100.0f

    .line 257
    .line 258
    div-float/2addr v5, v7

    .line 259
    mul-float/2addr v5, v6

    .line 260
    float-to-int v5, v5

    .line 261
    const/16 v6, 0xff

    .line 262
    .line 263
    invoke-static {v5, v4, v6}, Lf2/g;->clamp(III)I

    .line 264
    .line 265
    .line 266
    move-result v4

    .line 267
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 268
    .line 269
    .line 270
    move-object/from16 v4, p1

    .line 271
    .line 272
    invoke-virtual {v4, v3, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 273
    .line 274
    .line 275
    invoke-static {v2}, LT1/c;->endSection(Ljava/lang/String;)F

    .line 276
    .line 277
    .line 278
    return-void
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 4

    .line 1
    iget-object p3, p0, LV1/i;->f:Landroid/graphics/Path;

    .line 2
    .line 3
    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    move v1, v0

    .line 8
    :goto_0
    iget-object v2, p0, LV1/i;->i:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    if-ge v1, v3, :cond_0

    .line 15
    .line 16
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, LV1/n;

    .line 21
    .line 22
    invoke-interface {v2}, LV1/n;->getPath()Landroid/graphics/Path;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {p3, v2, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 27
    .line 28
    .line 29
    add-int/lit8 v1, v1, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {p3, p1, v0}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 33
    .line 34
    .line 35
    iget p2, p1, Landroid/graphics/RectF;->left:F

    .line 36
    .line 37
    const/high16 p3, 0x3f800000    # 1.0f

    .line 38
    .line 39
    sub-float/2addr p2, p3

    .line 40
    iget v0, p1, Landroid/graphics/RectF;->top:F

    .line 41
    .line 42
    sub-float/2addr v0, p3

    .line 43
    iget v1, p1, Landroid/graphics/RectF;->right:F

    .line 44
    .line 45
    add-float/2addr v1, p3

    .line 46
    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    .line 47
    .line 48
    add-float/2addr v2, p3

    .line 49
    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, LV1/i;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public onValueChanged()V
    .locals 1

    .line 1
    iget-object v0, p0, LV1/i;->q:LT1/G;

    .line 2
    .line 3
    invoke-virtual {v0}, LT1/G;->invalidateSelf()V

    .line 4
    .line 5
    .line 6
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
    .locals 2
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
    const/4 p1, 0x0

    .line 2
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-ge p1, v0, :cond_1

    .line 7
    .line 8
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, LV1/d;

    .line 13
    .line 14
    instance-of v1, v0, LV1/n;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    iget-object v1, p0, LV1/i;->i:Ljava/util/ArrayList;

    .line 19
    .line 20
    check-cast v0, LV1/n;

    .line 21
    .line 22
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    return-void
.end method
