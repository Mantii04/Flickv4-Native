.class public final LM/B;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Runnable;

.field public final b:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final c:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, LM/B;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, LM/B;->c:Ljava/util/HashMap;

    .line 17
    .line 18
    iput-object p1, p0, LM/B;->a:Ljava/lang/Runnable;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public addMenuProvider(LM/E;)V
    .locals 1

    .line 1
    iget-object v0, p0, LM/B;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 2
    iget-object p1, p0, LM/B;->a:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public addMenuProvider(LM/E;Landroidx/lifecycle/t;)V
    .locals 4

    .line 3
    invoke-virtual {p0, p1}, LM/B;->addMenuProvider(LM/E;)V

    .line 4
    invoke-interface {p2}, Landroidx/lifecycle/t;->getLifecycle()Landroidx/lifecycle/o;

    move-result-object p2

    .line 5
    iget-object v0, p0, LM/B;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LM/A;

    if-eqz v1, :cond_0

    .line 6
    iget-object v2, v1, LM/A;->a:Landroidx/lifecycle/o;

    iget-object v3, v1, LM/A;->b:Landroidx/lifecycle/r;

    invoke-virtual {v2, v3}, Landroidx/lifecycle/o;->removeObserver(Landroidx/lifecycle/s;)V

    const/4 v2, 0x0

    .line 7
    iput-object v2, v1, LM/A;->b:Landroidx/lifecycle/r;

    .line 8
    :cond_0
    new-instance v1, LM/z;

    invoke-direct {v1, p0, p1}, LM/z;-><init>(LM/B;LM/E;)V

    .line 9
    new-instance v2, LM/A;

    invoke-direct {v2, p2, v1}, LM/A;-><init>(Landroidx/lifecycle/o;Landroidx/lifecycle/r;)V

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addMenuProvider(LM/E;Landroidx/lifecycle/t;Landroidx/lifecycle/Lifecycle$State;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "LambdaLast"
        }
    .end annotation

    .line 10
    invoke-interface {p2}, Landroidx/lifecycle/t;->getLifecycle()Landroidx/lifecycle/o;

    move-result-object p2

    .line 11
    iget-object v0, p0, LM/B;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LM/A;

    if-eqz v1, :cond_0

    .line 12
    iget-object v2, v1, LM/A;->a:Landroidx/lifecycle/o;

    iget-object v3, v1, LM/A;->b:Landroidx/lifecycle/r;

    invoke-virtual {v2, v3}, Landroidx/lifecycle/o;->removeObserver(Landroidx/lifecycle/s;)V

    const/4 v2, 0x0

    .line 13
    iput-object v2, v1, LM/A;->b:Landroidx/lifecycle/r;

    .line 14
    :cond_0
    new-instance v1, LM/y;

    invoke-direct {v1, p0, p3, p1}, LM/y;-><init>(LM/B;Landroidx/lifecycle/Lifecycle$State;LM/E;)V

    .line 15
    new-instance p3, LM/A;

    invoke-direct {p3, p2, v1}, LM/A;-><init>(Landroidx/lifecycle/o;Landroidx/lifecycle/r;)V

    invoke-virtual {v0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onCreateMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 1
    iget-object v0, p0, LM/B;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, LM/E;

    .line 18
    .line 19
    check-cast v1, Landroidx/fragment/app/W;

    .line 20
    .line 21
    invoke-virtual {v1, p1, p2}, Landroidx/fragment/app/W;->onCreateMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method

.method public onMenuClosed(Landroid/view/Menu;)V
    .locals 2

    .line 1
    iget-object v0, p0, LM/B;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, LM/E;

    .line 18
    .line 19
    check-cast v1, Landroidx/fragment/app/W;

    .line 20
    .line 21
    invoke-virtual {v1, p1}, Landroidx/fragment/app/W;->onMenuClosed(Landroid/view/Menu;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method

.method public onMenuItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1
    iget-object v0, p0, LM/B;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, LM/E;

    .line 18
    .line 19
    check-cast v1, Landroidx/fragment/app/W;

    .line 20
    .line 21
    invoke-virtual {v1, p1}, Landroidx/fragment/app/W;->onMenuItemSelected(Landroid/view/MenuItem;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    const/4 p1, 0x1

    .line 28
    return p1

    .line 29
    :cond_1
    const/4 p1, 0x0

    .line 30
    return p1
.end method

.method public onPrepareMenu(Landroid/view/Menu;)V
    .locals 2

    .line 1
    iget-object v0, p0, LM/B;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, LM/E;

    .line 18
    .line 19
    check-cast v1, Landroidx/fragment/app/W;

    .line 20
    .line 21
    invoke-virtual {v1, p1}, Landroidx/fragment/app/W;->onPrepareMenu(Landroid/view/Menu;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method

.method public removeMenuProvider(LM/E;)V
    .locals 2

    .line 1
    iget-object v0, p0, LM/B;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, LM/B;->c:Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, LM/A;

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget-object v0, p1, LM/A;->a:Landroidx/lifecycle/o;

    .line 17
    .line 18
    iget-object v1, p1, LM/A;->b:Landroidx/lifecycle/r;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroidx/lifecycle/o;->removeObserver(Landroidx/lifecycle/s;)V

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    iput-object v0, p1, LM/A;->b:Landroidx/lifecycle/r;

    .line 25
    .line 26
    :cond_0
    iget-object p1, p0, LM/B;->a:Ljava/lang/Runnable;

    .line 27
    .line 28
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 29
    .line 30
    .line 31
    return-void
.end method
