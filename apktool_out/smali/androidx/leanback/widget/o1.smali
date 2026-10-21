.class public final Landroidx/leanback/widget/o1;
.super Landroidx/leanback/widget/E;
.source "SourceFile"


# instance fields
.field public final j:Landroidx/leanback/widget/C;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/leanback/widget/E;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/leanback/widget/C;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Landroidx/leanback/widget/C;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroidx/leanback/widget/o1;->j:Landroidx/leanback/widget/C;

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/E;->a(I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final appendVisibleItems(IZ)Z
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/E;->b:Landroidx/leanback/widget/D;

    .line 2
    .line 3
    check-cast v0, Landroidx/leanback/widget/G;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/leanback/widget/G;->getCount()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    if-nez p2, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/E;->checkAppendOverLimit(I)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    :goto_0
    return v1

    .line 22
    :cond_1
    iget v0, p0, Landroidx/leanback/widget/E;->g:I

    .line 23
    .line 24
    const/4 v2, 0x1

    .line 25
    if-ltz v0, :cond_2

    .line 26
    .line 27
    add-int/2addr v0, v2

    .line 28
    goto :goto_1

    .line 29
    :cond_2
    iget v0, p0, Landroidx/leanback/widget/E;->i:I

    .line 30
    .line 31
    const/4 v3, -0x1

    .line 32
    if-eq v0, v3, :cond_3

    .line 33
    .line 34
    iget-object v3, p0, Landroidx/leanback/widget/E;->b:Landroidx/leanback/widget/D;

    .line 35
    .line 36
    check-cast v3, Landroidx/leanback/widget/G;

    .line 37
    .line 38
    invoke-virtual {v3}, Landroidx/leanback/widget/G;->getCount()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    sub-int/2addr v3, v2

    .line 43
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    goto :goto_1

    .line 48
    :cond_3
    move v0, v1

    .line 49
    :goto_1
    move v5, v0

    .line 50
    move v0, v1

    .line 51
    :goto_2
    iget-object v3, p0, Landroidx/leanback/widget/E;->b:Landroidx/leanback/widget/D;

    .line 52
    .line 53
    check-cast v3, Landroidx/leanback/widget/G;

    .line 54
    .line 55
    invoke-virtual {v3}, Landroidx/leanback/widget/G;->getCount()I

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-ge v5, v3, :cond_a

    .line 60
    .line 61
    iget-object v0, p0, Landroidx/leanback/widget/E;->b:Landroidx/leanback/widget/D;

    .line 62
    .line 63
    check-cast v0, Landroidx/leanback/widget/G;

    .line 64
    .line 65
    iget-object v3, p0, Landroidx/leanback/widget/E;->a:[Ljava/lang/Object;

    .line 66
    .line 67
    invoke-virtual {v0, v5, v2, v3, v1}, Landroidx/leanback/widget/G;->createItem(IZ[Ljava/lang/Object;Z)I

    .line 68
    .line 69
    .line 70
    move-result v6

    .line 71
    iget v0, p0, Landroidx/leanback/widget/E;->f:I

    .line 72
    .line 73
    if-ltz v0, :cond_6

    .line 74
    .line 75
    iget v0, p0, Landroidx/leanback/widget/E;->g:I

    .line 76
    .line 77
    if-gez v0, :cond_4

    .line 78
    .line 79
    goto :goto_5

    .line 80
    :cond_4
    iget-boolean v0, p0, Landroidx/leanback/widget/E;->c:Z

    .line 81
    .line 82
    if-eqz v0, :cond_5

    .line 83
    .line 84
    iget-object v0, p0, Landroidx/leanback/widget/E;->b:Landroidx/leanback/widget/D;

    .line 85
    .line 86
    add-int/lit8 v4, v5, -0x1

    .line 87
    .line 88
    check-cast v0, Landroidx/leanback/widget/G;

    .line 89
    .line 90
    invoke-virtual {v0, v4}, Landroidx/leanback/widget/G;->getEdge(I)I

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    iget-object v7, p0, Landroidx/leanback/widget/E;->b:Landroidx/leanback/widget/D;

    .line 95
    .line 96
    check-cast v7, Landroidx/leanback/widget/G;

    .line 97
    .line 98
    invoke-virtual {v7, v4}, Landroidx/leanback/widget/G;->getSize(I)I

    .line 99
    .line 100
    .line 101
    move-result v4

    .line 102
    sub-int/2addr v0, v4

    .line 103
    iget v4, p0, Landroidx/leanback/widget/E;->d:I

    .line 104
    .line 105
    sub-int/2addr v0, v4

    .line 106
    goto :goto_3

    .line 107
    :cond_5
    iget-object v0, p0, Landroidx/leanback/widget/E;->b:Landroidx/leanback/widget/D;

    .line 108
    .line 109
    add-int/lit8 v4, v5, -0x1

    .line 110
    .line 111
    check-cast v0, Landroidx/leanback/widget/G;

    .line 112
    .line 113
    invoke-virtual {v0, v4}, Landroidx/leanback/widget/G;->getEdge(I)I

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    iget-object v7, p0, Landroidx/leanback/widget/E;->b:Landroidx/leanback/widget/D;

    .line 118
    .line 119
    check-cast v7, Landroidx/leanback/widget/G;

    .line 120
    .line 121
    invoke-virtual {v7, v4}, Landroidx/leanback/widget/G;->getSize(I)I

    .line 122
    .line 123
    .line 124
    move-result v4

    .line 125
    add-int/2addr v4, v0

    .line 126
    iget v0, p0, Landroidx/leanback/widget/E;->d:I

    .line 127
    .line 128
    add-int/2addr v0, v4

    .line 129
    :goto_3
    iput v5, p0, Landroidx/leanback/widget/E;->g:I

    .line 130
    .line 131
    :goto_4
    move v8, v0

    .line 132
    goto :goto_7

    .line 133
    :cond_6
    :goto_5
    iget-boolean v0, p0, Landroidx/leanback/widget/E;->c:Z

    .line 134
    .line 135
    if-eqz v0, :cond_7

    .line 136
    .line 137
    const v0, 0x7fffffff

    .line 138
    .line 139
    .line 140
    goto :goto_6

    .line 141
    :cond_7
    const/high16 v0, -0x80000000

    .line 142
    .line 143
    :goto_6
    iput v5, p0, Landroidx/leanback/widget/E;->f:I

    .line 144
    .line 145
    iput v5, p0, Landroidx/leanback/widget/E;->g:I

    .line 146
    .line 147
    goto :goto_4

    .line 148
    :goto_7
    iget-object v0, p0, Landroidx/leanback/widget/E;->b:Landroidx/leanback/widget/D;

    .line 149
    .line 150
    aget-object v4, v3, v1

    .line 151
    .line 152
    const/4 v7, 0x0

    .line 153
    move-object v3, v0

    .line 154
    check-cast v3, Landroidx/leanback/widget/G;

    .line 155
    .line 156
    invoke-virtual/range {v3 .. v8}, Landroidx/leanback/widget/G;->addItem(Ljava/lang/Object;IIII)V

    .line 157
    .line 158
    .line 159
    if-nez p2, :cond_9

    .line 160
    .line 161
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/E;->checkAppendOverLimit(I)Z

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    if-eqz v0, :cond_8

    .line 166
    .line 167
    goto :goto_8

    .line 168
    :cond_8
    add-int/lit8 v5, v5, 0x1

    .line 169
    .line 170
    move v0, v2

    .line 171
    goto :goto_2

    .line 172
    :cond_9
    :goto_8
    return v2

    .line 173
    :cond_a
    return v0
.end method

.method public final b()I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/leanback/widget/E;->f:I

    .line 2
    .line 3
    if-ltz v0, :cond_0

    .line 4
    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    iget v0, p0, Landroidx/leanback/widget/E;->i:I

    .line 9
    .line 10
    const/4 v1, -0x1

    .line 11
    if-eq v0, v1, :cond_1

    .line 12
    .line 13
    iget-object v1, p0, Landroidx/leanback/widget/E;->b:Landroidx/leanback/widget/D;

    .line 14
    .line 15
    check-cast v1, Landroidx/leanback/widget/G;

    .line 16
    .line 17
    invoke-virtual {v1}, Landroidx/leanback/widget/G;->getCount()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    add-int/lit8 v1, v1, -0x1

    .line 22
    .line 23
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    return v0

    .line 28
    :cond_1
    iget-object v0, p0, Landroidx/leanback/widget/E;->b:Landroidx/leanback/widget/D;

    .line 29
    .line 30
    check-cast v0, Landroidx/leanback/widget/G;

    .line 31
    .line 32
    invoke-virtual {v0}, Landroidx/leanback/widget/G;->getCount()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    add-int/lit8 v0, v0, -0x1

    .line 37
    .line 38
    return v0
.end method

.method public collectAdjacentPrefetchPositions(IILm1/g0;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroidx/leanback/widget/E;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    if-lez p2, :cond_3

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    if-gez p2, :cond_3

    .line 9
    .line 10
    :goto_0
    invoke-virtual {p0}, Landroidx/leanback/widget/E;->getFirstVisibleIndex()I

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    if-nez p2, :cond_1

    .line 15
    .line 16
    goto :goto_2

    .line 17
    :cond_1
    invoke-virtual {p0}, Landroidx/leanback/widget/o1;->b()I

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    iget-object v0, p0, Landroidx/leanback/widget/E;->b:Landroidx/leanback/widget/D;

    .line 22
    .line 23
    iget v1, p0, Landroidx/leanback/widget/E;->f:I

    .line 24
    .line 25
    check-cast v0, Landroidx/leanback/widget/G;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroidx/leanback/widget/G;->getEdge(I)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    iget-boolean v1, p0, Landroidx/leanback/widget/E;->c:Z

    .line 32
    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    iget v1, p0, Landroidx/leanback/widget/E;->d:I

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_2
    iget v1, p0, Landroidx/leanback/widget/E;->d:I

    .line 39
    .line 40
    neg-int v1, v1

    .line 41
    :goto_1
    add-int/2addr v0, v1

    .line 42
    goto :goto_4

    .line 43
    :cond_3
    invoke-virtual {p0}, Landroidx/leanback/widget/E;->getLastVisibleIndex()I

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    iget-object v0, p0, Landroidx/leanback/widget/E;->b:Landroidx/leanback/widget/D;

    .line 48
    .line 49
    check-cast v0, Landroidx/leanback/widget/G;

    .line 50
    .line 51
    invoke-virtual {v0}, Landroidx/leanback/widget/G;->getCount()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    add-int/lit8 v0, v0, -0x1

    .line 56
    .line 57
    if-ne p2, v0, :cond_4

    .line 58
    .line 59
    :goto_2
    return-void

    .line 60
    :cond_4
    iget p2, p0, Landroidx/leanback/widget/E;->g:I

    .line 61
    .line 62
    if-ltz p2, :cond_5

    .line 63
    .line 64
    add-int/lit8 p2, p2, 0x1

    .line 65
    .line 66
    goto :goto_3

    .line 67
    :cond_5
    iget p2, p0, Landroidx/leanback/widget/E;->i:I

    .line 68
    .line 69
    const/4 v0, -0x1

    .line 70
    if-eq p2, v0, :cond_6

    .line 71
    .line 72
    iget-object v0, p0, Landroidx/leanback/widget/E;->b:Landroidx/leanback/widget/D;

    .line 73
    .line 74
    check-cast v0, Landroidx/leanback/widget/G;

    .line 75
    .line 76
    invoke-virtual {v0}, Landroidx/leanback/widget/G;->getCount()I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    add-int/lit8 v0, v0, -0x1

    .line 81
    .line 82
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    .line 83
    .line 84
    .line 85
    move-result p2

    .line 86
    goto :goto_3

    .line 87
    :cond_6
    const/4 p2, 0x0

    .line 88
    :goto_3
    iget-object v0, p0, Landroidx/leanback/widget/E;->b:Landroidx/leanback/widget/D;

    .line 89
    .line 90
    iget v1, p0, Landroidx/leanback/widget/E;->g:I

    .line 91
    .line 92
    check-cast v0, Landroidx/leanback/widget/G;

    .line 93
    .line 94
    invoke-virtual {v0, v1}, Landroidx/leanback/widget/G;->getSize(I)I

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    iget v1, p0, Landroidx/leanback/widget/E;->d:I

    .line 99
    .line 100
    add-int/2addr v0, v1

    .line 101
    iget-object v1, p0, Landroidx/leanback/widget/E;->b:Landroidx/leanback/widget/D;

    .line 102
    .line 103
    iget v2, p0, Landroidx/leanback/widget/E;->g:I

    .line 104
    .line 105
    check-cast v1, Landroidx/leanback/widget/G;

    .line 106
    .line 107
    invoke-virtual {v1, v2}, Landroidx/leanback/widget/G;->getEdge(I)I

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    iget-boolean v2, p0, Landroidx/leanback/widget/E;->c:Z

    .line 112
    .line 113
    if-eqz v2, :cond_7

    .line 114
    .line 115
    neg-int v0, v0

    .line 116
    :cond_7
    add-int/2addr v0, v1

    .line 117
    :goto_4
    sub-int/2addr v0, p1

    .line 118
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 119
    .line 120
    .line 121
    move-result p1

    .line 122
    check-cast p3, Lm1/w;

    .line 123
    .line 124
    invoke-virtual {p3, p2, p1}, Lm1/w;->addPosition(II)V

    .line 125
    .line 126
    .line 127
    return-void
.end method

.method public final findRowMax(ZI[I)I
    .locals 0

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    aput p1, p3, p1

    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    aput p2, p3, p1

    .line 8
    .line 9
    :cond_0
    iget-boolean p1, p0, Landroidx/leanback/widget/E;->c:Z

    .line 10
    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    iget-object p1, p0, Landroidx/leanback/widget/E;->b:Landroidx/leanback/widget/D;

    .line 14
    .line 15
    check-cast p1, Landroidx/leanback/widget/G;

    .line 16
    .line 17
    invoke-virtual {p1, p2}, Landroidx/leanback/widget/G;->getEdge(I)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    return p1

    .line 22
    :cond_1
    iget-object p1, p0, Landroidx/leanback/widget/E;->b:Landroidx/leanback/widget/D;

    .line 23
    .line 24
    check-cast p1, Landroidx/leanback/widget/G;

    .line 25
    .line 26
    invoke-virtual {p1, p2}, Landroidx/leanback/widget/G;->getEdge(I)I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    iget-object p3, p0, Landroidx/leanback/widget/E;->b:Landroidx/leanback/widget/D;

    .line 31
    .line 32
    check-cast p3, Landroidx/leanback/widget/G;

    .line 33
    .line 34
    invoke-virtual {p3, p2}, Landroidx/leanback/widget/G;->getSize(I)I

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    add-int/2addr p2, p1

    .line 39
    return p2
.end method

.method public final findRowMin(ZI[I)I
    .locals 0

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    aput p1, p3, p1

    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    aput p2, p3, p1

    .line 8
    .line 9
    :cond_0
    iget-boolean p1, p0, Landroidx/leanback/widget/E;->c:Z

    .line 10
    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    iget-object p1, p0, Landroidx/leanback/widget/E;->b:Landroidx/leanback/widget/D;

    .line 14
    .line 15
    check-cast p1, Landroidx/leanback/widget/G;

    .line 16
    .line 17
    invoke-virtual {p1, p2}, Landroidx/leanback/widget/G;->getEdge(I)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    iget-object p3, p0, Landroidx/leanback/widget/E;->b:Landroidx/leanback/widget/D;

    .line 22
    .line 23
    check-cast p3, Landroidx/leanback/widget/G;

    .line 24
    .line 25
    invoke-virtual {p3, p2}, Landroidx/leanback/widget/G;->getSize(I)I

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    sub-int/2addr p1, p2

    .line 30
    return p1

    .line 31
    :cond_1
    iget-object p1, p0, Landroidx/leanback/widget/E;->b:Landroidx/leanback/widget/D;

    .line 32
    .line 33
    check-cast p1, Landroidx/leanback/widget/G;

    .line 34
    .line 35
    invoke-virtual {p1, p2}, Landroidx/leanback/widget/G;->getEdge(I)I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    return p1
.end method

.method public final getItemPositionsInRows(II)[Lp/l;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/E;->h:[Lp/l;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget-object v0, v0, v1

    .line 5
    .line 6
    invoke-virtual {v0}, Lp/l;->clear()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Landroidx/leanback/widget/E;->h:[Lp/l;

    .line 10
    .line 11
    aget-object v0, v0, v1

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lp/l;->addLast(I)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Landroidx/leanback/widget/E;->h:[Lp/l;

    .line 17
    .line 18
    aget-object p1, p1, v1

    .line 19
    .line 20
    invoke-virtual {p1, p2}, Lp/l;->addLast(I)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Landroidx/leanback/widget/E;->h:[Lp/l;

    .line 24
    .line 25
    return-object p1
.end method

.method public final getLocation(I)Landroidx/leanback/widget/C;
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/leanback/widget/o1;->j:Landroidx/leanback/widget/C;

    .line 2
    .line 3
    return-object p1
.end method

.method public final prependVisibleItems(IZ)Z
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/E;->b:Landroidx/leanback/widget/D;

    .line 2
    .line 3
    check-cast v0, Landroidx/leanback/widget/G;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/leanback/widget/G;->getCount()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    if-nez p2, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/E;->checkPrependOverLimit(I)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    return v1

    .line 22
    :cond_1
    iget-object v0, p0, Landroidx/leanback/widget/E;->b:Landroidx/leanback/widget/D;

    .line 23
    .line 24
    check-cast v0, Landroidx/leanback/widget/G;

    .line 25
    .line 26
    invoke-virtual {v0}, Landroidx/leanback/widget/G;->getMinIndex()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    invoke-virtual {p0}, Landroidx/leanback/widget/o1;->b()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    move v5, v2

    .line 35
    move v2, v1

    .line 36
    :goto_0
    if-lt v5, v0, :cond_7

    .line 37
    .line 38
    iget-object v2, p0, Landroidx/leanback/widget/E;->b:Landroidx/leanback/widget/D;

    .line 39
    .line 40
    check-cast v2, Landroidx/leanback/widget/G;

    .line 41
    .line 42
    iget-object v3, p0, Landroidx/leanback/widget/E;->a:[Ljava/lang/Object;

    .line 43
    .line 44
    invoke-virtual {v2, v5, v1, v3, v1}, Landroidx/leanback/widget/G;->createItem(IZ[Ljava/lang/Object;Z)I

    .line 45
    .line 46
    .line 47
    move-result v6

    .line 48
    iget v2, p0, Landroidx/leanback/widget/E;->f:I

    .line 49
    .line 50
    if-ltz v2, :cond_4

    .line 51
    .line 52
    iget v2, p0, Landroidx/leanback/widget/E;->g:I

    .line 53
    .line 54
    if-gez v2, :cond_2

    .line 55
    .line 56
    goto :goto_3

    .line 57
    :cond_2
    iget-boolean v2, p0, Landroidx/leanback/widget/E;->c:Z

    .line 58
    .line 59
    if-eqz v2, :cond_3

    .line 60
    .line 61
    iget-object v2, p0, Landroidx/leanback/widget/E;->b:Landroidx/leanback/widget/D;

    .line 62
    .line 63
    add-int/lit8 v4, v5, 0x1

    .line 64
    .line 65
    check-cast v2, Landroidx/leanback/widget/G;

    .line 66
    .line 67
    invoke-virtual {v2, v4}, Landroidx/leanback/widget/G;->getEdge(I)I

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    iget v4, p0, Landroidx/leanback/widget/E;->d:I

    .line 72
    .line 73
    add-int/2addr v2, v4

    .line 74
    add-int/2addr v2, v6

    .line 75
    goto :goto_1

    .line 76
    :cond_3
    iget-object v2, p0, Landroidx/leanback/widget/E;->b:Landroidx/leanback/widget/D;

    .line 77
    .line 78
    add-int/lit8 v4, v5, 0x1

    .line 79
    .line 80
    check-cast v2, Landroidx/leanback/widget/G;

    .line 81
    .line 82
    invoke-virtual {v2, v4}, Landroidx/leanback/widget/G;->getEdge(I)I

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    iget v4, p0, Landroidx/leanback/widget/E;->d:I

    .line 87
    .line 88
    sub-int/2addr v2, v4

    .line 89
    sub-int/2addr v2, v6

    .line 90
    :goto_1
    iput v5, p0, Landroidx/leanback/widget/E;->f:I

    .line 91
    .line 92
    :goto_2
    move v8, v2

    .line 93
    goto :goto_5

    .line 94
    :cond_4
    :goto_3
    iget-boolean v2, p0, Landroidx/leanback/widget/E;->c:Z

    .line 95
    .line 96
    if-eqz v2, :cond_5

    .line 97
    .line 98
    const/high16 v2, -0x80000000

    .line 99
    .line 100
    goto :goto_4

    .line 101
    :cond_5
    const v2, 0x7fffffff

    .line 102
    .line 103
    .line 104
    :goto_4
    iput v5, p0, Landroidx/leanback/widget/E;->f:I

    .line 105
    .line 106
    iput v5, p0, Landroidx/leanback/widget/E;->g:I

    .line 107
    .line 108
    goto :goto_2

    .line 109
    :goto_5
    iget-object v2, p0, Landroidx/leanback/widget/E;->b:Landroidx/leanback/widget/D;

    .line 110
    .line 111
    aget-object v4, v3, v1

    .line 112
    .line 113
    const/4 v7, 0x0

    .line 114
    move-object v3, v2

    .line 115
    check-cast v3, Landroidx/leanback/widget/G;

    .line 116
    .line 117
    invoke-virtual/range {v3 .. v8}, Landroidx/leanback/widget/G;->addItem(Ljava/lang/Object;IIII)V

    .line 118
    .line 119
    .line 120
    const/4 v2, 0x1

    .line 121
    if-nez p2, :cond_7

    .line 122
    .line 123
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/E;->checkPrependOverLimit(I)Z

    .line 124
    .line 125
    .line 126
    move-result v3

    .line 127
    if-eqz v3, :cond_6

    .line 128
    .line 129
    goto :goto_6

    .line 130
    :cond_6
    add-int/lit8 v5, v5, -0x1

    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_7
    :goto_6
    return v2
.end method
