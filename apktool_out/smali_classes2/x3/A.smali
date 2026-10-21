.class public final Lx3/A;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/E;


# instance fields
.field public A:I

.field public B:I

.field public C:I

.field public D:I

.field public E:I

.field public F:Z

.field public G:Z

.field public H:I

.field public I:I

.field public J:I

.field public K:I

.field public final L:Lx3/n;

.field public b:Lcom/google/android/material/internal/NavigationMenuView;

.field public e:Landroid/widget/LinearLayout;

.field public f:Lk/p;

.field public j:I

.field public m:Lx3/q;

.field public n:Landroid/view/LayoutInflater;

.field public p:I

.field public q:Landroid/content/res/ColorStateList;

.field public r:I

.field public s:Z

.field public t:Landroid/content/res/ColorStateList;

.field public u:Landroid/content/res/ColorStateList;

.field public v:Landroid/graphics/drawable/Drawable;

.field public w:Landroid/graphics/drawable/RippleDrawable;

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lx3/A;->p:I

    .line 6
    .line 7
    iput v0, p0, Lx3/A;->r:I

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lx3/A;->s:Z

    .line 11
    .line 12
    iput-boolean v0, p0, Lx3/A;->G:Z

    .line 13
    .line 14
    const/4 v0, -0x1

    .line 15
    iput v0, p0, Lx3/A;->K:I

    .line 16
    .line 17
    new-instance v0, Lx3/n;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Lx3/n;-><init>(Lx3/A;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lx3/A;->L:Lx3/n;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public addHeaderView(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lx3/A;->e:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lx3/A;->b:Lcom/google/android/material/internal/NavigationMenuView;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-virtual {p1, v0, v0, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public collapseItemActionView(Lk/p;Lk/s;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public dispatchApplyWindowInsets(LM/h1;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, LM/h1;->getSystemWindowInsetTop()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lx3/A;->I:I

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eq v1, v0, :cond_2

    .line 9
    .line 10
    iput v0, p0, Lx3/A;->I:I

    .line 11
    .line 12
    invoke-virtual {p0}, Lx3/A;->getHeaderCount()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-lez v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-boolean v0, p0, Lx3/A;->G:Z

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iget v0, p0, Lx3/A;->I:I

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    :goto_0
    move v0, v2

    .line 27
    :goto_1
    iget-object v1, p0, Lx3/A;->b:Lcom/google/android/material/internal/NavigationMenuView;

    .line 28
    .line 29
    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    invoke-virtual {v1, v2, v0, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 34
    .line 35
    .line 36
    :cond_2
    iget-object v0, p0, Lx3/A;->b:Lcom/google/android/material/internal/NavigationMenuView;

    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    invoke-virtual {p1}, LM/h1;->getSystemWindowInsetBottom()I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    invoke-virtual {v0, v2, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lx3/A;->e:Landroid/widget/LinearLayout;

    .line 50
    .line 51
    invoke-static {v0, p1}, LM/p0;->dispatchApplyWindowInsets(Landroid/view/View;LM/h1;)LM/h1;

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public expandItemActionView(Lk/p;Lk/s;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public flagActionItems()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public getCheckedItem()Lk/s;
    .locals 1

    .line 1
    iget-object v0, p0, Lx3/A;->m:Lx3/q;

    .line 2
    .line 3
    invoke-virtual {v0}, Lx3/q;->getCheckedItem()Lk/s;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getDividerInsetEnd()I
    .locals 1

    .line 1
    iget v0, p0, Lx3/A;->C:I

    .line 2
    .line 3
    return v0
.end method

.method public getDividerInsetStart()I
    .locals 1

    .line 1
    iget v0, p0, Lx3/A;->B:I

    .line 2
    .line 3
    return v0
.end method

.method public getHeaderCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lx3/A;->e:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lx3/A;->j:I

    .line 2
    .line 3
    return v0
.end method

.method public getItemBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lx3/A;->v:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    return-object v0
.end method

.method public getItemHorizontalPadding()I
    .locals 1

    .line 1
    iget v0, p0, Lx3/A;->x:I

    .line 2
    .line 3
    return v0
.end method

.method public getItemIconPadding()I
    .locals 1

    .line 1
    iget v0, p0, Lx3/A;->z:I

    .line 2
    .line 3
    return v0
.end method

.method public getItemMaxLines()I
    .locals 1

    .line 1
    iget v0, p0, Lx3/A;->H:I

    .line 2
    .line 3
    return v0
.end method

.method public getItemTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Lx3/A;->t:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    return-object v0
.end method

.method public getItemTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Lx3/A;->u:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    return-object v0
.end method

.method public getItemVerticalPadding()I
    .locals 1

    .line 1
    iget v0, p0, Lx3/A;->y:I

    .line 2
    .line 3
    return v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lk/G;
    .locals 3

    .line 1
    iget-object v0, p0, Lx3/A;->b:Lcom/google/android/material/internal/NavigationMenuView;

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lx3/A;->n:Landroid/view/LayoutInflater;

    .line 6
    .line 7
    sget v1, Lcom/google/android/material/R$layout;->design_navigation_menu:I

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lcom/google/android/material/internal/NavigationMenuView;

    .line 15
    .line 16
    iput-object p1, p0, Lx3/A;->b:Lcom/google/android/material/internal/NavigationMenuView;

    .line 17
    .line 18
    new-instance v0, Lx3/v;

    .line 19
    .line 20
    iget-object v1, p0, Lx3/A;->b:Lcom/google/android/material/internal/NavigationMenuView;

    .line 21
    .line 22
    invoke-direct {v0, p0, v1}, Lx3/v;-><init>(Lx3/A;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAccessibilityDelegateCompat(Lm1/D0;)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lx3/A;->m:Lx3/q;

    .line 29
    .line 30
    if-nez p1, :cond_0

    .line 31
    .line 32
    new-instance p1, Lx3/q;

    .line 33
    .line 34
    invoke-direct {p1, p0}, Lx3/q;-><init>(Lx3/A;)V

    .line 35
    .line 36
    .line 37
    iput-object p1, p0, Lx3/A;->m:Lx3/q;

    .line 38
    .line 39
    const/4 v0, 0x1

    .line 40
    invoke-virtual {p1, v0}, Lm1/V;->setHasStableIds(Z)V

    .line 41
    .line 42
    .line 43
    :cond_0
    iget p1, p0, Lx3/A;->K:I

    .line 44
    .line 45
    const/4 v0, -0x1

    .line 46
    if-eq p1, v0, :cond_1

    .line 47
    .line 48
    iget-object v0, p0, Lx3/A;->b:Lcom/google/android/material/internal/NavigationMenuView;

    .line 49
    .line 50
    invoke-virtual {v0, p1}, Landroid/view/View;->setOverScrollMode(I)V

    .line 51
    .line 52
    .line 53
    :cond_1
    iget-object p1, p0, Lx3/A;->n:Landroid/view/LayoutInflater;

    .line 54
    .line 55
    sget v0, Lcom/google/android/material/R$layout;->design_navigation_item_header:I

    .line 56
    .line 57
    iget-object v1, p0, Lx3/A;->b:Lcom/google/android/material/internal/NavigationMenuView;

    .line 58
    .line 59
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    check-cast p1, Landroid/widget/LinearLayout;

    .line 64
    .line 65
    iput-object p1, p0, Lx3/A;->e:Landroid/widget/LinearLayout;

    .line 66
    .line 67
    const/4 v0, 0x2

    .line 68
    invoke-static {p1, v0}, LM/p0;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 69
    .line 70
    .line 71
    iget-object p1, p0, Lx3/A;->b:Lcom/google/android/material/internal/NavigationMenuView;

    .line 72
    .line 73
    iget-object v0, p0, Lx3/A;->m:Lx3/q;

    .line 74
    .line 75
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lm1/V;)V

    .line 76
    .line 77
    .line 78
    :cond_2
    iget-object p1, p0, Lx3/A;->b:Lcom/google/android/material/internal/NavigationMenuView;

    .line 79
    .line 80
    return-object p1
.end method

.method public getSubheaderInsetEnd()I
    .locals 1

    .line 1
    iget v0, p0, Lx3/A;->E:I

    .line 2
    .line 3
    return v0
.end method

.method public getSubheaderInsetStart()I
    .locals 1

    .line 1
    iget v0, p0, Lx3/A;->D:I

    .line 2
    .line 3
    return v0
.end method

.method public inflateHeaderView(I)Landroid/view/View;
    .locals 3

    .line 1
    iget-object v0, p0, Lx3/A;->n:Landroid/view/LayoutInflater;

    .line 2
    .line 3
    iget-object v1, p0, Lx3/A;->e:Landroid/widget/LinearLayout;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p0, p1}, Lx3/A;->addHeaderView(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    return-object p1
.end method

.method public initForMenu(Landroid/content/Context;Lk/p;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lx3/A;->n:Landroid/view/LayoutInflater;

    .line 6
    .line 7
    iput-object p2, p0, Lx3/A;->f:Lk/p;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    sget p2, Lcom/google/android/material/R$dimen;->design_navigation_separator_vertical_padding:I

    .line 14
    .line 15
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    iput p1, p0, Lx3/A;->J:I

    .line 20
    .line 21
    return-void
.end method

.method public onCloseMenu(Lk/p;Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 1
    instance-of v0, p1, Landroid/os/Bundle;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    check-cast p1, Landroid/os/Bundle;

    .line 6
    .line 7
    const-string v0, "android:menu:list"

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Lx3/A;->b:Lcom/google/android/material/internal/NavigationMenuView;

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    const-string v0, "android:menu:adapter"

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    iget-object v1, p0, Lx3/A;->m:Lx3/q;

    .line 29
    .line 30
    invoke-virtual {v1, v0}, Lx3/q;->restoreInstanceState(Landroid/os/Bundle;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    const-string v0, "android:menu:header"

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    if-eqz p1, :cond_2

    .line 40
    .line 41
    iget-object v0, p0, Lx3/A;->e:Landroid/widget/LinearLayout;

    .line 42
    .line 43
    invoke-virtual {v0, p1}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 44
    .line 45
    .line 46
    :cond_2
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lx3/A;->b:Lcom/google/android/material/internal/NavigationMenuView;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    new-instance v1, Landroid/util/SparseArray;

    .line 11
    .line 12
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 13
    .line 14
    .line 15
    iget-object v2, p0, Lx3/A;->b:Lcom/google/android/material/internal/NavigationMenuView;

    .line 16
    .line 17
    invoke-virtual {v2, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 18
    .line 19
    .line 20
    const-string v2, "android:menu:list"

    .line 21
    .line 22
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object v1, p0, Lx3/A;->m:Lx3/q;

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    const-string v2, "android:menu:adapter"

    .line 30
    .line 31
    invoke-virtual {v1}, Lx3/q;->createInstanceState()Landroid/os/Bundle;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    iget-object v1, p0, Lx3/A;->e:Landroid/widget/LinearLayout;

    .line 39
    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    new-instance v1, Landroid/util/SparseArray;

    .line 43
    .line 44
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 45
    .line 46
    .line 47
    iget-object v2, p0, Lx3/A;->e:Landroid/widget/LinearLayout;

    .line 48
    .line 49
    invoke-virtual {v2, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 50
    .line 51
    .line 52
    const-string v2, "android:menu:header"

    .line 53
    .line 54
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 55
    .line 56
    .line 57
    :cond_2
    return-object v0
.end method

.method public onSubMenuSelected(Lk/M;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public setBehindStatusBar(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lx3/A;->G:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_2

    .line 4
    .line 5
    iput-boolean p1, p0, Lx3/A;->G:Z

    .line 6
    .line 7
    invoke-virtual {p0}, Lx3/A;->getHeaderCount()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    const/4 v0, 0x0

    .line 12
    if-lez p1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-boolean p1, p0, Lx3/A;->G:Z

    .line 16
    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    iget p1, p0, Lx3/A;->I:I

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    move p1, v0

    .line 23
    :goto_1
    iget-object v1, p0, Lx3/A;->b:Lcom/google/android/material/internal/NavigationMenuView;

    .line 24
    .line 25
    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    invoke-virtual {v1, v0, p1, v0, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 30
    .line 31
    .line 32
    :cond_2
    return-void
.end method

.method public setCheckedItem(Lk/s;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lx3/A;->m:Lx3/q;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lx3/q;->setCheckedItem(Lk/s;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setDividerInsetEnd(I)V
    .locals 0

    .line 1
    iput p1, p0, Lx3/A;->C:I

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Lx3/A;->updateMenuView(Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public setDividerInsetStart(I)V
    .locals 0

    .line 1
    iput p1, p0, Lx3/A;->B:I

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Lx3/A;->updateMenuView(Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lx3/A;->j:I

    .line 2
    .line 3
    return-void
.end method

.method public setItemBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lx3/A;->v:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Lx3/A;->updateMenuView(Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public setItemForeground(Landroid/graphics/drawable/RippleDrawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lx3/A;->w:Landroid/graphics/drawable/RippleDrawable;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Lx3/A;->updateMenuView(Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public setItemHorizontalPadding(I)V
    .locals 0

    .line 1
    iput p1, p0, Lx3/A;->x:I

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Lx3/A;->updateMenuView(Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public setItemIconPadding(I)V
    .locals 0

    .line 1
    iput p1, p0, Lx3/A;->z:I

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Lx3/A;->updateMenuView(Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public setItemIconSize(I)V
    .locals 1

    .line 1
    iget v0, p0, Lx3/A;->A:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput p1, p0, Lx3/A;->A:I

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lx3/A;->F:Z

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    invoke-virtual {p0, p1}, Lx3/A;->updateMenuView(Z)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public setItemIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lx3/A;->u:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Lx3/A;->updateMenuView(Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public setItemMaxLines(I)V
    .locals 0

    .line 1
    iput p1, p0, Lx3/A;->H:I

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Lx3/A;->updateMenuView(Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public setItemTextAppearance(I)V
    .locals 0

    .line 1
    iput p1, p0, Lx3/A;->r:I

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Lx3/A;->updateMenuView(Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public setItemTextAppearanceActiveBoldEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lx3/A;->s:Z

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Lx3/A;->updateMenuView(Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public setItemTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lx3/A;->t:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Lx3/A;->updateMenuView(Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public setItemVerticalPadding(I)V
    .locals 0

    .line 1
    iput p1, p0, Lx3/A;->y:I

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Lx3/A;->updateMenuView(Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 1

    .line 1
    iput p1, p0, Lx3/A;->K:I

    .line 2
    .line 3
    iget-object v0, p0, Lx3/A;->b:Lcom/google/android/material/internal/NavigationMenuView;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/view/View;->setOverScrollMode(I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setSubheaderColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lx3/A;->q:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Lx3/A;->updateMenuView(Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public setSubheaderInsetEnd(I)V
    .locals 0

    .line 1
    iput p1, p0, Lx3/A;->E:I

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Lx3/A;->updateMenuView(Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public setSubheaderInsetStart(I)V
    .locals 0

    .line 1
    iput p1, p0, Lx3/A;->D:I

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Lx3/A;->updateMenuView(Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public setSubheaderTextAppearance(I)V
    .locals 0

    .line 1
    iput p1, p0, Lx3/A;->p:I

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Lx3/A;->updateMenuView(Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public setUpdateSuspended(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lx3/A;->m:Lx3/q;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lx3/q;->setUpdateSuspended(Z)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public updateMenuView(Z)V
    .locals 0

    .line 1
    iget-object p1, p0, Lx3/A;->m:Lx3/q;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lx3/q;->update()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
