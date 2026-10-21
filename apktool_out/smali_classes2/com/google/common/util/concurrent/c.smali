.class public abstract Lcom/google/common/util/concurrent/c;
.super Lcom/google/common/util/concurrent/d;
.source "SourceFile"


# static fields
.field public static final v:LV3/E;


# instance fields
.field public u:Lcom/google/common/collect/ImmutableCollection;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, LV3/E;

    .line 2
    .line 3
    const-class v1, Lcom/google/common/util/concurrent/c;

    .line 4
    .line 5
    invoke-direct {v0, v1}, LV3/E;-><init>(Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/google/common/util/concurrent/c;->v:LV3/E;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final afterDone()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/google/common/util/concurrent/b;->afterDone()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/common/util/concurrent/c;->u:Lcom/google/common/collect/ImmutableCollection;

    .line 5
    .line 6
    sget-object v1, Lcom/google/common/util/concurrent/AggregateFuture$ReleaseResourcesReason;->b:Lcom/google/common/util/concurrent/AggregateFuture$ReleaseResourcesReason;

    .line 7
    .line 8
    move-object v2, p0

    .line 9
    check-cast v2, Lcom/google/common/util/concurrent/e;

    .line 10
    .line 11
    invoke-static {v1}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    iput-object v1, v2, Lcom/google/common/util/concurrent/c;->u:Lcom/google/common/collect/ImmutableCollection;

    .line 16
    .line 17
    iput-object v1, v2, Lcom/google/common/util/concurrent/e;->w:Lcom/google/common/util/concurrent/CombinedFuture$CallableInterruptibleTask;

    .line 18
    .line 19
    invoke-virtual {p0}, LV3/g;->isCancelled()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    const/4 v2, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v2, 0x0

    .line 28
    :goto_0
    and-int/2addr v1, v2

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/b;->wasInterrupted()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableCollection;->iterator()LQ3/x0;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_1

    .line 44
    .line 45
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    check-cast v2, Ljava/util/concurrent/Future;

    .line 50
    .line 51
    invoke-interface {v2, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    return-void
.end method

.method public final i(Lcom/google/common/collect/ImmutableCollection;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/common/util/concurrent/d;->s:LV3/r;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, LV3/r;->c(Lcom/google/common/util/concurrent/c;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-ltz v0, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    :goto_0
    const-string v2, "Less than 0 remaining futures"

    .line 13
    .line 14
    invoke-static {v1, v2}, LP3/v;->checkState(ZLjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    if-nez v0, :cond_4

    .line 18
    .line 19
    if-eqz p1, :cond_2

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableCollection;->iterator()LQ3/x0;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Ljava/util/concurrent/Future;

    .line 36
    .line 37
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-nez v1, :cond_1

    .line 42
    .line 43
    :try_start_0
    invoke-static {v0}, LV3/N;->getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :catchall_0
    move-exception v0

    .line 48
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/c;->j(Ljava/lang/Throwable;)V

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :catch_0
    move-exception v0

    .line 53
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/c;->j(Ljava/lang/Throwable;)V

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_2
    const/4 p1, 0x0

    .line 62
    iput-object p1, p0, Lcom/google/common/util/concurrent/d;->q:Ljava/util/Set;

    .line 63
    .line 64
    move-object v0, p0

    .line 65
    check-cast v0, Lcom/google/common/util/concurrent/e;

    .line 66
    .line 67
    iget-object v1, v0, Lcom/google/common/util/concurrent/e;->w:Lcom/google/common/util/concurrent/CombinedFuture$CallableInterruptibleTask;

    .line 68
    .line 69
    if-eqz v1, :cond_3

    .line 70
    .line 71
    :try_start_1
    iget-object v2, v1, Lcom/google/common/util/concurrent/CombinedFuture$CombinedFutureInterruptibleTask;->f:Ljava/util/concurrent/Executor;

    .line 72
    .line 73
    invoke-interface {v2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_1

    .line 74
    .line 75
    .line 76
    goto :goto_2

    .line 77
    :catch_1
    move-exception v2

    .line 78
    iget-object v1, v1, Lcom/google/common/util/concurrent/CombinedFuture$CombinedFutureInterruptibleTask;->j:Lcom/google/common/util/concurrent/e;

    .line 79
    .line 80
    invoke-virtual {v1, v2}, Lcom/google/common/util/concurrent/b;->setException(Ljava/lang/Throwable;)Z

    .line 81
    .line 82
    .line 83
    :cond_3
    :goto_2
    sget-object v1, Lcom/google/common/util/concurrent/AggregateFuture$ReleaseResourcesReason;->e:Lcom/google/common/util/concurrent/AggregateFuture$ReleaseResourcesReason;

    .line 84
    .line 85
    invoke-static {v1}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    iput-object p1, v0, Lcom/google/common/util/concurrent/c;->u:Lcom/google/common/collect/ImmutableCollection;

    .line 89
    .line 90
    :cond_4
    return-void
.end method

.method public final j(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    invoke-static {p1}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    instance-of v0, p1, Ljava/lang/Error;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    instance-of v0, p1, Ljava/lang/Error;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const-string v0, "Input Future failed with Error"

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const-string v0, "Got more than one input Future failure. Logging failures after the first"

    .line 16
    .line 17
    :goto_0
    sget-object v1, Lcom/google/common/util/concurrent/c;->v:LV3/E;

    .line 18
    .line 19
    invoke-virtual {v1}, LV3/E;->a()Ljava/util/logging/Logger;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 24
    .line 25
    invoke-virtual {v1, v2, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    return-void
.end method

.method public final pendingToString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/c;->u:Lcom/google/common/collect/ImmutableCollection;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v2, "futures="

    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0

    .line 20
    :cond_0
    invoke-super {p0}, Lcom/google/common/util/concurrent/b;->pendingToString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    return-object v0
.end method
