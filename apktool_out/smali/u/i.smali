.class public final Lu/i;
.super Lu/e;
.source "SourceFile"


# instance fields
.field public q0:F

.field public r0:I

.field public s0:I

.field public t0:Lu/d;

.field public u0:I

.field public v0:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lu/e;-><init>()V

    .line 2
    .line 3
    .line 4
    const/high16 v0, -0x40800000    # -1.0f

    .line 5
    .line 6
    iput v0, p0, Lu/i;->q0:F

    .line 7
    .line 8
    const/4 v0, -0x1

    .line 9
    iput v0, p0, Lu/i;->r0:I

    .line 10
    .line 11
    iput v0, p0, Lu/i;->s0:I

    .line 12
    .line 13
    iget-object v0, p0, Lu/e;->J:Lu/d;

    .line 14
    .line 15
    iput-object v0, p0, Lu/i;->t0:Lu/d;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lu/i;->u0:I

    .line 19
    .line 20
    iget-object v1, p0, Lu/e;->R:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lu/e;->R:Ljava/util/ArrayList;

    .line 26
    .line 27
    iget-object v2, p0, Lu/i;->t0:Lu/d;

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Lu/e;->Q:[Lu/d;

    .line 33
    .line 34
    array-length v1, v1

    .line 35
    :goto_0
    if-ge v0, v1, :cond_0

    .line 36
    .line 37
    iget-object v2, p0, Lu/e;->Q:[Lu/d;

    .line 38
    .line 39
    iget-object v3, p0, Lu/i;->t0:Lu/d;

    .line 40
    .line 41
    aput-object v3, v2, v0

    .line 42
    .line 43
    add-int/lit8 v0, v0, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    return-void
.end method


# virtual methods
.method public addToSolver(Lr/f;Z)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lu/e;->getParent()Lu/e;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    check-cast p2, Lu/f;

    .line 6
    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    goto/16 :goto_3

    .line 10
    .line 11
    :cond_0
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->b:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 12
    .line 13
    invoke-virtual {p2, v0}, Lu/e;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lu/d;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 18
    .line 19
    invoke-virtual {p2, v1}, Lu/e;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lu/d;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iget-object v2, p0, Lu/e;->U:Lu/e;

    .line 24
    .line 25
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->e:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 26
    .line 27
    const/4 v4, 0x1

    .line 28
    const/4 v5, 0x0

    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    iget-object v2, v2, Lu/e;->T:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 32
    .line 33
    aget-object v2, v2, v5

    .line 34
    .line 35
    if-ne v2, v3, :cond_1

    .line 36
    .line 37
    move v2, v4

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    move v2, v5

    .line 40
    :goto_0
    iget v6, p0, Lu/i;->u0:I

    .line 41
    .line 42
    if-nez v6, :cond_3

    .line 43
    .line 44
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->e:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 45
    .line 46
    invoke-virtual {p2, v0}, Lu/e;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lu/d;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->j:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 51
    .line 52
    invoke-virtual {p2, v1}, Lu/e;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lu/d;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    iget-object p2, p0, Lu/e;->U:Lu/e;

    .line 57
    .line 58
    if-eqz p2, :cond_2

    .line 59
    .line 60
    iget-object p2, p2, Lu/e;->T:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 61
    .line 62
    aget-object p2, p2, v4

    .line 63
    .line 64
    if-ne p2, v3, :cond_2

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_2
    move v4, v5

    .line 68
    :goto_1
    move v2, v4

    .line 69
    :cond_3
    iget-boolean p2, p0, Lu/i;->v0:Z

    .line 70
    .line 71
    const/4 v3, -0x1

    .line 72
    const/4 v4, 0x5

    .line 73
    if-eqz p2, :cond_6

    .line 74
    .line 75
    iget-object p2, p0, Lu/i;->t0:Lu/d;

    .line 76
    .line 77
    invoke-virtual {p2}, Lu/d;->hasFinalValue()Z

    .line 78
    .line 79
    .line 80
    move-result p2

    .line 81
    if-eqz p2, :cond_6

    .line 82
    .line 83
    iget-object p2, p0, Lu/i;->t0:Lu/d;

    .line 84
    .line 85
    invoke-virtual {p1, p2}, Lr/f;->createObjectVariable(Ljava/lang/Object;)Lr/m;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    iget-object v6, p0, Lu/i;->t0:Lu/d;

    .line 90
    .line 91
    invoke-virtual {v6}, Lu/d;->getFinalValue()I

    .line 92
    .line 93
    .line 94
    move-result v6

    .line 95
    invoke-virtual {p1, p2, v6}, Lr/f;->addEquality(Lr/m;I)V

    .line 96
    .line 97
    .line 98
    iget v6, p0, Lu/i;->r0:I

    .line 99
    .line 100
    if-eq v6, v3, :cond_4

    .line 101
    .line 102
    if-eqz v2, :cond_5

    .line 103
    .line 104
    invoke-virtual {p1, v1}, Lr/f;->createObjectVariable(Ljava/lang/Object;)Lr/m;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {p1, v0, p2, v5, v4}, Lr/f;->addGreaterThan(Lr/m;Lr/m;II)V

    .line 109
    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_4
    iget v6, p0, Lu/i;->s0:I

    .line 113
    .line 114
    if-eq v6, v3, :cond_5

    .line 115
    .line 116
    if-eqz v2, :cond_5

    .line 117
    .line 118
    invoke-virtual {p1, v1}, Lr/f;->createObjectVariable(Ljava/lang/Object;)Lr/m;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-virtual {p1, v0}, Lr/f;->createObjectVariable(Ljava/lang/Object;)Lr/m;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-virtual {p1, p2, v0, v5, v4}, Lr/f;->addGreaterThan(Lr/m;Lr/m;II)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1, v1, p2, v5, v4}, Lr/f;->addGreaterThan(Lr/m;Lr/m;II)V

    .line 130
    .line 131
    .line 132
    :cond_5
    :goto_2
    iput-boolean v5, p0, Lu/i;->v0:Z

    .line 133
    .line 134
    return-void

    .line 135
    :cond_6
    iget p2, p0, Lu/i;->r0:I

    .line 136
    .line 137
    const/16 v6, 0x8

    .line 138
    .line 139
    if-eq p2, v3, :cond_7

    .line 140
    .line 141
    iget-object p2, p0, Lu/i;->t0:Lu/d;

    .line 142
    .line 143
    invoke-virtual {p1, p2}, Lr/f;->createObjectVariable(Ljava/lang/Object;)Lr/m;

    .line 144
    .line 145
    .line 146
    move-result-object p2

    .line 147
    invoke-virtual {p1, v0}, Lr/f;->createObjectVariable(Ljava/lang/Object;)Lr/m;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    iget v3, p0, Lu/i;->r0:I

    .line 152
    .line 153
    invoke-virtual {p1, p2, v0, v3, v6}, Lr/f;->addEquality(Lr/m;Lr/m;II)Lr/c;

    .line 154
    .line 155
    .line 156
    if-eqz v2, :cond_9

    .line 157
    .line 158
    invoke-virtual {p1, v1}, Lr/f;->createObjectVariable(Ljava/lang/Object;)Lr/m;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-virtual {p1, v0, p2, v5, v4}, Lr/f;->addGreaterThan(Lr/m;Lr/m;II)V

    .line 163
    .line 164
    .line 165
    return-void

    .line 166
    :cond_7
    iget p2, p0, Lu/i;->s0:I

    .line 167
    .line 168
    if-eq p2, v3, :cond_8

    .line 169
    .line 170
    iget-object p2, p0, Lu/i;->t0:Lu/d;

    .line 171
    .line 172
    invoke-virtual {p1, p2}, Lr/f;->createObjectVariable(Ljava/lang/Object;)Lr/m;

    .line 173
    .line 174
    .line 175
    move-result-object p2

    .line 176
    invoke-virtual {p1, v1}, Lr/f;->createObjectVariable(Ljava/lang/Object;)Lr/m;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    iget v3, p0, Lu/i;->s0:I

    .line 181
    .line 182
    neg-int v3, v3

    .line 183
    invoke-virtual {p1, p2, v1, v3, v6}, Lr/f;->addEquality(Lr/m;Lr/m;II)Lr/c;

    .line 184
    .line 185
    .line 186
    if-eqz v2, :cond_9

    .line 187
    .line 188
    invoke-virtual {p1, v0}, Lr/f;->createObjectVariable(Ljava/lang/Object;)Lr/m;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    invoke-virtual {p1, p2, v0, v5, v4}, Lr/f;->addGreaterThan(Lr/m;Lr/m;II)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {p1, v1, p2, v5, v4}, Lr/f;->addGreaterThan(Lr/m;Lr/m;II)V

    .line 196
    .line 197
    .line 198
    return-void

    .line 199
    :cond_8
    iget p2, p0, Lu/i;->q0:F

    .line 200
    .line 201
    const/high16 v0, -0x40800000    # -1.0f

    .line 202
    .line 203
    cmpl-float p2, p2, v0

    .line 204
    .line 205
    if-eqz p2, :cond_9

    .line 206
    .line 207
    iget-object p2, p0, Lu/i;->t0:Lu/d;

    .line 208
    .line 209
    invoke-virtual {p1, p2}, Lr/f;->createObjectVariable(Ljava/lang/Object;)Lr/m;

    .line 210
    .line 211
    .line 212
    move-result-object p2

    .line 213
    invoke-virtual {p1, v1}, Lr/f;->createObjectVariable(Ljava/lang/Object;)Lr/m;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    iget v1, p0, Lu/i;->q0:F

    .line 218
    .line 219
    invoke-static {p1, p2, v0, v1}, Lr/f;->createRowDimensionPercent(Lr/f;Lr/m;Lr/m;F)Lr/c;

    .line 220
    .line 221
    .line 222
    move-result-object p2

    .line 223
    invoke-virtual {p1, p2}, Lr/f;->addConstraint(Lr/c;)V

    .line 224
    .line 225
    .line 226
    :cond_9
    :goto_3
    return-void
.end method

.method public allowedInBarrier()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public getAnchor()Lu/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lu/i;->t0:Lu/d;

    return-object v0
.end method

.method public getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lu/d;
    .locals 2

    .line 2
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget p1, p0, Lu/i;->u0:I

    if-nez p1, :cond_2

    .line 4
    iget-object p1, p0, Lu/i;->t0:Lu/d;

    return-object p1

    .line 5
    :cond_1
    iget p1, p0, Lu/i;->u0:I

    if-ne p1, v0, :cond_2

    .line 6
    iget-object p1, p0, Lu/i;->t0:Lu/d;

    return-object p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getOrientation()I
    .locals 1

    .line 1
    iget v0, p0, Lu/i;->u0:I

    .line 2
    .line 3
    return v0
.end method

.method public getRelativeBegin()I
    .locals 1

    .line 1
    iget v0, p0, Lu/i;->r0:I

    .line 2
    .line 3
    return v0
.end method

.method public getRelativeEnd()I
    .locals 1

    .line 1
    iget v0, p0, Lu/i;->s0:I

    .line 2
    .line 3
    return v0
.end method

.method public getRelativePercent()F
    .locals 1

    .line 1
    iget v0, p0, Lu/i;->q0:F

    .line 2
    .line 3
    return v0
.end method

.method public isResolvedHorizontally()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lu/i;->v0:Z

    .line 2
    .line 3
    return v0
.end method

.method public isResolvedVertically()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lu/i;->v0:Z

    .line 2
    .line 3
    return v0
.end method

.method public setFinalValue(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lu/i;->t0:Lu/d;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lu/d;->setFinalValue(I)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lu/i;->v0:Z

    .line 8
    .line 9
    return-void
.end method

.method public setGuideBegin(I)V
    .locals 2

    .line 1
    const/4 v0, -0x1

    .line 2
    if-le p1, v0, :cond_0

    .line 3
    .line 4
    const/high16 v1, -0x40800000    # -1.0f

    .line 5
    .line 6
    iput v1, p0, Lu/i;->q0:F

    .line 7
    .line 8
    iput p1, p0, Lu/i;->r0:I

    .line 9
    .line 10
    iput v0, p0, Lu/i;->s0:I

    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public setGuideEnd(I)V
    .locals 2

    .line 1
    const/4 v0, -0x1

    .line 2
    if-le p1, v0, :cond_0

    .line 3
    .line 4
    const/high16 v1, -0x40800000    # -1.0f

    .line 5
    .line 6
    iput v1, p0, Lu/i;->q0:F

    .line 7
    .line 8
    iput v0, p0, Lu/i;->r0:I

    .line 9
    .line 10
    iput p1, p0, Lu/i;->s0:I

    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public setGuidePercent(F)V
    .locals 1

    .line 1
    const/high16 v0, -0x40800000    # -1.0f

    .line 2
    .line 3
    cmpl-float v0, p1, v0

    .line 4
    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    iput p1, p0, Lu/i;->q0:F

    .line 8
    .line 9
    const/4 p1, -0x1

    .line 10
    iput p1, p0, Lu/i;->r0:I

    .line 11
    .line 12
    iput p1, p0, Lu/i;->s0:I

    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public setOrientation(I)V
    .locals 3

    .line 1
    iget v0, p0, Lu/i;->u0:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    goto :goto_2

    .line 6
    :cond_0
    iput p1, p0, Lu/i;->u0:I

    .line 7
    .line 8
    iget-object p1, p0, Lu/e;->R:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 11
    .line 12
    .line 13
    iget v0, p0, Lu/i;->u0:I

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    if-ne v0, v1, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lu/e;->I:Lu/d;

    .line 19
    .line 20
    iput-object v0, p0, Lu/i;->t0:Lu/d;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    iget-object v0, p0, Lu/e;->J:Lu/d;

    .line 24
    .line 25
    iput-object v0, p0, Lu/i;->t0:Lu/d;

    .line 26
    .line 27
    :goto_0
    iget-object v0, p0, Lu/i;->t0:Lu/d;

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lu/e;->Q:[Lu/d;

    .line 33
    .line 34
    array-length v0, p1

    .line 35
    const/4 v1, 0x0

    .line 36
    :goto_1
    if-ge v1, v0, :cond_2

    .line 37
    .line 38
    iget-object v2, p0, Lu/i;->t0:Lu/d;

    .line 39
    .line 40
    aput-object v2, p1, v1

    .line 41
    .line 42
    add-int/lit8 v1, v1, 0x1

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2
    :goto_2
    return-void
.end method

.method public updateFromSolver(Lr/f;Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lu/e;->getParent()Lu/e;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object p2, p0, Lu/i;->t0:Lu/d;

    .line 9
    .line 10
    invoke-virtual {p1, p2}, Lr/f;->getObjectVariableValue(Ljava/lang/Object;)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    iget p2, p0, Lu/i;->u0:I

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    const/4 v1, 0x0

    .line 18
    if-ne p2, v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lu/e;->setX(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v1}, Lu/e;->setY(I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lu/e;->getParent()Lu/e;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1}, Lu/e;->getHeight()I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    invoke-virtual {p0, p1}, Lu/e;->setHeight(I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v1}, Lu/e;->setWidth(I)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_1
    invoke-virtual {p0, v1}, Lu/e;->setX(I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, p1}, Lu/e;->setY(I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lu/e;->getParent()Lu/e;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p1}, Lu/e;->getWidth()I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    invoke-virtual {p0, p1}, Lu/e;->setWidth(I)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, v1}, Lu/e;->setHeight(I)V

    .line 59
    .line 60
    .line 61
    return-void
.end method
