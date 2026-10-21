.class public final LB4/I;
.super Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Callback;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

.field public final synthetic b:Lflix/com/vision/activities/player/SimpleVideoPlayer;


# direct methods
.method public constructor <init>(Lflix/com/vision/activities/player/SimpleVideoPlayer;Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)V
    .locals 0

    .line 1
    iput-object p1, p0, LB4/I;->b:Lflix/com/vision/activities/player/SimpleVideoPlayer;

    .line 2
    .line 3
    iput-object p2, p0, LB4/I;->a:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Callback;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onStatusUpdated()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-class v1, Lflix/com/vision/cast/ExpandedControlsActivity;

    .line 4
    .line 5
    iget-object v2, p0, LB4/I;->b:Lflix/com/vision/activities/player/SimpleVideoPlayer;

    .line 6
    .line 7
    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, LB4/I;->a:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->unregisterCallback(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Callback;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
