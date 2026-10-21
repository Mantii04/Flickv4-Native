.class public final Ln2/B;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public build(Ln2/M;ZLl2/m;Ln2/F;)Ln2/G;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ln2/M;",
            "Z",
            "Ll2/m;",
            "Ln2/F;",
            ")",
            "Ln2/G;"
        }
    .end annotation

    .line 1
    new-instance v0, Ln2/G;

    .line 2
    .line 3
    const/4 v3, 0x1

    .line 4
    move-object v1, p1

    .line 5
    move v2, p2

    .line 6
    move-object v4, p3

    .line 7
    move-object v5, p4

    .line 8
    invoke-direct/range {v0 .. v5}, Ln2/G;-><init>(Ln2/M;ZZLl2/m;Ln2/F;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method
