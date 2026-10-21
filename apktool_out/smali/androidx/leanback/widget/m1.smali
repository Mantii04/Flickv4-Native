.class public final Landroidx/leanback/widget/m1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:I

.field public g:F

.field public h:F


# direct methods
.method public static a(Ljava/lang/Object;IF)V
    .locals 3

    .line 1
    if-eqz p0, :cond_4

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    cmpg-float v1, p2, v0

    .line 5
    .line 6
    const/high16 v2, 0x3f800000    # 1.0f

    .line 7
    .line 8
    if-gez v1, :cond_0

    .line 9
    .line 10
    move p2, v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    cmpl-float v0, p2, v2

    .line 13
    .line 14
    if-lez v0, :cond_1

    .line 15
    .line 16
    move p2, v2

    .line 17
    :cond_1
    :goto_0
    const/4 v0, 0x2

    .line 18
    if-eq p1, v0, :cond_3

    .line 19
    .line 20
    const/4 v0, 0x3

    .line 21
    if-eq p1, v0, :cond_2

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_2
    invoke-static {p0, p2}, Landroidx/leanback/widget/i1;->setShadowFocusLevel(Ljava/lang/Object;F)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_3
    check-cast p0, Landroidx/leanback/widget/t1;

    .line 29
    .line 30
    iget-object p1, p0, Landroidx/leanback/widget/t1;->a:Landroid/view/View;

    .line 31
    .line 32
    sub-float/2addr v2, p2

    .line 33
    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 34
    .line 35
    .line 36
    iget-object p0, p0, Landroidx/leanback/widget/t1;->b:Landroid/view/View;

    .line 37
    .line 38
    invoke-virtual {p0, p2}, Landroid/view/View;->setAlpha(F)V

    .line 39
    .line 40
    .line 41
    :cond_4
    :goto_1
    return-void
.end method

.method public static setNoneWrapperOverlayColor(Landroid/view/View;I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Landroid/graphics/drawable/ColorDrawable;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 16
    .line 17
    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public static setNoneWrapperShadowFocusLevel(Landroid/view/View;F)V
    .locals 1

    .line 1
    sget v0, Landroidx/leanback/R$id;->lb_shadow_impl:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/4 v0, 0x3

    .line 8
    invoke-static {p0, v0, p1}, Landroidx/leanback/widget/m1;->a(Ljava/lang/Object;IF)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static supportsDynamicShadow()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static supportsForeground()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static supportsRoundedCorner()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static supportsShadow()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public createShadowOverlayContainer(Landroid/content/Context;)Landroidx/leanback/widget/j1;
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroidx/leanback/widget/m1;->needsWrapper()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_5

    .line 6
    .line 7
    new-instance v0, Landroidx/leanback/widget/j1;

    .line 8
    .line 9
    iget v1, p0, Landroidx/leanback/widget/m1;->a:I

    .line 10
    .line 11
    iget-boolean v2, p0, Landroidx/leanback/widget/m1;->b:Z

    .line 12
    .line 13
    iget v3, p0, Landroidx/leanback/widget/m1;->g:F

    .line 14
    .line 15
    iget v4, p0, Landroidx/leanback/widget/m1;->h:F

    .line 16
    .line 17
    iget v5, p0, Landroidx/leanback/widget/m1;->f:I

    .line 18
    .line 19
    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 20
    .line 21
    .line 22
    const/4 p1, 0x1

    .line 23
    iput p1, v0, Landroidx/leanback/widget/j1;->m:I

    .line 24
    .line 25
    iget-boolean v6, v0, Landroidx/leanback/widget/j1;->b:Z

    .line 26
    .line 27
    if-nez v6, :cond_4

    .line 28
    .line 29
    iput-boolean p1, v0, Landroidx/leanback/widget/j1;->b:Z

    .line 30
    .line 31
    const/4 v6, 0x0

    .line 32
    if-lez v5, :cond_0

    .line 33
    .line 34
    move v7, p1

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    move v7, v6

    .line 37
    :goto_0
    iput-boolean v7, v0, Landroidx/leanback/widget/j1;->j:Z

    .line 38
    .line 39
    iput v1, v0, Landroidx/leanback/widget/j1;->m:I

    .line 40
    .line 41
    const/4 v7, 0x2

    .line 42
    if-eq v1, v7, :cond_2

    .line 43
    .line 44
    const/4 v7, 0x3

    .line 45
    if-eq v1, v7, :cond_1

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    invoke-static {v0, v3, v4, v5}, Landroidx/leanback/widget/i1;->addDynamicShadow(Landroid/view/View;FFI)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    iput-object v1, v0, Landroidx/leanback/widget/j1;->e:Ljava/lang/Object;

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_2
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setLayoutMode(I)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    sget v3, Landroidx/leanback/R$layout;->lb_shadow:I

    .line 67
    .line 68
    invoke-virtual {v1, v3, v0, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    new-instance v1, Landroidx/leanback/widget/t1;

    .line 72
    .line 73
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 74
    .line 75
    .line 76
    sget v3, Landroidx/leanback/R$id;->lb_shadow_normal:I

    .line 77
    .line 78
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    iput-object v3, v1, Landroidx/leanback/widget/t1;->a:Landroid/view/View;

    .line 83
    .line 84
    sget v3, Landroidx/leanback/R$id;->lb_shadow_focused:I

    .line 85
    .line 86
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    iput-object v3, v1, Landroidx/leanback/widget/t1;->b:Landroid/view/View;

    .line 91
    .line 92
    iput-object v1, v0, Landroidx/leanback/widget/j1;->e:Ljava/lang/Object;

    .line 93
    .line 94
    :goto_1
    if-eqz v2, :cond_3

    .line 95
    .line 96
    invoke-virtual {v0, v6}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 97
    .line 98
    .line 99
    iput v6, v0, Landroidx/leanback/widget/j1;->p:I

    .line 100
    .line 101
    new-instance p1, Landroid/graphics/Paint;

    .line 102
    .line 103
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 104
    .line 105
    .line 106
    iput-object p1, v0, Landroidx/leanback/widget/j1;->n:Landroid/graphics/Paint;

    .line 107
    .line 108
    iget v1, v0, Landroidx/leanback/widget/j1;->p:I

    .line 109
    .line 110
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 111
    .line 112
    .line 113
    iget-object p1, v0, Landroidx/leanback/widget/j1;->n:Landroid/graphics/Paint;

    .line 114
    .line 115
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 116
    .line 117
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 118
    .line 119
    .line 120
    return-object v0

    .line 121
    :cond_3
    invoke-virtual {v0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 122
    .line 123
    .line 124
    const/4 p1, 0x0

    .line 125
    iput-object p1, v0, Landroidx/leanback/widget/j1;->n:Landroid/graphics/Paint;

    .line 126
    .line 127
    return-object v0

    .line 128
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 129
    .line 130
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 131
    .line 132
    .line 133
    throw p1

    .line 134
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 135
    .line 136
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 137
    .line 138
    .line 139
    throw p1
.end method

.method public getShadowType()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/leanback/widget/m1;->a:I

    .line 2
    .line 3
    return v0
.end method

.method public needsOverlay()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/leanback/widget/m1;->b:Z

    .line 2
    .line 3
    return v0
.end method

.method public needsWrapper()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/leanback/widget/m1;->e:Z

    .line 2
    .line 3
    return v0
.end method

.method public onViewCreated(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/leanback/widget/m1;->needsWrapper()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_2

    .line 6
    .line 7
    iget-boolean v0, p0, Landroidx/leanback/widget/m1;->d:Z

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-boolean v0, p0, Landroidx/leanback/widget/m1;->c:Z

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    iget v0, p0, Landroidx/leanback/widget/m1;->f:I

    .line 17
    .line 18
    invoke-static {p1, v1, v0}, Landroidx/leanback/widget/G0;->setClipToRoundedOutline(Landroid/view/View;ZI)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    iget v0, p0, Landroidx/leanback/widget/m1;->a:I

    .line 23
    .line 24
    const/4 v2, 0x3

    .line 25
    if-ne v0, v2, :cond_1

    .line 26
    .line 27
    iget v0, p0, Landroidx/leanback/widget/m1;->g:F

    .line 28
    .line 29
    iget v1, p0, Landroidx/leanback/widget/m1;->h:F

    .line 30
    .line 31
    iget v2, p0, Landroidx/leanback/widget/m1;->f:I

    .line 32
    .line 33
    invoke-static {p1, v0, v1, v2}, Landroidx/leanback/widget/i1;->addDynamicShadow(Landroid/view/View;FFI)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    sget v1, Landroidx/leanback/R$id;->lb_shadow_impl:I

    .line 38
    .line 39
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_1
    iget-boolean v0, p0, Landroidx/leanback/widget/m1;->c:Z

    .line 44
    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    iget v0, p0, Landroidx/leanback/widget/m1;->f:I

    .line 48
    .line 49
    invoke-static {p1, v1, v0}, Landroidx/leanback/widget/G0;->setClipToRoundedOutline(Landroid/view/View;ZI)V

    .line 50
    .line 51
    .line 52
    :cond_2
    return-void
.end method

.method public prepareParentForShadow(Landroid/view/ViewGroup;)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/leanback/widget/m1;->a:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setLayoutMode(I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setOverlayColor(Landroid/view/View;I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/leanback/widget/m1;->needsWrapper()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    check-cast p1, Landroidx/leanback/widget/j1;

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroidx/leanback/widget/j1;->setOverlayColor(I)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-static {p1, p2}, Landroidx/leanback/widget/m1;->setNoneWrapperOverlayColor(Landroid/view/View;I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
