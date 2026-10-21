.class public abstract Lu/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [Z

    .line 3
    .line 4
    sput-object v0, Lu/l;->a:[Z

    .line 5
    .line 6
    return-void
.end method

.method public static a(Lu/f;Lr/f;Lu/e;)V
    .locals 9

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p2, Lu/e;->o:I

    .line 3
    .line 4
    iput v0, p2, Lu/e;->p:I

    .line 5
    .line 6
    iget-object v0, p0, Lu/e;->T:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    aget-object v0, v0, v1

    .line 10
    .line 11
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->e:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 12
    .line 13
    const/4 v3, 0x2

    .line 14
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->j:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 15
    .line 16
    iget-object v5, p2, Lu/e;->T:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 17
    .line 18
    if-eq v0, v2, :cond_0

    .line 19
    .line 20
    aget-object v0, v5, v1

    .line 21
    .line 22
    if-ne v0, v4, :cond_0

    .line 23
    .line 24
    iget-object v0, p2, Lu/e;->I:Lu/d;

    .line 25
    .line 26
    iget v1, v0, Lu/d;->g:I

    .line 27
    .line 28
    invoke-virtual {p0}, Lu/e;->getWidth()I

    .line 29
    .line 30
    .line 31
    move-result v6

    .line 32
    iget-object v7, p2, Lu/e;->K:Lu/d;

    .line 33
    .line 34
    iget v8, v7, Lu/d;->g:I

    .line 35
    .line 36
    sub-int/2addr v6, v8

    .line 37
    invoke-virtual {p1, v0}, Lr/f;->createObjectVariable(Ljava/lang/Object;)Lr/m;

    .line 38
    .line 39
    .line 40
    move-result-object v8

    .line 41
    iput-object v8, v0, Lu/d;->i:Lr/m;

    .line 42
    .line 43
    invoke-virtual {p1, v7}, Lr/f;->createObjectVariable(Ljava/lang/Object;)Lr/m;

    .line 44
    .line 45
    .line 46
    move-result-object v8

    .line 47
    iput-object v8, v7, Lu/d;->i:Lr/m;

    .line 48
    .line 49
    iget-object v0, v0, Lu/d;->i:Lr/m;

    .line 50
    .line 51
    invoke-virtual {p1, v0, v1}, Lr/f;->addEquality(Lr/m;I)V

    .line 52
    .line 53
    .line 54
    iget-object v0, v7, Lu/d;->i:Lr/m;

    .line 55
    .line 56
    invoke-virtual {p1, v0, v6}, Lr/f;->addEquality(Lr/m;I)V

    .line 57
    .line 58
    .line 59
    iput v3, p2, Lu/e;->o:I

    .line 60
    .line 61
    invoke-virtual {p2, v1, v6}, Lu/e;->setHorizontalDimension(II)V

    .line 62
    .line 63
    .line 64
    :cond_0
    iget-object v0, p0, Lu/e;->T:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 65
    .line 66
    const/4 v1, 0x1

    .line 67
    aget-object v0, v0, v1

    .line 68
    .line 69
    if-eq v0, v2, :cond_3

    .line 70
    .line 71
    aget-object v0, v5, v1

    .line 72
    .line 73
    if-ne v0, v4, :cond_3

    .line 74
    .line 75
    iget-object v0, p2, Lu/e;->J:Lu/d;

    .line 76
    .line 77
    iget v1, v0, Lu/d;->g:I

    .line 78
    .line 79
    invoke-virtual {p0}, Lu/e;->getHeight()I

    .line 80
    .line 81
    .line 82
    move-result p0

    .line 83
    iget-object v2, p2, Lu/e;->L:Lu/d;

    .line 84
    .line 85
    iget v4, v2, Lu/d;->g:I

    .line 86
    .line 87
    sub-int/2addr p0, v4

    .line 88
    invoke-virtual {p1, v0}, Lr/f;->createObjectVariable(Ljava/lang/Object;)Lr/m;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    iput-object v4, v0, Lu/d;->i:Lr/m;

    .line 93
    .line 94
    invoke-virtual {p1, v2}, Lr/f;->createObjectVariable(Ljava/lang/Object;)Lr/m;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    iput-object v4, v2, Lu/d;->i:Lr/m;

    .line 99
    .line 100
    iget-object v0, v0, Lu/d;->i:Lr/m;

    .line 101
    .line 102
    invoke-virtual {p1, v0, v1}, Lr/f;->addEquality(Lr/m;I)V

    .line 103
    .line 104
    .line 105
    iget-object v0, v2, Lu/d;->i:Lr/m;

    .line 106
    .line 107
    invoke-virtual {p1, v0, p0}, Lr/f;->addEquality(Lr/m;I)V

    .line 108
    .line 109
    .line 110
    iget v0, p2, Lu/e;->b0:I

    .line 111
    .line 112
    if-gtz v0, :cond_1

    .line 113
    .line 114
    invoke-virtual {p2}, Lu/e;->getVisibility()I

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    const/16 v2, 0x8

    .line 119
    .line 120
    if-ne v0, v2, :cond_2

    .line 121
    .line 122
    :cond_1
    iget-object v0, p2, Lu/e;->M:Lu/d;

    .line 123
    .line 124
    invoke-virtual {p1, v0}, Lr/f;->createObjectVariable(Ljava/lang/Object;)Lr/m;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    iput-object v2, v0, Lu/d;->i:Lr/m;

    .line 129
    .line 130
    iget-object v0, v0, Lu/d;->i:Lr/m;

    .line 131
    .line 132
    iget v2, p2, Lu/e;->b0:I

    .line 133
    .line 134
    add-int/2addr v2, v1

    .line 135
    invoke-virtual {p1, v0, v2}, Lr/f;->addEquality(Lr/m;I)V

    .line 136
    .line 137
    .line 138
    :cond_2
    iput v3, p2, Lu/e;->p:I

    .line 139
    .line 140
    invoke-virtual {p2, v1, p0}, Lu/e;->setVerticalDimension(II)V

    .line 141
    .line 142
    .line 143
    :cond_3
    return-void
.end method

.method public static final enabled(II)Z
    .locals 0

    .line 1
    and-int/2addr p0, p1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    const/4 p0, 0x1

    .line 5
    return p0

    .line 6
    :cond_0
    const/4 p0, 0x0

    .line 7
    return p0
.end method
