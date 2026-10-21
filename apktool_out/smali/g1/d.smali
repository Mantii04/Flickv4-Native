.class public final Lg1/d;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public isAllowed(I[F)Z
    .locals 3

    .line 1
    const/4 p1, 0x2

    .line 2
    aget p1, p2, p1

    .line 3
    .line 4
    const v0, 0x3f733333    # 0.95f

    .line 5
    .line 6
    .line 7
    cmpl-float v0, p1, v0

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-ltz v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const v0, 0x3d4ccccd    # 0.05f

    .line 14
    .line 15
    .line 16
    cmpg-float p1, p1, v0

    .line 17
    .line 18
    if-gtz p1, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    aget p1, p2, v1

    .line 22
    .line 23
    const/high16 v0, 0x41200000    # 10.0f

    .line 24
    .line 25
    cmpl-float v0, p1, v0

    .line 26
    .line 27
    const/4 v2, 0x1

    .line 28
    if-ltz v0, :cond_2

    .line 29
    .line 30
    const/high16 v0, 0x42140000    # 37.0f

    .line 31
    .line 32
    cmpg-float p1, p1, v0

    .line 33
    .line 34
    if-gtz p1, :cond_2

    .line 35
    .line 36
    aget p1, p2, v2

    .line 37
    .line 38
    const p2, 0x3f51eb85    # 0.82f

    .line 39
    .line 40
    .line 41
    cmpg-float p1, p1, p2

    .line 42
    .line 43
    if-gtz p1, :cond_2

    .line 44
    .line 45
    :goto_0
    return v1

    .line 46
    :cond_2
    return v2
.end method
