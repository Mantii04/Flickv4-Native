.class public abstract Lu/m;
.super Lu/k;
.source "SourceFile"


# instance fields
.field public A0:I

.field public final B0:Lv/b;

.field public C0:Lv/c;

.field public s0:I

.field public t0:I

.field public u0:I

.field public v0:I

.field public w0:I

.field public x0:I

.field public y0:Z

.field public z0:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lu/k;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lu/m;->s0:I

    .line 6
    .line 7
    iput v0, p0, Lu/m;->t0:I

    .line 8
    .line 9
    iput v0, p0, Lu/m;->u0:I

    .line 10
    .line 11
    iput v0, p0, Lu/m;->v0:I

    .line 12
    .line 13
    iput v0, p0, Lu/m;->w0:I

    .line 14
    .line 15
    iput v0, p0, Lu/m;->x0:I

    .line 16
    .line 17
    iput-boolean v0, p0, Lu/m;->y0:Z

    .line 18
    .line 19
    iput v0, p0, Lu/m;->z0:I

    .line 20
    .line 21
    iput v0, p0, Lu/m;->A0:I

    .line 22
    .line 23
    new-instance v0, Lv/b;

    .line 24
    .line 25
    invoke-direct {v0}, Lv/b;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lu/m;->B0:Lv/b;

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lu/m;->C0:Lv/c;

    .line 32
    .line 33
    return-void
.end method


# virtual methods
.method public applyRtl(Z)V
    .locals 2

    .line 1
    iget v0, p0, Lu/m;->u0:I

    .line 2
    .line 3
    if-gtz v0, :cond_1

    .line 4
    .line 5
    iget v1, p0, Lu/m;->v0:I

    .line 6
    .line 7
    if-lez v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    return-void

    .line 11
    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 12
    .line 13
    iget p1, p0, Lu/m;->v0:I

    .line 14
    .line 15
    iput p1, p0, Lu/m;->w0:I

    .line 16
    .line 17
    iput v0, p0, Lu/m;->x0:I

    .line 18
    .line 19
    return-void

    .line 20
    :cond_2
    iput v0, p0, Lu/m;->w0:I

    .line 21
    .line 22
    iget p1, p0, Lu/m;->v0:I

    .line 23
    .line 24
    iput p1, p0, Lu/m;->x0:I

    .line 25
    .line 26
    return-void
.end method

.method public captureWidgets()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v1, p0, Lu/k;->r0:I

    .line 3
    .line 4
    if-ge v0, v1, :cond_1

    .line 5
    .line 6
    iget-object v1, p0, Lu/k;->q0:[Lu/e;

    .line 7
    .line 8
    aget-object v1, v1, v0

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-virtual {v1, v2}, Lu/e;->setInVirtualLayout(Z)V

    .line 14
    .line 15
    .line 16
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    return-void
.end method

.method public contains(Ljava/util/HashSet;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Lu/e;",
            ">;)Z"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget v2, p0, Lu/k;->r0:I

    .line 4
    .line 5
    if-ge v1, v2, :cond_1

    .line 6
    .line 7
    iget-object v2, p0, Lu/k;->q0:[Lu/e;

    .line 8
    .line 9
    aget-object v2, v2, v1

    .line 10
    .line 11
    invoke-virtual {p1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    return p1

    .line 19
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    return v0
.end method

.method public getMeasuredHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lu/m;->A0:I

    .line 2
    .line 3
    return v0
.end method

.method public getMeasuredWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lu/m;->z0:I

    .line 2
    .line 3
    return v0
.end method

.method public getPaddingBottom()I
    .locals 1

    .line 1
    iget v0, p0, Lu/m;->t0:I

    .line 2
    .line 3
    return v0
.end method

.method public getPaddingLeft()I
    .locals 1

    .line 1
    iget v0, p0, Lu/m;->w0:I

    .line 2
    .line 3
    return v0
.end method

.method public getPaddingRight()I
    .locals 1

    .line 1
    iget v0, p0, Lu/m;->x0:I

    .line 2
    .line 3
    return v0
.end method

.method public getPaddingTop()I
    .locals 1

    .line 1
    iget v0, p0, Lu/m;->s0:I

    .line 2
    .line 3
    return v0
.end method

.method public abstract measure(IIII)V
.end method

.method public measure(Lu/e;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V
    .locals 1

    .line 1
    :goto_0
    iget-object v0, p0, Lu/m;->C0:Lv/c;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lu/e;->getParent()Lu/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lu/e;->getParent()Lu/e;

    move-result-object v0

    check-cast v0, Lu/f;

    .line 3
    invoke-virtual {v0}, Lu/f;->getMeasurer()Lv/c;

    move-result-object v0

    iput-object v0, p0, Lu/m;->C0:Lv/c;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lu/m;->B0:Lv/b;

    iput-object p2, v0, Lv/b;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 5
    iput-object p4, v0, Lv/b;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 6
    iput p3, v0, Lv/b;->c:I

    .line 7
    iput p5, v0, Lv/b;->d:I

    .line 8
    iget-object p2, p0, Lu/m;->C0:Lv/c;

    check-cast p2, Lx/a;

    invoke-virtual {p2, p1, v0}, Lx/a;->measure(Lu/e;Lv/b;)V

    .line 9
    iget p2, v0, Lv/b;->e:I

    invoke-virtual {p1, p2}, Lu/e;->setWidth(I)V

    .line 10
    iget p2, v0, Lv/b;->f:I

    invoke-virtual {p1, p2}, Lu/e;->setHeight(I)V

    .line 11
    iget-boolean p2, v0, Lv/b;->h:Z

    invoke-virtual {p1, p2}, Lu/e;->setHasBaseline(Z)V

    .line 12
    iget p2, v0, Lv/b;->g:I

    invoke-virtual {p1, p2}, Lu/e;->setBaselineDistance(I)V

    return-void
.end method

.method public measureChildren()Z
    .locals 9

    .line 1
    iget-object v0, p0, Lu/e;->U:Lu/e;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast v0, Lu/f;

    .line 6
    .line 7
    invoke-virtual {v0}, Lu/f;->getMeasurer()Lv/c;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    const/4 v1, 0x0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    return v1

    .line 17
    :cond_1
    move v2, v1

    .line 18
    :goto_1
    iget v3, p0, Lu/k;->r0:I

    .line 19
    .line 20
    const/4 v4, 0x1

    .line 21
    if-ge v2, v3, :cond_7

    .line 22
    .line 23
    iget-object v3, p0, Lu/k;->q0:[Lu/e;

    .line 24
    .line 25
    aget-object v3, v3, v2

    .line 26
    .line 27
    if-nez v3, :cond_2

    .line 28
    .line 29
    goto :goto_2

    .line 30
    :cond_2
    instance-of v5, v3, Lu/i;

    .line 31
    .line 32
    if-eqz v5, :cond_3

    .line 33
    .line 34
    goto :goto_2

    .line 35
    :cond_3
    invoke-virtual {v3, v1}, Lu/e;->getDimensionBehaviour(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    invoke-virtual {v3, v4}, Lu/e;->getDimensionBehaviour(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->f:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 44
    .line 45
    if-ne v5, v7, :cond_4

    .line 46
    .line 47
    iget v8, v3, Lu/e;->r:I

    .line 48
    .line 49
    if-eq v8, v4, :cond_4

    .line 50
    .line 51
    if-ne v6, v7, :cond_4

    .line 52
    .line 53
    iget v8, v3, Lu/e;->s:I

    .line 54
    .line 55
    if-eq v8, v4, :cond_4

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_4
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->e:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 59
    .line 60
    if-ne v5, v7, :cond_5

    .line 61
    .line 62
    move-object v5, v4

    .line 63
    :cond_5
    if-ne v6, v7, :cond_6

    .line 64
    .line 65
    move-object v6, v4

    .line 66
    :cond_6
    iget-object v4, p0, Lu/m;->B0:Lv/b;

    .line 67
    .line 68
    iput-object v5, v4, Lv/b;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 69
    .line 70
    iput-object v6, v4, Lv/b;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 71
    .line 72
    invoke-virtual {v3}, Lu/e;->getWidth()I

    .line 73
    .line 74
    .line 75
    move-result v5

    .line 76
    iput v5, v4, Lv/b;->c:I

    .line 77
    .line 78
    invoke-virtual {v3}, Lu/e;->getHeight()I

    .line 79
    .line 80
    .line 81
    move-result v5

    .line 82
    iput v5, v4, Lv/b;->d:I

    .line 83
    .line 84
    move-object v5, v0

    .line 85
    check-cast v5, Lx/a;

    .line 86
    .line 87
    invoke-virtual {v5, v3, v4}, Lx/a;->measure(Lu/e;Lv/b;)V

    .line 88
    .line 89
    .line 90
    iget v5, v4, Lv/b;->e:I

    .line 91
    .line 92
    invoke-virtual {v3, v5}, Lu/e;->setWidth(I)V

    .line 93
    .line 94
    .line 95
    iget v5, v4, Lv/b;->f:I

    .line 96
    .line 97
    invoke-virtual {v3, v5}, Lu/e;->setHeight(I)V

    .line 98
    .line 99
    .line 100
    iget v4, v4, Lv/b;->g:I

    .line 101
    .line 102
    invoke-virtual {v3, v4}, Lu/e;->setBaselineDistance(I)V

    .line 103
    .line 104
    .line 105
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_7
    return v4
.end method

.method public needSolverPass()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lu/m;->y0:Z

    .line 2
    .line 3
    return v0
.end method

.method public needsCallbackFromSolver(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lu/m;->y0:Z

    .line 2
    .line 3
    return-void
.end method

.method public setMeasure(II)V
    .locals 0

    .line 1
    iput p1, p0, Lu/m;->z0:I

    .line 2
    .line 3
    iput p2, p0, Lu/m;->A0:I

    .line 4
    .line 5
    return-void
.end method

.method public setPadding(I)V
    .locals 0

    .line 1
    iput p1, p0, Lu/m;->s0:I

    .line 2
    .line 3
    iput p1, p0, Lu/m;->t0:I

    .line 4
    .line 5
    iput p1, p0, Lu/m;->u0:I

    .line 6
    .line 7
    iput p1, p0, Lu/m;->v0:I

    .line 8
    .line 9
    return-void
.end method

.method public setPaddingBottom(I)V
    .locals 0

    .line 1
    iput p1, p0, Lu/m;->t0:I

    .line 2
    .line 3
    return-void
.end method

.method public setPaddingEnd(I)V
    .locals 0

    .line 1
    iput p1, p0, Lu/m;->v0:I

    .line 2
    .line 3
    return-void
.end method

.method public setPaddingLeft(I)V
    .locals 0

    .line 1
    iput p1, p0, Lu/m;->w0:I

    .line 2
    .line 3
    return-void
.end method

.method public setPaddingRight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lu/m;->x0:I

    .line 2
    .line 3
    return-void
.end method

.method public setPaddingStart(I)V
    .locals 0

    .line 1
    iput p1, p0, Lu/m;->u0:I

    .line 2
    .line 3
    iput p1, p0, Lu/m;->w0:I

    .line 4
    .line 5
    iput p1, p0, Lu/m;->x0:I

    .line 6
    .line 7
    return-void
.end method

.method public setPaddingTop(I)V
    .locals 0

    .line 1
    iput p1, p0, Lu/m;->s0:I

    .line 2
    .line 3
    return-void
.end method

.method public updateConstraints(Lu/f;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lu/m;->captureWidgets()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
