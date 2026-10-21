.class public abstract Lk/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/E;


# instance fields
.field public final b:Landroid/content/Context;

.field public e:Landroid/content/Context;

.field public f:Lk/p;

.field public final j:Landroid/view/LayoutInflater;

.field public m:Lk/D;

.field public final n:I

.field public final p:I

.field public q:Lk/G;

.field public r:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lk/d;->b:Landroid/content/Context;

    .line 5
    .line 6
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lk/d;->j:Landroid/view/LayoutInflater;

    .line 11
    .line 12
    iput p2, p0, Lk/d;->n:I

    .line 13
    .line 14
    iput p3, p0, Lk/d;->p:I

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public addItemView(Landroid/view/View;I)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroid/view/ViewGroup;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lk/d;->q:Lk/G;

    .line 13
    .line 14
    check-cast v0, Landroid/view/ViewGroup;

    .line 15
    .line 16
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public abstract bindItemView(Lk/s;Lk/F;)V
.end method

.method public collapseItemActionView(Lk/p;Lk/s;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public createItemView(Landroid/view/ViewGroup;)Lk/F;
    .locals 3

    .line 1
    iget v0, p0, Lk/d;->p:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lk/d;->j:Landroid/view/LayoutInflater;

    .line 5
    .line 6
    invoke-virtual {v2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Lk/F;

    .line 11
    .line 12
    return-object p1
.end method

.method public expandItemActionView(Lk/p;Lk/s;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public filterLeftoverView(Landroid/view/ViewGroup;I)Z
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    return p1
.end method

.method public getCallback()Lk/D;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/d;->m:Lk/D;

    .line 2
    .line 3
    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lk/d;->r:I

    .line 2
    .line 3
    return v0
.end method

.method public getItemView(Lk/s;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 1
    instance-of v0, p2, Lk/F;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p2, Lk/F;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0, p3}, Lk/d;->createItemView(Landroid/view/ViewGroup;)Lk/F;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    :goto_0
    invoke-virtual {p0, p1, p2}, Lk/d;->bindItemView(Lk/s;Lk/F;)V

    .line 13
    .line 14
    .line 15
    check-cast p2, Landroid/view/View;

    .line 16
    .line 17
    return-object p2
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lk/G;
    .locals 3

    .line 1
    iget-object v0, p0, Lk/d;->q:Lk/G;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lk/d;->n:I

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iget-object v2, p0, Lk/d;->j:Landroid/view/LayoutInflater;

    .line 9
    .line 10
    invoke-virtual {v2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lk/G;

    .line 15
    .line 16
    iput-object p1, p0, Lk/d;->q:Lk/G;

    .line 17
    .line 18
    iget-object v0, p0, Lk/d;->f:Lk/p;

    .line 19
    .line 20
    invoke-interface {p1, v0}, Lk/G;->initialize(Lk/p;)V

    .line 21
    .line 22
    .line 23
    const/4 p1, 0x1

    .line 24
    invoke-virtual {p0, p1}, Lk/d;->updateMenuView(Z)V

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-object p1, p0, Lk/d;->q:Lk/G;

    .line 28
    .line 29
    return-object p1
.end method

.method public initForMenu(Landroid/content/Context;Lk/p;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk/d;->e:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lk/d;->f:Lk/p;

    .line 7
    .line 8
    return-void
.end method

.method public onCloseMenu(Lk/p;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lk/d;->m:Lk/D;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lk/D;->onCloseMenu(Lk/p;Z)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public onSubMenuSelected(Lk/M;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lk/d;->m:Lk/D;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lk/d;->f:Lk/p;

    .line 9
    .line 10
    :goto_0
    invoke-interface {v0, p1}, Lk/D;->onOpenSubMenu(Lk/p;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1

    .line 15
    :cond_1
    const/4 p1, 0x0

    .line 16
    return p1
.end method

.method public setCallback(Lk/D;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk/d;->m:Lk/D;

    .line 2
    .line 3
    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lk/d;->r:I

    .line 2
    .line 3
    return-void
.end method

.method public abstract shouldIncludeItem(ILk/s;)Z
.end method

.method public updateMenuView(Z)V
    .locals 9

    .line 1
    iget-object p1, p0, Lk/d;->q:Lk/G;

    .line 2
    .line 3
    check-cast p1, Landroid/view/ViewGroup;

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    goto :goto_3

    .line 8
    :cond_0
    iget-object v0, p0, Lk/d;->f:Lk/p;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_6

    .line 12
    .line 13
    invoke-virtual {v0}, Lk/p;->flagActionItems()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lk/d;->f:Lk/p;

    .line 17
    .line 18
    invoke-virtual {v0}, Lk/p;->getVisibleItems()Ljava/util/ArrayList;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    move v3, v1

    .line 27
    move v4, v3

    .line 28
    :goto_0
    if-ge v3, v2, :cond_5

    .line 29
    .line 30
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    check-cast v5, Lk/s;

    .line 35
    .line 36
    invoke-virtual {p0, v4, v5}, Lk/d;->shouldIncludeItem(ILk/s;)Z

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    if-eqz v6, :cond_4

    .line 41
    .line 42
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    instance-of v7, v6, Lk/F;

    .line 47
    .line 48
    if-eqz v7, :cond_1

    .line 49
    .line 50
    move-object v7, v6

    .line 51
    check-cast v7, Lk/F;

    .line 52
    .line 53
    invoke-interface {v7}, Lk/F;->getItemData()Lk/s;

    .line 54
    .line 55
    .line 56
    move-result-object v7

    .line 57
    goto :goto_1

    .line 58
    :cond_1
    const/4 v7, 0x0

    .line 59
    :goto_1
    invoke-virtual {p0, v5, v6, p1}, Lk/d;->getItemView(Lk/s;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object v8

    .line 63
    if-eq v5, v7, :cond_2

    .line 64
    .line 65
    invoke-virtual {v8, v1}, Landroid/view/View;->setPressed(Z)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v8}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 69
    .line 70
    .line 71
    :cond_2
    if-eq v8, v6, :cond_3

    .line 72
    .line 73
    invoke-virtual {p0, v8, v4}, Lk/d;->addItemView(Landroid/view/View;I)V

    .line 74
    .line 75
    .line 76
    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 77
    .line 78
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_5
    move v1, v4

    .line 82
    :cond_6
    :goto_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-ge v1, v0, :cond_7

    .line 87
    .line 88
    invoke-virtual {p0, p1, v1}, Lk/d;->filterLeftoverView(Landroid/view/ViewGroup;I)Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-nez v0, :cond_6

    .line 93
    .line 94
    add-int/lit8 v1, v1, 0x1

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_7
    :goto_3
    return-void
.end method
