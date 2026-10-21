.class public abstract LT5/d;
.super LR5/a;
.source "SourceFile"

# interfaces
.implements LT5/c;


# instance fields
.field public final j:LT5/c;


# direct methods
.method public constructor <init>(Ly5/k;LT5/c;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly5/k;",
            "LT5/c;",
            "ZZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p3, p4}, LR5/a;-><init>(Ly5/k;ZZ)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, LT5/d;->j:LT5/c;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final cancel(Ljava/util/concurrent/CancellationException;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, LR5/A0;->isCancelled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    if-nez p1, :cond_1

    .line 9
    .line 10
    new-instance p1, Lkotlinx/coroutines/JobCancellationException;

    .line 11
    .line 12
    invoke-static {p0}, LR5/A0;->access$cancellationExceptionMessage(LR5/A0;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-direct {p1, v0, v1, p0}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;LR5/q0;)V

    .line 18
    .line 19
    .line 20
    :cond_1
    invoke-virtual {p0, p1}, LT5/d;->cancelInternal(Ljava/lang/Throwable;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public cancelInternal(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-static {p0, p1, v0, v1, v0}, LR5/A0;->toCancellationException$default(LR5/A0;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/concurrent/CancellationException;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, LT5/d;->j:LT5/c;

    .line 8
    .line 9
    invoke-interface {v0, p1}, LT5/q;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, LR5/A0;->cancelCoroutine(Ljava/lang/Throwable;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public close(Ljava/lang/Throwable;)Z
    .locals 1

    .line 1
    iget-object v0, p0, LT5/d;->j:LT5/c;

    .line 2
    .line 3
    invoke-interface {v0, p1}, LT5/s;->close(Ljava/lang/Throwable;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final get_channel()LT5/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LT5/c;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LT5/d;->j:LT5/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public invokeOnClose(LH5/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LH5/l;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LT5/d;->j:LT5/c;

    .line 2
    .line 3
    invoke-interface {v0, p1}, LT5/s;->invokeOnClose(LH5/l;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public isClosedForSend()Z
    .locals 1

    .line 1
    iget-object v0, p0, LT5/d;->j:LT5/c;

    .line 2
    .line 3
    invoke-interface {v0}, LT5/s;->isClosedForSend()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public iterator()LT5/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LT5/e;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LT5/d;->j:LT5/c;

    .line 2
    .line 3
    invoke-interface {v0}, LT5/q;->iterator()LT5/e;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public receive(Ly5/c;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly5/c;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LT5/d;->j:LT5/c;

    .line 2
    .line 3
    invoke-interface {v0, p1}, LT5/q;->receive(Ly5/c;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public send(Ljava/lang/Object;Ly5/c;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ly5/c;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LT5/d;->j:LT5/c;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, LT5/s;->send(Ljava/lang/Object;Ly5/c;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public tryReceive-PtdJZtk()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, LT5/d;->j:LT5/c;

    .line 2
    .line 3
    invoke-interface {v0}, LT5/q;->tryReceive-PtdJZtk()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LT5/d;->j:LT5/c;

    .line 2
    .line 3
    invoke-interface {v0, p1}, LT5/s;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
