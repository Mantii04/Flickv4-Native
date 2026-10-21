.class public final Lflix/com/vision/tv/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# virtual methods
.method public run()V
    .locals 2

    .line 1
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lflix/com/vision/tv/PlayerActivityLiveExtended$RESULT_EVENT_PLAYER_CTIVITY_LIVE;->b:Lflix/com/vision/tv/PlayerActivityLiveExtended$RESULT_EVENT_PLAYER_CTIVITY_LIVE;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
