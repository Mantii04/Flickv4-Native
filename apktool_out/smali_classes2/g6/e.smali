.class public abstract Lg6/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static connect(Ljava/lang/String;)Lg6/d;
    .locals 0

    .line 1
    invoke-static {p0}, Lh6/h;->connect(Ljava/lang/String;)Lg6/d;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static parse(Ljava/lang/String;)Lj6/h;
    .locals 1

    .line 2
    const-string v0, ""

    invoke-static {p0, v0}, Lk6/e;->parse(Ljava/lang/String;Ljava/lang/String;)Lj6/h;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/String;Ljava/lang/String;Lk6/e;)Lj6/h;
    .locals 0

    .line 1
    invoke-virtual {p2, p0, p1}, Lk6/e;->parseInput(Ljava/lang/String;Ljava/lang/String;)Lj6/h;

    move-result-object p0

    return-object p0
.end method
