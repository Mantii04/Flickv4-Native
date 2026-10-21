.class public final LH2/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LH2/g;


# virtual methods
.method public bridge synthetic reset(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, LH2/c;->reset(Ljava/util/List;)V

    return-void
.end method

.method public reset(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method
