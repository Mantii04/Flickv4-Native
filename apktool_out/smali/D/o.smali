.class public final LD/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD/p;


# virtual methods
.method public getWeight(LJ/q;)I
    .locals 0

    .line 2
    invoke-virtual {p1}, LJ/q;->getWeight()I

    move-result p1

    return p1
.end method

.method public bridge synthetic getWeight(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, LJ/q;

    invoke-virtual {p0, p1}, LD/o;->getWeight(LJ/q;)I

    move-result p1

    return p1
.end method

.method public isItalic(LJ/q;)Z
    .locals 0

    .line 2
    invoke-virtual {p1}, LJ/q;->isItalic()Z

    move-result p1

    return p1
.end method

.method public bridge synthetic isItalic(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, LJ/q;

    invoke-virtual {p0, p1}, LD/o;->isItalic(LJ/q;)Z

    move-result p1

    return p1
.end method
