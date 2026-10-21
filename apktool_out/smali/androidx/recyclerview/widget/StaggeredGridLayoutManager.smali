.class public Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
.super Lm1/i0;
.source "SourceFile"

# interfaces
.implements Lm1/v0;


# instance fields
.field public A:I

.field public final B:Lm1/M0;

.field public final C:I

.field public D:Z

.field public E:Z

.field public F:Lm1/O0;

.field public final G:Landroid/graphics/Rect;

.field public final H:Lm1/I0;

.field public final I:Z

.field public J:[I

.field public final K:Lm1/H0;

.field public p:I

.field public q:[Lm1/P0;

.field public r:Lm1/L;

.field public s:Lm1/L;

.field public t:I

.field public u:I

.field public final v:Lm1/C;

.field public w:Z

.field public x:Z

.field public y:Ljava/util/BitSet;

.field public z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lm1/i0;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w:Z

    .line 9
    .line 10
    iput-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Z

    .line 11
    .line 12
    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->z:I

    .line 13
    .line 14
    const/high16 v0, -0x80000000

    .line 15
    .line 16
    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:I

    .line 17
    .line 18
    new-instance v0, Lm1/M0;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->B:Lm1/M0;

    .line 24
    .line 25
    const/4 v0, 0x2

    .line 26
    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->C:I

    .line 27
    .line 28
    new-instance v0, Landroid/graphics/Rect;

    .line 29
    .line 30
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->G:Landroid/graphics/Rect;

    .line 34
    .line 35
    new-instance v0, Lm1/I0;

    .line 36
    .line 37
    invoke-direct {v0, p0}, Lm1/I0;-><init>(Landroidx/recyclerview/widget/StaggeredGridLayoutManager;)V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->H:Lm1/I0;

    .line 41
    .line 42
    const/4 v0, 0x1

    .line 43
    iput-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->I:Z

    .line 44
    .line 45
    new-instance v2, Lm1/H0;

    .line 46
    .line 47
    invoke-direct {v2, p0}, Lm1/H0;-><init>(Landroidx/recyclerview/widget/StaggeredGridLayoutManager;)V

    .line 48
    .line 49
    .line 50
    iput-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->K:Lm1/H0;

    .line 51
    .line 52
    invoke-static {p1, p2, p3, p4}, Lm1/i0;->getProperties(Landroid/content/Context;Landroid/util/AttributeSet;II)Lm1/h0;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    iget p2, p1, Lm1/h0;->a:I

    .line 57
    .line 58
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->setOrientation(I)V

    .line 59
    .line 60
    .line 61
    iget p2, p1, Lm1/h0;->b:I

    .line 62
    .line 63
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->setSpanCount(I)V

    .line 64
    .line 65
    .line 66
    iget-boolean p1, p1, Lm1/h0;->c:Z

    .line 67
    .line 68
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->setReverseLayout(Z)V

    .line 69
    .line 70
    .line 71
    new-instance p1, Lm1/C;

    .line 72
    .line 73
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 74
    .line 75
    .line 76
    iput-boolean v0, p1, Lm1/C;->a:Z

    .line 77
    .line 78
    iput v1, p1, Lm1/C;->f:I

    .line 79
    .line 80
    iput v1, p1, Lm1/C;->g:I

    .line 81
    .line 82
    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v:Lm1/C;

    .line 83
    .line 84
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:I

    .line 85
    .line 86
    invoke-static {p0, p1}, Lm1/L;->createOrientationHelper(Lm1/i0;I)Lm1/L;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lm1/L;

    .line 91
    .line 92
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:I

    .line 93
    .line 94
    sub-int/2addr v0, p1

    .line 95
    invoke-static {p0, v0}, Lm1/L;->createOrientationHelper(Lm1/i0;I)Lm1/L;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:Lm1/L;

    .line 100
    .line 101
    return-void
.end method

.method public static N(III)I
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/high16 v1, -0x80000000

    .line 11
    .line 12
    if-eq v0, v1, :cond_2

    .line 13
    .line 14
    const/high16 v1, 0x40000000    # 2.0f

    .line 15
    .line 16
    if-ne v0, v1, :cond_1

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    :goto_0
    return p0

    .line 20
    :cond_2
    :goto_1
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    sub-int/2addr p0, p1

    .line 25
    sub-int/2addr p0, p2

    .line 26
    const/4 p1, 0x0

    .line 27
    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    invoke-static {p0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    return p0
.end method


# virtual methods
.method public final A()Landroid/view/View;
    .locals 13

    .line 1
    invoke-virtual {p0}, Lm1/i0;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v1, v0, -0x1

    .line 6
    .line 7
    new-instance v2, Ljava/util/BitSet;

    .line 8
    .line 9
    iget v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 10
    .line 11
    invoke-direct {v2, v3}, Ljava/util/BitSet;-><init>(I)V

    .line 12
    .line 13
    .line 14
    iget v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 15
    .line 16
    const/4 v4, 0x0

    .line 17
    const/4 v5, 0x1

    .line 18
    invoke-virtual {v2, v4, v3, v5}, Ljava/util/BitSet;->set(IIZ)V

    .line 19
    .line 20
    .line 21
    iget v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:I

    .line 22
    .line 23
    const/4 v6, -0x1

    .line 24
    if-ne v3, v5, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_0

    .line 31
    .line 32
    move v3, v5

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move v3, v6

    .line 35
    :goto_0
    iget-boolean v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Z

    .line 36
    .line 37
    if-eqz v7, :cond_1

    .line 38
    .line 39
    move v0, v6

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    move v1, v4

    .line 42
    :goto_1
    if-ge v1, v0, :cond_2

    .line 43
    .line 44
    move v6, v5

    .line 45
    :cond_2
    if-eq v1, v0, :cond_d

    .line 46
    .line 47
    invoke-virtual {p0, v1}, Lm1/i0;->getChildAt(I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object v7

    .line 51
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 52
    .line 53
    .line 54
    move-result-object v8

    .line 55
    check-cast v8, Lm1/J0;

    .line 56
    .line 57
    iget-object v9, v8, Lm1/J0;->e:Lm1/P0;

    .line 58
    .line 59
    iget v9, v9, Lm1/P0;->e:I

    .line 60
    .line 61
    invoke-virtual {v2, v9}, Ljava/util/BitSet;->get(I)Z

    .line 62
    .line 63
    .line 64
    move-result v9

    .line 65
    if-eqz v9, :cond_7

    .line 66
    .line 67
    iget-object v9, v8, Lm1/J0;->e:Lm1/P0;

    .line 68
    .line 69
    iget-boolean v10, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Z

    .line 70
    .line 71
    const/high16 v11, -0x80000000

    .line 72
    .line 73
    if-eqz v10, :cond_4

    .line 74
    .line 75
    iget v10, v9, Lm1/P0;->c:I

    .line 76
    .line 77
    if-eq v10, v11, :cond_3

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_3
    invoke-virtual {v9}, Lm1/P0;->a()V

    .line 81
    .line 82
    .line 83
    iget v10, v9, Lm1/P0;->c:I

    .line 84
    .line 85
    :goto_2
    iget-object v11, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lm1/L;

    .line 86
    .line 87
    invoke-virtual {v11}, Lm1/L;->getEndAfterPadding()I

    .line 88
    .line 89
    .line 90
    move-result v11

    .line 91
    if-ge v10, v11, :cond_6

    .line 92
    .line 93
    iget-object v0, v9, Lm1/P0;->a:Ljava/util/ArrayList;

    .line 94
    .line 95
    invoke-static {v5, v0}, Lb/c;->h(ILjava/util/ArrayList;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    check-cast v0, Landroid/view/View;

    .line 100
    .line 101
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    check-cast v0, Lm1/J0;

    .line 106
    .line 107
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    return-object v7

    .line 111
    :cond_4
    iget v10, v9, Lm1/P0;->b:I

    .line 112
    .line 113
    if-eq v10, v11, :cond_5

    .line 114
    .line 115
    goto :goto_3

    .line 116
    :cond_5
    iget-object v10, v9, Lm1/P0;->a:Ljava/util/ArrayList;

    .line 117
    .line 118
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v10

    .line 122
    check-cast v10, Landroid/view/View;

    .line 123
    .line 124
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 125
    .line 126
    .line 127
    move-result-object v11

    .line 128
    check-cast v11, Lm1/J0;

    .line 129
    .line 130
    iget-object v12, v9, Lm1/P0;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 131
    .line 132
    iget-object v12, v12, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lm1/L;

    .line 133
    .line 134
    invoke-virtual {v12, v10}, Lm1/L;->getDecoratedStart(Landroid/view/View;)I

    .line 135
    .line 136
    .line 137
    move-result v10

    .line 138
    iput v10, v9, Lm1/P0;->b:I

    .line 139
    .line 140
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    .line 142
    .line 143
    iget v10, v9, Lm1/P0;->b:I

    .line 144
    .line 145
    :goto_3
    iget-object v11, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lm1/L;

    .line 146
    .line 147
    invoke-virtual {v11}, Lm1/L;->getStartAfterPadding()I

    .line 148
    .line 149
    .line 150
    move-result v11

    .line 151
    if-le v10, v11, :cond_6

    .line 152
    .line 153
    iget-object v0, v9, Lm1/P0;->a:Ljava/util/ArrayList;

    .line 154
    .line 155
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    check-cast v0, Landroid/view/View;

    .line 160
    .line 161
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    check-cast v0, Lm1/J0;

    .line 166
    .line 167
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 168
    .line 169
    .line 170
    return-object v7

    .line 171
    :cond_6
    iget-object v9, v8, Lm1/J0;->e:Lm1/P0;

    .line 172
    .line 173
    iget v9, v9, Lm1/P0;->e:I

    .line 174
    .line 175
    invoke-virtual {v2, v9}, Ljava/util/BitSet;->clear(I)V

    .line 176
    .line 177
    .line 178
    :cond_7
    add-int/2addr v1, v6

    .line 179
    if-eq v1, v0, :cond_2

    .line 180
    .line 181
    invoke-virtual {p0, v1}, Lm1/i0;->getChildAt(I)Landroid/view/View;

    .line 182
    .line 183
    .line 184
    move-result-object v9

    .line 185
    iget-boolean v10, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Z

    .line 186
    .line 187
    if-eqz v10, :cond_9

    .line 188
    .line 189
    iget-object v10, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lm1/L;

    .line 190
    .line 191
    invoke-virtual {v10, v7}, Lm1/L;->getDecoratedEnd(Landroid/view/View;)I

    .line 192
    .line 193
    .line 194
    move-result v10

    .line 195
    iget-object v11, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lm1/L;

    .line 196
    .line 197
    invoke-virtual {v11, v9}, Lm1/L;->getDecoratedEnd(Landroid/view/View;)I

    .line 198
    .line 199
    .line 200
    move-result v11

    .line 201
    if-ge v10, v11, :cond_8

    .line 202
    .line 203
    goto :goto_7

    .line 204
    :cond_8
    if-ne v10, v11, :cond_2

    .line 205
    .line 206
    goto :goto_4

    .line 207
    :cond_9
    iget-object v10, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lm1/L;

    .line 208
    .line 209
    invoke-virtual {v10, v7}, Lm1/L;->getDecoratedStart(Landroid/view/View;)I

    .line 210
    .line 211
    .line 212
    move-result v10

    .line 213
    iget-object v11, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lm1/L;

    .line 214
    .line 215
    invoke-virtual {v11, v9}, Lm1/L;->getDecoratedStart(Landroid/view/View;)I

    .line 216
    .line 217
    .line 218
    move-result v11

    .line 219
    if-le v10, v11, :cond_a

    .line 220
    .line 221
    goto :goto_7

    .line 222
    :cond_a
    if-ne v10, v11, :cond_2

    .line 223
    .line 224
    :goto_4
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 225
    .line 226
    .line 227
    move-result-object v9

    .line 228
    check-cast v9, Lm1/J0;

    .line 229
    .line 230
    iget-object v8, v8, Lm1/J0;->e:Lm1/P0;

    .line 231
    .line 232
    iget v8, v8, Lm1/P0;->e:I

    .line 233
    .line 234
    iget-object v9, v9, Lm1/J0;->e:Lm1/P0;

    .line 235
    .line 236
    iget v9, v9, Lm1/P0;->e:I

    .line 237
    .line 238
    sub-int/2addr v8, v9

    .line 239
    if-gez v8, :cond_b

    .line 240
    .line 241
    move v8, v5

    .line 242
    goto :goto_5

    .line 243
    :cond_b
    move v8, v4

    .line 244
    :goto_5
    if-gez v3, :cond_c

    .line 245
    .line 246
    move v9, v5

    .line 247
    goto :goto_6

    .line 248
    :cond_c
    move v9, v4

    .line 249
    :goto_6
    if-eq v8, v9, :cond_2

    .line 250
    .line 251
    :goto_7
    return-object v7

    .line 252
    :cond_d
    const/4 v0, 0x0

    .line 253
    return-object v0
.end method

.method public final B(Landroid/view/View;II)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->G:Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-virtual {p0, p1, v0}, Lm1/i0;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Lm1/J0;

    .line 11
    .line 12
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 13
    .line 14
    iget v3, v0, Landroid/graphics/Rect;->left:I

    .line 15
    .line 16
    add-int/2addr v2, v3

    .line 17
    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 18
    .line 19
    iget v4, v0, Landroid/graphics/Rect;->right:I

    .line 20
    .line 21
    add-int/2addr v3, v4

    .line 22
    invoke-static {p2, v2, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->N(III)I

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 27
    .line 28
    iget v3, v0, Landroid/graphics/Rect;->top:I

    .line 29
    .line 30
    add-int/2addr v2, v3

    .line 31
    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 32
    .line 33
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 34
    .line 35
    add-int/2addr v3, v0

    .line 36
    invoke-static {p3, v2, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->N(III)I

    .line 37
    .line 38
    .line 39
    move-result p3

    .line 40
    invoke-virtual {p0, p1, p2, p3, v1}, Lm1/i0;->j(Landroid/view/View;IILm1/j0;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_0

    .line 45
    .line 46
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    .line 47
    .line 48
    .line 49
    :cond_0
    return-void
.end method

.method public final C(Lm1/p0;Lm1/x0;Z)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    iget-object v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->F:Lm1/O0;

    .line 8
    .line 9
    const/4 v4, -0x1

    .line 10
    iget-object v5, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->H:Lm1/I0;

    .line 11
    .line 12
    if-nez v3, :cond_0

    .line 13
    .line 14
    iget v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->z:I

    .line 15
    .line 16
    if-eq v3, v4, :cond_1

    .line 17
    .line 18
    :cond_0
    invoke-virtual {v2}, Lm1/x0;->getItemCount()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-nez v3, :cond_1

    .line 23
    .line 24
    invoke-virtual/range {p0 .. p1}, Lm1/i0;->removeAndRecycleAllViews(Lm1/p0;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v5}, Lm1/I0;->a()V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    iget-boolean v3, v5, Lm1/I0;->e:Z

    .line 32
    .line 33
    const/4 v6, 0x0

    .line 34
    const/4 v7, 0x1

    .line 35
    if-eqz v3, :cond_3

    .line 36
    .line 37
    iget v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->z:I

    .line 38
    .line 39
    if-ne v3, v4, :cond_3

    .line 40
    .line 41
    iget-object v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->F:Lm1/O0;

    .line 42
    .line 43
    if-eqz v3, :cond_2

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    move v3, v6

    .line 47
    goto :goto_1

    .line 48
    :cond_3
    :goto_0
    move v3, v7

    .line 49
    :goto_1
    iget-object v8, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->B:Lm1/M0;

    .line 50
    .line 51
    iget-object v9, v5, Lm1/I0;->g:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 52
    .line 53
    const/high16 v10, -0x80000000

    .line 54
    .line 55
    if-eqz v3, :cond_24

    .line 56
    .line 57
    invoke-virtual {v5}, Lm1/I0;->a()V

    .line 58
    .line 59
    .line 60
    iget-object v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->F:Lm1/O0;

    .line 61
    .line 62
    if-eqz v11, :cond_9

    .line 63
    .line 64
    iget v12, v11, Lm1/O0;->f:I

    .line 65
    .line 66
    if-lez v12, :cond_7

    .line 67
    .line 68
    iget v13, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 69
    .line 70
    if-ne v12, v13, :cond_6

    .line 71
    .line 72
    move v11, v6

    .line 73
    :goto_2
    iget v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 74
    .line 75
    if-ge v11, v12, :cond_7

    .line 76
    .line 77
    iget-object v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:[Lm1/P0;

    .line 78
    .line 79
    aget-object v12, v12, v11

    .line 80
    .line 81
    invoke-virtual {v12}, Lm1/P0;->b()V

    .line 82
    .line 83
    .line 84
    iget-object v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->F:Lm1/O0;

    .line 85
    .line 86
    iget-object v13, v12, Lm1/O0;->j:[I

    .line 87
    .line 88
    aget v13, v13, v11

    .line 89
    .line 90
    if-eq v13, v10, :cond_5

    .line 91
    .line 92
    iget-boolean v12, v12, Lm1/O0;->r:Z

    .line 93
    .line 94
    if-eqz v12, :cond_4

    .line 95
    .line 96
    iget-object v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lm1/L;

    .line 97
    .line 98
    invoke-virtual {v12}, Lm1/L;->getEndAfterPadding()I

    .line 99
    .line 100
    .line 101
    move-result v12

    .line 102
    :goto_3
    add-int/2addr v13, v12

    .line 103
    goto :goto_4

    .line 104
    :cond_4
    iget-object v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lm1/L;

    .line 105
    .line 106
    invoke-virtual {v12}, Lm1/L;->getStartAfterPadding()I

    .line 107
    .line 108
    .line 109
    move-result v12

    .line 110
    goto :goto_3

    .line 111
    :cond_5
    :goto_4
    iget-object v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:[Lm1/P0;

    .line 112
    .line 113
    aget-object v12, v12, v11

    .line 114
    .line 115
    iput v13, v12, Lm1/P0;->b:I

    .line 116
    .line 117
    iput v13, v12, Lm1/P0;->c:I

    .line 118
    .line 119
    add-int/lit8 v11, v11, 0x1

    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_6
    const/4 v12, 0x0

    .line 123
    iput-object v12, v11, Lm1/O0;->j:[I

    .line 124
    .line 125
    iput v6, v11, Lm1/O0;->f:I

    .line 126
    .line 127
    iput v6, v11, Lm1/O0;->m:I

    .line 128
    .line 129
    iput-object v12, v11, Lm1/O0;->n:[I

    .line 130
    .line 131
    iput-object v12, v11, Lm1/O0;->p:Ljava/util/ArrayList;

    .line 132
    .line 133
    iget v12, v11, Lm1/O0;->e:I

    .line 134
    .line 135
    iput v12, v11, Lm1/O0;->b:I

    .line 136
    .line 137
    :cond_7
    iget-object v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->F:Lm1/O0;

    .line 138
    .line 139
    iget-boolean v12, v11, Lm1/O0;->s:Z

    .line 140
    .line 141
    iput-boolean v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->E:Z

    .line 142
    .line 143
    iget-boolean v11, v11, Lm1/O0;->q:Z

    .line 144
    .line 145
    invoke-virtual {v0, v11}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->setReverseLayout(Z)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->I()V

    .line 149
    .line 150
    .line 151
    iget-object v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->F:Lm1/O0;

    .line 152
    .line 153
    iget v12, v11, Lm1/O0;->b:I

    .line 154
    .line 155
    if-eq v12, v4, :cond_8

    .line 156
    .line 157
    iput v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->z:I

    .line 158
    .line 159
    iget-boolean v12, v11, Lm1/O0;->r:Z

    .line 160
    .line 161
    iput-boolean v12, v5, Lm1/I0;->c:Z

    .line 162
    .line 163
    goto :goto_5

    .line 164
    :cond_8
    iget-boolean v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Z

    .line 165
    .line 166
    iput-boolean v12, v5, Lm1/I0;->c:Z

    .line 167
    .line 168
    :goto_5
    iget v12, v11, Lm1/O0;->m:I

    .line 169
    .line 170
    if-le v12, v7, :cond_a

    .line 171
    .line 172
    iget-object v12, v11, Lm1/O0;->n:[I

    .line 173
    .line 174
    iput-object v12, v8, Lm1/M0;->a:[I

    .line 175
    .line 176
    iget-object v11, v11, Lm1/O0;->p:Ljava/util/ArrayList;

    .line 177
    .line 178
    iput-object v11, v8, Lm1/M0;->b:Ljava/util/ArrayList;

    .line 179
    .line 180
    goto :goto_6

    .line 181
    :cond_9
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->I()V

    .line 182
    .line 183
    .line 184
    iget-boolean v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Z

    .line 185
    .line 186
    iput-boolean v11, v5, Lm1/I0;->c:Z

    .line 187
    .line 188
    :cond_a
    :goto_6
    invoke-virtual {v2}, Lm1/x0;->isPreLayout()Z

    .line 189
    .line 190
    .line 191
    move-result v11

    .line 192
    if-nez v11, :cond_1f

    .line 193
    .line 194
    iget v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->z:I

    .line 195
    .line 196
    if-ne v11, v4, :cond_b

    .line 197
    .line 198
    goto/16 :goto_10

    .line 199
    .line 200
    :cond_b
    if-ltz v11, :cond_1e

    .line 201
    .line 202
    invoke-virtual {v2}, Lm1/x0;->getItemCount()I

    .line 203
    .line 204
    .line 205
    move-result v12

    .line 206
    if-lt v11, v12, :cond_c

    .line 207
    .line 208
    goto/16 :goto_f

    .line 209
    .line 210
    :cond_c
    iget-object v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->F:Lm1/O0;

    .line 211
    .line 212
    if-eqz v11, :cond_e

    .line 213
    .line 214
    iget v12, v11, Lm1/O0;->b:I

    .line 215
    .line 216
    if-eq v12, v4, :cond_e

    .line 217
    .line 218
    iget v11, v11, Lm1/O0;->f:I

    .line 219
    .line 220
    if-ge v11, v7, :cond_d

    .line 221
    .line 222
    goto :goto_7

    .line 223
    :cond_d
    iput v10, v5, Lm1/I0;->b:I

    .line 224
    .line 225
    iget v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->z:I

    .line 226
    .line 227
    iput v11, v5, Lm1/I0;->a:I

    .line 228
    .line 229
    goto/16 :goto_14

    .line 230
    .line 231
    :cond_e
    :goto_7
    iget v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->z:I

    .line 232
    .line 233
    invoke-virtual {v0, v11}, Lm1/i0;->findViewByPosition(I)Landroid/view/View;

    .line 234
    .line 235
    .line 236
    move-result-object v11

    .line 237
    if-eqz v11, :cond_16

    .line 238
    .line 239
    iget-boolean v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Z

    .line 240
    .line 241
    if-eqz v12, :cond_f

    .line 242
    .line 243
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w()I

    .line 244
    .line 245
    .line 246
    move-result v12

    .line 247
    goto :goto_8

    .line 248
    :cond_f
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v()I

    .line 249
    .line 250
    .line 251
    move-result v12

    .line 252
    :goto_8
    iput v12, v5, Lm1/I0;->a:I

    .line 253
    .line 254
    iget v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:I

    .line 255
    .line 256
    if-eq v12, v10, :cond_11

    .line 257
    .line 258
    iget-boolean v12, v5, Lm1/I0;->c:Z

    .line 259
    .line 260
    if-eqz v12, :cond_10

    .line 261
    .line 262
    iget-object v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lm1/L;

    .line 263
    .line 264
    invoke-virtual {v12}, Lm1/L;->getEndAfterPadding()I

    .line 265
    .line 266
    .line 267
    move-result v12

    .line 268
    iget v13, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:I

    .line 269
    .line 270
    sub-int/2addr v12, v13

    .line 271
    iget-object v13, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lm1/L;

    .line 272
    .line 273
    invoke-virtual {v13, v11}, Lm1/L;->getDecoratedEnd(Landroid/view/View;)I

    .line 274
    .line 275
    .line 276
    move-result v11

    .line 277
    sub-int/2addr v12, v11

    .line 278
    iput v12, v5, Lm1/I0;->b:I

    .line 279
    .line 280
    goto/16 :goto_14

    .line 281
    .line 282
    :cond_10
    iget-object v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lm1/L;

    .line 283
    .line 284
    invoke-virtual {v12}, Lm1/L;->getStartAfterPadding()I

    .line 285
    .line 286
    .line 287
    move-result v12

    .line 288
    iget v13, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:I

    .line 289
    .line 290
    add-int/2addr v12, v13

    .line 291
    iget-object v13, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lm1/L;

    .line 292
    .line 293
    invoke-virtual {v13, v11}, Lm1/L;->getDecoratedStart(Landroid/view/View;)I

    .line 294
    .line 295
    .line 296
    move-result v11

    .line 297
    sub-int/2addr v12, v11

    .line 298
    iput v12, v5, Lm1/I0;->b:I

    .line 299
    .line 300
    goto/16 :goto_14

    .line 301
    .line 302
    :cond_11
    iget-object v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lm1/L;

    .line 303
    .line 304
    invoke-virtual {v12, v11}, Lm1/L;->getDecoratedMeasurement(Landroid/view/View;)I

    .line 305
    .line 306
    .line 307
    move-result v12

    .line 308
    iget-object v13, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lm1/L;

    .line 309
    .line 310
    invoke-virtual {v13}, Lm1/L;->getTotalSpace()I

    .line 311
    .line 312
    .line 313
    move-result v13

    .line 314
    if-le v12, v13, :cond_13

    .line 315
    .line 316
    iget-boolean v11, v5, Lm1/I0;->c:Z

    .line 317
    .line 318
    if-eqz v11, :cond_12

    .line 319
    .line 320
    iget-object v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lm1/L;

    .line 321
    .line 322
    invoke-virtual {v11}, Lm1/L;->getEndAfterPadding()I

    .line 323
    .line 324
    .line 325
    move-result v11

    .line 326
    goto :goto_9

    .line 327
    :cond_12
    iget-object v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lm1/L;

    .line 328
    .line 329
    invoke-virtual {v11}, Lm1/L;->getStartAfterPadding()I

    .line 330
    .line 331
    .line 332
    move-result v11

    .line 333
    :goto_9
    iput v11, v5, Lm1/I0;->b:I

    .line 334
    .line 335
    goto/16 :goto_14

    .line 336
    .line 337
    :cond_13
    iget-object v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lm1/L;

    .line 338
    .line 339
    invoke-virtual {v12, v11}, Lm1/L;->getDecoratedStart(Landroid/view/View;)I

    .line 340
    .line 341
    .line 342
    move-result v12

    .line 343
    iget-object v13, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lm1/L;

    .line 344
    .line 345
    invoke-virtual {v13}, Lm1/L;->getStartAfterPadding()I

    .line 346
    .line 347
    .line 348
    move-result v13

    .line 349
    sub-int/2addr v12, v13

    .line 350
    if-gez v12, :cond_14

    .line 351
    .line 352
    neg-int v11, v12

    .line 353
    iput v11, v5, Lm1/I0;->b:I

    .line 354
    .line 355
    goto/16 :goto_14

    .line 356
    .line 357
    :cond_14
    iget-object v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lm1/L;

    .line 358
    .line 359
    invoke-virtual {v12}, Lm1/L;->getEndAfterPadding()I

    .line 360
    .line 361
    .line 362
    move-result v12

    .line 363
    iget-object v13, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lm1/L;

    .line 364
    .line 365
    invoke-virtual {v13, v11}, Lm1/L;->getDecoratedEnd(Landroid/view/View;)I

    .line 366
    .line 367
    .line 368
    move-result v11

    .line 369
    sub-int/2addr v12, v11

    .line 370
    if-gez v12, :cond_15

    .line 371
    .line 372
    iput v12, v5, Lm1/I0;->b:I

    .line 373
    .line 374
    goto/16 :goto_14

    .line 375
    .line 376
    :cond_15
    iput v10, v5, Lm1/I0;->b:I

    .line 377
    .line 378
    goto/16 :goto_14

    .line 379
    .line 380
    :cond_16
    iget v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->z:I

    .line 381
    .line 382
    iput v11, v5, Lm1/I0;->a:I

    .line 383
    .line 384
    iget v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:I

    .line 385
    .line 386
    if-ne v12, v10, :cond_1c

    .line 387
    .line 388
    invoke-virtual {v0}, Lm1/i0;->getChildCount()I

    .line 389
    .line 390
    .line 391
    move-result v12

    .line 392
    if-nez v12, :cond_17

    .line 393
    .line 394
    iget-boolean v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Z

    .line 395
    .line 396
    if-eqz v11, :cond_19

    .line 397
    .line 398
    goto :goto_b

    .line 399
    :cond_17
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v()I

    .line 400
    .line 401
    .line 402
    move-result v12

    .line 403
    if-ge v11, v12, :cond_18

    .line 404
    .line 405
    move v11, v7

    .line 406
    goto :goto_a

    .line 407
    :cond_18
    move v11, v6

    .line 408
    :goto_a
    iget-boolean v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Z

    .line 409
    .line 410
    if-eq v11, v12, :cond_1a

    .line 411
    .line 412
    :cond_19
    move v11, v6

    .line 413
    goto :goto_c

    .line 414
    :cond_1a
    :goto_b
    move v11, v7

    .line 415
    :goto_c
    iput-boolean v11, v5, Lm1/I0;->c:Z

    .line 416
    .line 417
    if-eqz v11, :cond_1b

    .line 418
    .line 419
    iget-object v11, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lm1/L;

    .line 420
    .line 421
    invoke-virtual {v11}, Lm1/L;->getEndAfterPadding()I

    .line 422
    .line 423
    .line 424
    move-result v11

    .line 425
    goto :goto_d

    .line 426
    :cond_1b
    iget-object v11, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lm1/L;

    .line 427
    .line 428
    invoke-virtual {v11}, Lm1/L;->getStartAfterPadding()I

    .line 429
    .line 430
    .line 431
    move-result v11

    .line 432
    :goto_d
    iput v11, v5, Lm1/I0;->b:I

    .line 433
    .line 434
    goto :goto_e

    .line 435
    :cond_1c
    iget-boolean v11, v5, Lm1/I0;->c:Z

    .line 436
    .line 437
    if-eqz v11, :cond_1d

    .line 438
    .line 439
    iget-object v11, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lm1/L;

    .line 440
    .line 441
    invoke-virtual {v11}, Lm1/L;->getEndAfterPadding()I

    .line 442
    .line 443
    .line 444
    move-result v11

    .line 445
    sub-int/2addr v11, v12

    .line 446
    iput v11, v5, Lm1/I0;->b:I

    .line 447
    .line 448
    goto :goto_e

    .line 449
    :cond_1d
    iget-object v11, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lm1/L;

    .line 450
    .line 451
    invoke-virtual {v11}, Lm1/L;->getStartAfterPadding()I

    .line 452
    .line 453
    .line 454
    move-result v11

    .line 455
    add-int/2addr v11, v12

    .line 456
    iput v11, v5, Lm1/I0;->b:I

    .line 457
    .line 458
    :goto_e
    iput-boolean v7, v5, Lm1/I0;->d:Z

    .line 459
    .line 460
    goto :goto_14

    .line 461
    :cond_1e
    :goto_f
    iput v4, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->z:I

    .line 462
    .line 463
    iput v10, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:I

    .line 464
    .line 465
    :cond_1f
    :goto_10
    iget-boolean v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->D:Z

    .line 466
    .line 467
    if-eqz v11, :cond_22

    .line 468
    .line 469
    invoke-virtual {v2}, Lm1/x0;->getItemCount()I

    .line 470
    .line 471
    .line 472
    move-result v11

    .line 473
    invoke-virtual {v0}, Lm1/i0;->getChildCount()I

    .line 474
    .line 475
    .line 476
    move-result v12

    .line 477
    sub-int/2addr v12, v7

    .line 478
    :goto_11
    if-ltz v12, :cond_21

    .line 479
    .line 480
    invoke-virtual {v0, v12}, Lm1/i0;->getChildAt(I)Landroid/view/View;

    .line 481
    .line 482
    .line 483
    move-result-object v13

    .line 484
    invoke-virtual {v0, v13}, Lm1/i0;->getPosition(Landroid/view/View;)I

    .line 485
    .line 486
    .line 487
    move-result v13

    .line 488
    if-ltz v13, :cond_20

    .line 489
    .line 490
    if-ge v13, v11, :cond_20

    .line 491
    .line 492
    goto :goto_13

    .line 493
    :cond_20
    add-int/lit8 v12, v12, -0x1

    .line 494
    .line 495
    goto :goto_11

    .line 496
    :cond_21
    move v13, v6

    .line 497
    goto :goto_13

    .line 498
    :cond_22
    invoke-virtual {v2}, Lm1/x0;->getItemCount()I

    .line 499
    .line 500
    .line 501
    move-result v11

    .line 502
    invoke-virtual {v0}, Lm1/i0;->getChildCount()I

    .line 503
    .line 504
    .line 505
    move-result v12

    .line 506
    move v13, v6

    .line 507
    :goto_12
    if-ge v13, v12, :cond_21

    .line 508
    .line 509
    invoke-virtual {v0, v13}, Lm1/i0;->getChildAt(I)Landroid/view/View;

    .line 510
    .line 511
    .line 512
    move-result-object v14

    .line 513
    invoke-virtual {v0, v14}, Lm1/i0;->getPosition(Landroid/view/View;)I

    .line 514
    .line 515
    .line 516
    move-result v14

    .line 517
    if-ltz v14, :cond_23

    .line 518
    .line 519
    if-ge v14, v11, :cond_23

    .line 520
    .line 521
    move v13, v14

    .line 522
    goto :goto_13

    .line 523
    :cond_23
    add-int/lit8 v13, v13, 0x1

    .line 524
    .line 525
    goto :goto_12

    .line 526
    :goto_13
    iput v13, v5, Lm1/I0;->a:I

    .line 527
    .line 528
    iput v10, v5, Lm1/I0;->b:I

    .line 529
    .line 530
    :goto_14
    iput-boolean v7, v5, Lm1/I0;->e:Z

    .line 531
    .line 532
    :cond_24
    iget-object v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->F:Lm1/O0;

    .line 533
    .line 534
    if-nez v11, :cond_26

    .line 535
    .line 536
    iget v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->z:I

    .line 537
    .line 538
    if-ne v11, v4, :cond_26

    .line 539
    .line 540
    iget-boolean v11, v5, Lm1/I0;->c:Z

    .line 541
    .line 542
    iget-boolean v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->D:Z

    .line 543
    .line 544
    if-ne v11, v12, :cond_25

    .line 545
    .line 546
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    .line 547
    .line 548
    .line 549
    move-result v11

    .line 550
    iget-boolean v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->E:Z

    .line 551
    .line 552
    if-eq v11, v12, :cond_26

    .line 553
    .line 554
    :cond_25
    invoke-virtual {v8}, Lm1/M0;->a()V

    .line 555
    .line 556
    .line 557
    iput-boolean v7, v5, Lm1/I0;->d:Z

    .line 558
    .line 559
    :cond_26
    invoke-virtual {v0}, Lm1/i0;->getChildCount()I

    .line 560
    .line 561
    .line 562
    move-result v8

    .line 563
    if-lez v8, :cond_35

    .line 564
    .line 565
    iget-object v8, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->F:Lm1/O0;

    .line 566
    .line 567
    if-eqz v8, :cond_27

    .line 568
    .line 569
    iget v8, v8, Lm1/O0;->f:I

    .line 570
    .line 571
    if-ge v8, v7, :cond_35

    .line 572
    .line 573
    :cond_27
    iget-boolean v8, v5, Lm1/I0;->d:Z

    .line 574
    .line 575
    if-eqz v8, :cond_29

    .line 576
    .line 577
    move v3, v6

    .line 578
    :goto_15
    iget v8, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 579
    .line 580
    if-ge v3, v8, :cond_35

    .line 581
    .line 582
    iget-object v8, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:[Lm1/P0;

    .line 583
    .line 584
    aget-object v8, v8, v3

    .line 585
    .line 586
    invoke-virtual {v8}, Lm1/P0;->b()V

    .line 587
    .line 588
    .line 589
    iget v8, v5, Lm1/I0;->b:I

    .line 590
    .line 591
    if-eq v8, v10, :cond_28

    .line 592
    .line 593
    iget-object v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:[Lm1/P0;

    .line 594
    .line 595
    aget-object v9, v9, v3

    .line 596
    .line 597
    iput v8, v9, Lm1/P0;->b:I

    .line 598
    .line 599
    iput v8, v9, Lm1/P0;->c:I

    .line 600
    .line 601
    :cond_28
    add-int/lit8 v3, v3, 0x1

    .line 602
    .line 603
    goto :goto_15

    .line 604
    :cond_29
    if-nez v3, :cond_2b

    .line 605
    .line 606
    iget-object v3, v5, Lm1/I0;->f:[I

    .line 607
    .line 608
    if-nez v3, :cond_2a

    .line 609
    .line 610
    goto :goto_17

    .line 611
    :cond_2a
    move v3, v6

    .line 612
    :goto_16
    iget v8, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 613
    .line 614
    if-ge v3, v8, :cond_35

    .line 615
    .line 616
    iget-object v8, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:[Lm1/P0;

    .line 617
    .line 618
    aget-object v8, v8, v3

    .line 619
    .line 620
    invoke-virtual {v8}, Lm1/P0;->b()V

    .line 621
    .line 622
    .line 623
    iget-object v9, v5, Lm1/I0;->f:[I

    .line 624
    .line 625
    aget v9, v9, v3

    .line 626
    .line 627
    iput v9, v8, Lm1/P0;->b:I

    .line 628
    .line 629
    iput v9, v8, Lm1/P0;->c:I

    .line 630
    .line 631
    add-int/lit8 v3, v3, 0x1

    .line 632
    .line 633
    goto :goto_16

    .line 634
    :cond_2b
    :goto_17
    move v3, v6

    .line 635
    :goto_18
    iget v8, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 636
    .line 637
    if-ge v3, v8, :cond_32

    .line 638
    .line 639
    iget-object v8, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:[Lm1/P0;

    .line 640
    .line 641
    aget-object v8, v8, v3

    .line 642
    .line 643
    iget-boolean v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Z

    .line 644
    .line 645
    iget v12, v5, Lm1/I0;->b:I

    .line 646
    .line 647
    if-eqz v11, :cond_2c

    .line 648
    .line 649
    invoke-virtual {v8, v10}, Lm1/P0;->d(I)I

    .line 650
    .line 651
    .line 652
    move-result v13

    .line 653
    goto :goto_19

    .line 654
    :cond_2c
    invoke-virtual {v8, v10}, Lm1/P0;->e(I)I

    .line 655
    .line 656
    .line 657
    move-result v13

    .line 658
    :goto_19
    invoke-virtual {v8}, Lm1/P0;->b()V

    .line 659
    .line 660
    .line 661
    if-ne v13, v10, :cond_2d

    .line 662
    .line 663
    goto :goto_1a

    .line 664
    :cond_2d
    iget-object v14, v8, Lm1/P0;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 665
    .line 666
    if-eqz v11, :cond_2e

    .line 667
    .line 668
    iget-object v15, v14, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lm1/L;

    .line 669
    .line 670
    invoke-virtual {v15}, Lm1/L;->getEndAfterPadding()I

    .line 671
    .line 672
    .line 673
    move-result v15

    .line 674
    if-lt v13, v15, :cond_31

    .line 675
    .line 676
    :cond_2e
    if-nez v11, :cond_2f

    .line 677
    .line 678
    iget-object v11, v14, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lm1/L;

    .line 679
    .line 680
    invoke-virtual {v11}, Lm1/L;->getStartAfterPadding()I

    .line 681
    .line 682
    .line 683
    move-result v11

    .line 684
    if-le v13, v11, :cond_2f

    .line 685
    .line 686
    goto :goto_1a

    .line 687
    :cond_2f
    if-eq v12, v10, :cond_30

    .line 688
    .line 689
    add-int/2addr v13, v12

    .line 690
    :cond_30
    iput v13, v8, Lm1/P0;->c:I

    .line 691
    .line 692
    iput v13, v8, Lm1/P0;->b:I

    .line 693
    .line 694
    :cond_31
    :goto_1a
    add-int/lit8 v3, v3, 0x1

    .line 695
    .line 696
    goto :goto_18

    .line 697
    :cond_32
    iget-object v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:[Lm1/P0;

    .line 698
    .line 699
    array-length v8, v3

    .line 700
    iget-object v11, v5, Lm1/I0;->f:[I

    .line 701
    .line 702
    if-eqz v11, :cond_33

    .line 703
    .line 704
    array-length v11, v11

    .line 705
    if-ge v11, v8, :cond_34

    .line 706
    .line 707
    :cond_33
    iget-object v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:[Lm1/P0;

    .line 708
    .line 709
    array-length v9, v9

    .line 710
    new-array v9, v9, [I

    .line 711
    .line 712
    iput-object v9, v5, Lm1/I0;->f:[I

    .line 713
    .line 714
    :cond_34
    move v9, v6

    .line 715
    :goto_1b
    if-ge v9, v8, :cond_35

    .line 716
    .line 717
    iget-object v11, v5, Lm1/I0;->f:[I

    .line 718
    .line 719
    aget-object v12, v3, v9

    .line 720
    .line 721
    invoke-virtual {v12, v10}, Lm1/P0;->e(I)I

    .line 722
    .line 723
    .line 724
    move-result v12

    .line 725
    aput v12, v11, v9

    .line 726
    .line 727
    add-int/lit8 v9, v9, 0x1

    .line 728
    .line 729
    goto :goto_1b

    .line 730
    :cond_35
    invoke-virtual/range {p0 .. p1}, Lm1/i0;->detachAndScrapAttachedViews(Lm1/p0;)V

    .line 731
    .line 732
    .line 733
    iget-object v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v:Lm1/C;

    .line 734
    .line 735
    iput-boolean v6, v3, Lm1/C;->a:Z

    .line 736
    .line 737
    iget-object v8, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:Lm1/L;

    .line 738
    .line 739
    invoke-virtual {v8}, Lm1/L;->getTotalSpace()I

    .line 740
    .line 741
    .line 742
    move-result v8

    .line 743
    iget v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 744
    .line 745
    div-int v9, v8, v9

    .line 746
    .line 747
    iput v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:I

    .line 748
    .line 749
    iget-object v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:Lm1/L;

    .line 750
    .line 751
    invoke-virtual {v9}, Lm1/L;->getMode()I

    .line 752
    .line 753
    .line 754
    move-result v9

    .line 755
    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 756
    .line 757
    .line 758
    iget v8, v5, Lm1/I0;->a:I

    .line 759
    .line 760
    invoke-virtual {v0, v8, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->L(ILm1/x0;)V

    .line 761
    .line 762
    .line 763
    iget-boolean v8, v5, Lm1/I0;->c:Z

    .line 764
    .line 765
    if-eqz v8, :cond_36

    .line 766
    .line 767
    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->K(I)V

    .line 768
    .line 769
    .line 770
    invoke-virtual {v0, v1, v3, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q(Lm1/p0;Lm1/C;Lm1/x0;)I

    .line 771
    .line 772
    .line 773
    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->K(I)V

    .line 774
    .line 775
    .line 776
    iget v4, v5, Lm1/I0;->a:I

    .line 777
    .line 778
    iget v8, v3, Lm1/C;->d:I

    .line 779
    .line 780
    add-int/2addr v4, v8

    .line 781
    iput v4, v3, Lm1/C;->c:I

    .line 782
    .line 783
    invoke-virtual {v0, v1, v3, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q(Lm1/p0;Lm1/C;Lm1/x0;)I

    .line 784
    .line 785
    .line 786
    goto :goto_1c

    .line 787
    :cond_36
    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->K(I)V

    .line 788
    .line 789
    .line 790
    invoke-virtual {v0, v1, v3, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q(Lm1/p0;Lm1/C;Lm1/x0;)I

    .line 791
    .line 792
    .line 793
    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->K(I)V

    .line 794
    .line 795
    .line 796
    iget v4, v5, Lm1/I0;->a:I

    .line 797
    .line 798
    iget v8, v3, Lm1/C;->d:I

    .line 799
    .line 800
    add-int/2addr v4, v8

    .line 801
    iput v4, v3, Lm1/C;->c:I

    .line 802
    .line 803
    invoke-virtual {v0, v1, v3, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q(Lm1/p0;Lm1/C;Lm1/x0;)I

    .line 804
    .line 805
    .line 806
    :goto_1c
    iget-object v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:Lm1/L;

    .line 807
    .line 808
    invoke-virtual {v3}, Lm1/L;->getMode()I

    .line 809
    .line 810
    .line 811
    move-result v3

    .line 812
    const/high16 v4, 0x40000000    # 2.0f

    .line 813
    .line 814
    if-ne v3, v4, :cond_37

    .line 815
    .line 816
    goto/16 :goto_21

    .line 817
    .line 818
    :cond_37
    invoke-virtual {v0}, Lm1/i0;->getChildCount()I

    .line 819
    .line 820
    .line 821
    move-result v3

    .line 822
    const/4 v4, 0x0

    .line 823
    move v8, v6

    .line 824
    :goto_1d
    if-ge v8, v3, :cond_3a

    .line 825
    .line 826
    invoke-virtual {v0, v8}, Lm1/i0;->getChildAt(I)Landroid/view/View;

    .line 827
    .line 828
    .line 829
    move-result-object v9

    .line 830
    iget-object v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:Lm1/L;

    .line 831
    .line 832
    invoke-virtual {v11, v9}, Lm1/L;->getDecoratedMeasurement(Landroid/view/View;)I

    .line 833
    .line 834
    .line 835
    move-result v11

    .line 836
    int-to-float v11, v11

    .line 837
    cmpg-float v12, v11, v4

    .line 838
    .line 839
    if-gez v12, :cond_38

    .line 840
    .line 841
    goto :goto_1e

    .line 842
    :cond_38
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 843
    .line 844
    .line 845
    move-result-object v9

    .line 846
    check-cast v9, Lm1/J0;

    .line 847
    .line 848
    invoke-virtual {v9}, Lm1/J0;->isFullSpan()Z

    .line 849
    .line 850
    .line 851
    move-result v9

    .line 852
    if-eqz v9, :cond_39

    .line 853
    .line 854
    const/high16 v9, 0x3f800000    # 1.0f

    .line 855
    .line 856
    mul-float/2addr v11, v9

    .line 857
    iget v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 858
    .line 859
    int-to-float v9, v9

    .line 860
    div-float/2addr v11, v9

    .line 861
    :cond_39
    invoke-static {v4, v11}, Ljava/lang/Math;->max(FF)F

    .line 862
    .line 863
    .line 864
    move-result v4

    .line 865
    :goto_1e
    add-int/lit8 v8, v8, 0x1

    .line 866
    .line 867
    goto :goto_1d

    .line 868
    :cond_3a
    iget v8, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:I

    .line 869
    .line 870
    iget v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 871
    .line 872
    int-to-float v9, v9

    .line 873
    mul-float/2addr v4, v9

    .line 874
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    .line 875
    .line 876
    .line 877
    move-result v4

    .line 878
    iget-object v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:Lm1/L;

    .line 879
    .line 880
    invoke-virtual {v9}, Lm1/L;->getMode()I

    .line 881
    .line 882
    .line 883
    move-result v9

    .line 884
    if-ne v9, v10, :cond_3b

    .line 885
    .line 886
    iget-object v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:Lm1/L;

    .line 887
    .line 888
    invoke-virtual {v9}, Lm1/L;->getTotalSpace()I

    .line 889
    .line 890
    .line 891
    move-result v9

    .line 892
    invoke-static {v4, v9}, Ljava/lang/Math;->min(II)I

    .line 893
    .line 894
    .line 895
    move-result v4

    .line 896
    :cond_3b
    iget v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 897
    .line 898
    div-int v9, v4, v9

    .line 899
    .line 900
    iput v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:I

    .line 901
    .line 902
    iget-object v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:Lm1/L;

    .line 903
    .line 904
    invoke-virtual {v9}, Lm1/L;->getMode()I

    .line 905
    .line 906
    .line 907
    move-result v9

    .line 908
    invoke-static {v4, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 909
    .line 910
    .line 911
    iget v4, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:I

    .line 912
    .line 913
    if-ne v4, v8, :cond_3c

    .line 914
    .line 915
    goto :goto_21

    .line 916
    :cond_3c
    move v4, v6

    .line 917
    :goto_1f
    if-ge v4, v3, :cond_3f

    .line 918
    .line 919
    invoke-virtual {v0, v4}, Lm1/i0;->getChildAt(I)Landroid/view/View;

    .line 920
    .line 921
    .line 922
    move-result-object v9

    .line 923
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 924
    .line 925
    .line 926
    move-result-object v10

    .line 927
    check-cast v10, Lm1/J0;

    .line 928
    .line 929
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 930
    .line 931
    .line 932
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    .line 933
    .line 934
    .line 935
    move-result v11

    .line 936
    if-eqz v11, :cond_3d

    .line 937
    .line 938
    iget v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:I

    .line 939
    .line 940
    if-ne v11, v7, :cond_3d

    .line 941
    .line 942
    iget v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 943
    .line 944
    sub-int/2addr v11, v7

    .line 945
    iget-object v10, v10, Lm1/J0;->e:Lm1/P0;

    .line 946
    .line 947
    iget v10, v10, Lm1/P0;->e:I

    .line 948
    .line 949
    sub-int/2addr v11, v10

    .line 950
    neg-int v10, v11

    .line 951
    iget v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:I

    .line 952
    .line 953
    mul-int/2addr v11, v10

    .line 954
    mul-int/2addr v10, v8

    .line 955
    sub-int/2addr v11, v10

    .line 956
    invoke-virtual {v9, v11}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 957
    .line 958
    .line 959
    goto :goto_20

    .line 960
    :cond_3d
    iget-object v10, v10, Lm1/J0;->e:Lm1/P0;

    .line 961
    .line 962
    iget v10, v10, Lm1/P0;->e:I

    .line 963
    .line 964
    iget v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:I

    .line 965
    .line 966
    mul-int/2addr v11, v10

    .line 967
    mul-int/2addr v10, v8

    .line 968
    iget v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:I

    .line 969
    .line 970
    if-ne v12, v7, :cond_3e

    .line 971
    .line 972
    sub-int/2addr v11, v10

    .line 973
    invoke-virtual {v9, v11}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 974
    .line 975
    .line 976
    goto :goto_20

    .line 977
    :cond_3e
    sub-int/2addr v11, v10

    .line 978
    invoke-virtual {v9, v11}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 979
    .line 980
    .line 981
    :goto_20
    add-int/lit8 v4, v4, 0x1

    .line 982
    .line 983
    goto :goto_1f

    .line 984
    :cond_3f
    :goto_21
    invoke-virtual {v0}, Lm1/i0;->getChildCount()I

    .line 985
    .line 986
    .line 987
    move-result v3

    .line 988
    if-lez v3, :cond_41

    .line 989
    .line 990
    iget-boolean v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Z

    .line 991
    .line 992
    if-eqz v3, :cond_40

    .line 993
    .line 994
    invoke-virtual {v0, v1, v2, v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t(Lm1/p0;Lm1/x0;Z)V

    .line 995
    .line 996
    .line 997
    invoke-virtual {v0, v1, v2, v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u(Lm1/p0;Lm1/x0;Z)V

    .line 998
    .line 999
    .line 1000
    goto :goto_22

    .line 1001
    :cond_40
    invoke-virtual {v0, v1, v2, v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u(Lm1/p0;Lm1/x0;Z)V

    .line 1002
    .line 1003
    .line 1004
    invoke-virtual {v0, v1, v2, v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t(Lm1/p0;Lm1/x0;Z)V

    .line 1005
    .line 1006
    .line 1007
    :cond_41
    :goto_22
    if-eqz p3, :cond_42

    .line 1008
    .line 1009
    invoke-virtual {v2}, Lm1/x0;->isPreLayout()Z

    .line 1010
    .line 1011
    .line 1012
    move-result v3

    .line 1013
    if-nez v3, :cond_42

    .line 1014
    .line 1015
    iget v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->C:I

    .line 1016
    .line 1017
    if-eqz v3, :cond_42

    .line 1018
    .line 1019
    invoke-virtual {v0}, Lm1/i0;->getChildCount()I

    .line 1020
    .line 1021
    .line 1022
    move-result v3

    .line 1023
    if-lez v3, :cond_42

    .line 1024
    .line 1025
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A()Landroid/view/View;

    .line 1026
    .line 1027
    .line 1028
    move-result-object v3

    .line 1029
    if-eqz v3, :cond_42

    .line 1030
    .line 1031
    iget-object v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->K:Lm1/H0;

    .line 1032
    .line 1033
    invoke-virtual {v0, v3}, Lm1/i0;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1034
    .line 1035
    .line 1036
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->m()Z

    .line 1037
    .line 1038
    .line 1039
    move-result v3

    .line 1040
    if-eqz v3, :cond_42

    .line 1041
    .line 1042
    goto :goto_23

    .line 1043
    :cond_42
    move v7, v6

    .line 1044
    :goto_23
    invoke-virtual {v2}, Lm1/x0;->isPreLayout()Z

    .line 1045
    .line 1046
    .line 1047
    move-result v3

    .line 1048
    if-eqz v3, :cond_43

    .line 1049
    .line 1050
    invoke-virtual {v5}, Lm1/I0;->a()V

    .line 1051
    .line 1052
    .line 1053
    :cond_43
    iget-boolean v3, v5, Lm1/I0;->c:Z

    .line 1054
    .line 1055
    iput-boolean v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->D:Z

    .line 1056
    .line 1057
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    .line 1058
    .line 1059
    .line 1060
    move-result v3

    .line 1061
    iput-boolean v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->E:Z

    .line 1062
    .line 1063
    if-eqz v7, :cond_44

    .line 1064
    .line 1065
    invoke-virtual {v5}, Lm1/I0;->a()V

    .line 1066
    .line 1067
    .line 1068
    invoke-virtual {v0, v1, v2, v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->C(Lm1/p0;Lm1/x0;Z)V

    .line 1069
    .line 1070
    .line 1071
    :cond_44
    return-void
.end method

.method public final D(I)Z
    .locals 4

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    if-nez v0, :cond_2

    .line 7
    .line 8
    if-ne p1, v1, :cond_0

    .line 9
    .line 10
    move p1, v3

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move p1, v2

    .line 13
    :goto_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Z

    .line 14
    .line 15
    if-eq p1, v0, :cond_1

    .line 16
    .line 17
    return v3

    .line 18
    :cond_1
    return v2

    .line 19
    :cond_2
    if-ne p1, v1, :cond_3

    .line 20
    .line 21
    move p1, v3

    .line 22
    goto :goto_1

    .line 23
    :cond_3
    move p1, v2

    .line 24
    :goto_1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Z

    .line 25
    .line 26
    if-ne p1, v0, :cond_4

    .line 27
    .line 28
    move p1, v3

    .line 29
    goto :goto_2

    .line 30
    :cond_4
    move p1, v2

    .line 31
    :goto_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-ne p1, v0, :cond_5

    .line 36
    .line 37
    return v3

    .line 38
    :cond_5
    return v2
.end method

.method public final E(ILm1/x0;)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-lez p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    move v2, v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, -0x1

    .line 15
    :goto_0
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v:Lm1/C;

    .line 16
    .line 17
    iput-boolean v0, v3, Lm1/C;->a:Z

    .line 18
    .line 19
    invoke-virtual {p0, v1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->L(ILm1/x0;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->K(I)V

    .line 23
    .line 24
    .line 25
    iget p2, v3, Lm1/C;->d:I

    .line 26
    .line 27
    add-int/2addr v1, p2

    .line 28
    iput v1, v3, Lm1/C;->c:I

    .line 29
    .line 30
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    iput p1, v3, Lm1/C;->b:I

    .line 35
    .line 36
    return-void
.end method

.method public final F(Lm1/p0;Lm1/C;)V
    .locals 4

    .line 1
    iget-boolean v0, p2, Lm1/C;->a:Z

    .line 2
    .line 3
    if-eqz v0, :cond_a

    .line 4
    .line 5
    iget-boolean v0, p2, Lm1/C;->i:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_4

    .line 10
    .line 11
    :cond_0
    iget v0, p2, Lm1/C;->b:I

    .line 12
    .line 13
    const/4 v1, -0x1

    .line 14
    if-nez v0, :cond_2

    .line 15
    .line 16
    iget v0, p2, Lm1/C;->e:I

    .line 17
    .line 18
    if-ne v0, v1, :cond_1

    .line 19
    .line 20
    iget p2, p2, Lm1/C;->g:I

    .line 21
    .line 22
    invoke-virtual {p0, p2, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->G(ILm1/p0;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    iget p2, p2, Lm1/C;->f:I

    .line 27
    .line 28
    invoke-virtual {p0, p2, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->H(ILm1/p0;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_2
    iget v0, p2, Lm1/C;->e:I

    .line 33
    .line 34
    const/4 v2, 0x1

    .line 35
    const/4 v3, 0x0

    .line 36
    if-ne v0, v1, :cond_6

    .line 37
    .line 38
    iget v0, p2, Lm1/C;->f:I

    .line 39
    .line 40
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:[Lm1/P0;

    .line 41
    .line 42
    aget-object v1, v1, v3

    .line 43
    .line 44
    invoke-virtual {v1, v0}, Lm1/P0;->e(I)I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    :goto_0
    iget v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 49
    .line 50
    if-ge v2, v3, :cond_4

    .line 51
    .line 52
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:[Lm1/P0;

    .line 53
    .line 54
    aget-object v3, v3, v2

    .line 55
    .line 56
    invoke-virtual {v3, v0}, Lm1/P0;->e(I)I

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    if-le v3, v1, :cond_3

    .line 61
    .line 62
    move v1, v3

    .line 63
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_4
    sub-int/2addr v0, v1

    .line 67
    if-gez v0, :cond_5

    .line 68
    .line 69
    iget p2, p2, Lm1/C;->g:I

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_5
    iget v1, p2, Lm1/C;->g:I

    .line 73
    .line 74
    iget p2, p2, Lm1/C;->b:I

    .line 75
    .line 76
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    .line 77
    .line 78
    .line 79
    move-result p2

    .line 80
    sub-int p2, v1, p2

    .line 81
    .line 82
    :goto_1
    invoke-virtual {p0, p2, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->G(ILm1/p0;)V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :cond_6
    iget v0, p2, Lm1/C;->g:I

    .line 87
    .line 88
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:[Lm1/P0;

    .line 89
    .line 90
    aget-object v1, v1, v3

    .line 91
    .line 92
    invoke-virtual {v1, v0}, Lm1/P0;->d(I)I

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    :goto_2
    iget v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 97
    .line 98
    if-ge v2, v3, :cond_8

    .line 99
    .line 100
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:[Lm1/P0;

    .line 101
    .line 102
    aget-object v3, v3, v2

    .line 103
    .line 104
    invoke-virtual {v3, v0}, Lm1/P0;->d(I)I

    .line 105
    .line 106
    .line 107
    move-result v3

    .line 108
    if-ge v3, v1, :cond_7

    .line 109
    .line 110
    move v1, v3

    .line 111
    :cond_7
    add-int/lit8 v2, v2, 0x1

    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_8
    iget v0, p2, Lm1/C;->g:I

    .line 115
    .line 116
    sub-int/2addr v1, v0

    .line 117
    if-gez v1, :cond_9

    .line 118
    .line 119
    iget p2, p2, Lm1/C;->f:I

    .line 120
    .line 121
    goto :goto_3

    .line 122
    :cond_9
    iget v0, p2, Lm1/C;->f:I

    .line 123
    .line 124
    iget p2, p2, Lm1/C;->b:I

    .line 125
    .line 126
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    .line 127
    .line 128
    .line 129
    move-result p2

    .line 130
    add-int/2addr p2, v0

    .line 131
    :goto_3
    invoke-virtual {p0, p2, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->H(ILm1/p0;)V

    .line 132
    .line 133
    .line 134
    :cond_a
    :goto_4
    return-void
.end method

.method public final G(ILm1/p0;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lm1/i0;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    sub-int/2addr v0, v1

    .line 7
    :goto_0
    if-ltz v0, :cond_4

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lm1/i0;->getChildAt(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lm1/L;

    .line 14
    .line 15
    invoke-virtual {v3, v2}, Lm1/L;->getDecoratedStart(Landroid/view/View;)I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-lt v3, p1, :cond_4

    .line 20
    .line 21
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lm1/L;

    .line 22
    .line 23
    invoke-virtual {v3, v2}, Lm1/L;->getTransformedStartWithDecoration(Landroid/view/View;)I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-lt v3, p1, :cond_4

    .line 28
    .line 29
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    check-cast v3, Lm1/J0;

    .line 34
    .line 35
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    iget-object v4, v3, Lm1/J0;->e:Lm1/P0;

    .line 39
    .line 40
    iget-object v4, v4, Lm1/P0;->a:Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-ne v4, v1, :cond_0

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_0
    iget-object v3, v3, Lm1/J0;->e:Lm1/P0;

    .line 50
    .line 51
    iget-object v4, v3, Lm1/P0;->a:Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    add-int/lit8 v6, v5, -0x1

    .line 58
    .line 59
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    check-cast v4, Landroid/view/View;

    .line 64
    .line 65
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    check-cast v6, Lm1/J0;

    .line 70
    .line 71
    const/4 v7, 0x0

    .line 72
    iput-object v7, v6, Lm1/J0;->e:Lm1/P0;

    .line 73
    .line 74
    invoke-virtual {v6}, Lm1/j0;->isItemRemoved()Z

    .line 75
    .line 76
    .line 77
    move-result v7

    .line 78
    if-nez v7, :cond_1

    .line 79
    .line 80
    invoke-virtual {v6}, Lm1/j0;->isItemChanged()Z

    .line 81
    .line 82
    .line 83
    move-result v6

    .line 84
    if-eqz v6, :cond_2

    .line 85
    .line 86
    :cond_1
    iget v6, v3, Lm1/P0;->d:I

    .line 87
    .line 88
    iget-object v7, v3, Lm1/P0;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 89
    .line 90
    iget-object v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lm1/L;

    .line 91
    .line 92
    invoke-virtual {v7, v4}, Lm1/L;->getDecoratedMeasurement(Landroid/view/View;)I

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    sub-int/2addr v6, v4

    .line 97
    iput v6, v3, Lm1/P0;->d:I

    .line 98
    .line 99
    :cond_2
    const/high16 v4, -0x80000000

    .line 100
    .line 101
    if-ne v5, v1, :cond_3

    .line 102
    .line 103
    iput v4, v3, Lm1/P0;->b:I

    .line 104
    .line 105
    :cond_3
    iput v4, v3, Lm1/P0;->c:I

    .line 106
    .line 107
    invoke-virtual {p0, v2, p2}, Lm1/i0;->removeAndRecycleView(Landroid/view/View;Lm1/p0;)V

    .line 108
    .line 109
    .line 110
    add-int/lit8 v0, v0, -0x1

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_4
    :goto_1
    return-void
.end method

.method public final H(ILm1/p0;)V
    .locals 6

    .line 1
    :goto_0
    invoke-virtual {p0}, Lm1/i0;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-lez v0, :cond_4

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, v0}, Lm1/i0;->getChildAt(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lm1/L;

    .line 13
    .line 14
    invoke-virtual {v2, v1}, Lm1/L;->getDecoratedEnd(Landroid/view/View;)I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-gt v2, p1, :cond_4

    .line 19
    .line 20
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lm1/L;

    .line 21
    .line 22
    invoke-virtual {v2, v1}, Lm1/L;->getTransformedEndWithDecoration(Landroid/view/View;)I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-gt v2, p1, :cond_4

    .line 27
    .line 28
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Lm1/J0;

    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    iget-object v3, v2, Lm1/J0;->e:Lm1/P0;

    .line 38
    .line 39
    iget-object v3, v3, Lm1/P0;->a:Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    const/4 v4, 0x1

    .line 46
    if-ne v3, v4, :cond_0

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_0
    iget-object v2, v2, Lm1/J0;->e:Lm1/P0;

    .line 50
    .line 51
    iget-object v3, v2, Lm1/P0;->a:Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Landroid/view/View;

    .line 58
    .line 59
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    check-cast v4, Lm1/J0;

    .line 64
    .line 65
    const/4 v5, 0x0

    .line 66
    iput-object v5, v4, Lm1/J0;->e:Lm1/P0;

    .line 67
    .line 68
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    const/high16 v5, -0x80000000

    .line 73
    .line 74
    if-nez v3, :cond_1

    .line 75
    .line 76
    iput v5, v2, Lm1/P0;->c:I

    .line 77
    .line 78
    :cond_1
    invoke-virtual {v4}, Lm1/j0;->isItemRemoved()Z

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    if-nez v3, :cond_2

    .line 83
    .line 84
    invoke-virtual {v4}, Lm1/j0;->isItemChanged()Z

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    if-eqz v3, :cond_3

    .line 89
    .line 90
    :cond_2
    iget v3, v2, Lm1/P0;->d:I

    .line 91
    .line 92
    iget-object v4, v2, Lm1/P0;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 93
    .line 94
    iget-object v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lm1/L;

    .line 95
    .line 96
    invoke-virtual {v4, v0}, Lm1/L;->getDecoratedMeasurement(Landroid/view/View;)I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    sub-int/2addr v3, v0

    .line 101
    iput v3, v2, Lm1/P0;->d:I

    .line 102
    .line 103
    :cond_3
    iput v5, v2, Lm1/P0;->b:I

    .line 104
    .line 105
    invoke-virtual {p0, v1, p2}, Lm1/i0;->removeAndRecycleView(Landroid/view/View;Lm1/p0;)V

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_4
    :goto_1
    return-void
.end method

.method public final I()V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_1

    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w:Z

    .line 14
    .line 15
    xor-int/2addr v0, v1

    .line 16
    iput-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Z

    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    :goto_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w:Z

    .line 20
    .line 21
    iput-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Z

    .line 22
    .line 23
    return-void
.end method

.method public final J(ILm1/p0;Lm1/x0;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lm1/i0;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    invoke-virtual {p0, p1, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->E(ILm1/x0;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v:Lm1/C;

    .line 15
    .line 16
    invoke-virtual {p0, p2, v0, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q(Lm1/p0;Lm1/C;Lm1/x0;)I

    .line 17
    .line 18
    .line 19
    move-result p3

    .line 20
    iget v2, v0, Lm1/C;->b:I

    .line 21
    .line 22
    if-ge v2, p3, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    if-gez p1, :cond_2

    .line 26
    .line 27
    neg-int p1, p3

    .line 28
    goto :goto_0

    .line 29
    :cond_2
    move p1, p3

    .line 30
    :goto_0
    iget-object p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lm1/L;

    .line 31
    .line 32
    neg-int v2, p1

    .line 33
    invoke-virtual {p3, v2}, Lm1/L;->offsetChildren(I)V

    .line 34
    .line 35
    .line 36
    iget-boolean p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Z

    .line 37
    .line 38
    iput-boolean p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->D:Z

    .line 39
    .line 40
    iput v1, v0, Lm1/C;->b:I

    .line 41
    .line 42
    invoke-virtual {p0, p2, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->F(Lm1/p0;Lm1/C;)V

    .line 43
    .line 44
    .line 45
    return p1

    .line 46
    :cond_3
    :goto_1
    return v1
.end method

.method public final K(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v:Lm1/C;

    .line 2
    .line 3
    iput p1, v0, Lm1/C;->e:I

    .line 4
    .line 5
    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Z

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, -0x1

    .line 9
    if-ne p1, v3, :cond_0

    .line 10
    .line 11
    move p1, v2

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    if-ne v1, p1, :cond_1

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    move v2, v3

    .line 18
    :goto_1
    iput v2, v0, Lm1/C;->d:I

    .line 19
    .line 20
    return-void
.end method

.method public final L(ILm1/x0;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v:Lm1/C;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput v1, v0, Lm1/C;->b:I

    .line 5
    .line 6
    iput p1, v0, Lm1/C;->c:I

    .line 7
    .line 8
    invoke-virtual {p0}, Lm1/i0;->isSmoothScrolling()Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const/4 v3, 0x1

    .line 13
    if-eqz v2, :cond_2

    .line 14
    .line 15
    invoke-virtual {p2}, Lm1/x0;->getTargetScrollPosition()I

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    const/4 v2, -0x1

    .line 20
    if-eq p2, v2, :cond_2

    .line 21
    .line 22
    iget-boolean v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Z

    .line 23
    .line 24
    if-ge p2, p1, :cond_0

    .line 25
    .line 26
    move p1, v3

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move p1, v1

    .line 29
    :goto_0
    if-ne v2, p1, :cond_1

    .line 30
    .line 31
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lm1/L;

    .line 32
    .line 33
    invoke-virtual {p1}, Lm1/L;->getTotalSpace()I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    move p2, v1

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lm1/L;

    .line 40
    .line 41
    invoke-virtual {p1}, Lm1/L;->getTotalSpace()I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    move p2, p1

    .line 46
    move p1, v1

    .line 47
    goto :goto_1

    .line 48
    :cond_2
    move p1, v1

    .line 49
    move p2, p1

    .line 50
    :goto_1
    invoke-virtual {p0}, Lm1/i0;->getClipToPadding()Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_3

    .line 55
    .line 56
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lm1/L;

    .line 57
    .line 58
    invoke-virtual {v2}, Lm1/L;->getStartAfterPadding()I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    sub-int/2addr v2, p2

    .line 63
    iput v2, v0, Lm1/C;->f:I

    .line 64
    .line 65
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lm1/L;

    .line 66
    .line 67
    invoke-virtual {p2}, Lm1/L;->getEndAfterPadding()I

    .line 68
    .line 69
    .line 70
    move-result p2

    .line 71
    add-int/2addr p2, p1

    .line 72
    iput p2, v0, Lm1/C;->g:I

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_3
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lm1/L;

    .line 76
    .line 77
    invoke-virtual {v2}, Lm1/L;->getEnd()I

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    add-int/2addr v2, p1

    .line 82
    iput v2, v0, Lm1/C;->g:I

    .line 83
    .line 84
    neg-int p1, p2

    .line 85
    iput p1, v0, Lm1/C;->f:I

    .line 86
    .line 87
    :goto_2
    iput-boolean v1, v0, Lm1/C;->h:Z

    .line 88
    .line 89
    iput-boolean v3, v0, Lm1/C;->a:Z

    .line 90
    .line 91
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lm1/L;

    .line 92
    .line 93
    invoke-virtual {p1}, Lm1/L;->getMode()I

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    if-nez p1, :cond_4

    .line 98
    .line 99
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lm1/L;

    .line 100
    .line 101
    invoke-virtual {p1}, Lm1/L;->getEnd()I

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    if-nez p1, :cond_4

    .line 106
    .line 107
    move v1, v3

    .line 108
    :cond_4
    iput-boolean v1, v0, Lm1/C;->i:Z

    .line 109
    .line 110
    return-void
.end method

.method public final M(Lm1/P0;II)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Lm1/P0;->getDeletedSize()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/high16 v1, -0x80000000

    .line 6
    .line 7
    const/4 v2, -0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    iget v4, p1, Lm1/P0;->e:I

    .line 10
    .line 11
    if-ne p2, v2, :cond_1

    .line 12
    .line 13
    iget p2, p1, Lm1/P0;->b:I

    .line 14
    .line 15
    if-eq p2, v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object p2, p1, Lm1/P0;->a:Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    check-cast p2, Landroid/view/View;

    .line 25
    .line 26
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Lm1/J0;

    .line 31
    .line 32
    iget-object v2, p1, Lm1/P0;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 33
    .line 34
    iget-object v2, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lm1/L;

    .line 35
    .line 36
    invoke-virtual {v2, p2}, Lm1/L;->getDecoratedStart(Landroid/view/View;)I

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    iput p2, p1, Lm1/P0;->b:I

    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    iget p2, p1, Lm1/P0;->b:I

    .line 46
    .line 47
    :goto_0
    add-int/2addr p2, v0

    .line 48
    if-gt p2, p3, :cond_3

    .line 49
    .line 50
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->y:Ljava/util/BitSet;

    .line 51
    .line 52
    invoke-virtual {p1, v4, v3}, Ljava/util/BitSet;->set(IZ)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_1
    iget p2, p1, Lm1/P0;->c:I

    .line 57
    .line 58
    if-eq p2, v1, :cond_2

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_2
    invoke-virtual {p1}, Lm1/P0;->a()V

    .line 62
    .line 63
    .line 64
    iget p2, p1, Lm1/P0;->c:I

    .line 65
    .line 66
    :goto_1
    sub-int/2addr p2, v0

    .line 67
    if-lt p2, p3, :cond_3

    .line 68
    .line 69
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->y:Ljava/util/BitSet;

    .line 70
    .line 71
    invoke-virtual {p1, v4, v3}, Ljava/util/BitSet;->set(IZ)V

    .line 72
    .line 73
    .line 74
    :cond_3
    return-void
.end method

.method public assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->F:Lm1/O0;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1}, Lm1/i0;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public canScrollHorizontally()Z
    .locals 1

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    return v0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    return v0
.end method

.method public canScrollVertically()Z
    .locals 2

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    return v0
.end method

.method public checkLayoutParams(Lm1/j0;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Lm1/J0;

    .line 2
    .line 3
    return p1
.end method

.method public collectAdjacentPrefetchPositions(IILm1/x0;Lm1/g0;)V
    .locals 4

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    move p1, p2

    .line 7
    :goto_0
    invoke-virtual {p0}, Lm1/i0;->getChildCount()I

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    if-eqz p2, :cond_7

    .line 12
    .line 13
    if-nez p1, :cond_1

    .line 14
    .line 15
    goto/16 :goto_5

    .line 16
    .line 17
    :cond_1
    invoke-virtual {p0, p1, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->E(ILm1/x0;)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->J:[I

    .line 21
    .line 22
    if-eqz p1, :cond_2

    .line 23
    .line 24
    array-length p1, p1

    .line 25
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 26
    .line 27
    if-ge p1, p2, :cond_3

    .line 28
    .line 29
    :cond_2
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 30
    .line 31
    new-array p1, p1, [I

    .line 32
    .line 33
    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->J:[I

    .line 34
    .line 35
    :cond_3
    const/4 p1, 0x0

    .line 36
    move p2, p1

    .line 37
    move v0, p2

    .line 38
    :goto_1
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 39
    .line 40
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v:Lm1/C;

    .line 41
    .line 42
    if-ge p2, v1, :cond_6

    .line 43
    .line 44
    iget v1, v2, Lm1/C;->d:I

    .line 45
    .line 46
    const/4 v3, -0x1

    .line 47
    if-ne v1, v3, :cond_4

    .line 48
    .line 49
    iget v1, v2, Lm1/C;->f:I

    .line 50
    .line 51
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:[Lm1/P0;

    .line 52
    .line 53
    aget-object v2, v2, p2

    .line 54
    .line 55
    invoke-virtual {v2, v1}, Lm1/P0;->e(I)I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    :goto_2
    sub-int/2addr v1, v2

    .line 60
    goto :goto_3

    .line 61
    :cond_4
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:[Lm1/P0;

    .line 62
    .line 63
    aget-object v1, v1, p2

    .line 64
    .line 65
    iget v3, v2, Lm1/C;->g:I

    .line 66
    .line 67
    invoke-virtual {v1, v3}, Lm1/P0;->d(I)I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    iget v2, v2, Lm1/C;->g:I

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :goto_3
    if-ltz v1, :cond_5

    .line 75
    .line 76
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->J:[I

    .line 77
    .line 78
    aput v1, v2, v0

    .line 79
    .line 80
    add-int/lit8 v0, v0, 0x1

    .line 81
    .line 82
    :cond_5
    add-int/lit8 p2, p2, 0x1

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_6
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->J:[I

    .line 86
    .line 87
    invoke-static {p2, p1, v0}, Ljava/util/Arrays;->sort([III)V

    .line 88
    .line 89
    .line 90
    :goto_4
    if-ge p1, v0, :cond_7

    .line 91
    .line 92
    iget p2, v2, Lm1/C;->c:I

    .line 93
    .line 94
    if-ltz p2, :cond_7

    .line 95
    .line 96
    invoke-virtual {p3}, Lm1/x0;->getItemCount()I

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    if-ge p2, v1, :cond_7

    .line 101
    .line 102
    iget p2, v2, Lm1/C;->c:I

    .line 103
    .line 104
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->J:[I

    .line 105
    .line 106
    aget v1, v1, p1

    .line 107
    .line 108
    move-object v3, p4

    .line 109
    check-cast v3, Lm1/w;

    .line 110
    .line 111
    invoke-virtual {v3, p2, v1}, Lm1/w;->addPosition(II)V

    .line 112
    .line 113
    .line 114
    iget p2, v2, Lm1/C;->c:I

    .line 115
    .line 116
    iget v1, v2, Lm1/C;->d:I

    .line 117
    .line 118
    add-int/2addr p2, v1

    .line 119
    iput p2, v2, Lm1/C;->c:I

    .line 120
    .line 121
    add-int/lit8 p1, p1, 0x1

    .line 122
    .line 123
    goto :goto_4

    .line 124
    :cond_7
    :goto_5
    return-void
.end method

.method public computeHorizontalScrollExtent(Lm1/x0;)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->n(Lm1/x0;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public computeHorizontalScrollOffset(Lm1/x0;)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o(Lm1/x0;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public computeHorizontalScrollRange(Lm1/x0;)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p(Lm1/x0;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lm1/i0;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    const/4 v2, 0x1

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-boolean p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Z

    .line 10
    .line 11
    if-eqz p1, :cond_3

    .line 12
    .line 13
    :cond_0
    move v1, v2

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-ge p1, v0, :cond_2

    .line 20
    .line 21
    move p1, v2

    .line 22
    goto :goto_0

    .line 23
    :cond_2
    const/4 p1, 0x0

    .line 24
    :goto_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Z

    .line 25
    .line 26
    if-eq p1, v0, :cond_0

    .line 27
    .line 28
    :cond_3
    :goto_1
    new-instance p1, Landroid/graphics/PointF;

    .line 29
    .line 30
    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    .line 31
    .line 32
    .line 33
    if-nez v1, :cond_4

    .line 34
    .line 35
    const/4 p1, 0x0

    .line 36
    return-object p1

    .line 37
    :cond_4
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:I

    .line 38
    .line 39
    const/4 v2, 0x0

    .line 40
    if-nez v0, :cond_5

    .line 41
    .line 42
    int-to-float v0, v1

    .line 43
    iput v0, p1, Landroid/graphics/PointF;->x:F

    .line 44
    .line 45
    iput v2, p1, Landroid/graphics/PointF;->y:F

    .line 46
    .line 47
    return-object p1

    .line 48
    :cond_5
    iput v2, p1, Landroid/graphics/PointF;->x:F

    .line 49
    .line 50
    int-to-float v0, v1

    .line 51
    iput v0, p1, Landroid/graphics/PointF;->y:F

    .line 52
    .line 53
    return-object p1
.end method

.method public computeVerticalScrollExtent(Lm1/x0;)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->n(Lm1/x0;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public computeVerticalScrollOffset(Lm1/x0;)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o(Lm1/x0;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public computeVerticalScrollRange(Lm1/x0;)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p(Lm1/x0;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public findLastVisibleItemPositions([I)[I
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 4
    .line 5
    new-array p1, p1, [I

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    array-length v0, p1

    .line 9
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 10
    .line 11
    if-lt v0, v1, :cond_2

    .line 12
    .line 13
    :goto_0
    const/4 v0, 0x0

    .line 14
    :goto_1
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 15
    .line 16
    if-ge v0, v1, :cond_1

    .line 17
    .line 18
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:[Lm1/P0;

    .line 19
    .line 20
    aget-object v1, v1, v0

    .line 21
    .line 22
    invoke-virtual {v1}, Lm1/P0;->findLastVisibleItemPosition()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    aput v1, p1, v0

    .line 27
    .line 28
    add-int/lit8 v0, v0, 0x1

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    return-object p1

    .line 32
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 33
    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v2, "Provided int[]\'s size must be more than or equal to span count. Expected:"

    .line 37
    .line 38
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v2, ", array size:"

    .line 47
    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    array-length p1, p1

    .line 52
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw v0
.end method

.method public generateDefaultLayoutParams()Lm1/j0;
    .locals 3

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, -0x2

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lm1/J0;

    .line 8
    .line 9
    invoke-direct {v0, v2, v1}, Lm1/J0;-><init>(II)V

    .line 10
    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    new-instance v0, Lm1/J0;

    .line 14
    .line 15
    invoke-direct {v0, v1, v2}, Lm1/J0;-><init>(II)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method public generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Lm1/j0;
    .locals 1

    .line 1
    new-instance v0, Lm1/J0;

    invoke-direct {v0, p1, p2}, Lm1/J0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lm1/j0;
    .locals 1

    .line 2
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lm1/J0;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Lm1/J0;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Lm1/J0;

    invoke-direct {v0, p1}, Lm1/J0;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getSpanCount()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 2
    .line 3
    return v0
.end method

.method public invalidateSpanAssignments()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->B:Lm1/M0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lm1/M0;->a()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lm1/i0;->requestLayout()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public isAutoMeasureEnabled()Z
    .locals 1

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->C:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    return v0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    return v0
.end method

.method public final isLayoutRTL()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lm1/i0;->getLayoutDirection()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    return v0
.end method

.method public final m()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lm1/i0;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->C:I

    .line 9
    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    invoke-virtual {p0}, Lm1/i0;->isAttachedToWindow()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Z

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v()I

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w()I

    .line 36
    .line 37
    .line 38
    :goto_0
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->B:Lm1/M0;

    .line 39
    .line 40
    if-nez v0, :cond_2

    .line 41
    .line 42
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A()Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    invoke-virtual {v2}, Lm1/M0;->a()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lm1/i0;->requestSimpleAnimationsInNextLayout()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Lm1/i0;->requestLayout()V

    .line 55
    .line 56
    .line 57
    const/4 v0, 0x1

    .line 58
    return v0

    .line 59
    :cond_2
    :goto_1
    return v1
.end method

.method public final n(Lm1/x0;)I
    .locals 6

    .line 1
    invoke-virtual {p0}, Lm1/i0;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lm1/L;

    .line 10
    .line 11
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->I:Z

    .line 12
    .line 13
    xor-int/lit8 v0, v0, 0x1

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s(Z)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r(Z)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    iget-boolean v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->I:Z

    .line 24
    .line 25
    move-object v4, p0

    .line 26
    move-object v0, p1

    .line 27
    invoke-static/range {v0 .. v5}, Lcom/bumptech/glide/e;->f(Lm1/x0;Lm1/L;Landroid/view/View;Landroid/view/View;Lm1/i0;Z)I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    return p1
.end method

.method public final o(Lm1/x0;)I
    .locals 7

    .line 1
    invoke-virtual {p0}, Lm1/i0;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lm1/L;

    .line 10
    .line 11
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->I:Z

    .line 12
    .line 13
    xor-int/lit8 v0, v0, 0x1

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s(Z)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r(Z)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    iget-boolean v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->I:Z

    .line 24
    .line 25
    iget-boolean v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Z

    .line 26
    .line 27
    move-object v4, p0

    .line 28
    move-object v0, p1

    .line 29
    invoke-static/range {v0 .. v6}, Lcom/bumptech/glide/e;->g(Lm1/x0;Lm1/L;Landroid/view/View;Landroid/view/View;Lm1/i0;ZZ)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    return p1
.end method

.method public offsetChildrenHorizontal(I)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lm1/i0;->offsetChildrenHorizontal(I)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    :goto_0
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 6
    .line 7
    if-ge v0, v1, :cond_2

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:[Lm1/P0;

    .line 10
    .line 11
    aget-object v1, v1, v0

    .line 12
    .line 13
    iget v2, v1, Lm1/P0;->b:I

    .line 14
    .line 15
    const/high16 v3, -0x80000000

    .line 16
    .line 17
    if-eq v2, v3, :cond_0

    .line 18
    .line 19
    add-int/2addr v2, p1

    .line 20
    iput v2, v1, Lm1/P0;->b:I

    .line 21
    .line 22
    :cond_0
    iget v2, v1, Lm1/P0;->c:I

    .line 23
    .line 24
    if-eq v2, v3, :cond_1

    .line 25
    .line 26
    add-int/2addr v2, p1

    .line 27
    iput v2, v1, Lm1/P0;->c:I

    .line 28
    .line 29
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    return-void
.end method

.method public offsetChildrenVertical(I)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lm1/i0;->offsetChildrenVertical(I)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    :goto_0
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 6
    .line 7
    if-ge v0, v1, :cond_2

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:[Lm1/P0;

    .line 10
    .line 11
    aget-object v1, v1, v0

    .line 12
    .line 13
    iget v2, v1, Lm1/P0;->b:I

    .line 14
    .line 15
    const/high16 v3, -0x80000000

    .line 16
    .line 17
    if-eq v2, v3, :cond_0

    .line 18
    .line 19
    add-int/2addr v2, p1

    .line 20
    iput v2, v1, Lm1/P0;->b:I

    .line 21
    .line 22
    :cond_0
    iget v2, v1, Lm1/P0;->c:I

    .line 23
    .line 24
    if-eq v2, v3, :cond_1

    .line 25
    .line 26
    add-int/2addr v2, p1

    .line 27
    iput v2, v1, Lm1/P0;->c:I

    .line 28
    .line 29
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    return-void
.end method

.method public onAdapterChanged(Lm1/V;Lm1/V;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->B:Lm1/M0;

    .line 2
    .line 3
    invoke-virtual {p1}, Lm1/M0;->a()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    :goto_0
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 8
    .line 9
    if-ge p1, p2, :cond_0

    .line 10
    .line 11
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:[Lm1/P0;

    .line 12
    .line 13
    aget-object p2, p2, p1

    .line 14
    .line 15
    invoke-virtual {p2}, Lm1/P0;->b()V

    .line 16
    .line 17
    .line 18
    add-int/lit8 p1, p1, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    return-void
.end method

.method public onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;Lm1/p0;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lm1/i0;->onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;Lm1/p0;)V

    .line 2
    .line 3
    .line 4
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->K:Lm1/H0;

    .line 5
    .line 6
    invoke-virtual {p0, p2}, Lm1/i0;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 7
    .line 8
    .line 9
    const/4 p2, 0x0

    .line 10
    :goto_0
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 11
    .line 12
    if-ge p2, v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:[Lm1/P0;

    .line 15
    .line 16
    aget-object v0, v0, p2

    .line 17
    .line 18
    invoke-virtual {v0}, Lm1/P0;->b()V

    .line 19
    .line 20
    .line 21
    add-int/lit8 p2, p2, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public onFocusSearchFailed(Landroid/view/View;ILm1/p0;Lm1/x0;)Landroid/view/View;
    .locals 8

    .line 1
    invoke-virtual {p0}, Lm1/i0;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    invoke-virtual {p0, p1}, Lm1/i0;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-nez p1, :cond_1

    .line 14
    .line 15
    return-object v1

    .line 16
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->I()V

    .line 17
    .line 18
    .line 19
    const/high16 v0, -0x80000000

    .line 20
    .line 21
    const/4 v2, -0x1

    .line 22
    const/4 v3, 0x1

    .line 23
    if-eq p2, v3, :cond_b

    .line 24
    .line 25
    const/4 v4, 0x2

    .line 26
    if-eq p2, v4, :cond_9

    .line 27
    .line 28
    const/16 v4, 0x11

    .line 29
    .line 30
    if-eq p2, v4, :cond_8

    .line 31
    .line 32
    const/16 v4, 0x21

    .line 33
    .line 34
    if-eq p2, v4, :cond_6

    .line 35
    .line 36
    const/16 v4, 0x42

    .line 37
    .line 38
    if-eq p2, v4, :cond_5

    .line 39
    .line 40
    const/16 v4, 0x82

    .line 41
    .line 42
    if-eq p2, v4, :cond_3

    .line 43
    .line 44
    :cond_2
    move p2, v0

    .line 45
    goto :goto_3

    .line 46
    :cond_3
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:I

    .line 47
    .line 48
    if-ne p2, v3, :cond_2

    .line 49
    .line 50
    :cond_4
    :goto_0
    move p2, v3

    .line 51
    goto :goto_3

    .line 52
    :cond_5
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:I

    .line 53
    .line 54
    if-nez p2, :cond_2

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_6
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:I

    .line 58
    .line 59
    if-ne p2, v3, :cond_2

    .line 60
    .line 61
    :cond_7
    :goto_1
    move p2, v2

    .line 62
    goto :goto_3

    .line 63
    :cond_8
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:I

    .line 64
    .line 65
    if-nez p2, :cond_2

    .line 66
    .line 67
    :goto_2
    goto :goto_1

    .line 68
    :cond_9
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:I

    .line 69
    .line 70
    if-ne p2, v3, :cond_a

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_a
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    .line 74
    .line 75
    .line 76
    move-result p2

    .line 77
    if-eqz p2, :cond_4

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_b
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:I

    .line 81
    .line 82
    if-ne p2, v3, :cond_c

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_c
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    .line 86
    .line 87
    .line 88
    move-result p2

    .line 89
    if-eqz p2, :cond_7

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :goto_3
    if-ne p2, v0, :cond_d

    .line 93
    .line 94
    return-object v1

    .line 95
    :cond_d
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    check-cast v0, Lm1/J0;

    .line 100
    .line 101
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    .line 103
    .line 104
    iget-object v0, v0, Lm1/J0;->e:Lm1/P0;

    .line 105
    .line 106
    if-ne p2, v3, :cond_e

    .line 107
    .line 108
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w()I

    .line 109
    .line 110
    .line 111
    move-result v4

    .line 112
    goto :goto_4

    .line 113
    :cond_e
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v()I

    .line 114
    .line 115
    .line 116
    move-result v4

    .line 117
    :goto_4
    invoke-virtual {p0, v4, p4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->L(ILm1/x0;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->K(I)V

    .line 121
    .line 122
    .line 123
    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v:Lm1/C;

    .line 124
    .line 125
    iget v6, v5, Lm1/C;->d:I

    .line 126
    .line 127
    add-int/2addr v6, v4

    .line 128
    iput v6, v5, Lm1/C;->c:I

    .line 129
    .line 130
    iget-object v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lm1/L;

    .line 131
    .line 132
    invoke-virtual {v6}, Lm1/L;->getTotalSpace()I

    .line 133
    .line 134
    .line 135
    move-result v6

    .line 136
    int-to-float v6, v6

    .line 137
    const v7, 0x3eaaaaab

    .line 138
    .line 139
    .line 140
    mul-float/2addr v6, v7

    .line 141
    float-to-int v6, v6

    .line 142
    iput v6, v5, Lm1/C;->b:I

    .line 143
    .line 144
    iput-boolean v3, v5, Lm1/C;->h:Z

    .line 145
    .line 146
    const/4 v6, 0x0

    .line 147
    iput-boolean v6, v5, Lm1/C;->a:Z

    .line 148
    .line 149
    invoke-virtual {p0, p3, v5, p4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q(Lm1/p0;Lm1/C;Lm1/x0;)I

    .line 150
    .line 151
    .line 152
    iget-boolean p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Z

    .line 153
    .line 154
    iput-boolean p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->D:Z

    .line 155
    .line 156
    invoke-virtual {v0, v4, p2}, Lm1/P0;->getFocusableViewAfter(II)Landroid/view/View;

    .line 157
    .line 158
    .line 159
    move-result-object p3

    .line 160
    if-eqz p3, :cond_f

    .line 161
    .line 162
    if-eq p3, p1, :cond_f

    .line 163
    .line 164
    return-object p3

    .line 165
    :cond_f
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->D(I)Z

    .line 166
    .line 167
    .line 168
    move-result p3

    .line 169
    if-eqz p3, :cond_11

    .line 170
    .line 171
    iget p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 172
    .line 173
    sub-int/2addr p3, v3

    .line 174
    :goto_5
    if-ltz p3, :cond_13

    .line 175
    .line 176
    iget-object p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:[Lm1/P0;

    .line 177
    .line 178
    aget-object p4, p4, p3

    .line 179
    .line 180
    invoke-virtual {p4, v4, p2}, Lm1/P0;->getFocusableViewAfter(II)Landroid/view/View;

    .line 181
    .line 182
    .line 183
    move-result-object p4

    .line 184
    if-eqz p4, :cond_10

    .line 185
    .line 186
    if-eq p4, p1, :cond_10

    .line 187
    .line 188
    return-object p4

    .line 189
    :cond_10
    add-int/lit8 p3, p3, -0x1

    .line 190
    .line 191
    goto :goto_5

    .line 192
    :cond_11
    move p3, v6

    .line 193
    :goto_6
    iget p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 194
    .line 195
    if-ge p3, p4, :cond_13

    .line 196
    .line 197
    iget-object p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:[Lm1/P0;

    .line 198
    .line 199
    aget-object p4, p4, p3

    .line 200
    .line 201
    invoke-virtual {p4, v4, p2}, Lm1/P0;->getFocusableViewAfter(II)Landroid/view/View;

    .line 202
    .line 203
    .line 204
    move-result-object p4

    .line 205
    if-eqz p4, :cond_12

    .line 206
    .line 207
    if-eq p4, p1, :cond_12

    .line 208
    .line 209
    return-object p4

    .line 210
    :cond_12
    add-int/lit8 p3, p3, 0x1

    .line 211
    .line 212
    goto :goto_6

    .line 213
    :cond_13
    iget-boolean p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w:Z

    .line 214
    .line 215
    xor-int/2addr p3, v3

    .line 216
    if-ne p2, v2, :cond_14

    .line 217
    .line 218
    move p4, v3

    .line 219
    goto :goto_7

    .line 220
    :cond_14
    move p4, v6

    .line 221
    :goto_7
    if-ne p3, p4, :cond_15

    .line 222
    .line 223
    move p3, v3

    .line 224
    goto :goto_8

    .line 225
    :cond_15
    move p3, v6

    .line 226
    :goto_8
    if-eqz p3, :cond_16

    .line 227
    .line 228
    invoke-virtual {v0}, Lm1/P0;->findFirstPartiallyVisibleItemPosition()I

    .line 229
    .line 230
    .line 231
    move-result p4

    .line 232
    goto :goto_9

    .line 233
    :cond_16
    invoke-virtual {v0}, Lm1/P0;->findLastPartiallyVisibleItemPosition()I

    .line 234
    .line 235
    .line 236
    move-result p4

    .line 237
    :goto_9
    invoke-virtual {p0, p4}, Lm1/i0;->findViewByPosition(I)Landroid/view/View;

    .line 238
    .line 239
    .line 240
    move-result-object p4

    .line 241
    if-eqz p4, :cond_17

    .line 242
    .line 243
    if-eq p4, p1, :cond_17

    .line 244
    .line 245
    return-object p4

    .line 246
    :cond_17
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->D(I)Z

    .line 247
    .line 248
    .line 249
    move-result p2

    .line 250
    if-eqz p2, :cond_1b

    .line 251
    .line 252
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 253
    .line 254
    sub-int/2addr p2, v3

    .line 255
    :goto_a
    if-ltz p2, :cond_1e

    .line 256
    .line 257
    iget p4, v0, Lm1/P0;->e:I

    .line 258
    .line 259
    if-ne p2, p4, :cond_18

    .line 260
    .line 261
    goto :goto_c

    .line 262
    :cond_18
    if-eqz p3, :cond_19

    .line 263
    .line 264
    iget-object p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:[Lm1/P0;

    .line 265
    .line 266
    aget-object p4, p4, p2

    .line 267
    .line 268
    invoke-virtual {p4}, Lm1/P0;->findFirstPartiallyVisibleItemPosition()I

    .line 269
    .line 270
    .line 271
    move-result p4

    .line 272
    goto :goto_b

    .line 273
    :cond_19
    iget-object p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:[Lm1/P0;

    .line 274
    .line 275
    aget-object p4, p4, p2

    .line 276
    .line 277
    invoke-virtual {p4}, Lm1/P0;->findLastPartiallyVisibleItemPosition()I

    .line 278
    .line 279
    .line 280
    move-result p4

    .line 281
    :goto_b
    invoke-virtual {p0, p4}, Lm1/i0;->findViewByPosition(I)Landroid/view/View;

    .line 282
    .line 283
    .line 284
    move-result-object p4

    .line 285
    if-eqz p4, :cond_1a

    .line 286
    .line 287
    if-eq p4, p1, :cond_1a

    .line 288
    .line 289
    return-object p4

    .line 290
    :cond_1a
    :goto_c
    add-int/lit8 p2, p2, -0x1

    .line 291
    .line 292
    goto :goto_a

    .line 293
    :cond_1b
    :goto_d
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 294
    .line 295
    if-ge v6, p2, :cond_1e

    .line 296
    .line 297
    if-eqz p3, :cond_1c

    .line 298
    .line 299
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:[Lm1/P0;

    .line 300
    .line 301
    aget-object p2, p2, v6

    .line 302
    .line 303
    invoke-virtual {p2}, Lm1/P0;->findFirstPartiallyVisibleItemPosition()I

    .line 304
    .line 305
    .line 306
    move-result p2

    .line 307
    goto :goto_e

    .line 308
    :cond_1c
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:[Lm1/P0;

    .line 309
    .line 310
    aget-object p2, p2, v6

    .line 311
    .line 312
    invoke-virtual {p2}, Lm1/P0;->findLastPartiallyVisibleItemPosition()I

    .line 313
    .line 314
    .line 315
    move-result p2

    .line 316
    :goto_e
    invoke-virtual {p0, p2}, Lm1/i0;->findViewByPosition(I)Landroid/view/View;

    .line 317
    .line 318
    .line 319
    move-result-object p2

    .line 320
    if-eqz p2, :cond_1d

    .line 321
    .line 322
    if-eq p2, p1, :cond_1d

    .line 323
    .line 324
    return-object p2

    .line 325
    :cond_1d
    add-int/lit8 v6, v6, 0x1

    .line 326
    .line 327
    goto :goto_d

    .line 328
    :cond_1e
    return-object v1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lm1/i0;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lm1/i0;->getChildCount()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-lez v0, :cond_2

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s(Z)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r(Z)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {p0, v1}, Lm1/i0;->getPosition(Landroid/view/View;)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    invoke-virtual {p0, v0}, Lm1/i0;->getPosition(Landroid/view/View;)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-ge v1, v0, :cond_1

    .line 33
    .line 34
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    .line 45
    .line 46
    .line 47
    :cond_2
    :goto_0
    return-void
.end method

.method public onItemsAdded(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p2, p3, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->z(III)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public onItemsChanged(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->B:Lm1/M0;

    .line 2
    .line 3
    invoke-virtual {p1}, Lm1/M0;->a()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lm1/i0;->requestLayout()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onItemsMoved(Landroidx/recyclerview/widget/RecyclerView;III)V
    .locals 0

    .line 1
    const/16 p1, 0x8

    .line 2
    .line 3
    invoke-virtual {p0, p2, p3, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->z(III)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onItemsRemoved(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 1
    const/4 p1, 0x2

    .line 2
    invoke-virtual {p0, p2, p3, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->z(III)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public onItemsUpdated(Landroidx/recyclerview/widget/RecyclerView;IILjava/lang/Object;)V
    .locals 0

    .line 1
    const/4 p1, 0x4

    .line 2
    invoke-virtual {p0, p2, p3, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->z(III)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public onLayoutChildren(Lm1/p0;Lm1/x0;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->C(Lm1/p0;Lm1/x0;Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public onLayoutCompleted(Lm1/x0;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lm1/i0;->onLayoutCompleted(Lm1/x0;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, -0x1

    .line 5
    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->z:I

    .line 6
    .line 7
    const/high16 p1, -0x80000000

    .line 8
    .line 9
    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:I

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->F:Lm1/O0;

    .line 13
    .line 14
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->H:Lm1/I0;

    .line 15
    .line 16
    invoke-virtual {p1}, Lm1/I0;->a()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    .line 1
    instance-of v0, p1, Lm1/O0;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    check-cast p1, Lm1/O0;

    .line 6
    .line 7
    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->F:Lm1/O0;

    .line 8
    .line 9
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->z:I

    .line 10
    .line 11
    const/4 v1, -0x1

    .line 12
    if-eq v0, v1, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-object v0, p1, Lm1/O0;->j:[I

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    iput v2, p1, Lm1/O0;->f:I

    .line 19
    .line 20
    iput v1, p1, Lm1/O0;->b:I

    .line 21
    .line 22
    iput v1, p1, Lm1/O0;->e:I

    .line 23
    .line 24
    iput-object v0, p1, Lm1/O0;->j:[I

    .line 25
    .line 26
    iput v2, p1, Lm1/O0;->f:I

    .line 27
    .line 28
    iput v2, p1, Lm1/O0;->m:I

    .line 29
    .line 30
    iput-object v0, p1, Lm1/O0;->n:[I

    .line 31
    .line 32
    iput-object v0, p1, Lm1/O0;->p:Ljava/util/ArrayList;

    .line 33
    .line 34
    :cond_0
    invoke-virtual {p0}, Lm1/i0;->requestLayout()V

    .line 35
    .line 36
    .line 37
    :cond_1
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->F:Lm1/O0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lm1/O0;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Lm1/O0;-><init>(Lm1/O0;)V

    .line 8
    .line 9
    .line 10
    return-object v1

    .line 11
    :cond_0
    new-instance v0, Lm1/O0;

    .line 12
    .line 13
    invoke-direct {v0}, Lm1/O0;-><init>()V

    .line 14
    .line 15
    .line 16
    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w:Z

    .line 17
    .line 18
    iput-boolean v1, v0, Lm1/O0;->q:Z

    .line 19
    .line 20
    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->D:Z

    .line 21
    .line 22
    iput-boolean v1, v0, Lm1/O0;->r:Z

    .line 23
    .line 24
    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->E:Z

    .line 25
    .line 26
    iput-boolean v1, v0, Lm1/O0;->s:Z

    .line 27
    .line 28
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->B:Lm1/M0;

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    iget-object v3, v1, Lm1/M0;->a:[I

    .line 34
    .line 35
    if-eqz v3, :cond_1

    .line 36
    .line 37
    iput-object v3, v0, Lm1/O0;->n:[I

    .line 38
    .line 39
    array-length v3, v3

    .line 40
    iput v3, v0, Lm1/O0;->m:I

    .line 41
    .line 42
    iget-object v1, v1, Lm1/M0;->b:Ljava/util/ArrayList;

    .line 43
    .line 44
    iput-object v1, v0, Lm1/O0;->p:Ljava/util/ArrayList;

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    iput v2, v0, Lm1/O0;->m:I

    .line 48
    .line 49
    :goto_0
    invoke-virtual {p0}, Lm1/i0;->getChildCount()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    const/4 v3, -0x1

    .line 54
    if-lez v1, :cond_8

    .line 55
    .line 56
    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->D:Z

    .line 57
    .line 58
    if-eqz v1, :cond_2

    .line 59
    .line 60
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w()I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    goto :goto_1

    .line 65
    :cond_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v()I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    :goto_1
    iput v1, v0, Lm1/O0;->b:I

    .line 70
    .line 71
    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Z

    .line 72
    .line 73
    const/4 v4, 0x1

    .line 74
    if-eqz v1, :cond_3

    .line 75
    .line 76
    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r(Z)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    goto :goto_2

    .line 81
    :cond_3
    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s(Z)Landroid/view/View;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    :goto_2
    if-nez v1, :cond_4

    .line 86
    .line 87
    goto :goto_3

    .line 88
    :cond_4
    invoke-virtual {p0, v1}, Lm1/i0;->getPosition(Landroid/view/View;)I

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    :goto_3
    iput v3, v0, Lm1/O0;->e:I

    .line 93
    .line 94
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 95
    .line 96
    iput v1, v0, Lm1/O0;->f:I

    .line 97
    .line 98
    new-array v1, v1, [I

    .line 99
    .line 100
    iput-object v1, v0, Lm1/O0;->j:[I

    .line 101
    .line 102
    :goto_4
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 103
    .line 104
    if-ge v2, v1, :cond_7

    .line 105
    .line 106
    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->D:Z

    .line 107
    .line 108
    const/high16 v3, -0x80000000

    .line 109
    .line 110
    if-eqz v1, :cond_5

    .line 111
    .line 112
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:[Lm1/P0;

    .line 113
    .line 114
    aget-object v1, v1, v2

    .line 115
    .line 116
    invoke-virtual {v1, v3}, Lm1/P0;->d(I)I

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    if-eq v1, v3, :cond_6

    .line 121
    .line 122
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lm1/L;

    .line 123
    .line 124
    invoke-virtual {v3}, Lm1/L;->getEndAfterPadding()I

    .line 125
    .line 126
    .line 127
    move-result v3

    .line 128
    :goto_5
    sub-int/2addr v1, v3

    .line 129
    goto :goto_6

    .line 130
    :cond_5
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:[Lm1/P0;

    .line 131
    .line 132
    aget-object v1, v1, v2

    .line 133
    .line 134
    invoke-virtual {v1, v3}, Lm1/P0;->e(I)I

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    if-eq v1, v3, :cond_6

    .line 139
    .line 140
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lm1/L;

    .line 141
    .line 142
    invoke-virtual {v3}, Lm1/L;->getStartAfterPadding()I

    .line 143
    .line 144
    .line 145
    move-result v3

    .line 146
    goto :goto_5

    .line 147
    :cond_6
    :goto_6
    iget-object v3, v0, Lm1/O0;->j:[I

    .line 148
    .line 149
    aput v1, v3, v2

    .line 150
    .line 151
    add-int/lit8 v2, v2, 0x1

    .line 152
    .line 153
    goto :goto_4

    .line 154
    :cond_7
    return-object v0

    .line 155
    :cond_8
    iput v3, v0, Lm1/O0;->b:I

    .line 156
    .line 157
    iput v3, v0, Lm1/O0;->e:I

    .line 158
    .line 159
    iput v2, v0, Lm1/O0;->f:I

    .line 160
    .line 161
    return-object v0
.end method

.method public onScrollStateChanged(I)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->m()Z

    .line 4
    .line 5
    .line 6
    :cond_0
    return-void
.end method

.method public final p(Lm1/x0;)I
    .locals 6

    .line 1
    invoke-virtual {p0}, Lm1/i0;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lm1/L;

    .line 10
    .line 11
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->I:Z

    .line 12
    .line 13
    xor-int/lit8 v0, v0, 0x1

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s(Z)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r(Z)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    iget-boolean v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->I:Z

    .line 24
    .line 25
    move-object v4, p0

    .line 26
    move-object v0, p1

    .line 27
    invoke-static/range {v0 .. v5}, Lcom/bumptech/glide/e;->h(Lm1/x0;Lm1/L;Landroid/view/View;Landroid/view/View;Lm1/i0;Z)I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    return p1
.end method

.method public final q(Lm1/p0;Lm1/C;Lm1/x0;)I
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v6, p1

    .line 4
    .line 5
    move-object/from16 v7, p2

    .line 6
    .line 7
    iget-object v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->y:Ljava/util/BitSet;

    .line 8
    .line 9
    iget v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 10
    .line 11
    const/4 v8, 0x0

    .line 12
    const/4 v9, 0x1

    .line 13
    invoke-virtual {v1, v8, v2, v9}, Ljava/util/BitSet;->set(IIZ)V

    .line 14
    .line 15
    .line 16
    iget-object v10, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v:Lm1/C;

    .line 17
    .line 18
    iget-boolean v1, v10, Lm1/C;->i:Z

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    iget v1, v7, Lm1/C;->e:I

    .line 23
    .line 24
    if-ne v1, v9, :cond_0

    .line 25
    .line 26
    const v13, 0x7fffffff

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_0
    const/high16 v13, -0x80000000

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    iget v1, v7, Lm1/C;->e:I

    .line 34
    .line 35
    if-ne v1, v9, :cond_2

    .line 36
    .line 37
    iget v1, v7, Lm1/C;->g:I

    .line 38
    .line 39
    iget v2, v7, Lm1/C;->b:I

    .line 40
    .line 41
    add-int/2addr v1, v2

    .line 42
    :goto_0
    move v13, v1

    .line 43
    goto :goto_1

    .line 44
    :cond_2
    iget v1, v7, Lm1/C;->f:I

    .line 45
    .line 46
    iget v2, v7, Lm1/C;->b:I

    .line 47
    .line 48
    sub-int/2addr v1, v2

    .line 49
    goto :goto_0

    .line 50
    :goto_1
    iget v1, v7, Lm1/C;->e:I

    .line 51
    .line 52
    move v2, v8

    .line 53
    :goto_2
    iget v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 54
    .line 55
    if-ge v2, v3, :cond_4

    .line 56
    .line 57
    iget-object v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:[Lm1/P0;

    .line 58
    .line 59
    aget-object v3, v3, v2

    .line 60
    .line 61
    iget-object v3, v3, Lm1/P0;->a:Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-eqz v3, :cond_3

    .line 68
    .line 69
    goto :goto_3

    .line 70
    :cond_3
    iget-object v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:[Lm1/P0;

    .line 71
    .line 72
    aget-object v3, v3, v2

    .line 73
    .line 74
    invoke-virtual {v0, v3, v1, v13}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->M(Lm1/P0;II)V

    .line 75
    .line 76
    .line 77
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_4
    iget-boolean v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Z

    .line 81
    .line 82
    if-eqz v1, :cond_5

    .line 83
    .line 84
    iget-object v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lm1/L;

    .line 85
    .line 86
    invoke-virtual {v1}, Lm1/L;->getEndAfterPadding()I

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    :goto_4
    move v14, v1

    .line 91
    goto :goto_5

    .line 92
    :cond_5
    iget-object v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lm1/L;

    .line 93
    .line 94
    invoke-virtual {v1}, Lm1/L;->getStartAfterPadding()I

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    goto :goto_4

    .line 99
    :goto_5
    move v1, v8

    .line 100
    :goto_6
    iget v2, v7, Lm1/C;->c:I

    .line 101
    .line 102
    if-ltz v2, :cond_6

    .line 103
    .line 104
    invoke-virtual/range {p3 .. p3}, Lm1/x0;->getItemCount()I

    .line 105
    .line 106
    .line 107
    move-result v3

    .line 108
    if-ge v2, v3, :cond_6

    .line 109
    .line 110
    move v2, v9

    .line 111
    goto :goto_7

    .line 112
    :cond_6
    move v2, v8

    .line 113
    :goto_7
    const/4 v3, -0x1

    .line 114
    if-eqz v2, :cond_1d

    .line 115
    .line 116
    iget-boolean v2, v10, Lm1/C;->i:Z

    .line 117
    .line 118
    if-nez v2, :cond_7

    .line 119
    .line 120
    iget-object v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->y:Ljava/util/BitSet;

    .line 121
    .line 122
    invoke-virtual {v2}, Ljava/util/BitSet;->isEmpty()Z

    .line 123
    .line 124
    .line 125
    move-result v2

    .line 126
    if-nez v2, :cond_1d

    .line 127
    .line 128
    :cond_7
    iget v1, v7, Lm1/C;->c:I

    .line 129
    .line 130
    invoke-virtual {v6, v1}, Lm1/p0;->getViewForPosition(I)Landroid/view/View;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    iget v2, v7, Lm1/C;->c:I

    .line 135
    .line 136
    iget v4, v7, Lm1/C;->d:I

    .line 137
    .line 138
    add-int/2addr v2, v4

    .line 139
    iput v2, v7, Lm1/C;->c:I

    .line 140
    .line 141
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    check-cast v2, Lm1/J0;

    .line 146
    .line 147
    invoke-virtual {v2}, Lm1/j0;->getViewLayoutPosition()I

    .line 148
    .line 149
    .line 150
    move-result v4

    .line 151
    iget-object v5, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->B:Lm1/M0;

    .line 152
    .line 153
    iget-object v15, v5, Lm1/M0;->a:[I

    .line 154
    .line 155
    if-eqz v15, :cond_9

    .line 156
    .line 157
    array-length v12, v15

    .line 158
    if-lt v4, v12, :cond_8

    .line 159
    .line 160
    goto :goto_8

    .line 161
    :cond_8
    aget v12, v15, v4

    .line 162
    .line 163
    goto :goto_9

    .line 164
    :cond_9
    :goto_8
    move v12, v3

    .line 165
    :goto_9
    if-ne v12, v3, :cond_f

    .line 166
    .line 167
    iget v12, v7, Lm1/C;->e:I

    .line 168
    .line 169
    invoke-virtual {v0, v12}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->D(I)Z

    .line 170
    .line 171
    .line 172
    move-result v12

    .line 173
    if-eqz v12, :cond_a

    .line 174
    .line 175
    iget v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 176
    .line 177
    sub-int/2addr v12, v9

    .line 178
    move v15, v12

    .line 179
    move v12, v3

    .line 180
    goto :goto_a

    .line 181
    :cond_a
    iget v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 182
    .line 183
    move v15, v8

    .line 184
    move v12, v9

    .line 185
    :goto_a
    iget v11, v7, Lm1/C;->e:I

    .line 186
    .line 187
    const/16 v16, 0x0

    .line 188
    .line 189
    if-ne v11, v9, :cond_d

    .line 190
    .line 191
    iget-object v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lm1/L;

    .line 192
    .line 193
    invoke-virtual {v11}, Lm1/L;->getStartAfterPadding()I

    .line 194
    .line 195
    .line 196
    move-result v11

    .line 197
    const v8, 0x7fffffff

    .line 198
    .line 199
    .line 200
    :goto_b
    if-eq v15, v3, :cond_c

    .line 201
    .line 202
    iget-object v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:[Lm1/P0;

    .line 203
    .line 204
    aget-object v9, v9, v15

    .line 205
    .line 206
    move/from16 v18, v12

    .line 207
    .line 208
    invoke-virtual {v9, v11}, Lm1/P0;->d(I)I

    .line 209
    .line 210
    .line 211
    move-result v12

    .line 212
    if-ge v12, v8, :cond_b

    .line 213
    .line 214
    move-object/from16 v16, v9

    .line 215
    .line 216
    move v8, v12

    .line 217
    :cond_b
    add-int v15, v15, v18

    .line 218
    .line 219
    move/from16 v12, v18

    .line 220
    .line 221
    const/4 v9, 0x1

    .line 222
    goto :goto_b

    .line 223
    :cond_c
    move-object/from16 v3, v16

    .line 224
    .line 225
    goto :goto_d

    .line 226
    :cond_d
    move/from16 v18, v12

    .line 227
    .line 228
    iget-object v8, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lm1/L;

    .line 229
    .line 230
    invoke-virtual {v8}, Lm1/L;->getEndAfterPadding()I

    .line 231
    .line 232
    .line 233
    move-result v8

    .line 234
    const/high16 v9, -0x80000000

    .line 235
    .line 236
    :goto_c
    if-eq v15, v3, :cond_c

    .line 237
    .line 238
    iget-object v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:[Lm1/P0;

    .line 239
    .line 240
    aget-object v11, v11, v15

    .line 241
    .line 242
    invoke-virtual {v11, v8}, Lm1/P0;->e(I)I

    .line 243
    .line 244
    .line 245
    move-result v12

    .line 246
    if-le v12, v9, :cond_e

    .line 247
    .line 248
    move-object/from16 v16, v11

    .line 249
    .line 250
    move v9, v12

    .line 251
    :cond_e
    add-int v15, v15, v18

    .line 252
    .line 253
    goto :goto_c

    .line 254
    :goto_d
    invoke-virtual {v5, v4}, Lm1/M0;->b(I)V

    .line 255
    .line 256
    .line 257
    iget-object v5, v5, Lm1/M0;->a:[I

    .line 258
    .line 259
    iget v8, v3, Lm1/P0;->e:I

    .line 260
    .line 261
    aput v8, v5, v4

    .line 262
    .line 263
    :goto_e
    move-object v8, v3

    .line 264
    goto :goto_f

    .line 265
    :cond_f
    iget-object v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:[Lm1/P0;

    .line 266
    .line 267
    aget-object v3, v3, v12

    .line 268
    .line 269
    goto :goto_e

    .line 270
    :goto_f
    iput-object v8, v2, Lm1/J0;->e:Lm1/P0;

    .line 271
    .line 272
    iget v3, v7, Lm1/C;->e:I

    .line 273
    .line 274
    const/4 v4, 0x1

    .line 275
    if-ne v3, v4, :cond_10

    .line 276
    .line 277
    invoke-virtual {v0, v1}, Lm1/i0;->addView(Landroid/view/View;)V

    .line 278
    .line 279
    .line 280
    const/4 v3, 0x0

    .line 281
    goto :goto_10

    .line 282
    :cond_10
    const/4 v3, 0x0

    .line 283
    invoke-virtual {v0, v1, v3}, Lm1/i0;->addView(Landroid/view/View;I)V

    .line 284
    .line 285
    .line 286
    :goto_10
    iget v5, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:I

    .line 287
    .line 288
    if-ne v5, v4, :cond_11

    .line 289
    .line 290
    iget v5, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:I

    .line 291
    .line 292
    invoke-virtual {v0}, Lm1/i0;->getWidthMode()I

    .line 293
    .line 294
    .line 295
    move-result v9

    .line 296
    iget v11, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 297
    .line 298
    invoke-static {v5, v9, v3, v11, v3}, Lm1/i0;->getChildMeasureSpec(IIIIZ)I

    .line 299
    .line 300
    .line 301
    move-result v5

    .line 302
    invoke-virtual {v0}, Lm1/i0;->getHeight()I

    .line 303
    .line 304
    .line 305
    move-result v3

    .line 306
    invoke-virtual {v0}, Lm1/i0;->getHeightMode()I

    .line 307
    .line 308
    .line 309
    move-result v9

    .line 310
    invoke-virtual {v0}, Lm1/i0;->getPaddingTop()I

    .line 311
    .line 312
    .line 313
    move-result v11

    .line 314
    invoke-virtual {v0}, Lm1/i0;->getPaddingBottom()I

    .line 315
    .line 316
    .line 317
    move-result v12

    .line 318
    add-int/2addr v12, v11

    .line 319
    iget v11, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 320
    .line 321
    invoke-static {v3, v9, v12, v11, v4}, Lm1/i0;->getChildMeasureSpec(IIIIZ)I

    .line 322
    .line 323
    .line 324
    move-result v3

    .line 325
    invoke-virtual {v0, v1, v5, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->B(Landroid/view/View;II)V

    .line 326
    .line 327
    .line 328
    goto :goto_11

    .line 329
    :cond_11
    invoke-virtual {v0}, Lm1/i0;->getWidth()I

    .line 330
    .line 331
    .line 332
    move-result v3

    .line 333
    invoke-virtual {v0}, Lm1/i0;->getWidthMode()I

    .line 334
    .line 335
    .line 336
    move-result v5

    .line 337
    invoke-virtual {v0}, Lm1/i0;->getPaddingLeft()I

    .line 338
    .line 339
    .line 340
    move-result v9

    .line 341
    invoke-virtual {v0}, Lm1/i0;->getPaddingRight()I

    .line 342
    .line 343
    .line 344
    move-result v11

    .line 345
    add-int/2addr v11, v9

    .line 346
    iget v9, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 347
    .line 348
    invoke-static {v3, v5, v11, v9, v4}, Lm1/i0;->getChildMeasureSpec(IIIIZ)I

    .line 349
    .line 350
    .line 351
    move-result v3

    .line 352
    iget v5, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:I

    .line 353
    .line 354
    invoke-virtual {v0}, Lm1/i0;->getHeightMode()I

    .line 355
    .line 356
    .line 357
    move-result v9

    .line 358
    iget v11, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 359
    .line 360
    const/4 v12, 0x0

    .line 361
    invoke-static {v5, v9, v12, v11, v12}, Lm1/i0;->getChildMeasureSpec(IIIIZ)I

    .line 362
    .line 363
    .line 364
    move-result v5

    .line 365
    invoke-virtual {v0, v1, v3, v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->B(Landroid/view/View;II)V

    .line 366
    .line 367
    .line 368
    :goto_11
    iget v3, v7, Lm1/C;->e:I

    .line 369
    .line 370
    if-ne v3, v4, :cond_12

    .line 371
    .line 372
    invoke-virtual {v8, v14}, Lm1/P0;->d(I)I

    .line 373
    .line 374
    .line 375
    move-result v3

    .line 376
    iget-object v4, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lm1/L;

    .line 377
    .line 378
    invoke-virtual {v4, v1}, Lm1/L;->getDecoratedMeasurement(Landroid/view/View;)I

    .line 379
    .line 380
    .line 381
    move-result v4

    .line 382
    add-int/2addr v4, v3

    .line 383
    goto :goto_12

    .line 384
    :cond_12
    invoke-virtual {v8, v14}, Lm1/P0;->e(I)I

    .line 385
    .line 386
    .line 387
    move-result v4

    .line 388
    iget-object v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lm1/L;

    .line 389
    .line 390
    invoke-virtual {v3, v1}, Lm1/L;->getDecoratedMeasurement(Landroid/view/View;)I

    .line 391
    .line 392
    .line 393
    move-result v3

    .line 394
    sub-int v3, v4, v3

    .line 395
    .line 396
    :goto_12
    iget v5, v7, Lm1/C;->e:I

    .line 397
    .line 398
    const/4 v9, 0x1

    .line 399
    if-ne v5, v9, :cond_16

    .line 400
    .line 401
    iget-object v2, v2, Lm1/J0;->e:Lm1/P0;

    .line 402
    .line 403
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 404
    .line 405
    .line 406
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 407
    .line 408
    .line 409
    move-result-object v5

    .line 410
    check-cast v5, Lm1/J0;

    .line 411
    .line 412
    iput-object v2, v5, Lm1/J0;->e:Lm1/P0;

    .line 413
    .line 414
    iget-object v9, v2, Lm1/P0;->a:Ljava/util/ArrayList;

    .line 415
    .line 416
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 417
    .line 418
    .line 419
    const/high16 v11, -0x80000000

    .line 420
    .line 421
    iput v11, v2, Lm1/P0;->c:I

    .line 422
    .line 423
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 424
    .line 425
    .line 426
    move-result v9

    .line 427
    const/4 v12, 0x1

    .line 428
    if-ne v9, v12, :cond_13

    .line 429
    .line 430
    iput v11, v2, Lm1/P0;->b:I

    .line 431
    .line 432
    :cond_13
    invoke-virtual {v5}, Lm1/j0;->isItemRemoved()Z

    .line 433
    .line 434
    .line 435
    move-result v9

    .line 436
    if-nez v9, :cond_14

    .line 437
    .line 438
    invoke-virtual {v5}, Lm1/j0;->isItemChanged()Z

    .line 439
    .line 440
    .line 441
    move-result v5

    .line 442
    if-eqz v5, :cond_15

    .line 443
    .line 444
    :cond_14
    iget v5, v2, Lm1/P0;->d:I

    .line 445
    .line 446
    iget-object v9, v2, Lm1/P0;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 447
    .line 448
    iget-object v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lm1/L;

    .line 449
    .line 450
    invoke-virtual {v9, v1}, Lm1/L;->getDecoratedMeasurement(Landroid/view/View;)I

    .line 451
    .line 452
    .line 453
    move-result v9

    .line 454
    add-int/2addr v9, v5

    .line 455
    iput v9, v2, Lm1/P0;->d:I

    .line 456
    .line 457
    :cond_15
    const/high16 v11, -0x80000000

    .line 458
    .line 459
    goto :goto_13

    .line 460
    :cond_16
    iget-object v2, v2, Lm1/J0;->e:Lm1/P0;

    .line 461
    .line 462
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 463
    .line 464
    .line 465
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 466
    .line 467
    .line 468
    move-result-object v5

    .line 469
    check-cast v5, Lm1/J0;

    .line 470
    .line 471
    iput-object v2, v5, Lm1/J0;->e:Lm1/P0;

    .line 472
    .line 473
    iget-object v9, v2, Lm1/P0;->a:Ljava/util/ArrayList;

    .line 474
    .line 475
    const/4 v12, 0x0

    .line 476
    invoke-virtual {v9, v12, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 477
    .line 478
    .line 479
    const/high16 v11, -0x80000000

    .line 480
    .line 481
    iput v11, v2, Lm1/P0;->b:I

    .line 482
    .line 483
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 484
    .line 485
    .line 486
    move-result v9

    .line 487
    const/4 v12, 0x1

    .line 488
    if-ne v9, v12, :cond_17

    .line 489
    .line 490
    iput v11, v2, Lm1/P0;->c:I

    .line 491
    .line 492
    :cond_17
    invoke-virtual {v5}, Lm1/j0;->isItemRemoved()Z

    .line 493
    .line 494
    .line 495
    move-result v9

    .line 496
    if-nez v9, :cond_18

    .line 497
    .line 498
    invoke-virtual {v5}, Lm1/j0;->isItemChanged()Z

    .line 499
    .line 500
    .line 501
    move-result v5

    .line 502
    if-eqz v5, :cond_19

    .line 503
    .line 504
    :cond_18
    iget v5, v2, Lm1/P0;->d:I

    .line 505
    .line 506
    iget-object v9, v2, Lm1/P0;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 507
    .line 508
    iget-object v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lm1/L;

    .line 509
    .line 510
    invoke-virtual {v9, v1}, Lm1/L;->getDecoratedMeasurement(Landroid/view/View;)I

    .line 511
    .line 512
    .line 513
    move-result v9

    .line 514
    add-int/2addr v9, v5

    .line 515
    iput v9, v2, Lm1/P0;->d:I

    .line 516
    .line 517
    :cond_19
    :goto_13
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    .line 518
    .line 519
    .line 520
    move-result v2

    .line 521
    if-eqz v2, :cond_1a

    .line 522
    .line 523
    iget v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:I

    .line 524
    .line 525
    const/4 v12, 0x1

    .line 526
    if-ne v2, v12, :cond_1a

    .line 527
    .line 528
    iget-object v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:Lm1/L;

    .line 529
    .line 530
    invoke-virtual {v2}, Lm1/L;->getEndAfterPadding()I

    .line 531
    .line 532
    .line 533
    move-result v2

    .line 534
    iget v5, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 535
    .line 536
    sub-int/2addr v5, v12

    .line 537
    iget v9, v8, Lm1/P0;->e:I

    .line 538
    .line 539
    sub-int/2addr v5, v9

    .line 540
    iget v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:I

    .line 541
    .line 542
    mul-int/2addr v5, v9

    .line 543
    sub-int/2addr v2, v5

    .line 544
    iget-object v5, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:Lm1/L;

    .line 545
    .line 546
    invoke-virtual {v5, v1}, Lm1/L;->getDecoratedMeasurement(Landroid/view/View;)I

    .line 547
    .line 548
    .line 549
    move-result v5

    .line 550
    sub-int v5, v2, v5

    .line 551
    .line 552
    :goto_14
    move/from16 v19, v5

    .line 553
    .line 554
    move v5, v2

    .line 555
    move/from16 v2, v19

    .line 556
    .line 557
    goto :goto_15

    .line 558
    :cond_1a
    iget v2, v8, Lm1/P0;->e:I

    .line 559
    .line 560
    iget v5, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:I

    .line 561
    .line 562
    mul-int/2addr v2, v5

    .line 563
    iget-object v5, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:Lm1/L;

    .line 564
    .line 565
    invoke-virtual {v5}, Lm1/L;->getStartAfterPadding()I

    .line 566
    .line 567
    .line 568
    move-result v5

    .line 569
    add-int/2addr v5, v2

    .line 570
    iget-object v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:Lm1/L;

    .line 571
    .line 572
    invoke-virtual {v2, v1}, Lm1/L;->getDecoratedMeasurement(Landroid/view/View;)I

    .line 573
    .line 574
    .line 575
    move-result v2

    .line 576
    add-int/2addr v2, v5

    .line 577
    goto :goto_14

    .line 578
    :goto_15
    iget v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:I

    .line 579
    .line 580
    const/4 v12, 0x1

    .line 581
    if-ne v9, v12, :cond_1b

    .line 582
    .line 583
    move/from16 v19, v5

    .line 584
    .line 585
    move v5, v4

    .line 586
    move/from16 v4, v19

    .line 587
    .line 588
    invoke-virtual/range {v0 .. v5}, Lm1/i0;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    .line 589
    .line 590
    .line 591
    move-object/from16 v0, p0

    .line 592
    .line 593
    goto :goto_16

    .line 594
    :cond_1b
    move/from16 v19, v3

    .line 595
    .line 596
    move v3, v2

    .line 597
    move/from16 v2, v19

    .line 598
    .line 599
    invoke-virtual/range {v0 .. v5}, Lm1/i0;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    .line 600
    .line 601
    .line 602
    :goto_16
    iget v2, v10, Lm1/C;->e:I

    .line 603
    .line 604
    invoke-virtual {v0, v8, v2, v13}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->M(Lm1/P0;II)V

    .line 605
    .line 606
    .line 607
    invoke-virtual {v0, v6, v10}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->F(Lm1/p0;Lm1/C;)V

    .line 608
    .line 609
    .line 610
    iget-boolean v2, v10, Lm1/C;->h:Z

    .line 611
    .line 612
    if-eqz v2, :cond_1c

    .line 613
    .line 614
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    .line 615
    .line 616
    .line 617
    move-result v1

    .line 618
    if-eqz v1, :cond_1c

    .line 619
    .line 620
    iget-object v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->y:Ljava/util/BitSet;

    .line 621
    .line 622
    iget v2, v8, Lm1/P0;->e:I

    .line 623
    .line 624
    const/4 v3, 0x0

    .line 625
    invoke-virtual {v1, v2, v3}, Ljava/util/BitSet;->set(IZ)V

    .line 626
    .line 627
    .line 628
    :cond_1c
    move v1, v12

    .line 629
    move v9, v1

    .line 630
    const/4 v8, 0x0

    .line 631
    goto/16 :goto_6

    .line 632
    .line 633
    :cond_1d
    if-nez v1, :cond_1e

    .line 634
    .line 635
    invoke-virtual {v0, v6, v10}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->F(Lm1/p0;Lm1/C;)V

    .line 636
    .line 637
    .line 638
    :cond_1e
    iget v1, v10, Lm1/C;->e:I

    .line 639
    .line 640
    if-ne v1, v3, :cond_1f

    .line 641
    .line 642
    iget-object v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lm1/L;

    .line 643
    .line 644
    invoke-virtual {v1}, Lm1/L;->getStartAfterPadding()I

    .line 645
    .line 646
    .line 647
    move-result v1

    .line 648
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->y(I)I

    .line 649
    .line 650
    .line 651
    move-result v1

    .line 652
    iget-object v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lm1/L;

    .line 653
    .line 654
    invoke-virtual {v2}, Lm1/L;->getStartAfterPadding()I

    .line 655
    .line 656
    .line 657
    move-result v2

    .line 658
    sub-int/2addr v2, v1

    .line 659
    goto :goto_17

    .line 660
    :cond_1f
    iget-object v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lm1/L;

    .line 661
    .line 662
    invoke-virtual {v1}, Lm1/L;->getEndAfterPadding()I

    .line 663
    .line 664
    .line 665
    move-result v1

    .line 666
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x(I)I

    .line 667
    .line 668
    .line 669
    move-result v1

    .line 670
    iget-object v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lm1/L;

    .line 671
    .line 672
    invoke-virtual {v2}, Lm1/L;->getEndAfterPadding()I

    .line 673
    .line 674
    .line 675
    move-result v2

    .line 676
    sub-int v2, v1, v2

    .line 677
    .line 678
    :goto_17
    if-lez v2, :cond_20

    .line 679
    .line 680
    iget v1, v7, Lm1/C;->b:I

    .line 681
    .line 682
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 683
    .line 684
    .line 685
    move-result v1

    .line 686
    return v1

    .line 687
    :cond_20
    const/16 v17, 0x0

    .line 688
    .line 689
    return v17
.end method

.method public final r(Z)Landroid/view/View;
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lm1/L;

    .line 2
    .line 3
    invoke-virtual {v0}, Lm1/L;->getStartAfterPadding()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lm1/L;

    .line 8
    .line 9
    invoke-virtual {v1}, Lm1/L;->getEndAfterPadding()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-virtual {p0}, Lm1/i0;->getChildCount()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    add-int/lit8 v2, v2, -0x1

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    :goto_0
    if-ltz v2, :cond_4

    .line 21
    .line 22
    invoke-virtual {p0, v2}, Lm1/i0;->getChildAt(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lm1/L;

    .line 27
    .line 28
    invoke-virtual {v5, v4}, Lm1/L;->getDecoratedStart(Landroid/view/View;)I

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    iget-object v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lm1/L;

    .line 33
    .line 34
    invoke-virtual {v6, v4}, Lm1/L;->getDecoratedEnd(Landroid/view/View;)I

    .line 35
    .line 36
    .line 37
    move-result v6

    .line 38
    if-le v6, v0, :cond_3

    .line 39
    .line 40
    if-lt v5, v1, :cond_0

    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_0
    if-le v6, v1, :cond_2

    .line 44
    .line 45
    if-nez p1, :cond_1

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    if-nez v3, :cond_3

    .line 49
    .line 50
    move-object v3, v4

    .line 51
    goto :goto_2

    .line 52
    :cond_2
    :goto_1
    return-object v4

    .line 53
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, -0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_4
    return-object v3
.end method

.method public final s(Z)Landroid/view/View;
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lm1/L;

    .line 2
    .line 3
    invoke-virtual {v0}, Lm1/L;->getStartAfterPadding()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lm1/L;

    .line 8
    .line 9
    invoke-virtual {v1}, Lm1/L;->getEndAfterPadding()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-virtual {p0}, Lm1/i0;->getChildCount()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const/4 v3, 0x0

    .line 18
    const/4 v4, 0x0

    .line 19
    :goto_0
    if-ge v4, v2, :cond_4

    .line 20
    .line 21
    invoke-virtual {p0, v4}, Lm1/i0;->getChildAt(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    iget-object v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lm1/L;

    .line 26
    .line 27
    invoke-virtual {v6, v5}, Lm1/L;->getDecoratedStart(Landroid/view/View;)I

    .line 28
    .line 29
    .line 30
    move-result v6

    .line 31
    iget-object v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lm1/L;

    .line 32
    .line 33
    invoke-virtual {v7, v5}, Lm1/L;->getDecoratedEnd(Landroid/view/View;)I

    .line 34
    .line 35
    .line 36
    move-result v7

    .line 37
    if-le v7, v0, :cond_3

    .line 38
    .line 39
    if-lt v6, v1, :cond_0

    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_0
    if-ge v6, v0, :cond_2

    .line 43
    .line 44
    if-nez p1, :cond_1

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    if-nez v3, :cond_3

    .line 48
    .line 49
    move-object v3, v5

    .line 50
    goto :goto_2

    .line 51
    :cond_2
    :goto_1
    return-object v5

    .line 52
    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_4
    return-object v3
.end method

.method public scrollHorizontallyBy(ILm1/p0;Lm1/x0;)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->J(ILm1/p0;Lm1/x0;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public scrollToPosition(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->F:Lm1/O0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v1, v0, Lm1/O0;->b:I

    .line 6
    .line 7
    if-eq v1, p1, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput-object v1, v0, Lm1/O0;->j:[I

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    iput v1, v0, Lm1/O0;->f:I

    .line 14
    .line 15
    const/4 v1, -0x1

    .line 16
    iput v1, v0, Lm1/O0;->b:I

    .line 17
    .line 18
    iput v1, v0, Lm1/O0;->e:I

    .line 19
    .line 20
    :cond_0
    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->z:I

    .line 21
    .line 22
    const/high16 p1, -0x80000000

    .line 23
    .line 24
    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:I

    .line 25
    .line 26
    invoke-virtual {p0}, Lm1/i0;->requestLayout()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public scrollVerticallyBy(ILm1/p0;Lm1/x0;)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->J(ILm1/p0;Lm1/x0;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public setMeasuredDimension(Landroid/graphics/Rect;II)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lm1/i0;->getPaddingLeft()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lm1/i0;->getPaddingRight()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    add-int/2addr v1, v0

    .line 10
    invoke-virtual {p0}, Lm1/i0;->getPaddingTop()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-virtual {p0}, Lm1/i0;->getPaddingBottom()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    add-int/2addr v2, v0

    .line 19
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:I

    .line 20
    .line 21
    const/4 v3, 0x1

    .line 22
    if-ne v0, v3, :cond_0

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    add-int/2addr p1, v2

    .line 29
    invoke-virtual {p0}, Lm1/i0;->getMinimumHeight()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    invoke-static {p3, p1, v0}, Lm1/i0;->chooseSize(III)I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    iget p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:I

    .line 38
    .line 39
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 40
    .line 41
    mul-int/2addr p3, v0

    .line 42
    add-int/2addr p3, v1

    .line 43
    invoke-virtual {p0}, Lm1/i0;->getMinimumWidth()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    invoke-static {p2, p3, v0}, Lm1/i0;->chooseSize(III)I

    .line 48
    .line 49
    .line 50
    move-result p2

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    add-int/2addr p1, v1

    .line 57
    invoke-virtual {p0}, Lm1/i0;->getMinimumWidth()I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    invoke-static {p2, p1, v0}, Lm1/i0;->chooseSize(III)I

    .line 62
    .line 63
    .line 64
    move-result p2

    .line 65
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:I

    .line 66
    .line 67
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 68
    .line 69
    mul-int/2addr p1, v0

    .line 70
    add-int/2addr p1, v2

    .line 71
    invoke-virtual {p0}, Lm1/i0;->getMinimumHeight()I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    invoke-static {p3, p1, v0}, Lm1/i0;->chooseSize(III)I

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    :goto_0
    invoke-virtual {p0, p2, p1}, Lm1/i0;->setMeasuredDimension(II)V

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 8
    .line 9
    const-string v0, "invalid orientation."

    .line 10
    .line 11
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    throw p1

    .line 15
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 16
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:I

    .line 20
    .line 21
    if-ne p1, v0, :cond_2

    .line 22
    .line 23
    return-void

    .line 24
    :cond_2
    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:I

    .line 25
    .line 26
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lm1/L;

    .line 27
    .line 28
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:Lm1/L;

    .line 29
    .line 30
    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lm1/L;

    .line 31
    .line 32
    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:Lm1/L;

    .line 33
    .line 34
    invoke-virtual {p0}, Lm1/i0;->requestLayout()V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public setReverseLayout(Z)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->F:Lm1/O0;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-boolean v1, v0, Lm1/O0;->q:Z

    .line 10
    .line 11
    if-eq v1, p1, :cond_0

    .line 12
    .line 13
    iput-boolean p1, v0, Lm1/O0;->q:Z

    .line 14
    .line 15
    :cond_0
    iput-boolean p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w:Z

    .line 16
    .line 17
    invoke-virtual {p0}, Lm1/i0;->requestLayout()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public setSpanCount(I)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 3
    .line 4
    .line 5
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 6
    .line 7
    if-eq p1, v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->invalidateSpanAssignments()V

    .line 10
    .line 11
    .line 12
    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 13
    .line 14
    new-instance p1, Ljava/util/BitSet;

    .line 15
    .line 16
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 17
    .line 18
    invoke-direct {p1, v0}, Ljava/util/BitSet;-><init>(I)V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->y:Ljava/util/BitSet;

    .line 22
    .line 23
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 24
    .line 25
    new-array p1, p1, [Lm1/P0;

    .line 26
    .line 27
    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:[Lm1/P0;

    .line 28
    .line 29
    const/4 p1, 0x0

    .line 30
    :goto_0
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 31
    .line 32
    if-ge p1, v0, :cond_0

    .line 33
    .line 34
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:[Lm1/P0;

    .line 35
    .line 36
    new-instance v1, Lm1/P0;

    .line 37
    .line 38
    invoke-direct {v1, p0, p1}, Lm1/P0;-><init>(Landroidx/recyclerview/widget/StaggeredGridLayoutManager;I)V

    .line 39
    .line 40
    .line 41
    aput-object v1, v0, p1

    .line 42
    .line 43
    add-int/lit8 p1, p1, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {p0}, Lm1/i0;->requestLayout()V

    .line 47
    .line 48
    .line 49
    :cond_1
    return-void
.end method

.method public smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Lm1/x0;I)V
    .locals 0

    .line 1
    new-instance p2, Lm1/I;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {p2, p1}, Lm1/I;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2, p3}, Lm1/w0;->setTargetPosition(I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p2}, Lm1/i0;->startSmoothScroll(Lm1/w0;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->F:Lm1/O0;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    return v0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    return v0
.end method

.method public final t(Lm1/p0;Lm1/x0;Z)V
    .locals 2

    .line 1
    const/high16 v0, -0x80000000

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x(I)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-ne v1, v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lm1/L;

    .line 11
    .line 12
    invoke-virtual {v0}, Lm1/L;->getEndAfterPadding()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    sub-int/2addr v0, v1

    .line 17
    if-lez v0, :cond_1

    .line 18
    .line 19
    neg-int v1, v0

    .line 20
    invoke-virtual {p0, v1, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->J(ILm1/p0;Lm1/x0;)I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    neg-int p1, p1

    .line 25
    sub-int/2addr v0, p1

    .line 26
    if-eqz p3, :cond_1

    .line 27
    .line 28
    if-lez v0, :cond_1

    .line 29
    .line 30
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lm1/L;

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Lm1/L;->offsetChildren(I)V

    .line 33
    .line 34
    .line 35
    :cond_1
    :goto_0
    return-void
.end method

.method public final u(Lm1/p0;Lm1/x0;Z)V
    .locals 2

    .line 1
    const v0, 0x7fffffff

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->y(I)I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-ne v1, v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lm1/L;

    .line 12
    .line 13
    invoke-virtual {v0}, Lm1/L;->getStartAfterPadding()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    sub-int/2addr v1, v0

    .line 18
    if-lez v1, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0, v1, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->J(ILm1/p0;Lm1/x0;)I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    sub-int/2addr v1, p1

    .line 25
    if-eqz p3, :cond_1

    .line 26
    .line 27
    if-lez v1, :cond_1

    .line 28
    .line 29
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lm1/L;

    .line 30
    .line 31
    neg-int p2, v1

    .line 32
    invoke-virtual {p1, p2}, Lm1/L;->offsetChildren(I)V

    .line 33
    .line 34
    .line 35
    :cond_1
    :goto_0
    return-void
.end method

.method public final v()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lm1/i0;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-virtual {p0, v1}, Lm1/i0;->getChildAt(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p0, v0}, Lm1/i0;->getPosition(Landroid/view/View;)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    return v0
.end method

.method public final w()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lm1/i0;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return v0

    .line 9
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lm1/i0;->getChildAt(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p0, v0}, Lm1/i0;->getPosition(Landroid/view/View;)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    return v0
.end method

.method public final x(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:[Lm1/P0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget-object v0, v0, v1

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lm1/P0;->d(I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    :goto_0
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 12
    .line 13
    if-ge v1, v2, :cond_1

    .line 14
    .line 15
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:[Lm1/P0;

    .line 16
    .line 17
    aget-object v2, v2, v1

    .line 18
    .line 19
    invoke-virtual {v2, p1}, Lm1/P0;->d(I)I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-le v2, v0, :cond_0

    .line 24
    .line 25
    move v0, v2

    .line 26
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    return v0
.end method

.method public final y(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:[Lm1/P0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget-object v0, v0, v1

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lm1/P0;->e(I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    :goto_0
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 12
    .line 13
    if-ge v1, v2, :cond_1

    .line 14
    .line 15
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:[Lm1/P0;

    .line 16
    .line 17
    aget-object v2, v2, v1

    .line 18
    .line 19
    invoke-virtual {v2, p1}, Lm1/P0;->e(I)I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-ge v2, v0, :cond_0

    .line 24
    .line 25
    move v0, v2

    .line 26
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    return v0
.end method

.method public final z(III)V
    .locals 9

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    :goto_0
    const/16 v1, 0x8

    .line 15
    .line 16
    if-ne p3, v1, :cond_2

    .line 17
    .line 18
    if-ge p1, p2, :cond_1

    .line 19
    .line 20
    add-int/lit8 v2, p2, 0x1

    .line 21
    .line 22
    :goto_1
    move v3, p1

    .line 23
    goto :goto_2

    .line 24
    :cond_1
    add-int/lit8 v2, p1, 0x1

    .line 25
    .line 26
    move v3, p2

    .line 27
    goto :goto_2

    .line 28
    :cond_2
    add-int v2, p1, p2

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :goto_2
    iget-object v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->B:Lm1/M0;

    .line 32
    .line 33
    iget-object v5, v4, Lm1/M0;->a:[I

    .line 34
    .line 35
    const/4 v6, -0x1

    .line 36
    if-nez v5, :cond_3

    .line 37
    .line 38
    goto :goto_6

    .line 39
    :cond_3
    array-length v5, v5

    .line 40
    if-lt v3, v5, :cond_4

    .line 41
    .line 42
    goto :goto_6

    .line 43
    :cond_4
    iget-object v5, v4, Lm1/M0;->b:Ljava/util/ArrayList;

    .line 44
    .line 45
    if-nez v5, :cond_6

    .line 46
    .line 47
    :cond_5
    move v5, v6

    .line 48
    goto :goto_5

    .line 49
    :cond_6
    invoke-virtual {v4, v3}, Lm1/M0;->getFullSpanItem(I)Lm1/L0;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    if-eqz v5, :cond_7

    .line 54
    .line 55
    iget-object v7, v4, Lm1/M0;->b:Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-interface {v7, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    :cond_7
    iget-object v5, v4, Lm1/M0;->b:Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    const/4 v7, 0x0

    .line 67
    :goto_3
    if-ge v7, v5, :cond_9

    .line 68
    .line 69
    iget-object v8, v4, Lm1/M0;->b:Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v8

    .line 75
    check-cast v8, Lm1/L0;

    .line 76
    .line 77
    iget v8, v8, Lm1/L0;->b:I

    .line 78
    .line 79
    if-lt v8, v3, :cond_8

    .line 80
    .line 81
    goto :goto_4

    .line 82
    :cond_8
    add-int/lit8 v7, v7, 0x1

    .line 83
    .line 84
    goto :goto_3

    .line 85
    :cond_9
    move v7, v6

    .line 86
    :goto_4
    if-eq v7, v6, :cond_5

    .line 87
    .line 88
    iget-object v5, v4, Lm1/M0;->b:Ljava/util/ArrayList;

    .line 89
    .line 90
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    check-cast v5, Lm1/L0;

    .line 95
    .line 96
    iget-object v8, v4, Lm1/M0;->b:Ljava/util/ArrayList;

    .line 97
    .line 98
    invoke-interface {v8, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    iget v5, v5, Lm1/L0;->b:I

    .line 102
    .line 103
    :goto_5
    if-ne v5, v6, :cond_a

    .line 104
    .line 105
    iget-object v5, v4, Lm1/M0;->a:[I

    .line 106
    .line 107
    array-length v7, v5

    .line 108
    invoke-static {v5, v3, v7, v6}, Ljava/util/Arrays;->fill([IIII)V

    .line 109
    .line 110
    .line 111
    iget-object v5, v4, Lm1/M0;->a:[I

    .line 112
    .line 113
    array-length v5, v5

    .line 114
    goto :goto_6

    .line 115
    :cond_a
    add-int/lit8 v5, v5, 0x1

    .line 116
    .line 117
    iget-object v7, v4, Lm1/M0;->a:[I

    .line 118
    .line 119
    array-length v7, v7

    .line 120
    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    .line 121
    .line 122
    .line 123
    move-result v5

    .line 124
    iget-object v7, v4, Lm1/M0;->a:[I

    .line 125
    .line 126
    invoke-static {v7, v3, v5, v6}, Ljava/util/Arrays;->fill([IIII)V

    .line 127
    .line 128
    .line 129
    :goto_6
    const/4 v5, 0x1

    .line 130
    if-eq p3, v5, :cond_d

    .line 131
    .line 132
    const/4 v6, 0x2

    .line 133
    if-eq p3, v6, :cond_c

    .line 134
    .line 135
    if-eq p3, v1, :cond_b

    .line 136
    .line 137
    goto :goto_7

    .line 138
    :cond_b
    invoke-virtual {v4, p1, v5}, Lm1/M0;->d(II)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v4, p2, v5}, Lm1/M0;->c(II)V

    .line 142
    .line 143
    .line 144
    goto :goto_7

    .line 145
    :cond_c
    invoke-virtual {v4, p1, p2}, Lm1/M0;->d(II)V

    .line 146
    .line 147
    .line 148
    goto :goto_7

    .line 149
    :cond_d
    invoke-virtual {v4, p1, p2}, Lm1/M0;->c(II)V

    .line 150
    .line 151
    .line 152
    :goto_7
    if-gt v2, v0, :cond_e

    .line 153
    .line 154
    goto :goto_9

    .line 155
    :cond_e
    iget-boolean p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Z

    .line 156
    .line 157
    if-eqz p1, :cond_f

    .line 158
    .line 159
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v()I

    .line 160
    .line 161
    .line 162
    move-result p1

    .line 163
    goto :goto_8

    .line 164
    :cond_f
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w()I

    .line 165
    .line 166
    .line 167
    move-result p1

    .line 168
    :goto_8
    if-gt v3, p1, :cond_10

    .line 169
    .line 170
    invoke-virtual {p0}, Lm1/i0;->requestLayout()V

    .line 171
    .line 172
    .line 173
    :cond_10
    :goto_9
    return-void
.end method
