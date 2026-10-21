.class public final Lflix/com/vision/activities/leanback/fragment/j;
.super Landroidx/leanback/widget/m0;
.source "SourceFile"


# virtual methods
.method public initializeRowViewHolder(Landroidx/leanback/widget/M0;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroidx/leanback/widget/m0;->initializeRowViewHolder(Landroidx/leanback/widget/M0;)V

    .line 2
    .line 3
    .line 4
    check-cast p1, Landroidx/leanback/widget/l0;

    .line 5
    .line 6
    invoke-virtual {p1}, Landroidx/leanback/widget/l0;->getGridView()Landroidx/leanback/widget/HorizontalGridView;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    add-int/lit8 v2, v2, 0x14

    .line 30
    .line 31
    const/16 v3, 0x28

    .line 32
    .line 33
    invoke-virtual {p1, v3, v0, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 34
    .line 35
    .line 36
    return-void
.end method
