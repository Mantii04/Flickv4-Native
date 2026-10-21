.class public final Le/p0;
.super Le/b;
.source "SourceFile"


# instance fields
.field public final a:Ll/r2;

.field public final b:Landroid/view/Window$Callback;

.field public final c:Le/o0;

.field public d:Z

.field public e:Z

.field public f:Z

.field public final g:Ljava/util/ArrayList;

.field public final h:Le/k0;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/Toolbar;Ljava/lang/CharSequence;Landroid/view/Window$Callback;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Le/b;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Le/p0;->g:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Le/k0;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Le/k0;-><init>(Le/p0;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Le/p0;->h:Le/k0;

    .line 17
    .line 18
    new-instance v0, Le/l0;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Le/l0;-><init>(Le/p0;)V

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, LL/h;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    new-instance v1, Ll/r2;

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    invoke-direct {v1, p1, v2}, Ll/r2;-><init>(Landroidx/appcompat/widget/Toolbar;Z)V

    .line 30
    .line 31
    .line 32
    iput-object v1, p0, Le/p0;->a:Ll/r2;

    .line 33
    .line 34
    invoke-static {p3}, LL/h;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Landroid/view/Window$Callback;

    .line 39
    .line 40
    iput-object v2, p0, Le/p0;->b:Landroid/view/Window$Callback;

    .line 41
    .line 42
    invoke-virtual {v1, p3}, Ll/r2;->setWindowCallback(Landroid/view/Window$Callback;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setOnMenuItemClickListener(Ll/m2;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, p2}, Ll/r2;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 49
    .line 50
    .line 51
    new-instance p1, Le/o0;

    .line 52
    .line 53
    invoke-direct {p1, p0}, Le/o0;-><init>(Le/p0;)V

    .line 54
    .line 55
    .line 56
    iput-object p1, p0, Le/p0;->c:Le/o0;

    .line 57
    .line 58
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/p0;->a:Ll/r2;

    .line 2
    .line 3
    invoke-interface {v0}, Ll/M0;->getViewGroup()Landroid/view/ViewGroup;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Le/p0;->h:Le/k0;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public closeOptionsMenu()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/p0;->a:Ll/r2;

    .line 2
    .line 3
    invoke-interface {v0}, Ll/M0;->hideOverflowMenu()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public collapseActionView()Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/p0;->a:Ll/r2;

    .line 2
    .line 3
    invoke-interface {v0}, Ll/M0;->hasExpandedActionView()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Ll/M0;->collapseActionView()V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    return v0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    return v0
.end method

.method public dispatchMenuVisibilityChanged(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/p0;->f:Z

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iput-boolean p1, p0, Le/p0;->f:Z

    .line 7
    .line 8
    iget-object p1, p0, Le/p0;->g:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-gtz v0, :cond_1

    .line 15
    .line 16
    :goto_0
    return-void

    .line 17
    :cond_1
    const/4 v0, 0x0

    .line 18
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    new-instance p1, Ljava/lang/ClassCastException;

    .line 26
    .line 27
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 28
    .line 29
    .line 30
    throw p1
.end method

.method public getDisplayOptions()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/p0;->a:Ll/r2;

    .line 2
    .line 3
    invoke-interface {v0}, Ll/M0;->getDisplayOptions()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getThemedContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Le/p0;->a:Ll/r2;

    .line 2
    .line 3
    invoke-interface {v0}, Ll/M0;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public hide()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/p0;->a:Ll/r2;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-interface {v0, v1}, Ll/M0;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public invalidateOptionsMenu()Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/p0;->a:Ll/r2;

    .line 2
    .line 3
    invoke-interface {v0}, Ll/M0;->getViewGroup()Landroid/view/ViewGroup;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, p0, Le/p0;->h:Le/k0;

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 10
    .line 11
    .line 12
    invoke-interface {v0}, Ll/M0;->getViewGroup()Landroid/view/ViewGroup;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0, v2}, LM/p0;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Le/b;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Le/p0;->e:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iget-object v2, p0, Le/p0;->a:Ll/r2;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Le/m0;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Le/m0;-><init>(Le/p0;)V

    .line 11
    .line 12
    .line 13
    new-instance v3, Le/n0;

    .line 14
    .line 15
    invoke-direct {v3, p0}, Le/n0;-><init>(Le/p0;)V

    .line 16
    .line 17
    .line 18
    invoke-interface {v2, v0, v3}, Ll/M0;->setMenuCallbacks(Lk/D;Lk/n;)V

    .line 19
    .line 20
    .line 21
    iput-boolean v1, p0, Le/p0;->e:Z

    .line 22
    .line 23
    :cond_0
    invoke-interface {v2}, Ll/M0;->getMenu()Landroid/view/Menu;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const/4 v2, 0x0

    .line 28
    if-eqz v0, :cond_3

    .line 29
    .line 30
    if-eqz p2, :cond_1

    .line 31
    .line 32
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 v3, -0x1

    .line 38
    :goto_0
    invoke-static {v3}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v3}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-eq v3, v1, :cond_2

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_2
    move v1, v2

    .line 50
    :goto_1
    invoke-interface {v0, v1}, Landroid/view/Menu;->setQwertyMode(Z)V

    .line 51
    .line 52
    .line 53
    invoke-interface {v0, p1, p2, v2}, Landroid/view/Menu;->performShortcut(ILandroid/view/KeyEvent;I)Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    return p1

    .line 58
    :cond_3
    return v2
.end method

.method public onMenuKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x1

    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Le/p0;->openOptionsMenu()Z

    .line 9
    .line 10
    .line 11
    :cond_0
    return v0
.end method

.method public openOptionsMenu()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/p0;->a:Ll/r2;

    .line 2
    .line 3
    invoke-interface {v0}, Ll/M0;->showOverflowMenu()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public setDefaultDisplayHomeAsUpEnabled(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public setDisplayHomeAsUpEnabled(Z)V
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    move p1, v0

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 p1, 0x0

    .line 7
    :goto_0
    invoke-virtual {p0, p1, v0}, Le/p0;->setDisplayOptions(II)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public setDisplayOptions(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/p0;->a:Ll/r2;

    .line 2
    .line 3
    invoke-interface {v0}, Ll/M0;->getDisplayOptions()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    and-int/2addr p1, p2

    .line 8
    not-int p2, p2

    .line 9
    and-int/2addr p2, v1

    .line 10
    or-int/2addr p1, p2

    .line 11
    invoke-interface {v0, p1}, Ll/M0;->setDisplayOptions(I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public setHomeActionContentDescription(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/p0;->a:Ll/r2;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ll/M0;->setNavigationContentDescription(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setHomeAsUpIndicator(I)V
    .locals 1

    .line 2
    iget-object v0, p0, Le/p0;->a:Ll/r2;

    invoke-interface {v0, p1}, Ll/M0;->setNavigationIcon(I)V

    return-void
.end method

.method public setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/p0;->a:Ll/r2;

    invoke-interface {v0, p1}, Ll/M0;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setHomeButtonEnabled(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public setShowHideAnimationEnabled(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/p0;->a:Ll/r2;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ll/M0;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/p0;->a:Ll/r2;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ll/M0;->setTitle(Ljava/lang/CharSequence;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/p0;->a:Ll/r2;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ll/M0;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
