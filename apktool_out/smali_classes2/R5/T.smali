.class public abstract LR5/T;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final dispatch(LR5/S;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LR5/S;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, LR5/S;->getDelegate$kotlinx_coroutines_core()Ly5/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x4

    .line 6
    const/4 v2, 0x1

    .line 7
    if-ne p1, v1, :cond_0

    .line 8
    .line 9
    move v1, v2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    :goto_0
    if-nez v1, :cond_4

    .line 13
    .line 14
    instance-of v3, v0, LW5/i;

    .line 15
    .line 16
    if-eqz v3, :cond_4

    .line 17
    .line 18
    invoke-static {p1}, LR5/T;->isCancellableMode(I)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    iget v3, p0, LR5/S;->f:I

    .line 23
    .line 24
    invoke-static {v3}, LR5/T;->isCancellableMode(I)Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-ne p1, v3, :cond_4

    .line 29
    .line 30
    move-object p1, v0

    .line 31
    check-cast p1, LW5/i;

    .line 32
    .line 33
    iget-object p1, p1, LW5/i;->j:LR5/E;

    .line 34
    .line 35
    invoke-interface {v0}, Ly5/c;->getContext()Ly5/k;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {p1, v0}, LR5/E;->isDispatchNeeded(Ly5/k;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_1

    .line 44
    .line 45
    invoke-virtual {p1, v0, p0}, LR5/E;->dispatch(Ly5/k;Ljava/lang/Runnable;)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_1
    sget-object p1, LR5/O0;->a:LR5/O0;

    .line 50
    .line 51
    invoke-virtual {p1}, LR5/O0;->getEventLoop$kotlinx_coroutines_core()LR5/Y;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p1}, LR5/Y;->isUnconfinedLoopActive()Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_2

    .line 60
    .line 61
    invoke-virtual {p1, p0}, LR5/Y;->dispatchUnconfined(LR5/S;)V

    .line 62
    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_2
    invoke-virtual {p1, v2}, LR5/Y;->incrementUseCount(Z)V

    .line 66
    .line 67
    .line 68
    :try_start_0
    invoke-virtual {p0}, LR5/S;->getDelegate$kotlinx_coroutines_core()Ly5/c;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-static {p0, v0, v2}, LR5/T;->resume(LR5/S;Ly5/c;Z)V

    .line 73
    .line 74
    .line 75
    :cond_3
    invoke-virtual {p1}, LR5/Y;->processUnconfinedEvent()Z

    .line 76
    .line 77
    .line 78
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    if-nez v0, :cond_3

    .line 80
    .line 81
    :goto_1
    invoke-virtual {p1, v2}, LR5/Y;->decrementUseCount(Z)V

    .line 82
    .line 83
    .line 84
    goto :goto_2

    .line 85
    :catchall_0
    move-exception v0

    .line 86
    const/4 v1, 0x0

    .line 87
    :try_start_1
    invoke-virtual {p0, v0, v1}, LR5/S;->handleFatalException(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 88
    .line 89
    .line 90
    goto :goto_1

    .line 91
    :goto_2
    return-void

    .line 92
    :catchall_1
    move-exception p0

    .line 93
    invoke-virtual {p1, v2}, LR5/Y;->decrementUseCount(Z)V

    .line 94
    .line 95
    .line 96
    throw p0

    .line 97
    :cond_4
    invoke-static {p0, v0, v1}, LR5/T;->resume(LR5/S;Ly5/c;Z)V

    .line 98
    .line 99
    .line 100
    return-void
.end method

.method public static final isCancellableMode(I)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p0, v0, :cond_1

    .line 3
    .line 4
    const/4 v1, 0x2

    .line 5
    if-ne p0, v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return p0

    .line 10
    :cond_1
    :goto_0
    return v0
.end method

.method public static final isReusableMode(I)Z
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    if-ne p0, v0, :cond_0

    .line 3
    .line 4
    const/4 p0, 0x1

    .line 5
    return p0

    .line 6
    :cond_0
    const/4 p0, 0x0

    .line 7
    return p0
.end method

.method public static final resume(LR5/S;Ly5/c;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LR5/S;",
            "Ly5/c;",
            "Z)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, LR5/S;->takeState$kotlinx_coroutines_core()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, LR5/S;->getExceptionalResult$kotlinx_coroutines_core(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    sget p0, Lkotlin/Result;->b:I

    .line 12
    .line 13
    invoke-static {v1}, Lkotlin/b;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    :goto_0
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    sget v1, Lkotlin/Result;->b:I

    .line 23
    .line 24
    invoke-virtual {p0, v0}, LR5/S;->getSuccessfulResult$kotlinx_coroutines_core(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    goto :goto_0

    .line 29
    :goto_1
    if-eqz p2, :cond_6

    .line 30
    .line 31
    const-string p2, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<T of kotlinx.coroutines.DispatchedTaskKt.resume>"

    .line 32
    .line 33
    invoke-static {p1, p2}, Lkotlin/jvm/internal/j;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    check-cast p1, LW5/i;

    .line 37
    .line 38
    iget-object p2, p1, LW5/i;->m:Ly5/c;

    .line 39
    .line 40
    invoke-interface {p2}, Ly5/c;->getContext()Ly5/k;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iget-object v1, p1, LW5/i;->p:Ljava/lang/Object;

    .line 45
    .line 46
    invoke-static {v0, v1}, Lkotlinx/coroutines/internal/a;->updateThreadContext(Ly5/k;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    sget-object v2, Lkotlinx/coroutines/internal/a;->a:LW5/G;

    .line 51
    .line 52
    if-eq v1, v2, :cond_1

    .line 53
    .line 54
    invoke-static {p2, v0, v1}, Lkotlinx/coroutines/a;->updateUndispatchedCompletion(Ly5/c;Ly5/k;Ljava/lang/Object;)LR5/Q0;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    goto :goto_2

    .line 59
    :cond_1
    const/4 p2, 0x0

    .line 60
    :goto_2
    :try_start_0
    iget-object p1, p1, LW5/i;->m:Ly5/c;

    .line 61
    .line 62
    invoke-interface {p1, p0}, Ly5/c;->resumeWith(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    .line 64
    .line 65
    if-eqz p2, :cond_3

    .line 66
    .line 67
    invoke-virtual {p2}, LR5/Q0;->clearThreadContext()Z

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    if-eqz p0, :cond_2

    .line 72
    .line 73
    goto :goto_3

    .line 74
    :cond_2
    return-void

    .line 75
    :cond_3
    :goto_3
    invoke-static {v0, v1}, Lkotlinx/coroutines/internal/a;->restoreThreadContext(Ly5/k;Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :catchall_0
    move-exception p0

    .line 80
    if-eqz p2, :cond_4

    .line 81
    .line 82
    invoke-virtual {p2}, LR5/Q0;->clearThreadContext()Z

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    if-eqz p1, :cond_5

    .line 87
    .line 88
    :cond_4
    invoke-static {v0, v1}, Lkotlinx/coroutines/internal/a;->restoreThreadContext(Ly5/k;Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    :cond_5
    throw p0

    .line 92
    :cond_6
    invoke-interface {p1, p0}, Ly5/c;->resumeWith(Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    return-void
.end method
