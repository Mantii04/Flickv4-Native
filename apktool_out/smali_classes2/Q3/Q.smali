.class public abstract LQ3/Q;
.super Ljava/util/AbstractMap;
.source "SourceFile"


# virtual methods
.method public abstract a()Ljava/util/Iterator;
.end method

.method public clear()V
    .locals 1

    .line 1
    invoke-virtual {p0}, LQ3/Q;->a()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, LQ3/F;->a(Ljava/util/Iterator;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, LQ3/P;

    .line 2
    .line 3
    invoke-direct {v0, p0}, LQ3/P;-><init>(LQ3/Q;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
