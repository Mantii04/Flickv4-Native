.class public Lflix/com/vision/bvp/BetterVideoPlayer;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# static fields
.field public static final synthetic s0:I


# instance fields
.field public A:LK4/d;

.field public B:Landroid/view/SurfaceView;

.field public C:Landroid/widget/SeekBar;

.field public D:Landroid/widget/ProgressBar;

.field public E:Landroid/widget/TextView;

.field public F:Landroid/widget/TextView;

.field public G:Landroid/widget/ImageButton;

.field public H:Z

.field public I:Z

.field public J:I

.field public K:I

.field public L:Landroid/os/Handler;

.field public M:I

.field public N:Landroid/net/Uri;

.field public O:Ljava/util/Map;

.field public P:LK4/b;

.field public Q:Landroid/graphics/drawable/Drawable;

.field public R:Landroid/graphics/drawable/Drawable;

.field public S:Landroid/graphics/drawable/Drawable;

.field public T:Z

.field public U:Z

.field public V:Z

.field public W:Z

.field public a0:Z

.field public b:I

.field public b0:Z

.field public c0:Z

.field public d0:Z

.field public e:Landroid/widget/TextView;

.field public e0:I

.field public f:Landroid/widget/TextView;

.field public f0:J

.field public g0:I

.field public final h0:I

.field public final i0:Landroid/view/GestureDetector;

.field public j:Landroid/widget/TextView;

.field public j0:I

.field public k0:Z

.field public final l0:LK4/j;

.field public m:Lflix/com/vision/bvp/subtitle/CaptionsView;

.field public final m0:Lflix/com/vision/bvp/a;

.field public n:Landroid/media/AudioManager;

.field public n0:Z

.field public o0:J

.field public p:Landroidx/appcompat/widget/Toolbar;

.field public final p0:LK4/k;

.field public q:Ljava/lang/String;

.field public q0:J

.field public r:I

.field public r0:LK4/m;

.field public s:I

.field public t:Landroid/content/Context;

.field public u:Landroid/view/Window;

.field public v:Landroid/view/View;

.field public w:Landroid/view/View;

.field public x:Landroid/widget/FrameLayout;

.field public y:Landroid/view/View;

.field public z:Landroidx/media3/exoplayer/ExoPlayer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->b:I

    .line 6
    .line 7
    iput-boolean v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->T:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->U:Z

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    iput-boolean v1, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->V:Z

    .line 13
    .line 14
    iput-boolean v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->W:Z

    .line 15
    .line 16
    iput-boolean v1, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->a0:Z

    .line 17
    .line 18
    iput-boolean v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->b0:Z

    .line 19
    .line 20
    iput-boolean v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->c0:Z

    .line 21
    .line 22
    iput-boolean v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->d0:Z

    .line 23
    .line 24
    const/4 v1, 0x7

    .line 25
    iput v1, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->e0:I

    .line 26
    .line 27
    const-wide/16 v1, -0x1

    .line 28
    .line 29
    iput-wide v1, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->f0:J

    .line 30
    .line 31
    const/16 v3, 0x7d0

    .line 32
    .line 33
    iput v3, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->g0:I

    .line 34
    .line 35
    const/16 v3, 0x2710

    .line 36
    .line 37
    iput v3, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->h0:I

    .line 38
    .line 39
    new-instance v3, Landroid/view/GestureDetector;

    .line 40
    .line 41
    iget-object v4, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->t:Landroid/content/Context;

    .line 42
    .line 43
    new-instance v5, LK4/f;

    .line 44
    .line 45
    invoke-direct {v5, p0}, LK4/f;-><init>(Lflix/com/vision/bvp/BetterVideoPlayer;)V

    .line 46
    .line 47
    .line 48
    invoke-direct {v3, v4, v5}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 49
    .line 50
    .line 51
    iput-object v3, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->i0:Landroid/view/GestureDetector;

    .line 52
    .line 53
    iput v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->j0:I

    .line 54
    .line 55
    iput-boolean v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->k0:Z

    .line 56
    .line 57
    new-instance v3, LK4/j;

    .line 58
    .line 59
    invoke-direct {v3, p0}, LK4/j;-><init>(Lflix/com/vision/bvp/BetterVideoPlayer;)V

    .line 60
    .line 61
    .line 62
    iput-object v3, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->l0:LK4/j;

    .line 63
    .line 64
    new-instance v3, Lflix/com/vision/bvp/a;

    .line 65
    .line 66
    invoke-direct {v3, p0}, Lflix/com/vision/bvp/a;-><init>(Lflix/com/vision/bvp/BetterVideoPlayer;)V

    .line 67
    .line 68
    .line 69
    iput-object v3, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->m0:Lflix/com/vision/bvp/a;

    .line 70
    .line 71
    iput-boolean v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->n0:Z

    .line 72
    .line 73
    iput-wide v1, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->o0:J

    .line 74
    .line 75
    new-instance v0, LK4/k;

    .line 76
    .line 77
    invoke-direct {v0, p0}, LK4/k;-><init>(Lflix/com/vision/bvp/BetterVideoPlayer;)V

    .line 78
    .line 79
    .line 80
    iput-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->p0:LK4/k;

    .line 81
    .line 82
    iput-wide v1, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->q0:J

    .line 83
    .line 84
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lflix/com/vision/bvp/BetterVideoPlayer;->h(Landroid/content/Context;Landroid/util/AttributeSet;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :catch_0
    move-exception p1

    .line 89
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 90
    .line 91
    .line 92
    return-void
.end method

.method public static varargs LOG(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    array-length v0, p1

    .line 4
    if-lez v0, :cond_0

    .line 5
    .line 6
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public static a(Lflix/com/vision/bvp/BetterVideoPlayer;Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const-string p1, "Buffering started"

    .line 8
    .line 9
    new-array v1, v0, [Ljava/lang/Object;

    .line 10
    .line 11
    invoke-static {p1, v1}, Lflix/com/vision/bvp/BetterVideoPlayer;->LOG(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->P:LK4/b;

    .line 15
    .line 16
    if-eqz p0, :cond_2

    .line 17
    .line 18
    invoke-interface {p0, v0}, LK4/b;->onBuffering(I)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    const-string p1, "Buffering completed"

    .line 23
    .line 24
    new-array v1, v0, [Ljava/lang/Object;

    .line 25
    .line 26
    invoke-static {p1, v1}, Lflix/com/vision/bvp/BetterVideoPlayer;->LOG(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->P:LK4/b;

    .line 30
    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    const/16 v1, 0x64

    .line 34
    .line 35
    invoke-interface {p1, v1}, LK4/b;->onBuffering(I)V

    .line 36
    .line 37
    .line 38
    :cond_1
    iget-object p1, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->C:Landroid/widget/SeekBar;

    .line 39
    .line 40
    if-eqz p1, :cond_2

    .line 41
    .line 42
    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 43
    .line 44
    .line 45
    iget-object p0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->D:Landroid/widget/ProgressBar;

    .line 46
    .line 47
    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 48
    .line 49
    .line 50
    :cond_2
    return-void
.end method

.method public static b(Lflix/com/vision/bvp/BetterVideoPlayer;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    new-array v1, v0, [Ljava/lang/Object;

    .line 6
    .line 7
    const-string v2, "onPrepared()"

    .line 8
    .line 9
    invoke-static {v2, v1}, Lflix/com/vision/bvp/BetterVideoPlayer;->LOG(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->z:Landroidx/media3/exoplayer/ExoPlayer;

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    iget-boolean v1, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->H:Z

    .line 18
    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    iget-boolean v1, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->n0:Z

    .line 22
    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    invoke-virtual {p0}, Lflix/com/vision/bvp/BetterVideoPlayer;->showControls()V

    .line 26
    .line 27
    .line 28
    :cond_1
    const/4 v1, 0x1

    .line 29
    iput-boolean v1, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->H:Z

    .line 30
    .line 31
    iget-object v2, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->P:LK4/b;

    .line 32
    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    invoke-interface {v2, p0}, LK4/b;->onPrepared(Lflix/com/vision/bvp/BetterVideoPlayer;)V

    .line 36
    .line 37
    .line 38
    :cond_2
    iget-object v2, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->z:Landroidx/media3/exoplayer/ExoPlayer;

    .line 39
    .line 40
    invoke-interface {v2}, Landroidx/media3/common/Player;->getDuration()J

    .line 41
    .line 42
    .line 43
    move-result-wide v2

    .line 44
    iget-object v4, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->E:Landroid/widget/TextView;

    .line 45
    .line 46
    const-wide/16 v5, 0x0

    .line 47
    .line 48
    invoke-static {v5, v6}, Lh5/n;->getDurationString(J)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v7

    .line 52
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    .line 54
    .line 55
    iget-object v4, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->F:Landroid/widget/TextView;

    .line 56
    .line 57
    invoke-static {v2, v3}, Lh5/n;->getDurationString(J)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v7

    .line 61
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    .line 63
    .line 64
    iget-object v4, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->C:Landroid/widget/SeekBar;

    .line 65
    .line 66
    invoke-virtual {v4, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 67
    .line 68
    .line 69
    :try_start_0
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->C:Landroid/widget/SeekBar;

    .line 70
    .line 71
    const-wide/16 v7, 0x3e8

    .line 72
    .line 73
    div-long/2addr v2, v7

    .line 74
    long-to-int v2, v2

    .line 75
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setMax(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :catch_0
    move-exception v0

    .line 80
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 81
    .line 82
    .line 83
    :goto_0
    invoke-direct {p0, v1}, Lflix/com/vision/bvp/BetterVideoPlayer;->setControlsEnabled(Z)V

    .line 84
    .line 85
    .line 86
    iget-boolean v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->c0:Z

    .line 87
    .line 88
    if-eqz v0, :cond_3

    .line 89
    .line 90
    invoke-virtual {p0}, Lflix/com/vision/bvp/BetterVideoPlayer;->start()V

    .line 91
    .line 92
    .line 93
    iget-wide v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->f0:J

    .line 94
    .line 95
    cmp-long v2, v0, v5

    .line 96
    .line 97
    if-lez v2, :cond_4

    .line 98
    .line 99
    invoke-virtual {p0, v0, v1}, Lflix/com/vision/bvp/BetterVideoPlayer;->seekTo(J)V

    .line 100
    .line 101
    .line 102
    const-wide/16 v0, -0x1

    .line 103
    .line 104
    iput-wide v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->f0:J

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_3
    :try_start_1
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->z:Landroidx/media3/exoplayer/ExoPlayer;

    .line 108
    .line 109
    invoke-interface {v0}, Landroidx/media3/common/Player;->play()V

    .line 110
    .line 111
    .line 112
    iget-object p0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->z:Landroidx/media3/exoplayer/ExoPlayer;

    .line 113
    .line 114
    invoke-interface {p0}, Landroidx/media3/common/Player;->pause()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 115
    .line 116
    .line 117
    goto :goto_1

    .line 118
    :catch_1
    move-exception p0

    .line 119
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 120
    .line 121
    .line 122
    :cond_4
    :goto_1
    return-void
.end method

.method private setControlsEnabled(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->C:Landroid/widget/SeekBar;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->G:Landroid/widget/ImageButton;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->G:Landroid/widget/ImageButton;

    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    const/high16 v1, 0x3f800000    # 1.0f

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const v1, 0x3ecccccd    # 0.4f

    .line 22
    .line 23
    .line 24
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->x:Landroid/widget/FrameLayout;

    .line 28
    .line 29
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 30
    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public addListener(Landroidx/media3/common/Player$Listener;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->z:Landroidx/media3/exoplayer/ExoPlayer;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Landroidx/media3/common/Player;->addListener(Landroidx/media3/common/Player$Listener;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final c(IIII)V
    .locals 9

    .line 1
    if-lez p3, :cond_7

    .line 2
    .line 3
    if-lez p4, :cond_7

    .line 4
    .line 5
    if-lez p1, :cond_7

    .line 6
    .line 7
    if-gtz p2, :cond_0

    .line 8
    .line 9
    goto/16 :goto_5

    .line 10
    .line 11
    :cond_0
    int-to-double v0, p3

    .line 12
    int-to-double p3, p4

    .line 13
    div-double/2addr v0, p3

    .line 14
    int-to-double p3, p1

    .line 15
    int-to-double v2, p2

    .line 16
    div-double v4, p3, v2

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 19
    .line 20
    .line 21
    move-result-object v6

    .line 22
    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 23
    .line 24
    .line 25
    move-result-object v6

    .line 26
    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 27
    .line 28
    const/4 v7, 0x2

    .line 29
    div-int/2addr v6, v7

    .line 30
    if-ge p1, v6, :cond_1

    .line 31
    .line 32
    goto :goto_2

    .line 33
    :cond_1
    iget v6, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->b:I

    .line 34
    .line 35
    const/4 v8, 0x1

    .line 36
    if-eq v6, v8, :cond_5

    .line 37
    .line 38
    if-eq v6, v7, :cond_4

    .line 39
    .line 40
    cmpl-double v4, v0, v4

    .line 41
    .line 42
    if-lez v4, :cond_3

    .line 43
    .line 44
    :cond_2
    div-double/2addr p3, v0

    .line 45
    double-to-int p3, p3

    .line 46
    move p4, p3

    .line 47
    move p3, p1

    .line 48
    goto :goto_3

    .line 49
    :cond_3
    :goto_0
    mul-double/2addr v2, v0

    .line 50
    double-to-int p3, v2

    .line 51
    :goto_1
    move p4, p2

    .line 52
    goto :goto_3

    .line 53
    :cond_4
    :goto_2
    move p3, p1

    .line 54
    goto :goto_1

    .line 55
    :cond_5
    cmpl-double v4, v0, v4

    .line 56
    .line 57
    if-lez v4, :cond_2

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :goto_3
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->B:Landroid/view/SurfaceView;

    .line 61
    .line 62
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    instance-of v1, v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 67
    .line 68
    if-eqz v1, :cond_6

    .line 69
    .line 70
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 71
    .line 72
    iput p3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 73
    .line 74
    iput p4, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 75
    .line 76
    const/16 v1, 0x11

    .line 77
    .line 78
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 79
    .line 80
    iget-object v1, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->B:Landroid/view/SurfaceView;

    .line 81
    .line 82
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    .line 84
    .line 85
    goto :goto_4

    .line 86
    :cond_6
    iput p3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 87
    .line 88
    iput p4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 89
    .line 90
    iget-object v1, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->B:Landroid/view/SurfaceView;

    .line 91
    .line 92
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    .line 94
    .line 95
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    const-string v1, "AspectRatio Applied: Mode="

    .line 98
    .line 99
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    iget v1, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->b:I

    .line 103
    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string v1, " View="

    .line 108
    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    const-string p1, "x"

    .line 116
    .line 117
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string p2, " Surface="

    .line 124
    .line 125
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    const/4 p2, 0x0

    .line 142
    new-array p2, p2, [Ljava/lang/Object;

    .line 143
    .line 144
    invoke-static {p1, p2}, Lflix/com/vision/bvp/BetterVideoPlayer;->LOG(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    :cond_7
    :goto_5
    return-void
.end method

.method public changeEncoding(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->m:Lflix/com/vision/bvp/subtitle/CaptionsView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lflix/com/vision/bvp/subtitle/CaptionsView;->changeEncoding(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final d(Landroid/view/View;I)V
    .locals 1

    .line 1
    if-lez p2, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 v0, 0x4

    .line 6
    :goto_0
    iput v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->M:I

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    int-to-float p2, p2

    .line 13
    invoke-virtual {v0, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    new-instance v0, LK4/g;

    .line 18
    .line 19
    invoke-direct {v0, p0, p1}, LK4/g;-><init>(Lflix/com/vision/bvp/BetterVideoPlayer;Landroid/view/View;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public disableControls()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->d0:Z

    .line 3
    .line 4
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->v:Landroid/view/View;

    .line 5
    .line 6
    const/16 v1, 0x8

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->y:Landroid/view/View;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->x:Landroid/widget/FrameLayout;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->x:Landroid/widget/FrameLayout;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final e(Ljava/util/Map;)Landroidx/media3/datasource/DefaultDataSource$Factory;
    .locals 6

    .line 1
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 7
    .line 8
    const-wide/16 v2, 0xf

    .line 9
    .line 10
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-wide/16 v2, 0x1e

    .line 15
    .line 16
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    new-instance v1, Lokhttp3/ConnectionPool;

    .line 21
    .line 22
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 23
    .line 24
    const/4 v3, 0x5

    .line 25
    const-wide/16 v4, 0x5

    .line 26
    .line 27
    invoke-direct {v1, v3, v4, v5, v2}, Lokhttp3/ConnectionPool;-><init>(IJLjava/util/concurrent/TimeUnit;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->connectionPool(Lokhttp3/ConnectionPool;)Lokhttp3/OkHttpClient$Builder;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    new-instance v1, Landroidx/media3/datasource/okhttp/OkHttpDataSource$Factory;

    .line 39
    .line 40
    invoke-direct {v1, v0}, Landroidx/media3/datasource/okhttp/OkHttpDataSource$Factory;-><init>(Lokhttp3/Call$Factory;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->t:Landroid/content/Context;

    .line 44
    .line 45
    const-string v2, "FlixVision"

    .line 46
    .line 47
    invoke-static {v0, v2}, Landroidx/media3/common/util/Util;->getUserAgent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v1, v0}, Landroidx/media3/datasource/okhttp/OkHttpDataSource$Factory;->setUserAgent(Ljava/lang/String;)Landroidx/media3/datasource/okhttp/OkHttpDataSource$Factory;

    .line 52
    .line 53
    .line 54
    if-eqz p1, :cond_0

    .line 55
    .line 56
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-nez v0, :cond_0

    .line 61
    .line 62
    invoke-virtual {v1, p1}, Landroidx/media3/datasource/okhttp/OkHttpDataSource$Factory;->setDefaultRequestProperties(Ljava/util/Map;)Landroidx/media3/datasource/okhttp/OkHttpDataSource$Factory;

    .line 63
    .line 64
    .line 65
    :cond_0
    new-instance p1, Landroidx/media3/datasource/DefaultDataSource$Factory;

    .line 66
    .line 67
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->t:Landroid/content/Context;

    .line 68
    .line 69
    invoke-direct {p1, v0, v1}, Landroidx/media3/datasource/DefaultDataSource$Factory;-><init>(Landroid/content/Context;Landroidx/media3/datasource/DataSource$Factory;)V

    .line 70
    .line 71
    .line 72
    return-object p1
.end method

.method public enableControls()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->d0:Z

    .line 3
    .line 4
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->x:Landroid/widget/FrameLayout;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->x:Landroid/widget/FrameLayout;

    .line 11
    .line 12
    iget-object v1, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->m0:Lflix/com/vision/bvp/a;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public enableSwipeGestures(Landroid/view/Window;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->b0:Z

    .line 3
    .line 4
    iput-object p1, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->u:Landroid/view/Window;

    .line 5
    .line 6
    return-void
.end method

.method public final f(Landroid/net/Uri;Ljava/util/Map;)Landroidx/media3/exoplayer/source/BaseMediaSource;
    .locals 5

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0, p2}, Lflix/com/vision/bvp/BetterVideoPlayer;->e(Ljava/util/Map;)Landroidx/media3/datasource/DefaultDataSource$Factory;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    new-instance v1, Landroidx/media3/common/MediaItem$Builder;

    .line 14
    .line 15
    invoke-direct {v1}, Landroidx/media3/common/MediaItem$Builder;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p1}, Landroidx/media3/common/MediaItem$Builder;->setUri(Landroid/net/Uri;)Landroidx/media3/common/MediaItem$Builder;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Landroidx/media3/common/MediaItem$Builder;->build()Landroidx/media3/common/MediaItem;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {p1}, Landroidx/media3/common/util/Util;->inferContentType(Landroid/net/Uri;)I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    const/4 v2, 0x2

    .line 31
    const/4 v3, 0x0

    .line 32
    const/4 v4, 0x1

    .line 33
    if-eq p1, v2, :cond_1

    .line 34
    .line 35
    const-string v2, ".m3u8"

    .line 36
    .line 37
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-nez v2, :cond_1

    .line 42
    .line 43
    const-string v2, "data:application"

    .line 44
    .line 45
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-nez v2, :cond_1

    .line 50
    .line 51
    const-string v2, "/m3u8/"

    .line 52
    .line 53
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-nez v2, :cond_1

    .line 58
    .line 59
    const-string v2, "/hls/"

    .line 60
    .line 61
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-nez v2, :cond_1

    .line 66
    .line 67
    const-string v2, "playlist"

    .line 68
    .line 69
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    if-nez v2, :cond_1

    .line 74
    .line 75
    const-string v2, "m3u8"

    .line 76
    .line 77
    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    if-eqz v2, :cond_0

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_0
    move v2, v3

    .line 85
    goto :goto_1

    .line 86
    :catch_0
    move-exception p1

    .line 87
    goto :goto_4

    .line 88
    :cond_1
    :goto_0
    move v2, v4

    .line 89
    :goto_1
    if-eqz p1, :cond_3

    .line 90
    .line 91
    const-string p1, ".mpd"

    .line 92
    .line 93
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    if-eqz p1, :cond_2

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_2
    move p1, v3

    .line 101
    goto :goto_3

    .line 102
    :cond_3
    :goto_2
    move p1, v4

    .line 103
    :goto_3
    if-eqz v2, :cond_4

    .line 104
    .line 105
    new-instance p1, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;

    .line 106
    .line 107
    invoke-direct {p1, p2}, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;-><init>(Landroidx/media3/datasource/DataSource$Factory;)V

    .line 108
    .line 109
    .line 110
    new-instance p2, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;

    .line 111
    .line 112
    invoke-direct {p2, v4, v4}, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;-><init>(IZ)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1, p2}, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->setExtractorFactory(Landroidx/media3/exoplayer/hls/HlsExtractorFactory;)Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-virtual {p1, v3}, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->setAllowChunklessPreparation(Z)Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-virtual {p1, v1}, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->createMediaSource(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/hls/HlsMediaSource;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    return-object p1

    .line 128
    :cond_4
    if-eqz p1, :cond_5

    .line 129
    .line 130
    new-instance p1, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;

    .line 131
    .line 132
    invoke-direct {p1, p2}, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;-><init>(Landroidx/media3/datasource/DataSource$Factory;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1, v1}, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->createMediaSource(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/dash/DashMediaSource;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    return-object p1

    .line 140
    :cond_5
    new-instance p1, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;

    .line 141
    .line 142
    invoke-direct {p1, p2}, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;-><init>(Landroidx/media3/datasource/DataSource$Factory;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1, v1}, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;->createMediaSource(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/source/ProgressiveMediaSource;

    .line 146
    .line 147
    .line 148
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    return-object p1

    .line 150
    :goto_4
    new-instance p2, Ljava/lang/RuntimeException;

    .line 151
    .line 152
    const-string v0, "Failed to create MediaSource"

    .line 153
    .line 154
    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 155
    .line 156
    .line 157
    throw p2
.end method

.method public final g()V
    .locals 2

    .line 1
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->y:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->y:Landroid/view/View;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->y:Landroid/view/View;

    .line 19
    .line 20
    const/high16 v1, 0x3f800000    # 1.0f

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->y:Landroid/view/View;

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->y:Landroid/view/View;

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const/4 v1, 0x0

    .line 38
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    .line 43
    .line 44
    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    new-instance v1, LK4/i;

    .line 52
    .line 53
    invoke-direct {v1, p0}, LK4/i;-><init>(Lflix/com/vision/bvp/BetterVideoPlayer;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 61
    .line 62
    .line 63
    :cond_0
    return-void
.end method

.method public getAvailableAudioTracks()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "LK4/l;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->z:Landroidx/media3/exoplayer/ExoPlayer;

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    goto/16 :goto_4

    .line 11
    .line 12
    :cond_0
    invoke-interface {v1}, Landroidx/media3/common/Player;->getCurrentTracks()Landroidx/media3/common/Tracks;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const/4 v2, 0x0

    .line 17
    move v3, v2

    .line 18
    :goto_0
    invoke-virtual {v1}, Landroidx/media3/common/Tracks;->getGroups()Lcom/google/common/collect/ImmutableList;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    invoke-virtual {v4}, Ljava/util/AbstractCollection;->size()I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    if-ge v3, v4, :cond_4

    .line 27
    .line 28
    invoke-virtual {v1}, Landroidx/media3/common/Tracks;->getGroups()Lcom/google/common/collect/ImmutableList;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    check-cast v4, Landroidx/media3/common/Tracks$Group;

    .line 37
    .line 38
    invoke-virtual {v4}, Landroidx/media3/common/Tracks$Group;->getType()I

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    const/4 v6, 0x1

    .line 43
    if-ne v5, v6, :cond_3

    .line 44
    .line 45
    move v5, v2

    .line 46
    :goto_1
    iget v6, v4, Landroidx/media3/common/Tracks$Group;->length:I

    .line 47
    .line 48
    if-ge v5, v6, :cond_3

    .line 49
    .line 50
    invoke-virtual {v4, v5}, Landroidx/media3/common/Tracks$Group;->getTrackFormat(I)Landroidx/media3/common/Format;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    iget-object v7, v6, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    .line 55
    .line 56
    if-eqz v7, :cond_1

    .line 57
    .line 58
    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v7

    .line 62
    goto :goto_2

    .line 63
    :cond_1
    const-string v7, "Unknown"

    .line 64
    .line 65
    :goto_2
    iget-object v6, v6, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 66
    .line 67
    if-eqz v6, :cond_2

    .line 68
    .line 69
    const-string v8, "audio/"

    .line 70
    .line 71
    const-string v9, ""

    .line 72
    .line 73
    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    goto :goto_3

    .line 78
    :cond_2
    const-string v6, "raw"

    .line 79
    .line 80
    :goto_3
    new-instance v8, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v7, " ("

    .line 89
    .line 90
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v6, ")"

    .line 97
    .line 98
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v6

    .line 105
    new-instance v7, LK4/l;

    .line 106
    .line 107
    invoke-virtual {v4, v5}, Landroidx/media3/common/Tracks$Group;->isTrackSelected(I)Z

    .line 108
    .line 109
    .line 110
    move-result v8

    .line 111
    invoke-direct {v7, v3, v5, v6, v8}, LK4/l;-><init>(IILjava/lang/String;Z)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    add-int/lit8 v5, v5, 0x1

    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_4
    :goto_4
    return-object v0
.end method

.method public getCurrentPosition()J
    .locals 2

    .line 1
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->z:Landroidx/media3/exoplayer/ExoPlayer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-wide/16 v0, -0x1

    .line 6
    .line 7
    return-wide v0

    .line 8
    :cond_0
    invoke-interface {v0}, Landroidx/media3/common/Player;->getCurrentPosition()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    .line 1
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->z:Landroidx/media3/exoplayer/ExoPlayer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-wide/16 v0, -0x1

    .line 6
    .line 7
    return-wide v0

    .line 8
    :cond_0
    invoke-interface {v0}, Landroidx/media3/common/Player;->getDuration()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    return-wide v0
.end method

.method public getExoPlayer()Landroidx/media3/common/Player;
    .locals 1

    .line 1
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->z:Landroidx/media3/exoplayer/ExoPlayer;

    .line 2
    .line 3
    return-object v0
.end method

.method public getHideControlsDuration()I
    .locals 1

    .line 1
    iget v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->g0:I

    .line 2
    .line 3
    return v0
.end method

.method public getOffset()J
    .locals 2

    .line 1
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->m:Lflix/com/vision/bvp/subtitle/CaptionsView;

    .line 2
    .line 3
    iget-wide v0, v0, Lflix/com/vision/bvp/subtitle/CaptionsView;->q:J

    .line 4
    .line 5
    return-wide v0
.end method

.method public getSource()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->N:Landroid/net/Uri;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSubtitleView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->m:Lflix/com/vision/bvp/subtitle/CaptionsView;

    .line 2
    .line 3
    return-object v0
.end method

.method public getToolbar()Landroidx/appcompat/widget/Toolbar;
    .locals 1

    .line 1
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->p:Landroidx/appcompat/widget/Toolbar;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTracks()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->z:Landroidx/media3/exoplayer/ExoPlayer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    invoke-interface {v0}, Landroidx/media3/common/Player;->getCurrentTracks()Landroidx/media3/common/Tracks;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroidx/media3/common/Tracks;->getGroups()Lcom/google/common/collect/ImmutableList;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()LQ3/x0;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Landroidx/media3/common/Tracks$Group;

    .line 29
    .line 30
    invoke-virtual {v1}, Landroidx/media3/common/Tracks$Group;->getType()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    const/4 v3, 0x3

    .line 35
    if-ne v2, v3, :cond_1

    .line 36
    .line 37
    const/4 v2, 0x0

    .line 38
    :goto_0
    iget v3, v1, Landroidx/media3/common/Tracks$Group;->length:I

    .line 39
    .line 40
    if-ge v2, v3, :cond_1

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Landroidx/media3/common/Tracks$Group;->getTrackFormat(I)Landroidx/media3/common/Format;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .line 44
    .line 45
    add-int/lit8 v2, v2, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 50
    .line 51
    .line 52
    :cond_2
    :goto_1
    return-void
.end method

.method public getVideoView()Landroidx/media3/exoplayer/ExoPlayer;
    .locals 1

    .line 1
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->z:Landroidx/media3/exoplayer/ExoPlayer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .line 1
    const-string v0, "Exception "

    .line 2
    .line 3
    const/high16 v1, -0x1000000

    .line 4
    .line 5
    invoke-virtual {p0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 6
    .line 7
    .line 8
    sget-boolean v1, Lflix/com/vision/App;->I:Z

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    iput v2, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->b:I

    .line 14
    .line 15
    :cond_0
    iput-object p1, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->t:Landroid/content/Context;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    if-eqz p2, :cond_3

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    sget-object v4, Lflix/com/vision/R$styleable;->BetterVideoPlayer:[I

    .line 25
    .line 26
    invoke-virtual {v3, p2, v4, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    :try_start_0
    sget v3, Lflix/com/vision/R$styleable;->BetterVideoPlayer_bvp_source:I

    .line 31
    .line 32
    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    if-eqz v3, :cond_1

    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-nez v4, :cond_1

    .line 47
    .line 48
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    iput-object v3, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->N:Landroid/net/Uri;

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catchall_0
    move-exception p1

    .line 56
    goto/16 :goto_3

    .line 57
    .line 58
    :catch_0
    move-exception v3

    .line 59
    goto/16 :goto_2

    .line 60
    .line 61
    :cond_1
    :goto_0
    sget v3, Lflix/com/vision/R$styleable;->BetterVideoPlayer_bvp_title:I

    .line 62
    .line 63
    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    if-eqz v3, :cond_2

    .line 68
    .line 69
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    if-nez v4, :cond_2

    .line 78
    .line 79
    iput-object v3, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->q:Ljava/lang/String;

    .line 80
    .line 81
    :cond_2
    sget v3, Lflix/com/vision/R$styleable;->BetterVideoPlayer_bvp_playDrawable:I

    .line 82
    .line 83
    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    iput-object v3, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->Q:Landroid/graphics/drawable/Drawable;

    .line 88
    .line 89
    sget v3, Lflix/com/vision/R$styleable;->BetterVideoPlayer_bvp_pauseDrawable:I

    .line 90
    .line 91
    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    iput-object v3, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->R:Landroid/graphics/drawable/Drawable;

    .line 96
    .line 97
    sget v3, Lflix/com/vision/R$styleable;->BetterVideoPlayer_bvp_restartDrawable:I

    .line 98
    .line 99
    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    iput-object v3, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->S:Landroid/graphics/drawable/Drawable;

    .line 104
    .line 105
    const/4 v3, 0x7

    .line 106
    iput v3, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->e0:I

    .line 107
    .line 108
    sget v3, Lflix/com/vision/R$styleable;->BetterVideoPlayer_bvp_hideControlsDuration:I

    .line 109
    .line 110
    iget v4, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->g0:I

    .line 111
    .line 112
    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 113
    .line 114
    .line 115
    move-result v3

    .line 116
    iput v3, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->g0:I

    .line 117
    .line 118
    sget v3, Lflix/com/vision/R$styleable;->BetterVideoPlayer_bvp_hideControlsOnPlay:I

    .line 119
    .line 120
    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 121
    .line 122
    .line 123
    move-result v3

    .line 124
    iput-boolean v3, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->U:Z

    .line 125
    .line 126
    sget v3, Lflix/com/vision/R$styleable;->BetterVideoPlayer_bvp_autoPlay:I

    .line 127
    .line 128
    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 129
    .line 130
    .line 131
    move-result v3

    .line 132
    iput-boolean v3, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->c0:Z

    .line 133
    .line 134
    sget v3, Lflix/com/vision/R$styleable;->BetterVideoPlayer_bvp_loop:I

    .line 135
    .line 136
    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 137
    .line 138
    .line 139
    move-result v3

    .line 140
    iput-boolean v3, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->T:Z

    .line 141
    .line 142
    sget v3, Lflix/com/vision/R$styleable;->BetterVideoPlayer_bvp_showTotalDuration:I

    .line 143
    .line 144
    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 145
    .line 146
    .line 147
    move-result v3

    .line 148
    iput-boolean v3, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->V:Z

    .line 149
    .line 150
    sget v3, Lflix/com/vision/R$styleable;->BetterVideoPlayer_bvp_showBottomProgressBar:I

    .line 151
    .line 152
    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 153
    .line 154
    .line 155
    move-result v3

    .line 156
    iput-boolean v3, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->W:Z

    .line 157
    .line 158
    sget v3, Lflix/com/vision/R$styleable;->BetterVideoPlayer_bvp_swipeGesturesEnabled:I

    .line 159
    .line 160
    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 161
    .line 162
    .line 163
    move-result v3

    .line 164
    iput-boolean v3, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->b0:Z

    .line 165
    .line 166
    sget v3, Lflix/com/vision/R$styleable;->BetterVideoPlayer_bvp_showToolbar:I

    .line 167
    .line 168
    invoke-virtual {p2, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 169
    .line 170
    .line 171
    move-result v3

    .line 172
    iput-boolean v3, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->a0:Z

    .line 173
    .line 174
    sget v3, Lflix/com/vision/R$styleable;->BetterVideoPlayer_bvp_disableControls:I

    .line 175
    .line 176
    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 177
    .line 178
    .line 179
    move-result v3

    .line 180
    iput-boolean v3, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->d0:Z

    .line 181
    .line 182
    sget v3, Lflix/com/vision/R$styleable;->BetterVideoPlayer_bvp_captionSize:I

    .line 183
    .line 184
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 185
    .line 186
    .line 187
    move-result-object v4

    .line 188
    sget v5, Lflix/com/vision/R$dimen;->bvp_subtitle_size:I

    .line 189
    .line 190
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 191
    .line 192
    .line 193
    move-result v4

    .line 194
    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 195
    .line 196
    .line 197
    move-result v3

    .line 198
    iput v3, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->r:I

    .line 199
    .line 200
    sget v3, Lflix/com/vision/R$styleable;->BetterVideoPlayer_bvp_captionColor:I

    .line 201
    .line 202
    sget v4, Lflix/com/vision/R$color;->bvp_subtitle_color:I

    .line 203
    .line 204
    invoke-static {p1, v4}, LA/h;->getColor(Landroid/content/Context;I)I

    .line 205
    .line 206
    .line 207
    move-result v4

    .line 208
    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 209
    .line 210
    .line 211
    move-result v3

    .line 212
    iput v3, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->s:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    .line 214
    :goto_1
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 215
    .line 216
    .line 217
    goto :goto_4

    .line 218
    :goto_2
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 219
    .line 220
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    new-array v4, v1, [Ljava/lang/Object;

    .line 235
    .line 236
    invoke-static {v0, v4}, Lflix/com/vision/bvp/BetterVideoPlayer;->LOG(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 240
    .line 241
    .line 242
    goto :goto_1

    .line 243
    :goto_3
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 244
    .line 245
    .line 246
    throw p1

    .line 247
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 248
    .line 249
    .line 250
    move-result-object p2

    .line 251
    sget v0, Lflix/com/vision/R$dimen;->bvp_subtitle_size:I

    .line 252
    .line 253
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 254
    .line 255
    .line 256
    move-result p2

    .line 257
    iput p2, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->r:I

    .line 258
    .line 259
    sget p2, Lflix/com/vision/R$color;->bvp_subtitle_color:I

    .line 260
    .line 261
    invoke-static {p1, p2}, LA/h;->getColor(Landroid/content/Context;I)I

    .line 262
    .line 263
    .line 264
    move-result p2

    .line 265
    iput p2, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->s:I

    .line 266
    .line 267
    :goto_4
    iget-object p2, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->Q:Landroid/graphics/drawable/Drawable;

    .line 268
    .line 269
    if-nez p2, :cond_4

    .line 270
    .line 271
    sget p2, Lflix/com/vision/R$drawable;->bvp_action_play:I

    .line 272
    .line 273
    invoke-static {p1, p2}, LA/h;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 274
    .line 275
    .line 276
    move-result-object p2

    .line 277
    iput-object p2, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->Q:Landroid/graphics/drawable/Drawable;

    .line 278
    .line 279
    :cond_4
    iget-object p2, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->R:Landroid/graphics/drawable/Drawable;

    .line 280
    .line 281
    if-nez p2, :cond_5

    .line 282
    .line 283
    sget p2, Lflix/com/vision/R$drawable;->bvp_action_pause:I

    .line 284
    .line 285
    invoke-static {p1, p2}, LA/h;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 286
    .line 287
    .line 288
    move-result-object p2

    .line 289
    iput-object p2, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->R:Landroid/graphics/drawable/Drawable;

    .line 290
    .line 291
    :cond_5
    iget-object p2, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->S:Landroid/graphics/drawable/Drawable;

    .line 292
    .line 293
    if-nez p2, :cond_6

    .line 294
    .line 295
    sget p2, Lflix/com/vision/R$drawable;->bvp_action_restart:I

    .line 296
    .line 297
    invoke-static {p1, p2}, LA/h;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 298
    .line 299
    .line 300
    move-result-object p1

    .line 301
    iput-object p1, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->S:Landroid/graphics/drawable/Drawable;

    .line 302
    .line 303
    :cond_6
    new-instance p1, LM4/b;

    .line 304
    .line 305
    invoke-direct {p1}, LM4/b;-><init>()V

    .line 306
    .line 307
    .line 308
    iput-object p1, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->P:LK4/b;

    .line 309
    .line 310
    :try_start_2
    iget-object p1, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->z:Landroidx/media3/exoplayer/ExoPlayer;

    .line 311
    .line 312
    if-eqz p1, :cond_7

    .line 313
    .line 314
    invoke-interface {p1}, Landroidx/media3/exoplayer/ExoPlayer;->release()V

    .line 315
    .line 316
    .line 317
    goto :goto_5

    .line 318
    :catch_1
    move-exception p1

    .line 319
    goto/16 :goto_6

    .line 320
    .line 321
    :cond_7
    :goto_5
    new-instance p1, Landroidx/media3/exoplayer/DefaultRenderersFactory;

    .line 322
    .line 323
    iget-object p2, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->t:Landroid/content/Context;

    .line 324
    .line 325
    invoke-direct {p1, p2}, Landroidx/media3/exoplayer/DefaultRenderersFactory;-><init>(Landroid/content/Context;)V

    .line 326
    .line 327
    .line 328
    invoke-virtual {p1, v2}, Landroidx/media3/exoplayer/DefaultRenderersFactory;->setExtensionRendererMode(I)Landroidx/media3/exoplayer/DefaultRenderersFactory;

    .line 329
    .line 330
    .line 331
    invoke-virtual {p1, v1}, Landroidx/media3/exoplayer/DefaultRenderersFactory;->setEnableAudioFloatOutput(Z)Landroidx/media3/exoplayer/DefaultRenderersFactory;

    .line 332
    .line 333
    .line 334
    new-instance p2, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

    .line 335
    .line 336
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->t:Landroid/content/Context;

    .line 337
    .line 338
    invoke-direct {p2, v0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;-><init>(Landroid/content/Context;)V

    .line 339
    .line 340
    .line 341
    invoke-virtual {p2}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->buildUponParameters()Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 342
    .line 343
    .line 344
    move-result-object v0

    .line 345
    const-string v3, "video/hevc"

    .line 346
    .line 347
    invoke-virtual {v0, v3}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setPreferredVideoMimeType(Ljava/lang/String;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 348
    .line 349
    .line 350
    move-result-object v0

    .line 351
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setTunnelingEnabled(Z)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 352
    .line 353
    .line 354
    move-result-object v0

    .line 355
    invoke-virtual {v0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->build()Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    .line 356
    .line 357
    .line 358
    move-result-object v0

    .line 359
    invoke-virtual {p2, v0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->setParameters(Landroidx/media3/common/TrackSelectionParameters;)V

    .line 360
    .line 361
    .line 362
    new-instance v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;

    .line 363
    .line 364
    iget-object v3, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->t:Landroid/content/Context;

    .line 365
    .line 366
    invoke-direct {v0, v3}, Landroidx/media3/exoplayer/ExoPlayer$Builder;-><init>(Landroid/content/Context;)V

    .line 367
    .line 368
    .line 369
    new-instance v3, Landroidx/media3/exoplayer/DefaultLoadControl$Builder;

    .line 370
    .line 371
    invoke-direct {v3}, Landroidx/media3/exoplayer/DefaultLoadControl$Builder;-><init>()V

    .line 372
    .line 373
    .line 374
    new-instance v4, Landroidx/media3/exoplayer/upstream/DefaultAllocator;

    .line 375
    .line 376
    const/high16 v5, 0x80000

    .line 377
    .line 378
    invoke-direct {v4, v2, v5}, Landroidx/media3/exoplayer/upstream/DefaultAllocator;-><init>(ZI)V

    .line 379
    .line 380
    .line 381
    invoke-virtual {v3, v4}, Landroidx/media3/exoplayer/DefaultLoadControl$Builder;->setAllocator(Landroidx/media3/exoplayer/upstream/DefaultAllocator;)Landroidx/media3/exoplayer/DefaultLoadControl$Builder;

    .line 382
    .line 383
    .line 384
    move-result-object v3

    .line 385
    const/16 v4, 0x7d0

    .line 386
    .line 387
    const/16 v5, 0x2710

    .line 388
    .line 389
    const v6, 0x9c40

    .line 390
    .line 391
    .line 392
    const v7, 0x15f90

    .line 393
    .line 394
    .line 395
    invoke-virtual {v3, v6, v7, v4, v5}, Landroidx/media3/exoplayer/DefaultLoadControl$Builder;->setBufferDurationsMs(IIII)Landroidx/media3/exoplayer/DefaultLoadControl$Builder;

    .line 396
    .line 397
    .line 398
    move-result-object v3

    .line 399
    const/high16 v4, 0x8000000

    .line 400
    .line 401
    invoke-virtual {v3, v4}, Landroidx/media3/exoplayer/DefaultLoadControl$Builder;->setTargetBufferBytes(I)Landroidx/media3/exoplayer/DefaultLoadControl$Builder;

    .line 402
    .line 403
    .line 404
    move-result-object v3

    .line 405
    invoke-virtual {v3, v2}, Landroidx/media3/exoplayer/DefaultLoadControl$Builder;->setPrioritizeTimeOverSizeThresholds(Z)Landroidx/media3/exoplayer/DefaultLoadControl$Builder;

    .line 406
    .line 407
    .line 408
    move-result-object v3

    .line 409
    invoke-virtual {v3}, Landroidx/media3/exoplayer/DefaultLoadControl$Builder;->build()Landroidx/media3/exoplayer/DefaultLoadControl;

    .line 410
    .line 411
    .line 412
    move-result-object v3

    .line 413
    invoke-virtual {v0, v3}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->setLoadControl(Landroidx/media3/exoplayer/LoadControl;)Landroidx/media3/exoplayer/ExoPlayer$Builder;

    .line 414
    .line 415
    .line 416
    move-result-object v0

    .line 417
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->setRenderersFactory(Landroidx/media3/exoplayer/RenderersFactory;)Landroidx/media3/exoplayer/ExoPlayer$Builder;

    .line 418
    .line 419
    .line 420
    move-result-object p1

    .line 421
    invoke-virtual {p1, p2}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->setTrackSelector(Landroidx/media3/exoplayer/trackselection/TrackSelector;)Landroidx/media3/exoplayer/ExoPlayer$Builder;

    .line 422
    .line 423
    .line 424
    move-result-object p1

    .line 425
    invoke-virtual {p1}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->build()Landroidx/media3/exoplayer/ExoPlayer;

    .line 426
    .line 427
    .line 428
    move-result-object p1

    .line 429
    iput-object p1, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->z:Landroidx/media3/exoplayer/ExoPlayer;

    .line 430
    .line 431
    new-instance p2, Landroidx/media3/common/AudioAttributes$Builder;

    .line 432
    .line 433
    invoke-direct {p2}, Landroidx/media3/common/AudioAttributes$Builder;-><init>()V

    .line 434
    .line 435
    .line 436
    invoke-virtual {p2, v2}, Landroidx/media3/common/AudioAttributes$Builder;->setUsage(I)Landroidx/media3/common/AudioAttributes$Builder;

    .line 437
    .line 438
    .line 439
    move-result-object p2

    .line 440
    const/4 v0, 0x3

    .line 441
    invoke-virtual {p2, v0}, Landroidx/media3/common/AudioAttributes$Builder;->setContentType(I)Landroidx/media3/common/AudioAttributes$Builder;

    .line 442
    .line 443
    .line 444
    move-result-object p2

    .line 445
    invoke-virtual {p2}, Landroidx/media3/common/AudioAttributes$Builder;->build()Landroidx/media3/common/AudioAttributes;

    .line 446
    .line 447
    .line 448
    move-result-object p2

    .line 449
    invoke-interface {p1, p2, v2}, Landroidx/media3/common/Player;->setAudioAttributes(Landroidx/media3/common/AudioAttributes;Z)V

    .line 450
    .line 451
    .line 452
    new-instance p1, LK4/d;

    .line 453
    .line 454
    invoke-direct {p1, p0}, LK4/d;-><init>(Lflix/com/vision/bvp/BetterVideoPlayer;)V

    .line 455
    .line 456
    .line 457
    iput-object p1, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->A:LK4/d;

    .line 458
    .line 459
    iget-object p2, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->z:Landroidx/media3/exoplayer/ExoPlayer;

    .line 460
    .line 461
    invoke-interface {p2, p1}, Landroidx/media3/common/Player;->addListener(Landroidx/media3/common/Player$Listener;)V

    .line 462
    .line 463
    .line 464
    iget-object p1, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->m:Lflix/com/vision/bvp/subtitle/CaptionsView;

    .line 465
    .line 466
    if-eqz p1, :cond_8

    .line 467
    .line 468
    iget-object p2, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->z:Landroidx/media3/exoplayer/ExoPlayer;

    .line 469
    .line 470
    invoke-virtual {p1, p2}, Lflix/com/vision/bvp/subtitle/CaptionsView;->setPlayer(Landroidx/media3/exoplayer/ExoPlayer;)V

    .line 471
    .line 472
    .line 473
    :cond_8
    const-string p1, "Media3 ExoPlayer initialized (Standard Config)"

    .line 474
    .line 475
    new-array p2, v1, [Ljava/lang/Object;

    .line 476
    .line 477
    invoke-static {p1, p2}, Lflix/com/vision/bvp/BetterVideoPlayer;->LOG(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 478
    .line 479
    .line 480
    goto :goto_7

    .line 481
    :goto_6
    new-instance p2, Ljava/lang/StringBuilder;

    .line 482
    .line 483
    const-string v0, "Error initializing Media3 player: "

    .line 484
    .line 485
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 486
    .line 487
    .line 488
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 489
    .line 490
    .line 491
    move-result-object v0

    .line 492
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    .line 494
    .line 495
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 496
    .line 497
    .line 498
    move-result-object p2

    .line 499
    new-array v0, v1, [Ljava/lang/Object;

    .line 500
    .line 501
    invoke-static {p2, v0}, Lflix/com/vision/bvp/BetterVideoPlayer;->LOG(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 502
    .line 503
    .line 504
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 505
    .line 506
    .line 507
    :goto_7
    return-void
.end method

.method public hideControls()V
    .locals 6

    .line 1
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->P:LK4/b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-interface {v0, v1}, LK4/b;->onToggleControls(Z)V

    .line 5
    .line 6
    .line 7
    iget-boolean v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->d0:Z

    .line 8
    .line 9
    if-nez v0, :cond_3

    .line 10
    .line 11
    invoke-virtual {p0}, Lflix/com/vision/bvp/BetterVideoPlayer;->isControlsShown()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_3

    .line 16
    .line 17
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->C:Landroid/widget/SeekBar;

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    goto/16 :goto_0

    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->v:Landroid/view/View;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->v:Landroid/view/View;

    .line 33
    .line 34
    const/high16 v2, 0x3f800000    # 1.0f

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->v:Landroid/view/View;

    .line 40
    .line 41
    const/4 v3, 0x0

    .line 42
    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->v:Landroid/view/View;

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->v:Landroid/view/View;

    .line 51
    .line 52
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    iget-object v1, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->v:Landroid/view/View;

    .line 61
    .line 62
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    int-to-float v1, v1

    .line 67
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    .line 72
    .line 73
    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    new-instance v1, LK4/h;

    .line 81
    .line 82
    invoke-direct {v1, p0}, LK4/h;-><init>(Lflix/com/vision/bvp/BetterVideoPlayer;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 90
    .line 91
    .line 92
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->m:Lflix/com/vision/bvp/subtitle/CaptionsView;

    .line 93
    .line 94
    if-eqz v0, :cond_1

    .line 95
    .line 96
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 109
    .line 110
    const/high16 v4, 0x420c0000    # 35.0f

    .line 111
    .line 112
    mul-float/2addr v1, v4

    .line 113
    float-to-int v1, v1

    .line 114
    filled-new-array {v0, v1}, [I

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    const-wide/16 v4, 0x12c

    .line 123
    .line 124
    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 125
    .line 126
    .line 127
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    .line 128
    .line 129
    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 133
    .line 134
    .line 135
    new-instance v1, LK4/c;

    .line 136
    .line 137
    const/4 v4, 0x1

    .line 138
    invoke-direct {v1, p0, v4}, LK4/c;-><init>(Lflix/com/vision/bvp/BetterVideoPlayer;I)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 145
    .line 146
    .line 147
    :cond_1
    iget-boolean v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->W:Z

    .line 148
    .line 149
    if-eqz v0, :cond_2

    .line 150
    .line 151
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->D:Landroid/widget/ProgressBar;

    .line 152
    .line 153
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 158
    .line 159
    .line 160
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->D:Landroid/widget/ProgressBar;

    .line 161
    .line 162
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 163
    .line 164
    .line 165
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->D:Landroid/widget/ProgressBar;

    .line 166
    .line 167
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 176
    .line 177
    .line 178
    :cond_2
    invoke-virtual {p0}, Lflix/com/vision/bvp/BetterVideoPlayer;->g()V

    .line 179
    .line 180
    .line 181
    :cond_3
    :goto_0
    return-void
.end method

.method public hideToolbar()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->a0:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lflix/com/vision/bvp/BetterVideoPlayer;->g()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public hideVisualSeek()V
    .locals 2

    .line 1
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->f:Landroid/widget/TextView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0, v0, v1}, Lflix/com/vision/bvp/BetterVideoPlayer;->d(Landroid/view/View;I)V

    .line 7
    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->j:Landroid/widget/TextView;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0, v0, v1}, Lflix/com/vision/bvp/BetterVideoPlayer;->d(Landroid/view/View;I)V

    .line 14
    .line 15
    .line 16
    :cond_1
    const-wide/16 v0, -0x1

    .line 17
    .line 18
    iput-wide v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->q0:J

    .line 19
    .line 20
    return-void
.end method

.method public isCaptionActive()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->k0:Z

    .line 2
    .line 3
    return v0
.end method

.method public isControlsShown()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->d0:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->v:Landroid/view/View;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/high16 v1, 0x3f000000    # 0.5f

    .line 14
    .line 15
    cmpl-float v0, v0, v1

    .line 16
    .line 17
    if-lez v0, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    return v0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->z:Landroidx/media3/exoplayer/ExoPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/media3/common/Player;->isPlaying()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    return v0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    return v0
.end method

.method public isPrepared()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->z:Landroidx/media3/exoplayer/ExoPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->H:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    return v0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    return v0
.end method

.method public onAttachedToWindow()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    new-array v1, v0, [Ljava/lang/Object;

    .line 6
    .line 7
    const-string v2, "Attached to window"

    .line 8
    .line 9
    invoke-static {v2, v1}, Lflix/com/vision/bvp/BetterVideoPlayer;->LOG(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->z:Landroidx/media3/exoplayer/ExoPlayer;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    const-string v1, "player not null on attach"

    .line 17
    .line 18
    new-array v0, v0, [Ljava/lang/Object;

    .line 19
    .line 20
    invoke-static {v1, v0}, Lflix/com/vision/bvp/BetterVideoPlayer;->LOG(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget v1, Lflix/com/vision/R$id;->btnPlayPause:I

    .line 6
    .line 7
    if-ne v0, v1, :cond_1

    .line 8
    .line 9
    iget-object p1, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->z:Landroidx/media3/exoplayer/ExoPlayer;

    .line 10
    .line 11
    invoke-interface {p1}, Landroidx/media3/common/Player;->isPlaying()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Lflix/com/vision/bvp/BetterVideoPlayer;->pause()V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    invoke-virtual {p0}, Lflix/com/vision/bvp/BetterVideoPlayer;->start()V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    sget v0, Lflix/com/vision/R$id;->duration:I

    .line 30
    .line 31
    if-ne p1, v0, :cond_2

    .line 32
    .line 33
    iget-boolean p1, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->V:Z

    .line 34
    .line 35
    xor-int/lit8 p1, p1, 0x1

    .line 36
    .line 37
    iput-boolean p1, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->V:Z

    .line 38
    .line 39
    :cond_2
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    new-array v0, v0, [Ljava/lang/Object;

    .line 6
    .line 7
    const-string v1, "Detached from window"

    .line 8
    .line 9
    invoke-static {v1, v0}, Lflix/com/vision/bvp/BetterVideoPlayer;->LOG(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lflix/com/vision/bvp/BetterVideoPlayer;->release()V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->C:Landroid/widget/SeekBar;

    .line 17
    .line 18
    iput-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->E:Landroid/widget/TextView;

    .line 19
    .line 20
    iput-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->F:Landroid/widget/TextView;

    .line 21
    .line 22
    iput-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->G:Landroid/widget/ImageButton;

    .line 23
    .line 24
    iput-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->v:Landroid/view/View;

    .line 25
    .line 26
    iput-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->x:Landroid/widget/FrameLayout;

    .line 27
    .line 28
    iput-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->w:Landroid/view/View;

    .line 29
    .line 30
    iget-object v1, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->L:Landroid/os/Handler;

    .line 31
    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    iget-object v2, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->p0:LK4/k;

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->L:Landroid/os/Handler;

    .line 40
    .line 41
    :cond_0
    return-void
.end method

.method public onFinishInflate()V
    .locals 7

    .line 1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget v1, Lflix/com/vision/R$layout;->bvp_include_surface:I

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 20
    .line 21
    .line 22
    const/4 v3, 0x1

    .line 23
    invoke-virtual {p0, v3}, Landroid/view/View;->setKeepScreenOn(Z)V

    .line 24
    .line 25
    .line 26
    new-instance v4, Landroid/os/Handler;

    .line 27
    .line 28
    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v4, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->L:Landroid/os/Handler;

    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    const-string v5, "audio"

    .line 38
    .line 39
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    check-cast v4, Landroid/media/AudioManager;

    .line 44
    .line 45
    iput-object v4, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->n:Landroid/media/AudioManager;

    .line 46
    .line 47
    new-instance v4, Landroid/os/Handler;

    .line 48
    .line 49
    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    .line 50
    .line 51
    .line 52
    sget v4, Lflix/com/vision/R$id;->textureview:I

    .line 53
    .line 54
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    check-cast v4, Landroid/view/SurfaceView;

    .line 59
    .line 60
    iput-object v4, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->B:Landroid/view/SurfaceView;

    .line 61
    .line 62
    invoke-virtual {v4}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    invoke-interface {v4, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 67
    .line 68
    .line 69
    sget v4, Lflix/com/vision/R$id;->channel_logo:I

    .line 70
    .line 71
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    check-cast v4, Landroid/widget/ImageView;

    .line 76
    .line 77
    sget v4, Lflix/com/vision/R$id;->view_forward:I

    .line 78
    .line 79
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    check-cast v4, Landroid/widget/TextView;

    .line 84
    .line 85
    iput-object v4, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->f:Landroid/widget/TextView;

    .line 86
    .line 87
    sget v4, Lflix/com/vision/R$id;->view_backward:I

    .line 88
    .line 89
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    check-cast v1, Landroid/widget/TextView;

    .line 94
    .line 95
    iput-object v1, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->j:Landroid/widget/TextView;

    .line 96
    .line 97
    sget v1, Lflix/com/vision/R$layout;->bvp_include_progress:I

    .line 98
    .line 99
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    iput-object v1, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->w:Landroid/view/View;

    .line 104
    .line 105
    sget v4, Lflix/com/vision/R$id;->progressBarBottom:I

    .line 106
    .line 107
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    check-cast v1, Landroid/widget/ProgressBar;

    .line 112
    .line 113
    iput-object v1, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->D:Landroid/widget/ProgressBar;

    .line 114
    .line 115
    iget v1, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->e0:I

    .line 116
    .line 117
    invoke-virtual {p0, v1}, Lflix/com/vision/bvp/BetterVideoPlayer;->setLoadingStyle(I)V

    .line 118
    .line 119
    .line 120
    iget-object v1, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->w:Landroid/view/View;

    .line 121
    .line 122
    sget v4, Lflix/com/vision/R$id;->position_textview:I

    .line 123
    .line 124
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    check-cast v1, Landroid/widget/TextView;

    .line 129
    .line 130
    iput-object v1, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->e:Landroid/widget/TextView;

    .line 131
    .line 132
    const/high16 v4, 0x40400000    # 3.0f

    .line 133
    .line 134
    const/high16 v5, -0x1000000

    .line 135
    .line 136
    invoke-virtual {v1, v4, v4, v4, v5}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 137
    .line 138
    .line 139
    iget-object v1, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->w:Landroid/view/View;

    .line 140
    .line 141
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 142
    .line 143
    .line 144
    new-instance v1, Landroid/widget/FrameLayout;

    .line 145
    .line 146
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 147
    .line 148
    .line 149
    move-result-object v4

    .line 150
    invoke-direct {v1, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 151
    .line 152
    .line 153
    iput-object v1, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->x:Landroid/widget/FrameLayout;

    .line 154
    .line 155
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 156
    .line 157
    .line 158
    move-result-object v4

    .line 159
    const v5, 0x101030e

    .line 160
    .line 161
    .line 162
    invoke-static {v4, v5}, LM4/c;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 163
    .line 164
    .line 165
    move-result-object v4

    .line 166
    invoke-virtual {v1, v4}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 167
    .line 168
    .line 169
    iget-object v1, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->x:Landroid/widget/FrameLayout;

    .line 170
    .line 171
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    .line 172
    .line 173
    const/4 v5, -0x1

    .line 174
    invoke-direct {v4, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {p0, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 178
    .line 179
    .line 180
    sget v1, Lflix/com/vision/R$layout;->bvp_include_controls:I

    .line 181
    .line 182
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    iput-object v1, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->v:Landroid/view/View;

    .line 187
    .line 188
    invoke-virtual {v1, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 189
    .line 190
    .line 191
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 192
    .line 193
    const/4 v4, -0x2

    .line 194
    invoke-direct {v1, v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 195
    .line 196
    .line 197
    const/16 v4, 0xc

    .line 198
    .line 199
    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 200
    .line 201
    .line 202
    iget-object v4, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->v:Landroid/view/View;

    .line 203
    .line 204
    invoke-virtual {p0, v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 205
    .line 206
    .line 207
    sget v1, Lflix/com/vision/R$layout;->bvp_include_topbar:I

    .line 208
    .line 209
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    iput-object v1, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->y:Landroid/view/View;

    .line 214
    .line 215
    sget v4, Lflix/com/vision/R$id;->toolbar:I

    .line 216
    .line 217
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    check-cast v1, Landroidx/appcompat/widget/Toolbar;

    .line 222
    .line 223
    iput-object v1, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->p:Landroidx/appcompat/widget/Toolbar;

    .line 224
    .line 225
    iget-object v4, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->q:Ljava/lang/String;

    .line 226
    .line 227
    invoke-virtual {v1, v4}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 228
    .line 229
    .line 230
    iget-object v1, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->y:Landroid/view/View;

    .line 231
    .line 232
    iget-boolean v4, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->a0:Z

    .line 233
    .line 234
    if-eqz v4, :cond_0

    .line 235
    .line 236
    move v4, v2

    .line 237
    goto :goto_0

    .line 238
    :cond_0
    const/16 v4, 0x8

    .line 239
    .line 240
    :goto_0
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 241
    .line 242
    .line 243
    iget-object v1, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->y:Landroid/view/View;

    .line 244
    .line 245
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 246
    .line 247
    .line 248
    sget v1, Lflix/com/vision/R$layout;->bvp_include_subtitle:I

    .line 249
    .line 250
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 255
    .line 256
    invoke-direct {v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 257
    .line 258
    .line 259
    sget v4, Lflix/com/vision/R$id;->subs_box:I

    .line 260
    .line 261
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 262
    .line 263
    .line 264
    move-result-object v4

    .line 265
    check-cast v4, Lflix/com/vision/bvp/subtitle/CaptionsView;

    .line 266
    .line 267
    iput-object v4, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->m:Lflix/com/vision/bvp/subtitle/CaptionsView;

    .line 268
    .line 269
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 270
    .line 271
    invoke-direct {v6, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v4, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 275
    .line 276
    .line 277
    iget-object v4, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->z:Landroidx/media3/exoplayer/ExoPlayer;

    .line 278
    .line 279
    if-eqz v4, :cond_1

    .line 280
    .line 281
    iget-object v5, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->m:Lflix/com/vision/bvp/subtitle/CaptionsView;

    .line 282
    .line 283
    invoke-virtual {v5, v4}, Lflix/com/vision/bvp/subtitle/CaptionsView;->setPlayer(Landroidx/media3/exoplayer/ExoPlayer;)V

    .line 284
    .line 285
    .line 286
    :cond_1
    iget-object v4, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->m:Lflix/com/vision/bvp/subtitle/CaptionsView;

    .line 287
    .line 288
    iget v5, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->r:I

    .line 289
    .line 290
    int-to-float v5, v5

    .line 291
    invoke-virtual {v4, v2, v5}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 292
    .line 293
    .line 294
    iget-object v4, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->m:Lflix/com/vision/bvp/subtitle/CaptionsView;

    .line 295
    .line 296
    iget v5, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->s:I

    .line 297
    .line 298
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 302
    .line 303
    .line 304
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->v:Landroid/view/View;

    .line 305
    .line 306
    sget v1, Lflix/com/vision/R$id;->seeker:I

    .line 307
    .line 308
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    check-cast v0, Landroid/widget/SeekBar;

    .line 313
    .line 314
    iput-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->C:Landroid/widget/SeekBar;

    .line 315
    .line 316
    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 317
    .line 318
    .line 319
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->v:Landroid/view/View;

    .line 320
    .line 321
    sget v1, Lflix/com/vision/R$id;->position:I

    .line 322
    .line 323
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    check-cast v0, Landroid/widget/TextView;

    .line 328
    .line 329
    iput-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->E:Landroid/widget/TextView;

    .line 330
    .line 331
    const-wide/16 v4, 0x0

    .line 332
    .line 333
    invoke-static {v4, v5, v2}, LM4/c;->getDurationString(JZ)Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v1

    .line 337
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    .line 339
    .line 340
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->v:Landroid/view/View;

    .line 341
    .line 342
    sget v1, Lflix/com/vision/R$id;->duration:I

    .line 343
    .line 344
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 345
    .line 346
    .line 347
    move-result-object v0

    .line 348
    check-cast v0, Landroid/widget/TextView;

    .line 349
    .line 350
    iput-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->F:Landroid/widget/TextView;

    .line 351
    .line 352
    invoke-static {v4, v5, v3}, LM4/c;->getDurationString(JZ)Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v1

    .line 356
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 357
    .line 358
    .line 359
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->F:Landroid/widget/TextView;

    .line 360
    .line 361
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 362
    .line 363
    .line 364
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->v:Landroid/view/View;

    .line 365
    .line 366
    sget v1, Lflix/com/vision/R$id;->btnPlayPause:I

    .line 367
    .line 368
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 369
    .line 370
    .line 371
    move-result-object v0

    .line 372
    check-cast v0, Landroid/widget/ImageButton;

    .line 373
    .line 374
    iput-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->G:Landroid/widget/ImageButton;

    .line 375
    .line 376
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 377
    .line 378
    .line 379
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->G:Landroid/widget/ImageButton;

    .line 380
    .line 381
    iget-object v1, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->Q:Landroid/graphics/drawable/Drawable;

    .line 382
    .line 383
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 384
    .line 385
    .line 386
    iget-boolean v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->d0:Z

    .line 387
    .line 388
    if-eqz v0, :cond_2

    .line 389
    .line 390
    invoke-virtual {p0}, Lflix/com/vision/bvp/BetterVideoPlayer;->disableControls()V

    .line 391
    .line 392
    .line 393
    goto :goto_1

    .line 394
    :cond_2
    invoke-virtual {p0}, Lflix/com/vision/bvp/BetterVideoPlayer;->enableControls()V

    .line 395
    .line 396
    .line 397
    :goto_1
    iget-boolean v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->W:Z

    .line 398
    .line 399
    invoke-virtual {p0, v0}, Lflix/com/vision/bvp/BetterVideoPlayer;->setBottomProgressBarVisibility(Z)V

    .line 400
    .line 401
    .line 402
    invoke-direct {p0, v2}, Lflix/com/vision/bvp/BetterVideoPlayer;->setControlsEnabled(Z)V

    .line 403
    .line 404
    .line 405
    invoke-virtual {p0}, Lflix/com/vision/bvp/BetterVideoPlayer;->prepare()V

    .line 406
    .line 407
    .line 408
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    int-to-long v0, p2

    .line 4
    invoke-virtual {p0, v0, v1}, Lflix/com/vision/bvp/BetterVideoPlayer;->seekTo(J)V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->e:Landroid/widget/TextView;

    .line 8
    .line 9
    const/4 p3, 0x0

    .line 10
    invoke-static {v0, v1, p3}, LM4/c;->getDurationString(JZ)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p3

    .line 14
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object p1, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->r0:LK4/m;

    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    const/4 p3, -0x1

    .line 22
    invoke-interface {p1, p2, p3}, LK4/m;->onProgressUpdateChanged(II)V

    .line 23
    .line 24
    .line 25
    :cond_1
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lflix/com/vision/bvp/BetterVideoPlayer;->isPlaying()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iput-boolean p1, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->I:Z

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->z:Landroidx/media3/exoplayer/ExoPlayer;

    .line 10
    .line 11
    invoke-interface {p1}, Landroidx/media3/common/Player;->pause()V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object p1, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->e:Landroid/widget/TextView;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 1
    iget-boolean p1, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->I:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->z:Landroidx/media3/exoplayer/ExoPlayer;

    .line 6
    .line 7
    invoke-interface {p1}, Landroidx/media3/common/Player;->play()V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object p1, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->e:Landroid/widget/TextView;

    .line 11
    .line 12
    const/16 v0, 0x8

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public pause()V
    .locals 2

    .line 1
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->z:Landroidx/media3/exoplayer/ExoPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {p0}, Lflix/com/vision/bvp/BetterVideoPlayer;->isPlaying()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->z:Landroidx/media3/exoplayer/ExoPlayer;

    .line 13
    .line 14
    invoke-interface {v0}, Landroidx/media3/common/Player;->pause()V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->P:LK4/b;

    .line 18
    .line 19
    invoke-interface {v0, p0}, LK4/b;->onPaused(Lflix/com/vision/bvp/BetterVideoPlayer;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->L:Landroid/os/Handler;

    .line 23
    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    iget-object v1, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->l0:LK4/j;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->L:Landroid/os/Handler;

    .line 33
    .line 34
    iget-object v1, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->p0:LK4/k;

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->G:Landroid/widget/ImageButton;

    .line 40
    .line 41
    iget-object v1, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->Q:Landroid/graphics/drawable/Drawable;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 44
    .line 45
    .line 46
    :cond_2
    :goto_0
    return-void
.end method

.method public prepare()V
    .locals 4

    .line 1
    const-string v0, "Preparing media source: "

    .line 2
    .line 3
    iget-object v1, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->N:Landroid/net/Uri;

    .line 4
    .line 5
    if-eqz v1, :cond_3

    .line 6
    .line 7
    iget-object v1, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->z:Landroidx/media3/exoplayer/ExoPlayer;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_2

    .line 12
    .line 13
    :cond_0
    const/4 v1, 0x0

    .line 14
    :try_start_0
    invoke-virtual {p0}, Lflix/com/vision/bvp/BetterVideoPlayer;->hideControls()V

    .line 15
    .line 16
    .line 17
    iget-object v2, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->P:LK4/b;

    .line 18
    .line 19
    invoke-interface {v2}, LK4/b;->onPreparing()V

    .line 20
    .line 21
    .line 22
    iget-object v2, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->B:Landroid/view/SurfaceView;

    .line 23
    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    invoke-virtual {v2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v2}, Landroid/view/Surface;->isValid()Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    iget-object v2, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->z:Landroidx/media3/exoplayer/ExoPlayer;

    .line 41
    .line 42
    iget-object v3, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->B:Landroid/view/SurfaceView;

    .line 43
    .line 44
    invoke-virtual {v3}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-interface {v2, v3}, Landroidx/media3/common/Player;->setVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catch_0
    move-exception v0

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    :goto_0
    iget-object v2, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->N:Landroid/net/Uri;

    .line 55
    .line 56
    iget-object v3, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->O:Ljava/util/Map;

    .line 57
    .line 58
    invoke-virtual {p0, v2, v3}, Lflix/com/vision/bvp/BetterVideoPlayer;->f(Landroid/net/Uri;Ljava/util/Map;)Landroidx/media3/exoplayer/source/BaseMediaSource;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    new-instance v3, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->N:Landroid/net/Uri;

    .line 68
    .line 69
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    new-array v3, v1, [Ljava/lang/Object;

    .line 81
    .line 82
    invoke-static {v0, v3}, Lflix/com/vision/bvp/BetterVideoPlayer;->LOG(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->z:Landroidx/media3/exoplayer/ExoPlayer;

    .line 86
    .line 87
    invoke-interface {v0, v2}, Landroidx/media3/exoplayer/ExoPlayer;->setMediaSource(Landroidx/media3/exoplayer/source/MediaSource;)V

    .line 88
    .line 89
    .line 90
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->z:Landroidx/media3/exoplayer/ExoPlayer;

    .line 91
    .line 92
    invoke-interface {v0}, Landroidx/media3/common/Player;->prepare()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .line 94
    .line 95
    return-void

    .line 96
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    const-string v3, "Error preparing: "

    .line 99
    .line 100
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    new-array v1, v1, [Ljava/lang/Object;

    .line 115
    .line 116
    invoke-static {v2, v1}, Lflix/com/vision/bvp/BetterVideoPlayer;->LOG(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    iget-object v1, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->P:LK4/b;

    .line 120
    .line 121
    if-eqz v1, :cond_2

    .line 122
    .line 123
    invoke-interface {v1, p0, v0}, LK4/b;->onError(Lflix/com/vision/bvp/BetterVideoPlayer;Ljava/lang/Exception;)V

    .line 124
    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    .line 128
    .line 129
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 130
    .line 131
    .line 132
    throw v1

    .line 133
    :cond_3
    :goto_2
    return-void
.end method

.method public release()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->H:Z

    .line 3
    .line 4
    iget-object v1, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->z:Landroidx/media3/exoplayer/ExoPlayer;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    :try_start_0
    iget-object v3, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->A:LK4/d;

    .line 10
    .line 11
    if-eqz v3, :cond_0

    .line 12
    .line 13
    invoke-interface {v1, v3}, Landroidx/media3/common/Player;->removeListener(Landroidx/media3/common/Player$Listener;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v1, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->z:Landroidx/media3/exoplayer/ExoPlayer;

    .line 17
    .line 18
    invoke-interface {v1}, Landroidx/media3/exoplayer/ExoPlayer;->release()V

    .line 19
    .line 20
    .line 21
    iput-object v2, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->z:Landroidx/media3/exoplayer/ExoPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    :catchall_0
    iput-object v2, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->z:Landroidx/media3/exoplayer/ExoPlayer;

    .line 24
    .line 25
    :cond_1
    iget-object v1, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->L:Landroid/os/Handler;

    .line 26
    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    iget-object v3, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->p0:LK4/k;

    .line 30
    .line 31
    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 32
    .line 33
    .line 34
    iput-object v2, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->L:Landroid/os/Handler;

    .line 35
    .line 36
    :cond_2
    const-string v1, "Released player and Handler"

    .line 37
    .line 38
    new-array v0, v0, [Ljava/lang/Object;

    .line 39
    .line 40
    invoke-static {v1, v0}, Lflix/com/vision/bvp/BetterVideoPlayer;->LOG(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public removeCaptions()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, v0, v0}, Lflix/com/vision/bvp/BetterVideoPlayer;->setCaptions(Landroid/net/Uri;Lflix/com/vision/bvp/subtitle/CaptionsView$CMime;Ljava/lang/String;)V

    .line 3
    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->k0:Z

    .line 7
    .line 8
    return-void
.end method

.method public reset()V
    .locals 4

    .line 1
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->z:Landroidx/media3/exoplayer/ExoPlayer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v1, 0x0

    .line 7
    iput-boolean v1, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->H:Z

    .line 8
    .line 9
    :try_start_0
    invoke-interface {v0}, Landroidx/media3/common/Player;->stop()V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->z:Landroidx/media3/exoplayer/ExoPlayer;

    .line 13
    .line 14
    invoke-interface {v0}, Landroidx/media3/common/Player;->clearMediaItems()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception v0

    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v3, "Error resetting player: "

    .line 22
    .line 23
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    new-array v1, v1, [Ljava/lang/Object;

    .line 38
    .line 39
    invoke-static {v0, v1}, Lflix/com/vision/bvp/BetterVideoPlayer;->LOG(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    :goto_0
    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->N:Landroid/net/Uri;

    .line 44
    .line 45
    return-void
.end method

.method public seekTo(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->z:Landroidx/media3/exoplayer/ExoPlayer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {v0, p1, p2}, Landroidx/media3/common/Player;->seekTo(J)V

    .line 7
    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v1, "Seeking to position: "

    .line 12
    .line 13
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const/4 p2, 0x0

    .line 24
    new-array p2, p2, [Ljava/lang/Object;

    .line 25
    .line 26
    invoke-static {p1, p2}, Lflix/com/vision/bvp/BetterVideoPlayer;->LOG(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->L:Landroid/os/Handler;

    .line 30
    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    iget-object p2, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->p0:LK4/k;

    .line 34
    .line 35
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->L:Landroid/os/Handler;

    .line 39
    .line 40
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 41
    .line 42
    .line 43
    :cond_1
    :goto_0
    return-void
.end method

.method public setAudioTrack(LK4/l;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->z:Landroidx/media3/exoplayer/ExoPlayer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-interface {v0}, Landroidx/media3/common/Player;->getTrackSelectionParameters()Landroidx/media3/common/TrackSelectionParameters;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Landroidx/media3/common/TrackSelectionParameters;->buildUpon()Landroidx/media3/common/TrackSelectionParameters$Builder;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    new-instance v2, Landroidx/media3/common/TrackSelectionOverride;

    .line 15
    .line 16
    iget-object v3, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->z:Landroidx/media3/exoplayer/ExoPlayer;

    .line 17
    .line 18
    invoke-interface {v3}, Landroidx/media3/common/Player;->getCurrentTracks()Landroidx/media3/common/Tracks;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {v3}, Landroidx/media3/common/Tracks;->getGroups()Lcom/google/common/collect/ImmutableList;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    iget v4, p1, LK4/l;->a:I

    .line 27
    .line 28
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    check-cast v3, Landroidx/media3/common/Tracks$Group;

    .line 33
    .line 34
    invoke-virtual {v3}, Landroidx/media3/common/Tracks$Group;->getMediaTrackGroup()Landroidx/media3/common/TrackGroup;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    iget p1, p1, LK4/l;->b:I

    .line 39
    .line 40
    invoke-direct {v2, v3, p1}, Landroidx/media3/common/TrackSelectionOverride;-><init>(Landroidx/media3/common/TrackGroup;I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v2}, Landroidx/media3/common/TrackSelectionParameters$Builder;->setOverrideForType(Landroidx/media3/common/TrackSelectionOverride;)Landroidx/media3/common/TrackSelectionParameters$Builder;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p1}, Landroidx/media3/common/TrackSelectionParameters$Builder;->build()Landroidx/media3/common/TrackSelectionParameters;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-interface {v0, p1}, Landroidx/media3/common/Player;->setTrackSelectionParameters(Landroidx/media3/common/TrackSelectionParameters;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public setAutoPlay(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->c0:Z

    .line 2
    .line 3
    return-void
.end method

.method public setBottomProgressBarVisibility(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->W:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->D:Landroid/widget/ProgressBar;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object p1, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->D:Landroid/widget/ProgressBar;

    .line 13
    .line 14
    const/16 v0, 0x8

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public setCallback(LK4/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->P:LK4/b;

    .line 2
    .line 3
    return-void
.end method

.method public setCaptionLoadListener(LL4/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->m:Lflix/com/vision/bvp/subtitle/CaptionsView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lflix/com/vision/bvp/subtitle/CaptionsView;->setCaptionsViewLoadListener(LL4/b;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setCaptions(Landroid/net/Uri;Lflix/com/vision/bvp/subtitle/CaptionsView$CMime;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->m:Lflix/com/vision/bvp/subtitle/CaptionsView;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lflix/com/vision/bvp/subtitle/CaptionsView;->setCaptionsSource(Landroid/net/Uri;Lflix/com/vision/bvp/subtitle/CaptionsView$CMime;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->m:Lflix/com/vision/bvp/subtitle/CaptionsView;

    .line 7
    .line 8
    const-wide/16 p2, 0x0

    .line 9
    .line 10
    iput-wide p2, p1, Lflix/com/vision/bvp/subtitle/CaptionsView;->q:J

    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    iput-boolean p1, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->k0:Z

    .line 14
    .line 15
    return-void
.end method

.method public setCaptionsPath(Ljava/lang/String;Lflix/com/vision/bvp/subtitle/CaptionsView$CMime;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->m:Lflix/com/vision/bvp/subtitle/CaptionsView;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lflix/com/vision/bvp/subtitle/CaptionsView;->setCaptionsSource(Ljava/lang/String;Lflix/com/vision/bvp/subtitle/CaptionsView$CMime;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->m:Lflix/com/vision/bvp/subtitle/CaptionsView;

    .line 7
    .line 8
    const-wide/16 p2, 0x0

    .line 9
    .line 10
    iput-wide p2, p1, Lflix/com/vision/bvp/subtitle/CaptionsView;->q:J

    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    iput-boolean p1, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->k0:Z

    .line 14
    .line 15
    return-void
.end method

.method public setDoubleTap(I)V
    .locals 2

    .line 1
    iget-object p1, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->x:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    new-instance v0, LK3/i;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-direct {v0, p0, v1}, LK3/i;-><init>(Ljava/lang/Object;I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setEnableClick(Z)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->x:Landroid/widget/FrameLayout;

    .line 4
    .line 5
    const/16 v0, 0x8

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    :try_start_0
    sput-object p1, Lflix/com/vision/bvp/subtitle/CaptionsView;->w:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    .line 6
    return-void

    .line 7
    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 9
    .line 10
    .line 11
    :goto_0
    return-void
.end method

.method public setHideControlsDuration(I)V
    .locals 0

    .line 1
    iput p1, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->g0:I

    .line 2
    .line 3
    return-void
.end method

.method public setHideControlsOnPlay(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->U:Z

    .line 2
    .line 3
    return-void
.end method

.method public setInitialPosition(I)V
    .locals 2

    .line 1
    int-to-long v0, p1

    .line 2
    iput-wide v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->f0:J

    .line 3
    .line 4
    return-void
.end method

.method public setLoadingStyle(I)V
    .locals 0

    .line 1
    packed-switch p1, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    new-instance p1, LO2/t;

    .line 5
    .line 6
    invoke-direct {p1}, LO2/t;-><init>()V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    new-instance p1, LO2/q;

    .line 11
    .line 12
    invoke-direct {p1}, LO2/q;-><init>()V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_1
    new-instance p1, LO2/j;

    .line 17
    .line 18
    invoke-direct {p1}, LO2/j;-><init>()V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :pswitch_2
    new-instance p1, LO2/f;

    .line 23
    .line 24
    invoke-direct {p1}, LO2/f;-><init>()V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :pswitch_3
    new-instance p1, LO2/d;

    .line 29
    .line 30
    invoke-direct {p1}, LO2/d;-><init>()V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :pswitch_4
    new-instance p1, LO2/t;

    .line 35
    .line 36
    invoke-direct {p1}, LO2/t;-><init>()V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :pswitch_5
    new-instance p1, LO2/b;

    .line 41
    .line 42
    invoke-direct {p1}, LO2/b;-><init>()V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :pswitch_6
    new-instance p1, LO2/o;

    .line 47
    .line 48
    invoke-direct {p1}, LO2/o;-><init>()V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :pswitch_7
    new-instance p1, LO2/v;

    .line 53
    .line 54
    invoke-direct {p1}, LO2/v;-><init>()V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :pswitch_8
    new-instance p1, LO2/x;

    .line 59
    .line 60
    invoke-direct {p1}, LO2/x;-><init>()V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :pswitch_9
    new-instance p1, LO2/r;

    .line 65
    .line 66
    invoke-direct {p1}, LO2/r;-><init>()V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :pswitch_a
    new-instance p1, LO2/h;

    .line 71
    .line 72
    invoke-direct {p1}, LO2/h;-><init>()V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    nop

    .line 77
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setLoop(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->T:Z

    .line 2
    .line 3
    return-void
.end method

.method public setOffSet(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->m:Lflix/com/vision/bvp/subtitle/CaptionsView;

    .line 2
    .line 3
    iput-wide p1, v0, Lflix/com/vision/bvp/subtitle/CaptionsView;->q:J

    .line 4
    .line 5
    return-void
.end method

.method public setPreviewImage(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    const/4 p1, 0x0

    .line 2
    new-array p1, p1, [Ljava/lang/Object;

    .line 3
    .line 4
    const-string v0, "Preview image set (stored for future use)"

    .line 5
    .line 6
    invoke-static {v0, p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->LOG(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setProgressCallback(LK4/m;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->r0:LK4/m;

    return-void
.end method

.method public setProgressCallback(LK4/x;)V
    .locals 0

    .line 1
    return-void
.end method

.method public setResizeMode(I)V
    .locals 1

    .line 1
    iput p1, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->b:I

    .line 2
    .line 3
    new-instance p1, LB4/d;

    .line 4
    .line 5
    const/4 v0, 0x2

    .line 6
    invoke-direct {p1, p0, v0}, LB4/d;-><init>(Lflix/com/vision/bvp/BetterVideoPlayer;I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setSource(Landroid/net/Uri;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->N:Landroid/net/Uri;

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->o0:J

    .line 3
    iget-object p1, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->z:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lflix/com/vision/bvp/BetterVideoPlayer;->prepare()V

    :cond_0
    return-void
.end method

.method public setSource(Landroid/net/Uri;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 4
    iput-object p2, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->O:Ljava/util/Map;

    .line 5
    invoke-virtual {p0, p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->setSource(Landroid/net/Uri;)V

    return-void
.end method

.method public setSubColor(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->m:Lflix/com/vision/bvp/subtitle/CaptionsView;

    .line 2
    .line 3
    iget-object v1, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->t:Landroid/content/Context;

    .line 4
    .line 5
    invoke-static {v1, p1}, LA/h;->getColor(Landroid/content/Context;I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setSubSize(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->m:Lflix/com/vision/bvp/subtitle/CaptionsView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    int-to-float p1, p1

    .line 5
    invoke-virtual {v0, v1, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setTVMode(Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->v:Landroid/view/View;

    .line 2
    .line 3
    const/16 v0, 0x8

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->C:Landroid/widget/SeekBar;

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->E:Landroid/widget/TextView;

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->F:Landroid/widget/TextView;

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->D:Landroid/widget/ProgressBar;

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 26
    .line 27
    .line 28
    const/4 p1, 0x1

    .line 29
    iput-boolean p1, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->n0:Z

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->setLoop(Z)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public setVideoView(Landroidx/media3/exoplayer/ExoPlayer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->z:Landroidx/media3/exoplayer/ExoPlayer;

    .line 2
    .line 3
    return-void
.end method

.method public setVolume(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->z:Landroidx/media3/exoplayer/ExoPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v1, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->H:Z

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-interface {v0, p1}, Landroidx/media3/common/Player;->setVolume(F)V

    .line 11
    .line 12
    .line 13
    :cond_1
    :goto_0
    return-void
.end method

.method public showControls()V
    .locals 7

    .line 1
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->P:LK4/b;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-interface {v0, v1}, LK4/b;->onToggleControls(Z)V

    .line 5
    .line 6
    .line 7
    iget-boolean v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->d0:Z

    .line 8
    .line 9
    if-nez v0, :cond_4

    .line 10
    .line 11
    invoke-virtual {p0}, Lflix/com/vision/bvp/BetterVideoPlayer;->isControlsShown()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_4

    .line 16
    .line 17
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->C:Landroid/widget/SeekBar;

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    goto/16 :goto_0

    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->v:Landroid/view/View;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->v:Landroid/view/View;

    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->v:Landroid/view/View;

    .line 39
    .line 40
    const/4 v2, 0x0

    .line 41
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->v:Landroid/view/View;

    .line 45
    .line 46
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const/high16 v3, 0x3f800000    # 1.0f

    .line 51
    .line 52
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    const/4 v4, 0x0

    .line 61
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    .line 66
    .line 67
    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 75
    .line 76
    .line 77
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->m:Lflix/com/vision/bvp/subtitle/CaptionsView;

    .line 78
    .line 79
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    check-cast v0, Landroid/view/View;

    .line 84
    .line 85
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 90
    .line 91
    .line 92
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->m:Lflix/com/vision/bvp/subtitle/CaptionsView;

    .line 93
    .line 94
    if-eqz v0, :cond_1

    .line 95
    .line 96
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 105
    .line 106
    const/high16 v5, 0x420c0000    # 35.0f

    .line 107
    .line 108
    mul-float/2addr v0, v5

    .line 109
    float-to-int v0, v0

    .line 110
    iget-object v5, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->v:Landroid/view/View;

    .line 111
    .line 112
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    .line 113
    .line 114
    .line 115
    move-result v5

    .line 116
    add-int/2addr v5, v0

    .line 117
    filled-new-array {v0, v5}, [I

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    const-wide/16 v5, 0x12c

    .line 126
    .line 127
    invoke-virtual {v0, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 128
    .line 129
    .line 130
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    .line 131
    .line 132
    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 136
    .line 137
    .line 138
    new-instance v5, LK4/c;

    .line 139
    .line 140
    const/4 v6, 0x0

    .line 141
    invoke-direct {v5, p0, v6}, LK4/c;-><init>(Lflix/com/vision/bvp/BetterVideoPlayer;I)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 148
    .line 149
    .line 150
    :cond_1
    iget-boolean v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->W:Z

    .line 151
    .line 152
    if-eqz v0, :cond_2

    .line 153
    .line 154
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->D:Landroid/widget/ProgressBar;

    .line 155
    .line 156
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 161
    .line 162
    .line 163
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->D:Landroid/widget/ProgressBar;

    .line 164
    .line 165
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 166
    .line 167
    .line 168
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->D:Landroid/widget/ProgressBar;

    .line 169
    .line 170
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 179
    .line 180
    .line 181
    :cond_2
    iget-boolean v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->a0:Z

    .line 182
    .line 183
    if-eqz v0, :cond_3

    .line 184
    .line 185
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->y:Landroid/view/View;

    .line 186
    .line 187
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 192
    .line 193
    .line 194
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->y:Landroid/view/View;

    .line 195
    .line 196
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 197
    .line 198
    .line 199
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->y:Landroid/view/View;

    .line 200
    .line 201
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 202
    .line 203
    .line 204
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->y:Landroid/view/View;

    .line 205
    .line 206
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    .line 219
    .line 220
    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 228
    .line 229
    .line 230
    :cond_3
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->v:Landroid/view/View;

    .line 231
    .line 232
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 233
    .line 234
    .line 235
    :cond_4
    :goto_0
    return-void
.end method

.method public showToolbar()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->a0:Z

    .line 3
    .line 4
    return-void
.end method

.method public start()V
    .locals 4

    .line 1
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->z:Landroidx/media3/exoplayer/ExoPlayer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-boolean v1, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->U:Z

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    iget-boolean v1, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->d0:Z

    .line 11
    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    invoke-interface {v0}, Landroidx/media3/common/Player;->isPlaying()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->L:Landroid/os/Handler;

    .line 21
    .line 22
    iget-object v1, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->l0:LK4/j;

    .line 23
    .line 24
    const-wide/16 v2, 0x1f4

    .line 25
    .line 26
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 27
    .line 28
    .line 29
    :cond_1
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->z:Landroidx/media3/exoplayer/ExoPlayer;

    .line 30
    .line 31
    invoke-interface {v0}, Landroidx/media3/common/Player;->play()V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->P:LK4/b;

    .line 35
    .line 36
    invoke-interface {v0, p0}, LK4/b;->onStarted(Lflix/com/vision/bvp/BetterVideoPlayer;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->L:Landroid/os/Handler;

    .line 40
    .line 41
    if-nez v0, :cond_2

    .line 42
    .line 43
    new-instance v0, Landroid/os/Handler;

    .line 44
    .line 45
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->L:Landroid/os/Handler;

    .line 49
    .line 50
    :cond_2
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->L:Landroid/os/Handler;

    .line 51
    .line 52
    iget-object v1, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->p0:LK4/k;

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->G:Landroid/widget/ImageButton;

    .line 58
    .line 59
    iget-object v1, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->R:Landroid/graphics/drawable/Drawable;

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public stop()V
    .locals 2

    .line 1
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->z:Landroidx/media3/exoplayer/ExoPlayer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroidx/media3/common/Player;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    :catchall_0
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->L:Landroid/os/Handler;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    :goto_0
    return-void

    .line 14
    :cond_1
    iget-object v1, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->l0:LK4/j;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->L:Landroid/os/Handler;

    .line 20
    .line 21
    iget-object v1, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->p0:LK4/k;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->G:Landroid/widget/ImageButton;

    .line 27
    .line 28
    iget-object v1, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->R:Landroid/graphics/drawable/Drawable;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2

    .line 1
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    const/4 v0, 0x2

    .line 10
    new-array v0, v0, [Ljava/lang/Object;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    aput-object p1, v0, v1

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    aput-object p2, v0, p1

    .line 17
    .line 18
    const-string p1, "Surface changed: %dx%d"

    .line 19
    .line 20
    invoke-static {p1, v0}, Lflix/com/vision/bvp/BetterVideoPlayer;->LOG(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    iget p1, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->J:I

    .line 24
    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    iget p1, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->K:I

    .line 28
    .line 29
    if-nez p1, :cond_1

    .line 30
    .line 31
    :cond_0
    iput p3, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->J:I

    .line 32
    .line 33
    iput p4, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->K:I

    .line 34
    .line 35
    :cond_1
    iget-object p1, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->z:Landroidx/media3/exoplayer/ExoPlayer;

    .line 36
    .line 37
    if-eqz p1, :cond_2

    .line 38
    .line 39
    invoke-interface {p1}, Landroidx/media3/exoplayer/ExoPlayer;->getVideoFormat()Landroidx/media3/common/Format;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    if-eqz p1, :cond_2

    .line 44
    .line 45
    iget-object p1, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->z:Landroidx/media3/exoplayer/ExoPlayer;

    .line 46
    .line 47
    invoke-interface {p1}, Landroidx/media3/exoplayer/ExoPlayer;->getVideoFormat()Landroidx/media3/common/Format;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iget p2, p1, Landroidx/media3/common/Format;->width:I

    .line 52
    .line 53
    if-lez p2, :cond_2

    .line 54
    .line 55
    iget p1, p1, Landroidx/media3/common/Format;->height:I

    .line 56
    .line 57
    if-lez p1, :cond_2

    .line 58
    .line 59
    invoke-virtual {p0, p3, p4, p2, p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->c(IIII)V

    .line 60
    .line 61
    .line 62
    :cond_2
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const-string v1, "Surface created"

    .line 5
    .line 6
    invoke-static {v1, v0}, Lflix/com/vision/bvp/BetterVideoPlayer;->LOG(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->z:Landroidx/media3/exoplayer/ExoPlayer;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {v0, p1}, Landroidx/media3/common/Player;->setVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-boolean p1, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->H:Z

    .line 17
    .line 18
    if-nez p1, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0}, Lflix/com/vision/bvp/BetterVideoPlayer;->prepare()V

    .line 21
    .line 22
    .line 23
    :cond_1
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const-string v1, "Surface destroyed"

    .line 5
    .line 6
    invoke-static {v1, v0}, Lflix/com/vision/bvp/BetterVideoPlayer;->LOG(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->z:Landroidx/media3/exoplayer/ExoPlayer;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {v0, p1}, Landroidx/media3/common/Player;->clearVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public toggleAspectRatio()I
    .locals 4

    .line 1
    iget v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->b:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->b:I

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    if-le v0, v1, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->b:I

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->z:Landroidx/media3/exoplayer/ExoPlayer;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->getVideoFormat()Landroidx/media3/common/Format;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->z:Landroidx/media3/exoplayer/ExoPlayer;

    .line 24
    .line 25
    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->getVideoFormat()Landroidx/media3/common/Format;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget v1, v0, Landroidx/media3/common/Format;->width:I

    .line 30
    .line 31
    if-lez v1, :cond_1

    .line 32
    .line 33
    iget v0, v0, Landroidx/media3/common/Format;->height:I

    .line 34
    .line 35
    if-lez v0, :cond_1

    .line 36
    .line 37
    iget v2, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->J:I

    .line 38
    .line 39
    iget v3, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->K:I

    .line 40
    .line 41
    invoke-virtual {p0, v2, v3, v1, v0}, Lflix/com/vision/bvp/BetterVideoPlayer;->c(IIII)V

    .line 42
    .line 43
    .line 44
    :cond_1
    iget v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->b:I

    .line 45
    .line 46
    return v0
.end method

.method public toggleControls()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->d0:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    invoke-virtual {p0}, Lflix/com/vision/bvp/BetterVideoPlayer;->isControlsShown()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0}, Lflix/com/vision/bvp/BetterVideoPlayer;->hideControls()V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_1
    iget v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->g0:I

    .line 17
    .line 18
    if-ltz v0, :cond_2

    .line 19
    .line 20
    :try_start_0
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->L:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    iget-object v1, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->l0:LK4/j;

    .line 23
    .line 24
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->L:Landroid/os/Handler;

    .line 28
    .line 29
    iget v2, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->g0:I

    .line 30
    .line 31
    int-to-long v2, v2

    .line 32
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catch_0
    move-exception v0

    .line 37
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 38
    .line 39
    .line 40
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lflix/com/vision/bvp/BetterVideoPlayer;->showControls()V

    .line 41
    .line 42
    .line 43
    :goto_1
    return-void
.end method

.method public updateVisualSeek(J)V
    .locals 4

    .line 1
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->C:Landroid/widget/SeekBar;

    .line 2
    .line 3
    if-eqz v0, :cond_7

    .line 4
    .line 5
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->E:Landroid/widget/TextView;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_1

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->L:Landroid/os/Handler;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-object v1, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->p0:LK4/k;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 18
    .line 19
    .line 20
    :cond_1
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->C:Landroid/widget/SeekBar;

    .line 21
    .line 22
    long-to-int v1, p1

    .line 23
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->E:Landroid/widget/TextView;

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-static {p1, p2, v1}, LM4/c;->getDurationString(JZ)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    .line 35
    .line 36
    invoke-static {p1, p2, v1}, LM4/c;->getDurationString(JZ)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iget-object v2, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->f:Landroid/widget/TextView;

    .line 41
    .line 42
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_2

    .line 47
    .line 48
    iget-object v2, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->j:Landroid/widget/TextView;

    .line 49
    .line 50
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_2

    .line 55
    .line 56
    iget-object v2, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->z:Landroidx/media3/exoplayer/ExoPlayer;

    .line 57
    .line 58
    invoke-interface {v2}, Landroidx/media3/common/Player;->getCurrentPosition()J

    .line 59
    .line 60
    .line 61
    move-result-wide v2

    .line 62
    iput-wide v2, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->q0:J

    .line 63
    .line 64
    :cond_2
    iget-wide v2, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->q0:J

    .line 65
    .line 66
    cmp-long p1, p1, v2

    .line 67
    .line 68
    const/16 p2, 0x8

    .line 69
    .line 70
    const/high16 v2, 0x3f800000    # 1.0f

    .line 71
    .line 72
    if-ltz p1, :cond_4

    .line 73
    .line 74
    iget-object p1, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->f:Landroid/widget/TextView;

    .line 75
    .line 76
    if-eqz p1, :cond_3

    .line 77
    .line 78
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 79
    .line 80
    .line 81
    iget-object p1, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->f:Landroid/widget/TextView;

    .line 82
    .line 83
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    .line 85
    .line 86
    iget-object p1, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->f:Landroid/widget/TextView;

    .line 87
    .line 88
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 93
    .line 94
    .line 95
    iget-object p1, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->f:Landroid/widget/TextView;

    .line 96
    .line 97
    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 98
    .line 99
    .line 100
    :cond_3
    iget-object p1, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->j:Landroid/widget/TextView;

    .line 101
    .line 102
    if-eqz p1, :cond_6

    .line 103
    .line 104
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_4
    iget-object p1, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->j:Landroid/widget/TextView;

    .line 109
    .line 110
    if-eqz p1, :cond_5

    .line 111
    .line 112
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 113
    .line 114
    .line 115
    iget-object p1, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->j:Landroid/widget/TextView;

    .line 116
    .line 117
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    .line 119
    .line 120
    iget-object p1, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->j:Landroid/widget/TextView;

    .line 121
    .line 122
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 127
    .line 128
    .line 129
    iget-object p1, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->j:Landroid/widget/TextView;

    .line 130
    .line 131
    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 132
    .line 133
    .line 134
    :cond_5
    iget-object p1, p0, Lflix/com/vision/bvp/BetterVideoPlayer;->f:Landroid/widget/TextView;

    .line 135
    .line 136
    if-eqz p1, :cond_6

    .line 137
    .line 138
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 139
    .line 140
    .line 141
    :cond_6
    :goto_0
    invoke-virtual {p0}, Lflix/com/vision/bvp/BetterVideoPlayer;->isControlsShown()Z

    .line 142
    .line 143
    .line 144
    move-result p1

    .line 145
    if-nez p1, :cond_7

    .line 146
    .line 147
    invoke-virtual {p0}, Lflix/com/vision/bvp/BetterVideoPlayer;->showControls()V

    .line 148
    .line 149
    .line 150
    :cond_7
    :goto_1
    return-void
.end method
