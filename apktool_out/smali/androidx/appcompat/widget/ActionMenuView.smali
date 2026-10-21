.class public Landroidx/appcompat/widget/ActionMenuView;
.super Ll/c1;
.source "SourceFile"

# interfaces
.implements Lk/o;
.implements Lk/G;


# instance fields
.field public A:I

.field public B:Z

.field public C:Ll/u;

.field public D:Lk/D;

.field public E:Lk/n;

.field public F:Z

.field public G:I

.field public final H:I

.field public final I:I

.field public J:Ll/z;

.field public y:Lk/p;

.field public z:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 2
    invoke-direct {p0, p1, p2}, Ll/c1;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 3
    invoke-virtual {p0, p2}, Ll/c1;->setBaselineAligned(Z)V

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x42600000    # 56.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    .line 5
    iput v1, p0, Landroidx/appcompat/widget/ActionMenuView;->H:I

    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 6
    iput v0, p0, Landroidx/appcompat/widget/ActionMenuView;->I:I

    .line 7
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->z:Landroid/content/Context;

    .line 8
    iput p2, p0, Landroidx/appcompat/widget/ActionMenuView;->A:I

    return-void
.end method


# virtual methods
.method public checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Ll/x;

    .line 2
    .line 3
    return p1
.end method

.method public dismissPopupMenus()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->C:Ll/u;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ll/u;->dismissPopupMenus()Z

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->generateDefaultLayoutParams()Ll/x;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateDefaultLayoutParams()Ll/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->generateDefaultLayoutParams()Ll/x;

    move-result-object v0

    return-object v0
.end method

.method public generateDefaultLayoutParams()Ll/x;
    .locals 2

    .line 3
    new-instance v0, Ll/x;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Ll/x;-><init>(II)V

    const/16 v1, 0x10

    .line 4
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Ll/x;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Ll/x;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Ll/b1;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Ll/x;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Ll/b1;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Ll/x;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Ll/x;
    .locals 2

    .line 5
    new-instance v0, Ll/x;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ll/x;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Ll/x;
    .locals 1

    if-eqz p1, :cond_2

    .line 6
    instance-of v0, p1, Ll/x;

    if-eqz v0, :cond_0

    .line 7
    new-instance v0, Ll/x;

    check-cast p1, Ll/x;

    invoke-direct {v0, p1}, Ll/x;-><init>(Ll/x;)V

    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Ll/x;

    invoke-direct {v0, p1}, Ll/x;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 9
    :goto_0
    iget p1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    if-gtz p1, :cond_1

    const/16 p1, 0x10

    .line 10
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    :cond_1
    return-object v0

    .line 11
    :cond_2
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->generateDefaultLayoutParams()Ll/x;

    move-result-object p1

    return-object p1
.end method

.method public generateOverflowButtonLayoutParams()Ll/x;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->generateDefaultLayoutParams()Ll/x;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    iput-boolean v1, v0, Ll/x;->a:Z

    .line 7
    .line 8
    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->y:Lk/p;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lk/p;

    .line 10
    .line 11
    invoke-direct {v1, v0}, Lk/p;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    iput-object v1, p0, Landroidx/appcompat/widget/ActionMenuView;->y:Lk/p;

    .line 15
    .line 16
    new-instance v2, Ll/y;

    .line 17
    .line 18
    invoke-direct {v2, p0}, Ll/y;-><init>(Landroidx/appcompat/widget/ActionMenuView;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v2}, Lk/p;->setCallback(Lk/n;)V

    .line 22
    .line 23
    .line 24
    new-instance v1, Ll/u;

    .line 25
    .line 26
    invoke-direct {v1, v0}, Ll/u;-><init>(Landroid/content/Context;)V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Landroidx/appcompat/widget/ActionMenuView;->C:Ll/u;

    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    invoke-virtual {v1, v0}, Ll/u;->setReserveOverflow(Z)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->C:Ll/u;

    .line 36
    .line 37
    iget-object v1, p0, Landroidx/appcompat/widget/ActionMenuView;->D:Lk/D;

    .line 38
    .line 39
    if-eqz v1, :cond_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    new-instance v1, Ll/w;

    .line 43
    .line 44
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 45
    .line 46
    .line 47
    :goto_0
    invoke-virtual {v0, v1}, Lk/d;->setCallback(Lk/D;)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->y:Lk/p;

    .line 51
    .line 52
    iget-object v1, p0, Landroidx/appcompat/widget/ActionMenuView;->C:Ll/u;

    .line 53
    .line 54
    iget-object v2, p0, Landroidx/appcompat/widget/ActionMenuView;->z:Landroid/content/Context;

    .line 55
    .line 56
    invoke-virtual {v0, v1, v2}, Lk/p;->addMenuPresenter(Lk/E;Landroid/content/Context;)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->C:Ll/u;

    .line 60
    .line 61
    invoke-virtual {v0, p0}, Ll/u;->setMenuView(Landroidx/appcompat/widget/ActionMenuView;)V

    .line 62
    .line 63
    .line 64
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->y:Lk/p;

    .line 65
    .line 66
    return-object v0
.end method

.method public getOverflowIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->C:Ll/u;

    .line 5
    .line 6
    invoke-virtual {v0}, Ll/u;->getOverflowIcon()Landroid/graphics/drawable/Drawable;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method public getPopupTheme()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/ActionMenuView;->A:I

    .line 2
    .line 3
    return v0
.end method

.method public getWindowAnimations()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasSupportDividerBeforeChildAt(I)Z
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
    add-int/lit8 v1, p1, -0x1

    .line 6
    .line 7
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-ge p1, v3, :cond_1

    .line 20
    .line 21
    instance-of v3, v1, Ll/v;

    .line 22
    .line 23
    if-eqz v3, :cond_1

    .line 24
    .line 25
    check-cast v1, Ll/v;

    .line 26
    .line 27
    invoke-interface {v1}, Ll/v;->needsDividerAfter()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    :cond_1
    if-lez p1, :cond_2

    .line 32
    .line 33
    instance-of p1, v2, Ll/v;

    .line 34
    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    check-cast v2, Ll/v;

    .line 38
    .line 39
    invoke-interface {v2}, Ll/v;->needsDividerBefore()Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    or-int/2addr p1, v0

    .line 44
    return p1

    .line 45
    :cond_2
    return v0
.end method

.method public hideOverflowMenu()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->C:Ll/u;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ll/u;->hideOverflowMenu()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    return v0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    return v0
.end method

.method public initialize(Lk/p;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->y:Lk/p;

    .line 2
    .line 3
    return-void
.end method

.method public invokeItem(Lk/s;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->y:Lk/p;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, p1, v1}, Lk/p;->performItemAction(Landroid/view/MenuItem;I)Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    return p1
.end method

.method public isOverflowMenuShowPending()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->C:Ll/u;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ll/u;->isOverflowMenuShowPending()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    return v0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    return v0
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->C:Ll/u;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ll/u;->isOverflowMenuShowing()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    return v0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    return v0
.end method

.method public isOverflowReserved()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuView;->B:Z

    .line 2
    .line 3
    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->C:Ll/u;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p1, v0}, Ll/u;->updateMenuView(Z)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->C:Ll/u;

    .line 13
    .line 14
    invoke-virtual {p1}, Ll/u;->isOverflowMenuShowing()Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->C:Ll/u;

    .line 21
    .line 22
    invoke-virtual {p1}, Ll/u;->hideOverflowMenu()Z

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->C:Ll/u;

    .line 26
    .line 27
    invoke-virtual {p1}, Ll/u;->showOverflowMenu()Z

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->dismissPopupMenus()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-boolean v1, v0, Landroidx/appcompat/widget/ActionMenuView;->F:Z

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    invoke-super/range {p0 .. p5}, Ll/c1;->onLayout(ZIIII)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    sub-int v2, p5, p3

    .line 16
    .line 17
    div-int/lit8 v2, v2, 0x2

    .line 18
    .line 19
    invoke-virtual {v0}, Ll/c1;->getDividerWidth()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    sub-int v4, p4, p2

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    sub-int v5, v4, v5

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    .line 32
    .line 33
    .line 34
    move-result v6

    .line 35
    sub-int/2addr v5, v6

    .line 36
    invoke-static {v0}, Ll/z2;->isLayoutRtl(Landroid/view/View;)Z

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    const/4 v8, 0x0

    .line 41
    const/4 v9, 0x0

    .line 42
    const/4 v10, 0x0

    .line 43
    :goto_0
    const/4 v11, 0x1

    .line 44
    const/16 v12, 0x8

    .line 45
    .line 46
    if-ge v8, v1, :cond_5

    .line 47
    .line 48
    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object v13

    .line 52
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    .line 53
    .line 54
    .line 55
    move-result v14

    .line 56
    if-ne v14, v12, :cond_1

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_1
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 60
    .line 61
    .line 62
    move-result-object v12

    .line 63
    check-cast v12, Ll/x;

    .line 64
    .line 65
    iget-boolean v14, v12, Ll/x;->a:Z

    .line 66
    .line 67
    if-eqz v14, :cond_4

    .line 68
    .line 69
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    .line 70
    .line 71
    .line 72
    move-result v9

    .line 73
    invoke-virtual {v0, v8}, Landroidx/appcompat/widget/ActionMenuView;->hasSupportDividerBeforeChildAt(I)Z

    .line 74
    .line 75
    .line 76
    move-result v14

    .line 77
    if-eqz v14, :cond_2

    .line 78
    .line 79
    add-int/2addr v9, v3

    .line 80
    :cond_2
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    .line 81
    .line 82
    .line 83
    move-result v14

    .line 84
    if-eqz v6, :cond_3

    .line 85
    .line 86
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    .line 87
    .line 88
    .line 89
    move-result v15

    .line 90
    iget v12, v12, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 91
    .line 92
    add-int/2addr v15, v12

    .line 93
    add-int v12, v15, v9

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 97
    .line 98
    .line 99
    move-result v15

    .line 100
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    .line 101
    .line 102
    .line 103
    move-result v16

    .line 104
    sub-int v15, v15, v16

    .line 105
    .line 106
    iget v12, v12, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 107
    .line 108
    sub-int v12, v15, v12

    .line 109
    .line 110
    sub-int v15, v12, v9

    .line 111
    .line 112
    :goto_1
    div-int/lit8 v16, v14, 0x2

    .line 113
    .line 114
    sub-int v7, v2, v16

    .line 115
    .line 116
    add-int/2addr v14, v7

    .line 117
    invoke-virtual {v13, v15, v7, v12, v14}, Landroid/view/View;->layout(IIII)V

    .line 118
    .line 119
    .line 120
    sub-int/2addr v5, v9

    .line 121
    move v9, v11

    .line 122
    goto :goto_2

    .line 123
    :cond_4
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    .line 124
    .line 125
    .line 126
    move-result v7

    .line 127
    iget v11, v12, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 128
    .line 129
    add-int/2addr v7, v11

    .line 130
    iget v11, v12, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 131
    .line 132
    add-int/2addr v7, v11

    .line 133
    sub-int/2addr v5, v7

    .line 134
    invoke-virtual {v0, v8}, Landroidx/appcompat/widget/ActionMenuView;->hasSupportDividerBeforeChildAt(I)Z

    .line 135
    .line 136
    .line 137
    add-int/lit8 v10, v10, 0x1

    .line 138
    .line 139
    :goto_2
    add-int/lit8 v8, v8, 0x1

    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_5
    if-ne v1, v11, :cond_6

    .line 143
    .line 144
    if-nez v9, :cond_6

    .line 145
    .line 146
    const/4 v3, 0x0

    .line 147
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 152
    .line 153
    .line 154
    move-result v3

    .line 155
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 156
    .line 157
    .line 158
    move-result v5

    .line 159
    div-int/lit8 v4, v4, 0x2

    .line 160
    .line 161
    div-int/lit8 v6, v3, 0x2

    .line 162
    .line 163
    sub-int/2addr v4, v6

    .line 164
    div-int/lit8 v6, v5, 0x2

    .line 165
    .line 166
    sub-int/2addr v2, v6

    .line 167
    add-int/2addr v3, v4

    .line 168
    add-int/2addr v5, v2

    .line 169
    invoke-virtual {v1, v4, v2, v3, v5}, Landroid/view/View;->layout(IIII)V

    .line 170
    .line 171
    .line 172
    return-void

    .line 173
    :cond_6
    xor-int/lit8 v3, v9, 0x1

    .line 174
    .line 175
    sub-int/2addr v10, v3

    .line 176
    if-lez v10, :cond_7

    .line 177
    .line 178
    div-int v3, v5, v10

    .line 179
    .line 180
    :goto_3
    const/4 v4, 0x0

    .line 181
    goto :goto_4

    .line 182
    :cond_7
    const/4 v3, 0x0

    .line 183
    goto :goto_3

    .line 184
    :goto_4
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    .line 185
    .line 186
    .line 187
    move-result v3

    .line 188
    if-eqz v6, :cond_a

    .line 189
    .line 190
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 191
    .line 192
    .line 193
    move-result v5

    .line 194
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    .line 195
    .line 196
    .line 197
    move-result v6

    .line 198
    sub-int/2addr v5, v6

    .line 199
    move v7, v4

    .line 200
    :goto_5
    if-ge v7, v1, :cond_d

    .line 201
    .line 202
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 203
    .line 204
    .line 205
    move-result-object v4

    .line 206
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 207
    .line 208
    .line 209
    move-result-object v6

    .line 210
    check-cast v6, Ll/x;

    .line 211
    .line 212
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 213
    .line 214
    .line 215
    move-result v8

    .line 216
    if-eq v8, v12, :cond_9

    .line 217
    .line 218
    iget-boolean v8, v6, Ll/x;->a:Z

    .line 219
    .line 220
    if-eqz v8, :cond_8

    .line 221
    .line 222
    goto :goto_6

    .line 223
    :cond_8
    iget v8, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 224
    .line 225
    sub-int/2addr v5, v8

    .line 226
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    .line 227
    .line 228
    .line 229
    move-result v8

    .line 230
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    .line 231
    .line 232
    .line 233
    move-result v9

    .line 234
    div-int/lit8 v10, v9, 0x2

    .line 235
    .line 236
    sub-int v10, v2, v10

    .line 237
    .line 238
    sub-int v11, v5, v8

    .line 239
    .line 240
    add-int/2addr v9, v10

    .line 241
    invoke-virtual {v4, v11, v10, v5, v9}, Landroid/view/View;->layout(IIII)V

    .line 242
    .line 243
    .line 244
    iget v4, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 245
    .line 246
    add-int/2addr v8, v4

    .line 247
    add-int/2addr v8, v3

    .line 248
    sub-int/2addr v5, v8

    .line 249
    :cond_9
    :goto_6
    add-int/lit8 v7, v7, 0x1

    .line 250
    .line 251
    goto :goto_5

    .line 252
    :cond_a
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    .line 253
    .line 254
    .line 255
    move-result v5

    .line 256
    move v7, v4

    .line 257
    :goto_7
    if-ge v7, v1, :cond_d

    .line 258
    .line 259
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 260
    .line 261
    .line 262
    move-result-object v4

    .line 263
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 264
    .line 265
    .line 266
    move-result-object v6

    .line 267
    check-cast v6, Ll/x;

    .line 268
    .line 269
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 270
    .line 271
    .line 272
    move-result v8

    .line 273
    if-eq v8, v12, :cond_c

    .line 274
    .line 275
    iget-boolean v8, v6, Ll/x;->a:Z

    .line 276
    .line 277
    if-eqz v8, :cond_b

    .line 278
    .line 279
    goto :goto_8

    .line 280
    :cond_b
    iget v8, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 281
    .line 282
    add-int/2addr v5, v8

    .line 283
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    .line 284
    .line 285
    .line 286
    move-result v8

    .line 287
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    .line 288
    .line 289
    .line 290
    move-result v9

    .line 291
    div-int/lit8 v10, v9, 0x2

    .line 292
    .line 293
    sub-int v10, v2, v10

    .line 294
    .line 295
    add-int v11, v5, v8

    .line 296
    .line 297
    add-int/2addr v9, v10

    .line 298
    invoke-virtual {v4, v5, v10, v11, v9}, Landroid/view/View;->layout(IIII)V

    .line 299
    .line 300
    .line 301
    iget v4, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 302
    .line 303
    add-int/2addr v8, v4

    .line 304
    add-int/2addr v8, v3

    .line 305
    add-int/2addr v8, v5

    .line 306
    move v5, v8

    .line 307
    :cond_c
    :goto_8
    add-int/lit8 v7, v7, 0x1

    .line 308
    .line 309
    goto :goto_7

    .line 310
    :cond_d
    return-void
.end method

.method public onMeasure(II)V
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-boolean v1, v0, Landroidx/appcompat/widget/ActionMenuView;->F:Z

    .line 4
    .line 5
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x1

    .line 11
    const/high16 v5, 0x40000000    # 2.0f

    .line 12
    .line 13
    if-ne v2, v5, :cond_0

    .line 14
    .line 15
    move v2, v4

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v2, v3

    .line 18
    :goto_0
    iput-boolean v2, v0, Landroidx/appcompat/widget/ActionMenuView;->F:Z

    .line 19
    .line 20
    if-eq v1, v2, :cond_1

    .line 21
    .line 22
    iput v3, v0, Landroidx/appcompat/widget/ActionMenuView;->G:I

    .line 23
    .line 24
    :cond_1
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    iget-boolean v2, v0, Landroidx/appcompat/widget/ActionMenuView;->F:Z

    .line 29
    .line 30
    if-eqz v2, :cond_2

    .line 31
    .line 32
    iget-object v2, v0, Landroidx/appcompat/widget/ActionMenuView;->y:Lk/p;

    .line 33
    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    iget v6, v0, Landroidx/appcompat/widget/ActionMenuView;->G:I

    .line 37
    .line 38
    if-eq v1, v6, :cond_2

    .line 39
    .line 40
    iput v1, v0, Landroidx/appcompat/widget/ActionMenuView;->G:I

    .line 41
    .line 42
    invoke-virtual {v2, v4}, Lk/p;->onItemsChanged(Z)V

    .line 43
    .line 44
    .line 45
    :cond_2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    iget-boolean v2, v0, Landroidx/appcompat/widget/ActionMenuView;->F:Z

    .line 50
    .line 51
    if-eqz v2, :cond_2f

    .line 52
    .line 53
    if-lez v1, :cond_2f

    .line 54
    .line 55
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 64
    .line 65
    .line 66
    move-result v6

    .line 67
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    .line 68
    .line 69
    .line 70
    move-result v7

    .line 71
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    .line 72
    .line 73
    .line 74
    move-result v8

    .line 75
    add-int/2addr v8, v7

    .line 76
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    .line 77
    .line 78
    .line 79
    move-result v7

    .line 80
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    .line 81
    .line 82
    .line 83
    move-result v9

    .line 84
    add-int/2addr v9, v7

    .line 85
    const/4 v7, -0x2

    .line 86
    move/from16 v10, p2

    .line 87
    .line 88
    invoke-static {v10, v9, v7}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 89
    .line 90
    .line 91
    move-result v7

    .line 92
    sub-int/2addr v2, v8

    .line 93
    iget v8, v0, Landroidx/appcompat/widget/ActionMenuView;->H:I

    .line 94
    .line 95
    div-int v10, v2, v8

    .line 96
    .line 97
    rem-int v11, v2, v8

    .line 98
    .line 99
    if-nez v10, :cond_3

    .line 100
    .line 101
    invoke-virtual {v0, v2, v3}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :cond_3
    div-int/2addr v11, v10

    .line 106
    add-int/2addr v11, v8

    .line 107
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 108
    .line 109
    .line 110
    move-result v8

    .line 111
    move v4, v3

    .line 112
    move v12, v4

    .line 113
    move v13, v12

    .line 114
    move v14, v13

    .line 115
    move v15, v14

    .line 116
    move/from16 v16, v15

    .line 117
    .line 118
    const-wide/16 p1, 0x0

    .line 119
    .line 120
    const-wide/16 v18, 0x0

    .line 121
    .line 122
    :goto_1
    iget v5, v0, Landroidx/appcompat/widget/ActionMenuView;->I:I

    .line 123
    .line 124
    if-ge v14, v8, :cond_12

    .line 125
    .line 126
    invoke-virtual {v0, v14}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    move/from16 v21, v6

    .line 131
    .line 132
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 133
    .line 134
    .line 135
    move-result v6

    .line 136
    move/from16 v22, v9

    .line 137
    .line 138
    const/16 v9, 0x8

    .line 139
    .line 140
    if-ne v6, v9, :cond_4

    .line 141
    .line 142
    move/from16 v23, v11

    .line 143
    .line 144
    goto/16 :goto_8

    .line 145
    .line 146
    :cond_4
    instance-of v6, v3, Landroidx/appcompat/view/menu/ActionMenuItemView;

    .line 147
    .line 148
    add-int/lit8 v12, v12, 0x1

    .line 149
    .line 150
    const/4 v9, 0x0

    .line 151
    if-eqz v6, :cond_5

    .line 152
    .line 153
    invoke-virtual {v3, v5, v9, v5, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 154
    .line 155
    .line 156
    :cond_5
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 157
    .line 158
    .line 159
    move-result-object v5

    .line 160
    check-cast v5, Ll/x;

    .line 161
    .line 162
    iput-boolean v9, v5, Ll/x;->f:Z

    .line 163
    .line 164
    iput v9, v5, Ll/x;->c:I

    .line 165
    .line 166
    iput v9, v5, Ll/x;->b:I

    .line 167
    .line 168
    iput-boolean v9, v5, Ll/x;->d:Z

    .line 169
    .line 170
    iput v9, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 171
    .line 172
    iput v9, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 173
    .line 174
    if-eqz v6, :cond_6

    .line 175
    .line 176
    move-object v9, v3

    .line 177
    check-cast v9, Landroidx/appcompat/view/menu/ActionMenuItemView;

    .line 178
    .line 179
    invoke-virtual {v9}, Landroidx/appcompat/view/menu/ActionMenuItemView;->hasText()Z

    .line 180
    .line 181
    .line 182
    move-result v9

    .line 183
    if-eqz v9, :cond_6

    .line 184
    .line 185
    const/4 v9, 0x1

    .line 186
    goto :goto_2

    .line 187
    :cond_6
    const/4 v9, 0x0

    .line 188
    :goto_2
    iput-boolean v9, v5, Ll/x;->e:Z

    .line 189
    .line 190
    iget-boolean v9, v5, Ll/x;->a:Z

    .line 191
    .line 192
    if-eqz v9, :cond_7

    .line 193
    .line 194
    const/4 v9, 0x1

    .line 195
    goto :goto_3

    .line 196
    :cond_7
    move v9, v10

    .line 197
    :goto_3
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 198
    .line 199
    .line 200
    move-result-object v23

    .line 201
    move/from16 v24, v6

    .line 202
    .line 203
    move-object/from16 v6, v23

    .line 204
    .line 205
    check-cast v6, Ll/x;

    .line 206
    .line 207
    invoke-static {v7}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 208
    .line 209
    .line 210
    move-result v23

    .line 211
    move/from16 v25, v10

    .line 212
    .line 213
    sub-int v10, v23, v22

    .line 214
    .line 215
    move/from16 v23, v11

    .line 216
    .line 217
    invoke-static {v7}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 218
    .line 219
    .line 220
    move-result v11

    .line 221
    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 222
    .line 223
    .line 224
    move-result v10

    .line 225
    if-eqz v24, :cond_8

    .line 226
    .line 227
    move-object v11, v3

    .line 228
    check-cast v11, Landroidx/appcompat/view/menu/ActionMenuItemView;

    .line 229
    .line 230
    goto :goto_4

    .line 231
    :cond_8
    const/4 v11, 0x0

    .line 232
    :goto_4
    if-eqz v11, :cond_9

    .line 233
    .line 234
    invoke-virtual {v11}, Landroidx/appcompat/view/menu/ActionMenuItemView;->hasText()Z

    .line 235
    .line 236
    .line 237
    move-result v11

    .line 238
    if-eqz v11, :cond_9

    .line 239
    .line 240
    const/4 v11, 0x1

    .line 241
    goto :goto_5

    .line 242
    :cond_9
    const/4 v11, 0x0

    .line 243
    :goto_5
    move/from16 v24, v11

    .line 244
    .line 245
    if-lez v9, :cond_c

    .line 246
    .line 247
    if-eqz v11, :cond_a

    .line 248
    .line 249
    const/4 v11, 0x2

    .line 250
    if-lt v9, v11, :cond_c

    .line 251
    .line 252
    :cond_a
    mul-int v11, v23, v9

    .line 253
    .line 254
    const/high16 v9, -0x80000000

    .line 255
    .line 256
    invoke-static {v11, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 257
    .line 258
    .line 259
    move-result v9

    .line 260
    invoke-virtual {v3, v9, v10}, Landroid/view/View;->measure(II)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    .line 264
    .line 265
    .line 266
    move-result v9

    .line 267
    div-int v11, v9, v23

    .line 268
    .line 269
    rem-int v9, v9, v23

    .line 270
    .line 271
    if-eqz v9, :cond_b

    .line 272
    .line 273
    add-int/lit8 v11, v11, 0x1

    .line 274
    .line 275
    :cond_b
    if-eqz v24, :cond_d

    .line 276
    .line 277
    const/4 v9, 0x2

    .line 278
    if-ge v11, v9, :cond_d

    .line 279
    .line 280
    const/4 v11, 0x2

    .line 281
    goto :goto_6

    .line 282
    :cond_c
    const/4 v11, 0x0

    .line 283
    :cond_d
    :goto_6
    iget-boolean v9, v6, Ll/x;->a:Z

    .line 284
    .line 285
    if-nez v9, :cond_e

    .line 286
    .line 287
    if-eqz v24, :cond_e

    .line 288
    .line 289
    const/4 v9, 0x1

    .line 290
    goto :goto_7

    .line 291
    :cond_e
    const/4 v9, 0x0

    .line 292
    :goto_7
    iput-boolean v9, v6, Ll/x;->d:Z

    .line 293
    .line 294
    iput v11, v6, Ll/x;->b:I

    .line 295
    .line 296
    mul-int v6, v11, v23

    .line 297
    .line 298
    const/high16 v9, 0x40000000    # 2.0f

    .line 299
    .line 300
    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 301
    .line 302
    .line 303
    move-result v6

    .line 304
    invoke-virtual {v3, v6, v10}, Landroid/view/View;->measure(II)V

    .line 305
    .line 306
    .line 307
    invoke-static {v13, v11}, Ljava/lang/Math;->max(II)I

    .line 308
    .line 309
    .line 310
    move-result v13

    .line 311
    iget-boolean v6, v5, Ll/x;->d:Z

    .line 312
    .line 313
    if-eqz v6, :cond_f

    .line 314
    .line 315
    add-int/lit8 v16, v16, 0x1

    .line 316
    .line 317
    :cond_f
    iget-boolean v5, v5, Ll/x;->a:Z

    .line 318
    .line 319
    if-eqz v5, :cond_10

    .line 320
    .line 321
    const/4 v15, 0x1

    .line 322
    :cond_10
    sub-int v10, v25, v11

    .line 323
    .line 324
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    .line 325
    .line 326
    .line 327
    move-result v3

    .line 328
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    .line 329
    .line 330
    .line 331
    move-result v4

    .line 332
    const/4 v3, 0x1

    .line 333
    if-ne v11, v3, :cond_11

    .line 334
    .line 335
    shl-int v5, v3, v14

    .line 336
    .line 337
    int-to-long v5, v5

    .line 338
    or-long v18, v18, v5

    .line 339
    .line 340
    :cond_11
    :goto_8
    add-int/lit8 v14, v14, 0x1

    .line 341
    .line 342
    move/from16 v6, v21

    .line 343
    .line 344
    move/from16 v9, v22

    .line 345
    .line 346
    move/from16 v11, v23

    .line 347
    .line 348
    const/4 v3, 0x0

    .line 349
    goto/16 :goto_1

    .line 350
    .line 351
    :cond_12
    move/from16 v21, v6

    .line 352
    .line 353
    move/from16 v25, v10

    .line 354
    .line 355
    move/from16 v23, v11

    .line 356
    .line 357
    if-eqz v15, :cond_13

    .line 358
    .line 359
    const/4 v9, 0x2

    .line 360
    if-ne v12, v9, :cond_13

    .line 361
    .line 362
    const/4 v3, 0x1

    .line 363
    goto :goto_9

    .line 364
    :cond_13
    const/4 v3, 0x0

    .line 365
    :goto_9
    move/from16 v10, v25

    .line 366
    .line 367
    const/4 v6, 0x0

    .line 368
    :goto_a
    const-wide/16 v24, 0x1

    .line 369
    .line 370
    if-lez v16, :cond_1e

    .line 371
    .line 372
    if-lez v10, :cond_1e

    .line 373
    .line 374
    const v9, 0x7fffffff

    .line 375
    .line 376
    .line 377
    move-wide/from16 v26, p1

    .line 378
    .line 379
    const/4 v11, 0x0

    .line 380
    const/4 v14, 0x0

    .line 381
    :goto_b
    if-ge v14, v8, :cond_17

    .line 382
    .line 383
    invoke-virtual {v0, v14}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 384
    .line 385
    .line 386
    move-result-object v22

    .line 387
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 388
    .line 389
    .line 390
    move-result-object v22

    .line 391
    move/from16 v28, v3

    .line 392
    .line 393
    move-object/from16 v3, v22

    .line 394
    .line 395
    check-cast v3, Ll/x;

    .line 396
    .line 397
    move/from16 v22, v4

    .line 398
    .line 399
    iget-boolean v4, v3, Ll/x;->d:Z

    .line 400
    .line 401
    if-nez v4, :cond_14

    .line 402
    .line 403
    goto :goto_c

    .line 404
    :cond_14
    iget v3, v3, Ll/x;->b:I

    .line 405
    .line 406
    if-ge v3, v9, :cond_15

    .line 407
    .line 408
    shl-long v26, v24, v14

    .line 409
    .line 410
    move v9, v3

    .line 411
    const/4 v11, 0x1

    .line 412
    goto :goto_c

    .line 413
    :cond_15
    if-ne v3, v9, :cond_16

    .line 414
    .line 415
    shl-long v3, v24, v14

    .line 416
    .line 417
    or-long v26, v26, v3

    .line 418
    .line 419
    add-int/lit8 v3, v11, 0x1

    .line 420
    .line 421
    move v11, v3

    .line 422
    :cond_16
    :goto_c
    add-int/lit8 v14, v14, 0x1

    .line 423
    .line 424
    move/from16 v4, v22

    .line 425
    .line 426
    move/from16 v3, v28

    .line 427
    .line 428
    goto :goto_b

    .line 429
    :cond_17
    move/from16 v28, v3

    .line 430
    .line 431
    move/from16 v22, v4

    .line 432
    .line 433
    or-long v18, v18, v26

    .line 434
    .line 435
    if-le v11, v10, :cond_18

    .line 436
    .line 437
    :goto_d
    move/from16 v29, v15

    .line 438
    .line 439
    goto :goto_11

    .line 440
    :cond_18
    add-int/lit8 v9, v9, 0x1

    .line 441
    .line 442
    const/4 v3, 0x0

    .line 443
    :goto_e
    if-ge v3, v8, :cond_1d

    .line 444
    .line 445
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 446
    .line 447
    .line 448
    move-result-object v4

    .line 449
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 450
    .line 451
    .line 452
    move-result-object v6

    .line 453
    check-cast v6, Ll/x;

    .line 454
    .line 455
    const/16 v17, 0x1

    .line 456
    .line 457
    shl-int v11, v17, v3

    .line 458
    .line 459
    move/from16 v29, v15

    .line 460
    .line 461
    int-to-long v14, v11

    .line 462
    and-long v24, v26, v14

    .line 463
    .line 464
    cmp-long v11, v24, p1

    .line 465
    .line 466
    if-nez v11, :cond_19

    .line 467
    .line 468
    iget v4, v6, Ll/x;->b:I

    .line 469
    .line 470
    if-ne v4, v9, :cond_1c

    .line 471
    .line 472
    or-long v18, v18, v14

    .line 473
    .line 474
    goto :goto_10

    .line 475
    :cond_19
    if-eqz v28, :cond_1a

    .line 476
    .line 477
    iget-boolean v11, v6, Ll/x;->e:Z

    .line 478
    .line 479
    if-eqz v11, :cond_1a

    .line 480
    .line 481
    const/4 v11, 0x1

    .line 482
    if-ne v10, v11, :cond_1b

    .line 483
    .line 484
    add-int v14, v5, v23

    .line 485
    .line 486
    const/4 v15, 0x0

    .line 487
    invoke-virtual {v4, v14, v15, v5, v15}, Landroid/view/View;->setPadding(IIII)V

    .line 488
    .line 489
    .line 490
    goto :goto_f

    .line 491
    :cond_1a
    const/4 v11, 0x1

    .line 492
    :cond_1b
    :goto_f
    iget v4, v6, Ll/x;->b:I

    .line 493
    .line 494
    add-int/2addr v4, v11

    .line 495
    iput v4, v6, Ll/x;->b:I

    .line 496
    .line 497
    iput-boolean v11, v6, Ll/x;->f:Z

    .line 498
    .line 499
    add-int/lit8 v10, v10, -0x1

    .line 500
    .line 501
    :cond_1c
    :goto_10
    add-int/lit8 v3, v3, 0x1

    .line 502
    .line 503
    move/from16 v15, v29

    .line 504
    .line 505
    goto :goto_e

    .line 506
    :cond_1d
    move/from16 v4, v22

    .line 507
    .line 508
    move/from16 v3, v28

    .line 509
    .line 510
    const/4 v6, 0x1

    .line 511
    goto/16 :goto_a

    .line 512
    .line 513
    :cond_1e
    move/from16 v22, v4

    .line 514
    .line 515
    goto :goto_d

    .line 516
    :goto_11
    const/4 v3, 0x1

    .line 517
    if-nez v29, :cond_1f

    .line 518
    .line 519
    if-ne v12, v3, :cond_1f

    .line 520
    .line 521
    move v4, v3

    .line 522
    goto :goto_12

    .line 523
    :cond_1f
    const/4 v4, 0x0

    .line 524
    :goto_12
    if-lez v10, :cond_2b

    .line 525
    .line 526
    cmp-long v5, v18, p1

    .line 527
    .line 528
    if-eqz v5, :cond_2b

    .line 529
    .line 530
    sub-int/2addr v12, v3

    .line 531
    if-lt v10, v12, :cond_20

    .line 532
    .line 533
    if-nez v4, :cond_20

    .line 534
    .line 535
    if-le v13, v3, :cond_2b

    .line 536
    .line 537
    :cond_20
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->bitCount(J)I

    .line 538
    .line 539
    .line 540
    move-result v3

    .line 541
    int-to-float v3, v3

    .line 542
    if-nez v4, :cond_22

    .line 543
    .line 544
    and-long v4, v18, v24

    .line 545
    .line 546
    cmp-long v4, v4, p1

    .line 547
    .line 548
    const/high16 v5, 0x3f000000    # 0.5f

    .line 549
    .line 550
    if-eqz v4, :cond_21

    .line 551
    .line 552
    const/4 v15, 0x0

    .line 553
    invoke-virtual {v0, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 554
    .line 555
    .line 556
    move-result-object v4

    .line 557
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 558
    .line 559
    .line 560
    move-result-object v4

    .line 561
    check-cast v4, Ll/x;

    .line 562
    .line 563
    iget-boolean v4, v4, Ll/x;->e:Z

    .line 564
    .line 565
    if-nez v4, :cond_21

    .line 566
    .line 567
    sub-float/2addr v3, v5

    .line 568
    :cond_21
    add-int/lit8 v4, v8, -0x1

    .line 569
    .line 570
    const/16 v17, 0x1

    .line 571
    .line 572
    shl-int v9, v17, v4

    .line 573
    .line 574
    int-to-long v11, v9

    .line 575
    and-long v11, v18, v11

    .line 576
    .line 577
    cmp-long v9, v11, p1

    .line 578
    .line 579
    if-eqz v9, :cond_22

    .line 580
    .line 581
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 582
    .line 583
    .line 584
    move-result-object v4

    .line 585
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 586
    .line 587
    .line 588
    move-result-object v4

    .line 589
    check-cast v4, Ll/x;

    .line 590
    .line 591
    iget-boolean v4, v4, Ll/x;->e:Z

    .line 592
    .line 593
    if-nez v4, :cond_22

    .line 594
    .line 595
    sub-float/2addr v3, v5

    .line 596
    :cond_22
    const/4 v4, 0x0

    .line 597
    cmpl-float v4, v3, v4

    .line 598
    .line 599
    if-lez v4, :cond_23

    .line 600
    .line 601
    mul-int v10, v10, v23

    .line 602
    .line 603
    int-to-float v4, v10

    .line 604
    div-float/2addr v4, v3

    .line 605
    float-to-int v9, v4

    .line 606
    goto :goto_13

    .line 607
    :cond_23
    const/4 v9, 0x0

    .line 608
    :goto_13
    move v3, v6

    .line 609
    const/4 v4, 0x0

    .line 610
    :goto_14
    if-ge v4, v8, :cond_2a

    .line 611
    .line 612
    const/16 v17, 0x1

    .line 613
    .line 614
    shl-int v5, v17, v4

    .line 615
    .line 616
    int-to-long v5, v5

    .line 617
    and-long v5, v18, v5

    .line 618
    .line 619
    cmp-long v5, v5, p1

    .line 620
    .line 621
    if-nez v5, :cond_24

    .line 622
    .line 623
    const/4 v11, 0x1

    .line 624
    const/16 v20, 0x2

    .line 625
    .line 626
    goto :goto_16

    .line 627
    :cond_24
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 628
    .line 629
    .line 630
    move-result-object v5

    .line 631
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 632
    .line 633
    .line 634
    move-result-object v6

    .line 635
    check-cast v6, Ll/x;

    .line 636
    .line 637
    instance-of v5, v5, Landroidx/appcompat/view/menu/ActionMenuItemView;

    .line 638
    .line 639
    if-eqz v5, :cond_26

    .line 640
    .line 641
    iput v9, v6, Ll/x;->c:I

    .line 642
    .line 643
    const/4 v3, 0x1

    .line 644
    iput-boolean v3, v6, Ll/x;->f:Z

    .line 645
    .line 646
    if-nez v4, :cond_25

    .line 647
    .line 648
    iget-boolean v3, v6, Ll/x;->e:Z

    .line 649
    .line 650
    if-nez v3, :cond_25

    .line 651
    .line 652
    neg-int v3, v9

    .line 653
    const/16 v20, 0x2

    .line 654
    .line 655
    div-int/lit8 v3, v3, 0x2

    .line 656
    .line 657
    iput v3, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 658
    .line 659
    goto :goto_15

    .line 660
    :cond_25
    const/16 v20, 0x2

    .line 661
    .line 662
    :goto_15
    const/4 v3, 0x1

    .line 663
    const/4 v11, 0x1

    .line 664
    goto :goto_16

    .line 665
    :cond_26
    const/16 v20, 0x2

    .line 666
    .line 667
    iget-boolean v5, v6, Ll/x;->a:Z

    .line 668
    .line 669
    if-eqz v5, :cond_27

    .line 670
    .line 671
    iput v9, v6, Ll/x;->c:I

    .line 672
    .line 673
    const/4 v11, 0x1

    .line 674
    iput-boolean v11, v6, Ll/x;->f:Z

    .line 675
    .line 676
    neg-int v3, v9

    .line 677
    div-int/lit8 v3, v3, 0x2

    .line 678
    .line 679
    iput v3, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 680
    .line 681
    move v3, v11

    .line 682
    goto :goto_16

    .line 683
    :cond_27
    const/4 v11, 0x1

    .line 684
    if-eqz v4, :cond_28

    .line 685
    .line 686
    div-int/lit8 v5, v9, 0x2

    .line 687
    .line 688
    iput v5, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 689
    .line 690
    :cond_28
    add-int/lit8 v5, v8, -0x1

    .line 691
    .line 692
    if-eq v4, v5, :cond_29

    .line 693
    .line 694
    div-int/lit8 v5, v9, 0x2

    .line 695
    .line 696
    iput v5, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 697
    .line 698
    :cond_29
    :goto_16
    add-int/lit8 v4, v4, 0x1

    .line 699
    .line 700
    goto :goto_14

    .line 701
    :cond_2a
    move v6, v3

    .line 702
    :cond_2b
    if-eqz v6, :cond_2d

    .line 703
    .line 704
    const/4 v3, 0x0

    .line 705
    :goto_17
    if-ge v3, v8, :cond_2d

    .line 706
    .line 707
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 708
    .line 709
    .line 710
    move-result-object v4

    .line 711
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 712
    .line 713
    .line 714
    move-result-object v5

    .line 715
    check-cast v5, Ll/x;

    .line 716
    .line 717
    iget-boolean v6, v5, Ll/x;->f:Z

    .line 718
    .line 719
    if-nez v6, :cond_2c

    .line 720
    .line 721
    const/high16 v9, 0x40000000    # 2.0f

    .line 722
    .line 723
    goto :goto_18

    .line 724
    :cond_2c
    iget v6, v5, Ll/x;->b:I

    .line 725
    .line 726
    mul-int v6, v6, v23

    .line 727
    .line 728
    iget v5, v5, Ll/x;->c:I

    .line 729
    .line 730
    add-int/2addr v6, v5

    .line 731
    const/high16 v9, 0x40000000    # 2.0f

    .line 732
    .line 733
    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 734
    .line 735
    .line 736
    move-result v5

    .line 737
    invoke-virtual {v4, v5, v7}, Landroid/view/View;->measure(II)V

    .line 738
    .line 739
    .line 740
    :goto_18
    add-int/lit8 v3, v3, 0x1

    .line 741
    .line 742
    goto :goto_17

    .line 743
    :cond_2d
    const/high16 v9, 0x40000000    # 2.0f

    .line 744
    .line 745
    if-eq v1, v9, :cond_2e

    .line 746
    .line 747
    move/from16 v6, v22

    .line 748
    .line 749
    goto :goto_19

    .line 750
    :cond_2e
    move/from16 v6, v21

    .line 751
    .line 752
    :goto_19
    invoke-virtual {v0, v2, v6}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 753
    .line 754
    .line 755
    return-void

    .line 756
    :cond_2f
    move/from16 v10, p2

    .line 757
    .line 758
    const/4 v9, 0x0

    .line 759
    :goto_1a
    if-ge v9, v1, :cond_30

    .line 760
    .line 761
    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 762
    .line 763
    .line 764
    move-result-object v2

    .line 765
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 766
    .line 767
    .line 768
    move-result-object v2

    .line 769
    check-cast v2, Ll/x;

    .line 770
    .line 771
    const/4 v15, 0x0

    .line 772
    iput v15, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 773
    .line 774
    iput v15, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 775
    .line 776
    add-int/lit8 v9, v9, 0x1

    .line 777
    .line 778
    goto :goto_1a

    .line 779
    :cond_30
    invoke-super/range {p0 .. p2}, Ll/c1;->onMeasure(II)V

    .line 780
    .line 781
    .line 782
    return-void
.end method

.method public peekMenu()Lk/p;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->y:Lk/p;

    .line 2
    .line 3
    return-object v0
.end method

.method public setExpandedActionViewsExclusive(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->C:Ll/u;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ll/u;->setExpandedActionViewsExclusive(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setMenuCallbacks(Lk/D;Lk/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->D:Lk/D;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/appcompat/widget/ActionMenuView;->E:Lk/n;

    .line 4
    .line 5
    return-void
.end method

.method public setOnMenuItemClickListener(Ll/z;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->J:Ll/z;

    .line 2
    .line 3
    return-void
.end method

.method public setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->C:Ll/u;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ll/u;->setOverflowIcon(Landroid/graphics/drawable/Drawable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setOverflowReserved(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/appcompat/widget/ActionMenuView;->B:Z

    .line 2
    .line 3
    return-void
.end method

.method public setPopupTheme(I)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/ActionMenuView;->A:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_1

    .line 4
    .line 5
    iput p1, p0, Landroidx/appcompat/widget/ActionMenuView;->A:I

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->z:Landroid/content/Context;

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    new-instance v0, Landroid/view/ContextThemeWrapper;

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->z:Landroid/content/Context;

    .line 26
    .line 27
    :cond_1
    return-void
.end method

.method public setPresenter(Ll/u;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->C:Ll/u;

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Ll/u;->setMenuView(Landroidx/appcompat/widget/ActionMenuView;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public showOverflowMenu()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->C:Ll/u;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ll/u;->showOverflowMenu()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    return v0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    return v0
.end method
