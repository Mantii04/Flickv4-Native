.class public final Ln2/K;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LH2/d;


# virtual methods
.method public bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ln2/K;->create()Ln2/L;

    move-result-object v0

    return-object v0
.end method

.method public create()Ln2/L;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ln2/L;"
        }
    .end annotation

    .line 2
    new-instance v0, Ln2/L;

    invoke-direct {v0}, Ln2/L;-><init>()V

    return-object v0
.end method
