.class public final Lm1/U;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lm1/U;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lm1/a;)V
    .locals 4

    .line 1
    iget v0, p1, Lm1/a;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iget-object v2, p0, Lm1/U;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    .line 6
    if-eq v0, v1, :cond_3

    .line 7
    .line 8
    const/4 v3, 0x2

    .line 9
    if-eq v0, v3, :cond_2

    .line 10
    .line 11
    const/4 v3, 0x4

    .line 12
    if-eq v0, v3, :cond_1

    .line 13
    .line 14
    const/16 v3, 0x8

    .line 15
    .line 16
    if-eq v0, v3, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iget-object v0, v2, Landroidx/recyclerview/widget/RecyclerView;->w:Lm1/i0;

    .line 20
    .line 21
    iget v3, p1, Lm1/a;->b:I

    .line 22
    .line 23
    iget p1, p1, Lm1/a;->d:I

    .line 24
    .line 25
    invoke-virtual {v0, v2, v3, p1, v1}, Lm1/i0;->onItemsMoved(Landroidx/recyclerview/widget/RecyclerView;III)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    iget-object v0, v2, Landroidx/recyclerview/widget/RecyclerView;->w:Lm1/i0;

    .line 30
    .line 31
    iget v1, p1, Lm1/a;->b:I

    .line 32
    .line 33
    iget v3, p1, Lm1/a;->d:I

    .line 34
    .line 35
    iget-object p1, p1, Lm1/a;->c:Ljava/lang/Object;

    .line 36
    .line 37
    invoke-virtual {v0, v2, v1, v3, p1}, Lm1/i0;->onItemsUpdated(Landroidx/recyclerview/widget/RecyclerView;IILjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_2
    iget-object v0, v2, Landroidx/recyclerview/widget/RecyclerView;->w:Lm1/i0;

    .line 42
    .line 43
    iget v1, p1, Lm1/a;->b:I

    .line 44
    .line 45
    iget p1, p1, Lm1/a;->d:I

    .line 46
    .line 47
    invoke-virtual {v0, v2, v1, p1}, Lm1/i0;->onItemsRemoved(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_3
    iget-object v0, v2, Landroidx/recyclerview/widget/RecyclerView;->w:Lm1/i0;

    .line 52
    .line 53
    iget v1, p1, Lm1/a;->b:I

    .line 54
    .line 55
    iget p1, p1, Lm1/a;->d:I

    .line 56
    .line 57
    invoke-virtual {v0, v2, v1, p1}, Lm1/i0;->onItemsAdded(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public findViewHolder(I)Lm1/B0;
    .locals 3

    .line 1
    iget-object v0, p0, Lm1/U;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->B(IZ)Lm1/B0;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const/4 v1, 0x0

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->n:Lm1/d;

    .line 13
    .line 14
    iget-object v2, p1, Lm1/B0;->a:Landroid/view/View;

    .line 15
    .line 16
    iget-object v0, v0, Lm1/d;->c:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    sget-boolean p1, Landroidx/recyclerview/widget/RecyclerView;->K0:Z

    .line 25
    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    const-string p1, "RecyclerView"

    .line 29
    .line 30
    const-string v0, "assuming view holder cannot be find because it is hidden"

    .line 31
    .line 32
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    :cond_1
    :goto_0
    return-object v1

    .line 36
    :cond_2
    return-object p1
.end method

.method public markViewHoldersUpdated(IILjava/lang/Object;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lm1/U;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->n:Lm1/d;

    .line 4
    .line 5
    iget-object v1, v1, Lm1/d;->a:Lm1/T;

    .line 6
    .line 7
    invoke-virtual {v1}, Lm1/T;->getChildCount()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    add-int/2addr p2, p1

    .line 12
    const/4 v2, 0x0

    .line 13
    :goto_0
    const/4 v3, 0x1

    .line 14
    const/4 v4, 0x2

    .line 15
    if-ge v2, v1, :cond_5

    .line 16
    .line 17
    iget-object v5, v0, Landroidx/recyclerview/widget/RecyclerView;->n:Lm1/d;

    .line 18
    .line 19
    iget-object v5, v5, Lm1/d;->a:Lm1/T;

    .line 20
    .line 21
    invoke-virtual {v5, v2}, Lm1/T;->getChildAt(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    invoke-static {v5}, Landroidx/recyclerview/widget/RecyclerView;->E(Landroid/view/View;)Lm1/B0;

    .line 26
    .line 27
    .line 28
    move-result-object v6

    .line 29
    if-eqz v6, :cond_4

    .line 30
    .line 31
    invoke-virtual {v6}, Lm1/B0;->l()Z

    .line 32
    .line 33
    .line 34
    move-result v7

    .line 35
    if-eqz v7, :cond_0

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_0
    iget v7, v6, Lm1/B0;->c:I

    .line 39
    .line 40
    if-lt v7, p1, :cond_4

    .line 41
    .line 42
    if-ge v7, p2, :cond_4

    .line 43
    .line 44
    invoke-virtual {v6, v4}, Lm1/B0;->a(I)V

    .line 45
    .line 46
    .line 47
    const/16 v4, 0x400

    .line 48
    .line 49
    if-nez p3, :cond_1

    .line 50
    .line 51
    invoke-virtual {v6, v4}, Lm1/B0;->a(I)V

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    iget v7, v6, Lm1/B0;->j:I

    .line 56
    .line 57
    and-int/2addr v4, v7

    .line 58
    if-nez v4, :cond_3

    .line 59
    .line 60
    iget-object v4, v6, Lm1/B0;->k:Ljava/util/ArrayList;

    .line 61
    .line 62
    if-nez v4, :cond_2

    .line 63
    .line 64
    new-instance v4, Ljava/util/ArrayList;

    .line 65
    .line 66
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .line 68
    .line 69
    iput-object v4, v6, Lm1/B0;->k:Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    iput-object v4, v6, Lm1/B0;->l:Ljava/util/List;

    .line 76
    .line 77
    :cond_2
    iget-object v4, v6, Lm1/B0;->k:Ljava/util/ArrayList;

    .line 78
    .line 79
    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    :cond_3
    :goto_1
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    check-cast v4, Lm1/j0;

    .line 87
    .line 88
    iput-boolean v3, v4, Lm1/j0;->c:Z

    .line 89
    .line 90
    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_5
    iget-object p3, v0, Landroidx/recyclerview/widget/RecyclerView;->f:Lm1/p0;

    .line 94
    .line 95
    iget-object v1, p3, Lm1/p0;->c:Ljava/util/ArrayList;

    .line 96
    .line 97
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    sub-int/2addr v2, v3

    .line 102
    :goto_3
    if-ltz v2, :cond_8

    .line 103
    .line 104
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v5

    .line 108
    check-cast v5, Lm1/B0;

    .line 109
    .line 110
    if-nez v5, :cond_6

    .line 111
    .line 112
    goto :goto_4

    .line 113
    :cond_6
    iget v6, v5, Lm1/B0;->c:I

    .line 114
    .line 115
    if-lt v6, p1, :cond_7

    .line 116
    .line 117
    if-ge v6, p2, :cond_7

    .line 118
    .line 119
    invoke-virtual {v5, v4}, Lm1/B0;->a(I)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p3, v2}, Lm1/p0;->f(I)V

    .line 123
    .line 124
    .line 125
    :cond_7
    :goto_4
    add-int/lit8 v2, v2, -0x1

    .line 126
    .line 127
    goto :goto_3

    .line 128
    :cond_8
    iput-boolean v3, v0, Landroidx/recyclerview/widget/RecyclerView;->u0:Z

    .line 129
    .line 130
    return-void
.end method

.method public offsetPositionsForAdd(II)V
    .locals 12

    .line 1
    iget-object v0, p0, Lm1/U;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->n:Lm1/d;

    .line 4
    .line 5
    iget-object v1, v1, Lm1/d;->a:Lm1/T;

    .line 6
    .line 7
    invoke-virtual {v1}, Lm1/T;->getChildCount()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    move v3, v2

    .line 13
    :goto_0
    const/4 v4, 0x1

    .line 14
    const-string v5, " now at position "

    .line 15
    .line 16
    const-string v6, " holder "

    .line 17
    .line 18
    const-string v7, "RecyclerView"

    .line 19
    .line 20
    if-ge v3, v1, :cond_2

    .line 21
    .line 22
    iget-object v8, v0, Landroidx/recyclerview/widget/RecyclerView;->n:Lm1/d;

    .line 23
    .line 24
    iget-object v8, v8, Lm1/d;->a:Lm1/T;

    .line 25
    .line 26
    invoke-virtual {v8, v3}, Lm1/T;->getChildAt(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v8

    .line 30
    invoke-static {v8}, Landroidx/recyclerview/widget/RecyclerView;->E(Landroid/view/View;)Lm1/B0;

    .line 31
    .line 32
    .line 33
    move-result-object v8

    .line 34
    if-eqz v8, :cond_1

    .line 35
    .line 36
    invoke-virtual {v8}, Lm1/B0;->l()Z

    .line 37
    .line 38
    .line 39
    move-result v9

    .line 40
    if-nez v9, :cond_1

    .line 41
    .line 42
    iget v9, v8, Lm1/B0;->c:I

    .line 43
    .line 44
    if-lt v9, p1, :cond_1

    .line 45
    .line 46
    sget-boolean v9, Landroidx/recyclerview/widget/RecyclerView;->K0:Z

    .line 47
    .line 48
    if-eqz v9, :cond_0

    .line 49
    .line 50
    new-instance v9, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string v10, "offsetPositionRecordsForInsert attached child "

    .line 53
    .line 54
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget v5, v8, Lm1/B0;->c:I

    .line 70
    .line 71
    add-int/2addr v5, p2

    .line 72
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    :cond_0
    invoke-virtual {v8, p2, v2}, Lm1/B0;->j(IZ)V

    .line 83
    .line 84
    .line 85
    iget-object v5, v0, Landroidx/recyclerview/widget/RecyclerView;->q0:Lm1/x0;

    .line 86
    .line 87
    iput-boolean v4, v5, Lm1/x0;->f:Z

    .line 88
    .line 89
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_2
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->f:Lm1/p0;

    .line 93
    .line 94
    iget-object v1, v1, Lm1/p0;->c:Ljava/util/ArrayList;

    .line 95
    .line 96
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    move v8, v2

    .line 101
    :goto_1
    if-ge v8, v3, :cond_5

    .line 102
    .line 103
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v9

    .line 107
    check-cast v9, Lm1/B0;

    .line 108
    .line 109
    if-eqz v9, :cond_4

    .line 110
    .line 111
    iget v10, v9, Lm1/B0;->c:I

    .line 112
    .line 113
    if-lt v10, p1, :cond_4

    .line 114
    .line 115
    sget-boolean v10, Landroidx/recyclerview/widget/RecyclerView;->K0:Z

    .line 116
    .line 117
    if-eqz v10, :cond_3

    .line 118
    .line 119
    new-instance v10, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    const-string v11, "offsetPositionRecordsForInsert cached "

    .line 122
    .line 123
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    iget v11, v9, Lm1/B0;->c:I

    .line 139
    .line 140
    add-int/2addr v11, p2

    .line 141
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v10

    .line 148
    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    .line 150
    .line 151
    :cond_3
    invoke-virtual {v9, p2, v2}, Lm1/B0;->j(IZ)V

    .line 152
    .line 153
    .line 154
    :cond_4
    add-int/lit8 v8, v8, 0x1

    .line 155
    .line 156
    goto :goto_1

    .line 157
    :cond_5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 158
    .line 159
    .line 160
    iput-boolean v4, v0, Landroidx/recyclerview/widget/RecyclerView;->t0:Z

    .line 161
    .line 162
    return-void
.end method

.method public offsetPositionsForMove(II)V
    .locals 16

    .line 1
    move/from16 v0, p1

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p0

    .line 6
    .line 7
    iget-object v3, v2, Lm1/U;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 8
    .line 9
    iget-object v4, v3, Landroidx/recyclerview/widget/RecyclerView;->n:Lm1/d;

    .line 10
    .line 11
    iget-object v4, v4, Lm1/d;->a:Lm1/T;

    .line 12
    .line 13
    invoke-virtual {v4}, Lm1/T;->getChildCount()I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    const/4 v5, 0x1

    .line 18
    if-ge v0, v1, :cond_0

    .line 19
    .line 20
    move v7, v0

    .line 21
    move v8, v1

    .line 22
    const/4 v9, -0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v8, v0

    .line 25
    move v7, v1

    .line 26
    move v9, v5

    .line 27
    :goto_0
    const/4 v10, 0x0

    .line 28
    move v11, v10

    .line 29
    :goto_1
    const-string v12, " holder "

    .line 30
    .line 31
    const-string v13, "RecyclerView"

    .line 32
    .line 33
    if-ge v11, v4, :cond_5

    .line 34
    .line 35
    iget-object v14, v3, Landroidx/recyclerview/widget/RecyclerView;->n:Lm1/d;

    .line 36
    .line 37
    iget-object v14, v14, Lm1/d;->a:Lm1/T;

    .line 38
    .line 39
    invoke-virtual {v14, v11}, Lm1/T;->getChildAt(I)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object v14

    .line 43
    invoke-static {v14}, Landroidx/recyclerview/widget/RecyclerView;->E(Landroid/view/View;)Lm1/B0;

    .line 44
    .line 45
    .line 46
    move-result-object v14

    .line 47
    if-eqz v14, :cond_4

    .line 48
    .line 49
    iget v15, v14, Lm1/B0;->c:I

    .line 50
    .line 51
    if-lt v15, v7, :cond_4

    .line 52
    .line 53
    if-le v15, v8, :cond_1

    .line 54
    .line 55
    goto :goto_3

    .line 56
    :cond_1
    sget-boolean v15, Landroidx/recyclerview/widget/RecyclerView;->K0:Z

    .line 57
    .line 58
    if-eqz v15, :cond_2

    .line 59
    .line 60
    new-instance v15, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    const-string v6, "offsetPositionRecordsForMove attached child "

    .line 63
    .line 64
    invoke-direct {v15, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    invoke-static {v13, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    :cond_2
    iget v6, v14, Lm1/B0;->c:I

    .line 84
    .line 85
    if-ne v6, v0, :cond_3

    .line 86
    .line 87
    sub-int v6, v1, v0

    .line 88
    .line 89
    invoke-virtual {v14, v6, v10}, Lm1/B0;->j(IZ)V

    .line 90
    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_3
    invoke-virtual {v14, v9, v10}, Lm1/B0;->j(IZ)V

    .line 94
    .line 95
    .line 96
    :goto_2
    iget-object v6, v3, Landroidx/recyclerview/widget/RecyclerView;->q0:Lm1/x0;

    .line 97
    .line 98
    iput-boolean v5, v6, Lm1/x0;->f:Z

    .line 99
    .line 100
    :cond_4
    :goto_3
    add-int/lit8 v11, v11, 0x1

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_5
    iget-object v4, v3, Landroidx/recyclerview/widget/RecyclerView;->f:Lm1/p0;

    .line 104
    .line 105
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    .line 107
    .line 108
    if-ge v0, v1, :cond_6

    .line 109
    .line 110
    move v7, v0

    .line 111
    move v8, v1

    .line 112
    const/4 v6, -0x1

    .line 113
    goto :goto_4

    .line 114
    :cond_6
    move v8, v0

    .line 115
    move v7, v1

    .line 116
    move v6, v5

    .line 117
    :goto_4
    iget-object v4, v4, Lm1/p0;->c:Ljava/util/ArrayList;

    .line 118
    .line 119
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 120
    .line 121
    .line 122
    move-result v9

    .line 123
    move v11, v10

    .line 124
    :goto_5
    if-ge v11, v9, :cond_a

    .line 125
    .line 126
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v14

    .line 130
    check-cast v14, Lm1/B0;

    .line 131
    .line 132
    if-eqz v14, :cond_9

    .line 133
    .line 134
    iget v15, v14, Lm1/B0;->c:I

    .line 135
    .line 136
    if-lt v15, v7, :cond_9

    .line 137
    .line 138
    if-le v15, v8, :cond_7

    .line 139
    .line 140
    goto :goto_7

    .line 141
    :cond_7
    if-ne v15, v0, :cond_8

    .line 142
    .line 143
    sub-int v15, v1, v0

    .line 144
    .line 145
    invoke-virtual {v14, v15, v10}, Lm1/B0;->j(IZ)V

    .line 146
    .line 147
    .line 148
    goto :goto_6

    .line 149
    :cond_8
    invoke-virtual {v14, v6, v10}, Lm1/B0;->j(IZ)V

    .line 150
    .line 151
    .line 152
    :goto_6
    sget-boolean v15, Landroidx/recyclerview/widget/RecyclerView;->K0:Z

    .line 153
    .line 154
    if-eqz v15, :cond_9

    .line 155
    .line 156
    new-instance v15, Ljava/lang/StringBuilder;

    .line 157
    .line 158
    const-string v10, "offsetPositionRecordsForMove cached child "

    .line 159
    .line 160
    invoke-direct {v15, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v10

    .line 176
    invoke-static {v13, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    .line 178
    .line 179
    :cond_9
    :goto_7
    add-int/lit8 v11, v11, 0x1

    .line 180
    .line 181
    const/4 v10, 0x0

    .line 182
    goto :goto_5

    .line 183
    :cond_a
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 184
    .line 185
    .line 186
    iput-boolean v5, v3, Landroidx/recyclerview/widget/RecyclerView;->t0:Z

    .line 187
    .line 188
    return-void
.end method

.method public offsetPositionsForRemovingInvisible(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lm1/U;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, p1, p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->K(IIZ)V

    .line 5
    .line 6
    .line 7
    iput-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView;->t0:Z

    .line 8
    .line 9
    iget-object p1, v0, Landroidx/recyclerview/widget/RecyclerView;->q0:Lm1/x0;

    .line 10
    .line 11
    iget v0, p1, Lm1/x0;->c:I

    .line 12
    .line 13
    add-int/2addr v0, p2

    .line 14
    iput v0, p1, Lm1/x0;->c:I

    .line 15
    .line 16
    return-void
.end method

.method public offsetPositionsForRemovingLaidOutOrNewView(II)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lm1/U;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    .line 4
    invoke-virtual {v1, p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->K(IIZ)V

    .line 5
    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    iput-boolean p1, v1, Landroidx/recyclerview/widget/RecyclerView;->t0:Z

    .line 9
    .line 10
    return-void
.end method

.method public onDispatchFirstPass(Lm1/a;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lm1/U;->a(Lm1/a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onDispatchSecondPass(Lm1/a;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lm1/U;->a(Lm1/a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
