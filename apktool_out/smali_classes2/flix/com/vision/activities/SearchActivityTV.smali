.class public Lflix/com/vision/activities/SearchActivityTV;
.super Lflix/com/vision/activities/base/a;
.source "SourceFile"

# interfaces
.implements LU4/j;
.implements LU4/i;


# static fields
.field public static final synthetic I:I


# instance fields
.field public A:Landroid/widget/ImageView;

.field public B:Landroid/widget/ImageView;

.field public C:Landroid/widget/ImageView;

.field public D:Landroid/widget/LinearLayout;

.field public E:Lio/reactivex/disposables/Disposable;

.field public F:I

.field public G:Z

.field public H:Landroid/app/ProgressDialog;

.field public b:Lcom/github/ybq/android/spinkit/SpinKitView;

.field public final e:Ljava/util/ArrayList;

.field public final f:Ljava/util/ArrayList;

.field public j:LC4/P;

.field public final m:Ljava/util/ArrayList;

.field public final n:Ljava/util/ArrayList;

.field public p:Ljava/lang/String;

.field public q:Landroid/widget/TextView;

.field public r:Landroid/widget/TextView;

.field public s:Landroid/widget/TextView;

.field public t:Landroidx/recyclerview/widget/RecyclerView;

.field public u:Landroidx/recyclerview/widget/RecyclerView;

.field public v:Landroidx/recyclerview/widget/RecyclerView;

.field public w:Landroid/widget/RelativeLayout;

.field public x:Landroid/widget/RelativeLayout;

.field public y:Landroid/widget/RelativeLayout;

.field public z:Landroid/widget/RelativeLayout;


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
    iput-object v0, p0, Lflix/com/vision/activities/SearchActivityTV;->e:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lflix/com/vision/activities/SearchActivityTV;->f:Ljava/util/ArrayList;

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lflix/com/vision/activities/SearchActivityTV;->m:Ljava/util/ArrayList;

    .line 24
    .line 25
    new-instance v0, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lflix/com/vision/activities/SearchActivityTV;->n:Ljava/util/ArrayList;

    .line 31
    .line 32
    const-string v0, ""

    .line 33
    .line 34
    iput-object v0, p0, Lflix/com/vision/activities/SearchActivityTV;->p:Ljava/lang/String;

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
    const-string v1, "content_type"

    .line 43
    .line 44
    const/4 v2, 0x0

    .line 45
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    iput v0, p0, Lflix/com/vision/activities/SearchActivityTV;->F:I

    .line 50
    .line 51
    const/4 v0, 0x1

    .line 52
    iput-boolean v0, p0, Lflix/com/vision/activities/SearchActivityTV;->G:Z

    .line 53
    .line 54
    return-void
.end method

.method public static removeLastChar(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x1

    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-static {v0, v1, p0}, LA/i;->d(IILjava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0

    .line 17
    :cond_1
    :goto_0
    const-string p0, ""

    .line 18
    .line 19
    return-object p0
.end method


# virtual methods
.method public final askToUpdateIfAny(ZLflix/com/vision/models/Movie;)V
    .locals 4

    .line 1
    const-string p1, ""

    .line 2
    .line 3
    :try_start_0
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 8
    .line 9
    sget-object v1, Lflix/com/vision/tv/Constant;->b:Ljava/lang/String;

    .line 10
    .line 11
    const-string v1, "update_available"

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 25
    .line 26
    const-string v1, "update_url"

    .line 27
    .line 28
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    const/4 v1, 0x5

    .line 37
    if-le v0, v1, :cond_0

    .line 38
    .line 39
    const/4 v0, 0x1

    .line 40
    invoke-static {p0, v0}, LQ4/d;->newInstance(Landroid/app/Activity;Z)LQ4/d;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    sget v1, Lflix/com/vision/R$string;->later_label:I

    .line 45
    .line 46
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    new-instance v2, LA4/p;

    .line 55
    .line 56
    const/4 v3, 0x3

    .line 57
    invoke-direct {v2, p0, v0, p2, v3}, LA4/p;-><init>(Landroidx/fragment/app/H;LQ4/d;Ljava/lang/Object;I)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1, v2}, LQ4/d;->setButton1(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 61
    .line 62
    .line 63
    sget p2, Lflix/com/vision/R$string;->download_update_label:I

    .line 64
    .line 65
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    new-instance v1, LA4/m;

    .line 70
    .line 71
    const/16 v2, 0x14

    .line 72
    .line 73
    invoke-direct {v1, v2, p0, v0}, LA4/m;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, p2, v1}, LQ4/d;->setButton2(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 77
    .line 78
    .line 79
    new-instance p2, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    sget v1, Lflix/com/vision/R$string;->new_update_message:I

    .line 85
    .line 86
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    iget-object v1, v1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 98
    .line 99
    const-string v2, "update_message"

    .line 100
    .line 101
    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    sget v1, Lflix/com/vision/R$string;->make_sure_you_get_it_mess:I

    .line 109
    .line 110
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p2

    .line 121
    invoke-virtual {v0, p2}, LQ4/d;->setMessage(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    new-instance p2, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    .line 128
    .line 129
    sget v1, Lflix/com/vision/R$string;->update_available_label:I

    .line 130
    .line 131
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    const-string v1, " "

    .line 139
    .line 140
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    iget-object v1, v1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 148
    .line 149
    const-string v2, "update_version_name"

    .line 150
    .line 151
    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p2

    .line 162
    invoke-virtual {v0, p2}, LQ4/d;->setTitle(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 166
    .line 167
    .line 168
    move-result-object p2

    .line 169
    invoke-virtual {v0, p2, p1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    .line 171
    .line 172
    :catch_0
    :cond_0
    return-void
.end method

.method public final e()V
    .locals 4

    .line 1
    iget v0, p0, Lflix/com/vision/activities/SearchActivityTV;->F:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "movie"

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-string v0, "tv"

    .line 9
    .line 10
    :goto_0
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x1

    .line 12
    invoke-static {p0, v2, v0, v1}, LD4/a;->gettabbedList(Landroid/content/Context;ILjava/lang/String;I)Lio/reactivex/Observable;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->newThread()Lio/reactivex/Scheduler;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    new-instance v1, Ly4/F0;

    .line 33
    .line 34
    invoke-direct {v1, p0, v2}, Ly4/F0;-><init>(Lflix/com/vision/activities/SearchActivityTV;I)V

    .line 35
    .line 36
    .line 37
    new-instance v2, Ly4/H0;

    .line 38
    .line 39
    const/4 v3, 0x0

    .line 40
    invoke-direct {v2, v3}, Ly4/H0;-><init>(I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public extractDominantColor()V
    .locals 5

    .line 1
    new-instance v0, Landroid/animation/ArgbEvaluator;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const v3, 0x263984

    .line 12
    .line 13
    .line 14
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    const/4 v4, 0x2

    .line 19
    new-array v4, v4, [Ljava/lang/Object;

    .line 20
    .line 21
    aput-object v2, v4, v1

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    aput-object v3, v4, v1

    .line 25
    .line 26
    invoke-static {v0, v4}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-wide/16 v1, 0x7d0

    .line 31
    .line 32
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 33
    .line 34
    .line 35
    new-instance v1, LA3/a;

    .line 36
    .line 37
    const/16 v2, 0x13

    .line 38
    .line 39
    invoke-direct {v1, p0, v2}, LA3/a;-><init>(Ljava/lang/Object;I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 43
    .line 44
    .line 45
    new-instance v1, Ly4/J0;

    .line 46
    .line 47
    invoke-direct {v1}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public final f()V
    .locals 4

    .line 1
    iget-object v0, p0, Lflix/com/vision/activities/SearchActivityTV;->r:Landroid/widget/TextView;

    .line 2
    .line 3
    iget-object v1, p0, Lflix/com/vision/activities/SearchActivityTV;->p:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lflix/com/vision/activities/SearchActivityTV;->p:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x0

    .line 19
    if-lez v0, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lflix/com/vision/activities/SearchActivityTV;->p:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    const/4 v2, 0x1

    .line 32
    if-le v0, v2, :cond_2

    .line 33
    .line 34
    iget-object v0, p0, Lflix/com/vision/activities/SearchActivityTV;->b:Lcom/github/ybq/android/spinkit/SpinKitView;

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lflix/com/vision/activities/SearchActivityTV;->E:Lio/reactivex/disposables/Disposable;

    .line 40
    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 44
    .line 45
    .line 46
    :cond_0
    iget-object v0, p0, Lflix/com/vision/activities/SearchActivityTV;->p:Ljava/lang/String;

    .line 47
    .line 48
    invoke-static {p0, v0, v2, v1}, LD4/a;->searchDataMulti(Landroid/content/Context;Ljava/lang/String;IZ)Lio/reactivex/Observable;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->newThread()Lio/reactivex/Scheduler;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    new-instance v1, Ly4/F0;

    .line 69
    .line 70
    const/4 v2, 0x0

    .line 71
    invoke-direct {v1, p0, v2}, Ly4/F0;-><init>(Lflix/com/vision/activities/SearchActivityTV;I)V

    .line 72
    .line 73
    .line 74
    new-instance v2, Ly4/F0;

    .line 75
    .line 76
    const/4 v3, 0x2

    .line 77
    invoke-direct {v2, p0, v3}, Ly4/F0;-><init>(Lflix/com/vision/activities/SearchActivityTV;I)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    iput-object v0, p0, Lflix/com/vision/activities/SearchActivityTV;->E:Lio/reactivex/disposables/Disposable;

    .line 85
    .line 86
    return-void

    .line 87
    :cond_1
    iget-object v0, p0, Lflix/com/vision/activities/SearchActivityTV;->p:Ljava/lang/String;

    .line 88
    .line 89
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-eqz v0, :cond_2

    .line 94
    .line 95
    iget-object v0, p0, Lflix/com/vision/activities/SearchActivityTV;->r:Landroid/widget/TextView;

    .line 96
    .line 97
    const-string v2, "Search by title or people"

    .line 98
    .line 99
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    .line 101
    .line 102
    iget-object v0, p0, Lflix/com/vision/activities/SearchActivityTV;->s:Landroid/widget/TextView;

    .line 103
    .line 104
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 105
    .line 106
    .line 107
    iget-object v0, p0, Lflix/com/vision/activities/SearchActivityTV;->f:Ljava/util/ArrayList;

    .line 108
    .line 109
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 110
    .line 111
    .line 112
    iget-object v2, p0, Lflix/com/vision/activities/SearchActivityTV;->e:Ljava/util/ArrayList;

    .line 113
    .line 114
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 115
    .line 116
    .line 117
    iget-object v0, p0, Lflix/com/vision/activities/SearchActivityTV;->j:LC4/P;

    .line 118
    .line 119
    invoke-virtual {v0}, Lm1/V;->notifyDataSetChanged()V

    .line 120
    .line 121
    .line 122
    iget-object v0, p0, Lflix/com/vision/activities/SearchActivityTV;->u:Landroidx/recyclerview/widget/RecyclerView;

    .line 123
    .line 124
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 125
    .line 126
    .line 127
    :cond_2
    return-void
.end method

.method public favoriteDeleted(I)V
    .locals 0

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 1
    const/16 v0, 0x4ba

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
    const-string v0, "android.speech.extra.RESULTS"

    .line 9
    .line 10
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Ljava/lang/String;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_0

    .line 28
    .line 29
    iput-object v0, p0, Lflix/com/vision/activities/SearchActivityTV;->p:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {p0}, Lflix/com/vision/activities/SearchActivityTV;->f()V

    .line 32
    .line 33
    .line 34
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/H;->onActivityResult(IILandroid/content/Intent;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x1

    .line 4
    invoke-super {p0, p1}, Lflix/com/vision/activities/base/a;->onCreate(Landroid/os/Bundle;)V

    .line 5
    .line 6
    .line 7
    sget p1, Lflix/com/vision/R$layout;->activity_search_tv:I

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Le/v;->setContentView(I)V

    .line 10
    .line 11
    .line 12
    sget p1, Lflix/com/vision/R$id;->mic_icon:I

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Landroid/widget/ImageView;

    .line 19
    .line 20
    iput-object p1, p0, Lflix/com/vision/activities/SearchActivityTV;->C:Landroid/widget/ImageView;

    .line 21
    .line 22
    sget p1, Lflix/com/vision/R$id;->back_icon:I

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Landroid/widget/ImageView;

    .line 29
    .line 30
    iput-object p1, p0, Lflix/com/vision/activities/SearchActivityTV;->B:Landroid/widget/ImageView;

    .line 31
    .line 32
    sget p1, Lflix/com/vision/R$id;->space_icon:I

    .line 33
    .line 34
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    check-cast p1, Landroid/widget/ImageView;

    .line 39
    .line 40
    iput-object p1, p0, Lflix/com/vision/activities/SearchActivityTV;->A:Landroid/widget/ImageView;

    .line 41
    .line 42
    sget p1, Lflix/com/vision/R$id;->clear_text_label:I

    .line 43
    .line 44
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    check-cast p1, Landroid/widget/TextView;

    .line 49
    .line 50
    iput-object p1, p0, Lflix/com/vision/activities/SearchActivityTV;->q:Landroid/widget/TextView;

    .line 51
    .line 52
    sget p1, Lflix/com/vision/R$id;->loader:I

    .line 53
    .line 54
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    check-cast p1, Lcom/github/ybq/android/spinkit/SpinKitView;

    .line 59
    .line 60
    iput-object p1, p0, Lflix/com/vision/activities/SearchActivityTV;->b:Lcom/github/ybq/android/spinkit/SpinKitView;

    .line 61
    .line 62
    sget p1, Lflix/com/vision/R$id;->main_relative_view:I

    .line 63
    .line 64
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    check-cast p1, Landroid/widget/LinearLayout;

    .line 69
    .line 70
    iput-object p1, p0, Lflix/com/vision/activities/SearchActivityTV;->D:Landroid/widget/LinearLayout;

    .line 71
    .line 72
    sget p1, Lflix/com/vision/R$id;->clear_button:I

    .line 73
    .line 74
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 79
    .line 80
    iput-object p1, p0, Lflix/com/vision/activities/SearchActivityTV;->z:Landroid/widget/RelativeLayout;

    .line 81
    .line 82
    sget p1, Lflix/com/vision/R$id;->discover_text_view:I

    .line 83
    .line 84
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    check-cast p1, Landroid/widget/TextView;

    .line 89
    .line 90
    iput-object p1, p0, Lflix/com/vision/activities/SearchActivityTV;->s:Landroid/widget/TextView;

    .line 91
    .line 92
    sget p1, Lflix/com/vision/R$id;->button_blank_space:I

    .line 93
    .line 94
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 99
    .line 100
    iput-object p1, p0, Lflix/com/vision/activities/SearchActivityTV;->x:Landroid/widget/RelativeLayout;

    .line 101
    .line 102
    sget p1, Lflix/com/vision/R$id;->button_back_space:I

    .line 103
    .line 104
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 109
    .line 110
    iput-object p1, p0, Lflix/com/vision/activities/SearchActivityTV;->y:Landroid/widget/RelativeLayout;

    .line 111
    .line 112
    sget p1, Lflix/com/vision/R$id;->query_text_view:I

    .line 113
    .line 114
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    check-cast p1, Landroid/widget/TextView;

    .line 119
    .line 120
    iput-object p1, p0, Lflix/com/vision/activities/SearchActivityTV;->r:Landroid/widget/TextView;

    .line 121
    .line 122
    sget p1, Lflix/com/vision/R$id;->button_search_mic:I

    .line 123
    .line 124
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 129
    .line 130
    iput-object p1, p0, Lflix/com/vision/activities/SearchActivityTV;->w:Landroid/widget/RelativeLayout;

    .line 131
    .line 132
    sget p1, Lflix/com/vision/R$id;->recycler_view_letters:I

    .line 133
    .line 134
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 139
    .line 140
    iput-object p1, p0, Lflix/com/vision/activities/SearchActivityTV;->t:Landroidx/recyclerview/widget/RecyclerView;

    .line 141
    .line 142
    sget p1, Lflix/com/vision/R$id;->recycler_view_results:I

    .line 143
    .line 144
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 149
    .line 150
    iput-object p1, p0, Lflix/com/vision/activities/SearchActivityTV;->u:Landroidx/recyclerview/widget/RecyclerView;

    .line 151
    .line 152
    sget p1, Lflix/com/vision/R$id;->recycler_view_letters_numeric:I

    .line 153
    .line 154
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 159
    .line 160
    iput-object p1, p0, Lflix/com/vision/activities/SearchActivityTV;->v:Landroidx/recyclerview/widget/RecyclerView;

    .line 161
    .line 162
    invoke-virtual {p0}, Lflix/com/vision/activities/SearchActivityTV;->extractDominantColor()V

    .line 163
    .line 164
    .line 165
    iget-object p1, p0, Lflix/com/vision/activities/SearchActivityTV;->x:Landroid/widget/RelativeLayout;

    .line 166
    .line 167
    new-instance v3, Ly4/I0;

    .line 168
    .line 169
    invoke-direct {v3, p0, v2}, Ly4/I0;-><init>(Lflix/com/vision/activities/SearchActivityTV;I)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {p1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    .line 174
    .line 175
    iget-object p1, p0, Lflix/com/vision/activities/SearchActivityTV;->y:Landroid/widget/RelativeLayout;

    .line 176
    .line 177
    new-instance v3, Ly4/I0;

    .line 178
    .line 179
    invoke-direct {v3, p0, v1}, Ly4/I0;-><init>(Lflix/com/vision/activities/SearchActivityTV;I)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    .line 184
    .line 185
    iget-object p1, p0, Lflix/com/vision/activities/SearchActivityTV;->z:Landroid/widget/RelativeLayout;

    .line 186
    .line 187
    new-instance v3, Ly4/I0;

    .line 188
    .line 189
    invoke-direct {v3, p0, v0}, Ly4/I0;-><init>(Lflix/com/vision/activities/SearchActivityTV;I)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {p1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    .line 194
    .line 195
    iget-object p1, p0, Lflix/com/vision/activities/SearchActivityTV;->w:Landroid/widget/RelativeLayout;

    .line 196
    .line 197
    new-instance v3, Ly4/I0;

    .line 198
    .line 199
    const/4 v4, 0x4

    .line 200
    invoke-direct {v3, p0, v4}, Ly4/I0;-><init>(Lflix/com/vision/activities/SearchActivityTV;I)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {p1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    .line 205
    .line 206
    iget-object p1, p0, Lflix/com/vision/activities/SearchActivityTV;->z:Landroid/widget/RelativeLayout;

    .line 207
    .line 208
    new-instance v3, Ly4/G0;

    .line 209
    .line 210
    invoke-direct {v3, p0, v1}, Ly4/G0;-><init>(Lflix/com/vision/activities/SearchActivityTV;I)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {p1, v3}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 214
    .line 215
    .line 216
    iget-object p1, p0, Lflix/com/vision/activities/SearchActivityTV;->x:Landroid/widget/RelativeLayout;

    .line 217
    .line 218
    new-instance v1, Ly4/G0;

    .line 219
    .line 220
    invoke-direct {v1, p0, v0}, Ly4/G0;-><init>(Lflix/com/vision/activities/SearchActivityTV;I)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 224
    .line 225
    .line 226
    iget-object p1, p0, Lflix/com/vision/activities/SearchActivityTV;->y:Landroid/widget/RelativeLayout;

    .line 227
    .line 228
    new-instance v0, Ly4/G0;

    .line 229
    .line 230
    const/4 v1, 0x0

    .line 231
    invoke-direct {v0, p0, v1}, Ly4/G0;-><init>(Lflix/com/vision/activities/SearchActivityTV;I)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 235
    .line 236
    .line 237
    iget-object p1, p0, Lflix/com/vision/activities/SearchActivityTV;->w:Landroid/widget/RelativeLayout;

    .line 238
    .line 239
    new-instance v0, Ly4/G0;

    .line 240
    .line 241
    invoke-direct {v0, p0, v2}, Ly4/G0;-><init>(Lflix/com/vision/activities/SearchActivityTV;I)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 245
    .line 246
    .line 247
    iget-object p1, p0, Lflix/com/vision/activities/SearchActivityTV;->m:Ljava/util/ArrayList;

    .line 248
    .line 249
    const-string v0, "a"

    .line 250
    .line 251
    const-string v1, "b"

    .line 252
    .line 253
    const-string v2, "c"

    .line 254
    .line 255
    const-string v3, "d"

    .line 256
    .line 257
    invoke-static {p1, v0, v1, v2, v3}, Lb/c;->u(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    const-string v0, "e"

    .line 261
    .line 262
    const-string v1, "f"

    .line 263
    .line 264
    const-string v2, "g"

    .line 265
    .line 266
    const-string v3, "h"

    .line 267
    .line 268
    invoke-static {p1, v0, v1, v2, v3}, Lb/c;->u(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    const-string v0, "i"

    .line 272
    .line 273
    const-string v1, "j"

    .line 274
    .line 275
    const-string v2, "k"

    .line 276
    .line 277
    const-string v3, "l"

    .line 278
    .line 279
    invoke-static {p1, v0, v1, v2, v3}, Lb/c;->u(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    const-string v0, "m"

    .line 283
    .line 284
    const-string v1, "n"

    .line 285
    .line 286
    const-string v2, "o"

    .line 287
    .line 288
    const-string v3, "p"

    .line 289
    .line 290
    invoke-static {p1, v0, v1, v2, v3}, Lb/c;->u(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    const-string v0, "q"

    .line 294
    .line 295
    const-string v1, "r"

    .line 296
    .line 297
    const-string v2, "s"

    .line 298
    .line 299
    const-string v3, "t"

    .line 300
    .line 301
    invoke-static {p1, v0, v1, v2, v3}, Lb/c;->u(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    const-string v0, "u"

    .line 305
    .line 306
    const-string v1, "v"

    .line 307
    .line 308
    const-string v2, "w"

    .line 309
    .line 310
    const-string v3, "x"

    .line 311
    .line 312
    invoke-static {p1, v0, v1, v2, v3}, Lb/c;->u(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    const-string v0, "y"

    .line 316
    .line 317
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    .line 319
    .line 320
    const-string v0, "z"

    .line 321
    .line 322
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    .line 324
    .line 325
    iget-object v0, p0, Lflix/com/vision/activities/SearchActivityTV;->n:Ljava/util/ArrayList;

    .line 326
    .line 327
    const-string v1, "1"

    .line 328
    .line 329
    const-string v2, "2"

    .line 330
    .line 331
    const-string v3, "3"

    .line 332
    .line 333
    const-string v4, "4"

    .line 334
    .line 335
    invoke-static {v0, v1, v2, v3, v4}, Lb/c;->u(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    const-string v1, "5"

    .line 339
    .line 340
    const-string v2, "6"

    .line 341
    .line 342
    const-string v3, "7"

    .line 343
    .line 344
    const-string v4, "8"

    .line 345
    .line 346
    invoke-static {v0, v1, v2, v3, v4}, Lb/c;->u(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    const-string v1, "9"

    .line 350
    .line 351
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    .line 353
    .line 354
    const-string v1, "0"

    .line 355
    .line 356
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    .line 358
    .line 359
    new-instance v1, LC4/I;

    .line 360
    .line 361
    invoke-direct {v1, p0, p0, p1}, LC4/I;-><init>(Landroid/content/Context;LU4/i;Ljava/util/ArrayList;)V

    .line 362
    .line 363
    .line 364
    iget-object p1, p0, Lflix/com/vision/activities/SearchActivityTV;->t:Landroidx/recyclerview/widget/RecyclerView;

    .line 365
    .line 366
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lm1/V;)V

    .line 367
    .line 368
    .line 369
    iget-object p1, p0, Lflix/com/vision/activities/SearchActivityTV;->t:Landroidx/recyclerview/widget/RecyclerView;

    .line 370
    .line 371
    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 372
    .line 373
    const/4 v2, 0x7

    .line 374
    invoke-direct {v1, p0, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 375
    .line 376
    .line 377
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Lm1/i0;)V

    .line 378
    .line 379
    .line 380
    new-instance p1, LC4/I;

    .line 381
    .line 382
    invoke-direct {p1, p0, p0, v0}, LC4/I;-><init>(Landroid/content/Context;LU4/i;Ljava/util/ArrayList;)V

    .line 383
    .line 384
    .line 385
    iget-object v0, p0, Lflix/com/vision/activities/SearchActivityTV;->v:Landroidx/recyclerview/widget/RecyclerView;

    .line 386
    .line 387
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lm1/V;)V

    .line 388
    .line 389
    .line 390
    iget-object p1, p0, Lflix/com/vision/activities/SearchActivityTV;->v:Landroidx/recyclerview/widget/RecyclerView;

    .line 391
    .line 392
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 393
    .line 394
    invoke-direct {v0, p0, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 395
    .line 396
    .line 397
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Lm1/i0;)V

    .line 398
    .line 399
    .line 400
    new-instance v3, LC4/P;

    .line 401
    .line 402
    iget-object v5, p0, Lflix/com/vision/activities/SearchActivityTV;->f:Ljava/util/ArrayList;

    .line 403
    .line 404
    const/16 v7, 0x457

    .line 405
    .line 406
    const/4 v9, 0x0

    .line 407
    move-object v6, p0

    .line 408
    move-object v8, p0

    .line 409
    move-object v4, p0

    .line 410
    invoke-direct/range {v3 .. v9}, LC4/P;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/app/Activity;ILU4/j;Lflix/com/vision/activities/MainActivity;)V

    .line 411
    .line 412
    .line 413
    iput-object v3, v4, Lflix/com/vision/activities/SearchActivityTV;->j:LC4/P;

    .line 414
    .line 415
    iget-object p1, v4, Lflix/com/vision/activities/SearchActivityTV;->u:Landroidx/recyclerview/widget/RecyclerView;

    .line 416
    .line 417
    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lm1/V;)V

    .line 418
    .line 419
    .line 420
    iget-object p1, v4, Lflix/com/vision/activities/SearchActivityTV;->u:Landroidx/recyclerview/widget/RecyclerView;

    .line 421
    .line 422
    new-instance v0, Lflix/com/vision/helpers/CenterGridLayoutManager;

    .line 423
    .line 424
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 425
    .line 426
    .line 427
    move-result-object v1

    .line 428
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 429
    .line 430
    .line 431
    move-result-object v1

    .line 432
    invoke-static {v1}, Lb/c;->d(Landroid/view/Display;)Landroid/util/DisplayMetrics;

    .line 433
    .line 434
    .line 435
    move-result-object v1

    .line 436
    invoke-virtual {p0}, Le/v;->getResources()Landroid/content/res/Resources;

    .line 437
    .line 438
    .line 439
    move-result-object v2

    .line 440
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 441
    .line 442
    .line 443
    move-result-object v2

    .line 444
    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 445
    .line 446
    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 447
    .line 448
    int-to-float v1, v1

    .line 449
    div-float/2addr v1, v2

    .line 450
    sget-object v2, Lflix/com/vision/App;->z:Ljava/util/ArrayList;

    .line 451
    .line 452
    const/16 v2, 0x8c

    .line 453
    .line 454
    int-to-float v2, v2

    .line 455
    div-float/2addr v1, v2

    .line 456
    const v2, 0x3f333333    # 0.7f

    .line 457
    .line 458
    .line 459
    mul-float/2addr v1, v2

    .line 460
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 461
    .line 462
    .line 463
    move-result v1

    .line 464
    invoke-direct {v0, p0, v1}, Lflix/com/vision/helpers/CenterGridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 465
    .line 466
    .line 467
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Lm1/i0;)V

    .line 468
    .line 469
    .line 470
    invoke-virtual {p0}, Lflix/com/vision/activities/SearchActivityTV;->e()V

    .line 471
    .line 472
    .line 473
    new-instance p1, Landroid/os/Handler;

    .line 474
    .line 475
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 476
    .line 477
    .line 478
    new-instance v0, Lf1/a;

    .line 479
    .line 480
    const/16 v1, 0xb

    .line 481
    .line 482
    invoke-direct {v0, p0, v1}, Lf1/a;-><init>(Ljava/lang/Object;I)V

    .line 483
    .line 484
    .line 485
    const-wide/16 v1, 0xc8

    .line 486
    .line 487
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 488
    .line 489
    .line 490
    return-void
.end method

.method public onLetterClicked(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lflix/com/vision/activities/SearchActivityTV;->p:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {v0, v1, p1}, LA/i;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lflix/com/vision/activities/SearchActivityTV;->p:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {p0}, Lflix/com/vision/activities/SearchActivityTV;->f()V

    .line 15
    .line 16
    .line 17
    return-void
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
    if-eqz v0, :cond_0

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    invoke-virtual {p0, v2, v0}, Lflix/com/vision/activities/SearchActivityTV;->askToUpdateIfAny(ZLflix/com/vision/models/Movie;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {p0, v2, p1}, Lflix/com/vision/activities/SearchActivityTV;->askToUpdateIfAny(ZLflix/com/vision/models/Movie;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lflix/com/vision/activities/SearchActivityTV;->openMovieintent(Lflix/com/vision/models/Movie;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public openMovieintent(Lflix/com/vision/models/Movie;)V
    .locals 3

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
    invoke-virtual {p1}, Lflix/com/vision/models/Movie;->getTitle()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const-string v2, "query"

    .line 25
    .line 26
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    .line 28
    .line 29
    const-string v1, "server"

    .line 30
    .line 31
    const-string v2, ""

    .line 32
    .line 33
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 34
    .line 35
    .line 36
    const-string v1, "movie"

    .line 37
    .line 38
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 39
    .line 40
    .line 41
    const-string v1, "year"

    .line 42
    .line 43
    iget-object p1, p1, Lflix/com/vision/models/Movie;->year:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method
