.class public final LB4/K;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm4/i;


# instance fields
.field public final synthetic a:Lflix/com/vision/activities/player/SimpleVideoPlayer;


# direct methods
.method public constructor <init>(Lflix/com/vision/activities/player/SimpleVideoPlayer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LB4/K;->a:Lflix/com/vision/activities/player/SimpleVideoPlayer;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    iget-object p1, p0, LB4/K;->a:Lflix/com/vision/activities/player/SimpleVideoPlayer;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p1, Lflix/com/vision/activities/player/SimpleVideoPlayer;->H0:Z

    .line 5
    .line 6
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .line 1
    iget-object v0, p0, LB4/K;->a:Lflix/com/vision/activities/player/SimpleVideoPlayer;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->H0:Z

    .line 5
    .line 6
    return-void
.end method
