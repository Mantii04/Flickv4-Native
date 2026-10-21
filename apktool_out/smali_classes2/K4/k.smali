.class public final LK4/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lflix/com/vision/bvp/BetterVideoPlayer;


# direct methods
.method public constructor <init>(Lflix/com/vision/bvp/BetterVideoPlayer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LK4/k;->b:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 1
    iget-object v0, p0, LK4/k;->b:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 2
    .line 3
    iget-object v1, v0, Lflix/com/vision/bvp/BetterVideoPlayer;->L:Landroid/os/Handler;

    .line 4
    .line 5
    if-eqz v1, :cond_4

    .line 6
    .line 7
    iget-boolean v1, v0, Lflix/com/vision/bvp/BetterVideoPlayer;->H:Z

    .line 8
    .line 9
    if-eqz v1, :cond_4

    .line 10
    .line 11
    iget-object v1, v0, Lflix/com/vision/bvp/BetterVideoPlayer;->C:Landroid/widget/SeekBar;

    .line 12
    .line 13
    if-eqz v1, :cond_4

    .line 14
    .line 15
    iget-object v1, v0, Lflix/com/vision/bvp/BetterVideoPlayer;->z:Landroidx/media3/exoplayer/ExoPlayer;

    .line 16
    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    invoke-interface {v1}, Landroidx/media3/common/Player;->getCurrentPosition()J

    .line 21
    .line 22
    .line 23
    move-result-wide v1

    .line 24
    iget-object v3, v0, Lflix/com/vision/bvp/BetterVideoPlayer;->z:Landroidx/media3/exoplayer/ExoPlayer;

    .line 25
    .line 26
    invoke-interface {v3}, Landroidx/media3/common/Player;->getDuration()J

    .line 27
    .line 28
    .line 29
    move-result-wide v3

    .line 30
    cmp-long v5, v1, v3

    .line 31
    .line 32
    if-lez v5, :cond_1

    .line 33
    .line 34
    move-wide v1, v3

    .line 35
    :cond_1
    iget-wide v5, v0, Lflix/com/vision/bvp/BetterVideoPlayer;->o0:J

    .line 36
    .line 37
    cmp-long v7, v1, v5

    .line 38
    .line 39
    const-wide/16 v8, 0x64

    .line 40
    .line 41
    if-gez v7, :cond_2

    .line 42
    .line 43
    sub-long/2addr v5, v1

    .line 44
    const-wide/16 v10, 0x7d0

    .line 45
    .line 46
    cmp-long v5, v5, v10

    .line 47
    .line 48
    if-gez v5, :cond_2

    .line 49
    .line 50
    iget-object v0, v0, Lflix/com/vision/bvp/BetterVideoPlayer;->L:Landroid/os/Handler;

    .line 51
    .line 52
    if-eqz v0, :cond_4

    .line 53
    .line 54
    invoke-virtual {v0, p0, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_2
    iput-wide v1, v0, Lflix/com/vision/bvp/BetterVideoPlayer;->o0:J

    .line 59
    .line 60
    iget-object v5, v0, Lflix/com/vision/bvp/BetterVideoPlayer;->E:Landroid/widget/TextView;

    .line 61
    .line 62
    const/4 v6, 0x0

    .line 63
    invoke-static {v1, v2, v6}, LM4/c;->getDurationString(JZ)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v7

    .line 67
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    .line 69
    .line 70
    iget-boolean v5, v0, Lflix/com/vision/bvp/BetterVideoPlayer;->V:Z

    .line 71
    .line 72
    if-eqz v5, :cond_3

    .line 73
    .line 74
    iget-object v5, v0, Lflix/com/vision/bvp/BetterVideoPlayer;->F:Landroid/widget/TextView;

    .line 75
    .line 76
    invoke-static {v3, v4, v6}, LM4/c;->getDurationString(JZ)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_3
    iget-object v5, v0, Lflix/com/vision/bvp/BetterVideoPlayer;->F:Landroid/widget/TextView;

    .line 85
    .line 86
    sub-long v6, v3, v1

    .line 87
    .line 88
    const/4 v10, 0x1

    .line 89
    invoke-static {v6, v7, v10}, LM4/c;->getDurationString(JZ)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v6

    .line 93
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    .line 95
    .line 96
    :goto_0
    long-to-int v1, v1

    .line 97
    long-to-int v2, v3

    .line 98
    iget-object v3, v0, Lflix/com/vision/bvp/BetterVideoPlayer;->C:Landroid/widget/SeekBar;

    .line 99
    .line 100
    invoke-virtual {v3, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 101
    .line 102
    .line 103
    iget-object v3, v0, Lflix/com/vision/bvp/BetterVideoPlayer;->C:Landroid/widget/SeekBar;

    .line 104
    .line 105
    invoke-virtual {v3, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 106
    .line 107
    .line 108
    iget-object v3, v0, Lflix/com/vision/bvp/BetterVideoPlayer;->D:Landroid/widget/ProgressBar;

    .line 109
    .line 110
    invoke-virtual {v3, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 111
    .line 112
    .line 113
    iget-object v1, v0, Lflix/com/vision/bvp/BetterVideoPlayer;->D:Landroid/widget/ProgressBar;

    .line 114
    .line 115
    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 116
    .line 117
    .line 118
    iget-object v0, v0, Lflix/com/vision/bvp/BetterVideoPlayer;->L:Landroid/os/Handler;

    .line 119
    .line 120
    if-eqz v0, :cond_4

    .line 121
    .line 122
    invoke-virtual {v0, p0, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 123
    .line 124
    .line 125
    :cond_4
    :goto_1
    return-void
.end method
