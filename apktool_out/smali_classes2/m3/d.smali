.class public final Lm3/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/material/button/MaterialButton;

.field public b:LG3/p;

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:Landroid/graphics/PorterDuff$Mode;

.field public j:Landroid/content/res/ColorStateList;

.field public k:Landroid/content/res/ColorStateList;

.field public l:Landroid/content/res/ColorStateList;

.field public m:LG3/j;

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:Landroid/graphics/drawable/RippleDrawable;

.field public t:I


# direct methods
.method public constructor <init>(Lcom/google/android/material/button/MaterialButton;LG3/p;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lm3/d;->n:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lm3/d;->o:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lm3/d;->p:Z

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lm3/d;->r:Z

    .line 13
    .line 14
    iput-object p1, p0, Lm3/d;->a:Lcom/google/android/material/button/MaterialButton;

    .line 15
    .line 16
    iput-object p2, p0, Lm3/d;->b:LG3/p;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final a(Z)LG3/j;
    .locals 2

    .line 1
    iget-object v0, p0, Lm3/d;->s:Landroid/graphics/drawable/RippleDrawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-lez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lm3/d;->s:Landroid/graphics/drawable/RippleDrawable;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Landroid/graphics/drawable/InsetDrawable;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableWrapper;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 25
    .line 26
    xor-int/lit8 p1, p1, 0x1

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, LG3/j;

    .line 33
    .line 34
    return-object p1

    .line 35
    :cond_0
    const/4 p1, 0x0

    .line 36
    return-object p1
.end method

.method public final b(LG3/p;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lm3/d;->b:LG3/p;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lm3/d;->a(Z)LG3/j;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lm3/d;->a(Z)LG3/j;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0, p1}, LG3/j;->setShapeAppearanceModel(LG3/p;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    const/4 v0, 0x1

    .line 18
    invoke-virtual {p0, v0}, Lm3/d;->a(Z)LG3/j;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0, v0}, Lm3/d;->a(Z)LG3/j;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0, p1}, LG3/j;->setShapeAppearanceModel(LG3/p;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    invoke-virtual {p0}, Lm3/d;->getMaskDrawable()LG3/B;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    invoke-virtual {p0}, Lm3/d;->getMaskDrawable()LG3/B;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-interface {v0, p1}, LG3/B;->setShapeAppearanceModel(LG3/p;)V

    .line 42
    .line 43
    .line 44
    :cond_2
    return-void
.end method

.method public final c(II)V
    .locals 8

    .line 1
    iget-object v0, p0, Lm3/d;->a:Lcom/google/android/material/button/MaterialButton;

    .line 2
    .line 3
    invoke-static {v0}, LM/p0;->getPaddingStart(Landroid/view/View;)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    invoke-static {v0}, LM/p0;->getPaddingEnd(Landroid/view/View;)I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    iget v5, p0, Lm3/d;->e:I

    .line 20
    .line 21
    iget v6, p0, Lm3/d;->f:I

    .line 22
    .line 23
    iput p2, p0, Lm3/d;->f:I

    .line 24
    .line 25
    iput p1, p0, Lm3/d;->e:I

    .line 26
    .line 27
    iget-boolean v7, p0, Lm3/d;->o:Z

    .line 28
    .line 29
    if-nez v7, :cond_0

    .line 30
    .line 31
    invoke-virtual {p0}, Lm3/d;->d()V

    .line 32
    .line 33
    .line 34
    :cond_0
    add-int/2addr v2, p1

    .line 35
    sub-int/2addr v2, v5

    .line 36
    add-int/2addr v4, p2

    .line 37
    sub-int/2addr v4, v6

    .line 38
    invoke-static {v0, v1, v2, v3, v4}, LM/p0;->setPaddingRelative(Landroid/view/View;IIII)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final d()V
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    new-instance v1, LG3/j;

    .line 3
    .line 4
    iget-object v2, p0, Lm3/d;->b:LG3/p;

    .line 5
    .line 6
    invoke-direct {v1, v2}, LG3/j;-><init>(LG3/p;)V

    .line 7
    .line 8
    .line 9
    iget-object v2, p0, Lm3/d;->a:Lcom/google/android/material/button/MaterialButton;

    .line 10
    .line 11
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-virtual {v1, v3}, LG3/j;->initializeElevationOverlay(Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    iget-object v3, p0, Lm3/d;->j:Landroid/content/res/ColorStateList;

    .line 19
    .line 20
    invoke-static {v1, v3}, LE/c;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 21
    .line 22
    .line 23
    iget-object v3, p0, Lm3/d;->i:Landroid/graphics/PorterDuff$Mode;

    .line 24
    .line 25
    if-eqz v3, :cond_0

    .line 26
    .line 27
    invoke-static {v1, v3}, LE/c;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    iget v3, p0, Lm3/d;->h:I

    .line 31
    .line 32
    int-to-float v3, v3

    .line 33
    iget-object v4, p0, Lm3/d;->k:Landroid/content/res/ColorStateList;

    .line 34
    .line 35
    invoke-virtual {v1, v3, v4}, LG3/j;->setStroke(FLandroid/content/res/ColorStateList;)V

    .line 36
    .line 37
    .line 38
    new-instance v3, LG3/j;

    .line 39
    .line 40
    iget-object v4, p0, Lm3/d;->b:LG3/p;

    .line 41
    .line 42
    invoke-direct {v3, v4}, LG3/j;-><init>(LG3/p;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3, v0}, LG3/j;->setTint(I)V

    .line 46
    .line 47
    .line 48
    iget v4, p0, Lm3/d;->h:I

    .line 49
    .line 50
    int-to-float v4, v4

    .line 51
    iget-boolean v5, p0, Lm3/d;->n:Z

    .line 52
    .line 53
    if-eqz v5, :cond_1

    .line 54
    .line 55
    sget v5, Lcom/google/android/material/R$attr;->colorSurface:I

    .line 56
    .line 57
    invoke-static {v2, v5}, Lr3/a;->getColor(Landroid/view/View;I)I

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    goto :goto_0

    .line 62
    :cond_1
    move v5, v0

    .line 63
    :goto_0
    invoke-virtual {v3, v4, v5}, LG3/j;->setStroke(FI)V

    .line 64
    .line 65
    .line 66
    new-instance v4, LG3/j;

    .line 67
    .line 68
    iget-object v5, p0, Lm3/d;->b:LG3/p;

    .line 69
    .line 70
    invoke-direct {v4, v5}, LG3/j;-><init>(LG3/p;)V

    .line 71
    .line 72
    .line 73
    iput-object v4, p0, Lm3/d;->m:LG3/j;

    .line 74
    .line 75
    const/4 v5, -0x1

    .line 76
    invoke-static {v4, v5}, LE/c;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 77
    .line 78
    .line 79
    new-instance v4, Landroid/graphics/drawable/RippleDrawable;

    .line 80
    .line 81
    iget-object v5, p0, Lm3/d;->l:Landroid/content/res/ColorStateList;

    .line 82
    .line 83
    invoke-static {v5}, LD3/a;->sanitizeRippleDrawableColor(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    new-instance v7, Landroid/graphics/drawable/LayerDrawable;

    .line 88
    .line 89
    const/4 v6, 0x2

    .line 90
    new-array v6, v6, [Landroid/graphics/drawable/Drawable;

    .line 91
    .line 92
    aput-object v3, v6, v0

    .line 93
    .line 94
    const/4 v3, 0x1

    .line 95
    aput-object v1, v6, v3

    .line 96
    .line 97
    invoke-direct {v7, v6}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 98
    .line 99
    .line 100
    new-instance v6, Landroid/graphics/drawable/InsetDrawable;

    .line 101
    .line 102
    iget v8, p0, Lm3/d;->c:I

    .line 103
    .line 104
    iget v9, p0, Lm3/d;->e:I

    .line 105
    .line 106
    iget v10, p0, Lm3/d;->d:I

    .line 107
    .line 108
    iget v11, p0, Lm3/d;->f:I

    .line 109
    .line 110
    invoke-direct/range {v6 .. v11}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 111
    .line 112
    .line 113
    iget-object v1, p0, Lm3/d;->m:LG3/j;

    .line 114
    .line 115
    invoke-direct {v4, v5, v6, v1}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 116
    .line 117
    .line 118
    iput-object v4, p0, Lm3/d;->s:Landroid/graphics/drawable/RippleDrawable;

    .line 119
    .line 120
    invoke-virtual {v2, v4}, Lcom/google/android/material/button/MaterialButton;->setInternalBackground(Landroid/graphics/drawable/Drawable;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0, v0}, Lm3/d;->a(Z)LG3/j;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    if-eqz v0, :cond_2

    .line 128
    .line 129
    iget v1, p0, Lm3/d;->t:I

    .line 130
    .line 131
    int-to-float v1, v1

    .line 132
    invoke-virtual {v0, v1}, LG3/j;->setElevation(F)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 140
    .line 141
    .line 142
    :cond_2
    return-void
.end method

.method public final e()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lm3/d;->a(Z)LG3/j;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    const/4 v2, 0x1

    .line 7
    invoke-virtual {p0, v2}, Lm3/d;->a(Z)LG3/j;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    iget v3, p0, Lm3/d;->h:I

    .line 14
    .line 15
    int-to-float v3, v3

    .line 16
    iget-object v4, p0, Lm3/d;->k:Landroid/content/res/ColorStateList;

    .line 17
    .line 18
    invoke-virtual {v1, v3, v4}, LG3/j;->setStroke(FLandroid/content/res/ColorStateList;)V

    .line 19
    .line 20
    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    iget v1, p0, Lm3/d;->h:I

    .line 24
    .line 25
    int-to-float v1, v1

    .line 26
    iget-boolean v3, p0, Lm3/d;->n:Z

    .line 27
    .line 28
    if-eqz v3, :cond_0

    .line 29
    .line 30
    iget-object v0, p0, Lm3/d;->a:Lcom/google/android/material/button/MaterialButton;

    .line 31
    .line 32
    sget v3, Lcom/google/android/material/R$attr;->colorSurface:I

    .line 33
    .line 34
    invoke-static {v0, v3}, Lr3/a;->getColor(Landroid/view/View;I)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    :cond_0
    invoke-virtual {v2, v1, v0}, LG3/j;->setStroke(FI)V

    .line 39
    .line 40
    .line 41
    :cond_1
    return-void
.end method

.method public getInsetBottom()I
    .locals 1

    .line 1
    iget v0, p0, Lm3/d;->f:I

    .line 2
    .line 3
    return v0
.end method

.method public getInsetTop()I
    .locals 1

    .line 1
    iget v0, p0, Lm3/d;->e:I

    .line 2
    .line 3
    return v0
.end method

.method public getMaskDrawable()LG3/B;
    .locals 3

    .line 1
    iget-object v0, p0, Lm3/d;->s:Landroid/graphics/drawable/RippleDrawable;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-le v0, v1, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lm3/d;->s:Landroid/graphics/drawable/RippleDrawable;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v2, 0x2

    .line 19
    if-le v0, v2, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lm3/d;->s:Landroid/graphics/drawable/RippleDrawable;

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, LG3/B;

    .line 28
    .line 29
    return-object v0

    .line 30
    :cond_0
    iget-object v0, p0, Lm3/d;->s:Landroid/graphics/drawable/RippleDrawable;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, LG3/B;

    .line 37
    .line 38
    return-object v0

    .line 39
    :cond_1
    const/4 v0, 0x0

    .line 40
    return-object v0
.end method

.method public setInsetBottom(I)V
    .locals 1

    .line 1
    iget v0, p0, Lm3/d;->e:I

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Lm3/d;->c(II)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setInsetTop(I)V
    .locals 1

    .line 1
    iget v0, p0, Lm3/d;->f:I

    .line 2
    .line 3
    invoke-virtual {p0, p1, v0}, Lm3/d;->c(II)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
