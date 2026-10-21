.class public final synthetic LB4/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Lflix/com/vision/bvp/BetterVideoPlayer;


# direct methods
.method public synthetic constructor <init>(Lflix/com/vision/bvp/BetterVideoPlayer;I)V
    .locals 0

    .line 1
    iput p2, p0, LB4/d;->b:I

    iput-object p1, p0, LB4/d;->e:Lflix/com/vision/bvp/BetterVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, LB4/d;->e:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 2
    .line 3
    iget v1, p0, LB4/d;->b:I

    .line 4
    .line 5
    packed-switch v1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    sget v1, Lflix/com/vision/tv/PlayerActivityLiveExternal;->J:I

    .line 9
    .line 10
    invoke-virtual {v0}, Lflix/com/vision/bvp/BetterVideoPlayer;->start()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    iget-object v1, v0, Lflix/com/vision/bvp/BetterVideoPlayer;->z:Landroidx/media3/exoplayer/ExoPlayer;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-interface {v1}, Landroidx/media3/exoplayer/ExoPlayer;->getVideoFormat()Landroidx/media3/common/Format;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    iget-object v1, v0, Lflix/com/vision/bvp/BetterVideoPlayer;->z:Landroidx/media3/exoplayer/ExoPlayer;

    .line 25
    .line 26
    invoke-interface {v1}, Landroidx/media3/exoplayer/ExoPlayer;->getVideoFormat()Landroidx/media3/common/Format;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    iget v2, v1, Landroidx/media3/common/Format;->width:I

    .line 31
    .line 32
    if-lez v2, :cond_0

    .line 33
    .line 34
    iget v2, v1, Landroidx/media3/common/Format;->height:I

    .line 35
    .line 36
    if-lez v2, :cond_0

    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    iget v4, v1, Landroidx/media3/common/Format;->width:I

    .line 47
    .line 48
    iget v1, v1, Landroidx/media3/common/Format;->height:I

    .line 49
    .line 50
    invoke-virtual {v0, v2, v3, v4, v1}, Lflix/com/vision/bvp/BetterVideoPlayer;->c(IIII)V

    .line 51
    .line 52
    .line 53
    :cond_0
    return-void

    .line 54
    :pswitch_1
    invoke-virtual {v0}, Lflix/com/vision/bvp/BetterVideoPlayer;->start()V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :pswitch_2
    sget v1, Lflix/com/vision/activities/player/AdultVideoPlayerActivity;->z:I

    .line 59
    .line 60
    invoke-virtual {v0}, Lflix/com/vision/bvp/BetterVideoPlayer;->start()V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    nop

    .line 65
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
