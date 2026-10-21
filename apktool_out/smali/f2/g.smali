.class public abstract Lf2/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroid/graphics/PointF;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/PointF;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lf2/g;->a:Landroid/graphics/PointF;

    .line 7
    .line 8
    return-void
.end method

.method public static a(FF)I
    .locals 3

    .line 1
    float-to-int p0, p0

    .line 2
    float-to-int p1, p1

    .line 3
    div-int v0, p0, p1

    .line 4
    .line 5
    xor-int v1, p0, p1

    .line 6
    .line 7
    if-ltz v1, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    :goto_0
    rem-int v2, p0, p1

    .line 13
    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    add-int/lit8 v0, v0, -0x1

    .line 19
    .line 20
    :cond_1
    mul-int/2addr p1, v0

    .line 21
    sub-int/2addr p0, p1

    .line 22
    return p0
.end method

.method public static addPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/PointF;

    .line 2
    .line 3
    iget v1, p0, Landroid/graphics/PointF;->x:F

    .line 4
    .line 5
    iget v2, p1, Landroid/graphics/PointF;->x:F

    .line 6
    .line 7
    add-float/2addr v1, v2

    .line 8
    iget p0, p0, Landroid/graphics/PointF;->y:F

    .line 9
    .line 10
    iget p1, p1, Landroid/graphics/PointF;->y:F

    .line 11
    .line 12
    add-float/2addr p0, p1

    .line 13
    invoke-direct {v0, v1, p0}, Landroid/graphics/PointF;-><init>(FF)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public static clamp(FFF)F
    .locals 0

    .line 2
    invoke-static {p2, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method public static clamp(III)I
    .locals 0

    .line 1
    invoke-static {p2, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public static contains(FFF)Z
    .locals 0

    .line 1
    cmpl-float p1, p0, p1

    .line 2
    .line 3
    if-ltz p1, :cond_0

    .line 4
    .line 5
    cmpg-float p0, p0, p2

    .line 6
    .line 7
    if-gtz p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0
.end method

.method public static getPathFromData(La2/k;Landroid/graphics/Path;)V
    .locals 12

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, La2/k;->getInitialPoint()Landroid/graphics/PointF;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget v1, v0, Landroid/graphics/PointF;->x:F

    .line 9
    .line 10
    iget v2, v0, Landroid/graphics/PointF;->y:F

    .line 11
    .line 12
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 13
    .line 14
    .line 15
    sget-object v1, Lf2/g;->a:Landroid/graphics/PointF;

    .line 16
    .line 17
    iget v2, v0, Landroid/graphics/PointF;->x:F

    .line 18
    .line 19
    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 20
    .line 21
    invoke-virtual {v1, v2, v0}, Landroid/graphics/PointF;->set(FF)V

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    :goto_0
    invoke-virtual {p0}, La2/k;->getCurves()Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-ge v0, v2, :cond_1

    .line 34
    .line 35
    invoke-virtual {p0}, La2/k;->getCurves()Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    check-cast v2, LY1/a;

    .line 44
    .line 45
    invoke-virtual {v2}, LY1/a;->getControlPoint1()Landroid/graphics/PointF;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {v2}, LY1/a;->getControlPoint2()Landroid/graphics/PointF;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    invoke-virtual {v2}, LY1/a;->getVertex()Landroid/graphics/PointF;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v3, v1}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    if-eqz v5, :cond_0

    .line 62
    .line 63
    invoke-virtual {v4, v2}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    if-eqz v5, :cond_0

    .line 68
    .line 69
    iget v3, v2, Landroid/graphics/PointF;->x:F

    .line 70
    .line 71
    iget v4, v2, Landroid/graphics/PointF;->y:F

    .line 72
    .line 73
    invoke-virtual {p1, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 74
    .line 75
    .line 76
    move-object v5, p1

    .line 77
    goto :goto_1

    .line 78
    :cond_0
    iget v6, v3, Landroid/graphics/PointF;->x:F

    .line 79
    .line 80
    iget v7, v3, Landroid/graphics/PointF;->y:F

    .line 81
    .line 82
    iget v8, v4, Landroid/graphics/PointF;->x:F

    .line 83
    .line 84
    iget v9, v4, Landroid/graphics/PointF;->y:F

    .line 85
    .line 86
    iget v10, v2, Landroid/graphics/PointF;->x:F

    .line 87
    .line 88
    iget v11, v2, Landroid/graphics/PointF;->y:F

    .line 89
    .line 90
    move-object v5, p1

    .line 91
    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 92
    .line 93
    .line 94
    :goto_1
    iget p1, v2, Landroid/graphics/PointF;->x:F

    .line 95
    .line 96
    iget v2, v2, Landroid/graphics/PointF;->y:F

    .line 97
    .line 98
    invoke-virtual {v1, p1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 99
    .line 100
    .line 101
    add-int/lit8 v0, v0, 0x1

    .line 102
    .line 103
    move-object p1, v5

    .line 104
    goto :goto_0

    .line 105
    :cond_1
    move-object v5, p1

    .line 106
    invoke-virtual {p0}, La2/k;->isClosed()Z

    .line 107
    .line 108
    .line 109
    move-result p0

    .line 110
    if-eqz p0, :cond_2

    .line 111
    .line 112
    invoke-virtual {v5}, Landroid/graphics/Path;->close()V

    .line 113
    .line 114
    .line 115
    :cond_2
    return-void
.end method

.method public static lerp(DDD)D
    .locals 0

    .line 2
    sub-double/2addr p2, p0

    mul-double/2addr p2, p4

    add-double/2addr p2, p0

    return-wide p2
.end method

.method public static lerp(FFF)F
    .locals 0

    .line 1
    invoke-static {p1, p0, p2, p0}, Lb/c;->a(FFFF)F

    move-result p0

    return p0
.end method

.method public static lerp(IIF)I
    .locals 1

    .line 3
    int-to-float v0, p0

    sub-int/2addr p1, p0

    int-to-float p0, p1

    mul-float/2addr p2, p0

    add-float/2addr p2, v0

    float-to-int p0, p2

    return p0
.end method

.method public static resolveKeyPath(LY1/e;ILjava/util/List;LY1/e;LV1/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LY1/e;",
            "I",
            "Ljava/util/List<",
            "LY1/e;",
            ">;",
            "LY1/e;",
            "LV1/l;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p4}, LV1/d;->getName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0, p1}, LY1/e;->fullyResolvesTo(Ljava/lang/String;I)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-interface {p4}, LV1/d;->getName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p3, p0}, LY1/e;->addKey(Ljava/lang/String;)LY1/e;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0, p4}, LY1/e;->resolve(LY1/f;)LY1/e;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method
