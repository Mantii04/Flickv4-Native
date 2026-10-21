.class public abstract Landroidx/leanback/widget/E;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[Ljava/lang/Object;

.field public b:Landroidx/leanback/widget/D;

.field public c:Z

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:[Lp/l;

.field public i:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    new-array v0, v0, [Ljava/lang/Object;

    .line 6
    .line 7
    iput-object v0, p0, Landroidx/leanback/widget/E;->a:[Ljava/lang/Object;

    .line 8
    .line 9
    const/4 v0, -0x1

    .line 10
    iput v0, p0, Landroidx/leanback/widget/E;->f:I

    .line 11
    .line 12
    iput v0, p0, Landroidx/leanback/widget/E;->g:I

    .line 13
    .line 14
    iput v0, p0, Landroidx/leanback/widget/E;->i:I

    .line 15
    .line 16
    return-void
.end method

.method public static createGrid(I)Landroidx/leanback/widget/E;
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, v0, :cond_0

    .line 3
    .line 4
    new-instance p0, Landroidx/leanback/widget/o1;

    .line 5
    .line 6
    invoke-direct {p0}, Landroidx/leanback/widget/o1;-><init>()V

    .line 7
    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    new-instance v0, Landroidx/leanback/widget/s1;

    .line 11
    .line 12
    invoke-direct {v0}, Landroidx/leanback/widget/E;-><init>()V

    .line 13
    .line 14
    .line 15
    new-instance v1, Lp/k;

    .line 16
    .line 17
    const/16 v2, 0x40

    .line 18
    .line 19
    invoke-direct {v1, v2}, Lp/k;-><init>(I)V

    .line 20
    .line 21
    .line 22
    iput-object v1, v0, Landroidx/leanback/widget/r1;->j:Lp/k;

    .line 23
    .line 24
    const/4 v1, -0x1

    .line 25
    iput v1, v0, Landroidx/leanback/widget/r1;->k:I

    .line 26
    .line 27
    invoke-virtual {v0, p0}, Landroidx/leanback/widget/E;->a(I)V

    .line 28
    .line 29
    .line 30
    return-object v0
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    .line 1
    if-lez p1, :cond_2

    .line 2
    .line 3
    iget v0, p0, Landroidx/leanback/widget/E;->e:I

    .line 4
    .line 5
    if-ne v0, p1, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    iput p1, p0, Landroidx/leanback/widget/E;->e:I

    .line 9
    .line 10
    new-array p1, p1, [Lp/l;

    .line 11
    .line 12
    iput-object p1, p0, Landroidx/leanback/widget/E;->h:[Lp/l;

    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    :goto_0
    iget v0, p0, Landroidx/leanback/widget/E;->e:I

    .line 16
    .line 17
    if-ge p1, v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Landroidx/leanback/widget/E;->h:[Lp/l;

    .line 20
    .line 21
    new-instance v1, Lp/l;

    .line 22
    .line 23
    invoke-direct {v1}, Lp/l;-><init>()V

    .line 24
    .line 25
    .line 26
    aput-object v1, v0, p1

    .line 27
    .line 28
    add-int/lit8 p1, p1, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    :goto_1
    return-void

    .line 32
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 33
    .line 34
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 35
    .line 36
    .line 37
    throw p1
.end method

.method public appendOneColumnVisibleItems()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/leanback/widget/E;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const v0, 0x7fffffff

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/high16 v0, -0x80000000

    .line 10
    .line 11
    :goto_0
    const/4 v1, 0x1

    .line 12
    invoke-virtual {p0, v0, v1}, Landroidx/leanback/widget/E;->appendVisibleItems(IZ)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    return v0
.end method

.method public final appendVisibleItems(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Landroidx/leanback/widget/E;->appendVisibleItems(IZ)Z

    return-void
.end method

.method public abstract appendVisibleItems(IZ)Z
.end method

.method public final checkAppendOverLimit(I)Z
    .locals 4

    .line 1
    iget v0, p0, Landroidx/leanback/widget/E;->g:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-gez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-boolean v0, p0, Landroidx/leanback/widget/E;->c:Z

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x1

    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    invoke-virtual {p0, v3, v2}, Landroidx/leanback/widget/E;->findRowMin(Z[I)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iget v2, p0, Landroidx/leanback/widget/E;->d:I

    .line 18
    .line 19
    add-int/2addr p1, v2

    .line 20
    if-gt v0, p1, :cond_1

    .line 21
    .line 22
    return v3

    .line 23
    :cond_1
    return v1

    .line 24
    :cond_2
    invoke-virtual {p0, v1, v2}, Landroidx/leanback/widget/E;->findRowMax(Z[I)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iget v2, p0, Landroidx/leanback/widget/E;->d:I

    .line 29
    .line 30
    sub-int/2addr p1, v2

    .line 31
    if-lt v0, p1, :cond_3

    .line 32
    .line 33
    return v3

    .line 34
    :cond_3
    return v1
.end method

.method public final checkPrependOverLimit(I)Z
    .locals 4

    .line 1
    iget v0, p0, Landroidx/leanback/widget/E;->g:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-gez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-boolean v0, p0, Landroidx/leanback/widget/E;->c:Z

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x1

    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    invoke-virtual {p0, v1, v2}, Landroidx/leanback/widget/E;->findRowMax(Z[I)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iget v2, p0, Landroidx/leanback/widget/E;->d:I

    .line 18
    .line 19
    sub-int/2addr p1, v2

    .line 20
    if-lt v0, p1, :cond_1

    .line 21
    .line 22
    return v3

    .line 23
    :cond_1
    return v1

    .line 24
    :cond_2
    invoke-virtual {p0, v3, v2}, Landroidx/leanback/widget/E;->findRowMin(Z[I)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iget v2, p0, Landroidx/leanback/widget/E;->d:I

    .line 29
    .line 30
    add-int/2addr p1, v2

    .line 31
    if-gt v0, p1, :cond_3

    .line 32
    .line 33
    return v3

    .line 34
    :cond_3
    return v1
.end method

.method public collectAdjacentPrefetchPositions(IILm1/g0;)V
    .locals 0

    .line 1
    return-void
.end method

.method public fillDisappearingItems([IILandroid/util/SparseIntArray;)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Landroidx/leanback/widget/E;->getLastVisibleIndex()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-ltz v0, :cond_0

    .line 7
    .line 8
    invoke-static {p1, v1, p2, v0}, Ljava/util/Arrays;->binarySearch([IIII)I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v2, v1

    .line 14
    :goto_0
    iget-object v3, p0, Landroidx/leanback/widget/E;->a:[Ljava/lang/Object;

    .line 15
    .line 16
    const/4 v4, 0x1

    .line 17
    if-gez v2, :cond_4

    .line 18
    .line 19
    neg-int v2, v2

    .line 20
    sub-int/2addr v2, v4

    .line 21
    iget-boolean v5, p0, Landroidx/leanback/widget/E;->c:Z

    .line 22
    .line 23
    if-eqz v5, :cond_1

    .line 24
    .line 25
    iget-object v5, p0, Landroidx/leanback/widget/E;->b:Landroidx/leanback/widget/D;

    .line 26
    .line 27
    check-cast v5, Landroidx/leanback/widget/G;

    .line 28
    .line 29
    invoke-virtual {v5, v0}, Landroidx/leanback/widget/G;->getEdge(I)I

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    iget-object v6, p0, Landroidx/leanback/widget/E;->b:Landroidx/leanback/widget/D;

    .line 34
    .line 35
    check-cast v6, Landroidx/leanback/widget/G;

    .line 36
    .line 37
    invoke-virtual {v6, v0}, Landroidx/leanback/widget/G;->getSize(I)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    sub-int/2addr v5, v0

    .line 42
    iget v0, p0, Landroidx/leanback/widget/E;->d:I

    .line 43
    .line 44
    sub-int/2addr v5, v0

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    iget-object v5, p0, Landroidx/leanback/widget/E;->b:Landroidx/leanback/widget/D;

    .line 47
    .line 48
    check-cast v5, Landroidx/leanback/widget/G;

    .line 49
    .line 50
    invoke-virtual {v5, v0}, Landroidx/leanback/widget/G;->getEdge(I)I

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    iget-object v6, p0, Landroidx/leanback/widget/E;->b:Landroidx/leanback/widget/D;

    .line 55
    .line 56
    check-cast v6, Landroidx/leanback/widget/G;

    .line 57
    .line 58
    invoke-virtual {v6, v0}, Landroidx/leanback/widget/G;->getSize(I)I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    add-int/2addr v0, v5

    .line 63
    iget v5, p0, Landroidx/leanback/widget/E;->d:I

    .line 64
    .line 65
    add-int/2addr v5, v0

    .line 66
    :goto_1
    move v10, v5

    .line 67
    :goto_2
    if-ge v2, p2, :cond_4

    .line 68
    .line 69
    aget v7, p1, v2

    .line 70
    .line 71
    invoke-virtual {p3, v7}, Landroid/util/SparseIntArray;->get(I)I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-gez v0, :cond_2

    .line 76
    .line 77
    move v9, v1

    .line 78
    goto :goto_3

    .line 79
    :cond_2
    move v9, v0

    .line 80
    :goto_3
    iget-object v0, p0, Landroidx/leanback/widget/E;->b:Landroidx/leanback/widget/D;

    .line 81
    .line 82
    check-cast v0, Landroidx/leanback/widget/G;

    .line 83
    .line 84
    invoke-virtual {v0, v7, v4, v3, v4}, Landroidx/leanback/widget/G;->createItem(IZ[Ljava/lang/Object;Z)I

    .line 85
    .line 86
    .line 87
    move-result v8

    .line 88
    iget-object v0, p0, Landroidx/leanback/widget/E;->b:Landroidx/leanback/widget/D;

    .line 89
    .line 90
    aget-object v6, v3, v1

    .line 91
    .line 92
    move-object v5, v0

    .line 93
    check-cast v5, Landroidx/leanback/widget/G;

    .line 94
    .line 95
    invoke-virtual/range {v5 .. v10}, Landroidx/leanback/widget/G;->addItem(Ljava/lang/Object;IIII)V

    .line 96
    .line 97
    .line 98
    iget-boolean v0, p0, Landroidx/leanback/widget/E;->c:Z

    .line 99
    .line 100
    if-eqz v0, :cond_3

    .line 101
    .line 102
    sub-int/2addr v10, v8

    .line 103
    iget v0, p0, Landroidx/leanback/widget/E;->d:I

    .line 104
    .line 105
    sub-int/2addr v10, v0

    .line 106
    goto :goto_4

    .line 107
    :cond_3
    add-int/2addr v10, v8

    .line 108
    iget v0, p0, Landroidx/leanback/widget/E;->d:I

    .line 109
    .line 110
    add-int/2addr v10, v0

    .line 111
    :goto_4
    add-int/lit8 v2, v2, 0x1

    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_4
    invoke-virtual {p0}, Landroidx/leanback/widget/E;->getFirstVisibleIndex()I

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    if-ltz v0, :cond_5

    .line 119
    .line 120
    invoke-static {p1, v1, p2, v0}, Ljava/util/Arrays;->binarySearch([IIII)I

    .line 121
    .line 122
    .line 123
    move-result p2

    .line 124
    goto :goto_5

    .line 125
    :cond_5
    move p2, v1

    .line 126
    :goto_5
    if-gez p2, :cond_9

    .line 127
    .line 128
    neg-int p2, p2

    .line 129
    add-int/lit8 p2, p2, -0x2

    .line 130
    .line 131
    iget-boolean v2, p0, Landroidx/leanback/widget/E;->c:Z

    .line 132
    .line 133
    if-eqz v2, :cond_6

    .line 134
    .line 135
    iget-object v2, p0, Landroidx/leanback/widget/E;->b:Landroidx/leanback/widget/D;

    .line 136
    .line 137
    check-cast v2, Landroidx/leanback/widget/G;

    .line 138
    .line 139
    invoke-virtual {v2, v0}, Landroidx/leanback/widget/G;->getEdge(I)I

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    goto :goto_6

    .line 144
    :cond_6
    iget-object v2, p0, Landroidx/leanback/widget/E;->b:Landroidx/leanback/widget/D;

    .line 145
    .line 146
    check-cast v2, Landroidx/leanback/widget/G;

    .line 147
    .line 148
    invoke-virtual {v2, v0}, Landroidx/leanback/widget/G;->getEdge(I)I

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    :goto_6
    if-ltz p2, :cond_9

    .line 153
    .line 154
    aget v7, p1, p2

    .line 155
    .line 156
    invoke-virtual {p3, v7}, Landroid/util/SparseIntArray;->get(I)I

    .line 157
    .line 158
    .line 159
    move-result v2

    .line 160
    if-gez v2, :cond_7

    .line 161
    .line 162
    move v9, v1

    .line 163
    goto :goto_7

    .line 164
    :cond_7
    move v9, v2

    .line 165
    :goto_7
    iget-object v2, p0, Landroidx/leanback/widget/E;->b:Landroidx/leanback/widget/D;

    .line 166
    .line 167
    check-cast v2, Landroidx/leanback/widget/G;

    .line 168
    .line 169
    invoke-virtual {v2, v7, v1, v3, v4}, Landroidx/leanback/widget/G;->createItem(IZ[Ljava/lang/Object;Z)I

    .line 170
    .line 171
    .line 172
    move-result v8

    .line 173
    iget-boolean v2, p0, Landroidx/leanback/widget/E;->c:Z

    .line 174
    .line 175
    if-eqz v2, :cond_8

    .line 176
    .line 177
    iget v2, p0, Landroidx/leanback/widget/E;->d:I

    .line 178
    .line 179
    add-int/2addr v0, v2

    .line 180
    add-int/2addr v0, v8

    .line 181
    :goto_8
    move v10, v0

    .line 182
    goto :goto_9

    .line 183
    :cond_8
    iget v2, p0, Landroidx/leanback/widget/E;->d:I

    .line 184
    .line 185
    sub-int/2addr v0, v2

    .line 186
    sub-int/2addr v0, v8

    .line 187
    goto :goto_8

    .line 188
    :goto_9
    iget-object v0, p0, Landroidx/leanback/widget/E;->b:Landroidx/leanback/widget/D;

    .line 189
    .line 190
    aget-object v6, v3, v1

    .line 191
    .line 192
    move-object v5, v0

    .line 193
    check-cast v5, Landroidx/leanback/widget/G;

    .line 194
    .line 195
    invoke-virtual/range {v5 .. v10}, Landroidx/leanback/widget/G;->addItem(Ljava/lang/Object;IIII)V

    .line 196
    .line 197
    .line 198
    add-int/lit8 p2, p2, -0x1

    .line 199
    .line 200
    move v0, v10

    .line 201
    goto :goto_6

    .line 202
    :cond_9
    return-void
.end method

.method public abstract findRowMax(ZI[I)I
.end method

.method public final findRowMax(Z[I)I
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/leanback/widget/E;->c:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/leanback/widget/E;->f:I

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/leanback/widget/E;->g:I

    :goto_0
    invoke-virtual {p0, p1, v0, p2}, Landroidx/leanback/widget/E;->findRowMax(ZI[I)I

    move-result p1

    return p1
.end method

.method public abstract findRowMin(ZI[I)I
.end method

.method public final findRowMin(Z[I)I
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/leanback/widget/E;->c:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/leanback/widget/E;->g:I

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/leanback/widget/E;->f:I

    :goto_0
    invoke-virtual {p0, p1, v0, p2}, Landroidx/leanback/widget/E;->findRowMin(ZI[I)I

    move-result p1

    return p1
.end method

.method public final getFirstVisibleIndex()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/leanback/widget/E;->f:I

    .line 2
    .line 3
    return v0
.end method

.method public final getItemPositionsInRows()[Lp/l;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/leanback/widget/E;->getFirstVisibleIndex()I

    move-result v0

    invoke-virtual {p0}, Landroidx/leanback/widget/E;->getLastVisibleIndex()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroidx/leanback/widget/E;->getItemPositionsInRows(II)[Lp/l;

    move-result-object v0

    return-object v0
.end method

.method public abstract getItemPositionsInRows(II)[Lp/l;
.end method

.method public final getLastVisibleIndex()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/leanback/widget/E;->g:I

    .line 2
    .line 3
    return v0
.end method

.method public abstract getLocation(I)Landroidx/leanback/widget/C;
.end method

.method public getNumRows()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/leanback/widget/E;->e:I

    .line 2
    .line 3
    return v0
.end method

.method public final getRowIndex(I)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/E;->getLocation(I)Landroidx/leanback/widget/C;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, -0x1

    .line 8
    return p1

    .line 9
    :cond_0
    iget p1, p1, Landroidx/leanback/widget/C;->a:I

    .line 10
    .line 11
    return p1
.end method

.method public invalidateItemsAfter(I)V
    .locals 2

    .line 1
    if-gez p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    iget v0, p0, Landroidx/leanback/widget/E;->g:I

    .line 5
    .line 6
    if-gez v0, :cond_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_1
    if-lt v0, p1, :cond_2

    .line 10
    .line 11
    add-int/lit8 v0, p1, -0x1

    .line 12
    .line 13
    iput v0, p0, Landroidx/leanback/widget/E;->g:I

    .line 14
    .line 15
    :cond_2
    iget v0, p0, Landroidx/leanback/widget/E;->g:I

    .line 16
    .line 17
    iget v1, p0, Landroidx/leanback/widget/E;->f:I

    .line 18
    .line 19
    if-ge v0, v1, :cond_3

    .line 20
    .line 21
    invoke-virtual {p0}, Landroidx/leanback/widget/E;->resetVisibleIndex()V

    .line 22
    .line 23
    .line 24
    :cond_3
    invoke-virtual {p0}, Landroidx/leanback/widget/E;->getFirstVisibleIndex()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-gez v0, :cond_4

    .line 29
    .line 30
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/E;->setStart(I)V

    .line 31
    .line 32
    .line 33
    :cond_4
    :goto_0
    return-void
.end method

.method public isReversedFlow()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/leanback/widget/E;->c:Z

    .line 2
    .line 3
    return v0
.end method

.method public final prependOneColumnVisibleItems()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/leanback/widget/E;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const v0, 0x7fffffff

    .line 9
    .line 10
    .line 11
    :goto_0
    const/4 v1, 0x1

    .line 12
    invoke-virtual {p0, v0, v1}, Landroidx/leanback/widget/E;->prependVisibleItems(IZ)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    return v0
.end method

.method public final prependVisibleItems(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Landroidx/leanback/widget/E;->prependVisibleItems(IZ)Z

    return-void
.end method

.method public abstract prependVisibleItems(IZ)Z
.end method

.method public removeInvisibleItemsAtEnd(II)V
    .locals 2

    .line 1
    :goto_0
    iget v0, p0, Landroidx/leanback/widget/E;->g:I

    .line 2
    .line 3
    iget v1, p0, Landroidx/leanback/widget/E;->f:I

    .line 4
    .line 5
    if-lt v0, v1, :cond_1

    .line 6
    .line 7
    if-le v0, p1, :cond_1

    .line 8
    .line 9
    iget-boolean v1, p0, Landroidx/leanback/widget/E;->c:Z

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Landroidx/leanback/widget/E;->b:Landroidx/leanback/widget/D;

    .line 14
    .line 15
    check-cast v1, Landroidx/leanback/widget/G;

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Landroidx/leanback/widget/G;->getEdge(I)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-lt v0, p2, :cond_1

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    iget-object v1, p0, Landroidx/leanback/widget/E;->b:Landroidx/leanback/widget/D;

    .line 25
    .line 26
    check-cast v1, Landroidx/leanback/widget/G;

    .line 27
    .line 28
    invoke-virtual {v1, v0}, Landroidx/leanback/widget/G;->getEdge(I)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-gt v0, p2, :cond_1

    .line 33
    .line 34
    :goto_1
    iget-object v0, p0, Landroidx/leanback/widget/E;->b:Landroidx/leanback/widget/D;

    .line 35
    .line 36
    iget v1, p0, Landroidx/leanback/widget/E;->g:I

    .line 37
    .line 38
    check-cast v0, Landroidx/leanback/widget/G;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroidx/leanback/widget/G;->removeItem(I)V

    .line 41
    .line 42
    .line 43
    iget v0, p0, Landroidx/leanback/widget/E;->g:I

    .line 44
    .line 45
    add-int/lit8 v0, v0, -0x1

    .line 46
    .line 47
    iput v0, p0, Landroidx/leanback/widget/E;->g:I

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    iget p1, p0, Landroidx/leanback/widget/E;->g:I

    .line 51
    .line 52
    iget p2, p0, Landroidx/leanback/widget/E;->f:I

    .line 53
    .line 54
    if-ge p1, p2, :cond_2

    .line 55
    .line 56
    invoke-virtual {p0}, Landroidx/leanback/widget/E;->resetVisibleIndex()V

    .line 57
    .line 58
    .line 59
    :cond_2
    return-void
.end method

.method public removeInvisibleItemsAtFront(II)V
    .locals 3

    .line 1
    :goto_0
    iget v0, p0, Landroidx/leanback/widget/E;->g:I

    .line 2
    .line 3
    iget v1, p0, Landroidx/leanback/widget/E;->f:I

    .line 4
    .line 5
    if-lt v0, v1, :cond_1

    .line 6
    .line 7
    if-ge v1, p1, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/leanback/widget/E;->b:Landroidx/leanback/widget/D;

    .line 10
    .line 11
    check-cast v0, Landroidx/leanback/widget/G;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroidx/leanback/widget/G;->getSize(I)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iget-boolean v1, p0, Landroidx/leanback/widget/E;->c:Z

    .line 18
    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    iget-object v1, p0, Landroidx/leanback/widget/E;->b:Landroidx/leanback/widget/D;

    .line 22
    .line 23
    iget v2, p0, Landroidx/leanback/widget/E;->f:I

    .line 24
    .line 25
    check-cast v1, Landroidx/leanback/widget/G;

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Landroidx/leanback/widget/G;->getEdge(I)I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    add-int/2addr v1, v0

    .line 32
    if-gt v1, p2, :cond_1

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    iget-object v1, p0, Landroidx/leanback/widget/E;->b:Landroidx/leanback/widget/D;

    .line 36
    .line 37
    iget v2, p0, Landroidx/leanback/widget/E;->f:I

    .line 38
    .line 39
    check-cast v1, Landroidx/leanback/widget/G;

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Landroidx/leanback/widget/G;->getEdge(I)I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    sub-int/2addr v1, v0

    .line 46
    if-lt v1, p2, :cond_1

    .line 47
    .line 48
    :goto_1
    iget-object v0, p0, Landroidx/leanback/widget/E;->b:Landroidx/leanback/widget/D;

    .line 49
    .line 50
    iget v1, p0, Landroidx/leanback/widget/E;->f:I

    .line 51
    .line 52
    check-cast v0, Landroidx/leanback/widget/G;

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Landroidx/leanback/widget/G;->removeItem(I)V

    .line 55
    .line 56
    .line 57
    iget v0, p0, Landroidx/leanback/widget/E;->f:I

    .line 58
    .line 59
    add-int/lit8 v0, v0, 0x1

    .line 60
    .line 61
    iput v0, p0, Landroidx/leanback/widget/E;->f:I

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    iget p1, p0, Landroidx/leanback/widget/E;->g:I

    .line 65
    .line 66
    iget p2, p0, Landroidx/leanback/widget/E;->f:I

    .line 67
    .line 68
    if-ge p1, p2, :cond_2

    .line 69
    .line 70
    invoke-virtual {p0}, Landroidx/leanback/widget/E;->resetVisibleIndex()V

    .line 71
    .line 72
    .line 73
    :cond_2
    return-void
.end method

.method public resetVisibleIndex()V
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Landroidx/leanback/widget/E;->g:I

    .line 3
    .line 4
    iput v0, p0, Landroidx/leanback/widget/E;->f:I

    .line 5
    .line 6
    return-void
.end method

.method public setProvider(Landroidx/leanback/widget/D;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/leanback/widget/E;->b:Landroidx/leanback/widget/D;

    .line 2
    .line 3
    return-void
.end method

.method public final setReversedFlow(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/leanback/widget/E;->c:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setSpacing(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/leanback/widget/E;->d:I

    .line 2
    .line 3
    return-void
.end method

.method public setStart(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/leanback/widget/E;->i:I

    .line 2
    .line 3
    return-void
.end method
