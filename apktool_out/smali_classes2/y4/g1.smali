.class public final synthetic Ly4/g1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Lflix/com/vision/activities/SplashScreenActivity;


# direct methods
.method public synthetic constructor <init>(Lflix/com/vision/activities/SplashScreenActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Ly4/g1;->b:I

    iput-object p1, p0, Ly4/g1;->e:Lflix/com/vision/activities/SplashScreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Ly4/g1;->e:Lflix/com/vision/activities/SplashScreenActivity;

    .line 3
    .line 4
    iget v2, p0, Ly4/g1;->b:I

    .line 5
    .line 6
    packed-switch v2, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    sget v0, Lflix/com/vision/activities/SplashScreenActivity;->j:I

    .line 10
    .line 11
    invoke-virtual {v1}, Lflix/com/vision/activities/SplashScreenActivity;->a()V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :pswitch_0
    iget-object v1, v1, Lflix/com/vision/activities/SplashScreenActivity;->e:Lcom/github/ybq/android/spinkit/SpinKitView;

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :pswitch_1
    sget v2, Lflix/com/vision/activities/SplashScreenActivity;->j:I

    .line 22
    .line 23
    invoke-virtual {v1}, Lflix/com/vision/activities/SplashScreenActivity;->b()V

    .line 24
    .line 25
    .line 26
    sget-boolean v2, Lflix/com/vision/App;->I:Z

    .line 27
    .line 28
    if-nez v2, :cond_0

    .line 29
    .line 30
    goto :goto_3

    .line 31
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    sget v3, Lflix/com/vision/R$raw;->flix_sound:I

    .line 36
    .line 37
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    if-nez v2, :cond_1

    .line 42
    .line 43
    if-eqz v2, :cond_2

    .line 44
    .line 45
    :goto_0
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 46
    .line 47
    .line 48
    goto :goto_3

    .line 49
    :catch_0
    move-exception v0

    .line 50
    goto :goto_2

    .line 51
    :cond_1
    :try_start_1
    new-instance v3, Landroid/media/MediaPlayer;

    .line 52
    .line 53
    invoke-direct {v3}, Landroid/media/MediaPlayer;-><init>()V

    .line 54
    .line 55
    .line 56
    iput-object v3, v1, Lflix/com/vision/activities/SplashScreenActivity;->f:Landroid/media/MediaPlayer;

    .line 57
    .line 58
    new-instance v4, Ly4/h1;

    .line 59
    .line 60
    invoke-direct {v4, v1}, Ly4/h1;-><init>(Lflix/com/vision/activities/SplashScreenActivity;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 64
    .line 65
    .line 66
    iget-object v5, v1, Lflix/com/vision/activities/SplashScreenActivity;->f:Landroid/media/MediaPlayer;

    .line 67
    .line 68
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    .line 73
    .line 74
    .line 75
    move-result-wide v7

    .line 76
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    .line 77
    .line 78
    .line 79
    move-result-wide v9

    .line 80
    invoke-virtual/range {v5 .. v10}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 81
    .line 82
    .line 83
    iget-object v3, v1, Lflix/com/vision/activities/SplashScreenActivity;->f:Landroid/media/MediaPlayer;

    .line 84
    .line 85
    invoke-virtual {v3, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 86
    .line 87
    .line 88
    iget-object v0, v1, Lflix/com/vision/activities/SplashScreenActivity;->f:Landroid/media/MediaPlayer;

    .line 89
    .line 90
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 91
    .line 92
    .line 93
    iget-object v0, v1, Lflix/com/vision/activities/SplashScreenActivity;->f:Landroid/media/MediaPlayer;

    .line 94
    .line 95
    const/16 v3, 0x5dc

    .line 96
    .line 97
    invoke-virtual {v0, v3}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 98
    .line 99
    .line 100
    iget-object v0, v1, Lflix/com/vision/activities/SplashScreenActivity;->f:Landroid/media/MediaPlayer;

    .line 101
    .line 102
    const v3, 0x3ecccccd    # 0.4f

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v3, v3}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 106
    .line 107
    .line 108
    iget-object v0, v1, Lflix/com/vision/activities/SplashScreenActivity;->f:Landroid/media/MediaPlayer;

    .line 109
    .line 110
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    .line 112
    .line 113
    goto :goto_0

    .line 114
    :catchall_0
    move-exception v0

    .line 115
    move-object v1, v0

    .line 116
    :try_start_2
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 117
    .line 118
    .line 119
    goto :goto_1

    .line 120
    :catchall_1
    move-exception v0

    .line 121
    :try_start_3
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 122
    .line 123
    .line 124
    :goto_1
    throw v1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 125
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 126
    .line 127
    .line 128
    :catch_1
    :cond_2
    :goto_3
    return-void

    .line 129
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
