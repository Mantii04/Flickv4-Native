.class public final Lr2/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/data/e;


# instance fields
.field public final b:Landroid/content/res/Resources$Theme;

.field public final e:Landroid/content/res/Resources;

.field public final f:Ljava/lang/Object;

.field public final j:I

.field public m:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources$Theme;Landroid/content/res/Resources;Lr2/y;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lr2/x;->b:Landroid/content/res/Resources$Theme;

    .line 5
    .line 6
    iput-object p2, p0, Lr2/x;->e:Landroid/content/res/Resources;

    .line 7
    .line 8
    iput-object p3, p0, Lr2/x;->f:Ljava/lang/Object;

    .line 9
    .line 10
    iput p4, p0, Lr2/x;->j:I

    .line 11
    .line 12
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
    iget-object v0, p0, Lr2/x;->m:Ljava/lang/Object;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, Lr2/x;->f:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-interface {v1, v0}, Lr2/y;->close(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    :catch_0
    :cond_0
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
    iget-object v0, p0, Lr2/x;->f:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-interface {v0}, Lr2/y;->getDataClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
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
    .locals 3
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
    iget-object p1, p0, Lr2/x;->f:Ljava/lang/Object;

    .line 2
    .line 3
    iget-object v0, p0, Lr2/x;->b:Landroid/content/res/Resources$Theme;

    .line 4
    .line 5
    iget-object v1, p0, Lr2/x;->e:Landroid/content/res/Resources;

    .line 6
    .line 7
    iget v2, p0, Lr2/x;->j:I

    .line 8
    .line 9
    invoke-interface {p1, v0, v1, v2}, Lr2/y;->open(Landroid/content/res/Resources$Theme;Landroid/content/res/Resources;I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lr2/x;->m:Ljava/lang/Object;

    .line 14
    .line 15
    invoke-interface {p2, p1}, Lcom/bumptech/glide/load/data/d;->onDataReady(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :catch_0
    move-exception p1

    .line 20
    invoke-interface {p2, p1}, Lcom/bumptech/glide/load/data/d;->onLoadFailed(Ljava/lang/Exception;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
