.class public final Lu/f;
.super Lu/n;
.source "SourceFile"


# instance fields
.field public A0:I

.field public B0:[Lu/c;

.field public C0:[Lu/c;

.field public D0:I

.field public E0:Z

.field public F0:Z

.field public G0:Ljava/lang/ref/WeakReference;

.field public H0:Ljava/lang/ref/WeakReference;

.field public I0:Ljava/lang/ref/WeakReference;

.field public J0:Ljava/lang/ref/WeakReference;

.field public final K0:Ljava/util/HashSet;

.field public final L0:Lv/b;

.field public final r0:Lv/d;

.field public final s0:Lv/g;

.field public t0:I

.field public u0:Lv/c;

.field public v0:Z

.field public final w0:Lr/f;

.field public x0:I

.field public y0:I

.field public z0:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lu/n;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lv/d;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lv/d;-><init>(Lu/f;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lu/f;->r0:Lv/d;

    .line 10
    .line 11
    new-instance v0, Lv/g;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lv/g;-><init>(Lu/f;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lu/f;->s0:Lv/g;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lu/f;->u0:Lv/c;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    iput-boolean v1, p0, Lu/f;->v0:Z

    .line 23
    .line 24
    new-instance v2, Lr/f;

    .line 25
    .line 26
    invoke-direct {v2}, Lr/f;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v2, p0, Lu/f;->w0:Lr/f;

    .line 30
    .line 31
    iput v1, p0, Lu/f;->z0:I

    .line 32
    .line 33
    iput v1, p0, Lu/f;->A0:I

    .line 34
    .line 35
    const/4 v2, 0x4

    .line 36
    new-array v3, v2, [Lu/c;

    .line 37
    .line 38
    iput-object v3, p0, Lu/f;->B0:[Lu/c;

    .line 39
    .line 40
    new-array v2, v2, [Lu/c;

    .line 41
    .line 42
    iput-object v2, p0, Lu/f;->C0:[Lu/c;

    .line 43
    .line 44
    const/16 v2, 0x101

    .line 45
    .line 46
    iput v2, p0, Lu/f;->D0:I

    .line 47
    .line 48
    iput-boolean v1, p0, Lu/f;->E0:Z

    .line 49
    .line 50
    iput-boolean v1, p0, Lu/f;->F0:Z

    .line 51
    .line 52
    iput-object v0, p0, Lu/f;->G0:Ljava/lang/ref/WeakReference;

    .line 53
    .line 54
    iput-object v0, p0, Lu/f;->H0:Ljava/lang/ref/WeakReference;

    .line 55
    .line 56
    iput-object v0, p0, Lu/f;->I0:Ljava/lang/ref/WeakReference;

    .line 57
    .line 58
    iput-object v0, p0, Lu/f;->J0:Ljava/lang/ref/WeakReference;

    .line 59
    .line 60
    new-instance v0, Ljava/util/HashSet;

    .line 61
    .line 62
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 63
    .line 64
    .line 65
    iput-object v0, p0, Lu/f;->K0:Ljava/util/HashSet;

    .line 66
    .line 67
    new-instance v0, Lv/b;

    .line 68
    .line 69
    invoke-direct {v0}, Lv/b;-><init>()V

    .line 70
    .line 71
    .line 72
    iput-object v0, p0, Lu/f;->L0:Lv/b;

    .line 73
    .line 74
    return-void
.end method

.method public static measure(ILu/e;Lv/c;Lv/b;I)Z
    .locals 8

    const/4 p0, 0x0

    if-nez p2, :cond_0

    return p0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lu/e;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_13

    instance-of v0, p1, Lu/i;

    if-nez v0, :cond_13

    instance-of v0, p1, Lu/a;

    if-eqz v0, :cond_1

    goto/16 :goto_8

    .line 5
    :cond_1
    invoke-virtual {p1}, Lu/e;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v0

    iput-object v0, p3, Lv/b;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 6
    invoke-virtual {p1}, Lu/e;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v0

    iput-object v0, p3, Lv/b;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 7
    invoke-virtual {p1}, Lu/e;->getWidth()I

    move-result v0

    iput v0, p3, Lv/b;->c:I

    .line 8
    invoke-virtual {p1}, Lu/e;->getHeight()I

    move-result v0

    iput v0, p3, Lv/b;->d:I

    .line 9
    iput-boolean p0, p3, Lv/b;->i:Z

    .line 10
    iput p4, p3, Lv/b;->j:I

    .line 11
    iget-object p4, p3, Lv/b;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->f:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x1

    if-ne p4, v0, :cond_2

    move p4, v1

    goto :goto_0

    :cond_2
    move p4, p0

    .line 12
    :goto_0
    iget-object v2, p3, Lv/b;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v0, :cond_3

    move v0, v1

    goto :goto_1

    :cond_3
    move v0, p0

    :goto_1
    const/4 v2, 0x0

    if-eqz p4, :cond_4

    .line 13
    iget v3, p1, Lu/e;->X:F

    cmpl-float v3, v3, v2

    if-lez v3, :cond_4

    move v3, v1

    goto :goto_2

    :cond_4
    move v3, p0

    :goto_2
    if-eqz v0, :cond_5

    .line 14
    iget v4, p1, Lu/e;->X:F

    cmpl-float v2, v4, v2

    if-lez v2, :cond_5

    move v2, v1

    goto :goto_3

    :cond_5
    move v2, p0

    .line 15
    :goto_3
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->e:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-eqz p4, :cond_7

    invoke-virtual {p1, p0}, Lu/e;->hasDanglingDimension(I)Z

    move-result v6

    if-eqz v6, :cond_7

    iget v6, p1, Lu/e;->r:I

    if-nez v6, :cond_7

    if-nez v3, :cond_7

    .line 16
    iput-object v4, p3, Lv/b;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-eqz v0, :cond_6

    .line 17
    iget p4, p1, Lu/e;->s:I

    if-nez p4, :cond_6

    .line 18
    iput-object v5, p3, Lv/b;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    :cond_6
    move p4, p0

    :cond_7
    if-eqz v0, :cond_9

    .line 19
    invoke-virtual {p1, v1}, Lu/e;->hasDanglingDimension(I)Z

    move-result v6

    if-eqz v6, :cond_9

    iget v6, p1, Lu/e;->s:I

    if-nez v6, :cond_9

    if-nez v2, :cond_9

    .line 20
    iput-object v4, p3, Lv/b;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-eqz p4, :cond_8

    .line 21
    iget v0, p1, Lu/e;->r:I

    if-nez v0, :cond_8

    .line 22
    iput-object v5, p3, Lv/b;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    :cond_8
    move v0, p0

    .line 23
    :cond_9
    invoke-virtual {p1}, Lu/e;->isResolvedHorizontally()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 24
    iput-object v5, p3, Lv/b;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move p4, p0

    .line 25
    :cond_a
    invoke-virtual {p1}, Lu/e;->isResolvedVertically()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 26
    iput-object v5, p3, Lv/b;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move v0, p0

    :cond_b
    const/4 v6, 0x4

    .line 27
    iget-object v7, p1, Lu/e;->t:[I

    if-eqz v3, :cond_e

    .line 28
    aget v3, v7, p0

    if-ne v3, v6, :cond_c

    .line 29
    iput-object v5, p3, Lv/b;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    goto :goto_5

    :cond_c
    if-nez v0, :cond_e

    .line 30
    iget-object v0, p3, Lv/b;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v5, :cond_d

    .line 31
    iget v0, p3, Lv/b;->d:I

    goto :goto_4

    .line 32
    :cond_d
    iput-object v4, p3, Lv/b;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 33
    move-object v0, p2

    check-cast v0, Lx/a;

    invoke-virtual {v0, p1, p3}, Lx/a;->measure(Lu/e;Lv/b;)V

    .line 34
    iget v0, p3, Lv/b;->f:I

    .line 35
    :goto_4
    iput-object v5, p3, Lv/b;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 36
    invoke-virtual {p1}, Lu/e;->getDimensionRatio()F

    move-result v3

    int-to-float v0, v0

    mul-float/2addr v3, v0

    float-to-int v0, v3

    iput v0, p3, Lv/b;->c:I

    :cond_e
    :goto_5
    if-eqz v2, :cond_12

    .line 37
    aget v0, v7, v1

    if-ne v0, v6, :cond_f

    .line 38
    iput-object v5, p3, Lv/b;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    goto :goto_7

    :cond_f
    if-nez p4, :cond_12

    .line 39
    iget-object p4, p3, Lv/b;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne p4, v5, :cond_10

    .line 40
    iget p4, p3, Lv/b;->c:I

    goto :goto_6

    .line 41
    :cond_10
    iput-object v4, p3, Lv/b;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 42
    move-object p4, p2

    check-cast p4, Lx/a;

    invoke-virtual {p4, p1, p3}, Lx/a;->measure(Lu/e;Lv/b;)V

    .line 43
    iget p4, p3, Lv/b;->e:I

    .line 44
    :goto_6
    iput-object v5, p3, Lv/b;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 45
    invoke-virtual {p1}, Lu/e;->getDimensionRatioSide()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_11

    int-to-float p4, p4

    .line 46
    invoke-virtual {p1}, Lu/e;->getDimensionRatio()F

    move-result v0

    div-float/2addr p4, v0

    float-to-int p4, p4

    iput p4, p3, Lv/b;->d:I

    goto :goto_7

    .line 47
    :cond_11
    invoke-virtual {p1}, Lu/e;->getDimensionRatio()F

    move-result v0

    int-to-float p4, p4

    mul-float/2addr v0, p4

    float-to-int p4, v0

    iput p4, p3, Lv/b;->d:I

    .line 48
    :cond_12
    :goto_7
    check-cast p2, Lx/a;

    invoke-virtual {p2, p1, p3}, Lx/a;->measure(Lu/e;Lv/b;)V

    .line 49
    iget p2, p3, Lv/b;->e:I

    invoke-virtual {p1, p2}, Lu/e;->setWidth(I)V

    .line 50
    iget p2, p3, Lv/b;->f:I

    invoke-virtual {p1, p2}, Lu/e;->setHeight(I)V

    .line 51
    iget-boolean p2, p3, Lv/b;->h:Z

    invoke-virtual {p1, p2}, Lu/e;->setHasBaseline(Z)V

    .line 52
    iget p2, p3, Lv/b;->g:I

    invoke-virtual {p1, p2}, Lu/e;->setBaselineDistance(I)V

    .line 53
    iput p0, p3, Lv/b;->j:I

    .line 54
    iget-boolean p0, p3, Lv/b;->i:Z

    return p0

    .line 55
    :cond_13
    :goto_8
    iput p0, p3, Lv/b;->e:I

    .line 56
    iput p0, p3, Lv/b;->f:I

    return p0
.end method


# virtual methods
.method public addChildrenToSolver(Lr/f;)Z
    .locals 12

    .line 1
    const/16 v0, 0x40

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lu/f;->optimizeFor(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p0, p1, v0}, Lu/e;->addToSolver(Lr/f;Z)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lu/n;->q0:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x0

    .line 17
    move v3, v2

    .line 18
    move v4, v3

    .line 19
    :goto_0
    const/4 v5, 0x1

    .line 20
    if-ge v3, v1, :cond_1

    .line 21
    .line 22
    iget-object v6, p0, Lu/n;->q0:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v6

    .line 28
    check-cast v6, Lu/e;

    .line 29
    .line 30
    invoke-virtual {v6, v2, v2}, Lu/e;->setInBarrier(IZ)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v6, v5, v2}, Lu/e;->setInBarrier(IZ)V

    .line 34
    .line 35
    .line 36
    instance-of v6, v6, Lu/a;

    .line 37
    .line 38
    if-eqz v6, :cond_0

    .line 39
    .line 40
    move v4, v5

    .line 41
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    if-eqz v4, :cond_3

    .line 45
    .line 46
    move v3, v2

    .line 47
    :goto_1
    if-ge v3, v1, :cond_3

    .line 48
    .line 49
    iget-object v4, p0, Lu/n;->q0:Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    check-cast v4, Lu/e;

    .line 56
    .line 57
    instance-of v6, v4, Lu/a;

    .line 58
    .line 59
    if-eqz v6, :cond_2

    .line 60
    .line 61
    check-cast v4, Lu/a;

    .line 62
    .line 63
    invoke-virtual {v4}, Lu/a;->markWidgets()V

    .line 64
    .line 65
    .line 66
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_3
    iget-object v3, p0, Lu/f;->K0:Ljava/util/HashSet;

    .line 70
    .line 71
    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    .line 72
    .line 73
    .line 74
    move v4, v2

    .line 75
    :goto_2
    if-ge v4, v1, :cond_7

    .line 76
    .line 77
    iget-object v6, p0, Lu/n;->q0:Ljava/util/ArrayList;

    .line 78
    .line 79
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    check-cast v6, Lu/e;

    .line 84
    .line 85
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    instance-of v7, v6, Lu/m;

    .line 89
    .line 90
    if-nez v7, :cond_4

    .line 91
    .line 92
    instance-of v8, v6, Lu/i;

    .line 93
    .line 94
    if-eqz v8, :cond_6

    .line 95
    .line 96
    :cond_4
    if-eqz v7, :cond_5

    .line 97
    .line 98
    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    goto :goto_3

    .line 102
    :cond_5
    invoke-virtual {v6, p1, v0}, Lu/e;->addToSolver(Lr/f;Z)V

    .line 103
    .line 104
    .line 105
    :cond_6
    :goto_3
    add-int/lit8 v4, v4, 0x1

    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_7
    :goto_4
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    .line 109
    .line 110
    .line 111
    move-result v4

    .line 112
    if-lez v4, :cond_b

    .line 113
    .line 114
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    .line 115
    .line 116
    .line 117
    move-result v4

    .line 118
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 119
    .line 120
    .line 121
    move-result-object v6

    .line 122
    :cond_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 123
    .line 124
    .line 125
    move-result v7

    .line 126
    if-eqz v7, :cond_9

    .line 127
    .line 128
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v7

    .line 132
    check-cast v7, Lu/e;

    .line 133
    .line 134
    check-cast v7, Lu/m;

    .line 135
    .line 136
    invoke-virtual {v7, v3}, Lu/m;->contains(Ljava/util/HashSet;)Z

    .line 137
    .line 138
    .line 139
    move-result v8

    .line 140
    if-eqz v8, :cond_8

    .line 141
    .line 142
    invoke-virtual {v7, p1, v0}, Lu/e;->addToSolver(Lr/f;Z)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v3, v7}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    :cond_9
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    .line 149
    .line 150
    .line 151
    move-result v6

    .line 152
    if-ne v4, v6, :cond_7

    .line 153
    .line 154
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 155
    .line 156
    .line 157
    move-result-object v4

    .line 158
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 159
    .line 160
    .line 161
    move-result v6

    .line 162
    if-eqz v6, :cond_a

    .line 163
    .line 164
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v6

    .line 168
    check-cast v6, Lu/e;

    .line 169
    .line 170
    invoke-virtual {v6, p1, v0}, Lu/e;->addToSolver(Lr/f;Z)V

    .line 171
    .line 172
    .line 173
    goto :goto_5

    .line 174
    :cond_a
    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    .line 175
    .line 176
    .line 177
    goto :goto_4

    .line 178
    :cond_b
    sget-boolean v3, Lr/f;->p:Z

    .line 179
    .line 180
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->e:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 181
    .line 182
    if-eqz v3, :cond_10

    .line 183
    .line 184
    new-instance v9, Ljava/util/HashSet;

    .line 185
    .line 186
    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 187
    .line 188
    .line 189
    move v3, v2

    .line 190
    :goto_6
    if-ge v3, v1, :cond_e

    .line 191
    .line 192
    iget-object v6, p0, Lu/n;->q0:Ljava/util/ArrayList;

    .line 193
    .line 194
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v6

    .line 198
    check-cast v6, Lu/e;

    .line 199
    .line 200
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 201
    .line 202
    .line 203
    instance-of v7, v6, Lu/m;

    .line 204
    .line 205
    if-nez v7, :cond_d

    .line 206
    .line 207
    instance-of v7, v6, Lu/i;

    .line 208
    .line 209
    if-eqz v7, :cond_c

    .line 210
    .line 211
    goto :goto_7

    .line 212
    :cond_c
    invoke-virtual {v9, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    :cond_d
    :goto_7
    add-int/lit8 v3, v3, 0x1

    .line 216
    .line 217
    goto :goto_6

    .line 218
    :cond_e
    invoke-virtual {p0}, Lu/e;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    if-ne v1, v4, :cond_f

    .line 223
    .line 224
    move v10, v2

    .line 225
    goto :goto_8

    .line 226
    :cond_f
    move v10, v5

    .line 227
    :goto_8
    const/4 v11, 0x0

    .line 228
    move-object v7, p0

    .line 229
    move-object v6, p0

    .line 230
    move-object v8, p1

    .line 231
    invoke-virtual/range {v6 .. v11}, Lu/e;->addChildrenToSolverByDependency(Lu/f;Lr/f;Ljava/util/HashSet;IZ)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v9}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 235
    .line 236
    .line 237
    move-result-object p1

    .line 238
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 239
    .line 240
    .line 241
    move-result v1

    .line 242
    if-eqz v1, :cond_17

    .line 243
    .line 244
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v1

    .line 248
    check-cast v1, Lu/e;

    .line 249
    .line 250
    invoke-static {p0, v8, v1}, Lu/l;->a(Lu/f;Lr/f;Lu/e;)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v1, v8, v0}, Lu/e;->addToSolver(Lr/f;Z)V

    .line 254
    .line 255
    .line 256
    goto :goto_9

    .line 257
    :cond_10
    move-object v6, p0

    .line 258
    move-object v8, p1

    .line 259
    move p1, v2

    .line 260
    :goto_a
    if-ge p1, v1, :cond_17

    .line 261
    .line 262
    iget-object v3, v6, Lu/n;->q0:Ljava/util/ArrayList;

    .line 263
    .line 264
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object v3

    .line 268
    check-cast v3, Lu/e;

    .line 269
    .line 270
    instance-of v7, v3, Lu/f;

    .line 271
    .line 272
    if-eqz v7, :cond_14

    .line 273
    .line 274
    iget-object v7, v3, Lu/e;->T:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 275
    .line 276
    aget-object v9, v7, v2

    .line 277
    .line 278
    aget-object v7, v7, v5

    .line 279
    .line 280
    sget-object v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 281
    .line 282
    if-ne v9, v4, :cond_11

    .line 283
    .line 284
    invoke-virtual {v3, v10}, Lu/e;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 285
    .line 286
    .line 287
    :cond_11
    if-ne v7, v4, :cond_12

    .line 288
    .line 289
    invoke-virtual {v3, v10}, Lu/e;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 290
    .line 291
    .line 292
    :cond_12
    invoke-virtual {v3, v8, v0}, Lu/e;->addToSolver(Lr/f;Z)V

    .line 293
    .line 294
    .line 295
    if-ne v9, v4, :cond_13

    .line 296
    .line 297
    invoke-virtual {v3, v9}, Lu/e;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 298
    .line 299
    .line 300
    :cond_13
    if-ne v7, v4, :cond_16

    .line 301
    .line 302
    invoke-virtual {v3, v7}, Lu/e;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 303
    .line 304
    .line 305
    goto :goto_b

    .line 306
    :cond_14
    invoke-static {p0, v8, v3}, Lu/l;->a(Lu/f;Lr/f;Lu/e;)V

    .line 307
    .line 308
    .line 309
    instance-of v7, v3, Lu/m;

    .line 310
    .line 311
    if-nez v7, :cond_16

    .line 312
    .line 313
    instance-of v7, v3, Lu/i;

    .line 314
    .line 315
    if-eqz v7, :cond_15

    .line 316
    .line 317
    goto :goto_b

    .line 318
    :cond_15
    invoke-virtual {v3, v8, v0}, Lu/e;->addToSolver(Lr/f;Z)V

    .line 319
    .line 320
    .line 321
    :cond_16
    :goto_b
    add-int/lit8 p1, p1, 0x1

    .line 322
    .line 323
    goto :goto_a

    .line 324
    :cond_17
    iget p1, v6, Lu/f;->z0:I

    .line 325
    .line 326
    const/4 v0, 0x0

    .line 327
    if-lez p1, :cond_18

    .line 328
    .line 329
    invoke-static {p0, v8, v0, v2}, Lu/b;->applyChainConstraints(Lu/f;Lr/f;Ljava/util/ArrayList;I)V

    .line 330
    .line 331
    .line 332
    :cond_18
    iget p1, v6, Lu/f;->A0:I

    .line 333
    .line 334
    if-lez p1, :cond_19

    .line 335
    .line 336
    invoke-static {p0, v8, v0, v5}, Lu/b;->applyChainConstraints(Lu/f;Lr/f;Ljava/util/ArrayList;I)V

    .line 337
    .line 338
    .line 339
    :cond_19
    return v5
.end method

.method public addHorizontalWrapMaxVariable(Lu/d;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lu/f;->J0:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p1}, Lu/d;->getFinalValue()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget-object v1, p0, Lu/f;->J0:Ljava/lang/ref/WeakReference;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lu/d;

    .line 22
    .line 23
    invoke-virtual {v1}, Lu/d;->getFinalValue()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-le v0, v1, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    return-void

    .line 31
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 32
    .line 33
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Lu/f;->J0:Ljava/lang/ref/WeakReference;

    .line 37
    .line 38
    return-void
.end method

.method public addHorizontalWrapMinVariable(Lu/d;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lu/f;->H0:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p1}, Lu/d;->getFinalValue()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget-object v1, p0, Lu/f;->H0:Ljava/lang/ref/WeakReference;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lu/d;

    .line 22
    .line 23
    invoke-virtual {v1}, Lu/d;->getFinalValue()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-le v0, v1, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    return-void

    .line 31
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 32
    .line 33
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Lu/f;->H0:Ljava/lang/ref/WeakReference;

    .line 37
    .line 38
    return-void
.end method

.method public directMeasure(Z)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lu/f;->s0:Lv/g;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lv/g;->directMeasure(Z)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public directMeasureSetup(Z)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lu/f;->s0:Lv/g;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lv/g;->directMeasureSetup(Z)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public directMeasureWithOrientation(ZI)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lu/f;->s0:Lv/g;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lv/g;->directMeasureWithOrientation(ZI)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final g(Lu/e;I)V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p2, :cond_1

    .line 3
    .line 4
    iget p2, p0, Lu/f;->z0:I

    .line 5
    .line 6
    add-int/2addr p2, v0

    .line 7
    iget-object v1, p0, Lu/f;->C0:[Lu/c;

    .line 8
    .line 9
    array-length v2, v1

    .line 10
    if-lt p2, v2, :cond_0

    .line 11
    .line 12
    array-length p2, v1

    .line 13
    mul-int/lit8 p2, p2, 0x2

    .line 14
    .line 15
    invoke-static {v1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    check-cast p2, [Lu/c;

    .line 20
    .line 21
    iput-object p2, p0, Lu/f;->C0:[Lu/c;

    .line 22
    .line 23
    :cond_0
    iget-object p2, p0, Lu/f;->C0:[Lu/c;

    .line 24
    .line 25
    iget v1, p0, Lu/f;->z0:I

    .line 26
    .line 27
    new-instance v2, Lu/c;

    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    invoke-virtual {p0}, Lu/f;->isRtl()Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    invoke-direct {v2, p1, v3, v4}, Lu/c;-><init>(Lu/e;IZ)V

    .line 35
    .line 36
    .line 37
    aput-object v2, p2, v1

    .line 38
    .line 39
    iget p1, p0, Lu/f;->z0:I

    .line 40
    .line 41
    add-int/2addr p1, v0

    .line 42
    iput p1, p0, Lu/f;->z0:I

    .line 43
    .line 44
    return-void

    .line 45
    :cond_1
    if-ne p2, v0, :cond_3

    .line 46
    .line 47
    iget p2, p0, Lu/f;->A0:I

    .line 48
    .line 49
    add-int/2addr p2, v0

    .line 50
    iget-object v1, p0, Lu/f;->B0:[Lu/c;

    .line 51
    .line 52
    array-length v2, v1

    .line 53
    if-lt p2, v2, :cond_2

    .line 54
    .line 55
    array-length p2, v1

    .line 56
    mul-int/lit8 p2, p2, 0x2

    .line 57
    .line 58
    invoke-static {v1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    check-cast p2, [Lu/c;

    .line 63
    .line 64
    iput-object p2, p0, Lu/f;->B0:[Lu/c;

    .line 65
    .line 66
    :cond_2
    iget-object p2, p0, Lu/f;->B0:[Lu/c;

    .line 67
    .line 68
    iget v1, p0, Lu/f;->A0:I

    .line 69
    .line 70
    new-instance v2, Lu/c;

    .line 71
    .line 72
    invoke-virtual {p0}, Lu/f;->isRtl()Z

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    invoke-direct {v2, p1, v0, v3}, Lu/c;-><init>(Lu/e;IZ)V

    .line 77
    .line 78
    .line 79
    aput-object v2, p2, v1

    .line 80
    .line 81
    iget p1, p0, Lu/f;->A0:I

    .line 82
    .line 83
    add-int/2addr p1, v0

    .line 84
    iput p1, p0, Lu/f;->A0:I

    .line 85
    .line 86
    :cond_3
    return-void
.end method

.method public getMeasurer()Lv/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lu/f;->u0:Lv/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOptimizationLevel()I
    .locals 1

    .line 1
    iget v0, p0, Lu/f;->D0:I

    .line 2
    .line 3
    return v0
.end method

.method public getSceneString(Ljava/lang/StringBuilder;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lu/e;->j:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, ":{\n"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v1, "  actualWidth:"

    .line 26
    .line 27
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget v1, p0, Lu/e;->V:I

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v0, "\n"

    .line 43
    .line 44
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string v2, "  actualHeight:"

    .line 50
    .line 51
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget v2, p0, Lu/e;->W:I

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Lu/n;->getChildren()Ljava/util/ArrayList;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-eqz v1, :cond_0

    .line 82
    .line 83
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    check-cast v1, Lu/e;

    .line 88
    .line 89
    invoke-virtual {v1, p1}, Lu/e;->getSceneString(Ljava/lang/StringBuilder;)V

    .line 90
    .line 91
    .line 92
    const-string v1, ",\n"

    .line 93
    .line 94
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_0
    const-string v0, "}"

    .line 99
    .line 100
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    return-void
.end method

.method public getSystem()Lr/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lu/f;->w0:Lr/f;

    .line 2
    .line 3
    return-object v0
.end method

.method public handlesInternalConstraints()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public invalidateGraph()V
    .locals 1

    .line 1
    iget-object v0, p0, Lu/f;->s0:Lv/g;

    .line 2
    .line 3
    invoke-virtual {v0}, Lv/g;->invalidateGraph()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public invalidateMeasures()V
    .locals 1

    .line 1
    iget-object v0, p0, Lu/f;->s0:Lv/g;

    .line 2
    .line 3
    invoke-virtual {v0}, Lv/g;->invalidateMeasures()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public isHeightMeasuredTooSmall()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lu/f;->F0:Z

    .line 2
    .line 3
    return v0
.end method

.method public isRtl()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lu/f;->v0:Z

    .line 2
    .line 3
    return v0
.end method

.method public isWidthMeasuredTooSmall()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lu/f;->E0:Z

    .line 2
    .line 3
    return v0
.end method

.method public layout()V
    .locals 24

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    iput v2, v1, Lu/e;->Z:I

    .line 5
    .line 6
    iput v2, v1, Lu/e;->a0:I

    .line 7
    .line 8
    iput-boolean v2, v1, Lu/f;->E0:Z

    .line 9
    .line 10
    iput-boolean v2, v1, Lu/f;->F0:Z

    .line 11
    .line 12
    iget-object v0, v1, Lu/n;->q0:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    invoke-virtual {v1}, Lu/e;->getWidth()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    invoke-virtual {v1}, Lu/e;->getHeight()I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    iget-object v5, v1, Lu/e;->T:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 35
    .line 36
    const/4 v6, 0x1

    .line 37
    aget-object v7, v5, v6

    .line 38
    .line 39
    aget-object v8, v5, v2

    .line 40
    .line 41
    iget v9, v1, Lu/f;->t0:I

    .line 42
    .line 43
    if-nez v9, :cond_2

    .line 44
    .line 45
    iget v9, v1, Lu/f;->D0:I

    .line 46
    .line 47
    invoke-static {v9, v6}, Lu/l;->enabled(II)Z

    .line 48
    .line 49
    .line 50
    move-result v9

    .line 51
    if-eqz v9, :cond_2

    .line 52
    .line 53
    invoke-virtual {v1}, Lu/f;->getMeasurer()Lv/c;

    .line 54
    .line 55
    .line 56
    move-result-object v9

    .line 57
    invoke-static {v1, v9}, Lv/h;->solvingPass(Lu/f;Lv/c;)V

    .line 58
    .line 59
    .line 60
    move v9, v2

    .line 61
    :goto_0
    if-ge v9, v3, :cond_2

    .line 62
    .line 63
    iget-object v10, v1, Lu/n;->q0:Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v10

    .line 69
    check-cast v10, Lu/e;

    .line 70
    .line 71
    invoke-virtual {v10}, Lu/e;->isMeasureRequested()Z

    .line 72
    .line 73
    .line 74
    move-result v11

    .line 75
    if-eqz v11, :cond_1

    .line 76
    .line 77
    instance-of v11, v10, Lu/i;

    .line 78
    .line 79
    if-nez v11, :cond_1

    .line 80
    .line 81
    instance-of v11, v10, Lu/a;

    .line 82
    .line 83
    if-nez v11, :cond_1

    .line 84
    .line 85
    instance-of v11, v10, Lu/m;

    .line 86
    .line 87
    if-nez v11, :cond_1

    .line 88
    .line 89
    invoke-virtual {v10}, Lu/e;->isInVirtualLayout()Z

    .line 90
    .line 91
    .line 92
    move-result v11

    .line 93
    if-nez v11, :cond_1

    .line 94
    .line 95
    invoke-virtual {v10, v2}, Lu/e;->getDimensionBehaviour(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 96
    .line 97
    .line 98
    move-result-object v11

    .line 99
    invoke-virtual {v10, v6}, Lu/e;->getDimensionBehaviour(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 100
    .line 101
    .line 102
    move-result-object v12

    .line 103
    sget-object v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->f:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 104
    .line 105
    if-ne v11, v13, :cond_0

    .line 106
    .line 107
    iget v11, v10, Lu/e;->r:I

    .line 108
    .line 109
    if-eq v11, v6, :cond_0

    .line 110
    .line 111
    if-ne v12, v13, :cond_0

    .line 112
    .line 113
    iget v11, v10, Lu/e;->s:I

    .line 114
    .line 115
    if-eq v11, v6, :cond_0

    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_0
    new-instance v11, Lv/b;

    .line 119
    .line 120
    invoke-direct {v11}, Lv/b;-><init>()V

    .line 121
    .line 122
    .line 123
    iget-object v12, v1, Lu/f;->u0:Lv/c;

    .line 124
    .line 125
    invoke-static {v2, v10, v12, v11, v2}, Lu/f;->measure(ILu/e;Lv/c;Lv/b;I)Z

    .line 126
    .line 127
    .line 128
    :cond_1
    :goto_1
    add-int/lit8 v9, v9, 0x1

    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_2
    sget-object v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->e:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 132
    .line 133
    const/4 v10, 0x2

    .line 134
    if-le v3, v10, :cond_8

    .line 135
    .line 136
    if-eq v8, v9, :cond_3

    .line 137
    .line 138
    if-ne v7, v9, :cond_8

    .line 139
    .line 140
    :cond_3
    iget v11, v1, Lu/f;->D0:I

    .line 141
    .line 142
    const/16 v12, 0x400

    .line 143
    .line 144
    invoke-static {v11, v12}, Lu/l;->enabled(II)Z

    .line 145
    .line 146
    .line 147
    move-result v11

    .line 148
    if-eqz v11, :cond_8

    .line 149
    .line 150
    invoke-virtual {v1}, Lu/f;->getMeasurer()Lv/c;

    .line 151
    .line 152
    .line 153
    move-result-object v11

    .line 154
    invoke-static {v1, v11}, Lv/i;->simpleSolvingPass(Lu/f;Lv/c;)Z

    .line 155
    .line 156
    .line 157
    move-result v11

    .line 158
    if-eqz v11, :cond_8

    .line 159
    .line 160
    if-ne v8, v9, :cond_5

    .line 161
    .line 162
    invoke-virtual {v1}, Lu/e;->getWidth()I

    .line 163
    .line 164
    .line 165
    move-result v11

    .line 166
    if-ge v0, v11, :cond_4

    .line 167
    .line 168
    if-lez v0, :cond_4

    .line 169
    .line 170
    invoke-virtual {v1, v0}, Lu/e;->setWidth(I)V

    .line 171
    .line 172
    .line 173
    iput-boolean v6, v1, Lu/f;->E0:Z

    .line 174
    .line 175
    goto :goto_2

    .line 176
    :cond_4
    invoke-virtual {v1}, Lu/e;->getWidth()I

    .line 177
    .line 178
    .line 179
    move-result v0

    .line 180
    :cond_5
    :goto_2
    if-ne v7, v9, :cond_7

    .line 181
    .line 182
    invoke-virtual {v1}, Lu/e;->getHeight()I

    .line 183
    .line 184
    .line 185
    move-result v11

    .line 186
    if-ge v4, v11, :cond_6

    .line 187
    .line 188
    if-lez v4, :cond_6

    .line 189
    .line 190
    invoke-virtual {v1, v4}, Lu/e;->setHeight(I)V

    .line 191
    .line 192
    .line 193
    iput-boolean v6, v1, Lu/f;->F0:Z

    .line 194
    .line 195
    goto :goto_3

    .line 196
    :cond_6
    invoke-virtual {v1}, Lu/e;->getHeight()I

    .line 197
    .line 198
    .line 199
    move-result v4

    .line 200
    :cond_7
    :goto_3
    move v11, v4

    .line 201
    move v4, v0

    .line 202
    move v0, v6

    .line 203
    goto :goto_4

    .line 204
    :cond_8
    move v11, v4

    .line 205
    move v4, v0

    .line 206
    move v0, v2

    .line 207
    :goto_4
    const/16 v12, 0x40

    .line 208
    .line 209
    invoke-virtual {v1, v12}, Lu/f;->optimizeFor(I)Z

    .line 210
    .line 211
    .line 212
    move-result v13

    .line 213
    if-nez v13, :cond_a

    .line 214
    .line 215
    const/16 v13, 0x80

    .line 216
    .line 217
    invoke-virtual {v1, v13}, Lu/f;->optimizeFor(I)Z

    .line 218
    .line 219
    .line 220
    move-result v13

    .line 221
    if-eqz v13, :cond_9

    .line 222
    .line 223
    goto :goto_5

    .line 224
    :cond_9
    move v13, v2

    .line 225
    goto :goto_6

    .line 226
    :cond_a
    :goto_5
    move v13, v6

    .line 227
    :goto_6
    iget-object v14, v1, Lu/f;->w0:Lr/f;

    .line 228
    .line 229
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 230
    .line 231
    .line 232
    iput-boolean v2, v14, Lr/f;->g:Z

    .line 233
    .line 234
    iget v15, v1, Lu/f;->D0:I

    .line 235
    .line 236
    if-eqz v15, :cond_b

    .line 237
    .line 238
    if-eqz v13, :cond_b

    .line 239
    .line 240
    iput-boolean v6, v14, Lr/f;->g:Z

    .line 241
    .line 242
    :cond_b
    iget-object v13, v1, Lu/n;->q0:Ljava/util/ArrayList;

    .line 243
    .line 244
    invoke-virtual {v1}, Lu/e;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 245
    .line 246
    .line 247
    move-result-object v15

    .line 248
    if-eq v15, v9, :cond_d

    .line 249
    .line 250
    invoke-virtual {v1}, Lu/e;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 251
    .line 252
    .line 253
    move-result-object v15

    .line 254
    if-ne v15, v9, :cond_c

    .line 255
    .line 256
    goto :goto_7

    .line 257
    :cond_c
    move v15, v2

    .line 258
    goto :goto_8

    .line 259
    :cond_d
    :goto_7
    move v15, v6

    .line 260
    :goto_8
    iput v2, v1, Lu/f;->z0:I

    .line 261
    .line 262
    iput v2, v1, Lu/f;->A0:I

    .line 263
    .line 264
    move/from16 v16, v10

    .line 265
    .line 266
    move v10, v2

    .line 267
    :goto_9
    if-ge v10, v3, :cond_f

    .line 268
    .line 269
    move/from16 v17, v6

    .line 270
    .line 271
    iget-object v6, v1, Lu/n;->q0:Ljava/util/ArrayList;

    .line 272
    .line 273
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object v6

    .line 277
    check-cast v6, Lu/e;

    .line 278
    .line 279
    instance-of v2, v6, Lu/n;

    .line 280
    .line 281
    if-eqz v2, :cond_e

    .line 282
    .line 283
    check-cast v6, Lu/n;

    .line 284
    .line 285
    invoke-virtual {v6}, Lu/n;->layout()V

    .line 286
    .line 287
    .line 288
    :cond_e
    add-int/lit8 v10, v10, 0x1

    .line 289
    .line 290
    move/from16 v6, v17

    .line 291
    .line 292
    const/4 v2, 0x0

    .line 293
    goto :goto_9

    .line 294
    :cond_f
    move/from16 v17, v6

    .line 295
    .line 296
    invoke-virtual {v1, v12}, Lu/f;->optimizeFor(I)Z

    .line 297
    .line 298
    .line 299
    move-result v2

    .line 300
    move v6, v0

    .line 301
    move/from16 v10, v17

    .line 302
    .line 303
    const/4 v0, 0x0

    .line 304
    :goto_a
    if-eqz v10, :cond_20

    .line 305
    .line 306
    add-int/lit8 v12, v0, 0x1

    .line 307
    .line 308
    :try_start_0
    invoke-virtual {v14}, Lr/f;->reset()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 309
    .line 310
    .line 311
    move-object/from16 v19, v5

    .line 312
    .line 313
    const/4 v5, 0x0

    .line 314
    :try_start_1
    iput v5, v1, Lu/f;->z0:I

    .line 315
    .line 316
    iput v5, v1, Lu/f;->A0:I

    .line 317
    .line 318
    invoke-virtual {v1, v14}, Lu/e;->createObjectVariables(Lr/f;)V

    .line 319
    .line 320
    .line 321
    const/4 v0, 0x0

    .line 322
    :goto_b
    if-ge v0, v3, :cond_10

    .line 323
    .line 324
    iget-object v5, v1, Lu/n;->q0:Ljava/util/ArrayList;

    .line 325
    .line 326
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 327
    .line 328
    .line 329
    move-result-object v5

    .line 330
    check-cast v5, Lu/e;

    .line 331
    .line 332
    invoke-virtual {v5, v14}, Lu/e;->createObjectVariables(Lr/f;)V

    .line 333
    .line 334
    .line 335
    add-int/lit8 v0, v0, 0x1

    .line 336
    .line 337
    goto :goto_b

    .line 338
    :catch_0
    move-exception v0

    .line 339
    :goto_c
    move/from16 v21, v6

    .line 340
    .line 341
    :goto_d
    move/from16 v23, v15

    .line 342
    .line 343
    goto/16 :goto_10

    .line 344
    .line 345
    :cond_10
    invoke-virtual {v1, v14}, Lu/f;->addChildrenToSolver(Lr/f;)Z

    .line 346
    .line 347
    .line 348
    move-result v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 349
    :try_start_2
    iget-object v0, v1, Lu/f;->G0:Ljava/lang/ref/WeakReference;

    .line 350
    .line 351
    if-eqz v0, :cond_11

    .line 352
    .line 353
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 354
    .line 355
    .line 356
    move-result-object v0

    .line 357
    if-eqz v0, :cond_11

    .line 358
    .line 359
    iget-object v0, v1, Lu/f;->G0:Ljava/lang/ref/WeakReference;

    .line 360
    .line 361
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 362
    .line 363
    .line 364
    move-result-object v0

    .line 365
    check-cast v0, Lu/d;

    .line 366
    .line 367
    iget-object v5, v1, Lu/e;->J:Lu/d;

    .line 368
    .line 369
    invoke-virtual {v14, v5}, Lr/f;->createObjectVariable(Ljava/lang/Object;)Lr/m;

    .line 370
    .line 371
    .line 372
    move-result-object v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 373
    move/from16 v21, v6

    .line 374
    .line 375
    :try_start_3
    iget-object v6, v1, Lu/f;->w0:Lr/f;

    .line 376
    .line 377
    invoke-virtual {v6, v0}, Lr/f;->createObjectVariable(Ljava/lang/Object;)Lr/m;

    .line 378
    .line 379
    .line 380
    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 381
    move/from16 v22, v10

    .line 382
    .line 383
    move/from16 v23, v15

    .line 384
    .line 385
    const/4 v10, 0x0

    .line 386
    const/4 v15, 0x5

    .line 387
    :try_start_4
    invoke-virtual {v6, v0, v5, v10, v15}, Lr/f;->addGreaterThan(Lr/m;Lr/m;II)V

    .line 388
    .line 389
    .line 390
    const/4 v0, 0x0

    .line 391
    iput-object v0, v1, Lu/f;->G0:Ljava/lang/ref/WeakReference;

    .line 392
    .line 393
    goto :goto_f

    .line 394
    :catch_1
    move-exception v0

    .line 395
    :goto_e
    move/from16 v10, v22

    .line 396
    .line 397
    goto/16 :goto_10

    .line 398
    .line 399
    :catch_2
    move-exception v0

    .line 400
    move/from16 v22, v10

    .line 401
    .line 402
    move/from16 v23, v15

    .line 403
    .line 404
    goto :goto_e

    .line 405
    :catch_3
    move-exception v0

    .line 406
    move/from16 v21, v6

    .line 407
    .line 408
    move/from16 v22, v10

    .line 409
    .line 410
    goto :goto_d

    .line 411
    :cond_11
    move/from16 v21, v6

    .line 412
    .line 413
    move/from16 v22, v10

    .line 414
    .line 415
    move/from16 v23, v15

    .line 416
    .line 417
    :goto_f
    iget-object v0, v1, Lu/f;->I0:Ljava/lang/ref/WeakReference;

    .line 418
    .line 419
    if-eqz v0, :cond_12

    .line 420
    .line 421
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 422
    .line 423
    .line 424
    move-result-object v0

    .line 425
    if-eqz v0, :cond_12

    .line 426
    .line 427
    iget-object v0, v1, Lu/f;->I0:Ljava/lang/ref/WeakReference;

    .line 428
    .line 429
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 430
    .line 431
    .line 432
    move-result-object v0

    .line 433
    check-cast v0, Lu/d;

    .line 434
    .line 435
    iget-object v5, v1, Lu/e;->L:Lu/d;

    .line 436
    .line 437
    invoke-virtual {v14, v5}, Lr/f;->createObjectVariable(Ljava/lang/Object;)Lr/m;

    .line 438
    .line 439
    .line 440
    move-result-object v5

    .line 441
    iget-object v6, v1, Lu/f;->w0:Lr/f;

    .line 442
    .line 443
    invoke-virtual {v6, v0}, Lr/f;->createObjectVariable(Ljava/lang/Object;)Lr/m;

    .line 444
    .line 445
    .line 446
    move-result-object v0

    .line 447
    const/4 v10, 0x0

    .line 448
    const/4 v15, 0x5

    .line 449
    invoke-virtual {v6, v5, v0, v10, v15}, Lr/f;->addGreaterThan(Lr/m;Lr/m;II)V

    .line 450
    .line 451
    .line 452
    const/4 v0, 0x0

    .line 453
    iput-object v0, v1, Lu/f;->I0:Ljava/lang/ref/WeakReference;

    .line 454
    .line 455
    :cond_12
    iget-object v0, v1, Lu/f;->H0:Ljava/lang/ref/WeakReference;

    .line 456
    .line 457
    if-eqz v0, :cond_13

    .line 458
    .line 459
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 460
    .line 461
    .line 462
    move-result-object v0

    .line 463
    if-eqz v0, :cond_13

    .line 464
    .line 465
    iget-object v0, v1, Lu/f;->H0:Ljava/lang/ref/WeakReference;

    .line 466
    .line 467
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 468
    .line 469
    .line 470
    move-result-object v0

    .line 471
    check-cast v0, Lu/d;

    .line 472
    .line 473
    iget-object v5, v1, Lu/e;->I:Lu/d;

    .line 474
    .line 475
    invoke-virtual {v14, v5}, Lr/f;->createObjectVariable(Ljava/lang/Object;)Lr/m;

    .line 476
    .line 477
    .line 478
    move-result-object v5

    .line 479
    iget-object v6, v1, Lu/f;->w0:Lr/f;

    .line 480
    .line 481
    invoke-virtual {v6, v0}, Lr/f;->createObjectVariable(Ljava/lang/Object;)Lr/m;

    .line 482
    .line 483
    .line 484
    move-result-object v0

    .line 485
    const/4 v10, 0x0

    .line 486
    const/4 v15, 0x5

    .line 487
    invoke-virtual {v6, v0, v5, v10, v15}, Lr/f;->addGreaterThan(Lr/m;Lr/m;II)V

    .line 488
    .line 489
    .line 490
    const/4 v0, 0x0

    .line 491
    iput-object v0, v1, Lu/f;->H0:Ljava/lang/ref/WeakReference;

    .line 492
    .line 493
    :cond_13
    iget-object v0, v1, Lu/f;->J0:Ljava/lang/ref/WeakReference;

    .line 494
    .line 495
    if-eqz v0, :cond_14

    .line 496
    .line 497
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 498
    .line 499
    .line 500
    move-result-object v0

    .line 501
    if-eqz v0, :cond_14

    .line 502
    .line 503
    iget-object v0, v1, Lu/f;->J0:Ljava/lang/ref/WeakReference;

    .line 504
    .line 505
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 506
    .line 507
    .line 508
    move-result-object v0

    .line 509
    check-cast v0, Lu/d;

    .line 510
    .line 511
    iget-object v5, v1, Lu/e;->K:Lu/d;

    .line 512
    .line 513
    invoke-virtual {v14, v5}, Lr/f;->createObjectVariable(Ljava/lang/Object;)Lr/m;

    .line 514
    .line 515
    .line 516
    move-result-object v5

    .line 517
    iget-object v6, v1, Lu/f;->w0:Lr/f;

    .line 518
    .line 519
    invoke-virtual {v6, v0}, Lr/f;->createObjectVariable(Ljava/lang/Object;)Lr/m;

    .line 520
    .line 521
    .line 522
    move-result-object v0

    .line 523
    const/4 v10, 0x0

    .line 524
    const/4 v15, 0x5

    .line 525
    invoke-virtual {v6, v5, v0, v10, v15}, Lr/f;->addGreaterThan(Lr/m;Lr/m;II)V

    .line 526
    .line 527
    .line 528
    const/4 v0, 0x0

    .line 529
    iput-object v0, v1, Lu/f;->J0:Ljava/lang/ref/WeakReference;

    .line 530
    .line 531
    :cond_14
    if-eqz v22, :cond_15

    .line 532
    .line 533
    invoke-virtual {v14}, Lr/f;->minimize()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 534
    .line 535
    .line 536
    :cond_15
    move/from16 v10, v22

    .line 537
    .line 538
    goto :goto_11

    .line 539
    :catch_4
    move-exception v0

    .line 540
    move-object/from16 v19, v5

    .line 541
    .line 542
    goto/16 :goto_c

    .line 543
    .line 544
    :goto_10
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 545
    .line 546
    .line 547
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 548
    .line 549
    new-instance v6, Ljava/lang/StringBuilder;

    .line 550
    .line 551
    const-string v15, "EXCEPTION : "

    .line 552
    .line 553
    invoke-direct {v6, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 554
    .line 555
    .line 556
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 557
    .line 558
    .line 559
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 560
    .line 561
    .line 562
    move-result-object v0

    .line 563
    invoke-virtual {v5, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 564
    .line 565
    .line 566
    :goto_11
    sget-object v0, Lu/l;->a:[Z

    .line 567
    .line 568
    if-eqz v10, :cond_16

    .line 569
    .line 570
    invoke-virtual {v1, v14, v0}, Lu/f;->updateChildrenFromSolver(Lr/f;[Z)Z

    .line 571
    .line 572
    .line 573
    move-result v5

    .line 574
    goto :goto_13

    .line 575
    :cond_16
    invoke-virtual {v1, v14, v2}, Lu/e;->updateFromSolver(Lr/f;Z)V

    .line 576
    .line 577
    .line 578
    const/4 v5, 0x0

    .line 579
    :goto_12
    if-ge v5, v3, :cond_17

    .line 580
    .line 581
    iget-object v6, v1, Lu/n;->q0:Ljava/util/ArrayList;

    .line 582
    .line 583
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 584
    .line 585
    .line 586
    move-result-object v6

    .line 587
    check-cast v6, Lu/e;

    .line 588
    .line 589
    invoke-virtual {v6, v14, v2}, Lu/e;->updateFromSolver(Lr/f;Z)V

    .line 590
    .line 591
    .line 592
    add-int/lit8 v5, v5, 0x1

    .line 593
    .line 594
    goto :goto_12

    .line 595
    :cond_17
    const/4 v5, 0x0

    .line 596
    :goto_13
    const/16 v6, 0x8

    .line 597
    .line 598
    if-eqz v23, :cond_1a

    .line 599
    .line 600
    if-ge v12, v6, :cond_1a

    .line 601
    .line 602
    aget-boolean v0, v0, v16

    .line 603
    .line 604
    if-eqz v0, :cond_1a

    .line 605
    .line 606
    const/4 v0, 0x0

    .line 607
    const/4 v10, 0x0

    .line 608
    const/4 v15, 0x0

    .line 609
    :goto_14
    if-ge v0, v3, :cond_18

    .line 610
    .line 611
    iget-object v6, v1, Lu/n;->q0:Ljava/util/ArrayList;

    .line 612
    .line 613
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 614
    .line 615
    .line 616
    move-result-object v6

    .line 617
    check-cast v6, Lu/e;

    .line 618
    .line 619
    move/from16 v20, v0

    .line 620
    .line 621
    iget v0, v6, Lu/e;->Z:I

    .line 622
    .line 623
    invoke-virtual {v6}, Lu/e;->getWidth()I

    .line 624
    .line 625
    .line 626
    move-result v22

    .line 627
    add-int v0, v22, v0

    .line 628
    .line 629
    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    .line 630
    .line 631
    .line 632
    move-result v10

    .line 633
    iget v0, v6, Lu/e;->a0:I

    .line 634
    .line 635
    invoke-virtual {v6}, Lu/e;->getHeight()I

    .line 636
    .line 637
    .line 638
    move-result v6

    .line 639
    add-int/2addr v6, v0

    .line 640
    invoke-static {v15, v6}, Ljava/lang/Math;->max(II)I

    .line 641
    .line 642
    .line 643
    move-result v15

    .line 644
    add-int/lit8 v0, v20, 0x1

    .line 645
    .line 646
    const/16 v6, 0x8

    .line 647
    .line 648
    goto :goto_14

    .line 649
    :cond_18
    iget v0, v1, Lu/e;->c0:I

    .line 650
    .line 651
    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    .line 652
    .line 653
    .line 654
    move-result v0

    .line 655
    iget v6, v1, Lu/e;->d0:I

    .line 656
    .line 657
    invoke-static {v6, v15}, Ljava/lang/Math;->max(II)I

    .line 658
    .line 659
    .line 660
    move-result v6

    .line 661
    if-ne v8, v9, :cond_19

    .line 662
    .line 663
    invoke-virtual {v1}, Lu/e;->getWidth()I

    .line 664
    .line 665
    .line 666
    move-result v10

    .line 667
    if-ge v10, v0, :cond_19

    .line 668
    .line 669
    invoke-virtual {v1, v0}, Lu/e;->setWidth(I)V

    .line 670
    .line 671
    .line 672
    const/16 v18, 0x0

    .line 673
    .line 674
    aput-object v9, v19, v18

    .line 675
    .line 676
    move/from16 v5, v17

    .line 677
    .line 678
    move/from16 v21, v5

    .line 679
    .line 680
    :cond_19
    if-ne v7, v9, :cond_1a

    .line 681
    .line 682
    invoke-virtual {v1}, Lu/e;->getHeight()I

    .line 683
    .line 684
    .line 685
    move-result v0

    .line 686
    if-ge v0, v6, :cond_1a

    .line 687
    .line 688
    invoke-virtual {v1, v6}, Lu/e;->setHeight(I)V

    .line 689
    .line 690
    .line 691
    aput-object v9, v19, v17

    .line 692
    .line 693
    move/from16 v5, v17

    .line 694
    .line 695
    move/from16 v21, v5

    .line 696
    .line 697
    :cond_1a
    iget v0, v1, Lu/e;->c0:I

    .line 698
    .line 699
    invoke-virtual {v1}, Lu/e;->getWidth()I

    .line 700
    .line 701
    .line 702
    move-result v6

    .line 703
    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    .line 704
    .line 705
    .line 706
    move-result v0

    .line 707
    invoke-virtual {v1}, Lu/e;->getWidth()I

    .line 708
    .line 709
    .line 710
    move-result v6

    .line 711
    sget-object v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 712
    .line 713
    if-le v0, v6, :cond_1b

    .line 714
    .line 715
    invoke-virtual {v1, v0}, Lu/e;->setWidth(I)V

    .line 716
    .line 717
    .line 718
    const/16 v18, 0x0

    .line 719
    .line 720
    aput-object v10, v19, v18

    .line 721
    .line 722
    move/from16 v5, v17

    .line 723
    .line 724
    move/from16 v21, v5

    .line 725
    .line 726
    :cond_1b
    iget v0, v1, Lu/e;->d0:I

    .line 727
    .line 728
    invoke-virtual {v1}, Lu/e;->getHeight()I

    .line 729
    .line 730
    .line 731
    move-result v6

    .line 732
    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    .line 733
    .line 734
    .line 735
    move-result v0

    .line 736
    invoke-virtual {v1}, Lu/e;->getHeight()I

    .line 737
    .line 738
    .line 739
    move-result v6

    .line 740
    if-le v0, v6, :cond_1c

    .line 741
    .line 742
    invoke-virtual {v1, v0}, Lu/e;->setHeight(I)V

    .line 743
    .line 744
    .line 745
    aput-object v10, v19, v17

    .line 746
    .line 747
    move/from16 v5, v17

    .line 748
    .line 749
    move/from16 v21, v5

    .line 750
    .line 751
    :cond_1c
    if-nez v21, :cond_1e

    .line 752
    .line 753
    const/16 v18, 0x0

    .line 754
    .line 755
    aget-object v0, v19, v18

    .line 756
    .line 757
    if-ne v0, v9, :cond_1d

    .line 758
    .line 759
    if-lez v4, :cond_1d

    .line 760
    .line 761
    invoke-virtual {v1}, Lu/e;->getWidth()I

    .line 762
    .line 763
    .line 764
    move-result v0

    .line 765
    if-le v0, v4, :cond_1d

    .line 766
    .line 767
    move/from16 v6, v17

    .line 768
    .line 769
    iput-boolean v6, v1, Lu/f;->E0:Z

    .line 770
    .line 771
    aput-object v10, v19, v18

    .line 772
    .line 773
    invoke-virtual {v1, v4}, Lu/e;->setWidth(I)V

    .line 774
    .line 775
    .line 776
    move v5, v6

    .line 777
    move/from16 v21, v5

    .line 778
    .line 779
    goto :goto_15

    .line 780
    :cond_1d
    move/from16 v6, v17

    .line 781
    .line 782
    :goto_15
    aget-object v0, v19, v6

    .line 783
    .line 784
    if-ne v0, v9, :cond_1e

    .line 785
    .line 786
    if-lez v11, :cond_1e

    .line 787
    .line 788
    invoke-virtual {v1}, Lu/e;->getHeight()I

    .line 789
    .line 790
    .line 791
    move-result v0

    .line 792
    if-le v0, v11, :cond_1e

    .line 793
    .line 794
    iput-boolean v6, v1, Lu/f;->F0:Z

    .line 795
    .line 796
    aput-object v10, v19, v6

    .line 797
    .line 798
    invoke-virtual {v1, v11}, Lu/e;->setHeight(I)V

    .line 799
    .line 800
    .line 801
    const/16 v0, 0x8

    .line 802
    .line 803
    const/4 v5, 0x1

    .line 804
    const/4 v6, 0x1

    .line 805
    goto :goto_16

    .line 806
    :cond_1e
    move/from16 v6, v21

    .line 807
    .line 808
    const/16 v0, 0x8

    .line 809
    .line 810
    :goto_16
    if-le v12, v0, :cond_1f

    .line 811
    .line 812
    const/4 v10, 0x0

    .line 813
    goto :goto_17

    .line 814
    :cond_1f
    move v10, v5

    .line 815
    :goto_17
    move v0, v12

    .line 816
    move-object/from16 v5, v19

    .line 817
    .line 818
    move/from16 v15, v23

    .line 819
    .line 820
    const/16 v17, 0x1

    .line 821
    .line 822
    goto/16 :goto_a

    .line 823
    .line 824
    :cond_20
    move-object/from16 v19, v5

    .line 825
    .line 826
    move/from16 v21, v6

    .line 827
    .line 828
    iput-object v13, v1, Lu/n;->q0:Ljava/util/ArrayList;

    .line 829
    .line 830
    if-eqz v21, :cond_21

    .line 831
    .line 832
    const/16 v18, 0x0

    .line 833
    .line 834
    aput-object v8, v19, v18

    .line 835
    .line 836
    const/16 v17, 0x1

    .line 837
    .line 838
    aput-object v7, v19, v17

    .line 839
    .line 840
    :cond_21
    invoke-virtual {v14}, Lr/f;->getCache()Lr/d;

    .line 841
    .line 842
    .line 843
    move-result-object v0

    .line 844
    invoke-virtual {v1, v0}, Lu/n;->resetSolverVariables(Lr/d;)V

    .line 845
    .line 846
    .line 847
    return-void
.end method

.method public measure(IIIIIIIII)J
    .locals 11

    move/from16 v3, p8

    .line 1
    iput v3, p0, Lu/f;->x0:I

    move/from16 v4, p9

    .line 2
    iput v4, p0, Lu/f;->y0:I

    .line 3
    iget-object v0, p0, Lu/f;->r0:Lv/d;

    move-object v1, p0

    move v2, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-virtual/range {v0 .. v10}, Lv/d;->solverMeasure(Lu/f;IIIIIIIII)J

    move-result-wide p1

    return-wide p1
.end method

.method public optimizeFor(I)Z
    .locals 1

    .line 1
    iget v0, p0, Lu/f;->D0:I

    .line 2
    .line 3
    and-int/2addr v0, p1

    .line 4
    if-ne v0, p1, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    return p1

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    return p1
.end method

.method public reset()V
    .locals 1

    .line 1
    iget-object v0, p0, Lu/f;->w0:Lr/f;

    .line 2
    .line 3
    invoke-virtual {v0}, Lr/f;->reset()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lu/f;->x0:I

    .line 8
    .line 9
    iput v0, p0, Lu/f;->y0:I

    .line 10
    .line 11
    invoke-super {p0}, Lu/n;->reset()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public setMeasurer(Lv/c;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lu/f;->u0:Lv/c;

    .line 2
    .line 3
    iget-object v0, p0, Lu/f;->s0:Lv/g;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lv/g;->setMeasurer(Lv/c;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setOptimizationLevel(I)V
    .locals 0

    .line 1
    iput p1, p0, Lu/f;->D0:I

    .line 2
    .line 3
    const/16 p1, 0x200

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lu/f;->optimizeFor(I)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    sput-boolean p1, Lr/f;->p:Z

    .line 10
    .line 11
    return-void
.end method

.method public setPass(I)V
    .locals 0

    .line 1
    iput p1, p0, Lu/f;->t0:I

    .line 2
    .line 3
    return-void
.end method

.method public setRtl(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lu/f;->v0:Z

    .line 2
    .line 3
    return-void
.end method

.method public updateChildrenFromSolver(Lr/f;[Z)Z
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    aput-boolean v1, p2, v0

    .line 4
    .line 5
    const/16 p2, 0x40

    .line 6
    .line 7
    invoke-virtual {p0, p2}, Lu/f;->optimizeFor(I)Z

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    invoke-virtual {p0, p1, p2}, Lu/e;->updateFromSolver(Lr/f;Z)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lu/n;->q0:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    move v2, v1

    .line 21
    :goto_0
    if-ge v1, v0, :cond_1

    .line 22
    .line 23
    iget-object v3, p0, Lu/n;->q0:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Lu/e;

    .line 30
    .line 31
    invoke-virtual {v3, p1, p2}, Lu/e;->updateFromSolver(Lr/f;Z)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3}, Lu/e;->hasDimensionOverride()Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_0

    .line 39
    .line 40
    const/4 v2, 0x1

    .line 41
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    return v2
.end method

.method public updateFromRuns(ZZ)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Lu/e;->updateFromRuns(ZZ)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lu/n;->q0:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    if-ge v1, v0, :cond_0

    .line 12
    .line 13
    iget-object v2, p0, Lu/n;->q0:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Lu/e;

    .line 20
    .line 21
    invoke-virtual {v2, p1, p2}, Lu/e;->updateFromRuns(ZZ)V

    .line 22
    .line 23
    .line 24
    add-int/lit8 v1, v1, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method

.method public updateHierarchy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lu/f;->r0:Lv/d;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lv/d;->updateHierarchy(Lu/f;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
