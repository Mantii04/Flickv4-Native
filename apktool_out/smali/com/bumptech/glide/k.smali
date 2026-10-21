.class public final Lcom/bumptech/glide/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LG2/k;


# instance fields
.field public a:Z

.field public final synthetic b:Lcom/bumptech/glide/c;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:LA2/a;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/c;Ljava/util/List;LA2/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bumptech/glide/k;->b:Lcom/bumptech/glide/c;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/bumptech/glide/k;->c:Ljava/util/List;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/bumptech/glide/k;->d:LA2/a;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public get()Lcom/bumptech/glide/j;
    .locals 4

    .line 2
    iget-boolean v0, p0, Lcom/bumptech/glide/k;->a:Z

    if-nez v0, :cond_0

    .line 3
    const-string v0, "Glide registry"

    invoke-static {v0}, Lw1/a;->beginSection(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/bumptech/glide/k;->a:Z

    const/4 v0, 0x0

    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/k;->b:Lcom/bumptech/glide/c;

    iget-object v2, p0, Lcom/bumptech/glide/k;->c:Ljava/util/List;

    iget-object v3, p0, Lcom/bumptech/glide/k;->d:LA2/a;

    invoke-static {v1, v2, v3}, Landroidx/leanback/widget/W;->c(Lcom/bumptech/glide/c;Ljava/util/List;LA2/a;)Lcom/bumptech/glide/j;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iput-boolean v0, p0, Lcom/bumptech/glide/k;->a:Z

    .line 7
    invoke-static {}, Lw1/a;->endSection()V

    return-object v1

    :catchall_0
    move-exception v1

    .line 8
    iput-boolean v0, p0, Lcom/bumptech/glide/k;->a:Z

    .line 9
    invoke-static {}, Lw1/a;->endSection()V

    .line 10
    throw v1

    .line 11
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Recursive Registry initialization! In your AppGlideModule and LibraryGlideModules, Make sure you\'re using the provided Registry rather calling glide.getRegistry()!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/bumptech/glide/k;->get()Lcom/bumptech/glide/j;

    move-result-object v0

    return-object v0
.end method
