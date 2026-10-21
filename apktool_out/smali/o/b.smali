.class public final Lo/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo/d;


# direct methods
.method public static a(Lo/c;)Lo/e;
    .locals 0

    .line 1
    check-cast p0, Lo/a;

    .line 2
    .line 3
    invoke-virtual {p0}, Lo/a;->getCardBackground()Landroid/graphics/drawable/Drawable;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lo/e;

    .line 8
    .line 9
    return-object p0
.end method


# virtual methods
.method public getBackgroundColor(Lo/c;)Landroid/content/res/ColorStateList;
    .locals 0

    .line 1
    invoke-static {p1}, Lo/b;->a(Lo/c;)Lo/e;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lo/e;->getColor()Landroid/content/res/ColorStateList;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public getElevation(Lo/c;)F
    .locals 0

    .line 1
    check-cast p1, Lo/a;

    .line 2
    .line 3
    invoke-virtual {p1}, Lo/a;->getCardView()Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getElevation()F

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public getMaxElevation(Lo/c;)F
    .locals 0

    .line 1
    invoke-static {p1}, Lo/b;->a(Lo/c;)Lo/e;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget p1, p1, Lo/e;->e:F

    .line 6
    .line 7
    return p1
.end method

.method public getRadius(Lo/c;)F
    .locals 0

    .line 1
    invoke-static {p1}, Lo/b;->a(Lo/c;)Lo/e;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lo/e;->getRadius()F

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public initStatic()V
    .locals 0

    .line 1
    return-void
.end method

.method public initialize(Lo/c;Landroid/content/Context;Landroid/content/res/ColorStateList;FFF)V
    .locals 0

    .line 1
    new-instance p2, Lo/e;

    .line 2
    .line 3
    invoke-direct {p2, p4, p3}, Lo/e;-><init>(FLandroid/content/res/ColorStateList;)V

    .line 4
    .line 5
    .line 6
    check-cast p1, Lo/a;

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Lo/a;->setCardBackground(Landroid/graphics/drawable/Drawable;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lo/a;->getCardView()Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    const/4 p3, 0x1

    .line 16
    invoke-virtual {p2, p3}, Landroid/view/View;->setClipToOutline(Z)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2, p5}, Landroid/view/View;->setElevation(F)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p1, p6}, Lo/b;->setMaxElevation(Lo/c;F)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public onCompatPaddingChanged(Lo/c;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lo/b;->getMaxElevation(Lo/c;)F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, p1, v0}, Lo/b;->setMaxElevation(Lo/c;F)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onPreventCornerOverlapChanged(Lo/c;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lo/b;->getMaxElevation(Lo/c;)F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, p1, v0}, Lo/b;->setMaxElevation(Lo/c;F)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setBackgroundColor(Lo/c;Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lo/b;->a(Lo/c;)Lo/e;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1, p2}, Lo/e;->setColor(Landroid/content/res/ColorStateList;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setElevation(Lo/c;F)V
    .locals 0

    .line 1
    check-cast p1, Lo/a;

    .line 2
    .line 3
    invoke-virtual {p1}, Lo/a;->getCardView()Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1, p2}, Landroid/view/View;->setElevation(F)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public setMaxElevation(Lo/c;F)V
    .locals 4

    .line 1
    invoke-static {p1}, Lo/b;->a(Lo/c;)Lo/e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast p1, Lo/a;

    .line 6
    .line 7
    invoke-virtual {p1}, Lo/a;->getUseCompatPadding()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-virtual {p1}, Lo/a;->getPreventCornerOverlap()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    iget v3, v0, Lo/e;->e:F

    .line 16
    .line 17
    cmpl-float v3, p2, v3

    .line 18
    .line 19
    if-nez v3, :cond_0

    .line 20
    .line 21
    iget-boolean v3, v0, Lo/e;->f:Z

    .line 22
    .line 23
    if-ne v3, v1, :cond_0

    .line 24
    .line 25
    iget-boolean v3, v0, Lo/e;->g:Z

    .line 26
    .line 27
    if-ne v3, v2, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iput p2, v0, Lo/e;->e:F

    .line 31
    .line 32
    iput-boolean v1, v0, Lo/e;->f:Z

    .line 33
    .line 34
    iput-boolean v2, v0, Lo/e;->g:Z

    .line 35
    .line 36
    const/4 p2, 0x0

    .line 37
    invoke-virtual {v0, p2}, Lo/e;->b(Landroid/graphics/Rect;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 41
    .line 42
    .line 43
    :goto_0
    invoke-virtual {p0, p1}, Lo/b;->updatePadding(Lo/c;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public setRadius(Lo/c;F)V
    .locals 1

    .line 1
    invoke-static {p1}, Lo/b;->a(Lo/c;)Lo/e;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget v0, p1, Lo/e;->a:F

    .line 6
    .line 7
    cmpl-float v0, p2, v0

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iput p2, p1, Lo/e;->a:F

    .line 13
    .line 14
    const/4 p2, 0x0

    .line 15
    invoke-virtual {p1, p2}, Lo/e;->b(Landroid/graphics/Rect;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public updatePadding(Lo/c;)V
    .locals 4

    .line 1
    check-cast p1, Lo/a;

    .line 2
    .line 3
    invoke-virtual {p1}, Lo/a;->getUseCompatPadding()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p1, v0, v0, v0, v0}, Lo/a;->setShadowPadding(IIII)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-virtual {p0, p1}, Lo/b;->getMaxElevation(Lo/c;)F

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    invoke-virtual {p0, p1}, Lo/b;->getRadius(Lo/c;)F

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    invoke-virtual {p1}, Lo/a;->getPreventCornerOverlap()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    invoke-static {v0, v1, v2}, Lo/f;->a(FFZ)F

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    float-to-double v2, v2

    .line 31
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    .line 32
    .line 33
    .line 34
    move-result-wide v2

    .line 35
    double-to-int v2, v2

    .line 36
    invoke-virtual {p1}, Lo/a;->getPreventCornerOverlap()Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    invoke-static {v0, v1, v3}, Lo/f;->b(FFZ)F

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    float-to-double v0, v0

    .line 45
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    .line 46
    .line 47
    .line 48
    move-result-wide v0

    .line 49
    double-to-int v0, v0

    .line 50
    invoke-virtual {p1, v2, v0, v2, v0}, Lo/a;->setShadowPadding(IIII)V

    .line 51
    .line 52
    .line 53
    return-void
.end method
