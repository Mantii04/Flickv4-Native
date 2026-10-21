.class public abstract LV5/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final checkOwnership(Lkotlinx/coroutines/flow/internal/AbortFlowException;LU5/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/internal/AbortFlowException;",
            "LU5/c;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/flow/internal/AbortFlowException;->b:LU5/c;

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    throw p0
.end method
