.class public abstract Lcom/google/common/util/concurrent/g;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static directExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/util/concurrent/DirectExecutor;->b:Lcom/google/common/util/concurrent/DirectExecutor;

    .line 2
    .line 3
    return-object v0
.end method

.method public static listeningDecorator(Ljava/util/concurrent/ExecutorService;)LV3/H;
    .locals 1

    .line 1
    instance-of v0, p0, LV3/H;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, LV3/H;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    instance-of v0, p0, Ljava/util/concurrent/ScheduledExecutorService;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    new-instance v0, LV3/L;

    .line 13
    .line 14
    check-cast p0, Ljava/util/concurrent/ScheduledExecutorService;

    .line 15
    .line 16
    invoke-direct {v0, p0}, LV3/L;-><init>(Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 17
    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, LV3/I;

    .line 21
    .line 22
    invoke-direct {v0, p0}, LV3/I;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 23
    .line 24
    .line 25
    return-object v0
.end method
