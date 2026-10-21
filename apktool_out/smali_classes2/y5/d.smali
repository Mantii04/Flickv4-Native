.class public abstract Ly5/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static get(Ly5/f;Ly5/j;)Ly5/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ly5/i;",
            ">(",
            "Ly5/f;",
            "Ly5/j;",
            ")TE;"
        }
    .end annotation

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    instance-of v0, p1, Ly5/b;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    check-cast p1, Ly5/b;

    .line 11
    .line 12
    move-object v0, p0

    .line 13
    check-cast v0, Ly5/a;

    .line 14
    .line 15
    invoke-virtual {v0}, Ly5/a;->getKey()Ly5/j;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p1, v0}, Ly5/b;->isSubKey$kotlin_stdlib(Ly5/j;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {p1, p0}, Ly5/b;->tryCast$kotlin_stdlib(Ly5/i;)Ly5/i;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    instance-of p1, p0, Ly5/i;

    .line 30
    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    return-object p0

    .line 34
    :cond_0
    sget-object v0, Ly5/e;->b:Ly5/e;

    .line 35
    .line 36
    if-ne v0, p1, :cond_1

    .line 37
    .line 38
    const-string p1, "null cannot be cast to non-null type E of kotlin.coroutines.ContinuationInterceptor.get"

    .line 39
    .line 40
    invoke-static {p0, p1}, Lkotlin/jvm/internal/j;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return-object p0

    .line 44
    :cond_1
    const/4 p0, 0x0

    .line 45
    return-object p0
.end method

.method public static minusKey(Ly5/f;Ly5/j;)Ly5/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly5/f;",
            "Ly5/j;",
            ")",
            "Ly5/k;"
        }
    .end annotation

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    instance-of v0, p1, Ly5/b;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    check-cast p1, Ly5/b;

    .line 11
    .line 12
    move-object v0, p0

    .line 13
    check-cast v0, Ly5/a;

    .line 14
    .line 15
    invoke-virtual {v0}, Ly5/a;->getKey()Ly5/j;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p1, v0}, Ly5/b;->isSubKey$kotlin_stdlib(Ly5/j;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {p1, p0}, Ly5/b;->tryCast$kotlin_stdlib(Ly5/i;)Ly5/i;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    sget-object p0, Lkotlin/coroutines/EmptyCoroutineContext;->b:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 32
    .line 33
    return-object p0

    .line 34
    :cond_0
    sget-object v0, Ly5/e;->b:Ly5/e;

    .line 35
    .line 36
    if-ne v0, p1, :cond_1

    .line 37
    .line 38
    sget-object p0, Lkotlin/coroutines/EmptyCoroutineContext;->b:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 39
    .line 40
    :cond_1
    return-object p0
.end method
