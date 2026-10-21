.class public final Lcom/google/common/util/concurrent/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/common/collect/ImmutableList;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/ImmutableList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/common/util/concurrent/f;->a:Lcom/google/common/collect/ImmutableList;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public call(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)LV3/F;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TC;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "LV3/F;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/util/concurrent/e;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/common/util/concurrent/f;->a:Lcom/google/common/collect/ImmutableList;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    invoke-direct {v0}, Lcom/google/common/util/concurrent/b;-><init>()V

    .line 10
    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    iput-object v3, v0, Lcom/google/common/util/concurrent/d;->q:Ljava/util/Set;

    .line 14
    .line 15
    iput v2, v0, Lcom/google/common/util/concurrent/d;->r:I

    .line 16
    .line 17
    invoke-static {v1}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/google/common/collect/ImmutableCollection;

    .line 22
    .line 23
    iput-object v1, v0, Lcom/google/common/util/concurrent/c;->u:Lcom/google/common/collect/ImmutableCollection;

    .line 24
    .line 25
    new-instance v1, Lcom/google/common/util/concurrent/CombinedFuture$CallableInterruptibleTask;

    .line 26
    .line 27
    invoke-direct {v1, v0, p1, p2}, Lcom/google/common/util/concurrent/CombinedFuture$CallableInterruptibleTask;-><init>(Lcom/google/common/util/concurrent/e;Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)V

    .line 28
    .line 29
    .line 30
    iput-object v1, v0, Lcom/google/common/util/concurrent/e;->w:Lcom/google/common/util/concurrent/CombinedFuture$CallableInterruptibleTask;

    .line 31
    .line 32
    iget-object p1, v0, Lcom/google/common/util/concurrent/c;->u:Lcom/google/common/collect/ImmutableCollection;

    .line 33
    .line 34
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    iget-object p1, v0, Lcom/google/common/util/concurrent/c;->u:Lcom/google/common/collect/ImmutableCollection;

    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-eqz p1, :cond_0

    .line 44
    .line 45
    iget-object p1, v0, Lcom/google/common/util/concurrent/e;->w:Lcom/google/common/util/concurrent/CombinedFuture$CallableInterruptibleTask;

    .line 46
    .line 47
    if-eqz p1, :cond_2

    .line 48
    .line 49
    :try_start_0
    iget-object p2, p1, Lcom/google/common/util/concurrent/CombinedFuture$CombinedFutureInterruptibleTask;->f:Ljava/util/concurrent/Executor;

    .line 50
    .line 51
    invoke-interface {p2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .line 53
    .line 54
    return-object v0

    .line 55
    :catch_0
    move-exception p2

    .line 56
    iget-object p1, p1, Lcom/google/common/util/concurrent/CombinedFuture$CombinedFutureInterruptibleTask;->j:Lcom/google/common/util/concurrent/e;

    .line 57
    .line 58
    invoke-virtual {p1, p2}, Lcom/google/common/util/concurrent/b;->setException(Ljava/lang/Throwable;)Z

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_0
    new-instance p1, LA4/n;

    .line 63
    .line 64
    const/16 p2, 0xd

    .line 65
    .line 66
    invoke-direct {p1, p2, v0, v3}, LA4/n;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    iget-object p2, v0, Lcom/google/common/util/concurrent/c;->u:Lcom/google/common/collect/ImmutableCollection;

    .line 70
    .line 71
    invoke-virtual {p2}, Lcom/google/common/collect/ImmutableCollection;->iterator()LQ3/x0;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-eqz v1, :cond_2

    .line 80
    .line 81
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    check-cast v1, LV3/F;

    .line 86
    .line 87
    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    if-eqz v2, :cond_1

    .line 92
    .line 93
    invoke-virtual {v0, v3}, Lcom/google/common/util/concurrent/c;->i(Lcom/google/common/collect/ImmutableCollection;)V

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_1
    invoke-static {}, Lcom/google/common/util/concurrent/g;->directExecutor()Ljava/util/concurrent/Executor;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    invoke-interface {v1, p1, v2}, LV3/F;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_2
    :goto_1
    return-object v0
.end method

.method public run(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)LV3/F;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "LV3/F;"
        }
    .end annotation

    .line 1
    new-instance v0, LV3/z;

    .line 2
    .line 3
    invoke-direct {v0, p1}, LV3/z;-><init>(Ljava/lang/Runnable;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0, p2}, Lcom/google/common/util/concurrent/f;->call(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)LV3/F;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method
