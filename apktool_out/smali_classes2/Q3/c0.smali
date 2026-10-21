.class public final LQ3/c0;
.super LQ3/e0;
.source "SourceFile"

# interfaces
.implements LQ3/G;


# virtual methods
.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LQ3/c0;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/Object;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, LQ3/e0;->m:LQ3/W;

    invoke-interface {v0, p1}, LQ3/W;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/util/List;

    .line 4
    iget-object v1, p0, LQ3/e0;->n:LQ3/O;

    invoke-static {v1}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v2, LQ3/H;

    invoke-direct {v2, v1, p1}, LQ3/H;-><init>(LQ3/O;Ljava/lang/Object;)V

    .line 6
    invoke-static {v0, v2}, Lcom/google/common/collect/B;->transform(Ljava/util/List;LP3/p;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
