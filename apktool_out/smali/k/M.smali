.class public Lk/M;
.super Lk/p;
.source "SourceFile"

# interfaces
.implements Landroid/view/SubMenu;


# instance fields
.field public final A:Lk/s;

.field public final z:Lk/p;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lk/p;Lk/s;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lk/p;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lk/M;->z:Lk/p;

    .line 5
    .line 6
    iput-object p3, p0, Lk/M;->A:Lk/s;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lk/p;Lk/s;)Z
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lk/p;->a(Lk/p;Lk/s;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lk/M;->z:Lk/p;

    .line 8
    .line 9
    invoke-virtual {v0, p1, p2}, Lk/p;->a(Lk/p;Lk/s;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    return p1

    .line 18
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 19
    return p1
.end method

.method public collapseItemActionView(Lk/s;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lk/M;->z:Lk/p;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lk/p;->collapseItemActionView(Lk/s;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public expandItemActionView(Lk/s;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lk/M;->z:Lk/p;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lk/p;->expandItemActionView(Lk/s;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public getActionViewStatesKey()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lk/M;->A:Lk/s;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lk/s;->getItemId()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    if-nez v0, :cond_1

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    return-object v0

    .line 15
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-super {p0}, Lk/p;->getActionViewStatesKey()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v2, ":"

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    return-object v0
.end method

.method public getItem()Landroid/view/MenuItem;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/M;->A:Lk/s;

    .line 2
    .line 3
    return-object v0
.end method

.method public getParentMenu()Landroid/view/Menu;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/M;->z:Lk/p;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRootMenu()Lk/p;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/M;->z:Lk/p;

    .line 2
    .line 3
    invoke-virtual {v0}, Lk/p;->getRootMenu()Lk/p;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public isGroupDividerEnabled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lk/M;->z:Lk/p;

    .line 2
    .line 3
    invoke-virtual {v0}, Lk/p;->isGroupDividerEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isQwertyMode()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lk/M;->z:Lk/p;

    .line 2
    .line 3
    invoke-virtual {v0}, Lk/p;->isQwertyMode()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isShortcutsVisible()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lk/M;->z:Lk/p;

    .line 2
    .line 3
    invoke-virtual {v0}, Lk/p;->isShortcutsVisible()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public setCallback(Lk/n;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lk/M;->z:Lk/p;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lk/p;->setCallback(Lk/n;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setGroupDividerEnabled(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lk/M;->z:Lk/p;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lk/p;->setGroupDividerEnabled(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setHeaderIcon(I)Landroid/view/SubMenu;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lk/p;->setHeaderIconInt(I)Lk/p;

    move-result-object p1

    check-cast p1, Landroid/view/SubMenu;

    return-object p1
.end method

.method public setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk/p;->setHeaderIconInt(Landroid/graphics/drawable/Drawable;)Lk/p;

    move-result-object p1

    check-cast p1, Landroid/view/SubMenu;

    return-object p1
.end method

.method public setHeaderTitle(I)Landroid/view/SubMenu;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lk/p;->setHeaderTitleInt(I)Lk/p;

    move-result-object p1

    check-cast p1, Landroid/view/SubMenu;

    return-object p1
.end method

.method public setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk/p;->setHeaderTitleInt(Ljava/lang/CharSequence;)Lk/p;

    move-result-object p1

    check-cast p1, Landroid/view/SubMenu;

    return-object p1
.end method

.method public setHeaderView(Landroid/view/View;)Landroid/view/SubMenu;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk/p;->setHeaderViewInt(Landroid/view/View;)Lk/p;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Landroid/view/SubMenu;

    .line 6
    .line 7
    return-object p1
.end method

.method public setIcon(I)Landroid/view/SubMenu;
    .locals 1

    .line 2
    iget-object v0, p0, Lk/M;->A:Lk/s;

    invoke-virtual {v0, p1}, Lk/s;->setIcon(I)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/M;->A:Lk/s;

    invoke-virtual {v0, p1}, Lk/s;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setQwertyMode(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lk/M;->z:Lk/p;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lk/p;->setQwertyMode(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
