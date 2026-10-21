.class public final Lg1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public compare(Lg1/b;Lg1/b;)I
    .locals 0

    .line 2
    invoke-virtual {p2}, Lg1/b;->b()I

    move-result p2

    invoke-virtual {p1}, Lg1/b;->b()I

    move-result p1

    sub-int/2addr p2, p1

    return p2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lg1/b;

    check-cast p2, Lg1/b;

    invoke-virtual {p0, p1, p2}, Lg1/a;->compare(Lg1/b;Lg1/b;)I

    move-result p1

    return p1
.end method
