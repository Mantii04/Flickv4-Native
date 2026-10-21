.class public final Lr2/U;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ll2/m;

.field public final b:Ljava/util/List;

.field public final c:Lcom/bumptech/glide/load/data/e;


# direct methods
.method public constructor <init>(Ll2/m;Lcom/bumptech/glide/load/data/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll2/m;",
            "Lcom/bumptech/glide/load/data/e;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {p0, p1, v0, p2}, Lr2/U;-><init>(Ll2/m;Ljava/util/List;Lcom/bumptech/glide/load/data/e;)V

    return-void
.end method

.method public constructor <init>(Ll2/m;Ljava/util/List;Lcom/bumptech/glide/load/data/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll2/m;",
            "Ljava/util/List<",
            "Ll2/m;",
            ">;",
            "Lcom/bumptech/glide/load/data/e;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, LG2/r;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ll2/m;

    iput-object p1, p0, Lr2/U;->a:Ll2/m;

    .line 4
    invoke-static {p2}, LG2/r;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lr2/U;->b:Ljava/util/List;

    .line 5
    invoke-static {p3}, LG2/r;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/load/data/e;

    iput-object p1, p0, Lr2/U;->c:Lcom/bumptech/glide/load/data/e;

    return-void
.end method
