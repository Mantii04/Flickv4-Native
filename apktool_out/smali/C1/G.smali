.class public final LC1/G;
.super LB1/I;
.source "SourceFile"


# static fields
.field public static k:LC1/G;

.field public static l:LC1/G;

.field public static final m:Ljava/lang/Object;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:LB1/c;

.field public final c:Landroidx/work/impl/WorkDatabase;

.field public final d:LN1/c;

.field public final e:Ljava/util/List;

.field public final f:LC1/r;

.field public final g:LL1/q;

.field public h:Z

.field public i:Landroid/content/BroadcastReceiver$PendingResult;

.field public final j:LI1/p;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "WorkManagerImpl"

    .line 2
    .line 3
    invoke-static {v0}, LB1/t;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    sput-object v0, LC1/G;->k:LC1/G;

    .line 8
    .line 9
    sput-object v0, LC1/G;->l:LC1/G;

    .line 10
    .line 11
    new-instance v0, Ljava/lang/Object;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    sput-object v0, LC1/G;->m:Ljava/lang/Object;

    .line 17
    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;LB1/c;LN1/c;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/work/R$bool;->workmanager_test_configuration:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 2
    invoke-direct {p0, p1, p2, p3, v0}, LC1/G;-><init>(Landroid/content/Context;LB1/c;LN1/c;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;LB1/c;LN1/c;Landroidx/work/impl/WorkDatabase;)V
    .locals 8

    .line 7
    invoke-direct {p0}, LB1/I;-><init>()V

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 9
    new-instance v1, LB1/s;

    invoke-virtual {p2}, LB1/c;->getMinimumLoggingLevel()I

    move-result v2

    invoke-direct {v1, v2}, LB1/s;-><init>(I)V

    invoke-static {v1}, LB1/t;->setLogger(LB1/t;)V

    .line 10
    new-instance v1, LI1/p;

    invoke-direct {v1, v0, p3}, LI1/p;-><init>(Landroid/content/Context;LN1/c;)V

    iput-object v1, p0, LC1/G;->j:LI1/p;

    .line 11
    invoke-virtual {p0, v0, p2, v1}, LC1/G;->createSchedulers(Landroid/content/Context;LB1/c;LI1/p;)Ljava/util/List;

    move-result-object v7

    .line 12
    new-instance v2, LC1/r;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v2 .. v7}, LC1/r;-><init>(Landroid/content/Context;LB1/c;LN1/c;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    .line 13
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 14
    iput-object p1, p0, LC1/G;->a:Landroid/content/Context;

    .line 15
    iput-object v4, p0, LC1/G;->b:LB1/c;

    .line 16
    iput-object v5, p0, LC1/G;->d:LN1/c;

    .line 17
    iput-object v6, p0, LC1/G;->c:Landroidx/work/impl/WorkDatabase;

    .line 18
    iput-object v7, p0, LC1/G;->e:Ljava/util/List;

    .line 19
    iput-object v2, p0, LC1/G;->f:LC1/r;

    .line 20
    new-instance p2, LL1/q;

    invoke-direct {p2, v6}, LL1/q;-><init>(Landroidx/work/impl/WorkDatabase;)V

    iput-object p2, p0, LC1/G;->g:LL1/q;

    const/4 p2, 0x0

    .line 21
    iput-boolean p2, p0, LC1/G;->h:Z

    .line 22
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x18

    if-lt p2, p3, :cond_1

    invoke-static {p1}, LC1/F;->a(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 23
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot initialize WorkManager in direct boot mode"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 24
    :cond_1
    :goto_0
    iget-object p2, p0, LC1/G;->d:LN1/c;

    new-instance p3, LL1/h;

    invoke-direct {p3, p1, p0}, LL1/h;-><init>(Landroid/content/Context;LC1/G;)V

    check-cast p2, LN1/e;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, p3}, LN1/b;->a(LN1/c;Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;LB1/c;LN1/c;Z)V
    .locals 2

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 4
    check-cast p3, LN1/e;

    invoke-virtual {p3}, LN1/e;->getSerialTaskExecutor()LN1/a;

    move-result-object v1

    .line 5
    invoke-static {v0, v1, p4}, Landroidx/work/impl/WorkDatabase;->create(Landroid/content/Context;Ljava/util/concurrent/Executor;Z)Landroidx/work/impl/WorkDatabase;

    move-result-object p4

    .line 6
    invoke-direct {p0, p1, p2, p3, p4}, LC1/G;-><init>(Landroid/content/Context;LB1/c;LN1/c;Landroidx/work/impl/WorkDatabase;)V

    return-void
.end method

.method public static getInstance()LC1/G;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-object v0, LC1/G;->m:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, LC1/G;->k:LC1/G;

    if-eqz v1, :cond_0

    .line 3
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    .line 4
    :cond_0
    sget-object v1, LC1/G;->l:LC1/G;

    monitor-exit v0

    return-object v1

    .line 5
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getInstance(Landroid/content/Context;)LC1/G;
    .locals 2

    .line 6
    sget-object v0, LC1/G;->m:Ljava/lang/Object;

    monitor-enter v0

    .line 7
    :try_start_0
    invoke-static {}, LC1/G;->getInstance()LC1/G;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 8
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 10
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "WorkManager is not initialized properly.  You have explicitly disabled WorkManagerInitializer in your manifest, have not manually called WorkManager#initialize at this point, and your Application does not implement Configuration.Provider."

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 11
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static initialize(Landroid/content/Context;LB1/c;)V
    .locals 4

    .line 1
    sget-object v0, LC1/G;->m:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, LC1/G;->k:LC1/G;

    .line 5
    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    sget-object v2, LC1/G;->l:LC1/G;

    .line 9
    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 14
    .line 15
    const-string p1, "WorkManager is already initialized.  Did you try to initialize it manually without disabling WorkManagerInitializer? See WorkManager#initialize(Context, Configuration) or the class level Javadoc for more information."

    .line 16
    .line 17
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    if-nez v1, :cond_3

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    sget-object v1, LC1/G;->l:LC1/G;

    .line 30
    .line 31
    if-nez v1, :cond_2

    .line 32
    .line 33
    new-instance v1, LC1/G;

    .line 34
    .line 35
    new-instance v2, LN1/e;

    .line 36
    .line 37
    invoke-virtual {p1}, LB1/c;->getTaskExecutor()Ljava/util/concurrent/Executor;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-direct {v2, v3}, LN1/e;-><init>(Ljava/util/concurrent/Executor;)V

    .line 42
    .line 43
    .line 44
    invoke-direct {v1, p0, p1, v2}, LC1/G;-><init>(Landroid/content/Context;LB1/c;LN1/c;)V

    .line 45
    .line 46
    .line 47
    sput-object v1, LC1/G;->l:LC1/G;

    .line 48
    .line 49
    :cond_2
    sget-object p0, LC1/G;->l:LC1/G;

    .line 50
    .line 51
    sput-object p0, LC1/G;->k:LC1/G;

    .line 52
    .line 53
    :cond_3
    monitor-exit v0

    .line 54
    return-void

    .line 55
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    throw p0
.end method


# virtual methods
.method public cancelUniqueWork(Ljava/lang/String;)LB1/B;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p1, p0, v0}, LL1/d;->forName(Ljava/lang/String;LC1/G;Z)LL1/d;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    iget-object v0, p0, LC1/G;->d:LN1/c;

    .line 7
    .line 8
    check-cast v0, LN1/e;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-static {v0, p1}, LN1/b;->a(LN1/c;Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, LL1/d;->getOperation()LB1/B;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    return-object p1
.end method

.method public cancelWorkById(Ljava/util/UUID;)LB1/B;
    .locals 1

    .line 1
    invoke-static {p1, p0}, LL1/d;->forId(Ljava/util/UUID;LC1/G;)LL1/d;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, LC1/G;->d:LN1/c;

    .line 6
    .line 7
    check-cast v0, LN1/e;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-static {v0, p1}, LN1/b;->a(LN1/c;Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, LL1/d;->getOperation()LB1/B;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1
.end method

.method public createSchedulers(Landroid/content/Context;LB1/c;LI1/p;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "LB1/c;",
            "LI1/p;",
            ")",
            "Ljava/util/List<",
            "LC1/t;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    sget-object v1, LC1/u;->a:Ljava/lang/String;

    .line 3
    .line 4
    new-instance v1, LF1/b;

    .line 5
    .line 6
    invoke-direct {v1, p1, p0}, LF1/b;-><init>(Landroid/content/Context;LC1/G;)V

    .line 7
    .line 8
    .line 9
    const-class v2, Landroidx/work/impl/background/systemjob/SystemJobService;

    .line 10
    .line 11
    invoke-static {p1, v2, v0}, LL1/p;->setComponentEnabled(Landroid/content/Context;Ljava/lang/Class;Z)V

    .line 12
    .line 13
    .line 14
    invoke-static {}, LB1/t;->get()LB1/t;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    sget-object v3, LC1/u;->a:Ljava/lang/String;

    .line 19
    .line 20
    const-string v4, "Created SystemJobScheduler and enabled SystemJobService"

    .line 21
    .line 22
    invoke-virtual {v2, v3, v4}, LB1/t;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    new-instance v2, LD1/c;

    .line 26
    .line 27
    invoke-direct {v2, p1, p2, p3, p0}, LD1/c;-><init>(Landroid/content/Context;LB1/c;LI1/p;LC1/G;)V

    .line 28
    .line 29
    .line 30
    const/4 p1, 0x2

    .line 31
    new-array p1, p1, [LC1/t;

    .line 32
    .line 33
    const/4 p2, 0x0

    .line 34
    aput-object v1, p1, p2

    .line 35
    .line 36
    aput-object v2, p1, v0

    .line 37
    .line 38
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    return-object p1
.end method

.method public createWorkContinuationForUniquePeriodicWork(Ljava/lang/String;Landroidx/work/ExistingPeriodicWorkPolicy;LB1/E;)LC1/x;
    .locals 1

    .line 1
    sget-object v0, Landroidx/work/ExistingPeriodicWorkPolicy;->b:Landroidx/work/ExistingPeriodicWorkPolicy;

    .line 2
    .line 3
    if-ne p2, v0, :cond_0

    .line 4
    .line 5
    sget-object p2, Landroidx/work/ExistingWorkPolicy;->e:Landroidx/work/ExistingWorkPolicy;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    sget-object p2, Landroidx/work/ExistingWorkPolicy;->b:Landroidx/work/ExistingWorkPolicy;

    .line 9
    .line 10
    :goto_0
    new-instance v0, LC1/x;

    .line 11
    .line 12
    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object p3

    .line 16
    invoke-direct {v0, p0, p1, p2, p3}, LC1/x;-><init>(LC1/G;Ljava/lang/String;Landroidx/work/ExistingWorkPolicy;Ljava/util/List;)V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method

.method public enqueue(Ljava/util/List;)LB1/B;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "LB1/L;",
            ">;)",
            "LB1/B;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, LC1/x;

    .line 8
    .line 9
    invoke-direct {v0, p0, p1}, LC1/x;-><init>(LC1/G;Ljava/util/List;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, LC1/x;->enqueue()LB1/B;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1

    .line 17
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 18
    .line 19
    const-string v0, "enqueue needs at least one WorkRequest."

    .line 20
    .line 21
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p1
.end method

.method public enqueueUniquePeriodicWork(Ljava/lang/String;Landroidx/work/ExistingPeriodicWorkPolicy;LB1/E;)LB1/B;
    .locals 1

    .line 1
    sget-object v0, Landroidx/work/ExistingPeriodicWorkPolicy;->e:Landroidx/work/ExistingPeriodicWorkPolicy;

    .line 2
    .line 3
    if-ne p2, v0, :cond_0

    .line 4
    .line 5
    invoke-static {p0, p1, p3}, Landroidx/work/impl/WorkerUpdater;->enqueueUniquelyNamedPeriodic(LC1/G;Ljava/lang/String;LB1/L;)LB1/B;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, LC1/G;->createWorkContinuationForUniquePeriodicWork(Ljava/lang/String;Landroidx/work/ExistingPeriodicWorkPolicy;LB1/E;)LC1/x;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, LC1/x;->enqueue()LB1/B;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method

.method public enqueueUniqueWork(Ljava/lang/String;Landroidx/work/ExistingWorkPolicy;Ljava/util/List;)LB1/B;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/work/ExistingWorkPolicy;",
            "Ljava/util/List<",
            "LB1/w;",
            ">;)",
            "LB1/B;"
        }
    .end annotation

    .line 1
    new-instance v0, LC1/x;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2, p3}, LC1/x;-><init>(LC1/G;Ljava/lang/String;Landroidx/work/ExistingWorkPolicy;Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, LC1/x;->enqueue()LB1/B;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, LC1/G;->a:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public getConfiguration()LB1/c;
    .locals 1

    .line 1
    iget-object v0, p0, LC1/G;->b:LB1/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPreferenceUtils()LL1/q;
    .locals 1

    .line 1
    iget-object v0, p0, LC1/G;->g:LL1/q;

    .line 2
    .line 3
    return-object v0
.end method

.method public getProcessor()LC1/r;
    .locals 1

    .line 1
    iget-object v0, p0, LC1/G;->f:LC1/r;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSchedulers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LC1/t;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LC1/G;->e:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTrackers()LI1/p;
    .locals 1

    .line 1
    iget-object v0, p0, LC1/G;->j:LI1/p;

    .line 2
    .line 3
    return-object v0
.end method

.method public getWorkDatabase()Landroidx/work/impl/WorkDatabase;
    .locals 1

    .line 1
    iget-object v0, p0, LC1/G;->c:Landroidx/work/impl/WorkDatabase;

    .line 2
    .line 3
    return-object v0
.end method

.method public getWorkTaskExecutor()LN1/c;
    .locals 1

    .line 1
    iget-object v0, p0, LC1/G;->d:LN1/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public onForceStopRunnableCompleted()V
    .locals 2

    .line 1
    sget-object v0, LC1/G;->m:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x1

    .line 5
    :try_start_0
    iput-boolean v1, p0, LC1/G;->h:Z

    .line 6
    .line 7
    iget-object v1, p0, LC1/G;->i:Landroid/content/BroadcastReceiver$PendingResult;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    .line 12
    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    iput-object v1, p0, LC1/G;->i:Landroid/content/BroadcastReceiver$PendingResult;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception v1

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    :goto_0
    monitor-exit v0

    .line 21
    return-void

    .line 22
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw v1
.end method

.method public rescheduleEligibleWork()V
    .locals 3

    .line 1
    invoke-virtual {p0}, LC1/G;->getApplicationContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, LF1/b;->cancelAll(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, LC1/G;->getWorkDatabase()Landroidx/work/impl/WorkDatabase;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->workSpecDao()LK1/F;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, LK1/U;

    .line 17
    .line 18
    invoke-virtual {v0}, LK1/U;->resetScheduledState()I

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, LC1/G;->getConfiguration()LB1/c;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p0}, LC1/G;->getWorkDatabase()Landroidx/work/impl/WorkDatabase;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {p0}, LC1/G;->getSchedulers()Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-static {v0, v1, v2}, LC1/u;->schedule(LB1/c;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public setReschedulePendingResult(Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 2

    .line 1
    sget-object v0, LC1/G;->m:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iput-object p1, p0, LC1/G;->i:Landroid/content/BroadcastReceiver$PendingResult;

    .line 5
    .line 6
    iget-boolean v1, p0, LC1/G;->h:Z

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    .line 11
    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, LC1/G;->i:Landroid/content/BroadcastReceiver$PendingResult;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    :goto_0
    monitor-exit v0

    .line 20
    return-void

    .line 21
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw p1
.end method

.method public startWork(LC1/v;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, LC1/G;->startWork(LC1/v;LB1/Q;)V

    return-void
.end method

.method public startWork(LC1/v;LB1/Q;)V
    .locals 2

    .line 2
    iget-object v0, p0, LC1/G;->d:LN1/c;

    new-instance v1, LL1/u;

    invoke-direct {v1, p0, p1, p2}, LL1/u;-><init>(LC1/G;LC1/v;LB1/Q;)V

    .line 3
    check-cast v0, LN1/e;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, LN1/b;->a(LN1/c;Ljava/lang/Runnable;)V

    return-void
.end method

.method public stopForegroundWork(LK1/r;)V
    .locals 3

    .line 1
    iget-object v0, p0, LC1/G;->d:LN1/c;

    .line 2
    .line 3
    new-instance v1, LL1/v;

    .line 4
    .line 5
    new-instance v2, LC1/v;

    .line 6
    .line 7
    invoke-direct {v2, p1}, LC1/v;-><init>(LK1/r;)V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    invoke-direct {v1, p0, v2, p1}, LL1/v;-><init>(LC1/G;LC1/v;Z)V

    .line 12
    .line 13
    .line 14
    check-cast v0, LN1/e;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1}, LN1/b;->a(LN1/c;Ljava/lang/Runnable;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public stopWork(LC1/v;)V
    .locals 3

    .line 1
    iget-object v0, p0, LC1/G;->d:LN1/c;

    .line 2
    .line 3
    new-instance v1, LL1/v;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, p0, p1, v2}, LL1/v;-><init>(LC1/G;LC1/v;Z)V

    .line 7
    .line 8
    .line 9
    check-cast v0, LN1/e;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1}, LN1/b;->a(LN1/c;Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
