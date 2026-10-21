.class public final LJ3/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroid/graphics/drawable/Drawable;

.field public b:Ljava/lang/CharSequence;

.field public c:Ljava/lang/CharSequence;

.field public d:I

.field public e:Landroid/view/View;

.field public f:Lcom/google/android/material/tabs/TabLayout;

.field public g:LJ3/j;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, LJ3/h;->d:I

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public getCustomView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, LJ3/h;->e:Landroid/view/View;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, LJ3/h;->a:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .line 1
    iget v0, p0, LJ3/h;->d:I

    .line 2
    .line 3
    return v0
.end method

.method public getTabLabelVisibility()I
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, LJ3/h;->b:Ljava/lang/CharSequence;

    .line 2
    .line 3
    return-object v0
.end method

.method public isSelected()Z
    .locals 2

    .line 1
    iget-object v0, p0, LJ3/h;->f:Lcom/google/android/material/tabs/TabLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getSelectedTabPosition()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, -0x1

    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    .line 12
    iget v1, p0, LJ3/h;->d:I

    .line 13
    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    return v0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    return v0

    .line 20
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 21
    .line 22
    const-string v1, "Tab not attached to a TabLayout"

    .line 23
    .line 24
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw v0
.end method

.method public select()V
    .locals 2

    .line 1
    iget-object v0, p0, LJ3/h;->f:Lcom/google/android/material/tabs/TabLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lcom/google/android/material/tabs/TabLayout;->selectTab(LJ3/h;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 10
    .line 11
    const-string v1, "Tab not attached to a TabLayout"

    .line 12
    .line 13
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    throw v0
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)LJ3/h;
    .locals 1

    .line 1
    iput-object p1, p0, LJ3/h;->c:Ljava/lang/CharSequence;

    .line 2
    .line 3
    iget-object p1, p0, LJ3/h;->g:LJ3/j;

    .line 4
    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    invoke-virtual {p1}, LJ3/j;->e()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p1, LJ3/j;->b:LJ3/h;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, LJ3/h;->isSelected()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    :goto_0
    invoke-virtual {p1, v0}, LJ3/j;->setSelected(Z)V

    .line 24
    .line 25
    .line 26
    :cond_1
    return-object p0
.end method

.method public setCustomView(I)LJ3/h;
    .locals 3

    .line 5
    iget-object v0, p0, LJ3/h;->g:LJ3/j;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 6
    iget-object v1, p0, LJ3/h;->g:LJ3/j;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, LJ3/h;->setCustomView(Landroid/view/View;)LJ3/h;

    move-result-object p1

    return-object p1
.end method

.method public setCustomView(Landroid/view/View;)LJ3/h;
    .locals 1

    .line 1
    iput-object p1, p0, LJ3/h;->e:Landroid/view/View;

    .line 2
    iget-object p1, p0, LJ3/h;->g:LJ3/j;

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, LJ3/j;->e()V

    .line 4
    iget-object v0, p1, LJ3/j;->b:LJ3/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LJ3/h;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, LJ3/j;->setSelected(Z)V

    :cond_1
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)LJ3/h;
    .locals 3

    .line 1
    iput-object p1, p0, LJ3/h;->a:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    iget-object p1, p0, LJ3/h;->f:Lcom/google/android/material/tabs/TabLayout;

    .line 4
    .line 5
    iget v0, p1, Lcom/google/android/material/tabs/TabLayout;->I:I

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    iget v0, p1, Lcom/google/android/material/tabs/TabLayout;->L:I

    .line 11
    .line 12
    const/4 v2, 0x2

    .line 13
    if-ne v0, v2, :cond_1

    .line 14
    .line 15
    :cond_0
    invoke-virtual {p1, v1}, Lcom/google/android/material/tabs/TabLayout;->f(Z)V

    .line 16
    .line 17
    .line 18
    :cond_1
    iget-object p1, p0, LJ3/h;->g:LJ3/j;

    .line 19
    .line 20
    if-eqz p1, :cond_3

    .line 21
    .line 22
    invoke-virtual {p1}, LJ3/j;->e()V

    .line 23
    .line 24
    .line 25
    iget-object v0, p1, LJ3/j;->b:LJ3/h;

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    invoke-virtual {v0}, LJ3/h;->isSelected()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    const/4 v1, 0x0

    .line 37
    :goto_0
    invoke-virtual {p1, v1}, LJ3/j;->setSelected(Z)V

    .line 38
    .line 39
    .line 40
    :cond_3
    return-object p0
.end method

.method public setText(Ljava/lang/CharSequence;)LJ3/h;
    .locals 1

    .line 1
    iget-object v0, p0, LJ3/h;->c:Ljava/lang/CharSequence;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, LJ3/h;->g:LJ3/j;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iput-object p1, p0, LJ3/h;->b:Ljava/lang/CharSequence;

    .line 21
    .line 22
    iget-object p1, p0, LJ3/h;->g:LJ3/j;

    .line 23
    .line 24
    if-eqz p1, :cond_2

    .line 25
    .line 26
    invoke-virtual {p1}, LJ3/j;->e()V

    .line 27
    .line 28
    .line 29
    iget-object v0, p1, LJ3/j;->b:LJ3/h;

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    invoke-virtual {v0}, LJ3/h;->isSelected()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    const/4 v0, 0x1

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const/4 v0, 0x0

    .line 42
    :goto_0
    invoke-virtual {p1, v0}, LJ3/j;->setSelected(Z)V

    .line 43
    .line 44
    .line 45
    :cond_2
    return-object p0
.end method
