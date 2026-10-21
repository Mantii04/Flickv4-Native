.class public final Ll/k0;
.super Ll/l1;
.source "SourceFile"

# interfaces
.implements Ll/n0;


# instance fields
.field public M:Ljava/lang/CharSequence;

.field public N:Landroid/widget/ListAdapter;

.field public final O:Landroid/graphics/Rect;

.field public P:I

.field public final synthetic Q:Ll/o0;


# direct methods
.method public constructor <init>(Ll/o0;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Ll/k0;->Q:Ll/o0;

    .line 2
    .line 3
    invoke-direct {p0, p2, p3, p4}, Ll/l1;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    .line 5
    .line 6
    new-instance p2, Landroid/graphics/Rect;

    .line 7
    .line 8
    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Ll/k0;->O:Landroid/graphics/Rect;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Ll/l1;->setAnchorView(Landroid/view/View;)V

    .line 14
    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    invoke-virtual {p0, p1}, Ll/l1;->setModal(Z)V

    .line 18
    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    invoke-virtual {p0, p1}, Ll/l1;->setPromptPosition(I)V

    .line 22
    .line 23
    .line 24
    new-instance p1, Ll/h0;

    .line 25
    .line 26
    invoke-direct {p1, p0}, Ll/h0;-><init>(Ll/k0;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p1}, Ll/l1;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public static synthetic b(Ll/k0;)V
    .locals 0

    .line 1
    invoke-super {p0}, Ll/l1;->show()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final c()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Ll/l1;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Ll/k0;->Q:Ll/o0;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v2, v1, Ll/o0;->q:Landroid/graphics/Rect;

    .line 10
    .line 11
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 12
    .line 13
    .line 14
    invoke-static {v1}, Ll/z2;->isLayoutRtl(Landroid/view/View;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object v0, v1, Ll/o0;->q:Landroid/graphics/Rect;

    .line 21
    .line 22
    iget v0, v0, Landroid/graphics/Rect;->right:I

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object v0, v1, Ll/o0;->q:Landroid/graphics/Rect;

    .line 26
    .line 27
    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 28
    .line 29
    neg-int v0, v0

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iget-object v0, v1, Ll/o0;->q:Landroid/graphics/Rect;

    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 35
    .line 36
    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 37
    .line 38
    move v0, v2

    .line 39
    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    iget v5, v1, Ll/o0;->p:I

    .line 52
    .line 53
    const/4 v6, -0x2

    .line 54
    if-ne v5, v6, :cond_3

    .line 55
    .line 56
    iget-object v5, p0, Ll/k0;->N:Landroid/widget/ListAdapter;

    .line 57
    .line 58
    check-cast v5, Landroid/widget/SpinnerAdapter;

    .line 59
    .line 60
    invoke-virtual {p0}, Ll/l1;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    invoke-virtual {v1, v5, v6}, Ll/o0;->a(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 81
    .line 82
    iget-object v7, v1, Ll/o0;->q:Landroid/graphics/Rect;

    .line 83
    .line 84
    iget v8, v7, Landroid/graphics/Rect;->left:I

    .line 85
    .line 86
    sub-int/2addr v6, v8

    .line 87
    iget v7, v7, Landroid/graphics/Rect;->right:I

    .line 88
    .line 89
    sub-int/2addr v6, v7

    .line 90
    if-le v5, v6, :cond_2

    .line 91
    .line 92
    move v5, v6

    .line 93
    :cond_2
    sub-int v6, v4, v2

    .line 94
    .line 95
    sub-int/2addr v6, v3

    .line 96
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    .line 97
    .line 98
    .line 99
    move-result v5

    .line 100
    invoke-virtual {p0, v5}, Ll/l1;->setContentWidth(I)V

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_3
    const/4 v6, -0x1

    .line 105
    if-ne v5, v6, :cond_4

    .line 106
    .line 107
    sub-int v5, v4, v2

    .line 108
    .line 109
    sub-int/2addr v5, v3

    .line 110
    invoke-virtual {p0, v5}, Ll/l1;->setContentWidth(I)V

    .line 111
    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_4
    invoke-virtual {p0, v5}, Ll/l1;->setContentWidth(I)V

    .line 115
    .line 116
    .line 117
    :goto_1
    invoke-static {v1}, Ll/z2;->isLayoutRtl(Landroid/view/View;)Z

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    if-eqz v1, :cond_5

    .line 122
    .line 123
    sub-int/2addr v4, v3

    .line 124
    invoke-virtual {p0}, Ll/l1;->getWidth()I

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    sub-int/2addr v4, v1

    .line 129
    invoke-virtual {p0}, Ll/k0;->getHorizontalOriginalOffset()I

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    sub-int/2addr v4, v1

    .line 134
    add-int/2addr v4, v0

    .line 135
    goto :goto_2

    .line 136
    :cond_5
    invoke-virtual {p0}, Ll/k0;->getHorizontalOriginalOffset()I

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    add-int/2addr v1, v2

    .line 141
    add-int v4, v1, v0

    .line 142
    .line 143
    :goto_2
    invoke-virtual {p0, v4}, Ll/l1;->setHorizontalOffset(I)V

    .line 144
    .line 145
    .line 146
    return-void
.end method

.method public getHintText()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Ll/k0;->M:Ljava/lang/CharSequence;

    .line 2
    .line 3
    return-object v0
.end method

.method public getHorizontalOriginalOffset()I
    .locals 1

    .line 1
    iget v0, p0, Ll/k0;->P:I

    .line 2
    .line 3
    return v0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Ll/l1;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ll/k0;->N:Landroid/widget/ListAdapter;

    .line 5
    .line 6
    return-void
.end method

.method public setHorizontalOriginalOffset(I)V
    .locals 0

    .line 1
    iput p1, p0, Ll/k0;->P:I

    .line 2
    .line 3
    return-void
.end method

.method public setPromptText(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ll/k0;->M:Ljava/lang/CharSequence;

    .line 2
    .line 3
    return-void
.end method

.method public show(II)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ll/l1;->isShowing()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Ll/k0;->c()V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    invoke-virtual {p0, v1}, Ll/l1;->setInputMethodMode(I)V

    .line 10
    .line 11
    .line 12
    invoke-super {p0}, Ll/l1;->show()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Ll/l1;->getListView()Landroid/widget/ListView;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const/4 v2, 0x1

    .line 20
    invoke-virtual {v1, v2}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 21
    .line 22
    .line 23
    invoke-static {v1, p1}, Ll/d0;->d(Landroid/view/View;I)V

    .line 24
    .line 25
    .line 26
    invoke-static {v1, p2}, Ll/d0;->c(Landroid/view/View;I)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Ll/k0;->Q:Ll/o0;

    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    invoke-virtual {p0, p2}, Ll/l1;->setSelection(I)V

    .line 36
    .line 37
    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    if-eqz p1, :cond_1

    .line 46
    .line 47
    new-instance p2, Ll/i0;

    .line 48
    .line 49
    invoke-direct {p2, p0}, Ll/i0;-><init>(Ll/k0;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 53
    .line 54
    .line 55
    new-instance p1, Ll/j0;

    .line 56
    .line 57
    invoke-direct {p1, p0, p2}, Ll/j0;-><init>(Ll/k0;Ll/i0;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, p1}, Ll/l1;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 61
    .line 62
    .line 63
    :cond_1
    :goto_0
    return-void
.end method
