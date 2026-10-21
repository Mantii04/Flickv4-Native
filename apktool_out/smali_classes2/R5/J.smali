.class public abstract LR5/J;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final CoroutineScope(Ly5/k;)LR5/I;
    .locals 3

    .line 1
    new-instance v0, LW5/f;

    .line 2
    .line 3
    sget-object v1, LR5/F;->e:LR5/F;

    .line 4
    .line 5
    invoke-interface {p0, v1}, Ly5/k;->get(Ly5/j;)Ly5/i;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x1

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-static {v2, v1, v2}, LR5/t0;->Job$default(LR5/q0;ILjava/lang/Object;)LR5/y;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-interface {p0, v1}, Ly5/k;->plus(Ly5/k;)Ly5/k;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    :goto_0
    invoke-direct {v0, p0}, LW5/f;-><init>(Ly5/k;)V

    .line 23
    .line 24
    .line 25
    return-object v0
.end method

.method public static final cancel(LR5/I;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 4
    invoke-static {p1, p2}, LR5/e0;->CancellationException(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;

    move-result-object p1

    invoke-static {p0, p1}, LR5/J;->cancel(LR5/I;Ljava/util/concurrent/CancellationException;)V

    return-void
.end method

.method public static final cancel(LR5/I;Ljava/util/concurrent/CancellationException;)V
    .locals 2

    .line 1
    invoke-interface {p0}, LR5/I;->getCoroutineContext()Ly5/k;

    move-result-object v0

    sget-object v1, LR5/F;->e:LR5/F;

    invoke-interface {v0, v1}, Ly5/k;->get(Ly5/j;)Ly5/i;

    move-result-object v0

    check-cast v0, LR5/q0;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, LR5/q0;->cancel(Ljava/util/concurrent/CancellationException;)V

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Scope cannot be cancelled because it does not have a job: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final coroutineScope(LH5/p;Ly5/c;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LH5/p;",
            "Ly5/c;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance v0, LW5/C;

    .line 2
    .line 3
    invoke-interface {p1}, Ly5/c;->getContext()Ly5/k;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1, p1}, LW5/C;-><init>(Ly5/k;Ly5/c;)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v0, p0}, LX5/b;->startUndispatchedOrReturn(LW5/C;Ljava/lang/Object;LH5/p;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-static {}, Lz5/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-ne p0, v0, :cond_0

    .line 19
    .line 20
    invoke-static {p1}, LA5/f;->probeCoroutineSuspended(Ly5/c;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-object p0
.end method

.method public static final ensureActive(LR5/I;)V
    .locals 0

    .line 1
    invoke-interface {p0}, LR5/I;->getCoroutineContext()Ly5/k;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, LR5/t0;->ensureActive(Ly5/k;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
