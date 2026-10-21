.class public Lflix/com/vision/materialsearchview/MaterialSearchView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lflix/com/vision/materialsearchview/MaterialSearchView$SearchViewListener;,
        Lflix/com/vision/materialsearchview/MaterialSearchView$OnQueryTextListener;,
        Lflix/com/vision/materialsearchview/MaterialSearchView$OnVoiceClickedListener;
    }
.end annotation


# static fields
.field public static D:I = 0xa


# instance fields
.field public A:Lflix/com/vision/materialsearchview/MaterialSearchView$OnQueryTextListener;

.field public B:Lflix/com/vision/materialsearchview/MaterialSearchView$SearchViewListener;

.field public C:Lflix/com/vision/materialsearchview/MaterialSearchView$OnVoiceClickedListener;

.field public b:Z

.field public final e:Landroid/content/Context;

.field public f:Z

.field public j:Z

.field public m:Z

.field public n:Z

.field public p:Ljava/lang/String;

.field public final q:Landroid/view/View;

.field public final r:Landroid/widget/FrameLayout;

.field public final s:Landroid/widget/LinearLayout;

.field public final t:Landroid/widget/EditText;

.field public final u:Landroid/widget/ImageButton;

.field public final v:Landroid/widget/ImageButton;

.field public final w:Landroid/widget/ImageButton;

.field public final x:Landroid/widget/ListView;

.field public final y:Lflix/com/vision/materialsearchview/adapters/CursorSearchAdapter;

.field public z:Landroid/text/Editable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lflix/com/vision/materialsearchview/MaterialSearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    iput-object p1, p0, Lflix/com/vision/materialsearchview/MaterialSearchView;->e:Landroid/content/Context;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lflix/com/vision/materialsearchview/MaterialSearchView;->f:Z

    .line 5
    iput-boolean v0, p0, Lflix/com/vision/materialsearchview/MaterialSearchView;->m:Z

    .line 6
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lflix/com/vision/R$layout;->search_view:I

    invoke-virtual {v1, v2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 7
    sget v1, Lflix/com/vision/R$id;->search_layout:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lflix/com/vision/materialsearchview/MaterialSearchView;->r:Landroid/widget/FrameLayout;

    .line 8
    sget v2, Lflix/com/vision/R$id;->transparent_view:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lflix/com/vision/materialsearchview/MaterialSearchView;->q:Landroid/view/View;

    .line 9
    iget-object v1, p0, Lflix/com/vision/materialsearchview/MaterialSearchView;->r:Landroid/widget/FrameLayout;

    sget v2, Lflix/com/vision/R$id;->search_bar:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lflix/com/vision/materialsearchview/MaterialSearchView;->s:Landroid/widget/LinearLayout;

    .line 10
    iget-object v1, p0, Lflix/com/vision/materialsearchview/MaterialSearchView;->r:Landroid/widget/FrameLayout;

    sget v2, Lflix/com/vision/R$id;->action_back:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lflix/com/vision/materialsearchview/MaterialSearchView;->u:Landroid/widget/ImageButton;

    .line 11
    iget-object v1, p0, Lflix/com/vision/materialsearchview/MaterialSearchView;->r:Landroid/widget/FrameLayout;

    sget v2, Lflix/com/vision/R$id;->et_search:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lflix/com/vision/materialsearchview/MaterialSearchView;->t:Landroid/widget/EditText;

    .line 12
    iget-object v1, p0, Lflix/com/vision/materialsearchview/MaterialSearchView;->r:Landroid/widget/FrameLayout;

    sget v2, Lflix/com/vision/R$id;->action_voice:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lflix/com/vision/materialsearchview/MaterialSearchView;->v:Landroid/widget/ImageButton;

    .line 13
    iget-object v1, p0, Lflix/com/vision/materialsearchview/MaterialSearchView;->r:Landroid/widget/FrameLayout;

    sget v2, Lflix/com/vision/R$id;->action_clear:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lflix/com/vision/materialsearchview/MaterialSearchView;->w:Landroid/widget/ImageButton;

    .line 14
    iget-object v1, p0, Lflix/com/vision/materialsearchview/MaterialSearchView;->r:Landroid/widget/FrameLayout;

    sget v2, Lflix/com/vision/R$id;->suggestion_list:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lflix/com/vision/materialsearchview/MaterialSearchView;->x:Landroid/widget/ListView;

    .line 15
    iget-object v1, p0, Lflix/com/vision/materialsearchview/MaterialSearchView;->u:Landroid/widget/ImageButton;

    new-instance v2, Lflix/com/vision/materialsearchview/MaterialSearchView$1;

    invoke-direct {v2, p0}, Lflix/com/vision/materialsearchview/MaterialSearchView$1;-><init>(Lflix/com/vision/materialsearchview/MaterialSearchView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    iget-object v1, p0, Lflix/com/vision/materialsearchview/MaterialSearchView;->v:Landroid/widget/ImageButton;

    new-instance v2, Lflix/com/vision/materialsearchview/MaterialSearchView$2;

    invoke-direct {v2, p0}, Lflix/com/vision/materialsearchview/MaterialSearchView$2;-><init>(Lflix/com/vision/materialsearchview/MaterialSearchView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    iget-object v1, p0, Lflix/com/vision/materialsearchview/MaterialSearchView;->w:Landroid/widget/ImageButton;

    new-instance v2, Lflix/com/vision/materialsearchview/MaterialSearchView$3;

    invoke-direct {v2, p0}, Lflix/com/vision/materialsearchview/MaterialSearchView$3;-><init>(Lflix/com/vision/materialsearchview/MaterialSearchView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    iget-object v1, p0, Lflix/com/vision/materialsearchview/MaterialSearchView;->q:Landroid/view/View;

    new-instance v2, Lflix/com/vision/materialsearchview/MaterialSearchView$4;

    invoke-direct {v2, p0}, Lflix/com/vision/materialsearchview/MaterialSearchView$4;-><init>(Lflix/com/vision/materialsearchview/MaterialSearchView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    invoke-virtual {p0, v0}, Lflix/com/vision/materialsearchview/MaterialSearchView;->b(Z)V

    .line 20
    iget-object v1, p0, Lflix/com/vision/materialsearchview/MaterialSearchView;->t:Landroid/widget/EditText;

    new-instance v2, Lflix/com/vision/materialsearchview/MaterialSearchView$6;

    invoke-direct {v2, p0}, Lflix/com/vision/materialsearchview/MaterialSearchView$6;-><init>(Lflix/com/vision/materialsearchview/MaterialSearchView;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 21
    iget-object v1, p0, Lflix/com/vision/materialsearchview/MaterialSearchView;->t:Landroid/widget/EditText;

    new-instance v2, Lflix/com/vision/materialsearchview/MaterialSearchView$7;

    invoke-direct {v2, p0}, Lflix/com/vision/materialsearchview/MaterialSearchView$7;-><init>(Lflix/com/vision/materialsearchview/MaterialSearchView;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 22
    iget-object v1, p0, Lflix/com/vision/materialsearchview/MaterialSearchView;->t:Landroid/widget/EditText;

    new-instance v2, Lflix/com/vision/materialsearchview/MaterialSearchView$8;

    invoke-direct {v2, p0}, Lflix/com/vision/materialsearchview/MaterialSearchView$8;-><init>(Lflix/com/vision/materialsearchview/MaterialSearchView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 23
    new-instance v1, Lflix/com/vision/materialsearchview/adapters/CursorSearchAdapter;

    invoke-direct {p0}, Lflix/com/vision/materialsearchview/MaterialSearchView;->getHistoryCursor()Landroid/database/Cursor;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lflix/com/vision/materialsearchview/adapters/CursorSearchAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v1, p0, Lflix/com/vision/materialsearchview/MaterialSearchView;->y:Lflix/com/vision/materialsearchview/adapters/CursorSearchAdapter;

    .line 24
    new-instance v2, Lflix/com/vision/materialsearchview/MaterialSearchView$5;

    invoke-direct {v2, p0}, Lflix/com/vision/materialsearchview/MaterialSearchView$5;-><init>(Lflix/com/vision/materialsearchview/MaterialSearchView;)V

    invoke-virtual {v1, v2}, Landroid/widget/CursorAdapter;->setFilterQueryProvider(Landroid/widget/FilterQueryProvider;)V

    .line 25
    iget-object v1, p0, Lflix/com/vision/materialsearchview/MaterialSearchView;->x:Landroid/widget/ListView;

    iget-object v2, p0, Lflix/com/vision/materialsearchview/MaterialSearchView;->y:Lflix/com/vision/materialsearchview/adapters/CursorSearchAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 26
    iget-object v1, p0, Lflix/com/vision/materialsearchview/MaterialSearchView;->x:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/AbsListView;->setTextFilterEnabled(Z)V

    .line 27
    invoke-static {v0}, Le/A;->setCompatVectorFromResourcesEnabled(Z)V

    .line 28
    sget-object v1, Lflix/com/vision/R$styleable;->MaterialSearchView:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    if-eqz p2, :cond_b

    .line 29
    sget p3, Lflix/com/vision/R$styleable;->MaterialSearchView_searchBackground:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 30
    sget p3, Lflix/com/vision/R$styleable;->MaterialSearchView_searchBackground:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p0, p3}, Lflix/com/vision/materialsearchview/MaterialSearchView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 31
    :cond_0
    sget p3, Lflix/com/vision/R$styleable;->MaterialSearchView_android_textColor:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 32
    sget p3, Lflix/com/vision/R$styleable;->MaterialSearchView_android_textColor:I

    sget v1, Lflix/com/vision/R$color;->black:I

    .line 33
    invoke-static {p1, v1}, LA/h;->getColor(Landroid/content/Context;I)I

    move-result v1

    .line 34
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lflix/com/vision/materialsearchview/MaterialSearchView;->setTextColor(I)V

    .line 35
    :cond_1
    sget p3, Lflix/com/vision/R$styleable;->MaterialSearchView_android_textColorHint:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 36
    sget p3, Lflix/com/vision/R$styleable;->MaterialSearchView_android_textColorHint:I

    sget v1, Lflix/com/vision/R$color;->gray_50:I

    .line 37
    invoke-static {p1, v1}, LA/h;->getColor(Landroid/content/Context;I)I

    move-result v1

    .line 38
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lflix/com/vision/materialsearchview/MaterialSearchView;->setHintTextColor(I)V

    .line 39
    :cond_2
    sget p3, Lflix/com/vision/R$styleable;->MaterialSearchView_android_hint:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 40
    sget p3, Lflix/com/vision/R$styleable;->MaterialSearchView_android_hint:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lflix/com/vision/materialsearchview/MaterialSearchView;->setHint(Ljava/lang/CharSequence;)V

    .line 41
    :cond_3
    sget p3, Lflix/com/vision/R$styleable;->MaterialSearchView_searchVoiceIcon:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 42
    sget p3, Lflix/com/vision/R$styleable;->MaterialSearchView_searchVoiceIcon:I

    sget v1, Lflix/com/vision/R$drawable;->ic_action_voice_search:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lflix/com/vision/materialsearchview/MaterialSearchView;->setVoiceIcon(I)V

    .line 43
    :cond_4
    sget p3, Lflix/com/vision/R$styleable;->MaterialSearchView_searchCloseIcon:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 44
    sget p3, Lflix/com/vision/R$styleable;->MaterialSearchView_searchCloseIcon:I

    sget v1, Lflix/com/vision/R$drawable;->ic_action_navigation_close:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lflix/com/vision/materialsearchview/MaterialSearchView;->setClearIcon(I)V

    .line 45
    :cond_5
    sget p3, Lflix/com/vision/R$styleable;->MaterialSearchView_searchBackIcon:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 46
    sget p3, Lflix/com/vision/R$styleable;->MaterialSearchView_searchBackIcon:I

    sget v1, Lflix/com/vision/R$drawable;->ic_action_navigation_arrow_back:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lflix/com/vision/materialsearchview/MaterialSearchView;->setBackIcon(I)V

    .line 47
    :cond_6
    sget p3, Lflix/com/vision/R$styleable;->MaterialSearchView_searchSuggestionBackground:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_7

    .line 48
    sget p3, Lflix/com/vision/R$styleable;->MaterialSearchView_searchSuggestionBackground:I

    sget v1, Lflix/com/vision/R$color;->search_layover_bg:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lflix/com/vision/materialsearchview/MaterialSearchView;->setSuggestionBackground(I)V

    .line 49
    :cond_7
    sget p3, Lflix/com/vision/R$styleable;->MaterialSearchView_android_inputType:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_8

    .line 50
    sget p3, Lflix/com/vision/R$styleable;->MaterialSearchView_android_inputType:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lflix/com/vision/materialsearchview/MaterialSearchView;->setInputType(I)V

    .line 51
    :cond_8
    sget p3, Lflix/com/vision/R$styleable;->MaterialSearchView_searchBarHeight:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_9

    .line 52
    sget p3, Lflix/com/vision/R$styleable;->MaterialSearchView_searchBarHeight:I

    invoke-direct {p0}, Lflix/com/vision/materialsearchview/MaterialSearchView;->getAppCompatActionBarHeight()I

    move-result v0

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lflix/com/vision/materialsearchview/MaterialSearchView;->setSearchBarHeight(I)V

    goto :goto_0

    .line 53
    :cond_9
    invoke-direct {p0}, Lflix/com/vision/materialsearchview/MaterialSearchView;->getAppCompatActionBarHeight()I

    move-result p3

    invoke-virtual {p0, p3}, Lflix/com/vision/materialsearchview/MaterialSearchView;->setSearchBarHeight(I)V

    .line 54
    :goto_0
    sget p3, Lflix/com/vision/R$styleable;->MaterialSearchView_voiceHintPrompt:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_a

    .line 55
    sget p1, Lflix/com/vision/R$styleable;->MaterialSearchView_voiceHintPrompt:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lflix/com/vision/materialsearchview/MaterialSearchView;->setVoiceHintPrompt(Ljava/lang/String;)V

    goto :goto_1

    .line 56
    :cond_a
    sget p3, Lflix/com/vision/R$string;->hint_prompt:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lflix/com/vision/materialsearchview/MaterialSearchView;->setVoiceHintPrompt(Ljava/lang/String;)V

    .line 57
    :goto_1
    sget p1, Lflix/com/vision/R$styleable;->MaterialSearchView_android_fitsSystemWindows:I

    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-static {p0, p1}, LM/p0;->setFitsSystemWindows(Landroid/view/View;Z)V

    .line 58
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    :cond_b
    return-void
.end method

.method public static synthetic a(Lflix/com/vision/materialsearchview/MaterialSearchView;)Landroid/database/Cursor;
    .locals 0

    .line 1
    invoke-direct {p0}, Lflix/com/vision/materialsearchview/MaterialSearchView;->getHistoryCursor()Landroid/database/Cursor;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private getAppCompatActionBarHeight()I
    .locals 4

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
    sget v2, Landroidx/appcompat/R$attr;->actionBarSize:I

    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    .line 25
    .line 26
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    return v0
.end method

.method private getHistoryCursor()Landroid/database/Cursor;
    .locals 7

    .line 1
    iget-object v0, p0, Lflix/com/vision/materialsearchview/MaterialSearchView;->e:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    sget-object v2, Lflix/com/vision/materialsearchview/db/HistoryContract$HistoryEntry;->a:Landroid/net/Uri;

    .line 8
    .line 9
    const-string v0, "1"

    .line 10
    .line 11
    filled-new-array {v0}, [Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v5

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v3, "insert_date DESC LIMIT "

    .line 18
    .line 19
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    sget v3, Lflix/com/vision/materialsearchview/MaterialSearchView;->D:I

    .line 23
    .line 24
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    const/4 v3, 0x0

    .line 32
    const-string v4, "is_history = ?"

    .line 33
    .line 34
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    return-object v0
.end method

.method public static setMaxHistoryResults(I)V
    .locals 0

    .line 1
    sput p0, Lflix/com/vision/materialsearchview/MaterialSearchView;->D:I

    .line 2
    .line 3
    return-void
.end method

.method private setTintColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lflix/com/vision/materialsearchview/MaterialSearchView;->q:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public activityResumed()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lflix/com/vision/materialsearchview/MaterialSearchView;->c()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public declared-synchronized addSuggestions(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    .line 6
    .line 7
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/lang/String;

    .line 22
    .line 23
    new-instance v2, Landroid/content/ContentValues;

    .line 24
    .line 25
    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v3, "query"

    .line 29
    .line 30
    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string v1, "insert_date"

    .line 34
    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 36
    .line 37
    .line 38
    move-result-wide v3

    .line 39
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 44
    .line 45
    .line 46
    const-string v1, "is_history"

    .line 47
    .line 48
    const/4 v3, 0x0

    .line 49
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :catchall_0
    move-exception p1

    .line 61
    goto :goto_1

    .line 62
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    new-array p1, p1, [Landroid/content/ContentValues;

    .line 67
    .line 68
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    check-cast p1, [Landroid/content/ContentValues;

    .line 73
    .line 74
    iget-object v0, p0, Lflix/com/vision/materialsearchview/MaterialSearchView;->e:Landroid/content/Context;

    .line 75
    .line 76
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    sget-object v1, Lflix/com/vision/materialsearchview/db/HistoryContract$HistoryEntry;->a:Landroid/net/Uri;

    .line 81
    .line 82
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    .line 84
    .line 85
    monitor-exit p0

    .line 86
    return-void

    .line 87
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    throw p1
.end method

.method public adjustTintAlpha(F)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v0, p1, v0

    .line 3
    .line 4
    if-ltz v0, :cond_2

    .line 5
    .line 6
    float-to-double v1, p1

    .line 7
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 8
    .line 9
    cmpl-double v1, v1, v3

    .line 10
    .line 11
    if-lez v1, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    iget-object v1, p0, Lflix/com/vision/materialsearchview/MaterialSearchView;->q:Landroid/view/View;

    .line 15
    .line 16
    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    instance-of v2, v1, Landroid/graphics/drawable/ColorDrawable;

    .line 21
    .line 22
    if-eqz v2, :cond_2

    .line 23
    .line 24
    check-cast v1, Landroid/graphics/drawable/ColorDrawable;

    .line 25
    .line 26
    invoke-virtual {v1}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-gez v0, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    int-to-float v0, v0

    .line 38
    mul-float/2addr v0, p1

    .line 39
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    invoke-static {p1, v0, v2, v1}, Landroid/graphics/Color;->argb(IIII)I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    :goto_0
    iget-object p1, p0, Lflix/com/vision/materialsearchview/MaterialSearchView;->q:Landroid/view/View;

    .line 60
    .line 61
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 62
    .line 63
    .line 64
    :cond_2
    :goto_1
    return-void
.end method

.method public final b(Z)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lflix/com/vision/materialsearchview/MaterialSearchView;->e:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    new-instance v0, Landroid/content/Intent;

    .line 10
    .line 11
    const-string v1, "android.speech.action.RECOGNIZE_SPEECH"

    .line 12
    .line 13
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-lez p1, :cond_0

    .line 26
    .line 27
    iget-object p1, p0, Lflix/com/vision/materialsearchview/MaterialSearchView;->v:Landroid/widget/ImageButton;

    .line 28
    .line 29
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    iget-object p1, p0, Lflix/com/vision/materialsearchview/MaterialSearchView;->v:Landroid/widget/ImageButton;

    .line 34
    .line 35
    const/16 v0, 0x8

    .line 36
    .line 37
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public final c()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lflix/com/vision/materialsearchview/MaterialSearchView;->getHistoryCursor()Landroid/database/Cursor;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lflix/com/vision/materialsearchview/MaterialSearchView;->y:Lflix/com/vision/materialsearchview/adapters/CursorSearchAdapter;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public clearFocus()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lflix/com/vision/materialsearchview/MaterialSearchView;->n:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-string v1, "input_method"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 22
    .line 23
    .line 24
    invoke-super {p0}, Landroid/widget/FrameLayout;->clearFocus()V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lflix/com/vision/materialsearchview/MaterialSearchView;->t:Landroid/widget/EditText;

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 30
    .line 31
    .line 32
    iput-boolean v2, p0, Lflix/com/vision/materialsearchview/MaterialSearchView;->n:Z

    .line 33
    .line 34
    return-void
.end method

.method public declared-synchronized clearHistory()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lflix/com/vision/materialsearchview/MaterialSearchView;->e:Landroid/content/Context;

    .line 3
    .line 4
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sget-object v1, Lflix/com/vision/materialsearchview/db/HistoryContract$HistoryEntry;->a:Landroid/net/Uri;

    .line 9
    .line 10
    const-string v2, "is_history = ?"

    .line 11
    .line 12
    const-string v3, "1"

    .line 13
    .line 14
    filled-new-array {v3}, [Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    monitor-exit p0

    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception v0

    .line 24
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    throw v0
.end method

.method public declared-synchronized clearSuggestions()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lflix/com/vision/materialsearchview/MaterialSearchView;->e:Landroid/content/Context;

    .line 3
    .line 4
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sget-object v1, Lflix/com/vision/materialsearchview/db/HistoryContract$HistoryEntry;->a:Landroid/net/Uri;

    .line 9
    .line 10
    const-string v2, "is_history = ?"

    .line 11
    .line 12
    const-string v3, "0"

    .line 13
    .line 14
    filled-new-array {v3}, [Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    monitor-exit p0

    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception v0

    .line 24
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    throw v0
.end method

.method public closeSearch()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lflix/com/vision/materialsearchview/MaterialSearchView;->b:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lflix/com/vision/materialsearchview/MaterialSearchView;->t:Landroid/widget/EditText;

    .line 7
    .line 8
    const-string v1, ""

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lflix/com/vision/materialsearchview/MaterialSearchView;->x:Landroid/widget/ListView;

    .line 14
    .line 15
    const/16 v1, 0x8

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lflix/com/vision/materialsearchview/MaterialSearchView;->clearFocus()V

    .line 21
    .line 22
    .line 23
    iget-boolean v0, p0, Lflix/com/vision/materialsearchview/MaterialSearchView;->f:Z

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Lflix/com/vision/materialsearchview/MaterialSearchView;->r:Landroid/widget/FrameLayout;

    .line 28
    .line 29
    new-instance v1, Lflix/com/vision/materialsearchview/MaterialSearchView$9;

    .line 30
    .line 31
    invoke-direct {v1, v0}, Lflix/com/vision/materialsearchview/MaterialSearchView$9;-><init>(Landroid/view/View;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lflix/com/vision/materialsearchview/MaterialSearchView;->s:Landroid/widget/LinearLayout;

    .line 35
    .line 36
    invoke-static {v0, v1}, Lflix/com/vision/materialsearchview/utils/AnimationUtils;->circleHideView(Landroid/view/View;Landroid/animation/AnimatorListenerAdapter;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    iget-object v0, p0, Lflix/com/vision/materialsearchview/MaterialSearchView;->r:Landroid/widget/FrameLayout;

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 43
    .line 44
    .line 45
    :goto_0
    iget-object v0, p0, Lflix/com/vision/materialsearchview/MaterialSearchView;->B:Lflix/com/vision/materialsearchview/MaterialSearchView$SearchViewListener;

    .line 46
    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    invoke-interface {v0}, Lflix/com/vision/materialsearchview/MaterialSearchView$SearchViewListener;->onSearchViewClosed()V

    .line 50
    .line 51
    .line 52
    :cond_2
    const/4 v0, 0x0

    .line 53
    iput-boolean v0, p0, Lflix/com/vision/materialsearchview/MaterialSearchView;->b:Z

    .line 54
    .line 55
    return-void
.end method

.method public getAdapter()Landroid/widget/CursorAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lflix/com/vision/materialsearchview/MaterialSearchView;->y:Lflix/com/vision/materialsearchview/adapters/CursorSearchAdapter;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCurrentQuery()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lflix/com/vision/materialsearchview/MaterialSearchView;->z:Landroid/text/Editable;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lflix/com/vision/materialsearchview/MaterialSearchView;->z:Landroid/text/Editable;

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0

    .line 16
    :cond_0
    const-string v0, ""

    .line 17
    .line 18
    return-object v0
.end method

.method public getSuggestionAtPosition(I)Ljava/lang/String;
    .locals 1

    .line 1
    if-ltz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lflix/com/vision/materialsearchview/MaterialSearchView;->y:Lflix/com/vision/materialsearchview/adapters/CursorSearchAdapter;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->getCount()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-lt p1, v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lflix/com/vision/materialsearchview/MaterialSearchView;->y:Lflix/com/vision/materialsearchview/adapters/CursorSearchAdapter;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lflix/com/vision/materialsearchview/adapters/CursorSearchAdapter;->getItem(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1

    .line 23
    :cond_1
    :goto_0
    const-string p1, ""

    .line 24
    .line 25
    return-object p1
.end method

.method public isOpen()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lflix/com/vision/materialsearchview/MaterialSearchView;->b:Z

    .line 2
    .line 3
    return v0
.end method

.method public openSearch()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lflix/com/vision/materialsearchview/MaterialSearchView;->b:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lflix/com/vision/materialsearchview/MaterialSearchView;->t:Landroid/widget/EditText;

    .line 7
    .line 8
    const-string v1, ""

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lflix/com/vision/materialsearchview/MaterialSearchView;->t:Landroid/widget/EditText;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 16
    .line 17
    .line 18
    iget-boolean v0, p0, Lflix/com/vision/materialsearchview/MaterialSearchView;->f:Z

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Lflix/com/vision/materialsearchview/MaterialSearchView;->r:Landroid/widget/FrameLayout;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lflix/com/vision/materialsearchview/MaterialSearchView;->s:Landroid/widget/LinearLayout;

    .line 29
    .line 30
    invoke-static {v0}, Lflix/com/vision/materialsearchview/utils/AnimationUtils;->circleRevealView(Landroid/view/View;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    iget-object v0, p0, Lflix/com/vision/materialsearchview/MaterialSearchView;->r:Landroid/widget/FrameLayout;

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 37
    .line 38
    .line 39
    :goto_0
    iget-object v0, p0, Lflix/com/vision/materialsearchview/MaterialSearchView;->B:Lflix/com/vision/materialsearchview/MaterialSearchView$SearchViewListener;

    .line 40
    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    invoke-interface {v0}, Lflix/com/vision/materialsearchview/MaterialSearchView$SearchViewListener;->onSearchViewOpened()V

    .line 44
    .line 45
    .line 46
    :cond_2
    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Lflix/com/vision/materialsearchview/MaterialSearchView;->b:Z

    .line 48
    .line 49
    return-void
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lflix/com/vision/materialsearchview/MaterialSearchView;->n:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lflix/com/vision/materialsearchview/MaterialSearchView;->t:Landroid/widget/EditText;

    .line 12
    .line 13
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    return p1

    .line 21
    :cond_0
    const/4 p1, 0x0

    .line 22
    return p1
.end method

.method public declared-synchronized saveQueryToDb(Ljava/lang/String;J)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    const-wide/16 v0, 0x0

    .line 9
    .line 10
    cmp-long v0, p2, v0

    .line 11
    .line 12
    if-lez v0, :cond_0

    .line 13
    .line 14
    new-instance v0, Landroid/content/ContentValues;

    .line 15
    .line 16
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v1, "query"

    .line 20
    .line 21
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string p1, "insert_date"

    .line 25
    .line 26
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 31
    .line 32
    .line 33
    const-string p1, "is_history"

    .line 34
    .line 35
    const/4 p2, 0x1

    .line 36
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lflix/com/vision/materialsearchview/MaterialSearchView;->e:Landroid/content/Context;

    .line 44
    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    sget-object p2, Lflix/com/vision/materialsearchview/db/HistoryContract$HistoryEntry;->a:Landroid/net/Uri;

    .line 50
    .line 51
    invoke-virtual {p1, p2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catchall_0
    move-exception p1

    .line 56
    goto :goto_1

    .line 57
    :cond_0
    :goto_0
    monitor-exit p0

    .line 58
    return-void

    .line 59
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    throw p1
.end method

.method public setBackIcon(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lflix/com/vision/materialsearchview/MaterialSearchView;->u:Landroid/widget/ImageButton;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lflix/com/vision/materialsearchview/MaterialSearchView;->q:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lflix/com/vision/materialsearchview/MaterialSearchView;->setTintColor(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setClearIcon(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lflix/com/vision/materialsearchview/MaterialSearchView;->w:Landroid/widget/ImageButton;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setCloseOnTintClick(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lflix/com/vision/materialsearchview/MaterialSearchView;->j:Z

    .line 2
    .line 3
    return-void
.end method

.method public setHint(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lflix/com/vision/materialsearchview/MaterialSearchView;->t:Landroid/widget/EditText;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setHintTextColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lflix/com/vision/materialsearchview/MaterialSearchView;->t:Landroid/widget/EditText;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setInputType(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lflix/com/vision/materialsearchview/MaterialSearchView;->t:Landroid/widget/EditText;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setInputType(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lflix/com/vision/materialsearchview/MaterialSearchView;->x:Landroid/widget/ListView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lflix/com/vision/materialsearchview/MaterialSearchView;->x:Landroid/widget/ListView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setOnQueryTextListener(Lflix/com/vision/materialsearchview/MaterialSearchView$OnQueryTextListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lflix/com/vision/materialsearchview/MaterialSearchView;->A:Lflix/com/vision/materialsearchview/MaterialSearchView$OnQueryTextListener;

    .line 2
    .line 3
    return-void
.end method

.method public setOnVoiceClickedListener(Lflix/com/vision/materialsearchview/MaterialSearchView$OnVoiceClickedListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lflix/com/vision/materialsearchview/MaterialSearchView;->C:Lflix/com/vision/materialsearchview/MaterialSearchView$OnVoiceClickedListener;

    .line 2
    .line 3
    return-void
.end method

.method public setSearchBarColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lflix/com/vision/materialsearchview/MaterialSearchView;->t:Landroid/widget/EditText;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setSearchBarHeight(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lflix/com/vision/materialsearchview/MaterialSearchView;->s:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lflix/com/vision/materialsearchview/MaterialSearchView;->s:Landroid/widget/LinearLayout;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 13
    .line 14
    return-void
.end method

.method public setSearchViewListener(Lflix/com/vision/materialsearchview/MaterialSearchView$SearchViewListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lflix/com/vision/materialsearchview/MaterialSearchView;->B:Lflix/com/vision/materialsearchview/MaterialSearchView$SearchViewListener;

    .line 2
    .line 3
    return-void
.end method

.method public setShouldAnimate(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lflix/com/vision/materialsearchview/MaterialSearchView;->f:Z

    .line 2
    .line 3
    return-void
.end method

.method public setShouldKeepHistory(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lflix/com/vision/materialsearchview/MaterialSearchView;->m:Z

    .line 2
    .line 3
    return-void
.end method

.method public setSuggestionBackground(I)V
    .locals 1

    .line 1
    if-lez p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lflix/com/vision/materialsearchview/MaterialSearchView;->x:Landroid/widget/ListView;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lflix/com/vision/materialsearchview/MaterialSearchView;->t:Landroid/widget/EditText;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setTintAlpha(I)V
    .locals 3

    .line 1
    if-ltz p1, :cond_1

    .line 2
    .line 3
    const/16 v0, 0xff

    .line 4
    .line 5
    if-le p1, v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lflix/com/vision/materialsearchview/MaterialSearchView;->q:Landroid/view/View;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    instance-of v1, v0, Landroid/graphics/drawable/ColorDrawable;

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    invoke-static {p1, v1, v2, v0}, Landroid/graphics/Color;->argb(IIII)I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    invoke-direct {p0, p1}, Lflix/com/vision/materialsearchview/MaterialSearchView;->setTintColor(I)V

    .line 41
    .line 42
    .line 43
    :cond_1
    :goto_0
    return-void
.end method

.method public setVoiceHintPrompt(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iput-object p1, p0, Lflix/com/vision/materialsearchview/MaterialSearchView;->p:Ljava/lang/String;

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object p1, p0, Lflix/com/vision/materialsearchview/MaterialSearchView;->e:Landroid/content/Context;

    .line 11
    .line 12
    sget v0, Lflix/com/vision/R$string;->hint_prompt:I

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lflix/com/vision/materialsearchview/MaterialSearchView;->p:Ljava/lang/String;

    .line 19
    .line 20
    return-void
.end method

.method public setVoiceIcon(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lflix/com/vision/materialsearchview/MaterialSearchView;->v:Landroid/widget/ImageButton;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
