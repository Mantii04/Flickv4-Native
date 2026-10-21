.class public final Ln2/S;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/data/d;


# instance fields
.field public final synthetic b:Lr2/U;

.field public final synthetic e:Ln2/T;


# direct methods
.method public constructor <init>(Ln2/T;Lr2/U;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ln2/S;->e:Ln2/T;

    .line 5
    .line 6
    iput-object p2, p0, Ln2/S;->b:Lr2/U;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onDataReady(Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget-object v0, p0, Ln2/S;->e:Ln2/T;

    .line 2
    .line 3
    iget-object v1, p0, Ln2/S;->b:Lr2/U;

    .line 4
    .line 5
    iget-object v0, v0, Ln2/T;->n:Lr2/U;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    if-ne v0, v1, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Ln2/S;->e:Ln2/T;

    .line 12
    .line 13
    iget-object v1, p0, Ln2/S;->b:Lr2/U;

    .line 14
    .line 15
    iget-object v2, v0, Ln2/T;->b:Ln2/k;

    .line 16
    .line 17
    iget-object v2, v2, Ln2/k;->p:Ln2/u;

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    iget-object v3, v1, Lr2/U;->c:Lcom/bumptech/glide/load/data/e;

    .line 22
    .line 23
    invoke-interface {v3}, Lcom/bumptech/glide/load/data/e;->getDataSource()Lcom/bumptech/glide/load/DataSource;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v2, v3}, Ln2/u;->isDataCacheable(Lcom/bumptech/glide/load/DataSource;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    iput-object p1, v0, Ln2/T;->m:Ljava/lang/Object;

    .line 34
    .line 35
    iget-object p1, v0, Ln2/T;->e:Lcom/bumptech/glide/load/engine/a;

    .line 36
    .line 37
    invoke-interface {p1}, Ln2/i;->reschedule()V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_0
    move-object v2, v0

    .line 42
    iget-object v0, v2, Ln2/T;->e:Lcom/bumptech/glide/load/engine/a;

    .line 43
    .line 44
    move-object v3, v1

    .line 45
    iget-object v1, v3, Lr2/U;->a:Ll2/m;

    .line 46
    .line 47
    iget-object v3, v3, Lr2/U;->c:Lcom/bumptech/glide/load/data/e;

    .line 48
    .line 49
    invoke-interface {v3}, Lcom/bumptech/glide/load/data/e;->getDataSource()Lcom/bumptech/glide/load/DataSource;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    iget-object v5, v2, Ln2/T;->p:Ln2/g;

    .line 54
    .line 55
    move-object v2, p1

    .line 56
    invoke-interface/range {v0 .. v5}, Ln2/i;->onDataFetcherReady(Ll2/m;Ljava/lang/Object;Lcom/bumptech/glide/load/data/e;Lcom/bumptech/glide/load/DataSource;Ll2/m;)V

    .line 57
    .line 58
    .line 59
    :cond_1
    return-void
.end method

.method public onLoadFailed(Ljava/lang/Exception;)V
    .locals 4

    .line 1
    iget-object v0, p0, Ln2/S;->e:Ln2/T;

    .line 2
    .line 3
    iget-object v1, p0, Ln2/S;->b:Lr2/U;

    .line 4
    .line 5
    iget-object v0, v0, Ln2/T;->n:Lr2/U;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Ln2/S;->e:Ln2/T;

    .line 12
    .line 13
    iget-object v1, p0, Ln2/S;->b:Lr2/U;

    .line 14
    .line 15
    iget-object v2, v0, Ln2/T;->e:Lcom/bumptech/glide/load/engine/a;

    .line 16
    .line 17
    iget-object v0, v0, Ln2/T;->p:Ln2/g;

    .line 18
    .line 19
    iget-object v1, v1, Lr2/U;->c:Lcom/bumptech/glide/load/data/e;

    .line 20
    .line 21
    invoke-interface {v1}, Lcom/bumptech/glide/load/data/e;->getDataSource()Lcom/bumptech/glide/load/DataSource;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-interface {v2, v0, p1, v1, v3}, Ln2/i;->onDataFetcherFailed(Ll2/m;Ljava/lang/Exception;Lcom/bumptech/glide/load/data/e;Lcom/bumptech/glide/load/DataSource;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method
