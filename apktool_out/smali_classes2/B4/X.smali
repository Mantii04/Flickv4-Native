.class public final LB4/X;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lflix/com/vision/activities/player/WebPlayerActivitySuper;


# direct methods
.method public constructor <init>(Lflix/com/vision/activities/player/WebPlayerActivitySuper;)V
    .locals 0

    .line 1
    iput-object p1, p0, LB4/X;->a:Lflix/com/vision/activities/player/WebPlayerActivitySuper;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, LB4/X;->a:Lflix/com/vision/activities/player/WebPlayerActivitySuper;

    .line 5
    .line 6
    iget-object p2, p1, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->p:Landroid/widget/LinearLayout;

    .line 7
    .line 8
    const/16 v0, 0x8

    .line 9
    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object p2, p1, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->F:Landroid/widget/RelativeLayout;

    .line 16
    .line 17
    if-eqz p2, :cond_1

    .line 18
    .line 19
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    :cond_1
    iget-boolean p2, p1, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->e:Z

    .line 23
    .line 24
    if-eqz p2, :cond_2

    .line 25
    .line 26
    :try_start_0
    iget-object p2, p1, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->v:Landroid/widget/ImageView;

    .line 27
    .line 28
    invoke-virtual {p2}, Landroid/view/View;->clearAnimation()V

    .line 29
    .line 30
    .line 31
    iget-object p2, p1, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->v:Landroid/widget/ImageView;

    .line 32
    .line 33
    const/high16 v0, 0x3f800000    # 1.0f

    .line 34
    .line 35
    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    .line 38
    :catch_0
    :cond_2
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    iget-object p2, p2, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 43
    .line 44
    const-string v0, "trakt_user_logged_in"

    .line 45
    .line 46
    const/4 v1, 0x0

    .line 47
    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 48
    .line 49
    .line 50
    move-result p2

    .line 51
    if-eqz p2, :cond_4

    .line 52
    .line 53
    iget-object p2, p1, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->r:Lflix/com/vision/models/Movie;

    .line 54
    .line 55
    invoke-virtual {p2}, Lflix/com/vision/models/Movie;->isSeries()Z

    .line 56
    .line 57
    .line 58
    move-result p2

    .line 59
    if-nez p2, :cond_3

    .line 60
    .line 61
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    iget-object p2, p2, Lflix/com/vision/App;->q:LD4/h;

    .line 66
    .line 67
    iget-object v0, p1, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->r:Lflix/com/vision/models/Movie;

    .line 68
    .line 69
    invoke-virtual {p2, v0}, LD4/h;->checkInMovie(Lflix/com/vision/models/Movie;)Lio/reactivex/Completable;

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_3
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    iget-object p2, p2, Lflix/com/vision/App;->q:LD4/h;

    .line 78
    .line 79
    iget-object v0, p1, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->r:Lflix/com/vision/models/Movie;

    .line 80
    .line 81
    iget v2, p1, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->H:I

    .line 82
    .line 83
    iget v3, p1, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->G:I

    .line 84
    .line 85
    invoke-virtual {p2, v0, v2, v3}, LD4/h;->checkInEpisode(Lflix/com/vision/models/Movie;II)Lio/reactivex/Completable;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {p2, v0}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    new-instance v0, LB4/N;

    .line 98
    .line 99
    const/4 v2, 0x1

    .line 100
    invoke-direct {v0, p1, v2}, LB4/N;-><init>(Le/v;I)V

    .line 101
    .line 102
    .line 103
    new-instance v2, LA4/c;

    .line 104
    .line 105
    const/16 v3, 0xa

    .line 106
    .line 107
    invoke-direct {v2, v3}, LA4/c;-><init>(I)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p2, v0, v2}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 111
    .line 112
    .line 113
    :cond_4
    :goto_0
    iget-object p1, p1, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->n:Landroid/webkit/WebView;

    .line 114
    .line 115
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 116
    .line 117
    .line 118
    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 2

    .line 1
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {}, LT4/a;->getInstance()LT4/a;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1, v0}, LT4/a;->isAd(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    new-instance p1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string p2, "Blocking ad request: "

    .line 22
    .line 23
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const-string p2, "AdBlocker"

    .line 34
    .line 35
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    invoke-static {}, LT4/a;->getInstance()LT4/a;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p1}, LT4/a;->createEmptyResource()Landroid/webkit/WebResourceResponse;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    return-object p1

    .line 47
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    return-object p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method
