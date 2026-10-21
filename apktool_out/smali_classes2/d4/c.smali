.class public final Ld4/c;
.super Lm1/X;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;


# direct methods
.method public constructor <init>(Lcom/malinskiy/superrecyclerview/SuperRecyclerView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld4/c;->a:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

    .line 2
    .line 3
    invoke-direct {p0}, Lm1/X;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Ld4/c;->a:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/malinskiy/superrecyclerview/SuperRecyclerView;->f:Landroid/view/ViewStub;

    .line 4
    .line 5
    const/16 v2, 0x8

    .line 6
    .line 7
    invoke-virtual {v1, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 8
    .line 9
    .line 10
    iget-object v1, v0, Lcom/malinskiy/superrecyclerview/SuperRecyclerView;->j:Landroid/view/ViewStub;

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    iput-boolean v1, v0, Lcom/malinskiy/superrecyclerview/SuperRecyclerView;->E:Z

    .line 17
    .line 18
    iget-object v3, v0, Lcom/malinskiy/superrecyclerview/SuperRecyclerView;->F:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 19
    .line 20
    invoke-virtual {v3, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 21
    .line 22
    .line 23
    iget-object v3, v0, Lcom/malinskiy/superrecyclerview/SuperRecyclerView;->e:Landroidx/recyclerview/widget/RecyclerView;

    .line 24
    .line 25
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Lm1/V;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v3}, Lm1/V;->getItemCount()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-nez v3, :cond_0

    .line 34
    .line 35
    iget v3, v0, Lcom/malinskiy/superrecyclerview/SuperRecyclerView;->y:I

    .line 36
    .line 37
    if-eqz v3, :cond_0

    .line 38
    .line 39
    iget-object v0, v0, Lcom/malinskiy/superrecyclerview/SuperRecyclerView;->m:Landroid/view/ViewStub;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_0
    iget v1, v0, Lcom/malinskiy/superrecyclerview/SuperRecyclerView;->y:I

    .line 46
    .line 47
    if-eqz v1, :cond_1

    .line 48
    .line 49
    iget-object v0, v0, Lcom/malinskiy/superrecyclerview/SuperRecyclerView;->m:Landroid/view/ViewStub;

    .line 50
    .line 51
    invoke-virtual {v0, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 52
    .line 53
    .line 54
    :cond_1
    return-void
.end method

.method public onChanged()V
    .locals 0

    .line 1
    invoke-super {p0}, Lm1/X;->onChanged()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Ld4/c;->a()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onItemRangeChanged(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lm1/X;->onItemRangeChanged(II)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Ld4/c;->a()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lm1/X;->onItemRangeInserted(II)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Ld4/c;->a()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lm1/X;->onItemRangeRemoved(II)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Ld4/c;->a()V

    .line 5
    .line 6
    .line 7
    return-void
.end method
