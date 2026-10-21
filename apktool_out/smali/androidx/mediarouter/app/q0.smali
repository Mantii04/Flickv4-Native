.class public final Landroidx/mediarouter/app/q0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/graphics/drawable/BitmapDrawable;

.field public b:F

.field public final c:Landroid/graphics/Rect;

.field public d:Landroid/view/animation/Interpolator;

.field public e:J

.field public final f:Landroid/graphics/Rect;

.field public g:I

.field public h:F

.field public i:F

.field public j:J

.field public k:Z

.field public l:Z

.field public m:Landroidx/mediarouter/app/p0;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/BitmapDrawable;Landroid/graphics/Rect;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/high16 v0, 0x3f800000    # 1.0f

    .line 5
    .line 6
    iput v0, p0, Landroidx/mediarouter/app/q0;->b:F

    .line 7
    .line 8
    iput v0, p0, Landroidx/mediarouter/app/q0;->h:F

    .line 9
    .line 10
    iput v0, p0, Landroidx/mediarouter/app/q0;->i:F

    .line 11
    .line 12
    iput-object p1, p0, Landroidx/mediarouter/app/q0;->a:Landroid/graphics/drawable/BitmapDrawable;

    .line 13
    .line 14
    iput-object p2, p0, Landroidx/mediarouter/app/q0;->f:Landroid/graphics/Rect;

    .line 15
    .line 16
    new-instance v0, Landroid/graphics/Rect;

    .line 17
    .line 18
    invoke-direct {v0, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Landroidx/mediarouter/app/q0;->c:Landroid/graphics/Rect;

    .line 22
    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    iget p2, p0, Landroidx/mediarouter/app/q0;->b:F

    .line 26
    .line 27
    const/high16 v1, 0x437f0000    # 255.0f

    .line 28
    .line 29
    mul-float/2addr p2, v1

    .line 30
    float-to-int p2, p2

    .line 31
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void
.end method


# virtual methods
.method public getBitmapDrawable()Landroid/graphics/drawable/BitmapDrawable;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/app/q0;->a:Landroid/graphics/drawable/BitmapDrawable;

    .line 2
    .line 3
    return-object v0
.end method

.method public isAnimationStarted()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/mediarouter/app/q0;->k:Z

    .line 2
    .line 3
    return v0
.end method

.method public setAlphaAnimation(FF)Landroidx/mediarouter/app/q0;
    .locals 0

    .line 1
    iput p1, p0, Landroidx/mediarouter/app/q0;->h:F

    .line 2
    .line 3
    iput p2, p0, Landroidx/mediarouter/app/q0;->i:F

    .line 4
    .line 5
    return-object p0
.end method

.method public setAnimationEndListener(Landroidx/mediarouter/app/p0;)Landroidx/mediarouter/app/q0;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/mediarouter/app/q0;->m:Landroidx/mediarouter/app/p0;

    .line 2
    .line 3
    return-object p0
.end method

.method public setDuration(J)Landroidx/mediarouter/app/q0;
    .locals 0

    .line 1
    iput-wide p1, p0, Landroidx/mediarouter/app/q0;->e:J

    .line 2
    .line 3
    return-object p0
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)Landroidx/mediarouter/app/q0;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/mediarouter/app/q0;->d:Landroid/view/animation/Interpolator;

    .line 2
    .line 3
    return-object p0
.end method

.method public setTranslateYAnimation(I)Landroidx/mediarouter/app/q0;
    .locals 0

    .line 1
    iput p1, p0, Landroidx/mediarouter/app/q0;->g:I

    .line 2
    .line 3
    return-object p0
.end method

.method public startAnimation(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroidx/mediarouter/app/q0;->j:J

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Landroidx/mediarouter/app/q0;->k:Z

    .line 5
    .line 6
    return-void
.end method

.method public stopAnimation()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/mediarouter/app/q0;->k:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Landroidx/mediarouter/app/q0;->l:Z

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/mediarouter/app/q0;->m:Landroidx/mediarouter/app/p0;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    check-cast v0, Landroidx/mediarouter/app/k;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/mediarouter/app/k;->onAnimationEnd()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public update(J)Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Landroidx/mediarouter/app/q0;->l:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return p1

    .line 7
    :cond_0
    iget-wide v0, p0, Landroidx/mediarouter/app/q0;->j:J

    .line 8
    .line 9
    sub-long/2addr p1, v0

    .line 10
    long-to-float p1, p1

    .line 11
    iget-wide v0, p0, Landroidx/mediarouter/app/q0;->e:J

    .line 12
    .line 13
    long-to-float p2, v0

    .line 14
    div-float/2addr p1, p2

    .line 15
    const/high16 p2, 0x3f800000    # 1.0f

    .line 16
    .line 17
    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    const/4 v0, 0x0

    .line 22
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    iget-boolean v1, p0, Landroidx/mediarouter/app/q0;->k:Z

    .line 27
    .line 28
    if-nez v1, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    move v0, p1

    .line 32
    :goto_0
    iget-object p1, p0, Landroidx/mediarouter/app/q0;->d:Landroid/view/animation/Interpolator;

    .line 33
    .line 34
    if-nez p1, :cond_2

    .line 35
    .line 36
    move p1, v0

    .line 37
    goto :goto_1

    .line 38
    :cond_2
    invoke-interface {p1, v0}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    :goto_1
    iget v1, p0, Landroidx/mediarouter/app/q0;->g:I

    .line 43
    .line 44
    int-to-float v1, v1

    .line 45
    mul-float/2addr v1, p1

    .line 46
    float-to-int v1, v1

    .line 47
    iget-object v2, p0, Landroidx/mediarouter/app/q0;->f:Landroid/graphics/Rect;

    .line 48
    .line 49
    iget v3, v2, Landroid/graphics/Rect;->top:I

    .line 50
    .line 51
    add-int/2addr v3, v1

    .line 52
    iget-object v4, p0, Landroidx/mediarouter/app/q0;->c:Landroid/graphics/Rect;

    .line 53
    .line 54
    iput v3, v4, Landroid/graphics/Rect;->top:I

    .line 55
    .line 56
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    .line 57
    .line 58
    add-int/2addr v2, v1

    .line 59
    iput v2, v4, Landroid/graphics/Rect;->bottom:I

    .line 60
    .line 61
    iget v1, p0, Landroidx/mediarouter/app/q0;->h:F

    .line 62
    .line 63
    iget v2, p0, Landroidx/mediarouter/app/q0;->i:F

    .line 64
    .line 65
    invoke-static {v2, v1, p1, v1}, Lb/c;->a(FFFF)F

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    iput p1, p0, Landroidx/mediarouter/app/q0;->b:F

    .line 70
    .line 71
    iget-object v1, p0, Landroidx/mediarouter/app/q0;->a:Landroid/graphics/drawable/BitmapDrawable;

    .line 72
    .line 73
    if-eqz v1, :cond_3

    .line 74
    .line 75
    const/high16 v2, 0x437f0000    # 255.0f

    .line 76
    .line 77
    mul-float/2addr p1, v2

    .line 78
    float-to-int p1, p1

    .line 79
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 83
    .line 84
    .line 85
    :cond_3
    iget-boolean p1, p0, Landroidx/mediarouter/app/q0;->k:Z

    .line 86
    .line 87
    const/4 v1, 0x1

    .line 88
    if-eqz p1, :cond_4

    .line 89
    .line 90
    cmpl-float p1, v0, p2

    .line 91
    .line 92
    if-ltz p1, :cond_4

    .line 93
    .line 94
    iput-boolean v1, p0, Landroidx/mediarouter/app/q0;->l:Z

    .line 95
    .line 96
    iget-object p1, p0, Landroidx/mediarouter/app/q0;->m:Landroidx/mediarouter/app/p0;

    .line 97
    .line 98
    if-eqz p1, :cond_4

    .line 99
    .line 100
    check-cast p1, Landroidx/mediarouter/app/k;

    .line 101
    .line 102
    invoke-virtual {p1}, Landroidx/mediarouter/app/k;->onAnimationEnd()V

    .line 103
    .line 104
    .line 105
    :cond_4
    iget-boolean p1, p0, Landroidx/mediarouter/app/q0;->l:Z

    .line 106
    .line 107
    xor-int/2addr p1, v1

    .line 108
    return p1
.end method
