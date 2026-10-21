.class public abstract LR5/p0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static fold(LR5/q0;Ljava/lang/Object;LH5/p;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LR5/q0;",
            "TR;",
            "LH5/p;",
            ")TR;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Ly5/h;->fold(Ly5/i;Ljava/lang/Object;LH5/p;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static get(LR5/q0;Ly5/j;)Ly5/i;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ly5/i;",
            ">(",
            "LR5/q0;",
            "Ly5/j;",
            ")TE;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Ly5/h;->get(Ly5/i;Ly5/j;)Ly5/i;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic invokeOnCompletion$default(LR5/q0;ZZLH5/l;ILjava/lang/Object;)LR5/V;
    .locals 0

    .line 1
    if-nez p5, :cond_2

    .line 2
    .line 3
    and-int/lit8 p5, p4, 0x1

    .line 4
    .line 5
    if-eqz p5, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    :cond_0
    and-int/lit8 p4, p4, 0x2

    .line 9
    .line 10
    if-eqz p4, :cond_1

    .line 11
    .line 12
    const/4 p2, 0x1

    .line 13
    :cond_1
    check-cast p0, LR5/A0;

    .line 14
    .line 15
    invoke-virtual {p0, p1, p2, p3}, LR5/A0;->invokeOnCompletion(ZZLH5/l;)LR5/V;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 21
    .line 22
    const-string p1, "Super calls with default arguments not supported in this target, function: invokeOnCompletion"

    .line 23
    .line 24
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p0
.end method

.method public static minusKey(LR5/q0;Ly5/j;)Ly5/k;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LR5/q0;",
            "Ly5/j;",
            ")",
            "Ly5/k;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Ly5/h;->minusKey(Ly5/i;Ly5/j;)Ly5/k;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static plus(LR5/q0;Ly5/k;)Ly5/k;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ly5/h;->plus(Ly5/i;Ly5/k;)Ly5/k;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method
