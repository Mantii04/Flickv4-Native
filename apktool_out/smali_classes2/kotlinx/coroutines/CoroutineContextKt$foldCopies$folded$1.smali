.class final Lkotlinx/coroutines/CoroutineContextKt$foldCopies$folded$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements LH5/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "LH5/p;"
    }
.end annotation


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ly5/k;

    check-cast p2, Ly5/i;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/CoroutineContextKt$foldCopies$folded$1;->invoke(Ly5/k;Ly5/i;)Ly5/k;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Ly5/k;Ly5/i;)Ly5/k;
    .locals 0

    .line 2
    invoke-interface {p1, p2}, Ly5/k;->plus(Ly5/k;)Ly5/k;

    move-result-object p1

    return-object p1
.end method
