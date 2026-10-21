.class public final LB4/A;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroid/widget/TextView;

.field public final synthetic b:Landroid/widget/ProgressBar;

.field public final synthetic c:Lflix/com/vision/activities/player/SimpleVideoPlayer;


# direct methods
.method public constructor <init>(Lflix/com/vision/activities/player/SimpleVideoPlayer;Landroid/widget/TextView;Landroid/widget/ProgressBar;)V
    .locals 2

    .line 1
    iput-object p1, p0, LB4/A;->c:Lflix/com/vision/activities/player/SimpleVideoPlayer;

    .line 2
    .line 3
    iput-object p2, p0, LB4/A;->a:Landroid/widget/TextView;

    .line 4
    .line 5
    iput-object p3, p0, LB4/A;->b:Landroid/widget/ProgressBar;

    .line 6
    .line 7
    const-wide/16 p1, 0x4e20

    .line 8
    .line 9
    const-wide/16 v0, 0x64

    .line 10
    .line 11
    invoke-direct {p0, p1, p2, v0, v1}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .line 1
    iget-object v0, p0, LB4/A;->c:Lflix/com/vision/activities/player/SimpleVideoPlayer;

    .line 2
    .line 3
    invoke-virtual {v0}, Lflix/com/vision/activities/player/SimpleVideoPlayer;->q()V

    .line 4
    .line 5
    .line 6
    iget-boolean v1, v0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->R:Z

    .line 7
    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {v0}, Lflix/com/vision/activities/player/SimpleVideoPlayer;->h()V

    .line 14
    .line 15
    .line 16
    iget v1, v0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->h0:I

    .line 17
    .line 18
    add-int/lit8 v2, v1, 0x1

    .line 19
    .line 20
    iput v2, v0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->h0:I

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lflix/com/vision/activities/player/SimpleVideoPlayer;->x(I)V

    .line 23
    .line 24
    .line 25
    :cond_1
    :goto_0
    return-void
.end method

.method public onTick(J)V
    .locals 4

    .line 1
    long-to-double v0, p1

    .line 2
    const-wide v2, 0x408f400000000000L    # 1000.0

    .line 3
    .line 4
    .line 5
    .line 6
    .line 7
    div-double/2addr v0, v2

    .line 8
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    double-to-int v0, v0

    .line 13
    iget-object v1, p0, LB4/A;->a:Landroid/widget/TextView;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v3, "Next Episode in "

    .line 20
    .line 21
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v0, "s"

    .line 28
    .line 29
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    iget-object v0, p0, LB4/A;->b:Landroid/widget/ProgressBar;

    .line 40
    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    long-to-float p1, p1

    .line 44
    const p2, 0x469c4000    # 20000.0f

    .line 45
    .line 46
    .line 47
    div-float/2addr p1, p2

    .line 48
    const/high16 p2, 0x42c80000    # 100.0f

    .line 49
    .line 50
    mul-float/2addr p1, p2

    .line 51
    float-to-int p1, p1

    .line 52
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 53
    .line 54
    .line 55
    :cond_1
    return-void
.end method
