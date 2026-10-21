.class public final LT4/b;
.super Lm1/I;
.source "SourceFile"


# virtual methods
.method public calculateDtToFit(IIIII)I
    .locals 0

    .line 1
    const/4 p5, 0x2

    .line 2
    invoke-static {p4, p3, p5, p3}, Lb/c;->c(IIII)I

    .line 3
    .line 4
    .line 5
    move-result p3

    .line 6
    sub-int/2addr p2, p1

    .line 7
    div-int/2addr p2, p5

    .line 8
    add-int/2addr p2, p1

    .line 9
    sub-int/2addr p3, p2

    .line 10
    return p3
.end method
