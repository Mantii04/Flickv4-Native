.class public final Ld4/b;
.super Lm1/m0;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;


# direct methods
.method public constructor <init>(Lcom/malinskiy/superrecyclerview/SuperRecyclerView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld4/b;->a:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

    .line 2
    .line 3
    invoke-direct {p0}, Lm1/m0;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lm1/m0;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Ld4/b;->a:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

    .line 5
    .line 6
    iget-object v1, v0, Lcom/malinskiy/superrecyclerview/SuperRecyclerView;->C:Lm1/m0;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v1, p1, p2}, Lm1/m0;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v0, v0, Lcom/malinskiy/superrecyclerview/SuperRecyclerView;->B:Lm1/m0;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0, p1, p2}, Lm1/m0;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 18
    .line 19
    .line 20
    :cond_1
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 9

    .line 1
    invoke-super {p0, p1, p2, p3}, Lm1/m0;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Ld4/b;->a:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

    .line 5
    .line 6
    iget-object v1, v0, Lcom/malinskiy/superrecyclerview/SuperRecyclerView;->e:Landroidx/recyclerview/widget/RecyclerView;

    .line 7
    .line 8
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Lm1/i0;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    iget-object v2, v0, Lcom/malinskiy/superrecyclerview/SuperRecyclerView;->A:Lcom/malinskiy/superrecyclerview/SuperRecyclerView$LAYOUT_MANAGER_TYPE;

    .line 13
    .line 14
    if-nez v2, :cond_3

    .line 15
    .line 16
    instance-of v2, v1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 17
    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    sget-object v2, Lcom/malinskiy/superrecyclerview/SuperRecyclerView$LAYOUT_MANAGER_TYPE;->e:Lcom/malinskiy/superrecyclerview/SuperRecyclerView$LAYOUT_MANAGER_TYPE;

    .line 21
    .line 22
    iput-object v2, v0, Lcom/malinskiy/superrecyclerview/SuperRecyclerView;->A:Lcom/malinskiy/superrecyclerview/SuperRecyclerView$LAYOUT_MANAGER_TYPE;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    instance-of v2, v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 26
    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    sget-object v2, Lcom/malinskiy/superrecyclerview/SuperRecyclerView$LAYOUT_MANAGER_TYPE;->b:Lcom/malinskiy/superrecyclerview/SuperRecyclerView$LAYOUT_MANAGER_TYPE;

    .line 30
    .line 31
    iput-object v2, v0, Lcom/malinskiy/superrecyclerview/SuperRecyclerView;->A:Lcom/malinskiy/superrecyclerview/SuperRecyclerView$LAYOUT_MANAGER_TYPE;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    instance-of v2, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 35
    .line 36
    if-eqz v2, :cond_2

    .line 37
    .line 38
    sget-object v2, Lcom/malinskiy/superrecyclerview/SuperRecyclerView$LAYOUT_MANAGER_TYPE;->f:Lcom/malinskiy/superrecyclerview/SuperRecyclerView$LAYOUT_MANAGER_TYPE;

    .line 39
    .line 40
    iput-object v2, v0, Lcom/malinskiy/superrecyclerview/SuperRecyclerView;->A:Lcom/malinskiy/superrecyclerview/SuperRecyclerView$LAYOUT_MANAGER_TYPE;

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    .line 44
    .line 45
    const-string p2, "Unsupported LayoutManager used. Valid ones are LinearLayoutManager, GridLayoutManager and StaggeredGridLayoutManager"

    .line 46
    .line 47
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw p1

    .line 51
    :cond_3
    :goto_0
    iget-object v2, v0, Lcom/malinskiy/superrecyclerview/SuperRecyclerView;->A:Lcom/malinskiy/superrecyclerview/SuperRecyclerView$LAYOUT_MANAGER_TYPE;

    .line 52
    .line 53
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    const/4 v3, 0x1

    .line 58
    const/4 v4, 0x0

    .line 59
    if-eqz v2, :cond_9

    .line 60
    .line 61
    if-eq v2, v3, :cond_8

    .line 62
    .line 63
    const/4 v5, 0x2

    .line 64
    if-eq v2, v5, :cond_4

    .line 65
    .line 66
    const/4 v2, -0x1

    .line 67
    goto :goto_2

    .line 68
    :cond_4
    move-object v2, v1

    .line 69
    check-cast v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 70
    .line 71
    iget-object v5, v0, Lcom/malinskiy/superrecyclerview/SuperRecyclerView;->I:[I

    .line 72
    .line 73
    if-nez v5, :cond_5

    .line 74
    .line 75
    invoke-virtual {v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getSpanCount()I

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    new-array v5, v5, [I

    .line 80
    .line 81
    iput-object v5, v0, Lcom/malinskiy/superrecyclerview/SuperRecyclerView;->I:[I

    .line 82
    .line 83
    :cond_5
    iget-object v5, v0, Lcom/malinskiy/superrecyclerview/SuperRecyclerView;->I:[I

    .line 84
    .line 85
    invoke-virtual {v2, v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findLastVisibleItemPositions([I)[I

    .line 86
    .line 87
    .line 88
    iget-object v2, v0, Lcom/malinskiy/superrecyclerview/SuperRecyclerView;->I:[I

    .line 89
    .line 90
    array-length v5, v2

    .line 91
    const/high16 v6, -0x80000000

    .line 92
    .line 93
    move v7, v4

    .line 94
    :goto_1
    if-ge v7, v5, :cond_7

    .line 95
    .line 96
    aget v8, v2, v7

    .line 97
    .line 98
    if-le v8, v6, :cond_6

    .line 99
    .line 100
    move v6, v8

    .line 101
    :cond_6
    add-int/lit8 v7, v7, 0x1

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_7
    move v2, v6

    .line 105
    goto :goto_2

    .line 106
    :cond_8
    move-object v2, v1

    .line 107
    check-cast v2, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 108
    .line 109
    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    goto :goto_2

    .line 114
    :cond_9
    move-object v2, v1

    .line 115
    check-cast v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 116
    .line 117
    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    :goto_2
    invoke-virtual {v1}, Lm1/i0;->getChildCount()I

    .line 122
    .line 123
    .line 124
    move-result v5

    .line 125
    invoke-virtual {v1}, Lm1/i0;->getItemCount()I

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    sub-int v6, v1, v2

    .line 130
    .line 131
    iget v7, v0, Lcom/malinskiy/superrecyclerview/SuperRecyclerView;->b:I

    .line 132
    .line 133
    if-le v6, v7, :cond_a

    .line 134
    .line 135
    if-nez v6, :cond_b

    .line 136
    .line 137
    if-le v1, v5, :cond_b

    .line 138
    .line 139
    :cond_a
    iget-boolean v1, v0, Lcom/malinskiy/superrecyclerview/SuperRecyclerView;->E:Z

    .line 140
    .line 141
    if-nez v1, :cond_b

    .line 142
    .line 143
    iput-boolean v3, v0, Lcom/malinskiy/superrecyclerview/SuperRecyclerView;->E:Z

    .line 144
    .line 145
    iget-object v1, v0, Lcom/malinskiy/superrecyclerview/SuperRecyclerView;->D:Ld4/a;

    .line 146
    .line 147
    if-eqz v1, :cond_b

    .line 148
    .line 149
    iget-object v1, v0, Lcom/malinskiy/superrecyclerview/SuperRecyclerView;->j:Landroid/view/ViewStub;

    .line 150
    .line 151
    invoke-virtual {v1, v4}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 152
    .line 153
    .line 154
    iget-object v1, v0, Lcom/malinskiy/superrecyclerview/SuperRecyclerView;->D:Ld4/a;

    .line 155
    .line 156
    iget-object v3, v0, Lcom/malinskiy/superrecyclerview/SuperRecyclerView;->e:Landroidx/recyclerview/widget/RecyclerView;

    .line 157
    .line 158
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Lm1/V;

    .line 159
    .line 160
    .line 161
    move-result-object v3

    .line 162
    invoke-virtual {v3}, Lm1/V;->getItemCount()I

    .line 163
    .line 164
    .line 165
    move-result v3

    .line 166
    iget v4, v0, Lcom/malinskiy/superrecyclerview/SuperRecyclerView;->b:I

    .line 167
    .line 168
    invoke-interface {v1, v3, v4, v2}, Ld4/a;->onMoreAsked(III)V

    .line 169
    .line 170
    .line 171
    :cond_b
    iget-object v1, v0, Lcom/malinskiy/superrecyclerview/SuperRecyclerView;->C:Lm1/m0;

    .line 172
    .line 173
    if-eqz v1, :cond_c

    .line 174
    .line 175
    invoke-virtual {v1, p1, p2, p3}, Lm1/m0;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 176
    .line 177
    .line 178
    :cond_c
    iget-object v0, v0, Lcom/malinskiy/superrecyclerview/SuperRecyclerView;->B:Lm1/m0;

    .line 179
    .line 180
    if-eqz v0, :cond_d

    .line 181
    .line 182
    invoke-virtual {v0, p1, p2, p3}, Lm1/m0;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 183
    .line 184
    .line 185
    :cond_d
    return-void
.end method
