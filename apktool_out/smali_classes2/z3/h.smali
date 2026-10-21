.class public final Lz3/h;
.super Lz3/a;
.source "SourceFile"


# instance fields
.field public final g:F

.field public final h:F


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lz3/a;-><init>(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    sget v0, Lcom/google/android/material/R$dimen;->m3_back_progress_bottom_container_max_scale_x_distance:I

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iput v0, p0, Lz3/h;->g:F

    .line 15
    .line 16
    sget v0, Lcom/google/android/material/R$dimen;->m3_back_progress_bottom_container_max_scale_y_distance:I

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    iput p1, p0, Lz3/h;->h:F

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final a()Landroid/animation/AnimatorSet;
    .locals 9

    .line 1
    new-instance v0, Landroid/animation/AnimatorSet;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    .line 7
    .line 8
    const/high16 v2, 0x3f800000    # 1.0f

    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    new-array v4, v3, [F

    .line 12
    .line 13
    const/4 v5, 0x0

    .line 14
    aput v2, v4, v5

    .line 15
    .line 16
    iget-object v6, p0, Lz3/a;->b:Landroid/view/View;

    .line 17
    .line 18
    invoke-static {v6, v1, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    sget-object v4, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    .line 23
    .line 24
    new-array v7, v3, [F

    .line 25
    .line 26
    aput v2, v7, v5

    .line 27
    .line 28
    invoke-static {v6, v4, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    const/4 v7, 0x2

    .line 33
    new-array v7, v7, [Landroid/animation/Animator;

    .line 34
    .line 35
    aput-object v1, v7, v5

    .line 36
    .line 37
    aput-object v4, v7, v3

    .line 38
    .line 39
    invoke-virtual {v0, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 40
    .line 41
    .line 42
    instance-of v1, v6, Landroid/view/ViewGroup;

    .line 43
    .line 44
    if-eqz v1, :cond_0

    .line 45
    .line 46
    check-cast v6, Landroid/view/ViewGroup;

    .line 47
    .line 48
    move v1, v5

    .line 49
    :goto_0
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    if-ge v1, v4, :cond_0

    .line 54
    .line 55
    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    sget-object v7, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    .line 60
    .line 61
    new-array v8, v3, [F

    .line 62
    .line 63
    aput v2, v8, v5

    .line 64
    .line 65
    invoke-static {v4, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    new-array v7, v3, [Landroid/animation/Animator;

    .line 70
    .line 71
    aput-object v4, v7, v5

    .line 72
    .line 73
    invoke-virtual {v0, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 74
    .line 75
    .line 76
    add-int/2addr v1, v3

    .line 77
    goto :goto_0

    .line 78
    :cond_0
    new-instance v1, Lh0/b;

    .line 79
    .line 80
    invoke-direct {v1}, Lh0/b;-><init>()V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 84
    .line 85
    .line 86
    return-object v0
.end method

.method public cancelBackProgress()V
    .locals 3

    .line 1
    invoke-super {p0}, Lz3/a;->onCancelBackProgress()Landroidx/activity/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Lz3/h;->a()Landroid/animation/AnimatorSet;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget v1, p0, Lz3/a;->e:I

    .line 13
    .line 14
    int-to-long v1, v1

    .line 15
    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public finishBackProgressNotPersistent(Landroidx/activity/c;Landroid/animation/Animator$AnimatorListener;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lz3/a;->b:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    int-to-float v1, v1

    .line 8
    invoke-virtual {v0}, Landroid/view/View;->getScaleY()F

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    mul-float/2addr v2, v1

    .line 13
    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    new-array v3, v3, [F

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    aput v2, v3, v4

    .line 20
    .line 21
    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    new-instance v1, Lh0/b;

    .line 26
    .line 27
    invoke-direct {v1}, Lh0/b;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Landroidx/activity/c;->getProgress()F

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    iget v1, p0, Lz3/a;->c:I

    .line 38
    .line 39
    iget v2, p0, Lz3/a;->d:I

    .line 40
    .line 41
    invoke-static {v1, v2, p1}, Lg3/a;->lerp(IIF)I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    int-to-long v1, p1

    .line 46
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 47
    .line 48
    .line 49
    new-instance p1, Lz3/g;

    .line 50
    .line 51
    invoke-direct {p1, p0}, Lz3/g;-><init>(Lz3/h;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 55
    .line 56
    .line 57
    if-eqz p2, :cond_0

    .line 58
    .line 59
    invoke-virtual {v0, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 60
    .line 61
    .line 62
    :cond_0
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public finishBackProgressPersistent(Landroidx/activity/c;Landroid/animation/Animator$AnimatorListener;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lz3/h;->a()Landroid/animation/AnimatorSet;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Landroidx/activity/c;->getProgress()F

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    iget v1, p0, Lz3/a;->c:I

    .line 10
    .line 11
    iget v2, p0, Lz3/a;->d:I

    .line 12
    .line 13
    invoke-static {v1, v2, p1}, Lg3/a;->lerp(IIF)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    int-to-long v1, p1

    .line 18
    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 19
    .line 20
    .line 21
    if-eqz p2, :cond_0

    .line 22
    .line 23
    invoke-virtual {v0, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public startBackProgress(Landroidx/activity/c;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lz3/a;->onStartBackProgress(Landroidx/activity/c;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public updateBackProgress(F)V
    .locals 7

    .line 3
    invoke-virtual {p0, p1}, Lz3/a;->interpolateProgress(F)F

    move-result p1

    .line 4
    iget-object v0, p0, Lz3/a;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    cmpg-float v4, v1, v3

    if-lez v4, :cond_2

    cmpg-float v4, v2, v3

    if-gtz v4, :cond_0

    goto :goto_2

    .line 6
    :cond_0
    iget v4, p0, Lz3/h;->g:F

    div-float/2addr v4, v1

    .line 7
    iget v1, p0, Lz3/h;->h:F

    div-float/2addr v1, v2

    .line 8
    invoke-static {v3, v4, p1}, Lg3/a;->lerp(FFF)F

    move-result v4

    .line 9
    invoke-static {v3, v1, p1}, Lg3/a;->lerp(FFF)F

    move-result p1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v4, v1, v4

    sub-float p1, v1, p1

    .line 10
    invoke-virtual {v0, v4}, Landroid/view/View;->setScaleX(F)V

    .line 11
    invoke-virtual {v0, v2}, Landroid/view/View;->setPivotY(F)V

    .line 12
    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleY(F)V

    .line 13
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    .line 14
    check-cast v0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    .line 15
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 16
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 17
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setPivotY(F)V

    cmpl-float v6, p1, v3

    if-eqz v6, :cond_1

    div-float v6, v4, p1

    goto :goto_1

    :cond_1
    move v6, v1

    .line 18
    :goto_1
    invoke-virtual {v5, v6}, Landroid/view/View;->setScaleY(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method public updateBackProgress(Landroidx/activity/c;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lz3/a;->onUpdateBackProgress(Landroidx/activity/c;)Landroidx/activity/c;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroidx/activity/c;->getProgress()F

    move-result p1

    invoke-virtual {p0, p1}, Lz3/h;->updateBackProgress(F)V

    return-void
.end method
