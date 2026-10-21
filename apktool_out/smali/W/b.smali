.class public final LW/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LW/f;


# virtual methods
.method public get(Lp/r;I)LN/n;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp/r;",
            "I)",
            "LN/n;"
        }
    .end annotation

    .line 2
    invoke-virtual {p1, p2}, Lp/r;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LN/n;

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lp/r;

    invoke-virtual {p0, p1, p2}, LW/b;->get(Lp/r;I)LN/n;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic size(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lp/r;

    invoke-virtual {p0, p1}, LW/b;->size(Lp/r;)I

    move-result p1

    return p1
.end method

.method public size(Lp/r;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp/r;",
            ")I"
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Lp/r;->size()I

    move-result p1

    return p1
.end method
