.class public abstract LX2/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static retry(ILjava/lang/Object;LX2/a;LX2/c;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TInput:",
            "Ljava/lang/Object;",
            "TResult:",
            "Ljava/lang/Object;",
            "TException:",
            "Ljava/lang/Throwable;",
            ">(ITTInput;",
            "LX2/a;",
            "LX2/c;",
            ")TTResult;^TTException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ge p0, v0, :cond_0

    .line 3
    .line 4
    check-cast p2, LA0/a;

    .line 5
    .line 6
    invoke-virtual {p2, p1}, LA0/a;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :cond_0
    move-object v1, p2

    .line 12
    check-cast v1, LA0/a;

    .line 13
    .line 14
    invoke-virtual {v1, p1}, LA0/a;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    move-object v2, p3

    .line 19
    check-cast v2, LJ0/g;

    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    check-cast p1, LQ2/b;

    .line 25
    .line 26
    move-object v2, v1

    .line 27
    check-cast v2, LQ2/c;

    .line 28
    .line 29
    iget-object v3, v2, LQ2/c;->b:Ljava/net/URL;

    .line 30
    .line 31
    if-eqz v3, :cond_1

    .line 32
    .line 33
    const-string v4, "CctTransportBackend"

    .line 34
    .line 35
    const-string v5, "Following redirect to: %s"

    .line 36
    .line 37
    invoke-static {v4, v5, v3}, LW2/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    new-instance v3, LQ2/b;

    .line 41
    .line 42
    iget-object v4, p1, LQ2/b;->b:LR2/v;

    .line 43
    .line 44
    iget-object p1, p1, LQ2/b;->c:Ljava/lang/String;

    .line 45
    .line 46
    iget-object v2, v2, LQ2/c;->b:Ljava/net/URL;

    .line 47
    .line 48
    invoke-direct {v3, v2, v4, p1}, LQ2/b;-><init>(Ljava/net/URL;LR2/v;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    move-object p1, v3

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    const/4 p1, 0x0

    .line 54
    :goto_0
    if-eqz p1, :cond_2

    .line 55
    .line 56
    add-int/lit8 p0, p0, -0x1

    .line 57
    .line 58
    if-ge p0, v0, :cond_0

    .line 59
    .line 60
    :cond_2
    return-object v1
.end method
