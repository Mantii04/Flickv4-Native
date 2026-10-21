.class public Landroidx/leanback/app/h;
.super Landroidx/leanback/app/c;
.source "SourceFile"


# instance fields
.field public m0:Landroidx/leanback/widget/b0;

.field public n0:I

.field public final o0:Z

.field public p0:Z

.field public q0:I

.field public final r0:Z

.field public s0:Z

.field public t0:Landroidx/leanback/widget/v;

.field public u0:Landroidx/leanback/widget/u;

.field public v0:Lm1/o0;

.field public w0:Ljava/util/ArrayList;

.field public final x0:Landroidx/leanback/app/d;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/leanback/app/c;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroidx/leanback/app/h;->o0:Z

    .line 6
    .line 7
    const/high16 v1, -0x80000000

    .line 8
    .line 9
    iput v1, p0, Landroidx/leanback/app/h;->q0:I

    .line 10
    .line 11
    iput-boolean v0, p0, Landroidx/leanback/app/h;->r0:Z

    .line 12
    .line 13
    new-instance v0, Landroidx/leanback/app/d;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Landroidx/leanback/app/d;-><init>(Landroidx/leanback/app/h;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Landroidx/leanback/app/h;->x0:Landroidx/leanback/app/d;

    .line 19
    .line 20
    return-void
.end method

.method public static j(Landroidx/leanback/widget/b0;ZZ)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/leanback/widget/b0;->getExtraObject()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/leanback/app/g;

    .line 6
    .line 7
    iget-object v1, v0, Landroidx/leanback/app/g;->c:Landroid/animation/TimeAnimator;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/animation/Animator;->end()V

    .line 10
    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    const/high16 v2, 0x3f800000    # 1.0f

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v2, 0x0

    .line 18
    :goto_0
    iget-object v3, v0, Landroidx/leanback/app/g;->b:Landroidx/leanback/widget/A0;

    .line 19
    .line 20
    iget-object v4, v0, Landroidx/leanback/app/g;->a:Landroidx/leanback/widget/N0;

    .line 21
    .line 22
    if-eqz p2, :cond_1

    .line 23
    .line 24
    invoke-virtual {v4, v3, v2}, Landroidx/leanback/widget/N0;->setSelectLevel(Landroidx/leanback/widget/A0;F)V

    .line 25
    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    invoke-virtual {v4, v3}, Landroidx/leanback/widget/N0;->getSelectLevel(Landroidx/leanback/widget/A0;)F

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    cmpl-float p2, p2, v2

    .line 33
    .line 34
    if-eqz p2, :cond_2

    .line 35
    .line 36
    invoke-virtual {v4, v3}, Landroidx/leanback/widget/N0;->getSelectLevel(Landroidx/leanback/widget/A0;)F

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    iput p2, v0, Landroidx/leanback/app/g;->f:F

    .line 41
    .line 42
    sub-float/2addr v2, p2

    .line 43
    iput v2, v0, Landroidx/leanback/app/g;->g:F

    .line 44
    .line 45
    invoke-virtual {v1}, Landroid/animation/TimeAnimator;->start()V

    .line 46
    .line 47
    .line 48
    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroidx/leanback/widget/b0;->getPresenter()Landroidx/leanback/widget/C0;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    check-cast p2, Landroidx/leanback/widget/N0;

    .line 53
    .line 54
    invoke-virtual {p0}, Landroidx/leanback/widget/b0;->getViewHolder()Landroidx/leanback/widget/A0;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-virtual {p2, p0, p1}, Landroidx/leanback/widget/N0;->setRowViewSelected(Landroidx/leanback/widget/A0;Z)V

    .line 59
    .line 60
    .line 61
    return-void
.end method


# virtual methods
.method public findGridViewFromRoot(Landroid/view/View;)Landroidx/leanback/widget/VerticalGridView;
    .locals 1

    .line 1
    sget v0, Landroidx/leanback/R$id;->container_list:I

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroidx/leanback/widget/VerticalGridView;

    .line 8
    .line 9
    return-object p1
.end method

.method public getRowViewHolder(I)Landroidx/leanback/widget/M0;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/leanback/app/c;->getVerticalGridView()Landroidx/leanback/widget/VerticalGridView;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Lm1/B0;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Landroidx/leanback/widget/b0;

    .line 14
    .line 15
    if-nez p1, :cond_1

    .line 16
    .line 17
    return-object v1

    .line 18
    :cond_1
    invoke-virtual {p1}, Landroidx/leanback/widget/b0;->getPresenter()Landroidx/leanback/widget/C0;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Landroidx/leanback/widget/N0;

    .line 23
    .line 24
    invoke-virtual {p1}, Landroidx/leanback/widget/b0;->getViewHolder()Landroidx/leanback/widget/A0;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {v0, p1}, Landroidx/leanback/widget/N0;->getRowViewHolder(Landroidx/leanback/widget/A0;)Landroidx/leanback/widget/M0;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    return-object p1
.end method

.method public bridge synthetic getSelectedPosition()I
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/leanback/app/c;->getSelectedPosition()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public bridge synthetic onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/leanback/app/c;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/leanback/app/h;->p0:Z

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Landroidx/leanback/app/h;->m0:Landroidx/leanback/widget/b0;

    .line 6
    .line 7
    iput-object v0, p0, Landroidx/leanback/app/h;->v0:Lm1/o0;

    .line 8
    .line 9
    invoke-super {p0}, Landroidx/leanback/app/c;->onDestroyView()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public bridge synthetic onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/leanback/app/c;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onTransitionPrepare()Z
    .locals 7

    .line 1
    invoke-super {p0}, Landroidx/leanback/app/c;->onTransitionPrepare()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Landroidx/leanback/app/h;->s0:Z

    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/leanback/app/c;->getVerticalGridView()Landroidx/leanback/widget/VerticalGridView;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    const/4 v4, 0x0

    .line 21
    :goto_0
    if-ge v4, v3, :cond_0

    .line 22
    .line 23
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    invoke-virtual {v2, v5}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Lm1/B0;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    check-cast v5, Landroidx/leanback/widget/b0;

    .line 32
    .line 33
    invoke-virtual {v5}, Landroidx/leanback/widget/b0;->getPresenter()Landroidx/leanback/widget/C0;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    check-cast v6, Landroidx/leanback/widget/N0;

    .line 38
    .line 39
    invoke-virtual {v5}, Landroidx/leanback/widget/b0;->getViewHolder()Landroidx/leanback/widget/A0;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    invoke-virtual {v6, v5}, Landroidx/leanback/widget/N0;->getRowViewHolder(Landroidx/leanback/widget/A0;)Landroidx/leanback/widget/M0;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    invoke-virtual {v6, v5, v1}, Landroidx/leanback/widget/N0;->freeze(Landroidx/leanback/widget/M0;Z)V

    .line 48
    .line 49
    .line 50
    add-int/lit8 v4, v4, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    return v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/leanback/app/c;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/leanback/app/c;->getVerticalGridView()Landroidx/leanback/widget/VerticalGridView;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    sget p2, Landroidx/leanback/R$id;->row_content:I

    .line 9
    .line 10
    invoke-virtual {p1, p2}, Landroidx/leanback/widget/t;->setItemAlignmentViewId(I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/leanback/app/c;->getVerticalGridView()Landroidx/leanback/widget/VerticalGridView;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const/4 p2, 0x2

    .line 18
    invoke-virtual {p1, p2}, Landroidx/leanback/widget/t;->setSaveChildrenPolicy(I)V

    .line 19
    .line 20
    .line 21
    iget p1, p0, Landroidx/leanback/app/h;->q0:I

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Landroidx/leanback/app/h;->setAlignment(I)V

    .line 24
    .line 25
    .line 26
    const/4 p1, 0x0

    .line 27
    iput-object p1, p0, Landroidx/leanback/app/h;->v0:Lm1/o0;

    .line 28
    .line 29
    iput-object p1, p0, Landroidx/leanback/app/h;->w0:Ljava/util/ArrayList;

    .line 30
    .line 31
    return-void
.end method

.method public setAlignment(I)V
    .locals 3

    .line 1
    const/high16 v0, -0x80000000

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iput p1, p0, Landroidx/leanback/app/h;->q0:I

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/leanback/app/c;->getVerticalGridView()Landroidx/leanback/widget/VerticalGridView;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p1, v0}, Landroidx/leanback/widget/t;->setItemAlignmentOffset(I)V

    .line 16
    .line 17
    .line 18
    const/high16 v1, -0x40800000    # -1.0f

    .line 19
    .line 20
    invoke-virtual {p1, v1}, Landroidx/leanback/widget/t;->setItemAlignmentOffsetPercent(F)V

    .line 21
    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    invoke-virtual {p1, v2}, Landroidx/leanback/widget/t;->setItemAlignmentOffsetWithPadding(Z)V

    .line 25
    .line 26
    .line 27
    iget v2, p0, Landroidx/leanback/app/h;->q0:I

    .line 28
    .line 29
    invoke-virtual {p1, v2}, Landroidx/leanback/widget/t;->setWindowAlignmentOffset(I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v1}, Landroidx/leanback/widget/t;->setWindowAlignmentOffsetPercent(F)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0}, Landroidx/leanback/widget/t;->setWindowAlignment(I)V

    .line 36
    .line 37
    .line 38
    :cond_1
    :goto_0
    return-void
.end method

.method public setOnItemViewClickedListener(Landroidx/leanback/widget/u;)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroidx/leanback/app/h;->u0:Landroidx/leanback/widget/u;

    .line 2
    .line 3
    iget-boolean p1, p0, Landroidx/leanback/app/h;->p0:Z

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 9
    .line 10
    const-string v0, "Item clicked listener must be set before views are created"

    .line 11
    .line 12
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw p1
.end method

.method public setOnItemViewSelectedListener(Landroidx/leanback/widget/v;)V
    .locals 4

    .line 1
    iput-object p1, p0, Landroidx/leanback/app/h;->t0:Landroidx/leanback/widget/v;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/leanback/app/c;->getVerticalGridView()Landroidx/leanback/widget/VerticalGridView;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    :goto_0
    if-ge v1, v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Lm1/B0;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Landroidx/leanback/widget/b0;

    .line 25
    .line 26
    if-nez v2, :cond_0

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    invoke-virtual {v2}, Landroidx/leanback/widget/b0;->getPresenter()Landroidx/leanback/widget/C0;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    check-cast v3, Landroidx/leanback/widget/N0;

    .line 35
    .line 36
    invoke-virtual {v2}, Landroidx/leanback/widget/b0;->getViewHolder()Landroidx/leanback/widget/A0;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v3, v2}, Landroidx/leanback/widget/N0;->getRowViewHolder(Landroidx/leanback/widget/A0;)Landroidx/leanback/widget/M0;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    :goto_1
    iget-object v3, p0, Landroidx/leanback/app/h;->t0:Landroidx/leanback/widget/v;

    .line 45
    .line 46
    invoke-virtual {v2, v3}, Landroidx/leanback/widget/M0;->setOnItemViewSelectedListener(Landroidx/leanback/widget/v;)V

    .line 47
    .line 48
    .line 49
    add-int/lit8 v1, v1, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    return-void
.end method

.method public bridge synthetic setSelectedPosition(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/leanback/app/c;->setSelectedPosition(I)V

    return-void
.end method

.method public bridge synthetic setSelectedPosition(IZ)V
    .locals 0

    .line 2
    invoke-super {p0, p1, p2}, Landroidx/leanback/app/c;->setSelectedPosition(IZ)V

    return-void
.end method

.method public setSelectedPosition(IZLandroidx/leanback/widget/B0;)V
    .locals 2

    .line 3
    invoke-virtual {p0}, Landroidx/leanback/app/c;->getVerticalGridView()Landroidx/leanback/widget/VerticalGridView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_1

    .line 4
    new-instance v1, Landroidx/leanback/app/f;

    invoke-direct {v1, p3}, Landroidx/leanback/app/f;-><init>(Landroidx/leanback/widget/B0;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz p2, :cond_2

    .line 5
    invoke-virtual {v0, p1, v1}, Landroidx/leanback/widget/t;->setSelectedPositionSmooth(ILandroidx/leanback/widget/A1;)V

    return-void

    .line 6
    :cond_2
    invoke-virtual {v0, p1, v1}, Landroidx/leanback/widget/t;->setSelectedPosition(ILandroidx/leanback/widget/A1;)V

    return-void
.end method
