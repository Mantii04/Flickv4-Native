.class public abstract Lkotlinx/coroutines/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ly5/k;Ly5/k;Z)Ly5/k;
    .locals 3

    .line 1
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2
    .line 3
    sget-object v0, Lkotlinx/coroutines/CoroutineContextKt$hasCopyableElements$1;->b:Lkotlinx/coroutines/CoroutineContextKt$hasCopyableElements$1;

    .line 4
    .line 5
    invoke-interface {p0, p2, v0}, Ly5/k;->fold(Ljava/lang/Object;LH5/p;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Ljava/lang/Boolean;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-interface {p1, p2, v0}, Ly5/k;->fold(Ljava/lang/Object;LH5/p;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    check-cast p2, Ljava/lang/Boolean;

    .line 20
    .line 21
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    if-nez p2, :cond_0

    .line 28
    .line 29
    invoke-interface {p0, p1}, Ly5/k;->plus(Ly5/k;)Ly5/k;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    :cond_0
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 35
    .line 36
    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    .line 40
    .line 41
    sget-object p1, Lkotlin/coroutines/EmptyCoroutineContext;->b:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 42
    .line 43
    new-instance v1, Lkotlinx/coroutines/CoroutineContextKt$foldCopies$folded$1;

    .line 44
    .line 45
    const/4 v2, 0x2

    .line 46
    invoke-direct {v1, v2}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 47
    .line 48
    .line 49
    invoke-interface {p0, p1, v1}, Ly5/k;->fold(Ljava/lang/Object;LH5/p;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    check-cast p0, Ly5/k;

    .line 54
    .line 55
    if-eqz p2, :cond_1

    .line 56
    .line 57
    iget-object p2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast p2, Ly5/k;

    .line 60
    .line 61
    sget-object v1, Lkotlinx/coroutines/CoroutineContextKt$foldCopies$1;->b:Lkotlinx/coroutines/CoroutineContextKt$foldCopies$1;

    .line 62
    .line 63
    invoke-interface {p2, p1, v1}, Ly5/k;->fold(Ljava/lang/Object;LH5/p;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    iput-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    .line 68
    .line 69
    :cond_1
    iget-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast p1, Ly5/k;

    .line 72
    .line 73
    invoke-interface {p0, p1}, Ly5/k;->plus(Ly5/k;)Ly5/k;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    return-object p0
.end method

.method public static final getCoroutineName(Ly5/k;)Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public static final newCoroutineContext(LR5/I;Ly5/k;)Ly5/k;
    .locals 1

    .line 1
    invoke-interface {p0}, LR5/I;->getCoroutineContext()Ly5/k;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lkotlinx/coroutines/a;->a(Ly5/k;Ly5/k;Z)Ly5/k;

    move-result-object p0

    .line 2
    invoke-static {}, LR5/U;->getDefault()LR5/E;

    move-result-object p1

    if-eq p0, p1, :cond_0

    sget-object p1, Ly5/e;->b:Ly5/e;

    invoke-interface {p0, p1}, Ly5/k;->get(Ly5/j;)Ly5/i;

    move-result-object p1

    if-nez p1, :cond_0

    .line 3
    invoke-static {}, LR5/U;->getDefault()LR5/E;

    move-result-object p1

    invoke-interface {p0, p1}, Ly5/k;->plus(Ly5/k;)Ly5/k;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static final newCoroutineContext(Ly5/k;Ly5/k;)Ly5/k;
    .locals 2

    .line 4
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v1, Lkotlinx/coroutines/CoroutineContextKt$hasCopyableElements$1;->b:Lkotlinx/coroutines/CoroutineContextKt$hasCopyableElements$1;

    invoke-interface {p1, v0, v1}, Ly5/k;->fold(Ljava/lang/Object;LH5/p;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    invoke-interface {p0, p1}, Ly5/k;->plus(Ly5/k;)Ly5/k;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 6
    invoke-static {p0, p1, v0}, Lkotlinx/coroutines/a;->a(Ly5/k;Ly5/k;Z)Ly5/k;

    move-result-object p0

    return-object p0
.end method

.method public static final undispatchedCompletion(LA5/c;)LR5/Q0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LA5/c;",
            ")",
            "LR5/Q0;"
        }
    .end annotation

    .line 1
    :cond_0
    instance-of v0, p0, LR5/Q;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_1
    invoke-interface {p0}, LA5/c;->getCallerFrame()LA5/c;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    if-nez p0, :cond_2

    .line 12
    .line 13
    return-object v1

    .line 14
    :cond_2
    instance-of v0, p0, LR5/Q0;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    check-cast p0, LR5/Q0;

    .line 19
    .line 20
    return-object p0
.end method

.method public static final updateUndispatchedCompletion(Ly5/c;Ly5/k;Ljava/lang/Object;)LR5/Q0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly5/c;",
            "Ly5/k;",
            "Ljava/lang/Object;",
            ")",
            "LR5/Q0;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, LA5/c;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    sget-object v0, LR5/R0;->b:LR5/R0;

    .line 8
    .line 9
    invoke-interface {p1, v0}, Ly5/k;->get(Ly5/j;)Ly5/i;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    check-cast p0, LA5/c;

    .line 16
    .line 17
    invoke-static {p0}, Lkotlinx/coroutines/a;->undispatchedCompletion(LA5/c;)LR5/Q0;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    if-eqz p0, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0, p1, p2}, LR5/Q0;->saveThreadContext(Ly5/k;Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    :cond_1
    return-object p0

    .line 27
    :cond_2
    return-object v1
.end method
