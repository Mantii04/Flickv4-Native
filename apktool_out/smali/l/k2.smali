.class public final Ll/k2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/E;


# instance fields
.field public b:Lk/p;

.field public e:Lk/s;

.field public final synthetic f:Landroidx/appcompat/widget/Toolbar;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/Toolbar;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ll/k2;->f:Landroidx/appcompat/widget/Toolbar;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public collapseItemActionView(Lk/p;Lk/s;)Z
    .locals 5

    .line 1
    iget-object p1, p0, Ll/k2;->f:Landroidx/appcompat/widget/Toolbar;

    .line 2
    .line 3
    iget-object v0, p1, Landroidx/appcompat/widget/Toolbar;->r:Landroid/view/View;

    .line 4
    .line 5
    instance-of v1, v0, Lj/d;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Lj/d;

    .line 10
    .line 11
    invoke-interface {v0}, Lj/d;->onActionViewCollapsed()V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v0, p1, Landroidx/appcompat/widget/Toolbar;->r:Landroid/view/View;

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p1, Landroidx/appcompat/widget/Toolbar;->q:Ll/N;

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p1, Landroidx/appcompat/widget/Toolbar;->r:Landroid/view/View;

    .line 26
    .line 27
    iget-object v1, p1, Landroidx/appcompat/widget/Toolbar;->N:Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    const/4 v3, 0x1

    .line 34
    sub-int/2addr v2, v3

    .line 35
    :goto_0
    if-ltz v2, :cond_1

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    check-cast v4, Landroid/view/View;

    .line 42
    .line 43
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 44
    .line 45
    .line 46
    add-int/lit8 v2, v2, -0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 50
    .line 51
    .line 52
    iput-object v0, p0, Ll/k2;->e:Lk/s;

    .line 53
    .line 54
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 55
    .line 56
    .line 57
    const/4 v0, 0x0

    .line 58
    invoke-virtual {p2, v0}, Lk/s;->setActionViewExpanded(Z)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->q()V

    .line 62
    .line 63
    .line 64
    return v3
.end method

.method public expandItemActionView(Lk/p;Lk/s;)Z
    .locals 5

    .line 1
    iget-object p1, p0, Ll/k2;->f:Landroidx/appcompat/widget/Toolbar;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->c()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p1, Landroidx/appcompat/widget/Toolbar;->q:Ll/N;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eq v0, p1, :cond_1

    .line 13
    .line 14
    instance-of v1, v0, Landroid/view/ViewGroup;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    check-cast v0, Landroid/view/ViewGroup;

    .line 19
    .line 20
    iget-object v1, p1, Landroidx/appcompat/widget/Toolbar;->q:Ll/N;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object v0, p1, Landroidx/appcompat/widget/Toolbar;->q:Ll/N;

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    invoke-virtual {p2}, Lk/s;->getActionView()Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iput-object v0, p1, Landroidx/appcompat/widget/Toolbar;->r:Landroid/view/View;

    .line 35
    .line 36
    iput-object p2, p0, Ll/k2;->e:Lk/s;

    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const/4 v1, 0x2

    .line 43
    if-eq v0, p1, :cond_3

    .line 44
    .line 45
    instance-of v2, v0, Landroid/view/ViewGroup;

    .line 46
    .line 47
    if-eqz v2, :cond_2

    .line 48
    .line 49
    check-cast v0, Landroid/view/ViewGroup;

    .line 50
    .line 51
    iget-object v2, p1, Landroidx/appcompat/widget/Toolbar;->r:Landroid/view/View;

    .line 52
    .line 53
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 54
    .line 55
    .line 56
    :cond_2
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->generateDefaultLayoutParams()Ll/l2;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    iget v2, p1, Landroidx/appcompat/widget/Toolbar;->w:I

    .line 61
    .line 62
    and-int/lit8 v2, v2, 0x70

    .line 63
    .line 64
    const v3, 0x800003

    .line 65
    .line 66
    .line 67
    or-int/2addr v2, v3

    .line 68
    iput v2, v0, Le/a;->a:I

    .line 69
    .line 70
    iput v1, v0, Ll/l2;->b:I

    .line 71
    .line 72
    iget-object v2, p1, Landroidx/appcompat/widget/Toolbar;->r:Landroid/view/View;

    .line 73
    .line 74
    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    .line 76
    .line 77
    iget-object v0, p1, Landroidx/appcompat/widget/Toolbar;->r:Landroid/view/View;

    .line 78
    .line 79
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 80
    .line 81
    .line 82
    :cond_3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    const/4 v2, 0x1

    .line 87
    sub-int/2addr v0, v2

    .line 88
    :goto_0
    if-ltz v0, :cond_5

    .line 89
    .line 90
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    check-cast v4, Ll/l2;

    .line 99
    .line 100
    iget v4, v4, Ll/l2;->b:I

    .line 101
    .line 102
    if-eq v4, v1, :cond_4

    .line 103
    .line 104
    iget-object v4, p1, Landroidx/appcompat/widget/Toolbar;->b:Landroidx/appcompat/widget/ActionMenuView;

    .line 105
    .line 106
    if-eq v3, v4, :cond_4

    .line 107
    .line 108
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 109
    .line 110
    .line 111
    iget-object v4, p1, Landroidx/appcompat/widget/Toolbar;->N:Ljava/util/ArrayList;

    .line 112
    .line 113
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    :cond_4
    add-int/lit8 v0, v0, -0x1

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p2, v2}, Lk/s;->setActionViewExpanded(Z)V

    .line 123
    .line 124
    .line 125
    iget-object p2, p1, Landroidx/appcompat/widget/Toolbar;->r:Landroid/view/View;

    .line 126
    .line 127
    instance-of v0, p2, Lj/d;

    .line 128
    .line 129
    if-eqz v0, :cond_6

    .line 130
    .line 131
    check-cast p2, Lj/d;

    .line 132
    .line 133
    invoke-interface {p2}, Lj/d;->onActionViewExpanded()V

    .line 134
    .line 135
    .line 136
    :cond_6
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->q()V

    .line 137
    .line 138
    .line 139
    return v2
.end method

.method public flagActionItems()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public getId()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public initForMenu(Landroid/content/Context;Lk/p;)V
    .locals 1

    .line 1
    iget-object p1, p0, Ll/k2;->b:Lk/p;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Ll/k2;->e:Lk/s;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lk/p;->collapseItemActionView(Lk/s;)Z

    .line 10
    .line 11
    .line 12
    :cond_0
    iput-object p2, p0, Ll/k2;->b:Lk/p;

    .line 13
    .line 14
    return-void
.end method

.method public onCloseMenu(Lk/p;Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public onSubMenuSelected(Lk/M;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public updateMenuView(Z)V
    .locals 3

    .line 1
    iget-object p1, p0, Ll/k2;->e:Lk/s;

    .line 2
    .line 3
    if-eqz p1, :cond_2

    .line 4
    .line 5
    iget-object p1, p0, Ll/k2;->b:Lk/p;

    .line 6
    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    invoke-virtual {p1}, Lk/p;->size()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    const/4 v0, 0x0

    .line 14
    :goto_0
    if-ge v0, p1, :cond_1

    .line 15
    .line 16
    iget-object v1, p0, Ll/k2;->b:Lk/p;

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Lk/p;->getItem(I)Landroid/view/MenuItem;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iget-object v2, p0, Ll/k2;->e:Lk/s;

    .line 23
    .line 24
    if-ne v1, v2, :cond_0

    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    iget-object p1, p0, Ll/k2;->b:Lk/p;

    .line 31
    .line 32
    iget-object v0, p0, Ll/k2;->e:Lk/s;

    .line 33
    .line 34
    invoke-virtual {p0, p1, v0}, Ll/k2;->collapseItemActionView(Lk/p;Lk/s;)Z

    .line 35
    .line 36
    .line 37
    :cond_2
    return-void
.end method
