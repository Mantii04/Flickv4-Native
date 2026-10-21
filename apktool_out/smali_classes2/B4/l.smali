.class public final LB4/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lflix/com/vision/models/ChannelTv;

.field public final synthetic e:Lflix/com/vision/activities/player/PlayerActivityLiveTV;


# direct methods
.method public constructor <init>(Lflix/com/vision/activities/player/PlayerActivityLiveTV;Lflix/com/vision/models/ChannelTv;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LB4/l;->e:Lflix/com/vision/activities/player/PlayerActivityLiveTV;

    .line 5
    .line 6
    iput-object p2, p0, LB4/l;->b:Lflix/com/vision/models/ChannelTv;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, LB4/l;->e:Lflix/com/vision/activities/player/PlayerActivityLiveTV;

    .line 2
    .line 3
    iget-object v1, v0, Lflix/com/vision/activities/player/PlayerActivityLiveTV;->u:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 4
    .line 5
    invoke-virtual {v1}, Lflix/com/vision/bvp/BetterVideoPlayer;->isPrepared()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, LB4/l;->b:Lflix/com/vision/models/ChannelTv;

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    invoke-virtual {v0, v1, v2}, Lflix/com/vision/activities/player/PlayerActivityLiveTV;->playChannel(Lflix/com/vision/models/ChannelTv;Z)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method
