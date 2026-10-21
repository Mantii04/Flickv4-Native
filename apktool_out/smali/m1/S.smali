.class public final Lm1/S;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lm1/S;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public processAppeared(Lm1/B0;Lm1/a0;Lm1/a0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lm1/S;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {p1, v1}, Lm1/B0;->setIsRecyclable(Z)V

    .line 8
    .line 9
    .line 10
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->V:Lm1/b0;

    .line 11
    .line 12
    invoke-virtual {v1, p1, p2, p3}, Lm1/b0;->animateAppearance(Lm1/B0;Lm1/a0;Lm1/a0;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->O()V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public processDisappeared(Lm1/B0;Lm1/a0;Lm1/a0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lm1/S;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->f:Lm1/p0;

    .line 4
    .line 5
    invoke-virtual {v1, p1}, Lm1/p0;->j(Lm1/B0;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->g(Lm1/B0;)V

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {p1, v1}, Lm1/B0;->setIsRecyclable(Z)V

    .line 13
    .line 14
    .line 15
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->V:Lm1/b0;

    .line 16
    .line 17
    invoke-virtual {v1, p1, p2, p3}, Lm1/b0;->animateDisappearance(Lm1/B0;Lm1/a0;Lm1/a0;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->O()V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public processPersistent(Lm1/B0;Lm1/a0;Lm1/a0;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Lm1/B0;->setIsRecyclable(Z)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lm1/S;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    .line 7
    iget-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView;->M:Z

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->V:Lm1/b0;

    .line 12
    .line 13
    invoke-virtual {v1, p1, p1, p2, p3}, Lm1/b0;->animateChange(Lm1/B0;Lm1/B0;Lm1/a0;Lm1/a0;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->O()V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->V:Lm1/b0;

    .line 24
    .line 25
    invoke-virtual {v1, p1, p2, p3}, Lm1/b0;->animatePersistence(Lm1/B0;Lm1/a0;Lm1/a0;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->O()V

    .line 32
    .line 33
    .line 34
    :cond_1
    return-void
.end method

.method public unused(Lm1/B0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lm1/S;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->w:Lm1/i0;

    .line 4
    .line 5
    iget-object p1, p1, Lm1/B0;->a:Landroid/view/View;

    .line 6
    .line 7
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->f:Lm1/p0;

    .line 8
    .line 9
    invoke-virtual {v1, p1, v0}, Lm1/i0;->removeAndRecycleView(Landroid/view/View;Lm1/p0;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
