.class final Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioOutputListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/audio/AudioOutput$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/audio/DefaultAudioSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AudioOutputListener"
.end annotation


# instance fields
.field private final outputConfig:Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;

.field final synthetic this$0:Landroidx/media3/exoplayer/audio/DefaultAudioSink;


# direct methods
.method private constructor <init>(Landroidx/media3/exoplayer/audio/DefaultAudioSink;Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;)V
    .locals 0

    .line 2
    iput-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioOutputListener;->this$0:Landroidx/media3/exoplayer/audio/DefaultAudioSink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioOutputListener;->outputConfig:Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/media3/exoplayer/audio/DefaultAudioSink;Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;Landroidx/media3/exoplayer/audio/DefaultAudioSink$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioOutputListener;-><init>(Landroidx/media3/exoplayer/audio/DefaultAudioSink;Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;)V

    return-void
.end method


# virtual methods
.method public onOffloadDataRequest()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioOutputListener;->this$0:Landroidx/media3/exoplayer/audio/DefaultAudioSink;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->access$2200(Landroidx/media3/exoplayer/audio/DefaultAudioSink;)Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioOutputListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioOutputListener;->this$0:Landroidx/media3/exoplayer/audio/DefaultAudioSink;

    .line 15
    .line 16
    invoke-static {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->access$2300(Landroidx/media3/exoplayer/audio/DefaultAudioSink;)Landroidx/media3/exoplayer/audio/AudioSink$Listener;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioOutputListener;->this$0:Landroidx/media3/exoplayer/audio/DefaultAudioSink;

    .line 23
    .line 24
    invoke-static {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->access$2400(Landroidx/media3/exoplayer/audio/DefaultAudioSink;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioOutputListener;->this$0:Landroidx/media3/exoplayer/audio/DefaultAudioSink;

    .line 31
    .line 32
    invoke-static {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->access$2300(Landroidx/media3/exoplayer/audio/DefaultAudioSink;)Landroidx/media3/exoplayer/audio/AudioSink$Listener;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-interface {v0}, Landroidx/media3/exoplayer/audio/AudioSink$Listener;->onOffloadBufferEmptying()V

    .line 37
    .line 38
    .line 39
    :cond_1
    :goto_0
    return-void
.end method

.method public onOffloadPresentationEnded()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioOutputListener;->this$0:Landroidx/media3/exoplayer/audio/DefaultAudioSink;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->access$2200(Landroidx/media3/exoplayer/audio/DefaultAudioSink;)Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioOutputListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioOutputListener;->this$0:Landroidx/media3/exoplayer/audio/DefaultAudioSink;

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-static {v0, v1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->access$2502(Landroidx/media3/exoplayer/audio/DefaultAudioSink;Z)Z

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public onPositionAdvancing(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioOutputListener;->this$0:Landroidx/media3/exoplayer/audio/DefaultAudioSink;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->access$2200(Landroidx/media3/exoplayer/audio/DefaultAudioSink;)Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioOutputListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioOutputListener;->this$0:Landroidx/media3/exoplayer/audio/DefaultAudioSink;

    .line 15
    .line 16
    invoke-static {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->access$2300(Landroidx/media3/exoplayer/audio/DefaultAudioSink;)Landroidx/media3/exoplayer/audio/AudioSink$Listener;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioOutputListener;->this$0:Landroidx/media3/exoplayer/audio/DefaultAudioSink;

    .line 23
    .line 24
    invoke-static {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->access$2300(Landroidx/media3/exoplayer/audio/DefaultAudioSink;)Landroidx/media3/exoplayer/audio/AudioSink$Listener;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-interface {v0, p1, p2}, Landroidx/media3/exoplayer/audio/AudioSink$Listener;->onPositionAdvancing(J)V

    .line 29
    .line 30
    .line 31
    :cond_1
    :goto_0
    return-void
.end method

.method public onReleased()V
    .locals 8

    .line 1
    invoke-static {}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->access$2900()Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioOutputListener;->this$0:Landroidx/media3/exoplayer/audio/DefaultAudioSink;

    .line 9
    .line 10
    invoke-static {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->access$2300(Landroidx/media3/exoplayer/audio/DefaultAudioSink;)Landroidx/media3/exoplayer/audio/AudioSink$Listener;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioOutputListener;->this$0:Landroidx/media3/exoplayer/audio/DefaultAudioSink;

    .line 17
    .line 18
    invoke-static {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->access$2300(Landroidx/media3/exoplayer/audio/DefaultAudioSink;)Landroidx/media3/exoplayer/audio/AudioSink$Listener;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    new-instance v1, Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;

    .line 23
    .line 24
    iget-object v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioOutputListener;->outputConfig:Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;

    .line 25
    .line 26
    move-object v3, v2

    .line 27
    iget v2, v3, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->encoding:I

    .line 28
    .line 29
    move-object v4, v3

    .line 30
    iget v3, v4, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->sampleRate:I

    .line 31
    .line 32
    move-object v5, v4

    .line 33
    iget v4, v5, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->channelMask:I

    .line 34
    .line 35
    move-object v6, v5

    .line 36
    iget-boolean v5, v6, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->isTunneling:Z

    .line 37
    .line 38
    move-object v7, v6

    .line 39
    iget-boolean v6, v7, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->isOffload:Z

    .line 40
    .line 41
    iget v7, v7, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->bufferSize:I

    .line 42
    .line 43
    invoke-direct/range {v1 .. v7}, Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;-><init>(IIIZZI)V

    .line 44
    .line 45
    .line 46
    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/audio/AudioSink$Listener;->onAudioTrackReleased(Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;)V

    .line 47
    .line 48
    .line 49
    :cond_0
    return-void
.end method

.method public onUnderrun()V
    .locals 12

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioOutputListener;->this$0:Landroidx/media3/exoplayer/audio/DefaultAudioSink;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->access$2200(Landroidx/media3/exoplayer/audio/DefaultAudioSink;)Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioOutputListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioOutputListener;->this$0:Landroidx/media3/exoplayer/audio/DefaultAudioSink;

    .line 15
    .line 16
    invoke-static {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->access$2300(Landroidx/media3/exoplayer/audio/DefaultAudioSink;)Landroidx/media3/exoplayer/audio/AudioSink$Listener;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioOutputListener;->this$0:Landroidx/media3/exoplayer/audio/DefaultAudioSink;

    .line 23
    .line 24
    invoke-static {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->access$2600(Landroidx/media3/exoplayer/audio/DefaultAudioSink;)Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->access$2100(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    const/4 v1, -0x1

    .line 33
    if-eq v0, v1, :cond_1

    .line 34
    .line 35
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioOutputListener;->this$0:Landroidx/media3/exoplayer/audio/DefaultAudioSink;

    .line 36
    .line 37
    invoke-static {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->access$2600(Landroidx/media3/exoplayer/audio/DefaultAudioSink;)Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-static {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->access$1100(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;)Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iget v0, v0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->bufferSize:I

    .line 46
    .line 47
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioOutputListener;->this$0:Landroidx/media3/exoplayer/audio/DefaultAudioSink;

    .line 48
    .line 49
    invoke-static {v1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->access$2600(Landroidx/media3/exoplayer/audio/DefaultAudioSink;)Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-static {v1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->access$2100(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;)I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    div-int/2addr v0, v1

    .line 58
    int-to-long v0, v0

    .line 59
    iget-object v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioOutputListener;->this$0:Landroidx/media3/exoplayer/audio/DefaultAudioSink;

    .line 60
    .line 61
    invoke-static {v2}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->access$2700(Landroidx/media3/exoplayer/audio/DefaultAudioSink;)Landroidx/media3/exoplayer/audio/AudioOutput;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-static {v2}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    check-cast v2, Landroidx/media3/exoplayer/audio/AudioOutput;

    .line 70
    .line 71
    invoke-interface {v2}, Landroidx/media3/exoplayer/audio/AudioOutput;->getSampleRate()I

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    invoke-static {v0, v1, v2}, Landroidx/media3/common/util/Util;->sampleCountToDurationUs(JI)J

    .line 76
    .line 77
    .line 78
    move-result-wide v0

    .line 79
    goto :goto_0

    .line 80
    :cond_1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 86
    .line 87
    .line 88
    move-result-wide v2

    .line 89
    iget-object v4, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioOutputListener;->this$0:Landroidx/media3/exoplayer/audio/DefaultAudioSink;

    .line 90
    .line 91
    invoke-static {v4}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->access$2800(Landroidx/media3/exoplayer/audio/DefaultAudioSink;)J

    .line 92
    .line 93
    .line 94
    move-result-wide v4

    .line 95
    sub-long v10, v2, v4

    .line 96
    .line 97
    iget-object v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioOutputListener;->this$0:Landroidx/media3/exoplayer/audio/DefaultAudioSink;

    .line 98
    .line 99
    invoke-static {v2}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->access$2300(Landroidx/media3/exoplayer/audio/DefaultAudioSink;)Landroidx/media3/exoplayer/audio/AudioSink$Listener;

    .line 100
    .line 101
    .line 102
    move-result-object v6

    .line 103
    iget-object v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioOutputListener;->this$0:Landroidx/media3/exoplayer/audio/DefaultAudioSink;

    .line 104
    .line 105
    invoke-static {v2}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->access$2600(Landroidx/media3/exoplayer/audio/DefaultAudioSink;)Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    invoke-static {v2}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->access$1100(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;)Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    iget v7, v2, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->bufferSize:I

    .line 114
    .line 115
    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->usToMs(J)J

    .line 116
    .line 117
    .line 118
    move-result-wide v8

    .line 119
    invoke-interface/range {v6 .. v11}, Landroidx/media3/exoplayer/audio/AudioSink$Listener;->onUnderrun(IJJ)V

    .line 120
    .line 121
    .line 122
    :cond_2
    :goto_1
    return-void
.end method
