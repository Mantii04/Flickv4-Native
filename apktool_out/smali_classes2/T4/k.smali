.class public final LT4/k;
.super Lm1/d0;
.source "SourceFile"


# instance fields
.field public final a:I

.field public b:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-direct {p0, p1, v0}, LT4/k;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lm1/d0;-><init>()V

    .line 3
    iput p1, p0, LT4/k;->a:I

    .line 4
    iput p2, p0, LT4/k;->b:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Lm1/x0;)V
    .locals 5

    .line 1
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Lm1/B0;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p2}, Lm1/B0;->getAdapterPosition()I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    invoke-virtual {p4}, Lm1/x0;->getItemCount()I

    .line 10
    .line 11
    .line 12
    move-result p4

    .line 13
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Lm1/i0;

    .line 14
    .line 15
    .line 16
    move-result-object p3

    .line 17
    iget v0, p0, LT4/k;->b:I

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    const/4 v2, -0x1

    .line 21
    const/4 v3, 0x2

    .line 22
    const/4 v4, 0x0

    .line 23
    if-ne v0, v2, :cond_2

    .line 24
    .line 25
    instance-of v0, p3, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    move v0, v3

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {p3}, Lm1/i0;->canScrollHorizontally()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    move v0, v4

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    move v0, v1

    .line 40
    :goto_0
    iput v0, p0, LT4/k;->b:I

    .line 41
    .line 42
    :cond_2
    iget v0, p0, LT4/k;->b:I

    .line 43
    .line 44
    iget v2, p0, LT4/k;->a:I

    .line 45
    .line 46
    if-eqz v0, :cond_9

    .line 47
    .line 48
    if-eq v0, v1, :cond_7

    .line 49
    .line 50
    if-eq v0, v3, :cond_3

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_3
    instance-of v0, p3, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 54
    .line 55
    if-eqz v0, :cond_6

    .line 56
    .line 57
    check-cast p3, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 58
    .line 59
    invoke-virtual {p3}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    .line 60
    .line 61
    .line 62
    move-result p3

    .line 63
    div-int/2addr p4, p3

    .line 64
    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 65
    .line 66
    rem-int v0, p2, p3

    .line 67
    .line 68
    add-int/lit8 v3, p3, -0x1

    .line 69
    .line 70
    if-ne v0, v3, :cond_4

    .line 71
    .line 72
    move v0, v2

    .line 73
    goto :goto_1

    .line 74
    :cond_4
    move v0, v4

    .line 75
    :goto_1
    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 76
    .line 77
    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 78
    .line 79
    div-int/2addr p2, p3

    .line 80
    sub-int/2addr p4, v1

    .line 81
    if-ne p2, p4, :cond_5

    .line 82
    .line 83
    move v4, v2

    .line 84
    :cond_5
    iput v4, p1, Landroid/graphics/Rect;->bottom:I

    .line 85
    .line 86
    :cond_6
    :goto_2
    return-void

    .line 87
    :cond_7
    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 88
    .line 89
    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 90
    .line 91
    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 92
    .line 93
    sub-int/2addr p4, v1

    .line 94
    if-ne p2, p4, :cond_8

    .line 95
    .line 96
    move v4, v2

    .line 97
    :cond_8
    iput v4, p1, Landroid/graphics/Rect;->bottom:I

    .line 98
    .line 99
    return-void

    .line 100
    :cond_9
    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 101
    .line 102
    sub-int/2addr p4, v1

    .line 103
    if-ne p2, p4, :cond_a

    .line 104
    .line 105
    move v4, v2

    .line 106
    :cond_a
    iput v4, p1, Landroid/graphics/Rect;->right:I

    .line 107
    .line 108
    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 109
    .line 110
    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 111
    .line 112
    return-void
.end method
