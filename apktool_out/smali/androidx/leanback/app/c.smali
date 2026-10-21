.class public abstract Landroidx/leanback/app/c;
.super Landroidx/fragment/app/C;
.source "SourceFile"


# instance fields
.field public f0:Landroidx/leanback/widget/r0;

.field public g0:Landroidx/leanback/widget/VerticalGridView;

.field public final h0:Landroidx/leanback/widget/d0;

.field public i0:I

.field public j0:Z

.field public final k0:Landroidx/leanback/app/b;

.field public final l0:Landroidx/leanback/app/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/C;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/leanback/widget/d0;

    .line 5
    .line 6
    invoke-direct {v0}, Landroidx/leanback/widget/d0;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/leanback/app/c;->h0:Landroidx/leanback/widget/d0;

    .line 10
    .line 11
    const/4 v0, -0x1

    .line 12
    iput v0, p0, Landroidx/leanback/app/c;->i0:I

    .line 13
    .line 14
    new-instance v0, Landroidx/leanback/app/b;

    .line 15
    .line 16
    invoke-direct {v0, p0}, Landroidx/leanback/app/b;-><init>(Landroidx/leanback/app/c;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Landroidx/leanback/app/c;->k0:Landroidx/leanback/app/b;

    .line 20
    .line 21
    new-instance v0, Landroidx/leanback/app/a;

    .line 22
    .line 23
    invoke-direct {v0, p0}, Landroidx/leanback/app/a;-><init>(Landroidx/leanback/app/c;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Landroidx/leanback/app/c;->l0:Landroidx/leanback/app/a;

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public abstract findGridViewFromRoot(Landroid/view/View;)Landroidx/leanback/widget/VerticalGridView;
.end method

.method public final getBridgeAdapter()Landroidx/leanback/widget/d0;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/app/c;->h0:Landroidx/leanback/widget/d0;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSelectedPosition()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/leanback/app/c;->i0:I

    .line 2
    .line 3
    return v0
.end method

.method public getVerticalGridView()Landroidx/leanback/widget/VerticalGridView;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/app/c;->g0:Landroidx/leanback/widget/VerticalGridView;

    .line 2
    .line 3
    return-object v0
.end method

.method public final i()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/leanback/app/c;->f0:Landroidx/leanback/widget/r0;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Landroidx/leanback/app/c;->g0:Landroidx/leanback/widget/VerticalGridView;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Lm1/V;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Landroidx/leanback/app/c;->h0:Landroidx/leanback/widget/d0;

    .line 13
    .line 14
    if-eq v0, v1, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Landroidx/leanback/app/c;->g0:Landroidx/leanback/widget/VerticalGridView;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lm1/V;)V

    .line 19
    .line 20
    .line 21
    :cond_1
    invoke-virtual {v1}, Landroidx/leanback/widget/d0;->getItemCount()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_2

    .line 26
    .line 27
    iget v0, p0, Landroidx/leanback/app/c;->i0:I

    .line 28
    .line 29
    if-ltz v0, :cond_2

    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    iget-object v1, p0, Landroidx/leanback/app/c;->k0:Landroidx/leanback/app/b;

    .line 33
    .line 34
    iput-boolean v0, v1, Landroidx/leanback/app/b;->a:Z

    .line 35
    .line 36
    iget-object v0, v1, Landroidx/leanback/app/b;->b:Landroidx/leanback/app/c;

    .line 37
    .line 38
    iget-object v0, v0, Landroidx/leanback/app/c;->h0:Landroidx/leanback/widget/d0;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Lm1/V;->registerAdapterDataObserver(Lm1/X;)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_2
    iget v0, p0, Landroidx/leanback/app/c;->i0:I

    .line 45
    .line 46
    if-ltz v0, :cond_3

    .line 47
    .line 48
    iget-object v1, p0, Landroidx/leanback/app/c;->g0:Landroidx/leanback/widget/VerticalGridView;

    .line 49
    .line 50
    invoke-virtual {v1, v0}, Landroidx/leanback/widget/t;->setSelectedPosition(I)V

    .line 51
    .line 52
    .line 53
    :cond_3
    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    sget p3, Landroidx/leanback/R$layout;->lb_rows_fragment:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p0, p1}, Landroidx/leanback/app/c;->findGridViewFromRoot(Landroid/view/View;)Landroidx/leanback/widget/VerticalGridView;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    iput-object p2, p0, Landroidx/leanback/app/c;->g0:Landroidx/leanback/widget/VerticalGridView;

    .line 13
    .line 14
    iget-boolean p2, p0, Landroidx/leanback/app/c;->j0:Z

    .line 15
    .line 16
    if-eqz p2, :cond_0

    .line 17
    .line 18
    iput-boolean v0, p0, Landroidx/leanback/app/c;->j0:Z

    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/leanback/app/c;->onTransitionPrepare()Z

    .line 21
    .line 22
    .line 23
    :cond_0
    return-object p1
.end method

.method public onDestroyView()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/C;->onDestroyView()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/leanback/app/c;->k0:Landroidx/leanback/app/b;

    .line 5
    .line 6
    iget-boolean v1, v0, Landroidx/leanback/app/b;->a:Z

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iput-boolean v1, v0, Landroidx/leanback/app/b;->a:Z

    .line 12
    .line 13
    iget-object v1, v0, Landroidx/leanback/app/b;->b:Landroidx/leanback/app/c;

    .line 14
    .line 15
    iget-object v1, v1, Landroidx/leanback/app/c;->h0:Landroidx/leanback/widget/d0;

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Lm1/V;->unregisterAdapterDataObserver(Lm1/X;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Landroidx/leanback/app/c;->g0:Landroidx/leanback/widget/VerticalGridView;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    const/4 v2, 0x1

    .line 26
    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->swapAdapter(Lm1/V;Z)V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Landroidx/leanback/app/c;->g0:Landroidx/leanback/widget/VerticalGridView;

    .line 30
    .line 31
    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/C;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const-string v0, "currentSelectedPosition"

    .line 5
    .line 6
    iget v1, p0, Landroidx/leanback/app/c;->i0:I

    .line 7
    .line 8
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onTransitionPrepare()Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/leanback/app/c;->g0:Landroidx/leanback/widget/VerticalGridView;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, v2}, Landroidx/leanback/widget/t;->setAnimateChildLayout(Z)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Landroidx/leanback/app/c;->g0:Landroidx/leanback/widget/VerticalGridView;

    .line 11
    .line 12
    invoke-virtual {v0, v2}, Landroidx/leanback/widget/t;->setScrollEnabled(Z)V

    .line 13
    .line 14
    .line 15
    return v1

    .line 16
    :cond_0
    iput-boolean v1, p0, Landroidx/leanback/app/c;->j0:Z

    .line 17
    .line 18
    return v2
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    const-string p1, "currentSelectedPosition"

    .line 4
    .line 5
    const/4 v0, -0x1

    .line 6
    invoke-virtual {p2, p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    iput p1, p0, Landroidx/leanback/app/c;->i0:I

    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0}, Landroidx/leanback/app/c;->i()V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Landroidx/leanback/app/c;->g0:Landroidx/leanback/widget/VerticalGridView;

    .line 16
    .line 17
    iget-object p2, p0, Landroidx/leanback/app/c;->l0:Landroidx/leanback/app/a;

    .line 18
    .line 19
    invoke-virtual {p1, p2}, Landroidx/leanback/widget/t;->setOnChildViewHolderSelectedListener(Landroidx/leanback/widget/u0;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public setAdapter(Landroidx/leanback/widget/r0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/leanback/app/c;->f0:Landroidx/leanback/widget/r0;

    .line 2
    .line 3
    if-eq v0, p1, :cond_1

    .line 4
    .line 5
    iput-object p1, p0, Landroidx/leanback/app/c;->f0:Landroidx/leanback/widget/r0;

    .line 6
    .line 7
    move-object p1, p0

    .line 8
    check-cast p1, Landroidx/leanback/app/h;

    .line 9
    .line 10
    iget-object v0, p1, Landroidx/leanback/app/c;->h0:Landroidx/leanback/widget/d0;

    .line 11
    .line 12
    iget-object v1, p1, Landroidx/leanback/app/c;->f0:Landroidx/leanback/widget/r0;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroidx/leanback/widget/d0;->setAdapter(Landroidx/leanback/widget/r0;)V

    .line 15
    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-virtual {v0, v1}, Landroidx/leanback/widget/d0;->setPresenter(Landroidx/leanback/widget/D0;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p1, Landroidx/leanback/app/c;->g0:Landroidx/leanback/widget/VerticalGridView;

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {p1}, Landroidx/leanback/app/c;->i()V

    .line 26
    .line 27
    .line 28
    :cond_0
    iput-object v1, p1, Landroidx/leanback/app/h;->m0:Landroidx/leanback/widget/b0;

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p1, Landroidx/leanback/app/h;->p0:Z

    .line 32
    .line 33
    invoke-virtual {p1}, Landroidx/leanback/app/c;->getBridgeAdapter()Landroidx/leanback/widget/d0;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    iget-object p1, p1, Landroidx/leanback/app/h;->x0:Landroidx/leanback/app/d;

    .line 40
    .line 41
    invoke-virtual {v0, p1}, Landroidx/leanback/widget/d0;->setAdapterListener(Landroidx/leanback/widget/Z;)V

    .line 42
    .line 43
    .line 44
    :cond_1
    return-void
.end method

.method public setSelectedPosition(I)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Landroidx/leanback/app/c;->setSelectedPosition(IZ)V

    return-void
.end method

.method public setSelectedPosition(IZ)V
    .locals 2

    .line 2
    iget v0, p0, Landroidx/leanback/app/c;->i0:I

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iput p1, p0, Landroidx/leanback/app/c;->i0:I

    .line 4
    iget-object v0, p0, Landroidx/leanback/app/c;->g0:Landroidx/leanback/widget/VerticalGridView;

    if-eqz v0, :cond_3

    .line 5
    iget-object v1, p0, Landroidx/leanback/app/c;->k0:Landroidx/leanback/app/b;

    iget-boolean v1, v1, Landroidx/leanback/app/b;->a:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 6
    invoke-virtual {v0, p1}, Landroidx/leanback/widget/t;->setSelectedPositionSmooth(I)V

    return-void

    .line 7
    :cond_2
    invoke-virtual {v0, p1}, Landroidx/leanback/widget/t;->setSelectedPosition(I)V

    :cond_3
    :goto_0
    return-void
.end method
