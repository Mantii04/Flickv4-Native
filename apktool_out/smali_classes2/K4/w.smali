.class public final LK4/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lflix/com/vision/bvp/BetterVideoPlayer2;


# direct methods
.method public constructor <init>(Lflix/com/vision/bvp/BetterVideoPlayer2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LK4/w;->b:Lflix/com/vision/bvp/BetterVideoPlayer2;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    iget-object v0, p0, LK4/w;->b:Lflix/com/vision/bvp/BetterVideoPlayer2;

    .line 2
    .line 3
    iget-object v1, v0, Lflix/com/vision/bvp/BetterVideoPlayer2;->L:Landroid/os/Handler;

    .line 4
    .line 5
    if-eqz v1, :cond_3

    .line 6
    .line 7
    iget-boolean v1, v0, Lflix/com/vision/bvp/BetterVideoPlayer2;->H:Z

    .line 8
    .line 9
    if-eqz v1, :cond_3

    .line 10
    .line 11
    iget-object v1, v0, Lflix/com/vision/bvp/BetterVideoPlayer2;->B:Landroid/widget/SeekBar;

    .line 12
    .line 13
    if-eqz v1, :cond_3

    .line 14
    .line 15
    iget-object v1, v0, Lflix/com/vision/bvp/BetterVideoPlayer2;->y:Landroid/media/MediaPlayer;

    .line 16
    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    int-to-long v1, v1

    .line 25
    iget-object v3, v0, Lflix/com/vision/bvp/BetterVideoPlayer2;->y:Landroid/media/MediaPlayer;

    .line 26
    .line 27
    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getDuration()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    int-to-long v3, v3

    .line 32
    cmp-long v5, v1, v3

    .line 33
    .line 34
    if-lez v5, :cond_1

    .line 35
    .line 36
    move-wide v1, v3

    .line 37
    :cond_1
    iget-object v5, v0, Lflix/com/vision/bvp/BetterVideoPlayer2;->D:Landroid/widget/TextView;

    .line 38
    .line 39
    const/4 v6, 0x0

    .line 40
    invoke-static {v1, v2, v6}, LM4/c;->getDurationString(JZ)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v7

    .line 44
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    .line 46
    .line 47
    iget-boolean v5, v0, Lflix/com/vision/bvp/BetterVideoPlayer2;->V:Z

    .line 48
    .line 49
    if-eqz v5, :cond_2

    .line 50
    .line 51
    iget-object v5, v0, Lflix/com/vision/bvp/BetterVideoPlayer2;->E:Landroid/widget/TextView;

    .line 52
    .line 53
    invoke-static {v3, v4, v6}, LM4/c;->getDurationString(JZ)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    iget-object v5, v0, Lflix/com/vision/bvp/BetterVideoPlayer2;->E:Landroid/widget/TextView;

    .line 62
    .line 63
    sub-long v6, v3, v1

    .line 64
    .line 65
    const/4 v8, 0x1

    .line 66
    invoke-static {v6, v7, v8}, LM4/c;->getDurationString(JZ)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v6

    .line 70
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    .line 72
    .line 73
    :goto_0
    long-to-int v1, v1

    .line 74
    long-to-int v2, v3

    .line 75
    iget-object v3, v0, Lflix/com/vision/bvp/BetterVideoPlayer2;->B:Landroid/widget/SeekBar;

    .line 76
    .line 77
    invoke-virtual {v3, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 78
    .line 79
    .line 80
    iget-object v3, v0, Lflix/com/vision/bvp/BetterVideoPlayer2;->B:Landroid/widget/SeekBar;

    .line 81
    .line 82
    invoke-virtual {v3, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 83
    .line 84
    .line 85
    iget-object v3, v0, Lflix/com/vision/bvp/BetterVideoPlayer2;->C:Landroid/widget/ProgressBar;

    .line 86
    .line 87
    invoke-virtual {v3, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 88
    .line 89
    .line 90
    iget-object v1, v0, Lflix/com/vision/bvp/BetterVideoPlayer2;->C:Landroid/widget/ProgressBar;

    .line 91
    .line 92
    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 93
    .line 94
    .line 95
    iget-object v0, v0, Lflix/com/vision/bvp/BetterVideoPlayer2;->L:Landroid/os/Handler;

    .line 96
    .line 97
    if-eqz v0, :cond_3

    .line 98
    .line 99
    const-wide/16 v1, 0x64

    .line 100
    .line 101
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 102
    .line 103
    .line 104
    :cond_3
    :goto_1
    return-void
.end method
