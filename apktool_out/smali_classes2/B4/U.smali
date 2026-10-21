.class public final synthetic LB4/U;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Lflix/com/vision/activities/player/WebPlayerActivitySuper;


# direct methods
.method public synthetic constructor <init>(Lflix/com/vision/activities/player/WebPlayerActivitySuper;I)V
    .locals 0

    .line 1
    iput p2, p0, LB4/U;->b:I

    iput-object p1, p0, LB4/U;->e:Lflix/com/vision/activities/player/WebPlayerActivitySuper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    const/4 p1, 0x0

    .line 2
    iget-object v0, p0, LB4/U;->e:Lflix/com/vision/activities/player/WebPlayerActivitySuper;

    .line 3
    .line 4
    iget v1, p0, LB4/U;->b:I

    .line 5
    .line 6
    packed-switch v1, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    sget v1, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->N:I

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    :try_start_0
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iget-object v1, v1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 19
    .line 20
    const-string v2, "trakt_user_logged_in"

    .line 21
    .line 22
    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    iget-object v1, v1, Lflix/com/vision/App;->q:LD4/h;

    .line 33
    .line 34
    invoke-virtual {v1}, LD4/h;->removeActiveCheckin()Lio/reactivex/Completable;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v1}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catch_0
    move-exception p1

    .line 43
    goto :goto_1

    .line 44
    :cond_0
    :goto_0
    iget-object v1, v0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->n:Landroid/webkit/WebView;

    .line 45
    .line 46
    if-eqz v1, :cond_1

    .line 47
    .line 48
    const-string v2, "about:blank"

    .line 49
    .line 50
    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-object v1, v0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->n:Landroid/webkit/WebView;

    .line 54
    .line 55
    invoke-virtual {v1}, Landroid/webkit/WebView;->clearHistory()V

    .line 56
    .line 57
    .line 58
    iget-object v1, v0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->n:Landroid/webkit/WebView;

    .line 59
    .line 60
    invoke-virtual {v1}, Landroid/webkit/WebView;->onPause()V

    .line 61
    .line 62
    .line 63
    iget-object v1, v0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->n:Landroid/webkit/WebView;

    .line 64
    .line 65
    invoke-virtual {v1}, Landroid/webkit/WebView;->destroy()V

    .line 66
    .line 67
    .line 68
    const/4 v1, 0x0

    .line 69
    iput-object v1, v0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->n:Landroid/webkit/WebView;

    .line 70
    .line 71
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 72
    .line 73
    .line 74
    iput-boolean p1, v0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->K:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :goto_1
    const-string v1, "WebPlayerActivity"

    .line 78
    .line 79
    const-string v2, "Error during WebView cleanup on exit"

    .line 80
    .line 81
    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 85
    .line 86
    .line 87
    :goto_2
    return-void

    .line 88
    :pswitch_0
    iput-boolean p1, v0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->K:Z

    .line 89
    .line 90
    return-void

    .line 91
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
