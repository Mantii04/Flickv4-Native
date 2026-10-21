.class public abstract LX5/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final startCoroutineCancellable(LH5/p;Ljava/lang/Object;Ly5/c;LH5/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "LH5/p;",
            "TR;",
            "Ly5/c;",
            "LH5/l;",
            ")V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0, p1, p2}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt;->createCoroutineUnintercepted(LH5/p;Ljava/lang/Object;Ly5/c;)Ly5/c;

    move-result-object p0

    invoke-static {p0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt;->intercepted(Ly5/c;)Ly5/c;

    move-result-object p0

    sget p1, Lkotlin/Result;->b:I

    sget-object p1, Lu5/j;->a:Lu5/j;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1, p3}, LW5/j;->resumeCancellableWith(Ly5/c;Ljava/lang/Object;LH5/l;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 2
    sget p1, Lkotlin/Result;->b:I

    invoke-static {p0}, Lkotlin/b;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p1}, Ly5/c;->resumeWith(Ljava/lang/Object;)V

    .line 3
    throw p0
.end method

.method public static final startCoroutineCancellable(Ly5/c;Ly5/c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly5/c;",
            "Ly5/c;",
            ")V"
        }
    .end annotation

    .line 4
    :try_start_0
    invoke-static {p0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt;->intercepted(Ly5/c;)Ly5/c;

    move-result-object p0

    sget v0, Lkotlin/Result;->b:I

    sget-object v0, Lu5/j;->a:Lu5/j;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, v0, v2, v1, v2}, LW5/j;->resumeCancellableWith$default(Ly5/c;Ljava/lang/Object;LH5/l;ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 5
    sget v0, Lkotlin/Result;->b:I

    invoke-static {p0}, Lkotlin/b;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ly5/c;->resumeWith(Ljava/lang/Object;)V

    .line 6
    throw p0
.end method

.method public static synthetic startCoroutineCancellable$default(LH5/p;Ljava/lang/Object;Ly5/c;LH5/l;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p4, p4, 0x4

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    const/4 p3, 0x0

    .line 6
    :cond_0
    invoke-static {p0, p1, p2, p3}, LX5/a;->startCoroutineCancellable(LH5/p;Ljava/lang/Object;Ly5/c;LH5/l;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
