.class public final Landroidx/fragment/app/F0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/j;
.implements Lq1/j;
.implements Landroidx/lifecycle/j0;


# instance fields
.field public final b:Landroidx/fragment/app/C;

.field public final e:Landroidx/lifecycle/i0;

.field public f:Landroidx/lifecycle/w;

.field public j:Lq1/i;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/C;Landroidx/lifecycle/i0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Landroidx/fragment/app/F0;->f:Landroidx/lifecycle/w;

    .line 6
    .line 7
    iput-object v0, p0, Landroidx/fragment/app/F0;->j:Lq1/i;

    .line 8
    .line 9
    iput-object p1, p0, Landroidx/fragment/app/F0;->b:Landroidx/fragment/app/C;

    .line 10
    .line 11
    iput-object p2, p0, Landroidx/fragment/app/F0;->e:Landroidx/lifecycle/i0;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final a(Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/F0;->f:Landroidx/lifecycle/w;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/lifecycle/w;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final b()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/F0;->f:Landroidx/lifecycle/w;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroidx/lifecycle/w;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Landroidx/lifecycle/w;-><init>(Landroidx/lifecycle/t;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroidx/fragment/app/F0;->f:Landroidx/lifecycle/w;

    .line 11
    .line 12
    invoke-static {p0}, Lq1/i;->create(Lq1/j;)Lq1/i;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Landroidx/fragment/app/F0;->j:Lq1/i;

    .line 17
    .line 18
    invoke-virtual {v0}, Lq1/i;->performAttach()V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public getDefaultViewModelCreationExtras()Lm0/c;
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/F0;->b:Landroidx/fragment/app/C;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/C;->requireContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    :goto_0
    instance-of v2, v1, Landroid/content/ContextWrapper;

    .line 12
    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    instance-of v2, v1, Landroid/app/Application;

    .line 16
    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    check-cast v1, Landroid/app/Application;

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    check-cast v1, Landroid/content/ContextWrapper;

    .line 23
    .line 24
    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 v1, 0x0

    .line 30
    :goto_1
    new-instance v2, Lm0/f;

    .line 31
    .line 32
    invoke-direct {v2}, Lm0/f;-><init>()V

    .line 33
    .line 34
    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    sget-object v3, Landroidx/lifecycle/a0;->g:Landroidx/lifecycle/Y;

    .line 38
    .line 39
    invoke-virtual {v2, v3, v1}, Lm0/f;->set(Lm0/b;Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    :cond_2
    sget-object v1, Landroidx/lifecycle/SavedStateHandleSupport;->a:Landroidx/lifecycle/Y;

    .line 43
    .line 44
    invoke-virtual {v2, v1, v0}, Lm0/f;->set(Lm0/b;Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    sget-object v1, Landroidx/lifecycle/SavedStateHandleSupport;->b:Landroidx/lifecycle/Y;

    .line 48
    .line 49
    invoke-virtual {v2, v1, p0}, Lm0/f;->set(Lm0/b;Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Landroidx/fragment/app/C;->getArguments()Landroid/os/Bundle;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    if-eqz v1, :cond_3

    .line 57
    .line 58
    sget-object v1, Landroidx/lifecycle/SavedStateHandleSupport;->c:Landroidx/lifecycle/Y;

    .line 59
    .line 60
    invoke-virtual {v0}, Landroidx/fragment/app/C;->getArguments()Landroid/os/Bundle;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v2, v1, v0}, Lm0/f;->set(Lm0/b;Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    :cond_3
    return-object v2
.end method

.method public getLifecycle()Landroidx/lifecycle/o;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/F0;->b()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/fragment/app/F0;->f:Landroidx/lifecycle/w;

    .line 5
    .line 6
    return-object v0
.end method

.method public getSavedStateRegistry()Lq1/g;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/F0;->b()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/fragment/app/F0;->j:Lq1/i;

    .line 5
    .line 6
    invoke-virtual {v0}, Lq1/i;->getSavedStateRegistry()Lq1/g;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method public getViewModelStore()Landroidx/lifecycle/i0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/F0;->b()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/fragment/app/F0;->e:Landroidx/lifecycle/i0;

    .line 5
    .line 6
    return-object v0
.end method
