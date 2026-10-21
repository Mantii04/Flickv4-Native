.class public abstract LK1/k;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static getSystemIdInfo(LK1/l;LK1/r;)LK1/j;
    .locals 1

    .line 1
    const-string v0, "id"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, LK1/r;->getWorkSpecId()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p1}, LK1/r;->getGeneration()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    check-cast p0, LK1/p;

    .line 15
    .line 16
    invoke-virtual {p0, v0, p1}, LK1/p;->getSystemIdInfo(Ljava/lang/String;I)LK1/j;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method public static removeSystemIdInfo(LK1/l;LK1/r;)V
    .locals 1

    .line 1
    const-string v0, "id"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, LK1/r;->getWorkSpecId()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p1}, LK1/r;->getGeneration()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    check-cast p0, LK1/p;

    .line 15
    .line 16
    invoke-virtual {p0, v0, p1}, LK1/p;->removeSystemIdInfo(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
