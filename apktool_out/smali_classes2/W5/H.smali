.class public abstract LW5/H;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final getAVAILABLE_PROCESSORS()I
    .locals 1

    .line 1
    invoke-static {}, LW5/I;->getAVAILABLE_PROCESSORS()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public static final systemProp(Ljava/lang/String;III)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, LW5/J;->systemProp(Ljava/lang/String;III)I

    move-result p0

    return p0
.end method

.method public static final systemProp(Ljava/lang/String;JJJ)J
    .locals 0

    .line 2
    invoke-static/range {p0 .. p6}, LW5/J;->systemProp(Ljava/lang/String;JJJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final systemProp(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 3
    invoke-static {p0}, LW5/I;->systemProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final systemProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 4
    invoke-static {p0, p1}, LW5/J;->systemProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final systemProp(Ljava/lang/String;Z)Z
    .locals 0

    .line 5
    invoke-static {p0, p1}, LW5/J;->systemProp(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static synthetic systemProp$default(Ljava/lang/String;IIIILjava/lang/Object;)I
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, LW5/J;->systemProp$default(Ljava/lang/String;IIIILjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static synthetic systemProp$default(Ljava/lang/String;JJJILjava/lang/Object;)J
    .locals 0

    .line 2
    invoke-static/range {p0 .. p8}, LW5/J;->systemProp$default(Ljava/lang/String;JJJILjava/lang/Object;)J

    move-result-wide p0

    return-wide p0
.end method
