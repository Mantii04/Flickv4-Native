.class public final synthetic Lflix/com/vision/activities/leanback/fragment/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;

.field public final synthetic f:Lflix/com/vision/models/tmdb/Network;


# direct methods
.method public synthetic constructor <init>(Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;Lflix/com/vision/models/tmdb/Network;I)V
    .locals 0

    .line 1
    iput p3, p0, Lflix/com/vision/activities/leanback/fragment/f;->b:I

    iput-object p1, p0, Lflix/com/vision/activities/leanback/fragment/f;->e:Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;

    iput-object p2, p0, Lflix/com/vision/activities/leanback/fragment/f;->f:Lflix/com/vision/models/tmdb/Network;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget v0, p0, Lflix/com/vision/activities/leanback/fragment/f;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lflix/com/vision/activities/leanback/fragment/f;->e:Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;

    .line 7
    .line 8
    iget-object v1, v0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->B0:Lio/reactivex/disposables/Disposable;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-interface {v1}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/C;->getContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iget-object v1, p0, Lflix/com/vision/activities/leanback/fragment/f;->f:Lflix/com/vision/models/tmdb/Network;

    .line 20
    .line 21
    iget v8, v1, Lflix/com/vision/models/tmdb/Network;->id:I

    .line 22
    .line 23
    const/4 v6, 0x0

    .line 24
    const-string v7, "popularity.desc"

    .line 25
    .line 26
    const-string v3, "-1"

    .line 27
    .line 28
    const/4 v4, 0x1

    .line 29
    const/4 v5, 0x1

    .line 30
    const/4 v9, 0x0

    .line 31
    invoke-static/range {v2 .. v9}, LD4/a;->getItemsByGenres(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lio/reactivex/Observable;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {v2, v3}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->newThread()Lio/reactivex/Scheduler;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-virtual {v2, v3}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    new-instance v3, LA4/u;

    .line 52
    .line 53
    const/4 v4, 0x6

    .line 54
    invoke-direct {v3, v4, v0, v1}, LA4/u;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    new-instance v1, LA4/c;

    .line 58
    .line 59
    const/16 v4, 0x16

    .line 60
    .line 61
    invoke-direct {v1, v4}, LA4/c;-><init>(I)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, v3, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    iput-object v1, v0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->B0:Lio/reactivex/disposables/Disposable;

    .line 69
    .line 70
    return-void

    .line 71
    :pswitch_0
    iget-object v0, p0, Lflix/com/vision/activities/leanback/fragment/f;->e:Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;

    .line 72
    .line 73
    iget-object v1, p0, Lflix/com/vision/activities/leanback/fragment/f;->f:Lflix/com/vision/models/tmdb/Network;

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->o(Lflix/com/vision/models/tmdb/Network;)LW4/d;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    if-eqz v2, :cond_1

    .line 80
    .line 81
    const/4 v3, 0x1

    .line 82
    iput-boolean v3, v0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->E0:Z

    .line 83
    .line 84
    iput-object v1, v0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->F0:Lflix/com/vision/models/tmdb/Network;

    .line 85
    .line 86
    iput-object v2, v0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->I0:LW4/d;

    .line 87
    .line 88
    iget-object v1, v0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->H0:LW4/e;

    .line 89
    .line 90
    invoke-virtual {v1, v2, v3}, LW4/e;->setReorderState(LW4/d;Z)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0}, Landroidx/fragment/app/C;->getContext()Landroid/content/Context;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    const-string v1, "Use D-Pad to move. Press Back to save."

    .line 98
    .line 99
    invoke-static {v0, v1, v3}, Lh5/i;->makeToast(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_1
    invoke-virtual {v0}, Landroidx/fragment/app/C;->getContext()Landroid/content/Context;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    const-string v2, "Could not start reorder."

    .line 108
    .line 109
    const/4 v3, 0x0

    .line 110
    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 115
    .line 116
    .line 117
    iput-boolean v3, v0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->E0:Z

    .line 118
    .line 119
    const/4 v1, 0x0

    .line 120
    iput-object v1, v0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->F0:Lflix/com/vision/models/tmdb/Network;

    .line 121
    .line 122
    iput-object v1, v0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->I0:LW4/d;

    .line 123
    .line 124
    :goto_0
    return-void

    .line 125
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
