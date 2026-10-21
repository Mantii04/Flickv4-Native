.class public abstract LQ3/a0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static hashKeys()LQ3/Z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LQ3/Z;"
        }
    .end annotation

    const/16 v0, 0x8

    .line 1
    invoke-static {v0}, LQ3/a0;->hashKeys(I)LQ3/Z;

    move-result-object v0

    return-object v0
.end method

.method public static hashKeys(I)LQ3/Z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "LQ3/Z;"
        }
    .end annotation

    .line 2
    const-string v0, "expectedKeys"

    invoke-static {p0, v0}, LV3/r;->b(ILjava/lang/String;)V

    .line 3
    new-instance v0, Lcom/google/common/collect/D;

    invoke-direct {v0, p0}, Lcom/google/common/collect/D;-><init>(I)V

    return-object v0
.end method

.method public static treeKeys()LQ3/Z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LQ3/Z;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/common/collect/G;->natural()Lcom/google/common/collect/G;

    move-result-object v0

    invoke-static {v0}, LQ3/a0;->treeKeys(Ljava/util/Comparator;)LQ3/Z;

    move-result-object v0

    return-object v0
.end method

.method public static treeKeys(Ljava/util/Comparator;)LQ3/Z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K0:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "TK0;>;)",
            "LQ3/Z;"
        }
    .end annotation

    .line 2
    invoke-static {p0}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v0, LQ3/X;

    invoke-direct {v0, p0}, LQ3/X;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method
