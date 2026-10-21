.class public final synthetic LB4/M;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Lflix/com/vision/activities/player/WebPlayerActivity;


# direct methods
.method public synthetic constructor <init>(Lflix/com/vision/activities/player/WebPlayerActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, LB4/M;->b:I

    iput-object p1, p0, LB4/M;->e:Lflix/com/vision/activities/player/WebPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    const/4 p1, 0x0

    .line 2
    iget-object v0, p0, LB4/M;->e:Lflix/com/vision/activities/player/WebPlayerActivity;

    .line 3
    .line 4
    iget v1, p0, LB4/M;->b:I

    .line 5
    .line 6
    packed-switch v1, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    iput-boolean p1, v0, Lflix/com/vision/activities/player/WebPlayerActivity;->L:Z

    .line 11
    .line 12
    new-instance p1, Landroid/content/Intent;

    .line 13
    .line 14
    const-class v1, Lflix/com/vision/activities/SettingsActivity;

    .line 15
    .line 16
    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :pswitch_0
    iput-boolean p1, v0, Lflix/com/vision/activities/player/WebPlayerActivity;->K:Z

    .line 24
    .line 25
    return-void

    .line 26
    :pswitch_1
    iput-boolean p1, v0, Lflix/com/vision/activities/player/WebPlayerActivity;->K:Z

    .line 27
    .line 28
    return-void

    .line 29
    :pswitch_2
    iput-boolean p1, v0, Lflix/com/vision/activities/player/WebPlayerActivity;->K:Z

    .line 30
    .line 31
    return-void

    .line 32
    :pswitch_3
    sget v1, Lflix/com/vision/activities/player/WebPlayerActivity;->O:I

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    :try_start_0
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    iget-object v1, v1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 42
    .line 43
    const-string v2, "trakt_user_logged_in"

    .line 44
    .line 45
    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_0

    .line 50
    .line 51
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    iget-object v1, v1, Lflix/com/vision/App;->q:LD4/h;

    .line 56
    .line 57
    invoke-virtual {v1}, LD4/h;->removeActiveCheckin()Lio/reactivex/Completable;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v1}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    .line 62
    .line 63
    .line 64
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 65
    .line 66
    .line 67
    iput-boolean p1, v0, Lflix/com/vision/activities/player/WebPlayerActivity;->K:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :catch_0
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 71
    .line 72
    .line 73
    :goto_0
    return-void

    .line 74
    :pswitch_4
    iput-boolean p1, v0, Lflix/com/vision/activities/player/WebPlayerActivity;->K:Z

    .line 75
    .line 76
    return-void

    .line 77
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
