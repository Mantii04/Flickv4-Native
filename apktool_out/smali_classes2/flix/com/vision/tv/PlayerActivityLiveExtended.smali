.class public Lflix/com/vision/tv/PlayerActivityLiveExtended;
.super Lflix/com/vision/activities/base/a;
.source "SourceFile"

# interfaces
.implements LK4/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lflix/com/vision/tv/PlayerActivityLiveExtended$RESULT_EVENT_PLAYER_CTIVITY_LIVE;
    }
.end annotation


# instance fields
.field public A:Landroid/view/animation/Animation;

.field public B:Z

.field public C:Z

.field public final D:Z

.field public E:Lflix/com/vision/tv/a;

.field public F:Lflix/com/vision/models/ChannelTv;

.field public b:LC4/u;

.field public e:Landroid/widget/ImageView;

.field public f:Lcom/tuyenmonkey/mkloader/MKLoader;

.field public final j:I

.field public m:Landroid/widget/RelativeLayout;

.field public n:Landroidx/recyclerview/widget/RecyclerView;

.field public p:Landroid/view/animation/Animation;

.field public q:Landroid/view/animation/Animation;

.field public r:Landroid/view/animation/Animation;

.field public s:Landroid/view/animation/Animation;

.field public t:Landroid/view/animation/Animation;

.field public u:Ljava/util/ArrayList;

.field public v:I

.field public w:Landroid/view/View;

.field public x:Lflix/com/vision/bvp/BetterVideoPlayer;

.field public final y:LT4/j;

.field public final z:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lflix/com/vision/activities/base/a;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x77f

    .line 5
    .line 6
    iput v0, p0, Lflix/com/vision/tv/PlayerActivityLiveExtended;->j:I

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lflix/com/vision/tv/PlayerActivityLiveExtended;->v:I

    .line 10
    .line 11
    new-instance v1, LT4/j;

    .line 12
    .line 13
    invoke-direct {v1}, LT4/j;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lflix/com/vision/tv/PlayerActivityLiveExtended;->y:LT4/j;

    .line 17
    .line 18
    new-instance v1, Landroid/os/Handler;

    .line 19
    .line 20
    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v1, p0, Lflix/com/vision/tv/PlayerActivityLiveExtended;->z:Landroid/os/Handler;

    .line 24
    .line 25
    iput-boolean v0, p0, Lflix/com/vision/tv/PlayerActivityLiveExtended;->B:Z

    .line 26
    .line 27
    iput-boolean v0, p0, Lflix/com/vision/tv/PlayerActivityLiveExtended;->C:Z

    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Lflix/com/vision/tv/PlayerActivityLiveExtended;->D:Z

    .line 31
    .line 32
    return-void
.end method

.method public static getMXPlayerPackage(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "com.mxtech.videoplayer.pro"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lflix/com/vision/tv/PlayerActivityLiveExtended;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    const-string p0, "com.mxtech.videoplayer.ad"

    .line 11
    .line 12
    return-object p0
.end method

.method public static isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :catch_0
    return v0
.end method


# virtual methods
.method public MXPlayerPlayUri(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "title"

    .line 7
    .line 8
    invoke-virtual {v0, v1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p2, "secure_uri"

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-virtual {v0, p2, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 15
    .line 16
    .line 17
    const-string p2, "position"

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-virtual {v0, p2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 21
    .line 22
    .line 23
    const-string p2, "video_zoom"

    .line 24
    .line 25
    invoke-virtual {v0, p2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 26
    .line 27
    .line 28
    const-string p2, "sticky"

    .line 29
    .line 30
    invoke-virtual {v0, p2, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    if-nez p2, :cond_0

    .line 38
    .line 39
    const-string p2, "User-Agent"

    .line 40
    .line 41
    filled-new-array {p2, p4}, [Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    const-string p4, "headers"

    .line 46
    .line 47
    invoke-virtual {v0, p4, p2}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    :cond_0
    invoke-virtual {p5}, Ljava/lang/String;->isEmpty()Z

    .line 51
    .line 52
    .line 53
    move-result p2

    .line 54
    if-nez p2, :cond_1

    .line 55
    .line 56
    const-string p2, "Referer"

    .line 57
    .line 58
    filled-new-array {p2, p5}, [Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    const-string p4, "referer"

    .line 63
    .line 64
    invoke-virtual {v0, p4, p2}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    :cond_1
    new-instance p2, Landroid/content/Intent;

    .line 68
    .line 69
    const-string p4, "android.intent.action.VIEW"

    .line 70
    .line 71
    invoke-direct {p2, p4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 75
    .line 76
    .line 77
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 78
    .line 79
    .line 80
    move-result-object p3

    .line 81
    const-string p4, "video/*"

    .line 82
    .line 83
    invoke-virtual {p2, p3, p4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    .line 85
    .line 86
    invoke-static {p1}, Lflix/com/vision/tv/PlayerActivityLiveExtended;->getMXPlayerPackage(Landroid/content/Context;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    .line 92
    .line 93
    const/16 p1, 0xd10

    .line 94
    .line 95
    invoke-virtual {p0, p2, p1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 96
    .line 97
    .line 98
    return-void
.end method

.method public VLCPlayerPlayUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "title"

    .line 7
    .line 8
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p1, "position"

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    const-string p1, "from_start"

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-nez p1, :cond_0

    .line 28
    .line 29
    const-string p1, "User-Agent"

    .line 30
    .line 31
    filled-new-array {p1, p3}, [Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const-string p3, "headers"

    .line 36
    .line 37
    invoke-virtual {v0, p3, p1}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-nez p1, :cond_1

    .line 45
    .line 46
    const-string p1, "Referer"

    .line 47
    .line 48
    filled-new-array {p1, p4}, [Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    const-string p3, "referer"

    .line 53
    .line 54
    invoke-virtual {v0, p3, p1}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    :cond_1
    new-instance p1, Landroid/content/Intent;

    .line 58
    .line 59
    const-string p3, "android.intent.action.VIEW"

    .line 60
    .line 61
    invoke-direct {p1, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 65
    .line 66
    .line 67
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    const-string p3, "video/*"

    .line 72
    .line 73
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    .line 75
    .line 76
    const-string p2, "org.videolan.vlc"

    .line 77
    .line 78
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    .line 80
    .line 81
    const/16 p2, 0x8a3

    .line 82
    .line 83
    invoke-virtual {p0, p1, p2}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 84
    .line 85
    .line 86
    return-void
.end method

.method public XPlayerlayerPlayUri(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "title"

    .line 7
    .line 8
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance p1, Landroid/content/Intent;

    .line 12
    .line 13
    const-string v1, "android.intent.action.VIEW"

    .line 14
    .line 15
    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 19
    .line 20
    .line 21
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    const-string v0, "video/*"

    .line 26
    .line 27
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    .line 29
    .line 30
    const-string p2, "video.player.videoplayer"

    .line 31
    .line 32
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    .line 34
    .line 35
    const/16 p2, 0x8a3

    .line 36
    .line 37
    invoke-virtual {p0, p1, p2}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public final e()V
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
    new-instance v2, Lf5/t;

    .line 21
    .line 22
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v3, "CANCEL"

    .line 26
    .line 27
    invoke-virtual {v1, v3, v2}, LQ4/d;->setButton1(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 28
    .line 29
    .line 30
    new-instance v2, Lf5/u;

    .line 31
    .line 32
    invoke-direct {v2, p0}, Lf5/u;-><init>(Lflix/com/vision/tv/PlayerActivityLiveExtended;)V

    .line 33
    .line 34
    .line 35
    const-string v3, "YES"

    .line 36
    .line 37
    invoke-virtual {v1, v3, v2}, LQ4/d;->setButton2(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 38
    .line 39
    .line 40
    :try_start_0
    const-string v2, ""

    .line 41
    .line 42
    invoke-virtual {v1, v0, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :catch_0
    move-exception v0

    .line 47
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/H;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0xd10

    .line 5
    .line 6
    if-eq p1, v0, :cond_1

    .line 7
    .line 8
    const/16 v0, 0x8a3

    .line 9
    .line 10
    if-ne p1, v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    return-void

    .line 14
    :cond_1
    :goto_0
    const/4 p1, -0x1

    .line 15
    if-ne p2, p1, :cond_2

    .line 16
    .line 17
    invoke-virtual {p0, p1, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 18
    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_2
    const/16 p1, 0x22b8

    .line 22
    .line 23
    invoke-virtual {p0, p1, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 24
    .line 25
    .line 26
    :goto_1
    const/4 p1, 0x1

    .line 27
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 1
    iget-object v0, p0, Lflix/com/vision/tv/PlayerActivityLiveExtended;->m:Landroid/widget/RelativeLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lflix/com/vision/tv/PlayerActivityLiveExtended;->m:Landroid/widget/RelativeLayout;

    .line 10
    .line 11
    iget-object v1, p0, Lflix/com/vision/tv/PlayerActivityLiveExtended;->r:Landroid/view/animation/Animation;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lflix/com/vision/tv/PlayerActivityLiveExtended;->m:Landroid/widget/RelativeLayout;

    .line 17
    .line 18
    const/16 v1, 0x8

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    iget-object v0, p0, Lflix/com/vision/tv/PlayerActivityLiveExtended;->x:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 25
    .line 26
    invoke-virtual {v0}, Lflix/com/vision/bvp/BetterVideoPlayer;->isControlsShown()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    iget-object v0, p0, Lflix/com/vision/tv/PlayerActivityLiveExtended;->x:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 33
    .line 34
    invoke-virtual {v0}, Lflix/com/vision/bvp/BetterVideoPlayer;->hideControls()V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_1
    iget-object v0, p0, Lflix/com/vision/tv/PlayerActivityLiveExtended;->x:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 39
    .line 40
    invoke-virtual {v0}, Lflix/com/vision/bvp/BetterVideoPlayer;->showControls()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lflix/com/vision/tv/PlayerActivityLiveExtended;->e()V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public onBuffering(I)V
    .locals 0

    return-void
.end method

.method public onCompletion(Lflix/com/vision/bvp/BetterVideoPlayer;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lflix/com/vision/tv/PlayerActivityLiveExtended;->u:Ljava/util/ArrayList;

    .line 2
    .line 3
    iget v1, p0, Lflix/com/vision/tv/PlayerActivityLiveExtended;->v:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lflix/com/vision/models/ChannelTv;

    .line 10
    .line 11
    iget-boolean v0, v0, Lflix/com/vision/models/ChannelTv;->is_streamable:Z

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lflix/com/vision/tv/PlayerActivityLiveExtended;->u:Ljava/util/ArrayList;

    .line 16
    .line 17
    iget v1, p0, Lflix/com/vision/tv/PlayerActivityLiveExtended;->v:I

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lflix/com/vision/models/ChannelTv;

    .line 24
    .line 25
    iget-object v0, v0, Lflix/com/vision/models/ChannelTv;->links:Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-lez v0, :cond_0

    .line 32
    .line 33
    iget-object v0, p0, Lflix/com/vision/tv/PlayerActivityLiveExtended;->u:Ljava/util/ArrayList;

    .line 34
    .line 35
    iget v1, p0, Lflix/com/vision/tv/PlayerActivityLiveExtended;->v:I

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Lflix/com/vision/models/ChannelTv;

    .line 42
    .line 43
    iget-object v0, v0, Lflix/com/vision/models/ChannelTv;->links:Ljava/util/ArrayList;

    .line 44
    .line 45
    const/4 v1, 0x0

    .line 46
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Lflix/com/vision/models/StreamUrl;

    .line 51
    .line 52
    iget-object v0, v0, Lflix/com/vision/models/StreamUrl;->stream_url:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->reset()V

    .line 55
    .line 56
    .line 57
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    iget-object v2, p0, Lflix/com/vision/tv/PlayerActivityLiveExtended;->u:Ljava/util/ArrayList;

    .line 62
    .line 63
    iget v3, p0, Lflix/com/vision/tv/PlayerActivityLiveExtended;->v:I

    .line 64
    .line 65
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    check-cast v2, Lflix/com/vision/models/ChannelTv;

    .line 70
    .line 71
    iget-object v2, v2, Lflix/com/vision/models/ChannelTv;->links:Ljava/util/ArrayList;

    .line 72
    .line 73
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    check-cast v1, Lflix/com/vision/models/StreamUrl;

    .line 78
    .line 79
    invoke-virtual {v1}, Lflix/com/vision/models/StreamUrl;->getHeaders()Ljava/util/Map;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {p1, v0, v1}, Lflix/com/vision/bvp/BetterVideoPlayer;->setSource(Landroid/net/Uri;Ljava/util/Map;)V

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lflix/com/vision/tv/PlayerActivityLiveExtended;->u:Ljava/util/ArrayList;

    .line 88
    .line 89
    iget v1, p0, Lflix/com/vision/tv/PlayerActivityLiveExtended;->v:I

    .line 90
    .line 91
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    check-cast v0, Lflix/com/vision/models/ChannelTv;

    .line 96
    .line 97
    iget-boolean v0, v0, Lflix/com/vision/models/ChannelTv;->is_streamable:Z

    .line 98
    .line 99
    if-eqz v0, :cond_1

    .line 100
    .line 101
    invoke-virtual {p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->reset()V

    .line 102
    .line 103
    .line 104
    iget-object v0, p0, Lflix/com/vision/tv/PlayerActivityLiveExtended;->u:Ljava/util/ArrayList;

    .line 105
    .line 106
    iget v1, p0, Lflix/com/vision/tv/PlayerActivityLiveExtended;->v:I

    .line 107
    .line 108
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    check-cast v0, Lflix/com/vision/models/ChannelTv;

    .line 113
    .line 114
    iget-object v0, v0, Lflix/com/vision/models/ChannelTv;->url:Ljava/lang/String;

    .line 115
    .line 116
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-virtual {p1, v0}, Lflix/com/vision/bvp/BetterVideoPlayer;->setSource(Landroid/net/Uri;)V

    .line 121
    .line 122
    .line 123
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    .line 1
    invoke-super {p0, p1}, Lflix/com/vision/activities/base/a;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget p1, Lflix/com/vision/R$layout;->activity_exo_media2:I

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Le/v;->setContentView(I)V

    .line 7
    .line 8
    .line 9
    sget p1, Lflix/com/vision/R$id;->channel_image_loader:I

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Landroid/widget/ImageView;

    .line 16
    .line 17
    iput-object p1, p0, Lflix/com/vision/tv/PlayerActivityLiveExtended;->e:Landroid/widget/ImageView;

    .line 18
    .line 19
    sget p1, Lflix/com/vision/R$id;->loading_progress_tv:I

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Lcom/tuyenmonkey/mkloader/MKLoader;

    .line 26
    .line 27
    iput-object p1, p0, Lflix/com/vision/tv/PlayerActivityLiveExtended;->f:Lcom/tuyenmonkey/mkloader/MKLoader;

    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const-string v0, "channels3g"

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iput-object p1, p0, Lflix/com/vision/tv/PlayerActivityLiveExtended;->u:Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    const-string v0, "index"

    .line 46
    .line 47
    const/4 v1, 0x0

    .line 48
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    iput p1, p0, Lflix/com/vision/tv/PlayerActivityLiveExtended;->v:I

    .line 53
    .line 54
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 59
    .line 60
    const-string v2, "player_index"

    .line 61
    .line 62
    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    const/4 v2, 0x1

    .line 67
    if-eqz p1, :cond_0

    .line 68
    .line 69
    move p1, v2

    .line 70
    goto :goto_0

    .line 71
    :cond_0
    move p1, v1

    .line 72
    :goto_0
    iput-boolean p1, p0, Lflix/com/vision/tv/PlayerActivityLiveExtended;->B:Z

    .line 73
    .line 74
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    const-string v3, ""

    .line 79
    .line 80
    invoke-static {p1, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 81
    .line 82
    .line 83
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    sget p1, Lflix/com/vision/R$id;->listview:I

    .line 91
    .line 92
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 97
    .line 98
    iput-object p1, p0, Lflix/com/vision/tv/PlayerActivityLiveExtended;->n:Landroidx/recyclerview/widget/RecyclerView;

    .line 99
    .line 100
    sget p1, Lflix/com/vision/R$id;->video_view:I

    .line 101
    .line 102
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    check-cast p1, Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 107
    .line 108
    iput-object p1, p0, Lflix/com/vision/tv/PlayerActivityLiveExtended;->x:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 109
    .line 110
    invoke-virtual {p1, v2}, Lflix/com/vision/bvp/BetterVideoPlayer;->setAutoPlay(Z)V

    .line 111
    .line 112
    .line 113
    iget-object p1, p0, Lflix/com/vision/tv/PlayerActivityLiveExtended;->x:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 114
    .line 115
    invoke-virtual {p1, v2}, Lflix/com/vision/bvp/BetterVideoPlayer;->setHideControlsOnPlay(Z)V

    .line 116
    .line 117
    .line 118
    iget-object p1, p0, Lflix/com/vision/tv/PlayerActivityLiveExtended;->x:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 119
    .line 120
    const/16 v3, 0x1388

    .line 121
    .line 122
    invoke-virtual {p1, v3}, Lflix/com/vision/bvp/BetterVideoPlayer;->setHideControlsDuration(I)V

    .line 123
    .line 124
    .line 125
    iget-object p1, p0, Lflix/com/vision/tv/PlayerActivityLiveExtended;->x:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 126
    .line 127
    invoke-virtual {p1, p0}, Lflix/com/vision/bvp/BetterVideoPlayer;->setCallback(LK4/b;)V

    .line 128
    .line 129
    .line 130
    iget-object p1, p0, Lflix/com/vision/tv/PlayerActivityLiveExtended;->x:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 131
    .line 132
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    invoke-virtual {p1, v3}, Lflix/com/vision/bvp/BetterVideoPlayer;->enableSwipeGestures(Landroid/view/Window;)V

    .line 137
    .line 138
    .line 139
    iget-object p1, p0, Lflix/com/vision/tv/PlayerActivityLiveExtended;->x:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 140
    .line 141
    invoke-virtual {p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->getToolbar()Landroidx/appcompat/widget/Toolbar;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    sget v3, Lflix/com/vision/R$menu;->menu_live_tv:I

    .line 146
    .line 147
    invoke-virtual {p1, v3}, Landroidx/appcompat/widget/Toolbar;->inflateMenu(I)V

    .line 148
    .line 149
    .line 150
    iget-object p1, p0, Lflix/com/vision/tv/PlayerActivityLiveExtended;->x:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 151
    .line 152
    invoke-virtual {p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->getToolbar()Landroidx/appcompat/widget/Toolbar;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    .line 157
    .line 158
    .line 159
    iget-object p1, p0, Lflix/com/vision/tv/PlayerActivityLiveExtended;->x:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 160
    .line 161
    invoke-virtual {p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->getToolbar()Landroidx/appcompat/widget/Toolbar;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    new-instance v3, Lf5/q;

    .line 166
    .line 167
    invoke-direct {v3, p0}, Lf5/q;-><init>(Lflix/com/vision/tv/PlayerActivityLiveExtended;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p1, v3}, Landroidx/appcompat/widget/Toolbar;->setOnMenuItemClickListener(Ll/m2;)V

    .line 171
    .line 172
    .line 173
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 174
    .line 175
    invoke-direct {p1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 176
    .line 177
    .line 178
    iget-object v3, p0, Lflix/com/vision/tv/PlayerActivityLiveExtended;->n:Landroidx/recyclerview/widget/RecyclerView;

    .line 179
    .line 180
    invoke-virtual {v3, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Lm1/i0;)V

    .line 181
    .line 182
    .line 183
    new-instance v4, LC4/u;

    .line 184
    .line 185
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 186
    .line 187
    .line 188
    move-result-object v5

    .line 189
    iget-object v6, p0, Lflix/com/vision/tv/PlayerActivityLiveExtended;->u:Ljava/util/ArrayList;

    .line 190
    .line 191
    iget v8, p0, Lflix/com/vision/tv/PlayerActivityLiveExtended;->j:I

    .line 192
    .line 193
    const/16 v9, 0xc8

    .line 194
    .line 195
    move-object v7, p0

    .line 196
    invoke-direct/range {v4 .. v9}, LC4/u;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/app/Activity;II)V

    .line 197
    .line 198
    .line 199
    iput-object v4, v7, Lflix/com/vision/tv/PlayerActivityLiveExtended;->b:LC4/u;

    .line 200
    .line 201
    iget-object p1, v7, Lflix/com/vision/tv/PlayerActivityLiveExtended;->n:Landroidx/recyclerview/widget/RecyclerView;

    .line 202
    .line 203
    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lm1/V;)V

    .line 204
    .line 205
    .line 206
    iget-object p1, v7, Lflix/com/vision/tv/PlayerActivityLiveExtended;->b:LC4/u;

    .line 207
    .line 208
    invoke-virtual {p1}, Lm1/V;->notifyDataSetChanged()V

    .line 209
    .line 210
    .line 211
    sget p1, Lflix/com/vision/R$id;->channels_rel:I

    .line 212
    .line 213
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 218
    .line 219
    iput-object p1, v7, Lflix/com/vision/tv/PlayerActivityLiveExtended;->m:Landroid/widget/RelativeLayout;

    .line 220
    .line 221
    sget p1, Lflix/com/vision/R$id;->controls:I

    .line 222
    .line 223
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 228
    .line 229
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 234
    .line 235
    .line 236
    move-result-object p1

    .line 237
    iput-object p1, v7, Lflix/com/vision/tv/PlayerActivityLiveExtended;->w:Landroid/view/View;

    .line 238
    .line 239
    const/16 v3, 0x404

    .line 240
    .line 241
    invoke-virtual {p1, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 245
    .line 246
    .line 247
    move-result-object p1

    .line 248
    sget v3, Lflix/com/vision/R$anim;->slide_down:I

    .line 249
    .line 250
    invoke-static {p1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 251
    .line 252
    .line 253
    move-result-object p1

    .line 254
    iput-object p1, v7, Lflix/com/vision/tv/PlayerActivityLiveExtended;->A:Landroid/view/animation/Animation;

    .line 255
    .line 256
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 257
    .line 258
    .line 259
    move-result-object p1

    .line 260
    sget v3, Lflix/com/vision/R$anim;->slide_up:I

    .line 261
    .line 262
    invoke-static {p1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 263
    .line 264
    .line 265
    move-result-object p1

    .line 266
    iput-object p1, v7, Lflix/com/vision/tv/PlayerActivityLiveExtended;->p:Landroid/view/animation/Animation;

    .line 267
    .line 268
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 269
    .line 270
    .line 271
    move-result-object p1

    .line 272
    sget v3, Lflix/com/vision/R$anim;->slide_down2:I

    .line 273
    .line 274
    invoke-static {p1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 275
    .line 276
    .line 277
    move-result-object p1

    .line 278
    iput-object p1, v7, Lflix/com/vision/tv/PlayerActivityLiveExtended;->t:Landroid/view/animation/Animation;

    .line 279
    .line 280
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 281
    .line 282
    .line 283
    move-result-object p1

    .line 284
    sget v3, Lflix/com/vision/R$anim;->slide_up2:I

    .line 285
    .line 286
    invoke-static {p1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 287
    .line 288
    .line 289
    move-result-object p1

    .line 290
    iput-object p1, v7, Lflix/com/vision/tv/PlayerActivityLiveExtended;->s:Landroid/view/animation/Animation;

    .line 291
    .line 292
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 293
    .line 294
    .line 295
    move-result-object p1

    .line 296
    sget v3, Lflix/com/vision/R$anim;->slide_left:I

    .line 297
    .line 298
    invoke-static {p1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 299
    .line 300
    .line 301
    move-result-object p1

    .line 302
    iput-object p1, v7, Lflix/com/vision/tv/PlayerActivityLiveExtended;->q:Landroid/view/animation/Animation;

    .line 303
    .line 304
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 305
    .line 306
    .line 307
    move-result-object p1

    .line 308
    sget v3, Lflix/com/vision/R$anim;->slide_right:I

    .line 309
    .line 310
    invoke-static {p1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 311
    .line 312
    .line 313
    move-result-object p1

    .line 314
    iput-object p1, v7, Lflix/com/vision/tv/PlayerActivityLiveExtended;->r:Landroid/view/animation/Animation;

    .line 315
    .line 316
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 317
    .line 318
    .line 319
    move-result-object p1

    .line 320
    sget v3, Lflix/com/vision/R$anim;->slide_down:I

    .line 321
    .line 322
    invoke-static {p1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 323
    .line 324
    .line 325
    move-result-object p1

    .line 326
    iput-object p1, v7, Lflix/com/vision/tv/PlayerActivityLiveExtended;->A:Landroid/view/animation/Animation;

    .line 327
    .line 328
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 329
    .line 330
    .line 331
    move-result-object p1

    .line 332
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 333
    .line 334
    .line 335
    move-result p1

    .line 336
    iput p1, v7, Lflix/com/vision/tv/PlayerActivityLiveExtended;->v:I

    .line 337
    .line 338
    if-ltz p1, :cond_1

    .line 339
    .line 340
    iget-object v0, v7, Lflix/com/vision/tv/PlayerActivityLiveExtended;->u:Ljava/util/ArrayList;

    .line 341
    .line 342
    if-eqz v0, :cond_2

    .line 343
    .line 344
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 345
    .line 346
    .line 347
    move-result v0

    .line 348
    if-lt p1, v0, :cond_2

    .line 349
    .line 350
    :cond_1
    iput v1, v7, Lflix/com/vision/tv/PlayerActivityLiveExtended;->v:I

    .line 351
    .line 352
    :cond_2
    iget-object p1, v7, Lflix/com/vision/tv/PlayerActivityLiveExtended;->x:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 353
    .line 354
    invoke-virtual {p1, v2}, Lflix/com/vision/bvp/BetterVideoPlayer;->setTVMode(Z)V

    .line 355
    .line 356
    .line 357
    iget p1, v7, Lflix/com/vision/tv/PlayerActivityLiveExtended;->v:I

    .line 358
    .line 359
    invoke-virtual {p0, p1}, Lflix/com/vision/tv/PlayerActivityLiveExtended;->playChannel(I)V

    .line 360
    .line 361
    .line 362
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

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 1
    iget-object p1, p0, Lflix/com/vision/tv/PlayerActivityLiveExtended;->y:LT4/j;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, LT4/j;->getDirectionPressed(Landroid/view/InputEvent;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iget-object p2, p0, Lflix/com/vision/tv/PlayerActivityLiveExtended;->x:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 8
    .line 9
    invoke-virtual {p2}, Lflix/com/vision/bvp/BetterVideoPlayer;->showControls()V

    .line 10
    .line 11
    .line 12
    const/4 p2, 0x0

    .line 13
    const/4 v0, 0x4

    .line 14
    const/4 v1, 0x1

    .line 15
    if-eq p1, v0, :cond_8

    .line 16
    .line 17
    const/4 v0, 0x5

    .line 18
    if-eq p1, v0, :cond_5

    .line 19
    .line 20
    const/16 v0, 0xa

    .line 21
    .line 22
    const/16 v2, 0x8

    .line 23
    .line 24
    if-eq p1, v0, :cond_2

    .line 25
    .line 26
    const/16 v0, 0xb

    .line 27
    .line 28
    if-eq p1, v0, :cond_0

    .line 29
    .line 30
    goto/16 :goto_2

    .line 31
    .line 32
    :cond_0
    iget-object p1, p0, Lflix/com/vision/tv/PlayerActivityLiveExtended;->m:Landroid/widget/RelativeLayout;

    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-nez p1, :cond_1

    .line 39
    .line 40
    iget-object p1, p0, Lflix/com/vision/tv/PlayerActivityLiveExtended;->m:Landroid/widget/RelativeLayout;

    .line 41
    .line 42
    iget-object p2, p0, Lflix/com/vision/tv/PlayerActivityLiveExtended;->r:Landroid/view/animation/Animation;

    .line 43
    .line 44
    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lflix/com/vision/tv/PlayerActivityLiveExtended;->m:Landroid/widget/RelativeLayout;

    .line 48
    .line 49
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 50
    .line 51
    .line 52
    return v1

    .line 53
    :cond_1
    iget-object p1, p0, Lflix/com/vision/tv/PlayerActivityLiveExtended;->m:Landroid/widget/RelativeLayout;

    .line 54
    .line 55
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Lflix/com/vision/tv/PlayerActivityLiveExtended;->m:Landroid/widget/RelativeLayout;

    .line 59
    .line 60
    iget-object p2, p0, Lflix/com/vision/tv/PlayerActivityLiveExtended;->q:Landroid/view/animation/Animation;

    .line 61
    .line 62
    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 63
    .line 64
    .line 65
    return v1

    .line 66
    :cond_2
    iget-object p1, p0, Lflix/com/vision/tv/PlayerActivityLiveExtended;->m:Landroid/widget/RelativeLayout;

    .line 67
    .line 68
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    if-nez p1, :cond_3

    .line 73
    .line 74
    iget-object p1, p0, Lflix/com/vision/tv/PlayerActivityLiveExtended;->m:Landroid/widget/RelativeLayout;

    .line 75
    .line 76
    iget-object v0, p0, Lflix/com/vision/tv/PlayerActivityLiveExtended;->r:Landroid/view/animation/Animation;

    .line 77
    .line 78
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 79
    .line 80
    .line 81
    iget-object p1, p0, Lflix/com/vision/tv/PlayerActivityLiveExtended;->m:Landroid/widget/RelativeLayout;

    .line 82
    .line 83
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 84
    .line 85
    .line 86
    return p2

    .line 87
    :cond_3
    iget-object p1, p0, Lflix/com/vision/tv/PlayerActivityLiveExtended;->x:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 88
    .line 89
    invoke-virtual {p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->isControlsShown()Z

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    if-eqz p1, :cond_4

    .line 94
    .line 95
    iget-object p1, p0, Lflix/com/vision/tv/PlayerActivityLiveExtended;->x:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 96
    .line 97
    invoke-virtual {p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->hideControls()V

    .line 98
    .line 99
    .line 100
    return p2

    .line 101
    :cond_4
    iget-object p1, p0, Lflix/com/vision/tv/PlayerActivityLiveExtended;->x:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 102
    .line 103
    invoke-virtual {p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->showControls()V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0}, Lflix/com/vision/tv/PlayerActivityLiveExtended;->e()V

    .line 107
    .line 108
    .line 109
    return v1

    .line 110
    :cond_5
    :try_start_0
    iget-object p1, p0, Lflix/com/vision/tv/PlayerActivityLiveExtended;->x:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 111
    .line 112
    invoke-virtual {p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->isPlaying()Z

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    if-eqz p1, :cond_6

    .line 117
    .line 118
    iget-object p1, p0, Lflix/com/vision/tv/PlayerActivityLiveExtended;->x:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 119
    .line 120
    invoke-virtual {p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->pause()V

    .line 121
    .line 122
    .line 123
    goto :goto_0

    .line 124
    :catch_0
    move-exception p1

    .line 125
    goto :goto_1

    .line 126
    :cond_6
    iget-object p1, p0, Lflix/com/vision/tv/PlayerActivityLiveExtended;->x:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 127
    .line 128
    invoke-virtual {p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->isPrepared()Z

    .line 129
    .line 130
    .line 131
    move-result p1

    .line 132
    if-eqz p1, :cond_7

    .line 133
    .line 134
    iget-object p1, p0, Lflix/com/vision/tv/PlayerActivityLiveExtended;->x:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 135
    .line 136
    invoke-virtual {p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->start()V

    .line 137
    .line 138
    .line 139
    :cond_7
    :goto_0
    iget-object p1, p0, Lflix/com/vision/tv/PlayerActivityLiveExtended;->x:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 140
    .line 141
    invoke-virtual {p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->showControls()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    .line 143
    .line 144
    return v1

    .line 145
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 146
    .line 147
    .line 148
    return v1

    .line 149
    :cond_8
    iget-object p1, p0, Lflix/com/vision/tv/PlayerActivityLiveExtended;->m:Landroid/widget/RelativeLayout;

    .line 150
    .line 151
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 152
    .line 153
    .line 154
    move-result p1

    .line 155
    if-nez p1, :cond_9

    .line 156
    .line 157
    :goto_2
    return p2

    .line 158
    :cond_9
    iget-object p1, p0, Lflix/com/vision/tv/PlayerActivityLiveExtended;->x:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 159
    .line 160
    invoke-virtual {p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->toggleControls()V

    .line 161
    .line 162
    .line 163
    return v1
.end method

.method public onMessageEvent()V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    iget-object v0, p0, Lflix/com/vision/tv/PlayerActivityLiveExtended;->x:Lflix/com/vision/bvp/BetterVideoPlayer;

    invoke-virtual {v0}, Lflix/com/vision/bvp/BetterVideoPlayer;->isControlsShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lflix/com/vision/tv/PlayerActivityLiveExtended;->x:Lflix/com/vision/bvp/BetterVideoPlayer;

    invoke-virtual {v0}, Lflix/com/vision/bvp/BetterVideoPlayer;->hideControls()V

    :cond_0
    return-void
.end method

.method public onMessageEvent(LR4/e;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 3
    iget-object p1, p1, LR4/e;->a:Lflix/com/vision/events/SystemEvent$ACTION;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lflix/com/vision/tv/PlayerActivityLiveExtended;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    .line 5
    iget-object p1, p0, Lflix/com/vision/tv/PlayerActivityLiveExtended;->m:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lflix/com/vision/tv/PlayerActivityLiveExtended;->r:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 6
    iget-object p1, p0, Lflix/com/vision/tv/PlayerActivityLiveExtended;->m:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onMessageEvent(Lflix/com/vision/models/PlayerEvent;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 7
    sget-object v0, Lf5/p;->a:[I

    iget-object p1, p1, Lflix/com/vision/models/PlayerEvent;->action:Lflix/com/vision/models/PlayerEvent$ACTION;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    return-void
.end method

.method public onMessageEvent(Lflix/com/vision/models/StreamUrl;)V
    .locals 10
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-eqz p1, :cond_4

    .line 8
    iget-object v0, p0, Lflix/com/vision/tv/PlayerActivityLiveExtended;->u:Ljava/util/ArrayList;

    iget v1, p0, Lflix/com/vision/tv/PlayerActivityLiveExtended;->v:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lflix/com/vision/models/ChannelTv;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lflix/com/vision/models/ChannelTv;->is_streamable:Z

    .line 9
    iget-boolean v0, p0, Lflix/com/vision/tv/PlayerActivityLiveExtended;->B:Z

    if-eqz v0, :cond_3

    .line 10
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    move-result-object v0

    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    const-string v2, "player_index"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 11
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    iget-object v0, p0, Lflix/com/vision/tv/PlayerActivityLiveExtended;->F:Lflix/com/vision/models/ChannelTv;

    iget-object v6, v0, Lflix/com/vision/models/ChannelTv;->label:Ljava/lang/String;

    iget-object v7, p1, Lflix/com/vision/models/StreamUrl;->stream_url:Ljava/lang/String;

    iget-object v8, p1, Lflix/com/vision/models/StreamUrl;->player_user_agent:Ljava/lang/String;

    iget-object v9, p1, Lflix/com/vision/models/StreamUrl;->player_referer:Ljava/lang/String;

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Lflix/com/vision/tv/PlayerActivityLiveExtended;->MXPlayerPlayUri(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v4, p0

    .line 12
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    move-result-object v0

    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 13
    iget-object v0, v4, Lflix/com/vision/tv/PlayerActivityLiveExtended;->F:Lflix/com/vision/models/ChannelTv;

    iget-object v0, v0, Lflix/com/vision/models/ChannelTv;->label:Ljava/lang/String;

    iget-object v1, p1, Lflix/com/vision/models/StreamUrl;->stream_url:Ljava/lang/String;

    iget-object v2, p1, Lflix/com/vision/models/StreamUrl;->player_user_agent:Ljava/lang/String;

    iget-object v3, p1, Lflix/com/vision/models/StreamUrl;->player_referer:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2, v3}, Lflix/com/vision/tv/PlayerActivityLiveExtended;->VLCPlayerPlayUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 14
    :cond_1
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    move-result-object v0

    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 15
    iget-object v0, v4, Lflix/com/vision/tv/PlayerActivityLiveExtended;->F:Lflix/com/vision/models/ChannelTv;

    iget-object v0, v0, Lflix/com/vision/models/ChannelTv;->label:Ljava/lang/String;

    iget-object v1, p1, Lflix/com/vision/models/StreamUrl;->stream_url:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lflix/com/vision/tv/PlayerActivityLiveExtended;->XPlayerlayerPlayUri(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 16
    :cond_2
    iget-object v0, v4, Lflix/com/vision/tv/PlayerActivityLiveExtended;->x:Lflix/com/vision/bvp/BetterVideoPlayer;

    invoke-virtual {v0}, Lflix/com/vision/bvp/BetterVideoPlayer;->reset()V

    .line 17
    iget-object v0, v4, Lflix/com/vision/tv/PlayerActivityLiveExtended;->x:Lflix/com/vision/bvp/BetterVideoPlayer;

    iget-object v1, p1, Lflix/com/vision/models/StreamUrl;->stream_url:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1}, Lflix/com/vision/models/StreamUrl;->getHeaders()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->setSource(Landroid/net/Uri;Ljava/util/Map;)V

    return-void

    :cond_3
    move-object v4, p0

    .line 18
    :goto_0
    iget-object v0, v4, Lflix/com/vision/tv/PlayerActivityLiveExtended;->x:Lflix/com/vision/bvp/BetterVideoPlayer;

    invoke-virtual {v0}, Lflix/com/vision/bvp/BetterVideoPlayer;->reset()V

    .line 19
    iget-object v0, v4, Lflix/com/vision/tv/PlayerActivityLiveExtended;->x:Lflix/com/vision/bvp/BetterVideoPlayer;

    iget-object v1, p1, Lflix/com/vision/models/StreamUrl;->stream_url:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1}, Lflix/com/vision/models/StreamUrl;->getHeaders()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->setSource(Landroid/net/Uri;Ljava/util/Map;)V

    return-void

    :cond_4
    move-object v4, p0

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/H;->onPause()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onPaused(Lflix/com/vision/bvp/BetterVideoPlayer;)V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lflix/com/vision/tv/PlayerActivityLiveExtended;->E:Lflix/com/vision/tv/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lflix/com/vision/tv/PlayerActivityLiveExtended;->z:Landroid/os/Handler;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catch_0
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 13
    .line 14
    .line 15
    :cond_0
    :goto_0
    new-instance v0, Landroid/os/Handler;

    .line 16
    .line 17
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 18
    .line 19
    .line 20
    new-instance v1, Lf5/r;

    .line 21
    .line 22
    invoke-direct {v1, p0, p1}, Lf5/r;-><init>(Lflix/com/vision/tv/PlayerActivityLiveExtended;Lflix/com/vision/bvp/BetterVideoPlayer;)V

    .line 23
    .line 24
    .line 25
    const-wide/16 v2, 0x7d0

    .line 26
    .line 27
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public onPrepared(Lflix/com/vision/bvp/BetterVideoPlayer;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lflix/com/vision/tv/PlayerActivityLiveExtended;->f:Lcom/tuyenmonkey/mkloader/MKLoader;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    iget-boolean v0, p0, Lflix/com/vision/tv/PlayerActivityLiveExtended;->D:Z

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lflix/com/vision/tv/PlayerActivityLiveExtended;->e:Landroid/widget/ImageView;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->getToolbar()Landroidx/appcompat/widget/Toolbar;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v1, p0, Lflix/com/vision/tv/PlayerActivityLiveExtended;->u:Ljava/util/ArrayList;

    .line 22
    .line 23
    iget v2, p0, Lflix/com/vision/tv/PlayerActivityLiveExtended;->v:I

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Lflix/com/vision/models/ChannelTv;

    .line 30
    .line 31
    iget-object v1, v1, Lflix/com/vision/models/ChannelTv;->label:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catch_0
    move-exception v0

    .line 38
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 39
    .line 40
    .line 41
    :goto_0
    iget-boolean v0, p0, Lflix/com/vision/tv/PlayerActivityLiveExtended;->C:Z

    .line 42
    .line 43
    const/4 v1, 0x1

    .line 44
    if-nez v0, :cond_1

    .line 45
    .line 46
    iput-boolean v1, p0, Lflix/com/vision/tv/PlayerActivityLiveExtended;->C:Z

    .line 47
    .line 48
    const/high16 v0, 0x3f800000    # 1.0f

    .line 49
    .line 50
    :try_start_1
    invoke-virtual {p1, v0}, Lflix/com/vision/bvp/BetterVideoPlayer;->setVolume(F)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :catch_1
    move-exception v0

    .line 55
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 56
    .line 57
    .line 58
    :cond_1
    :goto_1
    :try_start_2
    iget-object v0, p0, Lflix/com/vision/tv/PlayerActivityLiveExtended;->u:Ljava/util/ArrayList;

    .line 59
    .line 60
    iget v2, p0, Lflix/com/vision/tv/PlayerActivityLiveExtended;->v:I

    .line 61
    .line 62
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Lflix/com/vision/models/ChannelTv;

    .line 67
    .line 68
    iput-boolean v1, v0, Lflix/com/vision/models/ChannelTv;->has_played:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :catch_2
    move-exception v0

    .line 72
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 73
    .line 74
    .line 75
    :goto_2
    new-instance v0, Landroid/os/Handler;

    .line 76
    .line 77
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 78
    .line 79
    .line 80
    new-instance v1, Lf5/s;

    .line 81
    .line 82
    invoke-direct {v1, p1}, Lf5/s;-><init>(Lflix/com/vision/bvp/BetterVideoPlayer;)V

    .line 83
    .line 84
    .line 85
    const-wide/16 v2, 0xc8

    .line 86
    .line 87
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 88
    .line 89
    .line 90
    return-void
.end method

.method public onPreparing()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lflix/com/vision/activities/base/a;->onResume()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onStarted(Lflix/com/vision/bvp/BetterVideoPlayer;)V
    .locals 0

    return-void
.end method

.method public onToggleControls(Z)V
    .locals 3

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object p1, p0, Lflix/com/vision/tv/PlayerActivityLiveExtended;->E:Lflix/com/vision/tv/a;

    .line 4
    .line 5
    iget-object v0, p0, Lflix/com/vision/tv/PlayerActivityLiveExtended;->z:Landroid/os/Handler;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    new-instance p1, Lflix/com/vision/tv/a;

    .line 13
    .line 14
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lflix/com/vision/tv/PlayerActivityLiveExtended;->E:Lflix/com/vision/tv/a;

    .line 18
    .line 19
    const-wide/16 v1, 0x1388

    .line 20
    .line 21
    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 22
    .line 23
    .line 24
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
    iget-object p1, p0, Lflix/com/vision/tv/PlayerActivityLiveExtended;->w:Landroid/view/View;

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

.method public playChannel(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lflix/com/vision/tv/PlayerActivityLiveExtended;->u:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lflix/com/vision/models/ChannelTv;

    .line 8
    .line 9
    iget-object v1, p0, Lflix/com/vision/tv/PlayerActivityLiveExtended;->f:Lcom/tuyenmonkey/mkloader/MKLoader;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lflix/com/vision/tv/PlayerActivityLiveExtended;->e:Landroid/widget/ImageView;

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    iget-object v1, v0, Lflix/com/vision/models/ChannelTv;->logoUrl:Ljava/lang/String;

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    const/16 v3, 0xa

    .line 29
    .line 30
    if-le v1, v3, :cond_0

    .line 31
    .line 32
    :try_start_0
    invoke-static {}, Lm4/D;->get()Lm4/D;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    iget-object v3, v0, Lflix/com/vision/models/ChannelTv;->logoUrl:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v1, v3}, Lm4/D;->load(Ljava/lang/String;)Lm4/J;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v1}, Lm4/J;->fit()Lm4/J;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    new-instance v3, LT4/d;

    .line 47
    .line 48
    invoke-direct {v3}, LT4/d;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v3}, Lm4/J;->transform(Lm4/S;)Lm4/J;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v1}, Lm4/J;->centerCrop()Lm4/J;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    iget-object v3, p0, Lflix/com/vision/tv/PlayerActivityLiveExtended;->e:Landroid/widget/ImageView;

    .line 60
    .line 61
    invoke-virtual {v1, v3}, Lm4/J;->into(Landroid/widget/ImageView;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :catch_0
    move-exception v1

    .line 66
    goto :goto_0

    .line 67
    :catch_1
    move-exception v1

    .line 68
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 73
    .line 74
    .line 75
    :cond_0
    :goto_1
    iput p1, p0, Lflix/com/vision/tv/PlayerActivityLiveExtended;->v:I

    .line 76
    .line 77
    iput-object v0, p0, Lflix/com/vision/tv/PlayerActivityLiveExtended;->F:Lflix/com/vision/models/ChannelTv;

    .line 78
    .line 79
    iget-boolean p1, v0, Lflix/com/vision/models/ChannelTv;->is_streamable:Z

    .line 80
    .line 81
    if-eqz p1, :cond_1

    .line 82
    .line 83
    :try_start_2
    iget-object p1, p0, Lflix/com/vision/tv/PlayerActivityLiveExtended;->u:Ljava/util/ArrayList;

    .line 84
    .line 85
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    iput p1, p0, Lflix/com/vision/tv/PlayerActivityLiveExtended;->v:I

    .line 90
    .line 91
    iget-object p1, p0, Lflix/com/vision/tv/PlayerActivityLiveExtended;->x:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 92
    .line 93
    invoke-virtual {p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->reset()V

    .line 94
    .line 95
    .line 96
    iget-object p1, p0, Lflix/com/vision/tv/PlayerActivityLiveExtended;->x:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 97
    .line 98
    iget-object v0, v0, Lflix/com/vision/models/ChannelTv;->url:Ljava/lang/String;

    .line 99
    .line 100
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {p1, v0}, Lflix/com/vision/bvp/BetterVideoPlayer;->setSource(Landroid/net/Uri;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 105
    .line 106
    .line 107
    goto :goto_2

    .line 108
    :catch_2
    move-exception p1

    .line 109
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 110
    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_1
    iget-object p1, v0, Lflix/com/vision/models/ChannelTv;->links:Ljava/util/ArrayList;

    .line 114
    .line 115
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    if-lez p1, :cond_2

    .line 120
    .line 121
    iget-object p1, v0, Lflix/com/vision/models/ChannelTv;->links:Ljava/util/ArrayList;

    .line 122
    .line 123
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    check-cast p1, Lflix/com/vision/models/StreamUrl;

    .line 128
    .line 129
    sget-object v0, Lflix/com/vision/tv/Constant;->b:Ljava/lang/String;

    .line 130
    .line 131
    invoke-static {p1, v0}, Lf5/m;->GetStreamLink(Lflix/com/vision/models/StreamUrl;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    :goto_2
    return-void

    .line 135
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    const-string v0, "Failed to load Channel"

    .line 140
    .line 141
    const/4 v1, 0x1

    .line 142
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 147
    .line 148
    .line 149
    return-void
.end method
