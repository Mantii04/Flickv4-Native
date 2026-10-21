.class public final Lv/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public final b:Lv/b;

.field public final c:Lu/f;


# direct methods
.method public constructor <init>(Lu/f;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lv/d;->a:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Lv/b;

    .line 12
    .line 13
    invoke-direct {v0}, Lv/b;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lv/d;->b:Lv/b;

    .line 17
    .line 18
    iput-object p1, p0, Lv/d;->c:Lu/f;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final a(ILu/e;Lv/c;)Z
    .locals 7

    .line 1
    invoke-virtual {p2}, Lu/e;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lv/d;->b:Lv/b;

    .line 6
    .line 7
    iput-object v0, v1, Lv/b;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 8
    .line 9
    invoke-virtual {p2}, Lu/e;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, v1, Lv/b;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 14
    .line 15
    invoke-virtual {p2}, Lu/e;->getWidth()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iput v0, v1, Lv/b;->c:I

    .line 20
    .line 21
    invoke-virtual {p2}, Lu/e;->getHeight()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    iput v0, v1, Lv/b;->d:I

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    iput-boolean v0, v1, Lv/b;->i:Z

    .line 29
    .line 30
    iput p1, v1, Lv/b;->j:I

    .line 31
    .line 32
    iget-object p1, v1, Lv/b;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 33
    .line 34
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->f:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 35
    .line 36
    const/4 v3, 0x1

    .line 37
    if-ne p1, v2, :cond_0

    .line 38
    .line 39
    move p1, v3

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    move p1, v0

    .line 42
    :goto_0
    iget-object v4, v1, Lv/b;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 43
    .line 44
    if-ne v4, v2, :cond_1

    .line 45
    .line 46
    move v2, v3

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    move v2, v0

    .line 49
    :goto_1
    const/4 v4, 0x0

    .line 50
    if-eqz p1, :cond_2

    .line 51
    .line 52
    iget p1, p2, Lu/e;->X:F

    .line 53
    .line 54
    cmpl-float p1, p1, v4

    .line 55
    .line 56
    if-lez p1, :cond_2

    .line 57
    .line 58
    move p1, v3

    .line 59
    goto :goto_2

    .line 60
    :cond_2
    move p1, v0

    .line 61
    :goto_2
    if-eqz v2, :cond_3

    .line 62
    .line 63
    iget v2, p2, Lu/e;->X:F

    .line 64
    .line 65
    cmpl-float v2, v2, v4

    .line 66
    .line 67
    if-lez v2, :cond_3

    .line 68
    .line 69
    move v2, v3

    .line 70
    goto :goto_3

    .line 71
    :cond_3
    move v2, v0

    .line 72
    :goto_3
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 73
    .line 74
    const/4 v5, 0x4

    .line 75
    iget-object v6, p2, Lu/e;->t:[I

    .line 76
    .line 77
    if-eqz p1, :cond_4

    .line 78
    .line 79
    aget p1, v6, v0

    .line 80
    .line 81
    if-ne p1, v5, :cond_4

    .line 82
    .line 83
    iput-object v4, v1, Lv/b;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 84
    .line 85
    :cond_4
    if-eqz v2, :cond_5

    .line 86
    .line 87
    aget p1, v6, v3

    .line 88
    .line 89
    if-ne p1, v5, :cond_5

    .line 90
    .line 91
    iput-object v4, v1, Lv/b;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 92
    .line 93
    :cond_5
    check-cast p3, Lx/a;

    .line 94
    .line 95
    invoke-virtual {p3, p2, v1}, Lx/a;->measure(Lu/e;Lv/b;)V

    .line 96
    .line 97
    .line 98
    iget p1, v1, Lv/b;->e:I

    .line 99
    .line 100
    invoke-virtual {p2, p1}, Lu/e;->setWidth(I)V

    .line 101
    .line 102
    .line 103
    iget p1, v1, Lv/b;->f:I

    .line 104
    .line 105
    invoke-virtual {p2, p1}, Lu/e;->setHeight(I)V

    .line 106
    .line 107
    .line 108
    iget-boolean p1, v1, Lv/b;->h:Z

    .line 109
    .line 110
    invoke-virtual {p2, p1}, Lu/e;->setHasBaseline(Z)V

    .line 111
    .line 112
    .line 113
    iget p1, v1, Lv/b;->g:I

    .line 114
    .line 115
    invoke-virtual {p2, p1}, Lu/e;->setBaselineDistance(I)V

    .line 116
    .line 117
    .line 118
    iput v0, v1, Lv/b;->j:I

    .line 119
    .line 120
    iget-boolean p1, v1, Lv/b;->i:Z

    .line 121
    .line 122
    return p1
.end method

.method public final b(Lu/f;III)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lu/e;->getMinWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Lu/e;->getMinHeight()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {p1, v2}, Lu/e;->setMinWidth(I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v2}, Lu/e;->setMinHeight(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p3}, Lu/e;->setWidth(I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p4}, Lu/e;->setHeight(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0}, Lu/e;->setMinWidth(I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v1}, Lu/e;->setMinHeight(I)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lv/d;->c:Lu/f;

    .line 29
    .line 30
    invoke-virtual {p1, p2}, Lu/f;->setPass(I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Lu/f;->layout()V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public solverMeasure(Lu/f;IIIIIIIII)J
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p5

    move/from16 v4, p7

    .line 1
    invoke-virtual {v1}, Lu/f;->getMeasurer()Lv/c;

    move-result-object v5

    .line 2
    iget-object v6, v1, Lu/n;->q0:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 3
    invoke-virtual {v1}, Lu/e;->getWidth()I

    move-result v7

    .line 4
    invoke-virtual {v1}, Lu/e;->getHeight()I

    move-result v8

    const/16 v9, 0x80

    .line 5
    invoke-static {v2, v9}, Lu/l;->enabled(II)Z

    move-result v9

    const/16 v10, 0x40

    const/4 v11, 0x0

    if-nez v9, :cond_1

    .line 6
    invoke-static {v2, v10}, Lu/l;->enabled(II)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v11

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 7
    :goto_1
    sget-object v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->f:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-eqz v2, :cond_a

    move v15, v11

    :goto_2
    if-ge v15, v6, :cond_a

    const/16 p2, 0x0

    .line 8
    iget-object v14, v1, Lu/n;->q0:Ljava/util/ArrayList;

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lu/e;

    .line 9
    invoke-virtual {v14}, Lu/e;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v10

    if-ne v10, v13, :cond_2

    const/4 v10, 0x1

    goto :goto_3

    :cond_2
    move v10, v11

    .line 10
    :goto_3
    invoke-virtual {v14}, Lu/e;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v12

    if-ne v12, v13, :cond_3

    const/4 v12, 0x1

    goto :goto_4

    :cond_3
    move v12, v11

    :goto_4
    if-eqz v10, :cond_4

    if-eqz v12, :cond_4

    .line 11
    invoke-virtual {v14}, Lu/e;->getDimensionRatio()F

    move-result v10

    cmpl-float v10, v10, p2

    if-lez v10, :cond_4

    const/4 v10, 0x1

    goto :goto_5

    :cond_4
    move v10, v11

    .line 12
    :goto_5
    invoke-virtual {v14}, Lu/e;->isInHorizontalChain()Z

    move-result v12

    if-eqz v12, :cond_6

    if-eqz v10, :cond_6

    :cond_5
    :goto_6
    move v2, v11

    goto :goto_7

    .line 13
    :cond_6
    invoke-virtual {v14}, Lu/e;->isInVerticalChain()Z

    move-result v12

    if-eqz v12, :cond_7

    if-eqz v10, :cond_7

    goto :goto_6

    .line 14
    :cond_7
    instance-of v10, v14, Lu/m;

    if-eqz v10, :cond_8

    goto :goto_6

    .line 15
    :cond_8
    invoke-virtual {v14}, Lu/e;->isInHorizontalChain()Z

    move-result v10

    if-nez v10, :cond_5

    .line 16
    invoke-virtual {v14}, Lu/e;->isInVerticalChain()Z

    move-result v10

    if-eqz v10, :cond_9

    goto :goto_6

    :cond_9
    add-int/lit8 v15, v15, 0x1

    const/16 v10, 0x40

    goto :goto_2

    :cond_a
    const/16 p2, 0x0

    :goto_7
    const/high16 v10, 0x40000000    # 2.0f

    if-ne v3, v10, :cond_b

    if-eq v4, v10, :cond_c

    :cond_b
    if-eqz v9, :cond_d

    :cond_c
    const/4 v12, 0x1

    goto :goto_8

    :cond_d
    move v12, v11

    :goto_8
    and-int/2addr v2, v12

    if-eqz v2, :cond_15

    .line 17
    invoke-virtual {v1}, Lu/e;->getMaxWidth()I

    move-result v14

    move/from16 v15, p6

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 18
    invoke-virtual {v1}, Lu/e;->getMaxHeight()I

    move-result v15

    move/from16 v12, p8

    invoke-static {v15, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    if-ne v3, v10, :cond_e

    .line 19
    invoke-virtual {v1}, Lu/e;->getWidth()I

    move-result v15

    if-eq v15, v14, :cond_e

    .line 20
    invoke-virtual {v1, v14}, Lu/e;->setWidth(I)V

    .line 21
    invoke-virtual {v1}, Lu/f;->invalidateGraph()V

    :cond_e
    if-ne v4, v10, :cond_f

    .line 22
    invoke-virtual {v1}, Lu/e;->getHeight()I

    move-result v14

    if-eq v14, v12, :cond_f

    .line 23
    invoke-virtual {v1, v12}, Lu/e;->setHeight(I)V

    .line 24
    invoke-virtual {v1}, Lu/f;->invalidateGraph()V

    :cond_f
    if-ne v3, v10, :cond_10

    if-ne v4, v10, :cond_10

    .line 25
    invoke-virtual {v1, v9}, Lu/f;->directMeasure(Z)Z

    move-result v9

    const/4 v12, 0x2

    goto :goto_a

    .line 26
    :cond_10
    invoke-virtual {v1, v9}, Lu/f;->directMeasureSetup(Z)Z

    move-result v12

    if-ne v3, v10, :cond_11

    .line 27
    invoke-virtual {v1, v9, v11}, Lu/f;->directMeasureWithOrientation(ZI)Z

    move-result v14

    and-int/2addr v12, v14

    move v14, v12

    const/4 v12, 0x1

    goto :goto_9

    :cond_11
    move v14, v12

    move v12, v11

    :goto_9
    if-ne v4, v10, :cond_12

    const/4 v15, 0x1

    .line 28
    invoke-virtual {v1, v9, v15}, Lu/f;->directMeasureWithOrientation(ZI)Z

    move-result v9

    and-int/2addr v9, v14

    add-int/lit8 v12, v12, 0x1

    goto :goto_a

    :cond_12
    move v9, v14

    :goto_a
    if-eqz v9, :cond_16

    if-ne v3, v10, :cond_13

    const/4 v3, 0x1

    goto :goto_b

    :cond_13
    move v3, v11

    :goto_b
    if-ne v4, v10, :cond_14

    const/4 v4, 0x1

    goto :goto_c

    :cond_14
    move v4, v11

    .line 29
    :goto_c
    invoke-virtual {v1, v3, v4}, Lu/f;->updateFromRuns(ZZ)V

    goto :goto_d

    :cond_15
    move v9, v11

    move v12, v9

    :cond_16
    :goto_d
    const-wide/16 v3, 0x0

    if-eqz v9, :cond_18

    const/4 v9, 0x2

    if-eq v12, v9, :cond_17

    goto :goto_e

    :cond_17
    return-wide v3

    .line 30
    :cond_18
    :goto_e
    invoke-virtual {v1}, Lu/f;->getOptimizationLevel()I

    move-result v9

    if-lez v6, :cond_25

    .line 31
    iget-object v10, v1, Lu/n;->q0:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/16 v12, 0x40

    .line 32
    invoke-virtual {v1, v12}, Lu/f;->optimizeFor(I)Z

    move-result v12

    .line 33
    invoke-virtual {v1}, Lu/f;->getMeasurer()Lv/c;

    move-result-object v14

    move v15, v11

    :goto_f
    if-ge v15, v10, :cond_24

    move-wide/from16 p5, v3

    .line 34
    iget-object v3, v1, Lu/n;->q0:Ljava/util/ArrayList;

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lu/e;

    .line 35
    instance-of v4, v3, Lu/i;

    if-eqz v4, :cond_19

    :goto_10
    move/from16 p10, v2

    move/from16 v16, v6

    goto/16 :goto_13

    .line 36
    :cond_19
    instance-of v4, v3, Lu/a;

    if-eqz v4, :cond_1a

    goto :goto_10

    .line 37
    :cond_1a
    invoke-virtual {v3}, Lu/e;->isInVirtualLayout()Z

    move-result v4

    if-eqz v4, :cond_1b

    goto :goto_10

    :cond_1b
    if-eqz v12, :cond_1d

    .line 38
    iget-object v4, v3, Lu/e;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    if-eqz v4, :cond_1d

    iget-object v11, v3, Lu/e;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    if-eqz v11, :cond_1c

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    iget-boolean v4, v4, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    if-eqz v4, :cond_1c

    iget-object v4, v11, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    iget-boolean v4, v4, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    if-eqz v4, :cond_1c

    goto :goto_10

    :cond_1c
    const/4 v4, 0x0

    goto :goto_11

    :cond_1d
    move v4, v11

    .line 39
    :goto_11
    invoke-virtual {v3, v4}, Lu/e;->getDimensionBehaviour(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v11

    move/from16 p10, v2

    const/4 v4, 0x1

    .line 40
    invoke-virtual {v3, v4}, Lu/e;->getDimensionBehaviour(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v2

    move/from16 v16, v6

    if-ne v11, v13, :cond_1e

    .line 41
    iget v6, v3, Lu/e;->r:I

    if-eq v6, v4, :cond_1e

    if-ne v2, v13, :cond_1e

    iget v6, v3, Lu/e;->s:I

    if-eq v6, v4, :cond_1e

    move v6, v4

    goto :goto_12

    :cond_1e
    const/4 v6, 0x0

    :goto_12
    if-nez v6, :cond_22

    .line 42
    invoke-virtual {v1, v4}, Lu/f;->optimizeFor(I)Z

    move-result v17

    if-eqz v17, :cond_22

    instance-of v4, v3, Lu/m;

    if-nez v4, :cond_22

    if-ne v11, v13, :cond_1f

    .line 43
    iget v4, v3, Lu/e;->r:I

    if-nez v4, :cond_1f

    if-eq v2, v13, :cond_1f

    .line 44
    invoke-virtual {v3}, Lu/e;->isInHorizontalChain()Z

    move-result v4

    if-nez v4, :cond_1f

    const/4 v6, 0x1

    :cond_1f
    if-ne v2, v13, :cond_20

    .line 45
    iget v4, v3, Lu/e;->s:I

    if-nez v4, :cond_20

    if-eq v11, v13, :cond_20

    .line 46
    invoke-virtual {v3}, Lu/e;->isInHorizontalChain()Z

    move-result v4

    if-nez v4, :cond_20

    const/4 v6, 0x1

    :cond_20
    if-eq v11, v13, :cond_21

    if-ne v2, v13, :cond_22

    .line 47
    :cond_21
    iget v2, v3, Lu/e;->X:F

    cmpl-float v2, v2, p2

    if-lez v2, :cond_22

    const/4 v6, 0x1

    :cond_22
    if-eqz v6, :cond_23

    goto :goto_13

    :cond_23
    const/4 v4, 0x0

    .line 48
    invoke-virtual {v0, v4, v3, v14}, Lv/d;->a(ILu/e;Lv/c;)Z

    :goto_13
    add-int/lit8 v15, v15, 0x1

    move-wide/from16 v3, p5

    move/from16 v2, p10

    move/from16 v6, v16

    const/4 v11, 0x0

    goto/16 :goto_f

    :cond_24
    move/from16 p10, v2

    move-wide/from16 p5, v3

    move/from16 v16, v6

    .line 49
    check-cast v14, Lx/a;

    invoke-virtual {v14}, Lx/a;->didMeasures()V

    goto :goto_14

    :cond_25
    move/from16 p10, v2

    move-wide/from16 p5, v3

    move/from16 v16, v6

    .line 50
    :goto_14
    invoke-virtual/range {p0 .. p1}, Lv/d;->updateHierarchy(Lu/f;)V

    .line 51
    iget-object v2, v0, Lv/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    if-lez v16, :cond_26

    .line 52
    invoke-virtual {v0, v1, v4, v7, v8}, Lv/d;->b(Lu/f;III)V

    :cond_26
    if-lez v3, :cond_3d

    .line 53
    invoke-virtual {v1}, Lu/e;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v6

    sget-object v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->e:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v6, v10, :cond_27

    const/4 v15, 0x1

    goto :goto_15

    :cond_27
    move v15, v4

    .line 54
    :goto_15
    invoke-virtual {v1}, Lu/e;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v6

    if-ne v6, v10, :cond_28

    const/4 v6, 0x1

    goto :goto_16

    :cond_28
    move v6, v4

    .line 55
    :goto_16
    invoke-virtual {v1}, Lu/e;->getWidth()I

    move-result v10

    iget-object v11, v0, Lv/d;->c:Lu/f;

    invoke-virtual {v11}, Lu/e;->getMinWidth()I

    move-result v12

    invoke-static {v10, v12}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 56
    invoke-virtual {v1}, Lu/e;->getHeight()I

    move-result v12

    invoke-virtual {v11}, Lu/e;->getMinHeight()I

    move-result v11

    invoke-static {v12, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    move v12, v10

    move v13, v11

    move v10, v4

    move v11, v10

    .line 57
    :goto_17
    sget-object v14, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->j:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    if-ge v10, v3, :cond_2e

    .line 58
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move/from16 p2, v6

    move-object/from16 v6, v16

    check-cast v6, Lu/e;

    move/from16 v16, v10

    .line 59
    instance-of v10, v6, Lu/m;

    if-nez v10, :cond_29

    move/from16 v17, v9

    move/from16 p8, v15

    goto :goto_19

    .line 60
    :cond_29
    invoke-virtual {v6}, Lu/e;->getWidth()I

    move-result v10

    move/from16 p7, v11

    .line 61
    invoke-virtual {v6}, Lu/e;->getHeight()I

    move-result v11

    move/from16 p8, v15

    const/4 v15, 0x1

    .line 62
    invoke-virtual {v0, v15, v6, v5}, Lv/d;->a(ILu/e;Lv/c;)Z

    move-result v17

    or-int v15, p7, v17

    move/from16 p7, v15

    .line 63
    invoke-virtual {v6}, Lu/e;->getWidth()I

    move-result v15

    move/from16 v17, v9

    .line 64
    invoke-virtual {v6}, Lu/e;->getHeight()I

    move-result v9

    if-eq v15, v10, :cond_2b

    .line 65
    invoke-virtual {v6, v15}, Lu/e;->setWidth(I)V

    if-eqz p8, :cond_2a

    .line 66
    invoke-virtual {v6}, Lu/e;->getRight()I

    move-result v10

    if-le v10, v12, :cond_2a

    .line 67
    invoke-virtual {v6}, Lu/e;->getRight()I

    move-result v10

    .line 68
    invoke-virtual {v6, v4}, Lu/e;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lu/d;

    move-result-object v4

    invoke-virtual {v4}, Lu/d;->getMargin()I

    move-result v4

    add-int/2addr v4, v10

    .line 69
    invoke-static {v12, v4}, Ljava/lang/Math;->max(II)I

    move-result v12

    :cond_2a
    const/4 v15, 0x1

    goto :goto_18

    :cond_2b
    move/from16 v15, p7

    :goto_18
    if-eq v9, v11, :cond_2d

    .line 70
    invoke-virtual {v6, v9}, Lu/e;->setHeight(I)V

    if-eqz p2, :cond_2c

    .line 71
    invoke-virtual {v6}, Lu/e;->getBottom()I

    move-result v4

    if-le v4, v13, :cond_2c

    .line 72
    invoke-virtual {v6}, Lu/e;->getBottom()I

    move-result v4

    .line 73
    invoke-virtual {v6, v14}, Lu/e;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lu/d;

    move-result-object v9

    invoke-virtual {v9}, Lu/d;->getMargin()I

    move-result v9

    add-int/2addr v9, v4

    .line 74
    invoke-static {v13, v9}, Ljava/lang/Math;->max(II)I

    move-result v13

    :cond_2c
    const/4 v15, 0x1

    .line 75
    :cond_2d
    check-cast v6, Lu/m;

    .line 76
    invoke-virtual {v6}, Lu/m;->needSolverPass()Z

    move-result v4

    or-int/2addr v4, v15

    move v11, v4

    :goto_19
    add-int/lit8 v10, v16, 0x1

    move/from16 v6, p2

    move/from16 v15, p8

    move/from16 v9, v17

    const/4 v4, 0x0

    goto/16 :goto_17

    :cond_2e
    move/from16 p2, v6

    move/from16 v17, v9

    move/from16 p7, v11

    move/from16 p8, v15

    move/from16 v9, p7

    const/4 v6, 0x0

    :goto_1a
    const/4 v15, 0x2

    if-ge v6, v15, :cond_3c

    move v10, v9

    const/4 v9, 0x0

    :goto_1b
    if-ge v9, v3, :cond_3b

    .line 77
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lu/e;

    .line 78
    instance-of v15, v11, Lu/j;

    if-eqz v15, :cond_30

    instance-of v15, v11, Lu/m;

    if-eqz v15, :cond_2f

    goto :goto_1d

    :cond_2f
    :goto_1c
    move-object/from16 v16, v2

    goto :goto_1e

    :cond_30
    :goto_1d
    instance-of v15, v11, Lu/i;

    if-eqz v15, :cond_31

    goto :goto_1c

    .line 79
    :cond_31
    invoke-virtual {v11}, Lu/e;->getVisibility()I

    move-result v15

    move-object/from16 v16, v2

    const/16 v2, 0x8

    if-ne v15, v2, :cond_32

    goto :goto_1e

    :cond_32
    if-eqz p10, :cond_33

    .line 80
    iget-object v2, v11, Lu/e;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    iget-boolean v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    if-eqz v2, :cond_33

    iget-object v2, v11, Lu/e;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    iget-boolean v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    if-eqz v2, :cond_33

    goto :goto_1e

    .line 81
    :cond_33
    instance-of v2, v11, Lu/m;

    if-eqz v2, :cond_34

    :goto_1e
    move/from16 p7, v3

    move-object/from16 v19, v5

    move/from16 v18, v9

    goto/16 :goto_20

    .line 82
    :cond_34
    invoke-virtual {v11}, Lu/e;->getWidth()I

    move-result v2

    .line 83
    invoke-virtual {v11}, Lu/e;->getHeight()I

    move-result v15

    move/from16 p7, v3

    .line 84
    invoke-virtual {v11}, Lu/e;->getBaselineDistance()I

    move-result v3

    move/from16 v18, v9

    const/4 v9, 0x1

    if-ne v6, v9, :cond_35

    const/4 v9, 0x2

    .line 85
    :cond_35
    invoke-virtual {v0, v9, v11, v5}, Lv/d;->a(ILu/e;Lv/c;)Z

    move-result v9

    or-int/2addr v9, v10

    .line 86
    invoke-virtual {v11}, Lu/e;->getWidth()I

    move-result v10

    move-object/from16 v19, v5

    .line 87
    invoke-virtual {v11}, Lu/e;->getHeight()I

    move-result v5

    if-eq v10, v2, :cond_37

    .line 88
    invoke-virtual {v11, v10}, Lu/e;->setWidth(I)V

    if-eqz p8, :cond_36

    .line 89
    invoke-virtual {v11}, Lu/e;->getRight()I

    move-result v2

    if-le v2, v12, :cond_36

    .line 90
    invoke-virtual {v11}, Lu/e;->getRight()I

    move-result v2

    .line 91
    invoke-virtual {v11, v4}, Lu/e;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lu/d;

    move-result-object v9

    invoke-virtual {v9}, Lu/d;->getMargin()I

    move-result v9

    add-int/2addr v9, v2

    .line 92
    invoke-static {v12, v9}, Ljava/lang/Math;->max(II)I

    move-result v12

    :cond_36
    const/4 v9, 0x1

    :cond_37
    if-eq v5, v15, :cond_39

    .line 93
    invoke-virtual {v11, v5}, Lu/e;->setHeight(I)V

    if-eqz p2, :cond_38

    .line 94
    invoke-virtual {v11}, Lu/e;->getBottom()I

    move-result v2

    if-le v2, v13, :cond_38

    .line 95
    invoke-virtual {v11}, Lu/e;->getBottom()I

    move-result v2

    .line 96
    invoke-virtual {v11, v14}, Lu/e;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lu/d;

    move-result-object v5

    invoke-virtual {v5}, Lu/d;->getMargin()I

    move-result v5

    add-int/2addr v5, v2

    .line 97
    invoke-static {v13, v5}, Ljava/lang/Math;->max(II)I

    move-result v13

    :cond_38
    const/4 v15, 0x1

    goto :goto_1f

    :cond_39
    move v15, v9

    .line 98
    :goto_1f
    invoke-virtual {v11}, Lu/e;->hasBaseline()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-virtual {v11}, Lu/e;->getBaselineDistance()I

    move-result v2

    if-eq v3, v2, :cond_3a

    const/4 v10, 0x1

    goto :goto_20

    :cond_3a
    move v10, v15

    :goto_20
    add-int/lit8 v9, v18, 0x1

    move/from16 v3, p7

    move-object/from16 v2, v16

    move-object/from16 v5, v19

    const/4 v15, 0x2

    goto/16 :goto_1b

    :cond_3b
    move-object/from16 v16, v2

    move/from16 p7, v3

    move-object/from16 v19, v5

    if-eqz v10, :cond_3c

    add-int/lit8 v6, v6, 0x1

    .line 99
    invoke-virtual {v0, v1, v6, v7, v8}, Lv/d;->b(Lu/f;III)V

    move/from16 v3, p7

    move-object/from16 v2, v16

    move-object/from16 v5, v19

    const/4 v9, 0x0

    goto/16 :goto_1a

    :cond_3c
    move/from16 v2, v17

    goto :goto_21

    :cond_3d
    move v2, v9

    .line 100
    :goto_21
    invoke-virtual {v1, v2}, Lu/f;->setOptimizationLevel(I)V

    return-wide p5
.end method

.method public updateHierarchy(Lu/f;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lv/d;->a:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p1, Lu/n;->q0:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x0

    .line 13
    :goto_0
    if-ge v2, v1, :cond_2

    .line 14
    .line 15
    iget-object v3, p1, Lu/n;->q0:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    check-cast v3, Lu/e;

    .line 22
    .line 23
    invoke-virtual {v3}, Lu/e;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->f:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 28
    .line 29
    if-eq v4, v5, :cond_0

    .line 30
    .line 31
    invoke-virtual {v3}, Lu/e;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    if-ne v4, v5, :cond_1

    .line 36
    .line 37
    :cond_0
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    invoke-virtual {p1}, Lu/f;->invalidateGraph()V

    .line 44
    .line 45
    .line 46
    return-void
.end method
