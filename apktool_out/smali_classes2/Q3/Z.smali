.class public abstract LQ3/Z;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract a()Ljava/util/Map;
.end method

.method public arrayListValues()LQ3/Y;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LQ3/Y;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, v0}, LQ3/Z;->arrayListValues(I)LQ3/Y;

    move-result-object v0

    return-object v0
.end method

.method public arrayListValues(I)LQ3/Y;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "LQ3/Y;"
        }
    .end annotation

    .line 2
    const-string v0, "expectedValuesPerKey"

    invoke-static {p1, v0}, LV3/r;->b(ILjava/lang/String;)V

    .line 3
    new-instance v0, Lcom/google/common/collect/E;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/E;-><init>(LQ3/Z;I)V

    return-object v0
.end method
