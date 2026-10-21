.class public abstract Landroidx/constraintlayout/core/widgets/analyzer/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv/f;


# instance fields
.field public a:I

.field public b:Lu/e;

.field public c:Lv/k;

.field public d:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

.field public final e:Landroidx/constraintlayout/core/widgets/analyzer/b;

.field public f:I

.field public g:Z

.field public final h:Landroidx/constraintlayout/core/widgets/analyzer/a;

.field public final i:Landroidx/constraintlayout/core/widgets/analyzer/a;

.field public j:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun$RunType;


# direct methods
.method public constructor <init>(Lu/e;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/constraintlayout/core/widgets/analyzer/b;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Landroidx/constraintlayout/core/widgets/analyzer/b;-><init>(Landroidx/constraintlayout/core/widgets/analyzer/f;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->f:I

    .line 13
    .line 14
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->g:Z

    .line 15
    .line 16
    new-instance v0, Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 17
    .line 18
    invoke-direct {v0, p0}, Landroidx/constraintlayout/core/widgets/analyzer/a;-><init>(Landroidx/constraintlayout/core/widgets/analyzer/f;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 22
    .line 23
    new-instance v0, Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 24
    .line 25
    invoke-direct {v0, p0}, Landroidx/constraintlayout/core/widgets/analyzer/a;-><init>(Landroidx/constraintlayout/core/widgets/analyzer/f;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 29
    .line 30
    sget-object v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun$RunType;->b:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun$RunType;

    .line 31
    .line 32
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->j:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun$RunType;

    .line 33
    .line 34
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public final addTarget(Landroidx/constraintlayout/core/widgets/analyzer/a;Landroidx/constraintlayout/core/widgets/analyzer/a;I)V
    .locals 1

    .line 1
    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/analyzer/a;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2
    iput p3, p1, Landroidx/constraintlayout/core/widgets/analyzer/a;->f:I

    .line 3
    iget-object p2, p2, Landroidx/constraintlayout/core/widgets/analyzer/a;->k:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final addTarget(Landroidx/constraintlayout/core/widgets/analyzer/a;Landroidx/constraintlayout/core/widgets/analyzer/a;ILandroidx/constraintlayout/core/widgets/analyzer/b;)V
    .locals 2

    .line 4
    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/analyzer/a;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/analyzer/a;->l:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    iput p3, p1, Landroidx/constraintlayout/core/widgets/analyzer/a;->h:I

    .line 7
    iput-object p4, p1, Landroidx/constraintlayout/core/widgets/analyzer/a;->i:Landroidx/constraintlayout/core/widgets/analyzer/b;

    .line 8
    iget-object p2, p2, Landroidx/constraintlayout/core/widgets/analyzer/a;->k:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object p2, p4, Landroidx/constraintlayout/core/widgets/analyzer/a;->k:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public abstract applyToWidget()V
.end method

.method public abstract b()V
.end method

.method public abstract c()Z
.end method

.method public final getLimitedDimension(II)I
    .locals 1

    .line 1
    if-nez p2, :cond_1

    .line 2
    .line 3
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 4
    .line 5
    iget v0, p2, Lu/e;->v:I

    .line 6
    .line 7
    iget p2, p2, Lu/e;->u:I

    .line 8
    .line 9
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    if-lez v0, :cond_0

    .line 14
    .line 15
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    :cond_0
    if-eq p2, p1, :cond_3

    .line 20
    .line 21
    return p2

    .line 22
    :cond_1
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 23
    .line 24
    iget v0, p2, Lu/e;->y:I

    .line 25
    .line 26
    iget p2, p2, Lu/e;->x:I

    .line 27
    .line 28
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    if-lez v0, :cond_2

    .line 33
    .line 34
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    :cond_2
    if-eq p2, p1, :cond_3

    .line 39
    .line 40
    return p2

    .line 41
    :cond_3
    return p1
.end method

.method public final getTarget(Lu/d;)Landroidx/constraintlayout/core/widgets/analyzer/a;
    .locals 3

    .line 1
    iget-object p1, p1, Lu/d;->f:Lu/d;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v1, p1, Lu/d;->d:Lu/e;

    .line 3
    iget-object p1, p1, Lu/d;->e:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_5

    const/4 v2, 0x2

    if-eq p1, v2, :cond_4

    const/4 v2, 0x3

    if-eq p1, v2, :cond_3

    const/4 v2, 0x4

    if-eq p1, v2, :cond_2

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1

    return-object v0

    .line 5
    :cond_1
    iget-object p1, v1, Lu/e;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    .line 6
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/e;->k:Landroidx/constraintlayout/core/widgets/analyzer/a;

    return-object p1

    .line 7
    :cond_2
    iget-object p1, v1, Lu/e;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    .line 8
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/f;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    return-object p1

    .line 9
    :cond_3
    iget-object p1, v1, Lu/e;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 10
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/f;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    return-object p1

    .line 11
    :cond_4
    iget-object p1, v1, Lu/e;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    .line 12
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/f;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    return-object p1

    .line 13
    :cond_5
    iget-object p1, v1, Lu/e;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 14
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/f;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    return-object p1
.end method

.method public final getTarget(Lu/d;I)Landroidx/constraintlayout/core/widgets/analyzer/a;
    .locals 2

    .line 15
    iget-object p1, p1, Lu/d;->f:Lu/d;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 16
    :cond_0
    iget-object v1, p1, Lu/d;->d:Lu/e;

    if-nez p2, :cond_1

    .line 17
    iget-object p2, v1, Lu/e;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    goto :goto_0

    :cond_1
    iget-object p2, v1, Lu/e;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    .line 18
    :goto_0
    iget-object p1, p1, Lu/d;->e:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 19
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_2

    return-object v0

    .line 20
    :cond_2
    iget-object p1, p2, Landroidx/constraintlayout/core/widgets/analyzer/f;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    return-object p1

    .line 21
    :cond_3
    iget-object p1, p2, Landroidx/constraintlayout/core/widgets/analyzer/f;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    return-object p1
.end method

.method public getWrapDimension()J
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    .line 2
    .line 3
    iget-boolean v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    .line 8
    .line 9
    int-to-long v0, v0

    .line 10
    return-wide v0

    .line 11
    :cond_0
    const-wide/16 v0, 0x0

    .line 12
    .line 13
    return-wide v0
.end method

.method public isResolved()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->g:Z

    .line 2
    .line 3
    return v0
.end method

.method public abstract update(Lv/f;)V
.end method

.method public updateRunCenter(Lv/f;Lu/d;Lu/d;I)V
    .locals 11

    .line 1
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/core/widgets/analyzer/f;->getTarget(Lu/d;)Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p3}, Landroidx/constraintlayout/core/widgets/analyzer/f;->getTarget(Lu/d;)Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-boolean v1, p1, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    .line 10
    .line 11
    if-eqz v1, :cond_f

    .line 12
    .line 13
    iget-boolean v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    goto/16 :goto_5

    .line 18
    .line 19
    :cond_0
    iget v1, p1, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    .line 20
    .line 21
    invoke-virtual {p2}, Lu/d;->getMargin()I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    add-int/2addr p2, v1

    .line 26
    iget v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    .line 27
    .line 28
    invoke-virtual {p3}, Lu/d;->getMargin()I

    .line 29
    .line 30
    .line 31
    move-result p3

    .line 32
    sub-int/2addr v1, p3

    .line 33
    sub-int p3, v1, p2

    .line 34
    .line 35
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    .line 36
    .line 37
    iget-boolean v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    .line 38
    .line 39
    const/high16 v4, 0x3f000000    # 0.5f

    .line 40
    .line 41
    if-nez v3, :cond_a

    .line 42
    .line 43
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 44
    .line 45
    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->f:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 46
    .line 47
    if-ne v3, v5, :cond_a

    .line 48
    .line 49
    iget v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->a:I

    .line 50
    .line 51
    if-eqz v3, :cond_9

    .line 52
    .line 53
    const/4 v6, 0x1

    .line 54
    if-eq v3, v6, :cond_8

    .line 55
    .line 56
    const/4 v7, 0x2

    .line 57
    if-eq v3, v7, :cond_5

    .line 58
    .line 59
    const/4 v7, 0x3

    .line 60
    if-eq v3, v7, :cond_1

    .line 61
    .line 62
    goto/16 :goto_3

    .line 63
    .line 64
    :cond_1
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 65
    .line 66
    iget-object v8, v3, Lu/e;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 67
    .line 68
    iget-object v9, v8, Landroidx/constraintlayout/core/widgets/analyzer/f;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 69
    .line 70
    if-ne v9, v5, :cond_2

    .line 71
    .line 72
    iget v9, v8, Landroidx/constraintlayout/core/widgets/analyzer/f;->a:I

    .line 73
    .line 74
    if-ne v9, v7, :cond_2

    .line 75
    .line 76
    iget-object v9, v3, Lu/e;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    .line 77
    .line 78
    iget-object v10, v9, Landroidx/constraintlayout/core/widgets/analyzer/f;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 79
    .line 80
    if-ne v10, v5, :cond_2

    .line 81
    .line 82
    iget v5, v9, Landroidx/constraintlayout/core/widgets/analyzer/f;->a:I

    .line 83
    .line 84
    if-ne v5, v7, :cond_2

    .line 85
    .line 86
    goto :goto_3

    .line 87
    :cond_2
    if-nez p4, :cond_3

    .line 88
    .line 89
    iget-object v8, v3, Lu/e;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    .line 90
    .line 91
    :cond_3
    iget-object v5, v8, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    .line 92
    .line 93
    iget-boolean v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    .line 94
    .line 95
    if-eqz v5, :cond_a

    .line 96
    .line 97
    invoke-virtual {v3}, Lu/e;->getDimensionRatio()F

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    iget-object v5, v8, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    .line 102
    .line 103
    if-ne p4, v6, :cond_4

    .line 104
    .line 105
    iget v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    .line 106
    .line 107
    int-to-float v5, v5

    .line 108
    div-float/2addr v5, v3

    .line 109
    add-float/2addr v5, v4

    .line 110
    float-to-int v3, v5

    .line 111
    goto :goto_0

    .line 112
    :cond_4
    iget v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    .line 113
    .line 114
    int-to-float v5, v5

    .line 115
    mul-float/2addr v3, v5

    .line 116
    add-float/2addr v3, v4

    .line 117
    float-to-int v3, v3

    .line 118
    :goto_0
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/widgets/analyzer/b;->resolve(I)V

    .line 119
    .line 120
    .line 121
    goto :goto_3

    .line 122
    :cond_5
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 123
    .line 124
    invoke-virtual {v3}, Lu/e;->getParent()Lu/e;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    if-eqz v3, :cond_a

    .line 129
    .line 130
    if-nez p4, :cond_6

    .line 131
    .line 132
    iget-object v3, v3, Lu/e;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_6
    iget-object v3, v3, Lu/e;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    .line 136
    .line 137
    :goto_1
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    .line 138
    .line 139
    iget-boolean v5, v3, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    .line 140
    .line 141
    if-eqz v5, :cond_a

    .line 142
    .line 143
    iget-object v5, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 144
    .line 145
    if-nez p4, :cond_7

    .line 146
    .line 147
    iget v5, v5, Lu/e;->w:F

    .line 148
    .line 149
    goto :goto_2

    .line 150
    :cond_7
    iget v5, v5, Lu/e;->z:F

    .line 151
    .line 152
    :goto_2
    iget v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    .line 153
    .line 154
    int-to-float v3, v3

    .line 155
    mul-float/2addr v3, v5

    .line 156
    add-float/2addr v3, v4

    .line 157
    float-to-int v3, v3

    .line 158
    invoke-virtual {p0, v3, p4}, Landroidx/constraintlayout/core/widgets/analyzer/f;->getLimitedDimension(II)I

    .line 159
    .line 160
    .line 161
    move-result v3

    .line 162
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/widgets/analyzer/b;->resolve(I)V

    .line 163
    .line 164
    .line 165
    goto :goto_3

    .line 166
    :cond_8
    iget v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/b;->m:I

    .line 167
    .line 168
    invoke-virtual {p0, v3, p4}, Landroidx/constraintlayout/core/widgets/analyzer/f;->getLimitedDimension(II)I

    .line 169
    .line 170
    .line 171
    move-result v3

    .line 172
    invoke-static {v3, p3}, Ljava/lang/Math;->min(II)I

    .line 173
    .line 174
    .line 175
    move-result v3

    .line 176
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/widgets/analyzer/b;->resolve(I)V

    .line 177
    .line 178
    .line 179
    goto :goto_3

    .line 180
    :cond_9
    invoke-virtual {p0, p3, p4}, Landroidx/constraintlayout/core/widgets/analyzer/f;->getLimitedDimension(II)I

    .line 181
    .line 182
    .line 183
    move-result v3

    .line 184
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/widgets/analyzer/b;->resolve(I)V

    .line 185
    .line 186
    .line 187
    :cond_a
    :goto_3
    iget-boolean v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    .line 188
    .line 189
    if-nez v3, :cond_b

    .line 190
    .line 191
    goto :goto_5

    .line 192
    :cond_b
    iget v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    .line 193
    .line 194
    iget-object v5, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 195
    .line 196
    iget-object v6, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 197
    .line 198
    if-ne v3, p3, :cond_c

    .line 199
    .line 200
    invoke-virtual {v6, p2}, Landroidx/constraintlayout/core/widgets/analyzer/a;->resolve(I)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v5, v1}, Landroidx/constraintlayout/core/widgets/analyzer/a;->resolve(I)V

    .line 204
    .line 205
    .line 206
    return-void

    .line 207
    :cond_c
    iget-object p3, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 208
    .line 209
    if-nez p4, :cond_d

    .line 210
    .line 211
    invoke-virtual {p3}, Lu/e;->getHorizontalBiasPercent()F

    .line 212
    .line 213
    .line 214
    move-result p3

    .line 215
    goto :goto_4

    .line 216
    :cond_d
    invoke-virtual {p3}, Lu/e;->getVerticalBiasPercent()F

    .line 217
    .line 218
    .line 219
    move-result p3

    .line 220
    :goto_4
    if-ne p1, v0, :cond_e

    .line 221
    .line 222
    iget p2, p1, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    .line 223
    .line 224
    iget v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    .line 225
    .line 226
    move p3, v4

    .line 227
    :cond_e
    sub-int/2addr v1, p2

    .line 228
    iget p1, v2, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    .line 229
    .line 230
    sub-int/2addr v1, p1

    .line 231
    int-to-float p1, p2

    .line 232
    add-float/2addr p1, v4

    .line 233
    int-to-float p2, v1

    .line 234
    mul-float/2addr p2, p3

    .line 235
    add-float/2addr p2, p1

    .line 236
    float-to-int p1, p2

    .line 237
    invoke-virtual {v6, p1}, Landroidx/constraintlayout/core/widgets/analyzer/a;->resolve(I)V

    .line 238
    .line 239
    .line 240
    iget p1, v6, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    .line 241
    .line 242
    iget p2, v2, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    .line 243
    .line 244
    add-int/2addr p1, p2

    .line 245
    invoke-virtual {v5, p1}, Landroidx/constraintlayout/core/widgets/analyzer/a;->resolve(I)V

    .line 246
    .line 247
    .line 248
    :cond_f
    :goto_5
    return-void
.end method

.method public updateRunEnd(Lv/f;)V
    .locals 0

    .line 1
    return-void
.end method

.method public updateRunStart(Lv/f;)V
    .locals 0

    .line 1
    return-void
.end method
