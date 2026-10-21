.class public abstract synthetic LU5/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final callbackFlow(LH5/p;)LU5/b;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LH5/p;",
            ")",
            "LU5/b;"
        }
    .end annotation

    .line 1
    new-instance v0, Lkotlinx/coroutines/flow/CallbackFlowBuilder;

    .line 2
    .line 3
    const/16 v5, 0xe

    .line 4
    .line 5
    const/4 v6, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x0

    .line 9
    move-object v1, p0

    .line 10
    invoke-direct/range {v0 .. v6}, Lkotlinx/coroutines/flow/CallbackFlowBuilder;-><init>(LH5/p;Ly5/k;ILkotlinx/coroutines/channels/BufferOverflow;ILkotlin/jvm/internal/g;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public static final flow(LH5/p;)LU5/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LH5/p;",
            ")",
            "LU5/b;"
        }
    .end annotation

    .line 1
    new-instance v0, LU5/l;

    .line 2
    .line 3
    invoke-direct {v0, p0}, LU5/l;-><init>(LH5/p;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
