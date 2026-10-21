.class public abstract LA3/k;
.super Lx3/F;
.source "SourceFile"

# interfaces
.implements Lz3/b;


# static fields
.field public static final G:[I

.field public static final H:[I

.field public static final I:I


# instance fields
.field public final A:Z

.field public final B:I

.field public final C:LG3/C;

.field public final D:Lz3/j;

.field public final E:Lz3/f;

.field public final F:LA3/e;

.field public final q:Lx3/l;

.field public final r:Lx3/A;

.field public s:LA3/h;

.field public final t:I

.field public final u:[I

.field public v:Lj/l;

.field public final w:LA3/g;

.field public x:Z

.field public y:Z

.field public z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const v0, 0x10100a0

    .line 2
    .line 3
    .line 4
    filled-new-array {v0}, [I

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sput-object v0, LA3/k;->G:[I

    .line 9
    .line 10
    const v0, -0x101009e

    .line 11
    .line 12
    .line 13
    filled-new-array {v0}, [I

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, LA3/k;->H:[I

    .line 18
    .line 19
    sget v0, Lcom/google/android/material/R$style;->Widget_Design_NavigationView:I

    .line 20
    .line 21
    sput v0, LA3/k;->I:I

    .line 22
    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    sget v0, Lcom/google/android/material/R$attr;->navigationViewStyle:I

    invoke-direct {p0, p1, p2, v0}, LA3/k;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move/from16 v4, p3

    .line 2
    sget v5, LA3/k;->I:I

    move-object/from16 v1, p1

    invoke-static {v1, v2, v4, v5}, LM3/a;->wrap(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v2, v4}, Lx3/F;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    new-instance v7, Lx3/A;

    invoke-direct {v7}, Lx3/A;-><init>()V

    iput-object v7, v0, LA3/k;->r:Lx3/A;

    const/4 v1, 0x2

    .line 4
    new-array v1, v1, [I

    iput-object v1, v0, LA3/k;->u:[I

    const/4 v8, 0x1

    .line 5
    iput-boolean v8, v0, LA3/k;->x:Z

    .line 6
    iput-boolean v8, v0, LA3/k;->y:Z

    const/4 v9, 0x0

    .line 7
    iput v9, v0, LA3/k;->z:I

    .line 8
    invoke-static {v0}, LG3/C;->create(Landroid/view/View;)LG3/C;

    move-result-object v1

    iput-object v1, v0, LA3/k;->C:LG3/C;

    .line 9
    new-instance v1, Lz3/j;

    invoke-direct {v1, v0}, Lz3/j;-><init>(Landroid/view/View;)V

    iput-object v1, v0, LA3/k;->D:Lz3/j;

    .line 10
    new-instance v1, Lz3/f;

    invoke-direct {v1, v0}, Lz3/f;-><init>(Landroid/view/View;)V

    iput-object v1, v0, LA3/k;->E:Lz3/f;

    .line 11
    new-instance v1, LA3/e;

    invoke-direct {v1, v0}, LA3/e;-><init>(LA3/k;)V

    iput-object v1, v0, LA3/k;->F:LA3/e;

    .line 12
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 13
    new-instance v10, Lx3/l;

    invoke-direct {v10, v1}, Lx3/l;-><init>(Landroid/content/Context;)V

    iput-object v10, v0, LA3/k;->q:Lx3/l;

    .line 14
    sget-object v3, Lcom/google/android/material/R$styleable;->NavigationView:[I

    new-array v6, v9, [I

    .line 15
    invoke-static/range {v1 .. v6}, Lx3/L;->obtainTintedStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Ll/e2;

    move-result-object v3

    .line 16
    sget v6, Lcom/google/android/material/R$styleable;->NavigationView_android_background:I

    invoke-virtual {v3, v6}, Ll/e2;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 17
    sget v6, Lcom/google/android/material/R$styleable;->NavigationView_android_background:I

    invoke-virtual {v3, v6}, Ll/e2;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-static {v0, v6}, LM/p0;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 18
    :cond_0
    sget v6, Lcom/google/android/material/R$styleable;->NavigationView_drawerLayoutCornerSize:I

    .line 19
    invoke-virtual {v3, v6, v9}, Ll/e2;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v0, LA3/k;->z:I

    if-nez v6, :cond_1

    move v6, v8

    goto :goto_0

    :cond_1
    move v6, v9

    .line 20
    :goto_0
    iput-boolean v6, v0, LA3/k;->A:Z

    .line 21
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v11, Lcom/google/android/material/R$dimen;->m3_navigation_drawer_layout_corner_size:I

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v0, LA3/k;->B:I

    .line 22
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 23
    invoke-static {v6}, Lt3/c;->getColorStateListOrNull(Landroid/graphics/drawable/Drawable;)Landroid/content/res/ColorStateList;

    move-result-object v11

    if-eqz v6, :cond_2

    if-eqz v11, :cond_4

    .line 24
    :cond_2
    invoke-static {v1, v2, v4, v5}, LG3/p;->builder(Landroid/content/Context;Landroid/util/AttributeSet;II)LG3/n;

    move-result-object v2

    invoke-virtual {v2}, LG3/n;->build()LG3/p;

    move-result-object v2

    .line 25
    new-instance v4, LG3/j;

    invoke-direct {v4, v2}, LG3/j;-><init>(LG3/p;)V

    if-eqz v11, :cond_3

    .line 26
    invoke-virtual {v4, v11}, LG3/j;->setFillColor(Landroid/content/res/ColorStateList;)V

    .line 27
    :cond_3
    invoke-virtual {v4, v1}, LG3/j;->initializeElevationOverlay(Landroid/content/Context;)V

    .line 28
    invoke-static {v0, v4}, LM/p0;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 29
    :cond_4
    sget v2, Lcom/google/android/material/R$styleable;->NavigationView_elevation:I

    invoke-virtual {v3, v2}, Ll/e2;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 30
    sget v2, Lcom/google/android/material/R$styleable;->NavigationView_elevation:I

    invoke-virtual {v3, v2, v9}, Ll/e2;->getDimensionPixelSize(II)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, LA3/k;->setElevation(F)V

    .line 31
    :cond_5
    sget v2, Lcom/google/android/material/R$styleable;->NavigationView_android_fitsSystemWindows:I

    invoke-virtual {v3, v2, v9}, Ll/e2;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 32
    sget v2, Lcom/google/android/material/R$styleable;->NavigationView_android_maxWidth:I

    invoke-virtual {v3, v2, v9}, Ll/e2;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v0, LA3/k;->t:I

    .line 33
    sget v2, Lcom/google/android/material/R$styleable;->NavigationView_subheaderColor:I

    invoke-virtual {v3, v2}, Ll/e2;->hasValue(I)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_6

    .line 34
    sget v2, Lcom/google/android/material/R$styleable;->NavigationView_subheaderColor:I

    invoke-virtual {v3, v2}, Ll/e2;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    goto :goto_1

    :cond_6
    move-object v2, v4

    .line 35
    :goto_1
    sget v5, Lcom/google/android/material/R$styleable;->NavigationView_subheaderTextAppearance:I

    invoke-virtual {v3, v5}, Ll/e2;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 36
    sget v5, Lcom/google/android/material/R$styleable;->NavigationView_subheaderTextAppearance:I

    .line 37
    invoke-virtual {v3, v5, v9}, Ll/e2;->getResourceId(II)I

    move-result v5

    goto :goto_2

    :cond_7
    move v5, v9

    :goto_2
    const v6, 0x1010038

    if-nez v5, :cond_8

    if-nez v2, :cond_8

    .line 38
    invoke-virtual {v0, v6}, LA3/k;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 39
    :cond_8
    sget v11, Lcom/google/android/material/R$styleable;->NavigationView_itemIconTint:I

    invoke-virtual {v3, v11}, Ll/e2;->hasValue(I)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 40
    sget v6, Lcom/google/android/material/R$styleable;->NavigationView_itemIconTint:I

    invoke-virtual {v3, v6}, Ll/e2;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    goto :goto_3

    .line 41
    :cond_9
    invoke-virtual {v0, v6}, LA3/k;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    .line 42
    :goto_3
    sget v11, Lcom/google/android/material/R$styleable;->NavigationView_itemTextAppearance:I

    invoke-virtual {v3, v11}, Ll/e2;->hasValue(I)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 43
    sget v11, Lcom/google/android/material/R$styleable;->NavigationView_itemTextAppearance:I

    invoke-virtual {v3, v11, v9}, Ll/e2;->getResourceId(II)I

    move-result v11

    goto :goto_4

    :cond_a
    move v11, v9

    .line 44
    :goto_4
    sget v12, Lcom/google/android/material/R$styleable;->NavigationView_itemTextAppearanceActiveBoldEnabled:I

    .line 45
    invoke-virtual {v3, v12, v8}, Ll/e2;->getBoolean(IZ)Z

    move-result v12

    .line 46
    sget v13, Lcom/google/android/material/R$styleable;->NavigationView_itemIconSize:I

    invoke-virtual {v3, v13}, Ll/e2;->hasValue(I)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 47
    sget v13, Lcom/google/android/material/R$styleable;->NavigationView_itemIconSize:I

    invoke-virtual {v3, v13, v9}, Ll/e2;->getDimensionPixelSize(II)I

    move-result v13

    invoke-virtual {v0, v13}, LA3/k;->setItemIconSize(I)V

    .line 48
    :cond_b
    sget v13, Lcom/google/android/material/R$styleable;->NavigationView_itemTextColor:I

    invoke-virtual {v3, v13}, Ll/e2;->hasValue(I)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 49
    sget v13, Lcom/google/android/material/R$styleable;->NavigationView_itemTextColor:I

    invoke-virtual {v3, v13}, Ll/e2;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v13

    goto :goto_5

    :cond_c
    move-object v13, v4

    :goto_5
    if-nez v11, :cond_d

    if-nez v13, :cond_d

    const v13, 0x1010036

    .line 50
    invoke-virtual {v0, v13}, LA3/k;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v13

    .line 51
    :cond_d
    sget v14, Lcom/google/android/material/R$styleable;->NavigationView_itemBackground:I

    invoke-virtual {v3, v14}, Ll/e2;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    if-nez v14, :cond_f

    .line 52
    sget v15, Lcom/google/android/material/R$styleable;->NavigationView_itemShapeAppearance:I

    invoke-virtual {v3, v15}, Ll/e2;->hasValue(I)Z

    move-result v15

    if-nez v15, :cond_e

    sget v15, Lcom/google/android/material/R$styleable;->NavigationView_itemShapeAppearanceOverlay:I

    .line 53
    invoke-virtual {v3, v15}, Ll/e2;->hasValue(I)Z

    move-result v15

    if-eqz v15, :cond_f

    .line 54
    :cond_e
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v14

    sget v15, Lcom/google/android/material/R$styleable;->NavigationView_itemShapeFillColor:I

    .line 55
    invoke-static {v14, v3, v15}, LC3/d;->getColorStateList(Landroid/content/Context;Ll/e2;I)Landroid/content/res/ColorStateList;

    move-result-object v14

    .line 56
    invoke-virtual {v0, v3, v14}, LA3/k;->c(Ll/e2;Landroid/content/res/ColorStateList;)Landroid/graphics/drawable/InsetDrawable;

    move-result-object v14

    .line 57
    sget v15, Lcom/google/android/material/R$styleable;->NavigationView_itemRippleColor:I

    .line 58
    invoke-static {v1, v3, v15}, LC3/d;->getColorStateList(Landroid/content/Context;Ll/e2;I)Landroid/content/res/ColorStateList;

    move-result-object v15

    if-eqz v15, :cond_f

    .line 59
    invoke-virtual {v0, v3, v4}, LA3/k;->c(Ll/e2;Landroid/content/res/ColorStateList;)Landroid/graphics/drawable/InsetDrawable;

    move-result-object v8

    .line 60
    new-instance v9, Landroid/graphics/drawable/RippleDrawable;

    .line 61
    invoke-static {v15}, LD3/a;->sanitizeRippleDrawableColor(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v15

    invoke-direct {v9, v15, v4, v8}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 62
    invoke-virtual {v7, v9}, Lx3/A;->setItemForeground(Landroid/graphics/drawable/RippleDrawable;)V

    .line 63
    :cond_f
    sget v4, Lcom/google/android/material/R$styleable;->NavigationView_itemHorizontalPadding:I

    invoke-virtual {v3, v4}, Ll/e2;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 64
    sget v4, Lcom/google/android/material/R$styleable;->NavigationView_itemHorizontalPadding:I

    const/4 v8, 0x0

    .line 65
    invoke-virtual {v3, v4, v8}, Ll/e2;->getDimensionPixelSize(II)I

    move-result v4

    .line 66
    invoke-virtual {v0, v4}, LA3/k;->setItemHorizontalPadding(I)V

    goto :goto_6

    :cond_10
    const/4 v8, 0x0

    .line 67
    :goto_6
    sget v4, Lcom/google/android/material/R$styleable;->NavigationView_itemVerticalPadding:I

    invoke-virtual {v3, v4}, Ll/e2;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 68
    sget v4, Lcom/google/android/material/R$styleable;->NavigationView_itemVerticalPadding:I

    .line 69
    invoke-virtual {v3, v4, v8}, Ll/e2;->getDimensionPixelSize(II)I

    move-result v4

    .line 70
    invoke-virtual {v0, v4}, LA3/k;->setItemVerticalPadding(I)V

    .line 71
    :cond_11
    sget v4, Lcom/google/android/material/R$styleable;->NavigationView_dividerInsetStart:I

    .line 72
    invoke-virtual {v3, v4, v8}, Ll/e2;->getDimensionPixelSize(II)I

    move-result v4

    .line 73
    invoke-virtual {v0, v4}, LA3/k;->setDividerInsetStart(I)V

    .line 74
    sget v4, Lcom/google/android/material/R$styleable;->NavigationView_dividerInsetEnd:I

    .line 75
    invoke-virtual {v3, v4, v8}, Ll/e2;->getDimensionPixelSize(II)I

    move-result v4

    .line 76
    invoke-virtual {v0, v4}, LA3/k;->setDividerInsetEnd(I)V

    .line 77
    sget v4, Lcom/google/android/material/R$styleable;->NavigationView_subheaderInsetStart:I

    .line 78
    invoke-virtual {v3, v4, v8}, Ll/e2;->getDimensionPixelSize(II)I

    move-result v4

    .line 79
    invoke-virtual {v0, v4}, LA3/k;->setSubheaderInsetStart(I)V

    .line 80
    sget v4, Lcom/google/android/material/R$styleable;->NavigationView_subheaderInsetEnd:I

    .line 81
    invoke-virtual {v3, v4, v8}, Ll/e2;->getDimensionPixelSize(II)I

    move-result v4

    .line 82
    invoke-virtual {v0, v4}, LA3/k;->setSubheaderInsetEnd(I)V

    .line 83
    sget v4, Lcom/google/android/material/R$styleable;->NavigationView_topInsetScrimEnabled:I

    iget-boolean v9, v0, LA3/k;->x:Z

    .line 84
    invoke-virtual {v3, v4, v9}, Ll/e2;->getBoolean(IZ)Z

    move-result v4

    .line 85
    invoke-virtual {v0, v4}, LA3/k;->setTopInsetScrimEnabled(Z)V

    .line 86
    sget v4, Lcom/google/android/material/R$styleable;->NavigationView_bottomInsetScrimEnabled:I

    iget-boolean v9, v0, LA3/k;->y:Z

    .line 87
    invoke-virtual {v3, v4, v9}, Ll/e2;->getBoolean(IZ)Z

    move-result v4

    .line 88
    invoke-virtual {v0, v4}, LA3/k;->setBottomInsetScrimEnabled(Z)V

    .line 89
    sget v4, Lcom/google/android/material/R$styleable;->NavigationView_itemIconPadding:I

    .line 90
    invoke-virtual {v3, v4, v8}, Ll/e2;->getDimensionPixelSize(II)I

    move-result v4

    .line 91
    sget v8, Lcom/google/android/material/R$styleable;->NavigationView_itemMaxLines:I

    const/4 v9, 0x1

    invoke-virtual {v3, v8, v9}, Ll/e2;->getInt(II)I

    move-result v8

    invoke-virtual {v0, v8}, LA3/k;->setItemMaxLines(I)V

    .line 92
    new-instance v8, LA3/f;

    invoke-direct {v8, v0}, LA3/f;-><init>(LA3/k;)V

    invoke-virtual {v10, v8}, Lk/p;->setCallback(Lk/n;)V

    .line 93
    invoke-virtual {v7, v9}, Lx3/A;->setId(I)V

    .line 94
    invoke-virtual {v7, v1, v10}, Lx3/A;->initForMenu(Landroid/content/Context;Lk/p;)V

    if-eqz v5, :cond_12

    .line 95
    invoke-virtual {v7, v5}, Lx3/A;->setSubheaderTextAppearance(I)V

    .line 96
    :cond_12
    invoke-virtual {v7, v2}, Lx3/A;->setSubheaderColor(Landroid/content/res/ColorStateList;)V

    .line 97
    invoke-virtual {v7, v6}, Lx3/A;->setItemIconTintList(Landroid/content/res/ColorStateList;)V

    .line 98
    invoke-virtual {v0}, Landroid/view/View;->getOverScrollMode()I

    move-result v1

    invoke-virtual {v7, v1}, Lx3/A;->setOverScrollMode(I)V

    if-eqz v11, :cond_13

    .line 99
    invoke-virtual {v7, v11}, Lx3/A;->setItemTextAppearance(I)V

    .line 100
    :cond_13
    invoke-virtual {v7, v12}, Lx3/A;->setItemTextAppearanceActiveBoldEnabled(Z)V

    .line 101
    invoke-virtual {v7, v13}, Lx3/A;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    .line 102
    invoke-virtual {v7, v14}, Lx3/A;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    .line 103
    invoke-virtual {v7, v4}, Lx3/A;->setItemIconPadding(I)V

    .line 104
    invoke-virtual {v10, v7}, Lk/p;->addMenuPresenter(Lk/E;)V

    .line 105
    invoke-virtual {v7, v0}, Lx3/A;->getMenuView(Landroid/view/ViewGroup;)Lk/G;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 106
    sget v1, Lcom/google/android/material/R$styleable;->NavigationView_menu:I

    invoke-virtual {v3, v1}, Ll/e2;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 107
    sget v1, Lcom/google/android/material/R$styleable;->NavigationView_menu:I

    const/4 v8, 0x0

    invoke-virtual {v3, v1, v8}, Ll/e2;->getResourceId(II)I

    move-result v1

    invoke-virtual {v0, v1}, LA3/k;->inflateMenu(I)V

    goto :goto_7

    :cond_14
    const/4 v8, 0x0

    .line 108
    :goto_7
    sget v1, Lcom/google/android/material/R$styleable;->NavigationView_headerLayout:I

    invoke-virtual {v3, v1}, Ll/e2;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 109
    sget v1, Lcom/google/android/material/R$styleable;->NavigationView_headerLayout:I

    invoke-virtual {v3, v1, v8}, Ll/e2;->getResourceId(II)I

    move-result v1

    invoke-virtual {v0, v1}, LA3/k;->inflateHeaderView(I)Landroid/view/View;

    .line 110
    :cond_15
    invoke-virtual {v3}, Ll/e2;->recycle()V

    .line 111
    new-instance v1, LA3/g;

    invoke-direct {v1, v0}, LA3/g;-><init>(LA3/k;)V

    iput-object v1, v0, LA3/k;->w:LA3/g;

    .line 112
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, v0, LA3/k;->w:LA3/g;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public static synthetic a(LA3/k;Landroid/graphics/Canvas;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    .line 1
    iget-object v0, p0, LA3/k;->v:Lj/l;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lj/l;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Lj/l;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, LA3/k;->v:Lj/l;

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, LA3/k;->v:Lj/l;

    .line 17
    .line 18
    return-object v0
.end method


# virtual methods
.method public final b(I)Landroid/content/res/ColorStateList;
    .locals 7

    .line 1
    new-instance v0, Landroid/util/TypedValue;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const/4 v2, 0x1

    .line 15
    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    .line 27
    .line 28
    invoke-static {p1, v1}, Lf/a;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    sget v3, Landroidx/appcompat/R$attr;->colorPrimary:I

    .line 41
    .line 42
    invoke-virtual {v1, v3, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-nez v1, :cond_1

    .line 47
    .line 48
    :goto_0
    const/4 p1, 0x0

    .line 49
    return-object p1

    .line 50
    :cond_1
    iget v0, v0, Landroid/util/TypedValue;->data:I

    .line 51
    .line 52
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    new-instance v3, Landroid/content/res/ColorStateList;

    .line 57
    .line 58
    sget-object v4, LA3/k;->H:[I

    .line 59
    .line 60
    const/4 v5, 0x3

    .line 61
    new-array v5, v5, [[I

    .line 62
    .line 63
    const/4 v6, 0x0

    .line 64
    aput-object v4, v5, v6

    .line 65
    .line 66
    sget-object v6, LA3/k;->G:[I

    .line 67
    .line 68
    aput-object v6, v5, v2

    .line 69
    .line 70
    sget-object v2, Landroid/widget/FrameLayout;->EMPTY_STATE_SET:[I

    .line 71
    .line 72
    const/4 v6, 0x2

    .line 73
    aput-object v2, v5, v6

    .line 74
    .line 75
    invoke-virtual {p1, v4, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    filled-new-array {p1, v0, v1}, [I

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-direct {v3, v5, p1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 84
    .line 85
    .line 86
    return-object v3
.end method

.method public final c(Ll/e2;Landroid/content/res/ColorStateList;)Landroid/graphics/drawable/InsetDrawable;
    .locals 9

    .line 1
    sget v0, Lcom/google/android/material/R$styleable;->NavigationView_itemShapeAppearance:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, v0, v1}, Ll/e2;->getResourceId(II)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    sget v2, Lcom/google/android/material/R$styleable;->NavigationView_itemShapeAppearanceOverlay:I

    .line 9
    .line 10
    invoke-virtual {p1, v2, v1}, Ll/e2;->getResourceId(II)I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    new-instance v4, LG3/j;

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-static {v3, v0, v2}, LG3/p;->builder(Landroid/content/Context;II)LG3/n;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, LG3/n;->build()LG3/p;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-direct {v4, v0}, LG3/j;-><init>(LG3/p;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v4, p2}, LG3/j;->setFillColor(Landroid/content/res/ColorStateList;)V

    .line 32
    .line 33
    .line 34
    sget p2, Lcom/google/android/material/R$styleable;->NavigationView_itemShapeInsetStart:I

    .line 35
    .line 36
    invoke-virtual {p1, p2, v1}, Ll/e2;->getDimensionPixelSize(II)I

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    sget p2, Lcom/google/android/material/R$styleable;->NavigationView_itemShapeInsetTop:I

    .line 41
    .line 42
    invoke-virtual {p1, p2, v1}, Ll/e2;->getDimensionPixelSize(II)I

    .line 43
    .line 44
    .line 45
    move-result v6

    .line 46
    sget p2, Lcom/google/android/material/R$styleable;->NavigationView_itemShapeInsetEnd:I

    .line 47
    .line 48
    invoke-virtual {p1, p2, v1}, Ll/e2;->getDimensionPixelSize(II)I

    .line 49
    .line 50
    .line 51
    move-result v7

    .line 52
    sget p2, Lcom/google/android/material/R$styleable;->NavigationView_itemShapeInsetBottom:I

    .line 53
    .line 54
    invoke-virtual {p1, p2, v1}, Ll/e2;->getDimensionPixelSize(II)I

    .line 55
    .line 56
    .line 57
    move-result v8

    .line 58
    new-instance v3, Landroid/graphics/drawable/InsetDrawable;

    .line 59
    .line 60
    invoke-direct/range {v3 .. v8}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 61
    .line 62
    .line 63
    return-object v3
.end method

.method public cancelBackProgress()V
    .locals 2

    .line 1
    invoke-virtual {p0}, LA3/k;->e()Landroid/util/Pair;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, LA3/k;->D:Lz3/j;

    .line 5
    .line 6
    invoke-virtual {v0}, Lz3/j;->cancelBackProgress()V

    .line 7
    .line 8
    .line 9
    iget-boolean v0, p0, LA3/k;->A:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget v0, p0, LA3/k;->z:I

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    iput v0, p0, LA3/k;->z:I

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    invoke-virtual {p0, v0, v1}, LA3/k;->d(II)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method public final d(II)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v0, v0, Landroidx/drawerlayout/widget/DrawerLayout;

    .line 6
    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    instance-of v0, v0, Lc0/f;

    .line 14
    .line 15
    if-eqz v0, :cond_3

    .line 16
    .line 17
    iget v0, p0, LA3/k;->z:I

    .line 18
    .line 19
    if-gtz v0, :cond_0

    .line 20
    .line 21
    iget-boolean v0, p0, LA3/k;->A:Z

    .line 22
    .line 23
    if-eqz v0, :cond_3

    .line 24
    .line 25
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    instance-of v0, v0, LG3/j;

    .line 30
    .line 31
    if-eqz v0, :cond_3

    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Lc0/f;

    .line 38
    .line 39
    iget v0, v0, Lc0/f;->a:I

    .line 40
    .line 41
    invoke-static {p0}, LM/p0;->getLayoutDirection(Landroid/view/View;)I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    invoke-static {v0, v1}, LM/s;->getAbsoluteGravity(II)I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    const/4 v1, 0x3

    .line 50
    const/4 v2, 0x1

    .line 51
    if-ne v0, v1, :cond_1

    .line 52
    .line 53
    move v0, v2

    .line 54
    goto :goto_0

    .line 55
    :cond_1
    const/4 v0, 0x0

    .line 56
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    check-cast v1, LG3/j;

    .line 61
    .line 62
    invoke-virtual {v1}, LG3/j;->getShapeAppearanceModel()LG3/p;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-virtual {v3}, LG3/p;->toBuilder()LG3/n;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    iget v4, p0, LA3/k;->z:I

    .line 71
    .line 72
    int-to-float v4, v4

    .line 73
    invoke-virtual {v3, v4}, LG3/n;->setAllCornerSizes(F)LG3/n;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    const/4 v4, 0x0

    .line 78
    if-eqz v0, :cond_2

    .line 79
    .line 80
    invoke-virtual {v3, v4}, LG3/n;->setTopLeftCornerSize(F)LG3/n;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3, v4}, LG3/n;->setBottomLeftCornerSize(F)LG3/n;

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_2
    invoke-virtual {v3, v4}, LG3/n;->setTopRightCornerSize(F)LG3/n;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v3, v4}, LG3/n;->setBottomRightCornerSize(F)LG3/n;

    .line 91
    .line 92
    .line 93
    :goto_1
    invoke-virtual {v3}, LG3/n;->build()LG3/p;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-virtual {v1, v0}, LG3/j;->setShapeAppearanceModel(LG3/p;)V

    .line 98
    .line 99
    .line 100
    iget-object v1, p0, LA3/k;->C:LG3/C;

    .line 101
    .line 102
    invoke-virtual {v1, p0, v0}, LG3/C;->onShapeAppearanceChanged(Landroid/view/View;LG3/p;)V

    .line 103
    .line 104
    .line 105
    new-instance v0, Landroid/graphics/RectF;

    .line 106
    .line 107
    int-to-float p1, p1

    .line 108
    int-to-float p2, p2

    .line 109
    invoke-direct {v0, v4, v4, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1, p0, v0}, LG3/C;->onMaskChanged(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1, p0, v2}, LG3/C;->setOffsetZeroCornerEdgeBoundsEnabled(Landroid/view/View;Z)V

    .line 116
    .line 117
    .line 118
    :cond_3
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    new-instance v0, LA0/a;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, p0, v1}, LA0/a;-><init>(Ljava/lang/Object;I)V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, LA3/k;->C:LG3/C;

    .line 8
    .line 9
    invoke-virtual {v1, p1, v0}, LG3/C;->maybeClip(Landroid/graphics/Canvas;Ln3/a;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final e()Landroid/util/Pair;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    instance-of v2, v0, Landroidx/drawerlayout/widget/DrawerLayout;

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    instance-of v2, v1, Lc0/f;

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    new-instance v2, Landroid/util/Pair;

    .line 18
    .line 19
    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout;

    .line 20
    .line 21
    check-cast v1, Lc0/f;

    .line 22
    .line 23
    invoke-direct {v2, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    return-object v2

    .line 27
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 28
    .line 29
    const-string v1, "NavigationView back progress requires the direct parent view to be a DrawerLayout."

    .line 30
    .line 31
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw v0
.end method

.method public getBackHelper()Lz3/j;
    .locals 1

    .line 1
    iget-object v0, p0, LA3/k;->D:Lz3/j;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCheckedItem()Landroid/view/MenuItem;
    .locals 1

    .line 1
    iget-object v0, p0, LA3/k;->r:Lx3/A;

    .line 2
    .line 3
    invoke-virtual {v0}, Lx3/A;->getCheckedItem()Lk/s;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getDividerInsetEnd()I
    .locals 1

    .line 1
    iget-object v0, p0, LA3/k;->r:Lx3/A;

    .line 2
    .line 3
    invoke-virtual {v0}, Lx3/A;->getDividerInsetEnd()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getDividerInsetStart()I
    .locals 1

    .line 1
    iget-object v0, p0, LA3/k;->r:Lx3/A;

    .line 2
    .line 3
    invoke-virtual {v0}, Lx3/A;->getDividerInsetStart()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getHeaderCount()I
    .locals 1

    .line 1
    iget-object v0, p0, LA3/k;->r:Lx3/A;

    .line 2
    .line 3
    invoke-virtual {v0}, Lx3/A;->getHeaderCount()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getItemBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, LA3/k;->r:Lx3/A;

    .line 2
    .line 3
    invoke-virtual {v0}, Lx3/A;->getItemBackground()Landroid/graphics/drawable/Drawable;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getItemHorizontalPadding()I
    .locals 1

    .line 1
    iget-object v0, p0, LA3/k;->r:Lx3/A;

    .line 2
    .line 3
    invoke-virtual {v0}, Lx3/A;->getItemHorizontalPadding()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getItemIconPadding()I
    .locals 1

    .line 1
    iget-object v0, p0, LA3/k;->r:Lx3/A;

    .line 2
    .line 3
    invoke-virtual {v0}, Lx3/A;->getItemIconPadding()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getItemIconTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, LA3/k;->r:Lx3/A;

    .line 2
    .line 3
    invoke-virtual {v0}, Lx3/A;->getItemTintList()Landroid/content/res/ColorStateList;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getItemMaxLines()I
    .locals 1

    .line 1
    iget-object v0, p0, LA3/k;->r:Lx3/A;

    .line 2
    .line 3
    invoke-virtual {v0}, Lx3/A;->getItemMaxLines()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getItemTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, LA3/k;->r:Lx3/A;

    .line 2
    .line 3
    invoke-virtual {v0}, Lx3/A;->getItemTextColor()Landroid/content/res/ColorStateList;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getItemVerticalPadding()I
    .locals 1

    .line 1
    iget-object v0, p0, LA3/k;->r:Lx3/A;

    .line 2
    .line 3
    invoke-virtual {v0}, Lx3/A;->getItemVerticalPadding()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    .line 1
    iget-object v0, p0, LA3/k;->q:Lx3/l;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSubheaderInsetEnd()I
    .locals 1

    .line 1
    iget-object v0, p0, LA3/k;->r:Lx3/A;

    .line 2
    .line 3
    invoke-virtual {v0}, Lx3/A;->getSubheaderInsetEnd()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getSubheaderInsetStart()I
    .locals 1

    .line 1
    iget-object v0, p0, LA3/k;->r:Lx3/A;

    .line 2
    .line 3
    invoke-virtual {v0}, Lx3/A;->getSubheaderInsetStart()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public handleBackInvoked()V
    .locals 6

    .line 1
    invoke-virtual {p0}, LA3/k;->e()Landroid/util/Pair;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Landroidx/drawerlayout/widget/DrawerLayout;

    .line 8
    .line 9
    iget-object v2, p0, LA3/k;->D:Lz3/j;

    .line 10
    .line 11
    invoke-virtual {v2}, Lz3/a;->onHandleBackInvoked()Landroidx/activity/c;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    if-eqz v3, :cond_1

    .line 16
    .line 17
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 18
    .line 19
    const/16 v5, 0x22

    .line 20
    .line 21
    if-ge v4, v5, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v0, Lc0/f;

    .line 27
    .line 28
    iget v0, v0, Lc0/f;->a:I

    .line 29
    .line 30
    invoke-static {v1, p0}, LA3/c;->getScrimCloseAnimatorListener(Landroidx/drawerlayout/widget/DrawerLayout;Landroid/view/View;)Landroid/animation/Animator$AnimatorListener;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    invoke-static {v1}, LA3/c;->getScrimCloseAnimatorUpdateListener(Landroidx/drawerlayout/widget/DrawerLayout;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v2, v3, v0, v4, v1}, Lz3/j;->finishBackProgress(Landroidx/activity/c;ILandroid/animation/Animator$AnimatorListener;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_1
    :goto_0
    invoke-virtual {v1, p0}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public inflateHeaderView(I)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, LA3/k;->r:Lx3/A;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lx3/A;->inflateHeaderView(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public inflateMenu(I)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, LA3/k;->r:Lx3/A;

    .line 3
    .line 4
    invoke-virtual {v1, v0}, Lx3/A;->setUpdateSuspended(Z)V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, LA3/k;->getMenuInflater()Landroid/view/MenuInflater;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v2, p0, LA3/k;->q:Lx3/l;

    .line 12
    .line 13
    invoke-virtual {v0, p1, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 14
    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    invoke-virtual {v1, p1}, Lx3/A;->setUpdateSuspended(Z)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, p1}, Lx3/A;->updateMenuView(Z)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public isBottomInsetScrimEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, LA3/k;->y:Z

    .line 2
    .line 3
    return v0
.end method

.method public isTopInsetScrimEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, LA3/k;->x:Z

    .line 2
    .line 3
    return v0
.end method

.method public onAttachedToWindow()V
    .locals 3

    .line 1
    invoke-super {p0}, Lx3/F;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, LG3/k;->setParentAbsoluteElevation(Landroid/view/View;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    instance-of v1, v0, Landroidx/drawerlayout/widget/DrawerLayout;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, LA3/k;->E:Lz3/f;

    .line 16
    .line 17
    invoke-virtual {v1}, Lz3/f;->shouldListenForBackCallbacks()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout;

    .line 24
    .line 25
    iget-object v2, p0, LA3/k;->F:LA3/e;

    .line 26
    .line 27
    invoke-virtual {v0, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->removeDrawerListener(Lc0/e;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->addDrawerListener(Lc0/e;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p0}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    invoke-virtual {v1}, Lz3/f;->startListeningForBackCallbacksWithPriorityOverlay()V

    .line 40
    .line 41
    .line 42
    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Lx3/F;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, LA3/k;->w:LA3/g;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    instance-of v1, v0, Landroidx/drawerlayout/widget/DrawerLayout;

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout;

    .line 22
    .line 23
    iget-object v1, p0, LA3/k;->F:LA3/e;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->removeDrawerListener(Lc0/e;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method public onInsetsChanged(LM/h1;)V
    .locals 1

    .line 1
    iget-object v0, p0, LA3/k;->r:Lx3/A;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lx3/A;->dispatchApplyWindowInsets(LM/h1;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onMeasure(II)V
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/high16 v1, -0x80000000

    .line 6
    .line 7
    const/high16 v2, 0x40000000    # 2.0f

    .line 8
    .line 9
    iget v3, p0, LA3/k;->t:I

    .line 10
    .line 11
    if-eq v0, v1, :cond_1

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    instance-of v0, p1, LA3/j;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    check-cast p1, LA3/j;

    .line 10
    .line 11
    invoke-virtual {p1}, LV/c;->getSuperState()Landroid/os/Parcelable;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, LA3/k;->q:Lx3/l;

    .line 19
    .line 20
    iget-object p1, p1, LA3/j;->f:Landroid/os/Bundle;

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Lk/p;->restorePresenterStates(Landroid/os/Bundle;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, LA3/j;

    .line 6
    .line 7
    invoke-direct {v1, v0}, LA3/j;-><init>(Landroid/os/Parcelable;)V

    .line 8
    .line 9
    .line 10
    new-instance v0, Landroid/os/Bundle;

    .line 11
    .line 12
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v0, v1, LA3/j;->f:Landroid/os/Bundle;

    .line 16
    .line 17
    iget-object v2, p0, LA3/k;->q:Lx3/l;

    .line 18
    .line 19
    invoke-virtual {v2, v0}, Lk/p;->savePresenterStates(Landroid/os/Bundle;)V

    .line 20
    .line 21
    .line 22
    return-object v1
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, p2}, LA3/k;->d(II)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public setBottomInsetScrimEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, LA3/k;->y:Z

    .line 2
    .line 3
    return-void
.end method

.method public setCheckedItem(I)V
    .locals 1

    .line 1
    iget-object v0, p0, LA3/k;->q:Lx3/l;

    invoke-virtual {v0, p1}, Lk/p;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, LA3/k;->r:Lx3/A;

    check-cast p1, Lk/s;

    invoke-virtual {v0, p1}, Lx3/A;->setCheckedItem(Lk/s;)V

    :cond_0
    return-void
.end method

.method public setCheckedItem(Landroid/view/MenuItem;)V
    .locals 1

    .line 3
    iget-object v0, p0, LA3/k;->q:Lx3/l;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    invoke-virtual {v0, p1}, Lk/p;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget-object v0, p0, LA3/k;->r:Lx3/A;

    check-cast p1, Lk/s;

    invoke-virtual {v0, p1}, Lx3/A;->setCheckedItem(Lk/s;)V

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Called setCheckedItem(MenuItem) with an item that is not in the current menu."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDividerInsetEnd(I)V
    .locals 1

    .line 1
    iget-object v0, p0, LA3/k;->r:Lx3/A;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lx3/A;->setDividerInsetEnd(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setDividerInsetStart(I)V
    .locals 1

    .line 1
    iget-object v0, p0, LA3/k;->r:Lx3/A;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lx3/A;->setDividerInsetStart(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setElevation(F)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setElevation(F)V

    .line 2
    .line 3
    .line 4
    invoke-static {p0, p1}, LG3/k;->setElevation(Landroid/view/View;F)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public setForceCompatClippingEnabled(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, LA3/k;->C:LG3/C;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1}, LG3/C;->setForceCompatClippingEnabled(Landroid/view/View;Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setItemBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, LA3/k;->r:Lx3/A;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lx3/A;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setItemBackgroundResource(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0, p1}, LA/h;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, LA3/k;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setItemHorizontalPadding(I)V
    .locals 1

    .line 1
    iget-object v0, p0, LA3/k;->r:Lx3/A;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lx3/A;->setItemHorizontalPadding(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setItemHorizontalPaddingResource(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    iget-object v0, p0, LA3/k;->r:Lx3/A;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lx3/A;->setItemHorizontalPadding(I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public setItemIconPadding(I)V
    .locals 1

    .line 1
    iget-object v0, p0, LA3/k;->r:Lx3/A;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lx3/A;->setItemIconPadding(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setItemIconPaddingResource(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    iget-object v0, p0, LA3/k;->r:Lx3/A;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lx3/A;->setItemIconPadding(I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public setItemIconSize(I)V
    .locals 1

    .line 1
    iget-object v0, p0, LA3/k;->r:Lx3/A;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lx3/A;->setItemIconSize(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setItemIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, LA3/k;->r:Lx3/A;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lx3/A;->setItemIconTintList(Landroid/content/res/ColorStateList;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setItemMaxLines(I)V
    .locals 1

    .line 1
    iget-object v0, p0, LA3/k;->r:Lx3/A;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lx3/A;->setItemMaxLines(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setItemTextAppearance(I)V
    .locals 1

    .line 1
    iget-object v0, p0, LA3/k;->r:Lx3/A;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lx3/A;->setItemTextAppearance(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setItemTextAppearanceActiveBoldEnabled(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, LA3/k;->r:Lx3/A;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lx3/A;->setItemTextAppearanceActiveBoldEnabled(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setItemTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, LA3/k;->r:Lx3/A;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lx3/A;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setItemVerticalPadding(I)V
    .locals 1

    .line 1
    iget-object v0, p0, LA3/k;->r:Lx3/A;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lx3/A;->setItemVerticalPadding(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setItemVerticalPaddingResource(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    iget-object v0, p0, LA3/k;->r:Lx3/A;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lx3/A;->setItemVerticalPadding(I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public setNavigationItemSelectedListener(LA3/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, LA3/k;->s:LA3/h;

    .line 2
    .line 3
    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOverScrollMode(I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, LA3/k;->r:Lx3/A;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lx3/A;->setOverScrollMode(I)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public setSubheaderInsetEnd(I)V
    .locals 1

    .line 1
    iget-object v0, p0, LA3/k;->r:Lx3/A;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lx3/A;->setSubheaderInsetEnd(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setSubheaderInsetStart(I)V
    .locals 1

    .line 1
    iget-object v0, p0, LA3/k;->r:Lx3/A;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lx3/A;->setSubheaderInsetStart(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setTopInsetScrimEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, LA3/k;->x:Z

    .line 2
    .line 3
    return-void
.end method

.method public startBackProgress(Landroidx/activity/c;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, LA3/k;->e()Landroid/util/Pair;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, LA3/k;->D:Lz3/j;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lz3/j;->startBackProgress(Landroidx/activity/c;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public updateBackProgress(Landroidx/activity/c;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, LA3/k;->e()Landroid/util/Pair;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Lc0/f;

    .line 8
    .line 9
    iget v0, v0, Lc0/f;->a:I

    .line 10
    .line 11
    iget-object v1, p0, LA3/k;->D:Lz3/j;

    .line 12
    .line 13
    invoke-virtual {v1, p1, v0}, Lz3/j;->updateBackProgress(Landroidx/activity/c;I)V

    .line 14
    .line 15
    .line 16
    iget-boolean v0, p0, LA3/k;->A:Z

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {p1}, Landroidx/activity/c;->getProgress()F

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    invoke-virtual {v1, p1}, Lz3/a;->interpolateProgress(F)F

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    const/4 v0, 0x0

    .line 29
    iget v1, p0, LA3/k;->B:I

    .line 30
    .line 31
    invoke-static {v0, v1, p1}, Lg3/a;->lerp(IIF)I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    iput p1, p0, LA3/k;->z:I

    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    invoke-virtual {p0, p1, v0}, LA3/k;->d(II)V

    .line 46
    .line 47
    .line 48
    :cond_0
    return-void
.end method
