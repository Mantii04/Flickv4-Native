.class public final Lv/e;
.super Landroidx/constraintlayout/core/widgets/analyzer/f;
.source "SourceFile"


# instance fields
.field public final k:Ljava/util/ArrayList;

.field public l:I


# direct methods
.method public constructor <init>(Lu/e;I)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Landroidx/constraintlayout/core/widgets/analyzer/f;-><init>(Lu/e;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lv/e;->k:Ljava/util/ArrayList;

    .line 10
    .line 11
    iput p2, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->f:I

    .line 12
    .line 13
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 14
    .line 15
    invoke-virtual {p1, p2}, Lu/e;->getPreviousChainMember(I)Lu/e;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    :goto_0
    move-object v3, p2

    .line 20
    move-object p2, p1

    .line 21
    move-object p1, v3

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    iget p2, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->f:I

    .line 25
    .line 26
    invoke-virtual {p1, p2}, Lu/e;->getPreviousChainMember(I)Lu/e;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iput-object p2, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 32
    .line 33
    iget p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->f:I

    .line 34
    .line 35
    invoke-virtual {p2, p1}, Lu/e;->getRun(I)Landroidx/constraintlayout/core/widgets/analyzer/f;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iget-object v0, p0, Lv/e;->k:Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    iget p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->f:I

    .line 45
    .line 46
    invoke-virtual {p2, p1}, Lu/e;->getNextChainMember(I)Lu/e;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    :goto_1
    if-eqz p1, :cond_1

    .line 51
    .line 52
    iget p2, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->f:I

    .line 53
    .line 54
    invoke-virtual {p1, p2}, Lu/e;->getRun(I)Landroidx/constraintlayout/core/widgets/analyzer/f;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    iget p2, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->f:I

    .line 62
    .line 63
    invoke-virtual {p1, p2}, Lu/e;->getNextChainMember(I)Lu/e;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    goto :goto_1

    .line 68
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    :cond_2
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 73
    .line 74
    .line 75
    move-result p2

    .line 76
    const/4 v1, 0x1

    .line 77
    if-eqz p2, :cond_4

    .line 78
    .line 79
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    check-cast p2, Landroidx/constraintlayout/core/widgets/analyzer/f;

    .line 84
    .line 85
    iget v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->f:I

    .line 86
    .line 87
    if-nez v2, :cond_3

    .line 88
    .line 89
    iget-object p2, p2, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 90
    .line 91
    iput-object p0, p2, Lu/e;->b:Lv/e;

    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_3
    if-ne v2, v1, :cond_2

    .line 95
    .line 96
    iget-object p2, p2, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 97
    .line 98
    iput-object p0, p2, Lu/e;->c:Lv/e;

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_4
    iget p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->f:I

    .line 102
    .line 103
    if-nez p1, :cond_5

    .line 104
    .line 105
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 106
    .line 107
    invoke-virtual {p1}, Lu/e;->getParent()Lu/e;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    check-cast p1, Lu/f;

    .line 112
    .line 113
    invoke-virtual {p1}, Lu/f;->isRtl()Z

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    if-eqz p1, :cond_5

    .line 118
    .line 119
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    if-le p1, v1, :cond_5

    .line 124
    .line 125
    invoke-static {v1, v0}, Lb/c;->h(ILjava/util/ArrayList;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    check-cast p1, Landroidx/constraintlayout/core/widgets/analyzer/f;

    .line 130
    .line 131
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 132
    .line 133
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 134
    .line 135
    :cond_5
    iget p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->f:I

    .line 136
    .line 137
    if-nez p1, :cond_6

    .line 138
    .line 139
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 140
    .line 141
    invoke-virtual {p1}, Lu/e;->getHorizontalChainStyle()I

    .line 142
    .line 143
    .line 144
    move-result p1

    .line 145
    goto :goto_3

    .line 146
    :cond_6
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 147
    .line 148
    invoke-virtual {p1}, Lu/e;->getVerticalChainStyle()I

    .line 149
    .line 150
    .line 151
    move-result p1

    .line 152
    :goto_3
    iput p1, p0, Lv/e;->l:I

    .line 153
    .line 154
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    .line 1
    iget-object v0, p0, Lv/e;->k:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Landroidx/constraintlayout/core/widgets/analyzer/f;

    .line 18
    .line 19
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/analyzer/f;->a()V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    const/4 v2, 0x1

    .line 28
    if-ge v1, v2, :cond_1

    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    const/4 v3, 0x0

    .line 32
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    check-cast v4, Landroidx/constraintlayout/core/widgets/analyzer/f;

    .line 37
    .line 38
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 39
    .line 40
    sub-int/2addr v1, v2

    .line 41
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Landroidx/constraintlayout/core/widgets/analyzer/f;

    .line 46
    .line 47
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 48
    .line 49
    iget v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->f:I

    .line 50
    .line 51
    iget-object v5, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 52
    .line 53
    iget-object v6, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 54
    .line 55
    if-nez v1, :cond_5

    .line 56
    .line 57
    iget-object v1, v4, Lu/e;->I:Lu/d;

    .line 58
    .line 59
    iget-object v0, v0, Lu/e;->K:Lu/d;

    .line 60
    .line 61
    invoke-virtual {p0, v1, v3}, Landroidx/constraintlayout/core/widgets/analyzer/f;->getTarget(Lu/d;I)Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-virtual {v1}, Lu/d;->getMargin()I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    invoke-virtual {p0}, Lv/e;->d()Lu/e;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    if-eqz v4, :cond_2

    .line 74
    .line 75
    iget-object v1, v4, Lu/e;->I:Lu/d;

    .line 76
    .line 77
    invoke-virtual {v1}, Lu/d;->getMargin()I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    :cond_2
    if-eqz v2, :cond_3

    .line 82
    .line 83
    invoke-virtual {p0, v6, v2, v1}, Landroidx/constraintlayout/core/widgets/analyzer/f;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/a;Landroidx/constraintlayout/core/widgets/analyzer/a;I)V

    .line 84
    .line 85
    .line 86
    :cond_3
    invoke-virtual {p0, v0, v3}, Landroidx/constraintlayout/core/widgets/analyzer/f;->getTarget(Lu/d;I)Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {v0}, Lu/d;->getMargin()I

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    invoke-virtual {p0}, Lv/e;->e()Lu/e;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    if-eqz v2, :cond_4

    .line 99
    .line 100
    iget-object v0, v2, Lu/e;->K:Lu/d;

    .line 101
    .line 102
    invoke-virtual {v0}, Lu/d;->getMargin()I

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    :cond_4
    if-eqz v1, :cond_9

    .line 107
    .line 108
    neg-int v0, v0

    .line 109
    invoke-virtual {p0, v5, v1, v0}, Landroidx/constraintlayout/core/widgets/analyzer/f;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/a;Landroidx/constraintlayout/core/widgets/analyzer/a;I)V

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_5
    iget-object v1, v4, Lu/e;->J:Lu/d;

    .line 114
    .line 115
    iget-object v0, v0, Lu/e;->L:Lu/d;

    .line 116
    .line 117
    invoke-virtual {p0, v1, v2}, Landroidx/constraintlayout/core/widgets/analyzer/f;->getTarget(Lu/d;I)Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    invoke-virtual {v1}, Lu/d;->getMargin()I

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    invoke-virtual {p0}, Lv/e;->d()Lu/e;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    if-eqz v4, :cond_6

    .line 130
    .line 131
    iget-object v1, v4, Lu/e;->J:Lu/d;

    .line 132
    .line 133
    invoke-virtual {v1}, Lu/d;->getMargin()I

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    :cond_6
    if-eqz v3, :cond_7

    .line 138
    .line 139
    invoke-virtual {p0, v6, v3, v1}, Landroidx/constraintlayout/core/widgets/analyzer/f;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/a;Landroidx/constraintlayout/core/widgets/analyzer/a;I)V

    .line 140
    .line 141
    .line 142
    :cond_7
    invoke-virtual {p0, v0, v2}, Landroidx/constraintlayout/core/widgets/analyzer/f;->getTarget(Lu/d;I)Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    invoke-virtual {v0}, Lu/d;->getMargin()I

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    invoke-virtual {p0}, Lv/e;->e()Lu/e;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    if-eqz v2, :cond_8

    .line 155
    .line 156
    iget-object v0, v2, Lu/e;->L:Lu/d;

    .line 157
    .line 158
    invoke-virtual {v0}, Lu/d;->getMargin()I

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    :cond_8
    if-eqz v1, :cond_9

    .line 163
    .line 164
    neg-int v0, v0

    .line 165
    invoke-virtual {p0, v5, v1, v0}, Landroidx/constraintlayout/core/widgets/analyzer/f;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/a;Landroidx/constraintlayout/core/widgets/analyzer/a;I)V

    .line 166
    .line 167
    .line 168
    :cond_9
    :goto_1
    iput-object p0, v6, Landroidx/constraintlayout/core/widgets/analyzer/a;->a:Landroidx/constraintlayout/core/widgets/analyzer/f;

    .line 169
    .line 170
    iput-object p0, v5, Landroidx/constraintlayout/core/widgets/analyzer/a;->a:Landroidx/constraintlayout/core/widgets/analyzer/f;

    .line 171
    .line 172
    return-void
.end method

.method public applyToWidget()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lv/e;->k:Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    if-ge v0, v2, :cond_0

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Landroidx/constraintlayout/core/widgets/analyzer/f;

    .line 15
    .line 16
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/analyzer/f;->applyToWidget()V

    .line 17
    .line 18
    .line 19
    add-int/lit8 v0, v0, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->c:Lv/k;

    .line 3
    .line 4
    iget-object v0, p0, Lv/e;->k:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Landroidx/constraintlayout/core/widgets/analyzer/f;

    .line 21
    .line 22
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/analyzer/f;->b()V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    return-void
.end method

.method public final c()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lv/e;->k:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    move v3, v2

    .line 9
    :goto_0
    if-ge v3, v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    check-cast v4, Landroidx/constraintlayout/core/widgets/analyzer/f;

    .line 16
    .line 17
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/analyzer/f;->c()Z

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    if-nez v4, :cond_0

    .line 22
    .line 23
    return v2

    .line 24
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 v0, 0x1

    .line 28
    return v0
.end method

.method public final d()Lu/e;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lv/e;->k:Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    if-ge v0, v2, :cond_1

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Landroidx/constraintlayout/core/widgets/analyzer/f;

    .line 15
    .line 16
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 17
    .line 18
    invoke-virtual {v2}, Lu/e;->getVisibility()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    const/16 v3, 0x8

    .line 23
    .line 24
    if-eq v2, v3, :cond_0

    .line 25
    .line 26
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 27
    .line 28
    return-object v0

    .line 29
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 v0, 0x0

    .line 33
    return-object v0
.end method

.method public final e()Lu/e;
    .locals 5

    .line 1
    iget-object v0, p0, Lv/e;->k:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    add-int/lit8 v1, v1, -0x1

    .line 8
    .line 9
    :goto_0
    if-ltz v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    check-cast v2, Landroidx/constraintlayout/core/widgets/analyzer/f;

    .line 16
    .line 17
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 18
    .line 19
    invoke-virtual {v3}, Lu/e;->getVisibility()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    const/16 v4, 0x8

    .line 24
    .line 25
    if-eq v3, v4, :cond_0

    .line 26
    .line 27
    iget-object v0, v2, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 28
    .line 29
    return-object v0

    .line 30
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 v0, 0x0

    .line 34
    return-object v0
.end method

.method public getWrapDimension()J
    .locals 8

    .line 1
    iget-object v0, p0, Lv/e;->k:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    :goto_0
    if-ge v4, v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v5

    .line 16
    check-cast v5, Landroidx/constraintlayout/core/widgets/analyzer/f;

    .line 17
    .line 18
    iget-object v6, v5, Landroidx/constraintlayout/core/widgets/analyzer/f;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 19
    .line 20
    iget v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/a;->f:I

    .line 21
    .line 22
    int-to-long v6, v6

    .line 23
    add-long/2addr v2, v6

    .line 24
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/analyzer/f;->getWrapDimension()J

    .line 25
    .line 26
    .line 27
    move-result-wide v6

    .line 28
    add-long/2addr v6, v2

    .line 29
    iget-object v2, v5, Landroidx/constraintlayout/core/widgets/analyzer/f;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 30
    .line 31
    iget v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/a;->f:I

    .line 32
    .line 33
    int-to-long v2, v2

    .line 34
    add-long/2addr v2, v6

    .line 35
    add-int/lit8 v4, v4, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    return-wide v2
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "ChainRun "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->f:I

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    const-string v1, "horizontal : "

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const-string v1, "vertical : "

    .line 16
    .line 17
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lv/e;->k:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Landroidx/constraintlayout/core/widgets/analyzer/f;

    .line 37
    .line 38
    const-string v3, "<"

    .line 39
    .line 40
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v2, "> "

    .line 47
    .line 48
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    return-object v0
.end method

.method public update(Lv/f;)V
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 4
    .line 5
    iget-boolean v2, v1, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    .line 6
    .line 7
    if-eqz v2, :cond_57

    .line 8
    .line 9
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 10
    .line 11
    iget-boolean v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    .line 12
    .line 13
    if-nez v3, :cond_0

    .line 14
    .line 15
    goto/16 :goto_34

    .line 16
    .line 17
    :cond_0
    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 18
    .line 19
    invoke-virtual {v3}, Lu/e;->getParent()Lu/e;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    instance-of v4, v3, Lu/f;

    .line 24
    .line 25
    if-eqz v4, :cond_1

    .line 26
    .line 27
    check-cast v3, Lu/f;

    .line 28
    .line 29
    invoke-virtual {v3}, Lu/f;->isRtl()Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/4 v3, 0x0

    .line 35
    :goto_0
    iget v4, v2, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    .line 36
    .line 37
    iget v6, v1, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    .line 38
    .line 39
    sub-int/2addr v4, v6

    .line 40
    iget-object v6, v0, Lv/e;->k:Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 43
    .line 44
    .line 45
    move-result v7

    .line 46
    const/4 v8, 0x0

    .line 47
    :goto_1
    const/4 v9, -0x1

    .line 48
    const/16 v10, 0x8

    .line 49
    .line 50
    if-ge v8, v7, :cond_2

    .line 51
    .line 52
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v11

    .line 56
    check-cast v11, Landroidx/constraintlayout/core/widgets/analyzer/f;

    .line 57
    .line 58
    iget-object v11, v11, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 59
    .line 60
    invoke-virtual {v11}, Lu/e;->getVisibility()I

    .line 61
    .line 62
    .line 63
    move-result v11

    .line 64
    if-ne v11, v10, :cond_3

    .line 65
    .line 66
    add-int/lit8 v8, v8, 0x1

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_2
    move v8, v9

    .line 70
    :cond_3
    add-int/lit8 v11, v7, -0x1

    .line 71
    .line 72
    move v12, v11

    .line 73
    :goto_2
    if-ltz v12, :cond_5

    .line 74
    .line 75
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v13

    .line 79
    check-cast v13, Landroidx/constraintlayout/core/widgets/analyzer/f;

    .line 80
    .line 81
    iget-object v13, v13, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 82
    .line 83
    invoke-virtual {v13}, Lu/e;->getVisibility()I

    .line 84
    .line 85
    .line 86
    move-result v13

    .line 87
    if-ne v13, v10, :cond_4

    .line 88
    .line 89
    add-int/lit8 v12, v12, -0x1

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_4
    move v9, v12

    .line 93
    :cond_5
    const/4 v12, 0x0

    .line 94
    :goto_3
    sget-object v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->f:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 95
    .line 96
    const/16 p1, 0x0

    .line 97
    .line 98
    const/4 v15, 0x2

    .line 99
    if-ge v12, v15, :cond_14

    .line 100
    .line 101
    move/from16 v20, p1

    .line 102
    .line 103
    const/4 v5, 0x0

    .line 104
    const/4 v15, 0x0

    .line 105
    const/16 v18, 0x0

    .line 106
    .line 107
    const/16 v19, 0x0

    .line 108
    .line 109
    :goto_4
    if-ge v5, v7, :cond_11

    .line 110
    .line 111
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v21

    .line 115
    move-object/from16 v14, v21

    .line 116
    .line 117
    check-cast v14, Landroidx/constraintlayout/core/widgets/analyzer/f;

    .line 118
    .line 119
    move/from16 v21, v3

    .line 120
    .line 121
    iget-object v3, v14, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 122
    .line 123
    invoke-virtual {v3}, Lu/e;->getVisibility()I

    .line 124
    .line 125
    .line 126
    move-result v3

    .line 127
    if-ne v3, v10, :cond_6

    .line 128
    .line 129
    move/from16 v25, v12

    .line 130
    .line 131
    goto/16 :goto_a

    .line 132
    .line 133
    :cond_6
    add-int/lit8 v19, v19, 0x1

    .line 134
    .line 135
    if-lez v5, :cond_7

    .line 136
    .line 137
    if-lt v5, v8, :cond_7

    .line 138
    .line 139
    iget-object v3, v14, Landroidx/constraintlayout/core/widgets/analyzer/f;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 140
    .line 141
    iget v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/a;->f:I

    .line 142
    .line 143
    add-int/2addr v15, v3

    .line 144
    :cond_7
    iget-object v3, v14, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    .line 145
    .line 146
    iget v10, v3, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    .line 147
    .line 148
    move/from16 v23, v10

    .line 149
    .line 150
    iget-object v10, v14, Landroidx/constraintlayout/core/widgets/analyzer/f;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 151
    .line 152
    if-eq v10, v13, :cond_8

    .line 153
    .line 154
    const/4 v10, 0x1

    .line 155
    goto :goto_5

    .line 156
    :cond_8
    const/4 v10, 0x0

    .line 157
    :goto_5
    if-eqz v10, :cond_b

    .line 158
    .line 159
    iget v3, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->f:I

    .line 160
    .line 161
    move/from16 v24, v10

    .line 162
    .line 163
    if-nez v3, :cond_9

    .line 164
    .line 165
    iget-object v10, v14, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 166
    .line 167
    iget-object v10, v10, Lu/e;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 168
    .line 169
    iget-object v10, v10, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    .line 170
    .line 171
    iget-boolean v10, v10, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    .line 172
    .line 173
    if-nez v10, :cond_9

    .line 174
    .line 175
    goto/16 :goto_34

    .line 176
    .line 177
    :cond_9
    const/4 v10, 0x1

    .line 178
    if-ne v3, v10, :cond_a

    .line 179
    .line 180
    iget-object v3, v14, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 181
    .line 182
    iget-object v3, v3, Lu/e;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    .line 183
    .line 184
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    .line 185
    .line 186
    iget-boolean v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    .line 187
    .line 188
    if-nez v3, :cond_a

    .line 189
    .line 190
    goto/16 :goto_34

    .line 191
    .line 192
    :cond_a
    move/from16 v25, v12

    .line 193
    .line 194
    goto :goto_7

    .line 195
    :cond_b
    move/from16 v24, v10

    .line 196
    .line 197
    move/from16 v25, v12

    .line 198
    .line 199
    const/4 v10, 0x1

    .line 200
    iget v12, v14, Landroidx/constraintlayout/core/widgets/analyzer/f;->a:I

    .line 201
    .line 202
    if-ne v12, v10, :cond_c

    .line 203
    .line 204
    if-nez v25, :cond_c

    .line 205
    .line 206
    iget v10, v3, Landroidx/constraintlayout/core/widgets/analyzer/b;->m:I

    .line 207
    .line 208
    add-int/lit8 v18, v18, 0x1

    .line 209
    .line 210
    :goto_6
    const/16 v24, 0x1

    .line 211
    .line 212
    goto :goto_8

    .line 213
    :cond_c
    iget-boolean v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    .line 214
    .line 215
    if-eqz v3, :cond_d

    .line 216
    .line 217
    move/from16 v10, v23

    .line 218
    .line 219
    goto :goto_6

    .line 220
    :cond_d
    :goto_7
    move/from16 v10, v23

    .line 221
    .line 222
    :goto_8
    if-nez v24, :cond_e

    .line 223
    .line 224
    add-int/lit8 v18, v18, 0x1

    .line 225
    .line 226
    iget-object v3, v14, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 227
    .line 228
    iget-object v3, v3, Lu/e;->l0:[F

    .line 229
    .line 230
    iget v10, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->f:I

    .line 231
    .line 232
    aget v3, v3, v10

    .line 233
    .line 234
    cmpl-float v10, v3, p1

    .line 235
    .line 236
    if-ltz v10, :cond_f

    .line 237
    .line 238
    add-float v20, v20, v3

    .line 239
    .line 240
    goto :goto_9

    .line 241
    :cond_e
    add-int/2addr v15, v10

    .line 242
    :cond_f
    :goto_9
    if-ge v5, v11, :cond_10

    .line 243
    .line 244
    if-ge v5, v9, :cond_10

    .line 245
    .line 246
    iget-object v3, v14, Landroidx/constraintlayout/core/widgets/analyzer/f;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 247
    .line 248
    iget v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/a;->f:I

    .line 249
    .line 250
    neg-int v3, v3

    .line 251
    add-int/2addr v15, v3

    .line 252
    :cond_10
    :goto_a
    add-int/lit8 v5, v5, 0x1

    .line 253
    .line 254
    move/from16 v3, v21

    .line 255
    .line 256
    move/from16 v12, v25

    .line 257
    .line 258
    const/16 v10, 0x8

    .line 259
    .line 260
    goto/16 :goto_4

    .line 261
    .line 262
    :cond_11
    move/from16 v21, v3

    .line 263
    .line 264
    move/from16 v25, v12

    .line 265
    .line 266
    if-lt v15, v4, :cond_13

    .line 267
    .line 268
    if-nez v18, :cond_12

    .line 269
    .line 270
    goto :goto_b

    .line 271
    :cond_12
    add-int/lit8 v12, v25, 0x1

    .line 272
    .line 273
    move/from16 v3, v21

    .line 274
    .line 275
    const/16 v10, 0x8

    .line 276
    .line 277
    goto/16 :goto_3

    .line 278
    .line 279
    :cond_13
    :goto_b
    move/from16 v3, v18

    .line 280
    .line 281
    move/from16 v5, v19

    .line 282
    .line 283
    goto :goto_c

    .line 284
    :cond_14
    move/from16 v21, v3

    .line 285
    .line 286
    move/from16 v20, p1

    .line 287
    .line 288
    const/4 v3, 0x0

    .line 289
    const/4 v5, 0x0

    .line 290
    const/4 v15, 0x0

    .line 291
    :goto_c
    iget v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    .line 292
    .line 293
    if-eqz v21, :cond_15

    .line 294
    .line 295
    iget v1, v2, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    .line 296
    .line 297
    :cond_15
    const/high16 v2, 0x3f000000    # 0.5f

    .line 298
    .line 299
    if-le v15, v4, :cond_17

    .line 300
    .line 301
    const/high16 v10, 0x40000000    # 2.0f

    .line 302
    .line 303
    if-eqz v21, :cond_16

    .line 304
    .line 305
    sub-int v12, v15, v4

    .line 306
    .line 307
    int-to-float v12, v12

    .line 308
    div-float/2addr v12, v10

    .line 309
    add-float/2addr v12, v2

    .line 310
    float-to-int v10, v12

    .line 311
    add-int/2addr v1, v10

    .line 312
    goto :goto_d

    .line 313
    :cond_16
    sub-int v12, v15, v4

    .line 314
    .line 315
    int-to-float v12, v12

    .line 316
    div-float/2addr v12, v10

    .line 317
    add-float/2addr v12, v2

    .line 318
    float-to-int v10, v12

    .line 319
    sub-int/2addr v1, v10

    .line 320
    :cond_17
    :goto_d
    if-lez v3, :cond_26

    .line 321
    .line 322
    sub-int v10, v4, v15

    .line 323
    .line 324
    int-to-float v10, v10

    .line 325
    int-to-float v12, v3

    .line 326
    div-float v12, v10, v12

    .line 327
    .line 328
    add-float/2addr v12, v2

    .line 329
    float-to-int v12, v12

    .line 330
    const/4 v14, 0x0

    .line 331
    const/16 v18, 0x0

    .line 332
    .line 333
    :goto_e
    if-ge v14, v7, :cond_1f

    .line 334
    .line 335
    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 336
    .line 337
    .line 338
    move-result-object v19

    .line 339
    move/from16 v23, v2

    .line 340
    .line 341
    move-object/from16 v2, v19

    .line 342
    .line 343
    check-cast v2, Landroidx/constraintlayout/core/widgets/analyzer/f;

    .line 344
    .line 345
    move/from16 v19, v1

    .line 346
    .line 347
    iget-object v1, v2, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 348
    .line 349
    invoke-virtual {v1}, Lu/e;->getVisibility()I

    .line 350
    .line 351
    .line 352
    move-result v1

    .line 353
    move/from16 v24, v3

    .line 354
    .line 355
    const/16 v3, 0x8

    .line 356
    .line 357
    if-ne v1, v3, :cond_19

    .line 358
    .line 359
    :cond_18
    move/from16 v25, v10

    .line 360
    .line 361
    move/from16 v26, v12

    .line 362
    .line 363
    move/from16 v27, v14

    .line 364
    .line 365
    goto :goto_13

    .line 366
    :cond_19
    iget-object v1, v2, Landroidx/constraintlayout/core/widgets/analyzer/f;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 367
    .line 368
    if-ne v1, v13, :cond_18

    .line 369
    .line 370
    iget-object v1, v2, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    .line 371
    .line 372
    iget-boolean v3, v1, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    .line 373
    .line 374
    if-nez v3, :cond_18

    .line 375
    .line 376
    cmpl-float v3, v20, p1

    .line 377
    .line 378
    if-lez v3, :cond_1a

    .line 379
    .line 380
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 381
    .line 382
    iget-object v3, v3, Lu/e;->l0:[F

    .line 383
    .line 384
    move-object/from16 v25, v3

    .line 385
    .line 386
    iget v3, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->f:I

    .line 387
    .line 388
    aget v3, v25, v3

    .line 389
    .line 390
    mul-float/2addr v3, v10

    .line 391
    div-float v3, v3, v20

    .line 392
    .line 393
    add-float v3, v3, v23

    .line 394
    .line 395
    float-to-int v3, v3

    .line 396
    :goto_f
    move/from16 v25, v10

    .line 397
    .line 398
    goto :goto_10

    .line 399
    :cond_1a
    move v3, v12

    .line 400
    goto :goto_f

    .line 401
    :goto_10
    iget v10, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->f:I

    .line 402
    .line 403
    if-nez v10, :cond_1b

    .line 404
    .line 405
    iget-object v10, v2, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 406
    .line 407
    move/from16 v26, v12

    .line 408
    .line 409
    iget v12, v10, Lu/e;->v:I

    .line 410
    .line 411
    iget v10, v10, Lu/e;->u:I

    .line 412
    .line 413
    goto :goto_11

    .line 414
    :cond_1b
    move/from16 v26, v12

    .line 415
    .line 416
    iget-object v10, v2, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 417
    .line 418
    iget v12, v10, Lu/e;->y:I

    .line 419
    .line 420
    iget v10, v10, Lu/e;->x:I

    .line 421
    .line 422
    :goto_11
    iget v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/f;->a:I

    .line 423
    .line 424
    move/from16 v27, v14

    .line 425
    .line 426
    const/4 v14, 0x1

    .line 427
    if-ne v2, v14, :cond_1c

    .line 428
    .line 429
    iget v2, v1, Landroidx/constraintlayout/core/widgets/analyzer/b;->m:I

    .line 430
    .line 431
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    .line 432
    .line 433
    .line 434
    move-result v2

    .line 435
    goto :goto_12

    .line 436
    :cond_1c
    move v2, v3

    .line 437
    :goto_12
    invoke-static {v10, v2}, Ljava/lang/Math;->max(II)I

    .line 438
    .line 439
    .line 440
    move-result v2

    .line 441
    if-lez v12, :cond_1d

    .line 442
    .line 443
    invoke-static {v12, v2}, Ljava/lang/Math;->min(II)I

    .line 444
    .line 445
    .line 446
    move-result v2

    .line 447
    :cond_1d
    if-eq v2, v3, :cond_1e

    .line 448
    .line 449
    add-int/lit8 v18, v18, 0x1

    .line 450
    .line 451
    move v3, v2

    .line 452
    :cond_1e
    invoke-virtual {v1, v3}, Landroidx/constraintlayout/core/widgets/analyzer/b;->resolve(I)V

    .line 453
    .line 454
    .line 455
    :goto_13
    add-int/lit8 v14, v27, 0x1

    .line 456
    .line 457
    move/from16 v1, v19

    .line 458
    .line 459
    move/from16 v2, v23

    .line 460
    .line 461
    move/from16 v3, v24

    .line 462
    .line 463
    move/from16 v10, v25

    .line 464
    .line 465
    move/from16 v12, v26

    .line 466
    .line 467
    goto/16 :goto_e

    .line 468
    .line 469
    :cond_1f
    move/from16 v19, v1

    .line 470
    .line 471
    move/from16 v23, v2

    .line 472
    .line 473
    move/from16 v24, v3

    .line 474
    .line 475
    if-lez v18, :cond_23

    .line 476
    .line 477
    sub-int v3, v24, v18

    .line 478
    .line 479
    const/4 v1, 0x0

    .line 480
    const/4 v15, 0x0

    .line 481
    :goto_14
    if-ge v1, v7, :cond_24

    .line 482
    .line 483
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 484
    .line 485
    .line 486
    move-result-object v2

    .line 487
    check-cast v2, Landroidx/constraintlayout/core/widgets/analyzer/f;

    .line 488
    .line 489
    iget-object v10, v2, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 490
    .line 491
    invoke-virtual {v10}, Lu/e;->getVisibility()I

    .line 492
    .line 493
    .line 494
    move-result v10

    .line 495
    const/16 v12, 0x8

    .line 496
    .line 497
    if-ne v10, v12, :cond_20

    .line 498
    .line 499
    goto :goto_15

    .line 500
    :cond_20
    if-lez v1, :cond_21

    .line 501
    .line 502
    if-lt v1, v8, :cond_21

    .line 503
    .line 504
    iget-object v10, v2, Landroidx/constraintlayout/core/widgets/analyzer/f;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 505
    .line 506
    iget v10, v10, Landroidx/constraintlayout/core/widgets/analyzer/a;->f:I

    .line 507
    .line 508
    add-int/2addr v15, v10

    .line 509
    :cond_21
    iget-object v10, v2, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    .line 510
    .line 511
    iget v10, v10, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    .line 512
    .line 513
    add-int/2addr v15, v10

    .line 514
    if-ge v1, v11, :cond_22

    .line 515
    .line 516
    if-ge v1, v9, :cond_22

    .line 517
    .line 518
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/f;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 519
    .line 520
    iget v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/a;->f:I

    .line 521
    .line 522
    neg-int v2, v2

    .line 523
    add-int/2addr v15, v2

    .line 524
    :cond_22
    :goto_15
    add-int/lit8 v1, v1, 0x1

    .line 525
    .line 526
    goto :goto_14

    .line 527
    :cond_23
    move/from16 v3, v24

    .line 528
    .line 529
    :cond_24
    iget v1, v0, Lv/e;->l:I

    .line 530
    .line 531
    const/4 v2, 0x2

    .line 532
    if-ne v1, v2, :cond_25

    .line 533
    .line 534
    if-nez v18, :cond_25

    .line 535
    .line 536
    const/4 v1, 0x0

    .line 537
    iput v1, v0, Lv/e;->l:I

    .line 538
    .line 539
    goto :goto_16

    .line 540
    :cond_25
    const/4 v1, 0x0

    .line 541
    goto :goto_16

    .line 542
    :cond_26
    move/from16 v19, v1

    .line 543
    .line 544
    move/from16 v23, v2

    .line 545
    .line 546
    move/from16 v24, v3

    .line 547
    .line 548
    const/4 v1, 0x0

    .line 549
    const/4 v2, 0x2

    .line 550
    :goto_16
    if-le v15, v4, :cond_27

    .line 551
    .line 552
    iput v2, v0, Lv/e;->l:I

    .line 553
    .line 554
    :cond_27
    if-lez v5, :cond_28

    .line 555
    .line 556
    if-nez v3, :cond_28

    .line 557
    .line 558
    if-ne v8, v9, :cond_28

    .line 559
    .line 560
    iput v2, v0, Lv/e;->l:I

    .line 561
    .line 562
    :cond_28
    iget v2, v0, Lv/e;->l:I

    .line 563
    .line 564
    const/4 v14, 0x1

    .line 565
    if-ne v2, v14, :cond_39

    .line 566
    .line 567
    if-le v5, v14, :cond_29

    .line 568
    .line 569
    sub-int/2addr v4, v15

    .line 570
    sub-int/2addr v5, v14

    .line 571
    div-int/2addr v4, v5

    .line 572
    goto :goto_17

    .line 573
    :cond_29
    if-ne v5, v14, :cond_2a

    .line 574
    .line 575
    sub-int/2addr v4, v15

    .line 576
    const/16 v17, 0x2

    .line 577
    .line 578
    div-int/lit8 v4, v4, 0x2

    .line 579
    .line 580
    goto :goto_17

    .line 581
    :cond_2a
    move v4, v1

    .line 582
    :goto_17
    if-lez v3, :cond_2b

    .line 583
    .line 584
    move v4, v1

    .line 585
    :cond_2b
    move v5, v1

    .line 586
    move/from16 v1, v19

    .line 587
    .line 588
    :goto_18
    if-ge v5, v7, :cond_57

    .line 589
    .line 590
    if-eqz v21, :cond_2c

    .line 591
    .line 592
    add-int/lit8 v2, v5, 0x1

    .line 593
    .line 594
    sub-int v2, v7, v2

    .line 595
    .line 596
    goto :goto_19

    .line 597
    :cond_2c
    move v2, v5

    .line 598
    :goto_19
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 599
    .line 600
    .line 601
    move-result-object v2

    .line 602
    check-cast v2, Landroidx/constraintlayout/core/widgets/analyzer/f;

    .line 603
    .line 604
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 605
    .line 606
    invoke-virtual {v3}, Lu/e;->getVisibility()I

    .line 607
    .line 608
    .line 609
    move-result v3

    .line 610
    iget-object v10, v2, Landroidx/constraintlayout/core/widgets/analyzer/f;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 611
    .line 612
    iget-object v12, v2, Landroidx/constraintlayout/core/widgets/analyzer/f;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 613
    .line 614
    const/16 v14, 0x8

    .line 615
    .line 616
    if-ne v3, v14, :cond_2d

    .line 617
    .line 618
    invoke-virtual {v12, v1}, Landroidx/constraintlayout/core/widgets/analyzer/a;->resolve(I)V

    .line 619
    .line 620
    .line 621
    invoke-virtual {v10, v1}, Landroidx/constraintlayout/core/widgets/analyzer/a;->resolve(I)V

    .line 622
    .line 623
    .line 624
    goto :goto_21

    .line 625
    :cond_2d
    if-lez v5, :cond_2f

    .line 626
    .line 627
    if-eqz v21, :cond_2e

    .line 628
    .line 629
    sub-int/2addr v1, v4

    .line 630
    goto :goto_1a

    .line 631
    :cond_2e
    add-int/2addr v1, v4

    .line 632
    :cond_2f
    :goto_1a
    if-lez v5, :cond_31

    .line 633
    .line 634
    if-lt v5, v8, :cond_31

    .line 635
    .line 636
    if-eqz v21, :cond_30

    .line 637
    .line 638
    iget v3, v12, Landroidx/constraintlayout/core/widgets/analyzer/a;->f:I

    .line 639
    .line 640
    sub-int/2addr v1, v3

    .line 641
    goto :goto_1b

    .line 642
    :cond_30
    iget v3, v12, Landroidx/constraintlayout/core/widgets/analyzer/a;->f:I

    .line 643
    .line 644
    add-int/2addr v1, v3

    .line 645
    :cond_31
    :goto_1b
    if-eqz v21, :cond_32

    .line 646
    .line 647
    invoke-virtual {v10, v1}, Landroidx/constraintlayout/core/widgets/analyzer/a;->resolve(I)V

    .line 648
    .line 649
    .line 650
    goto :goto_1c

    .line 651
    :cond_32
    invoke-virtual {v12, v1}, Landroidx/constraintlayout/core/widgets/analyzer/a;->resolve(I)V

    .line 652
    .line 653
    .line 654
    :goto_1c
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    .line 655
    .line 656
    iget v14, v3, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    .line 657
    .line 658
    iget-object v15, v2, Landroidx/constraintlayout/core/widgets/analyzer/f;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 659
    .line 660
    if-ne v15, v13, :cond_33

    .line 661
    .line 662
    iget v15, v2, Landroidx/constraintlayout/core/widgets/analyzer/f;->a:I

    .line 663
    .line 664
    move/from16 v16, v1

    .line 665
    .line 666
    const/4 v1, 0x1

    .line 667
    if-ne v15, v1, :cond_34

    .line 668
    .line 669
    iget v14, v3, Landroidx/constraintlayout/core/widgets/analyzer/b;->m:I

    .line 670
    .line 671
    goto :goto_1d

    .line 672
    :cond_33
    move/from16 v16, v1

    .line 673
    .line 674
    :cond_34
    :goto_1d
    if-eqz v21, :cond_35

    .line 675
    .line 676
    sub-int v1, v16, v14

    .line 677
    .line 678
    goto :goto_1e

    .line 679
    :cond_35
    add-int v1, v16, v14

    .line 680
    .line 681
    :goto_1e
    if-eqz v21, :cond_36

    .line 682
    .line 683
    invoke-virtual {v12, v1}, Landroidx/constraintlayout/core/widgets/analyzer/a;->resolve(I)V

    .line 684
    .line 685
    .line 686
    :goto_1f
    const/4 v14, 0x1

    .line 687
    goto :goto_20

    .line 688
    :cond_36
    invoke-virtual {v10, v1}, Landroidx/constraintlayout/core/widgets/analyzer/a;->resolve(I)V

    .line 689
    .line 690
    .line 691
    goto :goto_1f

    .line 692
    :goto_20
    iput-boolean v14, v2, Landroidx/constraintlayout/core/widgets/analyzer/f;->g:Z

    .line 693
    .line 694
    if-ge v5, v11, :cond_38

    .line 695
    .line 696
    if-ge v5, v9, :cond_38

    .line 697
    .line 698
    if-eqz v21, :cond_37

    .line 699
    .line 700
    iget v2, v10, Landroidx/constraintlayout/core/widgets/analyzer/a;->f:I

    .line 701
    .line 702
    neg-int v2, v2

    .line 703
    sub-int/2addr v1, v2

    .line 704
    goto :goto_21

    .line 705
    :cond_37
    iget v2, v10, Landroidx/constraintlayout/core/widgets/analyzer/a;->f:I

    .line 706
    .line 707
    neg-int v2, v2

    .line 708
    add-int/2addr v1, v2

    .line 709
    :cond_38
    :goto_21
    add-int/lit8 v5, v5, 0x1

    .line 710
    .line 711
    goto :goto_18

    .line 712
    :cond_39
    if-nez v2, :cond_46

    .line 713
    .line 714
    sub-int/2addr v4, v15

    .line 715
    const/16 v22, 0x1

    .line 716
    .line 717
    add-int/lit8 v5, v5, 0x1

    .line 718
    .line 719
    div-int/2addr v4, v5

    .line 720
    if-lez v3, :cond_3a

    .line 721
    .line 722
    move v4, v1

    .line 723
    :cond_3a
    move v5, v1

    .line 724
    move/from16 v1, v19

    .line 725
    .line 726
    :goto_22
    if-ge v5, v7, :cond_57

    .line 727
    .line 728
    if-eqz v21, :cond_3b

    .line 729
    .line 730
    add-int/lit8 v2, v5, 0x1

    .line 731
    .line 732
    sub-int v2, v7, v2

    .line 733
    .line 734
    goto :goto_23

    .line 735
    :cond_3b
    move v2, v5

    .line 736
    :goto_23
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 737
    .line 738
    .line 739
    move-result-object v2

    .line 740
    check-cast v2, Landroidx/constraintlayout/core/widgets/analyzer/f;

    .line 741
    .line 742
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 743
    .line 744
    invoke-virtual {v3}, Lu/e;->getVisibility()I

    .line 745
    .line 746
    .line 747
    move-result v3

    .line 748
    iget-object v10, v2, Landroidx/constraintlayout/core/widgets/analyzer/f;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 749
    .line 750
    iget-object v12, v2, Landroidx/constraintlayout/core/widgets/analyzer/f;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 751
    .line 752
    const/16 v14, 0x8

    .line 753
    .line 754
    if-ne v3, v14, :cond_3c

    .line 755
    .line 756
    invoke-virtual {v12, v1}, Landroidx/constraintlayout/core/widgets/analyzer/a;->resolve(I)V

    .line 757
    .line 758
    .line 759
    invoke-virtual {v10, v1}, Landroidx/constraintlayout/core/widgets/analyzer/a;->resolve(I)V

    .line 760
    .line 761
    .line 762
    goto :goto_29

    .line 763
    :cond_3c
    if-eqz v21, :cond_3d

    .line 764
    .line 765
    sub-int/2addr v1, v4

    .line 766
    goto :goto_24

    .line 767
    :cond_3d
    add-int/2addr v1, v4

    .line 768
    :goto_24
    if-lez v5, :cond_3f

    .line 769
    .line 770
    if-lt v5, v8, :cond_3f

    .line 771
    .line 772
    if-eqz v21, :cond_3e

    .line 773
    .line 774
    iget v3, v12, Landroidx/constraintlayout/core/widgets/analyzer/a;->f:I

    .line 775
    .line 776
    sub-int/2addr v1, v3

    .line 777
    goto :goto_25

    .line 778
    :cond_3e
    iget v3, v12, Landroidx/constraintlayout/core/widgets/analyzer/a;->f:I

    .line 779
    .line 780
    add-int/2addr v1, v3

    .line 781
    :cond_3f
    :goto_25
    if-eqz v21, :cond_40

    .line 782
    .line 783
    invoke-virtual {v10, v1}, Landroidx/constraintlayout/core/widgets/analyzer/a;->resolve(I)V

    .line 784
    .line 785
    .line 786
    goto :goto_26

    .line 787
    :cond_40
    invoke-virtual {v12, v1}, Landroidx/constraintlayout/core/widgets/analyzer/a;->resolve(I)V

    .line 788
    .line 789
    .line 790
    :goto_26
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    .line 791
    .line 792
    iget v14, v3, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    .line 793
    .line 794
    iget-object v15, v2, Landroidx/constraintlayout/core/widgets/analyzer/f;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 795
    .line 796
    if-ne v15, v13, :cond_41

    .line 797
    .line 798
    iget v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/f;->a:I

    .line 799
    .line 800
    const/4 v15, 0x1

    .line 801
    if-ne v2, v15, :cond_41

    .line 802
    .line 803
    iget v2, v3, Landroidx/constraintlayout/core/widgets/analyzer/b;->m:I

    .line 804
    .line 805
    invoke-static {v14, v2}, Ljava/lang/Math;->min(II)I

    .line 806
    .line 807
    .line 808
    move-result v14

    .line 809
    :cond_41
    if-eqz v21, :cond_42

    .line 810
    .line 811
    sub-int/2addr v1, v14

    .line 812
    goto :goto_27

    .line 813
    :cond_42
    add-int/2addr v1, v14

    .line 814
    :goto_27
    if-eqz v21, :cond_43

    .line 815
    .line 816
    invoke-virtual {v12, v1}, Landroidx/constraintlayout/core/widgets/analyzer/a;->resolve(I)V

    .line 817
    .line 818
    .line 819
    goto :goto_28

    .line 820
    :cond_43
    invoke-virtual {v10, v1}, Landroidx/constraintlayout/core/widgets/analyzer/a;->resolve(I)V

    .line 821
    .line 822
    .line 823
    :goto_28
    if-ge v5, v11, :cond_45

    .line 824
    .line 825
    if-ge v5, v9, :cond_45

    .line 826
    .line 827
    if-eqz v21, :cond_44

    .line 828
    .line 829
    iget v2, v10, Landroidx/constraintlayout/core/widgets/analyzer/a;->f:I

    .line 830
    .line 831
    neg-int v2, v2

    .line 832
    sub-int/2addr v1, v2

    .line 833
    goto :goto_29

    .line 834
    :cond_44
    iget v2, v10, Landroidx/constraintlayout/core/widgets/analyzer/a;->f:I

    .line 835
    .line 836
    neg-int v2, v2

    .line 837
    add-int/2addr v1, v2

    .line 838
    :cond_45
    :goto_29
    add-int/lit8 v5, v5, 0x1

    .line 839
    .line 840
    goto :goto_22

    .line 841
    :cond_46
    const/4 v5, 0x2

    .line 842
    if-ne v2, v5, :cond_57

    .line 843
    .line 844
    iget v2, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->f:I

    .line 845
    .line 846
    if-nez v2, :cond_47

    .line 847
    .line 848
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 849
    .line 850
    invoke-virtual {v2}, Lu/e;->getHorizontalBiasPercent()F

    .line 851
    .line 852
    .line 853
    move-result v2

    .line 854
    goto :goto_2a

    .line 855
    :cond_47
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 856
    .line 857
    invoke-virtual {v2}, Lu/e;->getVerticalBiasPercent()F

    .line 858
    .line 859
    .line 860
    move-result v2

    .line 861
    :goto_2a
    if-eqz v21, :cond_48

    .line 862
    .line 863
    const/high16 v5, 0x3f800000    # 1.0f

    .line 864
    .line 865
    sub-float v2, v5, v2

    .line 866
    .line 867
    :cond_48
    sub-int/2addr v4, v15

    .line 868
    int-to-float v4, v4

    .line 869
    mul-float/2addr v4, v2

    .line 870
    add-float v4, v4, v23

    .line 871
    .line 872
    float-to-int v2, v4

    .line 873
    if-ltz v2, :cond_49

    .line 874
    .line 875
    if-lez v3, :cond_4a

    .line 876
    .line 877
    :cond_49
    move v2, v1

    .line 878
    :cond_4a
    if-eqz v21, :cond_4b

    .line 879
    .line 880
    sub-int v2, v19, v2

    .line 881
    .line 882
    goto :goto_2b

    .line 883
    :cond_4b
    add-int v2, v19, v2

    .line 884
    .line 885
    :goto_2b
    move v5, v1

    .line 886
    :goto_2c
    if-ge v5, v7, :cond_57

    .line 887
    .line 888
    if-eqz v21, :cond_4c

    .line 889
    .line 890
    add-int/lit8 v1, v5, 0x1

    .line 891
    .line 892
    sub-int v1, v7, v1

    .line 893
    .line 894
    goto :goto_2d

    .line 895
    :cond_4c
    move v1, v5

    .line 896
    :goto_2d
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 897
    .line 898
    .line 899
    move-result-object v1

    .line 900
    check-cast v1, Landroidx/constraintlayout/core/widgets/analyzer/f;

    .line 901
    .line 902
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 903
    .line 904
    invoke-virtual {v3}, Lu/e;->getVisibility()I

    .line 905
    .line 906
    .line 907
    move-result v3

    .line 908
    iget-object v4, v1, Landroidx/constraintlayout/core/widgets/analyzer/f;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 909
    .line 910
    iget-object v10, v1, Landroidx/constraintlayout/core/widgets/analyzer/f;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 911
    .line 912
    const/16 v14, 0x8

    .line 913
    .line 914
    if-ne v3, v14, :cond_4d

    .line 915
    .line 916
    invoke-virtual {v10, v2}, Landroidx/constraintlayout/core/widgets/analyzer/a;->resolve(I)V

    .line 917
    .line 918
    .line 919
    invoke-virtual {v4, v2}, Landroidx/constraintlayout/core/widgets/analyzer/a;->resolve(I)V

    .line 920
    .line 921
    .line 922
    const/4 v15, 0x1

    .line 923
    goto :goto_33

    .line 924
    :cond_4d
    if-lez v5, :cond_4f

    .line 925
    .line 926
    if-lt v5, v8, :cond_4f

    .line 927
    .line 928
    if-eqz v21, :cond_4e

    .line 929
    .line 930
    iget v3, v10, Landroidx/constraintlayout/core/widgets/analyzer/a;->f:I

    .line 931
    .line 932
    sub-int/2addr v2, v3

    .line 933
    goto :goto_2e

    .line 934
    :cond_4e
    iget v3, v10, Landroidx/constraintlayout/core/widgets/analyzer/a;->f:I

    .line 935
    .line 936
    add-int/2addr v2, v3

    .line 937
    :cond_4f
    :goto_2e
    if-eqz v21, :cond_50

    .line 938
    .line 939
    invoke-virtual {v4, v2}, Landroidx/constraintlayout/core/widgets/analyzer/a;->resolve(I)V

    .line 940
    .line 941
    .line 942
    goto :goto_2f

    .line 943
    :cond_50
    invoke-virtual {v10, v2}, Landroidx/constraintlayout/core/widgets/analyzer/a;->resolve(I)V

    .line 944
    .line 945
    .line 946
    :goto_2f
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    .line 947
    .line 948
    iget v12, v3, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    .line 949
    .line 950
    iget-object v15, v1, Landroidx/constraintlayout/core/widgets/analyzer/f;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 951
    .line 952
    if-ne v15, v13, :cond_51

    .line 953
    .line 954
    iget v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/f;->a:I

    .line 955
    .line 956
    const/4 v15, 0x1

    .line 957
    if-ne v1, v15, :cond_52

    .line 958
    .line 959
    iget v12, v3, Landroidx/constraintlayout/core/widgets/analyzer/b;->m:I

    .line 960
    .line 961
    goto :goto_30

    .line 962
    :cond_51
    const/4 v15, 0x1

    .line 963
    :cond_52
    :goto_30
    if-eqz v21, :cond_53

    .line 964
    .line 965
    sub-int/2addr v2, v12

    .line 966
    goto :goto_31

    .line 967
    :cond_53
    add-int/2addr v2, v12

    .line 968
    :goto_31
    if-eqz v21, :cond_54

    .line 969
    .line 970
    invoke-virtual {v10, v2}, Landroidx/constraintlayout/core/widgets/analyzer/a;->resolve(I)V

    .line 971
    .line 972
    .line 973
    goto :goto_32

    .line 974
    :cond_54
    invoke-virtual {v4, v2}, Landroidx/constraintlayout/core/widgets/analyzer/a;->resolve(I)V

    .line 975
    .line 976
    .line 977
    :goto_32
    if-ge v5, v11, :cond_56

    .line 978
    .line 979
    if-ge v5, v9, :cond_56

    .line 980
    .line 981
    if-eqz v21, :cond_55

    .line 982
    .line 983
    iget v1, v4, Landroidx/constraintlayout/core/widgets/analyzer/a;->f:I

    .line 984
    .line 985
    neg-int v1, v1

    .line 986
    sub-int/2addr v2, v1

    .line 987
    goto :goto_33

    .line 988
    :cond_55
    iget v1, v4, Landroidx/constraintlayout/core/widgets/analyzer/a;->f:I

    .line 989
    .line 990
    neg-int v1, v1

    .line 991
    add-int/2addr v2, v1

    .line 992
    :cond_56
    :goto_33
    add-int/lit8 v5, v5, 0x1

    .line 993
    .line 994
    goto :goto_2c

    .line 995
    :cond_57
    :goto_34
    return-void
.end method
