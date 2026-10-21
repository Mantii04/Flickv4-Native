.class public final LK4/f;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lflix/com/vision/bvp/BetterVideoPlayer;


# direct methods
.method public constructor <init>(Lflix/com/vision/bvp/BetterVideoPlayer;)V
    .locals 0

    .line 1
    iput-object p1, p0, LK4/f;->b:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1
    iget-object v0, p0, LK4/f;->b:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 2
    .line 3
    iget-object v1, v0, Lflix/com/vision/bvp/BetterVideoPlayer;->t:Landroid/content/Context;

    .line 4
    .line 5
    invoke-static {v1}, LM4/c;->getScreenWidth(Landroid/content/Context;)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    div-int/lit8 v1, v1, 0x2

    .line 10
    .line 11
    iput v1, v0, Lflix/com/vision/bvp/BetterVideoPlayer;->j0:I

    .line 12
    .line 13
    iget v1, v0, Lflix/com/vision/bvp/BetterVideoPlayer;->h0:I

    .line 14
    .line 15
    div-int/lit16 v1, v1, 0x3e8

    .line 16
    .line 17
    iget-object v2, v0, Lflix/com/vision/bvp/BetterVideoPlayer;->f:Landroid/widget/TextView;

    .line 18
    .line 19
    int-to-long v3, v1

    .line 20
    invoke-static {v3, v4}, Lh5/n;->getDurationString(J)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    .line 26
    .line 27
    iget-object v1, v0, Lflix/com/vision/bvp/BetterVideoPlayer;->j:Landroid/widget/TextView;

    .line 28
    .line 29
    invoke-static {v3, v4}, Lh5/n;->getDurationString(J)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    iget v1, v0, Lflix/com/vision/bvp/BetterVideoPlayer;->j0:I

    .line 41
    .line 42
    int-to-float v1, v1

    .line 43
    cmpl-float p1, p1, v1

    .line 44
    .line 45
    const-wide/16 v1, 0x1f4

    .line 46
    .line 47
    const/4 v3, 0x1

    .line 48
    if-lez p1, :cond_0

    .line 49
    .line 50
    iget-object p1, v0, Lflix/com/vision/bvp/BetterVideoPlayer;->f:Landroid/widget/TextView;

    .line 51
    .line 52
    invoke-virtual {v0, p1, v3}, Lflix/com/vision/bvp/BetterVideoPlayer;->d(Landroid/view/View;I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Lflix/com/vision/bvp/BetterVideoPlayer;->getCurrentPosition()J

    .line 56
    .line 57
    .line 58
    move-result-wide v4

    .line 59
    iget p1, v0, Lflix/com/vision/bvp/BetterVideoPlayer;->h0:I

    .line 60
    .line 61
    int-to-long v6, p1

    .line 62
    add-long/2addr v4, v6

    .line 63
    invoke-virtual {v0, v4, v5}, Lflix/com/vision/bvp/BetterVideoPlayer;->seekTo(J)V

    .line 64
    .line 65
    .line 66
    new-instance p1, Landroid/os/Handler;

    .line 67
    .line 68
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 69
    .line 70
    .line 71
    new-instance v0, LK4/e;

    .line 72
    .line 73
    const/4 v4, 0x0

    .line 74
    invoke-direct {v0, p0, v4}, LK4/e;-><init>(LK4/f;I)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 78
    .line 79
    .line 80
    return v3

    .line 81
    :cond_0
    iget-object p1, v0, Lflix/com/vision/bvp/BetterVideoPlayer;->j:Landroid/widget/TextView;

    .line 82
    .line 83
    invoke-virtual {v0, p1, v3}, Lflix/com/vision/bvp/BetterVideoPlayer;->d(Landroid/view/View;I)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Lflix/com/vision/bvp/BetterVideoPlayer;->getCurrentPosition()J

    .line 87
    .line 88
    .line 89
    move-result-wide v4

    .line 90
    iget p1, v0, Lflix/com/vision/bvp/BetterVideoPlayer;->h0:I

    .line 91
    .line 92
    int-to-long v6, p1

    .line 93
    sub-long/2addr v4, v6

    .line 94
    invoke-virtual {v0, v4, v5}, Lflix/com/vision/bvp/BetterVideoPlayer;->seekTo(J)V

    .line 95
    .line 96
    .line 97
    new-instance p1, Landroid/os/Handler;

    .line 98
    .line 99
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 100
    .line 101
    .line 102
    new-instance v0, LK4/e;

    .line 103
    .line 104
    const/4 v4, 0x1

    .line 105
    invoke-direct {v0, p0, v4}, LK4/e;-><init>(LK4/f;I)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 109
    .line 110
    .line 111
    return v3
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    return p1
.end method
