.class public abstract LR5/x;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final CompletableDeferred(LR5/q0;)LR5/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LR5/q0;",
            ")",
            "LR5/v;"
        }
    .end annotation

    .line 1
    new-instance v0, LR5/w;

    .line 2
    .line 3
    invoke-direct {v0, p0}, LR5/w;-><init>(LR5/q0;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static synthetic CompletableDeferred$default(LR5/q0;ILjava/lang/Object;)LR5/v;
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
    invoke-static {p0}, LR5/x;->CompletableDeferred(LR5/q0;)LR5/v;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static final completeWith(LR5/v;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LR5/v;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast p0, LR5/w;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, p1}, LR5/w;->complete(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0

    .line 14
    :cond_0
    invoke-virtual {p0, v0}, LR5/w;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    return p0
.end method
