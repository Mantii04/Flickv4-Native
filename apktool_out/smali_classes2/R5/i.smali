.class public abstract synthetic LR5/i;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final async(LR5/I;Ly5/k;Lkotlinx/coroutines/CoroutineStart;LH5/p;)LR5/N;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LR5/I;",
            "Ly5/k;",
            "Lkotlinx/coroutines/CoroutineStart;",
            "LH5/p;",
            ")",
            "LR5/N;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lkotlinx/coroutines/a;->newCoroutineContext(LR5/I;Ly5/k;)Ly5/k;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p2}, Lkotlinx/coroutines/CoroutineStart;->isLazy()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    new-instance p1, LR5/C0;

    .line 12
    .line 13
    invoke-direct {p1, p0, p3}, LR5/C0;-><init>(Ly5/k;LH5/p;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    new-instance p1, LR5/O;

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    invoke-direct {p1, p0, v0}, LR5/O;-><init>(Ly5/k;Z)V

    .line 21
    .line 22
    .line 23
    :goto_0
    invoke-virtual {p1, p2, p1, p3}, LR5/a;->start(Lkotlinx/coroutines/CoroutineStart;Ljava/lang/Object;LH5/p;)V

    .line 24
    .line 25
    .line 26
    return-object p1
.end method

.method public static synthetic async$default(LR5/I;Ly5/k;Lkotlinx/coroutines/CoroutineStart;LH5/p;ILjava/lang/Object;)LR5/N;
    .locals 0

    .line 1
    and-int/lit8 p5, p4, 0x1

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    sget-object p1, Lkotlin/coroutines/EmptyCoroutineContext;->b:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p4, p4, 0x2

    .line 8
    .line 9
    if-eqz p4, :cond_1

    .line 10
    .line 11
    sget-object p2, Lkotlinx/coroutines/CoroutineStart;->b:Lkotlinx/coroutines/CoroutineStart;

    .line 12
    .line 13
    :cond_1
    invoke-static {p0, p1, p2, p3}, LR5/g;->async(LR5/I;Ly5/k;Lkotlinx/coroutines/CoroutineStart;LH5/p;)LR5/N;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public static final launch(LR5/I;Ly5/k;Lkotlinx/coroutines/CoroutineStart;LH5/p;)LR5/q0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LR5/I;",
            "Ly5/k;",
            "Lkotlinx/coroutines/CoroutineStart;",
            "LH5/p;",
            ")",
            "LR5/q0;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lkotlinx/coroutines/a;->newCoroutineContext(LR5/I;Ly5/k;)Ly5/k;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p2}, Lkotlinx/coroutines/CoroutineStart;->isLazy()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    new-instance p1, LR5/D0;

    .line 12
    .line 13
    invoke-direct {p1, p0, p3}, LR5/D0;-><init>(Ly5/k;LH5/p;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    new-instance p1, LR5/K0;

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    invoke-direct {p1, p0, v0}, LR5/K0;-><init>(Ly5/k;Z)V

    .line 21
    .line 22
    .line 23
    :goto_0
    invoke-virtual {p1, p2, p1, p3}, LR5/a;->start(Lkotlinx/coroutines/CoroutineStart;Ljava/lang/Object;LH5/p;)V

    .line 24
    .line 25
    .line 26
    return-object p1
.end method

.method public static synthetic launch$default(LR5/I;Ly5/k;Lkotlinx/coroutines/CoroutineStart;LH5/p;ILjava/lang/Object;)LR5/q0;
    .locals 0

    .line 1
    and-int/lit8 p5, p4, 0x1

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    sget-object p1, Lkotlin/coroutines/EmptyCoroutineContext;->b:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p4, p4, 0x2

    .line 8
    .line 9
    if-eqz p4, :cond_1

    .line 10
    .line 11
    sget-object p2, Lkotlinx/coroutines/CoroutineStart;->b:Lkotlinx/coroutines/CoroutineStart;

    .line 12
    .line 13
    :cond_1
    invoke-static {p0, p1, p2, p3}, LR5/g;->launch(LR5/I;Ly5/k;Lkotlinx/coroutines/CoroutineStart;LH5/p;)LR5/q0;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public static final withContext(Ly5/k;LH5/p;Ly5/c;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ly5/k;",
            "LH5/p;",
            "Ly5/c;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ly5/c;->getContext()Ly5/k;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0, p0}, Lkotlinx/coroutines/a;->newCoroutineContext(Ly5/k;Ly5/k;)Ly5/k;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-static {p0}, LR5/t0;->ensureActive(Ly5/k;)V

    .line 10
    .line 11
    .line 12
    if-ne p0, v0, :cond_0

    .line 13
    .line 14
    new-instance v0, LW5/C;

    .line 15
    .line 16
    invoke-direct {v0, p0, p2}, LW5/C;-><init>(Ly5/k;Ly5/c;)V

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v0, p1}, LX5/b;->startUndispatchedOrReturn(LW5/C;Ljava/lang/Object;LH5/p;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    sget-object v1, Ly5/e;->b:Ly5/e;

    .line 25
    .line 26
    invoke-interface {p0, v1}, Ly5/k;->get(Ly5/j;)Ly5/i;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-interface {v0, v1}, Ly5/k;->get(Ly5/j;)Ly5/i;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {v2, v0}, Lkotlin/jvm/internal/j;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    new-instance v0, LR5/Q0;

    .line 41
    .line 42
    invoke-direct {v0, p0, p2}, LR5/Q0;-><init>(Ly5/k;Ly5/c;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, LR5/a;->getContext()Ly5/k;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    const/4 v1, 0x0

    .line 50
    invoke-static {p0, v1}, Lkotlinx/coroutines/internal/a;->updateThreadContext(Ly5/k;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    :try_start_0
    invoke-static {v0, v0, p1}, LX5/b;->startUndispatchedOrReturn(LW5/C;Ljava/lang/Object;LH5/p;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    invoke-static {p0, v1}, Lkotlinx/coroutines/internal/a;->restoreThreadContext(Ly5/k;Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    move-object p0, p1

    .line 62
    goto :goto_0

    .line 63
    :catchall_0
    move-exception v0

    .line 64
    move-object p1, v0

    .line 65
    invoke-static {p0, v1}, Lkotlinx/coroutines/internal/a;->restoreThreadContext(Ly5/k;Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    throw p1

    .line 69
    :cond_1
    new-instance v3, LR5/Q;

    .line 70
    .line 71
    invoke-direct {v3, p0, p2}, LR5/Q;-><init>(Ly5/k;Ly5/c;)V

    .line 72
    .line 73
    .line 74
    const/4 v7, 0x0

    .line 75
    const/4 v5, 0x0

    .line 76
    const/4 v6, 0x4

    .line 77
    move-object v4, v3

    .line 78
    move-object v2, p1

    .line 79
    invoke-static/range {v2 .. v7}, LX5/a;->startCoroutineCancellable$default(LH5/p;Ljava/lang/Object;Ly5/c;LH5/l;ILjava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v3}, LR5/Q;->getResult()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    :goto_0
    invoke-static {}, Lz5/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    if-ne p0, p1, :cond_2

    .line 91
    .line 92
    invoke-static {p2}, LA5/f;->probeCoroutineSuspended(Ly5/c;)V

    .line 93
    .line 94
    .line 95
    :cond_2
    return-object p0
.end method
