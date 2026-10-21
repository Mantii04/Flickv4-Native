.class public LR5/A0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LR5/q0;
.implements LR5/u;
.implements LR5/I0;


# static fields
.field public static final b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile _parentHandle:Ljava/lang/Object;

.field private volatile _state:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "_state"

    .line 2
    .line 3
    const-class v1, LR5/A0;

    .line 4
    .line 5
    const-class v2, Ljava/lang/Object;

    .line 6
    .line 7
    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, LR5/A0;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 12
    .line 13
    const-string v0, "_parentHandle"

    .line 14
    .line 15
    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, LR5/A0;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 20
    .line 21
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    invoke-static {}, LR5/B0;->access$getEMPTY_ACTIVE$p()LR5/X;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-static {}, LR5/B0;->access$getEMPTY_NEW$p()LR5/X;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    :goto_0
    iput-object p1, p0, LR5/A0;->_state:Ljava/lang/Object;

    .line 16
    .line 17
    return-void
.end method

.method public static final synthetic access$cancellationExceptionMessage(LR5/A0;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, LR5/A0;->cancellationExceptionMessage()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final access$continueCompleting(LR5/A0;LR5/y0;LR5/t;Ljava/lang/Object;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p2}, LR5/A0;->g(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)LR5/t;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    if-eqz p2, :cond_2

    .line 9
    .line 10
    :cond_0
    new-instance v3, LR5/x0;

    .line 11
    .line 12
    invoke-direct {v3, p0, p1, p2, p3}, LR5/x0;-><init>(LR5/A0;LR5/y0;LR5/t;Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    const/4 v5, 0x0

    .line 17
    iget-object v0, p2, LR5/t;->m:LR5/u;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-static/range {v0 .. v5}, LR5/p0;->invokeOnCompletion$default(LR5/q0;ZZLH5/l;ILjava/lang/Object;)LR5/V;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sget-object v1, LR5/G0;->b:LR5/G0;

    .line 26
    .line 27
    if-eq v0, v1, :cond_1

    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    invoke-static {p2}, LR5/A0;->g(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)LR5/t;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    if-nez p2, :cond_0

    .line 35
    .line 36
    :cond_2
    invoke-virtual {p0, p1, p3}, LR5/A0;->d(LR5/y0;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p0, p1}, LR5/A0;->afterCompletion(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public static g(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)LR5/t;
    .locals 1

    .line 1
    :goto_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->isRemoved()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->getPrevNode()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->getNextNode()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->isRemoved()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    instance-of v0, p0, LR5/t;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    check-cast p0, LR5/t;

    .line 27
    .line 28
    return-object p0

    .line 29
    :cond_1
    instance-of v0, p0, LR5/F0;

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    const/4 p0, 0x0

    .line 34
    return-object p0
.end method

.method public static j(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 1
    instance-of v0, p0, LR5/y0;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    check-cast p0, LR5/y0;

    .line 6
    .line 7
    invoke-virtual {p0}, LR5/y0;->isCancelling()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const-string p0, "Cancelling"

    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_0
    invoke-virtual {p0}, LR5/y0;->isCompleting()Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    if-eqz p0, :cond_2

    .line 21
    .line 22
    const-string p0, "Completing"

    .line 23
    .line 24
    return-object p0

    .line 25
    :cond_1
    instance-of v0, p0, LR5/k0;

    .line 26
    .line 27
    if-eqz v0, :cond_4

    .line 28
    .line 29
    check-cast p0, LR5/k0;

    .line 30
    .line 31
    invoke-interface {p0}, LR5/k0;->isActive()Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    if-eqz p0, :cond_3

    .line 36
    .line 37
    :cond_2
    const-string p0, "Active"

    .line 38
    .line 39
    return-object p0

    .line 40
    :cond_3
    const-string p0, "New"

    .line 41
    .line 42
    return-object p0

    .line 43
    :cond_4
    instance-of p0, p0, LR5/A;

    .line 44
    .line 45
    if-eqz p0, :cond_5

    .line 46
    .line 47
    const-string p0, "Cancelled"

    .line 48
    .line 49
    return-object p0

    .line 50
    :cond_5
    const-string p0, "Completed"

    .line 51
    .line 52
    return-object p0
.end method

.method public static synthetic toCancellationException$default(LR5/A0;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/concurrent/CancellationException;
    .locals 0

    .line 1
    if-nez p4, :cond_1

    .line 2
    .line 3
    and-int/lit8 p3, p3, 0x1

    .line 4
    .line 5
    if-eqz p3, :cond_0

    .line 6
    .line 7
    const/4 p2, 0x0

    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2}, LR5/A0;->toCancellationException(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/util/concurrent/CancellationException;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0

    .line 13
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 14
    .line 15
    const-string p1, "Super calls with default arguments not supported in this target, function: toCancellationException"

    .line 16
    .line 17
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p0
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, LR5/A0;->isScopedCoroutine()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    .line 10
    .line 11
    invoke-virtual {p0}, LR5/A0;->getParentHandle$kotlinx_coroutines_core()LR5/s;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    if-eqz v2, :cond_4

    .line 16
    .line 17
    sget-object v3, LR5/G0;->b:LR5/G0;

    .line 18
    .line 19
    if-ne v2, v3, :cond_1

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    invoke-interface {v2, p1}, LR5/s;->childCancelled(Ljava/lang/Throwable;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-nez p1, :cond_3

    .line 27
    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    const/4 p1, 0x0

    .line 32
    return p1

    .line 33
    :cond_3
    :goto_0
    return v1

    .line 34
    :cond_4
    :goto_1
    return v0
.end method

.method public afterCompletion(Ljava/lang/Object;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final attachChild(LR5/u;)LR5/s;
    .locals 6

    .line 1
    new-instance v3, LR5/t;

    .line 2
    .line 3
    invoke-direct {v3, p1}, LR5/t;-><init>(LR5/u;)V

    .line 4
    .line 5
    .line 6
    const/4 v4, 0x2

    .line 7
    const/4 v5, 0x0

    .line 8
    const/4 v1, 0x1

    .line 9
    const/4 v2, 0x0

    .line 10
    move-object v0, p0

    .line 11
    invoke-static/range {v0 .. v5}, LR5/p0;->invokeOnCompletion$default(LR5/q0;ZZLH5/l;ILjava/lang/Object;)LR5/V;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.ChildHandle"

    .line 16
    .line 17
    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    check-cast p1, LR5/s;

    .line 21
    .line 22
    return-object p1
.end method

.method public final awaitInternal(Ly5/c;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly5/c;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    :cond_0
    invoke-virtual {p0}, LR5/A0;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, LR5/k0;

    .line 6
    .line 7
    if-nez v1, :cond_2

    .line 8
    .line 9
    instance-of p1, v0, LR5/A;

    .line 10
    .line 11
    if-nez p1, :cond_1

    .line 12
    .line 13
    invoke-static {v0}, LR5/B0;->unboxState(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1

    .line 18
    :cond_1
    check-cast v0, LR5/A;

    .line 19
    .line 20
    iget-object p1, v0, LR5/A;->a:Ljava/lang/Throwable;

    .line 21
    .line 22
    throw p1

    .line 23
    :cond_2
    invoke-virtual {p0, v0}, LR5/A0;->i(Ljava/lang/Object;)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-ltz v0, :cond_0

    .line 28
    .line 29
    new-instance v0, LR5/w0;

    .line 30
    .line 31
    invoke-static {p1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt;->intercepted(Ly5/c;)Ly5/c;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-direct {v0, v1, p0}, LR5/w0;-><init>(Ly5/c;LR5/A0;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, LR5/n;->initCancellability()V

    .line 39
    .line 40
    .line 41
    new-instance v1, LR5/J0;

    .line 42
    .line 43
    invoke-direct {v1, v0}, LR5/J0;-><init>(LR5/n;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v1}, LR5/A0;->invokeOnCompletion(LH5/l;)LR5/V;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-static {v0, v1}, LR5/p;->disposeOnCancellation(LR5/m;LR5/V;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, LR5/n;->getResult()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-static {}, Lz5/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    if-ne v0, v1, :cond_3

    .line 62
    .line 63
    invoke-static {p1}, LA5/f;->probeCoroutineSuspended(Ly5/c;)V

    .line 64
    .line 65
    .line 66
    :cond_3
    return-object v0
.end method

.method public final b(LR5/k0;Ljava/lang/Object;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, LR5/A0;->getParentHandle$kotlinx_coroutines_core()LR5/s;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0}, LR5/V;->dispose()V

    .line 8
    .line 9
    .line 10
    sget-object v0, LR5/G0;->b:LR5/G0;

    .line 11
    .line 12
    invoke-virtual {p0, v0}, LR5/A0;->setParentHandle$kotlinx_coroutines_core(LR5/s;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    instance-of v0, p2, LR5/A;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    check-cast p2, LR5/A;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    move-object p2, v1

    .line 24
    :goto_0
    if-eqz p2, :cond_2

    .line 25
    .line 26
    iget-object p2, p2, LR5/A;->a:Ljava/lang/Throwable;

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_2
    move-object p2, v1

    .line 30
    :goto_1
    instance-of v0, p1, LR5/v0;

    .line 31
    .line 32
    const-string v2, " for "

    .line 33
    .line 34
    const-string v3, "Exception in completion handler "

    .line 35
    .line 36
    if-eqz v0, :cond_3

    .line 37
    .line 38
    :try_start_0
    move-object v0, p1

    .line 39
    check-cast v0, LR5/v0;

    .line 40
    .line 41
    invoke-virtual {v0, p2}, LR5/C;->invoke(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :catchall_0
    move-exception p2

    .line 46
    new-instance v0, Lkotlinx/coroutines/CompletionHandlerException;

    .line 47
    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-direct {v0, p1, p2}, Lkotlinx/coroutines/CompletionHandlerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, v0}, LR5/A0;->handleOnCompletionException$kotlinx_coroutines_core(Ljava/lang/Throwable;)V

    .line 70
    .line 71
    .line 72
    goto :goto_4

    .line 73
    :cond_3
    invoke-interface {p1}, LR5/k0;->getList()LR5/F0;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    if-eqz p1, :cond_7

    .line 78
    .line 79
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->getNext()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    const-string v4, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }"

    .line 84
    .line 85
    invoke-static {v0, v4}, Lkotlin/jvm/internal/j;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    check-cast v0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 89
    .line 90
    :goto_2
    invoke-static {v0, p1}, Lkotlin/jvm/internal/j;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    if-nez v4, :cond_6

    .line 95
    .line 96
    instance-of v4, v0, LR5/v0;

    .line 97
    .line 98
    if-eqz v4, :cond_5

    .line 99
    .line 100
    move-object v4, v0

    .line 101
    check-cast v4, LR5/v0;

    .line 102
    .line 103
    :try_start_1
    invoke-virtual {v4, p2}, LR5/C;->invoke(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 104
    .line 105
    .line 106
    goto :goto_3

    .line 107
    :catchall_1
    move-exception v5

    .line 108
    if-eqz v1, :cond_4

    .line 109
    .line 110
    invoke-static {v1, v5}, Lu5/a;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 111
    .line 112
    .line 113
    goto :goto_3

    .line 114
    :cond_4
    new-instance v1, Lkotlinx/coroutines/CompletionHandlerException;

    .line 115
    .line 116
    new-instance v6, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    invoke-direct {v1, v4, v5}, Lkotlinx/coroutines/CompletionHandlerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 135
    .line 136
    .line 137
    :cond_5
    :goto_3
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->getNextNode()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    goto :goto_2

    .line 142
    :cond_6
    if-eqz v1, :cond_7

    .line 143
    .line 144
    invoke-virtual {p0, v1}, LR5/A0;->handleOnCompletionException$kotlinx_coroutines_core(Ljava/lang/Throwable;)V

    .line 145
    .line 146
    .line 147
    :cond_7
    :goto_4
    return-void
.end method

.method public final c(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    instance-of v0, p1, Ljava/lang/Throwable;

    .line 6
    .line 7
    :goto_0
    if-eqz v0, :cond_2

    .line 8
    .line 9
    check-cast p1, Ljava/lang/Throwable;

    .line 10
    .line 11
    if-nez p1, :cond_1

    .line 12
    .line 13
    new-instance p1, Lkotlinx/coroutines/JobCancellationException;

    .line 14
    .line 15
    invoke-static {p0}, LR5/A0;->access$cancellationExceptionMessage(LR5/A0;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-direct {p1, v0, v1, p0}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;LR5/q0;)V

    .line 21
    .line 22
    .line 23
    :cond_1
    return-object p1

    .line 24
    :cond_2
    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.ParentJob"

    .line 25
    .line 26
    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    check-cast p1, LR5/I0;

    .line 30
    .line 31
    check-cast p1, LR5/A0;

    .line 32
    .line 33
    invoke-virtual {p1}, LR5/A0;->getChildJobCancellationCause()Ljava/util/concurrent/CancellationException;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    return-object p1
.end method

.method public cancel(Ljava/util/concurrent/CancellationException;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    new-instance p1, Lkotlinx/coroutines/JobCancellationException;

    .line 4
    .line 5
    invoke-static {p0}, LR5/A0;->access$cancellationExceptionMessage(LR5/A0;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-direct {p1, v0, v1, p0}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;LR5/q0;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {p0, p1}, LR5/A0;->cancelInternal(Ljava/lang/Throwable;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final cancelCoroutine(Ljava/lang/Throwable;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LR5/A0;->cancelImpl$kotlinx_coroutines_core(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final cancelImpl$kotlinx_coroutines_core(Ljava/lang/Object;)Z
    .locals 10

    .line 1
    invoke-static {}, LR5/B0;->access$getCOMPLETING_ALREADY$p()LW5/G;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, LR5/A0;->getOnCancelComplete$kotlinx_coroutines_core()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x2

    .line 11
    const/4 v4, 0x0

    .line 12
    const/4 v5, 0x1

    .line 13
    if-eqz v1, :cond_3

    .line 14
    .line 15
    :cond_0
    invoke-virtual {p0}, LR5/A0;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    instance-of v1, v0, LR5/k0;

    .line 20
    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    instance-of v1, v0, LR5/y0;

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    move-object v1, v0

    .line 28
    check-cast v1, LR5/y0;

    .line 29
    .line 30
    invoke-virtual {v1}, LR5/y0;->isCompleting()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    new-instance v1, LR5/A;

    .line 38
    .line 39
    invoke-virtual {p0, p1}, LR5/A0;->c(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    invoke-direct {v1, v6, v4, v3, v2}, LR5/A;-><init>(Ljava/lang/Throwable;ZILkotlin/jvm/internal/g;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v0, v1}, LR5/A0;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-static {}, LR5/B0;->access$getCOMPLETING_RETRY$p()LW5/G;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    if-eq v0, v1, :cond_0

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_2
    :goto_0
    invoke-static {}, LR5/B0;->access$getCOMPLETING_ALREADY$p()LW5/G;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    :goto_1
    sget-object v1, LR5/B0;->b:LW5/G;

    .line 62
    .line 63
    if-ne v0, v1, :cond_3

    .line 64
    .line 65
    return v5

    .line 66
    :cond_3
    invoke-static {}, LR5/B0;->access$getCOMPLETING_ALREADY$p()LW5/G;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    if-ne v0, v1, :cond_13

    .line 71
    .line 72
    move-object v0, v2

    .line 73
    :cond_4
    :goto_2
    invoke-virtual {p0}, LR5/A0;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    instance-of v6, v1, LR5/y0;

    .line 78
    .line 79
    if-eqz v6, :cond_b

    .line 80
    .line 81
    monitor-enter v1

    .line 82
    :try_start_0
    move-object v3, v1

    .line 83
    check-cast v3, LR5/y0;

    .line 84
    .line 85
    invoke-virtual {v3}, LR5/y0;->isSealed()Z

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    if-eqz v3, :cond_5

    .line 90
    .line 91
    invoke-static {}, LR5/B0;->access$getTOO_LATE_TO_CANCEL$p()LW5/G;

    .line 92
    .line 93
    .line 94
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    monitor-exit v1

    .line 96
    :goto_3
    move-object v0, p1

    .line 97
    goto/16 :goto_5

    .line 98
    .line 99
    :catchall_0
    move-exception p1

    .line 100
    goto :goto_4

    .line 101
    :cond_5
    :try_start_1
    move-object v3, v1

    .line 102
    check-cast v3, LR5/y0;

    .line 103
    .line 104
    invoke-virtual {v3}, LR5/y0;->isCancelling()Z

    .line 105
    .line 106
    .line 107
    move-result v3

    .line 108
    if-nez p1, :cond_6

    .line 109
    .line 110
    if-nez v3, :cond_8

    .line 111
    .line 112
    :cond_6
    if-nez v0, :cond_7

    .line 113
    .line 114
    invoke-virtual {p0, p1}, LR5/A0;->c(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    :cond_7
    move-object p1, v1

    .line 119
    check-cast p1, LR5/y0;

    .line 120
    .line 121
    invoke-virtual {p1, v0}, LR5/y0;->addExceptionLocked(Ljava/lang/Throwable;)V

    .line 122
    .line 123
    .line 124
    :cond_8
    move-object p1, v1

    .line 125
    check-cast p1, LR5/y0;

    .line 126
    .line 127
    invoke-virtual {p1}, LR5/y0;->getRootCause()Ljava/lang/Throwable;

    .line 128
    .line 129
    .line 130
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 131
    if-nez v3, :cond_9

    .line 132
    .line 133
    move-object v2, p1

    .line 134
    :cond_9
    monitor-exit v1

    .line 135
    if-eqz v2, :cond_a

    .line 136
    .line 137
    check-cast v1, LR5/y0;

    .line 138
    .line 139
    invoke-virtual {v1}, LR5/y0;->getList()LR5/F0;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    invoke-virtual {p0, p1, v2}, LR5/A0;->h(LR5/F0;Ljava/lang/Throwable;)V

    .line 144
    .line 145
    .line 146
    :cond_a
    invoke-static {}, LR5/B0;->access$getCOMPLETING_ALREADY$p()LW5/G;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    goto :goto_3

    .line 151
    :goto_4
    monitor-exit v1

    .line 152
    throw p1

    .line 153
    :cond_b
    instance-of v6, v1, LR5/k0;

    .line 154
    .line 155
    if-eqz v6, :cond_12

    .line 156
    .line 157
    if-nez v0, :cond_c

    .line 158
    .line 159
    invoke-virtual {p0, p1}, LR5/A0;->c(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    :cond_c
    move-object v6, v1

    .line 164
    check-cast v6, LR5/k0;

    .line 165
    .line 166
    invoke-interface {v6}, LR5/k0;->isActive()Z

    .line 167
    .line 168
    .line 169
    move-result v7

    .line 170
    if-eqz v7, :cond_10

    .line 171
    .line 172
    invoke-virtual {p0, v6}, LR5/A0;->f(LR5/k0;)LR5/F0;

    .line 173
    .line 174
    .line 175
    move-result-object v7

    .line 176
    if-nez v7, :cond_d

    .line 177
    .line 178
    goto :goto_2

    .line 179
    :cond_d
    new-instance v8, LR5/y0;

    .line 180
    .line 181
    invoke-direct {v8, v7, v4, v0}, LR5/y0;-><init>(LR5/F0;ZLjava/lang/Throwable;)V

    .line 182
    .line 183
    .line 184
    :cond_e
    sget-object v1, LR5/A0;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 185
    .line 186
    invoke-virtual {v1, p0, v6, v8}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    move-result v9

    .line 190
    if-eqz v9, :cond_f

    .line 191
    .line 192
    invoke-virtual {p0, v7, v0}, LR5/A0;->h(LR5/F0;Ljava/lang/Throwable;)V

    .line 193
    .line 194
    .line 195
    invoke-static {}, LR5/B0;->access$getCOMPLETING_ALREADY$p()LW5/G;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    goto :goto_3

    .line 200
    :cond_f
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    if-eq v1, v6, :cond_e

    .line 205
    .line 206
    goto/16 :goto_2

    .line 207
    .line 208
    :cond_10
    new-instance v6, LR5/A;

    .line 209
    .line 210
    invoke-direct {v6, v0, v4, v3, v2}, LR5/A;-><init>(Ljava/lang/Throwable;ZILkotlin/jvm/internal/g;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {p0, v1, v6}, LR5/A0;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v6

    .line 217
    invoke-static {}, LR5/B0;->access$getCOMPLETING_ALREADY$p()LW5/G;

    .line 218
    .line 219
    .line 220
    move-result-object v7

    .line 221
    if-eq v6, v7, :cond_11

    .line 222
    .line 223
    invoke-static {}, LR5/B0;->access$getCOMPLETING_RETRY$p()LW5/G;

    .line 224
    .line 225
    .line 226
    move-result-object v1

    .line 227
    if-eq v6, v1, :cond_4

    .line 228
    .line 229
    move-object v0, v6

    .line 230
    goto :goto_5

    .line 231
    :cond_11
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 232
    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    .line 234
    .line 235
    const-string v2, "Cannot happen in "

    .line 236
    .line 237
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    throw p1

    .line 255
    :cond_12
    invoke-static {}, LR5/B0;->access$getTOO_LATE_TO_CANCEL$p()LW5/G;

    .line 256
    .line 257
    .line 258
    move-result-object p1

    .line 259
    goto/16 :goto_3

    .line 260
    .line 261
    :cond_13
    :goto_5
    invoke-static {}, LR5/B0;->access$getCOMPLETING_ALREADY$p()LW5/G;

    .line 262
    .line 263
    .line 264
    move-result-object p1

    .line 265
    if-ne v0, p1, :cond_14

    .line 266
    .line 267
    return v5

    .line 268
    :cond_14
    sget-object p1, LR5/B0;->b:LW5/G;

    .line 269
    .line 270
    if-ne v0, p1, :cond_15

    .line 271
    .line 272
    return v5

    .line 273
    :cond_15
    invoke-static {}, LR5/B0;->access$getTOO_LATE_TO_CANCEL$p()LW5/G;

    .line 274
    .line 275
    .line 276
    move-result-object p1

    .line 277
    if-ne v0, p1, :cond_16

    .line 278
    .line 279
    return v4

    .line 280
    :cond_16
    invoke-virtual {p0, v0}, LR5/A0;->afterCompletion(Ljava/lang/Object;)V

    .line 281
    .line 282
    .line 283
    return v5
.end method

.method public cancelInternal(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LR5/A0;->cancelImpl$kotlinx_coroutines_core(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public cancellationExceptionMessage()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Job was cancelled"

    .line 2
    .line 3
    return-object v0
.end method

.method public childCancelled(Ljava/lang/Throwable;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-virtual {p0, p1}, LR5/A0;->cancelImpl$kotlinx_coroutines_core(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, LR5/A0;->getHandlesException$kotlinx_coroutines_core()Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    return v1

    .line 20
    :cond_1
    const/4 p1, 0x0

    .line 21
    return p1
.end method

.method public final d(LR5/y0;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    instance-of v0, p2, LR5/A;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move-object v0, p2

    .line 7
    check-cast v0, LR5/A;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move-object v0, v1

    .line 11
    :goto_0
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v0, v0, LR5/A;->a:Ljava/lang/Throwable;

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_1
    move-object v0, v1

    .line 17
    :goto_1
    monitor-enter p1

    .line 18
    :try_start_0
    invoke-virtual {p1}, LR5/y0;->isCancelling()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    invoke-virtual {p1, v0}, LR5/y0;->sealLocked(Ljava/lang/Throwable;)Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {p0, p1, v3}, LR5/A0;->e(LR5/y0;Ljava/util/List;)Ljava/lang/Throwable;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    if-eqz v4, :cond_4

    .line 31
    .line 32
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    const/4 v6, 0x1

    .line 37
    if-gt v5, v6, :cond_2

    .line 38
    .line 39
    goto :goto_3

    .line 40
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    new-instance v6, Ljava/util/IdentityHashMap;

    .line 45
    .line 46
    invoke-direct {v6, v5}, Ljava/util/IdentityHashMap;-><init>(I)V

    .line 47
    .line 48
    .line 49
    invoke-static {v6}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    .line 59
    .line 60
    move-result v6

    .line 61
    if-eqz v6, :cond_4

    .line 62
    .line 63
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    check-cast v6, Ljava/lang/Throwable;

    .line 68
    .line 69
    if-eq v6, v4, :cond_3

    .line 70
    .line 71
    if-eq v6, v4, :cond_3

    .line 72
    .line 73
    instance-of v7, v6, Ljava/util/concurrent/CancellationException;

    .line 74
    .line 75
    if-nez v7, :cond_3

    .line 76
    .line 77
    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v7

    .line 81
    if-eqz v7, :cond_3

    .line 82
    .line 83
    invoke-static {v4, v6}, Lu5/a;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_4
    :goto_3
    monitor-exit p1

    .line 88
    if-nez v4, :cond_5

    .line 89
    .line 90
    goto :goto_4

    .line 91
    :cond_5
    if-ne v4, v0, :cond_6

    .line 92
    .line 93
    goto :goto_4

    .line 94
    :cond_6
    new-instance p2, LR5/A;

    .line 95
    .line 96
    const/4 v0, 0x0

    .line 97
    const/4 v3, 0x2

    .line 98
    invoke-direct {p2, v4, v0, v3, v1}, LR5/A;-><init>(Ljava/lang/Throwable;ZILkotlin/jvm/internal/g;)V

    .line 99
    .line 100
    .line 101
    :goto_4
    if-eqz v4, :cond_8

    .line 102
    .line 103
    invoke-virtual {p0, v4}, LR5/A0;->a(Ljava/lang/Throwable;)Z

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    if-nez v0, :cond_7

    .line 108
    .line 109
    invoke-virtual {p0, v4}, LR5/A0;->handleJobException(Ljava/lang/Throwable;)Z

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    if-eqz v0, :cond_8

    .line 114
    .line 115
    :cond_7
    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.CompletedExceptionally"

    .line 116
    .line 117
    invoke-static {p2, v0}, Lkotlin/jvm/internal/j;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    move-object v0, p2

    .line 121
    check-cast v0, LR5/A;

    .line 122
    .line 123
    invoke-virtual {v0}, LR5/A;->makeHandled()Z

    .line 124
    .line 125
    .line 126
    :cond_8
    if-nez v2, :cond_9

    .line 127
    .line 128
    invoke-virtual {p0, v4}, LR5/A0;->onCancelling(Ljava/lang/Throwable;)V

    .line 129
    .line 130
    .line 131
    :cond_9
    invoke-virtual {p0, p2}, LR5/A0;->onCompletionInternal(Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    sget-object v0, LR5/A0;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 135
    .line 136
    invoke-static {p2}, LR5/B0;->boxIncomplete(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    :cond_a
    invoke-virtual {v0, p0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v2

    .line 144
    if-eqz v2, :cond_b

    .line 145
    .line 146
    goto :goto_5

    .line 147
    :cond_b
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    if-eq v2, p1, :cond_a

    .line 152
    .line 153
    :goto_5
    invoke-virtual {p0, p1, p2}, LR5/A0;->b(LR5/k0;Ljava/lang/Object;)V

    .line 154
    .line 155
    .line 156
    return-object p2

    .line 157
    :catchall_0
    move-exception p2

    .line 158
    monitor-exit p1

    .line 159
    throw p2
.end method

.method public final e(LR5/y0;Ljava/util/List;)Ljava/lang/Throwable;
    .locals 4

    .line 1
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    invoke-virtual {p1}, LR5/y0;->isCancelling()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    new-instance p1, Lkotlinx/coroutines/JobCancellationException;

    .line 15
    .line 16
    invoke-static {p0}, LR5/A0;->access$cancellationExceptionMessage(LR5/A0;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-direct {p1, p2, v1, p0}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;LR5/q0;)V

    .line 21
    .line 22
    .line 23
    return-object p1

    .line 24
    :cond_0
    return-object v1

    .line 25
    :cond_1
    move-object p1, p2

    .line 26
    check-cast p1, Ljava/lang/Iterable;

    .line 27
    .line 28
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_3

    .line 37
    .line 38
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    move-object v3, v2

    .line 43
    check-cast v3, Ljava/lang/Throwable;

    .line 44
    .line 45
    instance-of v3, v3, Ljava/util/concurrent/CancellationException;

    .line 46
    .line 47
    if-nez v3, :cond_2

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_3
    move-object v2, v1

    .line 51
    :goto_0
    check-cast v2, Ljava/lang/Throwable;

    .line 52
    .line 53
    if-eqz v2, :cond_4

    .line 54
    .line 55
    return-object v2

    .line 56
    :cond_4
    const/4 v0, 0x0

    .line 57
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    check-cast p2, Ljava/lang/Throwable;

    .line 62
    .line 63
    instance-of v0, p2, Lkotlinx/coroutines/TimeoutCancellationException;

    .line 64
    .line 65
    if-eqz v0, :cond_7

    .line 66
    .line 67
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_6

    .line 76
    .line 77
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    move-object v2, v0

    .line 82
    check-cast v2, Ljava/lang/Throwable;

    .line 83
    .line 84
    if-eq v2, p2, :cond_5

    .line 85
    .line 86
    instance-of v2, v2, Lkotlinx/coroutines/TimeoutCancellationException;

    .line 87
    .line 88
    if-eqz v2, :cond_5

    .line 89
    .line 90
    move-object v1, v0

    .line 91
    :cond_6
    check-cast v1, Ljava/lang/Throwable;

    .line 92
    .line 93
    if-eqz v1, :cond_7

    .line 94
    .line 95
    return-object v1

    .line 96
    :cond_7
    return-object p2
.end method

.method public final f(LR5/k0;)LR5/F0;
    .locals 3

    .line 1
    invoke-interface {p1}, LR5/k0;->getList()LR5/F0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_4

    .line 6
    .line 7
    instance-of v0, p1, LR5/X;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance p1, LR5/F0;

    .line 12
    .line 13
    invoke-direct {p1}, LR5/F0;-><init>()V

    .line 14
    .line 15
    .line 16
    return-object p1

    .line 17
    :cond_0
    instance-of v0, p1, LR5/v0;

    .line 18
    .line 19
    if-eqz v0, :cond_3

    .line 20
    .line 21
    move-object v0, p1

    .line 22
    check-cast v0, LR5/v0;

    .line 23
    .line 24
    new-instance p1, LR5/F0;

    .line 25
    .line 26
    invoke-direct {p1}, LR5/F0;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p1}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->addOneIfEmpty(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)Z

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->getNextNode()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    :cond_1
    sget-object p1, LR5/A0;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 37
    .line 38
    invoke-virtual {p1, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_2

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    if-eq p1, v0, :cond_1

    .line 50
    .line 51
    :goto_0
    const/4 p1, 0x0

    .line 52
    return-object p1

    .line 53
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 54
    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string v2, "State should have list: "

    .line 58
    .line 59
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw v0

    .line 77
    :cond_4
    return-object v0
.end method

.method public fold(Ljava/lang/Object;LH5/p;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "LH5/p;",
            ")TR;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, LR5/p0;->fold(LR5/q0;Ljava/lang/Object;LH5/p;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public get(Ly5/j;)Ly5/i;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ly5/i;",
            ">(",
            "Ly5/j;",
            ")TE;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, LR5/p0;->get(LR5/q0;Ly5/j;)Ly5/i;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final getCancellationException()Ljava/util/concurrent/CancellationException;
    .locals 4

    .line 1
    invoke-virtual {p0}, LR5/A0;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, LR5/y0;

    .line 6
    .line 7
    const-string v2, "Job is still new or active: "

    .line 8
    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    check-cast v0, LR5/y0;

    .line 12
    .line 13
    invoke-virtual {v0}, LR5/y0;->getRootCause()Ljava/lang/Throwable;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-static {p0}, LR5/K;->getClassSimpleName(Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v3, " is cancelling"

    .line 32
    .line 33
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {p0, v0, v1}, LR5/A0;->toCancellationException(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/util/concurrent/CancellationException;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    if-eqz v0, :cond_0

    .line 45
    .line 46
    return-object v0

    .line 47
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 48
    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw v0

    .line 69
    :cond_1
    instance-of v1, v0, LR5/k0;

    .line 70
    .line 71
    if-nez v1, :cond_3

    .line 72
    .line 73
    instance-of v1, v0, LR5/A;

    .line 74
    .line 75
    const/4 v2, 0x0

    .line 76
    if-eqz v1, :cond_2

    .line 77
    .line 78
    check-cast v0, LR5/A;

    .line 79
    .line 80
    iget-object v0, v0, LR5/A;->a:Ljava/lang/Throwable;

    .line 81
    .line 82
    const/4 v1, 0x1

    .line 83
    invoke-static {p0, v0, v2, v1, v2}, LR5/A0;->toCancellationException$default(LR5/A0;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/concurrent/CancellationException;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    return-object v0

    .line 88
    :cond_2
    new-instance v0, Lkotlinx/coroutines/JobCancellationException;

    .line 89
    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .line 94
    .line 95
    invoke-static {p0}, LR5/K;->getClassSimpleName(Ljava/lang/Object;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string v3, " has completed normally"

    .line 103
    .line 104
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-direct {v0, v1, v2, p0}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;LR5/q0;)V

    .line 112
    .line 113
    .line 114
    return-object v0

    .line 115
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 116
    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    throw v0
.end method

.method public getChildJobCancellationCause()Ljava/util/concurrent/CancellationException;
    .locals 4

    .line 1
    invoke-virtual {p0}, LR5/A0;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, LR5/y0;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    move-object v1, v0

    .line 11
    check-cast v1, LR5/y0;

    .line 12
    .line 13
    invoke-virtual {v1}, LR5/y0;->getRootCause()Ljava/lang/Throwable;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    instance-of v1, v0, LR5/A;

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    move-object v1, v0

    .line 23
    check-cast v1, LR5/A;

    .line 24
    .line 25
    iget-object v1, v1, LR5/A;->a:Ljava/lang/Throwable;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    instance-of v1, v0, LR5/k0;

    .line 29
    .line 30
    if-nez v1, :cond_4

    .line 31
    .line 32
    move-object v1, v2

    .line 33
    :goto_0
    instance-of v3, v1, Ljava/util/concurrent/CancellationException;

    .line 34
    .line 35
    if-eqz v3, :cond_2

    .line 36
    .line 37
    move-object v2, v1

    .line 38
    check-cast v2, Ljava/util/concurrent/CancellationException;

    .line 39
    .line 40
    :cond_2
    if-nez v2, :cond_3

    .line 41
    .line 42
    new-instance v2, Lkotlinx/coroutines/JobCancellationException;

    .line 43
    .line 44
    invoke-static {v0}, LR5/A0;->j(Ljava/lang/Object;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    const-string v3, "Parent job is "

    .line 49
    .line 50
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-direct {v2, v0, v1, p0}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;LR5/q0;)V

    .line 55
    .line 56
    .line 57
    :cond_3
    return-object v2

    .line 58
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 59
    .line 60
    new-instance v2, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    const-string v3, "Cannot be cancelling child in this state: "

    .line 63
    .line 64
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    throw v1
.end method

.method public final getCompletedInternal$kotlinx_coroutines_core()Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p0}, LR5/A0;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, LR5/k0;

    .line 6
    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    instance-of v1, v0, LR5/A;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    invoke-static {v0}, LR5/B0;->unboxState(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0

    .line 18
    :cond_0
    check-cast v0, LR5/A;

    .line 19
    .line 20
    iget-object v0, v0, LR5/A;->a:Ljava/lang/Throwable;

    .line 21
    .line 22
    throw v0

    .line 23
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 24
    .line 25
    const-string v1, "This job has not completed yet"

    .line 26
    .line 27
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw v0
.end method

.method public getHandlesException$kotlinx_coroutines_core()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public final getKey()Ly5/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ly5/j;"
        }
    .end annotation

    .line 1
    sget-object v0, LR5/F;->e:LR5/F;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOnCancelComplete$kotlinx_coroutines_core()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public getParent()LR5/q0;
    .locals 1

    .line 1
    invoke-virtual {p0}, LR5/A0;->getParentHandle$kotlinx_coroutines_core()LR5/s;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0}, LR5/s;->getParent()LR5/q0;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    return-object v0
.end method

.method public final getParentHandle$kotlinx_coroutines_core()LR5/s;
    .locals 1

    .line 1
    sget-object v0, LR5/A0;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, LR5/s;

    .line 8
    .line 9
    return-object v0
.end method

.method public final getState$kotlinx_coroutines_core()Ljava/lang/Object;
    .locals 2

    .line 1
    :goto_0
    sget-object v0, LR5/A0;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    instance-of v1, v0, LW5/z;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    check-cast v0, LW5/z;

    .line 13
    .line 14
    invoke-virtual {v0, p0}, LW5/z;->perform(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    goto :goto_0
.end method

.method public final h(LR5/F0;Ljava/lang/Throwable;)V
    .locals 6

    .line 1
    invoke-virtual {p0, p2}, LR5/A0;->onCancelling(Ljava/lang/Throwable;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->getNext()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }"

    .line 9
    .line 10
    invoke-static {v0, v1}, Lkotlin/jvm/internal/j;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    check-cast v0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    :goto_0
    invoke-static {v0, p1}, Lkotlin/jvm/internal/j;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-nez v2, :cond_2

    .line 21
    .line 22
    instance-of v2, v0, LR5/r0;

    .line 23
    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    move-object v2, v0

    .line 27
    check-cast v2, LR5/v0;

    .line 28
    .line 29
    :try_start_0
    invoke-virtual {v2, p2}, LR5/C;->invoke(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    .line 32
    goto :goto_1

    .line 33
    :catchall_0
    move-exception v3

    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    invoke-static {v1, v3}, Lu5/a;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_0
    new-instance v1, Lkotlinx/coroutines/CompletionHandlerException;

    .line 41
    .line 42
    new-instance v4, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string v5, "Exception in completion handler "

    .line 45
    .line 46
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v2, " for "

    .line 53
    .line 54
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-direct {v1, v2, v3}, Lkotlinx/coroutines/CompletionHandlerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    .line 66
    .line 67
    :cond_1
    :goto_1
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->getNextNode()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    goto :goto_0

    .line 72
    :cond_2
    if-eqz v1, :cond_3

    .line 73
    .line 74
    invoke-virtual {p0, v1}, LR5/A0;->handleOnCompletionException$kotlinx_coroutines_core(Ljava/lang/Throwable;)V

    .line 75
    .line 76
    .line 77
    :cond_3
    invoke-virtual {p0, p2}, LR5/A0;->a(Ljava/lang/Throwable;)Z

    .line 78
    .line 79
    .line 80
    return-void
.end method

.method public handleJobException(Ljava/lang/Throwable;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public handleOnCompletionException$kotlinx_coroutines_core(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    throw p1
.end method

.method public final i(Ljava/lang/Object;)I
    .locals 5

    .line 1
    instance-of v0, p1, LR5/X;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, -0x1

    .line 5
    sget-object v3, LR5/A0;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 6
    .line 7
    const/4 v4, 0x0

    .line 8
    if-eqz v0, :cond_3

    .line 9
    .line 10
    move-object v0, p1

    .line 11
    check-cast v0, LR5/X;

    .line 12
    .line 13
    invoke-virtual {v0}, LR5/X;->isActive()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    return v4

    .line 20
    :cond_0
    invoke-static {}, LR5/B0;->access$getEMPTY_ACTIVE$p()LR5/X;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    :cond_1
    invoke-virtual {v3, p0, p1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    if-eqz v4, :cond_2

    .line 29
    .line 30
    invoke-virtual {p0}, LR5/A0;->onStart()V

    .line 31
    .line 32
    .line 33
    return v1

    .line 34
    :cond_2
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    if-eq v4, p1, :cond_1

    .line 39
    .line 40
    return v2

    .line 41
    :cond_3
    instance-of v0, p1, LR5/j0;

    .line 42
    .line 43
    if-eqz v0, :cond_6

    .line 44
    .line 45
    move-object v0, p1

    .line 46
    check-cast v0, LR5/j0;

    .line 47
    .line 48
    invoke-virtual {v0}, LR5/j0;->getList()LR5/F0;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    :cond_4
    invoke-virtual {v3, p0, p1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-eqz v4, :cond_5

    .line 57
    .line 58
    invoke-virtual {p0}, LR5/A0;->onStart()V

    .line 59
    .line 60
    .line 61
    return v1

    .line 62
    :cond_5
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    if-eq v4, p1, :cond_4

    .line 67
    .line 68
    return v2

    .line 69
    :cond_6
    return v4
.end method

.method public final initParentJob(LR5/q0;)V
    .locals 2

    .line 1
    sget-object v0, LR5/G0;->b:LR5/G0;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, v0}, LR5/A0;->setParentHandle$kotlinx_coroutines_core(LR5/s;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    check-cast p1, LR5/A0;

    .line 10
    .line 11
    invoke-virtual {p1}, LR5/A0;->start()Z

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, p0}, LR5/A0;->attachChild(LR5/u;)LR5/s;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p0, p1}, LR5/A0;->setParentHandle$kotlinx_coroutines_core(LR5/s;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, LR5/A0;->isCompleted()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    invoke-interface {p1}, LR5/V;->dispose()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v0}, LR5/A0;->setParentHandle$kotlinx_coroutines_core(LR5/s;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    return-void
.end method

.method public final invokeOnCompletion(LH5/l;)LR5/V;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LH5/l;",
            ")",
            "LR5/V;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, v1, p1}, LR5/A0;->invokeOnCompletion(ZZLH5/l;)LR5/V;

    move-result-object p1

    return-object p1
.end method

.method public final invokeOnCompletion(ZZLH5/l;)LR5/V;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "LH5/l;",
            ")",
            "LR5/V;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 2
    instance-of v1, p3, LR5/r0;

    if-eqz v1, :cond_0

    move-object v1, p3

    check-cast v1, LR5/r0;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_4

    .line 3
    new-instance v1, LR5/n0;

    invoke-direct {v1, p3}, LR5/n0;-><init>(LH5/l;)V

    goto :goto_2

    .line 4
    :cond_1
    instance-of v1, p3, LR5/v0;

    if-eqz v1, :cond_2

    move-object v1, p3

    check-cast v1, LR5/v0;

    goto :goto_1

    :cond_2
    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_3

    goto :goto_2

    .line 5
    :cond_3
    new-instance v1, LR5/o0;

    invoke-direct {v1, p3}, LR5/o0;-><init>(LH5/l;)V

    .line 6
    :cond_4
    :goto_2
    invoke-virtual {v1, p0}, LR5/v0;->setJob(LR5/A0;)V

    .line 7
    :cond_5
    :goto_3
    invoke-virtual {p0}, LR5/A0;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    move-result-object v2

    .line 8
    instance-of v3, v2, LR5/X;

    if-eqz v3, :cond_c

    .line 9
    move-object v3, v2

    check-cast v3, LR5/X;

    invoke-virtual {v3}, LR5/X;->isActive()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 10
    sget-object v4, LR5/A0;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 11
    :cond_6
    invoke-virtual {v4, p0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    goto/16 :goto_b

    :cond_7
    invoke-virtual {v4, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v2, :cond_6

    goto :goto_3

    .line 12
    :cond_8
    new-instance v2, LR5/F0;

    invoke-direct {v2}, LR5/F0;-><init>()V

    .line 13
    invoke-virtual {v3}, LR5/X;->isActive()Z

    move-result v4

    if-eqz v4, :cond_9

    move-object v4, v2

    goto :goto_4

    :cond_9
    new-instance v4, LR5/j0;

    invoke-direct {v4, v2}, LR5/j0;-><init>(LR5/F0;)V

    .line 14
    :cond_a
    :goto_4
    sget-object v2, LR5/A0;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    goto :goto_3

    :cond_b
    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, v3, :cond_a

    goto :goto_3

    .line 15
    :cond_c
    instance-of v3, v2, LR5/k0;

    if-eqz v3, :cond_1a

    .line 16
    move-object v3, v2

    check-cast v3, LR5/k0;

    invoke-interface {v3}, LR5/k0;->getList()LR5/F0;

    move-result-object v3

    if-nez v3, :cond_f

    .line 17
    const-string v3, "null cannot be cast to non-null type kotlinx.coroutines.JobNode"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/j;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v2

    check-cast v4, LR5/v0;

    .line 18
    new-instance v2, LR5/F0;

    invoke-direct {v2}, LR5/F0;-><init>()V

    invoke-virtual {v4, v2}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->addOneIfEmpty(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)Z

    .line 19
    invoke-virtual {v4}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->getNextNode()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    move-result-object v5

    .line 20
    :cond_d
    sget-object v2, LR5/A0;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    goto :goto_3

    :cond_e
    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, v4, :cond_d

    goto :goto_3

    .line 21
    :cond_f
    sget-object v4, LR5/G0;->b:LR5/G0;

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz p1, :cond_16

    .line 22
    instance-of v7, v2, LR5/y0;

    if-eqz v7, :cond_16

    .line 23
    monitor-enter v2

    .line 24
    :try_start_0
    move-object v7, v2

    check-cast v7, LR5/y0;

    invoke-virtual {v7}, LR5/y0;->getRootCause()Ljava/lang/Throwable;

    move-result-object v7

    if-eqz v7, :cond_10

    .line 25
    instance-of v8, p3, LR5/t;

    if-eqz v8, :cond_15

    .line 26
    move-object v8, v2

    check-cast v8, LR5/y0;

    invoke-virtual {v8}, LR5/y0;->isCompleting()Z

    move-result v8

    if-nez v8, :cond_15

    goto :goto_5

    :catchall_0
    move-exception p1

    goto :goto_8

    .line 27
    :cond_10
    :goto_5
    move-object v4, v2

    check-cast v4, LR5/k0;

    .line 28
    new-instance v8, LR5/z0;

    invoke-direct {v8, v1, p0, v4}, LR5/z0;-><init>(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;LR5/A0;Ljava/lang/Object;)V

    .line 29
    :goto_6
    invoke-virtual {v3}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->getPrevNode()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    move-result-object v4

    .line 30
    invoke-virtual {v4, v1, v3, v8}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->tryCondAddNext(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode;LW5/q;)I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v4, v6, :cond_12

    if-eq v4, v5, :cond_11

    goto :goto_6

    :cond_11
    const/4 v4, 0x0

    goto :goto_7

    :cond_12
    move v4, v6

    :goto_7
    if-nez v4, :cond_13

    .line 31
    monitor-exit v2

    goto/16 :goto_3

    :cond_13
    if-nez v7, :cond_14

    .line 32
    monitor-exit v2

    return-object v1

    :cond_14
    move-object v4, v1

    .line 33
    :cond_15
    monitor-exit v2

    goto :goto_9

    :goto_8
    monitor-exit v2

    throw p1

    :cond_16
    move-object v7, v0

    :goto_9
    if-eqz v7, :cond_18

    if-eqz p2, :cond_17

    .line 34
    invoke-interface {p3, v7}, LH5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_17
    return-object v4

    .line 35
    :cond_18
    check-cast v2, LR5/k0;

    .line 36
    new-instance v4, LR5/z0;

    invoke-direct {v4, v1, p0, v2}, LR5/z0;-><init>(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;LR5/A0;Ljava/lang/Object;)V

    .line 37
    :goto_a
    invoke-virtual {v3}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->getPrevNode()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    move-result-object v2

    .line 38
    invoke-virtual {v2, v1, v3, v4}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->tryCondAddNext(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode;LW5/q;)I

    move-result v2

    if-eq v2, v6, :cond_19

    if-eq v2, v5, :cond_5

    goto :goto_a

    :cond_19
    :goto_b
    return-object v1

    :cond_1a
    if-eqz p2, :cond_1d

    .line 39
    instance-of p1, v2, LR5/A;

    if-eqz p1, :cond_1b

    check-cast v2, LR5/A;

    goto :goto_c

    :cond_1b
    move-object v2, v0

    :goto_c
    if-eqz v2, :cond_1c

    iget-object v0, v2, LR5/A;->a:Ljava/lang/Throwable;

    .line 40
    :cond_1c
    invoke-interface {p3, v0}, LH5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    :cond_1d
    sget-object p1, LR5/G0;->b:LR5/G0;

    return-object p1
.end method

.method public isActive()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, LR5/A0;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, LR5/k0;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, LR5/k0;

    .line 10
    .line 11
    invoke-interface {v0}, LR5/k0;->isActive()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    return v0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    return v0
.end method

.method public final isCancelled()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, LR5/A0;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, LR5/A;

    .line 6
    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    instance-of v1, v0, LR5/y0;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    check-cast v0, LR5/y0;

    .line 14
    .line 15
    invoke-virtual {v0}, LR5/y0;->isCancelling()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    return v0

    .line 24
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 25
    return v0
.end method

.method public final isCompleted()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, LR5/A0;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v0, v0, LR5/k0;

    .line 6
    .line 7
    xor-int/lit8 v0, v0, 0x1

    .line 8
    .line 9
    return v0
.end method

.method public isScopedCoroutine()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    instance-of v0, p1, LR5/k0;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, LR5/B0;->access$getCOMPLETING_ALREADY$p()LW5/G;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_0
    instance-of v0, p1, LR5/X;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    instance-of v0, p1, LR5/v0;

    .line 16
    .line 17
    if-eqz v0, :cond_4

    .line 18
    .line 19
    :cond_1
    instance-of v0, p1, LR5/t;

    .line 20
    .line 21
    if-nez v0, :cond_4

    .line 22
    .line 23
    instance-of v0, p2, LR5/A;

    .line 24
    .line 25
    if-nez v0, :cond_4

    .line 26
    .line 27
    move-object v0, p1

    .line 28
    check-cast v0, LR5/k0;

    .line 29
    .line 30
    invoke-static {p2}, LR5/B0;->boxIncomplete(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    :cond_2
    sget-object p1, LR5/A0;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 35
    .line 36
    invoke-virtual {p1, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_3

    .line 41
    .line 42
    invoke-virtual {p0, v1}, LR5/A0;->onCancelling(Ljava/lang/Throwable;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, p2}, LR5/A0;->onCompletionInternal(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v0, p2}, LR5/A0;->b(LR5/k0;Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    return-object p2

    .line 52
    :cond_3
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    if-eq p1, v0, :cond_2

    .line 57
    .line 58
    invoke-static {}, LR5/B0;->access$getCOMPLETING_RETRY$p()LW5/G;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    return-object p1

    .line 63
    :cond_4
    check-cast p1, LR5/k0;

    .line 64
    .line 65
    invoke-virtual {p0, p1}, LR5/A0;->f(LR5/k0;)LR5/F0;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    if-nez v0, :cond_5

    .line 70
    .line 71
    invoke-static {}, LR5/B0;->access$getCOMPLETING_RETRY$p()LW5/G;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    return-object p1

    .line 76
    :cond_5
    instance-of v2, p1, LR5/y0;

    .line 77
    .line 78
    if-eqz v2, :cond_6

    .line 79
    .line 80
    move-object v2, p1

    .line 81
    check-cast v2, LR5/y0;

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_6
    move-object v2, v1

    .line 85
    :goto_0
    if-nez v2, :cond_7

    .line 86
    .line 87
    new-instance v2, LR5/y0;

    .line 88
    .line 89
    const/4 v3, 0x0

    .line 90
    invoke-direct {v2, v0, v3, v1}, LR5/y0;-><init>(LR5/F0;ZLjava/lang/Throwable;)V

    .line 91
    .line 92
    .line 93
    :cond_7
    new-instance v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 94
    .line 95
    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 96
    .line 97
    .line 98
    monitor-enter v2

    .line 99
    :try_start_0
    invoke-virtual {v2}, LR5/y0;->isCompleting()Z

    .line 100
    .line 101
    .line 102
    move-result v4

    .line 103
    if-eqz v4, :cond_8

    .line 104
    .line 105
    invoke-static {}, LR5/B0;->access$getCOMPLETING_ALREADY$p()LW5/G;

    .line 106
    .line 107
    .line 108
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    monitor-exit v2

    .line 110
    return-object p1

    .line 111
    :catchall_0
    move-exception v0

    .line 112
    move-object p1, v0

    .line 113
    goto/16 :goto_6

    .line 114
    .line 115
    :cond_8
    const/4 v4, 0x1

    .line 116
    :try_start_1
    invoke-virtual {v2, v4}, LR5/y0;->setCompleting(Z)V

    .line 117
    .line 118
    .line 119
    if-eq v2, p1, :cond_b

    .line 120
    .line 121
    sget-object v4, LR5/A0;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 122
    .line 123
    :cond_9
    invoke-virtual {v4, p0, p1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v5

    .line 127
    if-eqz v5, :cond_a

    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_a
    invoke-virtual {v4, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v5

    .line 134
    if-eq v5, p1, :cond_9

    .line 135
    .line 136
    invoke-static {}, LR5/B0;->access$getCOMPLETING_RETRY$p()LW5/G;

    .line 137
    .line 138
    .line 139
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    monitor-exit v2

    .line 141
    return-object p1

    .line 142
    :cond_b
    :goto_1
    :try_start_2
    invoke-virtual {v2}, LR5/y0;->isCancelling()Z

    .line 143
    .line 144
    .line 145
    move-result v4

    .line 146
    instance-of v5, p2, LR5/A;

    .line 147
    .line 148
    if-eqz v5, :cond_c

    .line 149
    .line 150
    move-object v5, p2

    .line 151
    check-cast v5, LR5/A;

    .line 152
    .line 153
    goto :goto_2

    .line 154
    :cond_c
    move-object v5, v1

    .line 155
    :goto_2
    if-eqz v5, :cond_d

    .line 156
    .line 157
    iget-object v5, v5, LR5/A;->a:Ljava/lang/Throwable;

    .line 158
    .line 159
    invoke-virtual {v2, v5}, LR5/y0;->addExceptionLocked(Ljava/lang/Throwable;)V

    .line 160
    .line 161
    .line 162
    :cond_d
    invoke-virtual {v2}, LR5/y0;->getRootCause()Ljava/lang/Throwable;

    .line 163
    .line 164
    .line 165
    move-result-object v5

    .line 166
    if-nez v4, :cond_e

    .line 167
    .line 168
    goto :goto_3

    .line 169
    :cond_e
    move-object v5, v1

    .line 170
    :goto_3
    iput-object v5, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 171
    .line 172
    monitor-exit v2

    .line 173
    if-eqz v5, :cond_f

    .line 174
    .line 175
    invoke-virtual {p0, v0, v5}, LR5/A0;->h(LR5/F0;Ljava/lang/Throwable;)V

    .line 176
    .line 177
    .line 178
    :cond_f
    instance-of v0, p1, LR5/t;

    .line 179
    .line 180
    if-eqz v0, :cond_10

    .line 181
    .line 182
    move-object v0, p1

    .line 183
    check-cast v0, LR5/t;

    .line 184
    .line 185
    goto :goto_4

    .line 186
    :cond_10
    move-object v0, v1

    .line 187
    :goto_4
    if-nez v0, :cond_11

    .line 188
    .line 189
    invoke-interface {p1}, LR5/k0;->getList()LR5/F0;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    if-eqz p1, :cond_12

    .line 194
    .line 195
    invoke-static {p1}, LR5/A0;->g(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)LR5/t;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    goto :goto_5

    .line 200
    :cond_11
    move-object v1, v0

    .line 201
    :cond_12
    :goto_5
    if-eqz v1, :cond_15

    .line 202
    .line 203
    :cond_13
    new-instance v6, LR5/x0;

    .line 204
    .line 205
    invoke-direct {v6, p0, v2, v1, p2}, LR5/x0;-><init>(LR5/A0;LR5/y0;LR5/t;Ljava/lang/Object;)V

    .line 206
    .line 207
    .line 208
    iget-object v3, v1, LR5/t;->m:LR5/u;

    .line 209
    .line 210
    const/4 v7, 0x1

    .line 211
    const/4 v8, 0x0

    .line 212
    const/4 v4, 0x0

    .line 213
    const/4 v5, 0x0

    .line 214
    invoke-static/range {v3 .. v8}, LR5/p0;->invokeOnCompletion$default(LR5/q0;ZZLH5/l;ILjava/lang/Object;)LR5/V;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    sget-object v0, LR5/G0;->b:LR5/G0;

    .line 219
    .line 220
    if-eq p1, v0, :cond_14

    .line 221
    .line 222
    sget-object p1, LR5/B0;->b:LW5/G;

    .line 223
    .line 224
    return-object p1

    .line 225
    :cond_14
    invoke-static {v1}, LR5/A0;->g(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)LR5/t;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    if-nez v1, :cond_13

    .line 230
    .line 231
    :cond_15
    invoke-virtual {p0, v2, p2}, LR5/A0;->d(LR5/y0;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object p1

    .line 235
    return-object p1

    .line 236
    :goto_6
    monitor-exit v2

    .line 237
    throw p1
.end method

.method public final makeCompleting$kotlinx_coroutines_core(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    :cond_0
    invoke-virtual {p0}, LR5/A0;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0, p1}, LR5/A0;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {}, LR5/B0;->access$getCOMPLETING_ALREADY$p()LW5/G;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-ne v0, v1, :cond_1

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    return p1

    .line 17
    :cond_1
    sget-object v1, LR5/B0;->b:LW5/G;

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    if-ne v0, v1, :cond_2

    .line 21
    .line 22
    return v2

    .line 23
    :cond_2
    invoke-static {}, LR5/B0;->access$getCOMPLETING_RETRY$p()LW5/G;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    if-eq v0, v1, :cond_0

    .line 28
    .line 29
    invoke-virtual {p0, v0}, LR5/A0;->afterCompletion(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    return v2
.end method

.method public final makeCompletingOnce$kotlinx_coroutines_core(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    :cond_0
    invoke-virtual {p0}, LR5/A0;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0, p1}, LR5/A0;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {}, LR5/B0;->access$getCOMPLETING_ALREADY$p()LW5/G;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-ne v0, v1, :cond_3

    .line 14
    .line 15
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 16
    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v2, "Job "

    .line 20
    .line 21
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v2, " is already complete or completing, but is being completed with "

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    instance-of v2, p1, LR5/A;

    .line 40
    .line 41
    const/4 v3, 0x0

    .line 42
    if-eqz v2, :cond_1

    .line 43
    .line 44
    check-cast p1, LR5/A;

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    move-object p1, v3

    .line 48
    :goto_0
    if-eqz p1, :cond_2

    .line 49
    .line 50
    iget-object v3, p1, LR5/A;->a:Ljava/lang/Throwable;

    .line 51
    .line 52
    :cond_2
    invoke-direct {v0, v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 53
    .line 54
    .line 55
    throw v0

    .line 56
    :cond_3
    invoke-static {}, LR5/B0;->access$getCOMPLETING_RETRY$p()LW5/G;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    if-eq v0, v1, :cond_0

    .line 61
    .line 62
    return-object v0
.end method

.method public minusKey(Ly5/j;)Ly5/k;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly5/j;",
            ")",
            "Ly5/k;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, LR5/p0;->minusKey(LR5/q0;Ly5/j;)Ly5/k;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public nameString$kotlinx_coroutines_core()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, LR5/K;->getClassSimpleName(Ljava/lang/Object;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public onCancelling(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onCompletionInternal(Ljava/lang/Object;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onStart()V
    .locals 0

    .line 1
    return-void
.end method

.method public final parentCancelled(LR5/I0;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LR5/A0;->cancelImpl$kotlinx_coroutines_core(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public plus(Ly5/k;)Ly5/k;
    .locals 0

    .line 1
    invoke-static {p0, p1}, LR5/p0;->plus(LR5/q0;Ly5/k;)Ly5/k;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final removeNode$kotlinx_coroutines_core(LR5/v0;)V
    .locals 4

    .line 1
    :goto_0
    invoke-virtual {p0}, LR5/A0;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, LR5/v0;

    .line 6
    .line 7
    if-eqz v1, :cond_3

    .line 8
    .line 9
    if-eq v0, p1, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    invoke-static {}, LR5/B0;->access$getEMPTY_ACTIVE$p()LR5/X;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    :cond_1
    sget-object v2, LR5/A0;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 17
    .line 18
    invoke-virtual {v2, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_2

    .line 23
    .line 24
    return-void

    .line 25
    :cond_2
    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    if-eq v2, v0, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_3
    instance-of v1, v0, LR5/k0;

    .line 33
    .line 34
    if-eqz v1, :cond_4

    .line 35
    .line 36
    check-cast v0, LR5/k0;

    .line 37
    .line 38
    invoke-interface {v0}, LR5/k0;->getList()LR5/F0;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    if-eqz v0, :cond_4

    .line 43
    .line 44
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->remove()Z

    .line 45
    .line 46
    .line 47
    :cond_4
    :goto_1
    return-void
.end method

.method public final setParentHandle$kotlinx_coroutines_core(LR5/s;)V
    .locals 1

    .line 1
    sget-object v0, LR5/A0;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final start()Z
    .locals 2

    .line 1
    :goto_0
    invoke-virtual {p0}, LR5/A0;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, LR5/A0;->i(Ljava/lang/Object;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    if-eq v0, v1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    return v1

    .line 16
    :cond_1
    const/4 v0, 0x0

    .line 17
    return v0
.end method

.method public final toCancellationException(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/util/concurrent/CancellationException;
    .locals 1

    .line 1
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Ljava/util/concurrent/CancellationException;

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    if-nez v0, :cond_2

    .line 11
    .line 12
    new-instance v0, Lkotlinx/coroutines/JobCancellationException;

    .line 13
    .line 14
    if-nez p2, :cond_1

    .line 15
    .line 16
    invoke-static {p0}, LR5/A0;->access$cancellationExceptionMessage(LR5/A0;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    :cond_1
    invoke-direct {v0, p2, p1, p0}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;LR5/q0;)V

    .line 21
    .line 22
    .line 23
    :cond_2
    return-object v0
.end method

.method public final toDebugString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, LR5/A0;->nameString$kotlinx_coroutines_core()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const/16 v1, 0x7b

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, LR5/A0;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v1}, LR5/A0;->j(Ljava/lang/Object;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const/16 v1, 0x7d

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, LR5/A0;->toDebugString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const/16 v1, 0x40

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-static {p0}, LR5/K;->getHexAddress(Ljava/lang/Object;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    return-object v0
.end method
