.class public abstract Lg/p;
.super Lg/l;
.source "SourceFile"


# instance fields
.field public w:Lg/o;

.field public x:Z


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lg/l;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p0, p1}, Lg/p;->onStateChange([I)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lg/p;->x:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0}, Lg/l;->mutate()Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-ne v0, p0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lg/p;->w:Lg/o;

    .line 12
    .line 13
    check-cast v0, Lg/b;

    .line 14
    .line 15
    iget-object v1, v0, Lg/b;->I:Lp/n;

    .line 16
    .line 17
    invoke-virtual {v1}, Lp/n;->clone()Lp/n;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iput-object v1, v0, Lg/b;->I:Lp/n;

    .line 22
    .line 23
    iget-object v1, v0, Lg/b;->J:Lp/r;

    .line 24
    .line 25
    invoke-virtual {v1}, Lp/r;->clone()Lp/r;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iput-object v1, v0, Lg/b;->J:Lp/r;

    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    iput-boolean v0, p0, Lg/p;->x:Z

    .line 33
    .line 34
    :cond_0
    return-object p0
.end method

.method public abstract onStateChange([I)Z
.end method
