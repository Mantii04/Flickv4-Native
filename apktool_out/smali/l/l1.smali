.class public Ll/l1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/I;


# static fields
.field public static final J:Ljava/lang/reflect/Method;

.field public static final K:Ljava/lang/reflect/Method;

.field public static final L:Ljava/lang/reflect/Method;


# instance fields
.field public final A:Ll/k1;

.field public final B:Ll/j1;

.field public final C:Ll/i1;

.field public final D:Ll/g1;

.field public final E:Landroid/os/Handler;

.field public final F:Landroid/graphics/Rect;

.field public G:Landroid/graphics/Rect;

.field public H:Z

.field public final I:Ll/S;

.field public final b:Landroid/content/Context;

.field public e:Landroid/widget/ListAdapter;

.field public f:Ll/W0;

.field public final j:I

.field public m:I

.field public n:I

.field public p:I

.field public final q:I

.field public r:Z

.field public s:Z

.field public t:Z

.field public u:I

.field public final v:I

.field public w:Ll/h1;

.field public x:Landroid/view/View;

.field public y:Landroid/widget/AdapterView$OnItemClickListener;

.field public z:Landroid/widget/AdapterView$OnItemSelectedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 4
    .line 5
    const/16 v3, 0x1c

    .line 6
    .line 7
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 8
    .line 9
    const-string v5, "ListPopupWindow"

    .line 10
    .line 11
    const-class v6, Landroid/widget/PopupWindow;

    .line 12
    .line 13
    if-gt v2, v3, :cond_0

    .line 14
    .line 15
    :try_start_0
    const-string v2, "setClipToScreenEnabled"

    .line 16
    .line 17
    new-array v3, v1, [Ljava/lang/Class;

    .line 18
    .line 19
    aput-object v4, v3, v0

    .line 20
    .line 21
    invoke-virtual {v6, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    sput-object v2, Ll/l1;->J:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catch_0
    const-string v2, "Could not find method setClipToScreenEnabled() on PopupWindow. Oh well."

    .line 29
    .line 30
    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    :goto_0
    :try_start_1
    const-string v2, "setEpicenterBounds"

    .line 34
    .line 35
    new-array v3, v1, [Ljava/lang/Class;

    .line 36
    .line 37
    const-class v7, Landroid/graphics/Rect;

    .line 38
    .line 39
    aput-object v7, v3, v0

    .line 40
    .line 41
    invoke-virtual {v6, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    sput-object v2, Ll/l1;->L:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :catch_1
    const-string v2, "Could not find method setEpicenterBounds(Rect) on PopupWindow. Oh well."

    .line 49
    .line 50
    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    :cond_0
    :goto_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 54
    .line 55
    const/16 v3, 0x17

    .line 56
    .line 57
    if-gt v2, v3, :cond_1

    .line 58
    .line 59
    :try_start_2
    const-string v2, "getMaxAvailableHeight"

    .line 60
    .line 61
    const/4 v3, 0x3

    .line 62
    new-array v3, v3, [Ljava/lang/Class;

    .line 63
    .line 64
    const-class v7, Landroid/view/View;

    .line 65
    .line 66
    aput-object v7, v3, v0

    .line 67
    .line 68
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 69
    .line 70
    aput-object v0, v3, v1

    .line 71
    .line 72
    const/4 v0, 0x2

    .line 73
    aput-object v4, v3, v0

    .line 74
    .line 75
    invoke-virtual {v6, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    sput-object v0, Ll/l1;->K:Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :catch_2
    const-string v0, "Could not find method getMaxAvailableHeight(View, int, boolean) on PopupWindow. Oh well."

    .line 83
    .line 84
    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    :cond_1
    :goto_2
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    sget v1, Landroidx/appcompat/R$attr;->listPopupWindowStyle:I

    invoke-direct {p0, p1, v0, v1}, Ll/l1;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, p3, v0}, Ll/l1;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x2

    .line 4
    iput v0, p0, Ll/l1;->j:I

    .line 5
    iput v0, p0, Ll/l1;->m:I

    const/16 v0, 0x3ea

    .line 6
    iput v0, p0, Ll/l1;->q:I

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Ll/l1;->u:I

    const v1, 0x7fffffff

    .line 8
    iput v1, p0, Ll/l1;->v:I

    .line 9
    new-instance v1, Ll/k1;

    invoke-direct {v1, p0}, Ll/k1;-><init>(Ll/l1;)V

    iput-object v1, p0, Ll/l1;->A:Ll/k1;

    .line 10
    new-instance v1, Ll/j1;

    invoke-direct {v1, p0}, Ll/j1;-><init>(Ll/l1;)V

    iput-object v1, p0, Ll/l1;->B:Ll/j1;

    .line 11
    new-instance v1, Ll/i1;

    invoke-direct {v1, p0}, Ll/i1;-><init>(Ll/l1;)V

    iput-object v1, p0, Ll/l1;->C:Ll/i1;

    .line 12
    new-instance v1, Ll/g1;

    invoke-direct {v1, p0}, Ll/g1;-><init>(Ll/l1;)V

    iput-object v1, p0, Ll/l1;->D:Ll/g1;

    .line 13
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Ll/l1;->F:Landroid/graphics/Rect;

    .line 14
    iput-object p1, p0, Ll/l1;->b:Landroid/content/Context;

    .line 15
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Ll/l1;->E:Landroid/os/Handler;

    .line 16
    sget-object v1, Landroidx/appcompat/R$styleable;->ListPopupWindow:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 17
    sget v2, Landroidx/appcompat/R$styleable;->ListPopupWindow_android_dropDownHorizontalOffset:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Ll/l1;->n:I

    .line 18
    sget v2, Landroidx/appcompat/R$styleable;->ListPopupWindow_android_dropDownVerticalOffset:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Ll/l1;->p:I

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 19
    iput-boolean v2, p0, Ll/l1;->r:Z

    .line 20
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 21
    new-instance v0, Ll/S;

    invoke-direct {v0, p1, p2, p3, p4}, Ll/S;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Ll/l1;->I:Ll/S;

    .line 22
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Z)Ll/W0;
    .locals 1

    .line 1
    new-instance v0, Ll/W0;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Ll/W0;-><init>(Landroid/content/Context;Z)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public clearListSelection()V
    .locals 2

    .line 1
    iget-object v0, p0, Ll/l1;->f:Ll/W0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Ll/W0;->setListSelectionHidden(Z)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public dismiss()V
    .locals 2

    .line 1
    iget-object v0, p0, Ll/l1;->I:Ll/S;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 8
    .line 9
    .line 10
    iput-object v1, p0, Ll/l1;->f:Ll/W0;

    .line 11
    .line 12
    iget-object v0, p0, Ll/l1;->E:Landroid/os/Handler;

    .line 13
    .line 14
    iget-object v1, p0, Ll/l1;->A:Ll/k1;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public getAnchorView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Ll/l1;->x:Landroid/view/View;

    .line 2
    .line 3
    return-object v0
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Ll/l1;->I:Ll/S;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getHorizontalOffset()I
    .locals 1

    .line 1
    iget v0, p0, Ll/l1;->n:I

    .line 2
    .line 3
    return v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .line 1
    iget-object v0, p0, Ll/l1;->f:Ll/W0;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSelectedItem()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ll/l1;->isShowing()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return-object v0

    .line 9
    :cond_0
    iget-object v0, p0, Ll/l1;->f:Ll/W0;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public getSelectedItemId()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Ll/l1;->isShowing()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-wide/high16 v0, -0x8000000000000000L

    .line 8
    .line 9
    return-wide v0

    .line 10
    :cond_0
    iget-object v0, p0, Ll/l1;->f:Ll/W0;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getSelectedItemId()J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    return-wide v0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Ll/l1;->isShowing()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, -0x1

    .line 8
    return v0

    .line 9
    :cond_0
    iget-object v0, p0, Ll/l1;->f:Ll/W0;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ll/l1;->isShowing()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return-object v0

    .line 9
    :cond_0
    iget-object v0, p0, Ll/l1;->f:Ll/W0;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getSelectedView()Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public getVerticalOffset()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Ll/l1;->r:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    iget v0, p0, Ll/l1;->p:I

    .line 8
    .line 9
    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 1
    iget v0, p0, Ll/l1;->m:I

    .line 2
    .line 3
    return v0
.end method

.method public isInputMethodNotNeeded()Z
    .locals 2

    .line 1
    iget-object v0, p0, Ll/l1;->I:Ll/S;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x2

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    return v0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    return v0
.end method

.method public isModal()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ll/l1;->H:Z

    .line 2
    .line 3
    return v0
.end method

.method public isShowing()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ll/l1;->I:Ll/S;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ll/l1;->w:Ll/h1;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ll/h1;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Ll/h1;-><init>(Ll/l1;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Ll/l1;->w:Ll/h1;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v1, p0, Ll/l1;->e:Landroid/widget/ListAdapter;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-interface {v1, v0}, Landroid/widget/Adapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 18
    .line 19
    .line 20
    :cond_1
    :goto_0
    iput-object p1, p0, Ll/l1;->e:Landroid/widget/ListAdapter;

    .line 21
    .line 22
    if-eqz p1, :cond_2

    .line 23
    .line 24
    iget-object v0, p0, Ll/l1;->w:Ll/h1;

    .line 25
    .line 26
    invoke-interface {p1, v0}, Landroid/widget/Adapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 27
    .line 28
    .line 29
    :cond_2
    iget-object p1, p0, Ll/l1;->f:Ll/W0;

    .line 30
    .line 31
    if-eqz p1, :cond_3

    .line 32
    .line 33
    iget-object v0, p0, Ll/l1;->e:Landroid/widget/ListAdapter;

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 36
    .line 37
    .line 38
    :cond_3
    return-void
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ll/l1;->x:Landroid/view/View;

    .line 2
    .line 3
    return-void
.end method

.method public setAnimationStyle(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Ll/l1;->I:Ll/S;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ll/l1;->I:Ll/S;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setContentWidth(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Ll/l1;->I:Ll/S;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Ll/l1;->F:Landroid/graphics/Rect;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 12
    .line 13
    .line 14
    iget v0, v1, Landroid/graphics/Rect;->left:I

    .line 15
    .line 16
    iget v1, v1, Landroid/graphics/Rect;->right:I

    .line 17
    .line 18
    add-int/2addr v0, v1

    .line 19
    add-int/2addr v0, p1

    .line 20
    iput v0, p0, Ll/l1;->m:I

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    invoke-virtual {p0, p1}, Ll/l1;->setWidth(I)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public setDropDownGravity(I)V
    .locals 0

    .line 1
    iput p1, p0, Ll/l1;->u:I

    .line 2
    .line 3
    return-void
.end method

.method public setEpicenterBounds(Landroid/graphics/Rect;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    new-instance v0, Landroid/graphics/Rect;

    .line 4
    .line 5
    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    iput-object v0, p0, Ll/l1;->G:Landroid/graphics/Rect;

    .line 11
    .line 12
    return-void
.end method

.method public setHorizontalOffset(I)V
    .locals 0

    .line 1
    iput p1, p0, Ll/l1;->n:I

    .line 2
    .line 3
    return-void
.end method

.method public setInputMethodMode(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Ll/l1;->I:Ll/S;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setModal(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Ll/l1;->H:Z

    .line 2
    .line 3
    iget-object v0, p0, Ll/l1;->I:Ll/S;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ll/l1;->I:Ll/S;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ll/l1;->y:Landroid/widget/AdapterView$OnItemClickListener;

    .line 2
    .line 3
    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ll/l1;->z:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 2
    .line 3
    return-void
.end method

.method public setOverlapAnchor(Z)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Ll/l1;->t:Z

    .line 3
    .line 4
    iput-boolean p1, p0, Ll/l1;->s:Z

    .line 5
    .line 6
    return-void
.end method

.method public setPromptPosition(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public setSelection(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Ll/l1;->f:Ll/W0;

    .line 2
    .line 3
    invoke-virtual {p0}, Ll/l1;->isShowing()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, v1}, Ll/W0;->setListSelectionHidden(Z)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getChoiceMode()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    invoke-virtual {v0, p1, v1}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method public setVerticalOffset(I)V
    .locals 0

    .line 1
    iput p1, p0, Ll/l1;->p:I

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Ll/l1;->r:Z

    .line 5
    .line 6
    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .line 1
    iput p1, p0, Ll/l1;->m:I

    .line 2
    .line 3
    return-void
.end method

.method public show()V
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    iget-object v4, v1, Ll/l1;->f:Ll/W0;

    .line 7
    .line 8
    iget-object v5, v1, Ll/l1;->I:Ll/S;

    .line 9
    .line 10
    iget-object v6, v1, Ll/l1;->b:Landroid/content/Context;

    .line 11
    .line 12
    if-nez v4, :cond_1

    .line 13
    .line 14
    iget-boolean v4, v1, Ll/l1;->H:Z

    .line 15
    .line 16
    xor-int/2addr v4, v3

    .line 17
    invoke-virtual {v1, v6, v4}, Ll/l1;->a(Landroid/content/Context;Z)Ll/W0;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    iput-object v4, v1, Ll/l1;->f:Ll/W0;

    .line 22
    .line 23
    iget-object v7, v1, Ll/l1;->e:Landroid/widget/ListAdapter;

    .line 24
    .line 25
    invoke-virtual {v4, v7}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 26
    .line 27
    .line 28
    iget-object v4, v1, Ll/l1;->f:Ll/W0;

    .line 29
    .line 30
    iget-object v7, v1, Ll/l1;->y:Landroid/widget/AdapterView$OnItemClickListener;

    .line 31
    .line 32
    invoke-virtual {v4, v7}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 33
    .line 34
    .line 35
    iget-object v4, v1, Ll/l1;->f:Ll/W0;

    .line 36
    .line 37
    invoke-virtual {v4, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 38
    .line 39
    .line 40
    iget-object v4, v1, Ll/l1;->f:Ll/W0;

    .line 41
    .line 42
    invoke-virtual {v4, v3}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 43
    .line 44
    .line 45
    iget-object v4, v1, Ll/l1;->f:Ll/W0;

    .line 46
    .line 47
    new-instance v7, Ll/d1;

    .line 48
    .line 49
    invoke-direct {v7, v1}, Ll/d1;-><init>(Ll/l1;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4, v7}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 53
    .line 54
    .line 55
    iget-object v4, v1, Ll/l1;->f:Ll/W0;

    .line 56
    .line 57
    iget-object v7, v1, Ll/l1;->C:Ll/i1;

    .line 58
    .line 59
    invoke-virtual {v4, v7}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 60
    .line 61
    .line 62
    iget-object v4, v1, Ll/l1;->z:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 63
    .line 64
    if-eqz v4, :cond_0

    .line 65
    .line 66
    iget-object v7, v1, Ll/l1;->f:Ll/W0;

    .line 67
    .line 68
    invoke-virtual {v7, v4}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 69
    .line 70
    .line 71
    :cond_0
    iget-object v4, v1, Ll/l1;->f:Ll/W0;

    .line 72
    .line 73
    invoke-virtual {v5, v4}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_1
    invoke-virtual {v5}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    check-cast v4, Landroid/view/ViewGroup;

    .line 82
    .line 83
    :goto_0
    invoke-virtual {v5}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    iget-object v7, v1, Ll/l1;->F:Landroid/graphics/Rect;

    .line 88
    .line 89
    if-eqz v4, :cond_2

    .line 90
    .line 91
    invoke-virtual {v4, v7}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 92
    .line 93
    .line 94
    iget v4, v7, Landroid/graphics/Rect;->top:I

    .line 95
    .line 96
    iget v8, v7, Landroid/graphics/Rect;->bottom:I

    .line 97
    .line 98
    add-int/2addr v8, v4

    .line 99
    iget-boolean v9, v1, Ll/l1;->r:Z

    .line 100
    .line 101
    if-nez v9, :cond_3

    .line 102
    .line 103
    neg-int v4, v4

    .line 104
    iput v4, v1, Ll/l1;->p:I

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_2
    invoke-virtual {v7}, Landroid/graphics/Rect;->setEmpty()V

    .line 108
    .line 109
    .line 110
    move v8, v2

    .line 111
    :cond_3
    :goto_1
    invoke-virtual {v5}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    .line 112
    .line 113
    .line 114
    move-result v4

    .line 115
    if-ne v4, v0, :cond_4

    .line 116
    .line 117
    move v4, v3

    .line 118
    goto :goto_2

    .line 119
    :cond_4
    move v4, v2

    .line 120
    :goto_2
    invoke-virtual {v1}, Ll/l1;->getAnchorView()Landroid/view/View;

    .line 121
    .line 122
    .line 123
    move-result-object v9

    .line 124
    iget v10, v1, Ll/l1;->p:I

    .line 125
    .line 126
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 127
    .line 128
    const/16 v12, 0x17

    .line 129
    .line 130
    const-string v13, "ListPopupWindow"

    .line 131
    .line 132
    if-gt v11, v12, :cond_6

    .line 133
    .line 134
    sget-object v11, Ll/l1;->K:Ljava/lang/reflect/Method;

    .line 135
    .line 136
    if-eqz v11, :cond_5

    .line 137
    .line 138
    :try_start_0
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 139
    .line 140
    .line 141
    move-result-object v12

    .line 142
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 143
    .line 144
    .line 145
    move-result-object v4

    .line 146
    const/4 v14, 0x3

    .line 147
    new-array v14, v14, [Ljava/lang/Object;

    .line 148
    .line 149
    aput-object v9, v14, v2

    .line 150
    .line 151
    aput-object v12, v14, v3

    .line 152
    .line 153
    aput-object v4, v14, v0

    .line 154
    .line 155
    invoke-virtual {v11, v5, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    check-cast v0, Ljava/lang/Integer;

    .line 160
    .line 161
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 162
    .line 163
    .line 164
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :goto_3
    move/from16 v18, v0

    .line 166
    .line 167
    goto :goto_4

    .line 168
    :catch_0
    const-string v0, "Could not call getMaxAvailableHeightMethod(View, int, boolean) on PopupWindow. Using the public version."

    .line 169
    .line 170
    invoke-static {v13, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    .line 172
    .line 173
    :cond_5
    invoke-virtual {v5, v9, v10}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;I)I

    .line 174
    .line 175
    .line 176
    move-result v0

    .line 177
    goto :goto_3

    .line 178
    :cond_6
    invoke-static {v5, v9, v10, v4}, Ll/e1;->a(Landroid/widget/PopupWindow;Landroid/view/View;IZ)I

    .line 179
    .line 180
    .line 181
    move-result v0

    .line 182
    goto :goto_3

    .line 183
    :goto_4
    iget v0, v1, Ll/l1;->j:I

    .line 184
    .line 185
    const/4 v4, -0x2

    .line 186
    const/4 v9, -0x1

    .line 187
    if-ne v0, v9, :cond_7

    .line 188
    .line 189
    add-int v18, v18, v8

    .line 190
    .line 191
    goto :goto_8

    .line 192
    :cond_7
    iget v10, v1, Ll/l1;->m:I

    .line 193
    .line 194
    if-eq v10, v4, :cond_9

    .line 195
    .line 196
    const/high16 v11, 0x40000000    # 2.0f

    .line 197
    .line 198
    if-eq v10, v9, :cond_8

    .line 199
    .line 200
    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 201
    .line 202
    .line 203
    move-result v6

    .line 204
    :goto_5
    move v15, v6

    .line 205
    goto :goto_6

    .line 206
    :cond_8
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 207
    .line 208
    .line 209
    move-result-object v6

    .line 210
    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 211
    .line 212
    .line 213
    move-result-object v6

    .line 214
    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 215
    .line 216
    iget v10, v7, Landroid/graphics/Rect;->left:I

    .line 217
    .line 218
    iget v7, v7, Landroid/graphics/Rect;->right:I

    .line 219
    .line 220
    add-int/2addr v10, v7

    .line 221
    sub-int/2addr v6, v10

    .line 222
    invoke-static {v6, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 223
    .line 224
    .line 225
    move-result v6

    .line 226
    goto :goto_5

    .line 227
    :cond_9
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 228
    .line 229
    .line 230
    move-result-object v6

    .line 231
    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 232
    .line 233
    .line 234
    move-result-object v6

    .line 235
    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 236
    .line 237
    iget v10, v7, Landroid/graphics/Rect;->left:I

    .line 238
    .line 239
    iget v7, v7, Landroid/graphics/Rect;->right:I

    .line 240
    .line 241
    add-int/2addr v10, v7

    .line 242
    sub-int/2addr v6, v10

    .line 243
    const/high16 v7, -0x80000000

    .line 244
    .line 245
    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 246
    .line 247
    .line 248
    move-result v6

    .line 249
    goto :goto_5

    .line 250
    :goto_6
    iget-object v14, v1, Ll/l1;->f:Ll/W0;

    .line 251
    .line 252
    const/16 v16, 0x0

    .line 253
    .line 254
    const/16 v17, -0x1

    .line 255
    .line 256
    const/16 v19, -0x1

    .line 257
    .line 258
    invoke-virtual/range {v14 .. v19}, Ll/W0;->measureHeightOfChildrenCompat(IIIII)I

    .line 259
    .line 260
    .line 261
    move-result v6

    .line 262
    if-lez v6, :cond_a

    .line 263
    .line 264
    iget-object v7, v1, Ll/l1;->f:Ll/W0;

    .line 265
    .line 266
    invoke-virtual {v7}, Landroid/view/View;->getPaddingTop()I

    .line 267
    .line 268
    .line 269
    move-result v7

    .line 270
    iget-object v10, v1, Ll/l1;->f:Ll/W0;

    .line 271
    .line 272
    invoke-virtual {v10}, Landroid/view/View;->getPaddingBottom()I

    .line 273
    .line 274
    .line 275
    move-result v10

    .line 276
    add-int/2addr v10, v7

    .line 277
    add-int/2addr v10, v8

    .line 278
    goto :goto_7

    .line 279
    :cond_a
    move v10, v2

    .line 280
    :goto_7
    add-int v18, v6, v10

    .line 281
    .line 282
    :goto_8
    invoke-virtual {v1}, Ll/l1;->isInputMethodNotNeeded()Z

    .line 283
    .line 284
    .line 285
    move-result v6

    .line 286
    iget v7, v1, Ll/l1;->q:I

    .line 287
    .line 288
    invoke-static {v5, v7}, LS/v;->setWindowLayoutType(Landroid/widget/PopupWindow;I)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {v5}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 292
    .line 293
    .line 294
    move-result v7

    .line 295
    if-eqz v7, :cond_16

    .line 296
    .line 297
    invoke-virtual {v1}, Ll/l1;->getAnchorView()Landroid/view/View;

    .line 298
    .line 299
    .line 300
    move-result-object v7

    .line 301
    invoke-static {v7}, LM/p0;->isAttachedToWindow(Landroid/view/View;)Z

    .line 302
    .line 303
    .line 304
    move-result v7

    .line 305
    if-nez v7, :cond_b

    .line 306
    .line 307
    goto/16 :goto_13

    .line 308
    .line 309
    :cond_b
    iget v7, v1, Ll/l1;->m:I

    .line 310
    .line 311
    if-ne v7, v9, :cond_c

    .line 312
    .line 313
    move v7, v9

    .line 314
    goto :goto_9

    .line 315
    :cond_c
    if-ne v7, v4, :cond_d

    .line 316
    .line 317
    invoke-virtual {v1}, Ll/l1;->getAnchorView()Landroid/view/View;

    .line 318
    .line 319
    .line 320
    move-result-object v7

    .line 321
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    .line 322
    .line 323
    .line 324
    move-result v7

    .line 325
    :cond_d
    :goto_9
    if-ne v0, v9, :cond_12

    .line 326
    .line 327
    if-eqz v6, :cond_e

    .line 328
    .line 329
    move/from16 v0, v18

    .line 330
    .line 331
    goto :goto_a

    .line 332
    :cond_e
    move v0, v9

    .line 333
    :goto_a
    if-eqz v6, :cond_10

    .line 334
    .line 335
    iget v4, v1, Ll/l1;->m:I

    .line 336
    .line 337
    if-ne v4, v9, :cond_f

    .line 338
    .line 339
    move v4, v9

    .line 340
    goto :goto_b

    .line 341
    :cond_f
    move v4, v2

    .line 342
    :goto_b
    invoke-virtual {v5, v4}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 343
    .line 344
    .line 345
    invoke-virtual {v5, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 346
    .line 347
    .line 348
    goto :goto_c

    .line 349
    :cond_10
    iget v4, v1, Ll/l1;->m:I

    .line 350
    .line 351
    if-ne v4, v9, :cond_11

    .line 352
    .line 353
    move v2, v9

    .line 354
    :cond_11
    invoke-virtual {v5, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 355
    .line 356
    .line 357
    invoke-virtual {v5, v9}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 358
    .line 359
    .line 360
    goto :goto_c

    .line 361
    :cond_12
    if-ne v0, v4, :cond_13

    .line 362
    .line 363
    move/from16 v0, v18

    .line 364
    .line 365
    :cond_13
    :goto_c
    invoke-virtual {v5, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {v1}, Ll/l1;->getAnchorView()Landroid/view/View;

    .line 369
    .line 370
    .line 371
    move-result-object v6

    .line 372
    move v2, v7

    .line 373
    iget v7, v1, Ll/l1;->n:I

    .line 374
    .line 375
    iget v8, v1, Ll/l1;->p:I

    .line 376
    .line 377
    if-gez v2, :cond_14

    .line 378
    .line 379
    move v2, v9

    .line 380
    :cond_14
    if-gez v0, :cond_15

    .line 381
    .line 382
    move v10, v9

    .line 383
    :goto_d
    move v9, v2

    .line 384
    goto :goto_e

    .line 385
    :cond_15
    move v10, v0

    .line 386
    goto :goto_d

    .line 387
    :goto_e
    invoke-virtual/range {v5 .. v10}, Ll/S;->update(Landroid/view/View;IIII)V

    .line 388
    .line 389
    .line 390
    goto/16 :goto_13

    .line 391
    .line 392
    :cond_16
    iget v6, v1, Ll/l1;->m:I

    .line 393
    .line 394
    if-ne v6, v9, :cond_17

    .line 395
    .line 396
    move v6, v9

    .line 397
    goto :goto_f

    .line 398
    :cond_17
    if-ne v6, v4, :cond_18

    .line 399
    .line 400
    invoke-virtual {v1}, Ll/l1;->getAnchorView()Landroid/view/View;

    .line 401
    .line 402
    .line 403
    move-result-object v6

    .line 404
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    .line 405
    .line 406
    .line 407
    move-result v6

    .line 408
    :cond_18
    :goto_f
    if-ne v0, v9, :cond_19

    .line 409
    .line 410
    move v0, v9

    .line 411
    goto :goto_10

    .line 412
    :cond_19
    if-ne v0, v4, :cond_1a

    .line 413
    .line 414
    move/from16 v0, v18

    .line 415
    .line 416
    :cond_1a
    :goto_10
    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 417
    .line 418
    .line 419
    invoke-virtual {v5, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 420
    .line 421
    .line 422
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 423
    .line 424
    const/16 v4, 0x1c

    .line 425
    .line 426
    if-gt v0, v4, :cond_1b

    .line 427
    .line 428
    sget-object v0, Ll/l1;->J:Ljava/lang/reflect/Method;

    .line 429
    .line 430
    if-eqz v0, :cond_1c

    .line 431
    .line 432
    :try_start_1
    new-array v6, v3, [Ljava/lang/Object;

    .line 433
    .line 434
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 435
    .line 436
    aput-object v7, v6, v2

    .line 437
    .line 438
    invoke-virtual {v0, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 439
    .line 440
    .line 441
    goto :goto_11

    .line 442
    :catch_1
    const-string v0, "Could not call setClipToScreenEnabled() on PopupWindow. Oh well."

    .line 443
    .line 444
    invoke-static {v13, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    .line 446
    .line 447
    goto :goto_11

    .line 448
    :cond_1b
    invoke-static {v5, v3}, Ll/f1;->b(Landroid/widget/PopupWindow;Z)V

    .line 449
    .line 450
    .line 451
    :cond_1c
    :goto_11
    invoke-virtual {v5, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 452
    .line 453
    .line 454
    iget-object v0, v1, Ll/l1;->B:Ll/j1;

    .line 455
    .line 456
    invoke-virtual {v5, v0}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 457
    .line 458
    .line 459
    iget-boolean v0, v1, Ll/l1;->t:Z

    .line 460
    .line 461
    if-eqz v0, :cond_1d

    .line 462
    .line 463
    iget-boolean v0, v1, Ll/l1;->s:Z

    .line 464
    .line 465
    invoke-static {v5, v0}, LS/v;->setOverlapAnchor(Landroid/widget/PopupWindow;Z)V

    .line 466
    .line 467
    .line 468
    :cond_1d
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 469
    .line 470
    if-gt v0, v4, :cond_1e

    .line 471
    .line 472
    sget-object v0, Ll/l1;->L:Ljava/lang/reflect/Method;

    .line 473
    .line 474
    if-eqz v0, :cond_1f

    .line 475
    .line 476
    :try_start_2
    iget-object v4, v1, Ll/l1;->G:Landroid/graphics/Rect;

    .line 477
    .line 478
    new-array v3, v3, [Ljava/lang/Object;

    .line 479
    .line 480
    aput-object v4, v3, v2

    .line 481
    .line 482
    invoke-virtual {v0, v5, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 483
    .line 484
    .line 485
    goto :goto_12

    .line 486
    :catch_2
    move-exception v0

    .line 487
    const-string v2, "Could not invoke setEpicenterBounds on PopupWindow"

    .line 488
    .line 489
    invoke-static {v13, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 490
    .line 491
    .line 492
    goto :goto_12

    .line 493
    :cond_1e
    iget-object v0, v1, Ll/l1;->G:Landroid/graphics/Rect;

    .line 494
    .line 495
    invoke-static {v5, v0}, Ll/f1;->a(Landroid/widget/PopupWindow;Landroid/graphics/Rect;)V

    .line 496
    .line 497
    .line 498
    :cond_1f
    :goto_12
    invoke-virtual {v1}, Ll/l1;->getAnchorView()Landroid/view/View;

    .line 499
    .line 500
    .line 501
    move-result-object v0

    .line 502
    iget v2, v1, Ll/l1;->n:I

    .line 503
    .line 504
    iget v3, v1, Ll/l1;->p:I

    .line 505
    .line 506
    iget v4, v1, Ll/l1;->u:I

    .line 507
    .line 508
    invoke-static {v5, v0, v2, v3, v4}, LS/v;->showAsDropDown(Landroid/widget/PopupWindow;Landroid/view/View;III)V

    .line 509
    .line 510
    .line 511
    iget-object v0, v1, Ll/l1;->f:Ll/W0;

    .line 512
    .line 513
    invoke-virtual {v0, v9}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 514
    .line 515
    .line 516
    iget-boolean v0, v1, Ll/l1;->H:Z

    .line 517
    .line 518
    if-eqz v0, :cond_20

    .line 519
    .line 520
    iget-object v0, v1, Ll/l1;->f:Ll/W0;

    .line 521
    .line 522
    invoke-virtual {v0}, Ll/W0;->isInTouchMode()Z

    .line 523
    .line 524
    .line 525
    move-result v0

    .line 526
    if-eqz v0, :cond_21

    .line 527
    .line 528
    :cond_20
    invoke-virtual {v1}, Ll/l1;->clearListSelection()V

    .line 529
    .line 530
    .line 531
    :cond_21
    iget-boolean v0, v1, Ll/l1;->H:Z

    .line 532
    .line 533
    if-nez v0, :cond_22

    .line 534
    .line 535
    iget-object v0, v1, Ll/l1;->E:Landroid/os/Handler;

    .line 536
    .line 537
    iget-object v2, v1, Ll/l1;->D:Ll/g1;

    .line 538
    .line 539
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 540
    .line 541
    .line 542
    :cond_22
    :goto_13
    return-void
.end method
