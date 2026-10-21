.class public abstract Lkotlin/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static lazy(LH5/a;)Lu5/f;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LH5/a;",
            ")",
            "Lu5/f;"
        }
    .end annotation

    .line 1
    const-string v0, "initializer"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lkotlin/SynchronizedLazyImpl;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x2

    .line 10
    invoke-direct {v0, p0, v1, v2, v1}, Lkotlin/SynchronizedLazyImpl;-><init>(LH5/a;Ljava/lang/Object;ILkotlin/jvm/internal/g;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method
