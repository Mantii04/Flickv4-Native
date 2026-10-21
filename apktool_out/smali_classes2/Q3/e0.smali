.class public abstract LQ3/e0;
.super LQ3/g;
.source "SourceFile"


# instance fields
.field public final m:LQ3/W;

.field public final n:LQ3/O;


# direct methods
.method public constructor <init>(LQ3/G;LQ3/O;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, LQ3/W;

    .line 9
    .line 10
    iput-object p1, p0, LQ3/e0;->m:LQ3/W;

    .line 11
    .line 12
    invoke-static {p2}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, LQ3/O;

    .line 17
    .line 18
    iput-object p1, p0, LQ3/e0;->n:LQ3/O;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .locals 2

    .line 1
    iget-object v0, p0, LQ3/e0;->m:LQ3/W;

    .line 2
    .line 3
    invoke-interface {v0}, LQ3/W;->asMap()Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, LQ3/d0;

    .line 8
    .line 9
    invoke-direct {v1, p0}, LQ3/d0;-><init>(LQ3/e0;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/google/common/collect/C;->transformEntries(Ljava/util/Map;LQ3/O;)Ljava/util/Map;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method public final b()Ljava/util/Collection;
    .locals 1

    .line 1
    new-instance v0, LQ3/e;

    .line 2
    .line 3
    invoke-direct {v0, p0}, LQ3/e;-><init>(LQ3/g;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final c()Ljava/util/Set;
    .locals 1

    .line 1
    iget-object v0, p0, LQ3/e0;->m:LQ3/W;

    .line 2
    .line 3
    invoke-interface {v0}, LQ3/W;->keySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, LQ3/e0;->m:LQ3/W;

    .line 2
    .line 3
    invoke-interface {v0}, LQ3/W;->clear()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final d()Ljava/util/Collection;
    .locals 3

    .line 1
    iget-object v0, p0, LQ3/e0;->m:LQ3/W;

    .line 2
    .line 3
    invoke-interface {v0}, LQ3/W;->entries()Ljava/util/Collection;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, LQ3/e0;->n:LQ3/O;

    .line 8
    .line 9
    invoke-static {v1}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    new-instance v2, LQ3/I;

    .line 13
    .line 14
    invoke-direct {v2, v1}, LQ3/I;-><init>(LQ3/O;)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v2}, LQ3/k;->transform(Ljava/util/Collection;LP3/p;)Ljava/util/Collection;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public final e()Ljava/util/Iterator;
    .locals 3

    .line 1
    iget-object v0, p0, LQ3/e0;->m:LQ3/W;

    .line 2
    .line 3
    invoke-interface {v0}, LQ3/W;->entries()Ljava/util/Collection;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, LQ3/e0;->n:LQ3/O;

    .line 12
    .line 13
    invoke-static {v1}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    new-instance v2, LQ3/K;

    .line 17
    .line 18
    invoke-direct {v2, v1}, LQ3/K;-><init>(LQ3/O;)V

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v2}, LQ3/F;->transform(Ljava/util/Iterator;LP3/p;)Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method

.method public abstract get(Ljava/lang/Object;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    iget-object v0, p0, LQ3/e0;->m:LQ3/W;

    .line 2
    .line 3
    invoke-interface {v0}, LQ3/W;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p1
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LQ3/e0;->get(Ljava/lang/Object;)Ljava/util/Collection;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1, p2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, LQ3/e0;->m:LQ3/W;

    .line 2
    .line 3
    invoke-interface {v0}, LQ3/W;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
