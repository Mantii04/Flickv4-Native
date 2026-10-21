.class public final Lk/L;
.super Lk/z;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;
.implements Landroid/view/View$OnKeyListener;


# static fields
.field public static final E:I


# instance fields
.field public A:Z

.field public B:I

.field public C:I

.field public D:Z

.field public final e:Landroid/content/Context;

.field public final f:Lk/p;

.field public final j:Lk/m;

.field public final m:Z

.field public final n:I

.field public final p:I

.field public final q:I

.field public final r:Ll/r1;

.field public final s:Lk/J;

.field public final t:Lk/K;

.field public u:Landroid/widget/PopupWindow$OnDismissListener;

.field public v:Landroid/view/View;

.field public w:Landroid/view/View;

.field public x:Lk/D;

.field public y:Landroid/view/ViewTreeObserver;

.field public z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, Landroidx/appcompat/R$layout;->abc_popup_menu_item_layout:I

    .line 2
    .line 3
    sput v0, Lk/L;->E:I

    .line 4
    .line 5
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lk/p;Landroid/view/View;IIZ)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lk/J;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lk/J;-><init>(Lk/L;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lk/L;->s:Lk/J;

    .line 10
    .line 11
    new-instance v0, Lk/K;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lk/K;-><init>(Lk/L;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lk/L;->t:Lk/K;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lk/L;->C:I

    .line 20
    .line 21
    iput-object p1, p0, Lk/L;->e:Landroid/content/Context;

    .line 22
    .line 23
    iput-object p2, p0, Lk/L;->f:Lk/p;

    .line 24
    .line 25
    iput-boolean p6, p0, Lk/L;->m:Z

    .line 26
    .line 27
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    new-instance v1, Lk/m;

    .line 32
    .line 33
    sget v2, Lk/L;->E:I

    .line 34
    .line 35
    invoke-direct {v1, p2, v0, p6, v2}, Lk/m;-><init>(Lk/p;Landroid/view/LayoutInflater;ZI)V

    .line 36
    .line 37
    .line 38
    iput-object v1, p0, Lk/L;->j:Lk/m;

    .line 39
    .line 40
    iput p4, p0, Lk/L;->p:I

    .line 41
    .line 42
    iput p5, p0, Lk/L;->q:I

    .line 43
    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 45
    .line 46
    .line 47
    move-result-object p6

    .line 48
    invoke-virtual {p6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 53
    .line 54
    div-int/lit8 v0, v0, 0x2

    .line 55
    .line 56
    sget v1, Landroidx/appcompat/R$dimen;->abc_config_prefDialogWidth:I

    .line 57
    .line 58
    invoke-virtual {p6, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 59
    .line 60
    .line 61
    move-result p6

    .line 62
    invoke-static {v0, p6}, Ljava/lang/Math;->max(II)I

    .line 63
    .line 64
    .line 65
    move-result p6

    .line 66
    iput p6, p0, Lk/L;->n:I

    .line 67
    .line 68
    iput-object p3, p0, Lk/L;->v:Landroid/view/View;

    .line 69
    .line 70
    new-instance p3, Ll/r1;

    .line 71
    .line 72
    const/4 p6, 0x0

    .line 73
    invoke-direct {p3, p1, p6, p4, p5}, Ll/r1;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 74
    .line 75
    .line 76
    iput-object p3, p0, Lk/L;->r:Ll/r1;

    .line 77
    .line 78
    invoke-virtual {p2, p0, p1}, Lk/p;->addMenuPresenter(Lk/E;Landroid/content/Context;)V

    .line 79
    .line 80
    .line 81
    return-void
.end method


# virtual methods
.method public addMenu(Lk/p;)V
    .locals 0

    .line 1
    return-void
.end method

.method public dismiss()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lk/L;->isShowing()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lk/L;->r:Ll/r1;

    .line 8
    .line 9
    invoke-virtual {v0}, Ll/l1;->dismiss()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public flagActionItems()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/L;->r:Ll/r1;

    .line 2
    .line 3
    invoke-virtual {v0}, Ll/l1;->getListView()Landroid/widget/ListView;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public isShowing()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lk/L;->z:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lk/L;->r:Ll/r1;

    .line 6
    .line 7
    invoke-virtual {v0}, Ll/l1;->isShowing()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    return v0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    return v0
.end method

.method public onCloseMenu(Lk/p;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lk/L;->f:Lk/p;

    .line 2
    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lk/L;->dismiss()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lk/L;->x:Lk/D;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-interface {v0, p1, p2}, Lk/D;->onCloseMenu(Lk/p;Z)V

    .line 14
    .line 15
    .line 16
    :cond_1
    :goto_0
    return-void
.end method

.method public onDismiss()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lk/L;->z:Z

    .line 3
    .line 4
    iget-object v0, p0, Lk/L;->f:Lk/p;

    .line 5
    .line 6
    invoke-virtual {v0}, Lk/p;->close()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lk/L;->y:Landroid/view/ViewTreeObserver;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lk/L;->w:Landroid/view/View;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p0, Lk/L;->y:Landroid/view/ViewTreeObserver;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lk/L;->y:Landroid/view/ViewTreeObserver;

    .line 28
    .line 29
    iget-object v1, p0, Lk/L;->s:Lk/J;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 32
    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lk/L;->y:Landroid/view/ViewTreeObserver;

    .line 36
    .line 37
    :cond_1
    iget-object v0, p0, Lk/L;->w:Landroid/view/View;

    .line 38
    .line 39
    iget-object v1, p0, Lk/L;->t:Lk/K;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lk/L;->u:Landroid/widget/PopupWindow$OnDismissListener;

    .line 45
    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    .line 49
    .line 50
    .line 51
    :cond_2
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 p3, 0x1

    .line 6
    if-ne p1, p3, :cond_0

    .line 7
    .line 8
    const/16 p1, 0x52

    .line 9
    .line 10
    if-ne p2, p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lk/L;->dismiss()V

    .line 13
    .line 14
    .line 15
    return p3

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    return p1
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
    .locals 9

    .line 1
    invoke-virtual {p1}, Lk/p;->hasVisibleItems()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    new-instance v2, Lk/C;

    .line 9
    .line 10
    iget-object v5, p0, Lk/L;->w:Landroid/view/View;

    .line 11
    .line 12
    iget v7, p0, Lk/L;->p:I

    .line 13
    .line 14
    iget v8, p0, Lk/L;->q:I

    .line 15
    .line 16
    iget-object v3, p0, Lk/L;->e:Landroid/content/Context;

    .line 17
    .line 18
    iget-boolean v6, p0, Lk/L;->m:Z

    .line 19
    .line 20
    move-object v4, p1

    .line 21
    invoke-direct/range {v2 .. v8}, Lk/C;-><init>(Landroid/content/Context;Lk/p;Landroid/view/View;ZII)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lk/L;->x:Lk/D;

    .line 25
    .line 26
    invoke-virtual {v2, p1}, Lk/C;->setPresenterCallback(Lk/D;)V

    .line 27
    .line 28
    .line 29
    invoke-static {v4}, Lk/z;->shouldPreserveIconSpacing(Lk/p;)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    invoke-virtual {v2, p1}, Lk/C;->setForceShowIcon(Z)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lk/L;->u:Landroid/widget/PopupWindow$OnDismissListener;

    .line 37
    .line 38
    invoke-virtual {v2, p1}, Lk/C;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 39
    .line 40
    .line 41
    const/4 p1, 0x0

    .line 42
    iput-object p1, p0, Lk/L;->u:Landroid/widget/PopupWindow$OnDismissListener;

    .line 43
    .line 44
    iget-object p1, p0, Lk/L;->f:Lk/p;

    .line 45
    .line 46
    invoke-virtual {p1, v1}, Lk/p;->close(Z)V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lk/L;->r:Ll/r1;

    .line 50
    .line 51
    invoke-virtual {p1}, Ll/l1;->getHorizontalOffset()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    invoke-virtual {p1}, Ll/l1;->getVerticalOffset()I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    iget v3, p0, Lk/L;->C:I

    .line 60
    .line 61
    iget-object v5, p0, Lk/L;->v:Landroid/view/View;

    .line 62
    .line 63
    invoke-static {v5}, LM/p0;->getLayoutDirection(Landroid/view/View;)I

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    invoke-static {v3, v5}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    and-int/lit8 v3, v3, 0x7

    .line 72
    .line 73
    const/4 v5, 0x5

    .line 74
    if-ne v3, v5, :cond_0

    .line 75
    .line 76
    iget-object v3, p0, Lk/L;->v:Landroid/view/View;

    .line 77
    .line 78
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    add-int/2addr v0, v3

    .line 83
    :cond_0
    invoke-virtual {v2, v0, p1}, Lk/C;->tryShow(II)Z

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    if-eqz p1, :cond_2

    .line 88
    .line 89
    iget-object p1, p0, Lk/L;->x:Lk/D;

    .line 90
    .line 91
    if-eqz p1, :cond_1

    .line 92
    .line 93
    invoke-interface {p1, v4}, Lk/D;->onOpenSubMenu(Lk/p;)Z

    .line 94
    .line 95
    .line 96
    :cond_1
    const/4 p1, 0x1

    .line 97
    return p1

    .line 98
    :cond_2
    return v1
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk/L;->v:Landroid/view/View;

    .line 2
    .line 3
    return-void
.end method

.method public setCallback(Lk/D;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk/L;->x:Lk/D;

    .line 2
    .line 3
    return-void
.end method

.method public setForceShowIcon(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lk/L;->j:Lk/m;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lk/m;->setForceShowIcon(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setGravity(I)V
    .locals 0

    .line 1
    iput p1, p0, Lk/L;->C:I

    .line 2
    .line 3
    return-void
.end method

.method public setHorizontalOffset(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lk/L;->r:Ll/r1;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ll/l1;->setHorizontalOffset(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk/L;->u:Landroid/widget/PopupWindow$OnDismissListener;

    .line 2
    .line 3
    return-void
.end method

.method public setShowTitle(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lk/L;->D:Z

    .line 2
    .line 3
    return-void
.end method

.method public setVerticalOffset(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lk/L;->r:Ll/r1;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ll/l1;->setVerticalOffset(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public show()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lk/L;->isShowing()Z

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
    iget-boolean v0, p0, Lk/L;->z:Z

    .line 9
    .line 10
    if-nez v0, :cond_6

    .line 11
    .line 12
    iget-object v0, p0, Lk/L;->v:Landroid/view/View;

    .line 13
    .line 14
    if-eqz v0, :cond_6

    .line 15
    .line 16
    iput-object v0, p0, Lk/L;->w:Landroid/view/View;

    .line 17
    .line 18
    iget-object v0, p0, Lk/L;->r:Ll/r1;

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Ll/l1;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p0}, Ll/l1;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 24
    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    invoke-virtual {v0, v1}, Ll/l1;->setModal(Z)V

    .line 28
    .line 29
    .line 30
    iget-object v2, p0, Lk/L;->w:Landroid/view/View;

    .line 31
    .line 32
    iget-object v3, p0, Lk/L;->y:Landroid/view/ViewTreeObserver;

    .line 33
    .line 34
    const/4 v4, 0x0

    .line 35
    if-nez v3, :cond_1

    .line 36
    .line 37
    move v3, v1

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    move v3, v4

    .line 40
    :goto_0
    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    iput-object v5, p0, Lk/L;->y:Landroid/view/ViewTreeObserver;

    .line 45
    .line 46
    if-eqz v3, :cond_2

    .line 47
    .line 48
    iget-object v3, p0, Lk/L;->s:Lk/J;

    .line 49
    .line 50
    invoke-virtual {v5, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 51
    .line 52
    .line 53
    :cond_2
    iget-object v3, p0, Lk/L;->t:Lk/K;

    .line 54
    .line 55
    invoke-virtual {v2, v3}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v2}, Ll/l1;->setAnchorView(Landroid/view/View;)V

    .line 59
    .line 60
    .line 61
    iget v2, p0, Lk/L;->C:I

    .line 62
    .line 63
    invoke-virtual {v0, v2}, Ll/l1;->setDropDownGravity(I)V

    .line 64
    .line 65
    .line 66
    iget-boolean v2, p0, Lk/L;->A:Z

    .line 67
    .line 68
    iget-object v3, p0, Lk/L;->e:Landroid/content/Context;

    .line 69
    .line 70
    const/4 v5, 0x0

    .line 71
    iget-object v6, p0, Lk/L;->j:Lk/m;

    .line 72
    .line 73
    if-nez v2, :cond_3

    .line 74
    .line 75
    iget v2, p0, Lk/L;->n:I

    .line 76
    .line 77
    invoke-static {v6, v5, v3, v2}, Lk/z;->measureIndividualMenuWidth(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;I)I

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    iput v2, p0, Lk/L;->B:I

    .line 82
    .line 83
    iput-boolean v1, p0, Lk/L;->A:Z

    .line 84
    .line 85
    :cond_3
    iget v1, p0, Lk/L;->B:I

    .line 86
    .line 87
    invoke-virtual {v0, v1}, Ll/l1;->setContentWidth(I)V

    .line 88
    .line 89
    .line 90
    const/4 v1, 0x2

    .line 91
    invoke-virtual {v0, v1}, Ll/l1;->setInputMethodMode(I)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0}, Lk/z;->getEpicenterBounds()Landroid/graphics/Rect;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {v0, v1}, Ll/l1;->setEpicenterBounds(Landroid/graphics/Rect;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0}, Ll/l1;->show()V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0}, Ll/l1;->getListView()Landroid/widget/ListView;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 109
    .line 110
    .line 111
    iget-boolean v2, p0, Lk/L;->D:Z

    .line 112
    .line 113
    if-eqz v2, :cond_5

    .line 114
    .line 115
    iget-object v2, p0, Lk/L;->f:Lk/p;

    .line 116
    .line 117
    invoke-virtual {v2}, Lk/p;->getHeaderTitle()Ljava/lang/CharSequence;

    .line 118
    .line 119
    .line 120
    move-result-object v7

    .line 121
    if-eqz v7, :cond_5

    .line 122
    .line 123
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    sget v7, Landroidx/appcompat/R$layout;->abc_popup_menu_header_item_layout:I

    .line 128
    .line 129
    invoke-virtual {v3, v7, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    check-cast v3, Landroid/widget/FrameLayout;

    .line 134
    .line 135
    const v7, 0x1020016

    .line 136
    .line 137
    .line 138
    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 139
    .line 140
    .line 141
    move-result-object v7

    .line 142
    check-cast v7, Landroid/widget/TextView;

    .line 143
    .line 144
    if-eqz v7, :cond_4

    .line 145
    .line 146
    invoke-virtual {v2}, Lk/p;->getHeaderTitle()Ljava/lang/CharSequence;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    .line 152
    .line 153
    :cond_4
    invoke-virtual {v3, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v1, v3, v5, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 157
    .line 158
    .line 159
    :cond_5
    invoke-virtual {v0, v6}, Ll/l1;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0}, Ll/l1;->show()V

    .line 163
    .line 164
    .line 165
    return-void

    .line 166
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 167
    .line 168
    const-string v1, "StandardMenuPopup cannot be used without an anchor"

    .line 169
    .line 170
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    throw v0
.end method

.method public updateMenuView(Z)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lk/L;->A:Z

    .line 3
    .line 4
    iget-object p1, p0, Lk/L;->j:Lk/m;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Lk/m;->notifyDataSetChanged()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method
