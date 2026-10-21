.class public Lflix/com/vision/activities/YouTubePlayerActivity;
.super LN3/c;
.source "SourceFile"


# static fields
.field public static final synthetic r:I


# instance fields
.field public final m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public p:Lcom/google/android/youtube/player/YouTubePlayerView;

.field public q:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, LN3/c;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "AIzaSyBzhds8N-w2US3XGiZ0gsGoXQolv3H1r1E"

    .line 5
    .line 6
    iput-object v0, p0, Lflix/com/vision/activities/YouTubePlayerActivity;->m:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lflix/com/vision/activities/YouTubePlayerActivity;->q:Z

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lflix/com/vision/activities/YouTubePlayerActivity;->q:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lflix/com/vision/activities/YouTubePlayerActivity;->q:Z

    .line 8
    .line 9
    new-instance v1, Landroid/os/Handler;

    .line 10
    .line 11
    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 12
    .line 13
    .line 14
    new-instance v2, Lf1/a;

    .line 15
    .line 16
    const/16 v3, 0xd

    .line 17
    .line 18
    invoke-direct {v2, p0, v3}, Lf1/a;-><init>(Ljava/lang/Object;I)V

    .line 19
    .line 20
    .line 21
    const-wide/16 v3, 0x7d0

    .line 22
    .line 23
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-static {p0, v0}, LQ4/d;->newInstance(Landroid/app/Activity;Z)LQ4/d;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-string v2, "Exit"

    .line 35
    .line 36
    invoke-virtual {v0, v2}, LQ4/d;->setTitle(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string v2, "Do you really want to and exit trailer?"

    .line 40
    .line 41
    invoke-virtual {v0, v2}, LQ4/d;->setMessage(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    new-instance v2, LA4/q;

    .line 45
    .line 46
    const/16 v3, 0xc

    .line 47
    .line 48
    invoke-direct {v2, v3}, LA4/q;-><init>(I)V

    .line 49
    .line 50
    .line 51
    const-string v3, "CANCEL"

    .line 52
    .line 53
    invoke-virtual {v0, v3, v2}, LQ4/d;->setButton1(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 54
    .line 55
    .line 56
    new-instance v2, LB4/a;

    .line 57
    .line 58
    const/16 v3, 0x10

    .line 59
    .line 60
    invoke-direct {v2, p0, v3}, LB4/a;-><init>(Ljava/lang/Object;I)V

    .line 61
    .line 62
    .line 63
    const-string v3, "YES"

    .line 64
    .line 65
    invoke-virtual {v0, v3, v2}, LQ4/d;->setButton2(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 66
    .line 67
    .line 68
    :try_start_0
    const-string v2, ""

    .line 69
    .line 70
    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 75
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 76
    .line 77
    .line 78
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, LN3/c;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget p1, Lflix/com/vision/R$layout;->activity_you_tube_player:I

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 7
    .line 8
    .line 9
    sget p1, Lflix/com/vision/R$id;->player:I

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/google/android/youtube/player/YouTubePlayerView;

    .line 16
    .line 17
    iput-object p1, p0, Lflix/com/vision/activities/YouTubePlayerActivity;->p:Lcom/google/android/youtube/player/YouTubePlayerView;

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const-string v0, "id"

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iput-object p1, p0, Lflix/com/vision/activities/YouTubePlayerActivity;->n:Ljava/lang/String;

    .line 30
    .line 31
    new-instance p1, Ly4/B1;

    .line 32
    .line 33
    invoke-direct {p1, p0}, Ly4/B1;-><init>(Lflix/com/vision/activities/YouTubePlayerActivity;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lflix/com/vision/activities/YouTubePlayerActivity;->p:Lcom/google/android/youtube/player/YouTubePlayerView;

    .line 37
    .line 38
    iget-object v1, p0, Lflix/com/vision/activities/YouTubePlayerActivity;->m:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v0, v1, p1}, Lcom/google/android/youtube/player/YouTubePlayerView;->initialize(Ljava/lang/String;LN3/d;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method
