.class public abstract Landroidx/leanback/widget/N0;
.super Landroidx/leanback/widget/C0;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/leanback/widget/K0;

.field public final b:Z

.field public final c:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/leanback/widget/C0;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/leanback/widget/K0;

    .line 5
    .line 6
    invoke-direct {v0}, Landroidx/leanback/widget/K0;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/leanback/widget/N0;->a:Landroidx/leanback/widget/K0;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    iput-boolean v1, p0, Landroidx/leanback/widget/N0;->b:Z

    .line 13
    .line 14
    iput v1, p0, Landroidx/leanback/widget/N0;->c:I

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroidx/leanback/widget/K0;->setNullItemVisibilityGone(Z)V

    .line 17
    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final a(Landroidx/leanback/widget/M0;Landroid/view/View;)V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/leanback/widget/N0;->c:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_3

    .line 5
    .line 6
    const/4 v2, 0x2

    .line 7
    if-eq v0, v2, :cond_2

    .line 8
    .line 9
    const/4 v2, 0x3

    .line 10
    if-eq v0, v2, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    invoke-virtual {p1}, Landroidx/leanback/widget/M0;->isExpanded()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {p1}, Landroidx/leanback/widget/M0;->isSelected()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 v1, 0x0

    .line 27
    :goto_0
    invoke-virtual {p1, v1}, Landroidx/leanback/widget/M0;->setActivated(Z)V

    .line 28
    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_2
    invoke-virtual {p1}, Landroidx/leanback/widget/M0;->isSelected()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    invoke-virtual {p1, v0}, Landroidx/leanback/widget/M0;->setActivated(Z)V

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_3
    invoke-virtual {p1}, Landroidx/leanback/widget/M0;->isExpanded()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    invoke-virtual {p1, v0}, Landroidx/leanback/widget/M0;->setActivated(Z)V

    .line 44
    .line 45
    .line 46
    :goto_1
    invoke-virtual {p1, p2}, Landroidx/leanback/widget/M0;->syncActivatedStatus(Landroid/view/View;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public abstract createRowViewHolder(Landroid/view/ViewGroup;)Landroidx/leanback/widget/M0;
.end method

.method public dispatchItemSelectedListener(Landroidx/leanback/widget/M0;Z)V
    .locals 2

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget-object p2, p1, Landroidx/leanback/widget/M0;->l:Landroidx/leanback/widget/v;

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Landroidx/leanback/widget/M0;->getRowObject()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast p2, Lflix/com/vision/activities/leanback/fragment/k;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {p2, v1, v1, p1, v0}, Lflix/com/vision/activities/leanback/fragment/k;->onItemSelected(Landroidx/leanback/widget/A0;Ljava/lang/Object;Landroidx/leanback/widget/M0;Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public abstract freeze(Landroidx/leanback/widget/M0;Z)V
.end method

.method public final getHeaderPresenter()Landroidx/leanback/widget/K0;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/N0;->a:Landroidx/leanback/widget/K0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRowViewHolder(Landroidx/leanback/widget/A0;)Landroidx/leanback/widget/M0;
    .locals 1

    .line 1
    instance-of v0, p1, Landroidx/leanback/widget/L0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Landroidx/leanback/widget/L0;

    .line 6
    .line 7
    iget-object p1, p1, Landroidx/leanback/widget/L0;->b:Landroidx/leanback/widget/M0;

    .line 8
    .line 9
    return-object p1

    .line 10
    :cond_0
    check-cast p1, Landroidx/leanback/widget/M0;

    .line 11
    .line 12
    return-object p1
.end method

.method public final getSelectEffectEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/leanback/widget/N0;->b:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getSelectLevel(Landroidx/leanback/widget/A0;)F
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/N0;->getRowViewHolder(Landroidx/leanback/widget/A0;)Landroidx/leanback/widget/M0;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget p1, p1, Landroidx/leanback/widget/M0;->j:F

    .line 6
    .line 7
    return p1
.end method

.method public initializeRowViewHolder(Landroidx/leanback/widget/M0;)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p1, Landroidx/leanback/widget/M0;->i:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/leanback/widget/N0;->isClippingChildren()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p1, Landroidx/leanback/widget/A0;->a:Landroid/view/View;

    .line 11
    .line 12
    instance-of v1, v0, Landroid/view/ViewGroup;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    check-cast v0, Landroid/view/ViewGroup;

    .line 18
    .line 19
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object p1, p1, Landroidx/leanback/widget/M0;->b:Landroidx/leanback/widget/L0;

    .line 23
    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    iget-object p1, p1, Landroidx/leanback/widget/A0;->a:Landroid/view/View;

    .line 27
    .line 28
    check-cast p1, Landroid/view/ViewGroup;

    .line 29
    .line 30
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 31
    .line 32
    .line 33
    :cond_1
    return-void
.end method

.method public isClippingChildren()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract isUsingDefaultSelectEffect()Z
.end method

.method public onBindRowViewHolder(Landroidx/leanback/widget/M0;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iput-object p2, p1, Landroidx/leanback/widget/M0;->e:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v0, p2, Landroidx/leanback/widget/H0;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    move-object v0, p2

    .line 8
    check-cast v0, Landroidx/leanback/widget/H0;

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    iput-object v0, p1, Landroidx/leanback/widget/M0;->d:Landroidx/leanback/widget/H0;

    .line 13
    .line 14
    iget-object v0, p1, Landroidx/leanback/widget/M0;->c:Landroidx/leanback/widget/J0;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {p1}, Landroidx/leanback/widget/M0;->getRow()Landroidx/leanback/widget/H0;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    iget-object v0, p0, Landroidx/leanback/widget/N0;->a:Landroidx/leanback/widget/K0;

    .line 25
    .line 26
    iget-object p1, p1, Landroidx/leanback/widget/M0;->c:Landroidx/leanback/widget/J0;

    .line 27
    .line 28
    invoke-virtual {v0, p1, p2}, Landroidx/leanback/widget/K0;->onBindViewHolder(Landroidx/leanback/widget/A0;Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    return-void
.end method

.method public final onBindViewHolder(Landroidx/leanback/widget/A0;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/N0;->getRowViewHolder(Landroidx/leanback/widget/A0;)Landroidx/leanback/widget/M0;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/N0;->onBindRowViewHolder(Landroidx/leanback/widget/M0;Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;)Landroidx/leanback/widget/A0;
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/N0;->createRowViewHolder(Landroid/view/ViewGroup;)Landroidx/leanback/widget/M0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    iput-boolean v1, v0, Landroidx/leanback/widget/M0;->i:Z

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/leanback/widget/N0;->a:Landroidx/leanback/widget/K0;

    .line 9
    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/leanback/widget/N0;->isUsingDefaultSelectEffect()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/leanback/widget/N0;->getSelectEffectEnabled()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move-object p1, v0

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    :goto_0
    new-instance v2, Landroidx/leanback/widget/I0;

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-direct {v2, p1}, Landroidx/leanback/widget/I0;-><init>(Landroid/content/Context;)V

    .line 34
    .line 35
    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    iget-object p1, v0, Landroidx/leanback/widget/A0;->a:Landroid/view/View;

    .line 39
    .line 40
    check-cast p1, Landroid/view/ViewGroup;

    .line 41
    .line 42
    invoke-virtual {v1, p1}, Landroidx/leanback/widget/K0;->onCreateViewHolder(Landroid/view/ViewGroup;)Landroidx/leanback/widget/A0;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    check-cast p1, Landroidx/leanback/widget/J0;

    .line 47
    .line 48
    iput-object p1, v0, Landroidx/leanback/widget/M0;->c:Landroidx/leanback/widget/J0;

    .line 49
    .line 50
    :cond_2
    new-instance p1, Landroidx/leanback/widget/L0;

    .line 51
    .line 52
    invoke-direct {p1, v2, v0}, Landroidx/leanback/widget/L0;-><init>(Landroidx/leanback/widget/I0;Landroidx/leanback/widget/M0;)V

    .line 53
    .line 54
    .line 55
    :goto_1
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/N0;->initializeRowViewHolder(Landroidx/leanback/widget/M0;)V

    .line 56
    .line 57
    .line 58
    iget-boolean v0, v0, Landroidx/leanback/widget/M0;->i:Z

    .line 59
    .line 60
    if-eqz v0, :cond_3

    .line 61
    .line 62
    return-object p1

    .line 63
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    .line 64
    .line 65
    const-string v0, "super.initializeRowViewHolder() must be called"

    .line 66
    .line 67
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw p1
.end method

.method public onRowViewAttachedToWindow(Landroidx/leanback/widget/M0;)V
    .locals 1

    .line 1
    iget-object p1, p1, Landroidx/leanback/widget/M0;->c:Landroidx/leanback/widget/J0;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/leanback/widget/N0;->a:Landroidx/leanback/widget/K0;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroidx/leanback/widget/C0;->onViewAttachedToWindow(Landroidx/leanback/widget/A0;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public onRowViewDetachedFromWindow(Landroidx/leanback/widget/M0;)V
    .locals 2

    .line 1
    iget-object v0, p1, Landroidx/leanback/widget/M0;->c:Landroidx/leanback/widget/J0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/leanback/widget/N0;->a:Landroidx/leanback/widget/K0;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Landroidx/leanback/widget/C0;->onViewDetachedFromWindow(Landroidx/leanback/widget/A0;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object p1, p1, Landroidx/leanback/widget/A0;->a:Landroid/view/View;

    .line 11
    .line 12
    invoke-static {p1}, Landroidx/leanback/widget/C0;->cancelAnimationsRecursive(Landroid/view/View;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public onRowViewExpanded(Landroidx/leanback/widget/M0;Z)V
    .locals 1

    .line 1
    iget-object p2, p0, Landroidx/leanback/widget/N0;->a:Landroidx/leanback/widget/K0;

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    iget-object p2, p1, Landroidx/leanback/widget/M0;->c:Landroidx/leanback/widget/J0;

    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    iget-object p2, p1, Landroidx/leanback/widget/M0;->b:Landroidx/leanback/widget/L0;

    .line 10
    .line 11
    iget-object p2, p2, Landroidx/leanback/widget/A0;->a:Landroid/view/View;

    .line 12
    .line 13
    check-cast p2, Landroidx/leanback/widget/I0;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroidx/leanback/widget/M0;->isExpanded()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-virtual {p2, v0}, Landroidx/leanback/widget/I0;->showHeader(Z)V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object p2, p1, Landroidx/leanback/widget/A0;->a:Landroid/view/View;

    .line 23
    .line 24
    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/N0;->a(Landroidx/leanback/widget/M0;Landroid/view/View;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public onRowViewSelected(Landroidx/leanback/widget/M0;Z)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/N0;->dispatchItemSelectedListener(Landroidx/leanback/widget/M0;Z)V

    .line 2
    .line 3
    .line 4
    iget-object p2, p0, Landroidx/leanback/widget/N0;->a:Landroidx/leanback/widget/K0;

    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    iget-object p2, p1, Landroidx/leanback/widget/M0;->c:Landroidx/leanback/widget/J0;

    .line 9
    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    iget-object p2, p1, Landroidx/leanback/widget/M0;->b:Landroidx/leanback/widget/L0;

    .line 13
    .line 14
    iget-object p2, p2, Landroidx/leanback/widget/A0;->a:Landroid/view/View;

    .line 15
    .line 16
    check-cast p2, Landroidx/leanback/widget/I0;

    .line 17
    .line 18
    invoke-virtual {p1}, Landroidx/leanback/widget/M0;->isExpanded()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    invoke-virtual {p2, v0}, Landroidx/leanback/widget/I0;->showHeader(Z)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object p2, p1, Landroidx/leanback/widget/A0;->a:Landroid/view/View;

    .line 26
    .line 27
    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/N0;->a(Landroidx/leanback/widget/M0;Landroid/view/View;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public onSelectLevelChanged(Landroidx/leanback/widget/M0;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/leanback/widget/N0;->getSelectEffectEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p1, Landroidx/leanback/widget/M0;->k:Li0/a;

    .line 8
    .line 9
    iget v1, p1, Landroidx/leanback/widget/M0;->j:F

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Li0/a;->setActiveLevel(F)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p1, Landroidx/leanback/widget/M0;->c:Landroidx/leanback/widget/J0;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v1, p0, Landroidx/leanback/widget/N0;->a:Landroidx/leanback/widget/K0;

    .line 19
    .line 20
    iget v2, p1, Landroidx/leanback/widget/M0;->j:F

    .line 21
    .line 22
    invoke-virtual {v1, v0, v2}, Landroidx/leanback/widget/K0;->setSelectLevel(Landroidx/leanback/widget/J0;F)V

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-virtual {p0}, Landroidx/leanback/widget/N0;->isUsingDefaultSelectEffect()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    iget-object v0, p1, Landroidx/leanback/widget/M0;->b:Landroidx/leanback/widget/L0;

    .line 32
    .line 33
    iget-object v0, v0, Landroidx/leanback/widget/A0;->a:Landroid/view/View;

    .line 34
    .line 35
    check-cast v0, Landroidx/leanback/widget/I0;

    .line 36
    .line 37
    iget-object p1, p1, Landroidx/leanback/widget/M0;->k:Li0/a;

    .line 38
    .line 39
    invoke-virtual {p1}, Li0/a;->getPaint()Landroid/graphics/Paint;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    invoke-virtual {v0, p1}, Landroidx/leanback/widget/I0;->setForegroundColor(I)V

    .line 48
    .line 49
    .line 50
    :cond_1
    return-void
.end method

.method public onUnbindRowViewHolder(Landroidx/leanback/widget/M0;)V
    .locals 2

    .line 1
    iget-object v0, p1, Landroidx/leanback/widget/M0;->c:Landroidx/leanback/widget/J0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/leanback/widget/N0;->a:Landroidx/leanback/widget/K0;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Landroidx/leanback/widget/K0;->onUnbindViewHolder(Landroidx/leanback/widget/A0;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    iput-object v0, p1, Landroidx/leanback/widget/M0;->d:Landroidx/leanback/widget/H0;

    .line 12
    .line 13
    iput-object v0, p1, Landroidx/leanback/widget/M0;->e:Ljava/lang/Object;

    .line 14
    .line 15
    return-void
.end method

.method public final onUnbindViewHolder(Landroidx/leanback/widget/A0;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/N0;->getRowViewHolder(Landroidx/leanback/widget/A0;)Landroidx/leanback/widget/M0;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/N0;->onUnbindRowViewHolder(Landroidx/leanback/widget/M0;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onViewAttachedToWindow(Landroidx/leanback/widget/A0;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/N0;->getRowViewHolder(Landroidx/leanback/widget/A0;)Landroidx/leanback/widget/M0;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/N0;->onRowViewAttachedToWindow(Landroidx/leanback/widget/M0;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onViewDetachedFromWindow(Landroidx/leanback/widget/A0;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/N0;->getRowViewHolder(Landroidx/leanback/widget/A0;)Landroidx/leanback/widget/M0;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/N0;->onRowViewDetachedFromWindow(Landroidx/leanback/widget/M0;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setEntranceTransitionState(Landroidx/leanback/widget/M0;Z)V
    .locals 2

    .line 1
    iget-object v0, p1, Landroidx/leanback/widget/M0;->c:Landroidx/leanback/widget/J0;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, v0, Landroidx/leanback/widget/A0;->a:Landroid/view/View;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/16 v1, 0x8

    .line 12
    .line 13
    if-eq v0, v1, :cond_1

    .line 14
    .line 15
    iget-object p1, p1, Landroidx/leanback/widget/M0;->c:Landroidx/leanback/widget/J0;

    .line 16
    .line 17
    iget-object p1, p1, Landroidx/leanback/widget/A0;->a:Landroid/view/View;

    .line 18
    .line 19
    if-eqz p2, :cond_0

    .line 20
    .line 21
    const/4 p2, 0x0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p2, 0x4

    .line 24
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 25
    .line 26
    .line 27
    :cond_1
    return-void
.end method

.method public final setRowViewExpanded(Landroidx/leanback/widget/A0;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/N0;->getRowViewHolder(Landroidx/leanback/widget/A0;)Landroidx/leanback/widget/M0;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-boolean p2, p1, Landroidx/leanback/widget/M0;->h:Z

    .line 6
    .line 7
    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/N0;->onRowViewExpanded(Landroidx/leanback/widget/M0;Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final setRowViewSelected(Landroidx/leanback/widget/A0;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/N0;->getRowViewHolder(Landroidx/leanback/widget/A0;)Landroidx/leanback/widget/M0;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-boolean p2, p1, Landroidx/leanback/widget/M0;->g:Z

    .line 6
    .line 7
    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/N0;->onRowViewSelected(Landroidx/leanback/widget/M0;Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final setSelectLevel(Landroidx/leanback/widget/A0;F)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/N0;->getRowViewHolder(Landroidx/leanback/widget/A0;)Landroidx/leanback/widget/M0;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput p2, p1, Landroidx/leanback/widget/M0;->j:F

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/N0;->onSelectLevelChanged(Landroidx/leanback/widget/M0;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
