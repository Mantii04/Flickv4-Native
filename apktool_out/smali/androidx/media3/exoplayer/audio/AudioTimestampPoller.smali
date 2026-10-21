.class final Landroidx/media3/exoplayer/audio/AudioTimestampPoller;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;
    }
.end annotation


# static fields
.field private static final ERROR_POLL_INTERVAL_US:I = 0x7a120

.field private static final FAST_POLL_INTERVAL_US:I = 0x2710

.field private static final INITIALIZING_DURATION_US:I = 0x7a120

.field private static final MAX_AUDIO_TIMESTAMP_OFFSET_US:J = 0x4c4b40L

.field private static final MAX_POSITION_DRIFT_ADVANCING_TIMESTAMP_US:J = 0x3e8L

.field private static final SLOW_POLL_INTERVAL_US:I = 0x989680

.field private static final STATE_ERROR:I = 0x4

.field private static final STATE_INITIALIZING:I = 0x0

.field private static final STATE_NO_TIMESTAMP:I = 0x3

.field private static final STATE_TIMESTAMP:I = 0x1

.field private static final STATE_TIMESTAMP_ADVANCING:I = 0x2

.field private static final WAIT_FOR_ADVANCE_DURATION_US:I = 0x1e8480


# instance fields
.field private final audioTimestamp:Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;

.field private final errorListener:Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker$Listener;

.field private initialTimestampPositionFrames:J

.field private initialTimestampSystemTimeUs:J

.field private initializeSystemTimeUs:J

.field private lastTimestampSampleTimeUs:J

.field private sampleIntervalUs:J

.field private final sampleRate:I

.field private state:I


# direct methods
.method public constructor <init>(Landroid/media/AudioTrack;Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker$Listener;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;-><init>(Landroid/media/AudioTrack;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->audioTimestamp:Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/media/AudioTrack;->getSampleRate()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    iput p1, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->sampleRate:I

    .line 16
    .line 17
    iput-object p2, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->errorListener:Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker$Listener;

    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->reset()V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method private checkTimestampIsPlausibleAndUpdateErrorState(JFJ)V
    .locals 11

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->audioTimestamp:Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->getTimestampSystemTimeUs()J

    .line 4
    .line 5
    .line 6
    move-result-wide v4

    .line 7
    invoke-direct/range {p0 .. p3}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->computeTimestampPositionUs(JF)J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    sub-long v2, v4, p1

    .line 12
    .line 13
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    .line 14
    .line 15
    .line 16
    move-result-wide v2

    .line 17
    const-wide/32 v6, 0x4c4b40

    .line 18
    .line 19
    .line 20
    cmp-long p3, v2, v6

    .line 21
    .line 22
    const/4 v10, 0x4

    .line 23
    if-lez p3, :cond_0

    .line 24
    .line 25
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->errorListener:Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker$Listener;

    .line 26
    .line 27
    iget-object p3, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->audioTimestamp:Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;

    .line 28
    .line 29
    invoke-virtual {p3}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->getTimestampPositionFrames()J

    .line 30
    .line 31
    .line 32
    move-result-wide v2

    .line 33
    move-wide v6, p1

    .line 34
    move-wide v8, p4

    .line 35
    invoke-interface/range {v1 .. v9}, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker$Listener;->onSystemTimeUsMismatch(JJJJ)V

    .line 36
    .line 37
    .line 38
    invoke-direct {p0, v10}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->updateState(I)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_0
    sub-long/2addr v0, p4

    .line 43
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    .line 44
    .line 45
    .line 46
    move-result-wide v0

    .line 47
    cmp-long p3, v0, v6

    .line 48
    .line 49
    if-lez p3, :cond_1

    .line 50
    .line 51
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->errorListener:Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker$Listener;

    .line 52
    .line 53
    iget-object p3, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->audioTimestamp:Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;

    .line 54
    .line 55
    invoke-virtual {p3}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->getTimestampPositionFrames()J

    .line 56
    .line 57
    .line 58
    move-result-wide v2

    .line 59
    move-wide v6, p1

    .line 60
    move-wide v8, p4

    .line 61
    invoke-interface/range {v1 .. v9}, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker$Listener;->onPositionFramesMismatch(JJJJ)V

    .line 62
    .line 63
    .line 64
    invoke-direct {p0, v10}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->updateState(I)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_1
    iget p1, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->state:I

    .line 69
    .line 70
    if-ne p1, v10, :cond_2

    .line 71
    .line 72
    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->reset()V

    .line 73
    .line 74
    .line 75
    :cond_2
    return-void
.end method

.method private computeTimestampPositionUs(JF)J
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->audioTimestamp:Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;

    .line 2
    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->getTimestampPositionFrames()J

    move-result-wide v2

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->audioTimestamp:Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;

    .line 3
    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->getTimestampSystemTimeUs()J

    move-result-wide v4

    move-object v1, p0

    move-wide v6, p1

    move v8, p3

    .line 4
    invoke-direct/range {v1 .. v8}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->computeTimestampPositionUs(JJJF)J

    move-result-wide p1

    return-wide p1
.end method

.method private computeTimestampPositionUs(JJJF)J
    .locals 1

    .line 5
    iget v0, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->sampleRate:I

    invoke-static {p1, p2, v0}, Landroidx/media3/common/util/Util;->sampleCountToDurationUs(JI)J

    move-result-wide p1

    sub-long/2addr p5, p3

    .line 6
    invoke-static {p5, p6, p7}, Landroidx/media3/common/util/Util;->getMediaDurationForPlayoutDuration(JF)J

    move-result-wide p3

    add-long/2addr p3, p1

    return-wide p3
.end method

.method private isTimestampAdvancingFromInitialTimestamp(JF)Z
    .locals 10

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->audioTimestamp:Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->getTimestampPositionFrames()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iget-wide v3, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->initialTimestampPositionFrames:J

    .line 8
    .line 9
    cmp-long v0, v0, v3

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-gtz v0, :cond_0

    .line 13
    .line 14
    return v1

    .line 15
    :cond_0
    iget-wide v5, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->initialTimestampSystemTimeUs:J

    .line 16
    .line 17
    move-object v2, p0

    .line 18
    move-wide v7, p1

    .line 19
    move v9, p3

    .line 20
    invoke-direct/range {v2 .. v9}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->computeTimestampPositionUs(JJJF)J

    .line 21
    .line 22
    .line 23
    move-result-wide p1

    .line 24
    invoke-direct {p0, v7, v8, v9}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->computeTimestampPositionUs(JF)J

    .line 25
    .line 26
    .line 27
    move-result-wide v2

    .line 28
    sub-long/2addr v2, p1

    .line 29
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    .line 30
    .line 31
    .line 32
    move-result-wide p1

    .line 33
    const-wide/16 v2, 0x3e8

    .line 34
    .line 35
    cmp-long p1, p1, v2

    .line 36
    .line 37
    if-gez p1, :cond_1

    .line 38
    .line 39
    const/4 p1, 0x1

    .line 40
    return p1

    .line 41
    :cond_1
    return v1
.end method

.method private updateState(I)V
    .locals 6

    .line 1
    iput p1, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->state:I

    .line 2
    .line 3
    const-wide/16 v0, 0x2710

    .line 4
    .line 5
    if-eqz p1, :cond_3

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eq p1, v2, :cond_2

    .line 9
    .line 10
    const/4 v0, 0x2

    .line 11
    if-eq p1, v0, :cond_1

    .line 12
    .line 13
    const/4 v0, 0x3

    .line 14
    if-eq p1, v0, :cond_1

    .line 15
    .line 16
    const/4 v0, 0x4

    .line 17
    if-ne p1, v0, :cond_0

    .line 18
    .line 19
    const-wide/32 v0, 0x7a120

    .line 20
    .line 21
    .line 22
    iput-wide v0, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->sampleIntervalUs:J

    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 26
    .line 27
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 28
    .line 29
    .line 30
    throw p1

    .line 31
    :cond_1
    const-wide/32 v0, 0x989680

    .line 32
    .line 33
    .line 34
    iput-wide v0, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->sampleIntervalUs:J

    .line 35
    .line 36
    return-void

    .line 37
    :cond_2
    iput-wide v0, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->sampleIntervalUs:J

    .line 38
    .line 39
    return-void

    .line 40
    :cond_3
    const-wide/16 v2, 0x0

    .line 41
    .line 42
    iput-wide v2, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->lastTimestampSampleTimeUs:J

    .line 43
    .line 44
    const-wide/16 v2, -0x1

    .line 45
    .line 46
    iput-wide v2, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->initialTimestampPositionFrames:J

    .line 47
    .line 48
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    iput-wide v2, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->initialTimestampSystemTimeUs:J

    .line 54
    .line 55
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 56
    .line 57
    .line 58
    move-result-wide v2

    .line 59
    const-wide/16 v4, 0x3e8

    .line 60
    .line 61
    div-long/2addr v2, v4

    .line 62
    iput-wide v2, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->initializeSystemTimeUs:J

    .line 63
    .line 64
    iput-wide v0, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->sampleIntervalUs:J

    .line 65
    .line 66
    return-void
.end method


# virtual methods
.method public expectTimestampFramePositionReset()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->audioTimestamp:Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->expectTimestampFramePositionReset()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getTimestampPositionUs(JF)J
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->computeTimestampPositionUs(JF)J

    .line 2
    .line 3
    .line 4
    move-result-wide p1

    .line 5
    return-wide p1
.end method

.method public hasAdvancingTimestamp()Z
    .locals 2

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->state:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    return v0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    return v0
.end method

.method public isWaitingForAdvancingTimestamp()Z
    .locals 2

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->state:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    return v0

    .line 11
    :cond_1
    :goto_0
    return v1
.end method

.method public maybePollTimestamp(JFJZ)V
    .locals 4

    .line 1
    if-nez p6, :cond_0

    .line 2
    .line 3
    iget-wide v0, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->lastTimestampSampleTimeUs:J

    .line 4
    .line 5
    sub-long v0, p1, v0

    .line 6
    .line 7
    iget-wide v2, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->sampleIntervalUs:J

    .line 8
    .line 9
    cmp-long p6, v0, v2

    .line 10
    .line 11
    if-gez p6, :cond_0

    .line 12
    .line 13
    move-object p1, p0

    .line 14
    goto/16 :goto_0

    .line 15
    .line 16
    :cond_0
    iput-wide p1, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->lastTimestampSampleTimeUs:J

    .line 17
    .line 18
    iget-object p6, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->audioTimestamp:Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;

    .line 19
    .line 20
    invoke-virtual {p6}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->maybeUpdateTimestamp()Z

    .line 21
    .line 22
    .line 23
    move-result p6

    .line 24
    if-eqz p6, :cond_1

    .line 25
    .line 26
    invoke-direct/range {p0 .. p5}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->checkTimestampIsPlausibleAndUpdateErrorState(JFJ)V

    .line 27
    .line 28
    .line 29
    :cond_1
    move p4, p3

    .line 30
    move-wide p2, p1

    .line 31
    move-object p1, p0

    .line 32
    iget p5, p1, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->state:I

    .line 33
    .line 34
    const/4 v0, 0x1

    .line 35
    const/4 v1, 0x3

    .line 36
    if-eqz p5, :cond_9

    .line 37
    .line 38
    const/4 v2, 0x2

    .line 39
    if-eq p5, v0, :cond_5

    .line 40
    .line 41
    if-eq p5, v2, :cond_4

    .line 42
    .line 43
    if-eq p5, v1, :cond_3

    .line 44
    .line 45
    const/4 p2, 0x4

    .line 46
    if-ne p5, p2, :cond_2

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 50
    .line 51
    invoke-direct {p2}, Ljava/lang/IllegalStateException;-><init>()V

    .line 52
    .line 53
    .line 54
    throw p2

    .line 55
    :cond_3
    if-eqz p6, :cond_b

    .line 56
    .line 57
    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->reset()V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_4
    if-nez p6, :cond_b

    .line 62
    .line 63
    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->reset()V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_5
    if-eqz p6, :cond_8

    .line 68
    .line 69
    invoke-direct {p0, p2, p3, p4}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->isTimestampAdvancingFromInitialTimestamp(JF)Z

    .line 70
    .line 71
    .line 72
    move-result p4

    .line 73
    if-eqz p4, :cond_6

    .line 74
    .line 75
    invoke-direct {p0, v2}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->updateState(I)V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :cond_6
    iget-wide p4, p1, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->initializeSystemTimeUs:J

    .line 80
    .line 81
    sub-long/2addr p2, p4

    .line 82
    const-wide/32 p4, 0x1e8480

    .line 83
    .line 84
    .line 85
    cmp-long p2, p2, p4

    .line 86
    .line 87
    if-lez p2, :cond_7

    .line 88
    .line 89
    invoke-direct {p0, v1}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->updateState(I)V

    .line 90
    .line 91
    .line 92
    return-void

    .line 93
    :cond_7
    iget-object p2, p1, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->audioTimestamp:Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;

    .line 94
    .line 95
    invoke-virtual {p2}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->getTimestampPositionFrames()J

    .line 96
    .line 97
    .line 98
    move-result-wide p2

    .line 99
    iput-wide p2, p1, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->initialTimestampPositionFrames:J

    .line 100
    .line 101
    iget-object p2, p1, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->audioTimestamp:Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;

    .line 102
    .line 103
    invoke-virtual {p2}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->getTimestampSystemTimeUs()J

    .line 104
    .line 105
    .line 106
    move-result-wide p2

    .line 107
    iput-wide p2, p1, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->initialTimestampSystemTimeUs:J

    .line 108
    .line 109
    return-void

    .line 110
    :cond_8
    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->reset()V

    .line 111
    .line 112
    .line 113
    return-void

    .line 114
    :cond_9
    if-eqz p6, :cond_a

    .line 115
    .line 116
    iget-object p2, p1, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->audioTimestamp:Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;

    .line 117
    .line 118
    invoke-virtual {p2}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->getTimestampSystemTimeUs()J

    .line 119
    .line 120
    .line 121
    move-result-wide p2

    .line 122
    iget-wide p4, p1, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->initializeSystemTimeUs:J

    .line 123
    .line 124
    cmp-long p2, p2, p4

    .line 125
    .line 126
    if-ltz p2, :cond_b

    .line 127
    .line 128
    iget-object p2, p1, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->audioTimestamp:Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;

    .line 129
    .line 130
    invoke-virtual {p2}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->getTimestampPositionFrames()J

    .line 131
    .line 132
    .line 133
    move-result-wide p2

    .line 134
    iput-wide p2, p1, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->initialTimestampPositionFrames:J

    .line 135
    .line 136
    iget-object p2, p1, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->audioTimestamp:Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;

    .line 137
    .line 138
    invoke-virtual {p2}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->getTimestampSystemTimeUs()J

    .line 139
    .line 140
    .line 141
    move-result-wide p2

    .line 142
    iput-wide p2, p1, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->initialTimestampSystemTimeUs:J

    .line 143
    .line 144
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->updateState(I)V

    .line 145
    .line 146
    .line 147
    return-void

    .line 148
    :cond_a
    iget-wide p4, p1, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->initializeSystemTimeUs:J

    .line 149
    .line 150
    sub-long/2addr p2, p4

    .line 151
    const-wide/32 p4, 0x7a120

    .line 152
    .line 153
    .line 154
    cmp-long p2, p2, p4

    .line 155
    .line 156
    if-lez p2, :cond_b

    .line 157
    .line 158
    invoke-direct {p0, v1}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->updateState(I)V

    .line 159
    .line 160
    .line 161
    :cond_b
    :goto_0
    return-void
.end method

.method public reset()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->updateState(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method
