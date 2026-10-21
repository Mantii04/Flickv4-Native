.class public final Landroidx/leanback/widget/G;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/leanback/widget/D;


# instance fields
.field public final synthetic a:Landroidx/leanback/widget/GridLayoutManager;


# direct methods
.method public constructor <init>(Landroidx/leanback/widget/GridLayoutManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/leanback/widget/G;->a:Landroidx/leanback/widget/GridLayoutManager;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public addItem(Ljava/lang/Object;IIII)V
    .locals 7

    .line 1
    move-object v1, p1

    .line 2
    check-cast v1, Landroid/view/View;

    .line 3
    .line 4
    const/high16 p1, -0x80000000

    .line 5
    .line 6
    iget-object v6, p0, Landroidx/leanback/widget/G;->a:Landroidx/leanback/widget/GridLayoutManager;

    .line 7
    .line 8
    if-eq p5, p1, :cond_0

    .line 9
    .line 10
    const p1, 0x7fffffff

    .line 11
    .line 12
    .line 13
    if-ne p5, p1, :cond_2

    .line 14
    .line 15
    :cond_0
    iget-object p1, v6, Landroidx/leanback/widget/GridLayoutManager;->W:Landroidx/leanback/widget/E;

    .line 16
    .line 17
    invoke-virtual {p1}, Landroidx/leanback/widget/E;->isReversedFlow()Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    iget-object p5, v6, Landroidx/leanback/widget/GridLayoutManager;->Y:Landroidx/leanback/widget/C1;

    .line 22
    .line 23
    if-nez p1, :cond_1

    .line 24
    .line 25
    invoke-virtual {p5}, Landroidx/leanback/widget/C1;->mainAxis()Landroidx/leanback/widget/B1;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p1}, Landroidx/leanback/widget/B1;->getPaddingMin()I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    :goto_0
    move p5, p1

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    invoke-virtual {p5}, Landroidx/leanback/widget/C1;->mainAxis()Landroidx/leanback/widget/B1;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p1}, Landroidx/leanback/widget/B1;->getSize()I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    invoke-virtual {p5}, Landroidx/leanback/widget/C1;->mainAxis()Landroidx/leanback/widget/B1;

    .line 44
    .line 45
    .line 46
    move-result-object p5

    .line 47
    invoke-virtual {p5}, Landroidx/leanback/widget/B1;->getPaddingMax()I

    .line 48
    .line 49
    .line 50
    move-result p5

    .line 51
    sub-int/2addr p1, p5

    .line 52
    goto :goto_0

    .line 53
    :cond_2
    :goto_1
    iget-object p1, v6, Landroidx/leanback/widget/GridLayoutManager;->W:Landroidx/leanback/widget/E;

    .line 54
    .line 55
    invoke-virtual {p1}, Landroidx/leanback/widget/E;->isReversedFlow()Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-nez p1, :cond_3

    .line 60
    .line 61
    add-int/2addr p3, p5

    .line 62
    move v4, p3

    .line 63
    move v3, p5

    .line 64
    goto :goto_2

    .line 65
    :cond_3
    sub-int p1, p5, p3

    .line 66
    .line 67
    move v3, p1

    .line 68
    move v4, p5

    .line 69
    :goto_2
    invoke-virtual {v6, p4}, Landroidx/leanback/widget/GridLayoutManager;->u(I)I

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    iget-object p3, v6, Landroidx/leanback/widget/GridLayoutManager;->Y:Landroidx/leanback/widget/C1;

    .line 74
    .line 75
    invoke-virtual {p3}, Landroidx/leanback/widget/C1;->secondAxis()Landroidx/leanback/widget/B1;

    .line 76
    .line 77
    .line 78
    move-result-object p3

    .line 79
    invoke-virtual {p3}, Landroidx/leanback/widget/B1;->getPaddingMin()I

    .line 80
    .line 81
    .line 82
    move-result p3

    .line 83
    add-int/2addr p3, p1

    .line 84
    iget p1, v6, Landroidx/leanback/widget/GridLayoutManager;->K:I

    .line 85
    .line 86
    sub-int v5, p3, p1

    .line 87
    .line 88
    iget-object p1, v6, Landroidx/leanback/widget/GridLayoutManager;->d0:LG2/b;

    .line 89
    .line 90
    iget-object p3, p1, LG2/b;->c:Ljava/lang/Object;

    .line 91
    .line 92
    check-cast p3, Lp/p;

    .line 93
    .line 94
    if-eqz p3, :cond_4

    .line 95
    .line 96
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    iget-object p1, p1, LG2/b;->c:Ljava/lang/Object;

    .line 101
    .line 102
    check-cast p1, Lp/p;

    .line 103
    .line 104
    invoke-virtual {p1, p2}, Lp/p;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    check-cast p1, Landroid/util/SparseArray;

    .line 109
    .line 110
    if-eqz p1, :cond_4

    .line 111
    .line 112
    invoke-virtual {v1, p1}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 113
    .line 114
    .line 115
    :cond_4
    iget-object v0, p0, Landroidx/leanback/widget/G;->a:Landroidx/leanback/widget/GridLayoutManager;

    .line 116
    .line 117
    move v2, p4

    .line 118
    invoke-virtual/range {v0 .. v5}, Landroidx/leanback/widget/GridLayoutManager;->B(Landroid/view/View;IIII)V

    .line 119
    .line 120
    .line 121
    iget-object p1, v6, Landroidx/leanback/widget/GridLayoutManager;->v:Lm1/x0;

    .line 122
    .line 123
    invoke-virtual {p1}, Lm1/x0;->isPreLayout()Z

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    if-nez p1, :cond_5

    .line 128
    .line 129
    invoke-virtual {v6}, Landroidx/leanback/widget/GridLayoutManager;->U()V

    .line 130
    .line 131
    .line 132
    :cond_5
    iget p1, v6, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 133
    .line 134
    and-int/lit8 p1, p1, 0x3

    .line 135
    .line 136
    const/4 p2, 0x1

    .line 137
    if-eq p1, p2, :cond_9

    .line 138
    .line 139
    iget-object p1, v6, Landroidx/leanback/widget/GridLayoutManager;->H:Landroidx/leanback/widget/K;

    .line 140
    .line 141
    if-eqz p1, :cond_9

    .line 142
    .line 143
    iget-boolean p3, p1, Landroidx/leanback/widget/K;->s:Z

    .line 144
    .line 145
    iget-object p4, p1, Landroidx/leanback/widget/K;->u:Landroidx/leanback/widget/GridLayoutManager;

    .line 146
    .line 147
    if-eqz p3, :cond_6

    .line 148
    .line 149
    iget p3, p1, Landroidx/leanback/widget/K;->t:I

    .line 150
    .line 151
    if-eqz p3, :cond_6

    .line 152
    .line 153
    invoke-virtual {p4, p3, p2}, Landroidx/leanback/widget/GridLayoutManager;->H(IZ)I

    .line 154
    .line 155
    .line 156
    move-result p2

    .line 157
    iput p2, p1, Landroidx/leanback/widget/K;->t:I

    .line 158
    .line 159
    :cond_6
    iget p2, p1, Landroidx/leanback/widget/K;->t:I

    .line 160
    .line 161
    if-eqz p2, :cond_8

    .line 162
    .line 163
    if-lez p2, :cond_7

    .line 164
    .line 165
    invoke-virtual {p4}, Landroidx/leanback/widget/GridLayoutManager;->z()Z

    .line 166
    .line 167
    .line 168
    move-result p2

    .line 169
    if-nez p2, :cond_8

    .line 170
    .line 171
    :cond_7
    iget p2, p1, Landroidx/leanback/widget/K;->t:I

    .line 172
    .line 173
    if-gez p2, :cond_9

    .line 174
    .line 175
    invoke-virtual {p4}, Lm1/i0;->getItemCount()I

    .line 176
    .line 177
    .line 178
    move-result p2

    .line 179
    if-eqz p2, :cond_8

    .line 180
    .line 181
    iget-object p2, p4, Landroidx/leanback/widget/GridLayoutManager;->r:Landroidx/leanback/widget/t;

    .line 182
    .line 183
    const/4 p3, 0x0

    .line 184
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Lm1/B0;

    .line 185
    .line 186
    .line 187
    move-result-object p2

    .line 188
    if-eqz p2, :cond_9

    .line 189
    .line 190
    :cond_8
    iget p2, p4, Landroidx/leanback/widget/GridLayoutManager;->F:I

    .line 191
    .line 192
    invoke-virtual {p1, p2}, Lm1/w0;->setTargetPosition(I)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {p1}, Lm1/w0;->stop()V

    .line 196
    .line 197
    .line 198
    :cond_9
    return-void
.end method

.method public createItem(IZ[Ljava/lang/Object;Z)I
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/G;->a:Landroidx/leanback/widget/GridLayoutManager;

    .line 2
    .line 3
    iget v1, v0, Landroidx/leanback/widget/GridLayoutManager;->w:I

    .line 4
    .line 5
    sub-int v1, p1, v1

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroidx/leanback/widget/GridLayoutManager;->y(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    check-cast v2, Landroidx/leanback/widget/J;

    .line 16
    .line 17
    invoke-virtual {v2}, Lm1/j0;->isItemRemoved()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const/4 v3, 0x0

    .line 22
    if-nez v2, :cond_11

    .line 23
    .line 24
    if-eqz p4, :cond_1

    .line 25
    .line 26
    if-eqz p2, :cond_0

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lm1/i0;->addDisappearingView(Landroid/view/View;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {v0, v1, v3}, Lm1/i0;->addDisappearingView(Landroid/view/View;I)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    if-eqz p2, :cond_2

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lm1/i0;->addView(Landroid/view/View;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    invoke-virtual {v0, v1, v3}, Lm1/i0;->addView(Landroid/view/View;I)V

    .line 43
    .line 44
    .line 45
    :goto_0
    iget p2, v0, Landroidx/leanback/widget/GridLayoutManager;->J:I

    .line 46
    .line 47
    const/4 p4, -0x1

    .line 48
    if-eq p2, p4, :cond_3

    .line 49
    .line 50
    invoke-virtual {v1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 51
    .line 52
    .line 53
    :cond_3
    iget-object p2, v0, Landroidx/leanback/widget/GridLayoutManager;->H:Landroidx/leanback/widget/K;

    .line 54
    .line 55
    if-eqz p2, :cond_c

    .line 56
    .line 57
    iget-boolean p4, p2, Landroidx/leanback/widget/K;->s:Z

    .line 58
    .line 59
    if-nez p4, :cond_c

    .line 60
    .line 61
    iget p4, p2, Landroidx/leanback/widget/K;->t:I

    .line 62
    .line 63
    if-nez p4, :cond_4

    .line 64
    .line 65
    goto :goto_5

    .line 66
    :cond_4
    iget-object v2, p2, Landroidx/leanback/widget/K;->u:Landroidx/leanback/widget/GridLayoutManager;

    .line 67
    .line 68
    if-lez p4, :cond_5

    .line 69
    .line 70
    iget p4, v2, Landroidx/leanback/widget/GridLayoutManager;->F:I

    .line 71
    .line 72
    iget v4, v2, Landroidx/leanback/widget/GridLayoutManager;->U:I

    .line 73
    .line 74
    add-int/2addr p4, v4

    .line 75
    goto :goto_1

    .line 76
    :cond_5
    iget p4, v2, Landroidx/leanback/widget/GridLayoutManager;->F:I

    .line 77
    .line 78
    iget v4, v2, Landroidx/leanback/widget/GridLayoutManager;->U:I

    .line 79
    .line 80
    sub-int/2addr p4, v4

    .line 81
    :goto_1
    const/4 v4, 0x0

    .line 82
    :goto_2
    iget v5, p2, Landroidx/leanback/widget/K;->t:I

    .line 83
    .line 84
    if-eqz v5, :cond_b

    .line 85
    .line 86
    invoke-virtual {p2, p4}, Lm1/w0;->findViewByPosition(I)Landroid/view/View;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    if-nez v5, :cond_6

    .line 91
    .line 92
    goto :goto_4

    .line 93
    :cond_6
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    .line 97
    .line 98
    .line 99
    move-result v6

    .line 100
    if-nez v6, :cond_9

    .line 101
    .line 102
    invoke-virtual {v2}, Lm1/i0;->hasFocus()Z

    .line 103
    .line 104
    .line 105
    move-result v6

    .line 106
    if-eqz v6, :cond_7

    .line 107
    .line 108
    invoke-virtual {v5}, Landroid/view/View;->hasFocusable()Z

    .line 109
    .line 110
    .line 111
    move-result v6

    .line 112
    if-eqz v6, :cond_9

    .line 113
    .line 114
    :cond_7
    iput p4, v2, Landroidx/leanback/widget/GridLayoutManager;->F:I

    .line 115
    .line 116
    iget v4, p2, Landroidx/leanback/widget/K;->t:I

    .line 117
    .line 118
    if-lez v4, :cond_8

    .line 119
    .line 120
    add-int/lit8 v4, v4, -0x1

    .line 121
    .line 122
    iput v4, p2, Landroidx/leanback/widget/K;->t:I

    .line 123
    .line 124
    goto :goto_3

    .line 125
    :cond_8
    add-int/lit8 v4, v4, 0x1

    .line 126
    .line 127
    iput v4, p2, Landroidx/leanback/widget/K;->t:I

    .line 128
    .line 129
    :goto_3
    move-object v4, v5

    .line 130
    :cond_9
    iget v5, p2, Landroidx/leanback/widget/K;->t:I

    .line 131
    .line 132
    if-lez v5, :cond_a

    .line 133
    .line 134
    iget v5, v2, Landroidx/leanback/widget/GridLayoutManager;->U:I

    .line 135
    .line 136
    add-int/2addr p4, v5

    .line 137
    goto :goto_2

    .line 138
    :cond_a
    iget v5, v2, Landroidx/leanback/widget/GridLayoutManager;->U:I

    .line 139
    .line 140
    sub-int/2addr p4, v5

    .line 141
    goto :goto_2

    .line 142
    :cond_b
    :goto_4
    if-eqz v4, :cond_c

    .line 143
    .line 144
    invoke-virtual {v2}, Lm1/i0;->hasFocus()Z

    .line 145
    .line 146
    .line 147
    move-result p2

    .line 148
    if-eqz p2, :cond_c

    .line 149
    .line 150
    iget p2, v2, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 151
    .line 152
    or-int/lit8 p2, p2, 0x20

    .line 153
    .line 154
    iput p2, v2, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 155
    .line 156
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 157
    .line 158
    .line 159
    iget p2, v2, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 160
    .line 161
    and-int/lit8 p2, p2, -0x21

    .line 162
    .line 163
    iput p2, v2, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 164
    .line 165
    :cond_c
    :goto_5
    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    .line 166
    .line 167
    .line 168
    move-result-object p2

    .line 169
    if-nez p2, :cond_d

    .line 170
    .line 171
    goto :goto_6

    .line 172
    :cond_d
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 173
    .line 174
    .line 175
    move-result-object p2

    .line 176
    check-cast p2, Landroidx/leanback/widget/J;

    .line 177
    .line 178
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 179
    .line 180
    .line 181
    :goto_6
    iget p2, v0, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 182
    .line 183
    and-int/lit8 p4, p2, 0x3

    .line 184
    .line 185
    const/4 v2, 0x1

    .line 186
    if-eq p4, v2, :cond_e

    .line 187
    .line 188
    iget p2, v0, Landroidx/leanback/widget/GridLayoutManager;->F:I

    .line 189
    .line 190
    if-ne p1, p2, :cond_10

    .line 191
    .line 192
    iget-object p1, v0, Landroidx/leanback/widget/GridLayoutManager;->H:Landroidx/leanback/widget/K;

    .line 193
    .line 194
    if-nez p1, :cond_10

    .line 195
    .line 196
    invoke-virtual {v0}, Landroidx/leanback/widget/GridLayoutManager;->n()V

    .line 197
    .line 198
    .line 199
    goto :goto_7

    .line 200
    :cond_e
    and-int/lit8 p4, p2, 0x4

    .line 201
    .line 202
    if-nez p4, :cond_10

    .line 203
    .line 204
    and-int/lit8 p2, p2, 0x10

    .line 205
    .line 206
    if-nez p2, :cond_f

    .line 207
    .line 208
    iget p4, v0, Landroidx/leanback/widget/GridLayoutManager;->F:I

    .line 209
    .line 210
    if-ne p1, p4, :cond_f

    .line 211
    .line 212
    invoke-virtual {v0}, Landroidx/leanback/widget/GridLayoutManager;->n()V

    .line 213
    .line 214
    .line 215
    goto :goto_7

    .line 216
    :cond_f
    if-eqz p2, :cond_10

    .line 217
    .line 218
    iget p2, v0, Landroidx/leanback/widget/GridLayoutManager;->F:I

    .line 219
    .line 220
    if-lt p1, p2, :cond_10

    .line 221
    .line 222
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    .line 223
    .line 224
    .line 225
    move-result p2

    .line 226
    if-eqz p2, :cond_10

    .line 227
    .line 228
    iput p1, v0, Landroidx/leanback/widget/GridLayoutManager;->F:I

    .line 229
    .line 230
    iget p1, v0, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 231
    .line 232
    and-int/lit8 p1, p1, -0x11

    .line 233
    .line 234
    iput p1, v0, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 235
    .line 236
    invoke-virtual {v0}, Landroidx/leanback/widget/GridLayoutManager;->n()V

    .line 237
    .line 238
    .line 239
    :cond_10
    :goto_7
    invoke-virtual {v0, v1}, Landroidx/leanback/widget/GridLayoutManager;->D(Landroid/view/View;)V

    .line 240
    .line 241
    .line 242
    :cond_11
    aput-object v1, p3, v3

    .line 243
    .line 244
    iget p1, v0, Landroidx/leanback/widget/GridLayoutManager;->s:I

    .line 245
    .line 246
    if-nez p1, :cond_12

    .line 247
    .line 248
    invoke-virtual {v0, v1}, Landroidx/leanback/widget/GridLayoutManager;->r(Landroid/view/View;)I

    .line 249
    .line 250
    .line 251
    move-result p1

    .line 252
    return p1

    .line 253
    :cond_12
    invoke-virtual {v0, v1}, Landroidx/leanback/widget/GridLayoutManager;->q(Landroid/view/View;)I

    .line 254
    .line 255
    .line 256
    move-result p1

    .line 257
    return p1
.end method

.method public getCount()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/G;->a:Landroidx/leanback/widget/GridLayoutManager;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/leanback/widget/GridLayoutManager;->v:Lm1/x0;

    .line 4
    .line 5
    invoke-virtual {v1}, Lm1/x0;->getItemCount()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget v0, v0, Landroidx/leanback/widget/GridLayoutManager;->w:I

    .line 10
    .line 11
    add-int/2addr v1, v0

    .line 12
    return v1
.end method

.method public getEdge(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/G;->a:Landroidx/leanback/widget/GridLayoutManager;

    .line 2
    .line 3
    iget v1, v0, Landroidx/leanback/widget/GridLayoutManager;->w:I

    .line 4
    .line 5
    sub-int/2addr p1, v1

    .line 6
    invoke-virtual {v0, p1}, Lm1/i0;->findViewByPosition(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget v1, v0, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 11
    .line 12
    const/high16 v2, 0x40000

    .line 13
    .line 14
    and-int/2addr v1, v2

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    iget-object v0, v0, Landroidx/leanback/widget/GridLayoutManager;->t:Lm1/L;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lm1/L;->getDecoratedEnd(Landroid/view/View;)I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    return p1

    .line 24
    :cond_0
    iget-object v0, v0, Landroidx/leanback/widget/GridLayoutManager;->t:Lm1/L;

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lm1/L;->getDecoratedStart(Landroid/view/View;)I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    return p1
.end method

.method public getMinIndex()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/G;->a:Landroidx/leanback/widget/GridLayoutManager;

    .line 2
    .line 3
    iget v0, v0, Landroidx/leanback/widget/GridLayoutManager;->w:I

    .line 4
    .line 5
    return v0
.end method

.method public getSize(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/G;->a:Landroidx/leanback/widget/GridLayoutManager;

    .line 2
    .line 3
    iget v1, v0, Landroidx/leanback/widget/GridLayoutManager;->w:I

    .line 4
    .line 5
    sub-int/2addr p1, v1

    .line 6
    invoke-virtual {v0, p1}, Lm1/i0;->findViewByPosition(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    sget-object v1, Landroidx/leanback/widget/GridLayoutManager;->h0:Landroid/graphics/Rect;

    .line 11
    .line 12
    invoke-virtual {v0, p1, v1}, Landroidx/leanback/widget/GridLayoutManager;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 13
    .line 14
    .line 15
    iget p1, v0, Landroidx/leanback/widget/GridLayoutManager;->s:I

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    return p1

    .line 24
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    return p1
.end method

.method public removeItem(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/G;->a:Landroidx/leanback/widget/GridLayoutManager;

    .line 2
    .line 3
    iget v1, v0, Landroidx/leanback/widget/GridLayoutManager;->w:I

    .line 4
    .line 5
    sub-int/2addr p1, v1

    .line 6
    invoke-virtual {v0, p1}, Lm1/i0;->findViewByPosition(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget v1, v0, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 11
    .line 12
    and-int/lit8 v1, v1, 0x3

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    if-ne v1, v2, :cond_0

    .line 16
    .line 17
    iget-object v1, v0, Landroidx/leanback/widget/GridLayoutManager;->B:Lm1/p0;

    .line 18
    .line 19
    invoke-virtual {v0, p1, v1}, Lm1/i0;->detachAndScrapView(Landroid/view/View;Lm1/p0;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    iget-object v1, v0, Landroidx/leanback/widget/GridLayoutManager;->B:Lm1/p0;

    .line 24
    .line 25
    invoke-virtual {v0, p1, v1}, Lm1/i0;->removeAndRecycleView(Landroid/view/View;Lm1/p0;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method
