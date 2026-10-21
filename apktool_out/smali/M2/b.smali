.class public final LM2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field public final a:Landroid/animation/TimeInterpolator;

.field public b:[F


# direct methods
.method public varargs constructor <init>(Landroid/animation/TimeInterpolator;[F)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LM2/b;->a:Landroid/animation/TimeInterpolator;

    .line 5
    .line 6
    iput-object p2, p0, LM2/b;->b:[F

    .line 7
    .line 8
    return-void
.end method

.method public static varargs easeInOut([F)LM2/b;
    .locals 3

    .line 1
    new-instance v0, LM2/b;

    .line 2
    .line 3
    invoke-static {}, LM2/a;->inOut()Landroid/view/animation/Interpolator;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    new-array v2, v2, [F

    .line 9
    .line 10
    invoke-direct {v0, v1, v2}, LM2/b;-><init>(Landroid/animation/TimeInterpolator;[F)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p0}, LM2/b;->setFractions([F)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public static varargs pathInterpolator(FFFF[F)LM2/b;
    .locals 1

    .line 1
    new-instance v0, LM2/b;

    .line 2
    .line 3
    invoke-static {p0, p1, p2, p3}, LM2/c;->create(FFFF)Landroid/view/animation/Interpolator;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/4 p1, 0x0

    .line 8
    new-array p1, p1, [F

    .line 9
    .line 10
    invoke-direct {v0, p0, p1}, LM2/b;-><init>(Landroid/animation/TimeInterpolator;[F)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p4}, LM2/b;->setFractions([F)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 7

    .line 1
    iget-object v0, p0, LM2/b;->b:[F

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    iget-object v1, p0, LM2/b;->a:Landroid/animation/TimeInterpolator;

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    if-le v0, v2, :cond_1

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    :cond_0
    iget-object v3, p0, LM2/b;->b:[F

    .line 11
    .line 12
    array-length v4, v3

    .line 13
    sub-int/2addr v4, v2

    .line 14
    if-ge v0, v4, :cond_1

    .line 15
    .line 16
    aget v4, v3, v0

    .line 17
    .line 18
    add-int/lit8 v0, v0, 0x1

    .line 19
    .line 20
    aget v3, v3, v0

    .line 21
    .line 22
    sub-float v5, v3, v4

    .line 23
    .line 24
    cmpl-float v6, p1, v4

    .line 25
    .line 26
    if-ltz v6, :cond_0

    .line 27
    .line 28
    cmpg-float v3, p1, v3

    .line 29
    .line 30
    if-gtz v3, :cond_0

    .line 31
    .line 32
    sub-float/2addr p1, v4

    .line 33
    div-float/2addr p1, v5

    .line 34
    invoke-interface {v1, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    mul-float/2addr p1, v5

    .line 39
    add-float/2addr p1, v4

    .line 40
    return p1

    .line 41
    :cond_1
    invoke-interface {v1, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    return p1
.end method

.method public varargs setFractions([F)V
    .locals 0

    .line 1
    iput-object p1, p0, LM2/b;->b:[F

    .line 2
    .line 3
    return-void
.end method
