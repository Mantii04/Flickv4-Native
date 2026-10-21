.class public final Landroidx/leanback/app/d;
.super Landroidx/leanback/widget/Z;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroidx/leanback/app/h;


# direct methods
.method public constructor <init>(Landroidx/leanback/app/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/leanback/app/d;->a:Landroidx/leanback/app/h;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/leanback/widget/Z;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAddPresenter(Landroidx/leanback/widget/C0;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/leanback/app/d;->a:Landroidx/leanback/app/h;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onAttachedToWindow(Landroidx/leanback/widget/b0;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/leanback/app/d;->a:Landroidx/leanback/app/h;

    .line 2
    .line 3
    iget-boolean v1, v0, Landroidx/leanback/app/h;->o0:Z

    .line 4
    .line 5
    invoke-virtual {p1}, Landroidx/leanback/widget/b0;->getPresenter()Landroidx/leanback/widget/C0;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    check-cast v2, Landroidx/leanback/widget/N0;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroidx/leanback/widget/b0;->getViewHolder()Landroidx/leanback/widget/A0;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-virtual {v2, v3, v1}, Landroidx/leanback/widget/N0;->setRowViewExpanded(Landroidx/leanback/widget/A0;Z)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Landroidx/leanback/widget/b0;->getPresenter()Landroidx/leanback/widget/C0;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Landroidx/leanback/widget/N0;

    .line 23
    .line 24
    invoke-virtual {p1}, Landroidx/leanback/widget/b0;->getViewHolder()Landroidx/leanback/widget/A0;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {v1, p1}, Landroidx/leanback/widget/N0;->getRowViewHolder(Landroidx/leanback/widget/A0;)Landroidx/leanback/widget/M0;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iget-boolean v2, v0, Landroidx/leanback/app/h;->r0:Z

    .line 33
    .line 34
    invoke-virtual {v1, p1, v2}, Landroidx/leanback/widget/N0;->setEntranceTransitionState(Landroidx/leanback/widget/M0;Z)V

    .line 35
    .line 36
    .line 37
    iget-object v2, v0, Landroidx/leanback/app/h;->t0:Landroidx/leanback/widget/v;

    .line 38
    .line 39
    invoke-virtual {p1, v2}, Landroidx/leanback/widget/M0;->setOnItemViewSelectedListener(Landroidx/leanback/widget/v;)V

    .line 40
    .line 41
    .line 42
    iget-object v2, v0, Landroidx/leanback/app/h;->u0:Landroidx/leanback/widget/u;

    .line 43
    .line 44
    invoke-virtual {p1, v2}, Landroidx/leanback/widget/M0;->setOnItemViewClickedListener(Landroidx/leanback/widget/u;)V

    .line 45
    .line 46
    .line 47
    iget-boolean v0, v0, Landroidx/leanback/app/h;->s0:Z

    .line 48
    .line 49
    invoke-virtual {v1, p1, v0}, Landroidx/leanback/widget/N0;->freeze(Landroidx/leanback/widget/M0;Z)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public onBind(Landroidx/leanback/widget/b0;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/leanback/app/d;->a:Landroidx/leanback/app/h;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onCreate(Landroidx/leanback/widget/b0;)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/leanback/app/d;->a:Landroidx/leanback/app/h;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/leanback/app/c;->getVerticalGridView()Landroidx/leanback/widget/VerticalGridView;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {p1}, Landroidx/leanback/widget/b0;->getPresenter()Landroidx/leanback/widget/C0;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroidx/leanback/widget/N0;

    .line 18
    .line 19
    invoke-virtual {p1}, Landroidx/leanback/widget/b0;->getViewHolder()Landroidx/leanback/widget/A0;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {v1, v3}, Landroidx/leanback/widget/N0;->getRowViewHolder(Landroidx/leanback/widget/A0;)Landroidx/leanback/widget/M0;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    instance-of v3, v1, Landroidx/leanback/widget/l0;

    .line 28
    .line 29
    if-eqz v3, :cond_3

    .line 30
    .line 31
    check-cast v1, Landroidx/leanback/widget/l0;

    .line 32
    .line 33
    invoke-virtual {v1}, Landroidx/leanback/widget/l0;->getGridView()Landroidx/leanback/widget/HorizontalGridView;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    iget-object v4, v0, Landroidx/leanback/app/h;->v0:Lm1/o0;

    .line 38
    .line 39
    if-nez v4, :cond_1

    .line 40
    .line 41
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getRecycledViewPool()Lm1/o0;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    iput-object v3, v0, Landroidx/leanback/app/h;->v0:Lm1/o0;

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->setRecycledViewPool(Lm1/o0;)V

    .line 49
    .line 50
    .line 51
    :goto_0
    invoke-virtual {v1}, Landroidx/leanback/widget/l0;->getBridgeAdapter()Landroidx/leanback/widget/d0;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    iget-object v3, v0, Landroidx/leanback/app/h;->w0:Ljava/util/ArrayList;

    .line 56
    .line 57
    if-nez v3, :cond_2

    .line 58
    .line 59
    invoke-virtual {v1}, Landroidx/leanback/widget/d0;->getPresenterMapper()Ljava/util/ArrayList;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    iput-object v1, v0, Landroidx/leanback/app/h;->w0:Ljava/util/ArrayList;

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_2
    invoke-virtual {v1, v3}, Landroidx/leanback/widget/d0;->setPresenterMapper(Ljava/util/ArrayList;)V

    .line 67
    .line 68
    .line 69
    :cond_3
    :goto_1
    const/4 v1, 0x1

    .line 70
    iput-boolean v1, v0, Landroidx/leanback/app/h;->p0:Z

    .line 71
    .line 72
    new-instance v0, Landroidx/leanback/app/g;

    .line 73
    .line 74
    invoke-direct {v0, p1}, Landroidx/leanback/app/g;-><init>(Landroidx/leanback/widget/b0;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, v0}, Landroidx/leanback/widget/b0;->setExtraObject(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    invoke-static {p1, v2, v1}, Landroidx/leanback/app/h;->j(Landroidx/leanback/widget/b0;ZZ)V

    .line 81
    .line 82
    .line 83
    return-void
.end method

.method public onDetachedFromWindow(Landroidx/leanback/widget/b0;)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/leanback/app/d;->a:Landroidx/leanback/app/h;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/leanback/app/h;->m0:Landroidx/leanback/widget/b0;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-ne v1, p1, :cond_0

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    const/4 v4, 0x1

    .line 10
    invoke-static {v1, v3, v4}, Landroidx/leanback/app/h;->j(Landroidx/leanback/widget/b0;ZZ)V

    .line 11
    .line 12
    .line 13
    iput-object v2, v0, Landroidx/leanback/app/h;->m0:Landroidx/leanback/widget/b0;

    .line 14
    .line 15
    :cond_0
    invoke-virtual {p1}, Landroidx/leanback/widget/b0;->getPresenter()Landroidx/leanback/widget/C0;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Landroidx/leanback/widget/N0;

    .line 20
    .line 21
    invoke-virtual {p1}, Landroidx/leanback/widget/b0;->getViewHolder()Landroidx/leanback/widget/A0;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {v1, p1}, Landroidx/leanback/widget/N0;->getRowViewHolder(Landroidx/leanback/widget/A0;)Landroidx/leanback/widget/M0;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p1, v2}, Landroidx/leanback/widget/M0;->setOnItemViewSelectedListener(Landroidx/leanback/widget/v;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v2}, Landroidx/leanback/widget/M0;->setOnItemViewClickedListener(Landroidx/leanback/widget/u;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public onUnbind(Landroidx/leanback/widget/b0;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-static {p1, v0, v1}, Landroidx/leanback/app/h;->j(Landroidx/leanback/widget/b0;ZZ)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Landroidx/leanback/app/d;->a:Landroidx/leanback/app/h;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    return-void
.end method
