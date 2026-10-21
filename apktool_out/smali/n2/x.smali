.class public final Ln2/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LH2/d;


# instance fields
.field public final synthetic a:Ln2/y;


# direct methods
.method public constructor <init>(Ln2/y;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ln2/x;->a:Ln2/y;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public create()Lcom/bumptech/glide/load/engine/e;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/engine/e;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/bumptech/glide/load/engine/e;

    iget-object v1, p0, Ln2/x;->a:Ln2/y;

    move-object v2, v1

    iget-object v1, v2, Ln2/y;->a:Lq2/h;

    iget-object v6, v2, Ln2/y;->f:Lcom/bumptech/glide/load/engine/b;

    iget-object v7, v2, Ln2/y;->g:LL/e;

    move-object v3, v2

    iget-object v2, v3, Ln2/y;->b:Lq2/h;

    move-object v4, v3

    iget-object v3, v4, Ln2/y;->c:Lq2/h;

    move-object v5, v4

    iget-object v4, v5, Ln2/y;->d:Lq2/h;

    iget-object v5, v5, Ln2/y;->e:Lcom/bumptech/glide/load/engine/b;

    invoke-direct/range {v0 .. v7}, Lcom/bumptech/glide/load/engine/e;-><init>(Lq2/h;Lq2/h;Lq2/h;Lq2/h;Lcom/bumptech/glide/load/engine/b;Lcom/bumptech/glide/load/engine/b;LL/e;)V

    return-object v0
.end method

.method public bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ln2/x;->create()Lcom/bumptech/glide/load/engine/e;

    move-result-object v0

    return-object v0
.end method
