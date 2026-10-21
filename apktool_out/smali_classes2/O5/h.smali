.class public abstract LO5/h;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final iterator(LH5/p;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LH5/p;",
            ")",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 1
    const-string v0, "block"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, LO5/e;

    .line 7
    .line 8
    invoke-direct {v0}, LO5/e;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-static {p0, v0, v0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt;->createCoroutineUnintercepted(LH5/p;Ljava/lang/Object;Ly5/c;)Ly5/c;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {v0, p0}, LO5/e;->setNextStep(Ly5/c;)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method public static sequence(LH5/p;)LO5/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LH5/p;",
            ")",
            "LO5/d;"
        }
    .end annotation

    .line 1
    const-string v0, "block"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, LO5/g;

    .line 7
    .line 8
    invoke-direct {v0, p0}, LO5/g;-><init>(LH5/p;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method
