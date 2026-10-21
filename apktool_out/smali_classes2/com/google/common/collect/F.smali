.class public abstract Lcom/google/common/collect/F;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static newListMultimap(Ljava/util/Map;LP3/C;)LQ3/G;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;",
            "LP3/C;",
            ")",
            "LQ3/G;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/collect/Multimaps$CustomListMultimap;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/common/collect/AbstractListMultimap;-><init>(Ljava/util/Map;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, LP3/C;

    .line 11
    .line 12
    iput-object p0, v0, Lcom/google/common/collect/Multimaps$CustomListMultimap;->p:LP3/C;

    .line 13
    .line 14
    return-object v0
.end method

.method public static transformEntries(LQ3/G;LQ3/O;)LQ3/G;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V1:",
            "Ljava/lang/Object;",
            "V2:",
            "Ljava/lang/Object;",
            ">(",
            "LQ3/G;",
            "LQ3/O;",
            ")",
            "LQ3/G;"
        }
    .end annotation

    .line 1
    new-instance v0, LQ3/c0;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, LQ3/e0;-><init>(LQ3/G;LQ3/O;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static transformValues(LQ3/G;LP3/p;)LQ3/G;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V1:",
            "Ljava/lang/Object;",
            "V2:",
            "Ljava/lang/Object;",
            ">(",
            "LQ3/G;",
            "LP3/p;",
            ")",
            "LQ3/G;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    new-instance v0, LQ3/M;

    .line 8
    .line 9
    invoke-direct {v0, p1}, LQ3/M;-><init>(LP3/p;)V

    .line 10
    .line 11
    .line 12
    invoke-static {p0, v0}, Lcom/google/common/collect/F;->transformEntries(LQ3/G;LQ3/O;)LQ3/G;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method
