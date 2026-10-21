.class public final LB4/C;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lflix/com/vision/activities/player/SimpleVideoPlayer;


# direct methods
.method public constructor <init>(Lflix/com/vision/activities/player/SimpleVideoPlayer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LB4/C;->b:Lflix/com/vision/activities/player/SimpleVideoPlayer;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, LB4/C;->b:Lflix/com/vision/activities/player/SimpleVideoPlayer;

    .line 2
    .line 3
    iget-object v1, v0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-wide v2, v0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->S:J

    .line 8
    .line 9
    const-wide/16 v4, -0x1

    .line 10
    .line 11
    cmp-long v6, v2, v4

    .line 12
    .line 13
    if-eqz v6, :cond_0

    .line 14
    .line 15
    invoke-virtual {v1, v2, v3}, Lflix/com/vision/bvp/BetterVideoPlayer;->seekTo(J)V

    .line 16
    .line 17
    .line 18
    iget-object v1, v0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 19
    .line 20
    invoke-virtual {v1}, Lflix/com/vision/bvp/BetterVideoPlayer;->hideVisualSeek()V

    .line 21
    .line 22
    .line 23
    iput-wide v4, v0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->S:J

    .line 24
    .line 25
    iget-object v1, v0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 26
    .line 27
    invoke-virtual {v1}, Lflix/com/vision/bvp/BetterVideoPlayer;->isPlaying()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_0

    .line 32
    .line 33
    iget-object v0, v0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 34
    .line 35
    invoke-virtual {v0}, Lflix/com/vision/bvp/BetterVideoPlayer;->start()V

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void
.end method
