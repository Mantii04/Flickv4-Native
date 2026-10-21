.class public final Lr2/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/data/e;


# instance fields
.field public final b:Ljava/lang/String;

.field public final e:Lr2/p;

.field public f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lr2/p;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lr2/q;->b:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lr2/q;->e:Lr2/p;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .line 1
    return-void
.end method

.method public cleanup()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lr2/q;->e:Lr2/p;

    .line 2
    .line 3
    iget-object v1, p0, Lr2/q;->f:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lr2/r;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lr2/r;->close(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    :catch_0
    return-void
.end method

.method public getDataClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lr2/q;->e:Lr2/p;

    .line 2
    .line 3
    check-cast v0, Lr2/r;

    .line 4
    .line 5
    invoke-virtual {v0}, Lr2/r;->getDataClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getDataSource()Lcom/bumptech/glide/load/DataSource;
    .locals 1

    .line 1
    sget-object v0, Lcom/bumptech/glide/load/DataSource;->b:Lcom/bumptech/glide/load/DataSource;

    .line 2
    .line 3
    return-object v0
.end method

.method public loadData(Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/data/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/Priority;",
            "Lcom/bumptech/glide/load/data/d;",
            ")V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object p1, p0, Lr2/q;->e:Lr2/p;

    .line 2
    .line 3
    iget-object v0, p0, Lr2/q;->b:Ljava/lang/String;

    .line 4
    .line 5
    check-cast p1, Lr2/r;

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Lr2/r;->decode(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Lr2/q;->f:Ljava/lang/Object;

    .line 12
    .line 13
    invoke-interface {p2, p1}, Lcom/bumptech/glide/load/data/d;->onDataReady(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :catch_0
    move-exception p1

    .line 18
    invoke-interface {p2, p1}, Lcom/bumptech/glide/load/data/d;->onLoadFailed(Ljava/lang/Exception;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
