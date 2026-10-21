.class public Lflix/com/vision/activities/leanback/MainActivityLeanback;
.super Landroidx/fragment/app/H;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnFocusChangeListener;


# static fields
.field public static final synthetic I:I


# instance fields
.field public A:Landroid/widget/TextView;

.field public B:Landroid/widget/TextView;

.field public C:Landroid/widget/TextView;

.field public D:Landroid/widget/TextView;

.field public final E:Landroid/os/Handler;

.field public final F:LA4/k;

.field public G:Landroid/view/animation/Animation;

.field public H:Landroid/view/animation/Animation;

.field public b:Landroid/view/View;

.field public e:Z

.field public f:Lcom/github/ybq/android/spinkit/SpinKitView;

.field public j:Landroid/widget/FrameLayout;

.field public m:Lh5/j;

.field public n:Landroid/graphics/Typeface;

.field public p:Ljava/lang/String;

.field public q:Landroid/view/View;

.field public r:Landroidx/leanback/widget/BrowseFrameLayout;

.field public s:Lflix/com/vision/activities/leanback/fragment/d;

.field public t:Landroid/widget/TextView;

.field public u:Landroid/widget/TextView;

.field public v:Landroid/widget/TextView;

.field public w:Landroid/widget/TextView;

.field public x:Landroid/widget/TextView;

.field public y:Landroid/widget/TextView;

.field public z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/H;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->e:Z

    .line 6
    .line 7
    const-string v0, "home"

    .line 8
    .line 9
    iput-object v0, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->p:Ljava/lang/String;

    .line 10
    .line 11
    new-instance v0, Landroid/os/Handler;

    .line 12
    .line 13
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->E:Landroid/os/Handler;

    .line 21
    .line 22
    new-instance v0, LA4/k;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-direct {v0, p0, v1}, LA4/k;-><init>(Lflix/com/vision/activities/leanback/MainActivityLeanback;I)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->F:LA4/k;

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->G:Landroid/view/animation/Animation;

    .line 32
    .line 33
    iput-object v0, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->H:Landroid/view/animation/Animation;

    .line 34
    .line 35
    return-void
.end method

.method public static j(Landroid/widget/TextView;I)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_0
    if-ge v2, v1, :cond_1

    .line 8
    .line 9
    aget-object v3, v0, v2

    .line 10
    .line 11
    if-eqz v3, :cond_0

    .line 12
    .line 13
    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v5

    .line 19
    invoke-static {v5, p1}, LA/h;->getColor(Landroid/content/Context;I)I

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 24
    .line 25
    invoke-direct {v4, v5, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    return-void
.end method


# virtual methods
.method public askToUpdateIfAny(ZLflix/com/vision/models/Movie;)V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const-string v2, ""

    .line 4
    .line 5
    :try_start_0
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 6
    .line 7
    .line 8
    move-result-object v3

    .line 9
    iget-object v3, v3, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 10
    .line 11
    sget-object v4, Lflix/com/vision/tv/Constant;->b:Ljava/lang/String;

    .line 12
    .line 13
    const-string v4, "update_available"

    .line 14
    .line 15
    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    iget-object v3, v3, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 26
    .line 27
    const-string v4, "update_url"

    .line 28
    .line 29
    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    const/4 v4, 0x5

    .line 38
    if-le v3, v4, :cond_0

    .line 39
    .line 40
    invoke-static {p0, v1}, LQ4/d;->newInstance(Landroid/app/Activity;Z)LQ4/d;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    sget v3, Lflix/com/vision/R$string;->later_label:I

    .line 45
    .line 46
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    new-instance v4, LA4/l;

    .line 55
    .line 56
    invoke-direct {v4, p0, p1, p2, v1}, LA4/l;-><init>(Lflix/com/vision/activities/leanback/MainActivityLeanback;LQ4/d;Lflix/com/vision/models/Movie;I)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v3, v4}, LQ4/d;->setButton1(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 60
    .line 61
    .line 62
    sget v1, Lflix/com/vision/R$string;->download_update_label:I

    .line 63
    .line 64
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    new-instance v3, LA4/l;

    .line 69
    .line 70
    invoke-direct {v3, p0, p1, p2, v0}, LA4/l;-><init>(Lflix/com/vision/activities/leanback/MainActivityLeanback;LQ4/d;Lflix/com/vision/models/Movie;I)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v1, v3}, LQ4/d;->setButton2(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 74
    .line 75
    .line 76
    new-instance p2, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .line 80
    .line 81
    sget v0, Lflix/com/vision/R$string;->new_update_message:I

    .line 82
    .line 83
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 95
    .line 96
    const-string v1, "update_message"

    .line 97
    .line 98
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    sget v0, Lflix/com/vision/R$string;->make_sure_you_get_it_mess:I

    .line 106
    .line 107
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    invoke-virtual {p1, p2}, LQ4/d;->setMessage(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    new-instance p2, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .line 125
    .line 126
    sget v0, Lflix/com/vision/R$string;->update_available_label:I

    .line 127
    .line 128
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    const-string v0, " "

    .line 136
    .line 137
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 145
    .line 146
    const-string v1, "update_version_name"

    .line 147
    .line 148
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p2

    .line 159
    invoke-virtual {p1, p2}, LQ4/d;->setTitle(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 163
    .line 164
    .line 165
    move-result-object p2

    .line 166
    invoke-virtual {p1, p2, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    return-void

    .line 170
    :cond_0
    if-eqz p1, :cond_1

    .line 171
    .line 172
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    const-string p2, "You\'re running the latest version"

    .line 177
    .line 178
    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    .line 184
    .line 185
    :catch_0
    :cond_1
    return-void
.end method

.method public final d(Landroidx/fragment/app/C;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->f:Lcom/github/ybq/android/spinkit/SpinKitView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/H;->getSupportFragmentManager()Landroidx/fragment/app/i0;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroidx/fragment/app/i0;->beginTransaction()Landroidx/fragment/app/v0;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sget v1, Lflix/com/vision/R$id;->container:I

    .line 16
    .line 17
    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/v0;->replace(ILandroidx/fragment/app/C;)Landroidx/fragment/app/v0;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Landroidx/fragment/app/v0;->commit()I

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lflix/com/vision/activities/leanback/MainActivityLeanback;->resetInactivityTimer()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->s:Lflix/com/vision/activities/leanback/fragment/d;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/fragment/app/C;->isAdded()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->s:Lflix/com/vision/activities/leanback/fragment/d;

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {v0, v1, p1}, Lflix/com/vision/activities/leanback/fragment/d;->dispatchKeyDown(ILandroid/view/KeyEvent;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    const/4 p1, 0x1

    .line 27
    return p1

    .line 28
    :cond_0
    invoke-super {p0, p1}, Lz/r;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    return p1
.end method

.method public final e()V
    .locals 4

    .line 1
    iget-object v0, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->s:Lflix/com/vision/activities/leanback/fragment/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lflix/com/vision/activities/leanback/fragment/d;->requestFocus1()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x6

    .line 9
    invoke-static {p0, v0}, Lh5/d;->getWidthInPercent(Landroid/content/Context;I)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget-object v1, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->r:Landroidx/leanback/widget/BrowseFrameLayout;

    .line 14
    .line 15
    iget-object v2, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->H:Landroid/view/animation/Animation;

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->j:Landroid/widget/FrameLayout;

    .line 21
    .line 22
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    add-int/lit8 v2, v0, -0x5f

    .line 27
    .line 28
    int-to-float v2, v2

    .line 29
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const-wide/16 v2, 0x15e

    .line 34
    .line 35
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    .line 40
    .line 41
    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 45
    .line 46
    .line 47
    iget-object v1, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->r:Landroidx/leanback/widget/BrowseFrameLayout;

    .line 48
    .line 49
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 50
    .line 51
    .line 52
    iget-object v1, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->r:Landroidx/leanback/widget/BrowseFrameLayout;

    .line 53
    .line 54
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 59
    .line 60
    return-void
.end method

.method public final f(Z)V
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, LA4/k;

    .line 7
    .line 8
    const/4 v2, 0x2

    .line 9
    invoke-direct {v1, p0, v2}, LA4/k;-><init>(Lflix/com/vision/activities/leanback/MainActivityLeanback;I)V

    .line 10
    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    const-wide/16 v2, 0xa

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const-wide/16 v2, 0x3e8

    .line 18
    .line 19
    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public finished()V
    .locals 2

    .line 1
    iget-object v0, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->f:Lcom/github/ybq/android/spinkit/SpinKitView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/16 v1, 0x8

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final g()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->r:Landroidx/leanback/widget/BrowseFrameLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 8
    .line 9
    const/16 v1, 0xc8

    .line 10
    .line 11
    if-le v0, v1, :cond_0

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

.method public final h()V
    .locals 4

    .line 1
    const/16 v0, 0x12

    .line 2
    .line 3
    invoke-static {p0, v0}, Lh5/d;->getWidthInPercent(Landroid/content/Context;I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->r:Landroidx/leanback/widget/BrowseFrameLayout;

    .line 8
    .line 9
    iget-object v2, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->G:Landroid/view/animation/Animation;

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->j:Landroid/widget/FrameLayout;

    .line 15
    .line 16
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    add-int/lit8 v2, v0, -0x32

    .line 21
    .line 22
    int-to-float v2, v2

    .line 23
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const-wide/16 v2, 0x15e

    .line 28
    .line 29
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    .line 34
    .line 35
    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->r:Landroidx/leanback/widget/BrowseFrameLayout;

    .line 42
    .line 43
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 44
    .line 45
    .line 46
    iget-object v1, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->r:Landroidx/leanback/widget/BrowseFrameLayout;

    .line 47
    .line 48
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 53
    .line 54
    invoke-virtual {p0}, Lflix/com/vision/activities/leanback/MainActivityLeanback;->k()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Lflix/com/vision/activities/leanback/MainActivityLeanback;->l()V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public final i(Lflix/com/vision/models/Movie;)V
    .locals 2

    .line 1
    sget-boolean v0, Lflix/com/vision/App;->I:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/content/Intent;

    .line 6
    .line 7
    const-class v1, Lflix/com/vision/activities/MovieDetailActivityLeanBack;

    .line 8
    .line 9
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 14
    .line 15
    const-class v1, Lflix/com/vision/activities/MovieDetailActivity;

    .line 16
    .line 17
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 18
    .line 19
    .line 20
    :goto_0
    const-string v1, "movie"

    .line 21
    .line 22
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 23
    .line 24
    .line 25
    const-string v1, "logo_url"

    .line 26
    .line 27
    iget-object p1, p1, Lflix/com/vision/models/Movie;->logoUrl:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    .line 31
    .line 32
    const/high16 p1, 0x10000000

    .line 33
    .line 34
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public final k()V
    .locals 3

    .line 1
    iget-object v0, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->p:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/4 v1, -0x1

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    sparse-switch v2, :sswitch_data_0

    .line 12
    .line 13
    .line 14
    goto/16 :goto_0

    .line 15
    .line 16
    :sswitch_0
    const-string v2, "settings"

    .line 17
    .line 18
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    goto/16 :goto_0

    .line 25
    .line 26
    :cond_0
    const/16 v1, 0x9

    .line 27
    .line 28
    goto/16 :goto_0

    .line 29
    .line 30
    :sswitch_1
    const-string v2, "live_tv"

    .line 31
    .line 32
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    goto/16 :goto_0

    .line 39
    .line 40
    :cond_1
    const/16 v1, 0x8

    .line 41
    .line 42
    goto/16 :goto_0

    .line 43
    .line 44
    :sswitch_2
    const-string v2, "movie"

    .line 45
    .line 46
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-nez v0, :cond_2

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    const/4 v1, 0x7

    .line 54
    goto :goto_0

    .line 55
    :sswitch_3
    const-string v2, "more"

    .line 56
    .line 57
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-nez v0, :cond_3

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_3
    const/4 v1, 0x6

    .line 65
    goto :goto_0

    .line 66
    :sswitch_4
    const-string v2, "home"

    .line 67
    .line 68
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-nez v0, :cond_4

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_4
    const/4 v1, 0x5

    .line 76
    goto :goto_0

    .line 77
    :sswitch_5
    const-string v2, "exit"

    .line 78
    .line 79
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-nez v0, :cond_5

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_5
    const/4 v1, 0x4

    .line 87
    goto :goto_0

    .line 88
    :sswitch_6
    const-string v2, "tv"

    .line 89
    .line 90
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-nez v0, :cond_6

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_6
    const/4 v1, 0x3

    .line 98
    goto :goto_0

    .line 99
    :sswitch_7
    const-string v2, "search"

    .line 100
    .line 101
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-nez v0, :cond_7

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_7
    const/4 v1, 0x2

    .line 109
    goto :goto_0

    .line 110
    :sswitch_8
    const-string v2, "genres"

    .line 111
    .line 112
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    if-nez v0, :cond_8

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_8
    const/4 v1, 0x1

    .line 120
    goto :goto_0

    .line 121
    :sswitch_9
    const-string v2, "favorites"

    .line 122
    .line 123
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    if-nez v0, :cond_9

    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_9
    const/4 v1, 0x0

    .line 131
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 132
    .line 133
    .line 134
    return-void

    .line 135
    :pswitch_0
    iget-object v0, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->z:Landroid/widget/TextView;

    .line 136
    .line 137
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 138
    .line 139
    .line 140
    return-void

    .line 141
    :pswitch_1
    iget-object v0, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->x:Landroid/widget/TextView;

    .line 142
    .line 143
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 144
    .line 145
    .line 146
    return-void

    .line 147
    :pswitch_2
    iget-object v0, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->v:Landroid/widget/TextView;

    .line 148
    .line 149
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 150
    .line 151
    .line 152
    return-void

    .line 153
    :pswitch_3
    iget-object v0, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->B:Landroid/widget/TextView;

    .line 154
    .line 155
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 156
    .line 157
    .line 158
    return-void

    .line 159
    :pswitch_4
    iget-object v0, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->u:Landroid/widget/TextView;

    .line 160
    .line 161
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 162
    .line 163
    .line 164
    return-void

    .line 165
    :pswitch_5
    iget-object v0, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->A:Landroid/widget/TextView;

    .line 166
    .line 167
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 168
    .line 169
    .line 170
    return-void

    .line 171
    :pswitch_6
    iget-object v0, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->w:Landroid/widget/TextView;

    .line 172
    .line 173
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 174
    .line 175
    .line 176
    return-void

    .line 177
    :pswitch_7
    iget-object v0, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->t:Landroid/widget/TextView;

    .line 178
    .line 179
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 180
    .line 181
    .line 182
    return-void

    .line 183
    :pswitch_8
    iget-object v0, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->C:Landroid/widget/TextView;

    .line 184
    .line 185
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 186
    .line 187
    .line 188
    return-void

    .line 189
    :pswitch_9
    iget-object v0, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->y:Landroid/widget/TextView;

    .line 190
    .line 191
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 192
    .line 193
    .line 194
    return-void

    .line 195
    :sswitch_data_0
    .sparse-switch
        -0x6a6895a9 -> :sswitch_9
        -0x4a79d8b0 -> :sswitch_8
        -0x36059a58 -> :sswitch_7
        0xe82 -> :sswitch_6
        0x2fb91e -> :sswitch_5
        0x30f4df -> :sswitch_4
        0x333b55 -> :sswitch_3
        0x6343f30 -> :sswitch_2
        0xafc0ab5 -> :sswitch_1
        0x5582bc23 -> :sswitch_0
    .end sparse-switch

    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final l()V
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, LA4/k;

    .line 7
    .line 8
    const/4 v2, 0x3

    .line 9
    invoke-direct {v1, p0, v2}, LA4/k;-><init>(Lflix/com/vision/activities/leanback/MainActivityLeanback;I)V

    .line 10
    .line 11
    .line 12
    const-wide/16 v2, 0x64

    .line 13
    .line 14
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    .line 1
    const/16 v0, 0x3039

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    const/4 v0, -0x1

    .line 6
    if-ne p2, v0, :cond_0

    .line 7
    .line 8
    const-string v0, "file_extra_data"

    .line 9
    .line 10
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v1, Lflix/com/vision/models/HistoryTVLink;

    .line 15
    .line 16
    invoke-direct {v1}, Lflix/com/vision/models/HistoryTVLink;-><init>()V

    .line 17
    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    :try_start_0
    const-string v3, "/"

    .line 21
    .line 22
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    array-length v4, v3

    .line 27
    sub-int/2addr v4, v2

    .line 28
    aget-object v3, v3, v4

    .line 29
    .line 30
    iput-object v3, v1, Lflix/com/vision/models/HistoryTVLink;->name:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catch_0
    iput-object v0, v1, Lflix/com/vision/models/HistoryTVLink;->name:Ljava/lang/String;

    .line 34
    .line 35
    :goto_0
    iput-object v0, v1, Lflix/com/vision/models/HistoryTVLink;->url:Ljava/lang/String;

    .line 36
    .line 37
    const-string v3, "3"

    .line 38
    .line 39
    iput-object v3, v1, Lflix/com/vision/models/HistoryTVLink;->type:Ljava/lang/String;

    .line 40
    .line 41
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    iget-object v3, v3, Lflix/com/vision/App;->r:LP4/e;

    .line 46
    .line 47
    invoke-virtual {v3, v1}, LP4/e;->addHistoryIPTV(Lflix/com/vision/models/HistoryTVLink;)Z

    .line 48
    .line 49
    .line 50
    new-instance v1, Landroid/content/Intent;

    .line 51
    .line 52
    const-class v3, Lflix/com/vision/tv/TVCategoriesActivity;

    .line 53
    .line 54
    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 55
    .line 56
    .line 57
    const-string v3, "is_file"

    .line 58
    .line 59
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 60
    .line 61
    .line 62
    const-string v2, "url"

    .line 63
    .line 64
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 68
    .line 69
    .line 70
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/H;->onActivityResult(IILandroid/content/Intent;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public onBackPressed()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingSuperCall"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->s:Lflix/com/vision/activities/leanback/fragment/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lflix/com/vision/activities/leanback/fragment/d;->getSelectedPosition()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-lez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->s:Lflix/com/vision/activities/leanback/fragment/d;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, v1}, Lflix/com/vision/activities/leanback/fragment/d;->setSelectedPosition(I)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    invoke-virtual {p0}, Lflix/com/vision/activities/leanback/MainActivityLeanback;->g()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0}, Lflix/com/vision/activities/leanback/MainActivityLeanback;->e()V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    invoke-virtual {p0}, Lflix/com/vision/activities/leanback/MainActivityLeanback;->h()V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/H;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez p1, :cond_4

    .line 7
    .line 8
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1, p0}, Lflix/com/vision/App;->initTech(Landroid/app/Activity;)V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 20
    .line 21
    const-string v2, "IS_RD_LOGGED_IN"

    .line 22
    .line 23
    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Lflix/com/vision/App;->refreshTokenRD()V

    .line 34
    .line 35
    .line 36
    :cond_0
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 41
    .line 42
    const-string v2, "PREM_LOGGED_IN"

    .line 43
    .line 44
    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    const/4 v2, 0x0

    .line 49
    if-eqz p1, :cond_1

    .line 50
    .line 51
    sput-boolean v0, Lflix/com/vision/api/premiumize/PremiumizeCommon;->b:Z

    .line 52
    .line 53
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 58
    .line 59
    sget-object v3, LT4/f;->a:Ljava/lang/String;

    .line 60
    .line 61
    const-string v3, "prem_apikey"

    .line 62
    .line 63
    invoke-interface {p1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    sput-object p1, Lflix/com/vision/api/premiumize/PremiumizeCommon;->e:Ljava/lang/String;

    .line 68
    .line 69
    :cond_1
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 74
    .line 75
    const-string v3, "ALL_DEBRID_LOGGED_IN"

    .line 76
    .line 77
    invoke-interface {p1, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    if-eqz p1, :cond_2

    .line 82
    .line 83
    sput-boolean v0, Lflix/com/vision/api/alldebrid/AllDebridCommon;->f:Z

    .line 84
    .line 85
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 90
    .line 91
    sget-object v3, LT4/f;->a:Ljava/lang/String;

    .line 92
    .line 93
    const-string v3, "all_debrid_apikey"

    .line 94
    .line 95
    invoke-interface {p1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    sput-object p1, Lflix/com/vision/api/alldebrid/AllDebridCommon;->j:Ljava/lang/String;

    .line 100
    .line 101
    :cond_2
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 106
    .line 107
    const-string v3, "torbox_logged_in"

    .line 108
    .line 109
    invoke-interface {p1, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    if-eqz p1, :cond_3

    .line 114
    .line 115
    sput-boolean v0, LJ4/b;->a:Z

    .line 116
    .line 117
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 122
    .line 123
    const-string v3, "torbox_apikey"

    .line 124
    .line 125
    invoke-interface {p1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    sput-object p1, LJ4/b;->b:Ljava/lang/String;

    .line 130
    .line 131
    :cond_3
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 136
    .line 137
    const-string v3, "offcloud_logged_in"

    .line 138
    .line 139
    invoke-interface {p1, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 140
    .line 141
    .line 142
    move-result p1

    .line 143
    if-eqz p1, :cond_4

    .line 144
    .line 145
    sput-boolean v0, LG4/b;->a:Z

    .line 146
    .line 147
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 152
    .line 153
    const-string v3, "offcloud_apikey"

    .line 154
    .line 155
    invoke-interface {p1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    sput-object p1, LG4/b;->b:Ljava/lang/String;

    .line 160
    .line 161
    :cond_4
    sget p1, Lflix/com/vision/R$layout;->activity_main_leanback:I

    .line 162
    .line 163
    invoke-virtual {p0, p1}, Landroidx/activity/ComponentActivity;->setContentView(I)V

    .line 164
    .line 165
    .line 166
    new-instance p1, Landroid/os/Handler;

    .line 167
    .line 168
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 169
    .line 170
    .line 171
    new-instance v2, LA4/k;

    .line 172
    .line 173
    invoke-direct {v2, p0, v0}, LA4/k;-><init>(Lflix/com/vision/activities/leanback/MainActivityLeanback;I)V

    .line 174
    .line 175
    .line 176
    const-wide/16 v3, 0x7d0

    .line 177
    .line 178
    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 179
    .line 180
    .line 181
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    invoke-virtual {p1}, Lflix/com/vision/App;->loadRemoteConfig()V

    .line 186
    .line 187
    .line 188
    sget p1, Lflix/com/vision/R$id;->padding_view:I

    .line 189
    .line 190
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    iput-object p1, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->b:Landroid/view/View;

    .line 195
    .line 196
    sget p1, Lflix/com/vision/R$id;->button_adult:I

    .line 197
    .line 198
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    check-cast p1, Landroid/widget/TextView;

    .line 203
    .line 204
    iput-object p1, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->D:Landroid/widget/TextView;

    .line 205
    .line 206
    sget p1, Lflix/com/vision/R$id;->button_genres:I

    .line 207
    .line 208
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    check-cast p1, Landroid/widget/TextView;

    .line 213
    .line 214
    iput-object p1, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->C:Landroid/widget/TextView;

    .line 215
    .line 216
    sget p1, Lflix/com/vision/R$id;->button_more:I

    .line 217
    .line 218
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 219
    .line 220
    .line 221
    move-result-object p1

    .line 222
    check-cast p1, Landroid/widget/TextView;

    .line 223
    .line 224
    iput-object p1, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->B:Landroid/widget/TextView;

    .line 225
    .line 226
    sget p1, Lflix/com/vision/R$id;->loader_circle:I

    .line 227
    .line 228
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 229
    .line 230
    .line 231
    move-result-object p1

    .line 232
    check-cast p1, Lcom/github/ybq/android/spinkit/SpinKitView;

    .line 233
    .line 234
    iput-object p1, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->f:Lcom/github/ybq/android/spinkit/SpinKitView;

    .line 235
    .line 236
    sget p1, Lflix/com/vision/R$id;->container:I

    .line 237
    .line 238
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 239
    .line 240
    .line 241
    move-result-object p1

    .line 242
    check-cast p1, Landroid/widget/FrameLayout;

    .line 243
    .line 244
    iput-object p1, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->j:Landroid/widget/FrameLayout;

    .line 245
    .line 246
    sget p1, Lflix/com/vision/R$id;->navBar:I

    .line 247
    .line 248
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 249
    .line 250
    .line 251
    move-result-object p1

    .line 252
    check-cast p1, Landroidx/leanback/widget/BrowseFrameLayout;

    .line 253
    .line 254
    iput-object p1, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->r:Landroidx/leanback/widget/BrowseFrameLayout;

    .line 255
    .line 256
    sget p1, Lflix/com/vision/R$id;->button_search:I

    .line 257
    .line 258
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 259
    .line 260
    .line 261
    move-result-object p1

    .line 262
    check-cast p1, Landroid/widget/TextView;

    .line 263
    .line 264
    iput-object p1, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->t:Landroid/widget/TextView;

    .line 265
    .line 266
    sget p1, Lflix/com/vision/R$id;->button_home:I

    .line 267
    .line 268
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 269
    .line 270
    .line 271
    move-result-object p1

    .line 272
    check-cast p1, Landroid/widget/TextView;

    .line 273
    .line 274
    iput-object p1, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->u:Landroid/widget/TextView;

    .line 275
    .line 276
    sget p1, Lflix/com/vision/R$id;->button_movies:I

    .line 277
    .line 278
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 279
    .line 280
    .line 281
    move-result-object p1

    .line 282
    check-cast p1, Landroid/widget/TextView;

    .line 283
    .line 284
    iput-object p1, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->v:Landroid/widget/TextView;

    .line 285
    .line 286
    sget p1, Lflix/com/vision/R$id;->button_tv_series:I

    .line 287
    .line 288
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 289
    .line 290
    .line 291
    move-result-object p1

    .line 292
    check-cast p1, Landroid/widget/TextView;

    .line 293
    .line 294
    iput-object p1, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->w:Landroid/widget/TextView;

    .line 295
    .line 296
    sget p1, Lflix/com/vision/R$id;->button_live_tv:I

    .line 297
    .line 298
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 299
    .line 300
    .line 301
    move-result-object p1

    .line 302
    check-cast p1, Landroid/widget/TextView;

    .line 303
    .line 304
    iput-object p1, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->x:Landroid/widget/TextView;

    .line 305
    .line 306
    sget p1, Lflix/com/vision/R$id;->button_favorites:I

    .line 307
    .line 308
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 309
    .line 310
    .line 311
    move-result-object p1

    .line 312
    check-cast p1, Landroid/widget/TextView;

    .line 313
    .line 314
    iput-object p1, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->y:Landroid/widget/TextView;

    .line 315
    .line 316
    sget p1, Lflix/com/vision/R$id;->button_settings:I

    .line 317
    .line 318
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 319
    .line 320
    .line 321
    move-result-object p1

    .line 322
    check-cast p1, Landroid/widget/TextView;

    .line 323
    .line 324
    iput-object p1, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->z:Landroid/widget/TextView;

    .line 325
    .line 326
    sget p1, Lflix/com/vision/R$id;->button_exit:I

    .line 327
    .line 328
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 329
    .line 330
    .line 331
    move-result-object p1

    .line 332
    check-cast p1, Landroid/widget/TextView;

    .line 333
    .line 334
    iput-object p1, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->A:Landroid/widget/TextView;

    .line 335
    .line 336
    new-instance p1, Lh5/j;

    .line 337
    .line 338
    invoke-direct {p1}, Lh5/j;-><init>()V

    .line 339
    .line 340
    .line 341
    iput-object p1, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->m:Lh5/j;

    .line 342
    .line 343
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 344
    .line 345
    .line 346
    move-result-object p1

    .line 347
    sget-object v2, Lflix/com/vision/tv/Constant;->b:Ljava/lang/String;

    .line 348
    .line 349
    const-string v2, "fonts/pproduct_sans_rregular.ttf"

    .line 350
    .line 351
    invoke-static {p1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 352
    .line 353
    .line 354
    move-result-object p1

    .line 355
    iput-object p1, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->n:Landroid/graphics/Typeface;

    .line 356
    .line 357
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 358
    .line 359
    .line 360
    move-result-object p1

    .line 361
    const-string v2, "fonts/product_sans_bold.ttf"

    .line 362
    .line 363
    invoke-static {p1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 364
    .line 365
    .line 366
    iget-object p1, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->m:Lh5/j;

    .line 367
    .line 368
    iget-object v2, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->D:Landroid/widget/TextView;

    .line 369
    .line 370
    iget-object v3, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->n:Landroid/graphics/Typeface;

    .line 371
    .line 372
    invoke-virtual {p1, v2, v3}, Lh5/j;->applyFontToView(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 373
    .line 374
    .line 375
    iget-object p1, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->m:Lh5/j;

    .line 376
    .line 377
    iget-object v2, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->t:Landroid/widget/TextView;

    .line 378
    .line 379
    iget-object v3, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->n:Landroid/graphics/Typeface;

    .line 380
    .line 381
    invoke-virtual {p1, v2, v3}, Lh5/j;->applyFontToView(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 382
    .line 383
    .line 384
    iget-object p1, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->m:Lh5/j;

    .line 385
    .line 386
    iget-object v2, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->u:Landroid/widget/TextView;

    .line 387
    .line 388
    iget-object v3, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->n:Landroid/graphics/Typeface;

    .line 389
    .line 390
    invoke-virtual {p1, v2, v3}, Lh5/j;->applyFontToView(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 391
    .line 392
    .line 393
    iget-object p1, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->m:Lh5/j;

    .line 394
    .line 395
    iget-object v2, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->v:Landroid/widget/TextView;

    .line 396
    .line 397
    iget-object v3, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->n:Landroid/graphics/Typeface;

    .line 398
    .line 399
    invoke-virtual {p1, v2, v3}, Lh5/j;->applyFontToView(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 400
    .line 401
    .line 402
    iget-object p1, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->m:Lh5/j;

    .line 403
    .line 404
    iget-object v2, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->w:Landroid/widget/TextView;

    .line 405
    .line 406
    iget-object v3, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->n:Landroid/graphics/Typeface;

    .line 407
    .line 408
    invoke-virtual {p1, v2, v3}, Lh5/j;->applyFontToView(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 409
    .line 410
    .line 411
    iget-object p1, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->m:Lh5/j;

    .line 412
    .line 413
    iget-object v2, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->x:Landroid/widget/TextView;

    .line 414
    .line 415
    iget-object v3, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->n:Landroid/graphics/Typeface;

    .line 416
    .line 417
    invoke-virtual {p1, v2, v3}, Lh5/j;->applyFontToView(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 418
    .line 419
    .line 420
    iget-object p1, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->m:Lh5/j;

    .line 421
    .line 422
    iget-object v2, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->y:Landroid/widget/TextView;

    .line 423
    .line 424
    iget-object v3, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->n:Landroid/graphics/Typeface;

    .line 425
    .line 426
    invoke-virtual {p1, v2, v3}, Lh5/j;->applyFontToView(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 427
    .line 428
    .line 429
    iget-object p1, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->m:Lh5/j;

    .line 430
    .line 431
    iget-object v2, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->z:Landroid/widget/TextView;

    .line 432
    .line 433
    iget-object v3, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->n:Landroid/graphics/Typeface;

    .line 434
    .line 435
    invoke-virtual {p1, v2, v3}, Lh5/j;->applyFontToView(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 436
    .line 437
    .line 438
    iget-object p1, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->m:Lh5/j;

    .line 439
    .line 440
    iget-object v2, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->A:Landroid/widget/TextView;

    .line 441
    .line 442
    iget-object v3, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->n:Landroid/graphics/Typeface;

    .line 443
    .line 444
    invoke-virtual {p1, v2, v3}, Lh5/j;->applyFontToView(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 445
    .line 446
    .line 447
    iget-object p1, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->m:Lh5/j;

    .line 448
    .line 449
    iget-object v2, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->B:Landroid/widget/TextView;

    .line 450
    .line 451
    iget-object v3, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->n:Landroid/graphics/Typeface;

    .line 452
    .line 453
    invoke-virtual {p1, v2, v3}, Lh5/j;->applyFontToView(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 454
    .line 455
    .line 456
    iget-object p1, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->m:Lh5/j;

    .line 457
    .line 458
    iget-object v2, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->C:Landroid/widget/TextView;

    .line 459
    .line 460
    iget-object v3, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->n:Landroid/graphics/Typeface;

    .line 461
    .line 462
    invoke-virtual {p1, v2, v3}, Lh5/j;->applyFontToView(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 463
    .line 464
    .line 465
    sget p1, Lflix/com/vision/R$anim;->slide_in_left:I

    .line 466
    .line 467
    invoke-static {p0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 468
    .line 469
    .line 470
    move-result-object p1

    .line 471
    iput-object p1, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->G:Landroid/view/animation/Animation;

    .line 472
    .line 473
    sget p1, Lflix/com/vision/R$anim;->slide_out_left:I

    .line 474
    .line 475
    invoke-static {p0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 476
    .line 477
    .line 478
    move-result-object p1

    .line 479
    iput-object p1, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->H:Landroid/view/animation/Animation;

    .line 480
    .line 481
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 482
    .line 483
    .line 484
    move-result-object p1

    .line 485
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 486
    .line 487
    const-string v2, "pref_show_adult_zone"

    .line 488
    .line 489
    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 490
    .line 491
    .line 492
    move-result p1

    .line 493
    if-nez p1, :cond_5

    .line 494
    .line 495
    iget-object p1, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->D:Landroid/widget/TextView;

    .line 496
    .line 497
    if-eqz p1, :cond_5

    .line 498
    .line 499
    const/16 v2, 0x8

    .line 500
    .line 501
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 502
    .line 503
    .line 504
    iget-object p1, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->b:Landroid/view/View;

    .line 505
    .line 506
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 507
    .line 508
    .line 509
    :cond_5
    iget-object p1, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->D:Landroid/widget/TextView;

    .line 510
    .line 511
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 512
    .line 513
    .line 514
    iget-object p1, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->C:Landroid/widget/TextView;

    .line 515
    .line 516
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 517
    .line 518
    .line 519
    iget-object p1, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->t:Landroid/widget/TextView;

    .line 520
    .line 521
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 522
    .line 523
    .line 524
    iget-object p1, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->u:Landroid/widget/TextView;

    .line 525
    .line 526
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 527
    .line 528
    .line 529
    iget-object p1, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->v:Landroid/widget/TextView;

    .line 530
    .line 531
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 532
    .line 533
    .line 534
    iget-object p1, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->w:Landroid/widget/TextView;

    .line 535
    .line 536
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 537
    .line 538
    .line 539
    iget-object p1, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->x:Landroid/widget/TextView;

    .line 540
    .line 541
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 542
    .line 543
    .line 544
    iget-object p1, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->y:Landroid/widget/TextView;

    .line 545
    .line 546
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 547
    .line 548
    .line 549
    iget-object p1, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->A:Landroid/widget/TextView;

    .line 550
    .line 551
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 552
    .line 553
    .line 554
    iget-object p1, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->z:Landroid/widget/TextView;

    .line 555
    .line 556
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 557
    .line 558
    .line 559
    iget-object p1, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->B:Landroid/widget/TextView;

    .line 560
    .line 561
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 562
    .line 563
    .line 564
    iget-object p1, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->r:Landroidx/leanback/widget/BrowseFrameLayout;

    .line 565
    .line 566
    new-instance v1, LA4/g;

    .line 567
    .line 568
    invoke-direct {v1, p0, v0}, LA4/g;-><init>(Ljava/lang/Object;I)V

    .line 569
    .line 570
    .line 571
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 572
    .line 573
    .line 574
    iget-object p1, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->D:Landroid/widget/TextView;

    .line 575
    .line 576
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 577
    .line 578
    .line 579
    iget-object p1, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->C:Landroid/widget/TextView;

    .line 580
    .line 581
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 582
    .line 583
    .line 584
    iget-object p1, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->t:Landroid/widget/TextView;

    .line 585
    .line 586
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 587
    .line 588
    .line 589
    iget-object p1, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->u:Landroid/widget/TextView;

    .line 590
    .line 591
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 592
    .line 593
    .line 594
    iget-object p1, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->v:Landroid/widget/TextView;

    .line 595
    .line 596
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 597
    .line 598
    .line 599
    iget-object p1, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->w:Landroid/widget/TextView;

    .line 600
    .line 601
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 602
    .line 603
    .line 604
    iget-object p1, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->x:Landroid/widget/TextView;

    .line 605
    .line 606
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 607
    .line 608
    .line 609
    iget-object p1, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->y:Landroid/widget/TextView;

    .line 610
    .line 611
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 612
    .line 613
    .line 614
    iget-object p1, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->A:Landroid/widget/TextView;

    .line 615
    .line 616
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 617
    .line 618
    .line 619
    iget-object p1, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->z:Landroid/widget/TextView;

    .line 620
    .line 621
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 622
    .line 623
    .line 624
    iget-object p1, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->B:Landroid/widget/TextView;

    .line 625
    .line 626
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 627
    .line 628
    .line 629
    iget-object p1, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->u:Landroid/widget/TextView;

    .line 630
    .line 631
    iput-object p1, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->q:Landroid/view/View;

    .line 632
    .line 633
    invoke-virtual {p1, v0}, Landroid/view/View;->setActivated(Z)V

    .line 634
    .line 635
    .line 636
    new-instance p1, Lflix/com/vision/activities/leanback/fragment/d;

    .line 637
    .line 638
    sget-object v0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain$ContentTypeLB;->b:Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain$ContentTypeLB;

    .line 639
    .line 640
    invoke-direct {p1, p0, v0}, Lflix/com/vision/activities/leanback/fragment/d;-><init>(Lflix/com/vision/activities/leanback/MainActivityLeanback;Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain$ContentTypeLB;)V

    .line 641
    .line 642
    .line 643
    iput-object p1, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->s:Lflix/com/vision/activities/leanback/fragment/d;

    .line 644
    .line 645
    invoke-virtual {p1}, Lflix/com/vision/activities/leanback/fragment/d;->setHome()V

    .line 646
    .line 647
    .line 648
    iget-object p1, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->s:Lflix/com/vision/activities/leanback/fragment/d;

    .line 649
    .line 650
    invoke-virtual {p0, p1}, Lflix/com/vision/activities/leanback/MainActivityLeanback;->d(Landroidx/fragment/app/C;)V

    .line 651
    .line 652
    .line 653
    const-string p1, ""

    .line 654
    .line 655
    :try_start_0
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    .line 656
    .line 657
    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    .line 658
    .line 659
    .line 660
    move-result-object v0

    .line 661
    if-eqz v0, :cond_6

    .line 662
    .line 663
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 664
    .line 665
    .line 666
    move-result-object v0

    .line 667
    new-instance v1, Ljava/lang/StringBuilder;

    .line 668
    .line 669
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 670
    .line 671
    .line 672
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 673
    .line 674
    .line 675
    const-string v0, "/FlixVision.Update"

    .line 676
    .line 677
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 678
    .line 679
    .line 680
    const-string v0, " "

    .line 681
    .line 682
    invoke-virtual {p1, v0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 683
    .line 684
    .line 685
    move-result-object v0

    .line 686
    const-string v2, "."

    .line 687
    .line 688
    invoke-virtual {v0, v2, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 689
    .line 690
    .line 691
    move-result-object p1

    .line 692
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 693
    .line 694
    .line 695
    const-string p1, ".apk"

    .line 696
    .line 697
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 698
    .line 699
    .line 700
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 701
    .line 702
    .line 703
    move-result-object p1

    .line 704
    new-instance v0, Ljava/io/File;

    .line 705
    .line 706
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 707
    .line 708
    .line 709
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 710
    .line 711
    .line 712
    move-result p1

    .line 713
    if-eqz p1, :cond_6

    .line 714
    .line 715
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 716
    .line 717
    .line 718
    return-void

    .line 719
    :catch_0
    move-exception p1

    .line 720
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 721
    .line 722
    .line 723
    :cond_6
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 5

    .line 1
    instance-of v0, p1, Landroid/widget/TextView;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    const-wide/16 v0, 0xc8

    .line 6
    .line 7
    if-eqz p2, :cond_2

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/View;->isActivated()Z

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    const v2, 0x3f8ccccd    # 1.1f

    .line 14
    .line 15
    .line 16
    if-eqz p2, :cond_0

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    invoke-virtual {p0}, Lflix/com/vision/activities/leanback/MainActivityLeanback;->g()Z

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    if-nez p2, :cond_1

    .line 43
    .line 44
    invoke-virtual {p0}, Lflix/com/vision/activities/leanback/MainActivityLeanback;->h()V

    .line 45
    .line 46
    .line 47
    :cond_1
    move-object p2, p1

    .line 48
    check-cast p2, Landroid/widget/TextView;

    .line 49
    .line 50
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    sget v4, Lflix/com/vision/R$color;->black:I

    .line 55
    .line 56
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 61
    .line 62
    .line 63
    sget v3, Lflix/com/vision/R$color;->black:I

    .line 64
    .line 65
    invoke-static {p2, v3}, Lflix/com/vision/activities/leanback/MainActivityLeanback;->j(Landroid/widget/TextView;I)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :cond_2
    move-object p2, p1

    .line 89
    check-cast p2, Landroid/widget/TextView;

    .line 90
    .line 91
    sget v2, Lflix/com/vision/R$color;->white:I

    .line 92
    .line 93
    invoke-static {p2, v2}, Lflix/com/vision/activities/leanback/MainActivityLeanback;->j(Landroid/widget/TextView;I)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    sget v3, Lflix/com/vision/R$color;->color_grey:I

    .line 101
    .line 102
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    const/high16 p2, 0x3f800000    # 1.0f

    .line 114
    .line 115
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 128
    .line 129
    .line 130
    :cond_3
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NonConstantResourceId"
        }
    .end annotation

    .line 1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result p3

    .line 5
    const/4 v0, 0x1

    .line 6
    if-eqz p3, :cond_0

    .line 7
    .line 8
    goto/16 :goto_4

    .line 9
    .line 10
    :cond_0
    const/4 p3, 0x4

    .line 11
    if-ne p2, p3, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Lflix/com/vision/activities/leanback/MainActivityLeanback;->e()V

    .line 14
    .line 15
    .line 16
    return v0

    .line 17
    :cond_1
    const/16 p3, 0x42

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    if-eq p2, p3, :cond_7

    .line 21
    .line 22
    const/16 p3, 0x17

    .line 23
    .line 24
    if-ne p2, p3, :cond_2

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_2
    const/16 p3, 0x52

    .line 28
    .line 29
    if-eq p2, p3, :cond_6

    .line 30
    .line 31
    const/16 p3, 0x15

    .line 32
    .line 33
    if-ne p2, p3, :cond_3

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_3
    const/16 p3, 0x16

    .line 37
    .line 38
    if-ne p2, p3, :cond_5

    .line 39
    .line 40
    instance-of p2, p1, Landroid/widget/TextView;

    .line 41
    .line 42
    if-eqz p2, :cond_5

    .line 43
    .line 44
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->s:Lflix/com/vision/activities/leanback/fragment/d;

    .line 48
    .line 49
    if-eqz p1, :cond_4

    .line 50
    .line 51
    invoke-virtual {p1}, Lflix/com/vision/activities/leanback/fragment/d;->requestFocus1()V

    .line 52
    .line 53
    .line 54
    :cond_4
    invoke-virtual {p0}, Lflix/com/vision/activities/leanback/MainActivityLeanback;->e()V

    .line 55
    .line 56
    .line 57
    return v0

    .line 58
    :cond_5
    return v1

    .line 59
    :cond_6
    :goto_0
    invoke-virtual {p0}, Lflix/com/vision/activities/leanback/MainActivityLeanback;->g()Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-nez p1, :cond_23

    .line 64
    .line 65
    invoke-virtual {p0}, Lflix/com/vision/activities/leanback/MainActivityLeanback;->k()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Lflix/com/vision/activities/leanback/MainActivityLeanback;->h()V

    .line 69
    .line 70
    .line 71
    return v0

    .line 72
    :cond_7
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 73
    .line 74
    .line 75
    move-result p2

    .line 76
    sget p3, Lflix/com/vision/R$id;->button_search:I

    .line 77
    .line 78
    if-ne p2, p3, :cond_a

    .line 79
    .line 80
    invoke-virtual {p0}, Lflix/com/vision/activities/leanback/MainActivityLeanback;->g()Z

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    if-eqz p1, :cond_8

    .line 85
    .line 86
    invoke-virtual {p0}, Lflix/com/vision/activities/leanback/MainActivityLeanback;->e()V

    .line 87
    .line 88
    .line 89
    :cond_8
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 94
    .line 95
    const-string p2, "pref_classic_search"

    .line 96
    .line 97
    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    if-eqz p1, :cond_9

    .line 102
    .line 103
    new-instance p1, Landroid/content/Intent;

    .line 104
    .line 105
    const-class p2, Lflix/com/vision/activities/SearchActivityClassic;

    .line 106
    .line 107
    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 111
    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_9
    new-instance p1, Landroid/content/Intent;

    .line 115
    .line 116
    const-class p2, Lflix/com/vision/activities/SearchActivityTV;

    .line 117
    .line 118
    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 122
    .line 123
    .line 124
    :goto_2
    invoke-virtual {p0}, Lflix/com/vision/activities/leanback/MainActivityLeanback;->l()V

    .line 125
    .line 126
    .line 127
    return v0

    .line 128
    :cond_a
    sget p3, Lflix/com/vision/R$id;->button_adult:I

    .line 129
    .line 130
    if-ne p2, p3, :cond_d

    .line 131
    .line 132
    invoke-virtual {p0}, Lflix/com/vision/activities/leanback/MainActivityLeanback;->g()Z

    .line 133
    .line 134
    .line 135
    move-result p1

    .line 136
    if-eqz p1, :cond_b

    .line 137
    .line 138
    invoke-virtual {p0}, Lflix/com/vision/activities/leanback/MainActivityLeanback;->e()V

    .line 139
    .line 140
    .line 141
    :cond_b
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 146
    .line 147
    const-string p2, "pref_adult_zone_pin_set"

    .line 148
    .line 149
    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 150
    .line 151
    .line 152
    move-result p1

    .line 153
    if-nez p1, :cond_c

    .line 154
    .line 155
    new-instance p1, Landroid/content/Intent;

    .line 156
    .line 157
    const-class p2, Lflix/com/vision/activities/adult/AdultPINSetupActivity;

    .line 158
    .line 159
    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 163
    .line 164
    .line 165
    goto :goto_3

    .line 166
    :cond_c
    new-instance p1, Landroid/content/Intent;

    .line 167
    .line 168
    const-class p2, Lflix/com/vision/activities/adult/AdultZonePINEntryActivity;

    .line 169
    .line 170
    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 174
    .line 175
    .line 176
    :goto_3
    invoke-virtual {p0}, Lflix/com/vision/activities/leanback/MainActivityLeanback;->l()V

    .line 177
    .line 178
    .line 179
    return v0

    .line 180
    :cond_d
    sget p3, Lflix/com/vision/R$id;->button_home:I

    .line 181
    .line 182
    if-ne p2, p3, :cond_10

    .line 183
    .line 184
    iget-object p2, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->p:Ljava/lang/String;

    .line 185
    .line 186
    const-string p3, "home"

    .line 187
    .line 188
    invoke-static {p2, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    move-result p2

    .line 192
    if-eqz p2, :cond_e

    .line 193
    .line 194
    goto/16 :goto_4

    .line 195
    .line 196
    :cond_e
    invoke-virtual {p0}, Lflix/com/vision/activities/leanback/MainActivityLeanback;->g()Z

    .line 197
    .line 198
    .line 199
    move-result p2

    .line 200
    if-eqz p2, :cond_f

    .line 201
    .line 202
    invoke-virtual {p0}, Lflix/com/vision/activities/leanback/MainActivityLeanback;->e()V

    .line 203
    .line 204
    .line 205
    :cond_f
    iget-object p2, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->v:Landroid/widget/TextView;

    .line 206
    .line 207
    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    .line 208
    .line 209
    .line 210
    new-instance p2, Lflix/com/vision/activities/leanback/fragment/d;

    .line 211
    .line 212
    sget-object v2, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain$ContentTypeLB;->b:Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain$ContentTypeLB;

    .line 213
    .line 214
    invoke-direct {p2, p0, v2}, Lflix/com/vision/activities/leanback/fragment/d;-><init>(Lflix/com/vision/activities/leanback/MainActivityLeanback;Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain$ContentTypeLB;)V

    .line 215
    .line 216
    .line 217
    iput-object p2, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->s:Lflix/com/vision/activities/leanback/fragment/d;

    .line 218
    .line 219
    invoke-virtual {p2}, Lflix/com/vision/activities/leanback/fragment/d;->setHome()V

    .line 220
    .line 221
    .line 222
    iget-object p2, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->s:Lflix/com/vision/activities/leanback/fragment/d;

    .line 223
    .line 224
    invoke-virtual {p0, p2}, Lflix/com/vision/activities/leanback/MainActivityLeanback;->d(Landroidx/fragment/app/C;)V

    .line 225
    .line 226
    .line 227
    iget-object p2, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->q:Landroid/view/View;

    .line 228
    .line 229
    invoke-virtual {p2, v1}, Landroid/view/View;->setActivated(Z)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {p1, v0}, Landroid/view/View;->setActivated(Z)V

    .line 233
    .line 234
    .line 235
    iput-object p1, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->q:Landroid/view/View;

    .line 236
    .line 237
    iput-object p3, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->p:Ljava/lang/String;

    .line 238
    .line 239
    invoke-virtual {p0}, Lflix/com/vision/activities/leanback/MainActivityLeanback;->l()V

    .line 240
    .line 241
    .line 242
    invoke-virtual {p0, v1}, Lflix/com/vision/activities/leanback/MainActivityLeanback;->f(Z)V

    .line 243
    .line 244
    .line 245
    return v0

    .line 246
    :cond_10
    sget p3, Lflix/com/vision/R$id;->button_movies:I

    .line 247
    .line 248
    const-string v2, "content_type"

    .line 249
    .line 250
    if-ne p2, p3, :cond_13

    .line 251
    .line 252
    iget-object p2, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->p:Ljava/lang/String;

    .line 253
    .line 254
    const-string p3, "movie"

    .line 255
    .line 256
    invoke-static {p2, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 257
    .line 258
    .line 259
    move-result p2

    .line 260
    if-eqz p2, :cond_11

    .line 261
    .line 262
    goto/16 :goto_4

    .line 263
    .line 264
    :cond_11
    invoke-virtual {p0}, Lflix/com/vision/activities/leanback/MainActivityLeanback;->g()Z

    .line 265
    .line 266
    .line 267
    move-result p2

    .line 268
    if-eqz p2, :cond_12

    .line 269
    .line 270
    invoke-virtual {p0}, Lflix/com/vision/activities/leanback/MainActivityLeanback;->e()V

    .line 271
    .line 272
    .line 273
    :cond_12
    iget-object p2, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->v:Landroid/widget/TextView;

    .line 274
    .line 275
    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    .line 276
    .line 277
    .line 278
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 279
    .line 280
    .line 281
    move-result-object p2

    .line 282
    iget-object p2, p2, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 283
    .line 284
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 285
    .line 286
    .line 287
    move-result-object p2

    .line 288
    invoke-interface {p2, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 289
    .line 290
    .line 291
    move-result-object p2

    .line 292
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 293
    .line 294
    .line 295
    new-instance p2, Lflix/com/vision/activities/leanback/fragment/d;

    .line 296
    .line 297
    sget-object v2, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain$ContentTypeLB;->e:Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain$ContentTypeLB;

    .line 298
    .line 299
    invoke-direct {p2, p0, v2}, Lflix/com/vision/activities/leanback/fragment/d;-><init>(Lflix/com/vision/activities/leanback/MainActivityLeanback;Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain$ContentTypeLB;)V

    .line 300
    .line 301
    .line 302
    iput-object p2, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->s:Lflix/com/vision/activities/leanback/fragment/d;

    .line 303
    .line 304
    invoke-virtual {p0, p2}, Lflix/com/vision/activities/leanback/MainActivityLeanback;->d(Landroidx/fragment/app/C;)V

    .line 305
    .line 306
    .line 307
    iget-object p2, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->q:Landroid/view/View;

    .line 308
    .line 309
    invoke-virtual {p2, v1}, Landroid/view/View;->setActivated(Z)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {p1, v0}, Landroid/view/View;->setActivated(Z)V

    .line 313
    .line 314
    .line 315
    iput-object p1, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->q:Landroid/view/View;

    .line 316
    .line 317
    iput-object p3, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->p:Ljava/lang/String;

    .line 318
    .line 319
    invoke-virtual {p0}, Lflix/com/vision/activities/leanback/MainActivityLeanback;->l()V

    .line 320
    .line 321
    .line 322
    invoke-virtual {p0, v1}, Lflix/com/vision/activities/leanback/MainActivityLeanback;->f(Z)V

    .line 323
    .line 324
    .line 325
    return v0

    .line 326
    :cond_13
    sget p3, Lflix/com/vision/R$id;->button_tv_series:I

    .line 327
    .line 328
    if-ne p2, p3, :cond_16

    .line 329
    .line 330
    iget-object p2, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->p:Ljava/lang/String;

    .line 331
    .line 332
    const-string p3, "tv"

    .line 333
    .line 334
    invoke-static {p2, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 335
    .line 336
    .line 337
    move-result p2

    .line 338
    if-eqz p2, :cond_14

    .line 339
    .line 340
    goto/16 :goto_4

    .line 341
    .line 342
    :cond_14
    invoke-virtual {p0}, Lflix/com/vision/activities/leanback/MainActivityLeanback;->g()Z

    .line 343
    .line 344
    .line 345
    move-result p2

    .line 346
    if-eqz p2, :cond_15

    .line 347
    .line 348
    invoke-virtual {p0}, Lflix/com/vision/activities/leanback/MainActivityLeanback;->e()V

    .line 349
    .line 350
    .line 351
    :cond_15
    iget-object p2, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->w:Landroid/widget/TextView;

    .line 352
    .line 353
    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    .line 354
    .line 355
    .line 356
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 357
    .line 358
    .line 359
    move-result-object p2

    .line 360
    iget-object p2, p2, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 361
    .line 362
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 363
    .line 364
    .line 365
    move-result-object p2

    .line 366
    invoke-interface {p2, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 367
    .line 368
    .line 369
    move-result-object p2

    .line 370
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 371
    .line 372
    .line 373
    new-instance p2, Lflix/com/vision/activities/leanback/fragment/d;

    .line 374
    .line 375
    sget-object v2, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain$ContentTypeLB;->f:Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain$ContentTypeLB;

    .line 376
    .line 377
    invoke-direct {p2, p0, v2}, Lflix/com/vision/activities/leanback/fragment/d;-><init>(Lflix/com/vision/activities/leanback/MainActivityLeanback;Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain$ContentTypeLB;)V

    .line 378
    .line 379
    .line 380
    iput-object p2, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->s:Lflix/com/vision/activities/leanback/fragment/d;

    .line 381
    .line 382
    invoke-virtual {p0, p2}, Lflix/com/vision/activities/leanback/MainActivityLeanback;->d(Landroidx/fragment/app/C;)V

    .line 383
    .line 384
    .line 385
    iget-object p2, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->q:Landroid/view/View;

    .line 386
    .line 387
    invoke-virtual {p2, v1}, Landroid/view/View;->setActivated(Z)V

    .line 388
    .line 389
    .line 390
    invoke-virtual {p1, v0}, Landroid/view/View;->setActivated(Z)V

    .line 391
    .line 392
    .line 393
    iput-object p1, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->q:Landroid/view/View;

    .line 394
    .line 395
    iput-object p3, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->p:Ljava/lang/String;

    .line 396
    .line 397
    invoke-virtual {p0}, Lflix/com/vision/activities/leanback/MainActivityLeanback;->l()V

    .line 398
    .line 399
    .line 400
    invoke-virtual {p0, v1}, Lflix/com/vision/activities/leanback/MainActivityLeanback;->f(Z)V

    .line 401
    .line 402
    .line 403
    return v0

    .line 404
    :cond_16
    sget p1, Lflix/com/vision/R$id;->button_settings:I

    .line 405
    .line 406
    if-ne p2, p1, :cond_18

    .line 407
    .line 408
    invoke-virtual {p0}, Lflix/com/vision/activities/leanback/MainActivityLeanback;->g()Z

    .line 409
    .line 410
    .line 411
    move-result p1

    .line 412
    if-eqz p1, :cond_17

    .line 413
    .line 414
    invoke-virtual {p0}, Lflix/com/vision/activities/leanback/MainActivityLeanback;->e()V

    .line 415
    .line 416
    .line 417
    :cond_17
    new-instance p1, Landroid/content/Intent;

    .line 418
    .line 419
    const-class p2, Lflix/com/vision/activities/SettingsActivity;

    .line 420
    .line 421
    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 422
    .line 423
    .line 424
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 425
    .line 426
    .line 427
    return v0

    .line 428
    :cond_18
    sget p1, Lflix/com/vision/R$id;->button_live_tv:I

    .line 429
    .line 430
    if-ne p2, p1, :cond_1a

    .line 431
    .line 432
    invoke-virtual {p0}, Lflix/com/vision/activities/leanback/MainActivityLeanback;->g()Z

    .line 433
    .line 434
    .line 435
    move-result p1

    .line 436
    if-eqz p1, :cond_19

    .line 437
    .line 438
    invoke-virtual {p0}, Lflix/com/vision/activities/leanback/MainActivityLeanback;->e()V

    .line 439
    .line 440
    .line 441
    :cond_19
    new-instance p1, Landroid/content/Intent;

    .line 442
    .line 443
    const-class p2, Lflix/com/vision/tv/TVCategoriesActivity;

    .line 444
    .line 445
    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 446
    .line 447
    .line 448
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 449
    .line 450
    .line 451
    return v0

    .line 452
    :cond_1a
    sget p1, Lflix/com/vision/R$id;->button_genres:I

    .line 453
    .line 454
    if-ne p2, p1, :cond_1c

    .line 455
    .line 456
    iget-object p1, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->p:Ljava/lang/String;

    .line 457
    .line 458
    const-string p2, "genres"

    .line 459
    .line 460
    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 461
    .line 462
    .line 463
    move-result p1

    .line 464
    if-eqz p1, :cond_1b

    .line 465
    .line 466
    goto/16 :goto_4

    .line 467
    .line 468
    :cond_1b
    new-instance p1, Landroid/content/Intent;

    .line 469
    .line 470
    const-class p2, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;

    .line 471
    .line 472
    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 473
    .line 474
    .line 475
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 476
    .line 477
    .line 478
    return v0

    .line 479
    :cond_1c
    sget p1, Lflix/com/vision/R$id;->button_favorites:I

    .line 480
    .line 481
    if-ne p2, p1, :cond_1f

    .line 482
    .line 483
    iget-object p1, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->p:Ljava/lang/String;

    .line 484
    .line 485
    const-string p2, "favorites"

    .line 486
    .line 487
    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 488
    .line 489
    .line 490
    move-result p1

    .line 491
    if-eqz p1, :cond_1d

    .line 492
    .line 493
    goto/16 :goto_4

    .line 494
    .line 495
    :cond_1d
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 496
    .line 497
    .line 498
    move-result-object p1

    .line 499
    iget-object p1, p1, Lflix/com/vision/App;->r:LP4/e;

    .line 500
    .line 501
    invoke-virtual {p1}, LP4/e;->getFavoritesMoviesFromDb()Ljava/util/ArrayList;

    .line 502
    .line 503
    .line 504
    move-result-object p1

    .line 505
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 506
    .line 507
    .line 508
    move-result p1

    .line 509
    if-nez p1, :cond_1e

    .line 510
    .line 511
    const-string p1, "No Item in your Favorites"

    .line 512
    .line 513
    invoke-static {p0, p1, v1}, Lh5/i;->makeToast(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 514
    .line 515
    .line 516
    return v0

    .line 517
    :cond_1e
    new-instance p1, Landroid/content/Intent;

    .line 518
    .line 519
    const-class p2, Lflix/com/vision/activities/FavoritesAcvivity;

    .line 520
    .line 521
    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 522
    .line 523
    .line 524
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 525
    .line 526
    .line 527
    return v0

    .line 528
    :cond_1f
    sget p1, Lflix/com/vision/R$id;->button_more:I

    .line 529
    .line 530
    const-string p3, ""

    .line 531
    .line 532
    if-ne p2, p1, :cond_21

    .line 533
    .line 534
    invoke-virtual {p0}, Lflix/com/vision/activities/leanback/MainActivityLeanback;->g()Z

    .line 535
    .line 536
    .line 537
    move-result p1

    .line 538
    if-eqz p1, :cond_20

    .line 539
    .line 540
    invoke-virtual {p0}, Lflix/com/vision/activities/leanback/MainActivityLeanback;->e()V

    .line 541
    .line 542
    .line 543
    :cond_20
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 544
    .line 545
    .line 546
    move-result-object p1

    .line 547
    invoke-static {p0, v0}, LQ4/d;->newInstance(Landroid/app/Activity;Z)LQ4/d;

    .line 548
    .line 549
    .line 550
    move-result-object p2

    .line 551
    new-instance v1, LA4/j;

    .line 552
    .line 553
    const/4 v2, 0x0

    .line 554
    invoke-direct {v1, p0, v2}, LA4/j;-><init>(Lflix/com/vision/activities/leanback/MainActivityLeanback;I)V

    .line 555
    .line 556
    .line 557
    invoke-virtual {p2, v1}, LQ4/d;->setButton_check_update_listener(Landroid/view/View$OnClickListener;)V

    .line 558
    .line 559
    .line 560
    new-instance v1, LA4/j;

    .line 561
    .line 562
    const/4 v2, 0x3

    .line 563
    invoke-direct {v1, p0, v2}, LA4/j;-><init>(Lflix/com/vision/activities/leanback/MainActivityLeanback;I)V

    .line 564
    .line 565
    .line 566
    invoke-virtual {p2, v1}, LQ4/d;->setListener_watched(Landroid/view/View$OnClickListener;)V

    .line 567
    .line 568
    .line 569
    new-instance v1, LA4/j;

    .line 570
    .line 571
    const/4 v2, 0x6

    .line 572
    invoke-direct {v1, p0, v2}, LA4/j;-><init>(Lflix/com/vision/activities/leanback/MainActivityLeanback;I)V

    .line 573
    .line 574
    .line 575
    invoke-virtual {p2, v1}, LQ4/d;->setButton_contact_us_listener(Landroid/view/View$OnClickListener;)V

    .line 576
    .line 577
    .line 578
    new-instance v1, LA4/j;

    .line 579
    .line 580
    const/4 v2, 0x7

    .line 581
    invoke-direct {v1, p0, v2}, LA4/j;-><init>(Lflix/com/vision/activities/leanback/MainActivityLeanback;I)V

    .line 582
    .line 583
    .line 584
    invoke-virtual {p2, v1}, LQ4/d;->setTrakt_listener(Landroid/view/View$OnClickListener;)V

    .line 585
    .line 586
    .line 587
    new-instance v1, LA4/j;

    .line 588
    .line 589
    const/16 v2, 0x8

    .line 590
    .line 591
    invoke-direct {v1, p0, v2}, LA4/j;-><init>(Lflix/com/vision/activities/leanback/MainActivityLeanback;I)V

    .line 592
    .line 593
    .line 594
    invoke-virtual {p2, v1}, LQ4/d;->setListener_login(Landroid/view/View$OnClickListener;)V

    .line 595
    .line 596
    .line 597
    new-instance v1, LA4/j;

    .line 598
    .line 599
    const/16 v2, 0x9

    .line 600
    .line 601
    invoke-direct {v1, p0, v2}, LA4/j;-><init>(Lflix/com/vision/activities/leanback/MainActivityLeanback;I)V

    .line 602
    .line 603
    .line 604
    invoke-virtual {p2, v1}, LQ4/d;->setImport_Playlist_listener(Landroid/view/View$OnClickListener;)V

    .line 605
    .line 606
    .line 607
    new-instance v1, LA4/j;

    .line 608
    .line 609
    const/16 v2, 0xa

    .line 610
    .line 611
    invoke-direct {v1, p0, v2}, LA4/j;-><init>(Lflix/com/vision/activities/leanback/MainActivityLeanback;I)V

    .line 612
    .line 613
    .line 614
    invoke-virtual {p2, v1}, LQ4/d;->setMyplaylist_listener(Landroid/view/View$OnClickListener;)V

    .line 615
    .line 616
    .line 617
    invoke-virtual {p2}, LQ4/d;->setMenuMode()V

    .line 618
    .line 619
    .line 620
    :try_start_0
    invoke-virtual {p2, p1, p3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 621
    .line 622
    .line 623
    return v0

    .line 624
    :catch_0
    move-exception p1

    .line 625
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 626
    .line 627
    .line 628
    goto :goto_4

    .line 629
    :cond_21
    sget p1, Lflix/com/vision/R$id;->button_exit:I

    .line 630
    .line 631
    if-ne p2, p1, :cond_23

    .line 632
    .line 633
    invoke-virtual {p0}, Lflix/com/vision/activities/leanback/MainActivityLeanback;->g()Z

    .line 634
    .line 635
    .line 636
    move-result p1

    .line 637
    if-eqz p1, :cond_22

    .line 638
    .line 639
    invoke-virtual {p0}, Lflix/com/vision/activities/leanback/MainActivityLeanback;->e()V

    .line 640
    .line 641
    .line 642
    :cond_22
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 643
    .line 644
    .line 645
    move-result-object p1

    .line 646
    invoke-static {p0, v0}, LQ4/d;->newInstance(Landroid/app/Activity;Z)LQ4/d;

    .line 647
    .line 648
    .line 649
    move-result-object p2

    .line 650
    const-string v1, "Exit"

    .line 651
    .line 652
    invoke-virtual {p2, v1}, LQ4/d;->setTitle(Ljava/lang/String;)V

    .line 653
    .line 654
    .line 655
    const-string v1, "Do you really want to close the App ?"

    .line 656
    .line 657
    invoke-virtual {p2, v1}, LQ4/d;->setMessage(Ljava/lang/String;)V

    .line 658
    .line 659
    .line 660
    new-instance v1, LA4/q;

    .line 661
    .line 662
    const/4 v2, 0x0

    .line 663
    invoke-direct {v1, v2}, LA4/q;-><init>(I)V

    .line 664
    .line 665
    .line 666
    const-string v2, "CANCEL"

    .line 667
    .line 668
    invoke-virtual {p2, v2, v1}, LQ4/d;->setButton1(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 669
    .line 670
    .line 671
    new-instance v1, LA4/j;

    .line 672
    .line 673
    const/16 v2, 0xb

    .line 674
    .line 675
    invoke-direct {v1, p0, v2}, LA4/j;-><init>(Lflix/com/vision/activities/leanback/MainActivityLeanback;I)V

    .line 676
    .line 677
    .line 678
    const-string v2, "YES"

    .line 679
    .line 680
    invoke-virtual {p2, v2, v1}, LQ4/d;->setButton2(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 681
    .line 682
    .line 683
    :try_start_1
    invoke-virtual {p2, p1, p3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 684
    .line 685
    .line 686
    return v0

    .line 687
    :catch_1
    move-exception p1

    .line 688
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 689
    .line 690
    .line 691
    :cond_23
    :goto_4
    return v0
.end method

.method public onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/H;->onPause()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->E:Landroid/os/Handler;

    .line 5
    .line 6
    iget-object v1, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->F:LA4/k;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/H;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lflix/com/vision/activities/leanback/MainActivityLeanback;->resetInactivityTimer()V

    .line 5
    .line 6
    .line 7
    iget-boolean v0, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->e:Z

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-boolean v0, v0, Lflix/com/vision/App;->e:Z

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->s:Lflix/com/vision/activities/leanback/fragment/d;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {v0}, Lflix/com/vision/activities/leanback/fragment/d;->reloadWatchedHistory()V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void

    .line 27
    :cond_1
    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->e:Z

    .line 29
    .line 30
    iget-object v1, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->D:Landroid/widget/TextView;

    .line 31
    .line 32
    if-eqz v1, :cond_3

    .line 33
    .line 34
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    iget-object v1, v1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 39
    .line 40
    const-string v2, "pref_show_adult_zone"

    .line 41
    .line 42
    const/4 v3, 0x1

    .line 43
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    const/16 v2, 0x8

    .line 48
    .line 49
    if-nez v1, :cond_2

    .line 50
    .line 51
    iget-object v1, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->D:Landroid/widget/TextView;

    .line 52
    .line 53
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 54
    .line 55
    .line 56
    iget-object v1, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->b:Landroid/view/View;

    .line 57
    .line 58
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    iget-object v1, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->D:Landroid/widget/TextView;

    .line 63
    .line 64
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->b:Landroid/view/View;

    .line 68
    .line 69
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 70
    .line 71
    .line 72
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lflix/com/vision/activities/leanback/MainActivityLeanback;->requestAndDisplayAd()V

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/H;->onStop()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->E:Landroid/os/Handler;

    .line 5
    .line 6
    iget-object v1, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->F:LA4/k;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public openMovieintent(Lflix/com/vision/models/Movie;)V
    .locals 3

    .line 1
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 6
    .line 7
    sget-object v1, Lflix/com/vision/tv/Constant;->b:Ljava/lang/String;

    .line 8
    .line 9
    const-string v1, "update_available"

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 23
    .line 24
    const-string v1, "mandatory_update"

    .line 25
    .line 26
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const/4 v1, 0x1

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    const/4 p1, 0x0

    .line 34
    invoke-virtual {p0, v1, p1}, Lflix/com/vision/activities/leanback/MainActivityLeanback;->askToUpdateIfAny(ZLflix/com/vision/models/Movie;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    invoke-virtual {p0, v1, p1}, Lflix/com/vision/activities/leanback/MainActivityLeanback;->askToUpdateIfAny(ZLflix/com/vision/models/Movie;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_1
    invoke-virtual {p0, p1}, Lflix/com/vision/activities/leanback/MainActivityLeanback;->i(Lflix/com/vision/models/Movie;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public requestAndDisplayAd()V
    .locals 0

    return-void
.end method

.method public resetInactivityTimer()V
    .locals 4

    .line 1
    iget-object v0, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->E:Landroid/os/Handler;

    .line 2
    .line 3
    iget-object v1, p0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->F:LA4/k;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    const-wide/16 v2, 0x7530

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method
