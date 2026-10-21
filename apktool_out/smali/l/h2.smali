.class public final Ll/h2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/n;


# instance fields
.field public final synthetic b:Landroidx/appcompat/widget/Toolbar;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/Toolbar;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ll/h2;->b:Landroidx/appcompat/widget/Toolbar;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onMenuItemSelected(Lk/p;Landroid/view/MenuItem;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Ll/h2;->b:Landroidx/appcompat/widget/Toolbar;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->a0:Lk/n;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p1, p2}, Lk/n;->onMenuItemSelected(Lk/p;Landroid/view/MenuItem;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    return p1

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    return p1
.end method

.method public onMenuModeChange(Lk/p;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ll/h2;->b:Landroidx/appcompat/widget/Toolbar;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->b:Landroidx/appcompat/widget/ActionMenuView;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionMenuView;->isOverflowMenuShowing()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->P:LM/B;

    .line 12
    .line 13
    invoke-virtual {v1, p1}, LM/B;->onPrepareMenu(Landroid/view/Menu;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->a0:Lk/n;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-interface {v0, p1}, Lk/n;->onMenuModeChange(Lk/p;)V

    .line 21
    .line 22
    .line 23
    :cond_1
    return-void
.end method
