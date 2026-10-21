.class public final Landroidx/lifecycle/T;
.super Landroidx/lifecycle/f0;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/c0;


# instance fields
.field public final a:Landroid/app/Application;

.field public final b:Landroidx/lifecycle/a0;

.field public final c:Landroid/os/Bundle;

.field public final d:Landroidx/lifecycle/o;

.field public final e:Lq1/g;


# direct methods
.method public constructor <init>(Landroid/app/Application;Lq1/j;Landroid/os/Bundle;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "LambdaLast"
        }
    .end annotation

    .line 1
    const-string v0, "owner"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Landroidx/lifecycle/f0;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-interface {p2}, Lq1/j;->getSavedStateRegistry()Lq1/g;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Landroidx/lifecycle/T;->e:Lq1/g;

    .line 14
    .line 15
    invoke-interface {p2}, Landroidx/lifecycle/t;->getLifecycle()Landroidx/lifecycle/o;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    iput-object p2, p0, Landroidx/lifecycle/T;->d:Landroidx/lifecycle/o;

    .line 20
    .line 21
    iput-object p3, p0, Landroidx/lifecycle/T;->c:Landroid/os/Bundle;

    .line 22
    .line 23
    iput-object p1, p0, Landroidx/lifecycle/T;->a:Landroid/app/Application;

    .line 24
    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    sget-object p2, Landroidx/lifecycle/a0;->e:Landroidx/lifecycle/Z;

    .line 28
    .line 29
    invoke-virtual {p2, p1}, Landroidx/lifecycle/Z;->getInstance(Landroid/app/Application;)Landroidx/lifecycle/a0;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    new-instance p1, Landroidx/lifecycle/a0;

    .line 35
    .line 36
    invoke-direct {p1}, Landroidx/lifecycle/a0;-><init>()V

    .line 37
    .line 38
    .line 39
    :goto_0
    iput-object p1, p0, Landroidx/lifecycle/T;->b:Landroidx/lifecycle/a0;

    .line 40
    .line 41
    return-void
.end method


# virtual methods
.method public create(Ljava/lang/Class;)Landroidx/lifecycle/X;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/X;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "modelClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {p0, v0, p1}, Landroidx/lifecycle/T;->create(Ljava/lang/String;Ljava/lang/Class;)Landroidx/lifecycle/X;

    move-result-object p1

    return-object p1

    .line 43
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Local and anonymous classes can not be ViewModels"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public create(Ljava/lang/Class;Lm0/c;)Landroidx/lifecycle/X;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/X;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lm0/c;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "modelClass"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "extras"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v2, Landroidx/lifecycle/e0;->c:Landroidx/lifecycle/Y;

    invoke-virtual {p2, v2}, Lm0/c;->get(Lm0/b;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 2
    sget-object v3, Landroidx/lifecycle/SavedStateHandleSupport;->a:Landroidx/lifecycle/Y;

    invoke-virtual {p2, v3}, Lm0/c;->get(Lm0/b;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 3
    sget-object v3, Landroidx/lifecycle/SavedStateHandleSupport;->b:Landroidx/lifecycle/Y;

    invoke-virtual {p2, v3}, Lm0/c;->get(Lm0/b;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 4
    sget-object v2, Landroidx/lifecycle/a0;->g:Landroidx/lifecycle/Y;

    invoke-virtual {p2, v2}, Lm0/c;->get(Lm0/b;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Application;

    const-class v3, Landroidx/lifecycle/a;

    .line 5
    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 6
    invoke-static {}, Landroidx/lifecycle/U;->access$getANDROID_VIEWMODEL_SIGNATURE$p()Ljava/util/List;

    move-result-object v4

    invoke-static {p1, v4}, Landroidx/lifecycle/U;->findMatchingConstructor(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {}, Landroidx/lifecycle/U;->access$getVIEWMODEL_SIGNATURE$p()Ljava/util/List;

    move-result-object v4

    invoke-static {p1, v4}, Landroidx/lifecycle/U;->findMatchingConstructor(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    :goto_0
    if-nez v4, :cond_1

    .line 8
    iget-object v0, p0, Landroidx/lifecycle/T;->b:Landroidx/lifecycle/a0;

    invoke-interface {v0, p1, p2}, Landroidx/lifecycle/c0;->create(Ljava/lang/Class;Lm0/c;)Landroidx/lifecycle/X;

    move-result-object p1

    return-object p1

    :cond_1
    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    .line 9
    invoke-static {p2}, Landroidx/lifecycle/SavedStateHandleSupport;->createSavedStateHandle(Lm0/c;)Landroidx/lifecycle/Q;

    move-result-object p2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v1

    aput-object p2, v3, v0

    invoke-static {p1, v4, v3}, Landroidx/lifecycle/U;->newInstance(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Landroidx/lifecycle/X;

    move-result-object p1

    return-object p1

    .line 10
    :cond_2
    invoke-static {p2}, Landroidx/lifecycle/SavedStateHandleSupport;->createSavedStateHandle(Lm0/c;)Landroidx/lifecycle/Q;

    move-result-object p2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v1

    invoke-static {p1, v4, v0}, Landroidx/lifecycle/U;->newInstance(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Landroidx/lifecycle/X;

    move-result-object p1

    return-object p1

    .line 11
    :cond_3
    iget-object p2, p0, Landroidx/lifecycle/T;->d:Landroidx/lifecycle/o;

    if-eqz p2, :cond_4

    .line 12
    invoke-virtual {p0, v2, p1}, Landroidx/lifecycle/T;->create(Ljava/lang/String;Ljava/lang/Class;)Landroidx/lifecycle/X;

    move-result-object p1

    return-object p1

    .line 13
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "SAVED_STATE_REGISTRY_OWNER_KEY andVIEW_MODEL_STORE_OWNER_KEY must be provided in the creation extras tosuccessfully create a ViewModel."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 15
    const-string p2, "VIEW_MODEL_KEY must always be provided by ViewModelProvider"

    .line 16
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final create(Ljava/lang/String;Ljava/lang/Class;)Landroidx/lifecycle/X;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/X;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "key"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "modelClass"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iget-object v2, p0, Landroidx/lifecycle/T;->d:Landroidx/lifecycle/o;

    if-eqz v2, :cond_7

    const-class v3, Landroidx/lifecycle/a;

    .line 18
    invoke-virtual {v3, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 19
    iget-object v4, p0, Landroidx/lifecycle/T;->a:Landroid/app/Application;

    if-eqz v4, :cond_0

    .line 20
    invoke-static {}, Landroidx/lifecycle/U;->access$getANDROID_VIEWMODEL_SIGNATURE$p()Ljava/util/List;

    move-result-object v4

    invoke-static {p2, v4}, Landroidx/lifecycle/U;->findMatchingConstructor(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    goto :goto_0

    .line 21
    :cond_0
    invoke-static {}, Landroidx/lifecycle/U;->access$getVIEWMODEL_SIGNATURE$p()Ljava/util/List;

    move-result-object v4

    invoke-static {p2, v4}, Landroidx/lifecycle/U;->findMatchingConstructor(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    :goto_0
    if-nez v4, :cond_2

    .line 22
    iget-object p1, p0, Landroidx/lifecycle/T;->a:Landroid/app/Application;

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/lifecycle/T;->b:Landroidx/lifecycle/a0;

    invoke-interface {p1, p2}, Landroidx/lifecycle/c0;->create(Ljava/lang/Class;)Landroidx/lifecycle/X;

    move-result-object p1

    return-object p1

    .line 23
    :cond_1
    sget-object p1, Landroidx/lifecycle/e0;->a:Landroidx/lifecycle/d0;

    invoke-virtual {p1}, Landroidx/lifecycle/d0;->getInstance()Landroidx/lifecycle/e0;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/lifecycle/e0;->create(Ljava/lang/Class;)Landroidx/lifecycle/X;

    move-result-object p1

    return-object p1

    .line 24
    :cond_2
    iget-object v5, p0, Landroidx/lifecycle/T;->e:Lq1/g;

    invoke-static {v5}, Lkotlin/jvm/internal/j;->checkNotNull(Ljava/lang/Object;)V

    iget-object v6, p0, Landroidx/lifecycle/T;->c:Landroid/os/Bundle;

    .line 25
    invoke-static {v5, v2, p1, v6}, Landroidx/lifecycle/l;->create(Lq1/g;Landroidx/lifecycle/o;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/lifecycle/SavedStateHandleController;

    move-result-object p1

    if-eqz v3, :cond_3

    .line 26
    iget-object v2, p0, Landroidx/lifecycle/T;->a:Landroid/app/Application;

    if-eqz v2, :cond_3

    .line 27
    invoke-static {v2}, Lkotlin/jvm/internal/j;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroidx/lifecycle/SavedStateHandleController;->getHandle()Landroidx/lifecycle/Q;

    move-result-object v3

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v1

    aput-object v3, v5, v0

    invoke-static {p2, v4, v5}, Landroidx/lifecycle/U;->newInstance(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Landroidx/lifecycle/X;

    move-result-object p2

    goto :goto_1

    .line 28
    :cond_3
    invoke-virtual {p1}, Landroidx/lifecycle/SavedStateHandleController;->getHandle()Landroidx/lifecycle/Q;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v1

    invoke-static {p2, v4, v0}, Landroidx/lifecycle/U;->newInstance(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Landroidx/lifecycle/X;

    move-result-object p2

    .line 29
    :goto_1
    const-string v0, "androidx.lifecycle.savedstate.vm.tag"

    .line 30
    iget-object v1, p2, Landroidx/lifecycle/X;->a:Ljava/util/HashMap;

    .line 31
    monitor-enter v1

    .line 32
    :try_start_0
    iget-object v2, p2, Landroidx/lifecycle/X;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_4

    .line 33
    iget-object v3, p2, Landroidx/lifecycle/X;->a:Ljava/util/HashMap;

    invoke-virtual {v3, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_4

    .line 34
    :cond_4
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_5

    goto :goto_3

    :cond_5
    move-object p1, v2

    .line 35
    :goto_3
    iget-boolean v0, p2, Landroidx/lifecycle/X;->c:Z

    if-eqz v0, :cond_6

    .line 36
    invoke-static {p1}, Landroidx/lifecycle/X;->a(Ljava/lang/Object;)V

    :cond_6
    return-object p2

    .line 37
    :goto_4
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 38
    :cond_7
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 39
    const-string p2, "SavedStateViewModelFactory constructed with empty constructor supports only calls to create(modelClass: Class<T>, extras: CreationExtras)."

    .line 40
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onRequery(Landroidx/lifecycle/X;)V
    .locals 2

    .line 1
    const-string v0, "viewModel"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/lifecycle/T;->d:Landroidx/lifecycle/o;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Landroidx/lifecycle/T;->e:Lq1/g;

    .line 11
    .line 12
    invoke-static {v1}, Lkotlin/jvm/internal/j;->checkNotNull(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lkotlin/jvm/internal/j;->checkNotNull(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-static {p1, v1, v0}, Landroidx/lifecycle/l;->attachHandleIfNeeded(Landroidx/lifecycle/X;Lq1/g;Landroidx/lifecycle/o;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method
