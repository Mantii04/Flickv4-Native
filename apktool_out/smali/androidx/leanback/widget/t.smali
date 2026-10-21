.class public abstract Landroidx/leanback/widget/t;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "SourceFile"


# instance fields
.field public T0:Landroidx/leanback/widget/GridLayoutManager;

.field public U0:Z

.field public V0:Z

.field public W0:Lm1/b0;

.field public X0:Landroidx/leanback/widget/r;

.field public Y0:I

.field public Z0:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Landroidx/leanback/widget/t;->U0:Z

    .line 6
    .line 7
    iput-boolean p1, p0, Landroidx/leanback/widget/t;->V0:Z

    .line 8
    .line 9
    const/4 p2, 0x4

    .line 10
    iput p2, p0, Landroidx/leanback/widget/t;->Y0:I

    .line 11
    .line 12
    new-instance p2, Landroidx/leanback/widget/GridLayoutManager;

    .line 13
    .line 14
    invoke-direct {p2, p0}, Landroidx/leanback/widget/GridLayoutManager;-><init>(Landroidx/leanback/widget/t;)V

    .line 15
    .line 16
    .line 17
    iput-object p2, p0, Landroidx/leanback/widget/t;->T0:Landroidx/leanback/widget/GridLayoutManager;

    .line 18
    .line 19
    invoke-virtual {p0, p2}, Landroidx/leanback/widget/t;->setLayoutManager(Lm1/i0;)V

    .line 20
    .line 21
    .line 22
    const/4 p2, 0x0

    .line 23
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setPreserveFocusAfterLayout(Z)V

    .line 24
    .line 25
    .line 26
    const/high16 p3, 0x40000

    .line 27
    .line 28
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setChildrenDrawingOrderEnabled(Z)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 38
    .line 39
    .line 40
    const/4 p1, 0x2

    .line 41
    invoke-virtual {p0, p1}, Landroid/view/View;->setOverScrollMode(I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Lm1/b0;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    check-cast p1, Lm1/E0;

    .line 49
    .line 50
    invoke-virtual {p1, p2}, Lm1/E0;->setSupportsChangeAnimations(Z)V

    .line 51
    .line 52
    .line 53
    new-instance p1, Landroidx/leanback/widget/l;

    .line 54
    .line 55
    invoke-direct {p1, p0}, Landroidx/leanback/widget/l;-><init>(Landroidx/leanback/widget/t;)V

    .line 56
    .line 57
    .line 58
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addRecyclerListener(Lm1/q0;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method


# virtual methods
.method public addOnChildViewHolderSelectedListener(Landroidx/leanback/widget/u0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/t;->T0:Landroidx/leanback/widget/GridLayoutManager;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/leanback/widget/GridLayoutManager;->E:Ljava/util/ArrayList;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    new-instance v1, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v1, v0, Landroidx/leanback/widget/GridLayoutManager;->E:Ljava/util/ArrayList;

    .line 13
    .line 14
    :cond_0
    iget-object v0, v0, Landroidx/leanback/widget/GridLayoutManager;->E:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final d0(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 1
    sget-object v0, Landroidx/leanback/widget/R$styleable;->lbBaseGridView:[I

    .line 2
    .line 3
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    sget p2, Landroidx/leanback/widget/R$styleable;->lbBaseGridView_focusOutFront:I

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    sget v1, Landroidx/leanback/widget/R$styleable;->lbBaseGridView_focusOutEnd:I

    .line 15
    .line 16
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    iget-object v2, p0, Landroidx/leanback/widget/t;->T0:Landroidx/leanback/widget/GridLayoutManager;

    .line 21
    .line 22
    invoke-virtual {v2, p2, v1}, Landroidx/leanback/widget/GridLayoutManager;->setFocusOutAllowed(ZZ)V

    .line 23
    .line 24
    .line 25
    sget p2, Landroidx/leanback/widget/R$styleable;->lbBaseGridView_focusOutSideStart:I

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    sget v2, Landroidx/leanback/widget/R$styleable;->lbBaseGridView_focusOutSideEnd:I

    .line 33
    .line 34
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    iget-object v3, p0, Landroidx/leanback/widget/t;->T0:Landroidx/leanback/widget/GridLayoutManager;

    .line 39
    .line 40
    iget v4, v3, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 41
    .line 42
    and-int/lit16 v4, v4, -0x6001

    .line 43
    .line 44
    if-eqz p2, :cond_0

    .line 45
    .line 46
    const/16 p2, 0x2000

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    move p2, v0

    .line 50
    :goto_0
    or-int/2addr p2, v4

    .line 51
    if-eqz v2, :cond_1

    .line 52
    .line 53
    const/16 v2, 0x4000

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    move v2, v0

    .line 57
    :goto_1
    or-int/2addr p2, v2

    .line 58
    iput p2, v3, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 59
    .line 60
    sget p2, Landroidx/leanback/widget/R$styleable;->lbBaseGridView_android_verticalSpacing:I

    .line 61
    .line 62
    sget v2, Landroidx/leanback/widget/R$styleable;->lbBaseGridView_verticalMargin:I

    .line 63
    .line 64
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 69
    .line 70
    .line 71
    move-result p2

    .line 72
    iget v2, v3, Landroidx/leanback/widget/GridLayoutManager;->s:I

    .line 73
    .line 74
    if-ne v2, v1, :cond_2

    .line 75
    .line 76
    iput p2, v3, Landroidx/leanback/widget/GridLayoutManager;->Q:I

    .line 77
    .line 78
    iput p2, v3, Landroidx/leanback/widget/GridLayoutManager;->R:I

    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_2
    iput p2, v3, Landroidx/leanback/widget/GridLayoutManager;->Q:I

    .line 82
    .line 83
    iput p2, v3, Landroidx/leanback/widget/GridLayoutManager;->S:I

    .line 84
    .line 85
    :goto_2
    iget-object p2, p0, Landroidx/leanback/widget/t;->T0:Landroidx/leanback/widget/GridLayoutManager;

    .line 86
    .line 87
    sget v1, Landroidx/leanback/widget/R$styleable;->lbBaseGridView_android_horizontalSpacing:I

    .line 88
    .line 89
    sget v2, Landroidx/leanback/widget/R$styleable;->lbBaseGridView_horizontalMargin:I

    .line 90
    .line 91
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    iget v2, p2, Landroidx/leanback/widget/GridLayoutManager;->s:I

    .line 100
    .line 101
    if-nez v2, :cond_3

    .line 102
    .line 103
    iput v1, p2, Landroidx/leanback/widget/GridLayoutManager;->P:I

    .line 104
    .line 105
    iput v1, p2, Landroidx/leanback/widget/GridLayoutManager;->R:I

    .line 106
    .line 107
    goto :goto_3

    .line 108
    :cond_3
    iput v1, p2, Landroidx/leanback/widget/GridLayoutManager;->P:I

    .line 109
    .line 110
    iput v1, p2, Landroidx/leanback/widget/GridLayoutManager;->S:I

    .line 111
    .line 112
    :goto_3
    sget p2, Landroidx/leanback/widget/R$styleable;->lbBaseGridView_android_gravity:I

    .line 113
    .line 114
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 115
    .line 116
    .line 117
    move-result p2

    .line 118
    if-eqz p2, :cond_4

    .line 119
    .line 120
    sget p2, Landroidx/leanback/widget/R$styleable;->lbBaseGridView_android_gravity:I

    .line 121
    .line 122
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 123
    .line 124
    .line 125
    move-result p2

    .line 126
    invoke-virtual {p0, p2}, Landroidx/leanback/widget/t;->setGravity(I)V

    .line 127
    .line 128
    .line 129
    :cond_4
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 130
    .line 131
    .line 132
    return-void
.end method

.method public dispatchGenericFocusedEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchGenericFocusedEvent(Landroid/view/MotionEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget-object v0, p0, Landroidx/leanback/widget/t;->X0:Landroidx/leanback/widget/r;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    check-cast v0, Landroidx/leanback/widget/h0;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Landroidx/leanback/widget/h0;->onUnhandledKey(Landroid/view/KeyEvent;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    return v1

    .line 22
    :cond_1
    const/4 p1, 0x0

    .line 23
    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public focusSearch(I)Landroid/view/View;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/leanback/widget/t;->T0:Landroidx/leanback/widget/GridLayoutManager;

    .line 8
    .line 9
    iget v1, v0, Landroidx/leanback/widget/GridLayoutManager;->F:I

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lm1/i0;->findViewByPosition(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1

    .line 22
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->focusSearch(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    return-object p1
.end method

.method public getChildDrawingOrder(II)I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/t;->T0:Landroidx/leanback/widget/GridLayoutManager;

    .line 2
    .line 3
    iget v1, v0, Landroidx/leanback/widget/GridLayoutManager;->F:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lm1/i0;->findViewByPosition(I)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-ge p2, v0, :cond_1

    .line 17
    .line 18
    :goto_0
    return p2

    .line 19
    :cond_1
    add-int/lit8 v1, p1, -0x1

    .line 20
    .line 21
    if-ge p2, v1, :cond_2

    .line 22
    .line 23
    add-int/2addr v0, p1

    .line 24
    add-int/lit8 v0, v0, -0x1

    .line 25
    .line 26
    sub-int/2addr v0, p2

    .line 27
    :cond_2
    return v0
.end method

.method public getExtraLayoutSpace()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/t;->T0:Landroidx/leanback/widget/GridLayoutManager;

    .line 2
    .line 3
    iget v0, v0, Landroidx/leanback/widget/GridLayoutManager;->b0:I

    .line 4
    .line 5
    return v0
.end method

.method public getFocusScrollStrategy()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/t;->T0:Landroidx/leanback/widget/GridLayoutManager;

    .line 2
    .line 3
    iget v0, v0, Landroidx/leanback/widget/GridLayoutManager;->X:I

    .line 4
    .line 5
    return v0
.end method

.method public getHorizontalMargin()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/t;->T0:Landroidx/leanback/widget/GridLayoutManager;

    .line 2
    .line 3
    iget v0, v0, Landroidx/leanback/widget/GridLayoutManager;->P:I

    .line 4
    .line 5
    return v0
.end method

.method public getHorizontalSpacing()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/t;->T0:Landroidx/leanback/widget/GridLayoutManager;

    .line 2
    .line 3
    iget v0, v0, Landroidx/leanback/widget/GridLayoutManager;->P:I

    .line 4
    .line 5
    return v0
.end method

.method public getInitialPrefetchItemCount()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/leanback/widget/t;->Y0:I

    .line 2
    .line 3
    return v0
.end method

.method public getItemAlignmentOffset()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/t;->T0:Landroidx/leanback/widget/GridLayoutManager;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/leanback/widget/GridLayoutManager;->Z:Landroidx/leanback/widget/U;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/leanback/widget/U;->mainAxis()Landroidx/leanback/widget/T;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroidx/leanback/widget/V;->getItemAlignmentOffset()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public getItemAlignmentOffsetPercent()F
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/t;->T0:Landroidx/leanback/widget/GridLayoutManager;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/leanback/widget/GridLayoutManager;->Z:Landroidx/leanback/widget/U;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/leanback/widget/U;->mainAxis()Landroidx/leanback/widget/T;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroidx/leanback/widget/V;->getItemAlignmentOffsetPercent()F

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public getItemAlignmentViewId()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/t;->T0:Landroidx/leanback/widget/GridLayoutManager;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/leanback/widget/GridLayoutManager;->Z:Landroidx/leanback/widget/U;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/leanback/widget/U;->mainAxis()Landroidx/leanback/widget/T;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroidx/leanback/widget/V;->getItemAlignmentViewId()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public getOnUnhandledKeyListener()Landroidx/leanback/widget/r;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/t;->X0:Landroidx/leanback/widget/r;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSaveChildrenLimitNumber()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/t;->T0:Landroidx/leanback/widget/GridLayoutManager;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/leanback/widget/GridLayoutManager;->d0:LG2/b;

    .line 4
    .line 5
    iget v0, v0, LG2/b;->b:I

    .line 6
    .line 7
    return v0
.end method

.method public final getSaveChildrenPolicy()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/t;->T0:Landroidx/leanback/widget/GridLayoutManager;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/leanback/widget/GridLayoutManager;->d0:LG2/b;

    .line 4
    .line 5
    iget v0, v0, LG2/b;->a:I

    .line 6
    .line 7
    return v0
.end method

.method public getSelectedPosition()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/t;->T0:Landroidx/leanback/widget/GridLayoutManager;

    .line 2
    .line 3
    iget v0, v0, Landroidx/leanback/widget/GridLayoutManager;->F:I

    .line 4
    .line 5
    return v0
.end method

.method public getSelectedSubPosition()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/t;->T0:Landroidx/leanback/widget/GridLayoutManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    return v0
.end method

.method public getSmoothScrollByBehavior()Landroidx/leanback/widget/s;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getSmoothScrollMaxPendingMoves()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/t;->T0:Landroidx/leanback/widget/GridLayoutManager;

    .line 2
    .line 3
    iget v0, v0, Landroidx/leanback/widget/GridLayoutManager;->q:I

    .line 4
    .line 5
    return v0
.end method

.method public final getSmoothScrollSpeedFactor()F
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/t;->T0:Landroidx/leanback/widget/GridLayoutManager;

    .line 2
    .line 3
    iget v0, v0, Landroidx/leanback/widget/GridLayoutManager;->p:F

    .line 4
    .line 5
    return v0
.end method

.method public getVerticalMargin()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/t;->T0:Landroidx/leanback/widget/GridLayoutManager;

    .line 2
    .line 3
    iget v0, v0, Landroidx/leanback/widget/GridLayoutManager;->Q:I

    .line 4
    .line 5
    return v0
.end method

.method public getVerticalSpacing()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/t;->T0:Landroidx/leanback/widget/GridLayoutManager;

    .line 2
    .line 3
    iget v0, v0, Landroidx/leanback/widget/GridLayoutManager;->Q:I

    .line 4
    .line 5
    return v0
.end method

.method public getWindowAlignment()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/t;->T0:Landroidx/leanback/widget/GridLayoutManager;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/leanback/widget/GridLayoutManager;->Y:Landroidx/leanback/widget/C1;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/leanback/widget/C1;->mainAxis()Landroidx/leanback/widget/B1;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroidx/leanback/widget/B1;->getWindowAlignment()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public getWindowAlignmentOffset()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/t;->T0:Landroidx/leanback/widget/GridLayoutManager;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/leanback/widget/GridLayoutManager;->Y:Landroidx/leanback/widget/C1;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/leanback/widget/C1;->mainAxis()Landroidx/leanback/widget/B1;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroidx/leanback/widget/B1;->getWindowAlignmentOffset()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public getWindowAlignmentOffsetPercent()F
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/t;->T0:Landroidx/leanback/widget/GridLayoutManager;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/leanback/widget/GridLayoutManager;->Y:Landroidx/leanback/widget/C1;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/leanback/widget/C1;->mainAxis()Landroidx/leanback/widget/B1;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroidx/leanback/widget/B1;->getWindowAlignmentOffsetPercent()F

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/leanback/widget/t;->V0:Z

    .line 2
    .line 3
    return v0
.end method

.method public onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 2
    .line 3
    .line 4
    iget-object p2, p0, Landroidx/leanback/widget/t;->T0:Landroidx/leanback/widget/GridLayoutManager;

    .line 5
    .line 6
    if-eqz p1, :cond_2

    .line 7
    .line 8
    iget p1, p2, Landroidx/leanback/widget/GridLayoutManager;->F:I

    .line 9
    .line 10
    :goto_0
    invoke-virtual {p2, p1}, Lm1/i0;->findViewByPosition(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object p3

    .line 14
    if-nez p3, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {p3}, Landroid/view/View;->hasFocusable()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-virtual {p3}, Landroid/view/View;->requestFocus()Z

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 10

    .line 1
    iget v0, p0, Landroidx/leanback/widget/t;->Z0:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    and-int/2addr v0, v1

    .line 5
    const/4 v2, 0x0

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    return v2

    .line 9
    :cond_0
    iget-object v0, p0, Landroidx/leanback/widget/t;->T0:Landroidx/leanback/widget/GridLayoutManager;

    .line 10
    .line 11
    iget v3, v0, Landroidx/leanback/widget/GridLayoutManager;->X:I

    .line 12
    .line 13
    if-eq v3, v1, :cond_1

    .line 14
    .line 15
    const/4 v4, 0x2

    .line 16
    if-eq v3, v4, :cond_1

    .line 17
    .line 18
    iget v1, v0, Landroidx/leanback/widget/GridLayoutManager;->F:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lm1/i0;->findViewByPosition(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_4

    .line 25
    .line 26
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    return p1

    .line 31
    :cond_1
    invoke-virtual {v0}, Lm1/i0;->getChildCount()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    and-int/lit8 v4, p1, 0x2

    .line 36
    .line 37
    if-eqz v4, :cond_2

    .line 38
    .line 39
    move v5, v1

    .line 40
    move v4, v3

    .line 41
    move v3, v2

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    add-int/lit8 v3, v3, -0x1

    .line 44
    .line 45
    const/4 v4, -0x1

    .line 46
    move v5, v4

    .line 47
    :goto_0
    iget-object v6, v0, Landroidx/leanback/widget/GridLayoutManager;->Y:Landroidx/leanback/widget/C1;

    .line 48
    .line 49
    invoke-virtual {v6}, Landroidx/leanback/widget/C1;->mainAxis()Landroidx/leanback/widget/B1;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    invoke-virtual {v7}, Landroidx/leanback/widget/B1;->getPaddingMin()I

    .line 54
    .line 55
    .line 56
    move-result v7

    .line 57
    invoke-virtual {v6}, Landroidx/leanback/widget/C1;->mainAxis()Landroidx/leanback/widget/B1;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    invoke-virtual {v6}, Landroidx/leanback/widget/B1;->getClientSize()I

    .line 62
    .line 63
    .line 64
    move-result v6

    .line 65
    add-int/2addr v6, v7

    .line 66
    :goto_1
    if-eq v3, v4, :cond_4

    .line 67
    .line 68
    invoke-virtual {v0, v3}, Lm1/i0;->getChildAt(I)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object v8

    .line 72
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    .line 73
    .line 74
    .line 75
    move-result v9

    .line 76
    if-nez v9, :cond_3

    .line 77
    .line 78
    iget-object v9, v0, Landroidx/leanback/widget/GridLayoutManager;->t:Lm1/L;

    .line 79
    .line 80
    invoke-virtual {v9, v8}, Lm1/L;->getDecoratedStart(Landroid/view/View;)I

    .line 81
    .line 82
    .line 83
    move-result v9

    .line 84
    if-lt v9, v7, :cond_3

    .line 85
    .line 86
    iget-object v9, v0, Landroidx/leanback/widget/GridLayoutManager;->t:Lm1/L;

    .line 87
    .line 88
    invoke-virtual {v9, v8}, Lm1/L;->getDecoratedEnd(Landroid/view/View;)I

    .line 89
    .line 90
    .line 91
    move-result v9

    .line 92
    if-gt v9, v6, :cond_3

    .line 93
    .line 94
    invoke-virtual {v8, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    .line 95
    .line 96
    .line 97
    move-result v8

    .line 98
    if-eqz v8, :cond_3

    .line 99
    .line 100
    return v1

    .line 101
    :cond_3
    add-int/2addr v3, v5

    .line 102
    goto :goto_1

    .line 103
    :cond_4
    return v2
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/t;->T0:Landroidx/leanback/widget/GridLayoutManager;

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    iget v1, v0, Landroidx/leanback/widget/GridLayoutManager;->s:I

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    if-ne p1, v3, :cond_0

    .line 12
    .line 13
    const/high16 v1, 0x40000

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v1, v2

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    if-ne p1, v3, :cond_0

    .line 19
    .line 20
    const/high16 v1, 0x80000

    .line 21
    .line 22
    :goto_0
    iget v4, v0, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 23
    .line 24
    const/high16 v5, 0xc0000

    .line 25
    .line 26
    and-int/2addr v5, v4

    .line 27
    if-ne v5, v1, :cond_2

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_2
    const v5, -0xc0001

    .line 31
    .line 32
    .line 33
    and-int/2addr v4, v5

    .line 34
    or-int/2addr v1, v4

    .line 35
    or-int/lit16 v1, v1, 0x100

    .line 36
    .line 37
    iput v1, v0, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 38
    .line 39
    iget-object v0, v0, Landroidx/leanback/widget/GridLayoutManager;->Y:Landroidx/leanback/widget/C1;

    .line 40
    .line 41
    iget-object v0, v0, Landroidx/leanback/widget/C1;->b:Landroidx/leanback/widget/B1;

    .line 42
    .line 43
    if-ne p1, v3, :cond_3

    .line 44
    .line 45
    move v2, v3

    .line 46
    :cond_3
    invoke-virtual {v0, v2}, Landroidx/leanback/widget/B1;->setReversedFlow(Z)V

    .line 47
    .line 48
    .line 49
    :cond_4
    :goto_1
    return-void
.end method

.method public removeOnChildViewHolderSelectedListener(Landroidx/leanback/widget/u0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/t;->T0:Landroidx/leanback/widget/GridLayoutManager;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/leanback/widget/GridLayoutManager;->E:Ljava/util/ArrayList;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    move v0, v1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget v2, p0, Landroidx/leanback/widget/t;->Z0:I

    .line 20
    .line 21
    or-int/2addr v1, v2

    .line 22
    iput v1, p0, Landroidx/leanback/widget/t;->Z0:I

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 28
    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    iget p1, p0, Landroidx/leanback/widget/t;->Z0:I

    .line 33
    .line 34
    xor-int/lit8 p1, p1, -0x2

    .line 35
    .line 36
    iput p1, p0, Landroidx/leanback/widget/t;->Z0:I

    .line 37
    .line 38
    :cond_2
    return-void
.end method

.method public removeViewAt(I)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget v1, p0, Landroidx/leanback/widget/t;->Z0:I

    .line 12
    .line 13
    or-int/lit8 v1, v1, 0x1

    .line 14
    .line 15
    iput v1, p0, Landroidx/leanback/widget/t;->Z0:I

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 21
    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget p1, p0, Landroidx/leanback/widget/t;->Z0:I

    .line 26
    .line 27
    xor-int/lit8 p1, p1, -0x2

    .line 28
    .line 29
    iput p1, p0, Landroidx/leanback/widget/t;->Z0:I

    .line 30
    .line 31
    :cond_1
    return-void
.end method

.method public scrollToPosition(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/t;->T0:Landroidx/leanback/widget/GridLayoutManager;

    .line 2
    .line 3
    iget v1, v0, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 4
    .line 5
    and-int/lit8 v1, v1, 0x40

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, p1, v1}, Landroidx/leanback/widget/GridLayoutManager;->Q(IZ)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public setAnimateChildLayout(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/leanback/widget/t;->U0:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_1

    .line 4
    .line 5
    iput-boolean p1, p0, Landroidx/leanback/widget/t;->U0:Z

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Lm1/b0;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Landroidx/leanback/widget/t;->W0:Lm1/b0;

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Lm1/b0;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iget-object p1, p0, Landroidx/leanback/widget/t;->W0:Lm1/b0;

    .line 21
    .line 22
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Lm1/b0;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    return-void
.end method

.method public setChildrenVisibility(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/t;->T0:Landroidx/leanback/widget/GridLayoutManager;

    .line 2
    .line 3
    iput p1, v0, Landroidx/leanback/widget/GridLayoutManager;->J:I

    .line 4
    .line 5
    const/4 v1, -0x1

    .line 6
    if-eq p1, v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lm1/i0;->getChildCount()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    const/4 v1, 0x0

    .line 13
    :goto_0
    if-ge v1, p1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lm1/i0;->getChildAt(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iget v3, v0, Landroidx/leanback/widget/GridLayoutManager;->J:I

    .line 20
    .line 21
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    add-int/lit8 v1, v1, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method

.method public setExtraLayoutSpace(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/t;->T0:Landroidx/leanback/widget/GridLayoutManager;

    .line 2
    .line 3
    iget v1, v0, Landroidx/leanback/widget/GridLayoutManager;->b0:I

    .line 4
    .line 5
    if-ne v1, p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    if-ltz v1, :cond_1

    .line 9
    .line 10
    iput p1, v0, Landroidx/leanback/widget/GridLayoutManager;->b0:I

    .line 11
    .line 12
    invoke-virtual {v0}, Lm1/i0;->requestLayout()V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 17
    .line 18
    const-string v0, "ExtraLayoutSpace must >= 0"

    .line 19
    .line 20
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p1
.end method

.method public setFocusDrawingOrderEnabled(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setChildrenDrawingOrderEnabled(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setFocusScrollStrategy(I)V
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 11
    .line 12
    const-string v0, "Invalid scrollStrategy"

    .line 13
    .line 14
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw p1

    .line 18
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/leanback/widget/t;->T0:Landroidx/leanback/widget/GridLayoutManager;

    .line 19
    .line 20
    iput p1, v0, Landroidx/leanback/widget/GridLayoutManager;->X:I

    .line 21
    .line 22
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final setFocusSearchDisabled(Z)V
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/high16 v0, 0x60000

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/high16 v0, 0x40000

    .line 7
    .line 8
    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Landroidx/leanback/widget/t;->T0:Landroidx/leanback/widget/GridLayoutManager;

    .line 12
    .line 13
    iget v1, v0, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 14
    .line 15
    const v2, -0x8001

    .line 16
    .line 17
    .line 18
    and-int/2addr v1, v2

    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    const p1, 0x8000

    .line 22
    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    const/4 p1, 0x0

    .line 26
    :goto_1
    or-int/2addr p1, v1

    .line 27
    iput p1, v0, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 28
    .line 29
    return-void
.end method

.method public setGravity(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/t;->T0:Landroidx/leanback/widget/GridLayoutManager;

    .line 2
    .line 3
    iput p1, v0, Landroidx/leanback/widget/GridLayoutManager;->T:I

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setHasOverlappingRendering(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/leanback/widget/t;->V0:Z

    .line 2
    .line 3
    return-void
.end method

.method public setHorizontalMargin(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/t;->setHorizontalSpacing(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setHorizontalSpacing(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/t;->T0:Landroidx/leanback/widget/GridLayoutManager;

    .line 2
    .line 3
    iget v1, v0, Landroidx/leanback/widget/GridLayoutManager;->s:I

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    iput p1, v0, Landroidx/leanback/widget/GridLayoutManager;->P:I

    .line 8
    .line 9
    iput p1, v0, Landroidx/leanback/widget/GridLayoutManager;->R:I

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput p1, v0, Landroidx/leanback/widget/GridLayoutManager;->P:I

    .line 13
    .line 14
    iput p1, v0, Landroidx/leanback/widget/GridLayoutManager;->S:I

    .line 15
    .line 16
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public setInitialPrefetchItemCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/leanback/widget/t;->Y0:I

    .line 2
    .line 3
    return-void
.end method

.method public setItemAlignmentOffset(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/t;->T0:Landroidx/leanback/widget/GridLayoutManager;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/leanback/widget/GridLayoutManager;->Z:Landroidx/leanback/widget/U;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroidx/leanback/widget/U;->mainAxis()Landroidx/leanback/widget/T;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1, p1}, Landroidx/leanback/widget/V;->setItemAlignmentOffset(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/leanback/widget/GridLayoutManager;->R()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public setItemAlignmentOffsetPercent(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/t;->T0:Landroidx/leanback/widget/GridLayoutManager;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/leanback/widget/GridLayoutManager;->Z:Landroidx/leanback/widget/U;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroidx/leanback/widget/U;->mainAxis()Landroidx/leanback/widget/T;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1, p1}, Landroidx/leanback/widget/V;->setItemAlignmentOffsetPercent(F)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/leanback/widget/GridLayoutManager;->R()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public setItemAlignmentOffsetWithPadding(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/t;->T0:Landroidx/leanback/widget/GridLayoutManager;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/leanback/widget/GridLayoutManager;->Z:Landroidx/leanback/widget/U;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroidx/leanback/widget/U;->mainAxis()Landroidx/leanback/widget/T;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1, p1}, Landroidx/leanback/widget/V;->setItemAlignmentOffsetWithPadding(Z)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/leanback/widget/GridLayoutManager;->R()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public setItemAlignmentViewId(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/t;->T0:Landroidx/leanback/widget/GridLayoutManager;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/leanback/widget/GridLayoutManager;->Z:Landroidx/leanback/widget/U;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroidx/leanback/widget/U;->mainAxis()Landroidx/leanback/widget/T;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1, p1}, Landroidx/leanback/widget/V;->setItemAlignmentViewId(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/leanback/widget/GridLayoutManager;->R()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public setItemMargin(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/t;->setItemSpacing(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setItemSpacing(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/t;->T0:Landroidx/leanback/widget/GridLayoutManager;

    .line 2
    .line 3
    iput p1, v0, Landroidx/leanback/widget/GridLayoutManager;->P:I

    .line 4
    .line 5
    iput p1, v0, Landroidx/leanback/widget/GridLayoutManager;->Q:I

    .line 6
    .line 7
    iput p1, v0, Landroidx/leanback/widget/GridLayoutManager;->S:I

    .line 8
    .line 9
    iput p1, v0, Landroidx/leanback/widget/GridLayoutManager;->R:I

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public setLayoutEnabled(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/t;->T0:Landroidx/leanback/widget/GridLayoutManager;

    .line 2
    .line 3
    iget v1, v0, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 4
    .line 5
    and-int/lit16 v2, v1, 0x200

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move v2, v3

    .line 13
    :goto_0
    if-eq v2, p1, :cond_2

    .line 14
    .line 15
    and-int/lit16 v1, v1, -0x201

    .line 16
    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    const/16 v3, 0x200

    .line 20
    .line 21
    :cond_1
    or-int p1, v1, v3

    .line 22
    .line 23
    iput p1, v0, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 24
    .line 25
    invoke-virtual {v0}, Lm1/i0;->requestLayout()V

    .line 26
    .line 27
    .line 28
    :cond_2
    return-void
.end method

.method public setLayoutManager(Lm1/i0;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_1

    .line 3
    .line 4
    invoke-super {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Lm1/i0;)V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Landroidx/leanback/widget/t;->T0:Landroidx/leanback/widget/GridLayoutManager;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iput-object v0, p1, Landroidx/leanback/widget/GridLayoutManager;->r:Landroidx/leanback/widget/t;

    .line 12
    .line 13
    iput-object v0, p1, Landroidx/leanback/widget/GridLayoutManager;->W:Landroidx/leanback/widget/E;

    .line 14
    .line 15
    :cond_0
    iput-object v0, p0, Landroidx/leanback/widget/t;->T0:Landroidx/leanback/widget/GridLayoutManager;

    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    move-object v1, p1

    .line 19
    check-cast v1, Landroidx/leanback/widget/GridLayoutManager;

    .line 20
    .line 21
    iput-object v1, p0, Landroidx/leanback/widget/t;->T0:Landroidx/leanback/widget/GridLayoutManager;

    .line 22
    .line 23
    iput-object p0, v1, Landroidx/leanback/widget/GridLayoutManager;->r:Landroidx/leanback/widget/t;

    .line 24
    .line 25
    iput-object v0, v1, Landroidx/leanback/widget/GridLayoutManager;->W:Landroidx/leanback/widget/E;

    .line 26
    .line 27
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Lm1/i0;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public setOnChildLaidOutListener(Landroidx/leanback/widget/s0;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/leanback/widget/t;->T0:Landroidx/leanback/widget/GridLayoutManager;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setOnChildSelectedListener(Landroidx/leanback/widget/t0;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ReferencesDeprecated"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/t;->T0:Landroidx/leanback/widget/GridLayoutManager;

    .line 2
    .line 3
    iput-object p1, v0, Landroidx/leanback/widget/GridLayoutManager;->D:Landroidx/leanback/widget/t0;

    .line 4
    .line 5
    return-void
.end method

.method public setOnChildViewHolderSelectedListener(Landroidx/leanback/widget/u0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/t;->T0:Landroidx/leanback/widget/GridLayoutManager;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    iput-object p1, v0, Landroidx/leanback/widget/GridLayoutManager;->E:Ljava/util/ArrayList;

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v1, v0, Landroidx/leanback/widget/GridLayoutManager;->E:Ljava/util/ArrayList;

    .line 10
    .line 11
    if-nez v1, :cond_1

    .line 12
    .line 13
    new-instance v1, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v1, v0, Landroidx/leanback/widget/GridLayoutManager;->E:Ljava/util/ArrayList;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 22
    .line 23
    .line 24
    :goto_0
    iget-object v0, v0, Landroidx/leanback/widget/GridLayoutManager;->E:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public setOnKeyInterceptListener(Landroidx/leanback/widget/o;)V
    .locals 0

    return-void
.end method

.method public setOnMotionInterceptListener(Landroidx/leanback/widget/p;)V
    .locals 0

    return-void
.end method

.method public setOnTouchInterceptListener(Landroidx/leanback/widget/q;)V
    .locals 0

    return-void
.end method

.method public setOnUnhandledKeyListener(Landroidx/leanback/widget/r;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/leanback/widget/t;->X0:Landroidx/leanback/widget/r;

    .line 2
    .line 3
    return-void
.end method

.method public setPruneChild(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/t;->T0:Landroidx/leanback/widget/GridLayoutManager;

    .line 2
    .line 3
    iget v1, v0, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 4
    .line 5
    const/high16 v2, 0x10000

    .line 6
    .line 7
    and-int v3, v1, v2

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    if-eqz v3, :cond_0

    .line 11
    .line 12
    const/4 v3, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v3, v4

    .line 15
    :goto_0
    if-eq v3, p1, :cond_2

    .line 16
    .line 17
    const v3, -0x10001

    .line 18
    .line 19
    .line 20
    and-int/2addr v1, v3

    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    move v2, v4

    .line 25
    :goto_1
    or-int/2addr v1, v2

    .line 26
    iput v1, v0, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 27
    .line 28
    if-eqz p1, :cond_2

    .line 29
    .line 30
    invoke-virtual {v0}, Lm1/i0;->requestLayout()V

    .line 31
    .line 32
    .line 33
    :cond_2
    return-void
.end method

.method public final setSaveChildrenLimitNumber(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/t;->T0:Landroidx/leanback/widget/GridLayoutManager;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/leanback/widget/GridLayoutManager;->d0:LG2/b;

    .line 4
    .line 5
    iput p1, v0, LG2/b;->b:I

    .line 6
    .line 7
    invoke-virtual {v0}, LG2/b;->a()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final setSaveChildrenPolicy(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/t;->T0:Landroidx/leanback/widget/GridLayoutManager;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/leanback/widget/GridLayoutManager;->d0:LG2/b;

    .line 4
    .line 5
    iput p1, v0, LG2/b;->a:I

    .line 6
    .line 7
    invoke-virtual {v0}, LG2/b;->a()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public setScrollEnabled(Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/t;->T0:Landroidx/leanback/widget/GridLayoutManager;

    .line 2
    .line 3
    iget v1, v0, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 4
    .line 5
    const/high16 v2, 0x20000

    .line 6
    .line 7
    and-int v3, v1, v2

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x1

    .line 11
    if-eqz v3, :cond_0

    .line 12
    .line 13
    move v3, v5

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v3, v4

    .line 16
    :goto_0
    if-eq v3, p1, :cond_2

    .line 17
    .line 18
    const v3, -0x20001

    .line 19
    .line 20
    .line 21
    and-int/2addr v1, v3

    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    move v4, v2

    .line 25
    :cond_1
    or-int p1, v1, v4

    .line 26
    .line 27
    iput p1, v0, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 28
    .line 29
    and-int/2addr p1, v2

    .line 30
    if-eqz p1, :cond_2

    .line 31
    .line 32
    iget p1, v0, Landroidx/leanback/widget/GridLayoutManager;->X:I

    .line 33
    .line 34
    if-nez p1, :cond_2

    .line 35
    .line 36
    iget p1, v0, Landroidx/leanback/widget/GridLayoutManager;->F:I

    .line 37
    .line 38
    const/4 v1, -0x1

    .line 39
    if-eq p1, v1, :cond_2

    .line 40
    .line 41
    invoke-virtual {v0, p1, v5}, Landroidx/leanback/widget/GridLayoutManager;->N(IZ)V

    .line 42
    .line 43
    .line 44
    :cond_2
    return-void
.end method

.method public setSelectedPosition(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/t;->T0:Landroidx/leanback/widget/GridLayoutManager;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, p1, v1}, Landroidx/leanback/widget/GridLayoutManager;->Q(IZ)V

    return-void
.end method

.method public setSelectedPosition(ILandroidx/leanback/widget/A1;)V
    .locals 2

    if-eqz p2, :cond_2

    .line 3
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForPosition(I)Lm1/B0;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->hasPendingAdapterUpdates()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    check-cast p2, Landroidx/leanback/app/f;

    invoke-virtual {p2, v0}, Landroidx/leanback/app/f;->run(Lm1/B0;)V

    goto :goto_1

    .line 6
    :cond_1
    :goto_0
    new-instance v0, Landroidx/leanback/widget/n;

    invoke-direct {v0, p0, p1, p2}, Landroidx/leanback/widget/n;-><init>(Landroidx/leanback/widget/t;ILandroidx/leanback/widget/A1;)V

    invoke-virtual {p0, v0}, Landroidx/leanback/widget/t;->addOnChildViewHolderSelectedListener(Landroidx/leanback/widget/u0;)V

    .line 7
    :cond_2
    :goto_1
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/t;->setSelectedPosition(I)V

    return-void
.end method

.method public setSelectedPositionSmooth(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/t;->T0:Landroidx/leanback/widget/GridLayoutManager;

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, p1, v1}, Landroidx/leanback/widget/GridLayoutManager;->Q(IZ)V

    return-void
.end method

.method public setSelectedPositionSmooth(ILandroidx/leanback/widget/A1;)V
    .locals 2

    if-eqz p2, :cond_2

    .line 3
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForPosition(I)Lm1/B0;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->hasPendingAdapterUpdates()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    check-cast p2, Landroidx/leanback/app/f;

    invoke-virtual {p2, v0}, Landroidx/leanback/app/f;->run(Lm1/B0;)V

    goto :goto_1

    .line 6
    :cond_1
    :goto_0
    new-instance v0, Landroidx/leanback/widget/m;

    invoke-direct {v0, p0, p1, p2}, Landroidx/leanback/widget/m;-><init>(Landroidx/leanback/widget/t;ILandroidx/leanback/widget/A1;)V

    invoke-virtual {p0, v0}, Landroidx/leanback/widget/t;->addOnChildViewHolderSelectedListener(Landroidx/leanback/widget/u0;)V

    .line 7
    :cond_2
    :goto_1
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/t;->setSelectedPositionSmooth(I)V

    return-void
.end method

.method public final setSmoothScrollByBehavior(Landroidx/leanback/widget/s;)V
    .locals 0

    return-void
.end method

.method public final setSmoothScrollMaxPendingMoves(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/t;->T0:Landroidx/leanback/widget/GridLayoutManager;

    .line 2
    .line 3
    iput p1, v0, Landroidx/leanback/widget/GridLayoutManager;->q:I

    .line 4
    .line 5
    return-void
.end method

.method public final setSmoothScrollSpeedFactor(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/t;->T0:Landroidx/leanback/widget/GridLayoutManager;

    .line 2
    .line 3
    iput p1, v0, Landroidx/leanback/widget/GridLayoutManager;->p:F

    .line 4
    .line 5
    return-void
.end method

.method public setVerticalMargin(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/t;->setVerticalSpacing(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setVerticalSpacing(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/t;->T0:Landroidx/leanback/widget/GridLayoutManager;

    .line 2
    .line 3
    iget v1, v0, Landroidx/leanback/widget/GridLayoutManager;->s:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-ne v1, v2, :cond_0

    .line 7
    .line 8
    iput p1, v0, Landroidx/leanback/widget/GridLayoutManager;->Q:I

    .line 9
    .line 10
    iput p1, v0, Landroidx/leanback/widget/GridLayoutManager;->R:I

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iput p1, v0, Landroidx/leanback/widget/GridLayoutManager;->Q:I

    .line 14
    .line 15
    iput p1, v0, Landroidx/leanback/widget/GridLayoutManager;->S:I

    .line 16
    .line 17
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public setWindowAlignment(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/t;->T0:Landroidx/leanback/widget/GridLayoutManager;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/leanback/widget/GridLayoutManager;->Y:Landroidx/leanback/widget/C1;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/leanback/widget/C1;->mainAxis()Landroidx/leanback/widget/B1;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Landroidx/leanback/widget/B1;->setWindowAlignment(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public setWindowAlignmentOffset(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/t;->T0:Landroidx/leanback/widget/GridLayoutManager;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/leanback/widget/GridLayoutManager;->Y:Landroidx/leanback/widget/C1;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/leanback/widget/C1;->mainAxis()Landroidx/leanback/widget/B1;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Landroidx/leanback/widget/B1;->setWindowAlignmentOffset(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public setWindowAlignmentOffsetPercent(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/t;->T0:Landroidx/leanback/widget/GridLayoutManager;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/leanback/widget/GridLayoutManager;->Y:Landroidx/leanback/widget/C1;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/leanback/widget/C1;->mainAxis()Landroidx/leanback/widget/B1;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Landroidx/leanback/widget/B1;->setWindowAlignmentOffsetPercent(F)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public setWindowAlignmentPreferKeyLineOverHighEdge(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/t;->T0:Landroidx/leanback/widget/GridLayoutManager;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/leanback/widget/GridLayoutManager;->Y:Landroidx/leanback/widget/C1;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/leanback/widget/C1;->mainAxis()Landroidx/leanback/widget/B1;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget p1, v0, Landroidx/leanback/widget/B1;->e:I

    .line 12
    .line 13
    or-int/lit8 p1, p1, 0x2

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget p1, v0, Landroidx/leanback/widget/B1;->e:I

    .line 17
    .line 18
    and-int/lit8 p1, p1, -0x3

    .line 19
    .line 20
    :goto_0
    iput p1, v0, Landroidx/leanback/widget/B1;->e:I

    .line 21
    .line 22
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public setWindowAlignmentPreferKeyLineOverLowEdge(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/t;->T0:Landroidx/leanback/widget/GridLayoutManager;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/leanback/widget/GridLayoutManager;->Y:Landroidx/leanback/widget/C1;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/leanback/widget/C1;->mainAxis()Landroidx/leanback/widget/B1;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget p1, v0, Landroidx/leanback/widget/B1;->e:I

    .line 12
    .line 13
    or-int/lit8 p1, p1, 0x1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget p1, v0, Landroidx/leanback/widget/B1;->e:I

    .line 17
    .line 18
    and-int/lit8 p1, p1, -0x2

    .line 19
    .line 20
    :goto_0
    iput p1, v0, Landroidx/leanback/widget/B1;->e:I

    .line 21
    .line 22
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public smoothScrollBy(II)V
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, -0x80000000

    .line 1
    invoke-virtual {p0, p1, p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(IILandroid/view/animation/Interpolator;I)V

    return-void
.end method

.method public smoothScrollBy(IILandroid/view/animation/Interpolator;)V
    .locals 1

    const/high16 v0, -0x80000000

    .line 2
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(IILandroid/view/animation/Interpolator;I)V

    return-void
.end method

.method public smoothScrollToPosition(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/t;->T0:Landroidx/leanback/widget/GridLayoutManager;

    .line 2
    .line 3
    iget v1, v0, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 4
    .line 5
    and-int/lit8 v1, v1, 0x40

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, p1, v1}, Landroidx/leanback/widget/GridLayoutManager;->Q(IZ)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
