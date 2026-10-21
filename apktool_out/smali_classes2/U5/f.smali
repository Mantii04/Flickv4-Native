.class public abstract synthetic LU5/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final emitAll(LU5/c;LU5/b;Ly5/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LU5/c;",
            "LU5/b;",
            "Ly5/c;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, LU5/d;->ensureActive(LU5/c;)V

    .line 2
    .line 3
    .line 4
    invoke-interface {p1, p0, p2}, LU5/b;->collect(LU5/c;Ly5/c;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-static {}, Lz5/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-ne p0, p1, :cond_0

    .line 13
    .line 14
    return-object p0

    .line 15
    :cond_0
    sget-object p0, Lu5/j;->a:Lu5/j;

    .line 16
    .line 17
    return-object p0
.end method
