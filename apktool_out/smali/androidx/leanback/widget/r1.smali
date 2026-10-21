.class public abstract Landroidx/leanback/widget/r1;
.super Landroidx/leanback/widget/E;
.source "SourceFile"


# instance fields
.field public j:Lp/k;

.field public k:I

.field public l:Ljava/lang/Object;

.field public m:I


# virtual methods
.method public final appendVisbleItemsWithCache(IZ)Z
    .locals 13

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/r1;->j:Lp/k;

    .line 2
    .line 3
    invoke-virtual {v0}, Lp/k;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    return v2

    .line 11
    :cond_0
    iget-object v1, p0, Landroidx/leanback/widget/E;->b:Landroidx/leanback/widget/D;

    .line 12
    .line 13
    check-cast v1, Landroidx/leanback/widget/G;

    .line 14
    .line 15
    invoke-virtual {v1}, Landroidx/leanback/widget/G;->getCount()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    iget v3, p0, Landroidx/leanback/widget/E;->g:I

    .line 20
    .line 21
    const v4, 0x7fffffff

    .line 22
    .line 23
    .line 24
    const/4 v5, 0x1

    .line 25
    if-ltz v3, :cond_1

    .line 26
    .line 27
    add-int/lit8 v6, v3, 0x1

    .line 28
    .line 29
    iget-object v7, p0, Landroidx/leanback/widget/E;->b:Landroidx/leanback/widget/D;

    .line 30
    .line 31
    check-cast v7, Landroidx/leanback/widget/G;

    .line 32
    .line 33
    invoke-virtual {v7, v3}, Landroidx/leanback/widget/G;->getEdge(I)I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    iget v3, p0, Landroidx/leanback/widget/E;->i:I

    .line 39
    .line 40
    const/4 v6, -0x1

    .line 41
    if-eq v3, v6, :cond_2

    .line 42
    .line 43
    move v6, v3

    .line 44
    goto :goto_0

    .line 45
    :cond_2
    move v6, v2

    .line 46
    :goto_0
    invoke-virtual {p0}, Landroidx/leanback/widget/r1;->getLastIndex()I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    add-int/2addr v3, v5

    .line 51
    if-gt v6, v3, :cond_c

    .line 52
    .line 53
    invoke-virtual {p0}, Landroidx/leanback/widget/r1;->getFirstIndex()I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    if-ge v6, v3, :cond_3

    .line 58
    .line 59
    goto/16 :goto_5

    .line 60
    .line 61
    :cond_3
    invoke-virtual {p0}, Landroidx/leanback/widget/r1;->getLastIndex()I

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-le v6, v3, :cond_4

    .line 66
    .line 67
    return v2

    .line 68
    :cond_4
    move v3, v4

    .line 69
    :goto_1
    invoke-virtual {p0}, Landroidx/leanback/widget/r1;->getLastIndex()I

    .line 70
    .line 71
    .line 72
    move-result v7

    .line 73
    move v8, v6

    .line 74
    :goto_2
    if-ge v8, v1, :cond_b

    .line 75
    .line 76
    if-gt v8, v7, :cond_b

    .line 77
    .line 78
    invoke-virtual {p0, v8}, Landroidx/leanback/widget/r1;->getLocation(I)Landroidx/leanback/widget/q1;

    .line 79
    .line 80
    .line 81
    move-result-object v6

    .line 82
    if-eq v3, v4, :cond_5

    .line 83
    .line 84
    iget v9, v6, Landroidx/leanback/widget/q1;->b:I

    .line 85
    .line 86
    add-int/2addr v3, v9

    .line 87
    :cond_5
    move v11, v3

    .line 88
    iget v10, v6, Landroidx/leanback/widget/C;->a:I

    .line 89
    .line 90
    iget-object v3, p0, Landroidx/leanback/widget/E;->b:Landroidx/leanback/widget/D;

    .line 91
    .line 92
    check-cast v3, Landroidx/leanback/widget/G;

    .line 93
    .line 94
    iget-object v9, p0, Landroidx/leanback/widget/E;->a:[Ljava/lang/Object;

    .line 95
    .line 96
    invoke-virtual {v3, v8, v5, v9, v2}, Landroidx/leanback/widget/G;->createItem(IZ[Ljava/lang/Object;Z)I

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    iget v12, v6, Landroidx/leanback/widget/q1;->c:I

    .line 101
    .line 102
    if-eq v3, v12, :cond_6

    .line 103
    .line 104
    iput v3, v6, Landroidx/leanback/widget/q1;->c:I

    .line 105
    .line 106
    sub-int/2addr v7, v8

    .line 107
    invoke-virtual {v0, v7}, Lp/k;->removeFromEnd(I)V

    .line 108
    .line 109
    .line 110
    move v12, v8

    .line 111
    goto :goto_3

    .line 112
    :cond_6
    move v12, v7

    .line 113
    :goto_3
    iput v8, p0, Landroidx/leanback/widget/E;->g:I

    .line 114
    .line 115
    iget v6, p0, Landroidx/leanback/widget/E;->f:I

    .line 116
    .line 117
    if-gez v6, :cond_7

    .line 118
    .line 119
    iput v8, p0, Landroidx/leanback/widget/E;->f:I

    .line 120
    .line 121
    :cond_7
    iget-object v6, p0, Landroidx/leanback/widget/E;->b:Landroidx/leanback/widget/D;

    .line 122
    .line 123
    aget-object v7, v9, v2

    .line 124
    .line 125
    check-cast v6, Landroidx/leanback/widget/G;

    .line 126
    .line 127
    move v9, v3

    .line 128
    invoke-virtual/range {v6 .. v11}, Landroidx/leanback/widget/G;->addItem(Ljava/lang/Object;IIII)V

    .line 129
    .line 130
    .line 131
    if-nez p2, :cond_8

    .line 132
    .line 133
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/E;->checkAppendOverLimit(I)Z

    .line 134
    .line 135
    .line 136
    move-result v3

    .line 137
    if-eqz v3, :cond_8

    .line 138
    .line 139
    return v5

    .line 140
    :cond_8
    if-ne v11, v4, :cond_9

    .line 141
    .line 142
    iget-object v3, p0, Landroidx/leanback/widget/E;->b:Landroidx/leanback/widget/D;

    .line 143
    .line 144
    check-cast v3, Landroidx/leanback/widget/G;

    .line 145
    .line 146
    invoke-virtual {v3, v8}, Landroidx/leanback/widget/G;->getEdge(I)I

    .line 147
    .line 148
    .line 149
    move-result v3

    .line 150
    goto :goto_4

    .line 151
    :cond_9
    move v3, v11

    .line 152
    :goto_4
    iget v6, p0, Landroidx/leanback/widget/E;->e:I

    .line 153
    .line 154
    sub-int/2addr v6, v5

    .line 155
    if-ne v10, v6, :cond_a

    .line 156
    .line 157
    if-eqz p2, :cond_a

    .line 158
    .line 159
    return v5

    .line 160
    :cond_a
    add-int/lit8 v8, v8, 0x1

    .line 161
    .line 162
    move v7, v12

    .line 163
    goto :goto_2

    .line 164
    :cond_b
    return v2

    .line 165
    :cond_c
    :goto_5
    invoke-virtual {v0}, Lp/k;->clear()V

    .line 166
    .line 167
    .line 168
    return v2
.end method

.method public final appendVisibleItemToRow(III)I
    .locals 11

    .line 1
    iget v0, p0, Landroidx/leanback/widget/E;->g:I

    .line 2
    .line 3
    if-ltz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/leanback/widget/r1;->getLastIndex()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    iget v0, p0, Landroidx/leanback/widget/E;->g:I

    .line 12
    .line 13
    add-int/lit8 v1, p1, -0x1

    .line 14
    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 19
    .line 20
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 21
    .line 22
    .line 23
    throw p1

    .line 24
    :cond_1
    :goto_0
    iget v0, p0, Landroidx/leanback/widget/E;->g:I

    .line 25
    .line 26
    iget-object v1, p0, Landroidx/leanback/widget/r1;->j:Lp/k;

    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    const/4 v3, 0x0

    .line 30
    if-gez v0, :cond_6

    .line 31
    .line 32
    invoke-virtual {v1}, Lp/k;->size()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-lez v0, :cond_5

    .line 37
    .line 38
    invoke-virtual {p0}, Landroidx/leanback/widget/r1;->getLastIndex()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    add-int/2addr v0, v2

    .line 43
    if-ne p1, v0, :cond_5

    .line 44
    .line 45
    invoke-virtual {p0}, Landroidx/leanback/widget/r1;->getLastIndex()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    :goto_1
    iget v4, p0, Landroidx/leanback/widget/r1;->k:I

    .line 50
    .line 51
    if-lt v0, v4, :cond_3

    .line 52
    .line 53
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/r1;->getLocation(I)Landroidx/leanback/widget/q1;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    iget v4, v4, Landroidx/leanback/widget/C;->a:I

    .line 58
    .line 59
    if-ne v4, p2, :cond_2

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_2
    add-int/lit8 v0, v0, -0x1

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_3
    invoke-virtual {p0}, Landroidx/leanback/widget/r1;->getLastIndex()I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    :goto_2
    invoke-virtual {p0}, Landroidx/leanback/widget/E;->isReversedFlow()Z

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    if-eqz v4, :cond_4

    .line 74
    .line 75
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/r1;->getLocation(I)Landroidx/leanback/widget/q1;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    iget v4, v4, Landroidx/leanback/widget/q1;->c:I

    .line 80
    .line 81
    neg-int v4, v4

    .line 82
    iget v5, p0, Landroidx/leanback/widget/E;->d:I

    .line 83
    .line 84
    sub-int/2addr v4, v5

    .line 85
    goto :goto_3

    .line 86
    :cond_4
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/r1;->getLocation(I)Landroidx/leanback/widget/q1;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    iget v4, v4, Landroidx/leanback/widget/q1;->c:I

    .line 91
    .line 92
    iget v5, p0, Landroidx/leanback/widget/E;->d:I

    .line 93
    .line 94
    add-int/2addr v4, v5

    .line 95
    :goto_3
    add-int/2addr v0, v2

    .line 96
    :goto_4
    invoke-virtual {p0}, Landroidx/leanback/widget/r1;->getLastIndex()I

    .line 97
    .line 98
    .line 99
    move-result v5

    .line 100
    if-gt v0, v5, :cond_7

    .line 101
    .line 102
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/r1;->getLocation(I)Landroidx/leanback/widget/q1;

    .line 103
    .line 104
    .line 105
    move-result-object v5

    .line 106
    iget v5, v5, Landroidx/leanback/widget/q1;->b:I

    .line 107
    .line 108
    sub-int/2addr v4, v5

    .line 109
    add-int/lit8 v0, v0, 0x1

    .line 110
    .line 111
    goto :goto_4

    .line 112
    :cond_5
    move v4, v3

    .line 113
    goto :goto_5

    .line 114
    :cond_6
    iget-object v4, p0, Landroidx/leanback/widget/E;->b:Landroidx/leanback/widget/D;

    .line 115
    .line 116
    check-cast v4, Landroidx/leanback/widget/G;

    .line 117
    .line 118
    invoke-virtual {v4, v0}, Landroidx/leanback/widget/G;->getEdge(I)I

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    sub-int v4, p3, v0

    .line 123
    .line 124
    :cond_7
    :goto_5
    new-instance v0, Landroidx/leanback/widget/q1;

    .line 125
    .line 126
    invoke-direct {v0, p2, v4}, Landroidx/leanback/widget/q1;-><init>(II)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1, v0}, Lp/k;->addLast(Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    iget-object v4, p0, Landroidx/leanback/widget/r1;->l:Ljava/lang/Object;

    .line 133
    .line 134
    if-eqz v4, :cond_8

    .line 135
    .line 136
    iget v3, p0, Landroidx/leanback/widget/r1;->m:I

    .line 137
    .line 138
    iput v3, v0, Landroidx/leanback/widget/q1;->c:I

    .line 139
    .line 140
    const/4 v3, 0x0

    .line 141
    iput-object v3, p0, Landroidx/leanback/widget/r1;->l:Ljava/lang/Object;

    .line 142
    .line 143
    :goto_6
    move-object v6, v4

    .line 144
    goto :goto_7

    .line 145
    :cond_8
    iget-object v4, p0, Landroidx/leanback/widget/E;->b:Landroidx/leanback/widget/D;

    .line 146
    .line 147
    check-cast v4, Landroidx/leanback/widget/G;

    .line 148
    .line 149
    iget-object v5, p0, Landroidx/leanback/widget/E;->a:[Ljava/lang/Object;

    .line 150
    .line 151
    invoke-virtual {v4, p1, v2, v5, v3}, Landroidx/leanback/widget/G;->createItem(IZ[Ljava/lang/Object;Z)I

    .line 152
    .line 153
    .line 154
    move-result v4

    .line 155
    iput v4, v0, Landroidx/leanback/widget/q1;->c:I

    .line 156
    .line 157
    aget-object v4, v5, v3

    .line 158
    .line 159
    goto :goto_6

    .line 160
    :goto_7
    invoke-virtual {v1}, Lp/k;->size()I

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    if-ne v1, v2, :cond_9

    .line 165
    .line 166
    iput p1, p0, Landroidx/leanback/widget/E;->g:I

    .line 167
    .line 168
    iput p1, p0, Landroidx/leanback/widget/E;->f:I

    .line 169
    .line 170
    iput p1, p0, Landroidx/leanback/widget/r1;->k:I

    .line 171
    .line 172
    goto :goto_8

    .line 173
    :cond_9
    iget v1, p0, Landroidx/leanback/widget/E;->g:I

    .line 174
    .line 175
    if-gez v1, :cond_a

    .line 176
    .line 177
    iput p1, p0, Landroidx/leanback/widget/E;->g:I

    .line 178
    .line 179
    iput p1, p0, Landroidx/leanback/widget/E;->f:I

    .line 180
    .line 181
    goto :goto_8

    .line 182
    :cond_a
    add-int/2addr v1, v2

    .line 183
    iput v1, p0, Landroidx/leanback/widget/E;->g:I

    .line 184
    .line 185
    :goto_8
    iget-object v1, p0, Landroidx/leanback/widget/E;->b:Landroidx/leanback/widget/D;

    .line 186
    .line 187
    iget v8, v0, Landroidx/leanback/widget/q1;->c:I

    .line 188
    .line 189
    move-object v5, v1

    .line 190
    check-cast v5, Landroidx/leanback/widget/G;

    .line 191
    .line 192
    move v7, p1

    .line 193
    move v9, p2

    .line 194
    move v10, p3

    .line 195
    invoke-virtual/range {v5 .. v10}, Landroidx/leanback/widget/G;->addItem(Ljava/lang/Object;IIII)V

    .line 196
    .line 197
    .line 198
    iget p1, v0, Landroidx/leanback/widget/q1;->c:I

    .line 199
    .line 200
    return p1
.end method

.method public final appendVisibleItems(IZ)Z
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/E;->a:[Ljava/lang/Object;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/leanback/widget/E;->b:Landroidx/leanback/widget/D;

    .line 4
    .line 5
    check-cast v1, Landroidx/leanback/widget/G;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroidx/leanback/widget/G;->getCount()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    return v2

    .line 15
    :cond_0
    if-nez p2, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/E;->checkAppendOverLimit(I)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    return v2

    .line 24
    :cond_1
    const/4 v1, 0x0

    .line 25
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/r1;->appendVisbleItemsWithCache(IZ)Z

    .line 26
    .line 27
    .line 28
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    if-eqz v3, :cond_2

    .line 30
    .line 31
    aput-object v1, v0, v2

    .line 32
    .line 33
    iput-object v1, p0, Landroidx/leanback/widget/r1;->l:Ljava/lang/Object;

    .line 34
    .line 35
    const/4 p1, 0x1

    .line 36
    return p1

    .line 37
    :cond_2
    :try_start_1
    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/r1;->appendVisibleItemsWithoutCache(IZ)Z

    .line 38
    .line 39
    .line 40
    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    aput-object v1, v0, v2

    .line 42
    .line 43
    iput-object v1, p0, Landroidx/leanback/widget/r1;->l:Ljava/lang/Object;

    .line 44
    .line 45
    return p1

    .line 46
    :catchall_0
    move-exception p1

    .line 47
    aput-object v1, v0, v2

    .line 48
    .line 49
    iput-object v1, p0, Landroidx/leanback/widget/r1;->l:Ljava/lang/Object;

    .line 50
    .line 51
    throw p1
.end method

.method public abstract appendVisibleItemsWithoutCache(IZ)Z
.end method

.method public final getFirstIndex()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/leanback/widget/r1;->k:I

    .line 2
    .line 3
    return v0
.end method

.method public final getItemPositionsInRows(II)[Lp/l;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v1, p0, Landroidx/leanback/widget/E;->e:I

    .line 3
    .line 4
    if-ge v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/leanback/widget/E;->h:[Lp/l;

    .line 7
    .line 8
    aget-object v1, v1, v0

    .line 9
    .line 10
    invoke-virtual {v1}, Lp/l;->clear()V

    .line 11
    .line 12
    .line 13
    add-int/lit8 v0, v0, 0x1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    if-ltz p1, :cond_2

    .line 17
    .line 18
    :goto_1
    if-gt p1, p2, :cond_2

    .line 19
    .line 20
    iget-object v0, p0, Landroidx/leanback/widget/E;->h:[Lp/l;

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/r1;->getLocation(I)Landroidx/leanback/widget/q1;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iget v1, v1, Landroidx/leanback/widget/C;->a:I

    .line 27
    .line 28
    aget-object v0, v0, v1

    .line 29
    .line 30
    invoke-virtual {v0}, Lp/l;->size()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-lez v1, :cond_1

    .line 35
    .line 36
    invoke-virtual {v0}, Lp/l;->getLast()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    add-int/lit8 v2, p1, -0x1

    .line 41
    .line 42
    if-ne v1, v2, :cond_1

    .line 43
    .line 44
    invoke-virtual {v0}, Lp/l;->popLast()I

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p1}, Lp/l;->addLast(I)V

    .line 48
    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_1
    invoke-virtual {v0, p1}, Lp/l;->addLast(I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, p1}, Lp/l;->addLast(I)V

    .line 55
    .line 56
    .line 57
    :goto_2
    add-int/lit8 p1, p1, 0x1

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_2
    iget-object p1, p0, Landroidx/leanback/widget/E;->h:[Lp/l;

    .line 61
    .line 62
    return-object p1
.end method

.method public final getLastIndex()I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/leanback/widget/r1;->k:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/leanback/widget/r1;->j:Lp/k;

    .line 4
    .line 5
    invoke-virtual {v1}, Lp/k;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    add-int/2addr v1, v0

    .line 10
    add-int/lit8 v1, v1, -0x1

    .line 11
    .line 12
    return v1
.end method

.method public bridge synthetic getLocation(I)Landroidx/leanback/widget/C;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/r1;->getLocation(I)Landroidx/leanback/widget/q1;

    move-result-object p1

    return-object p1
.end method

.method public final getLocation(I)Landroidx/leanback/widget/q1;
    .locals 2

    .line 2
    iget v0, p0, Landroidx/leanback/widget/r1;->k:I

    sub-int/2addr p1, v0

    if-ltz p1, :cond_1

    .line 3
    iget-object v0, p0, Landroidx/leanback/widget/r1;->j:Lp/k;

    invoke-virtual {v0}, Lp/k;->size()I

    move-result v1

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0, p1}, Lp/k;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/leanback/widget/q1;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public invalidateItemsAfter(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/leanback/widget/E;->invalidateItemsAfter(I)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/leanback/widget/r1;->getLastIndex()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    sub-int/2addr v0, p1

    .line 9
    add-int/lit8 v0, v0, 0x1

    .line 10
    .line 11
    iget-object p1, p0, Landroidx/leanback/widget/r1;->j:Lp/k;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lp/k;->removeFromEnd(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lp/k;->size()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    const/4 p1, -0x1

    .line 23
    iput p1, p0, Landroidx/leanback/widget/r1;->k:I

    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public final prependVisbleItemsWithCache(IZ)Z
    .locals 13

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/r1;->j:Lp/k;

    .line 2
    .line 3
    invoke-virtual {v0}, Lp/k;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    return v2

    .line 11
    :cond_0
    iget v1, p0, Landroidx/leanback/widget/E;->f:I

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    if-ltz v1, :cond_1

    .line 15
    .line 16
    iget-object v4, p0, Landroidx/leanback/widget/E;->b:Landroidx/leanback/widget/D;

    .line 17
    .line 18
    check-cast v4, Landroidx/leanback/widget/G;

    .line 19
    .line 20
    invoke-virtual {v4, v1}, Landroidx/leanback/widget/G;->getEdge(I)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    iget v4, p0, Landroidx/leanback/widget/E;->f:I

    .line 25
    .line 26
    invoke-virtual {p0, v4}, Landroidx/leanback/widget/r1;->getLocation(I)Landroidx/leanback/widget/q1;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    iget v4, v4, Landroidx/leanback/widget/q1;->b:I

    .line 31
    .line 32
    iget v5, p0, Landroidx/leanback/widget/E;->f:I

    .line 33
    .line 34
    sub-int/2addr v5, v3

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    iget v1, p0, Landroidx/leanback/widget/E;->i:I

    .line 37
    .line 38
    const/4 v4, -0x1

    .line 39
    if-eq v1, v4, :cond_2

    .line 40
    .line 41
    move v5, v1

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    move v5, v2

    .line 44
    :goto_0
    invoke-virtual {p0}, Landroidx/leanback/widget/r1;->getLastIndex()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-gt v5, v1, :cond_a

    .line 49
    .line 50
    invoke-virtual {p0}, Landroidx/leanback/widget/r1;->getFirstIndex()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    sub-int/2addr v1, v3

    .line 55
    if-ge v5, v1, :cond_3

    .line 56
    .line 57
    goto/16 :goto_3

    .line 58
    .line 59
    :cond_3
    invoke-virtual {p0}, Landroidx/leanback/widget/r1;->getFirstIndex()I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-ge v5, v1, :cond_4

    .line 64
    .line 65
    return v2

    .line 66
    :cond_4
    const v1, 0x7fffffff

    .line 67
    .line 68
    .line 69
    move v4, v2

    .line 70
    :goto_1
    iget-object v6, p0, Landroidx/leanback/widget/E;->b:Landroidx/leanback/widget/D;

    .line 71
    .line 72
    check-cast v6, Landroidx/leanback/widget/G;

    .line 73
    .line 74
    invoke-virtual {v6}, Landroidx/leanback/widget/G;->getMinIndex()I

    .line 75
    .line 76
    .line 77
    move-result v6

    .line 78
    iget v7, p0, Landroidx/leanback/widget/r1;->k:I

    .line 79
    .line 80
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    .line 81
    .line 82
    .line 83
    move-result v6

    .line 84
    move v9, v5

    .line 85
    :goto_2
    if-lt v9, v6, :cond_9

    .line 86
    .line 87
    invoke-virtual {p0, v9}, Landroidx/leanback/widget/r1;->getLocation(I)Landroidx/leanback/widget/q1;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    iget v11, v5, Landroidx/leanback/widget/C;->a:I

    .line 92
    .line 93
    iget-object v7, p0, Landroidx/leanback/widget/E;->b:Landroidx/leanback/widget/D;

    .line 94
    .line 95
    check-cast v7, Landroidx/leanback/widget/G;

    .line 96
    .line 97
    iget-object v8, p0, Landroidx/leanback/widget/E;->a:[Ljava/lang/Object;

    .line 98
    .line 99
    invoke-virtual {v7, v9, v2, v8, v2}, Landroidx/leanback/widget/G;->createItem(IZ[Ljava/lang/Object;Z)I

    .line 100
    .line 101
    .line 102
    move-result v10

    .line 103
    iget v7, v5, Landroidx/leanback/widget/q1;->c:I

    .line 104
    .line 105
    if-eq v10, v7, :cond_5

    .line 106
    .line 107
    add-int/2addr v9, v3

    .line 108
    iget p1, p0, Landroidx/leanback/widget/r1;->k:I

    .line 109
    .line 110
    sub-int/2addr v9, p1

    .line 111
    invoke-virtual {v0, v9}, Lp/k;->removeFromStart(I)V

    .line 112
    .line 113
    .line 114
    iget p1, p0, Landroidx/leanback/widget/E;->f:I

    .line 115
    .line 116
    iput p1, p0, Landroidx/leanback/widget/r1;->k:I

    .line 117
    .line 118
    aget-object p1, v8, v2

    .line 119
    .line 120
    iput-object p1, p0, Landroidx/leanback/widget/r1;->l:Ljava/lang/Object;

    .line 121
    .line 122
    iput v10, p0, Landroidx/leanback/widget/r1;->m:I

    .line 123
    .line 124
    return v2

    .line 125
    :cond_5
    iput v9, p0, Landroidx/leanback/widget/E;->f:I

    .line 126
    .line 127
    iget v7, p0, Landroidx/leanback/widget/E;->g:I

    .line 128
    .line 129
    if-gez v7, :cond_6

    .line 130
    .line 131
    iput v9, p0, Landroidx/leanback/widget/E;->g:I

    .line 132
    .line 133
    :cond_6
    iget-object v7, p0, Landroidx/leanback/widget/E;->b:Landroidx/leanback/widget/D;

    .line 134
    .line 135
    aget-object v8, v8, v2

    .line 136
    .line 137
    sub-int v12, v1, v4

    .line 138
    .line 139
    check-cast v7, Landroidx/leanback/widget/G;

    .line 140
    .line 141
    invoke-virtual/range {v7 .. v12}, Landroidx/leanback/widget/G;->addItem(Ljava/lang/Object;IIII)V

    .line 142
    .line 143
    .line 144
    if-nez p2, :cond_7

    .line 145
    .line 146
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/E;->checkPrependOverLimit(I)Z

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    if-eqz v1, :cond_7

    .line 151
    .line 152
    return v3

    .line 153
    :cond_7
    iget-object v1, p0, Landroidx/leanback/widget/E;->b:Landroidx/leanback/widget/D;

    .line 154
    .line 155
    check-cast v1, Landroidx/leanback/widget/G;

    .line 156
    .line 157
    invoke-virtual {v1, v9}, Landroidx/leanback/widget/G;->getEdge(I)I

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    iget v4, v5, Landroidx/leanback/widget/q1;->b:I

    .line 162
    .line 163
    if-nez v11, :cond_8

    .line 164
    .line 165
    if-eqz p2, :cond_8

    .line 166
    .line 167
    return v3

    .line 168
    :cond_8
    add-int/lit8 v9, v9, -0x1

    .line 169
    .line 170
    goto :goto_2

    .line 171
    :cond_9
    return v2

    .line 172
    :cond_a
    :goto_3
    invoke-virtual {v0}, Lp/k;->clear()V

    .line 173
    .line 174
    .line 175
    return v2
.end method

.method public final prependVisibleItemToRow(III)I
    .locals 12

    .line 1
    iget v0, p0, Landroidx/leanback/widget/E;->f:I

    .line 2
    .line 3
    if-ltz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/leanback/widget/r1;->getFirstIndex()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    iget v0, p0, Landroidx/leanback/widget/E;->f:I

    .line 12
    .line 13
    add-int/lit8 v1, p1, 0x1

    .line 14
    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 19
    .line 20
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 21
    .line 22
    .line 23
    throw p1

    .line 24
    :cond_1
    :goto_0
    iget v0, p0, Landroidx/leanback/widget/r1;->k:I

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    if-ltz v0, :cond_2

    .line 28
    .line 29
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/r1;->getLocation(I)Landroidx/leanback/widget/q1;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    goto :goto_1

    .line 34
    :cond_2
    move-object v0, v1

    .line 35
    :goto_1
    iget-object v2, p0, Landroidx/leanback/widget/E;->b:Landroidx/leanback/widget/D;

    .line 36
    .line 37
    iget v3, p0, Landroidx/leanback/widget/r1;->k:I

    .line 38
    .line 39
    check-cast v2, Landroidx/leanback/widget/G;

    .line 40
    .line 41
    invoke-virtual {v2, v3}, Landroidx/leanback/widget/G;->getEdge(I)I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    new-instance v3, Landroidx/leanback/widget/q1;

    .line 46
    .line 47
    const/4 v4, 0x0

    .line 48
    invoke-direct {v3, p2, v4}, Landroidx/leanback/widget/q1;-><init>(II)V

    .line 49
    .line 50
    .line 51
    iget-object v5, p0, Landroidx/leanback/widget/r1;->j:Lp/k;

    .line 52
    .line 53
    invoke-virtual {v5, v3}, Lp/k;->addFirst(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    iget-object v5, p0, Landroidx/leanback/widget/r1;->l:Ljava/lang/Object;

    .line 57
    .line 58
    if-eqz v5, :cond_3

    .line 59
    .line 60
    iget v4, p0, Landroidx/leanback/widget/r1;->m:I

    .line 61
    .line 62
    iput v4, v3, Landroidx/leanback/widget/q1;->c:I

    .line 63
    .line 64
    iput-object v1, p0, Landroidx/leanback/widget/r1;->l:Ljava/lang/Object;

    .line 65
    .line 66
    :goto_2
    move-object v7, v5

    .line 67
    goto :goto_3

    .line 68
    :cond_3
    iget-object v1, p0, Landroidx/leanback/widget/E;->b:Landroidx/leanback/widget/D;

    .line 69
    .line 70
    check-cast v1, Landroidx/leanback/widget/G;

    .line 71
    .line 72
    iget-object v5, p0, Landroidx/leanback/widget/E;->a:[Ljava/lang/Object;

    .line 73
    .line 74
    invoke-virtual {v1, p1, v4, v5, v4}, Landroidx/leanback/widget/G;->createItem(IZ[Ljava/lang/Object;Z)I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    iput v1, v3, Landroidx/leanback/widget/q1;->c:I

    .line 79
    .line 80
    aget-object v5, v5, v4

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :goto_3
    iput p1, p0, Landroidx/leanback/widget/E;->f:I

    .line 84
    .line 85
    iput p1, p0, Landroidx/leanback/widget/r1;->k:I

    .line 86
    .line 87
    iget v1, p0, Landroidx/leanback/widget/E;->g:I

    .line 88
    .line 89
    if-gez v1, :cond_4

    .line 90
    .line 91
    iput p1, p0, Landroidx/leanback/widget/E;->g:I

    .line 92
    .line 93
    :cond_4
    iget-boolean v1, p0, Landroidx/leanback/widget/E;->c:Z

    .line 94
    .line 95
    if-nez v1, :cond_5

    .line 96
    .line 97
    iget v1, v3, Landroidx/leanback/widget/q1;->c:I

    .line 98
    .line 99
    sub-int/2addr p3, v1

    .line 100
    :goto_4
    move v11, p3

    .line 101
    goto :goto_5

    .line 102
    :cond_5
    iget v1, v3, Landroidx/leanback/widget/q1;->c:I

    .line 103
    .line 104
    add-int/2addr p3, v1

    .line 105
    goto :goto_4

    .line 106
    :goto_5
    if-eqz v0, :cond_6

    .line 107
    .line 108
    sub-int/2addr v2, v11

    .line 109
    iput v2, v0, Landroidx/leanback/widget/q1;->b:I

    .line 110
    .line 111
    :cond_6
    iget-object p3, p0, Landroidx/leanback/widget/E;->b:Landroidx/leanback/widget/D;

    .line 112
    .line 113
    iget v9, v3, Landroidx/leanback/widget/q1;->c:I

    .line 114
    .line 115
    move-object v6, p3

    .line 116
    check-cast v6, Landroidx/leanback/widget/G;

    .line 117
    .line 118
    move v8, p1

    .line 119
    move v10, p2

    .line 120
    invoke-virtual/range {v6 .. v11}, Landroidx/leanback/widget/G;->addItem(Ljava/lang/Object;IIII)V

    .line 121
    .line 122
    .line 123
    iget p1, v3, Landroidx/leanback/widget/q1;->c:I

    .line 124
    .line 125
    return p1
.end method

.method public final prependVisibleItems(IZ)Z
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/E;->a:[Ljava/lang/Object;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/leanback/widget/E;->b:Landroidx/leanback/widget/D;

    .line 4
    .line 5
    check-cast v1, Landroidx/leanback/widget/G;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroidx/leanback/widget/G;->getCount()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    return v2

    .line 15
    :cond_0
    if-nez p2, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/E;->checkPrependOverLimit(I)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    return v2

    .line 24
    :cond_1
    const/4 v1, 0x0

    .line 25
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/r1;->prependVisbleItemsWithCache(IZ)Z

    .line 26
    .line 27
    .line 28
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    if-eqz v3, :cond_2

    .line 30
    .line 31
    aput-object v1, v0, v2

    .line 32
    .line 33
    iput-object v1, p0, Landroidx/leanback/widget/r1;->l:Ljava/lang/Object;

    .line 34
    .line 35
    const/4 p1, 0x1

    .line 36
    return p1

    .line 37
    :cond_2
    :try_start_1
    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/r1;->prependVisibleItemsWithoutCache(IZ)Z

    .line 38
    .line 39
    .line 40
    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    aput-object v1, v0, v2

    .line 42
    .line 43
    iput-object v1, p0, Landroidx/leanback/widget/r1;->l:Ljava/lang/Object;

    .line 44
    .line 45
    return p1

    .line 46
    :catchall_0
    move-exception p1

    .line 47
    aput-object v1, v0, v2

    .line 48
    .line 49
    iput-object v1, p0, Landroidx/leanback/widget/r1;->l:Ljava/lang/Object;

    .line 50
    .line 51
    throw p1
.end method

.method public abstract prependVisibleItemsWithoutCache(IZ)Z
.end method
