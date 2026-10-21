.class public final Lr/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static p:Z = false

.field public static q:I = 0x3e8


# instance fields
.field public a:Z

.field public b:I

.field public final c:Lr/l;

.field public d:I

.field public e:I

.field public f:[Lr/c;

.field public g:Z

.field public h:[Z

.field public i:I

.field public j:I

.field public k:I

.field public final l:Lr/d;

.field public m:[Lr/m;

.field public n:I

.field public o:Lr/c;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lr/f;->a:Z

    .line 6
    .line 7
    iput v0, p0, Lr/f;->b:I

    .line 8
    .line 9
    const/16 v1, 0x20

    .line 10
    .line 11
    iput v1, p0, Lr/f;->d:I

    .line 12
    .line 13
    iput v1, p0, Lr/f;->e:I

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    iput-object v2, p0, Lr/f;->f:[Lr/c;

    .line 17
    .line 18
    iput-boolean v0, p0, Lr/f;->g:Z

    .line 19
    .line 20
    new-array v2, v1, [Z

    .line 21
    .line 22
    iput-object v2, p0, Lr/f;->h:[Z

    .line 23
    .line 24
    const/4 v2, 0x1

    .line 25
    iput v2, p0, Lr/f;->i:I

    .line 26
    .line 27
    iput v0, p0, Lr/f;->j:I

    .line 28
    .line 29
    iput v1, p0, Lr/f;->k:I

    .line 30
    .line 31
    sget v2, Lr/f;->q:I

    .line 32
    .line 33
    new-array v2, v2, [Lr/m;

    .line 34
    .line 35
    iput-object v2, p0, Lr/f;->m:[Lr/m;

    .line 36
    .line 37
    iput v0, p0, Lr/f;->n:I

    .line 38
    .line 39
    new-array v0, v1, [Lr/c;

    .line 40
    .line 41
    iput-object v0, p0, Lr/f;->f:[Lr/c;

    .line 42
    .line 43
    invoke-virtual {p0}, Lr/f;->g()V

    .line 44
    .line 45
    .line 46
    new-instance v0, Lr/d;

    .line 47
    .line 48
    invoke-direct {v0}, Lr/d;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lr/f;->l:Lr/d;

    .line 52
    .line 53
    new-instance v1, Lr/l;

    .line 54
    .line 55
    invoke-direct {v1, v0}, Lr/l;-><init>(Lr/d;)V

    .line 56
    .line 57
    .line 58
    iput-object v1, p0, Lr/f;->c:Lr/l;

    .line 59
    .line 60
    new-instance v1, Lr/c;

    .line 61
    .line 62
    invoke-direct {v1, v0}, Lr/c;-><init>(Lr/d;)V

    .line 63
    .line 64
    .line 65
    iput-object v1, p0, Lr/f;->o:Lr/c;

    .line 66
    .line 67
    return-void
.end method

.method public static createRowDimensionPercent(Lr/f;Lr/m;Lr/m;F)Lr/c;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lr/f;->createRow()Lr/c;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-object v0, p0, Lr/c;->d:Lr/b;

    .line 6
    .line 7
    const/high16 v1, -0x40800000    # -1.0f

    .line 8
    .line 9
    invoke-interface {v0, p1, v1}, Lr/b;->put(Lr/m;F)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lr/c;->d:Lr/b;

    .line 13
    .line 14
    invoke-interface {p1, p2, p3}, Lr/b;->put(Lr/m;F)V

    .line 15
    .line 16
    .line 17
    return-object p0
.end method

.method public static getMetrics()Lr/g;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final a(Landroidx/constraintlayout/core/SolverVariable$Type;Ljava/lang/String;)Lr/m;
    .locals 2

    .line 1
    iget-object v0, p0, Lr/f;->l:Lr/d;

    .line 2
    .line 3
    iget-object v0, v0, Lr/d;->b:Lr/i;

    .line 4
    .line 5
    invoke-interface {v0}, Lr/h;->acquire()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lr/m;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    new-instance v0, Lr/m;

    .line 14
    .line 15
    invoke-direct {v0, p1, p2}, Lr/m;-><init>(Landroidx/constraintlayout/core/SolverVariable$Type;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1, p2}, Lr/m;->setType(Landroidx/constraintlayout/core/SolverVariable$Type;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {v0}, Lr/m;->reset()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p1, p2}, Lr/m;->setType(Landroidx/constraintlayout/core/SolverVariable$Type;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    iget p1, p0, Lr/f;->n:I

    .line 29
    .line 30
    sget p2, Lr/f;->q:I

    .line 31
    .line 32
    if-lt p1, p2, :cond_1

    .line 33
    .line 34
    mul-int/lit8 p2, p2, 0x2

    .line 35
    .line 36
    sput p2, Lr/f;->q:I

    .line 37
    .line 38
    iget-object p1, p0, Lr/f;->m:[Lr/m;

    .line 39
    .line 40
    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    check-cast p1, [Lr/m;

    .line 45
    .line 46
    iput-object p1, p0, Lr/f;->m:[Lr/m;

    .line 47
    .line 48
    :cond_1
    iget-object p1, p0, Lr/f;->m:[Lr/m;

    .line 49
    .line 50
    iget p2, p0, Lr/f;->n:I

    .line 51
    .line 52
    add-int/lit8 v1, p2, 0x1

    .line 53
    .line 54
    iput v1, p0, Lr/f;->n:I

    .line 55
    .line 56
    aput-object v0, p1, p2

    .line 57
    .line 58
    return-object v0
.end method

.method public addCenterPoint(Lu/e;Lu/e;FI)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->b:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 8
    .line 9
    invoke-virtual {v1, v3}, Lu/e;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lu/d;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    invoke-virtual {v0, v4}, Lr/f;->createObjectVariable(Ljava/lang/Object;)Lr/m;

    .line 14
    .line 15
    .line 16
    move-result-object v6

    .line 17
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->e:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 18
    .line 19
    invoke-virtual {v1, v4}, Lu/e;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lu/d;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    invoke-virtual {v0, v5}, Lr/f;->createObjectVariable(Ljava/lang/Object;)Lr/m;

    .line 24
    .line 25
    .line 26
    move-result-object v8

    .line 27
    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 28
    .line 29
    invoke-virtual {v1, v5}, Lu/e;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lu/d;

    .line 30
    .line 31
    .line 32
    move-result-object v7

    .line 33
    invoke-virtual {v0, v7}, Lr/f;->createObjectVariable(Ljava/lang/Object;)Lr/m;

    .line 34
    .line 35
    .line 36
    move-result-object v13

    .line 37
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->j:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 38
    .line 39
    invoke-virtual {v1, v7}, Lu/e;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lu/d;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Lr/f;->createObjectVariable(Ljava/lang/Object;)Lr/m;

    .line 44
    .line 45
    .line 46
    move-result-object v9

    .line 47
    invoke-virtual {v2, v3}, Lu/e;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lu/d;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v0, v1}, Lr/f;->createObjectVariable(Ljava/lang/Object;)Lr/m;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v2, v4}, Lu/e;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lu/d;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-virtual {v0, v3}, Lr/f;->createObjectVariable(Ljava/lang/Object;)Lr/m;

    .line 60
    .line 61
    .line 62
    move-result-object v10

    .line 63
    invoke-virtual {v2, v5}, Lu/e;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lu/d;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-virtual {v0, v3}, Lr/f;->createObjectVariable(Ljava/lang/Object;)Lr/m;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-virtual {v2, v7}, Lu/e;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lu/d;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-virtual {v0, v2}, Lr/f;->createObjectVariable(Ljava/lang/Object;)Lr/m;

    .line 76
    .line 77
    .line 78
    move-result-object v11

    .line 79
    invoke-virtual {v0}, Lr/f;->createRow()Lr/c;

    .line 80
    .line 81
    .line 82
    move-result-object v7

    .line 83
    move/from16 v2, p3

    .line 84
    .line 85
    float-to-double v4, v2

    .line 86
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    .line 87
    .line 88
    .line 89
    move-result-wide v14

    .line 90
    move/from16 v2, p4

    .line 91
    .line 92
    move-object/from16 p1, v1

    .line 93
    .line 94
    int-to-double v1, v2

    .line 95
    mul-double/2addr v14, v1

    .line 96
    double-to-float v12, v14

    .line 97
    invoke-virtual/range {v7 .. v12}, Lr/c;->createRowWithAngle(Lr/m;Lr/m;Lr/m;Lr/m;F)Lr/c;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, v7}, Lr/f;->addConstraint(Lr/c;)V

    .line 101
    .line 102
    .line 103
    move-wide v7, v4

    .line 104
    invoke-virtual {v0}, Lr/f;->createRow()Lr/c;

    .line 105
    .line 106
    .line 107
    move-result-object v5

    .line 108
    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    .line 109
    .line 110
    .line 111
    move-result-wide v7

    .line 112
    mul-double/2addr v7, v1

    .line 113
    double-to-float v10, v7

    .line 114
    move-object/from16 v8, p1

    .line 115
    .line 116
    move-object v9, v3

    .line 117
    move-object v7, v13

    .line 118
    invoke-virtual/range {v5 .. v10}, Lr/c;->createRowWithAngle(Lr/m;Lr/m;Lr/m;Lr/m;F)Lr/c;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, v5}, Lr/f;->addConstraint(Lr/c;)V

    .line 122
    .line 123
    .line 124
    return-void
.end method

.method public addCentering(Lr/m;Lr/m;IFLr/m;Lr/m;II)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lr/f;->createRow()Lr/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/high16 v1, 0x3f800000    # 1.0f

    .line 6
    .line 7
    if-ne p2, p5, :cond_0

    .line 8
    .line 9
    iget-object p3, v0, Lr/c;->d:Lr/b;

    .line 10
    .line 11
    invoke-interface {p3, p1, v1}, Lr/b;->put(Lr/m;F)V

    .line 12
    .line 13
    .line 14
    iget-object p1, v0, Lr/c;->d:Lr/b;

    .line 15
    .line 16
    invoke-interface {p1, p6, v1}, Lr/b;->put(Lr/m;F)V

    .line 17
    .line 18
    .line 19
    iget-object p1, v0, Lr/c;->d:Lr/b;

    .line 20
    .line 21
    const/high16 p3, -0x40000000    # -2.0f

    .line 22
    .line 23
    invoke-interface {p1, p2, p3}, Lr/b;->put(Lr/m;F)V

    .line 24
    .line 25
    .line 26
    goto/16 :goto_0

    .line 27
    .line 28
    :cond_0
    const/high16 v2, 0x3f000000    # 0.5f

    .line 29
    .line 30
    cmpl-float v2, p4, v2

    .line 31
    .line 32
    const/high16 v3, -0x40800000    # -1.0f

    .line 33
    .line 34
    if-nez v2, :cond_2

    .line 35
    .line 36
    iget-object p4, v0, Lr/c;->d:Lr/b;

    .line 37
    .line 38
    invoke-interface {p4, p1, v1}, Lr/b;->put(Lr/m;F)V

    .line 39
    .line 40
    .line 41
    iget-object p1, v0, Lr/c;->d:Lr/b;

    .line 42
    .line 43
    invoke-interface {p1, p2, v3}, Lr/b;->put(Lr/m;F)V

    .line 44
    .line 45
    .line 46
    iget-object p1, v0, Lr/c;->d:Lr/b;

    .line 47
    .line 48
    invoke-interface {p1, p5, v3}, Lr/b;->put(Lr/m;F)V

    .line 49
    .line 50
    .line 51
    iget-object p1, v0, Lr/c;->d:Lr/b;

    .line 52
    .line 53
    invoke-interface {p1, p6, v1}, Lr/b;->put(Lr/m;F)V

    .line 54
    .line 55
    .line 56
    if-gtz p3, :cond_1

    .line 57
    .line 58
    if-lez p7, :cond_6

    .line 59
    .line 60
    :cond_1
    neg-int p1, p3

    .line 61
    add-int/2addr p1, p7

    .line 62
    int-to-float p1, p1

    .line 63
    iput p1, v0, Lr/c;->b:F

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    const/4 v2, 0x0

    .line 67
    cmpg-float v2, p4, v2

    .line 68
    .line 69
    if-gtz v2, :cond_3

    .line 70
    .line 71
    iget-object p4, v0, Lr/c;->d:Lr/b;

    .line 72
    .line 73
    invoke-interface {p4, p1, v3}, Lr/b;->put(Lr/m;F)V

    .line 74
    .line 75
    .line 76
    iget-object p1, v0, Lr/c;->d:Lr/b;

    .line 77
    .line 78
    invoke-interface {p1, p2, v1}, Lr/b;->put(Lr/m;F)V

    .line 79
    .line 80
    .line 81
    int-to-float p1, p3

    .line 82
    iput p1, v0, Lr/c;->b:F

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_3
    cmpl-float v2, p4, v1

    .line 86
    .line 87
    if-ltz v2, :cond_4

    .line 88
    .line 89
    iget-object p1, v0, Lr/c;->d:Lr/b;

    .line 90
    .line 91
    invoke-interface {p1, p6, v3}, Lr/b;->put(Lr/m;F)V

    .line 92
    .line 93
    .line 94
    iget-object p1, v0, Lr/c;->d:Lr/b;

    .line 95
    .line 96
    invoke-interface {p1, p5, v1}, Lr/b;->put(Lr/m;F)V

    .line 97
    .line 98
    .line 99
    neg-int p1, p7

    .line 100
    int-to-float p1, p1

    .line 101
    iput p1, v0, Lr/c;->b:F

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_4
    iget-object v2, v0, Lr/c;->d:Lr/b;

    .line 105
    .line 106
    sub-float v4, v1, p4

    .line 107
    .line 108
    mul-float v5, v4, v1

    .line 109
    .line 110
    invoke-interface {v2, p1, v5}, Lr/b;->put(Lr/m;F)V

    .line 111
    .line 112
    .line 113
    iget-object p1, v0, Lr/c;->d:Lr/b;

    .line 114
    .line 115
    mul-float v2, v4, v3

    .line 116
    .line 117
    invoke-interface {p1, p2, v2}, Lr/b;->put(Lr/m;F)V

    .line 118
    .line 119
    .line 120
    iget-object p1, v0, Lr/c;->d:Lr/b;

    .line 121
    .line 122
    mul-float/2addr v3, p4

    .line 123
    invoke-interface {p1, p5, v3}, Lr/b;->put(Lr/m;F)V

    .line 124
    .line 125
    .line 126
    iget-object p1, v0, Lr/c;->d:Lr/b;

    .line 127
    .line 128
    mul-float/2addr v1, p4

    .line 129
    invoke-interface {p1, p6, v1}, Lr/b;->put(Lr/m;F)V

    .line 130
    .line 131
    .line 132
    if-gtz p3, :cond_5

    .line 133
    .line 134
    if-lez p7, :cond_6

    .line 135
    .line 136
    :cond_5
    neg-int p1, p3

    .line 137
    int-to-float p1, p1

    .line 138
    mul-float/2addr p1, v4

    .line 139
    int-to-float p2, p7

    .line 140
    mul-float/2addr p2, p4

    .line 141
    add-float/2addr p2, p1

    .line 142
    iput p2, v0, Lr/c;->b:F

    .line 143
    .line 144
    :cond_6
    :goto_0
    const/16 p1, 0x8

    .line 145
    .line 146
    if-eq p8, p1, :cond_7

    .line 147
    .line 148
    invoke-virtual {v0, p0, p8}, Lr/c;->addError(Lr/f;I)Lr/c;

    .line 149
    .line 150
    .line 151
    :cond_7
    invoke-virtual {p0, v0}, Lr/f;->addConstraint(Lr/c;)V

    .line 152
    .line 153
    .line 154
    return-void
.end method

.method public addConstraint(Lr/c;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_a

    .line 8
    .line 9
    :cond_0
    iget v2, v0, Lr/f;->j:I

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    add-int/2addr v2, v3

    .line 13
    iget v4, v0, Lr/f;->k:I

    .line 14
    .line 15
    if-ge v2, v4, :cond_1

    .line 16
    .line 17
    iget v2, v0, Lr/f;->i:I

    .line 18
    .line 19
    add-int/2addr v2, v3

    .line 20
    iget v4, v0, Lr/f;->e:I

    .line 21
    .line 22
    if-lt v2, v4, :cond_2

    .line 23
    .line 24
    :cond_1
    invoke-virtual {v0}, Lr/f;->d()V

    .line 25
    .line 26
    .line 27
    :cond_2
    iget-boolean v2, v1, Lr/c;->e:Z

    .line 28
    .line 29
    if-nez v2, :cond_16

    .line 30
    .line 31
    invoke-virtual {v1, v0}, Lr/c;->updateFromSystem(Lr/f;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Lr/c;->isEmpty()Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_3

    .line 39
    .line 40
    goto/16 :goto_a

    .line 41
    .line 42
    :cond_3
    iget v2, v1, Lr/c;->b:F

    .line 43
    .line 44
    const/4 v5, 0x0

    .line 45
    cmpg-float v6, v2, v5

    .line 46
    .line 47
    if-gez v6, :cond_4

    .line 48
    .line 49
    const/high16 v6, -0x40800000    # -1.0f

    .line 50
    .line 51
    mul-float/2addr v2, v6

    .line 52
    iput v2, v1, Lr/c;->b:F

    .line 53
    .line 54
    iget-object v2, v1, Lr/c;->d:Lr/b;

    .line 55
    .line 56
    invoke-interface {v2}, Lr/b;->invert()V

    .line 57
    .line 58
    .line 59
    :cond_4
    iget-object v2, v1, Lr/c;->d:Lr/b;

    .line 60
    .line 61
    invoke-interface {v2}, Lr/b;->getCurrentSize()I

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    const/4 v6, 0x0

    .line 66
    move v9, v5

    .line 67
    move v11, v9

    .line 68
    move-object v7, v6

    .line 69
    const/4 v8, 0x0

    .line 70
    const/4 v10, 0x0

    .line 71
    const/4 v12, 0x0

    .line 72
    :goto_0
    sget-object v13, Landroidx/constraintlayout/core/SolverVariable$Type;->b:Landroidx/constraintlayout/core/SolverVariable$Type;

    .line 73
    .line 74
    if-ge v8, v2, :cond_d

    .line 75
    .line 76
    iget-object v14, v1, Lr/c;->d:Lr/b;

    .line 77
    .line 78
    invoke-interface {v14, v8}, Lr/b;->getVariableValue(I)F

    .line 79
    .line 80
    .line 81
    move-result v14

    .line 82
    iget-object v15, v1, Lr/c;->d:Lr/b;

    .line 83
    .line 84
    invoke-interface {v15, v8}, Lr/b;->getVariable(I)Lr/m;

    .line 85
    .line 86
    .line 87
    move-result-object v15

    .line 88
    iget-object v4, v15, Lr/m;->r:Landroidx/constraintlayout/core/SolverVariable$Type;

    .line 89
    .line 90
    if-ne v4, v13, :cond_8

    .line 91
    .line 92
    if-nez v6, :cond_6

    .line 93
    .line 94
    iget v4, v15, Lr/m;->u:I

    .line 95
    .line 96
    if-gt v4, v3, :cond_5

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_5
    const/4 v10, 0x0

    .line 100
    :goto_1
    move v9, v14

    .line 101
    move-object v6, v15

    .line 102
    goto :goto_5

    .line 103
    :cond_6
    cmpl-float v4, v9, v14

    .line 104
    .line 105
    if-lez v4, :cond_7

    .line 106
    .line 107
    iget v4, v15, Lr/m;->u:I

    .line 108
    .line 109
    if-gt v4, v3, :cond_5

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_7
    if-nez v10, :cond_c

    .line 113
    .line 114
    iget v4, v15, Lr/m;->u:I

    .line 115
    .line 116
    if-gt v4, v3, :cond_c

    .line 117
    .line 118
    :goto_2
    move v10, v3

    .line 119
    goto :goto_1

    .line 120
    :cond_8
    if-nez v6, :cond_c

    .line 121
    .line 122
    cmpg-float v4, v14, v5

    .line 123
    .line 124
    if-gez v4, :cond_c

    .line 125
    .line 126
    if-nez v7, :cond_a

    .line 127
    .line 128
    iget v4, v15, Lr/m;->u:I

    .line 129
    .line 130
    if-gt v4, v3, :cond_9

    .line 131
    .line 132
    goto :goto_4

    .line 133
    :cond_9
    const/4 v12, 0x0

    .line 134
    :goto_3
    move v11, v14

    .line 135
    move-object v7, v15

    .line 136
    goto :goto_5

    .line 137
    :cond_a
    cmpl-float v4, v11, v14

    .line 138
    .line 139
    if-lez v4, :cond_b

    .line 140
    .line 141
    iget v4, v15, Lr/m;->u:I

    .line 142
    .line 143
    if-gt v4, v3, :cond_9

    .line 144
    .line 145
    goto :goto_4

    .line 146
    :cond_b
    if-nez v12, :cond_c

    .line 147
    .line 148
    iget v4, v15, Lr/m;->u:I

    .line 149
    .line 150
    if-gt v4, v3, :cond_c

    .line 151
    .line 152
    :goto_4
    move v12, v3

    .line 153
    goto :goto_3

    .line 154
    :cond_c
    :goto_5
    add-int/lit8 v8, v8, 0x1

    .line 155
    .line 156
    goto :goto_0

    .line 157
    :cond_d
    if-eqz v6, :cond_e

    .line 158
    .line 159
    goto :goto_6

    .line 160
    :cond_e
    move-object v6, v7

    .line 161
    :goto_6
    if-nez v6, :cond_f

    .line 162
    .line 163
    move v2, v3

    .line 164
    goto :goto_7

    .line 165
    :cond_f
    invoke-virtual {v1, v6}, Lr/c;->b(Lr/m;)V

    .line 166
    .line 167
    .line 168
    const/4 v2, 0x0

    .line 169
    :goto_7
    iget-object v4, v1, Lr/c;->d:Lr/b;

    .line 170
    .line 171
    invoke-interface {v4}, Lr/b;->getCurrentSize()I

    .line 172
    .line 173
    .line 174
    move-result v4

    .line 175
    if-nez v4, :cond_10

    .line 176
    .line 177
    iput-boolean v3, v1, Lr/c;->e:Z

    .line 178
    .line 179
    :cond_10
    if-eqz v2, :cond_13

    .line 180
    .line 181
    invoke-virtual {v0}, Lr/f;->createExtraVariable()Lr/m;

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    iput-object v2, v1, Lr/c;->a:Lr/m;

    .line 186
    .line 187
    iget v4, v0, Lr/f;->j:I

    .line 188
    .line 189
    invoke-virtual/range {p0 .. p1}, Lr/f;->b(Lr/c;)V

    .line 190
    .line 191
    .line 192
    iget v6, v0, Lr/f;->j:I

    .line 193
    .line 194
    add-int/2addr v4, v3

    .line 195
    if-ne v6, v4, :cond_13

    .line 196
    .line 197
    iget-object v4, v0, Lr/f;->o:Lr/c;

    .line 198
    .line 199
    invoke-virtual {v4, v1}, Lr/c;->initFromRow(Lr/e;)V

    .line 200
    .line 201
    .line 202
    iget-object v4, v0, Lr/f;->o:Lr/c;

    .line 203
    .line 204
    invoke-virtual {v0, v4}, Lr/f;->f(Lr/c;)V

    .line 205
    .line 206
    .line 207
    iget v4, v2, Lr/m;->f:I

    .line 208
    .line 209
    const/4 v6, -0x1

    .line 210
    if-ne v4, v6, :cond_14

    .line 211
    .line 212
    iget-object v4, v1, Lr/c;->a:Lr/m;

    .line 213
    .line 214
    if-ne v4, v2, :cond_11

    .line 215
    .line 216
    invoke-virtual {v1, v2}, Lr/c;->pickPivot(Lr/m;)Lr/m;

    .line 217
    .line 218
    .line 219
    move-result-object v2

    .line 220
    if-eqz v2, :cond_11

    .line 221
    .line 222
    invoke-virtual {v1, v2}, Lr/c;->b(Lr/m;)V

    .line 223
    .line 224
    .line 225
    :cond_11
    iget-boolean v2, v1, Lr/c;->e:Z

    .line 226
    .line 227
    if-nez v2, :cond_12

    .line 228
    .line 229
    iget-object v2, v1, Lr/c;->a:Lr/m;

    .line 230
    .line 231
    invoke-virtual {v2, v0, v1}, Lr/m;->updateReferencesWithNewDefinition(Lr/f;Lr/c;)V

    .line 232
    .line 233
    .line 234
    :cond_12
    iget-object v2, v0, Lr/f;->l:Lr/d;

    .line 235
    .line 236
    iget-object v2, v2, Lr/d;->a:Lr/i;

    .line 237
    .line 238
    invoke-interface {v2, v1}, Lr/h;->release(Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    iget v2, v0, Lr/f;->j:I

    .line 242
    .line 243
    sub-int/2addr v2, v3

    .line 244
    iput v2, v0, Lr/f;->j:I

    .line 245
    .line 246
    goto :goto_8

    .line 247
    :cond_13
    const/4 v3, 0x0

    .line 248
    :cond_14
    :goto_8
    iget-object v2, v1, Lr/c;->a:Lr/m;

    .line 249
    .line 250
    if-eqz v2, :cond_17

    .line 251
    .line 252
    iget-object v2, v2, Lr/m;->r:Landroidx/constraintlayout/core/SolverVariable$Type;

    .line 253
    .line 254
    if-eq v2, v13, :cond_15

    .line 255
    .line 256
    iget v2, v1, Lr/c;->b:F

    .line 257
    .line 258
    cmpg-float v2, v2, v5

    .line 259
    .line 260
    if-ltz v2, :cond_17

    .line 261
    .line 262
    :cond_15
    move v4, v3

    .line 263
    goto :goto_9

    .line 264
    :cond_16
    const/4 v4, 0x0

    .line 265
    :goto_9
    if-nez v4, :cond_17

    .line 266
    .line 267
    invoke-virtual/range {p0 .. p1}, Lr/f;->b(Lr/c;)V

    .line 268
    .line 269
    .line 270
    :cond_17
    :goto_a
    return-void
.end method

.method public addEquality(Lr/m;Lr/m;II)Lr/c;
    .locals 3

    const/16 v0, 0x8

    if-ne p4, v0, :cond_0

    .line 1
    iget-boolean v1, p2, Lr/m;->n:Z

    if-eqz v1, :cond_0

    iget v1, p1, Lr/m;->f:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 2
    iget p2, p2, Lr/m;->m:F

    int-to-float p3, p3

    add-float/2addr p2, p3

    invoke-virtual {p1, p0, p2}, Lr/m;->setFinalValue(Lr/f;F)V

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lr/f;->createRow()Lr/c;

    move-result-object v1

    .line 4
    invoke-virtual {v1, p1, p2, p3}, Lr/c;->createRowEquals(Lr/m;Lr/m;I)Lr/c;

    if-eq p4, v0, :cond_1

    .line 5
    invoke-virtual {v1, p0, p4}, Lr/c;->addError(Lr/f;I)Lr/c;

    .line 6
    :cond_1
    invoke-virtual {p0, v1}, Lr/f;->addConstraint(Lr/c;)V

    return-object v1
.end method

.method public addEquality(Lr/m;I)V
    .locals 3

    .line 7
    iget v0, p1, Lr/m;->f:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    int-to-float p2, p2

    .line 8
    invoke-virtual {p1, p0, p2}, Lr/m;->setFinalValue(Lr/f;F)V

    const/4 p1, 0x0

    .line 9
    :goto_0
    iget p2, p0, Lr/f;->b:I

    add-int/2addr p2, v1

    if-ge p1, p2, :cond_0

    .line 10
    iget-object p2, p0, Lr/f;->l:Lr/d;

    iget-object p2, p2, Lr/d;->c:[Lr/m;

    aget-object p2, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    if-eq v0, v2, :cond_4

    .line 11
    iget-object v2, p0, Lr/f;->f:[Lr/c;

    aget-object v0, v2, v0

    .line 12
    iget-boolean v2, v0, Lr/c;->e:Z

    if-eqz v2, :cond_2

    int-to-float p1, p2

    .line 13
    iput p1, v0, Lr/c;->b:F

    return-void

    .line 14
    :cond_2
    iget-object v2, v0, Lr/c;->d:Lr/b;

    invoke-interface {v2}, Lr/b;->getCurrentSize()I

    move-result v2

    if-nez v2, :cond_3

    .line 15
    iput-boolean v1, v0, Lr/c;->e:Z

    int-to-float p1, p2

    .line 16
    iput p1, v0, Lr/c;->b:F

    return-void

    .line 17
    :cond_3
    invoke-virtual {p0}, Lr/f;->createRow()Lr/c;

    move-result-object v0

    .line 18
    invoke-virtual {v0, p1, p2}, Lr/c;->createRowEquals(Lr/m;I)Lr/c;

    .line 19
    invoke-virtual {p0, v0}, Lr/f;->addConstraint(Lr/c;)V

    return-void

    .line 20
    :cond_4
    invoke-virtual {p0}, Lr/f;->createRow()Lr/c;

    move-result-object v0

    .line 21
    iput-object p1, v0, Lr/c;->a:Lr/m;

    int-to-float p2, p2

    .line 22
    iput p2, p1, Lr/m;->m:F

    .line 23
    iput p2, v0, Lr/c;->b:F

    .line 24
    iput-boolean v1, v0, Lr/c;->e:Z

    .line 25
    invoke-virtual {p0, v0}, Lr/f;->addConstraint(Lr/c;)V

    return-void
.end method

.method public addGreaterBarrier(Lr/m;Lr/m;IZ)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lr/f;->createRow()Lr/c;

    .line 2
    .line 3
    .line 4
    move-result-object p4

    .line 5
    invoke-virtual {p0}, Lr/f;->createSlackVariable()Lr/m;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    iput v1, v0, Lr/m;->j:I

    .line 11
    .line 12
    invoke-virtual {p4, p1, p2, v0, p3}, Lr/c;->createRowGreaterThan(Lr/m;Lr/m;Lr/m;I)Lr/c;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p4}, Lr/f;->addConstraint(Lr/c;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public addGreaterThan(Lr/m;Lr/m;II)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lr/f;->createRow()Lr/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lr/f;->createSlackVariable()Lr/m;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    iput v2, v1, Lr/m;->j:I

    .line 11
    .line 12
    invoke-virtual {v0, p1, p2, v1, p3}, Lr/c;->createRowGreaterThan(Lr/m;Lr/m;Lr/m;I)Lr/c;

    .line 13
    .line 14
    .line 15
    const/16 p1, 0x8

    .line 16
    .line 17
    if-eq p4, p1, :cond_0

    .line 18
    .line 19
    iget-object p1, v0, Lr/c;->d:Lr/b;

    .line 20
    .line 21
    invoke-interface {p1, v1}, Lr/b;->get(Lr/m;)F

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    const/high16 p2, -0x40800000    # -1.0f

    .line 26
    .line 27
    mul-float/2addr p1, p2

    .line 28
    float-to-int p1, p1

    .line 29
    const/4 p2, 0x0

    .line 30
    invoke-virtual {p0, p4, p2}, Lr/f;->createErrorVariable(ILjava/lang/String;)Lr/m;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    iget-object p3, v0, Lr/c;->d:Lr/b;

    .line 35
    .line 36
    int-to-float p1, p1

    .line 37
    invoke-interface {p3, p2, p1}, Lr/b;->put(Lr/m;F)V

    .line 38
    .line 39
    .line 40
    :cond_0
    invoke-virtual {p0, v0}, Lr/f;->addConstraint(Lr/c;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public addLowerBarrier(Lr/m;Lr/m;IZ)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lr/f;->createRow()Lr/c;

    .line 2
    .line 3
    .line 4
    move-result-object p4

    .line 5
    invoke-virtual {p0}, Lr/f;->createSlackVariable()Lr/m;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    iput v1, v0, Lr/m;->j:I

    .line 11
    .line 12
    invoke-virtual {p4, p1, p2, v0, p3}, Lr/c;->createRowLowerThan(Lr/m;Lr/m;Lr/m;I)Lr/c;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p4}, Lr/f;->addConstraint(Lr/c;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public addLowerThan(Lr/m;Lr/m;II)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lr/f;->createRow()Lr/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lr/f;->createSlackVariable()Lr/m;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    iput v2, v1, Lr/m;->j:I

    .line 11
    .line 12
    invoke-virtual {v0, p1, p2, v1, p3}, Lr/c;->createRowLowerThan(Lr/m;Lr/m;Lr/m;I)Lr/c;

    .line 13
    .line 14
    .line 15
    const/16 p1, 0x8

    .line 16
    .line 17
    if-eq p4, p1, :cond_0

    .line 18
    .line 19
    iget-object p1, v0, Lr/c;->d:Lr/b;

    .line 20
    .line 21
    invoke-interface {p1, v1}, Lr/b;->get(Lr/m;)F

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    const/high16 p2, -0x40800000    # -1.0f

    .line 26
    .line 27
    mul-float/2addr p1, p2

    .line 28
    float-to-int p1, p1

    .line 29
    const/4 p2, 0x0

    .line 30
    invoke-virtual {p0, p4, p2}, Lr/f;->createErrorVariable(ILjava/lang/String;)Lr/m;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    iget-object p3, v0, Lr/c;->d:Lr/b;

    .line 35
    .line 36
    int-to-float p1, p1

    .line 37
    invoke-interface {p3, p2, p1}, Lr/b;->put(Lr/m;F)V

    .line 38
    .line 39
    .line 40
    :cond_0
    invoke-virtual {p0, v0}, Lr/f;->addConstraint(Lr/c;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public addRatio(Lr/m;Lr/m;Lr/m;Lr/m;FI)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lr/f;->createRow()Lr/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    move-object v1, p1

    .line 6
    move-object v2, p2

    .line 7
    move-object v3, p3

    .line 8
    move-object v4, p4

    .line 9
    move v5, p5

    .line 10
    invoke-virtual/range {v0 .. v5}, Lr/c;->createRowDimensionRatio(Lr/m;Lr/m;Lr/m;Lr/m;F)Lr/c;

    .line 11
    .line 12
    .line 13
    const/16 p1, 0x8

    .line 14
    .line 15
    if-eq p6, p1, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0, p0, p6}, Lr/c;->addError(Lr/f;I)Lr/c;

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {p0, v0}, Lr/f;->addConstraint(Lr/c;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final b(Lr/c;)V
    .locals 7

    .line 1
    iget-boolean v0, p1, Lr/c;->e:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p1, Lr/c;->a:Lr/m;

    .line 6
    .line 7
    iget p1, p1, Lr/c;->b:F

    .line 8
    .line 9
    invoke-virtual {v0, p0, p1}, Lr/m;->setFinalValue(Lr/f;F)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lr/f;->f:[Lr/c;

    .line 14
    .line 15
    iget v1, p0, Lr/f;->j:I

    .line 16
    .line 17
    aput-object p1, v0, v1

    .line 18
    .line 19
    iget-object v0, p1, Lr/c;->a:Lr/m;

    .line 20
    .line 21
    iput v1, v0, Lr/m;->f:I

    .line 22
    .line 23
    add-int/lit8 v1, v1, 0x1

    .line 24
    .line 25
    iput v1, p0, Lr/f;->j:I

    .line 26
    .line 27
    invoke-virtual {v0, p0, p1}, Lr/m;->updateReferencesWithNewDefinition(Lr/f;Lr/c;)V

    .line 28
    .line 29
    .line 30
    :goto_0
    iget-boolean p1, p0, Lr/f;->a:Z

    .line 31
    .line 32
    if-eqz p1, :cond_7

    .line 33
    .line 34
    const/4 p1, 0x0

    .line 35
    move v0, p1

    .line 36
    :goto_1
    iget v1, p0, Lr/f;->j:I

    .line 37
    .line 38
    if-ge v0, v1, :cond_6

    .line 39
    .line 40
    iget-object v1, p0, Lr/f;->f:[Lr/c;

    .line 41
    .line 42
    aget-object v1, v1, v0

    .line 43
    .line 44
    if-nez v1, :cond_1

    .line 45
    .line 46
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 47
    .line 48
    const-string v2, "WTF"

    .line 49
    .line 50
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    :cond_1
    iget-object v1, p0, Lr/f;->f:[Lr/c;

    .line 54
    .line 55
    aget-object v1, v1, v0

    .line 56
    .line 57
    if-eqz v1, :cond_5

    .line 58
    .line 59
    iget-boolean v2, v1, Lr/c;->e:Z

    .line 60
    .line 61
    if-eqz v2, :cond_5

    .line 62
    .line 63
    iget-object v2, v1, Lr/c;->a:Lr/m;

    .line 64
    .line 65
    iget v3, v1, Lr/c;->b:F

    .line 66
    .line 67
    invoke-virtual {v2, p0, v3}, Lr/m;->setFinalValue(Lr/f;F)V

    .line 68
    .line 69
    .line 70
    iget-object v2, p0, Lr/f;->l:Lr/d;

    .line 71
    .line 72
    iget-object v2, v2, Lr/d;->a:Lr/i;

    .line 73
    .line 74
    invoke-interface {v2, v1}, Lr/h;->release(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    iget-object v1, p0, Lr/f;->f:[Lr/c;

    .line 78
    .line 79
    const/4 v2, 0x0

    .line 80
    aput-object v2, v1, v0

    .line 81
    .line 82
    add-int/lit8 v1, v0, 0x1

    .line 83
    .line 84
    move v3, v1

    .line 85
    :goto_2
    iget v4, p0, Lr/f;->j:I

    .line 86
    .line 87
    if-ge v1, v4, :cond_3

    .line 88
    .line 89
    iget-object v3, p0, Lr/f;->f:[Lr/c;

    .line 90
    .line 91
    add-int/lit8 v4, v1, -0x1

    .line 92
    .line 93
    aget-object v5, v3, v1

    .line 94
    .line 95
    aput-object v5, v3, v4

    .line 96
    .line 97
    iget-object v3, v5, Lr/c;->a:Lr/m;

    .line 98
    .line 99
    iget v5, v3, Lr/m;->f:I

    .line 100
    .line 101
    if-ne v5, v1, :cond_2

    .line 102
    .line 103
    iput v4, v3, Lr/m;->f:I

    .line 104
    .line 105
    :cond_2
    add-int/lit8 v3, v1, 0x1

    .line 106
    .line 107
    move v6, v3

    .line 108
    move v3, v1

    .line 109
    move v1, v6

    .line 110
    goto :goto_2

    .line 111
    :cond_3
    if-ge v3, v4, :cond_4

    .line 112
    .line 113
    iget-object v1, p0, Lr/f;->f:[Lr/c;

    .line 114
    .line 115
    aput-object v2, v1, v3

    .line 116
    .line 117
    :cond_4
    add-int/lit8 v4, v4, -0x1

    .line 118
    .line 119
    iput v4, p0, Lr/f;->j:I

    .line 120
    .line 121
    add-int/lit8 v0, v0, -0x1

    .line 122
    .line 123
    :cond_5
    add-int/lit8 v0, v0, 0x1

    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_6
    iput-boolean p1, p0, Lr/f;->a:Z

    .line 127
    .line 128
    :cond_7
    return-void
.end method

.method public final c()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v1, p0, Lr/f;->j:I

    .line 3
    .line 4
    if-ge v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v1, p0, Lr/f;->f:[Lr/c;

    .line 7
    .line 8
    aget-object v1, v1, v0

    .line 9
    .line 10
    iget-object v2, v1, Lr/c;->a:Lr/m;

    .line 11
    .line 12
    iget v1, v1, Lr/c;->b:F

    .line 13
    .line 14
    iput v1, v2, Lr/m;->m:F

    .line 15
    .line 16
    add-int/lit8 v0, v0, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return-void
.end method

.method public createErrorVariable(ILjava/lang/String;)Lr/m;
    .locals 2

    .line 1
    iget v0, p0, Lr/f;->i:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iget v1, p0, Lr/f;->e:I

    .line 6
    .line 7
    if-lt v0, v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lr/f;->d()V

    .line 10
    .line 11
    .line 12
    :cond_0
    sget-object v0, Landroidx/constraintlayout/core/SolverVariable$Type;->f:Landroidx/constraintlayout/core/SolverVariable$Type;

    .line 13
    .line 14
    invoke-virtual {p0, v0, p2}, Lr/f;->a(Landroidx/constraintlayout/core/SolverVariable$Type;Ljava/lang/String;)Lr/m;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    iget v0, p0, Lr/f;->b:I

    .line 19
    .line 20
    add-int/lit8 v0, v0, 0x1

    .line 21
    .line 22
    iput v0, p0, Lr/f;->b:I

    .line 23
    .line 24
    iget v1, p0, Lr/f;->i:I

    .line 25
    .line 26
    add-int/lit8 v1, v1, 0x1

    .line 27
    .line 28
    iput v1, p0, Lr/f;->i:I

    .line 29
    .line 30
    iput v0, p2, Lr/m;->e:I

    .line 31
    .line 32
    iput p1, p2, Lr/m;->j:I

    .line 33
    .line 34
    iget-object p1, p0, Lr/f;->l:Lr/d;

    .line 35
    .line 36
    iget-object p1, p1, Lr/d;->c:[Lr/m;

    .line 37
    .line 38
    aput-object p2, p1, v0

    .line 39
    .line 40
    iget-object p1, p0, Lr/f;->c:Lr/l;

    .line 41
    .line 42
    invoke-interface {p1, p2}, Lr/e;->addError(Lr/m;)V

    .line 43
    .line 44
    .line 45
    return-object p2
.end method

.method public createExtraVariable()Lr/m;
    .locals 3

    .line 1
    iget v0, p0, Lr/f;->i:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iget v1, p0, Lr/f;->e:I

    .line 6
    .line 7
    if-lt v0, v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lr/f;->d()V

    .line 10
    .line 11
    .line 12
    :cond_0
    sget-object v0, Landroidx/constraintlayout/core/SolverVariable$Type;->e:Landroidx/constraintlayout/core/SolverVariable$Type;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {p0, v0, v1}, Lr/f;->a(Landroidx/constraintlayout/core/SolverVariable$Type;Ljava/lang/String;)Lr/m;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget v1, p0, Lr/f;->b:I

    .line 20
    .line 21
    add-int/lit8 v1, v1, 0x1

    .line 22
    .line 23
    iput v1, p0, Lr/f;->b:I

    .line 24
    .line 25
    iget v2, p0, Lr/f;->i:I

    .line 26
    .line 27
    add-int/lit8 v2, v2, 0x1

    .line 28
    .line 29
    iput v2, p0, Lr/f;->i:I

    .line 30
    .line 31
    iput v1, v0, Lr/m;->e:I

    .line 32
    .line 33
    iget-object v2, p0, Lr/f;->l:Lr/d;

    .line 34
    .line 35
    iget-object v2, v2, Lr/d;->c:[Lr/m;

    .line 36
    .line 37
    aput-object v0, v2, v1

    .line 38
    .line 39
    return-object v0
.end method

.method public createObjectVariable(Ljava/lang/Object;)Lr/m;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    iget v1, p0, Lr/f;->i:I

    .line 6
    .line 7
    add-int/lit8 v1, v1, 0x1

    .line 8
    .line 9
    iget v2, p0, Lr/f;->e:I

    .line 10
    .line 11
    if-lt v1, v2, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Lr/f;->d()V

    .line 14
    .line 15
    .line 16
    :cond_1
    instance-of v1, p1, Lu/d;

    .line 17
    .line 18
    if-eqz v1, :cond_6

    .line 19
    .line 20
    check-cast p1, Lu/d;

    .line 21
    .line 22
    invoke-virtual {p1}, Lu/d;->getSolverVariable()Lr/m;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object v1, p0, Lr/f;->l:Lr/d;

    .line 27
    .line 28
    if-nez v0, :cond_2

    .line 29
    .line 30
    invoke-virtual {p1, v1}, Lu/d;->resetSolverVariable(Lr/d;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Lu/d;->getSolverVariable()Lr/m;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    :cond_2
    iget p1, v0, Lr/m;->e:I

    .line 38
    .line 39
    const/4 v2, -0x1

    .line 40
    if-eq p1, v2, :cond_4

    .line 41
    .line 42
    iget v3, p0, Lr/f;->b:I

    .line 43
    .line 44
    if-gt p1, v3, :cond_4

    .line 45
    .line 46
    iget-object v3, v1, Lr/d;->c:[Lr/m;

    .line 47
    .line 48
    aget-object v3, v3, p1

    .line 49
    .line 50
    if-nez v3, :cond_3

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_3
    return-object v0

    .line 54
    :cond_4
    :goto_0
    if-eq p1, v2, :cond_5

    .line 55
    .line 56
    invoke-virtual {v0}, Lr/m;->reset()V

    .line 57
    .line 58
    .line 59
    :cond_5
    iget p1, p0, Lr/f;->b:I

    .line 60
    .line 61
    add-int/lit8 p1, p1, 0x1

    .line 62
    .line 63
    iput p1, p0, Lr/f;->b:I

    .line 64
    .line 65
    iget v2, p0, Lr/f;->i:I

    .line 66
    .line 67
    add-int/lit8 v2, v2, 0x1

    .line 68
    .line 69
    iput v2, p0, Lr/f;->i:I

    .line 70
    .line 71
    iput p1, v0, Lr/m;->e:I

    .line 72
    .line 73
    sget-object v2, Landroidx/constraintlayout/core/SolverVariable$Type;->b:Landroidx/constraintlayout/core/SolverVariable$Type;

    .line 74
    .line 75
    iput-object v2, v0, Lr/m;->r:Landroidx/constraintlayout/core/SolverVariable$Type;

    .line 76
    .line 77
    iget-object v1, v1, Lr/d;->c:[Lr/m;

    .line 78
    .line 79
    aput-object v0, v1, p1

    .line 80
    .line 81
    :cond_6
    return-object v0
.end method

.method public createRow()Lr/c;
    .locals 2

    .line 1
    iget-object v0, p0, Lr/f;->l:Lr/d;

    .line 2
    .line 3
    iget-object v1, v0, Lr/d;->a:Lr/i;

    .line 4
    .line 5
    invoke-interface {v1}, Lr/h;->acquire()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Lr/c;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    new-instance v1, Lr/c;

    .line 14
    .line 15
    invoke-direct {v1, v0}, Lr/c;-><init>(Lr/d;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {v1}, Lr/c;->reset()V

    .line 20
    .line 21
    .line 22
    :goto_0
    return-object v1
.end method

.method public createSlackVariable()Lr/m;
    .locals 3

    .line 1
    iget v0, p0, Lr/f;->i:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iget v1, p0, Lr/f;->e:I

    .line 6
    .line 7
    if-lt v0, v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lr/f;->d()V

    .line 10
    .line 11
    .line 12
    :cond_0
    sget-object v0, Landroidx/constraintlayout/core/SolverVariable$Type;->e:Landroidx/constraintlayout/core/SolverVariable$Type;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {p0, v0, v1}, Lr/f;->a(Landroidx/constraintlayout/core/SolverVariable$Type;Ljava/lang/String;)Lr/m;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget v1, p0, Lr/f;->b:I

    .line 20
    .line 21
    add-int/lit8 v1, v1, 0x1

    .line 22
    .line 23
    iput v1, p0, Lr/f;->b:I

    .line 24
    .line 25
    iget v2, p0, Lr/f;->i:I

    .line 26
    .line 27
    add-int/lit8 v2, v2, 0x1

    .line 28
    .line 29
    iput v2, p0, Lr/f;->i:I

    .line 30
    .line 31
    iput v1, v0, Lr/m;->e:I

    .line 32
    .line 33
    iget-object v2, p0, Lr/f;->l:Lr/d;

    .line 34
    .line 35
    iget-object v2, v2, Lr/d;->c:[Lr/m;

    .line 36
    .line 37
    aput-object v0, v2, v1

    .line 38
    .line 39
    return-object v0
.end method

.method public final d()V
    .locals 3

    .line 1
    iget v0, p0, Lr/f;->d:I

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    iput v0, p0, Lr/f;->d:I

    .line 6
    .line 7
    iget-object v1, p0, Lr/f;->f:[Lr/c;

    .line 8
    .line 9
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, [Lr/c;

    .line 14
    .line 15
    iput-object v0, p0, Lr/f;->f:[Lr/c;

    .line 16
    .line 17
    iget-object v0, p0, Lr/f;->l:Lr/d;

    .line 18
    .line 19
    iget-object v1, v0, Lr/d;->c:[Lr/m;

    .line 20
    .line 21
    iget v2, p0, Lr/f;->d:I

    .line 22
    .line 23
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, [Lr/m;

    .line 28
    .line 29
    iput-object v1, v0, Lr/d;->c:[Lr/m;

    .line 30
    .line 31
    iget v0, p0, Lr/f;->d:I

    .line 32
    .line 33
    new-array v1, v0, [Z

    .line 34
    .line 35
    iput-object v1, p0, Lr/f;->h:[Z

    .line 36
    .line 37
    iput v0, p0, Lr/f;->e:I

    .line 38
    .line 39
    iput v0, p0, Lr/f;->k:I

    .line 40
    .line 41
    return-void
.end method

.method public final e(Lr/l;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    :goto_0
    iget v3, v0, Lr/f;->j:I

    .line 5
    .line 6
    if-ge v2, v3, :cond_d

    .line 7
    .line 8
    iget-object v3, v0, Lr/f;->f:[Lr/c;

    .line 9
    .line 10
    aget-object v3, v3, v2

    .line 11
    .line 12
    iget-object v4, v3, Lr/c;->a:Lr/m;

    .line 13
    .line 14
    iget-object v4, v4, Lr/m;->r:Landroidx/constraintlayout/core/SolverVariable$Type;

    .line 15
    .line 16
    sget-object v5, Landroidx/constraintlayout/core/SolverVariable$Type;->b:Landroidx/constraintlayout/core/SolverVariable$Type;

    .line 17
    .line 18
    if-ne v4, v5, :cond_0

    .line 19
    .line 20
    goto/16 :goto_8

    .line 21
    .line 22
    :cond_0
    iget v3, v3, Lr/c;->b:F

    .line 23
    .line 24
    const/4 v4, 0x0

    .line 25
    cmpg-float v3, v3, v4

    .line 26
    .line 27
    if-gez v3, :cond_c

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    const/4 v3, 0x0

    .line 31
    :goto_1
    if-nez v2, :cond_d

    .line 32
    .line 33
    const/4 v6, 0x1

    .line 34
    add-int/2addr v3, v6

    .line 35
    const v8, 0x7f7fffff    # Float.MAX_VALUE

    .line 36
    .line 37
    .line 38
    const/4 v9, 0x0

    .line 39
    const/4 v10, -0x1

    .line 40
    const/4 v11, -0x1

    .line 41
    const/4 v12, 0x0

    .line 42
    :goto_2
    iget v13, v0, Lr/f;->j:I

    .line 43
    .line 44
    if-ge v9, v13, :cond_9

    .line 45
    .line 46
    iget-object v13, v0, Lr/f;->f:[Lr/c;

    .line 47
    .line 48
    aget-object v13, v13, v9

    .line 49
    .line 50
    iget-object v14, v13, Lr/c;->a:Lr/m;

    .line 51
    .line 52
    iget-object v14, v14, Lr/m;->r:Landroidx/constraintlayout/core/SolverVariable$Type;

    .line 53
    .line 54
    if-ne v14, v5, :cond_1

    .line 55
    .line 56
    goto :goto_6

    .line 57
    :cond_1
    iget-boolean v14, v13, Lr/c;->e:Z

    .line 58
    .line 59
    if-eqz v14, :cond_2

    .line 60
    .line 61
    goto :goto_6

    .line 62
    :cond_2
    iget v14, v13, Lr/c;->b:F

    .line 63
    .line 64
    cmpg-float v14, v14, v4

    .line 65
    .line 66
    if-gez v14, :cond_8

    .line 67
    .line 68
    iget-object v14, v13, Lr/c;->d:Lr/b;

    .line 69
    .line 70
    invoke-interface {v14}, Lr/b;->getCurrentSize()I

    .line 71
    .line 72
    .line 73
    move-result v14

    .line 74
    const/4 v15, 0x0

    .line 75
    :goto_3
    if-ge v15, v14, :cond_8

    .line 76
    .line 77
    iget-object v1, v13, Lr/c;->d:Lr/b;

    .line 78
    .line 79
    invoke-interface {v1, v15}, Lr/b;->getVariable(I)Lr/m;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    move/from16 v16, v4

    .line 84
    .line 85
    iget-object v4, v13, Lr/c;->d:Lr/b;

    .line 86
    .line 87
    invoke-interface {v4, v1}, Lr/b;->get(Lr/m;)F

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    cmpg-float v17, v4, v16

    .line 92
    .line 93
    if-gtz v17, :cond_3

    .line 94
    .line 95
    goto :goto_5

    .line 96
    :cond_3
    const/4 v6, 0x0

    .line 97
    :goto_4
    const/16 v7, 0x9

    .line 98
    .line 99
    if-ge v6, v7, :cond_7

    .line 100
    .line 101
    iget-object v7, v1, Lr/m;->p:[F

    .line 102
    .line 103
    aget v7, v7, v6

    .line 104
    .line 105
    div-float/2addr v7, v4

    .line 106
    cmpg-float v18, v7, v8

    .line 107
    .line 108
    if-gez v18, :cond_4

    .line 109
    .line 110
    if-eq v6, v12, :cond_5

    .line 111
    .line 112
    :cond_4
    if-le v6, v12, :cond_6

    .line 113
    .line 114
    :cond_5
    iget v8, v1, Lr/m;->e:I

    .line 115
    .line 116
    move v12, v6

    .line 117
    move v11, v8

    .line 118
    move v10, v9

    .line 119
    move v8, v7

    .line 120
    :cond_6
    add-int/lit8 v6, v6, 0x1

    .line 121
    .line 122
    goto :goto_4

    .line 123
    :cond_7
    :goto_5
    add-int/lit8 v15, v15, 0x1

    .line 124
    .line 125
    move/from16 v4, v16

    .line 126
    .line 127
    const/4 v6, 0x1

    .line 128
    goto :goto_3

    .line 129
    :cond_8
    :goto_6
    move/from16 v16, v4

    .line 130
    .line 131
    add-int/lit8 v9, v9, 0x1

    .line 132
    .line 133
    move/from16 v4, v16

    .line 134
    .line 135
    const/4 v6, 0x1

    .line 136
    goto :goto_2

    .line 137
    :cond_9
    move/from16 v16, v4

    .line 138
    .line 139
    const/4 v1, -0x1

    .line 140
    if-eq v10, v1, :cond_a

    .line 141
    .line 142
    iget-object v4, v0, Lr/f;->f:[Lr/c;

    .line 143
    .line 144
    aget-object v4, v4, v10

    .line 145
    .line 146
    iget-object v6, v4, Lr/c;->a:Lr/m;

    .line 147
    .line 148
    iput v1, v6, Lr/m;->f:I

    .line 149
    .line 150
    iget-object v1, v0, Lr/f;->l:Lr/d;

    .line 151
    .line 152
    iget-object v1, v1, Lr/d;->c:[Lr/m;

    .line 153
    .line 154
    aget-object v1, v1, v11

    .line 155
    .line 156
    invoke-virtual {v4, v1}, Lr/c;->b(Lr/m;)V

    .line 157
    .line 158
    .line 159
    iget-object v1, v4, Lr/c;->a:Lr/m;

    .line 160
    .line 161
    iput v10, v1, Lr/m;->f:I

    .line 162
    .line 163
    invoke-virtual {v1, v0, v4}, Lr/m;->updateReferencesWithNewDefinition(Lr/f;Lr/c;)V

    .line 164
    .line 165
    .line 166
    goto :goto_7

    .line 167
    :cond_a
    const/4 v2, 0x1

    .line 168
    :goto_7
    iget v1, v0, Lr/f;->i:I

    .line 169
    .line 170
    div-int/lit8 v1, v1, 0x2

    .line 171
    .line 172
    if-le v3, v1, :cond_b

    .line 173
    .line 174
    const/4 v2, 0x1

    .line 175
    :cond_b
    move/from16 v4, v16

    .line 176
    .line 177
    goto/16 :goto_1

    .line 178
    .line 179
    :cond_c
    :goto_8
    add-int/lit8 v2, v2, 0x1

    .line 180
    .line 181
    goto/16 :goto_0

    .line 182
    .line 183
    :cond_d
    invoke-virtual/range {p0 .. p1}, Lr/f;->f(Lr/c;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0}, Lr/f;->c()V

    .line 187
    .line 188
    .line 189
    return-void
.end method

.method public final f(Lr/c;)V
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget v2, p0, Lr/f;->i:I

    .line 4
    .line 5
    if-ge v1, v2, :cond_0

    .line 6
    .line 7
    iget-object v2, p0, Lr/f;->h:[Z

    .line 8
    .line 9
    aput-boolean v0, v2, v1

    .line 10
    .line 11
    add-int/lit8 v1, v1, 0x1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v1, v0

    .line 15
    move v2, v1

    .line 16
    :cond_1
    :goto_1
    if-nez v1, :cond_b

    .line 17
    .line 18
    const/4 v3, 0x1

    .line 19
    add-int/2addr v2, v3

    .line 20
    iget v4, p0, Lr/f;->i:I

    .line 21
    .line 22
    mul-int/lit8 v4, v4, 0x2

    .line 23
    .line 24
    if-lt v2, v4, :cond_2

    .line 25
    .line 26
    goto/16 :goto_4

    .line 27
    .line 28
    :cond_2
    invoke-virtual {p1}, Lr/c;->getKey()Lr/m;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    if-eqz v4, :cond_3

    .line 33
    .line 34
    iget-object v4, p0, Lr/f;->h:[Z

    .line 35
    .line 36
    invoke-virtual {p1}, Lr/c;->getKey()Lr/m;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    iget v5, v5, Lr/m;->e:I

    .line 41
    .line 42
    aput-boolean v3, v4, v5

    .line 43
    .line 44
    :cond_3
    iget-object v4, p0, Lr/f;->h:[Z

    .line 45
    .line 46
    invoke-interface {p1, p0, v4}, Lr/e;->getPivotCandidate(Lr/f;[Z)Lr/m;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    if-eqz v4, :cond_5

    .line 51
    .line 52
    iget-object v5, p0, Lr/f;->h:[Z

    .line 53
    .line 54
    iget v6, v4, Lr/m;->e:I

    .line 55
    .line 56
    aget-boolean v7, v5, v6

    .line 57
    .line 58
    if-eqz v7, :cond_4

    .line 59
    .line 60
    goto :goto_4

    .line 61
    :cond_4
    aput-boolean v3, v5, v6

    .line 62
    .line 63
    :cond_5
    if-eqz v4, :cond_a

    .line 64
    .line 65
    const/4 v3, -0x1

    .line 66
    const v5, 0x7f7fffff    # Float.MAX_VALUE

    .line 67
    .line 68
    .line 69
    move v6, v0

    .line 70
    move v7, v3

    .line 71
    :goto_2
    iget v8, p0, Lr/f;->j:I

    .line 72
    .line 73
    if-ge v6, v8, :cond_9

    .line 74
    .line 75
    iget-object v8, p0, Lr/f;->f:[Lr/c;

    .line 76
    .line 77
    aget-object v8, v8, v6

    .line 78
    .line 79
    iget-object v9, v8, Lr/c;->a:Lr/m;

    .line 80
    .line 81
    iget-object v9, v9, Lr/m;->r:Landroidx/constraintlayout/core/SolverVariable$Type;

    .line 82
    .line 83
    sget-object v10, Landroidx/constraintlayout/core/SolverVariable$Type;->b:Landroidx/constraintlayout/core/SolverVariable$Type;

    .line 84
    .line 85
    if-ne v9, v10, :cond_6

    .line 86
    .line 87
    goto :goto_3

    .line 88
    :cond_6
    iget-boolean v9, v8, Lr/c;->e:Z

    .line 89
    .line 90
    if-eqz v9, :cond_7

    .line 91
    .line 92
    goto :goto_3

    .line 93
    :cond_7
    iget-object v9, v8, Lr/c;->d:Lr/b;

    .line 94
    .line 95
    invoke-interface {v9, v4}, Lr/b;->contains(Lr/m;)Z

    .line 96
    .line 97
    .line 98
    move-result v9

    .line 99
    if-eqz v9, :cond_8

    .line 100
    .line 101
    iget-object v9, v8, Lr/c;->d:Lr/b;

    .line 102
    .line 103
    invoke-interface {v9, v4}, Lr/b;->get(Lr/m;)F

    .line 104
    .line 105
    .line 106
    move-result v9

    .line 107
    const/4 v10, 0x0

    .line 108
    cmpg-float v10, v9, v10

    .line 109
    .line 110
    if-gez v10, :cond_8

    .line 111
    .line 112
    iget v8, v8, Lr/c;->b:F

    .line 113
    .line 114
    neg-float v8, v8

    .line 115
    div-float/2addr v8, v9

    .line 116
    cmpg-float v9, v8, v5

    .line 117
    .line 118
    if-gez v9, :cond_8

    .line 119
    .line 120
    move v7, v6

    .line 121
    move v5, v8

    .line 122
    :cond_8
    :goto_3
    add-int/lit8 v6, v6, 0x1

    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_9
    if-le v7, v3, :cond_1

    .line 126
    .line 127
    iget-object v5, p0, Lr/f;->f:[Lr/c;

    .line 128
    .line 129
    aget-object v5, v5, v7

    .line 130
    .line 131
    iget-object v6, v5, Lr/c;->a:Lr/m;

    .line 132
    .line 133
    iput v3, v6, Lr/m;->f:I

    .line 134
    .line 135
    invoke-virtual {v5, v4}, Lr/c;->b(Lr/m;)V

    .line 136
    .line 137
    .line 138
    iget-object v3, v5, Lr/c;->a:Lr/m;

    .line 139
    .line 140
    iput v7, v3, Lr/m;->f:I

    .line 141
    .line 142
    invoke-virtual {v3, p0, v5}, Lr/m;->updateReferencesWithNewDefinition(Lr/f;Lr/c;)V

    .line 143
    .line 144
    .line 145
    goto/16 :goto_1

    .line 146
    .line 147
    :cond_a
    move v1, v3

    .line 148
    goto/16 :goto_1

    .line 149
    .line 150
    :cond_b
    :goto_4
    return-void
.end method

.method public final g()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v1, p0, Lr/f;->j:I

    .line 3
    .line 4
    if-ge v0, v1, :cond_1

    .line 5
    .line 6
    iget-object v1, p0, Lr/f;->f:[Lr/c;

    .line 7
    .line 8
    aget-object v1, v1, v0

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iget-object v2, p0, Lr/f;->l:Lr/d;

    .line 13
    .line 14
    iget-object v2, v2, Lr/d;->a:Lr/i;

    .line 15
    .line 16
    invoke-interface {v2, v1}, Lr/h;->release(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v1, p0, Lr/f;->f:[Lr/c;

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    aput-object v2, v1, v0

    .line 23
    .line 24
    add-int/lit8 v0, v0, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    return-void
.end method

.method public getCache()Lr/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lr/f;->l:Lr/d;

    .line 2
    .line 3
    return-object v0
.end method

.method public getObjectVariableValue(Ljava/lang/Object;)I
    .locals 1

    .line 1
    check-cast p1, Lu/d;

    .line 2
    .line 3
    invoke-virtual {p1}, Lu/d;->getSolverVariable()Lr/m;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget p1, p1, Lr/m;->m:F

    .line 10
    .line 11
    const/high16 v0, 0x3f000000    # 0.5f

    .line 12
    .line 13
    add-float/2addr p1, v0

    .line 14
    float-to-int p1, p1

    .line 15
    return p1

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    return p1
.end method

.method public minimize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lr/f;->c:Lr/l;

    .line 2
    .line 3
    invoke-interface {v0}, Lr/e;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lr/f;->c()V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-boolean v1, p0, Lr/f;->g:Z

    .line 14
    .line 15
    if-eqz v1, :cond_3

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    :goto_0
    iget v2, p0, Lr/f;->j:I

    .line 19
    .line 20
    if-ge v1, v2, :cond_2

    .line 21
    .line 22
    iget-object v2, p0, Lr/f;->f:[Lr/c;

    .line 23
    .line 24
    aget-object v2, v2, v1

    .line 25
    .line 26
    iget-boolean v2, v2, Lr/c;->e:Z

    .line 27
    .line 28
    if-nez v2, :cond_1

    .line 29
    .line 30
    invoke-virtual {p0, v0}, Lr/f;->e(Lr/l;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    invoke-virtual {p0}, Lr/f;->c()V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_3
    invoke-virtual {p0, v0}, Lr/f;->e(Lr/l;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public reset()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Lr/f;->l:Lr/d;

    .line 4
    .line 5
    iget-object v3, v2, Lr/d;->c:[Lr/m;

    .line 6
    .line 7
    array-length v4, v3

    .line 8
    if-ge v1, v4, :cond_1

    .line 9
    .line 10
    aget-object v2, v3, v1

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    invoke-virtual {v2}, Lr/m;->reset()V

    .line 15
    .line 16
    .line 17
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    iget-object v1, v2, Lr/d;->b:Lr/i;

    .line 21
    .line 22
    iget-object v3, p0, Lr/f;->m:[Lr/m;

    .line 23
    .line 24
    iget v4, p0, Lr/f;->n:I

    .line 25
    .line 26
    invoke-interface {v1, v3, v4}, Lr/h;->releaseAll([Ljava/lang/Object;I)V

    .line 27
    .line 28
    .line 29
    iput v0, p0, Lr/f;->n:I

    .line 30
    .line 31
    iget-object v1, v2, Lr/d;->c:[Lr/m;

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    invoke-static {v1, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    iput v0, p0, Lr/f;->b:I

    .line 38
    .line 39
    iget-object v1, p0, Lr/f;->c:Lr/l;

    .line 40
    .line 41
    invoke-interface {v1}, Lr/e;->clear()V

    .line 42
    .line 43
    .line 44
    const/4 v1, 0x1

    .line 45
    iput v1, p0, Lr/f;->i:I

    .line 46
    .line 47
    move v1, v0

    .line 48
    :goto_1
    iget v3, p0, Lr/f;->j:I

    .line 49
    .line 50
    if-ge v1, v3, :cond_2

    .line 51
    .line 52
    iget-object v3, p0, Lr/f;->f:[Lr/c;

    .line 53
    .line 54
    aget-object v3, v3, v1

    .line 55
    .line 56
    add-int/lit8 v1, v1, 0x1

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    invoke-virtual {p0}, Lr/f;->g()V

    .line 60
    .line 61
    .line 62
    iput v0, p0, Lr/f;->j:I

    .line 63
    .line 64
    new-instance v0, Lr/c;

    .line 65
    .line 66
    invoke-direct {v0, v2}, Lr/c;-><init>(Lr/d;)V

    .line 67
    .line 68
    .line 69
    iput-object v0, p0, Lr/f;->o:Lr/c;

    .line 70
    .line 71
    return-void
.end method
