.class public Lflix/com/vision/activities/player/AdultVideoPlayerActivity;
.super Lflix/com/vision/activities/base/a;
.source "SourceFile"

# interfaces
.implements LK4/b;
.implements LU4/b;
.implements LU4/c;
.implements LU4/a;


# static fields
.field public static final synthetic z:I


# instance fields
.field public b:Lcom/github/ybq/android/spinkit/SpinKitView;

.field public e:Ljava/lang/String;

.field public f:Landroid/widget/RelativeLayout;

.field public j:Landroidx/recyclerview/widget/RecyclerView;

.field public m:Landroid/view/animation/Animation;

.field public n:Landroid/view/animation/Animation;

.field public p:Landroid/view/View;

.field public q:Lflix/com/vision/bvp/BetterVideoPlayer;

.field public final r:LT4/j;

.field public s:Z

.field public t:Ljava/lang/String;

.field public final u:Ljava/util/ArrayList;

.field public final v:Ljava/util/ArrayList;

.field public w:LC4/h;

.field public final x:Ljava/util/ArrayList;

.field public y:LQ4/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lflix/com/vision/activities/base/a;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, LT4/j;

    .line 5
    .line 6
    invoke-direct {v0}, LT4/j;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lflix/com/vision/activities/player/AdultVideoPlayerActivity;->r:LT4/j;

    .line 10
    .line 11
    new-instance v0, Landroid/os/Handler;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lflix/com/vision/activities/player/AdultVideoPlayerActivity;->s:Z

    .line 18
    .line 19
    new-instance v0, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lflix/com/vision/activities/player/AdultVideoPlayerActivity;->u:Ljava/util/ArrayList;

    .line 25
    .line 26
    new-instance v0, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lflix/com/vision/activities/player/AdultVideoPlayerActivity;->v:Ljava/util/ArrayList;

    .line 32
    .line 33
    new-instance v0, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lflix/com/vision/activities/player/AdultVideoPlayerActivity;->x:Ljava/util/ArrayList;

    .line 39
    .line 40
    return-void
.end method

.method public static synthetic e(Lflix/com/vision/activities/player/AdultVideoPlayerActivity;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-object v0, p0, Lflix/com/vision/activities/player/AdultVideoPlayerActivity;->q:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 5
    .line 6
    invoke-virtual {v0}, Lflix/com/vision/bvp/BetterVideoPlayer;->stop()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lflix/com/vision/activities/player/AdultVideoPlayerActivity;->q:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 10
    .line 11
    invoke-virtual {v0}, Lflix/com/vision/bvp/BetterVideoPlayer;->release()V

    .line 12
    .line 13
    .line 14
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    :catch_0
    return-void
.end method


# virtual methods
.method public OnStreamResolvedSuccess(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lflix/com/vision/models/adult/AdultLink;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lflix/com/vision/activities/player/AdultVideoPlayerActivity;->y:LQ4/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    :catch_0
    :cond_0
    iget-object v0, p0, Lflix/com/vision/activities/player/AdultVideoPlayerActivity;->v:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 14
    .line 15
    .line 16
    new-instance p1, LB4/f;

    .line 17
    .line 18
    invoke-direct {p1, p0}, LB4/f;-><init>(Lflix/com/vision/activities/player/AdultVideoPlayerActivity;)V

    .line 19
    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p1, LB4/f;->a:Z

    .line 23
    .line 24
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public OnVideoListSuccess(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lflix/com/vision/models/adult/AdultVideo;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, LB4/f;

    .line 2
    .line 3
    invoke-direct {v0, p0}, LB4/f;-><init>(Lflix/com/vision/activities/player/AdultVideoPlayerActivity;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, v0, LB4/f;->b:Ljava/util/ArrayList;

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput-boolean p1, v0, LB4/f;->a:Z

    .line 10
    .line 11
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final f(Lflix/com/vision/models/adult/AdultVideo;)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string v0, "videoUrl"

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "title"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const-string v2, "image_url"

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    new-instance v2, Lflix/com/vision/models/adult/AdultVideo;

    .line 34
    .line 35
    invoke-direct {v2}, Lflix/com/vision/models/adult/AdultVideo;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object v0, v2, Lflix/com/vision/models/adult/AdultVideo;->title:Ljava/lang/String;

    .line 39
    .line 40
    iput-object v1, v2, Lflix/com/vision/models/adult/AdultVideo;->img_url:Ljava/lang/String;

    .line 41
    .line 42
    iput-object p1, v2, Lflix/com/vision/models/adult/AdultVideo;->url:Ljava/lang/String;

    .line 43
    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    if-eqz p1, :cond_1

    .line 47
    .line 48
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    iget-object p1, p1, Lflix/com/vision/App;->r:LP4/e;

    .line 53
    .line 54
    invoke-virtual {p1, v2}, LP4/e;->addAdultHistory(Lflix/com/vision/models/adult/AdultVideo;)Z

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_0
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iget-object v0, v0, Lflix/com/vision/App;->r:LP4/e;

    .line 63
    .line 64
    invoke-virtual {v0, p1}, LP4/e;->addAdultHistory(Lflix/com/vision/models/adult/AdultVideo;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .line 66
    .line 67
    :catch_0
    :cond_1
    return-void
.end method

.method public final g()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lflix/com/vision/activities/player/AdultVideoPlayerActivity;->s:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lflix/com/vision/activities/player/AdultVideoPlayerActivity;->f:Landroid/widget/RelativeLayout;

    .line 7
    .line 8
    iget-object v1, p0, Lflix/com/vision/activities/player/AdultVideoPlayerActivity;->n:Landroid/view/animation/Animation;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lflix/com/vision/activities/player/AdultVideoPlayerActivity;->f:Landroid/widget/RelativeLayout;

    .line 14
    .line 15
    const/16 v1, 0x8

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lflix/com/vision/activities/player/AdultVideoPlayerActivity;->j:Landroidx/recyclerview/widget/RecyclerView;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public getVideos()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lflix/com/vision/activities/player/AdultVideoPlayerActivity;->s:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, LX4/g;

    .line 7
    .line 8
    invoke-direct {v0, p0, p0}, LX4/g;-><init>(Landroid/content/Context;LU4/c;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lflix/com/vision/activities/player/AdultVideoPlayerActivity;->t:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, LX4/g;->process(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final h()V
    .locals 4

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
    move-result-object v1

    .line 10
    const-string v2, "Exit"

    .line 11
    .line 12
    invoke-virtual {v1, v2}, LQ4/d;->setTitle(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v2, "Do you really want to stop playback and exit ?"

    .line 16
    .line 17
    invoke-virtual {v1, v2}, LQ4/d;->setMessage(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    new-instance v2, LA4/q;

    .line 21
    .line 22
    const/4 v3, 0x1

    .line 23
    invoke-direct {v2, v3}, LA4/q;-><init>(I)V

    .line 24
    .line 25
    .line 26
    const-string v3, "CANCEL"

    .line 27
    .line 28
    invoke-virtual {v1, v3, v2}, LQ4/d;->setButton1(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 29
    .line 30
    .line 31
    new-instance v2, LB4/a;

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    invoke-direct {v2, p0, v3}, LB4/a;-><init>(Ljava/lang/Object;I)V

    .line 35
    .line 36
    .line 37
    const-string v3, "YES"

    .line 38
    .line 39
    invoke-virtual {v1, v3, v2}, LQ4/d;->setButton2(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 40
    .line 41
    .line 42
    :try_start_0
    const-string v2, ""

    .line 43
    .line 44
    invoke-virtual {v1, v0, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :catch_0
    move-exception v0

    .line 49
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public final i()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lflix/com/vision/activities/player/AdultVideoPlayerActivity;->s:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lflix/com/vision/activities/player/AdultVideoPlayerActivity;->f:Landroid/widget/RelativeLayout;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lflix/com/vision/activities/player/AdultVideoPlayerActivity;->f:Landroid/widget/RelativeLayout;

    .line 13
    .line 14
    iget-object v1, p0, Lflix/com/vision/activities/player/AdultVideoPlayerActivity;->m:Landroid/view/animation/Animation;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lflix/com/vision/activities/player/AdultVideoPlayerActivity;->j:Landroidx/recyclerview/widget/RecyclerView;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lflix/com/vision/activities/player/AdultVideoPlayerActivity;->q:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 5
    .line 6
    invoke-virtual {v0}, Lflix/com/vision/bvp/BetterVideoPlayer;->isControlsShown()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lflix/com/vision/activities/player/AdultVideoPlayerActivity;->q:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 13
    .line 14
    invoke-virtual {v0}, Lflix/com/vision/bvp/BetterVideoPlayer;->hideControls()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    invoke-virtual {p0}, Lflix/com/vision/activities/player/AdultVideoPlayerActivity;->h()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public onBuffering(I)V
    .locals 0

    return-void
.end method

.method public onCompletion(Lflix/com/vision/bvp/BetterVideoPlayer;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    :catch_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lflix/com/vision/activities/base/a;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    sget p1, Lflix/com/vision/R$layout;->activity_player_adult:I

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Le/v;->setContentView(I)V

    .line 14
    .line 15
    .line 16
    sget p1, Lflix/com/vision/R$id;->buffering_view:I

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Lcom/github/ybq/android/spinkit/SpinKitView;

    .line 23
    .line 24
    iput-object p1, p0, Lflix/com/vision/activities/player/AdultVideoPlayerActivity;->b:Lcom/github/ybq/android/spinkit/SpinKitView;

    .line 25
    .line 26
    sget p1, Lflix/com/vision/R$id;->relativeview_videos:I

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 33
    .line 34
    iput-object p1, p0, Lflix/com/vision/activities/player/AdultVideoPlayerActivity;->f:Landroid/widget/RelativeLayout;

    .line 35
    .line 36
    sget p1, Lflix/com/vision/R$id;->recyclerview_videos:I

    .line 37
    .line 38
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 43
    .line 44
    iput-object p1, p0, Lflix/com/vision/activities/player/AdultVideoPlayerActivity;->j:Landroidx/recyclerview/widget/RecyclerView;

    .line 45
    .line 46
    const/4 v0, 0x5

    .line 47
    invoke-static {p1, v0}, Lb/c;->s(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lflix/com/vision/activities/player/AdultVideoPlayerActivity;->j:Landroidx/recyclerview/widget/RecyclerView;

    .line 51
    .line 52
    new-instance v0, Lflix/com/vision/helpers/CenterLayoutManager;

    .line 53
    .line 54
    const/4 v1, 0x1

    .line 55
    const/4 v2, 0x0

    .line 56
    invoke-direct {v0, p0, v1, v2}, Lflix/com/vision/helpers/CenterLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Lm1/i0;)V

    .line 60
    .line 61
    .line 62
    new-instance p1, LC4/h;

    .line 63
    .line 64
    iget-object v0, p0, Lflix/com/vision/activities/player/AdultVideoPlayerActivity;->x:Ljava/util/ArrayList;

    .line 65
    .line 66
    invoke-direct {p1, p0, p0, v0}, LC4/h;-><init>(Landroid/app/Activity;LU4/b;Ljava/util/ArrayList;)V

    .line 67
    .line 68
    .line 69
    iput-object p1, p0, Lflix/com/vision/activities/player/AdultVideoPlayerActivity;->w:LC4/h;

    .line 70
    .line 71
    iget-object v0, p0, Lflix/com/vision/activities/player/AdultVideoPlayerActivity;->j:Landroidx/recyclerview/widget/RecyclerView;

    .line 72
    .line 73
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lm1/V;)V

    .line 74
    .line 75
    .line 76
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 81
    .line 82
    const-string v0, "pref_show_adult_zone_hide_related"

    .line 83
    .line 84
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    iput-boolean p1, p0, Lflix/com/vision/activities/player/AdultVideoPlayerActivity;->s:Z

    .line 89
    .line 90
    sget p1, Lflix/com/vision/R$id;->video_view:I

    .line 91
    .line 92
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    check-cast p1, Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 97
    .line 98
    iput-object p1, p0, Lflix/com/vision/activities/player/AdultVideoPlayerActivity;->q:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 99
    .line 100
    new-instance v0, LB4/e;

    .line 101
    .line 102
    invoke-direct {v0, p0}, LB4/e;-><init>(Lflix/com/vision/activities/player/AdultVideoPlayerActivity;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, v0}, Lflix/com/vision/bvp/BetterVideoPlayer;->addListener(Landroidx/media3/common/Player$Listener;)V

    .line 106
    .line 107
    .line 108
    const/4 p1, 0x0

    .line 109
    invoke-virtual {p0, p1}, Lflix/com/vision/activities/player/AdultVideoPlayerActivity;->f(Lflix/com/vision/models/adult/AdultVideo;)V

    .line 110
    .line 111
    .line 112
    iget-object p1, p0, Lflix/com/vision/activities/player/AdultVideoPlayerActivity;->q:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 113
    .line 114
    invoke-virtual {p1, v1}, Lflix/com/vision/bvp/BetterVideoPlayer;->setAutoPlay(Z)V

    .line 115
    .line 116
    .line 117
    iget-object p1, p0, Lflix/com/vision/activities/player/AdultVideoPlayerActivity;->q:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 118
    .line 119
    invoke-virtual {p1, v1}, Lflix/com/vision/bvp/BetterVideoPlayer;->setBottomProgressBarVisibility(Z)V

    .line 120
    .line 121
    .line 122
    iget-object p1, p0, Lflix/com/vision/activities/player/AdultVideoPlayerActivity;->q:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 123
    .line 124
    invoke-virtual {p1, v1}, Lflix/com/vision/bvp/BetterVideoPlayer;->setHideControlsOnPlay(Z)V

    .line 125
    .line 126
    .line 127
    iget-object p1, p0, Lflix/com/vision/activities/player/AdultVideoPlayerActivity;->q:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 128
    .line 129
    const/16 v0, 0x2710

    .line 130
    .line 131
    invoke-virtual {p1, v0}, Lflix/com/vision/bvp/BetterVideoPlayer;->setHideControlsDuration(I)V

    .line 132
    .line 133
    .line 134
    iget-object p1, p0, Lflix/com/vision/activities/player/AdultVideoPlayerActivity;->q:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 135
    .line 136
    invoke-virtual {p1, p0}, Lflix/com/vision/bvp/BetterVideoPlayer;->setCallback(LK4/b;)V

    .line 137
    .line 138
    .line 139
    iget-object p1, p0, Lflix/com/vision/activities/player/AdultVideoPlayerActivity;->q:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 140
    .line 141
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    invoke-virtual {p1, v0}, Lflix/com/vision/bvp/BetterVideoPlayer;->enableSwipeGestures(Landroid/view/Window;)V

    .line 146
    .line 147
    .line 148
    iget-object p1, p0, Lflix/com/vision/activities/player/AdultVideoPlayerActivity;->q:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 149
    .line 150
    invoke-virtual {p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->getToolbar()Landroidx/appcompat/widget/Toolbar;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    sget v0, Lflix/com/vision/R$menu;->menu_simple_video_player_adult:I

    .line 155
    .line 156
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->inflateMenu(I)V

    .line 157
    .line 158
    .line 159
    iget-object p1, p0, Lflix/com/vision/activities/player/AdultVideoPlayerActivity;->q:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 160
    .line 161
    invoke-virtual {p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->getToolbar()Landroidx/appcompat/widget/Toolbar;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    new-instance v0, LA0/a;

    .line 166
    .line 167
    const/4 v1, 0x2

    .line 168
    invoke-direct {v0, p0, v1}, LA0/a;-><init>(Ljava/lang/Object;I)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setOnMenuItemClickListener(Ll/m2;)V

    .line 172
    .line 173
    .line 174
    iget-object p1, p0, Lflix/com/vision/activities/player/AdultVideoPlayerActivity;->q:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 175
    .line 176
    invoke-virtual {p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->getToolbar()Landroidx/appcompat/widget/Toolbar;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    .line 181
    .line 182
    .line 183
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    iput-object p1, p0, Lflix/com/vision/activities/player/AdultVideoPlayerActivity;->p:Landroid/view/View;

    .line 192
    .line 193
    const/16 v0, 0x404

    .line 194
    .line 195
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    sget v0, Lflix/com/vision/R$anim;->slide_left:I

    .line 203
    .line 204
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    iput-object p1, p0, Lflix/com/vision/activities/player/AdultVideoPlayerActivity;->m:Landroid/view/animation/Animation;

    .line 209
    .line 210
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    sget v0, Lflix/com/vision/R$anim;->slide_right:I

    .line 215
    .line 216
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 217
    .line 218
    .line 219
    move-result-object p1

    .line 220
    iput-object p1, p0, Lflix/com/vision/activities/player/AdultVideoPlayerActivity;->n:Landroid/view/animation/Animation;

    .line 221
    .line 222
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 223
    .line 224
    .line 225
    move-result-object p1

    .line 226
    const-string v0, "url"

    .line 227
    .line 228
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object p1

    .line 232
    iput-object p1, p0, Lflix/com/vision/activities/player/AdultVideoPlayerActivity;->e:Ljava/lang/String;

    .line 233
    .line 234
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 235
    .line 236
    .line 237
    move-result-object p1

    .line 238
    const-string v0, "videoUrl"

    .line 239
    .line 240
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object p1

    .line 244
    iput-object p1, p0, Lflix/com/vision/activities/player/AdultVideoPlayerActivity;->t:Ljava/lang/String;

    .line 245
    .line 246
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 247
    .line 248
    .line 249
    move-result-object p1

    .line 250
    const-string v0, "title"

    .line 251
    .line 252
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object p1

    .line 256
    iget-object v0, p0, Lflix/com/vision/activities/player/AdultVideoPlayerActivity;->q:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 257
    .line 258
    invoke-virtual {v0}, Lflix/com/vision/bvp/BetterVideoPlayer;->getToolbar()Landroidx/appcompat/widget/Toolbar;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 263
    .line 264
    .line 265
    new-instance p1, Lflix/com/vision/models/adult/AdultVideo;

    .line 266
    .line 267
    invoke-direct {p1}, Lflix/com/vision/models/adult/AdultVideo;-><init>()V

    .line 268
    .line 269
    .line 270
    iget-object v0, p0, Lflix/com/vision/activities/player/AdultVideoPlayerActivity;->t:Ljava/lang/String;

    .line 271
    .line 272
    iput-object v0, p1, Lflix/com/vision/models/adult/AdultVideo;->url:Ljava/lang/String;

    .line 273
    .line 274
    iget-object v0, p0, Lflix/com/vision/activities/player/AdultVideoPlayerActivity;->u:Ljava/util/ArrayList;

    .line 275
    .line 276
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    .line 278
    .line 279
    iget-object p1, p0, Lflix/com/vision/activities/player/AdultVideoPlayerActivity;->e:Ljava/lang/String;

    .line 280
    .line 281
    if-eqz p1, :cond_0

    .line 282
    .line 283
    invoke-virtual {p0, p1}, Lflix/com/vision/activities/player/AdultVideoPlayerActivity;->playAdultLink(Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    :cond_0
    invoke-virtual {p0}, Lflix/com/vision/activities/player/AdultVideoPlayerActivity;->getVideos()V

    .line 287
    .line 288
    .line 289
    return-void
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

.method public onError(Lflix/com/vision/bvp/BetterVideoPlayer;Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 p2, 0x1

    .line 6
    invoke-static {p0, p1, p2}, Lh5/i;->makeToast(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 1
    iget-object p1, p0, Lflix/com/vision/activities/player/AdultVideoPlayerActivity;->r:LT4/j;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, LT4/j;->getDirectionPressed(Landroid/view/InputEvent;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iget-object p2, p0, Lflix/com/vision/activities/player/AdultVideoPlayerActivity;->q:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 8
    .line 9
    invoke-virtual {p2}, Lflix/com/vision/bvp/BetterVideoPlayer;->showControls()V

    .line 10
    .line 11
    .line 12
    const/4 p2, 0x0

    .line 13
    const/4 v0, 0x1

    .line 14
    if-eq p1, v0, :cond_b

    .line 15
    .line 16
    const/4 v1, 0x2

    .line 17
    if-eq p1, v1, :cond_8

    .line 18
    .line 19
    const/4 v1, 0x4

    .line 20
    if-eq p1, v1, :cond_7

    .line 21
    .line 22
    const/4 v1, 0x5

    .line 23
    if-eq p1, v1, :cond_4

    .line 24
    .line 25
    const/16 v1, 0xa

    .line 26
    .line 27
    if-eq p1, v1, :cond_2

    .line 28
    .line 29
    const/16 v1, 0xb

    .line 30
    .line 31
    if-eq p1, v1, :cond_0

    .line 32
    .line 33
    return p2

    .line 34
    :cond_0
    iget-object p1, p0, Lflix/com/vision/activities/player/AdultVideoPlayerActivity;->f:Landroid/widget/RelativeLayout;

    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-nez p1, :cond_1

    .line 41
    .line 42
    invoke-virtual {p0}, Lflix/com/vision/activities/player/AdultVideoPlayerActivity;->g()V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {p0}, Lflix/com/vision/activities/player/AdultVideoPlayerActivity;->i()V

    .line 47
    .line 48
    .line 49
    :goto_0
    return v0

    .line 50
    :cond_2
    iget-object p1, p0, Lflix/com/vision/activities/player/AdultVideoPlayerActivity;->q:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 51
    .line 52
    invoke-virtual {p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->isControlsShown()Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-eqz p1, :cond_3

    .line 57
    .line 58
    iget-object p1, p0, Lflix/com/vision/activities/player/AdultVideoPlayerActivity;->q:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 59
    .line 60
    invoke-virtual {p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->hideControls()V

    .line 61
    .line 62
    .line 63
    return v0

    .line 64
    :cond_3
    invoke-virtual {p0}, Lflix/com/vision/activities/player/AdultVideoPlayerActivity;->h()V

    .line 65
    .line 66
    .line 67
    return v0

    .line 68
    :cond_4
    :try_start_0
    iget-object p1, p0, Lflix/com/vision/activities/player/AdultVideoPlayerActivity;->q:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 69
    .line 70
    invoke-virtual {p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->isPlaying()Z

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    if-eqz p1, :cond_5

    .line 75
    .line 76
    iget-object p1, p0, Lflix/com/vision/activities/player/AdultVideoPlayerActivity;->q:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 77
    .line 78
    invoke-virtual {p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->pause()V

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :catch_0
    move-exception p1

    .line 83
    goto :goto_2

    .line 84
    :cond_5
    iget-object p1, p0, Lflix/com/vision/activities/player/AdultVideoPlayerActivity;->q:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 85
    .line 86
    invoke-virtual {p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->isPrepared()Z

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    if-eqz p1, :cond_6

    .line 91
    .line 92
    iget-object p1, p0, Lflix/com/vision/activities/player/AdultVideoPlayerActivity;->q:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 93
    .line 94
    invoke-virtual {p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->start()V

    .line 95
    .line 96
    .line 97
    :cond_6
    :goto_1
    iget-object p1, p0, Lflix/com/vision/activities/player/AdultVideoPlayerActivity;->q:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 98
    .line 99
    invoke-virtual {p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->showControls()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .line 101
    .line 102
    goto :goto_3

    .line 103
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 104
    .line 105
    .line 106
    :goto_3
    return v0

    .line 107
    :cond_7
    iget-object p1, p0, Lflix/com/vision/activities/player/AdultVideoPlayerActivity;->q:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 108
    .line 109
    invoke-virtual {p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->toggleControls()V

    .line 110
    .line 111
    .line 112
    return v0

    .line 113
    :cond_8
    iget-object p1, p0, Lflix/com/vision/activities/player/AdultVideoPlayerActivity;->q:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 114
    .line 115
    invoke-virtual {p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->isPlaying()Z

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    if-eqz p1, :cond_a

    .line 120
    .line 121
    iget-object p1, p0, Lflix/com/vision/activities/player/AdultVideoPlayerActivity;->q:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 122
    .line 123
    invoke-virtual {p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->isPrepared()Z

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    if-nez p1, :cond_9

    .line 128
    .line 129
    goto :goto_5

    .line 130
    :cond_9
    :try_start_1
    iget-object p1, p0, Lflix/com/vision/activities/player/AdultVideoPlayerActivity;->q:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 131
    .line 132
    invoke-virtual {p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->getCurrentPosition()J

    .line 133
    .line 134
    .line 135
    move-result-wide p1

    .line 136
    long-to-int p1, p1

    .line 137
    add-int/lit16 p1, p1, 0x2710

    .line 138
    .line 139
    iget-object p2, p0, Lflix/com/vision/activities/player/AdultVideoPlayerActivity;->q:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 140
    .line 141
    int-to-long v1, p1

    .line 142
    invoke-virtual {p2, v1, v2}, Lflix/com/vision/bvp/BetterVideoPlayer;->seekTo(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 143
    .line 144
    .line 145
    goto :goto_4

    .line 146
    :catch_1
    move-exception p1

    .line 147
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 148
    .line 149
    .line 150
    :goto_4
    return v0

    .line 151
    :cond_a
    :goto_5
    return p2

    .line 152
    :cond_b
    iget-object p1, p0, Lflix/com/vision/activities/player/AdultVideoPlayerActivity;->q:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 153
    .line 154
    invoke-virtual {p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->isPlaying()Z

    .line 155
    .line 156
    .line 157
    move-result p1

    .line 158
    if-eqz p1, :cond_d

    .line 159
    .line 160
    iget-object p1, p0, Lflix/com/vision/activities/player/AdultVideoPlayerActivity;->q:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 161
    .line 162
    invoke-virtual {p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->isPrepared()Z

    .line 163
    .line 164
    .line 165
    move-result p1

    .line 166
    if-nez p1, :cond_c

    .line 167
    .line 168
    goto :goto_7

    .line 169
    :cond_c
    :try_start_2
    iget-object p1, p0, Lflix/com/vision/activities/player/AdultVideoPlayerActivity;->q:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 170
    .line 171
    invoke-virtual {p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->getCurrentPosition()J

    .line 172
    .line 173
    .line 174
    move-result-wide p1

    .line 175
    long-to-int p1, p1

    .line 176
    add-int/lit16 p1, p1, -0x2710

    .line 177
    .line 178
    iget-object p2, p0, Lflix/com/vision/activities/player/AdultVideoPlayerActivity;->q:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 179
    .line 180
    int-to-long v1, p1

    .line 181
    invoke-virtual {p2, v1, v2}, Lflix/com/vision/bvp/BetterVideoPlayer;->seekTo(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 182
    .line 183
    .line 184
    goto :goto_6

    .line 185
    :catch_2
    move-exception p1

    .line 186
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 187
    .line 188
    .line 189
    :goto_6
    return v0

    .line 190
    :cond_d
    :goto_7
    return p2
.end method

.method public onMessageEvent()V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    iget-object v0, p0, Lflix/com/vision/activities/player/AdultVideoPlayerActivity;->q:Lflix/com/vision/bvp/BetterVideoPlayer;

    invoke-virtual {v0}, Lflix/com/vision/bvp/BetterVideoPlayer;->isControlsShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lflix/com/vision/activities/player/AdultVideoPlayerActivity;->q:Lflix/com/vision/bvp/BetterVideoPlayer;

    invoke-virtual {v0}, Lflix/com/vision/bvp/BetterVideoPlayer;->hideControls()V

    :cond_0
    return-void
.end method

.method public onMessageEvent(LB4/f;)V
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 3
    iget-object v0, p1, LB4/f;->b:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 4
    iget-object v0, p0, Lflix/com/vision/activities/player/AdultVideoPlayerActivity;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5
    iget-object p1, p1, LB4/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 6
    iget-object p1, p0, Lflix/com/vision/activities/player/AdultVideoPlayerActivity;->w:LC4/h;

    invoke-virtual {p1}, Lm1/V;->notifyDataSetChanged()V

    .line 7
    iget-object p1, p0, Lflix/com/vision/activities/player/AdultVideoPlayerActivity;->j:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void

    .line 8
    :cond_0
    iget-boolean p1, p1, LB4/f;->a:Z

    if-eqz p1, :cond_3

    .line 9
    iget-object p1, p0, Lflix/com/vision/activities/player/AdultVideoPlayerActivity;->v:Ljava/util/ArrayList;

    .line 10
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    move-result-object v0

    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    const-string v2, "pref_adult_zone_always_play_best"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 11
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lflix/com/vision/models/adult/AdultLink;

    iget-object p1, p1, Lflix/com/vision/models/adult/AdultLink;->stream_url:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lflix/com/vision/activities/player/AdultVideoPlayerActivity;->playAdultLink(Ljava/lang/String;)V

    return-void

    .line 12
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 14
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lflix/com/vision/models/adult/AdultLink;

    iget-object v2, v2, Lflix/com/vision/models/adult/AdultLink;->label:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 15
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/CharSequence;

    .line 16
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    .line 17
    new-instance v1, Le/r;

    new-instance v2, Landroid/view/ContextThemeWrapper;

    sget v3, Lflix/com/vision/R$style;->AlertDialogCustom:I

    invoke-direct {v2, p0, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v1, v2}, Le/r;-><init>(Landroid/content/Context;)V

    .line 18
    new-instance v2, LB4/b;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p0, p1}, LB4/b;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, -0x1

    invoke-virtual {v1, v0, p1, v2}, Le/r;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Le/r;

    .line 19
    new-instance p1, LB4/c;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, LB4/c;-><init>(I)V

    invoke-virtual {v1, p1}, Le/r;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Le/r;

    .line 20
    invoke-virtual {v1}, Le/r;->show()Le/s;

    :cond_3
    return-void
.end method

.method public onPaused(Lflix/com/vision/bvp/BetterVideoPlayer;)V
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, LA4/n;

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-direct {v1, v2, p0, p1}, LA4/n;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    const-wide/16 v2, 0x7d0

    .line 13
    .line 14
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public onPrepared(Lflix/com/vision/bvp/BetterVideoPlayer;)V
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, LB4/d;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-direct {v1, p1, v2}, LB4/d;-><init>(Lflix/com/vision/bvp/BetterVideoPlayer;I)V

    .line 10
    .line 11
    .line 12
    const-wide/16 v2, 0xc8

    .line 13
    .line 14
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public onPreparing()V
    .locals 0

    return-void
.end method

.method public onStarted(Lflix/com/vision/bvp/BetterVideoPlayer;)V
    .locals 0

    return-void
.end method

.method public onToggleControls(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lflix/com/vision/activities/player/AdultVideoPlayerActivity;->x:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_1

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lflix/com/vision/activities/player/AdultVideoPlayerActivity;->f:Landroid/widget/RelativeLayout;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0}, Lflix/com/vision/activities/player/AdultVideoPlayerActivity;->i()V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    iget-object p1, p0, Lflix/com/vision/activities/player/AdultVideoPlayerActivity;->f:Landroid/widget/RelativeLayout;

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-nez p1, :cond_1

    .line 30
    .line 31
    invoke-virtual {p0}, Lflix/com/vision/activities/player/AdultVideoPlayerActivity;->g()V

    .line 32
    .line 33
    .line 34
    :cond_1
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lflix/com/vision/activities/player/AdultVideoPlayerActivity;->p:Landroid/view/View;

    .line 7
    .line 8
    const/16 v0, 0x1706

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public openAdultVideo(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lflix/com/vision/activities/player/AdultVideoPlayerActivity;->u:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    iget-object v2, p0, Lflix/com/vision/activities/player/AdultVideoPlayerActivity;->x:Ljava/util/ArrayList;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-static {v1, v0}, Lb/c;->h(ILjava/util/ArrayList;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    if-eq v1, v3, :cond_1

    .line 21
    .line 22
    :cond_0
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lflix/com/vision/models/adult/AdultVideo;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    :cond_1
    iget-object v0, p0, Lflix/com/vision/activities/player/AdultVideoPlayerActivity;->q:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 32
    .line 33
    invoke-virtual {v0}, Lflix/com/vision/bvp/BetterVideoPlayer;->getToolbar()Landroidx/appcompat/widget/Toolbar;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Lflix/com/vision/models/adult/AdultVideo;

    .line 42
    .line 43
    iget-object v1, v1, Lflix/com/vision/models/adult/AdultVideo;->title:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lflix/com/vision/activities/player/AdultVideoPlayerActivity;->g()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    const/4 v1, 0x0

    .line 56
    invoke-static {p0, v1}, LQ4/d;->newInstance(Landroid/app/Activity;Z)LQ4/d;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    iput-object v1, p0, Lflix/com/vision/activities/player/AdultVideoPlayerActivity;->y:LQ4/d;

    .line 61
    .line 62
    invoke-virtual {v1}, LQ4/d;->setloading()V

    .line 63
    .line 64
    .line 65
    :try_start_0
    iget-object v1, p0, Lflix/com/vision/activities/player/AdultVideoPlayerActivity;->y:LQ4/d;

    .line 66
    .line 67
    const-string v3, ""

    .line 68
    .line 69
    invoke-virtual {v1, v0, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :catch_0
    move-exception v0

    .line 74
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 75
    .line 76
    .line 77
    :goto_0
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    check-cast v0, Lflix/com/vision/models/adult/AdultVideo;

    .line 82
    .line 83
    iget-object v0, v0, Lflix/com/vision/models/adult/AdultVideo;->url:Ljava/lang/String;

    .line 84
    .line 85
    iput-object v0, p0, Lflix/com/vision/activities/player/AdultVideoPlayerActivity;->t:Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    check-cast p1, Lflix/com/vision/models/adult/AdultVideo;

    .line 92
    .line 93
    invoke-virtual {p0, p1}, Lflix/com/vision/activities/player/AdultVideoPlayerActivity;->f(Lflix/com/vision/models/adult/AdultVideo;)V

    .line 94
    .line 95
    .line 96
    new-instance p1, LX4/c;

    .line 97
    .line 98
    invoke-direct {p1, p0, p0}, LX4/c;-><init>(Landroid/content/Context;LU4/a;)V

    .line 99
    .line 100
    .line 101
    iget-object v0, p0, Lflix/com/vision/activities/player/AdultVideoPlayerActivity;->t:Ljava/lang/String;

    .line 102
    .line 103
    invoke-virtual {p1, v0}, LX4/c;->process(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0}, Lflix/com/vision/activities/player/AdultVideoPlayerActivity;->getVideos()V

    .line 107
    .line 108
    .line 109
    return-void
.end method

.method public playAdultLink(Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lflix/com/vision/activities/player/AdultVideoPlayerActivity;->q:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 2
    .line 3
    invoke-virtual {v0}, Lflix/com/vision/bvp/BetterVideoPlayer;->reset()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lflix/com/vision/activities/player/AdultVideoPlayerActivity;->q:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 7
    .line 8
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {v0, p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->setSource(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :catch_0
    move-exception p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 18
    .line 19
    .line 20
    return-void
.end method
