.class public abstract synthetic LR5/h;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final runBlocking(Ly5/k;LH5/p;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ly5/k;",
            "LH5/p;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Ly5/e;->b:Ly5/e;

    .line 6
    .line 7
    invoke-interface {p0, v1}, Ly5/k;->get(Ly5/j;)Ly5/i;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Ly5/f;

    .line 12
    .line 13
    sget-object v2, LR5/i0;->b:LR5/i0;

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    sget-object v1, LR5/O0;->a:LR5/O0;

    .line 18
    .line 19
    invoke-virtual {v1}, LR5/O0;->getEventLoop$kotlinx_coroutines_core()LR5/Y;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-interface {p0, v1}, Ly5/k;->plus(Ly5/k;)Ly5/k;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-static {v2, p0}, Lkotlinx/coroutines/a;->newCoroutineContext(LR5/I;Ly5/k;)Ly5/k;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    goto :goto_3

    .line 32
    :cond_0
    instance-of v3, v1, LR5/Y;

    .line 33
    .line 34
    const/4 v4, 0x0

    .line 35
    if-eqz v3, :cond_1

    .line 36
    .line 37
    check-cast v1, LR5/Y;

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    move-object v1, v4

    .line 41
    :goto_0
    if-eqz v1, :cond_4

    .line 42
    .line 43
    invoke-virtual {v1}, LR5/Y;->shouldBeProcessedFromContext()Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-eqz v3, :cond_2

    .line 48
    .line 49
    move-object v4, v1

    .line 50
    :cond_2
    if-nez v4, :cond_3

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_3
    move-object v1, v4

    .line 54
    goto :goto_2

    .line 55
    :cond_4
    :goto_1
    sget-object v1, LR5/O0;->a:LR5/O0;

    .line 56
    .line 57
    invoke-virtual {v1}, LR5/O0;->currentOrNull$kotlinx_coroutines_core()LR5/Y;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    :goto_2
    invoke-static {v2, p0}, Lkotlinx/coroutines/a;->newCoroutineContext(LR5/I;Ly5/k;)Ly5/k;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    :goto_3
    new-instance v2, LR5/e;

    .line 66
    .line 67
    invoke-direct {v2, p0, v0, v1}, LR5/e;-><init>(Ly5/k;Ljava/lang/Thread;LR5/Y;)V

    .line 68
    .line 69
    .line 70
    sget-object p0, Lkotlinx/coroutines/CoroutineStart;->b:Lkotlinx/coroutines/CoroutineStart;

    .line 71
    .line 72
    invoke-virtual {v2, p0, v2, p1}, LR5/a;->start(Lkotlinx/coroutines/CoroutineStart;Ljava/lang/Object;LH5/p;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2}, LR5/e;->joinBlocking()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    return-object p0
.end method

.method public static synthetic runBlocking$default(Ly5/k;LH5/p;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    sget-object p0, Lkotlin/coroutines/EmptyCoroutineContext;->b:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 6
    .line 7
    :cond_0
    invoke-static {p0, p1}, LR5/g;->runBlocking(Ly5/k;LH5/p;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method
