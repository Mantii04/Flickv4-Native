.class public final Ln2/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LH2/d;


# instance fields
.field public final synthetic a:Ln2/w;


# direct methods
.method public constructor <init>(Ln2/w;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ln2/v;->a:Ln2/w;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public create()Lcom/bumptech/glide/load/engine/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/engine/a;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/bumptech/glide/load/engine/a;

    iget-object v1, p0, Ln2/v;->a:Ln2/w;

    iget-object v2, v1, Ln2/w;->a:Ln2/z;

    iget-object v1, v1, Ln2/w;->b:LL/e;

    invoke-direct {v0, v2, v1}, Lcom/bumptech/glide/load/engine/a;-><init>(Ln2/z;LL/e;)V

    return-object v0
.end method

.method public bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ln2/v;->create()Lcom/bumptech/glide/load/engine/a;

    move-result-object v0

    return-object v0
.end method
