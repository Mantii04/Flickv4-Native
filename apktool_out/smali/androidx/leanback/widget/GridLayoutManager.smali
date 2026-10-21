.class public final Landroidx/leanback/widget/GridLayoutManager;
.super Lm1/i0;
.source "SourceFile"


# static fields
.field public static final h0:Landroid/graphics/Rect;

.field public static final i0:[I


# instance fields
.field public A:Landroid/media/AudioManager;

.field public B:Lm1/p0;

.field public C:I

.field public D:Landroidx/leanback/widget/t0;

.field public E:Ljava/util/ArrayList;

.field public F:I

.field public G:Landroidx/leanback/widget/I;

.field public H:Landroidx/leanback/widget/K;

.field public I:I

.field public J:I

.field public K:I

.field public L:I

.field public M:I

.field public N:[I

.field public O:I

.field public P:I

.field public Q:I

.field public R:I

.field public S:I

.field public T:I

.field public U:I

.field public V:I

.field public W:Landroidx/leanback/widget/E;

.field public X:I

.field public final Y:Landroidx/leanback/widget/C1;

.field public final Z:Landroidx/leanback/widget/U;

.field public a0:I

.field public b0:I

.field public final c0:[I

.field public final d0:LG2/b;

.field public e0:Landroidx/leanback/widget/d0;

.field public final f0:Landroidx/leanback/widget/F;

.field public final g0:Landroidx/leanback/widget/G;

.field public p:F

.field public q:I

.field public r:Landroidx/leanback/widget/t;

.field public s:I

.field public t:Lm1/L;

.field public u:I

.field public v:Lm1/x0;

.field public w:I

.field public x:I

.field public final y:Landroid/util/SparseIntArray;

.field public z:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/leanback/widget/GridLayoutManager;->h0:Landroid/graphics/Rect;

    .line 7
    .line 8
    const/4 v0, 0x2

    .line 9
    new-array v0, v0, [I

    .line 10
    .line 11
    sput-object v0, Landroidx/leanback/widget/GridLayoutManager;->i0:[I

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Landroidx/leanback/widget/GridLayoutManager;-><init>(Landroidx/leanback/widget/t;)V

    return-void
.end method

.method public constructor <init>(Landroidx/leanback/widget/t;)V
    .locals 4

    .line 2
    invoke-direct {p0}, Lm1/i0;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 3
    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->p:F

    const/16 v0, 0xa

    .line 4
    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->q:I

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->s:I

    .line 6
    invoke-static {p0}, Lm1/L;->createHorizontalHelper(Lm1/i0;)Lm1/L;

    move-result-object v1

    iput-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->t:Lm1/L;

    .line 7
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->y:Landroid/util/SparseIntArray;

    const v1, 0x36200

    .line 8
    iput v1, p0, Landroidx/leanback/widget/GridLayoutManager;->C:I

    const/4 v1, 0x0

    .line 9
    iput-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->D:Landroidx/leanback/widget/t0;

    .line 10
    iput-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->E:Ljava/util/ArrayList;

    const/4 v1, -0x1

    .line 11
    iput v1, p0, Landroidx/leanback/widget/GridLayoutManager;->F:I

    .line 12
    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->I:I

    const v2, 0x800033

    .line 13
    iput v2, p0, Landroidx/leanback/widget/GridLayoutManager;->T:I

    const/4 v2, 0x1

    .line 14
    iput v2, p0, Landroidx/leanback/widget/GridLayoutManager;->V:I

    .line 15
    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->X:I

    .line 16
    new-instance v2, Landroidx/leanback/widget/C1;

    invoke-direct {v2}, Landroidx/leanback/widget/C1;-><init>()V

    iput-object v2, p0, Landroidx/leanback/widget/GridLayoutManager;->Y:Landroidx/leanback/widget/C1;

    .line 17
    new-instance v2, Landroidx/leanback/widget/U;

    invoke-direct {v2}, Landroidx/leanback/widget/U;-><init>()V

    iput-object v2, p0, Landroidx/leanback/widget/GridLayoutManager;->Z:Landroidx/leanback/widget/U;

    const/4 v2, 0x2

    .line 18
    new-array v2, v2, [I

    iput-object v2, p0, Landroidx/leanback/widget/GridLayoutManager;->c0:[I

    .line 19
    new-instance v2, LG2/b;

    .line 20
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 21
    iput v0, v2, LG2/b;->a:I

    const/16 v3, 0x64

    .line 22
    iput v3, v2, LG2/b;->b:I

    .line 23
    iput-object v2, p0, Landroidx/leanback/widget/GridLayoutManager;->d0:LG2/b;

    .line 24
    new-instance v2, Landroidx/leanback/widget/F;

    invoke-direct {v2, p0}, Landroidx/leanback/widget/F;-><init>(Landroidx/leanback/widget/GridLayoutManager;)V

    iput-object v2, p0, Landroidx/leanback/widget/GridLayoutManager;->f0:Landroidx/leanback/widget/F;

    .line 25
    new-instance v2, Landroidx/leanback/widget/G;

    invoke-direct {v2, p0}, Landroidx/leanback/widget/G;-><init>(Landroidx/leanback/widget/GridLayoutManager;)V

    iput-object v2, p0, Landroidx/leanback/widget/GridLayoutManager;->g0:Landroidx/leanback/widget/G;

    .line 26
    iput-object p1, p0, Landroidx/leanback/widget/GridLayoutManager;->r:Landroidx/leanback/widget/t;

    .line 27
    iput v1, p0, Landroidx/leanback/widget/GridLayoutManager;->J:I

    .line 28
    invoke-virtual {p0, v0}, Lm1/i0;->setItemPrefetchEnabled(Z)V

    return-void
.end method

.method public static p(Landroid/view/View;)I
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Landroidx/leanback/widget/J;

    .line 9
    .line 10
    if-eqz p0, :cond_2

    .line 11
    .line 12
    invoke-virtual {p0}, Lm1/j0;->isItemRemoved()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    invoke-virtual {p0}, Lm1/j0;->getAbsoluteAdapterPosition()I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    return p0

    .line 24
    :cond_2
    :goto_0
    const/4 p0, -0x1

    .line 25
    return p0
.end method


# virtual methods
.method public final A(I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->r:Landroidx/leanback/widget/t;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Lm1/B0;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x0

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    return v0

    .line 11
    :cond_0
    iget-object p1, p1, Lm1/B0;->a:Landroid/view/View;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-ltz v1, :cond_1

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    iget-object v2, p0, Landroidx/leanback/widget/GridLayoutManager;->r:Landroidx/leanback/widget/t;

    .line 24
    .line 25
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-gt v1, v2, :cond_1

    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-ltz v1, :cond_1

    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    iget-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->r:Landroidx/leanback/widget/t;

    .line 42
    .line 43
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-gt p1, v1, :cond_1

    .line 48
    .line 49
    const/4 p1, 0x1

    .line 50
    return p1

    .line 51
    :cond_1
    return v0
.end method

.method public final B(Landroid/view/View;IIII)V
    .locals 7

    .line 1
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->s:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/GridLayoutManager;->q(Landroid/view/View;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/GridLayoutManager;->r(Landroid/view/View;)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    :goto_0
    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->M:I

    .line 15
    .line 16
    if-lez v1, :cond_1

    .line 17
    .line 18
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    :cond_1
    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->T:I

    .line 23
    .line 24
    and-int/lit8 v2, v1, 0x70

    .line 25
    .line 26
    iget v3, p0, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 27
    .line 28
    const/high16 v4, 0xc0000

    .line 29
    .line 30
    and-int/2addr v3, v4

    .line 31
    const/4 v4, 0x1

    .line 32
    if-eqz v3, :cond_2

    .line 33
    .line 34
    const v3, 0x800007

    .line 35
    .line 36
    .line 37
    and-int/2addr v1, v3

    .line 38
    invoke-static {v1, v4}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    goto :goto_1

    .line 43
    :cond_2
    and-int/lit8 v1, v1, 0x7

    .line 44
    .line 45
    :goto_1
    iget v3, p0, Landroidx/leanback/widget/GridLayoutManager;->s:I

    .line 46
    .line 47
    if-nez v3, :cond_3

    .line 48
    .line 49
    const/16 v5, 0x30

    .line 50
    .line 51
    if-eq v2, v5, :cond_a

    .line 52
    .line 53
    :cond_3
    if-ne v3, v4, :cond_4

    .line 54
    .line 55
    const/4 v5, 0x3

    .line 56
    if-ne v1, v5, :cond_4

    .line 57
    .line 58
    goto :goto_3

    .line 59
    :cond_4
    if-nez v3, :cond_5

    .line 60
    .line 61
    const/16 v5, 0x50

    .line 62
    .line 63
    if-eq v2, v5, :cond_6

    .line 64
    .line 65
    :cond_5
    if-ne v3, v4, :cond_7

    .line 66
    .line 67
    const/4 v5, 0x5

    .line 68
    if-ne v1, v5, :cond_7

    .line 69
    .line 70
    :cond_6
    invoke-virtual {p0, p2}, Landroidx/leanback/widget/GridLayoutManager;->t(I)I

    .line 71
    .line 72
    .line 73
    move-result p2

    .line 74
    sub-int/2addr p2, v0

    .line 75
    :goto_2
    add-int/2addr p5, p2

    .line 76
    goto :goto_3

    .line 77
    :cond_7
    if-nez v3, :cond_8

    .line 78
    .line 79
    const/16 v5, 0x10

    .line 80
    .line 81
    if-eq v2, v5, :cond_9

    .line 82
    .line 83
    :cond_8
    if-ne v3, v4, :cond_a

    .line 84
    .line 85
    if-ne v1, v4, :cond_a

    .line 86
    .line 87
    :cond_9
    invoke-virtual {p0, p2}, Landroidx/leanback/widget/GridLayoutManager;->t(I)I

    .line 88
    .line 89
    .line 90
    move-result p2

    .line 91
    sub-int/2addr p2, v0

    .line 92
    div-int/lit8 p2, p2, 0x2

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_a
    :goto_3
    iget p2, p0, Landroidx/leanback/widget/GridLayoutManager;->s:I

    .line 96
    .line 97
    if-nez p2, :cond_b

    .line 98
    .line 99
    add-int/2addr v0, p5

    .line 100
    move v3, p3

    .line 101
    move v5, p4

    .line 102
    move v4, p5

    .line 103
    move v6, v0

    .line 104
    goto :goto_4

    .line 105
    :cond_b
    add-int/2addr v0, p5

    .line 106
    move v4, p3

    .line 107
    move v6, p4

    .line 108
    move v3, p5

    .line 109
    move v5, v0

    .line 110
    :goto_4
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    check-cast p2, Landroidx/leanback/widget/J;

    .line 115
    .line 116
    move-object v1, p0

    .line 117
    move-object v2, p1

    .line 118
    invoke-virtual/range {v1 .. v6}, Lm1/i0;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    .line 119
    .line 120
    .line 121
    sget-object p1, Landroidx/leanback/widget/GridLayoutManager;->h0:Landroid/graphics/Rect;

    .line 122
    .line 123
    invoke-super {p0, v2, p1}, Lm1/i0;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 124
    .line 125
    .line 126
    iget p3, p1, Landroid/graphics/Rect;->left:I

    .line 127
    .line 128
    sub-int/2addr v3, p3

    .line 129
    iget p3, p1, Landroid/graphics/Rect;->top:I

    .line 130
    .line 131
    sub-int/2addr v4, p3

    .line 132
    iget p3, p1, Landroid/graphics/Rect;->right:I

    .line 133
    .line 134
    sub-int/2addr p3, v5

    .line 135
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 136
    .line 137
    sub-int/2addr p1, v6

    .line 138
    iput v3, p2, Landroidx/leanback/widget/J;->e:I

    .line 139
    .line 140
    iput v4, p2, Landroidx/leanback/widget/J;->f:I

    .line 141
    .line 142
    iput p3, p2, Landroidx/leanback/widget/J;->g:I

    .line 143
    .line 144
    iput p1, p2, Landroidx/leanback/widget/J;->h:I

    .line 145
    .line 146
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    check-cast p1, Landroidx/leanback/widget/J;

    .line 151
    .line 152
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 153
    .line 154
    .line 155
    iget-object p2, v1, Landroidx/leanback/widget/GridLayoutManager;->Z:Landroidx/leanback/widget/U;

    .line 156
    .line 157
    iget-object p3, p2, Landroidx/leanback/widget/U;->b:Landroidx/leanback/widget/T;

    .line 158
    .line 159
    invoke-virtual {p3, v2}, Landroidx/leanback/widget/T;->getAlignmentPosition(Landroid/view/View;)I

    .line 160
    .line 161
    .line 162
    move-result p3

    .line 163
    iput p3, p1, Landroidx/leanback/widget/J;->i:I

    .line 164
    .line 165
    iget-object p2, p2, Landroidx/leanback/widget/U;->a:Landroidx/leanback/widget/T;

    .line 166
    .line 167
    invoke-virtual {p2, v2}, Landroidx/leanback/widget/T;->getAlignmentPosition(Landroid/view/View;)I

    .line 168
    .line 169
    .line 170
    move-result p2

    .line 171
    iput p2, p1, Landroidx/leanback/widget/J;->j:I

    .line 172
    .line 173
    return-void
.end method

.method public final C()V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->u:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, -0x1

    .line 4
    .line 5
    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->u:I

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->B:Lm1/p0;

    .line 11
    .line 12
    iput-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->v:Lm1/x0;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->w:I

    .line 16
    .line 17
    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->x:I

    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public final D(Landroid/view/View;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/leanback/widget/J;

    .line 6
    .line 7
    sget-object v1, Landroidx/leanback/widget/GridLayoutManager;->h0:Landroid/graphics/Rect;

    .line 8
    .line 9
    invoke-virtual {p0, p1, v1}, Lm1/i0;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 10
    .line 11
    .line 12
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 13
    .line 14
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 15
    .line 16
    add-int/2addr v2, v3

    .line 17
    iget v3, v1, Landroid/graphics/Rect;->left:I

    .line 18
    .line 19
    add-int/2addr v2, v3

    .line 20
    iget v3, v1, Landroid/graphics/Rect;->right:I

    .line 21
    .line 22
    add-int/2addr v2, v3

    .line 23
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 24
    .line 25
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 26
    .line 27
    add-int/2addr v3, v4

    .line 28
    iget v4, v1, Landroid/graphics/Rect;->top:I

    .line 29
    .line 30
    add-int/2addr v3, v4

    .line 31
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 32
    .line 33
    add-int/2addr v3, v1

    .line 34
    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->L:I

    .line 35
    .line 36
    const/4 v4, -0x2

    .line 37
    const/4 v5, 0x0

    .line 38
    if-ne v1, v4, :cond_0

    .line 39
    .line 40
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->M:I

    .line 46
    .line 47
    const/high16 v4, 0x40000000    # 2.0f

    .line 48
    .line 49
    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    :goto_0
    iget v4, p0, Landroidx/leanback/widget/GridLayoutManager;->s:I

    .line 54
    .line 55
    if-nez v4, :cond_1

    .line 56
    .line 57
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 62
    .line 63
    invoke-static {v4, v2, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 68
    .line 69
    invoke-static {v1, v3, v0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    goto :goto_1

    .line 74
    :cond_1
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 79
    .line 80
    invoke-static {v4, v3, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 85
    .line 86
    invoke-static {v1, v2, v0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    move v0, v3

    .line 91
    :goto_1
    invoke-virtual {p1, v2, v0}, Landroid/view/View;->measure(II)V

    .line 92
    .line 93
    .line 94
    return-void
.end method

.method public final E()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->W:Landroidx/leanback/widget/E;

    .line 2
    .line 3
    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 4
    .line 5
    const/high16 v2, 0x40000

    .line 6
    .line 7
    and-int/2addr v1, v2

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->a0:I

    .line 11
    .line 12
    iget v2, p0, Landroidx/leanback/widget/GridLayoutManager;->b0:I

    .line 13
    .line 14
    add-int/2addr v1, v2

    .line 15
    iget v2, p0, Landroidx/leanback/widget/GridLayoutManager;->x:I

    .line 16
    .line 17
    add-int/2addr v1, v2

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->b0:I

    .line 20
    .line 21
    neg-int v1, v1

    .line 22
    iget v2, p0, Landroidx/leanback/widget/GridLayoutManager;->x:I

    .line 23
    .line 24
    sub-int/2addr v1, v2

    .line 25
    :goto_0
    invoke-virtual {v0, v1}, Landroidx/leanback/widget/E;->prependVisibleItems(I)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final F(Z)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->z()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-virtual {p0}, Lm1/i0;->getItemCount()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_d

    .line 16
    .line 17
    iget-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->r:Landroidx/leanback/widget/t;

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Lm1/B0;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    goto/16 :goto_4

    .line 26
    .line 27
    :cond_1
    iget-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->H:Landroidx/leanback/widget/K;

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    if-nez v1, :cond_4

    .line 31
    .line 32
    new-instance v1, Landroidx/leanback/widget/K;

    .line 33
    .line 34
    if-eqz p1, :cond_2

    .line 35
    .line 36
    move v3, v2

    .line 37
    goto :goto_0

    .line 38
    :cond_2
    const/4 v3, -0x1

    .line 39
    :goto_0
    iget v4, p0, Landroidx/leanback/widget/GridLayoutManager;->U:I

    .line 40
    .line 41
    if-le v4, v2, :cond_3

    .line 42
    .line 43
    move v4, v2

    .line 44
    goto :goto_1

    .line 45
    :cond_3
    move v4, v0

    .line 46
    :goto_1
    invoke-direct {v1, p0, v3, v4}, Landroidx/leanback/widget/K;-><init>(Landroidx/leanback/widget/GridLayoutManager;IZ)V

    .line 47
    .line 48
    .line 49
    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->I:I

    .line 50
    .line 51
    invoke-virtual {p0, v1}, Landroidx/leanback/widget/GridLayoutManager;->startSmoothScroll(Lm1/w0;)V

    .line 52
    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_4
    iget-object v0, v1, Landroidx/leanback/widget/K;->u:Landroidx/leanback/widget/GridLayoutManager;

    .line 56
    .line 57
    if-eqz p1, :cond_5

    .line 58
    .line 59
    iget v3, v1, Landroidx/leanback/widget/K;->t:I

    .line 60
    .line 61
    iget v0, v0, Landroidx/leanback/widget/GridLayoutManager;->q:I

    .line 62
    .line 63
    if-ge v3, v0, :cond_6

    .line 64
    .line 65
    add-int/2addr v3, v2

    .line 66
    iput v3, v1, Landroidx/leanback/widget/K;->t:I

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_5
    iget v3, v1, Landroidx/leanback/widget/K;->t:I

    .line 70
    .line 71
    iget v0, v0, Landroidx/leanback/widget/GridLayoutManager;->q:I

    .line 72
    .line 73
    neg-int v0, v0

    .line 74
    if-le v3, v0, :cond_6

    .line 75
    .line 76
    sub-int/2addr v3, v2

    .line 77
    iput v3, v1, Landroidx/leanback/widget/K;->t:I

    .line 78
    .line 79
    :cond_6
    :goto_2
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->s:I

    .line 80
    .line 81
    if-nez v0, :cond_9

    .line 82
    .line 83
    invoke-virtual {p0}, Lm1/i0;->getLayoutDirection()I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    const/4 v1, 0x4

    .line 88
    const/4 v3, 0x3

    .line 89
    if-ne v0, v2, :cond_8

    .line 90
    .line 91
    if-eqz p1, :cond_b

    .line 92
    .line 93
    :cond_7
    move v1, v3

    .line 94
    goto :goto_3

    .line 95
    :cond_8
    if-eqz p1, :cond_7

    .line 96
    .line 97
    goto :goto_3

    .line 98
    :cond_9
    if-eqz p1, :cond_a

    .line 99
    .line 100
    const/4 v2, 0x2

    .line 101
    :cond_a
    move v1, v2

    .line 102
    :cond_b
    :goto_3
    iget-object p1, p0, Landroidx/leanback/widget/GridLayoutManager;->A:Landroid/media/AudioManager;

    .line 103
    .line 104
    if-nez p1, :cond_c

    .line 105
    .line 106
    iget-object p1, p0, Landroidx/leanback/widget/GridLayoutManager;->r:Landroidx/leanback/widget/t;

    .line 107
    .line 108
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    const-string v0, "audio"

    .line 113
    .line 114
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    check-cast p1, Landroid/media/AudioManager;

    .line 119
    .line 120
    iput-object p1, p0, Landroidx/leanback/widget/GridLayoutManager;->A:Landroid/media/AudioManager;

    .line 121
    .line 122
    :cond_c
    iget-object p1, p0, Landroidx/leanback/widget/GridLayoutManager;->A:Landroid/media/AudioManager;

    .line 123
    .line 124
    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 125
    .line 126
    .line 127
    :cond_d
    :goto_4
    return-void
.end method

.method public final G(Z)Z
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Landroidx/leanback/widget/GridLayoutManager;->M:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    iget-object v1, v0, Landroidx/leanback/widget/GridLayoutManager;->N:[I

    .line 9
    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    :cond_0
    move/from16 v16, v2

    .line 13
    .line 14
    goto/16 :goto_f

    .line 15
    .line 16
    :cond_1
    iget-object v1, v0, Landroidx/leanback/widget/GridLayoutManager;->W:Landroidx/leanback/widget/E;

    .line 17
    .line 18
    if-nez v1, :cond_2

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    goto :goto_0

    .line 22
    :cond_2
    invoke-virtual {v1}, Landroidx/leanback/widget/E;->getItemPositionsInRows()[Lp/l;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    :goto_0
    const/4 v4, -0x1

    .line 27
    move v5, v2

    .line 28
    move v6, v5

    .line 29
    move v7, v4

    .line 30
    :goto_1
    iget v8, v0, Landroidx/leanback/widget/GridLayoutManager;->U:I

    .line 31
    .line 32
    if-ge v5, v8, :cond_17

    .line 33
    .line 34
    if-nez v1, :cond_3

    .line 35
    .line 36
    const/4 v8, 0x0

    .line 37
    goto :goto_2

    .line 38
    :cond_3
    aget-object v8, v1, v5

    .line 39
    .line 40
    :goto_2
    if-nez v8, :cond_4

    .line 41
    .line 42
    move v9, v2

    .line 43
    goto :goto_3

    .line 44
    :cond_4
    invoke-virtual {v8}, Lp/l;->size()I

    .line 45
    .line 46
    .line 47
    move-result v9

    .line 48
    :goto_3
    move v10, v2

    .line 49
    move v11, v4

    .line 50
    :goto_4
    if-ge v10, v9, :cond_a

    .line 51
    .line 52
    invoke-virtual {v8, v10}, Lp/l;->get(I)I

    .line 53
    .line 54
    .line 55
    move-result v12

    .line 56
    add-int/lit8 v13, v10, 0x1

    .line 57
    .line 58
    invoke-virtual {v8, v13}, Lp/l;->get(I)I

    .line 59
    .line 60
    .line 61
    move-result v13

    .line 62
    :goto_5
    if-gt v12, v13, :cond_9

    .line 63
    .line 64
    iget v14, v0, Landroidx/leanback/widget/GridLayoutManager;->w:I

    .line 65
    .line 66
    sub-int v14, v12, v14

    .line 67
    .line 68
    invoke-virtual {v0, v14}, Lm1/i0;->findViewByPosition(I)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object v14

    .line 72
    if-nez v14, :cond_5

    .line 73
    .line 74
    goto :goto_7

    .line 75
    :cond_5
    if-eqz p1, :cond_6

    .line 76
    .line 77
    invoke-virtual {v0, v14}, Landroidx/leanback/widget/GridLayoutManager;->D(Landroid/view/View;)V

    .line 78
    .line 79
    .line 80
    :cond_6
    iget v15, v0, Landroidx/leanback/widget/GridLayoutManager;->s:I

    .line 81
    .line 82
    if-nez v15, :cond_7

    .line 83
    .line 84
    invoke-virtual {v0, v14}, Landroidx/leanback/widget/GridLayoutManager;->q(Landroid/view/View;)I

    .line 85
    .line 86
    .line 87
    move-result v14

    .line 88
    goto :goto_6

    .line 89
    :cond_7
    invoke-virtual {v0, v14}, Landroidx/leanback/widget/GridLayoutManager;->r(Landroid/view/View;)I

    .line 90
    .line 91
    .line 92
    move-result v14

    .line 93
    :goto_6
    if-le v14, v11, :cond_8

    .line 94
    .line 95
    move v11, v14

    .line 96
    :cond_8
    :goto_7
    add-int/lit8 v12, v12, 0x1

    .line 97
    .line 98
    goto :goto_5

    .line 99
    :cond_9
    add-int/lit8 v10, v10, 0x2

    .line 100
    .line 101
    goto :goto_4

    .line 102
    :cond_a
    iget-object v8, v0, Landroidx/leanback/widget/GridLayoutManager;->v:Lm1/x0;

    .line 103
    .line 104
    invoke-virtual {v8}, Lm1/x0;->getItemCount()I

    .line 105
    .line 106
    .line 107
    move-result v8

    .line 108
    iget-object v9, v0, Landroidx/leanback/widget/GridLayoutManager;->r:Landroidx/leanback/widget/t;

    .line 109
    .line 110
    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView;->hasFixedSize()Z

    .line 111
    .line 112
    .line 113
    move-result v9

    .line 114
    const/4 v10, 0x1

    .line 115
    if-nez v9, :cond_13

    .line 116
    .line 117
    if-eqz p1, :cond_13

    .line 118
    .line 119
    if-gez v11, :cond_13

    .line 120
    .line 121
    if-lez v8, :cond_13

    .line 122
    .line 123
    if-gez v7, :cond_12

    .line 124
    .line 125
    iget v9, v0, Landroidx/leanback/widget/GridLayoutManager;->F:I

    .line 126
    .line 127
    if-gez v9, :cond_b

    .line 128
    .line 129
    move v9, v2

    .line 130
    goto :goto_8

    .line 131
    :cond_b
    if-lt v9, v8, :cond_c

    .line 132
    .line 133
    add-int/lit8 v9, v8, -0x1

    .line 134
    .line 135
    :cond_c
    :goto_8
    invoke-virtual {v0}, Lm1/i0;->getChildCount()I

    .line 136
    .line 137
    .line 138
    move-result v12

    .line 139
    if-lez v12, :cond_f

    .line 140
    .line 141
    iget-object v12, v0, Landroidx/leanback/widget/GridLayoutManager;->r:Landroidx/leanback/widget/t;

    .line 142
    .line 143
    invoke-virtual {v0, v2}, Lm1/i0;->getChildAt(I)Landroid/view/View;

    .line 144
    .line 145
    .line 146
    move-result-object v13

    .line 147
    invoke-virtual {v12, v13}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Lm1/B0;

    .line 148
    .line 149
    .line 150
    move-result-object v12

    .line 151
    invoke-virtual {v12}, Lm1/B0;->getLayoutPosition()I

    .line 152
    .line 153
    .line 154
    move-result v12

    .line 155
    iget-object v13, v0, Landroidx/leanback/widget/GridLayoutManager;->r:Landroidx/leanback/widget/t;

    .line 156
    .line 157
    invoke-virtual {v0}, Lm1/i0;->getChildCount()I

    .line 158
    .line 159
    .line 160
    move-result v14

    .line 161
    sub-int/2addr v14, v10

    .line 162
    invoke-virtual {v0, v14}, Lm1/i0;->getChildAt(I)Landroid/view/View;

    .line 163
    .line 164
    .line 165
    move-result-object v14

    .line 166
    invoke-virtual {v13, v14}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Lm1/B0;

    .line 167
    .line 168
    .line 169
    move-result-object v13

    .line 170
    invoke-virtual {v13}, Lm1/B0;->getLayoutPosition()I

    .line 171
    .line 172
    .line 173
    move-result v13

    .line 174
    if-lt v9, v12, :cond_f

    .line 175
    .line 176
    if-gt v9, v13, :cond_f

    .line 177
    .line 178
    sub-int v14, v9, v12

    .line 179
    .line 180
    sub-int v9, v13, v9

    .line 181
    .line 182
    if-gt v14, v9, :cond_d

    .line 183
    .line 184
    add-int/lit8 v9, v12, -0x1

    .line 185
    .line 186
    goto :goto_9

    .line 187
    :cond_d
    add-int/lit8 v9, v13, 0x1

    .line 188
    .line 189
    :goto_9
    if-gez v9, :cond_e

    .line 190
    .line 191
    add-int/lit8 v14, v8, -0x1

    .line 192
    .line 193
    if-ge v13, v14, :cond_e

    .line 194
    .line 195
    add-int/lit8 v9, v13, 0x1

    .line 196
    .line 197
    goto :goto_a

    .line 198
    :cond_e
    if-lt v9, v8, :cond_f

    .line 199
    .line 200
    if-lez v12, :cond_f

    .line 201
    .line 202
    add-int/lit8 v9, v12, -0x1

    .line 203
    .line 204
    :cond_f
    :goto_a
    if-ltz v9, :cond_12

    .line 205
    .line 206
    if-ge v9, v8, :cond_12

    .line 207
    .line 208
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 209
    .line 210
    .line 211
    move-result v7

    .line 212
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 213
    .line 214
    .line 215
    move-result v8

    .line 216
    iget-object v12, v0, Landroidx/leanback/widget/GridLayoutManager;->B:Lm1/p0;

    .line 217
    .line 218
    invoke-virtual {v12, v9}, Lm1/p0;->getViewForPosition(I)Landroid/view/View;

    .line 219
    .line 220
    .line 221
    move-result-object v9

    .line 222
    iget-object v12, v0, Landroidx/leanback/widget/GridLayoutManager;->c0:[I

    .line 223
    .line 224
    if-eqz v9, :cond_10

    .line 225
    .line 226
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 227
    .line 228
    .line 229
    move-result-object v13

    .line 230
    check-cast v13, Landroidx/leanback/widget/J;

    .line 231
    .line 232
    sget-object v14, Landroidx/leanback/widget/GridLayoutManager;->h0:Landroid/graphics/Rect;

    .line 233
    .line 234
    invoke-virtual {v0, v9, v14}, Lm1/i0;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 235
    .line 236
    .line 237
    iget v15, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 238
    .line 239
    move/from16 v16, v2

    .line 240
    .line 241
    iget v2, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 242
    .line 243
    add-int/2addr v15, v2

    .line 244
    iget v2, v14, Landroid/graphics/Rect;->left:I

    .line 245
    .line 246
    add-int/2addr v15, v2

    .line 247
    iget v2, v14, Landroid/graphics/Rect;->right:I

    .line 248
    .line 249
    add-int/2addr v15, v2

    .line 250
    iget v2, v13, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 251
    .line 252
    iget v3, v13, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 253
    .line 254
    add-int/2addr v2, v3

    .line 255
    iget v3, v14, Landroid/graphics/Rect;->top:I

    .line 256
    .line 257
    add-int/2addr v2, v3

    .line 258
    iget v3, v14, Landroid/graphics/Rect;->bottom:I

    .line 259
    .line 260
    add-int/2addr v2, v3

    .line 261
    invoke-virtual {v0}, Lm1/i0;->getPaddingLeft()I

    .line 262
    .line 263
    .line 264
    move-result v3

    .line 265
    invoke-virtual {v0}, Lm1/i0;->getPaddingRight()I

    .line 266
    .line 267
    .line 268
    move-result v14

    .line 269
    add-int/2addr v14, v3

    .line 270
    add-int/2addr v14, v15

    .line 271
    iget v3, v13, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 272
    .line 273
    invoke-static {v7, v14, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 274
    .line 275
    .line 276
    move-result v3

    .line 277
    invoke-virtual {v0}, Lm1/i0;->getPaddingTop()I

    .line 278
    .line 279
    .line 280
    move-result v7

    .line 281
    invoke-virtual {v0}, Lm1/i0;->getPaddingBottom()I

    .line 282
    .line 283
    .line 284
    move-result v14

    .line 285
    add-int/2addr v14, v7

    .line 286
    add-int/2addr v14, v2

    .line 287
    iget v2, v13, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 288
    .line 289
    invoke-static {v8, v14, v2}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 290
    .line 291
    .line 292
    move-result v2

    .line 293
    invoke-virtual {v9, v3, v2}, Landroid/view/View;->measure(II)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v0, v9}, Landroidx/leanback/widget/GridLayoutManager;->r(Landroid/view/View;)I

    .line 297
    .line 298
    .line 299
    move-result v2

    .line 300
    aput v2, v12, v16

    .line 301
    .line 302
    invoke-virtual {v0, v9}, Landroidx/leanback/widget/GridLayoutManager;->q(Landroid/view/View;)I

    .line 303
    .line 304
    .line 305
    move-result v2

    .line 306
    aput v2, v12, v10

    .line 307
    .line 308
    iget-object v2, v0, Landroidx/leanback/widget/GridLayoutManager;->B:Lm1/p0;

    .line 309
    .line 310
    invoke-virtual {v2, v9}, Lm1/p0;->recycleView(Landroid/view/View;)V

    .line 311
    .line 312
    .line 313
    goto :goto_b

    .line 314
    :cond_10
    move/from16 v16, v2

    .line 315
    .line 316
    :goto_b
    iget v2, v0, Landroidx/leanback/widget/GridLayoutManager;->s:I

    .line 317
    .line 318
    if-nez v2, :cond_11

    .line 319
    .line 320
    aget v2, v12, v10

    .line 321
    .line 322
    :goto_c
    move v7, v2

    .line 323
    goto :goto_d

    .line 324
    :cond_11
    aget v2, v12, v16

    .line 325
    .line 326
    goto :goto_c

    .line 327
    :cond_12
    move/from16 v16, v2

    .line 328
    .line 329
    :goto_d
    if-ltz v7, :cond_14

    .line 330
    .line 331
    move v11, v7

    .line 332
    goto :goto_e

    .line 333
    :cond_13
    move/from16 v16, v2

    .line 334
    .line 335
    :cond_14
    :goto_e
    if-gez v11, :cond_15

    .line 336
    .line 337
    move/from16 v11, v16

    .line 338
    .line 339
    :cond_15
    iget-object v2, v0, Landroidx/leanback/widget/GridLayoutManager;->N:[I

    .line 340
    .line 341
    aget v3, v2, v5

    .line 342
    .line 343
    if-eq v3, v11, :cond_16

    .line 344
    .line 345
    aput v11, v2, v5

    .line 346
    .line 347
    move v6, v10

    .line 348
    :cond_16
    add-int/lit8 v5, v5, 0x1

    .line 349
    .line 350
    move/from16 v2, v16

    .line 351
    .line 352
    goto/16 :goto_1

    .line 353
    .line 354
    :cond_17
    return v6

    .line 355
    :goto_f
    return v16
.end method

.method public final H(IZ)I
    .locals 11

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->W:Landroidx/leanback/widget/E;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return p1

    .line 6
    :cond_0
    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->F:I

    .line 7
    .line 8
    const/4 v2, -0x1

    .line 9
    if-eq v1, v2, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroidx/leanback/widget/E;->getRowIndex(I)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    move v0, v2

    .line 17
    :goto_0
    invoke-virtual {p0}, Lm1/i0;->getChildCount()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    const/4 v4, 0x0

    .line 22
    const/4 v5, 0x0

    .line 23
    move-object v6, v5

    .line 24
    :goto_1
    if-ge v4, v3, :cond_9

    .line 25
    .line 26
    if-eqz p1, :cond_9

    .line 27
    .line 28
    if-lez p1, :cond_2

    .line 29
    .line 30
    move v5, v4

    .line 31
    goto :goto_2

    .line 32
    :cond_2
    add-int/lit8 v5, v3, -0x1

    .line 33
    .line 34
    sub-int/2addr v5, v4

    .line 35
    :goto_2
    invoke-virtual {p0, v5}, Lm1/i0;->getChildAt(I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v7

    .line 39
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    .line 40
    .line 41
    .line 42
    move-result v8

    .line 43
    if-nez v8, :cond_8

    .line 44
    .line 45
    invoke-virtual {p0}, Lm1/i0;->hasFocus()Z

    .line 46
    .line 47
    .line 48
    move-result v8

    .line 49
    if-eqz v8, :cond_3

    .line 50
    .line 51
    invoke-virtual {v7}, Landroid/view/View;->hasFocusable()Z

    .line 52
    .line 53
    .line 54
    move-result v8

    .line 55
    if-eqz v8, :cond_8

    .line 56
    .line 57
    :cond_3
    invoke-virtual {p0, v5}, Lm1/i0;->getChildAt(I)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    invoke-static {v5}, Landroidx/leanback/widget/GridLayoutManager;->p(Landroid/view/View;)I

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    iget-object v8, p0, Landroidx/leanback/widget/GridLayoutManager;->W:Landroidx/leanback/widget/E;

    .line 66
    .line 67
    invoke-virtual {v8, v5}, Landroidx/leanback/widget/E;->getRowIndex(I)I

    .line 68
    .line 69
    .line 70
    move-result v8

    .line 71
    if-ne v0, v2, :cond_4

    .line 72
    .line 73
    move v1, v5

    .line 74
    move-object v6, v7

    .line 75
    move v0, v8

    .line 76
    goto :goto_4

    .line 77
    :cond_4
    if-ne v8, v0, :cond_8

    .line 78
    .line 79
    if-lez p1, :cond_5

    .line 80
    .line 81
    if-gt v5, v1, :cond_6

    .line 82
    .line 83
    :cond_5
    if-gez p1, :cond_8

    .line 84
    .line 85
    if-ge v5, v1, :cond_8

    .line 86
    .line 87
    :cond_6
    if-lez p1, :cond_7

    .line 88
    .line 89
    add-int/lit8 p1, p1, -0x1

    .line 90
    .line 91
    :goto_3
    move v1, v5

    .line 92
    move-object v6, v7

    .line 93
    goto :goto_4

    .line 94
    :cond_7
    add-int/lit8 p1, p1, 0x1

    .line 95
    .line 96
    goto :goto_3

    .line 97
    :cond_8
    :goto_4
    add-int/lit8 v4, v4, 0x1

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_9
    if-eqz v6, :cond_c

    .line 101
    .line 102
    if-eqz p2, :cond_b

    .line 103
    .line 104
    invoke-virtual {p0}, Lm1/i0;->hasFocus()Z

    .line 105
    .line 106
    .line 107
    move-result p2

    .line 108
    if-eqz p2, :cond_a

    .line 109
    .line 110
    iget p2, p0, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 111
    .line 112
    or-int/lit8 p2, p2, 0x20

    .line 113
    .line 114
    iput p2, p0, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 115
    .line 116
    invoke-virtual {v6}, Landroid/view/View;->requestFocus()Z

    .line 117
    .line 118
    .line 119
    iget p2, p0, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 120
    .line 121
    and-int/lit8 p2, p2, -0x21

    .line 122
    .line 123
    iput p2, p0, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 124
    .line 125
    :cond_a
    iput v1, p0, Landroidx/leanback/widget/GridLayoutManager;->F:I

    .line 126
    .line 127
    return p1

    .line 128
    :cond_b
    invoke-virtual {v6}, Landroid/view/View;->findFocus()Landroid/view/View;

    .line 129
    .line 130
    .line 131
    move-result-object v7

    .line 132
    const/4 v9, 0x0

    .line 133
    const/4 v10, 0x0

    .line 134
    const/4 v8, 0x1

    .line 135
    move-object v5, p0

    .line 136
    invoke-virtual/range {v5 .. v10}, Landroidx/leanback/widget/GridLayoutManager;->O(Landroid/view/View;Landroid/view/View;ZII)V

    .line 137
    .line 138
    .line 139
    :cond_c
    return p1
.end method

.method public final I()V
    .locals 4

    .line 1
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 2
    .line 3
    const v1, 0x10040

    .line 4
    .line 5
    .line 6
    and-int/2addr v1, v0

    .line 7
    const/high16 v2, 0x10000

    .line 8
    .line 9
    if-ne v1, v2, :cond_1

    .line 10
    .line 11
    iget-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->W:Landroidx/leanback/widget/E;

    .line 12
    .line 13
    iget v2, p0, Landroidx/leanback/widget/GridLayoutManager;->F:I

    .line 14
    .line 15
    const/high16 v3, 0x40000

    .line 16
    .line 17
    and-int/2addr v0, v3

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->b0:I

    .line 21
    .line 22
    neg-int v0, v0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->a0:I

    .line 25
    .line 26
    iget v3, p0, Landroidx/leanback/widget/GridLayoutManager;->b0:I

    .line 27
    .line 28
    add-int/2addr v0, v3

    .line 29
    :goto_0
    invoke-virtual {v1, v2, v0}, Landroidx/leanback/widget/E;->removeInvisibleItemsAtEnd(II)V

    .line 30
    .line 31
    .line 32
    :cond_1
    return-void
.end method

.method public final J()V
    .locals 4

    .line 1
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 2
    .line 3
    const v1, 0x10040

    .line 4
    .line 5
    .line 6
    and-int/2addr v1, v0

    .line 7
    const/high16 v2, 0x10000

    .line 8
    .line 9
    if-ne v1, v2, :cond_1

    .line 10
    .line 11
    iget-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->W:Landroidx/leanback/widget/E;

    .line 12
    .line 13
    iget v2, p0, Landroidx/leanback/widget/GridLayoutManager;->F:I

    .line 14
    .line 15
    const/high16 v3, 0x40000

    .line 16
    .line 17
    and-int/2addr v0, v3

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->a0:I

    .line 21
    .line 22
    iget v3, p0, Landroidx/leanback/widget/GridLayoutManager;->b0:I

    .line 23
    .line 24
    add-int/2addr v0, v3

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->b0:I

    .line 27
    .line 28
    neg-int v0, v0

    .line 29
    :goto_0
    invoke-virtual {v1, v2, v0}, Landroidx/leanback/widget/E;->removeInvisibleItemsAtFront(II)V

    .line 30
    .line 31
    .line 32
    :cond_1
    return-void
.end method

.method public final K(Lm1/p0;Lm1/x0;)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->u:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Landroidx/leanback/widget/GridLayoutManager;->B:Lm1/p0;

    .line 6
    .line 7
    iput-object p2, p0, Landroidx/leanback/widget/GridLayoutManager;->v:Lm1/x0;

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->w:I

    .line 11
    .line 12
    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->x:I

    .line 13
    .line 14
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 15
    .line 16
    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->u:I

    .line 17
    .line 18
    return-void
.end method

.method public final L(I)I
    .locals 6

    .line 1
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 2
    .line 3
    and-int/lit8 v1, v0, 0x40

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-nez v1, :cond_1

    .line 7
    .line 8
    and-int/lit8 v0, v0, 0x3

    .line 9
    .line 10
    if-eq v0, v2, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->Y:Landroidx/leanback/widget/C1;

    .line 13
    .line 14
    if-lez p1, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Landroidx/leanback/widget/C1;->mainAxis()Landroidx/leanback/widget/B1;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Landroidx/leanback/widget/B1;->isMaxUnknown()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    invoke-virtual {v0}, Landroidx/leanback/widget/C1;->mainAxis()Landroidx/leanback/widget/B1;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Landroidx/leanback/widget/B1;->getMaxScroll()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-le p1, v0, :cond_1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    if-gez p1, :cond_1

    .line 38
    .line 39
    invoke-virtual {v0}, Landroidx/leanback/widget/C1;->mainAxis()Landroidx/leanback/widget/B1;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v1}, Landroidx/leanback/widget/B1;->isMinUnknown()Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-nez v1, :cond_1

    .line 48
    .line 49
    invoke-virtual {v0}, Landroidx/leanback/widget/C1;->mainAxis()Landroidx/leanback/widget/B1;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0}, Landroidx/leanback/widget/B1;->getMinScroll()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-ge p1, v0, :cond_1

    .line 58
    .line 59
    :goto_0
    move p1, v0

    .line 60
    :cond_1
    const/4 v0, 0x0

    .line 61
    if-nez p1, :cond_2

    .line 62
    .line 63
    return v0

    .line 64
    :cond_2
    neg-int v1, p1

    .line 65
    invoke-virtual {p0}, Lm1/i0;->getChildCount()I

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    iget v4, p0, Landroidx/leanback/widget/GridLayoutManager;->s:I

    .line 70
    .line 71
    if-ne v4, v2, :cond_3

    .line 72
    .line 73
    move v4, v0

    .line 74
    :goto_1
    if-ge v4, v3, :cond_4

    .line 75
    .line 76
    invoke-virtual {p0, v4}, Lm1/i0;->getChildAt(I)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    invoke-virtual {v5, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 81
    .line 82
    .line 83
    add-int/lit8 v4, v4, 0x1

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_3
    move v4, v0

    .line 87
    :goto_2
    if-ge v4, v3, :cond_4

    .line 88
    .line 89
    invoke-virtual {p0, v4}, Lm1/i0;->getChildAt(I)Landroid/view/View;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    invoke-virtual {v5, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 94
    .line 95
    .line 96
    add-int/lit8 v4, v4, 0x1

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_4
    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 100
    .line 101
    and-int/lit8 v1, v1, 0x3

    .line 102
    .line 103
    if-ne v1, v2, :cond_5

    .line 104
    .line 105
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->U()V

    .line 106
    .line 107
    .line 108
    return p1

    .line 109
    :cond_5
    invoke-virtual {p0}, Lm1/i0;->getChildCount()I

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    iget v3, p0, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 114
    .line 115
    const/high16 v4, 0x40000

    .line 116
    .line 117
    and-int/2addr v3, v4

    .line 118
    if-eqz v3, :cond_6

    .line 119
    .line 120
    if-lez p1, :cond_7

    .line 121
    .line 122
    goto :goto_3

    .line 123
    :cond_6
    if-gez p1, :cond_7

    .line 124
    .line 125
    :goto_3
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->E()V

    .line 126
    .line 127
    .line 128
    goto :goto_4

    .line 129
    :cond_7
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->m()V

    .line 130
    .line 131
    .line 132
    :goto_4
    invoke-virtual {p0}, Lm1/i0;->getChildCount()I

    .line 133
    .line 134
    .line 135
    move-result v3

    .line 136
    if-le v3, v1, :cond_8

    .line 137
    .line 138
    move v1, v2

    .line 139
    goto :goto_5

    .line 140
    :cond_8
    move v1, v0

    .line 141
    :goto_5
    invoke-virtual {p0}, Lm1/i0;->getChildCount()I

    .line 142
    .line 143
    .line 144
    move-result v3

    .line 145
    iget v5, p0, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 146
    .line 147
    and-int/2addr v4, v5

    .line 148
    if-eqz v4, :cond_9

    .line 149
    .line 150
    if-lez p1, :cond_a

    .line 151
    .line 152
    goto :goto_6

    .line 153
    :cond_9
    if-gez p1, :cond_a

    .line 154
    .line 155
    :goto_6
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->I()V

    .line 156
    .line 157
    .line 158
    goto :goto_7

    .line 159
    :cond_a
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->J()V

    .line 160
    .line 161
    .line 162
    :goto_7
    invoke-virtual {p0}, Lm1/i0;->getChildCount()I

    .line 163
    .line 164
    .line 165
    move-result v4

    .line 166
    if-ge v4, v3, :cond_b

    .line 167
    .line 168
    goto :goto_8

    .line 169
    :cond_b
    move v2, v0

    .line 170
    :goto_8
    or-int v0, v1, v2

    .line 171
    .line 172
    if-eqz v0, :cond_c

    .line 173
    .line 174
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->T()V

    .line 175
    .line 176
    .line 177
    :cond_c
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->r:Landroidx/leanback/widget/t;

    .line 178
    .line 179
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->U()V

    .line 183
    .line 184
    .line 185
    return p1
.end method

.method public final M(I)I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    neg-int v1, p1

    .line 6
    invoke-virtual {p0}, Lm1/i0;->getChildCount()I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    iget v3, p0, Landroidx/leanback/widget/GridLayoutManager;->s:I

    .line 11
    .line 12
    if-nez v3, :cond_1

    .line 13
    .line 14
    :goto_0
    if-ge v0, v2, :cond_2

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lm1/i0;->getChildAt(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {v3, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 21
    .line 22
    .line 23
    add-int/lit8 v0, v0, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    :goto_1
    if-ge v0, v2, :cond_2

    .line 27
    .line 28
    invoke-virtual {p0, v0}, Lm1/i0;->getChildAt(I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {v3, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 33
    .line 34
    .line 35
    add-int/lit8 v0, v0, 0x1

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_2
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->K:I

    .line 39
    .line 40
    add-int/2addr v0, p1

    .line 41
    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->K:I

    .line 42
    .line 43
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->V()V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->r:Landroidx/leanback/widget/t;

    .line 47
    .line 48
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 49
    .line 50
    .line 51
    return p1
.end method

.method public final N(IZ)V
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lm1/i0;->findViewByPosition(I)Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v1

    .line 5
    invoke-virtual {p0}, Lm1/i0;->isSmoothScrolling()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v2, p0, Landroidx/leanback/widget/GridLayoutManager;->r:Landroidx/leanback/widget/t;

    .line 12
    .line 13
    invoke-virtual {v2}, Landroid/view/View;->isLayoutRequested()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-static {v1}, Landroidx/leanback/widget/GridLayoutManager;->p(Landroid/view/View;)I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-ne v2, p1, :cond_0

    .line 26
    .line 27
    iget p1, p0, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 28
    .line 29
    or-int/lit8 p1, p1, 0x20

    .line 30
    .line 31
    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 32
    .line 33
    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    const/4 v4, 0x0

    .line 38
    const/4 v5, 0x0

    .line 39
    move-object v0, p0

    .line 40
    move v3, p2

    .line 41
    invoke-virtual/range {v0 .. v5}, Landroidx/leanback/widget/GridLayoutManager;->O(Landroid/view/View;Landroid/view/View;ZII)V

    .line 42
    .line 43
    .line 44
    move-object p2, v0

    .line 45
    iget p1, p2, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 46
    .line 47
    and-int/lit8 p1, p1, -0x21

    .line 48
    .line 49
    iput p1, p2, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 50
    .line 51
    return-void

    .line 52
    :cond_0
    move v3, p2

    .line 53
    move-object p2, p0

    .line 54
    iget v2, p2, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 55
    .line 56
    and-int/lit16 v4, v2, 0x200

    .line 57
    .line 58
    const/high16 v5, -0x80000000

    .line 59
    .line 60
    if-eqz v4, :cond_1

    .line 61
    .line 62
    and-int/lit8 v2, v2, 0x40

    .line 63
    .line 64
    if-eqz v2, :cond_2

    .line 65
    .line 66
    :cond_1
    move-object v0, p2

    .line 67
    goto/16 :goto_0

    .line 68
    .line 69
    :cond_2
    if-eqz v3, :cond_5

    .line 70
    .line 71
    iget-object v2, p2, Landroidx/leanback/widget/GridLayoutManager;->r:Landroidx/leanback/widget/t;

    .line 72
    .line 73
    invoke-virtual {v2}, Landroid/view/View;->isLayoutRequested()Z

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    if-nez v2, :cond_5

    .line 78
    .line 79
    iput p1, p2, Landroidx/leanback/widget/GridLayoutManager;->F:I

    .line 80
    .line 81
    iput v5, p2, Landroidx/leanback/widget/GridLayoutManager;->I:I

    .line 82
    .line 83
    iget-object v0, p2, Landroidx/leanback/widget/GridLayoutManager;->W:Landroidx/leanback/widget/E;

    .line 84
    .line 85
    if-eqz v0, :cond_4

    .line 86
    .line 87
    new-instance v0, Landroidx/leanback/widget/H;

    .line 88
    .line 89
    invoke-direct {v0, p0}, Landroidx/leanback/widget/H;-><init>(Landroidx/leanback/widget/GridLayoutManager;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, p1}, Lm1/w0;->setTargetPosition(I)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/GridLayoutManager;->startSmoothScroll(Lm1/w0;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0}, Lm1/w0;->getTargetPosition()I

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    iget v0, p2, Landroidx/leanback/widget/GridLayoutManager;->F:I

    .line 103
    .line 104
    if-eq p1, v0, :cond_3

    .line 105
    .line 106
    iput p1, p2, Landroidx/leanback/widget/GridLayoutManager;->F:I

    .line 107
    .line 108
    :cond_3
    return-void

    .line 109
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    const-string v0, "GridLayoutManager:"

    .line 112
    .line 113
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    iget-object v0, p2, Landroidx/leanback/widget/GridLayoutManager;->r:Landroidx/leanback/widget/t;

    .line 117
    .line 118
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    const-string v0, "setSelectionSmooth should not be called before first layout pass"

    .line 130
    .line 131
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    .line 133
    .line 134
    return-void

    .line 135
    :cond_5
    if-eqz v0, :cond_7

    .line 136
    .line 137
    iget-object v0, p2, Landroidx/leanback/widget/GridLayoutManager;->G:Landroidx/leanback/widget/I;

    .line 138
    .line 139
    if-eqz v0, :cond_6

    .line 140
    .line 141
    const/4 v2, 0x1

    .line 142
    iput-boolean v2, v0, Landroidx/leanback/widget/I;->q:Z

    .line 143
    .line 144
    :cond_6
    iget-object v0, p2, Landroidx/leanback/widget/GridLayoutManager;->r:Landroidx/leanback/widget/t;

    .line 145
    .line 146
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    .line 147
    .line 148
    .line 149
    :cond_7
    iget-object v0, p2, Landroidx/leanback/widget/GridLayoutManager;->r:Landroidx/leanback/widget/t;

    .line 150
    .line 151
    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    if-nez v0, :cond_8

    .line 156
    .line 157
    if-eqz v1, :cond_8

    .line 158
    .line 159
    invoke-static {v1}, Landroidx/leanback/widget/GridLayoutManager;->p(Landroid/view/View;)I

    .line 160
    .line 161
    .line 162
    move-result v0

    .line 163
    if-ne v0, p1, :cond_8

    .line 164
    .line 165
    iget p1, p2, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 166
    .line 167
    or-int/lit8 p1, p1, 0x20

    .line 168
    .line 169
    iput p1, p2, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 170
    .line 171
    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    const/4 v4, 0x0

    .line 176
    const/4 v5, 0x0

    .line 177
    move-object v0, p2

    .line 178
    invoke-virtual/range {v0 .. v5}, Landroidx/leanback/widget/GridLayoutManager;->O(Landroid/view/View;Landroid/view/View;ZII)V

    .line 179
    .line 180
    .line 181
    iget p1, v0, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 182
    .line 183
    and-int/lit8 p1, p1, -0x21

    .line 184
    .line 185
    iput p1, v0, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 186
    .line 187
    return-void

    .line 188
    :cond_8
    move-object v0, p2

    .line 189
    iput p1, v0, Landroidx/leanback/widget/GridLayoutManager;->F:I

    .line 190
    .line 191
    iput v5, v0, Landroidx/leanback/widget/GridLayoutManager;->I:I

    .line 192
    .line 193
    iget p1, v0, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 194
    .line 195
    or-int/lit16 p1, p1, 0x100

    .line 196
    .line 197
    iput p1, v0, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 198
    .line 199
    invoke-virtual {p0}, Lm1/i0;->requestLayout()V

    .line 200
    .line 201
    .line 202
    return-void

    .line 203
    :goto_0
    iput p1, v0, Landroidx/leanback/widget/GridLayoutManager;->F:I

    .line 204
    .line 205
    iput v5, v0, Landroidx/leanback/widget/GridLayoutManager;->I:I

    .line 206
    .line 207
    return-void
.end method

.method public final O(Landroid/view/View;Landroid/view/View;ZII)V
    .locals 5

    .line 1
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x40

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_2

    .line 8
    :cond_0
    invoke-static {p1}, Landroidx/leanback/widget/GridLayoutManager;->p(Landroid/view/View;)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz p1, :cond_2

    .line 13
    .line 14
    if-nez p2, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Landroidx/leanback/widget/J;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    :cond_2
    :goto_0
    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->F:I

    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    const/4 v3, 0x0

    .line 30
    if-ne v0, v1, :cond_3

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_3
    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->F:I

    .line 34
    .line 35
    iput v3, p0, Landroidx/leanback/widget/GridLayoutManager;->I:I

    .line 36
    .line 37
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 38
    .line 39
    and-int/lit8 v0, v0, 0x3

    .line 40
    .line 41
    if-eq v0, v2, :cond_4

    .line 42
    .line 43
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->n()V

    .line 44
    .line 45
    .line 46
    :cond_4
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->r:Landroidx/leanback/widget/t;

    .line 47
    .line 48
    invoke-virtual {v0}, Landroidx/leanback/widget/t;->H()Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_5

    .line 53
    .line 54
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->r:Landroidx/leanback/widget/t;

    .line 55
    .line 56
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 57
    .line 58
    .line 59
    :cond_5
    :goto_1
    if-nez p1, :cond_6

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-nez v0, :cond_7

    .line 67
    .line 68
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->r:Landroidx/leanback/widget/t;

    .line 69
    .line 70
    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_7

    .line 75
    .line 76
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 77
    .line 78
    .line 79
    :cond_7
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 80
    .line 81
    const/high16 v1, 0x20000

    .line 82
    .line 83
    and-int/2addr v0, v1

    .line 84
    if-nez v0, :cond_8

    .line 85
    .line 86
    if-eqz p3, :cond_8

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_8
    sget-object v0, Landroidx/leanback/widget/GridLayoutManager;->i0:[I

    .line 90
    .line 91
    invoke-virtual {p0, p1, p2, v0}, Landroidx/leanback/widget/GridLayoutManager;->v(Landroid/view/View;Landroid/view/View;[I)Z

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    if-nez p1, :cond_a

    .line 96
    .line 97
    if-nez p4, :cond_a

    .line 98
    .line 99
    if-eqz p5, :cond_9

    .line 100
    .line 101
    goto :goto_3

    .line 102
    :cond_9
    :goto_2
    return-void

    .line 103
    :cond_a
    :goto_3
    aget p1, v0, v3

    .line 104
    .line 105
    add-int/2addr p1, p4

    .line 106
    aget p2, v0, v2

    .line 107
    .line 108
    add-int/2addr p2, p5

    .line 109
    iget p4, p0, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 110
    .line 111
    and-int/lit8 p4, p4, 0x3

    .line 112
    .line 113
    if-ne p4, v2, :cond_b

    .line 114
    .line 115
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/GridLayoutManager;->L(I)I

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0, p2}, Landroidx/leanback/widget/GridLayoutManager;->M(I)I

    .line 119
    .line 120
    .line 121
    return-void

    .line 122
    :cond_b
    iget p4, p0, Landroidx/leanback/widget/GridLayoutManager;->s:I

    .line 123
    .line 124
    if-nez p4, :cond_c

    .line 125
    .line 126
    goto :goto_4

    .line 127
    :cond_c
    move v4, p2

    .line 128
    move p2, p1

    .line 129
    move p1, v4

    .line 130
    :goto_4
    if-eqz p3, :cond_d

    .line 131
    .line 132
    iget-object p3, p0, Landroidx/leanback/widget/GridLayoutManager;->r:Landroidx/leanback/widget/t;

    .line 133
    .line 134
    invoke-virtual {p3, p1, p2}, Landroidx/leanback/widget/t;->smoothScrollBy(II)V

    .line 135
    .line 136
    .line 137
    return-void

    .line 138
    :cond_d
    iget-object p3, p0, Landroidx/leanback/widget/GridLayoutManager;->r:Landroidx/leanback/widget/t;

    .line 139
    .line 140
    invoke-virtual {p3, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->o()V

    .line 144
    .line 145
    .line 146
    return-void
.end method

.method public final P(I)V
    .locals 2

    .line 1
    if-gez p1, :cond_1

    .line 2
    .line 3
    const/4 v0, -0x2

    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 8
    .line 9
    const-string v1, "Invalid row height: "

    .line 10
    .line 11
    invoke-static {p1, v1}, LA/i;->f(ILjava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw v0

    .line 19
    :cond_1
    :goto_0
    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->L:I

    .line 20
    .line 21
    return-void
.end method

.method public final Q(IZ)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->F:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_1

    .line 4
    .line 5
    const/4 v0, -0x1

    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/GridLayoutManager;->N(IZ)V

    .line 10
    .line 11
    .line 12
    :cond_1
    :goto_0
    return-void
.end method

.method public final R()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lm1/i0;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-ge v1, v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Lm1/i0;->getChildAt(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    check-cast v3, Landroidx/leanback/widget/J;

    .line 17
    .line 18
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    iget-object v4, p0, Landroidx/leanback/widget/GridLayoutManager;->Z:Landroidx/leanback/widget/U;

    .line 22
    .line 23
    iget-object v5, v4, Landroidx/leanback/widget/U;->b:Landroidx/leanback/widget/T;

    .line 24
    .line 25
    invoke-virtual {v5, v2}, Landroidx/leanback/widget/T;->getAlignmentPosition(Landroid/view/View;)I

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    iput v5, v3, Landroidx/leanback/widget/J;->i:I

    .line 30
    .line 31
    iget-object v4, v4, Landroidx/leanback/widget/U;->a:Landroidx/leanback/widget/T;

    .line 32
    .line 33
    invoke-virtual {v4, v2}, Landroidx/leanback/widget/T;->getAlignmentPosition(Landroid/view/View;)I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    iput v2, v3, Landroidx/leanback/widget/J;->j:I

    .line 38
    .line 39
    add-int/lit8 v1, v1, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    return-void
.end method

.method public final S()V
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
    if-lez v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Lm1/i0;->getChildAt(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Landroidx/leanback/widget/J;

    .line 17
    .line 18
    iget-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->W:Landroidx/leanback/widget/E;

    .line 19
    .line 20
    invoke-virtual {v1}, Landroidx/leanback/widget/E;->getFirstVisibleIndex()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    invoke-virtual {v0}, Lm1/j0;->getViewLayoutPosition()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    sub-int/2addr v1, v0

    .line 29
    iput v1, p0, Landroidx/leanback/widget/GridLayoutManager;->w:I

    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    iput v1, p0, Landroidx/leanback/widget/GridLayoutManager;->w:I

    .line 33
    .line 34
    return-void
.end method

.method public final T()V
    .locals 4

    .line 1
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 2
    .line 3
    and-int/lit16 v0, v0, -0x401

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p0, v1}, Landroidx/leanback/widget/GridLayoutManager;->G(Z)Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    const/16 v3, 0x400

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    move v1, v3

    .line 15
    :cond_0
    or-int/2addr v0, v1

    .line 16
    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 17
    .line 18
    and-int/2addr v0, v3

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->r:Landroidx/leanback/widget/t;

    .line 22
    .line 23
    iget-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->f0:Landroidx/leanback/widget/F;

    .line 24
    .line 25
    invoke-static {v0, v1}, LM/p0;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    return-void
.end method

.method public final U()V
    .locals 10

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->v:Lm1/x0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lm1/x0;->getItemCount()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_8

    .line 10
    .line 11
    :cond_0
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 12
    .line 13
    const/high16 v1, 0x40000

    .line 14
    .line 15
    and-int/2addr v0, v1

    .line 16
    const/4 v1, 0x0

    .line 17
    const/4 v2, 0x1

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->W:Landroidx/leanback/widget/E;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroidx/leanback/widget/E;->getLastVisibleIndex()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    iget-object v3, p0, Landroidx/leanback/widget/GridLayoutManager;->v:Lm1/x0;

    .line 27
    .line 28
    invoke-virtual {v3}, Lm1/x0;->getItemCount()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    sub-int/2addr v3, v2

    .line 33
    iget-object v4, p0, Landroidx/leanback/widget/GridLayoutManager;->W:Landroidx/leanback/widget/E;

    .line 34
    .line 35
    invoke-virtual {v4}, Landroidx/leanback/widget/E;->getFirstVisibleIndex()I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    move v5, v4

    .line 40
    move v4, v1

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->W:Landroidx/leanback/widget/E;

    .line 43
    .line 44
    invoke-virtual {v0}, Landroidx/leanback/widget/E;->getFirstVisibleIndex()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    iget-object v3, p0, Landroidx/leanback/widget/GridLayoutManager;->W:Landroidx/leanback/widget/E;

    .line 49
    .line 50
    invoke-virtual {v3}, Landroidx/leanback/widget/E;->getLastVisibleIndex()I

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    iget-object v3, p0, Landroidx/leanback/widget/GridLayoutManager;->v:Lm1/x0;

    .line 55
    .line 56
    invoke-virtual {v3}, Lm1/x0;->getItemCount()I

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    sub-int/2addr v3, v2

    .line 61
    move v5, v4

    .line 62
    move v4, v3

    .line 63
    move v3, v1

    .line 64
    :goto_0
    if-ltz v0, :cond_a

    .line 65
    .line 66
    if-gez v5, :cond_2

    .line 67
    .line 68
    goto/16 :goto_8

    .line 69
    .line 70
    :cond_2
    if-ne v0, v3, :cond_3

    .line 71
    .line 72
    move v0, v2

    .line 73
    goto :goto_1

    .line 74
    :cond_3
    move v0, v1

    .line 75
    :goto_1
    if-ne v5, v4, :cond_4

    .line 76
    .line 77
    move v3, v2

    .line 78
    goto :goto_2

    .line 79
    :cond_4
    move v3, v1

    .line 80
    :goto_2
    iget-object v4, p0, Landroidx/leanback/widget/GridLayoutManager;->Y:Landroidx/leanback/widget/C1;

    .line 81
    .line 82
    if-nez v0, :cond_5

    .line 83
    .line 84
    invoke-virtual {v4}, Landroidx/leanback/widget/C1;->mainAxis()Landroidx/leanback/widget/B1;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    invoke-virtual {v5}, Landroidx/leanback/widget/B1;->isMaxUnknown()Z

    .line 89
    .line 90
    .line 91
    move-result v5

    .line 92
    if-eqz v5, :cond_5

    .line 93
    .line 94
    if-nez v3, :cond_5

    .line 95
    .line 96
    invoke-virtual {v4}, Landroidx/leanback/widget/C1;->mainAxis()Landroidx/leanback/widget/B1;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    invoke-virtual {v5}, Landroidx/leanback/widget/B1;->isMinUnknown()Z

    .line 101
    .line 102
    .line 103
    move-result v5

    .line 104
    if-eqz v5, :cond_5

    .line 105
    .line 106
    goto/16 :goto_8

    .line 107
    .line 108
    :cond_5
    sget-object v5, Landroidx/leanback/widget/GridLayoutManager;->i0:[I

    .line 109
    .line 110
    if-eqz v0, :cond_7

    .line 111
    .line 112
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->W:Landroidx/leanback/widget/E;

    .line 113
    .line 114
    invoke-virtual {v0, v2, v5}, Landroidx/leanback/widget/E;->findRowMax(Z[I)I

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    aget v6, v5, v2

    .line 119
    .line 120
    invoke-virtual {p0, v6}, Lm1/i0;->findViewByPosition(I)Landroid/view/View;

    .line 121
    .line 122
    .line 123
    move-result-object v6

    .line 124
    iget v7, p0, Landroidx/leanback/widget/GridLayoutManager;->s:I

    .line 125
    .line 126
    if-nez v7, :cond_6

    .line 127
    .line 128
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 129
    .line 130
    .line 131
    move-result-object v7

    .line 132
    check-cast v7, Landroidx/leanback/widget/J;

    .line 133
    .line 134
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    .line 138
    .line 139
    .line 140
    move-result v8

    .line 141
    iget v9, v7, Landroidx/leanback/widget/J;->e:I

    .line 142
    .line 143
    add-int/2addr v8, v9

    .line 144
    iget v7, v7, Landroidx/leanback/widget/J;->i:I

    .line 145
    .line 146
    :goto_3
    add-int/2addr v8, v7

    .line 147
    goto :goto_4

    .line 148
    :cond_6
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 149
    .line 150
    .line 151
    move-result-object v7

    .line 152
    check-cast v7, Landroidx/leanback/widget/J;

    .line 153
    .line 154
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    .line 158
    .line 159
    .line 160
    move-result v8

    .line 161
    iget v9, v7, Landroidx/leanback/widget/J;->f:I

    .line 162
    .line 163
    add-int/2addr v8, v9

    .line 164
    iget v7, v7, Landroidx/leanback/widget/J;->j:I

    .line 165
    .line 166
    goto :goto_3

    .line 167
    :goto_4
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 168
    .line 169
    .line 170
    move-result-object v6

    .line 171
    check-cast v6, Landroidx/leanback/widget/J;

    .line 172
    .line 173
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 174
    .line 175
    .line 176
    goto :goto_5

    .line 177
    :cond_7
    const v0, 0x7fffffff

    .line 178
    .line 179
    .line 180
    move v8, v0

    .line 181
    :goto_5
    if-eqz v3, :cond_9

    .line 182
    .line 183
    iget-object v3, p0, Landroidx/leanback/widget/GridLayoutManager;->W:Landroidx/leanback/widget/E;

    .line 184
    .line 185
    invoke-virtual {v3, v1, v5}, Landroidx/leanback/widget/E;->findRowMin(Z[I)I

    .line 186
    .line 187
    .line 188
    move-result v1

    .line 189
    aget v2, v5, v2

    .line 190
    .line 191
    invoke-virtual {p0, v2}, Lm1/i0;->findViewByPosition(I)Landroid/view/View;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    iget v3, p0, Landroidx/leanback/widget/GridLayoutManager;->s:I

    .line 196
    .line 197
    if-nez v3, :cond_8

    .line 198
    .line 199
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 200
    .line 201
    .line 202
    move-result-object v3

    .line 203
    check-cast v3, Landroidx/leanback/widget/J;

    .line 204
    .line 205
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    .line 209
    .line 210
    .line 211
    move-result v2

    .line 212
    iget v5, v3, Landroidx/leanback/widget/J;->e:I

    .line 213
    .line 214
    add-int/2addr v2, v5

    .line 215
    iget v3, v3, Landroidx/leanback/widget/J;->i:I

    .line 216
    .line 217
    :goto_6
    add-int/2addr v2, v3

    .line 218
    goto :goto_7

    .line 219
    :cond_8
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 220
    .line 221
    .line 222
    move-result-object v3

    .line 223
    check-cast v3, Landroidx/leanback/widget/J;

    .line 224
    .line 225
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    .line 229
    .line 230
    .line 231
    move-result v2

    .line 232
    iget v5, v3, Landroidx/leanback/widget/J;->f:I

    .line 233
    .line 234
    add-int/2addr v2, v5

    .line 235
    iget v3, v3, Landroidx/leanback/widget/J;->j:I

    .line 236
    .line 237
    goto :goto_6

    .line 238
    :cond_9
    const/high16 v1, -0x80000000

    .line 239
    .line 240
    move v2, v1

    .line 241
    :goto_7
    invoke-virtual {v4}, Landroidx/leanback/widget/C1;->mainAxis()Landroidx/leanback/widget/B1;

    .line 242
    .line 243
    .line 244
    move-result-object v3

    .line 245
    invoke-virtual {v3, v1, v0, v2, v8}, Landroidx/leanback/widget/B1;->updateMinMax(IIII)V

    .line 246
    .line 247
    .line 248
    :cond_a
    :goto_8
    return-void
.end method

.method public final V()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->Y:Landroidx/leanback/widget/C1;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/leanback/widget/C1;->secondAxis()Landroidx/leanback/widget/B1;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroidx/leanback/widget/B1;->getPaddingMin()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    iget v2, p0, Landroidx/leanback/widget/GridLayoutManager;->K:I

    .line 12
    .line 13
    sub-int/2addr v1, v2

    .line 14
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->x()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    add-int/2addr v2, v1

    .line 19
    invoke-virtual {v0, v1, v2, v1, v2}, Landroidx/leanback/widget/B1;->updateMinMax(IIII)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public canScrollHorizontally()Z
    .locals 2

    .line 1
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->s:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->U:I

    .line 7
    .line 8
    if-le v0, v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    return v0

    .line 13
    :cond_1
    :goto_0
    return v1
.end method

.method public canScrollVertically()Z
    .locals 2

    .line 1
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->s:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_1

    .line 5
    .line 6
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->U:I

    .line 7
    .line 8
    if-le v0, v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    return v0

    .line 13
    :cond_1
    :goto_0
    return v1
.end method

.method public checkLayoutParams(Lm1/j0;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Landroidx/leanback/widget/J;

    .line 2
    .line 3
    return p1
.end method

.method public collectAdjacentPrefetchPositions(IILm1/x0;Lm1/g0;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0, v0, p3}, Landroidx/leanback/widget/GridLayoutManager;->K(Lm1/p0;Lm1/x0;)V

    .line 3
    .line 4
    .line 5
    iget p3, p0, Landroidx/leanback/widget/GridLayoutManager;->s:I

    .line 6
    .line 7
    if-nez p3, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move p1, p2

    .line 11
    :goto_0
    invoke-virtual {p0}, Lm1/i0;->getChildCount()I

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    if-eqz p2, :cond_3

    .line 16
    .line 17
    if-nez p1, :cond_1

    .line 18
    .line 19
    goto :goto_2

    .line 20
    :cond_1
    if-gez p1, :cond_2

    .line 21
    .line 22
    iget p2, p0, Landroidx/leanback/widget/GridLayoutManager;->b0:I

    .line 23
    .line 24
    neg-int p2, p2

    .line 25
    goto :goto_1

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    goto :goto_3

    .line 28
    :cond_2
    iget p2, p0, Landroidx/leanback/widget/GridLayoutManager;->a0:I

    .line 29
    .line 30
    iget p3, p0, Landroidx/leanback/widget/GridLayoutManager;->b0:I

    .line 31
    .line 32
    add-int/2addr p2, p3

    .line 33
    :goto_1
    iget-object p3, p0, Landroidx/leanback/widget/GridLayoutManager;->W:Landroidx/leanback/widget/E;

    .line 34
    .line 35
    invoke-virtual {p3, p2, p1, p4}, Landroidx/leanback/widget/E;->collectAdjacentPrefetchPositions(IILm1/g0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->C()V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_3
    :goto_2
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->C()V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :goto_3
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->C()V

    .line 47
    .line 48
    .line 49
    throw p1
.end method

.method public collectInitialPrefetchPositions(ILm1/g0;)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->r:Landroidx/leanback/widget/t;

    .line 2
    .line 3
    iget v0, v0, Landroidx/leanback/widget/t;->Y0:I

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->F:I

    .line 10
    .line 11
    add-int/lit8 v2, v0, -0x1

    .line 12
    .line 13
    div-int/lit8 v2, v2, 0x2

    .line 14
    .line 15
    sub-int/2addr v1, v2

    .line 16
    sub-int v2, p1, v0

    .line 17
    .line 18
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    move v3, v1

    .line 28
    :goto_0
    if-ge v3, p1, :cond_0

    .line 29
    .line 30
    add-int v4, v1, v0

    .line 31
    .line 32
    if-ge v3, v4, :cond_0

    .line 33
    .line 34
    move-object v4, p2

    .line 35
    check-cast v4, Lm1/w;

    .line 36
    .line 37
    invoke-virtual {v4, v3, v2}, Lm1/w;->addPosition(II)V

    .line 38
    .line 39
    .line 40
    add-int/lit8 v3, v3, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    return-void
.end method

.method public generateDefaultLayoutParams()Lm1/j0;
    .locals 2

    .line 1
    new-instance v0, Landroidx/leanback/widget/J;

    .line 2
    .line 3
    const/4 v1, -0x2

    .line 4
    invoke-direct {v0, v1, v1}, Lm1/j0;-><init>(II)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Lm1/j0;
    .locals 1

    .line 1
    new-instance v0, Landroidx/leanback/widget/J;

    .line 2
    invoke-direct {v0, p1, p2}, Lm1/j0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lm1/j0;
    .locals 1

    .line 3
    instance-of v0, p1, Landroidx/leanback/widget/J;

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Landroidx/leanback/widget/J;

    check-cast p1, Landroidx/leanback/widget/J;

    .line 5
    invoke-direct {v0, p1}, Lm1/j0;-><init>(Lm1/j0;)V

    return-object v0

    .line 6
    :cond_0
    instance-of v0, p1, Lm1/j0;

    if-eqz v0, :cond_1

    .line 7
    new-instance v0, Landroidx/leanback/widget/J;

    check-cast p1, Lm1/j0;

    .line 8
    invoke-direct {v0, p1}, Lm1/j0;-><init>(Lm1/j0;)V

    return-object v0

    .line 9
    :cond_1
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_2

    .line 10
    new-instance v0, Landroidx/leanback/widget/J;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 11
    invoke-direct {v0, p1}, Lm1/j0;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 12
    :cond_2
    new-instance v0, Landroidx/leanback/widget/J;

    .line 13
    invoke-direct {v0, p1}, Lm1/j0;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getColumnCountForAccessibility(Lm1/p0;Lm1/x0;)I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->s:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->W:Landroidx/leanback/widget/E;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/leanback/widget/E;->getNumRows()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1

    .line 15
    :cond_0
    invoke-super {p0, p1, p2}, Lm1/i0;->getColumnCountForAccessibility(Lm1/p0;Lm1/x0;)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    return p1
.end method

.method public getDecoratedBottom(Landroid/view/View;)I
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lm1/i0;->getDecoratedBottom(Landroid/view/View;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Landroidx/leanback/widget/J;

    .line 10
    .line 11
    iget p1, p1, Landroidx/leanback/widget/J;->h:I

    .line 12
    .line 13
    sub-int/2addr v0, p1

    .line 14
    return v0
.end method

.method public getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lm1/i0;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Landroidx/leanback/widget/J;

    .line 9
    .line 10
    iget v0, p2, Landroid/graphics/Rect;->left:I

    .line 11
    .line 12
    iget v1, p1, Landroidx/leanback/widget/J;->e:I

    .line 13
    .line 14
    add-int/2addr v0, v1

    .line 15
    iput v0, p2, Landroid/graphics/Rect;->left:I

    .line 16
    .line 17
    iget v0, p2, Landroid/graphics/Rect;->top:I

    .line 18
    .line 19
    iget v1, p1, Landroidx/leanback/widget/J;->f:I

    .line 20
    .line 21
    add-int/2addr v0, v1

    .line 22
    iput v0, p2, Landroid/graphics/Rect;->top:I

    .line 23
    .line 24
    iget v0, p2, Landroid/graphics/Rect;->right:I

    .line 25
    .line 26
    iget v1, p1, Landroidx/leanback/widget/J;->g:I

    .line 27
    .line 28
    sub-int/2addr v0, v1

    .line 29
    iput v0, p2, Landroid/graphics/Rect;->right:I

    .line 30
    .line 31
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    .line 32
    .line 33
    iget p1, p1, Landroidx/leanback/widget/J;->h:I

    .line 34
    .line 35
    sub-int/2addr v0, p1

    .line 36
    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    .line 37
    .line 38
    return-void
.end method

.method public getDecoratedLeft(Landroid/view/View;)I
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lm1/i0;->getDecoratedLeft(Landroid/view/View;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Landroidx/leanback/widget/J;

    .line 10
    .line 11
    iget p1, p1, Landroidx/leanback/widget/J;->e:I

    .line 12
    .line 13
    add-int/2addr v0, p1

    .line 14
    return v0
.end method

.method public getDecoratedRight(Landroid/view/View;)I
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lm1/i0;->getDecoratedRight(Landroid/view/View;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Landroidx/leanback/widget/J;

    .line 10
    .line 11
    iget p1, p1, Landroidx/leanback/widget/J;->g:I

    .line 12
    .line 13
    sub-int/2addr v0, p1

    .line 14
    return v0
.end method

.method public getDecoratedTop(Landroid/view/View;)I
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lm1/i0;->getDecoratedTop(Landroid/view/View;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Landroidx/leanback/widget/J;

    .line 10
    .line 11
    iget p1, p1, Landroidx/leanback/widget/J;->f:I

    .line 12
    .line 13
    add-int/2addr v0, p1

    .line 14
    return v0
.end method

.method public getRowCountForAccessibility(Lm1/p0;Lm1/x0;)I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->s:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->W:Landroidx/leanback/widget/E;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/leanback/widget/E;->getNumRows()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1

    .line 14
    :cond_0
    invoke-super {p0, p1, p2}, Lm1/i0;->getRowCountForAccessibility(Lm1/p0;Lm1/x0;)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    return p1
.end method

.method public final m()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->W:Landroidx/leanback/widget/E;

    .line 2
    .line 3
    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 4
    .line 5
    const/high16 v2, 0x40000

    .line 6
    .line 7
    and-int/2addr v1, v2

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->b0:I

    .line 11
    .line 12
    neg-int v1, v1

    .line 13
    iget v2, p0, Landroidx/leanback/widget/GridLayoutManager;->x:I

    .line 14
    .line 15
    sub-int/2addr v1, v2

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->a0:I

    .line 18
    .line 19
    iget v2, p0, Landroidx/leanback/widget/GridLayoutManager;->b0:I

    .line 20
    .line 21
    add-int/2addr v1, v2

    .line 22
    iget v2, p0, Landroidx/leanback/widget/GridLayoutManager;->x:I

    .line 23
    .line 24
    add-int/2addr v1, v2

    .line 25
    :goto_0
    invoke-virtual {v0, v1}, Landroidx/leanback/widget/E;->appendVisibleItems(I)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final n()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/leanback/widget/GridLayoutManager;->D:Landroidx/leanback/widget/t0;

    .line 4
    .line 5
    if-nez v1, :cond_1

    .line 6
    .line 7
    iget-object v1, v0, Landroidx/leanback/widget/GridLayoutManager;->E:Ljava/util/ArrayList;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-lez v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    return-void

    .line 19
    :cond_1
    :goto_0
    iget v1, v0, Landroidx/leanback/widget/GridLayoutManager;->F:I

    .line 20
    .line 21
    const/4 v2, -0x1

    .line 22
    const/4 v3, 0x0

    .line 23
    if-ne v1, v2, :cond_2

    .line 24
    .line 25
    move-object v6, v3

    .line 26
    goto :goto_1

    .line 27
    :cond_2
    invoke-virtual {v0, v1}, Lm1/i0;->findViewByPosition(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    move-object v6, v1

    .line 32
    :goto_1
    const/4 v1, 0x0

    .line 33
    const/4 v10, 0x1

    .line 34
    if-eqz v6, :cond_6

    .line 35
    .line 36
    iget-object v2, v0, Landroidx/leanback/widget/GridLayoutManager;->r:Landroidx/leanback/widget/t;

    .line 37
    .line 38
    invoke-virtual {v2, v6}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Lm1/B0;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    iget-object v3, v0, Landroidx/leanback/widget/GridLayoutManager;->D:Landroidx/leanback/widget/t0;

    .line 43
    .line 44
    if-eqz v3, :cond_4

    .line 45
    .line 46
    iget-object v5, v0, Landroidx/leanback/widget/GridLayoutManager;->r:Landroidx/leanback/widget/t;

    .line 47
    .line 48
    iget v7, v0, Landroidx/leanback/widget/GridLayoutManager;->F:I

    .line 49
    .line 50
    if-nez v2, :cond_3

    .line 51
    .line 52
    const-wide/16 v8, -0x1

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_3
    invoke-virtual {v2}, Lm1/B0;->getItemId()J

    .line 56
    .line 57
    .line 58
    move-result-wide v8

    .line 59
    :goto_2
    move-object v4, v3

    .line 60
    check-cast v4, Landroidx/leanback/widget/g0;

    .line 61
    .line 62
    invoke-virtual/range {v4 .. v9}, Landroidx/leanback/widget/g0;->onChildSelected(Landroid/view/ViewGroup;Landroid/view/View;IJ)V

    .line 63
    .line 64
    .line 65
    :cond_4
    iget-object v3, v0, Landroidx/leanback/widget/GridLayoutManager;->r:Landroidx/leanback/widget/t;

    .line 66
    .line 67
    iget v4, v0, Landroidx/leanback/widget/GridLayoutManager;->F:I

    .line 68
    .line 69
    iget-object v5, v0, Landroidx/leanback/widget/GridLayoutManager;->E:Ljava/util/ArrayList;

    .line 70
    .line 71
    if-nez v5, :cond_5

    .line 72
    .line 73
    goto :goto_5

    .line 74
    :cond_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 75
    .line 76
    .line 77
    move-result v5

    .line 78
    sub-int/2addr v5, v10

    .line 79
    :goto_3
    if-ltz v5, :cond_9

    .line 80
    .line 81
    iget-object v6, v0, Landroidx/leanback/widget/GridLayoutManager;->E:Ljava/util/ArrayList;

    .line 82
    .line 83
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    check-cast v6, Landroidx/leanback/widget/u0;

    .line 88
    .line 89
    invoke-virtual {v6, v3, v2, v4, v1}, Landroidx/leanback/widget/u0;->onChildViewHolderSelected(Landroidx/recyclerview/widget/RecyclerView;Lm1/B0;II)V

    .line 90
    .line 91
    .line 92
    add-int/lit8 v5, v5, -0x1

    .line 93
    .line 94
    goto :goto_3

    .line 95
    :cond_6
    iget-object v4, v0, Landroidx/leanback/widget/GridLayoutManager;->D:Landroidx/leanback/widget/t0;

    .line 96
    .line 97
    if-eqz v4, :cond_7

    .line 98
    .line 99
    iget-object v12, v0, Landroidx/leanback/widget/GridLayoutManager;->r:Landroidx/leanback/widget/t;

    .line 100
    .line 101
    move-object v11, v4

    .line 102
    check-cast v11, Landroidx/leanback/widget/g0;

    .line 103
    .line 104
    const/4 v13, 0x0

    .line 105
    const/4 v14, -0x1

    .line 106
    const-wide/16 v15, -0x1

    .line 107
    .line 108
    invoke-virtual/range {v11 .. v16}, Landroidx/leanback/widget/g0;->onChildSelected(Landroid/view/ViewGroup;Landroid/view/View;IJ)V

    .line 109
    .line 110
    .line 111
    :cond_7
    iget-object v4, v0, Landroidx/leanback/widget/GridLayoutManager;->r:Landroidx/leanback/widget/t;

    .line 112
    .line 113
    iget-object v5, v0, Landroidx/leanback/widget/GridLayoutManager;->E:Ljava/util/ArrayList;

    .line 114
    .line 115
    if-nez v5, :cond_8

    .line 116
    .line 117
    goto :goto_5

    .line 118
    :cond_8
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 119
    .line 120
    .line 121
    move-result v5

    .line 122
    sub-int/2addr v5, v10

    .line 123
    :goto_4
    if-ltz v5, :cond_9

    .line 124
    .line 125
    iget-object v6, v0, Landroidx/leanback/widget/GridLayoutManager;->E:Ljava/util/ArrayList;

    .line 126
    .line 127
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v6

    .line 131
    check-cast v6, Landroidx/leanback/widget/u0;

    .line 132
    .line 133
    invoke-virtual {v6, v4, v3, v2, v1}, Landroidx/leanback/widget/u0;->onChildViewHolderSelected(Landroidx/recyclerview/widget/RecyclerView;Lm1/B0;II)V

    .line 134
    .line 135
    .line 136
    add-int/lit8 v5, v5, -0x1

    .line 137
    .line 138
    goto :goto_4

    .line 139
    :cond_9
    :goto_5
    iget v2, v0, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 140
    .line 141
    and-int/lit8 v2, v2, 0x3

    .line 142
    .line 143
    if-eq v2, v10, :cond_b

    .line 144
    .line 145
    iget-object v2, v0, Landroidx/leanback/widget/GridLayoutManager;->r:Landroidx/leanback/widget/t;

    .line 146
    .line 147
    invoke-virtual {v2}, Landroid/view/View;->isLayoutRequested()Z

    .line 148
    .line 149
    .line 150
    move-result v2

    .line 151
    if-nez v2, :cond_b

    .line 152
    .line 153
    invoke-virtual {v0}, Lm1/i0;->getChildCount()I

    .line 154
    .line 155
    .line 156
    move-result v2

    .line 157
    :goto_6
    if-ge v1, v2, :cond_b

    .line 158
    .line 159
    invoke-virtual {v0, v1}, Lm1/i0;->getChildAt(I)Landroid/view/View;

    .line 160
    .line 161
    .line 162
    move-result-object v3

    .line 163
    invoke-virtual {v3}, Landroid/view/View;->isLayoutRequested()Z

    .line 164
    .line 165
    .line 166
    move-result v3

    .line 167
    if-eqz v3, :cond_a

    .line 168
    .line 169
    iget-object v1, v0, Landroidx/leanback/widget/GridLayoutManager;->r:Landroidx/leanback/widget/t;

    .line 170
    .line 171
    iget-object v2, v0, Landroidx/leanback/widget/GridLayoutManager;->f0:Landroidx/leanback/widget/F;

    .line 172
    .line 173
    invoke-static {v1, v2}, LM/p0;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 174
    .line 175
    .line 176
    return-void

    .line 177
    :cond_a
    add-int/lit8 v1, v1, 0x1

    .line 178
    .line 179
    goto :goto_6

    .line 180
    :cond_b
    return-void
.end method

.method public final o()V
    .locals 10

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->E:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-lez v0, :cond_5

    .line 10
    .line 11
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->F:I

    .line 12
    .line 13
    const/4 v1, -0x1

    .line 14
    const/4 v2, 0x0

    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    move-object v0, v2

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p0, v0}, Lm1/i0;->findViewByPosition(I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    :goto_0
    const/4 v3, 0x0

    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    iget-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->r:Landroidx/leanback/widget/t;

    .line 27
    .line 28
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Lm1/B0;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->r:Landroidx/leanback/widget/t;

    .line 33
    .line 34
    iget v2, p0, Landroidx/leanback/widget/GridLayoutManager;->F:I

    .line 35
    .line 36
    iget-object v4, p0, Landroidx/leanback/widget/GridLayoutManager;->E:Ljava/util/ArrayList;

    .line 37
    .line 38
    if-nez v4, :cond_1

    .line 39
    .line 40
    goto :goto_3

    .line 41
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    add-int/lit8 v4, v4, -0x1

    .line 46
    .line 47
    :goto_1
    if-ltz v4, :cond_5

    .line 48
    .line 49
    iget-object v5, p0, Landroidx/leanback/widget/GridLayoutManager;->E:Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    check-cast v5, Landroidx/leanback/widget/u0;

    .line 56
    .line 57
    invoke-virtual {v5, v1, v0, v2, v3}, Landroidx/leanback/widget/u0;->onChildViewHolderSelectedAndPositioned(Landroidx/recyclerview/widget/RecyclerView;Lm1/B0;II)V

    .line 58
    .line 59
    .line 60
    add-int/lit8 v4, v4, -0x1

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_2
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->D:Landroidx/leanback/widget/t0;

    .line 64
    .line 65
    if-eqz v0, :cond_3

    .line 66
    .line 67
    iget-object v5, p0, Landroidx/leanback/widget/GridLayoutManager;->r:Landroidx/leanback/widget/t;

    .line 68
    .line 69
    move-object v4, v0

    .line 70
    check-cast v4, Landroidx/leanback/widget/g0;

    .line 71
    .line 72
    const/4 v6, 0x0

    .line 73
    const/4 v7, -0x1

    .line 74
    const-wide/16 v8, -0x1

    .line 75
    .line 76
    invoke-virtual/range {v4 .. v9}, Landroidx/leanback/widget/g0;->onChildSelected(Landroid/view/ViewGroup;Landroid/view/View;IJ)V

    .line 77
    .line 78
    .line 79
    :cond_3
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->r:Landroidx/leanback/widget/t;

    .line 80
    .line 81
    iget-object v4, p0, Landroidx/leanback/widget/GridLayoutManager;->E:Ljava/util/ArrayList;

    .line 82
    .line 83
    if-nez v4, :cond_4

    .line 84
    .line 85
    goto :goto_3

    .line 86
    :cond_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 87
    .line 88
    .line 89
    move-result v4

    .line 90
    add-int/lit8 v4, v4, -0x1

    .line 91
    .line 92
    :goto_2
    if-ltz v4, :cond_5

    .line 93
    .line 94
    iget-object v5, p0, Landroidx/leanback/widget/GridLayoutManager;->E:Ljava/util/ArrayList;

    .line 95
    .line 96
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    check-cast v5, Landroidx/leanback/widget/u0;

    .line 101
    .line 102
    invoke-virtual {v5, v0, v2, v1, v3}, Landroidx/leanback/widget/u0;->onChildViewHolderSelectedAndPositioned(Landroidx/recyclerview/widget/RecyclerView;Lm1/B0;II)V

    .line 103
    .line 104
    .line 105
    add-int/lit8 v4, v4, -0x1

    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_5
    :goto_3
    return-void
.end method

.method public onAdapterChanged(Lm1/V;Lm1/V;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iput-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->W:Landroidx/leanback/widget/E;

    .line 5
    .line 6
    iput-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->N:[I

    .line 7
    .line 8
    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 9
    .line 10
    and-int/lit16 v1, v1, -0x401

    .line 11
    .line 12
    iput v1, p0, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 13
    .line 14
    const/4 v1, -0x1

    .line 15
    iput v1, p0, Landroidx/leanback/widget/GridLayoutManager;->F:I

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    iput v1, p0, Landroidx/leanback/widget/GridLayoutManager;->I:I

    .line 19
    .line 20
    iget-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->d0:LG2/b;

    .line 21
    .line 22
    iget-object v1, v1, LG2/b;->c:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v1, Lp/p;

    .line 25
    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    invoke-virtual {v1}, Lp/p;->evictAll()V

    .line 29
    .line 30
    .line 31
    :cond_0
    instance-of v1, p2, Landroidx/leanback/widget/d0;

    .line 32
    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    move-object v0, p2

    .line 36
    check-cast v0, Landroidx/leanback/widget/d0;

    .line 37
    .line 38
    iput-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->e0:Landroidx/leanback/widget/d0;

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    iput-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->e0:Landroidx/leanback/widget/d0;

    .line 42
    .line 43
    :goto_0
    invoke-super {p0, p1, p2}, Lm1/i0;->onAdapterChanged(Lm1/V;Lm1/V;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public onAddFocusables(Landroidx/recyclerview/widget/RecyclerView;Ljava/util/ArrayList;II)Z
    .locals 18
    .param p2    # Ljava/util/ArrayList;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "ConcreteCollection"
            }
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)Z"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    .line 7
    move/from16 v3, p4

    .line 8
    .line 9
    iget v4, v0, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 10
    .line 11
    const v5, 0x8000

    .line 12
    .line 13
    .line 14
    and-int/2addr v4, v5

    .line 15
    const/4 v5, 0x1

    .line 16
    if-eqz v4, :cond_1

    .line 17
    .line 18
    :cond_0
    :goto_0
    move/from16 v17, v5

    .line 19
    .line 20
    goto/16 :goto_f

    .line 21
    .line 22
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->hasFocus()Z

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    if-eqz v4, :cond_1e

    .line 27
    .line 28
    iget-object v4, v0, Landroidx/leanback/widget/GridLayoutManager;->H:Landroidx/leanback/widget/K;

    .line 29
    .line 30
    if-eqz v4, :cond_2

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    invoke-virtual {v0, v2}, Landroidx/leanback/widget/GridLayoutManager;->s(I)I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->findFocus()Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v7

    .line 41
    const/4 v8, -0x1

    .line 42
    if-eqz v7, :cond_4

    .line 43
    .line 44
    iget-object v9, v0, Landroidx/leanback/widget/GridLayoutManager;->r:Landroidx/leanback/widget/t;

    .line 45
    .line 46
    if-eqz v9, :cond_4

    .line 47
    .line 48
    if-eq v7, v9, :cond_4

    .line 49
    .line 50
    invoke-virtual {v0, v7}, Lm1/i0;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object v7

    .line 54
    if-eqz v7, :cond_4

    .line 55
    .line 56
    invoke-virtual {v0}, Lm1/i0;->getChildCount()I

    .line 57
    .line 58
    .line 59
    move-result v9

    .line 60
    const/4 v10, 0x0

    .line 61
    :goto_1
    if-ge v10, v9, :cond_4

    .line 62
    .line 63
    invoke-virtual {v0, v10}, Lm1/i0;->getChildAt(I)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object v11

    .line 67
    if-ne v11, v7, :cond_3

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_3
    add-int/lit8 v10, v10, 0x1

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_4
    move v10, v8

    .line 74
    :goto_2
    invoke-virtual {v0, v10}, Lm1/i0;->getChildAt(I)Landroid/view/View;

    .line 75
    .line 76
    .line 77
    move-result-object v7

    .line 78
    invoke-static {v7}, Landroidx/leanback/widget/GridLayoutManager;->p(Landroid/view/View;)I

    .line 79
    .line 80
    .line 81
    move-result v7

    .line 82
    if-ne v7, v8, :cond_5

    .line 83
    .line 84
    const/4 v9, 0x0

    .line 85
    goto :goto_3

    .line 86
    :cond_5
    invoke-virtual {v0, v7}, Lm1/i0;->findViewByPosition(I)Landroid/view/View;

    .line 87
    .line 88
    .line 89
    move-result-object v9

    .line 90
    :goto_3
    if-eqz v9, :cond_6

    .line 91
    .line 92
    invoke-virtual {v9, v1, v2, v3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 93
    .line 94
    .line 95
    :cond_6
    iget-object v11, v0, Landroidx/leanback/widget/GridLayoutManager;->W:Landroidx/leanback/widget/E;

    .line 96
    .line 97
    if-eqz v11, :cond_0

    .line 98
    .line 99
    invoke-virtual {v0}, Lm1/i0;->getChildCount()I

    .line 100
    .line 101
    .line 102
    move-result v11

    .line 103
    if-nez v11, :cond_7

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_7
    const/4 v11, 0x2

    .line 107
    const/4 v12, 0x3

    .line 108
    if-eq v4, v12, :cond_8

    .line 109
    .line 110
    if-ne v4, v11, :cond_9

    .line 111
    .line 112
    :cond_8
    iget-object v13, v0, Landroidx/leanback/widget/GridLayoutManager;->W:Landroidx/leanback/widget/E;

    .line 113
    .line 114
    invoke-virtual {v13}, Landroidx/leanback/widget/E;->getNumRows()I

    .line 115
    .line 116
    .line 117
    move-result v13

    .line 118
    if-gt v13, v5, :cond_9

    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_9
    iget-object v13, v0, Landroidx/leanback/widget/GridLayoutManager;->W:Landroidx/leanback/widget/E;

    .line 122
    .line 123
    if-eqz v13, :cond_a

    .line 124
    .line 125
    if-eqz v9, :cond_a

    .line 126
    .line 127
    invoke-virtual {v13, v7}, Landroidx/leanback/widget/E;->getLocation(I)Landroidx/leanback/widget/C;

    .line 128
    .line 129
    .line 130
    move-result-object v13

    .line 131
    iget v13, v13, Landroidx/leanback/widget/C;->a:I

    .line 132
    .line 133
    goto :goto_4

    .line 134
    :cond_a
    move v13, v8

    .line 135
    :goto_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 136
    .line 137
    .line 138
    move-result v14

    .line 139
    if-eq v4, v5, :cond_c

    .line 140
    .line 141
    if-ne v4, v12, :cond_b

    .line 142
    .line 143
    goto :goto_5

    .line 144
    :cond_b
    move v15, v8

    .line 145
    goto :goto_6

    .line 146
    :cond_c
    :goto_5
    move v15, v5

    .line 147
    :goto_6
    if-lez v15, :cond_d

    .line 148
    .line 149
    invoke-virtual {v0}, Lm1/i0;->getChildCount()I

    .line 150
    .line 151
    .line 152
    move-result v16

    .line 153
    add-int/lit8 v16, v16, -0x1

    .line 154
    .line 155
    move/from16 v6, v16

    .line 156
    .line 157
    goto :goto_7

    .line 158
    :cond_d
    const/4 v6, 0x0

    .line 159
    :goto_7
    if-ne v10, v8, :cond_f

    .line 160
    .line 161
    if-lez v15, :cond_e

    .line 162
    .line 163
    const/16 v16, 0x0

    .line 164
    .line 165
    goto :goto_8

    .line 166
    :cond_e
    invoke-virtual {v0}, Lm1/i0;->getChildCount()I

    .line 167
    .line 168
    .line 169
    move-result v8

    .line 170
    sub-int/2addr v8, v5

    .line 171
    move/from16 v16, v8

    .line 172
    .line 173
    goto :goto_8

    .line 174
    :cond_f
    add-int v16, v10, v15

    .line 175
    .line 176
    :goto_8
    move/from16 v8, v16

    .line 177
    .line 178
    :goto_9
    if-lez v15, :cond_10

    .line 179
    .line 180
    if-gt v8, v6, :cond_0

    .line 181
    .line 182
    goto :goto_a

    .line 183
    :cond_10
    if-lt v8, v6, :cond_0

    .line 184
    .line 185
    :goto_a
    invoke-virtual {v0, v8}, Lm1/i0;->getChildAt(I)Landroid/view/View;

    .line 186
    .line 187
    .line 188
    move-result-object v10

    .line 189
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    .line 190
    .line 191
    .line 192
    move-result v16

    .line 193
    if-nez v16, :cond_11

    .line 194
    .line 195
    invoke-virtual {v10}, Landroid/view/View;->hasFocusable()Z

    .line 196
    .line 197
    .line 198
    move-result v16

    .line 199
    if-nez v16, :cond_12

    .line 200
    .line 201
    :cond_11
    move/from16 v17, v5

    .line 202
    .line 203
    move v5, v11

    .line 204
    move v11, v12

    .line 205
    goto/16 :goto_c

    .line 206
    .line 207
    :cond_12
    if-nez v9, :cond_13

    .line 208
    .line 209
    invoke-virtual {v10, v1, v2, v3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 213
    .line 214
    .line 215
    move-result v10

    .line 216
    if-le v10, v14, :cond_11

    .line 217
    .line 218
    goto/16 :goto_0

    .line 219
    .line 220
    :cond_13
    invoke-virtual {v0, v8}, Lm1/i0;->getChildAt(I)Landroid/view/View;

    .line 221
    .line 222
    .line 223
    move-result-object v16

    .line 224
    invoke-static/range {v16 .. v16}, Landroidx/leanback/widget/GridLayoutManager;->p(Landroid/view/View;)I

    .line 225
    .line 226
    .line 227
    move-result v11

    .line 228
    iget-object v12, v0, Landroidx/leanback/widget/GridLayoutManager;->W:Landroidx/leanback/widget/E;

    .line 229
    .line 230
    invoke-virtual {v12, v11}, Landroidx/leanback/widget/E;->getLocation(I)Landroidx/leanback/widget/C;

    .line 231
    .line 232
    .line 233
    move-result-object v12

    .line 234
    if-nez v12, :cond_15

    .line 235
    .line 236
    :cond_14
    move/from16 v17, v5

    .line 237
    .line 238
    const/4 v5, 0x2

    .line 239
    const/4 v11, 0x3

    .line 240
    goto :goto_c

    .line 241
    :cond_15
    iget v12, v12, Landroidx/leanback/widget/C;->a:I

    .line 242
    .line 243
    if-ne v4, v5, :cond_16

    .line 244
    .line 245
    if-ne v12, v13, :cond_14

    .line 246
    .line 247
    if-le v11, v7, :cond_14

    .line 248
    .line 249
    invoke-virtual {v10, v1, v2, v3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 253
    .line 254
    .line 255
    move-result v10

    .line 256
    if-le v10, v14, :cond_14

    .line 257
    .line 258
    goto/16 :goto_0

    .line 259
    .line 260
    :cond_16
    if-nez v4, :cond_17

    .line 261
    .line 262
    if-ne v12, v13, :cond_14

    .line 263
    .line 264
    if-ge v11, v7, :cond_14

    .line 265
    .line 266
    invoke-virtual {v10, v1, v2, v3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 270
    .line 271
    .line 272
    move-result v10

    .line 273
    if-le v10, v14, :cond_14

    .line 274
    .line 275
    goto/16 :goto_0

    .line 276
    .line 277
    :cond_17
    const/4 v11, 0x3

    .line 278
    if-ne v4, v11, :cond_1a

    .line 279
    .line 280
    if-ne v12, v13, :cond_18

    .line 281
    .line 282
    :goto_b
    move/from16 v17, v5

    .line 283
    .line 284
    const/4 v5, 0x2

    .line 285
    goto :goto_c

    .line 286
    :cond_18
    if-ge v12, v13, :cond_19

    .line 287
    .line 288
    goto/16 :goto_0

    .line 289
    .line 290
    :cond_19
    invoke-virtual {v10, v1, v2, v3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 291
    .line 292
    .line 293
    goto :goto_b

    .line 294
    :cond_1a
    move/from16 v17, v5

    .line 295
    .line 296
    const/4 v5, 0x2

    .line 297
    if-ne v4, v5, :cond_1d

    .line 298
    .line 299
    if-ne v12, v13, :cond_1b

    .line 300
    .line 301
    goto :goto_c

    .line 302
    :cond_1b
    if-le v12, v13, :cond_1c

    .line 303
    .line 304
    goto/16 :goto_f

    .line 305
    .line 306
    :cond_1c
    invoke-virtual {v10, v1, v2, v3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 307
    .line 308
    .line 309
    :cond_1d
    :goto_c
    add-int/2addr v8, v15

    .line 310
    move v12, v11

    .line 311
    move v11, v5

    .line 312
    move/from16 v5, v17

    .line 313
    .line 314
    goto/16 :goto_9

    .line 315
    .line 316
    :cond_1e
    move/from16 v17, v5

    .line 317
    .line 318
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 319
    .line 320
    .line 321
    move-result v4

    .line 322
    iget v5, v0, Landroidx/leanback/widget/GridLayoutManager;->X:I

    .line 323
    .line 324
    if-eqz v5, :cond_22

    .line 325
    .line 326
    iget-object v5, v0, Landroidx/leanback/widget/GridLayoutManager;->Y:Landroidx/leanback/widget/C1;

    .line 327
    .line 328
    invoke-virtual {v5}, Landroidx/leanback/widget/C1;->mainAxis()Landroidx/leanback/widget/B1;

    .line 329
    .line 330
    .line 331
    move-result-object v6

    .line 332
    invoke-virtual {v6}, Landroidx/leanback/widget/B1;->getPaddingMin()I

    .line 333
    .line 334
    .line 335
    move-result v6

    .line 336
    invoke-virtual {v5}, Landroidx/leanback/widget/C1;->mainAxis()Landroidx/leanback/widget/B1;

    .line 337
    .line 338
    .line 339
    move-result-object v5

    .line 340
    invoke-virtual {v5}, Landroidx/leanback/widget/B1;->getClientSize()I

    .line 341
    .line 342
    .line 343
    move-result v5

    .line 344
    add-int/2addr v5, v6

    .line 345
    invoke-virtual {v0}, Lm1/i0;->getChildCount()I

    .line 346
    .line 347
    .line 348
    move-result v7

    .line 349
    const/4 v8, 0x0

    .line 350
    :goto_d
    if-ge v8, v7, :cond_20

    .line 351
    .line 352
    invoke-virtual {v0, v8}, Lm1/i0;->getChildAt(I)Landroid/view/View;

    .line 353
    .line 354
    .line 355
    move-result-object v9

    .line 356
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    .line 357
    .line 358
    .line 359
    move-result v10

    .line 360
    if-nez v10, :cond_1f

    .line 361
    .line 362
    iget-object v10, v0, Landroidx/leanback/widget/GridLayoutManager;->t:Lm1/L;

    .line 363
    .line 364
    invoke-virtual {v10, v9}, Lm1/L;->getDecoratedStart(Landroid/view/View;)I

    .line 365
    .line 366
    .line 367
    move-result v10

    .line 368
    if-lt v10, v6, :cond_1f

    .line 369
    .line 370
    iget-object v10, v0, Landroidx/leanback/widget/GridLayoutManager;->t:Lm1/L;

    .line 371
    .line 372
    invoke-virtual {v10, v9}, Lm1/L;->getDecoratedEnd(Landroid/view/View;)I

    .line 373
    .line 374
    .line 375
    move-result v10

    .line 376
    if-gt v10, v5, :cond_1f

    .line 377
    .line 378
    invoke-virtual {v9, v1, v2, v3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 379
    .line 380
    .line 381
    :cond_1f
    add-int/lit8 v8, v8, 0x1

    .line 382
    .line 383
    goto :goto_d

    .line 384
    :cond_20
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 385
    .line 386
    .line 387
    move-result v5

    .line 388
    if-ne v5, v4, :cond_23

    .line 389
    .line 390
    invoke-virtual {v0}, Lm1/i0;->getChildCount()I

    .line 391
    .line 392
    .line 393
    move-result v5

    .line 394
    const/4 v6, 0x0

    .line 395
    :goto_e
    if-ge v6, v5, :cond_23

    .line 396
    .line 397
    invoke-virtual {v0, v6}, Lm1/i0;->getChildAt(I)Landroid/view/View;

    .line 398
    .line 399
    .line 400
    move-result-object v7

    .line 401
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    .line 402
    .line 403
    .line 404
    move-result v8

    .line 405
    if-nez v8, :cond_21

    .line 406
    .line 407
    invoke-virtual {v7, v1, v2, v3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 408
    .line 409
    .line 410
    :cond_21
    add-int/lit8 v6, v6, 0x1

    .line 411
    .line 412
    goto :goto_e

    .line 413
    :cond_22
    iget v5, v0, Landroidx/leanback/widget/GridLayoutManager;->F:I

    .line 414
    .line 415
    invoke-virtual {v0, v5}, Lm1/i0;->findViewByPosition(I)Landroid/view/View;

    .line 416
    .line 417
    .line 418
    move-result-object v5

    .line 419
    if-eqz v5, :cond_23

    .line 420
    .line 421
    invoke-virtual {v5, v1, v2, v3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 422
    .line 423
    .line 424
    :cond_23
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 425
    .line 426
    .line 427
    move-result v2

    .line 428
    if-eq v2, v4, :cond_24

    .line 429
    .line 430
    goto :goto_f

    .line 431
    :cond_24
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isFocusable()Z

    .line 432
    .line 433
    .line 434
    move-result v2

    .line 435
    if-eqz v2, :cond_25

    .line 436
    .line 437
    move-object/from16 v2, p1

    .line 438
    .line 439
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 440
    .line 441
    .line 442
    :cond_25
    :goto_f
    return v17
.end method

.method public onInitializeAccessibilityNodeInfo(Lm1/p0;Lm1/x0;LN/n;)V
    .locals 5

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/GridLayoutManager;->K(Lm1/p0;Lm1/x0;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Lm1/x0;->getItemCount()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 9
    .line 10
    const/high16 v2, 0x40000

    .line 11
    .line 12
    and-int/2addr v2, v1

    .line 13
    const/4 v3, 0x0

    .line 14
    const/4 v4, 0x1

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    move v2, v4

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v2, v3

    .line 20
    :goto_0
    and-int/lit16 v1, v1, 0x800

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    if-le v0, v4, :cond_4

    .line 25
    .line 26
    invoke-virtual {p0, v3}, Landroidx/leanback/widget/GridLayoutManager;->A(I)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-nez v1, :cond_4

    .line 31
    .line 32
    :cond_1
    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->s:I

    .line 33
    .line 34
    if-nez v1, :cond_3

    .line 35
    .line 36
    if-eqz v2, :cond_2

    .line 37
    .line 38
    sget-object v1, LN/h;->p:LN/h;

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_2
    sget-object v1, LN/h;->n:LN/h;

    .line 42
    .line 43
    :goto_1
    invoke-virtual {p3, v1}, LN/n;->addAction(LN/h;)V

    .line 44
    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_3
    sget-object v1, LN/h;->m:LN/h;

    .line 48
    .line 49
    invoke-virtual {p3, v1}, LN/n;->addAction(LN/h;)V

    .line 50
    .line 51
    .line 52
    :goto_2
    invoke-virtual {p3, v4}, LN/n;->setScrollable(Z)V

    .line 53
    .line 54
    .line 55
    :cond_4
    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 56
    .line 57
    and-int/lit16 v1, v1, 0x1000

    .line 58
    .line 59
    if-eqz v1, :cond_5

    .line 60
    .line 61
    if-le v0, v4, :cond_8

    .line 62
    .line 63
    sub-int/2addr v0, v4

    .line 64
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/GridLayoutManager;->A(I)Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-nez v0, :cond_8

    .line 69
    .line 70
    :cond_5
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->s:I

    .line 71
    .line 72
    if-nez v0, :cond_7

    .line 73
    .line 74
    if-eqz v2, :cond_6

    .line 75
    .line 76
    sget-object v0, LN/h;->n:LN/h;

    .line 77
    .line 78
    goto :goto_3

    .line 79
    :cond_6
    sget-object v0, LN/h;->p:LN/h;

    .line 80
    .line 81
    :goto_3
    invoke-virtual {p3, v0}, LN/n;->addAction(LN/h;)V

    .line 82
    .line 83
    .line 84
    goto :goto_4

    .line 85
    :cond_7
    sget-object v0, LN/h;->o:LN/h;

    .line 86
    .line 87
    invoke-virtual {p3, v0}, LN/n;->addAction(LN/h;)V

    .line 88
    .line 89
    .line 90
    :goto_4
    invoke-virtual {p3, v4}, LN/n;->setScrollable(Z)V

    .line 91
    .line 92
    .line 93
    :cond_8
    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/GridLayoutManager;->getRowCountForAccessibility(Lm1/p0;Lm1/x0;)I

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/GridLayoutManager;->getColumnCountForAccessibility(Lm1/p0;Lm1/x0;)I

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    invoke-virtual {p0, p1, p2}, Lm1/i0;->isLayoutHierarchical(Lm1/p0;Lm1/x0;)Z

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    invoke-virtual {p0, p1, p2}, Lm1/i0;->getSelectionModeForAccessibility(Lm1/p0;Lm1/x0;)I

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    invoke-static {v0, v1, v2, p1}, LN/l;->obtain(IIZI)LN/l;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-virtual {p3, p1}, LN/n;->setCollectionInfo(Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    const-class p1, Landroid/widget/GridView;

    .line 117
    .line 118
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-virtual {p3, p1}, LN/n;->setClassName(Ljava/lang/CharSequence;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->C()V

    .line 126
    .line 127
    .line 128
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Lm1/p0;Lm1/x0;Landroid/view/View;LN/n;)V
    .locals 7

    .line 1
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object p2, p0, Landroidx/leanback/widget/GridLayoutManager;->W:Landroidx/leanback/widget/E;

    .line 6
    .line 7
    if-eqz p2, :cond_4

    .line 8
    .line 9
    instance-of p2, p1, Landroidx/leanback/widget/J;

    .line 10
    .line 11
    if-nez p2, :cond_0

    .line 12
    .line 13
    goto :goto_2

    .line 14
    :cond_0
    check-cast p1, Landroidx/leanback/widget/J;

    .line 15
    .line 16
    invoke-virtual {p1}, Lm1/j0;->getAbsoluteAdapterPosition()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-ltz p1, :cond_1

    .line 21
    .line 22
    iget-object p2, p0, Landroidx/leanback/widget/GridLayoutManager;->W:Landroidx/leanback/widget/E;

    .line 23
    .line 24
    invoke-virtual {p2, p1}, Landroidx/leanback/widget/E;->getRowIndex(I)I

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    :goto_0
    move v0, p2

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    const/4 p2, -0x1

    .line 31
    goto :goto_0

    .line 32
    :goto_1
    if-gez v0, :cond_2

    .line 33
    .line 34
    goto :goto_2

    .line 35
    :cond_2
    iget-object p2, p0, Landroidx/leanback/widget/GridLayoutManager;->W:Landroidx/leanback/widget/E;

    .line 36
    .line 37
    invoke-virtual {p2}, Landroidx/leanback/widget/E;->getNumRows()I

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    div-int v2, p1, p2

    .line 42
    .line 43
    iget p1, p0, Landroidx/leanback/widget/GridLayoutManager;->s:I

    .line 44
    .line 45
    if-nez p1, :cond_3

    .line 46
    .line 47
    const/4 v4, 0x0

    .line 48
    const/4 v5, 0x0

    .line 49
    const/4 v1, 0x1

    .line 50
    const/4 v3, 0x1

    .line 51
    invoke-static/range {v0 .. v5}, LN/m;->obtain(IIIIZZ)LN/m;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p4, p1}, LN/n;->setCollectionItemInfo(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_3
    const/4 v4, 0x0

    .line 60
    const/4 v5, 0x0

    .line 61
    const/4 v1, 0x1

    .line 62
    const/4 v3, 0x1

    .line 63
    move v6, v2

    .line 64
    move v2, v0

    .line 65
    move v0, v6

    .line 66
    invoke-static/range {v0 .. v5}, LN/m;->obtain(IIIIZZ)LN/m;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {p4, p1}, LN/n;->setCollectionItemInfo(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    :cond_4
    :goto_2
    return-void
.end method

.method public onInterceptFocusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 7

    .line 1
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 2
    .line 3
    const v1, 0x8000

    .line 4
    .line 5
    .line 6
    and-int/2addr v0, v1

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-object p1

    .line 10
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x0

    .line 15
    const/4 v2, 0x2

    .line 16
    const/4 v3, 0x1

    .line 17
    if-eq p2, v2, :cond_2

    .line 18
    .line 19
    if-ne p2, v3, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    iget-object v4, p0, Landroidx/leanback/widget/GridLayoutManager;->r:Landroidx/leanback/widget/t;

    .line 23
    .line 24
    invoke-virtual {v0, v4, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    goto :goto_6

    .line 29
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->canScrollVertically()Z

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-eqz v4, :cond_4

    .line 34
    .line 35
    if-ne p2, v2, :cond_3

    .line 36
    .line 37
    const/16 v4, 0x82

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_3
    const/16 v4, 0x21

    .line 41
    .line 42
    :goto_1
    iget-object v5, p0, Landroidx/leanback/widget/GridLayoutManager;->r:Landroidx/leanback/widget/t;

    .line 43
    .line 44
    invoke-virtual {v0, v5, p1, v4}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    goto :goto_2

    .line 49
    :cond_4
    const/4 v4, 0x0

    .line 50
    :goto_2
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->canScrollHorizontally()Z

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    if-eqz v5, :cond_8

    .line 55
    .line 56
    invoke-virtual {p0}, Lm1/i0;->getLayoutDirection()I

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-ne v4, v3, :cond_5

    .line 61
    .line 62
    move v4, v3

    .line 63
    goto :goto_3

    .line 64
    :cond_5
    move v4, v1

    .line 65
    :goto_3
    if-ne p2, v2, :cond_6

    .line 66
    .line 67
    move v5, v3

    .line 68
    goto :goto_4

    .line 69
    :cond_6
    move v5, v1

    .line 70
    :goto_4
    xor-int/2addr v4, v5

    .line 71
    if-eqz v4, :cond_7

    .line 72
    .line 73
    const/16 v4, 0x42

    .line 74
    .line 75
    goto :goto_5

    .line 76
    :cond_7
    const/16 v4, 0x11

    .line 77
    .line 78
    :goto_5
    iget-object v5, p0, Landroidx/leanback/widget/GridLayoutManager;->r:Landroidx/leanback/widget/t;

    .line 79
    .line 80
    invoke-virtual {v0, v5, p1, v4}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    goto :goto_6

    .line 85
    :cond_8
    move-object v0, v4

    .line 86
    :goto_6
    if-eqz v0, :cond_9

    .line 87
    .line 88
    return-object v0

    .line 89
    :cond_9
    iget-object v4, p0, Landroidx/leanback/widget/GridLayoutManager;->r:Landroidx/leanback/widget/t;

    .line 90
    .line 91
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    .line 92
    .line 93
    .line 94
    move-result v4

    .line 95
    const/high16 v5, 0x60000

    .line 96
    .line 97
    if-ne v4, v5, :cond_a

    .line 98
    .line 99
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->r:Landroidx/leanback/widget/t;

    .line 100
    .line 101
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-interface {v0, p1, p2}, Landroid/view/ViewParent;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    return-object p1

    .line 110
    :cond_a
    invoke-virtual {p0, p2}, Landroidx/leanback/widget/GridLayoutManager;->s(I)I

    .line 111
    .line 112
    .line 113
    move-result v4

    .line 114
    iget-object v5, p0, Landroidx/leanback/widget/GridLayoutManager;->r:Landroidx/leanback/widget/t;

    .line 115
    .line 116
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    .line 117
    .line 118
    .line 119
    move-result v5

    .line 120
    if-eqz v5, :cond_b

    .line 121
    .line 122
    move v5, v3

    .line 123
    goto :goto_7

    .line 124
    :cond_b
    move v5, v1

    .line 125
    :goto_7
    const/high16 v6, 0x20000

    .line 126
    .line 127
    if-ne v4, v3, :cond_e

    .line 128
    .line 129
    if-nez v5, :cond_c

    .line 130
    .line 131
    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 132
    .line 133
    and-int/lit16 v1, v1, 0x1000

    .line 134
    .line 135
    if-nez v1, :cond_d

    .line 136
    .line 137
    :cond_c
    move-object v0, p1

    .line 138
    :cond_d
    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 139
    .line 140
    and-int/2addr v1, v6

    .line 141
    if-eqz v1, :cond_15

    .line 142
    .line 143
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->z()Z

    .line 144
    .line 145
    .line 146
    move-result v1

    .line 147
    if-nez v1, :cond_15

    .line 148
    .line 149
    invoke-virtual {p0, v3}, Landroidx/leanback/widget/GridLayoutManager;->F(Z)V

    .line 150
    .line 151
    .line 152
    goto :goto_8

    .line 153
    :cond_e
    if-nez v4, :cond_12

    .line 154
    .line 155
    if-nez v5, :cond_f

    .line 156
    .line 157
    iget v2, p0, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 158
    .line 159
    and-int/lit16 v2, v2, 0x800

    .line 160
    .line 161
    if-nez v2, :cond_10

    .line 162
    .line 163
    :cond_f
    move-object v0, p1

    .line 164
    :cond_10
    iget v2, p0, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 165
    .line 166
    and-int/2addr v2, v6

    .line 167
    if-eqz v2, :cond_15

    .line 168
    .line 169
    invoke-virtual {p0}, Lm1/i0;->getItemCount()I

    .line 170
    .line 171
    .line 172
    move-result v2

    .line 173
    if-eqz v2, :cond_15

    .line 174
    .line 175
    iget-object v2, p0, Landroidx/leanback/widget/GridLayoutManager;->r:Landroidx/leanback/widget/t;

    .line 176
    .line 177
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Lm1/B0;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    if-eqz v2, :cond_11

    .line 182
    .line 183
    goto :goto_9

    .line 184
    :cond_11
    invoke-virtual {p0, v1}, Landroidx/leanback/widget/GridLayoutManager;->F(Z)V

    .line 185
    .line 186
    .line 187
    goto :goto_8

    .line 188
    :cond_12
    const/4 v1, 0x3

    .line 189
    if-ne v4, v1, :cond_13

    .line 190
    .line 191
    if-nez v5, :cond_14

    .line 192
    .line 193
    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 194
    .line 195
    and-int/lit16 v1, v1, 0x4000

    .line 196
    .line 197
    if-nez v1, :cond_15

    .line 198
    .line 199
    goto :goto_8

    .line 200
    :cond_13
    if-ne v4, v2, :cond_15

    .line 201
    .line 202
    if-nez v5, :cond_14

    .line 203
    .line 204
    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 205
    .line 206
    and-int/lit16 v1, v1, 0x2000

    .line 207
    .line 208
    if-nez v1, :cond_15

    .line 209
    .line 210
    :cond_14
    :goto_8
    move-object v0, p1

    .line 211
    :cond_15
    :goto_9
    if-eqz v0, :cond_16

    .line 212
    .line 213
    return-object v0

    .line 214
    :cond_16
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->r:Landroidx/leanback/widget/t;

    .line 215
    .line 216
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    invoke-interface {v0, p1, p2}, Landroid/view/ViewParent;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    .line 221
    .line 222
    .line 223
    move-result-object p2

    .line 224
    if-eqz p2, :cond_17

    .line 225
    .line 226
    return-object p2

    .line 227
    :cond_17
    if-eqz p1, :cond_18

    .line 228
    .line 229
    return-object p1

    .line 230
    :cond_18
    iget-object p1, p0, Landroidx/leanback/widget/GridLayoutManager;->r:Landroidx/leanback/widget/t;

    .line 231
    .line 232
    return-object p1
.end method

.method public onItemsAdded(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1

    .line 1
    iget p1, p0, Landroidx/leanback/widget/GridLayoutManager;->F:I

    .line 2
    .line 3
    const/4 v0, -0x1

    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Landroidx/leanback/widget/GridLayoutManager;->W:Landroidx/leanback/widget/E;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1}, Landroidx/leanback/widget/E;->getFirstVisibleIndex()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-ltz p1, :cond_0

    .line 15
    .line 16
    iget p1, p0, Landroidx/leanback/widget/GridLayoutManager;->I:I

    .line 17
    .line 18
    const/high16 v0, -0x80000000

    .line 19
    .line 20
    if-eq p1, v0, :cond_0

    .line 21
    .line 22
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->F:I

    .line 23
    .line 24
    add-int/2addr v0, p1

    .line 25
    if-gt p2, v0, :cond_0

    .line 26
    .line 27
    add-int/2addr p1, p3

    .line 28
    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->I:I

    .line 29
    .line 30
    :cond_0
    iget-object p1, p0, Landroidx/leanback/widget/GridLayoutManager;->d0:LG2/b;

    .line 31
    .line 32
    iget-object p1, p1, LG2/b;->c:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast p1, Lp/p;

    .line 35
    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    invoke-virtual {p1}, Lp/p;->evictAll()V

    .line 39
    .line 40
    .line 41
    :cond_1
    return-void
.end method

.method public onItemsChanged(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->I:I

    .line 3
    .line 4
    iget-object p1, p0, Landroidx/leanback/widget/GridLayoutManager;->d0:LG2/b;

    .line 5
    .line 6
    iget-object p1, p1, LG2/b;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p1, Lp/p;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1}, Lp/p;->evictAll()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public onItemsMoved(Landroidx/recyclerview/widget/RecyclerView;III)V
    .locals 2

    .line 1
    iget p1, p0, Landroidx/leanback/widget/GridLayoutManager;->F:I

    .line 2
    .line 3
    const/4 v0, -0x1

    .line 4
    if-eq p1, v0, :cond_2

    .line 5
    .line 6
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->I:I

    .line 7
    .line 8
    const/high16 v1, -0x80000000

    .line 9
    .line 10
    if-eq v0, v1, :cond_2

    .line 11
    .line 12
    add-int/2addr p1, v0

    .line 13
    if-gt p2, p1, :cond_0

    .line 14
    .line 15
    add-int v1, p2, p4

    .line 16
    .line 17
    if-ge p1, v1, :cond_0

    .line 18
    .line 19
    sub-int/2addr p3, p2

    .line 20
    add-int/2addr p3, v0

    .line 21
    iput p3, p0, Landroidx/leanback/widget/GridLayoutManager;->I:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    if-ge p2, p1, :cond_1

    .line 25
    .line 26
    sub-int v1, p1, p4

    .line 27
    .line 28
    if-le p3, v1, :cond_1

    .line 29
    .line 30
    sub-int/2addr v0, p4

    .line 31
    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->I:I

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    if-le p2, p1, :cond_2

    .line 35
    .line 36
    if-ge p3, p1, :cond_2

    .line 37
    .line 38
    add-int/2addr v0, p4

    .line 39
    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->I:I

    .line 40
    .line 41
    :cond_2
    :goto_0
    iget-object p1, p0, Landroidx/leanback/widget/GridLayoutManager;->d0:LG2/b;

    .line 42
    .line 43
    iget-object p1, p1, LG2/b;->c:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast p1, Lp/p;

    .line 46
    .line 47
    if-eqz p1, :cond_3

    .line 48
    .line 49
    invoke-virtual {p1}, Lp/p;->evictAll()V

    .line 50
    .line 51
    .line 52
    :cond_3
    return-void
.end method

.method public onItemsRemoved(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 4

    .line 1
    iget p1, p0, Landroidx/leanback/widget/GridLayoutManager;->F:I

    .line 2
    .line 3
    const/4 v0, -0x1

    .line 4
    if-eq p1, v0, :cond_1

    .line 5
    .line 6
    iget-object p1, p0, Landroidx/leanback/widget/GridLayoutManager;->W:Landroidx/leanback/widget/E;

    .line 7
    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    invoke-virtual {p1}, Landroidx/leanback/widget/E;->getFirstVisibleIndex()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-ltz p1, :cond_1

    .line 15
    .line 16
    iget p1, p0, Landroidx/leanback/widget/GridLayoutManager;->I:I

    .line 17
    .line 18
    const/high16 v0, -0x80000000

    .line 19
    .line 20
    if-eq p1, v0, :cond_1

    .line 21
    .line 22
    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->F:I

    .line 23
    .line 24
    add-int v2, v1, p1

    .line 25
    .line 26
    if-gt p2, v2, :cond_1

    .line 27
    .line 28
    add-int v3, p2, p3

    .line 29
    .line 30
    if-le v3, v2, :cond_0

    .line 31
    .line 32
    sub-int/2addr p2, v2

    .line 33
    add-int/2addr p2, p1

    .line 34
    add-int/2addr p2, v1

    .line 35
    iput p2, p0, Landroidx/leanback/widget/GridLayoutManager;->F:I

    .line 36
    .line 37
    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->I:I

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    sub-int/2addr p1, p3

    .line 41
    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->I:I

    .line 42
    .line 43
    :cond_1
    :goto_0
    iget-object p1, p0, Landroidx/leanback/widget/GridLayoutManager;->d0:LG2/b;

    .line 44
    .line 45
    iget-object p1, p1, LG2/b;->c:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast p1, Lp/p;

    .line 48
    .line 49
    if-eqz p1, :cond_2

    .line 50
    .line 51
    invoke-virtual {p1}, Lp/p;->evictAll()V

    .line 52
    .line 53
    .line 54
    :cond_2
    return-void
.end method

.method public onItemsUpdated(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1

    .line 1
    add-int/2addr p3, p2

    .line 2
    :goto_0
    if-ge p2, p3, :cond_1

    .line 3
    .line 4
    iget-object p1, p0, Landroidx/leanback/widget/GridLayoutManager;->d0:LG2/b;

    .line 5
    .line 6
    iget-object v0, p1, LG2/b;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lp/p;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Lp/p;->size()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object p1, p1, LG2/b;->c:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p1, Lp/p;

    .line 21
    .line 22
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p1, v0}, Lp/p;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    :cond_0
    add-int/lit8 p2, p2, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    return-void
.end method

.method public onLayoutChildren(Lm1/p0;Lm1/x0;)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Landroidx/leanback/widget/GridLayoutManager;->U:I

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lm1/x0;->getItemCount()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-gez v1, :cond_1

    .line 13
    .line 14
    :goto_0
    return-void

    .line 15
    :cond_1
    iget v1, v0, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 16
    .line 17
    and-int/lit8 v1, v1, 0x40

    .line 18
    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    invoke-virtual {v0}, Lm1/i0;->getChildCount()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-lez v1, :cond_2

    .line 26
    .line 27
    iget v1, v0, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 28
    .line 29
    or-int/lit16 v1, v1, 0x80

    .line 30
    .line 31
    iput v1, v0, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 32
    .line 33
    return-void

    .line 34
    :cond_2
    iget v1, v0, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 35
    .line 36
    and-int/lit16 v2, v1, 0x200

    .line 37
    .line 38
    if-nez v2, :cond_3

    .line 39
    .line 40
    const/4 v2, 0x0

    .line 41
    iput-object v2, v0, Landroidx/leanback/widget/GridLayoutManager;->W:Landroidx/leanback/widget/E;

    .line 42
    .line 43
    iput-object v2, v0, Landroidx/leanback/widget/GridLayoutManager;->N:[I

    .line 44
    .line 45
    and-int/lit16 v1, v1, -0x401

    .line 46
    .line 47
    iput v1, v0, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 48
    .line 49
    invoke-virtual/range {p0 .. p1}, Landroidx/leanback/widget/GridLayoutManager;->removeAndRecycleAllViews(Lm1/p0;)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_3
    and-int/lit8 v1, v1, -0x4

    .line 54
    .line 55
    const/4 v6, 0x1

    .line 56
    or-int/2addr v1, v6

    .line 57
    iput v1, v0, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 58
    .line 59
    invoke-virtual/range {p0 .. p2}, Landroidx/leanback/widget/GridLayoutManager;->K(Lm1/p0;Lm1/x0;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual/range {p2 .. p2}, Lm1/x0;->isPreLayout()Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    const/high16 v2, -0x80000000

    .line 67
    .line 68
    const/4 v7, 0x0

    .line 69
    if-eqz v1, :cond_b

    .line 70
    .line 71
    invoke-virtual {v0}, Landroidx/leanback/widget/GridLayoutManager;->S()V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Lm1/i0;->getChildCount()I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    iget-object v3, v0, Landroidx/leanback/widget/GridLayoutManager;->W:Landroidx/leanback/widget/E;

    .line 79
    .line 80
    if-eqz v3, :cond_a

    .line 81
    .line 82
    if-lez v1, :cond_a

    .line 83
    .line 84
    iget-object v3, v0, Landroidx/leanback/widget/GridLayoutManager;->r:Landroidx/leanback/widget/t;

    .line 85
    .line 86
    invoke-virtual {v0, v7}, Lm1/i0;->getChildAt(I)Landroid/view/View;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Lm1/B0;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    invoke-virtual {v3}, Lm1/B0;->getOldPosition()I

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    iget-object v4, v0, Landroidx/leanback/widget/GridLayoutManager;->r:Landroidx/leanback/widget/t;

    .line 99
    .line 100
    add-int/lit8 v5, v1, -0x1

    .line 101
    .line 102
    invoke-virtual {v0, v5}, Lm1/i0;->getChildAt(I)Landroid/view/View;

    .line 103
    .line 104
    .line 105
    move-result-object v5

    .line 106
    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Lm1/B0;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    invoke-virtual {v4}, Lm1/B0;->getOldPosition()I

    .line 111
    .line 112
    .line 113
    move-result v4

    .line 114
    const v5, 0x7fffffff

    .line 115
    .line 116
    .line 117
    :goto_1
    if-ge v7, v1, :cond_8

    .line 118
    .line 119
    invoke-virtual {v0, v7}, Lm1/i0;->getChildAt(I)Landroid/view/View;

    .line 120
    .line 121
    .line 122
    move-result-object v6

    .line 123
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 124
    .line 125
    .line 126
    move-result-object v8

    .line 127
    check-cast v8, Landroidx/leanback/widget/J;

    .line 128
    .line 129
    iget-object v9, v0, Landroidx/leanback/widget/GridLayoutManager;->r:Landroidx/leanback/widget/t;

    .line 130
    .line 131
    invoke-virtual {v9, v6}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    .line 132
    .line 133
    .line 134
    move-result v9

    .line 135
    invoke-virtual {v8}, Lm1/j0;->isItemChanged()Z

    .line 136
    .line 137
    .line 138
    move-result v10

    .line 139
    if-nez v10, :cond_6

    .line 140
    .line 141
    invoke-virtual {v8}, Lm1/j0;->isItemRemoved()Z

    .line 142
    .line 143
    .line 144
    move-result v10

    .line 145
    if-nez v10, :cond_6

    .line 146
    .line 147
    invoke-virtual {v6}, Landroid/view/View;->isLayoutRequested()Z

    .line 148
    .line 149
    .line 150
    move-result v10

    .line 151
    if-nez v10, :cond_6

    .line 152
    .line 153
    invoke-virtual {v6}, Landroid/view/View;->hasFocus()Z

    .line 154
    .line 155
    .line 156
    move-result v10

    .line 157
    if-nez v10, :cond_4

    .line 158
    .line 159
    iget v10, v0, Landroidx/leanback/widget/GridLayoutManager;->F:I

    .line 160
    .line 161
    invoke-virtual {v8}, Lm1/j0;->getAbsoluteAdapterPosition()I

    .line 162
    .line 163
    .line 164
    move-result v11

    .line 165
    if-eq v10, v11, :cond_6

    .line 166
    .line 167
    :cond_4
    invoke-virtual {v6}, Landroid/view/View;->hasFocus()Z

    .line 168
    .line 169
    .line 170
    move-result v10

    .line 171
    if-eqz v10, :cond_5

    .line 172
    .line 173
    iget v10, v0, Landroidx/leanback/widget/GridLayoutManager;->F:I

    .line 174
    .line 175
    invoke-virtual {v8}, Lm1/j0;->getAbsoluteAdapterPosition()I

    .line 176
    .line 177
    .line 178
    move-result v8

    .line 179
    if-ne v10, v8, :cond_6

    .line 180
    .line 181
    :cond_5
    if-lt v9, v3, :cond_6

    .line 182
    .line 183
    if-le v9, v4, :cond_7

    .line 184
    .line 185
    :cond_6
    iget-object v8, v0, Landroidx/leanback/widget/GridLayoutManager;->t:Lm1/L;

    .line 186
    .line 187
    invoke-virtual {v8, v6}, Lm1/L;->getDecoratedStart(Landroid/view/View;)I

    .line 188
    .line 189
    .line 190
    move-result v8

    .line 191
    invoke-static {v5, v8}, Ljava/lang/Math;->min(II)I

    .line 192
    .line 193
    .line 194
    move-result v5

    .line 195
    iget-object v8, v0, Landroidx/leanback/widget/GridLayoutManager;->t:Lm1/L;

    .line 196
    .line 197
    invoke-virtual {v8, v6}, Lm1/L;->getDecoratedEnd(Landroid/view/View;)I

    .line 198
    .line 199
    .line 200
    move-result v6

    .line 201
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    .line 202
    .line 203
    .line 204
    move-result v2

    .line 205
    :cond_7
    add-int/lit8 v7, v7, 0x1

    .line 206
    .line 207
    goto :goto_1

    .line 208
    :cond_8
    if-le v2, v5, :cond_9

    .line 209
    .line 210
    sub-int/2addr v2, v5

    .line 211
    iput v2, v0, Landroidx/leanback/widget/GridLayoutManager;->x:I

    .line 212
    .line 213
    :cond_9
    invoke-virtual {v0}, Landroidx/leanback/widget/GridLayoutManager;->m()V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v0}, Landroidx/leanback/widget/GridLayoutManager;->E()V

    .line 217
    .line 218
    .line 219
    :cond_a
    iget v1, v0, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 220
    .line 221
    and-int/lit8 v1, v1, -0x4

    .line 222
    .line 223
    iput v1, v0, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 224
    .line 225
    invoke-virtual {v0}, Landroidx/leanback/widget/GridLayoutManager;->C()V

    .line 226
    .line 227
    .line 228
    return-void

    .line 229
    :cond_b
    invoke-virtual/range {p2 .. p2}, Lm1/x0;->willRunPredictiveAnimations()Z

    .line 230
    .line 231
    .line 232
    move-result v1

    .line 233
    iget-object v8, v0, Landroidx/leanback/widget/GridLayoutManager;->y:Landroid/util/SparseIntArray;

    .line 234
    .line 235
    if-eqz v1, :cond_d

    .line 236
    .line 237
    invoke-virtual {v8}, Landroid/util/SparseIntArray;->clear()V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v0}, Lm1/i0;->getChildCount()I

    .line 241
    .line 242
    .line 243
    move-result v1

    .line 244
    move v3, v7

    .line 245
    :goto_2
    if-ge v3, v1, :cond_d

    .line 246
    .line 247
    iget-object v4, v0, Landroidx/leanback/widget/GridLayoutManager;->r:Landroidx/leanback/widget/t;

    .line 248
    .line 249
    invoke-virtual {v0, v3}, Lm1/i0;->getChildAt(I)Landroid/view/View;

    .line 250
    .line 251
    .line 252
    move-result-object v5

    .line 253
    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Lm1/B0;

    .line 254
    .line 255
    .line 256
    move-result-object v4

    .line 257
    invoke-virtual {v4}, Lm1/B0;->getOldPosition()I

    .line 258
    .line 259
    .line 260
    move-result v4

    .line 261
    if-ltz v4, :cond_c

    .line 262
    .line 263
    iget-object v5, v0, Landroidx/leanback/widget/GridLayoutManager;->W:Landroidx/leanback/widget/E;

    .line 264
    .line 265
    invoke-virtual {v5, v4}, Landroidx/leanback/widget/E;->getLocation(I)Landroidx/leanback/widget/C;

    .line 266
    .line 267
    .line 268
    move-result-object v5

    .line 269
    if-eqz v5, :cond_c

    .line 270
    .line 271
    iget v5, v5, Landroidx/leanback/widget/C;->a:I

    .line 272
    .line 273
    invoke-virtual {v8, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 274
    .line 275
    .line 276
    :cond_c
    add-int/lit8 v3, v3, 0x1

    .line 277
    .line 278
    goto :goto_2

    .line 279
    :cond_d
    invoke-virtual {v0}, Lm1/i0;->isSmoothScrolling()Z

    .line 280
    .line 281
    .line 282
    move-result v1

    .line 283
    if-nez v1, :cond_e

    .line 284
    .line 285
    iget v1, v0, Landroidx/leanback/widget/GridLayoutManager;->X:I

    .line 286
    .line 287
    if-nez v1, :cond_e

    .line 288
    .line 289
    move v9, v6

    .line 290
    goto :goto_3

    .line 291
    :cond_e
    move v9, v7

    .line 292
    :goto_3
    iget v1, v0, Landroidx/leanback/widget/GridLayoutManager;->F:I

    .line 293
    .line 294
    const/4 v3, -0x1

    .line 295
    if-eq v1, v3, :cond_f

    .line 296
    .line 297
    iget v4, v0, Landroidx/leanback/widget/GridLayoutManager;->I:I

    .line 298
    .line 299
    if-eq v4, v2, :cond_f

    .line 300
    .line 301
    add-int/2addr v1, v4

    .line 302
    iput v1, v0, Landroidx/leanback/widget/GridLayoutManager;->F:I

    .line 303
    .line 304
    :cond_f
    iput v7, v0, Landroidx/leanback/widget/GridLayoutManager;->I:I

    .line 305
    .line 306
    iget v1, v0, Landroidx/leanback/widget/GridLayoutManager;->F:I

    .line 307
    .line 308
    invoke-virtual {v0, v1}, Lm1/i0;->findViewByPosition(I)Landroid/view/View;

    .line 309
    .line 310
    .line 311
    move-result-object v10

    .line 312
    iget v11, v0, Landroidx/leanback/widget/GridLayoutManager;->F:I

    .line 313
    .line 314
    iget-object v1, v0, Landroidx/leanback/widget/GridLayoutManager;->r:Landroidx/leanback/widget/t;

    .line 315
    .line 316
    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    .line 317
    .line 318
    .line 319
    move-result v12

    .line 320
    iget-object v1, v0, Landroidx/leanback/widget/GridLayoutManager;->W:Landroidx/leanback/widget/E;

    .line 321
    .line 322
    if-eqz v1, :cond_10

    .line 323
    .line 324
    invoke-virtual {v1}, Landroidx/leanback/widget/E;->getFirstVisibleIndex()I

    .line 325
    .line 326
    .line 327
    move-result v1

    .line 328
    goto :goto_4

    .line 329
    :cond_10
    move v1, v3

    .line 330
    :goto_4
    iget-object v2, v0, Landroidx/leanback/widget/GridLayoutManager;->W:Landroidx/leanback/widget/E;

    .line 331
    .line 332
    if-eqz v2, :cond_11

    .line 333
    .line 334
    invoke-virtual {v2}, Landroidx/leanback/widget/E;->getLastVisibleIndex()I

    .line 335
    .line 336
    .line 337
    move-result v2

    .line 338
    goto :goto_5

    .line 339
    :cond_11
    move v2, v3

    .line 340
    :goto_5
    iget v4, v0, Landroidx/leanback/widget/GridLayoutManager;->s:I

    .line 341
    .line 342
    if-nez v4, :cond_12

    .line 343
    .line 344
    invoke-virtual/range {p2 .. p2}, Lm1/x0;->getRemainingScrollHorizontal()I

    .line 345
    .line 346
    .line 347
    move-result v4

    .line 348
    invoke-virtual/range {p2 .. p2}, Lm1/x0;->getRemainingScrollVertical()I

    .line 349
    .line 350
    .line 351
    move-result v5

    .line 352
    :goto_6
    move v13, v4

    .line 353
    move v14, v5

    .line 354
    goto :goto_7

    .line 355
    :cond_12
    invoke-virtual/range {p2 .. p2}, Lm1/x0;->getRemainingScrollHorizontal()I

    .line 356
    .line 357
    .line 358
    move-result v5

    .line 359
    invoke-virtual/range {p2 .. p2}, Lm1/x0;->getRemainingScrollVertical()I

    .line 360
    .line 361
    .line 362
    move-result v4

    .line 363
    goto :goto_6

    .line 364
    :goto_7
    iget-object v4, v0, Landroidx/leanback/widget/GridLayoutManager;->v:Lm1/x0;

    .line 365
    .line 366
    invoke-virtual {v4}, Lm1/x0;->getItemCount()I

    .line 367
    .line 368
    .line 369
    move-result v4

    .line 370
    if-nez v4, :cond_13

    .line 371
    .line 372
    iput v3, v0, Landroidx/leanback/widget/GridLayoutManager;->F:I

    .line 373
    .line 374
    goto :goto_8

    .line 375
    :cond_13
    iget v5, v0, Landroidx/leanback/widget/GridLayoutManager;->F:I

    .line 376
    .line 377
    if-lt v5, v4, :cond_14

    .line 378
    .line 379
    sub-int/2addr v4, v6

    .line 380
    iput v4, v0, Landroidx/leanback/widget/GridLayoutManager;->F:I

    .line 381
    .line 382
    goto :goto_8

    .line 383
    :cond_14
    if-ne v5, v3, :cond_15

    .line 384
    .line 385
    if-lez v4, :cond_15

    .line 386
    .line 387
    iput v7, v0, Landroidx/leanback/widget/GridLayoutManager;->F:I

    .line 388
    .line 389
    :cond_15
    :goto_8
    iget-object v4, v0, Landroidx/leanback/widget/GridLayoutManager;->v:Lm1/x0;

    .line 390
    .line 391
    invoke-virtual {v4}, Lm1/x0;->didStructureChange()Z

    .line 392
    .line 393
    .line 394
    move-result v4

    .line 395
    iget-object v5, v0, Landroidx/leanback/widget/GridLayoutManager;->Y:Landroidx/leanback/widget/C1;

    .line 396
    .line 397
    const/high16 p1, 0x40000

    .line 398
    .line 399
    if-nez v4, :cond_21

    .line 400
    .line 401
    iget-object v4, v0, Landroidx/leanback/widget/GridLayoutManager;->W:Landroidx/leanback/widget/E;

    .line 402
    .line 403
    if-eqz v4, :cond_21

    .line 404
    .line 405
    invoke-virtual {v4}, Landroidx/leanback/widget/E;->getFirstVisibleIndex()I

    .line 406
    .line 407
    .line 408
    move-result v4

    .line 409
    if-ltz v4, :cond_21

    .line 410
    .line 411
    iget v4, v0, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 412
    .line 413
    and-int/lit16 v4, v4, 0x100

    .line 414
    .line 415
    if-nez v4, :cond_21

    .line 416
    .line 417
    iget-object v4, v0, Landroidx/leanback/widget/GridLayoutManager;->W:Landroidx/leanback/widget/E;

    .line 418
    .line 419
    invoke-virtual {v4}, Landroidx/leanback/widget/E;->getNumRows()I

    .line 420
    .line 421
    .line 422
    move-result v4

    .line 423
    move/from16 v16, v6

    .line 424
    .line 425
    iget v6, v0, Landroidx/leanback/widget/GridLayoutManager;->U:I

    .line 426
    .line 427
    if-ne v4, v6, :cond_20

    .line 428
    .line 429
    iget-object v1, v5, Landroidx/leanback/widget/C1;->b:Landroidx/leanback/widget/B1;

    .line 430
    .line 431
    invoke-virtual {v0}, Lm1/i0;->getWidth()I

    .line 432
    .line 433
    .line 434
    move-result v2

    .line 435
    invoke-virtual {v1, v2}, Landroidx/leanback/widget/B1;->setSize(I)V

    .line 436
    .line 437
    .line 438
    invoke-virtual {v0}, Lm1/i0;->getHeight()I

    .line 439
    .line 440
    .line 441
    move-result v1

    .line 442
    iget-object v2, v5, Landroidx/leanback/widget/C1;->a:Landroidx/leanback/widget/B1;

    .line 443
    .line 444
    invoke-virtual {v2, v1}, Landroidx/leanback/widget/B1;->setSize(I)V

    .line 445
    .line 446
    .line 447
    invoke-virtual {v0}, Lm1/i0;->getPaddingLeft()I

    .line 448
    .line 449
    .line 450
    move-result v1

    .line 451
    invoke-virtual {v0}, Lm1/i0;->getPaddingRight()I

    .line 452
    .line 453
    .line 454
    move-result v3

    .line 455
    iget-object v4, v5, Landroidx/leanback/widget/C1;->b:Landroidx/leanback/widget/B1;

    .line 456
    .line 457
    invoke-virtual {v4, v1, v3}, Landroidx/leanback/widget/B1;->setPadding(II)V

    .line 458
    .line 459
    .line 460
    invoke-virtual {v0}, Lm1/i0;->getPaddingTop()I

    .line 461
    .line 462
    .line 463
    move-result v1

    .line 464
    invoke-virtual {v0}, Lm1/i0;->getPaddingBottom()I

    .line 465
    .line 466
    .line 467
    move-result v3

    .line 468
    invoke-virtual {v2, v1, v3}, Landroidx/leanback/widget/B1;->setPadding(II)V

    .line 469
    .line 470
    .line 471
    invoke-virtual {v5}, Landroidx/leanback/widget/C1;->mainAxis()Landroidx/leanback/widget/B1;

    .line 472
    .line 473
    .line 474
    move-result-object v1

    .line 475
    invoke-virtual {v1}, Landroidx/leanback/widget/B1;->getSize()I

    .line 476
    .line 477
    .line 478
    move-result v1

    .line 479
    iput v1, v0, Landroidx/leanback/widget/GridLayoutManager;->a0:I

    .line 480
    .line 481
    invoke-virtual {v0}, Landroidx/leanback/widget/GridLayoutManager;->V()V

    .line 482
    .line 483
    .line 484
    iget-object v1, v0, Landroidx/leanback/widget/GridLayoutManager;->W:Landroidx/leanback/widget/E;

    .line 485
    .line 486
    iget v2, v0, Landroidx/leanback/widget/GridLayoutManager;->R:I

    .line 487
    .line 488
    invoke-virtual {v1, v2}, Landroidx/leanback/widget/E;->setSpacing(I)V

    .line 489
    .line 490
    .line 491
    iget v1, v0, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 492
    .line 493
    or-int/lit8 v1, v1, 0x4

    .line 494
    .line 495
    iput v1, v0, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 496
    .line 497
    iget-object v1, v0, Landroidx/leanback/widget/GridLayoutManager;->W:Landroidx/leanback/widget/E;

    .line 498
    .line 499
    iget v2, v0, Landroidx/leanback/widget/GridLayoutManager;->F:I

    .line 500
    .line 501
    invoke-virtual {v1, v2}, Landroidx/leanback/widget/E;->setStart(I)V

    .line 502
    .line 503
    .line 504
    invoke-virtual {v0}, Lm1/i0;->getChildCount()I

    .line 505
    .line 506
    .line 507
    move-result v6

    .line 508
    iget-object v1, v0, Landroidx/leanback/widget/GridLayoutManager;->W:Landroidx/leanback/widget/E;

    .line 509
    .line 510
    invoke-virtual {v1}, Landroidx/leanback/widget/E;->getFirstVisibleIndex()I

    .line 511
    .line 512
    .line 513
    move-result v1

    .line 514
    iget v2, v0, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 515
    .line 516
    and-int/lit8 v2, v2, -0x9

    .line 517
    .line 518
    iput v2, v0, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 519
    .line 520
    move v2, v7

    .line 521
    :goto_9
    if-ge v2, v6, :cond_1e

    .line 522
    .line 523
    invoke-virtual {v0, v2}, Lm1/i0;->getChildAt(I)Landroid/view/View;

    .line 524
    .line 525
    .line 526
    move-result-object v3

    .line 527
    invoke-static {v3}, Landroidx/leanback/widget/GridLayoutManager;->p(Landroid/view/View;)I

    .line 528
    .line 529
    .line 530
    move-result v4

    .line 531
    if-eq v1, v4, :cond_16

    .line 532
    .line 533
    :goto_a
    move/from16 v17, v6

    .line 534
    .line 535
    move/from16 v18, v9

    .line 536
    .line 537
    move/from16 v19, v12

    .line 538
    .line 539
    move v9, v1

    .line 540
    move v6, v2

    .line 541
    goto/16 :goto_f

    .line 542
    .line 543
    :cond_16
    iget-object v4, v0, Landroidx/leanback/widget/GridLayoutManager;->W:Landroidx/leanback/widget/E;

    .line 544
    .line 545
    invoke-virtual {v4, v1}, Landroidx/leanback/widget/E;->getLocation(I)Landroidx/leanback/widget/C;

    .line 546
    .line 547
    .line 548
    move-result-object v4

    .line 549
    if-nez v4, :cond_17

    .line 550
    .line 551
    goto :goto_a

    .line 552
    :cond_17
    iget v15, v4, Landroidx/leanback/widget/C;->a:I

    .line 553
    .line 554
    invoke-virtual {v0, v15}, Landroidx/leanback/widget/GridLayoutManager;->u(I)I

    .line 555
    .line 556
    .line 557
    move-result v15

    .line 558
    invoke-virtual {v5}, Landroidx/leanback/widget/C1;->secondAxis()Landroidx/leanback/widget/B1;

    .line 559
    .line 560
    .line 561
    move-result-object v17

    .line 562
    invoke-virtual/range {v17 .. v17}, Landroidx/leanback/widget/B1;->getPaddingMin()I

    .line 563
    .line 564
    .line 565
    move-result v17

    .line 566
    add-int v17, v17, v15

    .line 567
    .line 568
    iget v15, v0, Landroidx/leanback/widget/GridLayoutManager;->K:I

    .line 569
    .line 570
    sub-int v17, v17, v15

    .line 571
    .line 572
    iget-object v15, v0, Landroidx/leanback/widget/GridLayoutManager;->t:Lm1/L;

    .line 573
    .line 574
    invoke-virtual {v15, v3}, Lm1/L;->getDecoratedStart(Landroid/view/View;)I

    .line 575
    .line 576
    .line 577
    move-result v15

    .line 578
    sget-object v7, Landroidx/leanback/widget/GridLayoutManager;->h0:Landroid/graphics/Rect;

    .line 579
    .line 580
    invoke-virtual {v0, v3, v7}, Landroidx/leanback/widget/GridLayoutManager;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 581
    .line 582
    .line 583
    move-object/from16 v18, v5

    .line 584
    .line 585
    iget v5, v0, Landroidx/leanback/widget/GridLayoutManager;->s:I

    .line 586
    .line 587
    if-nez v5, :cond_18

    .line 588
    .line 589
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    .line 590
    .line 591
    .line 592
    move-result v5

    .line 593
    :goto_b
    move v7, v5

    .line 594
    goto :goto_c

    .line 595
    :cond_18
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    .line 596
    .line 597
    .line 598
    move-result v5

    .line 599
    goto :goto_b

    .line 600
    :goto_c
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 601
    .line 602
    .line 603
    move-result-object v5

    .line 604
    check-cast v5, Landroidx/leanback/widget/J;

    .line 605
    .line 606
    invoke-virtual {v5}, Lm1/j0;->viewNeedsUpdate()Z

    .line 607
    .line 608
    .line 609
    move-result v5

    .line 610
    if-eqz v5, :cond_19

    .line 611
    .line 612
    iget v5, v0, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 613
    .line 614
    or-int/lit8 v5, v5, 0x8

    .line 615
    .line 616
    iput v5, v0, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 617
    .line 618
    iget-object v5, v0, Landroidx/leanback/widget/GridLayoutManager;->B:Lm1/p0;

    .line 619
    .line 620
    invoke-virtual {v0, v3, v5}, Lm1/i0;->detachAndScrapView(Landroid/view/View;Lm1/p0;)V

    .line 621
    .line 622
    .line 623
    invoke-virtual {v0, v1}, Landroidx/leanback/widget/GridLayoutManager;->y(I)Landroid/view/View;

    .line 624
    .line 625
    .line 626
    move-result-object v3

    .line 627
    invoke-virtual {v0, v3, v2}, Lm1/i0;->addView(Landroid/view/View;I)V

    .line 628
    .line 629
    .line 630
    :cond_19
    invoke-virtual {v0, v3}, Landroidx/leanback/widget/GridLayoutManager;->D(Landroid/view/View;)V

    .line 631
    .line 632
    .line 633
    iget v5, v0, Landroidx/leanback/widget/GridLayoutManager;->s:I

    .line 634
    .line 635
    if-nez v5, :cond_1a

    .line 636
    .line 637
    invoke-virtual {v0, v3}, Landroidx/leanback/widget/GridLayoutManager;->r(Landroid/view/View;)I

    .line 638
    .line 639
    .line 640
    move-result v5

    .line 641
    :goto_d
    add-int v19, v15, v5

    .line 642
    .line 643
    goto :goto_e

    .line 644
    :cond_1a
    invoke-virtual {v0, v3}, Landroidx/leanback/widget/GridLayoutManager;->q(Landroid/view/View;)I

    .line 645
    .line 646
    .line 647
    move-result v5

    .line 648
    goto :goto_d

    .line 649
    :goto_e
    iget v4, v4, Landroidx/leanback/widget/C;->a:I

    .line 650
    .line 651
    move/from16 v20, v9

    .line 652
    .line 653
    move v9, v1

    .line 654
    move-object v1, v3

    .line 655
    move v3, v15

    .line 656
    move-object/from16 v15, v18

    .line 657
    .line 658
    move/from16 v18, v20

    .line 659
    .line 660
    move/from16 v20, v6

    .line 661
    .line 662
    move v6, v2

    .line 663
    move v2, v4

    .line 664
    move/from16 v4, v19

    .line 665
    .line 666
    move/from16 v19, v12

    .line 667
    .line 668
    move v12, v5

    .line 669
    move/from16 v5, v17

    .line 670
    .line 671
    move/from16 v17, v20

    .line 672
    .line 673
    invoke-virtual/range {v0 .. v5}, Landroidx/leanback/widget/GridLayoutManager;->B(Landroid/view/View;IIII)V

    .line 674
    .line 675
    .line 676
    if-eq v7, v12, :cond_1d

    .line 677
    .line 678
    :goto_f
    iget-object v1, v0, Landroidx/leanback/widget/GridLayoutManager;->W:Landroidx/leanback/widget/E;

    .line 679
    .line 680
    invoke-virtual {v1}, Landroidx/leanback/widget/E;->getLastVisibleIndex()I

    .line 681
    .line 682
    .line 683
    move-result v1

    .line 684
    add-int/lit8 v2, v17, -0x1

    .line 685
    .line 686
    :goto_10
    if-lt v2, v6, :cond_1b

    .line 687
    .line 688
    invoke-virtual {v0, v2}, Lm1/i0;->getChildAt(I)Landroid/view/View;

    .line 689
    .line 690
    .line 691
    move-result-object v3

    .line 692
    iget-object v4, v0, Landroidx/leanback/widget/GridLayoutManager;->B:Lm1/p0;

    .line 693
    .line 694
    invoke-virtual {v0, v3, v4}, Lm1/i0;->detachAndScrapView(Landroid/view/View;Lm1/p0;)V

    .line 695
    .line 696
    .line 697
    add-int/lit8 v2, v2, -0x1

    .line 698
    .line 699
    goto :goto_10

    .line 700
    :cond_1b
    iget-object v2, v0, Landroidx/leanback/widget/GridLayoutManager;->W:Landroidx/leanback/widget/E;

    .line 701
    .line 702
    invoke-virtual {v2, v9}, Landroidx/leanback/widget/E;->invalidateItemsAfter(I)V

    .line 703
    .line 704
    .line 705
    iget v2, v0, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 706
    .line 707
    const/high16 v3, 0x10000

    .line 708
    .line 709
    and-int/2addr v2, v3

    .line 710
    if-eqz v2, :cond_1c

    .line 711
    .line 712
    invoke-virtual {v0}, Landroidx/leanback/widget/GridLayoutManager;->m()V

    .line 713
    .line 714
    .line 715
    iget v2, v0, Landroidx/leanback/widget/GridLayoutManager;->F:I

    .line 716
    .line 717
    if-ltz v2, :cond_1f

    .line 718
    .line 719
    if-gt v2, v1, :cond_1f

    .line 720
    .line 721
    :goto_11
    iget-object v1, v0, Landroidx/leanback/widget/GridLayoutManager;->W:Landroidx/leanback/widget/E;

    .line 722
    .line 723
    invoke-virtual {v1}, Landroidx/leanback/widget/E;->getLastVisibleIndex()I

    .line 724
    .line 725
    .line 726
    move-result v1

    .line 727
    iget v2, v0, Landroidx/leanback/widget/GridLayoutManager;->F:I

    .line 728
    .line 729
    if-ge v1, v2, :cond_1f

    .line 730
    .line 731
    iget-object v1, v0, Landroidx/leanback/widget/GridLayoutManager;->W:Landroidx/leanback/widget/E;

    .line 732
    .line 733
    invoke-virtual {v1}, Landroidx/leanback/widget/E;->appendOneColumnVisibleItems()Z

    .line 734
    .line 735
    .line 736
    goto :goto_11

    .line 737
    :cond_1c
    :goto_12
    iget-object v2, v0, Landroidx/leanback/widget/GridLayoutManager;->W:Landroidx/leanback/widget/E;

    .line 738
    .line 739
    invoke-virtual {v2}, Landroidx/leanback/widget/E;->appendOneColumnVisibleItems()Z

    .line 740
    .line 741
    .line 742
    move-result v2

    .line 743
    if-eqz v2, :cond_1f

    .line 744
    .line 745
    iget-object v2, v0, Landroidx/leanback/widget/GridLayoutManager;->W:Landroidx/leanback/widget/E;

    .line 746
    .line 747
    invoke-virtual {v2}, Landroidx/leanback/widget/E;->getLastVisibleIndex()I

    .line 748
    .line 749
    .line 750
    move-result v2

    .line 751
    if-ge v2, v1, :cond_1f

    .line 752
    .line 753
    goto :goto_12

    .line 754
    :cond_1d
    add-int/lit8 v2, v6, 0x1

    .line 755
    .line 756
    add-int/lit8 v1, v9, 0x1

    .line 757
    .line 758
    move-object v5, v15

    .line 759
    move/from16 v6, v17

    .line 760
    .line 761
    move/from16 v9, v18

    .line 762
    .line 763
    move/from16 v12, v19

    .line 764
    .line 765
    const/4 v7, 0x0

    .line 766
    goto/16 :goto_9

    .line 767
    .line 768
    :cond_1e
    move/from16 v18, v9

    .line 769
    .line 770
    move/from16 v19, v12

    .line 771
    .line 772
    :cond_1f
    invoke-virtual {v0}, Landroidx/leanback/widget/GridLayoutManager;->U()V

    .line 773
    .line 774
    .line 775
    invoke-virtual {v0}, Landroidx/leanback/widget/GridLayoutManager;->V()V

    .line 776
    .line 777
    .line 778
    goto/16 :goto_19

    .line 779
    .line 780
    :cond_20
    move-object v15, v5

    .line 781
    :goto_13
    move/from16 v18, v9

    .line 782
    .line 783
    move/from16 v19, v12

    .line 784
    .line 785
    goto :goto_14

    .line 786
    :cond_21
    move-object v15, v5

    .line 787
    move/from16 v16, v6

    .line 788
    .line 789
    goto :goto_13

    .line 790
    :goto_14
    iget v4, v0, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 791
    .line 792
    and-int/lit16 v4, v4, -0x101

    .line 793
    .line 794
    iput v4, v0, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 795
    .line 796
    iget-object v4, v0, Landroidx/leanback/widget/GridLayoutManager;->W:Landroidx/leanback/widget/E;

    .line 797
    .line 798
    if-eqz v4, :cond_23

    .line 799
    .line 800
    iget v5, v0, Landroidx/leanback/widget/GridLayoutManager;->U:I

    .line 801
    .line 802
    invoke-virtual {v4}, Landroidx/leanback/widget/E;->getNumRows()I

    .line 803
    .line 804
    .line 805
    move-result v4

    .line 806
    if-ne v5, v4, :cond_23

    .line 807
    .line 808
    iget v4, v0, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 809
    .line 810
    and-int v4, v4, p1

    .line 811
    .line 812
    if-eqz v4, :cond_22

    .line 813
    .line 814
    move/from16 v4, v16

    .line 815
    .line 816
    goto :goto_15

    .line 817
    :cond_22
    const/4 v4, 0x0

    .line 818
    :goto_15
    iget-object v5, v0, Landroidx/leanback/widget/GridLayoutManager;->W:Landroidx/leanback/widget/E;

    .line 819
    .line 820
    invoke-virtual {v5}, Landroidx/leanback/widget/E;->isReversedFlow()Z

    .line 821
    .line 822
    .line 823
    move-result v5

    .line 824
    if-eq v4, v5, :cond_25

    .line 825
    .line 826
    :cond_23
    iget v4, v0, Landroidx/leanback/widget/GridLayoutManager;->U:I

    .line 827
    .line 828
    invoke-static {v4}, Landroidx/leanback/widget/E;->createGrid(I)Landroidx/leanback/widget/E;

    .line 829
    .line 830
    .line 831
    move-result-object v4

    .line 832
    iput-object v4, v0, Landroidx/leanback/widget/GridLayoutManager;->W:Landroidx/leanback/widget/E;

    .line 833
    .line 834
    iget-object v5, v0, Landroidx/leanback/widget/GridLayoutManager;->g0:Landroidx/leanback/widget/G;

    .line 835
    .line 836
    invoke-virtual {v4, v5}, Landroidx/leanback/widget/E;->setProvider(Landroidx/leanback/widget/D;)V

    .line 837
    .line 838
    .line 839
    iget-object v4, v0, Landroidx/leanback/widget/GridLayoutManager;->W:Landroidx/leanback/widget/E;

    .line 840
    .line 841
    iget v5, v0, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 842
    .line 843
    and-int v5, v5, p1

    .line 844
    .line 845
    if-eqz v5, :cond_24

    .line 846
    .line 847
    move/from16 v5, v16

    .line 848
    .line 849
    goto :goto_16

    .line 850
    :cond_24
    const/4 v5, 0x0

    .line 851
    :goto_16
    invoke-virtual {v4, v5}, Landroidx/leanback/widget/E;->setReversedFlow(Z)V

    .line 852
    .line 853
    .line 854
    :cond_25
    invoke-virtual {v15}, Landroidx/leanback/widget/C1;->reset()V

    .line 855
    .line 856
    .line 857
    invoke-virtual {v0}, Lm1/i0;->getWidth()I

    .line 858
    .line 859
    .line 860
    move-result v4

    .line 861
    iget-object v5, v15, Landroidx/leanback/widget/C1;->b:Landroidx/leanback/widget/B1;

    .line 862
    .line 863
    invoke-virtual {v5, v4}, Landroidx/leanback/widget/B1;->setSize(I)V

    .line 864
    .line 865
    .line 866
    invoke-virtual {v0}, Lm1/i0;->getHeight()I

    .line 867
    .line 868
    .line 869
    move-result v4

    .line 870
    iget-object v6, v15, Landroidx/leanback/widget/C1;->a:Landroidx/leanback/widget/B1;

    .line 871
    .line 872
    invoke-virtual {v6, v4}, Landroidx/leanback/widget/B1;->setSize(I)V

    .line 873
    .line 874
    .line 875
    invoke-virtual {v0}, Lm1/i0;->getPaddingLeft()I

    .line 876
    .line 877
    .line 878
    move-result v4

    .line 879
    invoke-virtual {v0}, Lm1/i0;->getPaddingRight()I

    .line 880
    .line 881
    .line 882
    move-result v7

    .line 883
    invoke-virtual {v5, v4, v7}, Landroidx/leanback/widget/B1;->setPadding(II)V

    .line 884
    .line 885
    .line 886
    invoke-virtual {v0}, Lm1/i0;->getPaddingTop()I

    .line 887
    .line 888
    .line 889
    move-result v4

    .line 890
    invoke-virtual {v0}, Lm1/i0;->getPaddingBottom()I

    .line 891
    .line 892
    .line 893
    move-result v5

    .line 894
    invoke-virtual {v6, v4, v5}, Landroidx/leanback/widget/B1;->setPadding(II)V

    .line 895
    .line 896
    .line 897
    invoke-virtual {v15}, Landroidx/leanback/widget/C1;->mainAxis()Landroidx/leanback/widget/B1;

    .line 898
    .line 899
    .line 900
    move-result-object v4

    .line 901
    invoke-virtual {v4}, Landroidx/leanback/widget/B1;->getSize()I

    .line 902
    .line 903
    .line 904
    move-result v4

    .line 905
    iput v4, v0, Landroidx/leanback/widget/GridLayoutManager;->a0:I

    .line 906
    .line 907
    const/4 v4, 0x0

    .line 908
    iput v4, v0, Landroidx/leanback/widget/GridLayoutManager;->K:I

    .line 909
    .line 910
    invoke-virtual {v0}, Landroidx/leanback/widget/GridLayoutManager;->V()V

    .line 911
    .line 912
    .line 913
    iget-object v4, v0, Landroidx/leanback/widget/GridLayoutManager;->W:Landroidx/leanback/widget/E;

    .line 914
    .line 915
    iget v5, v0, Landroidx/leanback/widget/GridLayoutManager;->R:I

    .line 916
    .line 917
    invoke-virtual {v4, v5}, Landroidx/leanback/widget/E;->setSpacing(I)V

    .line 918
    .line 919
    .line 920
    iget-object v4, v0, Landroidx/leanback/widget/GridLayoutManager;->B:Lm1/p0;

    .line 921
    .line 922
    invoke-virtual {v0, v4}, Lm1/i0;->detachAndScrapAttachedViews(Lm1/p0;)V

    .line 923
    .line 924
    .line 925
    iget-object v4, v0, Landroidx/leanback/widget/GridLayoutManager;->W:Landroidx/leanback/widget/E;

    .line 926
    .line 927
    invoke-virtual {v4}, Landroidx/leanback/widget/E;->resetVisibleIndex()V

    .line 928
    .line 929
    .line 930
    invoke-virtual {v15}, Landroidx/leanback/widget/C1;->mainAxis()Landroidx/leanback/widget/B1;

    .line 931
    .line 932
    .line 933
    move-result-object v4

    .line 934
    invoke-virtual {v4}, Landroidx/leanback/widget/B1;->invalidateScrollMin()V

    .line 935
    .line 936
    .line 937
    invoke-virtual {v15}, Landroidx/leanback/widget/C1;->mainAxis()Landroidx/leanback/widget/B1;

    .line 938
    .line 939
    .line 940
    move-result-object v4

    .line 941
    invoke-virtual {v4}, Landroidx/leanback/widget/B1;->invalidateScrollMax()V

    .line 942
    .line 943
    .line 944
    iget v4, v0, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 945
    .line 946
    and-int/lit8 v5, v4, -0x5

    .line 947
    .line 948
    iput v5, v0, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 949
    .line 950
    and-int/lit8 v4, v4, -0x15

    .line 951
    .line 952
    if-eqz v18, :cond_26

    .line 953
    .line 954
    const/16 v5, 0x10

    .line 955
    .line 956
    goto :goto_17

    .line 957
    :cond_26
    const/4 v5, 0x0

    .line 958
    :goto_17
    or-int/2addr v4, v5

    .line 959
    iput v4, v0, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 960
    .line 961
    if-eqz v18, :cond_28

    .line 962
    .line 963
    if-ltz v1, :cond_27

    .line 964
    .line 965
    iget v4, v0, Landroidx/leanback/widget/GridLayoutManager;->F:I

    .line 966
    .line 967
    if-gt v4, v2, :cond_27

    .line 968
    .line 969
    if-ge v4, v1, :cond_28

    .line 970
    .line 971
    :cond_27
    iget v1, v0, Landroidx/leanback/widget/GridLayoutManager;->F:I

    .line 972
    .line 973
    move v2, v1

    .line 974
    :cond_28
    iget-object v4, v0, Landroidx/leanback/widget/GridLayoutManager;->W:Landroidx/leanback/widget/E;

    .line 975
    .line 976
    invoke-virtual {v4, v1}, Landroidx/leanback/widget/E;->setStart(I)V

    .line 977
    .line 978
    .line 979
    if-eq v2, v3, :cond_29

    .line 980
    .line 981
    :goto_18
    iget-object v1, v0, Landroidx/leanback/widget/GridLayoutManager;->W:Landroidx/leanback/widget/E;

    .line 982
    .line 983
    invoke-virtual {v1}, Landroidx/leanback/widget/E;->appendOneColumnVisibleItems()Z

    .line 984
    .line 985
    .line 986
    move-result v1

    .line 987
    if-eqz v1, :cond_29

    .line 988
    .line 989
    invoke-virtual {v0, v2}, Lm1/i0;->findViewByPosition(I)Landroid/view/View;

    .line 990
    .line 991
    .line 992
    move-result-object v1

    .line 993
    if-nez v1, :cond_29

    .line 994
    .line 995
    goto :goto_18

    .line 996
    :cond_29
    :goto_19
    invoke-virtual {v0}, Landroidx/leanback/widget/GridLayoutManager;->U()V

    .line 997
    .line 998
    .line 999
    iget-object v1, v0, Landroidx/leanback/widget/GridLayoutManager;->W:Landroidx/leanback/widget/E;

    .line 1000
    .line 1001
    invoke-virtual {v1}, Landroidx/leanback/widget/E;->getFirstVisibleIndex()I

    .line 1002
    .line 1003
    .line 1004
    move-result v6

    .line 1005
    iget-object v1, v0, Landroidx/leanback/widget/GridLayoutManager;->W:Landroidx/leanback/widget/E;

    .line 1006
    .line 1007
    invoke-virtual {v1}, Landroidx/leanback/widget/E;->getLastVisibleIndex()I

    .line 1008
    .line 1009
    .line 1010
    move-result v7

    .line 1011
    neg-int v4, v13

    .line 1012
    neg-int v5, v14

    .line 1013
    iget v1, v0, Landroidx/leanback/widget/GridLayoutManager;->F:I

    .line 1014
    .line 1015
    invoke-virtual {v0, v1}, Lm1/i0;->findViewByPosition(I)Landroid/view/View;

    .line 1016
    .line 1017
    .line 1018
    move-result-object v1

    .line 1019
    if-eqz v1, :cond_2a

    .line 1020
    .line 1021
    if-eqz v18, :cond_2a

    .line 1022
    .line 1023
    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    .line 1024
    .line 1025
    .line 1026
    move-result-object v2

    .line 1027
    const/4 v3, 0x0

    .line 1028
    invoke-virtual/range {v0 .. v5}, Landroidx/leanback/widget/GridLayoutManager;->O(Landroid/view/View;Landroid/view/View;ZII)V

    .line 1029
    .line 1030
    .line 1031
    :cond_2a
    if-eqz v1, :cond_2b

    .line 1032
    .line 1033
    if-eqz v19, :cond_2b

    .line 1034
    .line 1035
    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    .line 1036
    .line 1037
    .line 1038
    move-result v2

    .line 1039
    if-nez v2, :cond_2b

    .line 1040
    .line 1041
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 1042
    .line 1043
    .line 1044
    goto :goto_1c

    .line 1045
    :cond_2b
    if-nez v19, :cond_2f

    .line 1046
    .line 1047
    iget-object v2, v0, Landroidx/leanback/widget/GridLayoutManager;->r:Landroidx/leanback/widget/t;

    .line 1048
    .line 1049
    invoke-virtual {v2}, Landroid/view/View;->hasFocus()Z

    .line 1050
    .line 1051
    .line 1052
    move-result v2

    .line 1053
    if-nez v2, :cond_2f

    .line 1054
    .line 1055
    if-eqz v1, :cond_2c

    .line 1056
    .line 1057
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    .line 1058
    .line 1059
    .line 1060
    move-result v2

    .line 1061
    if-eqz v2, :cond_2c

    .line 1062
    .line 1063
    iget-object v2, v0, Landroidx/leanback/widget/GridLayoutManager;->r:Landroidx/leanback/widget/t;

    .line 1064
    .line 1065
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->focusableViewAvailable(Landroid/view/View;)V

    .line 1066
    .line 1067
    .line 1068
    goto :goto_1b

    .line 1069
    :cond_2c
    invoke-virtual {v0}, Lm1/i0;->getChildCount()I

    .line 1070
    .line 1071
    .line 1072
    move-result v2

    .line 1073
    const/4 v3, 0x0

    .line 1074
    :goto_1a
    if-ge v3, v2, :cond_2e

    .line 1075
    .line 1076
    invoke-virtual {v0, v3}, Lm1/i0;->getChildAt(I)Landroid/view/View;

    .line 1077
    .line 1078
    .line 1079
    move-result-object v1

    .line 1080
    if-eqz v1, :cond_2d

    .line 1081
    .line 1082
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    .line 1083
    .line 1084
    .line 1085
    move-result v9

    .line 1086
    if-eqz v9, :cond_2d

    .line 1087
    .line 1088
    iget-object v2, v0, Landroidx/leanback/widget/GridLayoutManager;->r:Landroidx/leanback/widget/t;

    .line 1089
    .line 1090
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->focusableViewAvailable(Landroid/view/View;)V

    .line 1091
    .line 1092
    .line 1093
    goto :goto_1b

    .line 1094
    :cond_2d
    add-int/lit8 v3, v3, 0x1

    .line 1095
    .line 1096
    goto :goto_1a

    .line 1097
    :cond_2e
    :goto_1b
    if-eqz v18, :cond_2f

    .line 1098
    .line 1099
    if-eqz v1, :cond_2f

    .line 1100
    .line 1101
    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    .line 1102
    .line 1103
    .line 1104
    move-result v2

    .line 1105
    if-eqz v2, :cond_2f

    .line 1106
    .line 1107
    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    .line 1108
    .line 1109
    .line 1110
    move-result-object v2

    .line 1111
    const/4 v3, 0x0

    .line 1112
    invoke-virtual/range {v0 .. v5}, Landroidx/leanback/widget/GridLayoutManager;->O(Landroid/view/View;Landroid/view/View;ZII)V

    .line 1113
    .line 1114
    .line 1115
    :cond_2f
    :goto_1c
    invoke-virtual {v0}, Landroidx/leanback/widget/GridLayoutManager;->m()V

    .line 1116
    .line 1117
    .line 1118
    invoke-virtual {v0}, Landroidx/leanback/widget/GridLayoutManager;->E()V

    .line 1119
    .line 1120
    .line 1121
    iget-object v1, v0, Landroidx/leanback/widget/GridLayoutManager;->W:Landroidx/leanback/widget/E;

    .line 1122
    .line 1123
    invoke-virtual {v1}, Landroidx/leanback/widget/E;->getFirstVisibleIndex()I

    .line 1124
    .line 1125
    .line 1126
    move-result v1

    .line 1127
    if-ne v1, v6, :cond_29

    .line 1128
    .line 1129
    iget-object v1, v0, Landroidx/leanback/widget/GridLayoutManager;->W:Landroidx/leanback/widget/E;

    .line 1130
    .line 1131
    invoke-virtual {v1}, Landroidx/leanback/widget/E;->getLastVisibleIndex()I

    .line 1132
    .line 1133
    .line 1134
    move-result v1

    .line 1135
    if-ne v1, v7, :cond_29

    .line 1136
    .line 1137
    invoke-virtual {v0}, Landroidx/leanback/widget/GridLayoutManager;->J()V

    .line 1138
    .line 1139
    .line 1140
    invoke-virtual {v0}, Landroidx/leanback/widget/GridLayoutManager;->I()V

    .line 1141
    .line 1142
    .line 1143
    invoke-virtual/range {p2 .. p2}, Lm1/x0;->willRunPredictiveAnimations()Z

    .line 1144
    .line 1145
    .line 1146
    move-result v1

    .line 1147
    if-eqz v1, :cond_38

    .line 1148
    .line 1149
    iget-object v1, v0, Landroidx/leanback/widget/GridLayoutManager;->B:Lm1/p0;

    .line 1150
    .line 1151
    invoke-virtual {v1}, Lm1/p0;->getScrapList()Ljava/util/List;

    .line 1152
    .line 1153
    .line 1154
    move-result-object v1

    .line 1155
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 1156
    .line 1157
    .line 1158
    move-result v2

    .line 1159
    if-nez v2, :cond_30

    .line 1160
    .line 1161
    goto :goto_1f

    .line 1162
    :cond_30
    iget-object v3, v0, Landroidx/leanback/widget/GridLayoutManager;->z:[I

    .line 1163
    .line 1164
    if-eqz v3, :cond_31

    .line 1165
    .line 1166
    array-length v4, v3

    .line 1167
    if-le v2, v4, :cond_34

    .line 1168
    .line 1169
    :cond_31
    if-nez v3, :cond_32

    .line 1170
    .line 1171
    const/16 v3, 0x10

    .line 1172
    .line 1173
    goto :goto_1d

    .line 1174
    :cond_32
    array-length v3, v3

    .line 1175
    :goto_1d
    if-ge v3, v2, :cond_33

    .line 1176
    .line 1177
    shl-int/lit8 v3, v3, 0x1

    .line 1178
    .line 1179
    goto :goto_1d

    .line 1180
    :cond_33
    new-array v3, v3, [I

    .line 1181
    .line 1182
    iput-object v3, v0, Landroidx/leanback/widget/GridLayoutManager;->z:[I

    .line 1183
    .line 1184
    :cond_34
    const/4 v3, 0x0

    .line 1185
    const/4 v4, 0x0

    .line 1186
    :goto_1e
    if-ge v3, v2, :cond_36

    .line 1187
    .line 1188
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1189
    .line 1190
    .line 1191
    move-result-object v5

    .line 1192
    check-cast v5, Lm1/B0;

    .line 1193
    .line 1194
    invoke-virtual {v5}, Lm1/B0;->getAbsoluteAdapterPosition()I

    .line 1195
    .line 1196
    .line 1197
    move-result v5

    .line 1198
    if-ltz v5, :cond_35

    .line 1199
    .line 1200
    iget-object v6, v0, Landroidx/leanback/widget/GridLayoutManager;->z:[I

    .line 1201
    .line 1202
    add-int/lit8 v7, v4, 0x1

    .line 1203
    .line 1204
    aput v5, v6, v4

    .line 1205
    .line 1206
    move v4, v7

    .line 1207
    :cond_35
    add-int/lit8 v3, v3, 0x1

    .line 1208
    .line 1209
    goto :goto_1e

    .line 1210
    :cond_36
    if-lez v4, :cond_37

    .line 1211
    .line 1212
    iget-object v1, v0, Landroidx/leanback/widget/GridLayoutManager;->z:[I

    .line 1213
    .line 1214
    const/4 v2, 0x0

    .line 1215
    invoke-static {v1, v2, v4}, Ljava/util/Arrays;->sort([III)V

    .line 1216
    .line 1217
    .line 1218
    iget-object v1, v0, Landroidx/leanback/widget/GridLayoutManager;->W:Landroidx/leanback/widget/E;

    .line 1219
    .line 1220
    iget-object v2, v0, Landroidx/leanback/widget/GridLayoutManager;->z:[I

    .line 1221
    .line 1222
    invoke-virtual {v1, v2, v4, v8}, Landroidx/leanback/widget/E;->fillDisappearingItems([IILandroid/util/SparseIntArray;)V

    .line 1223
    .line 1224
    .line 1225
    :cond_37
    invoke-virtual {v8}, Landroid/util/SparseIntArray;->clear()V

    .line 1226
    .line 1227
    .line 1228
    :cond_38
    :goto_1f
    iget v1, v0, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 1229
    .line 1230
    and-int/lit16 v2, v1, 0x400

    .line 1231
    .line 1232
    if-eqz v2, :cond_39

    .line 1233
    .line 1234
    and-int/lit16 v1, v1, -0x401

    .line 1235
    .line 1236
    iput v1, v0, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 1237
    .line 1238
    goto :goto_20

    .line 1239
    :cond_39
    invoke-virtual {v0}, Landroidx/leanback/widget/GridLayoutManager;->T()V

    .line 1240
    .line 1241
    .line 1242
    :goto_20
    iget v1, v0, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 1243
    .line 1244
    and-int/lit8 v1, v1, 0x4

    .line 1245
    .line 1246
    if-eqz v1, :cond_3b

    .line 1247
    .line 1248
    iget v1, v0, Landroidx/leanback/widget/GridLayoutManager;->F:I

    .line 1249
    .line 1250
    if-ne v1, v11, :cond_3a

    .line 1251
    .line 1252
    invoke-virtual {v0, v1}, Lm1/i0;->findViewByPosition(I)Landroid/view/View;

    .line 1253
    .line 1254
    .line 1255
    move-result-object v1

    .line 1256
    if-ne v1, v10, :cond_3a

    .line 1257
    .line 1258
    iget v1, v0, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 1259
    .line 1260
    and-int/lit8 v1, v1, 0x8

    .line 1261
    .line 1262
    if-eqz v1, :cond_3b

    .line 1263
    .line 1264
    :cond_3a
    invoke-virtual {v0}, Landroidx/leanback/widget/GridLayoutManager;->n()V

    .line 1265
    .line 1266
    .line 1267
    goto :goto_21

    .line 1268
    :cond_3b
    iget v1, v0, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 1269
    .line 1270
    and-int/lit8 v1, v1, 0x14

    .line 1271
    .line 1272
    const/16 v2, 0x10

    .line 1273
    .line 1274
    if-ne v1, v2, :cond_3c

    .line 1275
    .line 1276
    invoke-virtual {v0}, Landroidx/leanback/widget/GridLayoutManager;->n()V

    .line 1277
    .line 1278
    .line 1279
    :cond_3c
    :goto_21
    invoke-virtual {v0}, Landroidx/leanback/widget/GridLayoutManager;->o()V

    .line 1280
    .line 1281
    .line 1282
    iget v1, v0, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 1283
    .line 1284
    and-int/lit8 v2, v1, 0x40

    .line 1285
    .line 1286
    if-eqz v2, :cond_40

    .line 1287
    .line 1288
    iget v2, v0, Landroidx/leanback/widget/GridLayoutManager;->s:I

    .line 1289
    .line 1290
    move/from16 v3, v16

    .line 1291
    .line 1292
    if-ne v2, v3, :cond_3d

    .line 1293
    .line 1294
    invoke-virtual {v0}, Lm1/i0;->getHeight()I

    .line 1295
    .line 1296
    .line 1297
    move-result v1

    .line 1298
    neg-int v1, v1

    .line 1299
    invoke-virtual {v0}, Lm1/i0;->getChildCount()I

    .line 1300
    .line 1301
    .line 1302
    move-result v2

    .line 1303
    if-lez v2, :cond_3f

    .line 1304
    .line 1305
    const/4 v2, 0x0

    .line 1306
    invoke-virtual {v0, v2}, Lm1/i0;->getChildAt(I)Landroid/view/View;

    .line 1307
    .line 1308
    .line 1309
    move-result-object v2

    .line 1310
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    .line 1311
    .line 1312
    .line 1313
    move-result v2

    .line 1314
    if-gez v2, :cond_3f

    .line 1315
    .line 1316
    :goto_22
    add-int/2addr v1, v2

    .line 1317
    goto :goto_23

    .line 1318
    :cond_3d
    and-int v1, v1, p1

    .line 1319
    .line 1320
    if-eqz v1, :cond_3e

    .line 1321
    .line 1322
    invoke-virtual {v0}, Lm1/i0;->getWidth()I

    .line 1323
    .line 1324
    .line 1325
    move-result v1

    .line 1326
    invoke-virtual {v0}, Lm1/i0;->getChildCount()I

    .line 1327
    .line 1328
    .line 1329
    move-result v2

    .line 1330
    if-lez v2, :cond_3f

    .line 1331
    .line 1332
    const/4 v4, 0x0

    .line 1333
    invoke-virtual {v0, v4}, Lm1/i0;->getChildAt(I)Landroid/view/View;

    .line 1334
    .line 1335
    .line 1336
    move-result-object v2

    .line 1337
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    .line 1338
    .line 1339
    .line 1340
    move-result v2

    .line 1341
    if-le v2, v1, :cond_3f

    .line 1342
    .line 1343
    move v1, v2

    .line 1344
    goto :goto_23

    .line 1345
    :cond_3e
    const/4 v4, 0x0

    .line 1346
    invoke-virtual {v0}, Lm1/i0;->getWidth()I

    .line 1347
    .line 1348
    .line 1349
    move-result v1

    .line 1350
    neg-int v1, v1

    .line 1351
    invoke-virtual {v0}, Lm1/i0;->getChildCount()I

    .line 1352
    .line 1353
    .line 1354
    move-result v2

    .line 1355
    if-lez v2, :cond_3f

    .line 1356
    .line 1357
    invoke-virtual {v0, v4}, Lm1/i0;->getChildAt(I)Landroid/view/View;

    .line 1358
    .line 1359
    .line 1360
    move-result-object v2

    .line 1361
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    .line 1362
    .line 1363
    .line 1364
    move-result v2

    .line 1365
    if-gez v2, :cond_3f

    .line 1366
    .line 1367
    goto :goto_22

    .line 1368
    :cond_3f
    :goto_23
    invoke-virtual {v0, v1}, Landroidx/leanback/widget/GridLayoutManager;->L(I)I

    .line 1369
    .line 1370
    .line 1371
    :cond_40
    iget v1, v0, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 1372
    .line 1373
    and-int/lit8 v1, v1, -0x4

    .line 1374
    .line 1375
    iput v1, v0, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 1376
    .line 1377
    invoke-virtual {v0}, Landroidx/leanback/widget/GridLayoutManager;->C()V

    .line 1378
    .line 1379
    .line 1380
    return-void
.end method

.method public onLayoutCompleted(Lm1/x0;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onMeasure(Lm1/p0;Lm1/x0;II)V
    .locals 6

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/GridLayoutManager;->K(Lm1/p0;Lm1/x0;)V

    .line 2
    .line 3
    .line 4
    iget p1, p0, Landroidx/leanback/widget/GridLayoutManager;->s:I

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    invoke-static {p4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    invoke-static {p4}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 17
    .line 18
    .line 19
    move-result p3

    .line 20
    invoke-virtual {p0}, Lm1/i0;->getPaddingTop()I

    .line 21
    .line 22
    .line 23
    move-result p4

    .line 24
    invoke-virtual {p0}, Lm1/i0;->getPaddingBottom()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    :goto_0
    add-int/2addr v0, p4

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    invoke-static {p4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 39
    .line 40
    .line 41
    move-result p3

    .line 42
    invoke-virtual {p0}, Lm1/i0;->getPaddingLeft()I

    .line 43
    .line 44
    .line 45
    move-result p4

    .line 46
    invoke-virtual {p0}, Lm1/i0;->getPaddingRight()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    goto :goto_0

    .line 51
    :goto_1
    iput p2, p0, Landroidx/leanback/widget/GridLayoutManager;->O:I

    .line 52
    .line 53
    iget p4, p0, Landroidx/leanback/widget/GridLayoutManager;->L:I

    .line 54
    .line 55
    const/4 v1, -0x2

    .line 56
    const-string v2, "wrong spec"

    .line 57
    .line 58
    const/high16 v3, 0x40000000    # 2.0f

    .line 59
    .line 60
    const/high16 v4, -0x80000000

    .line 61
    .line 62
    const/4 v5, 0x1

    .line 63
    if-ne p4, v1, :cond_8

    .line 64
    .line 65
    iget p2, p0, Landroidx/leanback/widget/GridLayoutManager;->V:I

    .line 66
    .line 67
    if-nez p2, :cond_1

    .line 68
    .line 69
    move p2, v5

    .line 70
    :cond_1
    iput p2, p0, Landroidx/leanback/widget/GridLayoutManager;->U:I

    .line 71
    .line 72
    const/4 p4, 0x0

    .line 73
    iput p4, p0, Landroidx/leanback/widget/GridLayoutManager;->M:I

    .line 74
    .line 75
    iget-object p4, p0, Landroidx/leanback/widget/GridLayoutManager;->N:[I

    .line 76
    .line 77
    if-eqz p4, :cond_2

    .line 78
    .line 79
    array-length p4, p4

    .line 80
    if-eq p4, p2, :cond_3

    .line 81
    .line 82
    :cond_2
    new-array p2, p2, [I

    .line 83
    .line 84
    iput-object p2, p0, Landroidx/leanback/widget/GridLayoutManager;->N:[I

    .line 85
    .line 86
    :cond_3
    iget-object p2, p0, Landroidx/leanback/widget/GridLayoutManager;->v:Lm1/x0;

    .line 87
    .line 88
    invoke-virtual {p2}, Lm1/x0;->isPreLayout()Z

    .line 89
    .line 90
    .line 91
    move-result p2

    .line 92
    if-eqz p2, :cond_4

    .line 93
    .line 94
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->S()V

    .line 95
    .line 96
    .line 97
    :cond_4
    invoke-virtual {p0, v5}, Landroidx/leanback/widget/GridLayoutManager;->G(Z)Z

    .line 98
    .line 99
    .line 100
    if-eq p3, v4, :cond_7

    .line 101
    .line 102
    if-eqz p3, :cond_6

    .line 103
    .line 104
    if-ne p3, v3, :cond_5

    .line 105
    .line 106
    iget p2, p0, Landroidx/leanback/widget/GridLayoutManager;->O:I

    .line 107
    .line 108
    goto/16 :goto_5

    .line 109
    .line 110
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 111
    .line 112
    invoke-direct {p1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    throw p1

    .line 116
    :cond_6
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->x()I

    .line 117
    .line 118
    .line 119
    move-result p2

    .line 120
    :goto_2
    add-int/2addr p2, v0

    .line 121
    goto/16 :goto_5

    .line 122
    .line 123
    :cond_7
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->x()I

    .line 124
    .line 125
    .line 126
    move-result p2

    .line 127
    add-int/2addr p2, v0

    .line 128
    iget p3, p0, Landroidx/leanback/widget/GridLayoutManager;->O:I

    .line 129
    .line 130
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    .line 131
    .line 132
    .line 133
    move-result p2

    .line 134
    goto :goto_5

    .line 135
    :cond_8
    if-eq p3, v4, :cond_d

    .line 136
    .line 137
    if-eqz p3, :cond_a

    .line 138
    .line 139
    if-ne p3, v3, :cond_9

    .line 140
    .line 141
    goto :goto_3

    .line 142
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 143
    .line 144
    invoke-direct {p1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    throw p1

    .line 148
    :cond_a
    if-nez p4, :cond_b

    .line 149
    .line 150
    sub-int p4, p2, v0

    .line 151
    .line 152
    :cond_b
    iput p4, p0, Landroidx/leanback/widget/GridLayoutManager;->M:I

    .line 153
    .line 154
    iget p2, p0, Landroidx/leanback/widget/GridLayoutManager;->V:I

    .line 155
    .line 156
    if-nez p2, :cond_c

    .line 157
    .line 158
    move p2, v5

    .line 159
    :cond_c
    iput p2, p0, Landroidx/leanback/widget/GridLayoutManager;->U:I

    .line 160
    .line 161
    mul-int/2addr p4, p2

    .line 162
    iget p3, p0, Landroidx/leanback/widget/GridLayoutManager;->S:I

    .line 163
    .line 164
    sub-int/2addr p2, v5

    .line 165
    mul-int/2addr p2, p3

    .line 166
    add-int/2addr p2, p4

    .line 167
    goto :goto_2

    .line 168
    :cond_d
    :goto_3
    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->V:I

    .line 169
    .line 170
    if-nez v1, :cond_e

    .line 171
    .line 172
    if-nez p4, :cond_e

    .line 173
    .line 174
    iput v5, p0, Landroidx/leanback/widget/GridLayoutManager;->U:I

    .line 175
    .line 176
    sub-int p4, p2, v0

    .line 177
    .line 178
    iput p4, p0, Landroidx/leanback/widget/GridLayoutManager;->M:I

    .line 179
    .line 180
    goto :goto_4

    .line 181
    :cond_e
    if-nez v1, :cond_f

    .line 182
    .line 183
    iput p4, p0, Landroidx/leanback/widget/GridLayoutManager;->M:I

    .line 184
    .line 185
    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->S:I

    .line 186
    .line 187
    add-int v2, p2, v1

    .line 188
    .line 189
    add-int/2addr p4, v1

    .line 190
    div-int/2addr v2, p4

    .line 191
    iput v2, p0, Landroidx/leanback/widget/GridLayoutManager;->U:I

    .line 192
    .line 193
    goto :goto_4

    .line 194
    :cond_f
    if-nez p4, :cond_10

    .line 195
    .line 196
    iput v1, p0, Landroidx/leanback/widget/GridLayoutManager;->U:I

    .line 197
    .line 198
    sub-int p4, p2, v0

    .line 199
    .line 200
    iget v2, p0, Landroidx/leanback/widget/GridLayoutManager;->S:I

    .line 201
    .line 202
    add-int/lit8 v3, v1, -0x1

    .line 203
    .line 204
    mul-int/2addr v3, v2

    .line 205
    sub-int/2addr p4, v3

    .line 206
    div-int/2addr p4, v1

    .line 207
    iput p4, p0, Landroidx/leanback/widget/GridLayoutManager;->M:I

    .line 208
    .line 209
    goto :goto_4

    .line 210
    :cond_10
    iput v1, p0, Landroidx/leanback/widget/GridLayoutManager;->U:I

    .line 211
    .line 212
    iput p4, p0, Landroidx/leanback/widget/GridLayoutManager;->M:I

    .line 213
    .line 214
    :goto_4
    if-ne p3, v4, :cond_11

    .line 215
    .line 216
    iget p3, p0, Landroidx/leanback/widget/GridLayoutManager;->M:I

    .line 217
    .line 218
    iget p4, p0, Landroidx/leanback/widget/GridLayoutManager;->U:I

    .line 219
    .line 220
    mul-int/2addr p3, p4

    .line 221
    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->S:I

    .line 222
    .line 223
    sub-int/2addr p4, v5

    .line 224
    mul-int/2addr p4, v1

    .line 225
    add-int/2addr p4, p3

    .line 226
    add-int/2addr p4, v0

    .line 227
    if-ge p4, p2, :cond_11

    .line 228
    .line 229
    move p2, p4

    .line 230
    :cond_11
    :goto_5
    iget p3, p0, Landroidx/leanback/widget/GridLayoutManager;->s:I

    .line 231
    .line 232
    if-nez p3, :cond_12

    .line 233
    .line 234
    invoke-virtual {p0, p1, p2}, Lm1/i0;->setMeasuredDimension(II)V

    .line 235
    .line 236
    .line 237
    goto :goto_6

    .line 238
    :cond_12
    invoke-virtual {p0, p2, p1}, Lm1/i0;->setMeasuredDimension(II)V

    .line 239
    .line 240
    .line 241
    :goto_6
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->C()V

    .line 242
    .line 243
    .line 244
    return-void
.end method

.method public onRequestChildFocus(Landroidx/recyclerview/widget/RecyclerView;Lm1/x0;Landroid/view/View;Landroid/view/View;)Z
    .locals 6

    .line 1
    iget p1, p0, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 2
    .line 3
    const p2, 0x8000

    .line 4
    .line 5
    .line 6
    and-int/2addr p1, p2

    .line 7
    const/4 v3, 0x1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-static {p3}, Landroidx/leanback/widget/GridLayoutManager;->p(Landroid/view/View;)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    const/4 p2, -0x1

    .line 16
    if-ne p1, p2, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    iget p1, p0, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 20
    .line 21
    and-int/lit8 p1, p1, 0x23

    .line 22
    .line 23
    if-nez p1, :cond_2

    .line 24
    .line 25
    const/4 v4, 0x0

    .line 26
    const/4 v5, 0x0

    .line 27
    move-object v0, p0

    .line 28
    move-object v1, p3

    .line 29
    move-object v2, p4

    .line 30
    invoke-virtual/range {v0 .. v5}, Landroidx/leanback/widget/GridLayoutManager;->O(Landroid/view/View;Landroid/view/View;ZII)V

    .line 31
    .line 32
    .line 33
    :cond_2
    :goto_0
    return v3
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5

    .line 1
    instance-of v0, p1, Landroidx/leanback/widget/M;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    check-cast p1, Landroidx/leanback/widget/M;

    .line 7
    .line 8
    iget v0, p1, Landroidx/leanback/widget/M;->b:I

    .line 9
    .line 10
    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->F:I

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->I:I

    .line 14
    .line 15
    iget-object p1, p1, Landroidx/leanback/widget/M;->e:Landroid/os/Bundle;

    .line 16
    .line 17
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->d0:LG2/b;

    .line 18
    .line 19
    iget-object v1, v0, LG2/b;->c:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v1, Lp/p;

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    invoke-virtual {v1}, Lp/p;->evictAll()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_1

    .line 43
    .line 44
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    check-cast v2, Ljava/lang/String;

    .line 49
    .line 50
    iget-object v3, v0, LG2/b;->c:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v3, Lp/p;

    .line 53
    .line 54
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    invoke-virtual {v3, v2, v4}, Lp/p;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    iget p1, p0, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 63
    .line 64
    or-int/lit16 p1, p1, 0x100

    .line 65
    .line 66
    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 67
    .line 68
    invoke-virtual {p0}, Lm1/i0;->requestLayout()V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 8

    .line 1
    new-instance v0, Landroidx/leanback/widget/M;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 7
    .line 8
    iput-object v1, v0, Landroidx/leanback/widget/M;->e:Landroid/os/Bundle;

    .line 9
    .line 10
    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->F:I

    .line 11
    .line 12
    iput v1, v0, Landroidx/leanback/widget/M;->b:I

    .line 13
    .line 14
    iget-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->d0:LG2/b;

    .line 15
    .line 16
    iget-object v2, v1, LG2/b;->c:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v2, Lp/p;

    .line 19
    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    invoke-virtual {v2}, Lp/p;->size()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-nez v2, :cond_0

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_0
    iget-object v2, v1, LG2/b;->c:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v2, Lp/p;

    .line 32
    .line 33
    invoke-virtual {v2}, Lp/p;->snapshot()Ljava/util/Map;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    new-instance v3, Landroid/os/Bundle;

    .line 38
    .line 39
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    if-eqz v4, :cond_2

    .line 55
    .line 56
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    check-cast v4, Ljava/util/Map$Entry;

    .line 61
    .line 62
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    check-cast v5, Ljava/lang/String;

    .line 67
    .line 68
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    check-cast v4, Landroid/util/SparseArray;

    .line 73
    .line 74
    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_1
    :goto_1
    const/4 v3, 0x0

    .line 79
    :cond_2
    invoke-virtual {p0}, Lm1/i0;->getChildCount()I

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    const/4 v4, 0x0

    .line 84
    :goto_2
    if-ge v4, v2, :cond_5

    .line 85
    .line 86
    invoke-virtual {p0, v4}, Lm1/i0;->getChildAt(I)Landroid/view/View;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    invoke-static {v5}, Landroidx/leanback/widget/GridLayoutManager;->p(Landroid/view/View;)I

    .line 91
    .line 92
    .line 93
    move-result v6

    .line 94
    const/4 v7, -0x1

    .line 95
    if-eq v6, v7, :cond_4

    .line 96
    .line 97
    iget v7, v1, LG2/b;->a:I

    .line 98
    .line 99
    if-eqz v7, :cond_4

    .line 100
    .line 101
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v6

    .line 105
    new-instance v7, Landroid/util/SparseArray;

    .line 106
    .line 107
    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v5, v7}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 111
    .line 112
    .line 113
    if-nez v3, :cond_3

    .line 114
    .line 115
    new-instance v3, Landroid/os/Bundle;

    .line 116
    .line 117
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 118
    .line 119
    .line 120
    :cond_3
    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 121
    .line 122
    .line 123
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_5
    iput-object v3, v0, Landroidx/leanback/widget/M;->e:Landroid/os/Bundle;

    .line 127
    .line 128
    return-object v0
.end method

.method public performAccessibilityAction(Lm1/p0;Lm1/x0;ILandroid/os/Bundle;)Z
    .locals 4

    .line 1
    iget p4, p0, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 2
    .line 3
    const/high16 v0, 0x20000

    .line 4
    .line 5
    and-int/2addr p4, v0

    .line 6
    const/4 v0, 0x1

    .line 7
    if-eqz p4, :cond_d

    .line 8
    .line 9
    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/GridLayoutManager;->K(Lm1/p0;Lm1/x0;)V

    .line 10
    .line 11
    .line 12
    iget p1, p0, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 13
    .line 14
    const/high16 p4, 0x40000

    .line 15
    .line 16
    and-int/2addr p1, p4

    .line 17
    const/4 p4, 0x0

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    move p1, v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move p1, p4

    .line 23
    :goto_0
    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->s:I

    .line 24
    .line 25
    const/16 v2, 0x2000

    .line 26
    .line 27
    const/16 v3, 0x1000

    .line 28
    .line 29
    if-nez v1, :cond_2

    .line 30
    .line 31
    sget-object v1, LN/h;->n:LN/h;

    .line 32
    .line 33
    invoke-virtual {v1}, LN/h;->getId()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-ne p3, v1, :cond_1

    .line 38
    .line 39
    if-eqz p1, :cond_3

    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_1
    sget-object v1, LN/h;->p:LN/h;

    .line 43
    .line 44
    invoke-virtual {v1}, LN/h;->getId()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-ne p3, v1, :cond_6

    .line 49
    .line 50
    if-eqz p1, :cond_5

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_2
    sget-object p1, LN/h;->m:LN/h;

    .line 54
    .line 55
    invoke-virtual {p1}, LN/h;->getId()I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-ne p3, p1, :cond_4

    .line 60
    .line 61
    :cond_3
    :goto_1
    move p3, v2

    .line 62
    goto :goto_3

    .line 63
    :cond_4
    sget-object p1, LN/h;->o:LN/h;

    .line 64
    .line 65
    invoke-virtual {p1}, LN/h;->getId()I

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    if-ne p3, p1, :cond_6

    .line 70
    .line 71
    :cond_5
    :goto_2
    move p3, v3

    .line 72
    :cond_6
    :goto_3
    iget p1, p0, Landroidx/leanback/widget/GridLayoutManager;->F:I

    .line 73
    .line 74
    if-nez p1, :cond_7

    .line 75
    .line 76
    if-ne p3, v2, :cond_7

    .line 77
    .line 78
    move v1, v0

    .line 79
    goto :goto_4

    .line 80
    :cond_7
    move v1, p4

    .line 81
    :goto_4
    invoke-virtual {p2}, Lm1/x0;->getItemCount()I

    .line 82
    .line 83
    .line 84
    move-result p2

    .line 85
    sub-int/2addr p2, v0

    .line 86
    if-ne p1, p2, :cond_8

    .line 87
    .line 88
    if-ne p3, v3, :cond_8

    .line 89
    .line 90
    move p1, v0

    .line 91
    goto :goto_5

    .line 92
    :cond_8
    move p1, p4

    .line 93
    :goto_5
    if-nez v1, :cond_c

    .line 94
    .line 95
    if-eqz p1, :cond_9

    .line 96
    .line 97
    goto :goto_6

    .line 98
    :cond_9
    if-eq p3, v3, :cond_b

    .line 99
    .line 100
    if-eq p3, v2, :cond_a

    .line 101
    .line 102
    goto :goto_7

    .line 103
    :cond_a
    invoke-virtual {p0, p4}, Landroidx/leanback/widget/GridLayoutManager;->F(Z)V

    .line 104
    .line 105
    .line 106
    const/4 p1, -0x1

    .line 107
    invoke-virtual {p0, p1, p4}, Landroidx/leanback/widget/GridLayoutManager;->H(IZ)I

    .line 108
    .line 109
    .line 110
    goto :goto_7

    .line 111
    :cond_b
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/GridLayoutManager;->F(Z)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0, v0, p4}, Landroidx/leanback/widget/GridLayoutManager;->H(IZ)I

    .line 115
    .line 116
    .line 117
    goto :goto_7

    .line 118
    :cond_c
    :goto_6
    invoke-static {v3}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    iget-object p2, p0, Landroidx/leanback/widget/GridLayoutManager;->r:Landroidx/leanback/widget/t;

    .line 123
    .line 124
    invoke-virtual {p2, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 125
    .line 126
    .line 127
    iget-object p2, p0, Landroidx/leanback/widget/GridLayoutManager;->r:Landroidx/leanback/widget/t;

    .line 128
    .line 129
    invoke-virtual {p2, p2, p1}, Landroid/view/ViewGroup;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 130
    .line 131
    .line 132
    :goto_7
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->C()V

    .line 133
    .line 134
    .line 135
    :cond_d
    return v0
.end method

.method public final q(Landroid/view/View;)I
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/leanback/widget/J;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lm1/i0;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 12
    .line 13
    add-int/2addr p1, v1

    .line 14
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 15
    .line 16
    add-int/2addr p1, v0

    .line 17
    return p1
.end method

.method public final r(Landroid/view/View;)I
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/leanback/widget/J;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lm1/i0;->getDecoratedMeasuredWidth(Landroid/view/View;)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 12
    .line 13
    add-int/2addr p1, v1

    .line 14
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 15
    .line 16
    add-int/2addr p1, v0

    .line 17
    return p1
.end method

.method public removeAndRecycleAllViews(Lm1/p0;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lm1/i0;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 6
    .line 7
    :goto_0
    if-ltz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, v0, p1}, Lm1/i0;->removeAndRecycleViewAt(ILm1/p0;)V

    .line 10
    .line 11
    .line 12
    add-int/lit8 v0, v0, -0x1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final s(I)I
    .locals 9

    .line 1
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->s:I

    .line 2
    .line 3
    const/16 v1, 0x82

    .line 4
    .line 5
    const/16 v2, 0x42

    .line 6
    .line 7
    const/16 v3, 0x21

    .line 8
    .line 9
    const/4 v4, 0x2

    .line 10
    const/4 v5, 0x0

    .line 11
    const/4 v6, 0x3

    .line 12
    const/4 v7, 0x1

    .line 13
    const/16 v8, 0x11

    .line 14
    .line 15
    if-nez v0, :cond_6

    .line 16
    .line 17
    const/high16 v0, 0x40000

    .line 18
    .line 19
    if-eq p1, v8, :cond_4

    .line 20
    .line 21
    if-eq p1, v3, :cond_3

    .line 22
    .line 23
    if-eq p1, v2, :cond_1

    .line 24
    .line 25
    if-eq p1, v1, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    return v6

    .line 29
    :cond_1
    iget p1, p0, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 30
    .line 31
    and-int/2addr p1, v0

    .line 32
    if-nez p1, :cond_2

    .line 33
    .line 34
    return v7

    .line 35
    :cond_2
    return v5

    .line 36
    :cond_3
    return v4

    .line 37
    :cond_4
    iget p1, p0, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 38
    .line 39
    and-int/2addr p1, v0

    .line 40
    if-nez p1, :cond_5

    .line 41
    .line 42
    return v5

    .line 43
    :cond_5
    return v7

    .line 44
    :cond_6
    if-ne v0, v7, :cond_d

    .line 45
    .line 46
    const/high16 v0, 0x80000

    .line 47
    .line 48
    if-eq p1, v8, :cond_b

    .line 49
    .line 50
    if-eq p1, v3, :cond_a

    .line 51
    .line 52
    if-eq p1, v2, :cond_8

    .line 53
    .line 54
    if-eq p1, v1, :cond_7

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_7
    return v7

    .line 58
    :cond_8
    iget p1, p0, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 59
    .line 60
    and-int/2addr p1, v0

    .line 61
    if-nez p1, :cond_9

    .line 62
    .line 63
    return v6

    .line 64
    :cond_9
    return v4

    .line 65
    :cond_a
    return v5

    .line 66
    :cond_b
    iget p1, p0, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 67
    .line 68
    and-int/2addr p1, v0

    .line 69
    if-nez p1, :cond_c

    .line 70
    .line 71
    return v4

    .line 72
    :cond_c
    return v6

    .line 73
    :cond_d
    :goto_0
    return v8
.end method

.method public scrollHorizontallyBy(ILm1/p0;Lm1/x0;)I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 2
    .line 3
    and-int/lit16 v0, v0, 0x200

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->W:Landroidx/leanback/widget/E;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0, p2, p3}, Landroidx/leanback/widget/GridLayoutManager;->K(Lm1/p0;Lm1/x0;)V

    .line 12
    .line 13
    .line 14
    iget p2, p0, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 15
    .line 16
    and-int/lit8 p2, p2, -0x4

    .line 17
    .line 18
    or-int/lit8 p2, p2, 0x2

    .line 19
    .line 20
    iput p2, p0, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 21
    .line 22
    iget p2, p0, Landroidx/leanback/widget/GridLayoutManager;->s:I

    .line 23
    .line 24
    if-nez p2, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/GridLayoutManager;->L(I)I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/GridLayoutManager;->M(I)I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    :goto_0
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->C()V

    .line 36
    .line 37
    .line 38
    iget p2, p0, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 39
    .line 40
    and-int/lit8 p2, p2, -0x4

    .line 41
    .line 42
    iput p2, p0, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 43
    .line 44
    return p1

    .line 45
    :cond_1
    const/4 p1, 0x0

    .line 46
    return p1
.end method

.method public scrollToPosition(I)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Landroidx/leanback/widget/GridLayoutManager;->Q(IZ)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public scrollVerticallyBy(ILm1/p0;Lm1/x0;)I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 2
    .line 3
    and-int/lit16 v1, v0, 0x200

    .line 4
    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->W:Landroidx/leanback/widget/E;

    .line 8
    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    and-int/lit8 v0, v0, -0x4

    .line 12
    .line 13
    or-int/lit8 v0, v0, 0x2

    .line 14
    .line 15
    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 16
    .line 17
    invoke-virtual {p0, p2, p3}, Landroidx/leanback/widget/GridLayoutManager;->K(Lm1/p0;Lm1/x0;)V

    .line 18
    .line 19
    .line 20
    iget p2, p0, Landroidx/leanback/widget/GridLayoutManager;->s:I

    .line 21
    .line 22
    const/4 p3, 0x1

    .line 23
    if-ne p2, p3, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/GridLayoutManager;->L(I)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/GridLayoutManager;->M(I)I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    :goto_0
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->C()V

    .line 35
    .line 36
    .line 37
    iget p2, p0, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 38
    .line 39
    and-int/lit8 p2, p2, -0x4

    .line 40
    .line 41
    iput p2, p0, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 42
    .line 43
    return p1

    .line 44
    :cond_1
    const/4 p1, 0x0

    .line 45
    return p1
.end method

.method public setFocusOutAllowed(ZZ)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 2
    .line 3
    and-int/lit16 v0, v0, -0x1801

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    const/16 p1, 0x800

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move p1, v1

    .line 12
    :goto_0
    or-int/2addr p1, v0

    .line 13
    if-eqz p2, :cond_1

    .line 14
    .line 15
    const/16 v1, 0x1000

    .line 16
    .line 17
    :cond_1
    or-int/2addr p1, v1

    .line 18
    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 19
    .line 20
    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->s:I

    .line 8
    .line 9
    invoke-static {p0, p1}, Lm1/L;->createOrientationHelper(Lm1/i0;I)Lm1/L;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->t:Lm1/L;

    .line 14
    .line 15
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->Y:Landroidx/leanback/widget/C1;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Landroidx/leanback/widget/C1;->setOrientation(I)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->Z:Landroidx/leanback/widget/U;

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Landroidx/leanback/widget/U;->setOrientation(I)V

    .line 23
    .line 24
    .line 25
    iget p1, p0, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 26
    .line 27
    or-int/lit16 p1, p1, 0x100

    .line 28
    .line 29
    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 30
    .line 31
    return-void
.end method

.method public smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Lm1/x0;I)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p3, p1}, Landroidx/leanback/widget/GridLayoutManager;->Q(IZ)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public startSmoothScroll(Lm1/w0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->G:Landroidx/leanback/widget/I;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    iput-boolean v1, v0, Landroidx/leanback/widget/I;->q:Z

    .line 7
    .line 8
    :cond_0
    invoke-super {p0, p1}, Lm1/i0;->startSmoothScroll(Lm1/w0;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lm1/w0;->isRunning()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    instance-of v0, p1, Landroidx/leanback/widget/I;

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    check-cast p1, Landroidx/leanback/widget/I;

    .line 23
    .line 24
    iput-object p1, p0, Landroidx/leanback/widget/GridLayoutManager;->G:Landroidx/leanback/widget/I;

    .line 25
    .line 26
    instance-of v0, p1, Landroidx/leanback/widget/K;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    check-cast p1, Landroidx/leanback/widget/K;

    .line 31
    .line 32
    iput-object p1, p0, Landroidx/leanback/widget/GridLayoutManager;->H:Landroidx/leanback/widget/K;

    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    iput-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->H:Landroidx/leanback/widget/K;

    .line 36
    .line 37
    return-void

    .line 38
    :cond_2
    iput-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->G:Landroidx/leanback/widget/I;

    .line 39
    .line 40
    iput-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->H:Landroidx/leanback/widget/K;

    .line 41
    .line 42
    return-void
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final t(I)I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->M:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return v0

    .line 6
    :cond_0
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->N:[I

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    return p1

    .line 12
    :cond_1
    aget p1, v0, p1

    .line 13
    .line 14
    return p1
.end method

.method public final u(I)I
    .locals 4

    .line 1
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 2
    .line 3
    const/high16 v1, 0x80000

    .line 4
    .line 5
    and-int/2addr v0, v1

    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->U:I

    .line 10
    .line 11
    add-int/lit8 v0, v0, -0x1

    .line 12
    .line 13
    :goto_0
    if-le v0, p1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/GridLayoutManager;->t(I)I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    iget v3, p0, Landroidx/leanback/widget/GridLayoutManager;->S:I

    .line 20
    .line 21
    add-int/2addr v2, v3

    .line 22
    add-int/2addr v1, v2

    .line 23
    add-int/lit8 v0, v0, -0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    return v1

    .line 27
    :cond_1
    move v0, v1

    .line 28
    :goto_1
    if-ge v1, p1, :cond_2

    .line 29
    .line 30
    invoke-virtual {p0, v1}, Landroidx/leanback/widget/GridLayoutManager;->t(I)I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    iget v3, p0, Landroidx/leanback/widget/GridLayoutManager;->S:I

    .line 35
    .line 36
    add-int/2addr v2, v3

    .line 37
    add-int/2addr v0, v2

    .line 38
    add-int/lit8 v1, v1, 0x1

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_2
    return v0
.end method

.method public final v(Landroid/view/View;Landroid/view/View;[I)Z
    .locals 11

    .line 1
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->X:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->Y:Landroidx/leanback/widget/C1;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x2

    .line 7
    const/4 v4, 0x1

    .line 8
    if-eq v0, v4, :cond_4

    .line 9
    .line 10
    if-eq v0, v3, :cond_4

    .line 11
    .line 12
    invoke-virtual {v1}, Landroidx/leanback/widget/C1;->mainAxis()Landroidx/leanback/widget/B1;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->s:I

    .line 17
    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Landroidx/leanback/widget/J;

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    iget v5, v1, Landroidx/leanback/widget/J;->e:I

    .line 34
    .line 35
    add-int/2addr v3, v5

    .line 36
    iget v1, v1, Landroidx/leanback/widget/J;->i:I

    .line 37
    .line 38
    :goto_0
    add-int/2addr v3, v1

    .line 39
    goto :goto_1

    .line 40
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Landroidx/leanback/widget/J;

    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    iget v5, v1, Landroidx/leanback/widget/J;->f:I

    .line 54
    .line 55
    add-int/2addr v3, v5

    .line 56
    iget v1, v1, Landroidx/leanback/widget/J;->j:I

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :goto_1
    invoke-virtual {v0, v3}, Landroidx/leanback/widget/B1;->getScroll(I)I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz p2, :cond_1

    .line 64
    .line 65
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    check-cast p2, Landroidx/leanback/widget/J;

    .line 70
    .line 71
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    :cond_1
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/GridLayoutManager;->w(Landroid/view/View;)I

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    if-nez v0, :cond_3

    .line 79
    .line 80
    if-eqz p1, :cond_2

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_2
    aput v2, p3, v2

    .line 84
    .line 85
    aput v2, p3, v4

    .line 86
    .line 87
    return v2

    .line 88
    :cond_3
    :goto_2
    aput v0, p3, v2

    .line 89
    .line 90
    aput p1, p3, v4

    .line 91
    .line 92
    return v4

    .line 93
    :cond_4
    invoke-static {p1}, Landroidx/leanback/widget/GridLayoutManager;->p(Landroid/view/View;)I

    .line 94
    .line 95
    .line 96
    move-result p2

    .line 97
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->t:Lm1/L;

    .line 98
    .line 99
    invoke-virtual {v0, p1}, Lm1/L;->getDecoratedStart(Landroid/view/View;)I

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    iget-object v5, p0, Landroidx/leanback/widget/GridLayoutManager;->t:Lm1/L;

    .line 104
    .line 105
    invoke-virtual {v5, p1}, Lm1/L;->getDecoratedEnd(Landroid/view/View;)I

    .line 106
    .line 107
    .line 108
    move-result v5

    .line 109
    invoke-virtual {v1}, Landroidx/leanback/widget/C1;->mainAxis()Landroidx/leanback/widget/B1;

    .line 110
    .line 111
    .line 112
    move-result-object v6

    .line 113
    invoke-virtual {v6}, Landroidx/leanback/widget/B1;->getPaddingMin()I

    .line 114
    .line 115
    .line 116
    move-result v6

    .line 117
    invoke-virtual {v1}, Landroidx/leanback/widget/C1;->mainAxis()Landroidx/leanback/widget/B1;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-virtual {v1}, Landroidx/leanback/widget/B1;->getClientSize()I

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    iget-object v7, p0, Landroidx/leanback/widget/GridLayoutManager;->W:Landroidx/leanback/widget/E;

    .line 126
    .line 127
    invoke-virtual {v7, p2}, Landroidx/leanback/widget/E;->getRowIndex(I)I

    .line 128
    .line 129
    .line 130
    move-result v7

    .line 131
    const/4 v8, 0x0

    .line 132
    if-ge v0, v6, :cond_a

    .line 133
    .line 134
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->X:I

    .line 135
    .line 136
    if-ne v0, v3, :cond_8

    .line 137
    .line 138
    move-object v0, p1

    .line 139
    :goto_3
    iget-object v9, p0, Landroidx/leanback/widget/GridLayoutManager;->W:Landroidx/leanback/widget/E;

    .line 140
    .line 141
    invoke-virtual {v9}, Landroidx/leanback/widget/E;->prependOneColumnVisibleItems()Z

    .line 142
    .line 143
    .line 144
    move-result v9

    .line 145
    if-eqz v9, :cond_7

    .line 146
    .line 147
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->W:Landroidx/leanback/widget/E;

    .line 148
    .line 149
    invoke-virtual {v0}, Landroidx/leanback/widget/E;->getFirstVisibleIndex()I

    .line 150
    .line 151
    .line 152
    move-result v9

    .line 153
    invoke-virtual {v0, v9, p2}, Landroidx/leanback/widget/E;->getItemPositionsInRows(II)[Lp/l;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    aget-object v0, v0, v7

    .line 158
    .line 159
    invoke-virtual {v0, v2}, Lp/l;->get(I)I

    .line 160
    .line 161
    .line 162
    move-result v9

    .line 163
    invoke-virtual {p0, v9}, Lm1/i0;->findViewByPosition(I)Landroid/view/View;

    .line 164
    .line 165
    .line 166
    move-result-object v9

    .line 167
    iget-object v10, p0, Landroidx/leanback/widget/GridLayoutManager;->t:Lm1/L;

    .line 168
    .line 169
    invoke-virtual {v10, v9}, Lm1/L;->getDecoratedStart(Landroid/view/View;)I

    .line 170
    .line 171
    .line 172
    move-result v10

    .line 173
    sub-int v10, v5, v10

    .line 174
    .line 175
    if-le v10, v1, :cond_6

    .line 176
    .line 177
    invoke-virtual {v0}, Lp/l;->size()I

    .line 178
    .line 179
    .line 180
    move-result p2

    .line 181
    if-le p2, v3, :cond_5

    .line 182
    .line 183
    invoke-virtual {v0, v3}, Lp/l;->get(I)I

    .line 184
    .line 185
    .line 186
    move-result p2

    .line 187
    invoke-virtual {p0, p2}, Lm1/i0;->findViewByPosition(I)Landroid/view/View;

    .line 188
    .line 189
    .line 190
    move-result-object p2

    .line 191
    move-object v3, v8

    .line 192
    move-object v8, p2

    .line 193
    goto :goto_5

    .line 194
    :cond_5
    move-object v3, v8

    .line 195
    move-object v8, v9

    .line 196
    goto :goto_5

    .line 197
    :cond_6
    move-object v0, v9

    .line 198
    goto :goto_3

    .line 199
    :cond_7
    move-object v3, v8

    .line 200
    move-object v8, v0

    .line 201
    goto :goto_5

    .line 202
    :cond_8
    move-object v3, v8

    .line 203
    :cond_9
    move-object v8, p1

    .line 204
    goto :goto_5

    .line 205
    :cond_a
    add-int v9, v1, v6

    .line 206
    .line 207
    if-le v5, v9, :cond_e

    .line 208
    .line 209
    iget v5, p0, Landroidx/leanback/widget/GridLayoutManager;->X:I

    .line 210
    .line 211
    if-ne v5, v3, :cond_d

    .line 212
    .line 213
    :cond_b
    iget-object v3, p0, Landroidx/leanback/widget/GridLayoutManager;->W:Landroidx/leanback/widget/E;

    .line 214
    .line 215
    invoke-virtual {v3}, Landroidx/leanback/widget/E;->getLastVisibleIndex()I

    .line 216
    .line 217
    .line 218
    move-result v5

    .line 219
    invoke-virtual {v3, p2, v5}, Landroidx/leanback/widget/E;->getItemPositionsInRows(II)[Lp/l;

    .line 220
    .line 221
    .line 222
    move-result-object v3

    .line 223
    aget-object v3, v3, v7

    .line 224
    .line 225
    invoke-virtual {v3}, Lp/l;->size()I

    .line 226
    .line 227
    .line 228
    move-result v5

    .line 229
    sub-int/2addr v5, v4

    .line 230
    invoke-virtual {v3, v5}, Lp/l;->get(I)I

    .line 231
    .line 232
    .line 233
    move-result v3

    .line 234
    invoke-virtual {p0, v3}, Lm1/i0;->findViewByPosition(I)Landroid/view/View;

    .line 235
    .line 236
    .line 237
    move-result-object v3

    .line 238
    iget-object v5, p0, Landroidx/leanback/widget/GridLayoutManager;->t:Lm1/L;

    .line 239
    .line 240
    invoke-virtual {v5, v3}, Lm1/L;->getDecoratedEnd(Landroid/view/View;)I

    .line 241
    .line 242
    .line 243
    move-result v5

    .line 244
    sub-int/2addr v5, v0

    .line 245
    if-le v5, v1, :cond_c

    .line 246
    .line 247
    move-object v3, v8

    .line 248
    goto :goto_4

    .line 249
    :cond_c
    iget-object v5, p0, Landroidx/leanback/widget/GridLayoutManager;->W:Landroidx/leanback/widget/E;

    .line 250
    .line 251
    invoke-virtual {v5}, Landroidx/leanback/widget/E;->appendOneColumnVisibleItems()Z

    .line 252
    .line 253
    .line 254
    move-result v5

    .line 255
    if-nez v5, :cond_b

    .line 256
    .line 257
    :goto_4
    if-eqz v3, :cond_9

    .line 258
    .line 259
    goto :goto_5

    .line 260
    :cond_d
    move-object v3, p1

    .line 261
    goto :goto_5

    .line 262
    :cond_e
    move-object v3, v8

    .line 263
    :goto_5
    if-eqz v8, :cond_f

    .line 264
    .line 265
    iget-object p2, p0, Landroidx/leanback/widget/GridLayoutManager;->t:Lm1/L;

    .line 266
    .line 267
    invoke-virtual {p2, v8}, Lm1/L;->getDecoratedStart(Landroid/view/View;)I

    .line 268
    .line 269
    .line 270
    move-result p2

    .line 271
    :goto_6
    sub-int/2addr p2, v6

    .line 272
    goto :goto_7

    .line 273
    :cond_f
    if-eqz v3, :cond_10

    .line 274
    .line 275
    iget-object p2, p0, Landroidx/leanback/widget/GridLayoutManager;->t:Lm1/L;

    .line 276
    .line 277
    invoke-virtual {p2, v3}, Lm1/L;->getDecoratedEnd(Landroid/view/View;)I

    .line 278
    .line 279
    .line 280
    move-result p2

    .line 281
    add-int/2addr v6, v1

    .line 282
    goto :goto_6

    .line 283
    :cond_10
    move p2, v2

    .line 284
    :goto_7
    if-eqz v8, :cond_11

    .line 285
    .line 286
    move-object p1, v8

    .line 287
    goto :goto_8

    .line 288
    :cond_11
    if-eqz v3, :cond_12

    .line 289
    .line 290
    move-object p1, v3

    .line 291
    :cond_12
    :goto_8
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/GridLayoutManager;->w(Landroid/view/View;)I

    .line 292
    .line 293
    .line 294
    move-result p1

    .line 295
    if-nez p2, :cond_14

    .line 296
    .line 297
    if-eqz p1, :cond_13

    .line 298
    .line 299
    goto :goto_9

    .line 300
    :cond_13
    return v2

    .line 301
    :cond_14
    :goto_9
    aput p2, p3, v2

    .line 302
    .line 303
    aput p1, p3, v4

    .line 304
    .line 305
    return v4
.end method

.method public final w(Landroid/view/View;)I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->s:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroidx/leanback/widget/J;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    iget v1, v0, Landroidx/leanback/widget/J;->f:I

    .line 19
    .line 20
    add-int/2addr p1, v1

    .line 21
    iget v0, v0, Landroidx/leanback/widget/J;->j:I

    .line 22
    .line 23
    :goto_0
    add-int/2addr p1, v0

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Landroidx/leanback/widget/J;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    iget v1, v0, Landroidx/leanback/widget/J;->e:I

    .line 39
    .line 40
    add-int/2addr p1, v1

    .line 41
    iget v0, v0, Landroidx/leanback/widget/J;->i:I

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :goto_1
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->Y:Landroidx/leanback/widget/C1;

    .line 45
    .line 46
    invoke-virtual {v0}, Landroidx/leanback/widget/C1;->secondAxis()Landroidx/leanback/widget/B1;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0, p1}, Landroidx/leanback/widget/B1;->getScroll(I)I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    return p1
.end method

.method public final x()I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 2
    .line 3
    const/high16 v1, 0x80000

    .line 4
    .line 5
    and-int/2addr v0, v1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->U:I

    .line 11
    .line 12
    add-int/lit8 v0, v0, -0x1

    .line 13
    .line 14
    :goto_0
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/GridLayoutManager;->u(I)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/GridLayoutManager;->t(I)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    add-int/2addr v0, v1

    .line 23
    return v0
.end method

.method public final y(I)Landroid/view/View;
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->B:Lm1/p0;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lm1/p0;->getViewForPosition(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroidx/leanback/widget/J;

    .line 12
    .line 13
    iget-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->r:Landroidx/leanback/widget/t;

    .line 14
    .line 15
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Lm1/B0;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    instance-of v2, v1, Landroidx/leanback/widget/y;

    .line 20
    .line 21
    const-class v3, Landroidx/leanback/widget/W;

    .line 22
    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    move-object v2, v1

    .line 26
    check-cast v2, Landroidx/leanback/widget/y;

    .line 27
    .line 28
    invoke-interface {v2, v3}, Landroidx/leanback/widget/y;->getFacet(Ljava/lang/Class;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v2, 0x0

    .line 34
    :goto_0
    if-nez v2, :cond_1

    .line 35
    .line 36
    iget-object v4, p0, Landroidx/leanback/widget/GridLayoutManager;->e0:Landroidx/leanback/widget/d0;

    .line 37
    .line 38
    if-eqz v4, :cond_1

    .line 39
    .line 40
    invoke-virtual {v1}, Lm1/B0;->getItemViewType()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    invoke-virtual {v4, v1}, Landroidx/leanback/widget/d0;->getFacetProvider(I)Landroidx/leanback/widget/y;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    if-eqz v1, :cond_1

    .line 49
    .line 50
    invoke-interface {v1, v3}, Landroidx/leanback/widget/y;->getFacet(Ljava/lang/Class;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    :cond_1
    if-nez v2, :cond_2

    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    return-object p1

    .line 60
    :cond_2
    new-instance p1, Ljava/lang/ClassCastException;

    .line 61
    .line 62
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 63
    .line 64
    .line 65
    throw p1
.end method

.method public final z()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lm1/i0;->getItemCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object v2, p0, Landroidx/leanback/widget/GridLayoutManager;->r:Landroidx/leanback/widget/t;

    .line 9
    .line 10
    sub-int/2addr v0, v1

    .line 11
    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Lm1/B0;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    return v0

    .line 20
    :cond_1
    :goto_0
    return v1
.end method
