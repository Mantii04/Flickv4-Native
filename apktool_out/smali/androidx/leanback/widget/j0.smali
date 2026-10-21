.class public final Landroidx/leanback/widget/j0;
.super Landroidx/leanback/widget/d0;
.source "SourceFile"


# instance fields
.field public final k:Landroidx/leanback/widget/l0;

.field public final synthetic l:Landroidx/leanback/widget/m0;


# direct methods
.method public constructor <init>(Landroidx/leanback/widget/m0;Landroidx/leanback/widget/l0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/leanback/widget/j0;->l:Landroidx/leanback/widget/m0;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/leanback/widget/d0;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Landroidx/leanback/widget/j0;->k:Landroidx/leanback/widget/l0;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onAddPresenter(Landroidx/leanback/widget/C0;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/j0;->k:Landroidx/leanback/widget/l0;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/leanback/widget/l0;->getGridView()Landroidx/leanback/widget/HorizontalGridView;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getRecycledViewPool()Lm1/o0;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Landroidx/leanback/widget/j0;->l:Landroidx/leanback/widget/m0;

    .line 12
    .line 13
    invoke-virtual {v1, p1}, Landroidx/leanback/widget/m0;->getRecycledPoolSize(Landroidx/leanback/widget/C0;)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    invoke-virtual {v0, p2, p1}, Lm1/o0;->setMaxRecycledViews(II)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public onAttachedToWindow(Landroidx/leanback/widget/b0;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lm1/B0;->a:Landroid/view/View;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/leanback/widget/j0;->l:Landroidx/leanback/widget/m0;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/leanback/widget/j0;->k:Landroidx/leanback/widget/l0;

    .line 6
    .line 7
    invoke-virtual {v1, v2, v0}, Landroidx/leanback/widget/m0;->applySelectLevelToChild(Landroidx/leanback/widget/l0;Landroid/view/View;)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p1, Lm1/B0;->a:Landroid/view/View;

    .line 11
    .line 12
    invoke-virtual {v2, p1}, Landroidx/leanback/widget/M0;->syncActivatedStatus(Landroid/view/View;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public onBind(Landroidx/leanback/widget/b0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/j0;->k:Landroidx/leanback/widget/l0;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/leanback/widget/M0;->getOnItemViewClickedListener()Landroidx/leanback/widget/u;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p1, Landroidx/leanback/widget/b0;->v:Landroidx/leanback/widget/A0;

    .line 10
    .line 11
    iget-object v0, v0, Landroidx/leanback/widget/A0;->a:Landroid/view/View;

    .line 12
    .line 13
    new-instance v1, Landroidx/leanback/widget/i0;

    .line 14
    .line 15
    invoke-direct {v1, p0, p1}, Landroidx/leanback/widget/i0;-><init>(Landroidx/leanback/widget/j0;Landroidx/leanback/widget/b0;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public onCreate(Landroidx/leanback/widget/b0;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lm1/B0;->a:Landroid/view/View;

    .line 2
    .line 3
    instance-of v1, v0, Landroid/view/ViewGroup;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Landroid/view/ViewGroup;

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-static {v0, v1}, Landroidx/leanback/transition/q;->setTransitionGroup(Landroid/view/ViewGroup;Z)V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Landroidx/leanback/widget/j0;->l:Landroidx/leanback/widget/m0;

    .line 14
    .line 15
    iget-object v0, v0, Landroidx/leanback/widget/m0;->l:Landroidx/leanback/widget/m1;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object p1, p1, Lm1/B0;->a:Landroid/view/View;

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Landroidx/leanback/widget/m1;->onViewCreated(Landroid/view/View;)V

    .line 22
    .line 23
    .line 24
    :cond_1
    return-void
.end method

.method public onUnbind(Landroidx/leanback/widget/b0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/j0;->k:Landroidx/leanback/widget/l0;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/leanback/widget/M0;->getOnItemViewClickedListener()Landroidx/leanback/widget/u;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p1, p1, Landroidx/leanback/widget/b0;->v:Landroidx/leanback/widget/A0;

    .line 10
    .line 11
    iget-object p1, p1, Landroidx/leanback/widget/A0;->a:Landroid/view/View;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method
