.class public final Lz3/j;
.super Lz3/a;
.source "SourceFile"


# instance fields
.field public final g:F

.field public final h:F

.field public final i:F


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
    sget v0, Lcom/google/android/material/R$dimen;->m3_back_progress_side_container_max_scale_x_distance_shrink:I

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iput v0, p0, Lz3/j;->g:F

    .line 15
    .line 16
    sget v0, Lcom/google/android/material/R$dimen;->m3_back_progress_side_container_max_scale_x_distance_grow:I

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iput v0, p0, Lz3/j;->h:F

    .line 23
    .line 24
    sget v0, Lcom/google/android/material/R$dimen;->m3_back_progress_side_container_max_scale_y_distance:I

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    iput p1, p0, Lz3/j;->i:F

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public cancelBackProgress()V
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-super {p0}, Lz3/a;->onCancelBackProgress()Landroidx/activity/c;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v2, Landroid/animation/AnimatorSet;

    .line 11
    .line 12
    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 13
    .line 14
    .line 15
    sget-object v3, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    .line 16
    .line 17
    const/high16 v4, 0x3f800000    # 1.0f

    .line 18
    .line 19
    new-array v5, v1, [F

    .line 20
    .line 21
    aput v4, v5, v0

    .line 22
    .line 23
    iget-object v6, p0, Lz3/a;->b:Landroid/view/View;

    .line 24
    .line 25
    invoke-static {v6, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    sget-object v5, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    .line 30
    .line 31
    new-array v7, v1, [F

    .line 32
    .line 33
    aput v4, v7, v0

    .line 34
    .line 35
    invoke-static {v6, v5, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    const/4 v7, 0x2

    .line 40
    new-array v7, v7, [Landroid/animation/Animator;

    .line 41
    .line 42
    aput-object v3, v7, v0

    .line 43
    .line 44
    aput-object v5, v7, v1

    .line 45
    .line 46
    invoke-virtual {v2, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 47
    .line 48
    .line 49
    instance-of v3, v6, Landroid/view/ViewGroup;

    .line 50
    .line 51
    if-eqz v3, :cond_1

    .line 52
    .line 53
    check-cast v6, Landroid/view/ViewGroup;

    .line 54
    .line 55
    move v3, v0

    .line 56
    :goto_0
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    if-ge v3, v5, :cond_1

    .line 61
    .line 62
    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    sget-object v7, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    .line 67
    .line 68
    new-array v8, v1, [F

    .line 69
    .line 70
    aput v4, v8, v0

    .line 71
    .line 72
    invoke-static {v5, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    new-array v7, v1, [Landroid/animation/Animator;

    .line 77
    .line 78
    aput-object v5, v7, v0

    .line 79
    .line 80
    invoke-virtual {v2, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 81
    .line 82
    .line 83
    add-int/2addr v3, v1

    .line 84
    goto :goto_0

    .line 85
    :cond_1
    iget v0, p0, Lz3/a;->e:I

    .line 86
    .line 87
    int-to-long v0, v0

    .line 88
    invoke-virtual {v2, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 92
    .line 93
    .line 94
    return-void
.end method

.method public finishBackProgress(Landroidx/activity/c;ILandroid/animation/Animator$AnimatorListener;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroidx/activity/c;->getSwipeEdge()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    move v0, v1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v0, v2

    .line 12
    :goto_0
    iget-object v3, p0, Lz3/a;->b:Landroid/view/View;

    .line 13
    .line 14
    invoke-static {v3}, LM/p0;->getLayoutDirection(Landroid/view/View;)I

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    invoke-static {p2, v4}, LM/s;->getAbsoluteGravity(II)I

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    const/4 v5, 0x3

    .line 23
    and-int/2addr v4, v5

    .line 24
    if-ne v4, v5, :cond_1

    .line 25
    .line 26
    move v4, v1

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    move v4, v2

    .line 29
    :goto_1
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    int-to-float v5, v5

    .line 34
    invoke-virtual {v3}, Landroid/view/View;->getScaleX()F

    .line 35
    .line 36
    .line 37
    move-result v6

    .line 38
    mul-float/2addr v6, v5

    .line 39
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    instance-of v7, v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 44
    .line 45
    if-eqz v7, :cond_3

    .line 46
    .line 47
    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 48
    .line 49
    if-eqz v4, :cond_2

    .line 50
    .line 51
    iget v5, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_2
    iget v5, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_3
    move v5, v2

    .line 58
    :goto_2
    int-to-float v5, v5

    .line 59
    add-float/2addr v6, v5

    .line 60
    sget-object v5, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    .line 61
    .line 62
    if-eqz v4, :cond_4

    .line 63
    .line 64
    neg-float v6, v6

    .line 65
    :cond_4
    new-array v1, v1, [F

    .line 66
    .line 67
    aput v6, v1, v2

    .line 68
    .line 69
    invoke-static {v3, v5, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    if-eqz p4, :cond_5

    .line 74
    .line 75
    invoke-virtual {v1, p4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 76
    .line 77
    .line 78
    :cond_5
    new-instance p4, Lh0/b;

    .line 79
    .line 80
    invoke-direct {p4}, Lh0/b;-><init>()V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, p4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1}, Landroidx/activity/c;->getProgress()F

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    iget p4, p0, Lz3/a;->c:I

    .line 91
    .line 92
    iget v2, p0, Lz3/a;->d:I

    .line 93
    .line 94
    invoke-static {p4, v2, p1}, Lg3/a;->lerp(IIF)I

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    int-to-long v2, p1

    .line 99
    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 100
    .line 101
    .line 102
    new-instance p1, Lz3/i;

    .line 103
    .line 104
    invoke-direct {p1, p0, v0, p2}, Lz3/i;-><init>(Lz3/j;ZI)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 108
    .line 109
    .line 110
    if-eqz p3, :cond_6

    .line 111
    .line 112
    invoke-virtual {v1, p3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 113
    .line 114
    .line 115
    :cond_6
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 116
    .line 117
    .line 118
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

.method public updateBackProgress(FZI)V
    .locals 10

    .line 4
    invoke-virtual {p0, p1}, Lz3/a;->interpolateProgress(F)F

    move-result p1

    .line 5
    iget-object v0, p0, Lz3/a;->b:Landroid/view/View;

    invoke-static {v0}, LM/p0;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    invoke-static {p3, v1}, LM/s;->getAbsoluteGravity(II)I

    move-result p3

    const/4 v1, 0x3

    and-int/2addr p3, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p3, v1, :cond_0

    move p3, v3

    goto :goto_0

    :cond_0
    move p3, v2

    :goto_0
    if-ne p2, p3, :cond_1

    goto :goto_1

    :cond_1
    move v3, v2

    .line 6
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result p2

    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v4, p2

    const/4 v5, 0x0

    cmpg-float v6, v4, v5

    if-lez v6, :cond_8

    int-to-float v1, v1

    cmpg-float v6, v1, v5

    if-gtz v6, :cond_2

    goto/16 :goto_7

    .line 8
    :cond_2
    iget v6, p0, Lz3/j;->g:F

    div-float/2addr v6, v4

    .line 9
    iget v7, p0, Lz3/j;->h:F

    div-float/2addr v7, v4

    .line 10
    iget v8, p0, Lz3/j;->i:F

    div-float/2addr v8, v1

    if-eqz p3, :cond_3

    move v4, v5

    .line 11
    :cond_3
    invoke-virtual {v0, v4}, Landroid/view/View;->setPivotX(F)V

    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    neg-float v7, v6

    .line 12
    :goto_2
    invoke-static {v5, v7, p1}, Lg3/a;->lerp(FFF)F

    move-result v1

    const/high16 v4, 0x3f800000    # 1.0f

    add-float v6, v1, v4

    .line 13
    invoke-virtual {v0, v6}, Landroid/view/View;->setScaleX(F)V

    .line 14
    invoke-static {v5, v8, p1}, Lg3/a;->lerp(FFF)F

    move-result p1

    sub-float p1, v4, p1

    .line 15
    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleY(F)V

    .line 16
    instance-of v7, v0, Landroid/view/ViewGroup;

    if-eqz v7, :cond_8

    .line 17
    check-cast v0, Landroid/view/ViewGroup;

    .line 18
    :goto_3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-ge v2, v7, :cond_8

    .line 19
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    if-eqz p3, :cond_5

    .line 20
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v8

    sub-int v8, p2, v8

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v9, v8

    int-to-float v8, v9

    goto :goto_4

    .line 21
    :cond_5
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    neg-int v8, v8

    int-to-float v8, v8

    .line 22
    :goto_4
    invoke-virtual {v7, v8}, Landroid/view/View;->setPivotX(F)V

    .line 23
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v8

    neg-int v8, v8

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setPivotY(F)V

    if-eqz v3, :cond_6

    sub-float v8, v4, v1

    goto :goto_5

    :cond_6
    move v8, v4

    :goto_5
    cmpl-float v9, p1, v5

    if-eqz v9, :cond_7

    div-float v9, v6, p1

    mul-float/2addr v9, v8

    goto :goto_6

    :cond_7
    move v9, v4

    .line 24
    :goto_6
    invoke-virtual {v7, v8}, Landroid/view/View;->setScaleX(F)V

    .line 25
    invoke-virtual {v7, v9}, Landroid/view/View;->setScaleY(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_8
    :goto_7
    return-void
.end method

.method public updateBackProgress(Landroidx/activity/c;I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lz3/a;->onUpdateBackProgress(Landroidx/activity/c;)Landroidx/activity/c;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroidx/activity/c;->getSwipeEdge()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-virtual {p1}, Landroidx/activity/c;->getProgress()F

    move-result p1

    invoke-virtual {p0, p1, v0, p2}, Lz3/j;->updateBackProgress(FZI)V

    return-void
.end method
