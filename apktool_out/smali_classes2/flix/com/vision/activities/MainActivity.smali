.class public Lflix/com/vision/activities/MainActivity;
.super Lflix/com/vision/activities/base/a;
.source "SourceFile"

# interfaces
.implements LA3/h;
.implements LU4/j;
.implements Lv1/n;
.implements Ld4/a;


# static fields
.field public static final synthetic T:I


# instance fields
.field public A:Ljava/util/ArrayList;

.field public B:LC4/P;

.field public C:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

.field public D:I

.field public E:Landroidx/drawerlayout/widget/DrawerLayout;

.field public F:Ly4/g0;

.field public G:Lh5/j;

.field public H:Landroid/graphics/Typeface;

.field public I:Landroid/graphics/Typeface;

.field public J:Ljava/lang/String;

.field public final K:I

.field public L:Landroid/view/Menu;

.field public M:Z

.field public N:LT4/j;

.field public O:Lio/reactivex/disposables/Disposable;

.field public P:I

.field public Q:Z

.field public R:I

.field public S:Z

.field public final b:Ljava/util/ArrayList;

.field public final e:Ljava/util/ArrayList;

.field public f:LC4/o0;

.field public j:LC4/S;

.field public m:Landroidx/recyclerview/widget/RecyclerView;

.field public n:Landroidx/recyclerview/widget/RecyclerView;

.field public p:Landroidx/mediarouter/app/MediaRouteButton;

.field public q:Lcom/google/android/material/tabs/TabLayout;

.field public r:Lio/reactivex/disposables/Disposable;

.field public final s:Z

.field public t:Landroid/widget/RelativeLayout;

.field public u:Z

.field public v:Landroid/view/MenuItem;

.field public w:LA3/k;

.field public final x:I

.field public y:Landroidx/appcompat/widget/Toolbar;

.field public z:Lflix/com/vision/materialsearchview/MaterialSearchView;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lflix/com/vision/activities/base/a;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lflix/com/vision/activities/MainActivity;->b:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lflix/com/vision/activities/MainActivity;->e:Ljava/util/ArrayList;

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lflix/com/vision/activities/MainActivity;->s:Z

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    iput-boolean v1, p0, Lflix/com/vision/activities/MainActivity;->u:Z

    .line 23
    .line 24
    const/16 v2, 0xc8

    .line 25
    .line 26
    iput v2, p0, Lflix/com/vision/activities/MainActivity;->x:I

    .line 27
    .line 28
    iput v0, p0, Lflix/com/vision/activities/MainActivity;->D:I

    .line 29
    .line 30
    const-string v2, "IN THEATER"

    .line 31
    .line 32
    iput-object v2, p0, Lflix/com/vision/activities/MainActivity;->J:Ljava/lang/String;

    .line 33
    .line 34
    iput v0, p0, Lflix/com/vision/activities/MainActivity;->K:I

    .line 35
    .line 36
    iput-boolean v1, p0, Lflix/com/vision/activities/MainActivity;->M:Z

    .line 37
    .line 38
    iput-boolean v1, p0, Lflix/com/vision/activities/MainActivity;->Q:Z

    .line 39
    .line 40
    iput v1, p0, Lflix/com/vision/activities/MainActivity;->R:I

    .line 41
    .line 42
    iput-boolean v1, p0, Lflix/com/vision/activities/MainActivity;->S:Z

    .line 43
    .line 44
    return-void
.end method

.method public static e(Lflix/com/vision/activities/MainActivity;LJ3/h;)V
    .locals 4

    .line 1
    iget v0, p0, Lflix/com/vision/activities/MainActivity;->K:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-le v0, v1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 15
    .line 16
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v2, "genre"

    .line 21
    .line 22
    const-string v3, ""

    .line 23
    .line 24
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 29
    .line 30
    .line 31
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 36
    .line 37
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const-string v2, "year"

    .line 42
    .line 43
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lflix/com/vision/activities/MainActivity;->A:Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lflix/com/vision/activities/MainActivity;->B:LC4/P;

    .line 56
    .line 57
    invoke-virtual {v0}, Lm1/V;->notifyDataSetChanged()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, LJ3/h;->getPosition()I

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    iput p1, p0, Lflix/com/vision/activities/MainActivity;->R:I

    .line 65
    .line 66
    iput v1, p0, Lflix/com/vision/activities/MainActivity;->D:I

    .line 67
    .line 68
    invoke-virtual {p0}, Lflix/com/vision/activities/MainActivity;->m()V

    .line 69
    .line 70
    .line 71
    iget p1, p0, Lflix/com/vision/activities/MainActivity;->D:I

    .line 72
    .line 73
    invoke-virtual {p0, p1}, Lflix/com/vision/activities/MainActivity;->g(I)V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method public static resetFilter()V
    .locals 2

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
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "year"

    .line 12
    .line 13
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 14
    .line 15
    .line 16
    const-string v1, "year_index"

    .line 17
    .line 18
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 19
    .line 20
    .line 21
    const-string v1, "genre_index_genre"

    .line 22
    .line 23
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 24
    .line 25
    .line 26
    const-string v1, "network_index"

    .line 27
    .line 28
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 29
    .line 30
    .line 31
    const-string v1, "content_type"

    .line 32
    .line 33
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 34
    .line 35
    .line 36
    const-string v1, "sort_by_index"

    .line 37
    .line 38
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 39
    .line 40
    .line 41
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 42
    .line 43
    .line 44
    return-void
.end method


# virtual methods
.method public final askToUpdateIfAny(ZLflix/com/vision/models/Movie;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, ""

    .line 3
    .line 4
    :try_start_0
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    iget-object v2, v2, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 9
    .line 10
    sget-object v3, Lflix/com/vision/tv/Constant;->b:Ljava/lang/String;

    .line 11
    .line 12
    const-string v3, "update_available"

    .line 13
    .line 14
    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    iget-object v2, v2, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 25
    .line 26
    const-string v3, "update_url"

    .line 27
    .line 28
    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    const/4 v3, 0x5

    .line 37
    if-le v2, v3, :cond_0

    .line 38
    .line 39
    invoke-static {p0, v0}, LQ4/d;->newInstance(Landroid/app/Activity;Z)LQ4/d;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    sget v2, Lflix/com/vision/R$string;->later_label:I

    .line 44
    .line 45
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    new-instance v3, Ly4/X;

    .line 54
    .line 55
    const/4 v4, 0x2

    .line 56
    invoke-direct {v3, p0, p1, p2, v4}, Ly4/X;-><init>(Lflix/com/vision/activities/MainActivity;LQ4/d;Lflix/com/vision/models/Movie;I)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v2, v3}, LQ4/d;->setButton1(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 60
    .line 61
    .line 62
    sget v2, Lflix/com/vision/R$string;->download_update_label:I

    .line 63
    .line 64
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    new-instance v3, Ly4/X;

    .line 69
    .line 70
    invoke-direct {v3, p0, p1, p2, v0}, Ly4/X;-><init>(Lflix/com/vision/activities/MainActivity;LQ4/d;Lflix/com/vision/models/Movie;I)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v2, v3}, LQ4/d;->setButton2(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

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
    const-string v2, "update_message"

    .line 97
    .line 98
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

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
    const-string v2, "update_version_name"

    .line 147
    .line 148
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

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
    invoke-virtual {p1, p2, v1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

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
    const/4 v0, 0x1

    .line 179
    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    .line 185
    .line 186
    :catch_0
    :cond_1
    return-void
.end method

.method public extractDominantColor(I)V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-boolean v1, p0, Lflix/com/vision/activities/MainActivity;->Q:Z

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    new-instance v1, Landroid/animation/ArgbEvaluator;

    .line 8
    .line 9
    invoke-direct {v1}, Landroid/animation/ArgbEvaluator;-><init>()V

    .line 10
    .line 11
    .line 12
    iget v2, p0, Lflix/com/vision/activities/MainActivity;->P:I

    .line 13
    .line 14
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    const/4 v4, 0x2

    .line 23
    new-array v4, v4, [Ljava/lang/Object;

    .line 24
    .line 25
    const/4 v5, 0x0

    .line 26
    aput-object v2, v4, v5

    .line 27
    .line 28
    aput-object v3, v4, v0

    .line 29
    .line 30
    invoke-static {v1, v4}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const-wide/16 v2, 0x7d0

    .line 35
    .line 36
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 37
    .line 38
    .line 39
    new-instance v2, LA3/a;

    .line 40
    .line 41
    const/16 v3, 0xf

    .line 42
    .line 43
    invoke-direct {v2, p0, v3}, LA3/a;-><init>(Ljava/lang/Object;I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 47
    .line 48
    .line 49
    new-instance v2, Ly4/f0;

    .line 50
    .line 51
    invoke-direct {v2, p0}, Ly4/f0;-><init>(Lflix/com/vision/activities/MainActivity;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 58
    .line 59
    .line 60
    iput p1, p0, Lflix/com/vision/activities/MainActivity;->P:I

    .line 61
    .line 62
    iput-boolean v0, p0, Lflix/com/vision/activities/MainActivity;->Q:Z

    .line 63
    .line 64
    return-void
.end method

.method public final f()V
    .locals 4

    .line 1
    iget-object v0, p0, Lflix/com/vision/activities/MainActivity;->E:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 2
    .line 3
    const v1, 0x800003

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerOpen(I)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v2, 0x1

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lflix/com/vision/activities/MainActivity;->E:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(IZ)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iget-object v0, p0, Lflix/com/vision/activities/MainActivity;->z:Lflix/com/vision/materialsearchview/MaterialSearchView;

    .line 20
    .line 21
    invoke-virtual {v0}, Lflix/com/vision/materialsearchview/MaterialSearchView;->isOpen()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Lflix/com/vision/activities/MainActivity;->z:Lflix/com/vision/materialsearchview/MaterialSearchView;

    .line 28
    .line 29
    invoke-virtual {v0}, Lflix/com/vision/materialsearchview/MaterialSearchView;->closeSearch()V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    iget-boolean v0, p0, Lflix/com/vision/activities/MainActivity;->M:Z

    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    iput-boolean v1, p0, Lflix/com/vision/activities/MainActivity;->M:Z

    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-static {p0, v2}, LQ4/d;->newInstance(Landroid/app/Activity;Z)LQ4/d;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    const-string v2, "Exit"

    .line 49
    .line 50
    invoke-virtual {v1, v2}, LQ4/d;->setTitle(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const-string v2, "Do you really want to close the App ?"

    .line 54
    .line 55
    invoke-virtual {v1, v2}, LQ4/d;->setMessage(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    new-instance v2, LA4/q;

    .line 59
    .line 60
    const/4 v3, 0x7

    .line 61
    invoke-direct {v2, v3}, LA4/q;-><init>(I)V

    .line 62
    .line 63
    .line 64
    const-string v3, "CANCEL"

    .line 65
    .line 66
    invoke-virtual {v1, v3, v2}, LQ4/d;->setButton1(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 67
    .line 68
    .line 69
    new-instance v2, Ly4/d0;

    .line 70
    .line 71
    const/4 v3, 0x0

    .line 72
    invoke-direct {v2, p0, v3}, Ly4/d0;-><init>(Lflix/com/vision/activities/MainActivity;I)V

    .line 73
    .line 74
    .line 75
    const-string v3, "YES"

    .line 76
    .line 77
    invoke-virtual {v1, v3, v2}, LQ4/d;->setButton2(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 78
    .line 79
    .line 80
    :try_start_0
    const-string v2, ""

    .line 81
    .line 82
    invoke-virtual {v1, v0, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :catch_0
    move-exception v0

    .line 87
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :cond_2
    iget-object v0, p0, Lflix/com/vision/activities/MainActivity;->A:Ljava/util/ArrayList;

    .line 92
    .line 93
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    const/16 v3, 0xc8

    .line 98
    .line 99
    if-ge v0, v3, :cond_3

    .line 100
    .line 101
    iget-object v0, p0, Lflix/com/vision/activities/MainActivity;->C:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

    .line 102
    .line 103
    invoke-virtual {v0}, Lcom/malinskiy/superrecyclerview/SuperRecyclerView;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_3
    iget-object v0, p0, Lflix/com/vision/activities/MainActivity;->C:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

    .line 112
    .line 113
    invoke-virtual {v0}, Lcom/malinskiy/superrecyclerview/SuperRecyclerView;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 118
    .line 119
    .line 120
    :goto_0
    iput-boolean v2, p0, Lflix/com/vision/activities/MainActivity;->M:Z

    .line 121
    .line 122
    iget-object v0, p0, Lflix/com/vision/activities/MainActivity;->y:Landroidx/appcompat/widget/Toolbar;

    .line 123
    .line 124
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 125
    .line 126
    .line 127
    iget-object v0, p0, Lflix/com/vision/activities/MainActivity;->C:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

    .line 128
    .line 129
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 130
    .line 131
    .line 132
    new-instance v0, Landroid/os/Handler;

    .line 133
    .line 134
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 135
    .line 136
    .line 137
    new-instance v1, Ly4/a0;

    .line 138
    .line 139
    const/4 v2, 0x7

    .line 140
    invoke-direct {v1, p0, v2}, Ly4/a0;-><init>(Lflix/com/vision/activities/MainActivity;I)V

    .line 141
    .line 142
    .line 143
    const-wide/16 v2, 0x7d0

    .line 144
    .line 145
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 146
    .line 147
    .line 148
    return-void
.end method

.method public favoriteDeleted(I)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lflix/com/vision/activities/MainActivity;->A:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    :catch_0
    iget-object v0, p0, Lflix/com/vision/activities/MainActivity;->A:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    iget-object v0, p0, Lflix/com/vision/activities/MainActivity;->B:LC4/P;

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lm1/V;->notifyItemRemoved(I)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final g(I)V
    .locals 11

    .line 1
    iget-object v0, p0, Lflix/com/vision/activities/MainActivity;->C:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

    .line 2
    .line 3
    const/16 v1, 0x14

    .line 4
    .line 5
    invoke-virtual {v0, p0, v1}, Lcom/malinskiy/superrecyclerview/SuperRecyclerView;->setupMoreListener(Ld4/a;I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lflix/com/vision/activities/MainActivity;->r:Lio/reactivex/disposables/Disposable;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 20
    .line 21
    const-string v1, "content_type"

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 25
    .line 26
    .line 27
    move-result v6

    .line 28
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 33
    .line 34
    const-string v3, "year_index"

    .line 35
    .line 36
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    const-string v4, "sort_by_index"

    .line 41
    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 49
    .line 50
    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-nez v0, :cond_6

    .line 55
    .line 56
    :cond_1
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 61
    .line 62
    const-string v3, "genre_index_genre"

    .line 63
    .line 64
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_2

    .line 69
    .line 70
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 75
    .line 76
    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-nez v0, :cond_6

    .line 81
    .line 82
    :cond_2
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 87
    .line 88
    const-string v3, "network_index"

    .line 89
    .line 90
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-eqz v0, :cond_3

    .line 95
    .line 96
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 101
    .line 102
    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    if-nez v0, :cond_6

    .line 107
    .line 108
    :cond_3
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 113
    .line 114
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    if-eqz v0, :cond_4

    .line 119
    .line 120
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 125
    .line 126
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    if-nez v0, :cond_6

    .line 131
    .line 132
    :cond_4
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 137
    .line 138
    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    if-eqz v0, :cond_5

    .line 143
    .line 144
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 149
    .line 150
    invoke-interface {v0, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    if-nez v0, :cond_6

    .line 155
    .line 156
    :cond_5
    move-object v3, p0

    .line 157
    move v5, p1

    .line 158
    goto :goto_2

    .line 159
    :cond_6
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 164
    .line 165
    const-string v1, "year"

    .line 166
    .line 167
    const-string v3, ""

    .line 168
    .line 169
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v7

    .line 173
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 178
    .line 179
    const-string v1, "genre_id"

    .line 180
    .line 181
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 182
    .line 183
    .line 184
    move-result v0

    .line 185
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    iget-object v1, v1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 190
    .line 191
    const-string v3, "pref_network_id"

    .line 192
    .line 193
    const/4 v5, -0x1

    .line 194
    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 195
    .line 196
    .line 197
    move-result v9

    .line 198
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    iget-object v1, v1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 203
    .line 204
    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 205
    .line 206
    .line 207
    move-result v1

    .line 208
    if-eqz v1, :cond_7

    .line 209
    .line 210
    const-string v1, "primary_release_date.desc"

    .line 211
    .line 212
    :goto_0
    move-object v8, v1

    .line 213
    goto :goto_1

    .line 214
    :cond_7
    const-string v1, "popularity.desc"

    .line 215
    .line 216
    goto :goto_0

    .line 217
    :goto_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v4

    .line 221
    const/4 v10, 0x0

    .line 222
    move-object v3, p0

    .line 223
    move v5, p1

    .line 224
    invoke-static/range {v3 .. v10}, LD4/a;->getItemsByGenres(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lio/reactivex/Observable;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    .line 233
    .line 234
    .line 235
    move-result-object p1

    .line 236
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->newThread()Lio/reactivex/Scheduler;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    .line 241
    .line 242
    .line 243
    move-result-object p1

    .line 244
    new-instance v0, Ly4/W;

    .line 245
    .line 246
    const/4 v1, 0x1

    .line 247
    invoke-direct {v0, p0, v6, v1}, Ly4/W;-><init>(Lflix/com/vision/activities/MainActivity;II)V

    .line 248
    .line 249
    .line 250
    new-instance v1, Lx4/d;

    .line 251
    .line 252
    const/16 v2, 0xa

    .line 253
    .line 254
    invoke-direct {v1, v2}, Lx4/d;-><init>(I)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {p1, v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 258
    .line 259
    .line 260
    move-result-object p1

    .line 261
    iput-object p1, v3, Lflix/com/vision/activities/MainActivity;->r:Lio/reactivex/disposables/Disposable;

    .line 262
    .line 263
    return-void

    .line 264
    :goto_2
    if-nez v6, :cond_8

    .line 265
    .line 266
    const-string p1, "movie"

    .line 267
    .line 268
    goto :goto_3

    .line 269
    :cond_8
    const-string p1, "tv"

    .line 270
    .line 271
    :goto_3
    iget v0, v3, Lflix/com/vision/activities/MainActivity;->R:I

    .line 272
    .line 273
    invoke-static {p0, v5, p1, v0}, LD4/a;->gettabbedList(Landroid/content/Context;ILjava/lang/String;I)Lio/reactivex/Observable;

    .line 274
    .line 275
    .line 276
    move-result-object p1

    .line 277
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    .line 278
    .line 279
    .line 280
    move-result-object v0

    .line 281
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    .line 282
    .line 283
    .line 284
    move-result-object p1

    .line 285
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->newThread()Lio/reactivex/Scheduler;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    .line 290
    .line 291
    .line 292
    move-result-object p1

    .line 293
    new-instance v0, Ly4/W;

    .line 294
    .line 295
    const/4 v1, 0x0

    .line 296
    invoke-direct {v0, p0, v6, v1}, Ly4/W;-><init>(Lflix/com/vision/activities/MainActivity;II)V

    .line 297
    .line 298
    .line 299
    new-instance v1, Lx4/d;

    .line 300
    .line 301
    const/16 v2, 0x9

    .line 302
    .line 303
    invoke-direct {v1, v2}, Lx4/d;-><init>(I)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {p1, v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 307
    .line 308
    .line 309
    move-result-object p1

    .line 310
    iput-object p1, v3, Lflix/com/vision/activities/MainActivity;->r:Lio/reactivex/disposables/Disposable;

    .line 311
    .line 312
    return-void
.end method

.method public final h(Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "android.intent.action.VIEW"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :catch_0
    move-exception p1

    .line 20
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final i()V
    .locals 4

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
    const-string v1, "pref_hide_continue"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/16 v1, 0x8

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lflix/com/vision/activities/MainActivity;->m:Landroidx/recyclerview/widget/RecyclerView;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-object v0, v0, Lflix/com/vision/App;->r:LP4/e;

    .line 29
    .line 30
    invoke-virtual {v0}, LP4/e;->getWatchingMoviesFromDb()Ljava/util/ArrayList;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-lez v3, :cond_1

    .line 39
    .line 40
    iget-object v1, p0, Lflix/com/vision/activities/MainActivity;->b:Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lflix/com/vision/activities/MainActivity;->f:LC4/o0;

    .line 52
    .line 53
    invoke-virtual {v0}, Lm1/V;->notifyDataSetChanged()V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lflix/com/vision/activities/MainActivity;->m:Landroidx/recyclerview/widget/RecyclerView;

    .line 57
    .line 58
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lflix/com/vision/activities/MainActivity;->m:Landroidx/recyclerview/widget/RecyclerView;

    .line 62
    .line 63
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_1
    iget-object v0, p0, Lflix/com/vision/activities/MainActivity;->m:Landroidx/recyclerview/widget/RecyclerView;

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method public final j()V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    const/4 v2, 0x1

    .line 7
    invoke-static {p0, v2}, LQ4/d;->newInstance(Landroid/app/Activity;Z)LQ4/d;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    const-string v4, "Discord"

    .line 12
    .line 13
    invoke-virtual {v3, v4}, LQ4/d;->setTitle(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v4, "Join the Flix Vision community at https://discord.gg/tKjc4PTvxu"

    .line 17
    .line 18
    invoke-virtual {v3, v4}, LQ4/d;->setMessage(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    new-instance v4, LA4/o;

    .line 22
    .line 23
    const/4 v5, 0x6

    .line 24
    invoke-direct {v4, v3, v5}, LA4/o;-><init>(LQ4/d;I)V

    .line 25
    .line 26
    .line 27
    const-string v5, "OK"

    .line 28
    .line 29
    invoke-virtual {v3, v5, v4}, LQ4/d;->setButton1(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 30
    .line 31
    .line 32
    const-string v4, "com.discord"

    .line 33
    .line 34
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    invoke-virtual {v5, v4, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    .line 41
    new-instance v4, Ly4/c0;

    .line 42
    .line 43
    invoke-direct {v4, p0, v3, v0}, Ly4/c0;-><init>(Lflix/com/vision/activities/MainActivity;LQ4/d;I)V

    .line 44
    .line 45
    .line 46
    const-string v0, "OPEN APP"

    .line 47
    .line 48
    invoke-virtual {v3, v0, v4}, LQ4/d;->setButton2(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 49
    .line 50
    .line 51
    :catch_0
    :try_start_1
    const-string v0, ""

    .line 52
    .line 53
    invoke-virtual {v3, v1, v0}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catch_1
    move-exception v0

    .line 58
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 59
    .line 60
    .line 61
    :goto_0
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 66
    .line 67
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    sget-object v1, Lflix/com/vision/tv/Constant;->b:Ljava/lang/String;

    .line 72
    .line 73
    const-string v1, "discord_check"

    .line 74
    .line 75
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method public final k()V
    .locals 4

    .line 1
    new-instance v0, Le/r;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Le/r;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Le/r;->create()Le/s;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget v1, Lflix/com/vision/R$string;->out_of_mem:I

    .line 11
    .line 12
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Le/s;->setTitle(Ljava/lang/CharSequence;)V

    .line 17
    .line 18
    .line 19
    sget v1, Lflix/com/vision/R$drawable;->ic_action_live_help:I

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Le/s;->setIcon(I)V

    .line 22
    .line 23
    .line 24
    sget v1, Lflix/com/vision/R$string;->out_of_memory_mess:I

    .line 25
    .line 26
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Le/s;->setMessage(Ljava/lang/CharSequence;)V

    .line 31
    .line 32
    .line 33
    sget v1, Lflix/com/vision/R$string;->got_it:I

    .line 34
    .line 35
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    new-instance v2, Ly4/Z;

    .line 40
    .line 41
    const/4 v3, 0x1

    .line 42
    invoke-direct {v2, v3}, Ly4/Z;-><init>(I)V

    .line 43
    .line 44
    .line 45
    const/4 v3, -0x1

    .line 46
    invoke-virtual {v0, v3, v1, v2}, Le/s;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 47
    .line 48
    .line 49
    sget v1, Lflix/com/vision/R$string;->reload_label:I

    .line 50
    .line 51
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    new-instance v2, Ly4/Y;

    .line 56
    .line 57
    const/4 v3, 0x2

    .line 58
    invoke-direct {v2, p0, v3}, Ly4/Y;-><init>(Lflix/com/vision/activities/MainActivity;I)V

    .line 59
    .line 60
    .line 61
    const/4 v3, -0x2

    .line 62
    invoke-virtual {v0, v3, v1, v2}, Le/s;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 63
    .line 64
    .line 65
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 70
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public final l()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-static {p0, v1}, LQ4/d;->newInstance(Landroid/app/Activity;Z)LQ4/d;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    const-string v3, "Twitter"

    .line 11
    .line 12
    invoke-virtual {v2, v3}, LQ4/d;->setTitle(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v3, "Find us on twitter at @FlixVisionApp"

    .line 16
    .line 17
    invoke-virtual {v2, v3}, LQ4/d;->setMessage(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    new-instance v3, LA4/o;

    .line 21
    .line 22
    const/16 v4, 0x9

    .line 23
    .line 24
    invoke-direct {v3, v2, v4}, LA4/o;-><init>(LQ4/d;I)V

    .line 25
    .line 26
    .line 27
    const-string v4, "OK"

    .line 28
    .line 29
    invoke-virtual {v2, v4, v3}, LQ4/d;->setButton1(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 30
    .line 31
    .line 32
    const-string v3, "com.twitter.android"

    .line 33
    .line 34
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    const/4 v5, 0x0

    .line 39
    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    new-instance v3, Ly4/c0;

    .line 43
    .line 44
    const/4 v4, 0x2

    .line 45
    invoke-direct {v3, p0, v2, v4}, Ly4/c0;-><init>(Lflix/com/vision/activities/MainActivity;LQ4/d;I)V

    .line 46
    .line 47
    .line 48
    const-string v4, "OPEN APP"

    .line 49
    .line 50
    invoke-virtual {v2, v4, v3}, LQ4/d;->setButton2(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 51
    .line 52
    .line 53
    :catch_0
    :try_start_1
    const-string v3, ""

    .line 54
    .line 55
    invoke-virtual {v2, v0, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catch_1
    move-exception v0

    .line 60
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 61
    .line 62
    .line 63
    :goto_0
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 68
    .line 69
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    sget-object v2, Lflix/com/vision/tv/Constant;->b:Ljava/lang/String;

    .line 74
    .line 75
    const-string v2, "twitter_check"

    .line 76
    .line 77
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method public longClickMovie(I)V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    iget-object v1, p0, Lflix/com/vision/activities/MainActivity;->b:Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    check-cast v1, Lflix/com/vision/models/Movie;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-static {p0, v0}, LQ4/d;->newInstance(Landroid/app/Activity;Z)LQ4/d;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {v1}, Lflix/com/vision/models/Movie;->getTitle()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    invoke-virtual {v3, v4}, LQ4/d;->setTitle(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string v4, "What would you like to Do?"

    .line 26
    .line 27
    invoke-virtual {v3, v4}, LQ4/d;->setMessage(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const-string v4, "MARK AS WATCHED"

    .line 31
    .line 32
    new-instance v5, LC4/l;

    .line 33
    .line 34
    const/4 v6, 0x3

    .line 35
    invoke-direct {v5, p0, v1, p1, v6}, LC4/l;-><init>(Lflix/com/vision/activities/base/a;Ljava/lang/Object;II)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3, v4, v5}, LQ4/d;->setButton1(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 39
    .line 40
    .line 41
    const-string p1, "ADD TO FAVORITES"

    .line 42
    .line 43
    new-instance v4, LA4/m;

    .line 44
    .line 45
    const/16 v5, 0x13

    .line 46
    .line 47
    invoke-direct {v4, v5, p0, v1}, LA4/m;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3, p1, v4}, LQ4/d;->setButton2(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 51
    .line 52
    .line 53
    :try_start_1
    const-string p1, ""

    .line 54
    .line 55
    invoke-virtual {v3, v2, p1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catch_0
    move-exception p1

    .line 60
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :catch_1
    move-exception p1

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string v2, "ERROR OCCURRED: "

    .line 68
    .line 69
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-static {p0, p1, v0}, Lh5/i;->makeToast(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 84
    .line 85
    .line 86
    :goto_0
    return-void
.end method

.method public final m()V
    .locals 10

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
    const-string v1, "content_type"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iget-object v1, v1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 19
    .line 20
    const-string v3, "genre"

    .line 21
    .line 22
    const-string v4, ""

    .line 23
    .line 24
    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    iget-object v3, v3, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 33
    .line 34
    const-string v5, "year"

    .line 35
    .line 36
    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    const/4 v5, 0x1

    .line 45
    if-gtz v4, :cond_0

    .line 46
    .line 47
    const-string v4, "all"

    .line 48
    .line 49
    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    if-nez v4, :cond_1

    .line 54
    .line 55
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    if-nez v4, :cond_1

    .line 60
    .line 61
    :cond_0
    move v2, v5

    .line 62
    :cond_1
    const-string v4, ": TRENDING"

    .line 63
    .line 64
    const-string v6, ": POPULAR"

    .line 65
    .line 66
    const/4 v7, 0x2

    .line 67
    const-string v8, ": "

    .line 68
    .line 69
    const-string v9, "MOVIES"

    .line 70
    .line 71
    if-nez v0, :cond_7

    .line 72
    .line 73
    if-eqz v2, :cond_3

    .line 74
    .line 75
    invoke-virtual {v8, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-lez v1, :cond_2

    .line 84
    .line 85
    invoke-static {v0, v8, v3}, LA/i;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .line 93
    .line 94
    sget v2, Lflix/com/vision/R$string;->movies_label:I

    .line 95
    .line 96
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 111
    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-virtual {p0}, Le/v;->getSupportActionBar()Le/b;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-virtual {v1, v0}, Le/b;->setTitle(Ljava/lang/CharSequence;)V

    .line 121
    .line 122
    .line 123
    return-void

    .line 124
    :cond_3
    iget v0, p0, Lflix/com/vision/activities/MainActivity;->R:I

    .line 125
    .line 126
    if-eqz v0, :cond_6

    .line 127
    .line 128
    if-eq v0, v5, :cond_5

    .line 129
    .line 130
    if-eq v0, v7, :cond_4

    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .line 137
    .line 138
    sget v1, Lflix/com/vision/R$string;->movies_label:I

    .line 139
    .line 140
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v9

    .line 158
    goto :goto_0

    .line 159
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 160
    .line 161
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 162
    .line 163
    .line 164
    sget v1, Lflix/com/vision/R$string;->movies_label:I

    .line 165
    .line 166
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    const-string v1, ": IN THEATER"

    .line 178
    .line 179
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v9

    .line 186
    goto :goto_0

    .line 187
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 188
    .line 189
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    .line 191
    .line 192
    sget v1, Lflix/com/vision/R$string;->movies_label:I

    .line 193
    .line 194
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v9

    .line 212
    :goto_0
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 213
    .line 214
    invoke-virtual {v9, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    invoke-virtual {p0}, Le/v;->getSupportActionBar()Le/b;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    invoke-virtual {v1, v0}, Le/b;->setTitle(Ljava/lang/CharSequence;)V

    .line 223
    .line 224
    .line 225
    return-void

    .line 226
    :cond_7
    if-eqz v2, :cond_9

    .line 227
    .line 228
    invoke-virtual {v8, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 233
    .line 234
    .line 235
    move-result v1

    .line 236
    if-lez v1, :cond_8

    .line 237
    .line 238
    invoke-static {v0, v8, v3}, LA/i;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 243
    .line 244
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 245
    .line 246
    .line 247
    sget v2, Lflix/com/vision/R$string;->tv_series_label:I

    .line 248
    .line 249
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v2

    .line 253
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 264
    .line 265
    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    invoke-virtual {p0}, Le/v;->getSupportActionBar()Le/b;

    .line 270
    .line 271
    .line 272
    move-result-object v1

    .line 273
    invoke-virtual {v1, v0}, Le/b;->setTitle(Ljava/lang/CharSequence;)V

    .line 274
    .line 275
    .line 276
    return-void

    .line 277
    :cond_9
    iget v0, p0, Lflix/com/vision/activities/MainActivity;->R:I

    .line 278
    .line 279
    if-eqz v0, :cond_c

    .line 280
    .line 281
    if-eq v0, v5, :cond_b

    .line 282
    .line 283
    if-eq v0, v7, :cond_a

    .line 284
    .line 285
    goto :goto_1

    .line 286
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    .line 287
    .line 288
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 289
    .line 290
    .line 291
    sget v1, Lflix/com/vision/R$string;->tv_series_label:I

    .line 292
    .line 293
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v1

    .line 297
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v1

    .line 301
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v9

    .line 311
    goto :goto_1

    .line 312
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    .line 313
    .line 314
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 315
    .line 316
    .line 317
    sget v1, Lflix/com/vision/R$string;->tv_series_label:I

    .line 318
    .line 319
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v1

    .line 323
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v1

    .line 327
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    .line 329
    .line 330
    const-string v1, ": NOW STREAMING"

    .line 331
    .line 332
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    .line 334
    .line 335
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v9

    .line 339
    goto :goto_1

    .line 340
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    .line 341
    .line 342
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 343
    .line 344
    .line 345
    sget v1, Lflix/com/vision/R$string;->tv_series_label:I

    .line 346
    .line 347
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v1

    .line 351
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v1

    .line 355
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    .line 357
    .line 358
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v9

    .line 365
    :goto_1
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 366
    .line 367
    invoke-virtual {v9, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v0

    .line 371
    invoke-virtual {p0}, Le/v;->getSupportActionBar()Le/b;

    .line 372
    .line 373
    .line 374
    move-result-object v1

    .line 375
    invoke-virtual {v1, v0}, Le/b;->setTitle(Ljava/lang/CharSequence;)V

    .line 376
    .line 377
    .line 378
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    .line 1
    const/16 v0, 0x2a

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    if-ne p1, v0, :cond_4

    .line 7
    .line 8
    if-ne p2, v1, :cond_4

    .line 9
    .line 10
    const-string p1, "android.speech.extra.RESULTS"

    .line 11
    .line 12
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-eqz p1, :cond_3

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    if-lez p2, :cond_3

    .line 23
    .line 24
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Ljava/lang/String;

    .line 29
    .line 30
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    if-nez p2, :cond_2

    .line 35
    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    const/4 p3, 0x3

    .line 43
    if-lt p2, p3, :cond_1

    .line 44
    .line 45
    new-instance p2, Landroid/content/Intent;

    .line 46
    .line 47
    const-class p3, Lflix/com/vision/activities/SearchResultsActivity;

    .line 48
    .line 49
    invoke-direct {p2, p0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 50
    .line 51
    .line 52
    const-string p3, "query"

    .line 53
    .line 54
    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    .line 56
    .line 57
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 62
    .line 63
    const-string p3, "content_type"

    .line 64
    .line 65
    invoke-interface {p1, p3, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    if-ne p1, v2, :cond_0

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_0
    move v2, v3

    .line 73
    :goto_0
    const-string p1, "tv_shows_only"

    .line 74
    .line 75
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 79
    .line 80
    .line 81
    :cond_1
    return-void

    .line 82
    :cond_2
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    sget p2, Lflix/com/vision/R$string;->did_not_catch_any_mic_voice_mess:I

    .line 87
    .line 88
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    invoke-static {p1, p2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 97
    .line 98
    .line 99
    return-void

    .line 100
    :cond_3
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    sget p2, Lflix/com/vision/R$string;->did_not_catch_any_mic_voice_mess:I

    .line 105
    .line 106
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p2

    .line 110
    invoke-static {p1, p2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 115
    .line 116
    .line 117
    return-void

    .line 118
    :cond_4
    if-eqz p3, :cond_5

    .line 119
    .line 120
    const-string v0, "result"

    .line 121
    .line 122
    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    const/16 v4, 0x22b8

    .line 127
    .line 128
    if-ne v0, v4, :cond_5

    .line 129
    .line 130
    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    .line 131
    .line 132
    .line 133
    goto/16 :goto_3

    .line 134
    .line 135
    :cond_5
    const/16 v0, 0x3e8

    .line 136
    .line 137
    if-ne p1, v0, :cond_6

    .line 138
    .line 139
    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    .line 140
    .line 141
    .line 142
    goto/16 :goto_3

    .line 143
    .line 144
    :cond_6
    const/16 v0, 0x2711

    .line 145
    .line 146
    if-ne p1, v0, :cond_7

    .line 147
    .line 148
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    invoke-virtual {v0}, Lflix/com/vision/App;->fetch_anime()V

    .line 153
    .line 154
    .line 155
    goto/16 :goto_3

    .line 156
    .line 157
    :cond_7
    const/16 v0, 0x7d0

    .line 158
    .line 159
    if-ne p1, v0, :cond_8

    .line 160
    .line 161
    const/4 v0, 0x0

    .line 162
    invoke-virtual {p0, v3, v0}, Lflix/com/vision/activities/MainActivity;->askToUpdateIfAny(ZLflix/com/vision/models/Movie;)V

    .line 163
    .line 164
    .line 165
    goto :goto_3

    .line 166
    :cond_8
    const/16 v0, 0x3039

    .line 167
    .line 168
    if-ne p1, v0, :cond_9

    .line 169
    .line 170
    if-ne p2, v1, :cond_9

    .line 171
    .line 172
    const-string v0, "file_extra_data"

    .line 173
    .line 174
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    new-instance v1, Lflix/com/vision/models/HistoryTVLink;

    .line 179
    .line 180
    invoke-direct {v1}, Lflix/com/vision/models/HistoryTVLink;-><init>()V

    .line 181
    .line 182
    .line 183
    :try_start_0
    const-string v3, "/"

    .line 184
    .line 185
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v3

    .line 189
    array-length v4, v3

    .line 190
    sub-int/2addr v4, v2

    .line 191
    aget-object v3, v3, v4

    .line 192
    .line 193
    iput-object v3, v1, Lflix/com/vision/models/HistoryTVLink;->name:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    .line 195
    goto :goto_1

    .line 196
    :catch_0
    iput-object v0, v1, Lflix/com/vision/models/HistoryTVLink;->name:Ljava/lang/String;

    .line 197
    .line 198
    :goto_1
    iput-object v0, v1, Lflix/com/vision/models/HistoryTVLink;->url:Ljava/lang/String;

    .line 199
    .line 200
    const-string v3, "3"

    .line 201
    .line 202
    iput-object v3, v1, Lflix/com/vision/models/HistoryTVLink;->type:Ljava/lang/String;

    .line 203
    .line 204
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 205
    .line 206
    .line 207
    move-result-object v3

    .line 208
    iget-object v3, v3, Lflix/com/vision/App;->r:LP4/e;

    .line 209
    .line 210
    invoke-virtual {v3, v1}, LP4/e;->addHistoryIPTV(Lflix/com/vision/models/HistoryTVLink;)Z

    .line 211
    .line 212
    .line 213
    new-instance v1, Landroid/content/Intent;

    .line 214
    .line 215
    const-class v3, Lflix/com/vision/tv/TVCategoriesActivity;

    .line 216
    .line 217
    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 218
    .line 219
    .line 220
    const-string v3, "is_file"

    .line 221
    .line 222
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 223
    .line 224
    .line 225
    const-string v2, "url"

    .line 226
    .line 227
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    .line 229
    .line 230
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 231
    .line 232
    .line 233
    goto :goto_3

    .line 234
    :cond_9
    const/16 v0, 0x44c

    .line 235
    .line 236
    if-ne p1, v0, :cond_b

    .line 237
    .line 238
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 243
    .line 244
    const-string v1, "clear_history_pending"

    .line 245
    .line 246
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 247
    .line 248
    .line 249
    move-result v0

    .line 250
    if-eqz v0, :cond_b

    .line 251
    .line 252
    :try_start_1
    iget-object v0, p0, Lflix/com/vision/activities/MainActivity;->z:Lflix/com/vision/materialsearchview/MaterialSearchView;

    .line 253
    .line 254
    if-eqz v0, :cond_a

    .line 255
    .line 256
    invoke-virtual {v0}, Lflix/com/vision/materialsearchview/MaterialSearchView;->clearHistory()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 257
    .line 258
    .line 259
    goto :goto_2

    .line 260
    :catch_1
    move-exception v0

    .line 261
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 262
    .line 263
    .line 264
    :cond_a
    :goto_2
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 269
    .line 270
    invoke-static {v0, v1, v3}, LA/i;->x(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 271
    .line 272
    .line 273
    :cond_b
    :goto_3
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/H;->onActivityResult(IILandroid/content/Intent;)V

    .line 274
    .line 275
    .line 276
    return-void
.end method

.method public onBackPressed()V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingSuperCall"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lflix/com/vision/activities/MainActivity;->f()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const/16 v7, 0xc

    .line 4
    .line 5
    const/4 v8, 0x5

    .line 6
    const/4 v9, 0x3

    .line 7
    const/4 v10, 0x4

    .line 8
    const/4 v11, 0x2

    .line 9
    invoke-super/range {p0 .. p1}, Lflix/com/vision/activities/base/a;->onCreate(Landroid/os/Bundle;)V

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 17
    .line 18
    const-string v2, "pref_hide_unreleased"

    .line 19
    .line 20
    const/4 v12, 0x1

    .line 21
    invoke-interface {v0, v2, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 22
    .line 23
    .line 24
    const/4 v13, 0x0

    .line 25
    if-nez p1, :cond_4

    .line 26
    .line 27
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0, v1}, Lflix/com/vision/App;->initTech(Landroid/app/Activity;)V

    .line 32
    .line 33
    .line 34
    iput-boolean v13, v1, Lflix/com/vision/activities/MainActivity;->u:Z

    .line 35
    .line 36
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 41
    .line 42
    const-string v2, "IS_RD_LOGGED_IN"

    .line 43
    .line 44
    invoke-interface {v0, v2, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_0

    .line 49
    .line 50
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v0}, Lflix/com/vision/App;->refreshTokenRD()V

    .line 55
    .line 56
    .line 57
    sput-boolean v12, Lflix/com/vision/api/realdebrid/RealDebridCommon;->m:Z

    .line 58
    .line 59
    :cond_0
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 64
    .line 65
    const-string v2, "PREM_LOGGED_IN"

    .line 66
    .line 67
    invoke-interface {v0, v2, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    const/4 v2, 0x0

    .line 72
    if-eqz v0, :cond_1

    .line 73
    .line 74
    sput-boolean v12, Lflix/com/vision/api/premiumize/PremiumizeCommon;->b:Z

    .line 75
    .line 76
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 81
    .line 82
    sget-object v3, LT4/f;->a:Ljava/lang/String;

    .line 83
    .line 84
    const-string v3, "prem_apikey"

    .line 85
    .line 86
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    sput-object v0, Lflix/com/vision/api/premiumize/PremiumizeCommon;->e:Ljava/lang/String;

    .line 91
    .line 92
    :cond_1
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 97
    .line 98
    const-string v3, "ALL_DEBRID_LOGGED_IN"

    .line 99
    .line 100
    invoke-interface {v0, v3, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    if-eqz v0, :cond_2

    .line 105
    .line 106
    sput-boolean v12, Lflix/com/vision/api/alldebrid/AllDebridCommon;->f:Z

    .line 107
    .line 108
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 113
    .line 114
    sget-object v3, LT4/f;->a:Ljava/lang/String;

    .line 115
    .line 116
    const-string v3, "all_debrid_apikey"

    .line 117
    .line 118
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    sput-object v0, Lflix/com/vision/api/alldebrid/AllDebridCommon;->j:Ljava/lang/String;

    .line 123
    .line 124
    :cond_2
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 129
    .line 130
    const-string v3, "torbox_logged_in"

    .line 131
    .line 132
    invoke-interface {v0, v3, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    if-eqz v0, :cond_3

    .line 137
    .line 138
    sput-boolean v12, LJ4/b;->a:Z

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
    const-string v3, "torbox_apikey"

    .line 147
    .line 148
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    sput-object v0, LJ4/b;->b:Ljava/lang/String;

    .line 153
    .line 154
    :cond_3
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 159
    .line 160
    const-string v3, "offcloud_logged_in"

    .line 161
    .line 162
    invoke-interface {v0, v3, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    if-eqz v0, :cond_4

    .line 167
    .line 168
    sput-boolean v12, LG4/b;->a:Z

    .line 169
    .line 170
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 175
    .line 176
    const-string v3, "offcloud_apikey"

    .line 177
    .line 178
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    sput-object v0, LG4/b;->b:Ljava/lang/String;

    .line 183
    .line 184
    :cond_4
    :try_start_0
    sget v0, Lflix/com/vision/R$layout;->activity_main:I

    .line 185
    .line 186
    invoke-virtual {v1, v0}, Le/v;->setContentView(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 187
    .line 188
    .line 189
    goto :goto_1

    .line 190
    :catch_0
    move-exception v0

    .line 191
    goto :goto_0

    .line 192
    :catch_1
    invoke-virtual {v1}, Lflix/com/vision/activities/MainActivity;->k()V

    .line 193
    .line 194
    .line 195
    return-void

    .line 196
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v1}, Lflix/com/vision/activities/MainActivity;->k()V

    .line 200
    .line 201
    .line 202
    :goto_1
    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    invoke-static {v0}, Lb/c;->d(Landroid/view/Display;)Landroid/util/DisplayMetrics;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    invoke-virtual {v1}, Le/v;->getResources()Landroid/content/res/Resources;

    .line 215
    .line 216
    .line 217
    move-result-object v2

    .line 218
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 219
    .line 220
    .line 221
    move-result-object v2

    .line 222
    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 223
    .line 224
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 225
    .line 226
    int-to-float v0, v0

    .line 227
    div-float/2addr v0, v2

    .line 228
    const/16 v2, 0x8c

    .line 229
    .line 230
    int-to-float v2, v2

    .line 231
    div-float/2addr v0, v2

    .line 232
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 233
    .line 234
    .line 235
    move-result v14

    .line 236
    :try_start_1
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 241
    .line 242
    .line 243
    :catch_2
    new-instance v0, LT4/j;

    .line 244
    .line 245
    invoke-direct {v0}, LT4/j;-><init>()V

    .line 246
    .line 247
    .line 248
    iput-object v0, v1, Lflix/com/vision/activities/MainActivity;->N:LT4/j;

    .line 249
    .line 250
    new-instance v0, Ljava/util/ArrayList;

    .line 251
    .line 252
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 253
    .line 254
    .line 255
    iput-object v0, v1, Lflix/com/vision/activities/MainActivity;->A:Ljava/util/ArrayList;

    .line 256
    .line 257
    sget v0, Lflix/com/vision/R$id;->recyclerview_continue:I

    .line 258
    .line 259
    invoke-virtual {v1, v0}, Le/v;->findViewById(I)Landroid/view/View;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 264
    .line 265
    iput-object v0, v1, Lflix/com/vision/activities/MainActivity;->m:Landroidx/recyclerview/widget/RecyclerView;

    .line 266
    .line 267
    sget v0, Lflix/com/vision/R$id;->recyclerview_network:I

    .line 268
    .line 269
    invoke-virtual {v1, v0}, Le/v;->findViewById(I)Landroid/view/View;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 274
    .line 275
    iput-object v0, v1, Lflix/com/vision/activities/MainActivity;->n:Landroidx/recyclerview/widget/RecyclerView;

    .line 276
    .line 277
    sget v0, Lflix/com/vision/R$id;->activity_main:I

    .line 278
    .line 279
    invoke-virtual {v1, v0}, Le/v;->findViewById(I)Landroid/view/View;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 284
    .line 285
    iput-object v0, v1, Lflix/com/vision/activities/MainActivity;->t:Landroid/widget/RelativeLayout;

    .line 286
    .line 287
    sget v0, Lflix/com/vision/R$id;->tabs:I

    .line 288
    .line 289
    invoke-virtual {v1, v0}, Le/v;->findViewById(I)Landroid/view/View;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    .line 294
    .line 295
    iput-object v0, v1, Lflix/com/vision/activities/MainActivity;->q:Lcom/google/android/material/tabs/TabLayout;

    .line 296
    .line 297
    sget v0, Lflix/com/vision/R$id;->toolbar:I

    .line 298
    .line 299
    invoke-virtual {v1, v0}, Le/v;->findViewById(I)Landroid/view/View;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 304
    .line 305
    iput-object v0, v1, Lflix/com/vision/activities/MainActivity;->y:Landroidx/appcompat/widget/Toolbar;

    .line 306
    .line 307
    sget v0, Lflix/com/vision/R$id;->lst_menu_items:I

    .line 308
    .line 309
    invoke-virtual {v1, v0}, Le/v;->findViewById(I)Landroid/view/View;

    .line 310
    .line 311
    .line 312
    move-result-object v0

    .line 313
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 314
    .line 315
    sget v0, Lflix/com/vision/R$id;->drawer_layout:I

    .line 316
    .line 317
    invoke-virtual {v1, v0}, Le/v;->findViewById(I)Landroid/view/View;

    .line 318
    .line 319
    .line 320
    move-result-object v0

    .line 321
    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout;

    .line 322
    .line 323
    iput-object v0, v1, Lflix/com/vision/activities/MainActivity;->E:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 324
    .line 325
    sget v0, Lflix/com/vision/R$id;->nav_view:I

    .line 326
    .line 327
    invoke-virtual {v1, v0}, Le/v;->findViewById(I)Landroid/view/View;

    .line 328
    .line 329
    .line 330
    move-result-object v0

    .line 331
    check-cast v0, LA3/k;

    .line 332
    .line 333
    iput-object v0, v1, Lflix/com/vision/activities/MainActivity;->w:LA3/k;

    .line 334
    .line 335
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 336
    .line 337
    .line 338
    move-result-object v0

    .line 339
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 340
    .line 341
    const-string v2, "pref_show_adult_zone"

    .line 342
    .line 343
    invoke-interface {v0, v2, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 344
    .line 345
    .line 346
    move-result v0

    .line 347
    if-eqz v0, :cond_5

    .line 348
    .line 349
    iget-object v0, v1, Lflix/com/vision/activities/MainActivity;->w:LA3/k;

    .line 350
    .line 351
    sget v2, Lflix/com/vision/R$menu;->nav_drawer_menu:I

    .line 352
    .line 353
    invoke-virtual {v0, v2}, LA3/k;->inflateMenu(I)V

    .line 354
    .line 355
    .line 356
    goto :goto_2

    .line 357
    :cond_5
    iget-object v0, v1, Lflix/com/vision/activities/MainActivity;->w:LA3/k;

    .line 358
    .line 359
    sget v2, Lflix/com/vision/R$menu;->nav_drawer_menu_no_adult:I

    .line 360
    .line 361
    invoke-virtual {v0, v2}, LA3/k;->inflateMenu(I)V

    .line 362
    .line 363
    .line 364
    :goto_2
    new-array v0, v10, [[I

    .line 365
    .line 366
    const v2, 0x101009c

    .line 367
    .line 368
    .line 369
    filled-new-array {v2}, [I

    .line 370
    .line 371
    .line 372
    move-result-object v2

    .line 373
    aput-object v2, v0, v13

    .line 374
    .line 375
    const v2, -0x101009c

    .line 376
    .line 377
    .line 378
    filled-new-array {v2}, [I

    .line 379
    .line 380
    .line 381
    move-result-object v2

    .line 382
    aput-object v2, v0, v12

    .line 383
    .line 384
    const v2, -0x10100a1

    .line 385
    .line 386
    .line 387
    filled-new-array {v2}, [I

    .line 388
    .line 389
    .line 390
    move-result-object v2

    .line 391
    aput-object v2, v0, v11

    .line 392
    .line 393
    const v2, 0x10100a1

    .line 394
    .line 395
    .line 396
    filled-new-array {v2}, [I

    .line 397
    .line 398
    .line 399
    move-result-object v2

    .line 400
    aput-object v2, v0, v9

    .line 401
    .line 402
    const/high16 v2, -0x1000000

    .line 403
    .line 404
    const/4 v3, -0x1

    .line 405
    filled-new-array {v2, v3, v3, v2}, [I

    .line 406
    .line 407
    .line 408
    move-result-object v2

    .line 409
    new-instance v3, Landroid/content/res/ColorStateList;

    .line 410
    .line 411
    invoke-direct {v3, v0, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 412
    .line 413
    .line 414
    sget v0, Lflix/com/vision/R$id;->recyclerview:I

    .line 415
    .line 416
    invoke-virtual {v1, v0}, Le/v;->findViewById(I)Landroid/view/View;

    .line 417
    .line 418
    .line 419
    move-result-object v0

    .line 420
    check-cast v0, Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

    .line 421
    .line 422
    iput-object v0, v1, Lflix/com/vision/activities/MainActivity;->C:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

    .line 423
    .line 424
    sget v0, Lflix/com/vision/R$id;->search_view:I

    .line 425
    .line 426
    invoke-virtual {v1, v0}, Le/v;->findViewById(I)Landroid/view/View;

    .line 427
    .line 428
    .line 429
    move-result-object v0

    .line 430
    check-cast v0, Lflix/com/vision/materialsearchview/MaterialSearchView;

    .line 431
    .line 432
    iput-object v0, v1, Lflix/com/vision/activities/MainActivity;->z:Lflix/com/vision/materialsearchview/MaterialSearchView;

    .line 433
    .line 434
    invoke-virtual {v1}, Le/v;->getResources()Landroid/content/res/Resources;

    .line 435
    .line 436
    .line 437
    move-result-object v0

    .line 438
    sget v2, Lflix/com/vision/R$color;->colorPrimary:I

    .line 439
    .line 440
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    .line 441
    .line 442
    .line 443
    move-result v0

    .line 444
    iput v0, v1, Lflix/com/vision/activities/MainActivity;->P:I

    .line 445
    .line 446
    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 447
    .line 448
    .line 449
    move-result-object v0

    .line 450
    sget-object v2, Lflix/com/vision/tv/Constant;->b:Ljava/lang/String;

    .line 451
    .line 452
    const-string v2, "fonts/pproduct_sans_rregular.ttf"

    .line 453
    .line 454
    invoke-static {v0, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 455
    .line 456
    .line 457
    move-result-object v0

    .line 458
    iput-object v0, v1, Lflix/com/vision/activities/MainActivity;->H:Landroid/graphics/Typeface;

    .line 459
    .line 460
    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 461
    .line 462
    .line 463
    move-result-object v0

    .line 464
    const-string v2, "fonts/product_sans_bold.ttf"

    .line 465
    .line 466
    invoke-static {v0, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 467
    .line 468
    .line 469
    move-result-object v0

    .line 470
    iput-object v0, v1, Lflix/com/vision/activities/MainActivity;->I:Landroid/graphics/Typeface;

    .line 471
    .line 472
    new-instance v0, Lh5/j;

    .line 473
    .line 474
    invoke-direct {v0}, Lh5/j;-><init>()V

    .line 475
    .line 476
    .line 477
    iput-object v0, v1, Lflix/com/vision/activities/MainActivity;->G:Lh5/j;

    .line 478
    .line 479
    :try_start_2
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 480
    .line 481
    .line 482
    move-result-object v0

    .line 483
    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 484
    .line 485
    .line 486
    :catch_3
    iget-object v0, v1, Lflix/com/vision/activities/MainActivity;->G:Lh5/j;

    .line 487
    .line 488
    iget-object v2, v1, Lflix/com/vision/activities/MainActivity;->w:LA3/k;

    .line 489
    .line 490
    iget-object v3, v1, Lflix/com/vision/activities/MainActivity;->I:Landroid/graphics/Typeface;

    .line 491
    .line 492
    invoke-virtual {v0, v2, v3}, Lh5/j;->applyFontToNavigationView(LA3/k;Landroid/graphics/Typeface;)V

    .line 493
    .line 494
    .line 495
    iget-object v0, v1, Lflix/com/vision/activities/MainActivity;->y:Landroidx/appcompat/widget/Toolbar;

    .line 496
    .line 497
    invoke-virtual {v1, v0}, Le/v;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 498
    .line 499
    .line 500
    iget-object v0, v1, Lflix/com/vision/activities/MainActivity;->w:LA3/k;

    .line 501
    .line 502
    invoke-virtual {v0, v1}, LA3/k;->setNavigationItemSelectedListener(LA3/h;)V

    .line 503
    .line 504
    .line 505
    new-instance v0, Ly4/g0;

    .line 506
    .line 507
    iget-object v3, v1, Lflix/com/vision/activities/MainActivity;->E:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 508
    .line 509
    iget-object v4, v1, Lflix/com/vision/activities/MainActivity;->y:Landroidx/appcompat/widget/Toolbar;

    .line 510
    .line 511
    sget v5, Lflix/com/vision/R$string;->dr_closed:I

    .line 512
    .line 513
    sget v6, Lflix/com/vision/R$string;->dr_opened:I

    .line 514
    .line 515
    move-object/from16 v2, p0

    .line 516
    .line 517
    invoke-direct/range {v0 .. v6}, Ly4/g0;-><init>(Lflix/com/vision/activities/MainActivity;Lflix/com/vision/activities/MainActivity;Landroidx/drawerlayout/widget/DrawerLayout;Landroidx/appcompat/widget/Toolbar;II)V

    .line 518
    .line 519
    .line 520
    iput-object v0, v1, Lflix/com/vision/activities/MainActivity;->F:Ly4/g0;

    .line 521
    .line 522
    iget-object v2, v1, Lflix/com/vision/activities/MainActivity;->E:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 523
    .line 524
    invoke-virtual {v2, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerListener(Lc0/e;)V

    .line 525
    .line 526
    .line 527
    iget-object v0, v1, Lflix/com/vision/activities/MainActivity;->F:Ly4/g0;

    .line 528
    .line 529
    invoke-virtual {v0}, Le/i;->syncState()V

    .line 530
    .line 531
    .line 532
    invoke-virtual {v1}, Le/v;->getSupportActionBar()Le/b;

    .line 533
    .line 534
    .line 535
    move-result-object v0

    .line 536
    invoke-virtual {v0, v12}, Le/b;->setHomeButtonEnabled(Z)V

    .line 537
    .line 538
    .line 539
    invoke-virtual {v1}, Le/v;->getSupportActionBar()Le/b;

    .line 540
    .line 541
    .line 542
    move-result-object v0

    .line 543
    invoke-virtual {v0, v12}, Le/b;->setDisplayHomeAsUpEnabled(Z)V

    .line 544
    .line 545
    .line 546
    invoke-virtual {v1}, Le/v;->getSupportActionBar()Le/b;

    .line 547
    .line 548
    .line 549
    move-result-object v0

    .line 550
    sget v2, Lflix/com/vision/R$drawable;->ic_baseline_subject_24:I

    .line 551
    .line 552
    invoke-virtual {v0, v2}, Le/b;->setHomeAsUpIndicator(I)V

    .line 553
    .line 554
    .line 555
    new-instance v0, LC4/P;

    .line 556
    .line 557
    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 558
    .line 559
    .line 560
    move-result-object v2

    .line 561
    move-object v3, v2

    .line 562
    iget-object v2, v1, Lflix/com/vision/activities/MainActivity;->A:Ljava/util/ArrayList;

    .line 563
    .line 564
    iget v4, v1, Lflix/com/vision/activities/MainActivity;->x:I

    .line 565
    .line 566
    move-object/from16 v5, p0

    .line 567
    .line 568
    move-object/from16 v6, p0

    .line 569
    .line 570
    move-object v15, v3

    .line 571
    move-object v3, v1

    .line 572
    move-object v1, v15

    .line 573
    invoke-direct/range {v0 .. v6}, LC4/P;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/app/Activity;ILU4/j;Lflix/com/vision/activities/MainActivity;)V

    .line 574
    .line 575
    .line 576
    move-object v1, v3

    .line 577
    iput-object v0, v1, Lflix/com/vision/activities/MainActivity;->B:LC4/P;

    .line 578
    .line 579
    new-instance v0, LC4/o0;

    .line 580
    .line 581
    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 582
    .line 583
    .line 584
    move-result-object v2

    .line 585
    iget-object v3, v1, Lflix/com/vision/activities/MainActivity;->b:Ljava/util/ArrayList;

    .line 586
    .line 587
    invoke-direct {v0, v2, v3, v1, v1}, LC4/o0;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lflix/com/vision/activities/MainActivity;LU4/j;)V

    .line 588
    .line 589
    .line 590
    iput-object v0, v1, Lflix/com/vision/activities/MainActivity;->f:LC4/o0;

    .line 591
    .line 592
    iget-object v0, v1, Lflix/com/vision/activities/MainActivity;->m:Landroidx/recyclerview/widget/RecyclerView;

    .line 593
    .line 594
    new-instance v2, Lflix/com/vision/helpers/CenterLayoutManager;

    .line 595
    .line 596
    invoke-direct {v2, v1, v13, v13}, Lflix/com/vision/helpers/CenterLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 597
    .line 598
    .line 599
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Lm1/i0;)V

    .line 600
    .line 601
    .line 602
    iget-object v0, v1, Lflix/com/vision/activities/MainActivity;->m:Landroidx/recyclerview/widget/RecyclerView;

    .line 603
    .line 604
    iget-object v2, v1, Lflix/com/vision/activities/MainActivity;->f:LC4/o0;

    .line 605
    .line 606
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lm1/V;)V

    .line 607
    .line 608
    .line 609
    iget-object v0, v1, Lflix/com/vision/activities/MainActivity;->m:Landroidx/recyclerview/widget/RecyclerView;

    .line 610
    .line 611
    new-instance v2, LT4/k;

    .line 612
    .line 613
    invoke-direct {v2, v8}, LT4/k;-><init>(I)V

    .line 614
    .line 615
    .line 616
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Lm1/d0;)V

    .line 617
    .line 618
    .line 619
    new-instance v0, LC4/S;

    .line 620
    .line 621
    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 622
    .line 623
    .line 624
    move-result-object v2

    .line 625
    iget-object v3, v1, Lflix/com/vision/activities/MainActivity;->e:Ljava/util/ArrayList;

    .line 626
    .line 627
    invoke-direct {v0, v2, v3, v1}, LC4/S;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/app/Activity;)V

    .line 628
    .line 629
    .line 630
    iput-object v0, v1, Lflix/com/vision/activities/MainActivity;->j:LC4/S;

    .line 631
    .line 632
    iget-object v0, v1, Lflix/com/vision/activities/MainActivity;->n:Landroidx/recyclerview/widget/RecyclerView;

    .line 633
    .line 634
    new-instance v2, Lflix/com/vision/helpers/CenterLayoutManager;

    .line 635
    .line 636
    invoke-direct {v2, v1, v13, v13}, Lflix/com/vision/helpers/CenterLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 637
    .line 638
    .line 639
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Lm1/i0;)V

    .line 640
    .line 641
    .line 642
    iget-object v0, v1, Lflix/com/vision/activities/MainActivity;->n:Landroidx/recyclerview/widget/RecyclerView;

    .line 643
    .line 644
    iget-object v2, v1, Lflix/com/vision/activities/MainActivity;->j:LC4/S;

    .line 645
    .line 646
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lm1/V;)V

    .line 647
    .line 648
    .line 649
    iget-object v0, v1, Lflix/com/vision/activities/MainActivity;->n:Landroidx/recyclerview/widget/RecyclerView;

    .line 650
    .line 651
    const/16 v2, 0xa

    .line 652
    .line 653
    invoke-static {v0, v2}, Lb/c;->s(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 654
    .line 655
    .line 656
    iget-object v0, v1, Lflix/com/vision/activities/MainActivity;->C:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

    .line 657
    .line 658
    invoke-virtual {v0, v1}, Lcom/malinskiy/superrecyclerview/SuperRecyclerView;->setRefreshListener(Lv1/n;)V

    .line 659
    .line 660
    .line 661
    new-instance v0, Lflix/com/vision/helpers/CenterGridLayoutManager;

    .line 662
    .line 663
    invoke-direct {v0, v1, v14}, Lflix/com/vision/helpers/CenterGridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 664
    .line 665
    .line 666
    iget-object v2, v1, Lflix/com/vision/activities/MainActivity;->C:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

    .line 667
    .line 668
    invoke-virtual {v2, v0}, Lcom/malinskiy/superrecyclerview/SuperRecyclerView;->setLayoutManager(Lm1/i0;)V

    .line 669
    .line 670
    .line 671
    iget-object v0, v1, Lflix/com/vision/activities/MainActivity;->C:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

    .line 672
    .line 673
    new-instance v2, LT4/k;

    .line 674
    .line 675
    invoke-direct {v2, v7}, LT4/k;-><init>(I)V

    .line 676
    .line 677
    .line 678
    invoke-virtual {v0, v2}, Lcom/malinskiy/superrecyclerview/SuperRecyclerView;->addItemDecoration(Lm1/d0;)V

    .line 679
    .line 680
    .line 681
    iget-object v0, v1, Lflix/com/vision/activities/MainActivity;->C:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

    .line 682
    .line 683
    iget-object v2, v1, Lflix/com/vision/activities/MainActivity;->B:LC4/P;

    .line 684
    .line 685
    invoke-virtual {v0, v2}, Lcom/malinskiy/superrecyclerview/SuperRecyclerView;->setAdapter(Lm1/V;)V

    .line 686
    .line 687
    .line 688
    iget-object v0, v1, Lflix/com/vision/activities/MainActivity;->C:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

    .line 689
    .line 690
    const/16 v2, 0x14

    .line 691
    .line 692
    invoke-virtual {v0, v1, v2}, Lcom/malinskiy/superrecyclerview/SuperRecyclerView;->setupMoreListener(Ld4/a;I)V

    .line 693
    .line 694
    .line 695
    iget-object v0, v1, Lflix/com/vision/activities/MainActivity;->y:Landroidx/appcompat/widget/Toolbar;

    .line 696
    .line 697
    new-instance v2, Ly4/b0;

    .line 698
    .line 699
    invoke-direct {v2, v1, v13}, Ly4/b0;-><init>(Lflix/com/vision/activities/MainActivity;I)V

    .line 700
    .line 701
    .line 702
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 703
    .line 704
    .line 705
    iget-object v0, v1, Lflix/com/vision/activities/MainActivity;->z:Lflix/com/vision/materialsearchview/MaterialSearchView;

    .line 706
    .line 707
    const-string v2, "Movies, TV Shows, People..."

    .line 708
    .line 709
    invoke-virtual {v0, v2}, Lflix/com/vision/materialsearchview/MaterialSearchView;->setHint(Ljava/lang/CharSequence;)V

    .line 710
    .line 711
    .line 712
    iget-object v0, v1, Lflix/com/vision/activities/MainActivity;->z:Lflix/com/vision/materialsearchview/MaterialSearchView;

    .line 713
    .line 714
    const/4 v2, 0x0

    .line 715
    invoke-virtual {v0, v2}, Lflix/com/vision/materialsearchview/MaterialSearchView;->adjustTintAlpha(F)V

    .line 716
    .line 717
    .line 718
    iget-object v0, v1, Lflix/com/vision/activities/MainActivity;->z:Lflix/com/vision/materialsearchview/MaterialSearchView;

    .line 719
    .line 720
    invoke-virtual {v0, v12}, Lflix/com/vision/materialsearchview/MaterialSearchView;->setCloseOnTintClick(Z)V

    .line 721
    .line 722
    .line 723
    iget-object v0, v1, Lflix/com/vision/activities/MainActivity;->z:Lflix/com/vision/materialsearchview/MaterialSearchView;

    .line 724
    .line 725
    new-instance v2, Ly4/h0;

    .line 726
    .line 727
    invoke-direct {v2, v1}, Ly4/h0;-><init>(Lflix/com/vision/activities/MainActivity;)V

    .line 728
    .line 729
    .line 730
    invoke-virtual {v0, v2}, Lflix/com/vision/materialsearchview/MaterialSearchView;->setOnQueryTextListener(Lflix/com/vision/materialsearchview/MaterialSearchView$OnQueryTextListener;)V

    .line 731
    .line 732
    .line 733
    iget-object v0, v1, Lflix/com/vision/activities/MainActivity;->z:Lflix/com/vision/materialsearchview/MaterialSearchView;

    .line 734
    .line 735
    new-instance v2, Ly4/l;

    .line 736
    .line 737
    invoke-direct {v2, v1, v11}, Ly4/l;-><init>(Lflix/com/vision/activities/base/a;I)V

    .line 738
    .line 739
    .line 740
    invoke-virtual {v0, v2}, Lflix/com/vision/materialsearchview/MaterialSearchView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 741
    .line 742
    .line 743
    iget-object v0, v1, Lflix/com/vision/activities/MainActivity;->t:Landroid/widget/RelativeLayout;

    .line 744
    .line 745
    if-eqz v0, :cond_6

    .line 746
    .line 747
    new-instance v2, Ly4/b0;

    .line 748
    .line 749
    invoke-direct {v2, v1, v12}, Ly4/b0;-><init>(Lflix/com/vision/activities/MainActivity;I)V

    .line 750
    .line 751
    .line 752
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 753
    .line 754
    .line 755
    :cond_6
    iget-object v0, v1, Lflix/com/vision/activities/MainActivity;->q:Lcom/google/android/material/tabs/TabLayout;

    .line 756
    .line 757
    new-instance v2, Ly4/i0;

    .line 758
    .line 759
    invoke-direct {v2, v1}, Ly4/i0;-><init>(Lflix/com/vision/activities/MainActivity;)V

    .line 760
    .line 761
    .line 762
    invoke-virtual {v0, v2}, Lcom/google/android/material/tabs/TabLayout;->setOnTabSelectedListener(LJ3/e;)V

    .line 763
    .line 764
    .line 765
    if-nez p1, :cond_7

    .line 766
    .line 767
    :try_start_3
    new-instance v0, Landroid/os/Handler;

    .line 768
    .line 769
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 770
    .line 771
    .line 772
    new-instance v2, Ly4/a0;

    .line 773
    .line 774
    invoke-direct {v2, v1, v9}, Ly4/a0;-><init>(Lflix/com/vision/activities/MainActivity;I)V

    .line 775
    .line 776
    .line 777
    const-wide/16 v4, 0x1388

    .line 778
    .line 779
    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 780
    .line 781
    .line 782
    :catch_4
    :cond_7
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 783
    .line 784
    .line 785
    move-result-object v0

    .line 786
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 787
    .line 788
    const-string v2, "guid"

    .line 789
    .line 790
    const-string v4, "null"

    .line 791
    .line 792
    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 793
    .line 794
    .line 795
    move-result-object v0

    .line 796
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 797
    .line 798
    .line 799
    move-result v0

    .line 800
    if-eqz v0, :cond_8

    .line 801
    .line 802
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 803
    .line 804
    .line 805
    move-result-object v0

    .line 806
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 807
    .line 808
    .line 809
    move-result-object v0

    .line 810
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 811
    .line 812
    .line 813
    move-result-object v4

    .line 814
    iget-object v4, v4, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 815
    .line 816
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 817
    .line 818
    .line 819
    move-result-object v4

    .line 820
    invoke-interface {v4, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 821
    .line 822
    .line 823
    move-result-object v0

    .line 824
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 825
    .line 826
    .line 827
    :cond_8
    invoke-virtual {v1}, Lflix/com/vision/activities/MainActivity;->m()V

    .line 828
    .line 829
    .line 830
    new-instance v0, Landroid/os/Handler;

    .line 831
    .line 832
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 833
    .line 834
    .line 835
    new-instance v2, Ly4/a0;

    .line 836
    .line 837
    invoke-direct {v2, v1, v10}, Ly4/a0;-><init>(Lflix/com/vision/activities/MainActivity;I)V

    .line 838
    .line 839
    .line 840
    const-wide/16 v4, 0x3e8

    .line 841
    .line 842
    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 843
    .line 844
    .line 845
    new-instance v0, Landroid/os/Handler;

    .line 846
    .line 847
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 848
    .line 849
    .line 850
    new-instance v2, Ly4/a0;

    .line 851
    .line 852
    invoke-direct {v2, v1, v8}, Ly4/a0;-><init>(Lflix/com/vision/activities/MainActivity;I)V

    .line 853
    .line 854
    .line 855
    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 856
    .line 857
    .line 858
    new-instance v0, Landroid/os/Handler;

    .line 859
    .line 860
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 861
    .line 862
    .line 863
    new-instance v2, Ly4/a0;

    .line 864
    .line 865
    const/4 v4, 0x6

    .line 866
    invoke-direct {v2, v1, v4}, Ly4/a0;-><init>(Lflix/com/vision/activities/MainActivity;I)V

    .line 867
    .line 868
    .line 869
    const-wide/16 v4, 0x1f4

    .line 870
    .line 871
    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 872
    .line 873
    .line 874
    iget-object v0, v1, Lflix/com/vision/activities/MainActivity;->G:Lh5/j;

    .line 875
    .line 876
    iget-object v2, v1, Lflix/com/vision/activities/MainActivity;->y:Landroidx/appcompat/widget/Toolbar;

    .line 877
    .line 878
    iget-object v4, v1, Lflix/com/vision/activities/MainActivity;->I:Landroid/graphics/Typeface;

    .line 879
    .line 880
    invoke-virtual {v0, v2, v4}, Lh5/j;->applyFontToToolbar(Landroidx/appcompat/widget/Toolbar;Landroid/graphics/Typeface;)V

    .line 881
    .line 882
    .line 883
    iget v0, v1, Lflix/com/vision/activities/MainActivity;->D:I

    .line 884
    .line 885
    invoke-virtual {v1, v0}, Lflix/com/vision/activities/MainActivity;->g(I)V

    .line 886
    .line 887
    .line 888
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 889
    .line 890
    .line 891
    move-result-object v0

    .line 892
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 893
    .line 894
    const-string v2, "content_type"

    .line 895
    .line 896
    invoke-interface {v0, v2, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 897
    .line 898
    .line 899
    move-result v0

    .line 900
    if-nez v0, :cond_9

    .line 901
    .line 902
    const-string v0, "IN THEATER"

    .line 903
    .line 904
    iput-object v0, v1, Lflix/com/vision/activities/MainActivity;->J:Ljava/lang/String;

    .line 905
    .line 906
    goto :goto_3

    .line 907
    :cond_9
    const-string v0, "NOW STREAMING"

    .line 908
    .line 909
    iput-object v0, v1, Lflix/com/vision/activities/MainActivity;->J:Ljava/lang/String;

    .line 910
    .line 911
    :goto_3
    :try_start_4
    iget-object v0, v1, Lflix/com/vision/activities/MainActivity;->q:Lcom/google/android/material/tabs/TabLayout;

    .line 912
    .line 913
    invoke-virtual {v0, v12}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)LJ3/h;

    .line 914
    .line 915
    .line 916
    move-result-object v0

    .line 917
    iget-object v2, v1, Lflix/com/vision/activities/MainActivity;->J:Ljava/lang/String;

    .line 918
    .line 919
    invoke-virtual {v0, v2}, LJ3/h;->setText(Ljava/lang/CharSequence;)LJ3/h;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 920
    .line 921
    .line 922
    :catch_5
    new-instance v0, Landroid/os/Handler;

    .line 923
    .line 924
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 925
    .line 926
    .line 927
    new-instance v2, Ly4/a0;

    .line 928
    .line 929
    invoke-direct {v2, v1, v11}, Ly4/a0;-><init>(Lflix/com/vision/activities/MainActivity;I)V

    .line 930
    .line 931
    .line 932
    const-wide/16 v4, 0x7d0

    .line 933
    .line 934
    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 935
    .line 936
    .line 937
    new-instance v0, Landroid/os/Handler;

    .line 938
    .line 939
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 940
    .line 941
    .line 942
    new-instance v2, Ly4/a0;

    .line 943
    .line 944
    invoke-direct {v2, v1, v7}, Ly4/a0;-><init>(Lflix/com/vision/activities/MainActivity;I)V

    .line 945
    .line 946
    .line 947
    const-wide/16 v4, 0xbb8

    .line 948
    .line 949
    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 950
    .line 951
    .line 952
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 953
    .line 954
    .line 955
    move-result-object v0

    .line 956
    invoke-virtual {v0}, Lflix/com/vision/App;->loadRemoteConfig()V

    .line 957
    .line 958
    .line 959
    const-string v0, ""

    .line 960
    .line 961
    :try_start_5
    sget-object v2, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    .line 962
    .line 963
    invoke-virtual {v1, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    .line 964
    .line 965
    .line 966
    move-result-object v2

    .line 967
    if-eqz v2, :cond_a

    .line 968
    .line 969
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 970
    .line 971
    .line 972
    move-result-object v2

    .line 973
    new-instance v4, Ljava/lang/StringBuilder;

    .line 974
    .line 975
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 976
    .line 977
    .line 978
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 979
    .line 980
    .line 981
    const-string v2, "/FlixVision.Update"

    .line 982
    .line 983
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 984
    .line 985
    .line 986
    const-string v2, " "

    .line 987
    .line 988
    invoke-virtual {v0, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 989
    .line 990
    .line 991
    move-result-object v2

    .line 992
    const-string v5, "."

    .line 993
    .line 994
    invoke-virtual {v2, v5, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 995
    .line 996
    .line 997
    move-result-object v0

    .line 998
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 999
    .line 1000
    .line 1001
    const-string v0, ".apk"

    .line 1002
    .line 1003
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1004
    .line 1005
    .line 1006
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1007
    .line 1008
    .line 1009
    move-result-object v0

    .line 1010
    new-instance v2, Ljava/io/File;

    .line 1011
    .line 1012
    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1013
    .line 1014
    .line 1015
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 1016
    .line 1017
    .line 1018
    move-result v0

    .line 1019
    if-eqz v0, :cond_a

    .line 1020
    .line 1021
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    .line 1022
    .line 1023
    .line 1024
    goto :goto_4

    .line 1025
    :catch_6
    move-exception v0

    .line 1026
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1027
    .line 1028
    .line 1029
    :cond_a
    :goto_4
    sget-boolean v0, Lflix/com/vision/App;->I:Z

    .line 1030
    .line 1031
    if-nez v0, :cond_b

    .line 1032
    .line 1033
    :try_start_6
    sget v0, Lflix/com/vision/R$id;->media_route_button:I

    .line 1034
    .line 1035
    invoke-virtual {v1, v0}, Le/v;->findViewById(I)Landroid/view/View;

    .line 1036
    .line 1037
    .line 1038
    move-result-object v0

    .line 1039
    check-cast v0, Landroidx/mediarouter/app/MediaRouteButton;

    .line 1040
    .line 1041
    iput-object v0, v1, Lflix/com/vision/activities/MainActivity;->p:Landroidx/mediarouter/app/MediaRouteButton;

    .line 1042
    .line 1043
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 1044
    .line 1045
    .line 1046
    move-result-object v0

    .line 1047
    iget-object v2, v1, Lflix/com/vision/activities/MainActivity;->p:Landroidx/mediarouter/app/MediaRouteButton;

    .line 1048
    .line 1049
    invoke-static {v0, v2}, Lcom/google/android/gms/cast/framework/CastButtonFactory;->setUpMediaRouteButton(Landroid/content/Context;Landroidx/mediarouter/app/MediaRouteButton;)V

    .line 1050
    .line 1051
    .line 1052
    invoke-static {v1}, Lcom/google/android/gms/cast/framework/CastContext;->getSharedInstance(Landroid/content/Context;)Lcom/google/android/gms/cast/framework/CastContext;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    .line 1053
    .line 1054
    .line 1055
    :catch_7
    :cond_b
    invoke-static {}, LT4/f;->getNetworks()Ljava/util/ArrayList;

    .line 1056
    .line 1057
    .line 1058
    move-result-object v0

    .line 1059
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 1060
    .line 1061
    .line 1062
    move-result v2

    .line 1063
    if-lez v2, :cond_c

    .line 1064
    .line 1065
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1066
    .line 1067
    .line 1068
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1069
    .line 1070
    .line 1071
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1072
    .line 1073
    .line 1074
    iget-object v0, v1, Lflix/com/vision/activities/MainActivity;->j:LC4/S;

    .line 1075
    .line 1076
    invoke-virtual {v0}, Lm1/V;->notifyDataSetChanged()V

    .line 1077
    .line 1078
    .line 1079
    iget-object v0, v1, Lflix/com/vision/activities/MainActivity;->n:Landroidx/recyclerview/widget/RecyclerView;

    .line 1080
    .line 1081
    invoke-virtual {v0, v13}, Landroid/view/View;->setVisibility(I)V

    .line 1082
    .line 1083
    .line 1084
    goto :goto_5

    .line 1085
    :cond_c
    iget-object v0, v1, Lflix/com/vision/activities/MainActivity;->n:Landroidx/recyclerview/widget/RecyclerView;

    .line 1086
    .line 1087
    const/16 v2, 0x8

    .line 1088
    .line 1089
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1090
    .line 1091
    .line 1092
    :goto_5
    invoke-virtual {v1}, Lflix/com/vision/activities/MainActivity;->i()V

    .line 1093
    .line 1094
    .line 1095
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    .line 1
    sget-boolean v0, Lflix/com/vision/App;->I:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Le/v;->getMenuInflater()Landroid/view/MenuInflater;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget v1, Lflix/com/vision/R$menu;->main_menu:I

    .line 10
    .line 11
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p0}, Le/v;->getMenuInflater()Landroid/view/MenuInflater;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sget v1, Lflix/com/vision/R$menu;->main_menu_smartphones:I

    .line 20
    .line 21
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sget v1, Lflix/com/vision/R$id;->media_route_menu_item:I

    .line 29
    .line 30
    invoke-static {v0, p1, v1}, Lcom/google/android/gms/cast/framework/CastButtonFactory;->setUpMediaRouteButton(Landroid/content/Context;Landroid/view/Menu;I)Landroid/view/MenuItem;

    .line 31
    .line 32
    .line 33
    :goto_0
    iput-object p1, p0, Lflix/com/vision/activities/MainActivity;->L:Landroid/view/Menu;

    .line 34
    .line 35
    sget v0, Lflix/com/vision/R$id;->action_filter:I

    .line 36
    .line 37
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iput-object p1, p0, Lflix/com/vision/activities/MainActivity;->v:Landroid/view/MenuItem;

    .line 42
    .line 43
    iget-object p1, p0, Lflix/com/vision/activities/MainActivity;->G:Lh5/j;

    .line 44
    .line 45
    iget-object v0, p0, Lflix/com/vision/activities/MainActivity;->L:Landroid/view/Menu;

    .line 46
    .line 47
    iget-object v1, p0, Lflix/com/vision/activities/MainActivity;->H:Landroid/graphics/Typeface;

    .line 48
    .line 49
    invoke-virtual {p1, v0, v1}, Lh5/j;->applyFontToMenu(Landroid/view/Menu;Landroid/graphics/Typeface;)V

    .line 50
    .line 51
    .line 52
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 57
    .line 58
    const-string v0, "content_type"

    .line 59
    .line 60
    const/4 v1, 0x0

    .line 61
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    const/4 v0, 0x1

    .line 66
    const-string v2, "actual_menu_index"

    .line 67
    .line 68
    if-nez p1, :cond_1

    .line 69
    .line 70
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 75
    .line 76
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_1
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 93
    .line 94
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 103
    .line 104
    .line 105
    :goto_1
    return v0
.end method

.method public onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Lflix/com/vision/activities/base/a;->onDestroy()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lflix/com/vision/activities/MainActivity;->N:LT4/j;

    .line 2
    .line 3
    invoke-virtual {v0, p2}, LT4/j;->getDirectionPressed(Landroid/view/InputEvent;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    if-eq v0, v2, :cond_1

    .line 12
    .line 13
    const/4 v3, 0x2

    .line 14
    if-eq v0, v3, :cond_1

    .line 15
    .line 16
    const/4 v3, 0x3

    .line 17
    if-eq v0, v3, :cond_1

    .line 18
    .line 19
    const/4 v3, 0x4

    .line 20
    if-eq v0, v3, :cond_1

    .line 21
    .line 22
    packed-switch v0, :pswitch_data_0

    .line 23
    .line 24
    .line 25
    invoke-super {p0, p1, p2}, Le/v;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    return p1

    .line 30
    :pswitch_0
    iget-object p1, p0, Lflix/com/vision/activities/MainActivity;->z:Lflix/com/vision/materialsearchview/MaterialSearchView;

    .line 31
    .line 32
    invoke-virtual {p1}, Lflix/com/vision/materialsearchview/MaterialSearchView;->openSearch()V

    .line 33
    .line 34
    .line 35
    return v2

    .line 36
    :pswitch_1
    iget-object p1, p0, Lflix/com/vision/activities/MainActivity;->E:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 37
    .line 38
    const p2, 0x800003

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, p2}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerOpen(I)Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-eqz p1, :cond_0

    .line 46
    .line 47
    iget-object p1, p0, Lflix/com/vision/activities/MainActivity;->E:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 48
    .line 49
    invoke-virtual {p1, p2}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(I)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    iget-object p1, p0, Lflix/com/vision/activities/MainActivity;->E:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 54
    .line 55
    invoke-virtual {p1, p2}, Landroidx/drawerlayout/widget/DrawerLayout;->openDrawer(I)V

    .line 56
    .line 57
    .line 58
    :goto_0
    return v2

    .line 59
    :pswitch_2
    invoke-virtual {p0}, Lflix/com/vision/activities/MainActivity;->f()V

    .line 60
    .line 61
    .line 62
    :cond_1
    return v1

    .line 63
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onMediaSelected(Lflix/com/vision/models/Movie;)V
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
    invoke-virtual {p0, v1, p1}, Lflix/com/vision/activities/MainActivity;->askToUpdateIfAny(ZLflix/com/vision/models/Movie;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    invoke-virtual {p0, v1, p1}, Lflix/com/vision/activities/MainActivity;->askToUpdateIfAny(ZLflix/com/vision/models/Movie;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_1
    invoke-virtual {p0, p1}, Lflix/com/vision/activities/MainActivity;->openMovieintent(Lflix/com/vision/models/Movie;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public onMessageEvent(Lflix/com/vision/helpers/Constants$TRAKT_TV_EVENT;)V
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    sget-object v0, Lflix/com/vision/helpers/Constants$TRAKT_TV_EVENT;->b:Lflix/com/vision/helpers/Constants$TRAKT_TV_EVENT;

    .line 2
    .line 3
    if-ne p1, v0, :cond_1

    .line 4
    .line 5
    iget-boolean p1, p0, Lflix/com/vision/activities/MainActivity;->S:Z

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Lflix/com/vision/activities/MainActivity;->S:Z

    .line 12
    .line 13
    new-instance p1, Le/r;

    .line 14
    .line 15
    invoke-direct {p1, p0}, Le/r;-><init>(Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Le/r;->create()Le/s;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const-string v0, "Trakt TV"

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Le/s;->setTitle(Ljava/lang/CharSequence;)V

    .line 25
    .line 26
    .line 27
    sget v0, Lflix/com/vision/R$drawable;->trakt_logo_3:I

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Le/s;->setIcon(I)V

    .line 30
    .line 31
    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string v1, "Hello "

    .line 35
    .line 36
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    iget-object v1, v1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 44
    .line 45
    const-string v2, "trakt_user_name"

    .line 46
    .line 47
    const-string v3, ""

    .line 48
    .line 49
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    sget v1, Lflix/com/vision/R$string;->trakt_welcome_mess:I

    .line 57
    .line 58
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {p1, v0}, Le/s;->setMessage(Ljava/lang/CharSequence;)V

    .line 70
    .line 71
    .line 72
    sget v0, Lflix/com/vision/R$string;->yes_sync_now:I

    .line 73
    .line 74
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    new-instance v1, Ly4/Y;

    .line 79
    .line 80
    const/4 v2, 0x0

    .line 81
    invoke-direct {v1, p0, v2}, Ly4/Y;-><init>(Lflix/com/vision/activities/MainActivity;I)V

    .line 82
    .line 83
    .line 84
    const/4 v2, -0x1

    .line 85
    invoke-virtual {p1, v2, v0, v1}, Le/s;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 86
    .line 87
    .line 88
    sget v0, Lflix/com/vision/R$string;->no_thanks_label:I

    .line 89
    .line 90
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    new-instance v1, Ly4/Z;

    .line 95
    .line 96
    const/4 v2, 0x0

    .line 97
    invoke-direct {v1, v2}, Ly4/Z;-><init>(I)V

    .line 98
    .line 99
    .line 100
    const/4 v2, -0x2

    .line 101
    invoke-virtual {p1, v2, v0, v1}, Le/s;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 102
    .line 103
    .line 104
    sget v0, Lflix/com/vision/R$string;->go_to_trk_settings:I

    .line 105
    .line 106
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    new-instance v1, Ly4/Y;

    .line 111
    .line 112
    const/4 v2, 0x1

    .line 113
    invoke-direct {v1, p0, v2}, Ly4/Y;-><init>(Lflix/com/vision/activities/MainActivity;I)V

    .line 114
    .line 115
    .line 116
    const/4 v2, -0x3

    .line 117
    invoke-virtual {p1, v2, v0, v1}, Le/s;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 118
    .line 119
    .line 120
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .line 122
    .line 123
    return-void

    .line 124
    :catch_0
    move-exception p1

    .line 125
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 126
    .line 127
    .line 128
    :cond_1
    :goto_0
    return-void
.end method

.method public onMoreAsked(III)V
    .locals 2

    .line 1
    iget-boolean p1, p0, Lflix/com/vision/activities/MainActivity;->s:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget p1, p0, Lflix/com/vision/activities/MainActivity;->D:I

    .line 6
    .line 7
    add-int/lit8 p1, p1, 0x1

    .line 8
    .line 9
    iput p1, p0, Lflix/com/vision/activities/MainActivity;->D:I

    .line 10
    .line 11
    new-instance p1, Landroid/os/Handler;

    .line 12
    .line 13
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 14
    .line 15
    .line 16
    new-instance p2, Ly4/a0;

    .line 17
    .line 18
    const/16 p3, 0x9

    .line 19
    .line 20
    invoke-direct {p2, p0, p3}, Ly4/a0;-><init>(Lflix/com/vision/activities/MainActivity;I)V

    .line 21
    .line 22
    .line 23
    const-wide/16 v0, 0xc8

    .line 24
    .line 25
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method public onNavigationItemSelected(Landroid/view/MenuItem;)Z
    .locals 0

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0, p1}, Lflix/com/vision/activities/MainActivity;->onNavigationItemSelected1(I)Z

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    return p1
.end method

.method public onNavigationItemSelected1(I)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lflix/com/vision/activities/MainActivity;->E:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 2
    .line 3
    const v1, 0x800003

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(I)V

    .line 7
    .line 8
    .line 9
    sget v0, Lflix/com/vision/R$id;->setting_follow_discord:I

    .line 10
    .line 11
    const-string v1, ""

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    if-ne p1, v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Lflix/com/vision/activities/MainActivity;->j()V

    .line 17
    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    sget v0, Lflix/com/vision/R$id;->setting_contact:I

    .line 21
    .line 22
    if-ne p1, v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {p0, v2}, LQ4/d;->newInstance(Landroid/app/Activity;Z)LQ4/d;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    const-string v4, "Get in touch"

    .line 33
    .line 34
    invoke-virtual {v3, v4}, LQ4/d;->setTitle(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const-string v4, "Report issue and suggestions at info@flixvision.tv"

    .line 38
    .line 39
    invoke-virtual {v3, v4}, LQ4/d;->setMessage(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    new-instance v4, LA4/o;

    .line 43
    .line 44
    const/4 v5, 0x7

    .line 45
    invoke-direct {v4, v3, v5}, LA4/o;-><init>(LQ4/d;I)V

    .line 46
    .line 47
    .line 48
    const-string v5, "OK"

    .line 49
    .line 50
    invoke-virtual {v3, v5, v4}, LQ4/d;->setButton1(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 51
    .line 52
    .line 53
    new-instance v4, LA4/p;

    .line 54
    .line 55
    const/4 v5, 0x1

    .line 56
    invoke-direct {v4, p0, v3, v0, v5}, LA4/p;-><init>(Landroidx/fragment/app/H;LQ4/d;Ljava/lang/Object;I)V

    .line 57
    .line 58
    .line 59
    const-string v5, "OPEN MAIL APP"

    .line 60
    .line 61
    invoke-virtual {v3, v5, v4}, LQ4/d;->setButton2(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 62
    .line 63
    .line 64
    :try_start_0
    invoke-virtual {v3, v0, v1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :catch_0
    move-exception v0

    .line 69
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_1
    sget v0, Lflix/com/vision/R$id;->action_user_torrent:I

    .line 74
    .line 75
    if-ne p1, v0, :cond_4

    .line 76
    .line 77
    sget-boolean v0, Lflix/com/vision/api/alldebrid/AllDebridCommon;->f:Z

    .line 78
    .line 79
    if-nez v0, :cond_3

    .line 80
    .line 81
    sget-boolean v0, Lflix/com/vision/api/realdebrid/RealDebridCommon;->m:Z

    .line 82
    .line 83
    if-nez v0, :cond_3

    .line 84
    .line 85
    sget-boolean v0, Lflix/com/vision/api/premiumize/PremiumizeCommon;->b:Z

    .line 86
    .line 87
    if-nez v0, :cond_3

    .line 88
    .line 89
    sget-boolean v0, LJ4/b;->a:Z

    .line 90
    .line 91
    if-nez v0, :cond_3

    .line 92
    .line 93
    sget-boolean v0, LG4/b;->a:Z

    .line 94
    .line 95
    if-eqz v0, :cond_2

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_2
    const-string v0, "Please connect a Premium account first to see your Torrents (RealDebrid, Premiumize or AllDebrid"

    .line 99
    .line 100
    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 105
    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_3
    :goto_0
    new-instance v0, Landroid/content/Intent;

    .line 109
    .line 110
    const-class v3, Lflix/com/vision/activities/UserTorrentsActivity;

    .line 111
    .line 112
    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 116
    .line 117
    .line 118
    :cond_4
    :goto_1
    sget v0, Lflix/com/vision/R$id;->action_donation:I

    .line 119
    .line 120
    const/4 v3, 0x0

    .line 121
    if-ne p1, v0, :cond_5

    .line 122
    .line 123
    goto/16 :goto_2

    .line 124
    .line 125
    :cond_5
    sget v0, Lflix/com/vision/R$id;->action_adult:I

    .line 126
    .line 127
    if-ne p1, v0, :cond_7

    .line 128
    .line 129
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 134
    .line 135
    const-string v0, "pref_adult_zone_pin_set"

    .line 136
    .line 137
    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 138
    .line 139
    .line 140
    move-result p1

    .line 141
    if-nez p1, :cond_6

    .line 142
    .line 143
    new-instance p1, Landroid/content/Intent;

    .line 144
    .line 145
    const-class v0, Lflix/com/vision/activities/adult/AdultPINSetupActivity;

    .line 146
    .line 147
    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 151
    .line 152
    .line 153
    goto/16 :goto_2

    .line 154
    .line 155
    :cond_6
    new-instance p1, Landroid/content/Intent;

    .line 156
    .line 157
    const-class v0, Lflix/com/vision/activities/adult/AdultZonePINEntryActivity;

    .line 158
    .line 159
    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 163
    .line 164
    .line 165
    goto/16 :goto_2

    .line 166
    .line 167
    :cond_7
    sget v0, Lflix/com/vision/R$id;->setting_follow_twitter:I

    .line 168
    .line 169
    if-ne p1, v0, :cond_8

    .line 170
    .line 171
    invoke-virtual {p0}, Lflix/com/vision/activities/MainActivity;->l()V

    .line 172
    .line 173
    .line 174
    goto/16 :goto_2

    .line 175
    .line 176
    :cond_8
    sget v0, Lflix/com/vision/R$id;->action_exit:I

    .line 177
    .line 178
    if-ne p1, v0, :cond_9

    .line 179
    .line 180
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 181
    .line 182
    .line 183
    goto/16 :goto_2

    .line 184
    .line 185
    :cond_9
    sget v0, Lflix/com/vision/R$id;->action_tvseries:I

    .line 186
    .line 187
    const-wide/16 v4, 0xc8

    .line 188
    .line 189
    const-string v6, "content_type"

    .line 190
    .line 191
    const-string v7, "actual_menu_index"

    .line 192
    .line 193
    if-ne p1, v0, :cond_a

    .line 194
    .line 195
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 200
    .line 201
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    invoke-interface {p1, v7, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 210
    .line 211
    .line 212
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 217
    .line 218
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 219
    .line 220
    .line 221
    move-result-object p1

    .line 222
    invoke-interface {p1, v6, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 223
    .line 224
    .line 225
    move-result-object p1

    .line 226
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 227
    .line 228
    .line 229
    :try_start_1
    new-instance p1, Landroid/os/Handler;

    .line 230
    .line 231
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 232
    .line 233
    .line 234
    new-instance v0, Ly4/a0;

    .line 235
    .line 236
    const/4 v1, 0x0

    .line 237
    invoke-direct {v0, p0, v1}, Ly4/a0;-><init>(Lflix/com/vision/activities/MainActivity;I)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {p1, v0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 241
    .line 242
    .line 243
    goto/16 :goto_2

    .line 244
    .line 245
    :catch_1
    move-exception p1

    .line 246
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 247
    .line 248
    .line 249
    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    .line 250
    .line 251
    .line 252
    goto/16 :goto_2

    .line 253
    .line 254
    :cond_a
    sget v0, Lflix/com/vision/R$id;->action_movies:I

    .line 255
    .line 256
    if-ne p1, v0, :cond_b

    .line 257
    .line 258
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 259
    .line 260
    .line 261
    move-result-object p1

    .line 262
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 263
    .line 264
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 265
    .line 266
    .line 267
    move-result-object p1

    .line 268
    invoke-interface {p1, v7, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 269
    .line 270
    .line 271
    move-result-object p1

    .line 272
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 273
    .line 274
    .line 275
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 276
    .line 277
    .line 278
    move-result-object p1

    .line 279
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 280
    .line 281
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 282
    .line 283
    .line 284
    move-result-object p1

    .line 285
    invoke-interface {p1, v6, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 286
    .line 287
    .line 288
    move-result-object p1

    .line 289
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 290
    .line 291
    .line 292
    :try_start_2
    new-instance p1, Landroid/os/Handler;

    .line 293
    .line 294
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 295
    .line 296
    .line 297
    new-instance v0, Ly4/a0;

    .line 298
    .line 299
    const/4 v1, 0x1

    .line 300
    invoke-direct {v0, p0, v1}, Ly4/a0;-><init>(Lflix/com/vision/activities/MainActivity;I)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {p1, v0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 304
    .line 305
    .line 306
    goto/16 :goto_2

    .line 307
    .line 308
    :catch_2
    move-exception p1

    .line 309
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 310
    .line 311
    .line 312
    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    .line 313
    .line 314
    .line 315
    goto/16 :goto_2

    .line 316
    .line 317
    :cond_b
    sget v0, Lflix/com/vision/R$id;->action_settings:I

    .line 318
    .line 319
    if-ne p1, v0, :cond_c

    .line 320
    .line 321
    new-instance p1, Landroid/content/Intent;

    .line 322
    .line 323
    const-class v0, Lflix/com/vision/activities/SettingsActivity;

    .line 324
    .line 325
    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 326
    .line 327
    .line 328
    const/16 v0, 0x44c

    .line 329
    .line 330
    invoke-virtual {p0, p1, v0}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 331
    .line 332
    .line 333
    goto/16 :goto_2

    .line 334
    .line 335
    :cond_c
    sget v0, Lflix/com/vision/R$id;->action_my_tv_imports:I

    .line 336
    .line 337
    if-ne p1, v0, :cond_d

    .line 338
    .line 339
    new-instance p1, Landroid/content/Intent;

    .line 340
    .line 341
    const-class v0, Lflix/com/vision/tv/MyImportActivity;

    .line 342
    .line 343
    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 344
    .line 345
    .line 346
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 347
    .line 348
    .line 349
    goto/16 :goto_2

    .line 350
    .line 351
    :cond_d
    sget v0, Lflix/com/vision/R$id;->action_my_favorites:I

    .line 352
    .line 353
    if-ne p1, v0, :cond_f

    .line 354
    .line 355
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 356
    .line 357
    .line 358
    move-result-object p1

    .line 359
    iget-object p1, p1, Lflix/com/vision/App;->r:LP4/e;

    .line 360
    .line 361
    invoke-virtual {p1}, LP4/e;->getFavoritesMoviesFromDb()Ljava/util/ArrayList;

    .line 362
    .line 363
    .line 364
    move-result-object p1

    .line 365
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 366
    .line 367
    .line 368
    move-result p1

    .line 369
    if-lez p1, :cond_e

    .line 370
    .line 371
    new-instance p1, Landroid/content/Intent;

    .line 372
    .line 373
    const-class v0, Lflix/com/vision/activities/FavoritesAcvivity;

    .line 374
    .line 375
    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 376
    .line 377
    .line 378
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 379
    .line 380
    .line 381
    goto/16 :goto_2

    .line 382
    .line 383
    :cond_e
    const-string p1, "No Item in your Favorites"

    .line 384
    .line 385
    invoke-static {p0, p1, v3}, Lh5/i;->makeToast(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 386
    .line 387
    .line 388
    goto/16 :goto_2

    .line 389
    .line 390
    :cond_f
    sget v4, Lflix/com/vision/R$id;->action_import_tv:I

    .line 391
    .line 392
    if-ne p1, v4, :cond_10

    .line 393
    .line 394
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 395
    .line 396
    .line 397
    move-result-object p1

    .line 398
    invoke-static {p0, v2}, LQ4/d;->newInstance(Landroid/app/Activity;Z)LQ4/d;

    .line 399
    .line 400
    .line 401
    move-result-object v0

    .line 402
    const-string v2, "M3U Import"

    .line 403
    .line 404
    invoke-virtual {v0, v2}, LQ4/d;->setTitle(Ljava/lang/String;)V

    .line 405
    .line 406
    .line 407
    const-string v2, "How do you want to import your M3U Playlist?"

    .line 408
    .line 409
    invoke-virtual {v0, v2}, LQ4/d;->setMessage(Ljava/lang/String;)V

    .line 410
    .line 411
    .line 412
    new-instance v2, Ly4/d0;

    .line 413
    .line 414
    const/4 v4, 0x1

    .line 415
    invoke-direct {v2, p0, v4}, Ly4/d0;-><init>(Lflix/com/vision/activities/MainActivity;I)V

    .line 416
    .line 417
    .line 418
    const-string v4, "From File"

    .line 419
    .line 420
    invoke-virtual {v0, v4, v2}, LQ4/d;->setButton2(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 421
    .line 422
    .line 423
    new-instance v2, Ly4/d0;

    .line 424
    .line 425
    const/4 v4, 0x2

    .line 426
    invoke-direct {v2, p0, v4}, Ly4/d0;-><init>(Lflix/com/vision/activities/MainActivity;I)V

    .line 427
    .line 428
    .line 429
    const-string v4, "From URL"

    .line 430
    .line 431
    invoke-virtual {v0, v4, v2}, LQ4/d;->setButton1(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 432
    .line 433
    .line 434
    :try_start_3
    invoke-virtual {v0, p1, v1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 435
    .line 436
    .line 437
    goto/16 :goto_2

    .line 438
    .line 439
    :catch_3
    move-exception p1

    .line 440
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 441
    .line 442
    .line 443
    goto/16 :goto_2

    .line 444
    .line 445
    :cond_10
    sget v4, Lflix/com/vision/R$id;->action_live_tv_extra:I

    .line 446
    .line 447
    if-ne p1, v4, :cond_11

    .line 448
    .line 449
    new-instance p1, Landroid/content/Intent;

    .line 450
    .line 451
    const-class v0, Lflix/com/vision/tv/TVCategoriesActivity;

    .line 452
    .line 453
    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 454
    .line 455
    .line 456
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 457
    .line 458
    .line 459
    goto/16 :goto_2

    .line 460
    .line 461
    :cond_11
    sget v4, Lflix/com/vision/R$id;->action_trakt:I

    .line 462
    .line 463
    if-ne p1, v4, :cond_13

    .line 464
    .line 465
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 466
    .line 467
    .line 468
    move-result-object p1

    .line 469
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 470
    .line 471
    const-string v0, "trakt_user_logged_in"

    .line 472
    .line 473
    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 474
    .line 475
    .line 476
    move-result p1

    .line 477
    if-eqz p1, :cond_12

    .line 478
    .line 479
    new-instance p1, Landroid/content/Intent;

    .line 480
    .line 481
    const-class v0, Lflix/com/vision/activities/TraktActivity;

    .line 482
    .line 483
    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 484
    .line 485
    .line 486
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 487
    .line 488
    .line 489
    goto/16 :goto_2

    .line 490
    .line 491
    :cond_12
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 492
    .line 493
    .line 494
    move-result-object p1

    .line 495
    invoke-static {p0, v3}, LQ4/d;->newInstance(Landroid/app/Activity;Z)LQ4/d;

    .line 496
    .line 497
    .line 498
    move-result-object v0

    .line 499
    sget v2, Lflix/com/vision/R$string;->trakt_tv_label:I

    .line 500
    .line 501
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 502
    .line 503
    .line 504
    move-result-object v2

    .line 505
    invoke-virtual {v0, v2}, LQ4/d;->setTitle(Ljava/lang/String;)V

    .line 506
    .line 507
    .line 508
    invoke-virtual {v0, v3}, Landroid/app/DialogFragment;->setCancelable(Z)V

    .line 509
    .line 510
    .line 511
    sget v2, Lflix/com/vision/R$string;->connect_with_trakt_tv_enjoy_benefits_mess:I

    .line 512
    .line 513
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 514
    .line 515
    .line 516
    move-result-object v2

    .line 517
    invoke-virtual {v0, v2}, LQ4/d;->setMessage(Ljava/lang/String;)V

    .line 518
    .line 519
    .line 520
    new-instance v2, LA4/q;

    .line 521
    .line 522
    const/4 v4, 0x7

    .line 523
    invoke-direct {v2, v4}, LA4/q;-><init>(I)V

    .line 524
    .line 525
    .line 526
    const-string v4, "CANCEL"

    .line 527
    .line 528
    invoke-virtual {v0, v4, v2}, LQ4/d;->setButton1(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 529
    .line 530
    .line 531
    sget v2, Lflix/com/vision/R$string;->action_sign_in:I

    .line 532
    .line 533
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 534
    .line 535
    .line 536
    move-result-object v2

    .line 537
    new-instance v4, Ly4/d0;

    .line 538
    .line 539
    const/4 v5, 0x3

    .line 540
    invoke-direct {v4, p0, v5}, Ly4/d0;-><init>(Lflix/com/vision/activities/MainActivity;I)V

    .line 541
    .line 542
    .line 543
    invoke-virtual {v0, v2, v4}, LQ4/d;->setButton2(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 544
    .line 545
    .line 546
    :try_start_4
    invoke-virtual {v0, p1, v1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 547
    .line 548
    .line 549
    goto :goto_2

    .line 550
    :catch_4
    move-exception p1

    .line 551
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 552
    .line 553
    .line 554
    goto :goto_2

    .line 555
    :cond_13
    sget v1, Lflix/com/vision/R$id;->action_login:I

    .line 556
    .line 557
    if-ne p1, v1, :cond_14

    .line 558
    .line 559
    const-string p1, "COMING SOON"

    .line 560
    .line 561
    invoke-static {p0, p1, v2}, Lh5/i;->makeToast(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 562
    .line 563
    .line 564
    goto :goto_2

    .line 565
    :cond_14
    sget v1, Lflix/com/vision/R$id;->action_watched_history:I

    .line 566
    .line 567
    if-ne p1, v1, :cond_16

    .line 568
    .line 569
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 570
    .line 571
    .line 572
    move-result-object p1

    .line 573
    iget-object p1, p1, Lflix/com/vision/App;->r:LP4/e;

    .line 574
    .line 575
    invoke-virtual {p1}, LP4/e;->getWatchedMoviesFromDb()Ljava/util/ArrayList;

    .line 576
    .line 577
    .line 578
    move-result-object p1

    .line 579
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 580
    .line 581
    .line 582
    move-result p1

    .line 583
    if-nez p1, :cond_15

    .line 584
    .line 585
    const-string p1, "No Item Marked As Watched Yet"

    .line 586
    .line 587
    invoke-static {p0, p1, v3}, Lh5/i;->makeToast(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 588
    .line 589
    .line 590
    goto :goto_2

    .line 591
    :cond_15
    new-instance p1, Landroid/content/Intent;

    .line 592
    .line 593
    const-class v0, Lflix/com/vision/activities/WatchedAcvivity;

    .line 594
    .line 595
    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 596
    .line 597
    .line 598
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 599
    .line 600
    .line 601
    goto :goto_2

    .line 602
    :cond_16
    if-eq p1, v1, :cond_17

    .line 603
    .line 604
    if-eq p1, v0, :cond_17

    .line 605
    .line 606
    iget-object p1, p0, Lflix/com/vision/activities/MainActivity;->L:Landroid/view/Menu;

    .line 607
    .line 608
    sget v0, Lflix/com/vision/R$id;->action_sort_fav:I

    .line 609
    .line 610
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 611
    .line 612
    .line 613
    move-result-object p1

    .line 614
    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 615
    .line 616
    .line 617
    :cond_17
    :goto_2
    return v3
.end method

.method public onNetworkClicked(Lflix/com/vision/models/tmdb/Network;)V
    .locals 3

    .line 1
    iget v0, p1, Lflix/com/vision/models/tmdb/Network;->id:I

    .line 2
    .line 3
    const/16 v1, 0x2707

    .line 4
    .line 5
    const/high16 v2, 0x10000000

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    new-instance p1, Landroid/content/Intent;

    .line 10
    .line 11
    const-class v0, Lflix/com/vision/activities/DramaHomeActivity;

    .line 12
    .line 13
    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 24
    .line 25
    const-class v1, Lflix/com/vision/activities/FilterActivity;

    .line 26
    .line 27
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 28
    .line 29
    .line 30
    const-string v1, "network"

    .line 31
    .line 32
    iget p1, p1, Lflix/com/vision/models/tmdb/Network;->id:I

    .line 33
    .line 34
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 9

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget v1, Lflix/com/vision/R$id;->action_filter:I

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    new-instance v0, Landroid/content/Intent;

    .line 10
    .line 11
    const-class v1, Lflix/com/vision/activities/FilterActivity;

    .line 12
    .line 13
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 17
    .line 18
    .line 19
    goto/16 :goto_1

    .line 20
    .line 21
    :cond_0
    sget v1, Lflix/com/vision/R$id;->action_refresh:I

    .line 22
    .line 23
    if-ne v0, v1, :cond_1

    .line 24
    .line 25
    :try_start_0
    invoke-static {}, Lflix/com/vision/activities/MainActivity;->resetFilter()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 29
    .line 30
    .line 31
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lflix/com/vision/App;->restartApp()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    .line 38
    goto/16 :goto_1

    .line 39
    .line 40
    :catch_0
    move-exception v0

    .line 41
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 42
    .line 43
    .line 44
    goto/16 :goto_1

    .line 45
    .line 46
    :cond_1
    sget v1, Lflix/com/vision/R$id;->action_exit_app:I

    .line 47
    .line 48
    if-ne v0, v1, :cond_2

    .line 49
    .line 50
    :try_start_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 51
    .line 52
    .line 53
    goto/16 :goto_1

    .line 54
    .line 55
    :catch_1
    move-exception v0

    .line 56
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 57
    .line 58
    .line 59
    goto/16 :goto_1

    .line 60
    .line 61
    :cond_2
    sget v1, Lflix/com/vision/R$id;->action_sort_fav:I

    .line 62
    .line 63
    const/4 v2, 0x1

    .line 64
    if-ne v0, v1, :cond_4

    .line 65
    .line 66
    iget-boolean v0, p0, Lflix/com/vision/activities/MainActivity;->u:Z

    .line 67
    .line 68
    if-nez v0, :cond_3

    .line 69
    .line 70
    iget-object v0, p0, Lflix/com/vision/activities/MainActivity;->A:Ljava/util/ArrayList;

    .line 71
    .line 72
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 73
    .line 74
    .line 75
    iput-boolean v2, p0, Lflix/com/vision/activities/MainActivity;->u:Z

    .line 76
    .line 77
    :cond_3
    iget-object v0, p0, Lflix/com/vision/activities/MainActivity;->A:Ljava/util/ArrayList;

    .line 78
    .line 79
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Lflix/com/vision/activities/MainActivity;->B:LC4/P;

    .line 83
    .line 84
    invoke-virtual {v0}, Lm1/V;->notifyDataSetChanged()V

    .line 85
    .line 86
    .line 87
    goto/16 :goto_1

    .line 88
    .line 89
    :cond_4
    sget v1, Lflix/com/vision/R$id;->action_search:I

    .line 90
    .line 91
    const/4 v3, 0x0

    .line 92
    if-ne v0, v1, :cond_7

    .line 93
    .line 94
    sget-boolean v0, Lflix/com/vision/App;->I:Z

    .line 95
    .line 96
    if-eqz v0, :cond_6

    .line 97
    .line 98
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 103
    .line 104
    const-string v1, "pref_classic_search"

    .line 105
    .line 106
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    if-eqz v0, :cond_5

    .line 111
    .line 112
    iget-object v0, p0, Lflix/com/vision/activities/MainActivity;->z:Lflix/com/vision/materialsearchview/MaterialSearchView;

    .line 113
    .line 114
    invoke-virtual {v0}, Lflix/com/vision/materialsearchview/MaterialSearchView;->openSearch()V

    .line 115
    .line 116
    .line 117
    goto/16 :goto_1

    .line 118
    .line 119
    :cond_5
    new-instance v0, Landroid/content/Intent;

    .line 120
    .line 121
    const-class v1, Lflix/com/vision/activities/SearchActivityTV;

    .line 122
    .line 123
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 127
    .line 128
    .line 129
    goto/16 :goto_1

    .line 130
    .line 131
    :cond_6
    iget-object v0, p0, Lflix/com/vision/activities/MainActivity;->z:Lflix/com/vision/materialsearchview/MaterialSearchView;

    .line 132
    .line 133
    invoke-virtual {v0}, Lflix/com/vision/materialsearchview/MaterialSearchView;->openSearch()V

    .line 134
    .line 135
    .line 136
    goto/16 :goto_1

    .line 137
    .line 138
    :cond_7
    sget v1, Lflix/com/vision/R$id;->action_tvseries:I

    .line 139
    .line 140
    const-wide/16 v4, 0x12c

    .line 141
    .line 142
    const-string v6, "content_type"

    .line 143
    .line 144
    if-ne v0, v1, :cond_8

    .line 145
    .line 146
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 151
    .line 152
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    invoke-interface {v0, v6, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 161
    .line 162
    .line 163
    :try_start_2
    new-instance v0, Landroid/os/Handler;

    .line 164
    .line 165
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 166
    .line 167
    .line 168
    new-instance v1, Ly4/a0;

    .line 169
    .line 170
    const/16 v2, 0xa

    .line 171
    .line 172
    invoke-direct {v1, p0, v2}, Ly4/a0;-><init>(Lflix/com/vision/activities/MainActivity;I)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 176
    .line 177
    .line 178
    goto/16 :goto_1

    .line 179
    .line 180
    :catch_2
    move-exception v0

    .line 181
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 182
    .line 183
    .line 184
    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    .line 185
    .line 186
    .line 187
    goto/16 :goto_1

    .line 188
    .line 189
    :cond_8
    sget v1, Lflix/com/vision/R$id;->action_movies:I

    .line 190
    .line 191
    if-ne v0, v1, :cond_9

    .line 192
    .line 193
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 198
    .line 199
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    invoke-interface {v0, v6, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 208
    .line 209
    .line 210
    :try_start_3
    new-instance v0, Landroid/os/Handler;

    .line 211
    .line 212
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 213
    .line 214
    .line 215
    new-instance v1, Ly4/a0;

    .line 216
    .line 217
    const/16 v2, 0xb

    .line 218
    .line 219
    invoke-direct {v1, p0, v2}, Ly4/a0;-><init>(Lflix/com/vision/activities/MainActivity;I)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 223
    .line 224
    .line 225
    goto/16 :goto_1

    .line 226
    .line 227
    :catch_3
    move-exception v0

    .line 228
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 229
    .line 230
    .line 231
    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    .line 232
    .line 233
    .line 234
    goto/16 :goto_1

    .line 235
    .line 236
    :cond_9
    sget v1, Lflix/com/vision/R$id;->action_settings:I

    .line 237
    .line 238
    if-ne v0, v1, :cond_a

    .line 239
    .line 240
    new-instance v0, Landroid/content/Intent;

    .line 241
    .line 242
    const-class v1, Lflix/com/vision/activities/SettingsActivity;

    .line 243
    .line 244
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 245
    .line 246
    .line 247
    const/16 v1, 0x44c

    .line 248
    .line 249
    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 250
    .line 251
    .line 252
    goto/16 :goto_1

    .line 253
    .line 254
    :cond_a
    sget v1, Lflix/com/vision/R$id;->action_check_update:I

    .line 255
    .line 256
    const-string v4, ""

    .line 257
    .line 258
    if-ne v0, v1, :cond_b

    .line 259
    .line 260
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    invoke-static {p0, v3}, LQ4/d;->newInstance(Landroid/app/Activity;Z)LQ4/d;

    .line 265
    .line 266
    .line 267
    move-result-object v1

    .line 268
    invoke-virtual {v1}, LQ4/d;->setloading()V

    .line 269
    .line 270
    .line 271
    :try_start_4
    invoke-virtual {v1, v0, v4}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 272
    .line 273
    .line 274
    goto :goto_0

    .line 275
    :catch_4
    move-exception v0

    .line 276
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 277
    .line 278
    .line 279
    :goto_0
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    invoke-virtual {v0}, Lflix/com/vision/App;->loadRemoteConfig()V

    .line 284
    .line 285
    .line 286
    new-instance v0, Landroid/os/Handler;

    .line 287
    .line 288
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 289
    .line 290
    .line 291
    new-instance v2, Lflix/com/vision/activities/leanback/fragment/a;

    .line 292
    .line 293
    const/16 v3, 0x10

    .line 294
    .line 295
    invoke-direct {v2, v3, p0, v1}, Lflix/com/vision/activities/leanback/fragment/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 296
    .line 297
    .line 298
    const-wide/16 v3, 0x1388

    .line 299
    .line 300
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 301
    .line 302
    .line 303
    goto/16 :goto_1

    .line 304
    .line 305
    :cond_b
    sget v1, Lflix/com/vision/R$id;->action_favorites:I

    .line 306
    .line 307
    if-ne v0, v1, :cond_d

    .line 308
    .line 309
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 310
    .line 311
    .line 312
    move-result-object v0

    .line 313
    iget-object v0, v0, Lflix/com/vision/App;->r:LP4/e;

    .line 314
    .line 315
    invoke-virtual {v0}, LP4/e;->getFavoritesMoviesFromDb()Ljava/util/ArrayList;

    .line 316
    .line 317
    .line 318
    move-result-object v0

    .line 319
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 320
    .line 321
    .line 322
    move-result v0

    .line 323
    if-lez v0, :cond_c

    .line 324
    .line 325
    new-instance v0, Landroid/content/Intent;

    .line 326
    .line 327
    const-class v1, Lflix/com/vision/activities/FavoritesAcvivity;

    .line 328
    .line 329
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 330
    .line 331
    .line 332
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 333
    .line 334
    .line 335
    goto/16 :goto_1

    .line 336
    .line 337
    :cond_c
    const-string v0, "No Item in your Favorites"

    .line 338
    .line 339
    invoke-static {p0, v0, v3}, Lh5/i;->makeToast(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 340
    .line 341
    .line 342
    goto :goto_1

    .line 343
    :cond_d
    sget v1, Lflix/com/vision/R$id;->action_clear:I

    .line 344
    .line 345
    if-ne v0, v1, :cond_10

    .line 346
    .line 347
    iget v0, p0, Lflix/com/vision/activities/MainActivity;->K:I

    .line 348
    .line 349
    const/4 v1, 0x2

    .line 350
    const-string v5, "YES CLEAR"

    .line 351
    .line 352
    if-ne v0, v1, :cond_e

    .line 353
    .line 354
    invoke-static {p0, v2}, LQ4/d;->newInstance(Landroid/app/Activity;Z)LQ4/d;

    .line 355
    .line 356
    .line 357
    move-result-object v1

    .line 358
    new-instance v6, Ly4/c0;

    .line 359
    .line 360
    const/4 v7, 0x1

    .line 361
    invoke-direct {v6, p0, v1, v7}, Ly4/c0;-><init>(Lflix/com/vision/activities/MainActivity;LQ4/d;I)V

    .line 362
    .line 363
    .line 364
    invoke-virtual {v1, v5, v6}, LQ4/d;->setButton1(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 365
    .line 366
    .line 367
    sget v6, Lflix/com/vision/R$string;->cancel_label:I

    .line 368
    .line 369
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v6

    .line 373
    new-instance v7, LA4/o;

    .line 374
    .line 375
    const/16 v8, 0x8

    .line 376
    .line 377
    invoke-direct {v7, v1, v8}, LA4/o;-><init>(LQ4/d;I)V

    .line 378
    .line 379
    .line 380
    invoke-virtual {v1, v6, v7}, LQ4/d;->setButton2(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 381
    .line 382
    .line 383
    const-string v6, "This will clear all your Favorites\nDo You really want to clear them?"

    .line 384
    .line 385
    invoke-virtual {v1, v6}, LQ4/d;->setMessage(Ljava/lang/String;)V

    .line 386
    .line 387
    .line 388
    const-string v6, "Clear Favorites"

    .line 389
    .line 390
    invoke-virtual {v1, v6}, LQ4/d;->setTitle(Ljava/lang/String;)V

    .line 391
    .line 392
    .line 393
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 394
    .line 395
    .line 396
    move-result-object v6

    .line 397
    invoke-virtual {v1, v6, v4}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 398
    .line 399
    .line 400
    :cond_e
    const/4 v1, 0x3

    .line 401
    if-ne v0, v1, :cond_f

    .line 402
    .line 403
    invoke-static {p0, v2}, LQ4/d;->newInstance(Landroid/app/Activity;Z)LQ4/d;

    .line 404
    .line 405
    .line 406
    move-result-object v1

    .line 407
    new-instance v2, Ly4/c0;

    .line 408
    .line 409
    const/4 v6, 0x3

    .line 410
    invoke-direct {v2, p0, v1, v6}, Ly4/c0;-><init>(Lflix/com/vision/activities/MainActivity;LQ4/d;I)V

    .line 411
    .line 412
    .line 413
    invoke-virtual {v1, v5, v2}, LQ4/d;->setButton1(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 414
    .line 415
    .line 416
    sget v2, Lflix/com/vision/R$string;->cancel_label:I

    .line 417
    .line 418
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 419
    .line 420
    .line 421
    move-result-object v2

    .line 422
    new-instance v5, LA4/o;

    .line 423
    .line 424
    const/16 v6, 0xa

    .line 425
    .line 426
    invoke-direct {v5, v1, v6}, LA4/o;-><init>(LQ4/d;I)V

    .line 427
    .line 428
    .line 429
    invoke-virtual {v1, v2, v5}, LQ4/d;->setButton2(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 430
    .line 431
    .line 432
    const-string v2, "This will clear all your Watched Movies and Shows and You will loose their Progress. \nDo You really want to clear your History?"

    .line 433
    .line 434
    invoke-virtual {v1, v2}, LQ4/d;->setMessage(Ljava/lang/String;)V

    .line 435
    .line 436
    .line 437
    const-string v2, "Clear Watch List"

    .line 438
    .line 439
    invoke-virtual {v1, v2}, LQ4/d;->setTitle(Ljava/lang/String;)V

    .line 440
    .line 441
    .line 442
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 443
    .line 444
    .line 445
    move-result-object v2

    .line 446
    invoke-virtual {v1, v2, v4}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 447
    .line 448
    .line 449
    :cond_f
    const/4 v1, 0x4

    .line 450
    if-ne v0, v1, :cond_10

    .line 451
    .line 452
    const-string v0, "Cannot clear Watching list"

    .line 453
    .line 454
    invoke-static {p0, v0, v3}, Lh5/i;->makeToast(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 455
    .line 456
    .line 457
    :cond_10
    :goto_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 458
    .line 459
    .line 460
    move-result p1

    .line 461
    return p1
.end method

.method public onPause()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lflix/com/vision/activities/MainActivity;->z:Lflix/com/vision/materialsearchview/MaterialSearchView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lflix/com/vision/materialsearchview/MaterialSearchView;->clearSuggestions()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception v0

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v2, "Failed to clear search suggestions: "

    .line 13
    .line 14
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "MainActivity"

    .line 29
    .line 30
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    :cond_0
    :goto_0
    invoke-super {p0}, Landroidx/fragment/app/H;->onPause()V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public onRefresh()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lflix/com/vision/activities/MainActivity;->m()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lflix/com/vision/activities/MainActivity;->D:I

    .line 6
    .line 7
    iget-object v0, p0, Lflix/com/vision/activities/MainActivity;->A:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 10
    .line 11
    .line 12
    iget v0, p0, Lflix/com/vision/activities/MainActivity;->D:I

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lflix/com/vision/activities/MainActivity;->g(I)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lflix/com/vision/activities/base/a;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lflix/com/vision/activities/MainActivity;->z:Lflix/com/vision/materialsearchview/MaterialSearchView;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lflix/com/vision/materialsearchview/MaterialSearchView;->activityResumed()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lflix/com/vision/activities/MainActivity;->z:Lflix/com/vision/materialsearchview/MaterialSearchView;

    .line 12
    .line 13
    invoke-virtual {v0}, Lflix/com/vision/materialsearchview/MaterialSearchView;->closeSearch()V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-boolean v0, v0, Lflix/com/vision/App;->e:Z

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0}, Lflix/com/vision/activities/MainActivity;->i()V

    .line 25
    .line 26
    .line 27
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const/4 v1, 0x0

    .line 32
    iput-boolean v1, v0, Lflix/com/vision/App;->e:Z

    .line 33
    .line 34
    :cond_1
    return-void
.end method

.method public openMovieintent(Lflix/com/vision/models/Movie;)V
    .locals 2

    .line 1
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    iput-boolean v1, v0, Lflix/com/vision/App;->e:Z

    .line 7
    .line 8
    sget-boolean v0, Lflix/com/vision/App;->I:Z

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Landroid/content/Intent;

    .line 13
    .line 14
    const-class v1, Lflix/com/vision/activities/MovieDetailActivityLeanBack;

    .line 15
    .line 16
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 21
    .line 22
    const-class v1, Lflix/com/vision/activities/MovieDetailActivity;

    .line 23
    .line 24
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    const-string v1, "movie"

    .line 28
    .line 29
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

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
