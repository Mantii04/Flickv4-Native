.class public abstract Lkotlin/coroutines/CoroutineContext$DefaultImpls;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static plus(Ly5/k;Ly5/k;)Ly5/k;
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lkotlin/coroutines/EmptyCoroutineContext;->b:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 7
    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    .line 10
    return-object p0

    .line 11
    :cond_0
    sget-object v0, Lkotlin/coroutines/CoroutineContext$plus$1;->b:Lkotlin/coroutines/CoroutineContext$plus$1;

    .line 12
    .line 13
    invoke-interface {p1, p0, v0}, Ly5/k;->fold(Ljava/lang/Object;LH5/p;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Ly5/k;

    .line 18
    .line 19
    return-object p0
.end method
