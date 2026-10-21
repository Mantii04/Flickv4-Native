.class public final Lcom/bumptech/glide/manager/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field public static final m:Lcom/bumptech/glide/manager/o;


# instance fields
.field public volatile b:Lcom/bumptech/glide/q;

.field public final e:Lcom/bumptech/glide/manager/p;

.field public final f:Lcom/bumptech/glide/manager/j;

.field public final j:LC/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/bumptech/glide/manager/o;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/bumptech/glide/manager/q;->m:Lcom/bumptech/glide/manager/o;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/manager/p;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lp/g;

    .line 5
    .line 6
    invoke-direct {v0}, Lp/g;-><init>()V

    .line 7
    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    sget-object p1, Lcom/bumptech/glide/manager/q;->m:Lcom/bumptech/glide/manager/o;

    .line 13
    .line 14
    :goto_0
    iput-object p1, p0, Lcom/bumptech/glide/manager/q;->e:Lcom/bumptech/glide/manager/p;

    .line 15
    .line 16
    new-instance v0, LC/k;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 19
    .line 20
    .line 21
    new-instance v1, Ljava/util/HashMap;

    .line 22
    .line 23
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v1, v0, LC/k;->a:Ljava/lang/Object;

    .line 27
    .line 28
    iput-object p1, v0, LC/k;->b:Ljava/lang/Object;

    .line 29
    .line 30
    iput-object v0, p0, Lcom/bumptech/glide/manager/q;->j:LC/k;

    .line 31
    .line 32
    sget-boolean p1, Lu2/D;->f:Z

    .line 33
    .line 34
    if-eqz p1, :cond_2

    .line 35
    .line 36
    sget-boolean p1, Lu2/D;->e:Z

    .line 37
    .line 38
    if-nez p1, :cond_1

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    new-instance p1, Lcom/bumptech/glide/manager/i;

    .line 42
    .line 43
    invoke-direct {p1}, Lcom/bumptech/glide/manager/i;-><init>()V

    .line 44
    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_2
    :goto_1
    new-instance p1, Lcom/bumptech/glide/manager/f;

    .line 48
    .line 49
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 50
    .line 51
    .line 52
    :goto_2
    iput-object p1, p0, Lcom/bumptech/glide/manager/q;->f:Lcom/bumptech/glide/manager/j;

    .line 53
    .line 54
    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/app/Activity;
    .locals 1

    .line 1
    instance-of v0, p0, Landroid/app/Activity;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Landroid/app/Activity;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    check-cast p0, Landroid/content/ContextWrapper;

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-static {p0}, Lcom/bumptech/glide/manager/q;->a(Landroid/content/Context;)Landroid/app/Activity;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :cond_1
    const/4 p0, 0x0

    .line 24
    return-object p0
.end method


# virtual methods
.method public get(Landroid/content/Context;)Lcom/bumptech/glide/q;
    .locals 4

    if-eqz p1, :cond_4

    .line 1
    invoke-static {}, LG2/t;->isOnMainThread()Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p1, Landroid/app/Application;

    if-nez v0, :cond_1

    .line 2
    instance-of v0, p1, Landroidx/fragment/app/H;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Landroidx/fragment/app/H;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/manager/q;->get(Landroidx/fragment/app/H;)Lcom/bumptech/glide/q;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    instance-of v0, p1, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/content/ContextWrapper;

    .line 5
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/manager/q;->get(Landroid/content/Context;)Lcom/bumptech/glide/q;

    move-result-object p1

    return-object p1

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/manager/q;->b:Lcom/bumptech/glide/q;

    if-nez v0, :cond_3

    .line 8
    monitor-enter p0

    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/manager/q;->b:Lcom/bumptech/glide/q;

    if-nez v0, :cond_2

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/c;->get(Landroid/content/Context;)Lcom/bumptech/glide/c;

    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/bumptech/glide/manager/q;->e:Lcom/bumptech/glide/manager/p;

    new-instance v2, Lcom/bumptech/glide/manager/a;

    .line 12
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v3, LJ3/b;

    .line 14
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 16
    check-cast v1, Lcom/bumptech/glide/manager/o;

    invoke-virtual {v1, v0, v2, v3, p1}, Lcom/bumptech/glide/manager/o;->build(Lcom/bumptech/glide/c;Lcom/bumptech/glide/manager/k;Lcom/bumptech/glide/manager/r;Landroid/content/Context;)Lcom/bumptech/glide/q;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/manager/q;->b:Lcom/bumptech/glide/q;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 17
    :cond_2
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 18
    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/bumptech/glide/manager/q;->b:Lcom/bumptech/glide/q;

    return-object p1

    .line 19
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "You cannot start a load on a null Context"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public get(Landroidx/fragment/app/H;)Lcom/bumptech/glide/q;
    .locals 8

    .line 20
    invoke-static {}, LG2/t;->isOnBackgroundThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/manager/q;->get(Landroid/content/Context;)Lcom/bumptech/glide/q;

    move-result-object p1

    return-object p1

    .line 22
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_5

    .line 23
    iget-object v0, p0, Lcom/bumptech/glide/manager/q;->f:Lcom/bumptech/glide/manager/j;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/manager/j;->registerSelf(Landroid/app/Activity;)V

    .line 24
    invoke-static {p1}, Lcom/bumptech/glide/manager/q;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 25
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 26
    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/c;->get(Landroid/content/Context;)Lcom/bumptech/glide/c;

    move-result-object v1

    .line 27
    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/o;

    move-result-object v2

    .line 28
    invoke-virtual {p1}, Landroidx/fragment/app/H;->getSupportFragmentManager()Landroidx/fragment/app/i0;

    .line 29
    iget-object v3, p0, Lcom/bumptech/glide/manager/q;->j:LC/k;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    invoke-static {}, LG2/t;->assertMainThread()V

    .line 31
    invoke-static {}, LG2/t;->assertMainThread()V

    .line 32
    iget-object v4, v3, LC/k;->a:Ljava/lang/Object;

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bumptech/glide/q;

    if-nez v5, :cond_4

    .line 33
    new-instance v5, Lcom/bumptech/glide/manager/LifecycleLifecycle;

    invoke-direct {v5, v2}, Lcom/bumptech/glide/manager/LifecycleLifecycle;-><init>(Landroidx/lifecycle/o;)V

    .line 34
    new-instance v6, LJ3/b;

    .line 35
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 36
    iget-object v7, v3, LC/k;->b:Ljava/lang/Object;

    check-cast v7, Lcom/bumptech/glide/manager/p;

    check-cast v7, Lcom/bumptech/glide/manager/o;

    invoke-virtual {v7, v1, v5, v6, p1}, Lcom/bumptech/glide/manager/o;->build(Lcom/bumptech/glide/c;Lcom/bumptech/glide/manager/k;Lcom/bumptech/glide/manager/r;Landroid/content/Context;)Lcom/bumptech/glide/q;

    move-result-object p1

    .line 37
    invoke-virtual {v4, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    new-instance v1, Lcom/bumptech/glide/manager/m;

    invoke-direct {v1, v3, v2}, Lcom/bumptech/glide/manager/m;-><init>(LC/k;Landroidx/lifecycle/o;)V

    invoke-virtual {v5, v1}, Lcom/bumptech/glide/manager/LifecycleLifecycle;->addListener(Lcom/bumptech/glide/manager/l;)V

    if-eqz v0, :cond_3

    .line 39
    invoke-virtual {p1}, Lcom/bumptech/glide/q;->onStart()V

    :cond_3
    return-object p1

    :cond_4
    return-object v5

    .line 40
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "You cannot start a load for a destroyed activity"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x0

    return p1
.end method
