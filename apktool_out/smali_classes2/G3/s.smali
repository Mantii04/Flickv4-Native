.class public final LG3/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[LG3/A;

.field public final b:[Landroid/graphics/Matrix;

.field public final c:[Landroid/graphics/Matrix;

.field public final d:Landroid/graphics/PointF;

.field public final e:Landroid/graphics/Path;

.field public final f:Landroid/graphics/Path;

.field public final g:LG3/A;

.field public final h:[F

.field public final i:[F

.field public final j:Landroid/graphics/Path;

.field public final k:Landroid/graphics/Path;

.field public final l:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x4

    .line 5
    new-array v1, v0, [LG3/A;

    .line 6
    .line 7
    iput-object v1, p0, LG3/s;->a:[LG3/A;

    .line 8
    .line 9
    new-array v1, v0, [Landroid/graphics/Matrix;

    .line 10
    .line 11
    iput-object v1, p0, LG3/s;->b:[Landroid/graphics/Matrix;

    .line 12
    .line 13
    new-array v1, v0, [Landroid/graphics/Matrix;

    .line 14
    .line 15
    iput-object v1, p0, LG3/s;->c:[Landroid/graphics/Matrix;

    .line 16
    .line 17
    new-instance v1, Landroid/graphics/PointF;

    .line 18
    .line 19
    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v1, p0, LG3/s;->d:Landroid/graphics/PointF;

    .line 23
    .line 24
    new-instance v1, Landroid/graphics/Path;

    .line 25
    .line 26
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, LG3/s;->e:Landroid/graphics/Path;

    .line 30
    .line 31
    new-instance v1, Landroid/graphics/Path;

    .line 32
    .line 33
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object v1, p0, LG3/s;->f:Landroid/graphics/Path;

    .line 37
    .line 38
    new-instance v1, LG3/A;

    .line 39
    .line 40
    invoke-direct {v1}, LG3/A;-><init>()V

    .line 41
    .line 42
    .line 43
    iput-object v1, p0, LG3/s;->g:LG3/A;

    .line 44
    .line 45
    const/4 v1, 0x2

    .line 46
    new-array v2, v1, [F

    .line 47
    .line 48
    iput-object v2, p0, LG3/s;->h:[F

    .line 49
    .line 50
    new-array v1, v1, [F

    .line 51
    .line 52
    iput-object v1, p0, LG3/s;->i:[F

    .line 53
    .line 54
    new-instance v1, Landroid/graphics/Path;

    .line 55
    .line 56
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 57
    .line 58
    .line 59
    iput-object v1, p0, LG3/s;->j:Landroid/graphics/Path;

    .line 60
    .line 61
    new-instance v1, Landroid/graphics/Path;

    .line 62
    .line 63
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 64
    .line 65
    .line 66
    iput-object v1, p0, LG3/s;->k:Landroid/graphics/Path;

    .line 67
    .line 68
    const/4 v1, 0x1

    .line 69
    iput-boolean v1, p0, LG3/s;->l:Z

    .line 70
    .line 71
    const/4 v1, 0x0

    .line 72
    :goto_0
    if-ge v1, v0, :cond_0

    .line 73
    .line 74
    iget-object v2, p0, LG3/s;->a:[LG3/A;

    .line 75
    .line 76
    new-instance v3, LG3/A;

    .line 77
    .line 78
    invoke-direct {v3}, LG3/A;-><init>()V

    .line 79
    .line 80
    .line 81
    aput-object v3, v2, v1

    .line 82
    .line 83
    iget-object v2, p0, LG3/s;->b:[Landroid/graphics/Matrix;

    .line 84
    .line 85
    new-instance v3, Landroid/graphics/Matrix;

    .line 86
    .line 87
    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 88
    .line 89
    .line 90
    aput-object v3, v2, v1

    .line 91
    .line 92
    iget-object v2, p0, LG3/s;->c:[Landroid/graphics/Matrix;

    .line 93
    .line 94
    new-instance v3, Landroid/graphics/Matrix;

    .line 95
    .line 96
    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 97
    .line 98
    .line 99
    aput-object v3, v2, v1

    .line 100
    .line 101
    add-int/lit8 v1, v1, 0x1

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_0
    return-void
.end method

.method public static getInstance()LG3/s;
    .locals 1

    .line 1
    sget-object v0, LG3/q;->a:LG3/s;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public final a(Landroid/graphics/Path;I)Z
    .locals 3

    .line 1
    iget-object v0, p0, LG3/s;->k:Landroid/graphics/Path;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, LG3/s;->a:[LG3/A;

    .line 7
    .line 8
    aget-object v1, v1, p2

    .line 9
    .line 10
    iget-object v2, p0, LG3/s;->b:[Landroid/graphics/Matrix;

    .line 11
    .line 12
    aget-object p2, v2, p2

    .line 13
    .line 14
    invoke-virtual {v1, p2, v0}, LG3/A;->applyToPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 15
    .line 16
    .line 17
    new-instance p2, Landroid/graphics/RectF;

    .line 18
    .line 19
    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    .line 20
    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    invoke-virtual {p1, p2, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p2, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 27
    .line 28
    .line 29
    sget-object v2, Landroid/graphics/Path$Op;->INTERSECT:Landroid/graphics/Path$Op;

    .line 30
    .line 31
    invoke-virtual {p1, v0, v2}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, p2, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2}, Landroid/graphics/RectF;->isEmpty()Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    const/high16 v0, 0x3f800000    # 1.0f

    .line 48
    .line 49
    cmpl-float p1, p1, v0

    .line 50
    .line 51
    if-lez p1, :cond_0

    .line 52
    .line 53
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    cmpl-float p1, p1, v0

    .line 58
    .line 59
    if-lez p1, :cond_0

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    const/4 p1, 0x0

    .line 63
    return p1

    .line 64
    :cond_1
    :goto_0
    return v1
.end method

.method public calculatePath(LG3/p;FLandroid/graphics/RectF;LG3/r;Landroid/graphics/Path;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v5, p3

    move-object/from16 v7, p5

    .line 2
    invoke-virtual {v7}, Landroid/graphics/Path;->rewind()V

    .line 3
    iget-object v8, v0, LG3/s;->e:Landroid/graphics/Path;

    invoke-virtual {v8}, Landroid/graphics/Path;->rewind()V

    .line 4
    iget-object v9, v0, LG3/s;->f:Landroid/graphics/Path;

    invoke-virtual {v9}, Landroid/graphics/Path;->rewind()V

    .line 5
    sget-object v1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v9, v5, v1}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    const/4 v11, 0x0

    .line 6
    :goto_0
    iget-object v12, v0, LG3/s;->c:[Landroid/graphics/Matrix;

    iget-object v13, v0, LG3/s;->b:[Landroid/graphics/Matrix;

    iget-object v14, v0, LG3/s;->a:[LG3/A;

    const/4 v15, 0x1

    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x3

    iget-object v4, v0, LG3/s;->h:[F

    if-ge v11, v1, :cond_9

    if-eq v11, v15, :cond_2

    if-eq v11, v2, :cond_1

    if-eq v11, v3, :cond_0

    .line 7
    invoke-virtual/range {p1 .. p1}, LG3/p;->getTopRightCornerSize()LG3/c;

    move-result-object v1

    :goto_1
    move-object v6, v1

    goto :goto_2

    .line 8
    :cond_0
    invoke-virtual/range {p1 .. p1}, LG3/p;->getTopLeftCornerSize()LG3/c;

    move-result-object v1

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual/range {p1 .. p1}, LG3/p;->getBottomLeftCornerSize()LG3/c;

    move-result-object v1

    goto :goto_1

    .line 10
    :cond_2
    invoke-virtual/range {p1 .. p1}, LG3/p;->getBottomRightCornerSize()LG3/c;

    move-result-object v1

    goto :goto_1

    :goto_2
    if-eq v11, v15, :cond_5

    if-eq v11, v2, :cond_4

    if-eq v11, v3, :cond_3

    .line 11
    invoke-virtual/range {p1 .. p1}, LG3/p;->getTopRightCorner()LG3/d;

    move-result-object v1

    :goto_3
    move/from16 v16, v2

    goto :goto_4

    .line 12
    :cond_3
    invoke-virtual/range {p1 .. p1}, LG3/p;->getTopLeftCorner()LG3/d;

    move-result-object v1

    goto :goto_3

    .line 13
    :cond_4
    invoke-virtual/range {p1 .. p1}, LG3/p;->getBottomLeftCorner()LG3/d;

    move-result-object v1

    goto :goto_3

    .line 14
    :cond_5
    invoke-virtual/range {p1 .. p1}, LG3/p;->getBottomRightCorner()LG3/d;

    move-result-object v1

    goto :goto_3

    .line 15
    :goto_4
    aget-object v2, v14, v11

    move/from16 v17, v3

    const/high16 v3, 0x42b40000    # 90.0f

    move-object/from16 v20, v4

    move/from16 v10, v16

    const/16 v18, 0x0

    move/from16 v4, p2

    .line 16
    invoke-virtual/range {v1 .. v6}, LG3/d;->getCornerPath(LG3/A;FFLandroid/graphics/RectF;LG3/c;)V

    add-int/lit8 v1, v11, 0x1

    .line 17
    rem-int/lit8 v2, v1, 0x4

    mul-int/lit8 v2, v2, 0x5a

    int-to-float v2, v2

    .line 18
    aget-object v3, v13, v11

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    .line 19
    iget-object v3, v0, LG3/s;->d:Landroid/graphics/PointF;

    if-eq v11, v15, :cond_8

    if-eq v11, v10, :cond_7

    const/4 v4, 0x3

    if-eq v11, v4, :cond_6

    .line 20
    iget v4, v5, Landroid/graphics/RectF;->right:F

    iget v6, v5, Landroid/graphics/RectF;->top:F

    invoke-virtual {v3, v4, v6}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_5

    .line 21
    :cond_6
    iget v4, v5, Landroid/graphics/RectF;->left:F

    iget v6, v5, Landroid/graphics/RectF;->top:F

    invoke-virtual {v3, v4, v6}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_5

    .line 22
    :cond_7
    iget v4, v5, Landroid/graphics/RectF;->left:F

    iget v6, v5, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v3, v4, v6}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_5

    .line 23
    :cond_8
    iget v4, v5, Landroid/graphics/RectF;->right:F

    iget v6, v5, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v3, v4, v6}, Landroid/graphics/PointF;->set(FF)V

    .line 24
    :goto_5
    aget-object v4, v13, v11

    iget v6, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v4, v6, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 25
    aget-object v3, v13, v11

    invoke-virtual {v3, v2}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 26
    aget-object v3, v14, v11

    .line 27
    iget v4, v3, LG3/A;->c:F

    move-object/from16 v6, v20

    .line 28
    aput v4, v6, v18

    .line 29
    iget v3, v3, LG3/A;->d:F

    .line 30
    aput v3, v6, v15

    .line 31
    aget-object v3, v13, v11

    invoke-virtual {v3, v6}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 32
    aget-object v3, v12, v11

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    .line 33
    aget-object v3, v12, v11

    aget v4, v6, v18

    aget v6, v6, v15

    invoke-virtual {v3, v4, v6}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 34
    aget-object v3, v12, v11

    invoke-virtual {v3, v2}, Landroid/graphics/Matrix;->preRotate(F)Z

    move v11, v1

    goto/16 :goto_0

    :cond_9
    move v10, v2

    move-object v6, v4

    const/16 v18, 0x0

    move v4, v3

    move/from16 v2, v18

    :goto_6
    if-ge v2, v1, :cond_13

    .line 35
    aget-object v3, v14, v2

    .line 36
    iget v11, v3, LG3/A;->a:F

    .line 37
    aput v11, v6, v18

    .line 38
    iget v3, v3, LG3/A;->b:F

    .line 39
    aput v3, v6, v15

    .line 40
    aget-object v3, v13, v2

    invoke-virtual {v3, v6}, Landroid/graphics/Matrix;->mapPoints([F)V

    if-nez v2, :cond_a

    .line 41
    aget v3, v6, v18

    aget v11, v6, v15

    invoke-virtual {v7, v3, v11}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_7

    .line 42
    :cond_a
    aget v3, v6, v18

    aget v11, v6, v15

    invoke-virtual {v7, v3, v11}, Landroid/graphics/Path;->lineTo(FF)V

    .line 43
    :goto_7
    aget-object v3, v14, v2

    aget-object v11, v13, v2

    invoke-virtual {v3, v11, v7}, LG3/A;->applyToPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    if-eqz p4, :cond_b

    .line 44
    aget-object v3, v14, v2

    aget-object v11, v13, v2

    move-object/from16 v1, p4

    check-cast v1, LG3/g;

    invoke-virtual {v1, v3, v11, v2}, LG3/g;->onCornerPathCreated(LG3/A;Landroid/graphics/Matrix;I)V

    :cond_b
    add-int/lit8 v1, v2, 0x1

    .line 45
    rem-int/lit8 v3, v1, 0x4

    .line 46
    aget-object v11, v14, v2

    .line 47
    iget v10, v11, LG3/A;->c:F

    .line 48
    aput v10, v6, v18

    .line 49
    iget v10, v11, LG3/A;->d:F

    .line 50
    aput v10, v6, v15

    .line 51
    aget-object v10, v13, v2

    invoke-virtual {v10, v6}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 52
    aget-object v10, v14, v3

    .line 53
    iget v11, v10, LG3/A;->a:F

    .line 54
    iget-object v4, v0, LG3/s;->i:[F

    aput v11, v4, v18

    .line 55
    iget v10, v10, LG3/A;->b:F

    .line 56
    aput v10, v4, v15

    .line 57
    aget-object v10, v13, v3

    invoke-virtual {v10, v4}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 58
    aget v10, v6, v18

    aget v11, v4, v18

    sub-float/2addr v10, v11

    float-to-double v10, v10

    aget v20, v6, v15

    aget v4, v4, v15

    sub-float v4, v20, v4

    float-to-double v4, v4

    invoke-static {v10, v11, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    double-to-float v4, v4

    const v5, 0x3a83126f    # 0.001f

    sub-float/2addr v4, v5

    const/4 v5, 0x0

    .line 59
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 60
    aget-object v10, v14, v2

    iget v11, v10, LG3/A;->c:F

    aput v11, v6, v18

    .line 61
    iget v10, v10, LG3/A;->d:F

    aput v10, v6, v15

    .line 62
    aget-object v10, v13, v2

    invoke-virtual {v10, v6}, Landroid/graphics/Matrix;->mapPoints([F)V

    if-eq v2, v15, :cond_c

    const/4 v10, 0x3

    if-eq v2, v10, :cond_c

    .line 63
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->centerY()F

    move-result v10

    aget v11, v6, v15

    sub-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    goto :goto_8

    .line 64
    :cond_c
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->centerX()F

    move-result v10

    aget v11, v6, v18

    sub-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    .line 65
    :goto_8
    iget-object v11, v0, LG3/s;->g:LG3/A;

    invoke-virtual {v11, v5, v5}, LG3/A;->reset(FF)V

    if-eq v2, v15, :cond_f

    const/4 v5, 0x2

    if-eq v2, v5, :cond_e

    const/4 v5, 0x3

    if-eq v2, v5, :cond_d

    .line 66
    invoke-virtual/range {p1 .. p1}, LG3/p;->getRightEdge()LG3/f;

    move-result-object v19

    :goto_9
    move-object/from16 v5, v19

    move/from16 v19, v15

    move/from16 v15, p2

    goto :goto_a

    .line 67
    :cond_d
    invoke-virtual/range {p1 .. p1}, LG3/p;->getTopEdge()LG3/f;

    move-result-object v19

    goto :goto_9

    :cond_e
    const/4 v5, 0x3

    .line 68
    invoke-virtual/range {p1 .. p1}, LG3/p;->getLeftEdge()LG3/f;

    move-result-object v19

    goto :goto_9

    :cond_f
    const/4 v5, 0x3

    .line 69
    invoke-virtual/range {p1 .. p1}, LG3/p;->getBottomEdge()LG3/f;

    move-result-object v19

    goto :goto_9

    .line 70
    :goto_a
    invoke-virtual {v5, v4, v10, v15, v11}, LG3/f;->getEdgePath(FFFLG3/A;)V

    .line 71
    iget-object v4, v0, LG3/s;->j:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 72
    aget-object v5, v12, v2

    invoke-virtual {v11, v5, v4}, LG3/A;->applyToPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 73
    iget-boolean v5, v0, LG3/s;->l:Z

    if-eqz v5, :cond_11

    .line 74
    invoke-virtual {v0, v4, v2}, LG3/s;->a(Landroid/graphics/Path;I)Z

    move-result v5

    if-nez v5, :cond_10

    .line 75
    invoke-virtual {v0, v4, v3}, LG3/s;->a(Landroid/graphics/Path;I)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 76
    :cond_10
    sget-object v3, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-virtual {v4, v4, v9, v3}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 77
    iget v3, v11, LG3/A;->a:F

    .line 78
    aput v3, v6, v18

    .line 79
    iget v3, v11, LG3/A;->b:F

    .line 80
    aput v3, v6, v19

    .line 81
    aget-object v3, v12, v2

    invoke-virtual {v3, v6}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 82
    aget v3, v6, v18

    aget v4, v6, v19

    invoke-virtual {v8, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 83
    aget-object v3, v12, v2

    invoke-virtual {v11, v3, v8}, LG3/A;->applyToPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    goto :goto_b

    .line 84
    :cond_11
    aget-object v3, v12, v2

    invoke-virtual {v11, v3, v7}, LG3/A;->applyToPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    :goto_b
    if-eqz p4, :cond_12

    .line 85
    aget-object v3, v12, v2

    move-object/from16 v4, p4

    check-cast v4, LG3/g;

    invoke-virtual {v4, v11, v3, v2}, LG3/g;->onEdgePathCreated(LG3/A;Landroid/graphics/Matrix;I)V

    :cond_12
    move-object/from16 v5, p3

    move v2, v1

    move/from16 v15, v19

    const/4 v1, 0x4

    const/4 v4, 0x3

    const/4 v10, 0x2

    goto/16 :goto_6

    .line 86
    :cond_13
    invoke-virtual {v7}, Landroid/graphics/Path;->close()V

    .line 87
    invoke-virtual {v8}, Landroid/graphics/Path;->close()V

    .line 88
    invoke-virtual {v8}, Landroid/graphics/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_14

    .line 89
    sget-object v1, Landroid/graphics/Path$Op;->UNION:Landroid/graphics/Path$Op;

    invoke-virtual {v7, v8, v1}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    :cond_14
    return-void
.end method

.method public calculatePath(LG3/p;FLandroid/graphics/RectF;Landroid/graphics/Path;)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 1
    invoke-virtual/range {v0 .. v5}, LG3/s;->calculatePath(LG3/p;FLandroid/graphics/RectF;LG3/r;Landroid/graphics/Path;)V

    return-void
.end method
