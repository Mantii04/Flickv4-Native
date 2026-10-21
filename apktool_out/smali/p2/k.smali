.class public final Lp2/k;
.super LG2/o;
.source "SourceFile"

# interfaces
.implements Lp2/m;


# instance fields
.field public d:Lp2/l;


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, LG2/o;-><init>(J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic getSize(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Ln2/M;

    invoke-virtual {p0, p1}, Lp2/k;->getSize(Ln2/M;)I

    move-result p1

    return p1
.end method

.method public getSize(Ln2/M;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln2/M;",
            ")I"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 2
    invoke-super {p0, p1}, LG2/o;->getSize(Ljava/lang/Object;)I

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-interface {p1}, Ln2/M;->getSize()I

    move-result p1

    return p1
.end method

.method public bridge synthetic onItemEvicted(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ll2/m;

    check-cast p2, Ln2/M;

    invoke-virtual {p0, p1, p2}, Lp2/k;->onItemEvicted(Ll2/m;Ln2/M;)V

    return-void
.end method

.method public onItemEvicted(Ll2/m;Ln2/M;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll2/m;",
            "Ln2/M;",
            ")V"
        }
    .end annotation

    .line 2
    iget-object p1, p0, Lp2/k;->d:Lp2/l;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 3
    check-cast p1, Lcom/bumptech/glide/load/engine/b;

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/load/engine/b;->onResourceRemoved(Ln2/M;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic put(Ll2/m;Ln2/M;)Ln2/M;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, LG2/o;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Ln2/M;

    .line 6
    .line 7
    return-object p1
.end method

.method public bridge synthetic remove(Ll2/m;)Ln2/M;
    .locals 0

    .line 1
    invoke-super {p0, p1}, LG2/o;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Ln2/M;

    .line 6
    .line 7
    return-object p1
.end method

.method public setResourceRemovedListener(Lp2/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp2/k;->d:Lp2/l;

    .line 2
    .line 3
    return-void
.end method

.method public trimMemory(I)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .line 1
    const/16 v0, 0x28

    .line 2
    .line 3
    if-lt p1, v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, LG2/o;->clearMemory()V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    const/16 v0, 0x14

    .line 10
    .line 11
    if-ge p1, v0, :cond_2

    .line 12
    .line 13
    const/16 v0, 0xf

    .line 14
    .line 15
    if-ne p1, v0, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    return-void

    .line 19
    :cond_2
    :goto_0
    invoke-virtual {p0}, LG2/o;->getMaxSize()J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    const-wide/16 v2, 0x2

    .line 24
    .line 25
    div-long/2addr v0, v2

    .line 26
    invoke-virtual {p0, v0, v1}, LG2/o;->trimToSize(J)V

    .line 27
    .line 28
    .line 29
    return-void
.end method
