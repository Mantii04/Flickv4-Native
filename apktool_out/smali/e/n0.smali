.class public final Le/n0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/n;


# instance fields
.field public final synthetic b:Le/p0;


# direct methods
.method public constructor <init>(Le/p0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Le/n0;->b:Le/p0;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onMenuItemSelected(Lk/p;Landroid/view/MenuItem;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public onMenuModeChange(Lk/p;)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/n0;->b:Le/p0;

    .line 2
    .line 3
    iget-object v1, v0, Le/p0;->a:Ll/r2;

    .line 4
    .line 5
    invoke-interface {v1}, Ll/M0;->isOverflowMenuShowing()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-object v0, v0, Le/p0;->b:Landroid/view/Window$Callback;

    .line 10
    .line 11
    const/16 v2, 0x6c

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-interface {v0, v2, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    const/4 v1, 0x0

    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-interface {v0, v1, v3, p1}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    invoke-interface {v0, v2, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 28
    .line 29
    .line 30
    :cond_1
    return-void
.end method
