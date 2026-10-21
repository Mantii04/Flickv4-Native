.class public final LR5/w0;
.super LR5/n;
.source "SourceFile"


# instance fields
.field public final r:LR5/A0;


# direct methods
.method public constructor <init>(Ly5/c;LR5/A0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly5/c;",
            "LR5/A0;",
            ")V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, v0}, LR5/n;-><init>(Ly5/c;I)V

    .line 3
    .line 4
    .line 5
    iput-object p2, p0, LR5/w0;->r:LR5/A0;

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public getContinuationCancellationCause(LR5/q0;)Ljava/lang/Throwable;
    .locals 2

    .line 1
    iget-object v0, p0, LR5/w0;->r:LR5/A0;

    .line 2
    .line 3
    invoke-virtual {v0}, LR5/A0;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    instance-of v1, v0, LR5/y0;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    move-object v1, v0

    .line 12
    check-cast v1, LR5/y0;

    .line 13
    .line 14
    invoke-virtual {v1}, LR5/y0;->getRootCause()Ljava/lang/Throwable;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    return-object v1

    .line 21
    :cond_0
    instance-of v1, v0, LR5/A;

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    check-cast v0, LR5/A;

    .line 26
    .line 27
    iget-object p1, v0, LR5/A;->a:Ljava/lang/Throwable;

    .line 28
    .line 29
    return-object p1

    .line 30
    :cond_1
    check-cast p1, LR5/A0;

    .line 31
    .line 32
    invoke-virtual {p1}, LR5/A0;->getCancellationException()Ljava/util/concurrent/CancellationException;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    return-object p1
.end method

.method public nameString()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "AwaitContinuation"

    .line 2
    .line 3
    return-object v0
.end method
