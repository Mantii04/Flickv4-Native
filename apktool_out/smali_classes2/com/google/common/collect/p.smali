.class public final Lcom/google/common/collect/p;
.super Ljava/util/AbstractCollection;
.source "SourceFile"


# instance fields
.field public final synthetic b:LQ3/g;


# direct methods
.method public constructor <init>(LQ3/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/p;->b:LQ3/g;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/p;->b:LQ3/g;

    .line 2
    .line 3
    invoke-interface {v0}, LQ3/W;->clear()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/p;->b:LQ3/g;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, LQ3/g;->containsValue(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/p;->b:LQ3/g;

    .line 2
    .line 3
    check-cast v0, Lcom/google/common/collect/AbstractMapBasedMultimap;

    .line 4
    .line 5
    new-instance v1, LQ3/b;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {v1, v0, v2}, LQ3/b;-><init>(Lcom/google/common/collect/AbstractMapBasedMultimap;I)V

    .line 9
    .line 10
    .line 11
    return-object v1
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/p;->b:LQ3/g;

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
