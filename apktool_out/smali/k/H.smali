.class public Lk/H;
.super Le/V;
.source "SourceFile"

# interfaces
.implements Landroid/view/Menu;


# instance fields
.field public final c:LF/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;LF/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Le/V;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    iput-object p2, p0, Lk/H;->c:LF/a;

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 10
    .line 11
    const-string p2, "Wrapped Object can not be null."

    .line 12
    .line 13
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    throw p1
.end method


# virtual methods
.method public add(I)Landroid/view/MenuItem;
    .locals 1

    .line 2
    iget-object v0, p0, Lk/H;->c:LF/a;

    check-cast v0, Lk/p;

    invoke-virtual {v0, p1}, Lk/p;->add(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-virtual {p0, p1}, Le/V;->c(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public add(IIII)Landroid/view/MenuItem;
    .locals 1

    .line 4
    iget-object v0, p0, Lk/H;->c:LF/a;

    check-cast v0, Lk/p;

    invoke-virtual {v0, p1, p2, p3, p4}, Lk/p;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    invoke-virtual {p0, p1}, Le/V;->c(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1

    .line 3
    iget-object v0, p0, Lk/H;->c:LF/a;

    check-cast v0, Lk/p;

    invoke-virtual {v0, p1, p2, p3, p4}, Lk/p;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    invoke-virtual {p0, p1}, Le/V;->c(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/H;->c:LF/a;

    check-cast v0, Lk/p;

    invoke-virtual {v0, p1}, Lk/p;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    invoke-virtual {p0, p1}, Le/V;->c(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I
    .locals 11

    .line 1
    move-object/from16 v0, p8

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    array-length v1, v0

    .line 6
    new-array v1, v1, [Landroid/view/MenuItem;

    .line 7
    .line 8
    :goto_0
    move-object v10, v1

    .line 9
    goto :goto_1

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    goto :goto_0

    .line 12
    :goto_1
    iget-object v1, p0, Lk/H;->c:LF/a;

    .line 13
    .line 14
    move-object v2, v1

    .line 15
    check-cast v2, Lk/p;

    .line 16
    .line 17
    move v3, p1

    .line 18
    move v4, p2

    .line 19
    move v5, p3

    .line 20
    move-object v6, p4

    .line 21
    move-object/from16 v7, p5

    .line 22
    .line 23
    move-object/from16 v8, p6

    .line 24
    .line 25
    move/from16 v9, p7

    .line 26
    .line 27
    invoke-virtual/range {v2 .. v10}, Lk/p;->addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz v10, :cond_1

    .line 32
    .line 33
    array-length p2, v10

    .line 34
    const/4 p3, 0x0

    .line 35
    :goto_2
    if-ge p3, p2, :cond_1

    .line 36
    .line 37
    aget-object p4, v10, p3

    .line 38
    .line 39
    invoke-virtual {p0, p4}, Le/V;->c(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    .line 40
    .line 41
    .line 42
    move-result-object p4

    .line 43
    aput-object p4, v0, p3

    .line 44
    .line 45
    add-int/lit8 p3, p3, 0x1

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_1
    return p1
.end method

.method public addSubMenu(I)Landroid/view/SubMenu;
    .locals 1

    .line 2
    iget-object v0, p0, Lk/H;->c:LF/a;

    check-cast v0, Lk/p;

    invoke-virtual {v0, p1}, Lk/p;->addSubMenu(I)Landroid/view/SubMenu;

    move-result-object p1

    return-object p1
.end method

.method public addSubMenu(IIII)Landroid/view/SubMenu;
    .locals 1

    .line 4
    iget-object v0, p0, Lk/H;->c:LF/a;

    .line 5
    check-cast v0, Lk/p;

    invoke-virtual {v0, p1, p2, p3, p4}, Lk/p;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object p1

    return-object p1
.end method

.method public addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 1

    .line 3
    iget-object v0, p0, Lk/H;->c:LF/a;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object p1

    return-object p1
.end method

.method public addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/H;->c:LF/a;

    check-cast v0, Lk/p;

    invoke-virtual {v0, p1}, Lk/p;->addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object p1

    return-object p1
.end method

.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/V;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lp/q;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lp/q;->clear()V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lk/H;->c:LF/a;

    .line 11
    .line 12
    check-cast v0, Lk/p;

    .line 13
    .line 14
    invoke-virtual {v0}, Lk/p;->clear()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lk/H;->c:LF/a;

    .line 2
    .line 3
    check-cast v0, Lk/p;

    .line 4
    .line 5
    invoke-virtual {v0}, Lk/p;->close()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public findItem(I)Landroid/view/MenuItem;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/H;->c:LF/a;

    .line 2
    .line 3
    check-cast v0, Lk/p;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lk/p;->findItem(I)Landroid/view/MenuItem;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Le/V;->c(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public getItem(I)Landroid/view/MenuItem;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/H;->c:LF/a;

    .line 2
    .line 3
    check-cast v0, Lk/p;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lk/p;->getItem(I)Landroid/view/MenuItem;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Le/V;->c(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public hasVisibleItems()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lk/H;->c:LF/a;

    .line 2
    .line 3
    check-cast v0, Lk/p;

    .line 4
    .line 5
    invoke-virtual {v0}, Lk/p;->hasVisibleItems()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public isShortcutKey(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lk/H;->c:LF/a;

    .line 2
    .line 3
    check-cast v0, Lk/p;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lk/p;->isShortcutKey(ILandroid/view/KeyEvent;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public performIdentifierAction(II)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lk/H;->c:LF/a;

    .line 2
    .line 3
    check-cast v0, Lk/p;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lk/p;->performIdentifierAction(II)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public performShortcut(ILandroid/view/KeyEvent;I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lk/H;->c:LF/a;

    .line 2
    .line 3
    check-cast v0, Lk/p;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3}, Lk/p;->performShortcut(ILandroid/view/KeyEvent;I)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public removeGroup(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/V;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lp/q;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    iget-object v1, p0, Le/V;->b:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v1, Lp/q;

    .line 12
    .line 13
    invoke-virtual {v1}, Lp/q;->size()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-ge v0, v1, :cond_2

    .line 18
    .line 19
    iget-object v1, p0, Le/V;->b:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v1, Lp/q;

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Lp/q;->keyAt(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, LF/b;

    .line 28
    .line 29
    invoke-interface {v1}, Landroid/view/MenuItem;->getGroupId()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-ne v1, p1, :cond_1

    .line 34
    .line 35
    iget-object v1, p0, Le/V;->b:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v1, Lp/q;

    .line 38
    .line 39
    invoke-virtual {v1, v0}, Lp/q;->removeAt(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    add-int/lit8 v0, v0, -0x1

    .line 43
    .line 44
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    :goto_1
    iget-object v0, p0, Lk/H;->c:LF/a;

    .line 48
    .line 49
    check-cast v0, Lk/p;

    .line 50
    .line 51
    invoke-virtual {v0, p1}, Lk/p;->removeGroup(I)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public removeItem(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/V;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lp/q;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    iget-object v1, p0, Le/V;->b:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v1, Lp/q;

    .line 12
    .line 13
    invoke-virtual {v1}, Lp/q;->size()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-ge v0, v1, :cond_2

    .line 18
    .line 19
    iget-object v1, p0, Le/V;->b:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v1, Lp/q;

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Lp/q;->keyAt(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, LF/b;

    .line 28
    .line 29
    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-ne v1, p1, :cond_1

    .line 34
    .line 35
    iget-object v1, p0, Le/V;->b:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v1, Lp/q;

    .line 38
    .line 39
    invoke-virtual {v1, v0}, Lp/q;->removeAt(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    :goto_1
    iget-object v0, p0, Lk/H;->c:LF/a;

    .line 47
    .line 48
    check-cast v0, Lk/p;

    .line 49
    .line 50
    invoke-virtual {v0, p1}, Lk/p;->removeItem(I)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public setGroupCheckable(IZZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lk/H;->c:LF/a;

    .line 2
    .line 3
    check-cast v0, Lk/p;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3}, Lk/p;->setGroupCheckable(IZZ)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setGroupEnabled(IZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lk/H;->c:LF/a;

    .line 2
    .line 3
    check-cast v0, Lk/p;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lk/p;->setGroupEnabled(IZ)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setGroupVisible(IZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lk/H;->c:LF/a;

    .line 2
    .line 3
    check-cast v0, Lk/p;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lk/p;->setGroupVisible(IZ)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setQwertyMode(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lk/H;->c:LF/a;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroid/view/Menu;->setQwertyMode(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lk/H;->c:LF/a;

    .line 2
    .line 3
    check-cast v0, Lk/p;

    .line 4
    .line 5
    invoke-virtual {v0}, Lk/p;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method
