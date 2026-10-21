.class public final Lr2/Q;
.super LG2/o;
.source "SourceFile"


# virtual methods
.method public bridge synthetic onItemEvicted(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lr2/S;

    invoke-virtual {p0, p1, p2}, Lr2/Q;->onItemEvicted(Lr2/S;Ljava/lang/Object;)V

    return-void
.end method

.method public onItemEvicted(Lr2/S;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr2/S;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Lr2/S;->release()V

    return-void
.end method
