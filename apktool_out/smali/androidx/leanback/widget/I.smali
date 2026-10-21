.class public abstract Landroidx/leanback/widget/I;
.super Lm1/I;
.source "SourceFile"


# instance fields
.field public q:Z

.field public final synthetic r:Landroidx/leanback/widget/GridLayoutManager;


# direct methods
.method public constructor <init>(Landroidx/leanback/widget/GridLayoutManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/leanback/widget/I;->r:Landroidx/leanback/widget/GridLayoutManager;

    .line 2
    .line 3
    iget-object p1, p1, Landroidx/leanback/widget/GridLayoutManager;->r:Landroidx/leanback/widget/t;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-direct {p0, p1}, Lm1/I;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lm1/I;->calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget-object v0, p0, Landroidx/leanback/widget/I;->r:Landroidx/leanback/widget/GridLayoutManager;

    .line 6
    .line 7
    iget v0, v0, Landroidx/leanback/widget/GridLayoutManager;->p:F

    .line 8
    .line 9
    mul-float/2addr p1, v0

    .line 10
    return p1
.end method

.method public calculateTimeForScrolling(I)I
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lm1/I;->calculateTimeForScrolling(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Landroidx/leanback/widget/I;->r:Landroidx/leanback/widget/GridLayoutManager;

    .line 6
    .line 7
    iget-object v2, v1, Landroidx/leanback/widget/GridLayoutManager;->Y:Landroidx/leanback/widget/C1;

    .line 8
    .line 9
    invoke-virtual {v2}, Landroidx/leanback/widget/C1;->mainAxis()Landroidx/leanback/widget/B1;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v2}, Landroidx/leanback/widget/B1;->getSize()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-lez v2, :cond_0

    .line 18
    .line 19
    iget-object v1, v1, Landroidx/leanback/widget/GridLayoutManager;->Y:Landroidx/leanback/widget/C1;

    .line 20
    .line 21
    invoke-virtual {v1}, Landroidx/leanback/widget/C1;->mainAxis()Landroidx/leanback/widget/B1;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Landroidx/leanback/widget/B1;->getSize()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    int-to-float v1, v1

    .line 30
    const/high16 v2, 0x41f00000    # 30.0f

    .line 31
    .line 32
    div-float/2addr v2, v1

    .line 33
    int-to-float p1, p1

    .line 34
    mul-float/2addr v2, p1

    .line 35
    int-to-float p1, v0

    .line 36
    cmpg-float p1, p1, v2

    .line 37
    .line 38
    if-gez p1, :cond_0

    .line 39
    .line 40
    float-to-int p1, v2

    .line 41
    return p1

    .line 42
    :cond_0
    return v0
.end method

.method public onStop()V
    .locals 3

    .line 1
    invoke-super {p0}, Lm1/I;->onStop()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Landroidx/leanback/widget/I;->q:Z

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/leanback/widget/I;->onStopInternal()V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Landroidx/leanback/widget/I;->r:Landroidx/leanback/widget/GridLayoutManager;

    .line 12
    .line 13
    iget-object v1, v0, Landroidx/leanback/widget/GridLayoutManager;->G:Landroidx/leanback/widget/I;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    if-ne v1, p0, :cond_1

    .line 17
    .line 18
    iput-object v2, v0, Landroidx/leanback/widget/GridLayoutManager;->G:Landroidx/leanback/widget/I;

    .line 19
    .line 20
    :cond_1
    iget-object v1, v0, Landroidx/leanback/widget/GridLayoutManager;->H:Landroidx/leanback/widget/K;

    .line 21
    .line 22
    if-ne v1, p0, :cond_2

    .line 23
    .line 24
    iput-object v2, v0, Landroidx/leanback/widget/GridLayoutManager;->H:Landroidx/leanback/widget/K;

    .line 25
    .line 26
    :cond_2
    return-void
.end method

.method public onStopInternal()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lm1/w0;->getTargetPosition()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lm1/w0;->findViewByPosition(I)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Landroidx/leanback/widget/I;->r:Landroidx/leanback/widget/GridLayoutManager;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Lm1/w0;->getTargetPosition()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-ltz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Lm1/w0;->getTargetPosition()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-virtual {v1, v0, v2}, Landroidx/leanback/widget/GridLayoutManager;->N(IZ)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void

    .line 28
    :cond_1
    iget v2, v1, Landroidx/leanback/widget/GridLayoutManager;->F:I

    .line 29
    .line 30
    invoke-virtual {p0}, Lm1/w0;->getTargetPosition()I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-eq v2, v3, :cond_2

    .line 35
    .line 36
    invoke-virtual {p0}, Lm1/w0;->getTargetPosition()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    iput v2, v1, Landroidx/leanback/widget/GridLayoutManager;->F:I

    .line 41
    .line 42
    :cond_2
    invoke-virtual {v1}, Lm1/i0;->hasFocus()Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_3

    .line 47
    .line 48
    iget v2, v1, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 49
    .line 50
    or-int/lit8 v2, v2, 0x20

    .line 51
    .line 52
    iput v2, v1, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 53
    .line 54
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 55
    .line 56
    .line 57
    iget v0, v1, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 58
    .line 59
    and-int/lit8 v0, v0, -0x21

    .line 60
    .line 61
    iput v0, v1, Landroidx/leanback/widget/GridLayoutManager;->C:I

    .line 62
    .line 63
    :cond_3
    invoke-virtual {v1}, Landroidx/leanback/widget/GridLayoutManager;->n()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1}, Landroidx/leanback/widget/GridLayoutManager;->o()V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public onTargetFound(Landroid/view/View;Lm1/x0;Lm1/u0;)V
    .locals 2

    .line 1
    sget-object p2, Landroidx/leanback/widget/GridLayoutManager;->i0:[I

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/leanback/widget/I;->r:Landroidx/leanback/widget/GridLayoutManager;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, p1, v1, p2}, Landroidx/leanback/widget/GridLayoutManager;->v(Landroid/view/View;Landroid/view/View;[I)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    iget p1, v0, Landroidx/leanback/widget/GridLayoutManager;->s:I

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    const/4 v1, 0x0

    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    aget p1, p2, v1

    .line 19
    .line 20
    aget p2, p2, v0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    aget p1, p2, v0

    .line 24
    .line 25
    aget p2, p2, v1

    .line 26
    .line 27
    :goto_0
    mul-int v0, p1, p1

    .line 28
    .line 29
    mul-int v1, p2, p2

    .line 30
    .line 31
    add-int/2addr v1, v0

    .line 32
    int-to-double v0, v1

    .line 33
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 34
    .line 35
    .line 36
    move-result-wide v0

    .line 37
    double-to-int v0, v0

    .line 38
    invoke-virtual {p0, v0}, Lm1/I;->calculateTimeForDeceleration(I)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    iget-object v1, p0, Lm1/I;->j:Landroid/view/animation/DecelerateInterpolator;

    .line 43
    .line 44
    invoke-virtual {p3, p1, p2, v0, v1}, Lm1/u0;->update(IIILandroid/view/animation/Interpolator;)V

    .line 45
    .line 46
    .line 47
    :cond_1
    return-void
.end method
