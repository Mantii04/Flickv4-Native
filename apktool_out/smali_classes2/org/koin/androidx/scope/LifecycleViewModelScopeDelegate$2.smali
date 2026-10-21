.class public final Lorg/koin/androidx/scope/LifecycleViewModelScopeDelegate$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/f;


# virtual methods
.method public onCreate(Landroidx/lifecycle/t;)V
    .locals 1

    .line 1
    const-string v0, "owner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    throw p1
.end method

.method public final synthetic onDestroy(Landroidx/lifecycle/t;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/lifecycle/e;->b(Landroidx/lifecycle/f;Landroidx/lifecycle/t;)V

    return-void
.end method

.method public final synthetic onPause(Landroidx/lifecycle/t;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/lifecycle/e;->c(Landroidx/lifecycle/f;Landroidx/lifecycle/t;)V

    return-void
.end method

.method public final synthetic onResume(Landroidx/lifecycle/t;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/lifecycle/e;->d(Landroidx/lifecycle/f;Landroidx/lifecycle/t;)V

    return-void
.end method

.method public final synthetic onStart(Landroidx/lifecycle/t;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/lifecycle/e;->e(Landroidx/lifecycle/f;Landroidx/lifecycle/t;)V

    return-void
.end method

.method public final synthetic onStop(Landroidx/lifecycle/t;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/lifecycle/e;->f(Landroidx/lifecycle/f;Landroidx/lifecycle/t;)V

    return-void
.end method
