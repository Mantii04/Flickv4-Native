.class public final LO2/b;
.super LN2/r;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, LN2/r;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public onBoundsChange(Landroid/graphics/Rect;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, LN2/r;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, LN2/q;->clipSquare(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    int-to-float v0, v0

    .line 13
    const v1, 0x3f19999a    # 0.6f

    .line 14
    .line 15
    .line 16
    mul-float/2addr v0, v1

    .line 17
    float-to-int v0, v0

    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {p0, v1}, LN2/r;->getChildAt(I)LN2/q;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iget v2, p1, Landroid/graphics/Rect;->right:I

    .line 24
    .line 25
    sub-int v3, v2, v0

    .line 26
    .line 27
    iget v4, p1, Landroid/graphics/Rect;->top:I

    .line 28
    .line 29
    add-int v5, v4, v0

    .line 30
    .line 31
    invoke-virtual {v1, v3, v4, v2, v5}, LN2/q;->setDrawBounds(IIII)V

    .line 32
    .line 33
    .line 34
    const/4 v1, 0x1

    .line 35
    invoke-virtual {p0, v1}, LN2/r;->getChildAt(I)LN2/q;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    iget v2, p1, Landroid/graphics/Rect;->right:I

    .line 40
    .line 41
    sub-int v3, v2, v0

    .line 42
    .line 43
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 44
    .line 45
    sub-int v0, p1, v0

    .line 46
    .line 47
    invoke-virtual {v1, v3, v0, v2, p1}, LN2/q;->setDrawBounds(IIII)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public varargs onChildCreated([LN2/q;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, LN2/r;->onChildCreated([LN2/q;)V

    .line 2
    .line 3
    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 5
    .line 6
    const/16 v1, 0x18

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    if-lt v0, v1, :cond_0

    .line 10
    .line 11
    aget-object p1, p1, v2

    .line 12
    .line 13
    const/16 v0, 0x3e8

    .line 14
    .line 15
    invoke-virtual {p1, v0}, LN2/q;->setAnimationDelay(I)LN2/q;

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    aget-object p1, p1, v2

    .line 20
    .line 21
    const/16 v0, -0x3e8

    .line 22
    .line 23
    invoke-virtual {p1, v0}, LN2/q;->setAnimationDelay(I)LN2/q;

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public onCreateAnimation()Landroid/animation/ValueAnimator;
    .locals 6

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [F

    .line 3
    .line 4
    fill-array-data v1, :array_0

    .line 5
    .line 6
    .line 7
    new-instance v2, LL2/g;

    .line 8
    .line 9
    invoke-direct {v2, p0}, LL2/g;-><init>(LN2/q;)V

    .line 10
    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    const/16 v5, 0x168

    .line 18
    .line 19
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    new-array v0, v0, [Ljava/lang/Integer;

    .line 24
    .line 25
    aput-object v4, v0, v3

    .line 26
    .line 27
    const/4 v3, 0x1

    .line 28
    aput-object v5, v0, v3

    .line 29
    .line 30
    invoke-virtual {v2, v1, v0}, LL2/g;->rotate([F[Ljava/lang/Integer;)LL2/g;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-wide/16 v1, 0x7d0

    .line 35
    .line 36
    invoke-virtual {v0, v1, v2}, LL2/g;->duration(J)LL2/g;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    .line 41
    .line 42
    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, LL2/g;->interpolator(Landroid/view/animation/Interpolator;)LL2/g;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0}, LL2/g;->build()Landroid/animation/ObjectAnimator;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    return-object v0

    .line 54
    nop

    .line 55
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onCreateChild()[LN2/q;
    .locals 4

    .line 1
    new-instance v0, LO2/a;

    .line 2
    .line 3
    invoke-direct {v0}, LO2/a;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, LO2/a;

    .line 7
    .line 8
    invoke-direct {v1}, LO2/a;-><init>()V

    .line 9
    .line 10
    .line 11
    const/4 v2, 0x2

    .line 12
    new-array v2, v2, [LN2/q;

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    aput-object v0, v2, v3

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    aput-object v1, v2, v0

    .line 19
    .line 20
    return-object v2
.end method
