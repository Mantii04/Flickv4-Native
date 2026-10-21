.class public Lcom/afollestad/materialdialogs/internal/MDRootLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# static fields
.field public static final synthetic A:I


# instance fields
.field public b:Landroid/view/View;

.field public e:Landroid/view/View;

.field public f:Z

.field public j:Z

.field public final m:[Lcom/afollestad/materialdialogs/internal/MDButton;

.field public n:Z

.field public p:Z

.field public q:Z

.field public final r:Z

.field public final s:I

.field public final t:I

.field public final u:I

.field public v:Lcom/afollestad/materialdialogs/GravityEnum;

.field public final w:I

.field public final x:Landroid/graphics/Paint;

.field public y:LR1/b;

.field public final z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->f:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->j:Z

    .line 8
    .line 9
    const/4 v1, 0x3

    .line 10
    new-array v1, v1, [Lcom/afollestad/materialdialogs/internal/MDButton;

    .line 11
    .line 12
    iput-object v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->m:[Lcom/afollestad/materialdialogs/internal/MDButton;

    .line 13
    .line 14
    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->n:Z

    .line 15
    .line 16
    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->p:Z

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    iput-boolean v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->q:Z

    .line 20
    .line 21
    sget-object v2, Lcom/afollestad/materialdialogs/GravityEnum;->b:Lcom/afollestad/materialdialogs/GravityEnum;

    .line 22
    .line 23
    iput-object v2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->v:Lcom/afollestad/materialdialogs/GravityEnum;

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    sget-object v3, Lcom/afollestad/materialdialogs/R$styleable;->MDRootLayout:[I

    .line 30
    .line 31
    invoke-virtual {p1, p2, v3, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    sget v3, Lcom/afollestad/materialdialogs/R$styleable;->MDRootLayout_md_reduce_padding_no_title_no_buttons:I

    .line 36
    .line 37
    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    iput-boolean v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->r:Z

    .line 42
    .line 43
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 44
    .line 45
    .line 46
    sget p2, Lcom/afollestad/materialdialogs/R$dimen;->md_notitle_vertical_padding:I

    .line 47
    .line 48
    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    iput p2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->s:I

    .line 53
    .line 54
    sget p2, Lcom/afollestad/materialdialogs/R$dimen;->md_button_frame_vertical_padding:I

    .line 55
    .line 56
    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 57
    .line 58
    .line 59
    move-result p2

    .line 60
    iput p2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->t:I

    .line 61
    .line 62
    sget p2, Lcom/afollestad/materialdialogs/R$dimen;->md_button_padding_frame_side:I

    .line 63
    .line 64
    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 65
    .line 66
    .line 67
    move-result p2

    .line 68
    iput p2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->w:I

    .line 69
    .line 70
    sget p2, Lcom/afollestad/materialdialogs/R$dimen;->md_button_height:I

    .line 71
    .line 72
    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 73
    .line 74
    .line 75
    move-result p2

    .line 76
    iput p2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->u:I

    .line 77
    .line 78
    new-instance p2, Landroid/graphics/Paint;

    .line 79
    .line 80
    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    .line 81
    .line 82
    .line 83
    iput-object p2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->x:Landroid/graphics/Paint;

    .line 84
    .line 85
    sget p2, Lcom/afollestad/materialdialogs/R$dimen;->md_divider_height:I

    .line 86
    .line 87
    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 88
    .line 89
    .line 90
    move-result p2

    .line 91
    iput p2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->z:I

    .line 92
    .line 93
    iget-object p2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->x:Landroid/graphics/Paint;

    .line 94
    .line 95
    sget v1, Lcom/afollestad/materialdialogs/R$attr;->md_divider_color:I

    .line 96
    .line 97
    invoke-static {p1, v1}, LS1/a;->resolveColor(Landroid/content/Context;I)I

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 105
    .line 106
    .line 107
    return-void
.end method

.method public static b(Landroid/view/View;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/16 v3, 0x8

    .line 10
    .line 11
    if-eq v2, v3, :cond_0

    .line 12
    .line 13
    move v2, v1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v2, v0

    .line 16
    :goto_0
    if-eqz v2, :cond_2

    .line 17
    .line 18
    instance-of v3, p0, Lcom/afollestad/materialdialogs/internal/MDButton;

    .line 19
    .line 20
    if-eqz v3, :cond_2

    .line 21
    .line 22
    check-cast p0, Lcom/afollestad/materialdialogs/internal/MDButton;

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    if-lez p0, :cond_1

    .line 41
    .line 42
    return v1

    .line 43
    :cond_1
    return v0

    .line 44
    :cond_2
    return v2
.end method

.method public static canRecyclerViewScroll(Landroidx/recyclerview/widget/RecyclerView;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_5

    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Lm1/V;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    if-eqz v1, :cond_5

    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Lm1/i0;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Lm1/i0;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Lm1/V;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v2}, Lm1/V;->getItemCount()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    instance-of v3, v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 30
    .line 31
    if-eqz v3, :cond_4

    .line 32
    .line 33
    check-cast v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 34
    .line 35
    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    const/4 v3, -0x1

    .line 40
    if-ne v1, v3, :cond_1

    .line 41
    .line 42
    return v0

    .line 43
    :cond_1
    const/4 v3, 0x1

    .line 44
    sub-int/2addr v2, v3

    .line 45
    if-ne v1, v2, :cond_3

    .line 46
    .line 47
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-lez v1, :cond_2

    .line 52
    .line 53
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    sub-int/2addr v1, v3

    .line 58
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 71
    .line 72
    .line 73
    move-result p0

    .line 74
    sub-int/2addr v2, p0

    .line 75
    if-le v1, v2, :cond_2

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_2
    return v0

    .line 79
    :cond_3
    :goto_0
    return v3

    .line 80
    :cond_4
    new-instance p0, Lcom/afollestad/materialdialogs/MaterialDialog$NotImplementedException;

    .line 81
    .line 82
    const-string v0, "Material Dialogs currently only supports LinearLayoutManager. Please report any new layout managers."

    .line 83
    .line 84
    invoke-direct {p0, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$NotImplementedException;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw p0

    .line 88
    :cond_5
    :goto_1
    return v0
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->y:LR1/b;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, LR1/b;

    .line 6
    .line 7
    invoke-direct {v0, p0, p1, p2}, LR1/b;-><init>(Lcom/afollestad/materialdialogs/internal/MDRootLayout;Landroid/view/ViewGroup;Z)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->y:LR1/b;

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iget-object p2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->y:LR1/b;

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 19
    .line 20
    .line 21
    invoke-interface {v0}, Landroid/view/ViewTreeObserver$OnScrollChangedListener;->onScrollChanged()V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public final c(Landroid/view/View;Z)V
    .locals 6

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto/16 :goto_9

    .line 4
    .line 5
    :cond_0
    instance-of v0, p1, Landroid/widget/ScrollView;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_4

    .line 9
    .line 10
    check-cast p1, Landroid/widget/ScrollView;

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    sub-int/2addr v2, v3

    .line 36
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    sub-int/2addr v2, v3

    .line 41
    if-ge v2, v0, :cond_2

    .line 42
    .line 43
    invoke-virtual {p0, p1, p2}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a(Landroid/view/ViewGroup;Z)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    .line 48
    .line 49
    iput-boolean v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->f:Z

    .line 50
    .line 51
    :cond_3
    iput-boolean v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->j:Z

    .line 52
    .line 53
    return-void

    .line 54
    :cond_4
    instance-of v0, p1, Landroid/widget/AdapterView;

    .line 55
    .line 56
    const/4 v2, 0x1

    .line 57
    if-eqz v0, :cond_c

    .line 58
    .line 59
    check-cast p1, Landroid/widget/AdapterView;

    .line 60
    .line 61
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    const/4 v3, -0x1

    .line 66
    if-ne v0, v3, :cond_5

    .line 67
    .line 68
    goto :goto_3

    .line 69
    :cond_5
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-nez v0, :cond_6

    .line 74
    .line 75
    move v0, v2

    .line 76
    goto :goto_1

    .line 77
    :cond_6
    move v0, v1

    .line 78
    :goto_1
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getCount()I

    .line 83
    .line 84
    .line 85
    move-result v4

    .line 86
    sub-int/2addr v4, v2

    .line 87
    if-ne v3, v4, :cond_7

    .line 88
    .line 89
    move v3, v2

    .line 90
    goto :goto_2

    .line 91
    :cond_7
    move v3, v1

    .line 92
    :goto_2
    if-eqz v0, :cond_b

    .line 93
    .line 94
    if-eqz v3, :cond_b

    .line 95
    .line 96
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-lez v0, :cond_b

    .line 101
    .line 102
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    if-ge v0, v3, :cond_8

    .line 115
    .line 116
    goto :goto_4

    .line 117
    :cond_8
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    sub-int/2addr v0, v2

    .line 122
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    .line 135
    .line 136
    .line 137
    move-result v3

    .line 138
    sub-int/2addr v2, v3

    .line 139
    if-le v0, v2, :cond_9

    .line 140
    .line 141
    goto :goto_4

    .line 142
    :cond_9
    :goto_3
    if-eqz p2, :cond_a

    .line 143
    .line 144
    iput-boolean v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->f:Z

    .line 145
    .line 146
    :cond_a
    iput-boolean v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->j:Z

    .line 147
    .line 148
    return-void

    .line 149
    :cond_b
    :goto_4
    invoke-virtual {p0, p1, p2}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a(Landroid/view/ViewGroup;Z)V

    .line 150
    .line 151
    .line 152
    return-void

    .line 153
    :cond_c
    instance-of v0, p1, Landroid/webkit/WebView;

    .line 154
    .line 155
    if-eqz v0, :cond_d

    .line 156
    .line 157
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    new-instance v1, LR1/a;

    .line 162
    .line 163
    invoke-direct {v1, p0, p1, p2}, LR1/a;-><init>(Lcom/afollestad/materialdialogs/internal/MDRootLayout;Landroid/view/View;Z)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 167
    .line 168
    .line 169
    return-void

    .line 170
    :cond_d
    instance-of v0, p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 171
    .line 172
    if-eqz v0, :cond_f

    .line 173
    .line 174
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 175
    .line 176
    invoke-static {p1}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->canRecyclerViewScroll(Landroidx/recyclerview/widget/RecyclerView;)Z

    .line 177
    .line 178
    .line 179
    move-result p1

    .line 180
    if-eqz p2, :cond_e

    .line 181
    .line 182
    iput-boolean p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->f:Z

    .line 183
    .line 184
    :cond_e
    iput-boolean p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->j:Z

    .line 185
    .line 186
    return-void

    .line 187
    :cond_f
    instance-of v0, p1, Landroid/view/ViewGroup;

    .line 188
    .line 189
    if-eqz v0, :cond_16

    .line 190
    .line 191
    check-cast p1, Landroid/view/ViewGroup;

    .line 192
    .line 193
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 194
    .line 195
    .line 196
    move-result v0

    .line 197
    const/4 v3, 0x0

    .line 198
    if-nez v0, :cond_11

    .line 199
    .line 200
    :cond_10
    move-object v4, v3

    .line 201
    goto :goto_6

    .line 202
    :cond_11
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 203
    .line 204
    .line 205
    move-result v0

    .line 206
    sub-int/2addr v0, v2

    .line 207
    :goto_5
    if-ltz v0, :cond_10

    .line 208
    .line 209
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 210
    .line 211
    .line 212
    move-result-object v4

    .line 213
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 214
    .line 215
    .line 216
    move-result v5

    .line 217
    if-nez v5, :cond_12

    .line 218
    .line 219
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    .line 220
    .line 221
    .line 222
    move-result v5

    .line 223
    if-nez v5, :cond_12

    .line 224
    .line 225
    goto :goto_6

    .line 226
    :cond_12
    add-int/lit8 v0, v0, -0x1

    .line 227
    .line 228
    goto :goto_5

    .line 229
    :goto_6
    invoke-virtual {p0, v4, p2}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->c(Landroid/view/View;Z)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 233
    .line 234
    .line 235
    move-result p2

    .line 236
    if-nez p2, :cond_13

    .line 237
    .line 238
    goto :goto_8

    .line 239
    :cond_13
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 240
    .line 241
    .line 242
    move-result p2

    .line 243
    sub-int/2addr p2, v2

    .line 244
    :goto_7
    if-ltz p2, :cond_15

    .line 245
    .line 246
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 251
    .line 252
    .line 253
    move-result v2

    .line 254
    if-nez v2, :cond_14

    .line 255
    .line 256
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    .line 257
    .line 258
    .line 259
    move-result v2

    .line 260
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 261
    .line 262
    .line 263
    move-result v5

    .line 264
    if-ne v2, v5, :cond_14

    .line 265
    .line 266
    move-object v3, v0

    .line 267
    goto :goto_8

    .line 268
    :cond_14
    add-int/lit8 p2, p2, -0x1

    .line 269
    .line 270
    goto :goto_7

    .line 271
    :cond_15
    :goto_8
    if-eq v3, v4, :cond_16

    .line 272
    .line 273
    invoke-virtual {p0, v3, v1}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->c(Landroid/view/View;Z)V

    .line 274
    .line 275
    .line 276
    :cond_16
    :goto_9
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->e:Landroid/view/View;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-boolean v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->f:Z

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->z:I

    .line 17
    .line 18
    sub-int v1, v0, v1

    .line 19
    .line 20
    int-to-float v4, v1

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    int-to-float v5, v1

    .line 26
    int-to-float v6, v0

    .line 27
    iget-object v7, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->x:Landroid/graphics/Paint;

    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    move-object v2, p1

    .line 31
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move-object v2, p1

    .line 36
    :goto_0
    iget-boolean p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->j:Z

    .line 37
    .line 38
    if-eqz p1, :cond_1

    .line 39
    .line 40
    iget-object p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->e:Landroid/view/View;

    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    int-to-float v10, p1

    .line 47
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    int-to-float v11, v0

    .line 52
    iget v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->z:I

    .line 53
    .line 54
    add-int/2addr p1, v0

    .line 55
    int-to-float v12, p1

    .line 56
    iget-object v13, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->x:Landroid/graphics/Paint;

    .line 57
    .line 58
    const/4 v9, 0x0

    .line 59
    move-object v8, v2

    .line 60
    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 61
    .line 62
    .line 63
    :cond_1
    return-void
.end method

.method public onFinishInflate()V
    .locals 6

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    move v1, v0

    .line 6
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-ge v1, v2, :cond_4

    .line 11
    .line 12
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    sget v4, Lcom/afollestad/materialdialogs/R$id;->titleFrame:I

    .line 21
    .line 22
    if-ne v3, v4, :cond_0

    .line 23
    .line 24
    iput-object v2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->b:Landroid/view/View;

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    sget v4, Lcom/afollestad/materialdialogs/R$id;->buttonDefaultNeutral:I

    .line 32
    .line 33
    iget-object v5, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->m:[Lcom/afollestad/materialdialogs/internal/MDButton;

    .line 34
    .line 35
    if-ne v3, v4, :cond_1

    .line 36
    .line 37
    check-cast v2, Lcom/afollestad/materialdialogs/internal/MDButton;

    .line 38
    .line 39
    aput-object v2, v5, v0

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    sget v4, Lcom/afollestad/materialdialogs/R$id;->buttonDefaultNegative:I

    .line 47
    .line 48
    if-ne v3, v4, :cond_2

    .line 49
    .line 50
    check-cast v2, Lcom/afollestad/materialdialogs/internal/MDButton;

    .line 51
    .line 52
    const/4 v3, 0x1

    .line 53
    aput-object v2, v5, v3

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    sget v4, Lcom/afollestad/materialdialogs/R$id;->buttonDefaultPositive:I

    .line 61
    .line 62
    if-ne v3, v4, :cond_3

    .line 63
    .line 64
    const/4 v3, 0x2

    .line 65
    check-cast v2, Lcom/afollestad/materialdialogs/internal/MDButton;

    .line 66
    .line 67
    aput-object v2, v5, v3

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_3
    iput-object v2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->e:Landroid/view/View;

    .line 71
    .line 72
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_4
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    .line 7
    move/from16 v3, p4

    .line 8
    .line 9
    iget-object v4, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->b:Landroid/view/View;

    .line 10
    .line 11
    invoke-static {v4}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->b(Landroid/view/View;)Z

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    if-eqz v4, :cond_0

    .line 16
    .line 17
    iget-object v4, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->b:Landroid/view/View;

    .line 18
    .line 19
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    iget-object v5, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->b:Landroid/view/View;

    .line 24
    .line 25
    add-int/2addr v4, v2

    .line 26
    invoke-virtual {v5, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 27
    .line 28
    .line 29
    move v2, v4

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget-boolean v4, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->q:Z

    .line 32
    .line 33
    if-eqz v4, :cond_1

    .line 34
    .line 35
    iget v4, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->s:I

    .line 36
    .line 37
    add-int/2addr v2, v4

    .line 38
    :cond_1
    :goto_0
    iget-object v4, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->e:Landroid/view/View;

    .line 39
    .line 40
    invoke-static {v4}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->b(Landroid/view/View;)Z

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    if-eqz v4, :cond_2

    .line 45
    .line 46
    iget-object v4, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->e:Landroid/view/View;

    .line 47
    .line 48
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    add-int/2addr v5, v2

    .line 53
    invoke-virtual {v4, v1, v2, v3, v5}, Landroid/view/View;->layout(IIII)V

    .line 54
    .line 55
    .line 56
    :cond_2
    iget-boolean v2, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->p:Z

    .line 57
    .line 58
    const/4 v4, 0x1

    .line 59
    iget-object v6, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->m:[Lcom/afollestad/materialdialogs/internal/MDButton;

    .line 60
    .line 61
    if-eqz v2, :cond_4

    .line 62
    .line 63
    iget v2, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->t:I

    .line 64
    .line 65
    sub-int v2, p5, v2

    .line 66
    .line 67
    array-length v7, v6

    .line 68
    const/4 v5, 0x0

    .line 69
    :goto_1
    if-ge v5, v7, :cond_10

    .line 70
    .line 71
    aget-object v8, v6, v5

    .line 72
    .line 73
    invoke-static {v8}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->b(Landroid/view/View;)Z

    .line 74
    .line 75
    .line 76
    move-result v9

    .line 77
    if-eqz v9, :cond_3

    .line 78
    .line 79
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    .line 80
    .line 81
    .line 82
    move-result v9

    .line 83
    sub-int v9, v2, v9

    .line 84
    .line 85
    invoke-virtual {v8, v1, v9, v3, v2}, Landroid/view/View;->layout(IIII)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    .line 89
    .line 90
    .line 91
    move-result v8

    .line 92
    sub-int/2addr v2, v8

    .line 93
    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_4
    iget-boolean v2, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->q:Z

    .line 97
    .line 98
    if-eqz v2, :cond_5

    .line 99
    .line 100
    iget v2, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->t:I

    .line 101
    .line 102
    sub-int v2, p5, v2

    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_5
    move/from16 v2, p5

    .line 106
    .line 107
    :goto_2
    iget v7, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->u:I

    .line 108
    .line 109
    sub-int v7, v2, v7

    .line 110
    .line 111
    iget v8, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->w:I

    .line 112
    .line 113
    const/4 v9, 0x2

    .line 114
    aget-object v10, v6, v9

    .line 115
    .line 116
    invoke-static {v10}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->b(Landroid/view/View;)Z

    .line 117
    .line 118
    .line 119
    move-result v10

    .line 120
    sget-object v11, Lcom/afollestad/materialdialogs/GravityEnum;->e:Lcom/afollestad/materialdialogs/GravityEnum;

    .line 121
    .line 122
    const/4 v12, -0x1

    .line 123
    if-eqz v10, :cond_7

    .line 124
    .line 125
    iget-object v10, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->v:Lcom/afollestad/materialdialogs/GravityEnum;

    .line 126
    .line 127
    if-ne v10, v11, :cond_6

    .line 128
    .line 129
    add-int v10, v1, v8

    .line 130
    .line 131
    aget-object v13, v6, v9

    .line 132
    .line 133
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    .line 134
    .line 135
    .line 136
    move-result v13

    .line 137
    add-int/2addr v13, v10

    .line 138
    move v14, v13

    .line 139
    move v13, v12

    .line 140
    goto :goto_3

    .line 141
    :cond_6
    sub-int v13, v3, v8

    .line 142
    .line 143
    aget-object v10, v6, v9

    .line 144
    .line 145
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    .line 146
    .line 147
    .line 148
    move-result v10

    .line 149
    sub-int v10, v13, v10

    .line 150
    .line 151
    move v14, v13

    .line 152
    move v13, v10

    .line 153
    :goto_3
    aget-object v15, v6, v9

    .line 154
    .line 155
    invoke-virtual {v15, v10, v7, v14, v2}, Landroid/view/View;->layout(IIII)V

    .line 156
    .line 157
    .line 158
    aget-object v10, v6, v9

    .line 159
    .line 160
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    .line 161
    .line 162
    .line 163
    move-result v10

    .line 164
    add-int/2addr v8, v10

    .line 165
    goto :goto_4

    .line 166
    :cond_7
    move v13, v12

    .line 167
    :goto_4
    aget-object v10, v6, v4

    .line 168
    .line 169
    invoke-static {v10}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->b(Landroid/view/View;)Z

    .line 170
    .line 171
    .line 172
    move-result v10

    .line 173
    sget-object v14, Lcom/afollestad/materialdialogs/GravityEnum;->b:Lcom/afollestad/materialdialogs/GravityEnum;

    .line 174
    .line 175
    if-eqz v10, :cond_a

    .line 176
    .line 177
    iget-object v10, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->v:Lcom/afollestad/materialdialogs/GravityEnum;

    .line 178
    .line 179
    if-ne v10, v11, :cond_8

    .line 180
    .line 181
    add-int/2addr v8, v1

    .line 182
    aget-object v10, v6, v4

    .line 183
    .line 184
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    .line 185
    .line 186
    .line 187
    move-result v10

    .line 188
    add-int/2addr v10, v8

    .line 189
    :goto_5
    move v15, v12

    .line 190
    :goto_6
    const/16 p1, 0x0

    .line 191
    .line 192
    goto :goto_7

    .line 193
    :cond_8
    if-ne v10, v14, :cond_9

    .line 194
    .line 195
    sub-int v10, v3, v8

    .line 196
    .line 197
    aget-object v8, v6, v4

    .line 198
    .line 199
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    .line 200
    .line 201
    .line 202
    move-result v8

    .line 203
    sub-int v8, v10, v8

    .line 204
    .line 205
    goto :goto_5

    .line 206
    :cond_9
    iget v8, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->w:I

    .line 207
    .line 208
    add-int/2addr v8, v1

    .line 209
    aget-object v10, v6, v4

    .line 210
    .line 211
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    .line 212
    .line 213
    .line 214
    move-result v10

    .line 215
    add-int/2addr v10, v8

    .line 216
    move v15, v10

    .line 217
    goto :goto_6

    .line 218
    :goto_7
    aget-object v5, v6, v4

    .line 219
    .line 220
    invoke-virtual {v5, v8, v7, v10, v2}, Landroid/view/View;->layout(IIII)V

    .line 221
    .line 222
    .line 223
    goto :goto_8

    .line 224
    :cond_a
    const/16 p1, 0x0

    .line 225
    .line 226
    move v15, v12

    .line 227
    :goto_8
    aget-object v5, v6, p1

    .line 228
    .line 229
    invoke-static {v5}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->b(Landroid/view/View;)Z

    .line 230
    .line 231
    .line 232
    move-result v5

    .line 233
    if-eqz v5, :cond_10

    .line 234
    .line 235
    iget-object v5, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->v:Lcom/afollestad/materialdialogs/GravityEnum;

    .line 236
    .line 237
    if-ne v5, v11, :cond_b

    .line 238
    .line 239
    iget v1, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->w:I

    .line 240
    .line 241
    sub-int v1, v3, v1

    .line 242
    .line 243
    aget-object v3, v6, p1

    .line 244
    .line 245
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    .line 246
    .line 247
    .line 248
    move-result v3

    .line 249
    sub-int v3, v1, v3

    .line 250
    .line 251
    goto :goto_b

    .line 252
    :cond_b
    if-ne v5, v14, :cond_c

    .line 253
    .line 254
    iget v3, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->w:I

    .line 255
    .line 256
    add-int/2addr v3, v1

    .line 257
    aget-object v1, v6, p1

    .line 258
    .line 259
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 260
    .line 261
    .line 262
    move-result v1

    .line 263
    add-int/2addr v1, v3

    .line 264
    goto :goto_b

    .line 265
    :cond_c
    if-ne v15, v12, :cond_d

    .line 266
    .line 267
    if-eq v13, v12, :cond_d

    .line 268
    .line 269
    aget-object v1, v6, p1

    .line 270
    .line 271
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 272
    .line 273
    .line 274
    move-result v1

    .line 275
    sub-int v15, v13, v1

    .line 276
    .line 277
    goto :goto_a

    .line 278
    :cond_d
    if-ne v13, v12, :cond_e

    .line 279
    .line 280
    if-eq v15, v12, :cond_e

    .line 281
    .line 282
    aget-object v1, v6, p1

    .line 283
    .line 284
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 285
    .line 286
    .line 287
    move-result v1

    .line 288
    :goto_9
    add-int v13, v1, v15

    .line 289
    .line 290
    goto :goto_a

    .line 291
    :cond_e
    if-ne v13, v12, :cond_f

    .line 292
    .line 293
    sub-int v1, v3, v1

    .line 294
    .line 295
    div-int/2addr v1, v9

    .line 296
    aget-object v3, v6, p1

    .line 297
    .line 298
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    .line 299
    .line 300
    .line 301
    move-result v3

    .line 302
    div-int/2addr v3, v9

    .line 303
    sub-int v15, v1, v3

    .line 304
    .line 305
    aget-object v1, v6, p1

    .line 306
    .line 307
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 308
    .line 309
    .line 310
    move-result v1

    .line 311
    goto :goto_9

    .line 312
    :cond_f
    :goto_a
    move v1, v13

    .line 313
    move v3, v15

    .line 314
    :goto_b
    aget-object v5, v6, p1

    .line 315
    .line 316
    invoke-virtual {v5, v3, v7, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 317
    .line 318
    .line 319
    :cond_10
    iget-object v1, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->e:Landroid/view/View;

    .line 320
    .line 321
    invoke-virtual {v0, v1, v4}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->c(Landroid/view/View;Z)V

    .line 322
    .line 323
    .line 324
    return-void
.end method

.method public onMeasure(II)V
    .locals 11

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    iput-boolean v2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->q:Z

    .line 11
    .line 12
    iget-boolean v3, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->n:Z

    .line 13
    .line 14
    iget-object v4, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->m:[Lcom/afollestad/materialdialogs/internal/MDButton;

    .line 15
    .line 16
    const/4 v5, 0x0

    .line 17
    if-nez v3, :cond_3

    .line 18
    .line 19
    array-length v3, v4

    .line 20
    move v6, v5

    .line 21
    move v7, v6

    .line 22
    move v8, v7

    .line 23
    :goto_0
    if-ge v6, v3, :cond_1

    .line 24
    .line 25
    aget-object v9, v4, v6

    .line 26
    .line 27
    if-eqz v9, :cond_0

    .line 28
    .line 29
    invoke-static {v9}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->b(Landroid/view/View;)Z

    .line 30
    .line 31
    .line 32
    move-result v10

    .line 33
    if-eqz v10, :cond_0

    .line 34
    .line 35
    invoke-virtual {v9, v5, v5}, Lcom/afollestad/materialdialogs/internal/MDButton;->a(ZZ)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v9, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    .line 42
    .line 43
    .line 44
    move-result v8

    .line 45
    add-int/2addr v7, v8

    .line 46
    move v8, v2

    .line 47
    :cond_0
    add-int/lit8 v6, v6, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    sget v6, Lcom/afollestad/materialdialogs/R$dimen;->md_neutral_button_margin:I

    .line 59
    .line 60
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    mul-int/lit8 v3, v3, 0x2

    .line 65
    .line 66
    sub-int v3, v0, v3

    .line 67
    .line 68
    if-le v7, v3, :cond_2

    .line 69
    .line 70
    move v3, v2

    .line 71
    goto :goto_1

    .line 72
    :cond_2
    move v3, v5

    .line 73
    goto :goto_1

    .line 74
    :cond_3
    move v3, v2

    .line 75
    move v8, v5

    .line 76
    :goto_1
    iput-boolean v3, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->p:Z

    .line 77
    .line 78
    if-eqz v3, :cond_5

    .line 79
    .line 80
    array-length v3, v4

    .line 81
    move v6, v5

    .line 82
    move v7, v6

    .line 83
    :goto_2
    if-ge v6, v3, :cond_6

    .line 84
    .line 85
    aget-object v9, v4, v6

    .line 86
    .line 87
    if-eqz v9, :cond_4

    .line 88
    .line 89
    invoke-static {v9}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->b(Landroid/view/View;)Z

    .line 90
    .line 91
    .line 92
    move-result v10

    .line 93
    if-eqz v10, :cond_4

    .line 94
    .line 95
    invoke-virtual {v9, v2, v5}, Lcom/afollestad/materialdialogs/internal/MDButton;->a(ZZ)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0, v9, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    .line 102
    .line 103
    .line 104
    move-result v8

    .line 105
    add-int/2addr v7, v8

    .line 106
    move v8, v2

    .line 107
    :cond_4
    add-int/lit8 v6, v6, 0x1

    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_5
    move v7, v5

    .line 111
    :cond_6
    if-eqz v8, :cond_8

    .line 112
    .line 113
    iget-boolean p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->p:Z

    .line 114
    .line 115
    if-eqz p1, :cond_7

    .line 116
    .line 117
    sub-int p1, v1, v7

    .line 118
    .line 119
    iget p2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->t:I

    .line 120
    .line 121
    mul-int/lit8 v3, p2, 0x2

    .line 122
    .line 123
    mul-int/lit8 p2, p2, 0x2

    .line 124
    .line 125
    goto :goto_4

    .line 126
    :cond_7
    iget p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->u:I

    .line 127
    .line 128
    sub-int p1, v1, p1

    .line 129
    .line 130
    iget p2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->t:I

    .line 131
    .line 132
    mul-int/lit8 v3, p2, 0x2

    .line 133
    .line 134
    :goto_3
    move p2, v5

    .line 135
    goto :goto_4

    .line 136
    :cond_8
    iget p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->t:I

    .line 137
    .line 138
    mul-int/lit8 v3, p1, 0x2

    .line 139
    .line 140
    move p1, v1

    .line 141
    goto :goto_3

    .line 142
    :goto_4
    iget-object v4, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->b:Landroid/view/View;

    .line 143
    .line 144
    invoke-static {v4}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->b(Landroid/view/View;)Z

    .line 145
    .line 146
    .line 147
    move-result v4

    .line 148
    const/high16 v6, 0x40000000    # 2.0f

    .line 149
    .line 150
    if-eqz v4, :cond_9

    .line 151
    .line 152
    iget-object v4, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->b:Landroid/view/View;

    .line 153
    .line 154
    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 155
    .line 156
    .line 157
    move-result v7

    .line 158
    invoke-virtual {v4, v7, v5}, Landroid/view/View;->measure(II)V

    .line 159
    .line 160
    .line 161
    iget-object v4, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->b:Landroid/view/View;

    .line 162
    .line 163
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    .line 164
    .line 165
    .line 166
    move-result v4

    .line 167
    sub-int/2addr p1, v4

    .line 168
    goto :goto_5

    .line 169
    :cond_9
    iget v4, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->s:I

    .line 170
    .line 171
    add-int/2addr v3, v4

    .line 172
    :goto_5
    iget-object v4, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->e:Landroid/view/View;

    .line 173
    .line 174
    invoke-static {v4}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->b(Landroid/view/View;)Z

    .line 175
    .line 176
    .line 177
    move-result v4

    .line 178
    if-eqz v4, :cond_d

    .line 179
    .line 180
    iget-object v4, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->e:Landroid/view/View;

    .line 181
    .line 182
    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 183
    .line 184
    .line 185
    move-result v6

    .line 186
    sub-int v7, p1, p2

    .line 187
    .line 188
    const/high16 v9, -0x80000000

    .line 189
    .line 190
    invoke-static {v7, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 191
    .line 192
    .line 193
    move-result v7

    .line 194
    invoke-virtual {v4, v6, v7}, Landroid/view/View;->measure(II)V

    .line 195
    .line 196
    .line 197
    iget-object v4, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->e:Landroid/view/View;

    .line 198
    .line 199
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    .line 200
    .line 201
    .line 202
    move-result v4

    .line 203
    sub-int v6, p1, v3

    .line 204
    .line 205
    if-gt v4, v6, :cond_c

    .line 206
    .line 207
    iget-boolean v4, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->r:Z

    .line 208
    .line 209
    if-eqz v4, :cond_b

    .line 210
    .line 211
    iget-object v4, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->b:Landroid/view/View;

    .line 212
    .line 213
    invoke-static {v4}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->b(Landroid/view/View;)Z

    .line 214
    .line 215
    .line 216
    move-result v4

    .line 217
    if-nez v4, :cond_b

    .line 218
    .line 219
    if-eqz v8, :cond_a

    .line 220
    .line 221
    goto :goto_6

    .line 222
    :cond_a
    iput-boolean v5, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->q:Z

    .line 223
    .line 224
    iget-object v2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->e:Landroid/view/View;

    .line 225
    .line 226
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    .line 227
    .line 228
    .line 229
    move-result v2

    .line 230
    add-int/2addr v2, p2

    .line 231
    sub-int v5, p1, v2

    .line 232
    .line 233
    goto :goto_7

    .line 234
    :cond_b
    :goto_6
    iput-boolean v2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->q:Z

    .line 235
    .line 236
    iget-object p2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->e:Landroid/view/View;

    .line 237
    .line 238
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    .line 239
    .line 240
    .line 241
    move-result p2

    .line 242
    add-int/2addr p2, v3

    .line 243
    sub-int v5, p1, p2

    .line 244
    .line 245
    goto :goto_7

    .line 246
    :cond_c
    iput-boolean v5, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->q:Z

    .line 247
    .line 248
    goto :goto_7

    .line 249
    :cond_d
    move v5, p1

    .line 250
    :goto_7
    sub-int/2addr v1, v5

    .line 251
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 252
    .line 253
    .line 254
    return-void
.end method

.method public setButtonGravity(Lcom/afollestad/materialdialogs/GravityEnum;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->v:Lcom/afollestad/materialdialogs/GravityEnum;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    const/4 v0, 0x1

    .line 16
    if-ne p1, v0, :cond_2

    .line 17
    .line 18
    iget-object p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->v:Lcom/afollestad/materialdialogs/GravityEnum;

    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    const/4 v0, 0x2

    .line 27
    if-eq p1, v0, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    sget-object p1, Lcom/afollestad/materialdialogs/GravityEnum;->b:Lcom/afollestad/materialdialogs/GravityEnum;

    .line 31
    .line 32
    iput-object p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->v:Lcom/afollestad/materialdialogs/GravityEnum;

    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    sget-object p1, Lcom/afollestad/materialdialogs/GravityEnum;->e:Lcom/afollestad/materialdialogs/GravityEnum;

    .line 36
    .line 37
    iput-object p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->v:Lcom/afollestad/materialdialogs/GravityEnum;

    .line 38
    .line 39
    :cond_2
    :goto_0
    return-void
.end method

.method public setButtonStackedGravity(Lcom/afollestad/materialdialogs/GravityEnum;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->m:[Lcom/afollestad/materialdialogs/internal/MDButton;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_0
    if-ge v2, v1, :cond_1

    .line 6
    .line 7
    aget-object v3, v0, v2

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    invoke-virtual {v3, p1}, Lcom/afollestad/materialdialogs/internal/MDButton;->setStackedGravity(Lcom/afollestad/materialdialogs/GravityEnum;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    return-void
.end method

.method public setDividerColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->x:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setForceStack(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->n:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
