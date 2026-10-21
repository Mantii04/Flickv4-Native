.class public final Lr/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lr/m;

    check-cast p2, Lr/m;

    invoke-virtual {p0, p1, p2}, Lr/j;->compare(Lr/m;Lr/m;)I

    move-result p1

    return p1
.end method

.method public compare(Lr/m;Lr/m;)I
    .locals 0

    .line 2
    iget p1, p1, Lr/m;->e:I

    iget p2, p2, Lr/m;->e:I

    sub-int/2addr p1, p2

    return p1
.end method
