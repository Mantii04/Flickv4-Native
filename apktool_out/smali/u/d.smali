.class public final Lu/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/HashSet;

.field public b:I

.field public c:Z

.field public final d:Lu/e;

.field public final e:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

.field public f:Lu/d;

.field public g:I

.field public h:I

.field public i:Lr/m;


# direct methods
.method public constructor <init>(Lu/e;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lu/d;->a:Ljava/util/HashSet;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lu/d;->g:I

    .line 9
    .line 10
    const/high16 v0, -0x80000000

    .line 11
    .line 12
    iput v0, p0, Lu/d;->h:I

    .line 13
    .line 14
    iput-object p1, p0, Lu/d;->d:Lu/e;

    .line 15
    .line 16
    iput-object p2, p0, Lu/d;->e:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public connect(Lu/d;I)Z
    .locals 2

    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    .line 10
    invoke-virtual {p0, p1, p2, v0, v1}, Lu/d;->connect(Lu/d;IIZ)Z

    move-result p1

    return p1
.end method

.method public connect(Lu/d;IIZ)Z
    .locals 1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lu/d;->reset()V

    return v0

    :cond_0
    if-nez p4, :cond_1

    .line 2
    invoke-virtual {p0, p1}, Lu/d;->isValidConnection(Lu/d;)Z

    move-result p4

    if-nez p4, :cond_1

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_1
    iput-object p1, p0, Lu/d;->f:Lu/d;

    .line 4
    iget-object p4, p1, Lu/d;->a:Ljava/util/HashSet;

    if-nez p4, :cond_2

    .line 5
    new-instance p4, Ljava/util/HashSet;

    invoke-direct {p4}, Ljava/util/HashSet;-><init>()V

    iput-object p4, p1, Lu/d;->a:Ljava/util/HashSet;

    .line 6
    :cond_2
    iget-object p1, p0, Lu/d;->f:Lu/d;

    iget-object p1, p1, Lu/d;->a:Ljava/util/HashSet;

    if-eqz p1, :cond_3

    .line 7
    invoke-virtual {p1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 8
    :cond_3
    iput p2, p0, Lu/d;->g:I

    .line 9
    iput p3, p0, Lu/d;->h:I

    return v0
.end method

.method public findDependents(ILjava/util/ArrayList;Lv/m;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lv/m;",
            ">;",
            "Lv/m;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lu/d;->a:Ljava/util/HashSet;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lu/d;

    .line 20
    .line 21
    iget-object v1, v1, Lu/d;->d:Lu/e;

    .line 22
    .line 23
    invoke-static {v1, p1, p2, p3}, Lv/i;->findDependents(Lu/e;ILjava/util/ArrayList;Lv/m;)Lv/m;

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method

.method public getDependents()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Lu/d;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lu/d;->a:Ljava/util/HashSet;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFinalValue()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lu/d;->c:Z

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
    iget v0, p0, Lu/d;->b:I

    .line 8
    .line 9
    return v0
.end method

.method public getMargin()I
    .locals 3

    .line 1
    iget-object v0, p0, Lu/d;->d:Lu/e;

    .line 2
    .line 3
    invoke-virtual {v0}, Lu/e;->getVisibility()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x8

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return v0

    .line 13
    :cond_0
    iget v0, p0, Lu/d;->h:I

    .line 14
    .line 15
    const/high16 v2, -0x80000000

    .line 16
    .line 17
    if-eq v0, v2, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lu/d;->f:Lu/d;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iget-object v0, v0, Lu/d;->d:Lu/e;

    .line 24
    .line 25
    invoke-virtual {v0}, Lu/e;->getVisibility()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-ne v0, v1, :cond_1

    .line 30
    .line 31
    iget v0, p0, Lu/d;->h:I

    .line 32
    .line 33
    return v0

    .line 34
    :cond_1
    iget v0, p0, Lu/d;->g:I

    .line 35
    .line 36
    return v0
.end method

.method public final getOpposite()Lu/d;
    .locals 3

    .line 1
    iget-object v0, p0, Lu/d;->e:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    iget-object v2, p0, Lu/d;->d:Lu/e;

    .line 8
    .line 9
    packed-switch v1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    new-instance v1, Ljava/lang/AssertionError;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    throw v1

    .line 22
    :pswitch_0
    iget-object v0, v2, Lu/e;->J:Lu/d;

    .line 23
    .line 24
    return-object v0

    .line 25
    :pswitch_1
    iget-object v0, v2, Lu/e;->I:Lu/d;

    .line 26
    .line 27
    return-object v0

    .line 28
    :pswitch_2
    iget-object v0, v2, Lu/e;->L:Lu/d;

    .line 29
    .line 30
    return-object v0

    .line 31
    :pswitch_3
    iget-object v0, v2, Lu/e;->K:Lu/d;

    .line 32
    .line 33
    return-object v0

    .line 34
    :pswitch_4
    const/4 v0, 0x0

    .line 35
    return-object v0

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public getOwner()Lu/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lu/d;->d:Lu/e;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSolverVariable()Lr/m;
    .locals 1

    .line 1
    iget-object v0, p0, Lu/d;->i:Lr/m;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTarget()Lu/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lu/d;->f:Lu/d;

    .line 2
    .line 3
    return-object v0
.end method

.method public getType()Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;
    .locals 1

    .line 1
    iget-object v0, p0, Lu/d;->e:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 2
    .line 3
    return-object v0
.end method

.method public hasCenteredDependents()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lu/d;->a:Ljava/util/HashSet;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_2

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Lu/d;

    .line 22
    .line 23
    invoke-virtual {v2}, Lu/d;->getOpposite()Lu/d;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v2}, Lu/d;->isConnected()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    const/4 v0, 0x1

    .line 34
    return v0

    .line 35
    :cond_2
    return v1
.end method

.method public hasDependents()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lu/d;->a:Ljava/util/HashSet;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-lez v0, :cond_1

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    return v0

    .line 15
    :cond_1
    return v1
.end method

.method public hasFinalValue()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lu/d;->c:Z

    .line 2
    .line 3
    return v0
.end method

.method public isConnected()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lu/d;->f:Lu/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    return v0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    return v0
.end method

.method public isValidConnection(Lu/d;)Z
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lu/d;->getType()Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->m:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 10
    .line 11
    iget-object v3, p0, Lu/d;->e:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 12
    .line 13
    const/4 v4, 0x1

    .line 14
    if-ne v1, v3, :cond_3

    .line 15
    .line 16
    if-ne v3, v2, :cond_2

    .line 17
    .line 18
    invoke-virtual {p1}, Lu/d;->getOwner()Lu/e;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1}, Lu/e;->hasBaseline()Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0}, Lu/d;->getOwner()Lu/e;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1}, Lu/e;->hasBaseline()Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-nez p1, :cond_2

    .line 37
    .line 38
    :cond_1
    return v0

    .line 39
    :cond_2
    return v4

    .line 40
    :cond_3
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->p:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 45
    .line 46
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->q:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 47
    .line 48
    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 49
    .line 50
    sget-object v9, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->b:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 51
    .line 52
    packed-switch v5, :pswitch_data_0

    .line 53
    .line 54
    .line 55
    new-instance p1, Ljava/lang/AssertionError;

    .line 56
    .line 57
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    throw p1

    .line 65
    :pswitch_0
    if-eq v1, v2, :cond_4

    .line 66
    .line 67
    if-eq v1, v6, :cond_4

    .line 68
    .line 69
    if-eq v1, v7, :cond_4

    .line 70
    .line 71
    return v4

    .line 72
    :cond_4
    return v0

    .line 73
    :pswitch_1
    if-eq v1, v9, :cond_6

    .line 74
    .line 75
    if-ne v1, v8, :cond_5

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_5
    return v4

    .line 79
    :cond_6
    :goto_0
    return v0

    .line 80
    :pswitch_2
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->e:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 81
    .line 82
    if-eq v1, v2, :cond_8

    .line 83
    .line 84
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->j:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 85
    .line 86
    if-ne v1, v2, :cond_7

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_7
    move v2, v0

    .line 90
    goto :goto_2

    .line 91
    :cond_8
    :goto_1
    move v2, v4

    .line 92
    :goto_2
    invoke-virtual {p1}, Lu/d;->getOwner()Lu/e;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    instance-of p1, p1, Lu/i;

    .line 97
    .line 98
    if-eqz p1, :cond_b

    .line 99
    .line 100
    if-nez v2, :cond_a

    .line 101
    .line 102
    if-ne v1, v7, :cond_9

    .line 103
    .line 104
    goto :goto_3

    .line 105
    :cond_9
    return v0

    .line 106
    :cond_a
    :goto_3
    return v4

    .line 107
    :cond_b
    return v2

    .line 108
    :pswitch_3
    if-eq v1, v9, :cond_d

    .line 109
    .line 110
    if-ne v1, v8, :cond_c

    .line 111
    .line 112
    goto :goto_4

    .line 113
    :cond_c
    move v2, v0

    .line 114
    goto :goto_5

    .line 115
    :cond_d
    :goto_4
    move v2, v4

    .line 116
    :goto_5
    invoke-virtual {p1}, Lu/d;->getOwner()Lu/e;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    instance-of p1, p1, Lu/i;

    .line 121
    .line 122
    if-eqz p1, :cond_10

    .line 123
    .line 124
    if-nez v2, :cond_f

    .line 125
    .line 126
    if-ne v1, v6, :cond_e

    .line 127
    .line 128
    goto :goto_6

    .line 129
    :cond_e
    return v0

    .line 130
    :cond_f
    :goto_6
    return v4

    .line 131
    :cond_10
    return v2

    .line 132
    :pswitch_4
    return v0

    .line 133
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public reset()V
    .locals 2

    .line 1
    iget-object v0, p0, Lu/d;->f:Lu/d;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, v0, Lu/d;->a:Ljava/util/HashSet;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lu/d;->f:Lu/d;

    .line 14
    .line 15
    iget-object v0, v0, Lu/d;->a:Ljava/util/HashSet;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Lu/d;->f:Lu/d;

    .line 24
    .line 25
    iput-object v1, v0, Lu/d;->a:Ljava/util/HashSet;

    .line 26
    .line 27
    :cond_0
    iput-object v1, p0, Lu/d;->a:Ljava/util/HashSet;

    .line 28
    .line 29
    iput-object v1, p0, Lu/d;->f:Lu/d;

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lu/d;->g:I

    .line 33
    .line 34
    const/high16 v1, -0x80000000

    .line 35
    .line 36
    iput v1, p0, Lu/d;->h:I

    .line 37
    .line 38
    iput-boolean v0, p0, Lu/d;->c:Z

    .line 39
    .line 40
    iput v0, p0, Lu/d;->b:I

    .line 41
    .line 42
    return-void
.end method

.method public resetFinalResolution()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lu/d;->c:Z

    .line 3
    .line 4
    iput v0, p0, Lu/d;->b:I

    .line 5
    .line 6
    return-void
.end method

.method public resetSolverVariable(Lr/d;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lu/d;->i:Lr/m;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    new-instance p1, Lr/m;

    .line 6
    .line 7
    sget-object v0, Landroidx/constraintlayout/core/SolverVariable$Type;->b:Landroidx/constraintlayout/core/SolverVariable$Type;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-direct {p1, v0, v1}, Lr/m;-><init>(Landroidx/constraintlayout/core/SolverVariable$Type;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lu/d;->i:Lr/m;

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-virtual {p1}, Lr/m;->reset()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public setFinalValue(I)V
    .locals 0

    .line 1
    iput p1, p0, Lu/d;->b:I

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lu/d;->c:Z

    .line 5
    .line 6
    return-void
.end method

.method public setGoneMargin(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lu/d;->isConnected()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iput p1, p0, Lu/d;->h:I

    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lu/d;->d:Lu/e;

    .line 7
    .line 8
    invoke-virtual {v1}, Lu/e;->getDebugName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, ":"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lu/d;->e:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    return-object v0
.end method
