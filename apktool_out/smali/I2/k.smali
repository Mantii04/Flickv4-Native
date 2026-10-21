.class public final LI2/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final q:Landroid/view/animation/OvershootInterpolator;


# instance fields
.field public final a:Landroid/view/View;

.field public final b:Landroid/graphics/Paint;

.field public final c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public final h:Landroid/animation/ArgbEvaluator;

.field public i:F

.field public j:F

.field public k:F

.field public l:F

.field public m:F

.field public n:F

.field public o:F

.field public final p:Landroid/view/animation/AnimationSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, LI2/k;->q:Landroid/view/animation/OvershootInterpolator;

    .line 7
    .line 8
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/graphics/Paint;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, LI2/g;

    .line 5
    .line 6
    invoke-direct {v0, p0}, LI2/g;-><init>(LI2/k;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, LI2/k;->a:Landroid/view/View;

    .line 10
    .line 11
    iput-object p2, p0, LI2/k;->b:Landroid/graphics/Paint;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const/4 v2, 0x1

    .line 18
    invoke-virtual {p1, v2, p2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 19
    .line 20
    .line 21
    new-instance p2, Landroid/view/animation/AnimationSet;

    .line 22
    .line 23
    invoke-direct {p2, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 24
    .line 25
    .line 26
    iput-object p2, p0, LI2/k;->p:Landroid/view/animation/AnimationSet;

    .line 27
    .line 28
    sget-object v2, LI2/k;->q:Landroid/view/animation/OvershootInterpolator;

    .line 29
    .line 30
    invoke-virtual {p2, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 31
    .line 32
    .line 33
    new-instance p2, Landroid/animation/ArgbEvaluator;

    .line 34
    .line 35
    invoke-direct {p2}, Landroid/animation/ArgbEvaluator;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object p2, p0, LI2/k;->h:Landroid/animation/ArgbEvaluator;

    .line 39
    .line 40
    sget p2, Lcom/devpaul/materialfabmenu/R$dimen;->mat_fab_shadow_offset:I

    .line 41
    .line 42
    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    const/high16 v2, 0x3fc00000    # 1.5f

    .line 47
    .line 48
    mul-float/2addr p2, v2

    .line 49
    iput p2, p0, LI2/k;->l:F

    .line 50
    .line 51
    div-float/2addr p2, v2

    .line 52
    iput p2, p0, LI2/k;->k:F

    .line 53
    .line 54
    sget p2, Lcom/devpaul/materialfabmenu/R$dimen;->mat_fab_shadow_max_radius:I

    .line 55
    .line 56
    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 57
    .line 58
    .line 59
    move-result p2

    .line 60
    iput p2, p0, LI2/k;->n:F

    .line 61
    .line 62
    sget p2, Lcom/devpaul/materialfabmenu/R$dimen;->mat_fab_shadow_min_radius:I

    .line 63
    .line 64
    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 65
    .line 66
    .line 67
    move-result p2

    .line 68
    const/high16 v1, 0x40000000    # 2.0f

    .line 69
    .line 70
    div-float/2addr p2, v1

    .line 71
    iput p2, p0, LI2/k;->o:F

    .line 72
    .line 73
    const/high16 p2, -0x1000000

    .line 74
    .line 75
    iput p2, p0, LI2/k;->c:I

    .line 76
    .line 77
    const v1, 0x3dcccccd    # 0.1f

    .line 78
    .line 79
    .line 80
    invoke-static {p2, v1}, LI2/a;->getNewColorAlpha(IF)I

    .line 81
    .line 82
    .line 83
    move-result p2

    .line 84
    iput p2, p0, LI2/k;->d:I

    .line 85
    .line 86
    const p2, 0x3e4ccccd    # 0.2f

    .line 87
    .line 88
    .line 89
    iput p2, p0, LI2/k;->i:F

    .line 90
    .line 91
    iget p2, p0, LI2/k;->n:F

    .line 92
    .line 93
    iget v1, p0, LI2/k;->o:F

    .line 94
    .line 95
    const v2, 0x3e5e9bd3

    .line 96
    .line 97
    .line 98
    invoke-static {p2, v1, v2, v1}, Lb/c;->a(FFFF)F

    .line 99
    .line 100
    .line 101
    move-result p2

    .line 102
    iput p2, p0, LI2/k;->j:F

    .line 103
    .line 104
    iget p2, p0, LI2/k;->l:F

    .line 105
    .line 106
    iget v1, p0, LI2/k;->k:F

    .line 107
    .line 108
    invoke-static {p2, v1, v2, v1}, Lb/c;->a(FFFF)F

    .line 109
    .line 110
    .line 111
    move-result p2

    .line 112
    iput p2, p0, LI2/k;->m:F

    .line 113
    .line 114
    iget p2, p0, LI2/k;->c:I

    .line 115
    .line 116
    const v1, 0x3eee30fa

    .line 117
    .line 118
    .line 119
    invoke-static {p2, v1}, LI2/a;->getNewColorAlpha(IF)I

    .line 120
    .line 121
    .line 122
    move-result p2

    .line 123
    iput p2, p0, LI2/k;->d:I

    .line 124
    .line 125
    invoke-virtual {p1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 126
    .line 127
    .line 128
    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpl-float v1, p1, v0

    .line 3
    .line 4
    const v2, 0x3f6b851f    # 0.92f

    .line 5
    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    add-float/2addr p1, v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    cmpl-float v0, p1, v2

    .line 12
    .line 13
    if-lez v0, :cond_1

    .line 14
    .line 15
    move p1, v2

    .line 16
    :cond_1
    :goto_0
    iput p1, p0, LI2/k;->i:F

    .line 17
    .line 18
    div-float/2addr p1, v2

    .line 19
    const v0, 0x3e99999a    # 0.3f

    .line 20
    .line 21
    .line 22
    mul-float/2addr v0, p1

    .line 23
    const v1, 0x3ecccccd    # 0.4f

    .line 24
    .line 25
    .line 26
    add-float/2addr v0, v1

    .line 27
    iget v1, p0, LI2/k;->n:F

    .line 28
    .line 29
    iget v2, p0, LI2/k;->o:F

    .line 30
    .line 31
    invoke-static {v1, v2, p1, v2}, Lb/c;->a(FFFF)F

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    iput v1, p0, LI2/k;->j:F

    .line 36
    .line 37
    iget v1, p0, LI2/k;->l:F

    .line 38
    .line 39
    iget v2, p0, LI2/k;->k:F

    .line 40
    .line 41
    invoke-static {v1, v2, p1, v2}, Lb/c;->a(FFFF)F

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    iput p1, p0, LI2/k;->m:F

    .line 46
    .line 47
    iget p1, p0, LI2/k;->c:I

    .line 48
    .line 49
    invoke-static {p1, v0}, LI2/a;->getNewColorAlpha(IF)I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    iput p1, p0, LI2/k;->d:I

    .line 54
    .line 55
    return-void
.end method

.method public onDraw(Landroid/graphics/Paint;)V
    .locals 4

    .line 1
    iget p1, p0, LI2/k;->j:F

    .line 2
    .line 3
    iget v0, p0, LI2/k;->m:F

    .line 4
    .line 5
    iget v1, p0, LI2/k;->d:I

    .line 6
    .line 7
    iget-object v2, p0, LI2/k;->b:Landroid/graphics/Paint;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-virtual {v2, p1, v3, v0, v1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 11
    .line 12
    .line 13
    iget p1, p0, LI2/k;->g:I

    .line 14
    .line 15
    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    invoke-static {p1}, LM/F;->getActionMasked(Landroid/view/MotionEvent;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget-object v0, p0, LI2/k;->a:Landroid/view/View;

    .line 6
    .line 7
    iget-object v1, p0, LI2/k;->p:Landroid/view/animation/AnimationSet;

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    if-eq p1, v2, :cond_0

    .line 13
    .line 14
    const/4 v3, 0x3

    .line 15
    if-eq p1, v3, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    return p1

    .line 19
    :cond_0
    new-instance p1, LI2/m;

    .line 20
    .line 21
    new-instance v3, LI2/i;

    .line 22
    .line 23
    invoke-direct {v3, p0}, LI2/i;-><init>(LI2/k;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p1, v3}, LI2/m;-><init>(LI2/l;)V

    .line 27
    .line 28
    .line 29
    new-instance v3, LI2/j;

    .line 30
    .line 31
    invoke-direct {v3, p0}, LI2/j;-><init>(LI2/k;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Landroid/view/animation/Animation;->cancel()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, p1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 51
    .line 52
    .line 53
    return v2

    .line 54
    :cond_1
    new-instance p1, LI2/m;

    .line 55
    .line 56
    new-instance v3, LI2/h;

    .line 57
    .line 58
    invoke-direct {v3, p0}, LI2/h;-><init>(LI2/k;)V

    .line 59
    .line 60
    .line 61
    invoke-direct {p1, v3}, LI2/m;-><init>(LI2/l;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1}, Landroid/view/animation/Animation;->cancel()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, p1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 78
    .line 79
    .line 80
    return v2
.end method

.method public setAnimationDuration(J)V
    .locals 1

    .line 1
    iget-object v0, p0, LI2/k;->p:Landroid/view/animation/AnimationSet;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setNormalColor(I)V
    .locals 0

    .line 1
    iput p1, p0, LI2/k;->e:I

    .line 2
    .line 3
    iput p1, p0, LI2/k;->g:I

    .line 4
    .line 5
    return-void
.end method

.method public setPressedColor(I)V
    .locals 0

    .line 1
    iput p1, p0, LI2/k;->f:I

    .line 2
    .line 3
    return-void
.end method

.method public setShadowLimits(FFFF)V
    .locals 0

    .line 1
    iput p1, p0, LI2/k;->k:F

    .line 2
    .line 3
    iput p1, p0, LI2/k;->m:F

    .line 4
    .line 5
    iput p4, p0, LI2/k;->n:F

    .line 6
    .line 7
    iput p3, p0, LI2/k;->o:F

    .line 8
    .line 9
    iput p2, p0, LI2/k;->l:F

    .line 10
    .line 11
    const p1, 0x3e4ccccd    # 0.2f

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1}, LI2/k;->a(F)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, LI2/k;->a:Landroid/view/View;

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 20
    .line 21
    .line 22
    return-void
.end method
