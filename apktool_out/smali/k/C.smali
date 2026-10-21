.class public Lk/C;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lk/p;

.field public final c:Z

.field public final d:I

.field public final e:I

.field public f:Landroid/view/View;

.field public g:I

.field public h:Z

.field public i:Lk/D;

.field public j:Lk/z;

.field public k:Landroid/widget/PopupWindow$OnDismissListener;

.field public final l:Lk/A;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lk/p;Landroid/view/View;ZI)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 1
    invoke-direct/range {v0 .. v6}, Lk/C;-><init>(Landroid/content/Context;Lk/p;Landroid/view/View;ZII)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lk/p;Landroid/view/View;ZII)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x800003

    .line 3
    iput v0, p0, Lk/C;->g:I

    .line 4
    new-instance v0, Lk/A;

    invoke-direct {v0, p0}, Lk/A;-><init>(Lk/C;)V

    iput-object v0, p0, Lk/C;->l:Lk/A;

    .line 5
    iput-object p1, p0, Lk/C;->a:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Lk/C;->b:Lk/p;

    .line 7
    iput-object p3, p0, Lk/C;->f:Landroid/view/View;

    .line 8
    iput-boolean p4, p0, Lk/C;->c:Z

    .line 9
    iput p5, p0, Lk/C;->d:I

    .line 10
    iput p6, p0, Lk/C;->e:I

    return-void
.end method


# virtual methods
.method public final a(IIZZ)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lk/C;->getPopup()Lk/z;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p4}, Lk/z;->setShowTitle(Z)V

    .line 6
    .line 7
    .line 8
    if-eqz p3, :cond_1

    .line 9
    .line 10
    iget p3, p0, Lk/C;->g:I

    .line 11
    .line 12
    iget-object p4, p0, Lk/C;->f:Landroid/view/View;

    .line 13
    .line 14
    invoke-static {p4}, LM/p0;->getLayoutDirection(Landroid/view/View;)I

    .line 15
    .line 16
    .line 17
    move-result p4

    .line 18
    invoke-static {p3, p4}, LM/s;->getAbsoluteGravity(II)I

    .line 19
    .line 20
    .line 21
    move-result p3

    .line 22
    and-int/lit8 p3, p3, 0x7

    .line 23
    .line 24
    const/4 p4, 0x5

    .line 25
    if-ne p3, p4, :cond_0

    .line 26
    .line 27
    iget-object p3, p0, Lk/C;->f:Landroid/view/View;

    .line 28
    .line 29
    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    .line 30
    .line 31
    .line 32
    move-result p3

    .line 33
    sub-int/2addr p1, p3

    .line 34
    :cond_0
    invoke-virtual {v0, p1}, Lk/z;->setHorizontalOffset(I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p2}, Lk/z;->setVerticalOffset(I)V

    .line 38
    .line 39
    .line 40
    iget-object p3, p0, Lk/C;->a:Landroid/content/Context;

    .line 41
    .line 42
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 43
    .line 44
    .line 45
    move-result-object p3

    .line 46
    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 47
    .line 48
    .line 49
    move-result-object p3

    .line 50
    iget p3, p3, Landroid/util/DisplayMetrics;->density:F

    .line 51
    .line 52
    const/high16 p4, 0x42400000    # 48.0f

    .line 53
    .line 54
    mul-float/2addr p3, p4

    .line 55
    const/high16 p4, 0x40000000    # 2.0f

    .line 56
    .line 57
    div-float/2addr p3, p4

    .line 58
    float-to-int p3, p3

    .line 59
    new-instance p4, Landroid/graphics/Rect;

    .line 60
    .line 61
    sub-int v1, p1, p3

    .line 62
    .line 63
    sub-int v2, p2, p3

    .line 64
    .line 65
    add-int/2addr p1, p3

    .line 66
    add-int/2addr p2, p3

    .line 67
    invoke-direct {p4, v1, v2, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, p4}, Lk/z;->setEpicenterBounds(Landroid/graphics/Rect;)V

    .line 71
    .line 72
    .line 73
    :cond_1
    invoke-interface {v0}, Lk/I;->show()V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method public dismiss()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lk/C;->isShowing()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lk/C;->j:Lk/z;

    .line 8
    .line 9
    invoke-interface {v0}, Lk/I;->dismiss()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public getPopup()Lk/z;
    .locals 10

    .line 1
    iget-object v0, p0, Lk/C;->j:Lk/z;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-string v0, "window"

    .line 6
    .line 7
    iget-object v1, p0, Lk/C;->a:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/view/WindowManager;

    .line 14
    .line 15
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    new-instance v2, Landroid/graphics/Point;

    .line 20
    .line 21
    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-static {v0, v2}, Lk/B;->a(Landroid/view/Display;Landroid/graphics/Point;)V

    .line 25
    .line 26
    .line 27
    iget v0, v2, Landroid/graphics/Point;->x:I

    .line 28
    .line 29
    iget v2, v2, Landroid/graphics/Point;->y:I

    .line 30
    .line 31
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    sget v2, Landroidx/appcompat/R$dimen;->abc_cascading_menus_min_smallest_width:I

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-lt v0, v1, :cond_0

    .line 46
    .line 47
    new-instance v2, Lk/j;

    .line 48
    .line 49
    iget-object v4, p0, Lk/C;->f:Landroid/view/View;

    .line 50
    .line 51
    iget v6, p0, Lk/C;->e:I

    .line 52
    .line 53
    iget-boolean v7, p0, Lk/C;->c:Z

    .line 54
    .line 55
    iget-object v3, p0, Lk/C;->a:Landroid/content/Context;

    .line 56
    .line 57
    iget v5, p0, Lk/C;->d:I

    .line 58
    .line 59
    invoke-direct/range {v2 .. v7}, Lk/j;-><init>(Landroid/content/Context;Landroid/view/View;IIZ)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    new-instance v3, Lk/L;

    .line 64
    .line 65
    iget-object v6, p0, Lk/C;->f:Landroid/view/View;

    .line 66
    .line 67
    iget v8, p0, Lk/C;->e:I

    .line 68
    .line 69
    iget-boolean v9, p0, Lk/C;->c:Z

    .line 70
    .line 71
    iget-object v4, p0, Lk/C;->a:Landroid/content/Context;

    .line 72
    .line 73
    iget-object v5, p0, Lk/C;->b:Lk/p;

    .line 74
    .line 75
    iget v7, p0, Lk/C;->d:I

    .line 76
    .line 77
    invoke-direct/range {v3 .. v9}, Lk/L;-><init>(Landroid/content/Context;Lk/p;Landroid/view/View;IIZ)V

    .line 78
    .line 79
    .line 80
    move-object v2, v3

    .line 81
    :goto_0
    iget-object v0, p0, Lk/C;->b:Lk/p;

    .line 82
    .line 83
    invoke-virtual {v2, v0}, Lk/z;->addMenu(Lk/p;)V

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, Lk/C;->l:Lk/A;

    .line 87
    .line 88
    invoke-virtual {v2, v0}, Lk/z;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 89
    .line 90
    .line 91
    iget-object v0, p0, Lk/C;->f:Landroid/view/View;

    .line 92
    .line 93
    invoke-virtual {v2, v0}, Lk/z;->setAnchorView(Landroid/view/View;)V

    .line 94
    .line 95
    .line 96
    iget-object v0, p0, Lk/C;->i:Lk/D;

    .line 97
    .line 98
    invoke-interface {v2, v0}, Lk/E;->setCallback(Lk/D;)V

    .line 99
    .line 100
    .line 101
    iget-boolean v0, p0, Lk/C;->h:Z

    .line 102
    .line 103
    invoke-virtual {v2, v0}, Lk/z;->setForceShowIcon(Z)V

    .line 104
    .line 105
    .line 106
    iget v0, p0, Lk/C;->g:I

    .line 107
    .line 108
    invoke-virtual {v2, v0}, Lk/z;->setGravity(I)V

    .line 109
    .line 110
    .line 111
    iput-object v2, p0, Lk/C;->j:Lk/z;

    .line 112
    .line 113
    :cond_1
    iget-object v0, p0, Lk/C;->j:Lk/z;

    .line 114
    .line 115
    return-object v0
.end method

.method public isShowing()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lk/C;->j:Lk/z;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lk/I;->isShowing()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    return v0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    return v0
.end method

.method public onDismiss()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lk/C;->j:Lk/z;

    .line 3
    .line 4
    iget-object v0, p0, Lk/C;->k:Landroid/widget/PopupWindow$OnDismissListener;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk/C;->f:Landroid/view/View;

    .line 2
    .line 3
    return-void
.end method

.method public setForceShowIcon(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lk/C;->h:Z

    .line 2
    .line 3
    iget-object v0, p0, Lk/C;->j:Lk/z;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lk/z;->setForceShowIcon(Z)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setGravity(I)V
    .locals 0

    .line 1
    iput p1, p0, Lk/C;->g:I

    .line 2
    .line 3
    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk/C;->k:Landroid/widget/PopupWindow$OnDismissListener;

    .line 2
    .line 3
    return-void
.end method

.method public setPresenterCallback(Lk/D;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lk/C;->i:Lk/D;

    .line 2
    .line 3
    iget-object v0, p0, Lk/C;->j:Lk/z;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p1}, Lk/E;->setCallback(Lk/D;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public show()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lk/C;->tryShow()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 9
    .line 10
    const-string v1, "MenuPopupHelper cannot be used without an anchor"

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw v0
.end method

.method public tryShow()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lk/C;->isShowing()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lk/C;->f:Landroid/view/View;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 3
    :cond_1
    invoke-virtual {p0, v2, v2, v2, v2}, Lk/C;->a(IIZZ)V

    return v1
.end method

.method public tryShow(II)Z
    .locals 2

    .line 4
    invoke-virtual {p0}, Lk/C;->isShowing()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 5
    :cond_0
    iget-object v0, p0, Lk/C;->f:Landroid/view/View;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 6
    :cond_1
    invoke-virtual {p0, p1, p2, v1, v1}, Lk/C;->a(IIZZ)V

    return v1
.end method
