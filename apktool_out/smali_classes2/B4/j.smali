.class public final LB4/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lflix/com/vision/bvp/BetterVideoPlayer;

.field public final synthetic e:Lflix/com/vision/activities/player/PlayerActivityLiveTV;


# direct methods
.method public constructor <init>(Lflix/com/vision/activities/player/PlayerActivityLiveTV;Lflix/com/vision/bvp/BetterVideoPlayer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LB4/j;->e:Lflix/com/vision/activities/player/PlayerActivityLiveTV;

    .line 5
    .line 6
    iput-object p2, p0, LB4/j;->b:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, LB4/j;->b:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 2
    .line 3
    invoke-virtual {v0}, Lflix/com/vision/bvp/BetterVideoPlayer;->isPlaying()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, LB4/j;->e:Lflix/com/vision/activities/player/PlayerActivityLiveTV;

    .line 10
    .line 11
    invoke-virtual {v0}, Lflix/com/vision/activities/base/a;->Show()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method
