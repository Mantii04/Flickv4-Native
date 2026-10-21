.class public final Le/x0;
.super Le/b;
.source "SourceFile"

# interfaces
.implements Ll/j;


# static fields
.field public static final A:Landroid/view/animation/AccelerateInterpolator;

.field public static final B:Landroid/view/animation/DecelerateInterpolator;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroid/content/Context;

.field public c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

.field public d:Landroidx/appcompat/widget/ActionBarContainer;

.field public e:Ll/M0;

.field public f:Landroidx/appcompat/widget/ActionBarContextView;

.field public final g:Landroid/view/View;

.field public h:Z

.field public i:Le/w0;

.field public j:Le/w0;

.field public k:Lj/b;

.field public l:Z

.field public final m:Ljava/util/ArrayList;

.field public n:Z

.field public o:I

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:Z

.field public t:Z

.field public u:Lj/n;

.field public v:Z

.field public w:Z

.field public final x:Le/t0;

.field public final y:Le/u0;

.field public final z:Le/v0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Le/x0;->A:Landroid/view/animation/AccelerateInterpolator;

    .line 7
    .line 8
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Le/x0;->B:Landroid/view/animation/DecelerateInterpolator;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Le/b;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Le/x0;->m:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Le/x0;->o:I

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Le/x0;->p:Z

    .line 6
    iput-boolean v0, p0, Le/x0;->t:Z

    .line 7
    new-instance v0, Le/t0;

    invoke-direct {v0, p0}, Le/t0;-><init>(Le/x0;)V

    iput-object v0, p0, Le/x0;->x:Le/t0;

    .line 8
    new-instance v0, Le/u0;

    invoke-direct {v0, p0}, Le/u0;-><init>(Le/x0;)V

    iput-object v0, p0, Le/x0;->y:Le/u0;

    .line 9
    new-instance v0, Le/v0;

    invoke-direct {v0, p0}, Le/v0;-><init>(Le/x0;)V

    iput-object v0, p0, Le/x0;->z:Le/v0;

    .line 10
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    .line 12
    invoke-virtual {p0, p1}, Le/x0;->b(Landroid/view/View;)V

    if-nez p2, :cond_0

    const p2, 0x1020002

    .line 13
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Le/x0;->g:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/app/Dialog;)V
    .locals 1

    .line 14
    invoke-direct {p0}, Le/b;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Le/x0;->m:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Le/x0;->o:I

    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Le/x0;->p:Z

    .line 19
    iput-boolean v0, p0, Le/x0;->t:Z

    .line 20
    new-instance v0, Le/t0;

    invoke-direct {v0, p0}, Le/t0;-><init>(Le/x0;)V

    iput-object v0, p0, Le/x0;->x:Le/t0;

    .line 21
    new-instance v0, Le/u0;

    invoke-direct {v0, p0}, Le/u0;-><init>(Le/x0;)V

    iput-object v0, p0, Le/x0;->y:Le/u0;

    .line 22
    new-instance v0, Le/v0;

    invoke-direct {v0, p0}, Le/v0;-><init>(Le/x0;)V

    iput-object v0, p0, Le/x0;->z:Le/v0;

    .line 23
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Le/x0;->b(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public animateToMode(Z)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    iget-boolean v1, p0, Le/x0;->s:Z

    .line 5
    .line 6
    if-nez v1, :cond_3

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    iput-boolean v1, p0, Le/x0;->s:Z

    .line 10
    .line 11
    iget-object v2, p0, Le/x0;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {p0, v0}, Le/x0;->d(Z)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    iget-boolean v1, p0, Le/x0;->s:Z

    .line 23
    .line 24
    if-eqz v1, :cond_3

    .line 25
    .line 26
    iput-boolean v0, p0, Le/x0;->s:Z

    .line 27
    .line 28
    iget-object v1, p0, Le/x0;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 29
    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    .line 33
    .line 34
    .line 35
    :cond_2
    invoke-virtual {p0, v0}, Le/x0;->d(Z)V

    .line 36
    .line 37
    .line 38
    :cond_3
    :goto_0
    iget-object v1, p0, Le/x0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    .line 39
    .line 40
    invoke-static {v1}, LM/p0;->isLaidOut(Landroid/view/View;)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    const/16 v2, 0x8

    .line 45
    .line 46
    const/4 v3, 0x4

    .line 47
    if-eqz v1, :cond_5

    .line 48
    .line 49
    const-wide/16 v4, 0xc8

    .line 50
    .line 51
    const-wide/16 v6, 0x64

    .line 52
    .line 53
    if-eqz p1, :cond_4

    .line 54
    .line 55
    iget-object p1, p0, Le/x0;->e:Ll/M0;

    .line 56
    .line 57
    check-cast p1, Ll/r2;

    .line 58
    .line 59
    invoke-virtual {p1, v3, v6, v7}, Ll/r2;->setupAnimatorToVisibility(IJ)LM/C0;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    iget-object v1, p0, Le/x0;->f:Landroidx/appcompat/widget/ActionBarContextView;

    .line 64
    .line 65
    invoke-virtual {v1, v0, v4, v5}, Landroidx/appcompat/widget/ActionBarContextView;->setupAnimatorToVisibility(IJ)LM/C0;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    goto :goto_1

    .line 70
    :cond_4
    iget-object p1, p0, Le/x0;->e:Ll/M0;

    .line 71
    .line 72
    check-cast p1, Ll/r2;

    .line 73
    .line 74
    invoke-virtual {p1, v0, v4, v5}, Ll/r2;->setupAnimatorToVisibility(IJ)LM/C0;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    iget-object p1, p0, Le/x0;->f:Landroidx/appcompat/widget/ActionBarContextView;

    .line 79
    .line 80
    invoke-virtual {p1, v2, v6, v7}, Landroidx/appcompat/widget/ActionBarContextView;->setupAnimatorToVisibility(IJ)LM/C0;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    :goto_1
    new-instance v1, Lj/n;

    .line 85
    .line 86
    invoke-direct {v1}, Lj/n;-><init>()V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, p1, v0}, Lj/n;->playSequentially(LM/C0;LM/C0;)Lj/n;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1}, Lj/n;->start()V

    .line 93
    .line 94
    .line 95
    return-void

    .line 96
    :cond_5
    if-eqz p1, :cond_6

    .line 97
    .line 98
    iget-object p1, p0, Le/x0;->e:Ll/M0;

    .line 99
    .line 100
    check-cast p1, Ll/r2;

    .line 101
    .line 102
    invoke-virtual {p1, v3}, Ll/r2;->setVisibility(I)V

    .line 103
    .line 104
    .line 105
    iget-object p1, p0, Le/x0;->f:Landroidx/appcompat/widget/ActionBarContextView;

    .line 106
    .line 107
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    .line 108
    .line 109
    .line 110
    return-void

    .line 111
    :cond_6
    iget-object p1, p0, Le/x0;->e:Ll/M0;

    .line 112
    .line 113
    check-cast p1, Ll/r2;

    .line 114
    .line 115
    invoke-virtual {p1, v0}, Ll/r2;->setVisibility(I)V

    .line 116
    .line 117
    .line 118
    iget-object p1, p0, Le/x0;->f:Landroidx/appcompat/widget/ActionBarContextView;

    .line 119
    .line 120
    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    .line 121
    .line 122
    .line 123
    return-void
.end method

.method public final b(Landroid/view/View;)V
    .locals 5

    .line 1
    sget v0, Landroidx/appcompat/R$id;->decor_content_parent:I

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 8
    .line 9
    iput-object v0, p0, Le/x0;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setActionBarVisibilityCallback(Ll/j;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    sget v0, Landroidx/appcompat/R$id;->action_bar:I

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    instance-of v1, v0, Ll/M0;

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    check-cast v0, Ll/M0;

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    instance-of v1, v0, Landroidx/appcompat/widget/Toolbar;

    .line 30
    .line 31
    if-eqz v1, :cond_9

    .line 32
    .line 33
    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 34
    .line 35
    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getWrapper()Ll/M0;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    :goto_0
    iput-object v0, p0, Le/x0;->e:Ll/M0;

    .line 40
    .line 41
    sget v0, Landroidx/appcompat/R$id;->action_context_bar:I

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Landroidx/appcompat/widget/ActionBarContextView;

    .line 48
    .line 49
    iput-object v0, p0, Le/x0;->f:Landroidx/appcompat/widget/ActionBarContextView;

    .line 50
    .line 51
    sget v0, Landroidx/appcompat/R$id;->action_bar_container:I

    .line 52
    .line 53
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    check-cast p1, Landroidx/appcompat/widget/ActionBarContainer;

    .line 58
    .line 59
    iput-object p1, p0, Le/x0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    .line 60
    .line 61
    iget-object v0, p0, Le/x0;->e:Ll/M0;

    .line 62
    .line 63
    if-eqz v0, :cond_8

    .line 64
    .line 65
    iget-object v1, p0, Le/x0;->f:Landroidx/appcompat/widget/ActionBarContextView;

    .line 66
    .line 67
    if-eqz v1, :cond_8

    .line 68
    .line 69
    if-eqz p1, :cond_8

    .line 70
    .line 71
    check-cast v0, Ll/r2;

    .line 72
    .line 73
    invoke-virtual {v0}, Ll/r2;->getContext()Landroid/content/Context;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    iput-object p1, p0, Le/x0;->a:Landroid/content/Context;

    .line 78
    .line 79
    iget-object p1, p0, Le/x0;->e:Ll/M0;

    .line 80
    .line 81
    check-cast p1, Ll/r2;

    .line 82
    .line 83
    invoke-virtual {p1}, Ll/r2;->getDisplayOptions()I

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    and-int/lit8 p1, p1, 0x4

    .line 88
    .line 89
    const/4 v0, 0x1

    .line 90
    const/4 v1, 0x0

    .line 91
    if-eqz p1, :cond_2

    .line 92
    .line 93
    move p1, v0

    .line 94
    goto :goto_1

    .line 95
    :cond_2
    move p1, v1

    .line 96
    :goto_1
    if-eqz p1, :cond_3

    .line 97
    .line 98
    iput-boolean v0, p0, Le/x0;->h:Z

    .line 99
    .line 100
    :cond_3
    iget-object v2, p0, Le/x0;->a:Landroid/content/Context;

    .line 101
    .line 102
    invoke-static {v2}, Lj/a;->get(Landroid/content/Context;)Lj/a;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    invoke-virtual {v2}, Lj/a;->enableHomeButtonByDefault()Z

    .line 107
    .line 108
    .line 109
    move-result v3

    .line 110
    if-nez v3, :cond_5

    .line 111
    .line 112
    if-eqz p1, :cond_4

    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_4
    move p1, v1

    .line 116
    goto :goto_3

    .line 117
    :cond_5
    :goto_2
    move p1, v0

    .line 118
    :goto_3
    invoke-virtual {p0, p1}, Le/x0;->setHomeButtonEnabled(Z)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v2}, Lj/a;->hasEmbeddedTabs()Z

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    invoke-virtual {p0, p1}, Le/x0;->c(Z)V

    .line 126
    .line 127
    .line 128
    iget-object p1, p0, Le/x0;->a:Landroid/content/Context;

    .line 129
    .line 130
    sget-object v2, Landroidx/appcompat/R$styleable;->ActionBar:[I

    .line 131
    .line 132
    sget v3, Landroidx/appcompat/R$attr;->actionBarStyle:I

    .line 133
    .line 134
    const/4 v4, 0x0

    .line 135
    invoke-virtual {p1, v4, v2, v3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    sget v2, Landroidx/appcompat/R$styleable;->ActionBar_hideOnContentScroll:I

    .line 140
    .line 141
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 142
    .line 143
    .line 144
    move-result v2

    .line 145
    if-eqz v2, :cond_6

    .line 146
    .line 147
    invoke-virtual {p0, v0}, Le/x0;->setHideOnContentScrollEnabled(Z)V

    .line 148
    .line 149
    .line 150
    :cond_6
    sget v0, Landroidx/appcompat/R$styleable;->ActionBar_elevation:I

    .line 151
    .line 152
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    if-eqz v0, :cond_7

    .line 157
    .line 158
    int-to-float v0, v0

    .line 159
    invoke-virtual {p0, v0}, Le/x0;->setElevation(F)V

    .line 160
    .line 161
    .line 162
    :cond_7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 163
    .line 164
    .line 165
    return-void

    .line 166
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 167
    .line 168
    const-class v0, Le/x0;

    .line 169
    .line 170
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    const-string v1, " can only be used with a compatible window decor layout"

    .line 175
    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    throw p1

    .line 184
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 185
    .line 186
    if-eqz v0, :cond_a

    .line 187
    .line 188
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    goto :goto_4

    .line 197
    :cond_a
    const-string v0, "null"

    .line 198
    .line 199
    :goto_4
    const-string v1, "Can\'t make a decor toolbar out of "

    .line 200
    .line 201
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    throw p1
.end method

.method public final c(Z)V
    .locals 4

    .line 1
    iput-boolean p1, p0, Le/x0;->n:Z

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Le/x0;->e:Ll/M0;

    .line 7
    .line 8
    check-cast p1, Ll/r2;

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Ll/r2;->setEmbeddedTabView(Ll/G1;)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Le/x0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setTabContainer(Ll/G1;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object p1, p0, Le/x0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setTabContainer(Ll/G1;)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Le/x0;->e:Ll/M0;

    .line 25
    .line 26
    check-cast p1, Ll/r2;

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Ll/r2;->setEmbeddedTabView(Ll/G1;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    invoke-virtual {p0}, Le/x0;->getNavigationMode()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    const/4 v0, 0x2

    .line 36
    const/4 v1, 0x0

    .line 37
    const/4 v2, 0x1

    .line 38
    if-ne p1, v0, :cond_1

    .line 39
    .line 40
    move p1, v2

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    move p1, v1

    .line 43
    :goto_1
    iget-object v0, p0, Le/x0;->e:Ll/M0;

    .line 44
    .line 45
    iget-boolean v3, p0, Le/x0;->n:Z

    .line 46
    .line 47
    if-nez v3, :cond_2

    .line 48
    .line 49
    if-eqz p1, :cond_2

    .line 50
    .line 51
    move v3, v2

    .line 52
    goto :goto_2

    .line 53
    :cond_2
    move v3, v1

    .line 54
    :goto_2
    check-cast v0, Ll/r2;

    .line 55
    .line 56
    invoke-virtual {v0, v3}, Ll/r2;->setCollapsible(Z)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Le/x0;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 60
    .line 61
    iget-boolean v3, p0, Le/x0;->n:Z

    .line 62
    .line 63
    if-nez v3, :cond_3

    .line 64
    .line 65
    if-eqz p1, :cond_3

    .line 66
    .line 67
    move v1, v2

    .line 68
    :cond_3
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHasNonEmbeddedTabs(Z)V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method public collapseActionView()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/x0;->e:Ll/M0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast v0, Ll/r2;

    .line 6
    .line 7
    invoke-virtual {v0}, Ll/r2;->hasExpandedActionView()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Le/x0;->e:Ll/M0;

    .line 14
    .line 15
    check-cast v0, Ll/r2;

    .line 16
    .line 17
    invoke-virtual {v0}, Ll/r2;->collapseActionView()V

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    return v0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    return v0
.end method

.method public final d(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Le/x0;->q:Z

    .line 2
    .line 3
    iget-boolean v1, p0, Le/x0;->r:Z

    .line 4
    .line 5
    iget-boolean v2, p0, Le/x0;->s:Z

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    if-nez v0, :cond_2

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_1
    :goto_0
    iget-boolean v0, p0, Le/x0;->t:Z

    .line 16
    .line 17
    if-nez v0, :cond_3

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Le/x0;->t:Z

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Le/x0;->doShow(Z)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_2
    :goto_1
    iget-boolean v0, p0, Le/x0;->t:Z

    .line 27
    .line 28
    if-eqz v0, :cond_3

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Le/x0;->t:Z

    .line 32
    .line 33
    invoke-virtual {p0, p1}, Le/x0;->doHide(Z)V

    .line 34
    .line 35
    .line 36
    :cond_3
    return-void
.end method

.method public dispatchMenuVisibilityChanged(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/x0;->l:Z

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iput-boolean p1, p0, Le/x0;->l:Z

    .line 7
    .line 8
    iget-object p1, p0, Le/x0;->m:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-gtz v0, :cond_1

    .line 15
    .line 16
    :goto_0
    return-void

    .line 17
    :cond_1
    const/4 v0, 0x0

    .line 18
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    new-instance p1, Ljava/lang/ClassCastException;

    .line 26
    .line 27
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 28
    .line 29
    .line 30
    throw p1
.end method

.method public doHide(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Le/x0;->u:Lj/n;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lj/n;->cancel()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget v0, p0, Le/x0;->o:I

    .line 9
    .line 10
    iget-object v1, p0, Le/x0;->x:Le/t0;

    .line 11
    .line 12
    if-nez v0, :cond_4

    .line 13
    .line 14
    iget-boolean v0, p0, Le/x0;->v:Z

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    if-eqz p1, :cond_4

    .line 19
    .line 20
    :cond_1
    iget-object v0, p0, Le/x0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    .line 21
    .line 22
    const/high16 v2, 0x3f800000    # 1.0f

    .line 23
    .line 24
    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Le/x0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/ActionBarContainer;->setTransitioning(Z)V

    .line 31
    .line 32
    .line 33
    new-instance v0, Lj/n;

    .line 34
    .line 35
    invoke-direct {v0}, Lj/n;-><init>()V

    .line 36
    .line 37
    .line 38
    iget-object v3, p0, Le/x0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    .line 39
    .line 40
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    neg-int v3, v3

    .line 45
    int-to-float v3, v3

    .line 46
    if-eqz p1, :cond_2

    .line 47
    .line 48
    const/4 p1, 0x0

    .line 49
    filled-new-array {p1, p1}, [I

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    iget-object v4, p0, Le/x0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    .line 54
    .line 55
    invoke-virtual {v4, p1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 56
    .line 57
    .line 58
    aget p1, p1, v2

    .line 59
    .line 60
    int-to-float p1, p1

    .line 61
    sub-float/2addr v3, p1

    .line 62
    :cond_2
    iget-object p1, p0, Le/x0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    .line 63
    .line 64
    invoke-static {p1}, LM/p0;->animate(Landroid/view/View;)LM/C0;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p1, v3}, LM/C0;->translationY(F)LM/C0;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    iget-object v2, p0, Le/x0;->z:Le/v0;

    .line 73
    .line 74
    invoke-virtual {p1, v2}, LM/C0;->setUpdateListener(LM/F0;)LM/C0;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, p1}, Lj/n;->play(LM/C0;)Lj/n;

    .line 78
    .line 79
    .line 80
    iget-boolean p1, p0, Le/x0;->p:Z

    .line 81
    .line 82
    if-eqz p1, :cond_3

    .line 83
    .line 84
    iget-object p1, p0, Le/x0;->g:Landroid/view/View;

    .line 85
    .line 86
    if-eqz p1, :cond_3

    .line 87
    .line 88
    invoke-static {p1}, LM/p0;->animate(Landroid/view/View;)LM/C0;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-virtual {p1, v3}, LM/C0;->translationY(F)LM/C0;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-virtual {v0, p1}, Lj/n;->play(LM/C0;)Lj/n;

    .line 97
    .line 98
    .line 99
    :cond_3
    sget-object p1, Le/x0;->A:Landroid/view/animation/AccelerateInterpolator;

    .line 100
    .line 101
    invoke-virtual {v0, p1}, Lj/n;->setInterpolator(Landroid/view/animation/Interpolator;)Lj/n;

    .line 102
    .line 103
    .line 104
    const-wide/16 v2, 0xfa

    .line 105
    .line 106
    invoke-virtual {v0, v2, v3}, Lj/n;->setDuration(J)Lj/n;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v1}, Lj/n;->setListener(LM/D0;)Lj/n;

    .line 110
    .line 111
    .line 112
    iput-object v0, p0, Le/x0;->u:Lj/n;

    .line 113
    .line 114
    invoke-virtual {v0}, Lj/n;->start()V

    .line 115
    .line 116
    .line 117
    return-void

    .line 118
    :cond_4
    const/4 p1, 0x0

    .line 119
    invoke-interface {v1, p1}, LM/D0;->onAnimationEnd(Landroid/view/View;)V

    .line 120
    .line 121
    .line 122
    return-void
.end method

.method public doShow(Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Le/x0;->u:Lj/n;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lj/n;->cancel()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Le/x0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarContainer;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    iget v0, p0, Le/x0;->o:I

    .line 15
    .line 16
    iget-object v2, p0, Le/x0;->g:Landroid/view/View;

    .line 17
    .line 18
    iget-object v3, p0, Le/x0;->y:Le/u0;

    .line 19
    .line 20
    const/4 v4, 0x0

    .line 21
    if-nez v0, :cond_4

    .line 22
    .line 23
    iget-boolean v0, p0, Le/x0;->v:Z

    .line 24
    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    if-eqz p1, :cond_4

    .line 28
    .line 29
    :cond_1
    iget-object v0, p0, Le/x0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    .line 30
    .line 31
    invoke-virtual {v0, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Le/x0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    neg-int v0, v0

    .line 41
    int-to-float v0, v0

    .line 42
    if-eqz p1, :cond_2

    .line 43
    .line 44
    filled-new-array {v1, v1}, [I

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    iget-object v1, p0, Le/x0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    .line 49
    .line 50
    invoke-virtual {v1, p1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 51
    .line 52
    .line 53
    const/4 v1, 0x1

    .line 54
    aget p1, p1, v1

    .line 55
    .line 56
    int-to-float p1, p1

    .line 57
    sub-float/2addr v0, p1

    .line 58
    :cond_2
    iget-object p1, p0, Le/x0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    .line 59
    .line 60
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 61
    .line 62
    .line 63
    new-instance p1, Lj/n;

    .line 64
    .line 65
    invoke-direct {p1}, Lj/n;-><init>()V

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Le/x0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    .line 69
    .line 70
    invoke-static {v1}, LM/p0;->animate(Landroid/view/View;)LM/C0;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v1, v4}, LM/C0;->translationY(F)LM/C0;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    iget-object v5, p0, Le/x0;->z:Le/v0;

    .line 79
    .line 80
    invoke-virtual {v1, v5}, LM/C0;->setUpdateListener(LM/F0;)LM/C0;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, v1}, Lj/n;->play(LM/C0;)Lj/n;

    .line 84
    .line 85
    .line 86
    iget-boolean v1, p0, Le/x0;->p:Z

    .line 87
    .line 88
    if-eqz v1, :cond_3

    .line 89
    .line 90
    if-eqz v2, :cond_3

    .line 91
    .line 92
    invoke-virtual {v2, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 93
    .line 94
    .line 95
    invoke-static {v2}, LM/p0;->animate(Landroid/view/View;)LM/C0;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {v0, v4}, LM/C0;->translationY(F)LM/C0;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {p1, v0}, Lj/n;->play(LM/C0;)Lj/n;

    .line 104
    .line 105
    .line 106
    :cond_3
    sget-object v0, Le/x0;->B:Landroid/view/animation/DecelerateInterpolator;

    .line 107
    .line 108
    invoke-virtual {p1, v0}, Lj/n;->setInterpolator(Landroid/view/animation/Interpolator;)Lj/n;

    .line 109
    .line 110
    .line 111
    const-wide/16 v0, 0xfa

    .line 112
    .line 113
    invoke-virtual {p1, v0, v1}, Lj/n;->setDuration(J)Lj/n;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1, v3}, Lj/n;->setListener(LM/D0;)Lj/n;

    .line 117
    .line 118
    .line 119
    iput-object p1, p0, Le/x0;->u:Lj/n;

    .line 120
    .line 121
    invoke-virtual {p1}, Lj/n;->start()V

    .line 122
    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_4
    iget-object p1, p0, Le/x0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    .line 126
    .line 127
    const/high16 v0, 0x3f800000    # 1.0f

    .line 128
    .line 129
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 130
    .line 131
    .line 132
    iget-object p1, p0, Le/x0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    .line 133
    .line 134
    invoke-virtual {p1, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 135
    .line 136
    .line 137
    iget-boolean p1, p0, Le/x0;->p:Z

    .line 138
    .line 139
    if-eqz p1, :cond_5

    .line 140
    .line 141
    if-eqz v2, :cond_5

    .line 142
    .line 143
    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 144
    .line 145
    .line 146
    :cond_5
    const/4 p1, 0x0

    .line 147
    invoke-interface {v3, p1}, LM/D0;->onAnimationEnd(Landroid/view/View;)V

    .line 148
    .line 149
    .line 150
    :goto_0
    iget-object p1, p0, Le/x0;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 151
    .line 152
    if-eqz p1, :cond_6

    .line 153
    .line 154
    invoke-static {p1}, LM/p0;->requestApplyInsets(Landroid/view/View;)V

    .line 155
    .line 156
    .line 157
    :cond_6
    return-void
.end method

.method public enableContentAnimations(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Le/x0;->p:Z

    .line 2
    .line 3
    return-void
.end method

.method public getDisplayOptions()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/x0;->e:Ll/M0;

    .line 2
    .line 3
    check-cast v0, Ll/r2;

    .line 4
    .line 5
    invoke-virtual {v0}, Ll/r2;->getDisplayOptions()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getNavigationMode()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/x0;->e:Ll/M0;

    .line 2
    .line 3
    check-cast v0, Ll/r2;

    .line 4
    .line 5
    invoke-virtual {v0}, Ll/r2;->getNavigationMode()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getThemedContext()Landroid/content/Context;
    .locals 4

    .line 1
    iget-object v0, p0, Le/x0;->b:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    new-instance v0, Landroid/util/TypedValue;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Le/x0;->a:Landroid/content/Context;

    .line 11
    .line 12
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    sget v2, Landroidx/appcompat/R$attr;->actionBarWidgetTheme:I

    .line 17
    .line 18
    const/4 v3, 0x1

    .line 19
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 20
    .line 21
    .line 22
    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    new-instance v1, Landroid/view/ContextThemeWrapper;

    .line 27
    .line 28
    iget-object v2, p0, Le/x0;->a:Landroid/content/Context;

    .line 29
    .line 30
    invoke-direct {v1, v2, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 31
    .line 32
    .line 33
    iput-object v1, p0, Le/x0;->b:Landroid/content/Context;

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iget-object v0, p0, Le/x0;->a:Landroid/content/Context;

    .line 37
    .line 38
    iput-object v0, p0, Le/x0;->b:Landroid/content/Context;

    .line 39
    .line 40
    :cond_1
    :goto_0
    iget-object v0, p0, Le/x0;->b:Landroid/content/Context;

    .line 41
    .line 42
    return-object v0
.end method

.method public hide()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/x0;->q:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Le/x0;->q:Z

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, v0}, Le/x0;->d(Z)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public hideForSystem()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/x0;->r:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Le/x0;->r:Z

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Le/x0;->d(Z)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    iget-object p1, p0, Le/x0;->a:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p1}, Lj/a;->get(Landroid/content/Context;)Lj/a;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lj/a;->hasEmbeddedTabs()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    invoke-virtual {p0, p1}, Le/x0;->c(Z)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onContentScrollStarted()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/x0;->u:Lj/n;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lj/n;->cancel()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Le/x0;->u:Lj/n;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public onContentScrollStopped()V
    .locals 0

    .line 1
    return-void
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Le/x0;->i:Le/w0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-virtual {v0}, Le/w0;->getMenu()Landroid/view/Menu;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_3

    .line 12
    .line 13
    if-eqz p2, :cond_1

    .line 14
    .line 15
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/4 v2, -0x1

    .line 21
    :goto_0
    invoke-static {v2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v2}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    const/4 v3, 0x1

    .line 30
    if-eq v2, v3, :cond_2

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_2
    move v3, v1

    .line 34
    :goto_1
    invoke-interface {v0, v3}, Landroid/view/Menu;->setQwertyMode(Z)V

    .line 35
    .line 36
    .line 37
    invoke-interface {v0, p1, p2, v1}, Landroid/view/Menu;->performShortcut(ILandroid/view/KeyEvent;I)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    return p1

    .line 42
    :cond_3
    return v1
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 0

    .line 1
    iput p1, p0, Le/x0;->o:I

    .line 2
    .line 3
    return-void
.end method

.method public setDefaultDisplayHomeAsUpEnabled(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/x0;->h:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Le/x0;->setDisplayHomeAsUpEnabled(Z)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setDisplayHomeAsUpEnabled(Z)V
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    move p1, v0

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 p1, 0x0

    .line 7
    :goto_0
    invoke-virtual {p0, p1, v0}, Le/x0;->setDisplayOptions(II)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public setDisplayOptions(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/x0;->e:Ll/M0;

    .line 2
    .line 3
    check-cast v0, Ll/r2;

    .line 4
    .line 5
    invoke-virtual {v0}, Ll/r2;->getDisplayOptions()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    and-int/lit8 v1, p2, 0x4

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    iput-boolean v1, p0, Le/x0;->h:Z

    .line 15
    .line 16
    :cond_0
    iget-object v1, p0, Le/x0;->e:Ll/M0;

    .line 17
    .line 18
    and-int/2addr p1, p2

    .line 19
    not-int p2, p2

    .line 20
    and-int/2addr p2, v0

    .line 21
    or-int/2addr p1, p2

    .line 22
    check-cast v1, Ll/r2;

    .line 23
    .line 24
    invoke-virtual {v1, p1}, Ll/r2;->setDisplayOptions(I)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public setElevation(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/x0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    .line 2
    .line 3
    invoke-static {v0, p1}, LM/p0;->setElevation(Landroid/view/View;F)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setHideOnContentScrollEnabled(Z)V
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Le/x0;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->isInOverlayMode()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 13
    .line 14
    const-string v0, "Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll"

    .line 15
    .line 16
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p1

    .line 20
    :cond_1
    :goto_0
    iput-boolean p1, p0, Le/x0;->w:Z

    .line 21
    .line 22
    iget-object v0, p0, Le/x0;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public setHomeActionContentDescription(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/x0;->e:Ll/M0;

    .line 2
    .line 3
    check-cast v0, Ll/r2;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ll/r2;->setNavigationContentDescription(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setHomeAsUpIndicator(I)V
    .locals 1

    .line 2
    iget-object v0, p0, Le/x0;->e:Ll/M0;

    check-cast v0, Ll/r2;

    invoke-virtual {v0, p1}, Ll/r2;->setNavigationIcon(I)V

    return-void
.end method

.method public setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/x0;->e:Ll/M0;

    check-cast v0, Ll/r2;

    invoke-virtual {v0, p1}, Ll/r2;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setHomeButtonEnabled(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/x0;->e:Ll/M0;

    .line 2
    .line 3
    check-cast v0, Ll/r2;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ll/r2;->setHomeButtonEnabled(Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setShowHideAnimationEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Le/x0;->v:Z

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Le/x0;->u:Lj/n;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Lj/n;->cancel()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/x0;->e:Ll/M0;

    .line 2
    .line 3
    check-cast v0, Ll/r2;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ll/r2;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/x0;->e:Ll/M0;

    .line 2
    .line 3
    check-cast v0, Ll/r2;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ll/r2;->setTitle(Ljava/lang/CharSequence;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/x0;->e:Ll/M0;

    .line 2
    .line 3
    check-cast v0, Ll/r2;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ll/r2;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public showForSystem()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/x0;->r:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Le/x0;->r:Z

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-virtual {p0, v0}, Le/x0;->d(Z)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public startActionMode(Lj/b;)Lj/c;
    .locals 2

    .line 1
    iget-object v0, p0, Le/x0;->i:Le/w0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Le/w0;->finish()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Le/x0;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Le/x0;->f:Landroidx/appcompat/widget/ActionBarContextView;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->killMode()V

    .line 17
    .line 18
    .line 19
    new-instance v0, Le/w0;

    .line 20
    .line 21
    iget-object v1, p0, Le/x0;->f:Landroidx/appcompat/widget/ActionBarContextView;

    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-direct {v0, p0, v1, p1}, Le/w0;-><init>(Le/x0;Landroid/content/Context;Lj/b;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Le/w0;->dispatchOnCreate()Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    iput-object v0, p0, Le/x0;->i:Le/w0;

    .line 37
    .line 38
    invoke-virtual {v0}, Le/w0;->invalidate()V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Le/x0;->f:Landroidx/appcompat/widget/ActionBarContextView;

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->initForMode(Lj/c;)V

    .line 44
    .line 45
    .line 46
    const/4 p1, 0x1

    .line 47
    invoke-virtual {p0, p1}, Le/x0;->animateToMode(Z)V

    .line 48
    .line 49
    .line 50
    return-object v0

    .line 51
    :cond_1
    const/4 p1, 0x0

    .line 52
    return-object p1
.end method
