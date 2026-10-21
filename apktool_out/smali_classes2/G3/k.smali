.class public abstract LG3/k;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(I)LG3/d;
    .locals 1

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_0

    .line 5
    .line 6
    new-instance p0, LG3/m;

    .line 7
    .line 8
    invoke-direct {p0}, LG3/m;-><init>()V

    .line 9
    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    new-instance p0, LG3/e;

    .line 13
    .line 14
    invoke-direct {p0}, LG3/e;-><init>()V

    .line 15
    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_1
    new-instance p0, LG3/m;

    .line 19
    .line 20
    invoke-direct {p0}, LG3/m;-><init>()V

    .line 21
    .line 22
    .line 23
    return-object p0
.end method

.method public static setElevation(Landroid/view/View;F)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    instance-of v0, p0, LG3/j;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    check-cast p0, LG3/j;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, LG3/j;->setElevation(F)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public static setParentAbsoluteElevation(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2
    instance-of v1, v0, LG3/j;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, LG3/j;

    invoke-static {p0, v0}, LG3/k;->setParentAbsoluteElevation(Landroid/view/View;LG3/j;)V

    :cond_0
    return-void
.end method

.method public static setParentAbsoluteElevation(Landroid/view/View;LG3/j;)V
    .locals 1

    .line 4
    invoke-virtual {p1}, LG3/j;->isElevationOverlayEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-static {p0}, Lx3/T;->getParentAbsoluteElevation(Landroid/view/View;)F

    move-result p0

    invoke-virtual {p1, p0}, LG3/j;->setParentAbsoluteElevation(F)V

    :cond_0
    return-void
.end method
