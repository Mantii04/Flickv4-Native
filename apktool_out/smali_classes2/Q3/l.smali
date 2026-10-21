.class public final LQ3/l;
.super LQ3/n;
.source "SourceFile"


# direct methods
.method public static a(I)LQ3/n;
    .locals 0

    .line 1
    if-gez p0, :cond_0

    .line 2
    .line 3
    sget-object p0, LQ3/n;->b:LQ3/m;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    if-lez p0, :cond_1

    .line 7
    .line 8
    sget-object p0, LQ3/n;->c:LQ3/m;

    .line 9
    .line 10
    return-object p0

    .line 11
    :cond_1
    sget-object p0, LQ3/n;->a:LQ3/l;

    .line 12
    .line 13
    return-object p0
.end method


# virtual methods
.method public compare(II)LQ3/n;
    .locals 0

    .line 2
    invoke-static {p1, p2}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    invoke-static {p1}, LQ3/l;->a(I)LQ3/n;

    move-result-object p1

    return-object p1
.end method

.method public compare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)LQ3/n;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;",
            "Ljava/util/Comparator<",
            "TT;>;)",
            "LQ3/n;"
        }
    .end annotation

    .line 1
    invoke-interface {p3, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, LQ3/l;->a(I)LQ3/n;

    move-result-object p1

    return-object p1
.end method

.method public compareFalseFirst(ZZ)LQ3/n;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Boolean;->compare(ZZ)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-static {p1}, LQ3/l;->a(I)LQ3/n;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public compareTrueFirst(ZZ)LQ3/n;
    .locals 0

    .line 1
    invoke-static {p2, p1}, Ljava/lang/Boolean;->compare(ZZ)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-static {p1}, LQ3/l;->a(I)LQ3/n;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public result()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method
