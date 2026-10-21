.class public final Landroidx/leanback/widget/A;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/TimeAnimator$TimeListener;


# instance fields
.field public final a:Landroid/view/View;

.field public final b:I

.field public final c:Landroidx/leanback/widget/j1;

.field public final d:F

.field public e:F

.field public f:F

.field public g:F

.field public final h:Landroid/animation/TimeAnimator;

.field public final i:Landroid/view/animation/AccelerateDecelerateInterpolator;

.field public final j:Li0/a;


# direct methods
.method public constructor <init>(Landroid/view/View;FZ)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroidx/leanback/widget/A;->e:F

    .line 6
    .line 7
    new-instance v0, Landroid/animation/TimeAnimator;

    .line 8
    .line 9
    invoke-direct {v0}, Landroid/animation/TimeAnimator;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Landroidx/leanback/widget/A;->h:Landroid/animation/TimeAnimator;

    .line 13
    .line 14
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 15
    .line 16
    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Landroidx/leanback/widget/A;->i:Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 20
    .line 21
    iput-object p1, p0, Landroidx/leanback/widget/A;->a:Landroid/view/View;

    .line 22
    .line 23
    const/16 v1, 0x96

    .line 24
    .line 25
    iput v1, p0, Landroidx/leanback/widget/A;->b:I

    .line 26
    .line 27
    const/high16 v1, 0x3f800000    # 1.0f

    .line 28
    .line 29
    sub-float/2addr p2, v1

    .line 30
    iput p2, p0, Landroidx/leanback/widget/A;->d:F

    .line 31
    .line 32
    instance-of p2, p1, Landroidx/leanback/widget/j1;

    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    if-eqz p2, :cond_0

    .line 36
    .line 37
    move-object p2, p1

    .line 38
    check-cast p2, Landroidx/leanback/widget/j1;

    .line 39
    .line 40
    iput-object p2, p0, Landroidx/leanback/widget/A;->c:Landroidx/leanback/widget/j1;

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    iput-object v1, p0, Landroidx/leanback/widget/A;->c:Landroidx/leanback/widget/j1;

    .line 44
    .line 45
    :goto_0
    invoke-virtual {v0, p0}, Landroid/animation/TimeAnimator;->setTimeListener(Landroid/animation/TimeAnimator$TimeListener;)V

    .line 46
    .line 47
    .line 48
    if-eqz p3, :cond_1

    .line 49
    .line 50
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-static {p1}, Li0/a;->createDefault(Landroid/content/Context;)Li0/a;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    iput-object p1, p0, Landroidx/leanback/widget/A;->j:Li0/a;

    .line 59
    .line 60
    return-void

    .line 61
    :cond_1
    iput-object v1, p0, Landroidx/leanback/widget/A;->j:Li0/a;

    .line 62
    .line 63
    return-void
.end method


# virtual methods
.method public final a(ZZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/A;->h:Landroid/animation/TimeAnimator;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    const/high16 p1, 0x3f800000    # 1.0f

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    :goto_0
    if-eqz p2, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/A;->b(F)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    iget p2, p0, Landroidx/leanback/widget/A;->e:F

    .line 19
    .line 20
    cmpl-float v1, p2, p1

    .line 21
    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    iput p2, p0, Landroidx/leanback/widget/A;->f:F

    .line 25
    .line 26
    sub-float/2addr p1, p2

    .line 27
    iput p1, p0, Landroidx/leanback/widget/A;->g:F

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->start()V

    .line 30
    .line 31
    .line 32
    :cond_2
    return-void
.end method

.method public final b(F)V
    .locals 3

    .line 1
    iput p1, p0, Landroidx/leanback/widget/A;->e:F

    .line 2
    .line 3
    iget v0, p0, Landroidx/leanback/widget/A;->d:F

    .line 4
    .line 5
    mul-float/2addr v0, p1

    .line 6
    const/high16 v1, 0x3f800000    # 1.0f

    .line 7
    .line 8
    add-float/2addr v0, v1

    .line 9
    iget-object v1, p0, Landroidx/leanback/widget/A;->a:Landroid/view/View;

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Landroidx/leanback/widget/A;->c:Landroidx/leanback/widget/j1;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Landroidx/leanback/widget/j1;->setShadowFocusLevel(F)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-static {v1, p1}, Landroidx/leanback/widget/m1;->setNoneWrapperShadowFocusLevel(Landroid/view/View;F)V

    .line 26
    .line 27
    .line 28
    :goto_0
    iget-object v2, p0, Landroidx/leanback/widget/A;->j:Li0/a;

    .line 29
    .line 30
    if-eqz v2, :cond_2

    .line 31
    .line 32
    invoke-virtual {v2, p1}, Li0/a;->setActiveLevel(F)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Li0/a;->getPaint()Landroid/graphics/Paint;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    invoke-virtual {v0, p1}, Landroidx/leanback/widget/j1;->setOverlayColor(I)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_1
    invoke-static {v1, p1}, Landroidx/leanback/widget/m1;->setNoneWrapperOverlayColor(Landroid/view/View;I)V

    .line 50
    .line 51
    .line 52
    :cond_2
    return-void
.end method

.method public onTimeUpdate(Landroid/animation/TimeAnimator;JJ)V
    .locals 0

    .line 1
    iget p1, p0, Landroidx/leanback/widget/A;->b:I

    .line 2
    .line 3
    int-to-long p4, p1

    .line 4
    cmp-long p4, p2, p4

    .line 5
    .line 6
    if-ltz p4, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Landroidx/leanback/widget/A;->h:Landroid/animation/TimeAnimator;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/animation/Animator;->end()V

    .line 11
    .line 12
    .line 13
    const/high16 p1, 0x3f800000    # 1.0f

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    long-to-double p2, p2

    .line 17
    int-to-double p4, p1

    .line 18
    div-double/2addr p2, p4

    .line 19
    double-to-float p1, p2

    .line 20
    :goto_0
    iget-object p2, p0, Landroidx/leanback/widget/A;->i:Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 21
    .line 22
    if-eqz p2, :cond_1

    .line 23
    .line 24
    invoke-virtual {p2, p1}, Landroid/view/animation/AccelerateDecelerateInterpolator;->getInterpolation(F)F

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    :cond_1
    iget p2, p0, Landroidx/leanback/widget/A;->f:F

    .line 29
    .line 30
    iget p3, p0, Landroidx/leanback/widget/A;->g:F

    .line 31
    .line 32
    mul-float/2addr p1, p3

    .line 33
    add-float/2addr p1, p2

    .line 34
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/A;->b(F)V

    .line 35
    .line 36
    .line 37
    return-void
.end method
