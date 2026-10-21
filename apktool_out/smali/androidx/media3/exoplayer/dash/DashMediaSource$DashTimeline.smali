.class final Landroidx/media3/exoplayer/dash/DashMediaSource$DashTimeline;
.super Landroidx/media3/common/Timeline;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/dash/DashMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DashTimeline"
.end annotation


# instance fields
.field private final elapsedRealtimeEpochOffsetMs:J

.field private final firstPeriodId:I

.field private final liveConfiguration:Landroidx/media3/common/MediaItem$LiveConfiguration;

.field private final manifest:Landroidx/media3/exoplayer/dash/manifest/DashManifest;

.field private final mediaItem:Landroidx/media3/common/MediaItem;

.field private final offsetInFirstPeriodUs:J

.field private final presentationStartTimeMs:J

.field private final windowDefaultStartPositionUs:J

.field private final windowDurationUs:J

.field private final windowStartTimeMs:J


# direct methods
.method public constructor <init>(JJJIJJJLandroidx/media3/exoplayer/dash/manifest/DashManifest;Landroidx/media3/common/MediaItem;Landroidx/media3/common/MediaItem$LiveConfiguration;)V
    .locals 6

    .line 1
    move-object/from16 v0, p14

    .line 2
    .line 3
    move-object/from16 v1, p16

    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/media3/common/Timeline;-><init>()V

    .line 6
    .line 7
    .line 8
    iget-boolean v2, v0, Landroidx/media3/exoplayer/dash/manifest/DashManifest;->dynamic:Z

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    const/4 v4, 0x1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    move v5, v4

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v5, v3

    .line 17
    :goto_0
    if-ne v2, v5, :cond_1

    .line 18
    .line 19
    move v3, v4

    .line 20
    :cond_1
    invoke-static {v3}, LP3/v;->checkState(Z)V

    .line 21
    .line 22
    .line 23
    iput-wide p1, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$DashTimeline;->presentationStartTimeMs:J

    .line 24
    .line 25
    iput-wide p3, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$DashTimeline;->windowStartTimeMs:J

    .line 26
    .line 27
    iput-wide p5, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$DashTimeline;->elapsedRealtimeEpochOffsetMs:J

    .line 28
    .line 29
    iput p7, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$DashTimeline;->firstPeriodId:I

    .line 30
    .line 31
    iput-wide p8, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$DashTimeline;->offsetInFirstPeriodUs:J

    .line 32
    .line 33
    move-wide/from16 p1, p10

    .line 34
    .line 35
    iput-wide p1, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$DashTimeline;->windowDurationUs:J

    .line 36
    .line 37
    move-wide/from16 p1, p12

    .line 38
    .line 39
    iput-wide p1, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$DashTimeline;->windowDefaultStartPositionUs:J

    .line 40
    .line 41
    iput-object v0, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$DashTimeline;->manifest:Landroidx/media3/exoplayer/dash/manifest/DashManifest;

    .line 42
    .line 43
    move-object/from16 p1, p15

    .line 44
    .line 45
    iput-object p1, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$DashTimeline;->mediaItem:Landroidx/media3/common/MediaItem;

    .line 46
    .line 47
    iput-object v1, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$DashTimeline;->liveConfiguration:Landroidx/media3/common/MediaItem$LiveConfiguration;

    .line 48
    .line 49
    return-void
.end method

.method private getAdjustedWindowDefaultStartPositionUs(J)J
    .locals 10

    .line 1
    iget-wide v0, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$DashTimeline;->windowDefaultStartPositionUs:J

    .line 2
    .line 3
    iget-object v2, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$DashTimeline;->manifest:Landroidx/media3/exoplayer/dash/manifest/DashManifest;

    .line 4
    .line 5
    invoke-static {v2}, Landroidx/media3/exoplayer/dash/DashMediaSource$DashTimeline;->isMovingLiveWindow(Landroidx/media3/exoplayer/dash/manifest/DashManifest;)Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    return-wide v0

    .line 12
    :cond_0
    const-wide/16 v2, 0x0

    .line 13
    .line 14
    cmp-long v4, p1, v2

    .line 15
    .line 16
    if-lez v4, :cond_1

    .line 17
    .line 18
    add-long/2addr v0, p1

    .line 19
    iget-wide p1, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$DashTimeline;->windowDurationUs:J

    .line 20
    .line 21
    cmp-long p1, v0, p1

    .line 22
    .line 23
    if-lez p1, :cond_1

    .line 24
    .line 25
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    return-wide p1

    .line 31
    :cond_1
    iget-wide p1, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$DashTimeline;->offsetInFirstPeriodUs:J

    .line 32
    .line 33
    add-long/2addr p1, v0

    .line 34
    iget-object v4, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$DashTimeline;->manifest:Landroidx/media3/exoplayer/dash/manifest/DashManifest;

    .line 35
    .line 36
    const/4 v5, 0x0

    .line 37
    invoke-virtual {v4, v5}, Landroidx/media3/exoplayer/dash/manifest/DashManifest;->getPeriodDurationUs(I)J

    .line 38
    .line 39
    .line 40
    move-result-wide v6

    .line 41
    move v4, v5

    .line 42
    :goto_0
    iget-object v8, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$DashTimeline;->manifest:Landroidx/media3/exoplayer/dash/manifest/DashManifest;

    .line 43
    .line 44
    invoke-virtual {v8}, Landroidx/media3/exoplayer/dash/manifest/DashManifest;->getPeriodCount()I

    .line 45
    .line 46
    .line 47
    move-result v8

    .line 48
    add-int/lit8 v8, v8, -0x1

    .line 49
    .line 50
    if-ge v4, v8, :cond_2

    .line 51
    .line 52
    cmp-long v8, p1, v6

    .line 53
    .line 54
    if-ltz v8, :cond_2

    .line 55
    .line 56
    sub-long/2addr p1, v6

    .line 57
    add-int/lit8 v4, v4, 0x1

    .line 58
    .line 59
    iget-object v6, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$DashTimeline;->manifest:Landroidx/media3/exoplayer/dash/manifest/DashManifest;

    .line 60
    .line 61
    invoke-virtual {v6, v4}, Landroidx/media3/exoplayer/dash/manifest/DashManifest;->getPeriodDurationUs(I)J

    .line 62
    .line 63
    .line 64
    move-result-wide v6

    .line 65
    goto :goto_0

    .line 66
    :cond_2
    iget-object v8, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$DashTimeline;->manifest:Landroidx/media3/exoplayer/dash/manifest/DashManifest;

    .line 67
    .line 68
    invoke-virtual {v8, v4}, Landroidx/media3/exoplayer/dash/manifest/DashManifest;->getPeriod(I)Landroidx/media3/exoplayer/dash/manifest/Period;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    const/4 v8, 0x2

    .line 73
    invoke-virtual {v4, v8}, Landroidx/media3/exoplayer/dash/manifest/Period;->getAdaptationSetIndex(I)I

    .line 74
    .line 75
    .line 76
    move-result v8

    .line 77
    const/4 v9, -0x1

    .line 78
    if-ne v8, v9, :cond_3

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_3
    iget-object v4, v4, Landroidx/media3/exoplayer/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    .line 82
    .line 83
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    check-cast v4, Landroidx/media3/exoplayer/dash/manifest/AdaptationSet;

    .line 88
    .line 89
    iget-object v4, v4, Landroidx/media3/exoplayer/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    .line 90
    .line 91
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    check-cast v4, Landroidx/media3/exoplayer/dash/manifest/Representation;

    .line 96
    .line 97
    invoke-virtual {v4}, Landroidx/media3/exoplayer/dash/manifest/Representation;->getIndex()Landroidx/media3/exoplayer/dash/DashSegmentIndex;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    if-eqz v4, :cond_5

    .line 102
    .line 103
    invoke-interface {v4, v6, v7}, Landroidx/media3/exoplayer/dash/DashSegmentIndex;->getSegmentCount(J)J

    .line 104
    .line 105
    .line 106
    move-result-wide v8

    .line 107
    cmp-long v2, v8, v2

    .line 108
    .line 109
    if-nez v2, :cond_4

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_4
    invoke-interface {v4, p1, p2, v6, v7}, Landroidx/media3/exoplayer/dash/DashSegmentIndex;->getSegmentNum(JJ)J

    .line 113
    .line 114
    .line 115
    move-result-wide v2

    .line 116
    invoke-interface {v4, v2, v3}, Landroidx/media3/exoplayer/dash/DashSegmentIndex;->getTimeUs(J)J

    .line 117
    .line 118
    .line 119
    move-result-wide v2

    .line 120
    add-long/2addr v2, v0

    .line 121
    sub-long/2addr v2, p1

    .line 122
    return-wide v2

    .line 123
    :cond_5
    :goto_1
    return-wide v0
.end method

.method private static isMovingLiveWindow(Landroidx/media3/exoplayer/dash/manifest/DashManifest;)Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/dash/manifest/DashManifest;->dynamic:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-wide v0, p0, Landroidx/media3/exoplayer/dash/manifest/DashManifest;->minUpdatePeriodMs:J

    .line 6
    .line 7
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    cmp-long v0, v0, v2

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-wide v0, p0, Landroidx/media3/exoplayer/dash/manifest/DashManifest;->durationMs:J

    .line 17
    .line 18
    cmp-long p0, v0, v2

    .line 19
    .line 20
    if-nez p0, :cond_0

    .line 21
    .line 22
    const/4 p0, 0x1

    .line 23
    return p0

    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    return p0
.end method


# virtual methods
.method public getIndexOfPeriod(Ljava/lang/Object;)I
    .locals 2

    .line 1
    instance-of v0, p1, Ljava/lang/Integer;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    check-cast p1, Ljava/lang/Integer;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    iget v0, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$DashTimeline;->firstPeriodId:I

    .line 14
    .line 15
    sub-int/2addr p1, v0

    .line 16
    if-ltz p1, :cond_2

    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/media3/exoplayer/dash/DashMediaSource$DashTimeline;->getPeriodCount()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-lt p1, v0, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    return p1

    .line 26
    :cond_2
    :goto_0
    return v1
.end method

.method public getPeriod(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/dash/DashMediaSource$DashTimeline;->getPeriodCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p1, v0}, LP3/v;->checkElementIndex(II)I

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    if-eqz p3, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$DashTimeline;->manifest:Landroidx/media3/exoplayer/dash/manifest/DashManifest;

    .line 12
    .line 13
    invoke-virtual {v1, p1}, Landroidx/media3/exoplayer/dash/manifest/DashManifest;->getPeriod(I)Landroidx/media3/exoplayer/dash/manifest/Period;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget-object v1, v1, Landroidx/media3/exoplayer/dash/manifest/Period;->id:Ljava/lang/String;

    .line 18
    .line 19
    move-object v3, v1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object v3, v0

    .line 22
    :goto_0
    if-eqz p3, :cond_1

    .line 23
    .line 24
    iget p3, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$DashTimeline;->firstPeriodId:I

    .line 25
    .line 26
    add-int/2addr p3, p1

    .line 27
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    :cond_1
    move-object v4, v0

    .line 32
    iget-object p3, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$DashTimeline;->manifest:Landroidx/media3/exoplayer/dash/manifest/DashManifest;

    .line 33
    .line 34
    invoke-virtual {p3, p1}, Landroidx/media3/exoplayer/dash/manifest/DashManifest;->getPeriodDurationUs(I)J

    .line 35
    .line 36
    .line 37
    move-result-wide v6

    .line 38
    iget-object p3, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$DashTimeline;->manifest:Landroidx/media3/exoplayer/dash/manifest/DashManifest;

    .line 39
    .line 40
    invoke-virtual {p3, p1}, Landroidx/media3/exoplayer/dash/manifest/DashManifest;->getPeriod(I)Landroidx/media3/exoplayer/dash/manifest/Period;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iget-wide v0, p1, Landroidx/media3/exoplayer/dash/manifest/Period;->startMs:J

    .line 45
    .line 46
    iget-object p1, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$DashTimeline;->manifest:Landroidx/media3/exoplayer/dash/manifest/DashManifest;

    .line 47
    .line 48
    const/4 p3, 0x0

    .line 49
    invoke-virtual {p1, p3}, Landroidx/media3/exoplayer/dash/manifest/DashManifest;->getPeriod(I)Landroidx/media3/exoplayer/dash/manifest/Period;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    iget-wide v8, p1, Landroidx/media3/exoplayer/dash/manifest/Period;->startMs:J

    .line 54
    .line 55
    sub-long/2addr v0, v8

    .line 56
    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->msToUs(J)J

    .line 57
    .line 58
    .line 59
    move-result-wide v0

    .line 60
    iget-wide v8, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$DashTimeline;->offsetInFirstPeriodUs:J

    .line 61
    .line 62
    sub-long v8, v0, v8

    .line 63
    .line 64
    const/4 v5, 0x0

    .line 65
    move-object v2, p2

    .line 66
    invoke-virtual/range {v2 .. v9}, Landroidx/media3/common/Timeline$Period;->set(Ljava/lang/Object;Ljava/lang/Object;IJJ)Landroidx/media3/common/Timeline$Period;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    return-object p1
.end method

.method public getPeriodCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$DashTimeline;->manifest:Landroidx/media3/exoplayer/dash/manifest/DashManifest;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/media3/exoplayer/dash/manifest/DashManifest;->getPeriodCount()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getUidOfPeriod(I)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/dash/DashMediaSource$DashTimeline;->getPeriodCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p1, v0}, LP3/v;->checkElementIndex(II)I

    .line 6
    .line 7
    .line 8
    iget v0, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$DashTimeline;->firstPeriodId:I

    .line 9
    .line 10
    add-int/2addr v0, p1

    .line 11
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method public getWindow(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    move/from16 v2, p1

    .line 5
    .line 6
    invoke-static {v2, v1}, LP3/v;->checkElementIndex(II)I

    .line 7
    .line 8
    .line 9
    move-wide/from16 v2, p3

    .line 10
    .line 11
    invoke-direct {v0, v2, v3}, Landroidx/media3/exoplayer/dash/DashMediaSource$DashTimeline;->getAdjustedWindowDefaultStartPositionUs(J)J

    .line 12
    .line 13
    .line 14
    move-result-wide v15

    .line 15
    sget-object v3, Landroidx/media3/common/Timeline$Window;->SINGLE_WINDOW_UID:Ljava/lang/Object;

    .line 16
    .line 17
    iget-object v4, v0, Landroidx/media3/exoplayer/dash/DashMediaSource$DashTimeline;->mediaItem:Landroidx/media3/common/MediaItem;

    .line 18
    .line 19
    iget-object v5, v0, Landroidx/media3/exoplayer/dash/DashMediaSource$DashTimeline;->manifest:Landroidx/media3/exoplayer/dash/manifest/DashManifest;

    .line 20
    .line 21
    iget-wide v6, v0, Landroidx/media3/exoplayer/dash/DashMediaSource$DashTimeline;->presentationStartTimeMs:J

    .line 22
    .line 23
    iget-wide v8, v0, Landroidx/media3/exoplayer/dash/DashMediaSource$DashTimeline;->windowStartTimeMs:J

    .line 24
    .line 25
    iget-wide v10, v0, Landroidx/media3/exoplayer/dash/DashMediaSource$DashTimeline;->elapsedRealtimeEpochOffsetMs:J

    .line 26
    .line 27
    invoke-static {v5}, Landroidx/media3/exoplayer/dash/DashMediaSource$DashTimeline;->isMovingLiveWindow(Landroidx/media3/exoplayer/dash/manifest/DashManifest;)Z

    .line 28
    .line 29
    .line 30
    move-result v13

    .line 31
    iget-object v14, v0, Landroidx/media3/exoplayer/dash/DashMediaSource$DashTimeline;->liveConfiguration:Landroidx/media3/common/MediaItem$LiveConfiguration;

    .line 32
    .line 33
    move v12, v1

    .line 34
    iget-wide v1, v0, Landroidx/media3/exoplayer/dash/DashMediaSource$DashTimeline;->windowDurationUs:J

    .line 35
    .line 36
    invoke-virtual {v0}, Landroidx/media3/exoplayer/dash/DashMediaSource$DashTimeline;->getPeriodCount()I

    .line 37
    .line 38
    .line 39
    move-result v17

    .line 40
    add-int/lit8 v20, v17, -0x1

    .line 41
    .line 42
    move-wide/from16 v17, v1

    .line 43
    .line 44
    iget-wide v1, v0, Landroidx/media3/exoplayer/dash/DashMediaSource$DashTimeline;->offsetInFirstPeriodUs:J

    .line 45
    .line 46
    const/4 v12, 0x1

    .line 47
    const/16 v19, 0x0

    .line 48
    .line 49
    move-wide/from16 v21, v1

    .line 50
    .line 51
    move-object/from16 v2, p2

    .line 52
    .line 53
    invoke-virtual/range {v2 .. v22}, Landroidx/media3/common/Timeline$Window;->set(Ljava/lang/Object;Landroidx/media3/common/MediaItem;Ljava/lang/Object;JJJZZLandroidx/media3/common/MediaItem$LiveConfiguration;JJIIJ)Landroidx/media3/common/Timeline$Window;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    return-object v1
.end method

.method public getWindowCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
