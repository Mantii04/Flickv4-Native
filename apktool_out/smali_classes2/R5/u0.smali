.class public abstract synthetic LR5/u0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final Job(LR5/q0;)LR5/y;
    .locals 1

    .line 1
    new-instance v0, LR5/s0;

    .line 2
    .line 3
    invoke-direct {v0, p0}, LR5/s0;-><init>(LR5/q0;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static synthetic Job$default(LR5/q0;ILjava/lang/Object;)LR5/y;
    .locals 0

    .line 1
    and-int/lit8 p1, p1, 0x1

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    :cond_0
    invoke-static {p0}, LR5/t0;->Job(LR5/q0;)LR5/y;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static final cancel(Ly5/k;Ljava/util/concurrent/CancellationException;)V
    .locals 1

    .line 1
    sget-object v0, LR5/F;->e:LR5/F;

    .line 2
    .line 3
    invoke-interface {p0, v0}, Ly5/k;->get(Ly5/j;)Ly5/i;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, LR5/q0;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-interface {p0, p1}, LR5/q0;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public static synthetic cancel$default(Ly5/k;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    invoke-static {p0, p1}, LR5/t0;->cancel(Ly5/k;Ljava/util/concurrent/CancellationException;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static final ensureActive(LR5/q0;)V
    .locals 1

    .line 1
    invoke-interface {p0}, LR5/q0;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    check-cast p0, LR5/A0;

    invoke-virtual {p0}, LR5/A0;->getCancellationException()Ljava/util/concurrent/CancellationException;

    move-result-object p0

    throw p0
.end method

.method public static final ensureActive(Ly5/k;)V
    .locals 1

    .line 2
    sget-object v0, LR5/F;->e:LR5/F;

    invoke-interface {p0, v0}, Ly5/k;->get(Ly5/j;)Ly5/i;

    move-result-object p0

    check-cast p0, LR5/q0;

    if-eqz p0, :cond_0

    invoke-static {p0}, LR5/t0;->ensureActive(LR5/q0;)V

    :cond_0
    return-void
.end method
