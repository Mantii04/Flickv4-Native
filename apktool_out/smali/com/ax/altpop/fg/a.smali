.class public abstract Lcom/ax/altpop/fg/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Landroidx/lifecycle/o; = null

.field public static b:Landroidx/lifecycle/f; = null

.field public static c:Z = false

.field public static d:Landroid/os/Handler;

.field public static e:LA4/n;


# direct methods
.method public static synthetic a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-static {}, Landroidx/lifecycle/J;->get()Landroidx/lifecycle/t;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Landroidx/lifecycle/t;->getLifecycle()Landroidx/lifecycle/o;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lcom/ax/altpop/fg/a;->a:Landroidx/lifecycle/o;

    .line 10
    .line 11
    new-instance v1, Lcom/ax/altpop/fg/AppForegroundObserver$1;

    .line 12
    .line 13
    invoke-direct {v1, p0, p1}, Lcom/ax/altpop/fg/AppForegroundObserver$1;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    .line 14
    .line 15
    .line 16
    sput-object v1, Lcom/ax/altpop/fg/a;->b:Landroidx/lifecycle/f;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroidx/lifecycle/o;->addObserver(Landroidx/lifecycle/s;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public static declared-synchronized b(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 1
    const-class v0, Lcom/ax/altpop/fg/a;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-boolean v1, Lcom/ax/altpop/fg/a;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :cond_0
    const/4 v1, 0x1

    .line 11
    :try_start_1
    sput-boolean v1, Lcom/ax/altpop/fg/a;->c:Z

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    new-instance v1, Landroid/os/Handler;

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 24
    .line 25
    .line 26
    sput-object v1, Lcom/ax/altpop/fg/a;->d:Landroid/os/Handler;

    .line 27
    .line 28
    new-instance v2, LA4/n;

    .line 29
    .line 30
    const/16 v3, 0x1c

    .line 31
    .line 32
    invoke-direct {v2, v3, p0, p1}, LA4/n;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    sput-object v2, Lcom/ax/altpop/fg/a;->e:LA4/n;

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    .line 39
    .line 40
    monitor-exit v0

    .line 41
    return-void

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 44
    throw p0
.end method
