.class public final LB4/B;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroid/widget/ProgressBar;

.field public final synthetic b:Lflix/com/vision/activities/player/SimpleVideoPlayer;


# direct methods
.method public constructor <init>(Lflix/com/vision/activities/player/SimpleVideoPlayer;Landroid/widget/ProgressBar;)V
    .locals 2

    .line 1
    iput-object p1, p0, LB4/B;->b:Lflix/com/vision/activities/player/SimpleVideoPlayer;

    .line 2
    .line 3
    iput-object p2, p0, LB4/B;->a:Landroid/widget/ProgressBar;

    .line 4
    .line 5
    const-wide/16 p1, 0x61a8

    .line 6
    .line 7
    const-wide/16 v0, 0x64

    .line 8
    .line 9
    invoke-direct {p0, p1, p2, v0, v1}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .line 1
    iget-object v0, p0, LB4/B;->b:Lflix/com/vision/activities/player/SimpleVideoPlayer;

    .line 2
    .line 3
    invoke-virtual {v0}, Lflix/com/vision/activities/player/SimpleVideoPlayer;->r()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onTick(J)V
    .locals 1

    .line 1
    iget-object v0, p0, LB4/B;->a:Landroid/widget/ProgressBar;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    long-to-float p1, p1

    .line 6
    const p2, 0x46c35000    # 25000.0f

    .line 7
    .line 8
    .line 9
    div-float/2addr p1, p2

    .line 10
    const/high16 p2, 0x42c80000    # 100.0f

    .line 11
    .line 12
    mul-float/2addr p1, p2

    .line 13
    float-to-int p1, p1

    .line 14
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method
