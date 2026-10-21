.class public abstract LR5/a;
.super LR5/A0;
.source "SourceFile"

# interfaces
.implements Ly5/c;
.implements LR5/I;


# instance fields
.field public final f:Ly5/k;


# direct methods
.method public constructor <init>(Ly5/k;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p3}, LR5/A0;-><init>(Z)V

    .line 2
    .line 3
    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    sget-object p2, LR5/F;->e:LR5/F;

    .line 7
    .line 8
    invoke-interface {p1, p2}, Ly5/k;->get(Ly5/j;)Ly5/i;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    check-cast p2, LR5/q0;

    .line 13
    .line 14
    invoke-virtual {p0, p2}, LR5/A0;->initParentJob(LR5/q0;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-interface {p1, p0}, Ly5/k;->plus(Ly5/k;)Ly5/k;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, LR5/a;->f:Ly5/k;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public afterResume(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LR5/A0;->afterCompletion(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public cancellationExceptionMessage()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, LR5/K;->getClassSimpleName(Ljava/lang/Object;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, " was cancelled"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    return-object v0
.end method

.method public final getContext()Ly5/k;
    .locals 1

    .line 1
    iget-object v0, p0, LR5/a;->f:Ly5/k;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCoroutineContext()Ly5/k;
    .locals 1

    .line 1
    iget-object v0, p0, LR5/a;->f:Ly5/k;

    .line 2
    .line 3
    return-object v0
.end method

.method public final handleOnCompletionException$kotlinx_coroutines_core(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, LR5/a;->f:Ly5/k;

    .line 2
    .line 3
    invoke-static {v0, p1}, LR5/G;->handleCoroutineException(Ly5/k;Ljava/lang/Throwable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public isActive()Z
    .locals 1

    .line 1
    invoke-super {p0}, LR5/A0;->isActive()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public nameString$kotlinx_coroutines_core()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, LR5/a;->f:Ly5/k;

    .line 2
    .line 3
    invoke-static {v0}, Lkotlinx/coroutines/a;->getCoroutineName(Ly5/k;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-super {p0}, LR5/A0;->nameString$kotlinx_coroutines_core()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    :cond_0
    const-string v1, "\""

    .line 15
    .line 16
    const-string v2, "\":"

    .line 17
    .line 18
    invoke-static {v1, v0, v2}, LA/i;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-super {p0}, LR5/A0;->nameString$kotlinx_coroutines_core()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    return-object v0
.end method

.method public onCancelled(Ljava/lang/Throwable;Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public onCompleted(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    return-void
.end method

.method public final onCompletionInternal(Ljava/lang/Object;)V
    .locals 1

    .line 1
    instance-of v0, p1, LR5/A;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, LR5/A;

    .line 6
    .line 7
    iget-object v0, p1, LR5/A;->a:Ljava/lang/Throwable;

    .line 8
    .line 9
    invoke-virtual {p1}, LR5/A;->getHandled()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-virtual {p0, v0, p1}, LR5/a;->onCancelled(Ljava/lang/Throwable;Z)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    invoke-virtual {p0, p1}, LR5/a;->onCompleted(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final resumeWith(Ljava/lang/Object;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-static {p1, v0, v1, v0}, LR5/D;->toState$default(Ljava/lang/Object;LH5/l;ILjava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, LR5/A0;->makeCompletingOnce$kotlinx_coroutines_core(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    sget-object v0, LR5/B0;->b:LW5/G;

    .line 12
    .line 13
    if-ne p1, v0, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-virtual {p0, p1}, LR5/a;->afterResume(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final start(Lkotlinx/coroutines/CoroutineStart;Ljava/lang/Object;LH5/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/CoroutineStart;",
            "TR;",
            "LH5/p;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p3, p2, p0}, Lkotlinx/coroutines/CoroutineStart;->invoke(LH5/p;Ljava/lang/Object;Ly5/c;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
