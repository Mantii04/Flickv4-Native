.class public abstract Le/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc0/e;


# instance fields
.field public final a:Le/d;

.field public final b:Landroidx/drawerlayout/widget/DrawerLayout;

.field public final c:Lg/n;

.field public final d:I

.field public final e:I

.field public f:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroidx/drawerlayout/widget/DrawerLayout;Landroidx/appcompat/widget/Toolbar;II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Le/i;->f:Z

    .line 6
    .line 7
    if-eqz p3, :cond_0

    .line 8
    .line 9
    new-instance p1, Le/h;

    .line 10
    .line 11
    invoke-direct {p1, p3}, Le/h;-><init>(Landroidx/appcompat/widget/Toolbar;)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Le/i;->a:Le/d;

    .line 15
    .line 16
    new-instance p1, Le/c;

    .line 17
    .line 18
    invoke-direct {p1, p0}, Le/c;-><init>(Le/i;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p3, p1}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    instance-of p3, p1, Le/e;

    .line 26
    .line 27
    if-eqz p3, :cond_1

    .line 28
    .line 29
    check-cast p1, Le/e;

    .line 30
    .line 31
    invoke-interface {p1}, Le/e;->getDrawerToggleDelegate()Le/d;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Le/i;->a:Le/d;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    new-instance p3, Le/g;

    .line 39
    .line 40
    invoke-direct {p3, p1}, Le/g;-><init>(Landroid/app/Activity;)V

    .line 41
    .line 42
    .line 43
    iput-object p3, p0, Le/i;->a:Le/d;

    .line 44
    .line 45
    :goto_0
    iput-object p2, p0, Le/i;->b:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 46
    .line 47
    iput p4, p0, Le/i;->d:I

    .line 48
    .line 49
    iput p5, p0, Le/i;->e:I

    .line 50
    .line 51
    new-instance p1, Lg/n;

    .line 52
    .line 53
    iget-object p2, p0, Le/i;->a:Le/d;

    .line 54
    .line 55
    invoke-interface {p2}, Le/d;->getActionBarThemedContext()Landroid/content/Context;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    invoke-direct {p1, p2}, Lg/n;-><init>(Landroid/content/Context;)V

    .line 60
    .line 61
    .line 62
    iput-object p1, p0, Le/i;->c:Lg/n;

    .line 63
    .line 64
    iget-object p1, p0, Le/i;->a:Le/d;

    .line 65
    .line 66
    invoke-interface {p1}, Le/d;->getThemeUpIndicator()Landroid/graphics/drawable/Drawable;

    .line 67
    .line 68
    .line 69
    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 2

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    .line 3
    cmpl-float v0, p1, v0

    .line 4
    .line 5
    iget-object v1, p0, Le/i;->c:Lg/n;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    invoke-virtual {v1, v0}, Lg/n;->setVerticalMirror(Z)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    cmpl-float v0, p1, v0

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    invoke-virtual {v1, v0}, Lg/n;->setVerticalMirror(Z)V

    .line 21
    .line 22
    .line 23
    :cond_1
    :goto_0
    invoke-virtual {v1, p1}, Lg/n;->setProgress(F)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public onDrawerClosed(Landroid/view/View;)V
    .locals 1

    .line 1
    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Le/i;->a(F)V

    .line 3
    .line 4
    .line 5
    iget-object p1, p0, Le/i;->a:Le/d;

    .line 6
    .line 7
    iget v0, p0, Le/i;->d:I

    .line 8
    .line 9
    invoke-interface {p1, v0}, Le/d;->setActionBarDescription(I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onDrawerOpened(Landroid/view/View;)V
    .locals 1

    .line 1
    const/high16 p1, 0x3f800000    # 1.0f

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Le/i;->a(F)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Le/i;->a:Le/d;

    .line 7
    .line 8
    iget v0, p0, Le/i;->e:I

    .line 9
    .line 10
    invoke-interface {p1, v0}, Le/d;->setActionBarDescription(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onDrawerSlide(Landroid/view/View;F)V
    .locals 1

    .line 1
    const/high16 p1, 0x3f800000    # 1.0f

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-static {v0, p2}, Ljava/lang/Math;->max(FF)F

    .line 5
    .line 6
    .line 7
    move-result p2

    .line 8
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    invoke-virtual {p0, p1}, Le/i;->a(F)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public onDrawerStateChanged(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public syncState()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/i;->b:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 2
    .line 3
    const v1, 0x800003

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerOpen(I)Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    const/high16 v2, 0x3f800000    # 1.0f

    .line 13
    .line 14
    invoke-virtual {p0, v2}, Le/i;->a(F)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v2, 0x0

    .line 19
    invoke-virtual {p0, v2}, Le/i;->a(F)V

    .line 20
    .line 21
    .line 22
    :goto_0
    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerOpen(I)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    iget v0, p0, Le/i;->e:I

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    iget v0, p0, Le/i;->d:I

    .line 32
    .line 33
    :goto_1
    iget-boolean v1, p0, Le/i;->f:Z

    .line 34
    .line 35
    iget-object v2, p0, Le/i;->a:Le/d;

    .line 36
    .line 37
    if-nez v1, :cond_2

    .line 38
    .line 39
    invoke-interface {v2}, Le/d;->isNavigationVisible()Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_2

    .line 44
    .line 45
    const-string v1, "ActionBarDrawerToggle"

    .line 46
    .line 47
    const-string v3, "DrawerToggle may not show up because NavigationIcon is not visible. You may need to call actionbar.setDisplayHomeAsUpEnabled(true);"

    .line 48
    .line 49
    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    const/4 v1, 0x1

    .line 53
    iput-boolean v1, p0, Le/i;->f:Z

    .line 54
    .line 55
    :cond_2
    iget-object v1, p0, Le/i;->c:Lg/n;

    .line 56
    .line 57
    invoke-interface {v2, v1, v0}, Le/d;->setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V

    .line 58
    .line 59
    .line 60
    return-void
.end method
