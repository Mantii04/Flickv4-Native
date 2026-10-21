.class public abstract Landroidx/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;
.super Landroidx/media3/exoplayer/dash/manifest/SegmentBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/dash/manifest/SegmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "MultiSegmentBase"
.end annotation


# instance fields
.field final availabilityTimeOffsetUs:J

.field final duration:J

.field private final periodStartUnixTimeUs:J

.field final segmentTimeline:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/dash/manifest/SegmentBase$SegmentTimelineElement;",
            ">;"
        }
    .end annotation
.end field

.field final startNumber:J

.field private final timeShiftBufferDepthUs:J


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/dash/manifest/RangedUri;JJJJLjava/util/List;JJJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/dash/manifest/RangedUri;",
            "JJJJ",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/dash/manifest/SegmentBase$SegmentTimelineElement;",
            ">;JJJ)V"
        }
    .end annotation

    .line 1
    invoke-direct/range {p0 .. p5}, Landroidx/media3/exoplayer/dash/manifest/SegmentBase;-><init>(Landroidx/media3/exoplayer/dash/manifest/RangedUri;JJ)V

    .line 2
    .line 3
    .line 4
    iput-wide p6, p0, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->startNumber:J

    .line 5
    .line 6
    iput-wide p8, p0, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->duration:J

    .line 7
    .line 8
    iput-object p10, p0, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->segmentTimeline:Ljava/util/List;

    .line 9
    .line 10
    iput-wide p11, p0, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->availabilityTimeOffsetUs:J

    .line 11
    .line 12
    iput-wide p13, p0, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->timeShiftBufferDepthUs:J

    .line 13
    .line 14
    move-wide p1, p15

    .line 15
    iput-wide p1, p0, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->periodStartUnixTimeUs:J

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public getAvailableSegmentCount(JJ)J
    .locals 4

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->getSegmentCount(J)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, -0x1

    .line 6
    .line 7
    cmp-long v2, v0, v2

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    return-wide v0

    .line 12
    :cond_0
    iget-wide v0, p0, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->periodStartUnixTimeUs:J

    .line 13
    .line 14
    sub-long v0, p3, v0

    .line 15
    .line 16
    iget-wide v2, p0, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->availabilityTimeOffsetUs:J

    .line 17
    .line 18
    add-long/2addr v0, v2

    .line 19
    invoke-virtual {p0, v0, v1, p1, p2}, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->getSegmentNum(JJ)J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->getFirstAvailableSegmentNum(JJ)J

    .line 24
    .line 25
    .line 26
    move-result-wide p1

    .line 27
    sub-long/2addr v0, p1

    .line 28
    long-to-int p1, v0

    .line 29
    int-to-long p1, p1

    .line 30
    return-wide p1
.end method

.method public getFirstAvailableSegmentNum(JJ)J
    .locals 4

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->getSegmentCount(J)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, -0x1

    .line 6
    .line 7
    cmp-long v0, v0, v2

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iget-wide v0, p0, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->timeShiftBufferDepthUs:J

    .line 12
    .line 13
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    cmp-long v2, v0, v2

    .line 19
    .line 20
    if-nez v2, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-wide v2, p0, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->periodStartUnixTimeUs:J

    .line 24
    .line 25
    sub-long/2addr p3, v2

    .line 26
    sub-long/2addr p3, v0

    .line 27
    invoke-virtual {p0, p3, p4, p1, p2}, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->getSegmentNum(JJ)J

    .line 28
    .line 29
    .line 30
    move-result-wide p1

    .line 31
    invoke-virtual {p0}, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->getFirstSegmentNum()J

    .line 32
    .line 33
    .line 34
    move-result-wide p3

    .line 35
    invoke-static {p3, p4, p1, p2}, Ljava/lang/Math;->max(JJ)J

    .line 36
    .line 37
    .line 38
    move-result-wide p1

    .line 39
    return-wide p1

    .line 40
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->getFirstSegmentNum()J

    .line 41
    .line 42
    .line 43
    move-result-wide p1

    .line 44
    return-wide p1
.end method

.method public getFirstSegmentNum()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->startNumber:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getNextSegmentAvailableTimeUs(JJ)J
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->segmentTimeline:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    return-wide p1

    .line 11
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->getFirstAvailableSegmentNum(JJ)J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->getAvailableSegmentCount(JJ)J

    .line 16
    .line 17
    .line 18
    move-result-wide p3

    .line 19
    add-long/2addr p3, v0

    .line 20
    invoke-virtual {p0, p3, p4}, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->getSegmentTimeUs(J)J

    .line 21
    .line 22
    .line 23
    move-result-wide v0

    .line 24
    invoke-virtual {p0, p3, p4, p1, p2}, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->getSegmentDurationUs(JJ)J

    .line 25
    .line 26
    .line 27
    move-result-wide p1

    .line 28
    add-long/2addr p1, v0

    .line 29
    iget-wide p3, p0, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->availabilityTimeOffsetUs:J

    .line 30
    .line 31
    sub-long/2addr p1, p3

    .line 32
    return-wide p1
.end method

.method public abstract getSegmentCount(J)J
.end method

.method public final getSegmentDurationUs(JJ)J
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->segmentTimeline:Ljava/util/List;

    .line 2
    .line 3
    const-wide/32 v1, 0xf4240

    .line 4
    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-wide p3, p0, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->startNumber:J

    .line 9
    .line 10
    sub-long/2addr p1, p3

    .line 11
    long-to-int p1, p1

    .line 12
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$SegmentTimelineElement;

    .line 17
    .line 18
    iget-wide p1, p1, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$SegmentTimelineElement;->duration:J

    .line 19
    .line 20
    mul-long/2addr p1, v1

    .line 21
    iget-wide p3, p0, Landroidx/media3/exoplayer/dash/manifest/SegmentBase;->timescale:J

    .line 22
    .line 23
    div-long/2addr p1, p3

    .line 24
    return-wide p1

    .line 25
    :cond_0
    invoke-virtual {p0, p3, p4}, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->getSegmentCount(J)J

    .line 26
    .line 27
    .line 28
    move-result-wide v3

    .line 29
    const-wide/16 v5, -0x1

    .line 30
    .line 31
    cmp-long v0, v3, v5

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    invoke-virtual {p0}, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->getFirstSegmentNum()J

    .line 36
    .line 37
    .line 38
    move-result-wide v5

    .line 39
    add-long/2addr v5, v3

    .line 40
    const-wide/16 v3, 0x1

    .line 41
    .line 42
    sub-long/2addr v5, v3

    .line 43
    cmp-long v0, p1, v5

    .line 44
    .line 45
    if-nez v0, :cond_1

    .line 46
    .line 47
    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->getSegmentTimeUs(J)J

    .line 48
    .line 49
    .line 50
    move-result-wide p1

    .line 51
    sub-long/2addr p3, p1

    .line 52
    return-wide p3

    .line 53
    :cond_1
    iget-wide p1, p0, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->duration:J

    .line 54
    .line 55
    mul-long/2addr p1, v1

    .line 56
    iget-wide p3, p0, Landroidx/media3/exoplayer/dash/manifest/SegmentBase;->timescale:J

    .line 57
    .line 58
    div-long/2addr p1, p3

    .line 59
    return-wide p1
.end method

.method public getSegmentNum(JJ)J
    .locals 11

    .line 1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->getFirstSegmentNum()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-virtual {p0, p3, p4}, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->getSegmentCount(J)J

    .line 6
    .line 7
    .line 8
    move-result-wide p3

    .line 9
    const-wide/16 v2, 0x0

    .line 10
    .line 11
    cmp-long v2, p3, v2

    .line 12
    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v2, p0, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->segmentTimeline:Ljava/util/List;

    .line 17
    .line 18
    const-wide/16 v3, 0x1

    .line 19
    .line 20
    if-nez v2, :cond_3

    .line 21
    .line 22
    iget-wide v5, p0, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->duration:J

    .line 23
    .line 24
    const-wide/32 v7, 0xf4240

    .line 25
    .line 26
    .line 27
    mul-long/2addr v5, v7

    .line 28
    iget-wide v7, p0, Landroidx/media3/exoplayer/dash/manifest/SegmentBase;->timescale:J

    .line 29
    .line 30
    div-long/2addr v5, v7

    .line 31
    iget-wide v7, p0, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->startNumber:J

    .line 32
    .line 33
    div-long/2addr p1, v5

    .line 34
    add-long/2addr p1, v7

    .line 35
    cmp-long v2, p1, v0

    .line 36
    .line 37
    if-gez v2, :cond_1

    .line 38
    .line 39
    :goto_0
    return-wide v0

    .line 40
    :cond_1
    const-wide/16 v5, -0x1

    .line 41
    .line 42
    cmp-long v2, p3, v5

    .line 43
    .line 44
    if-nez v2, :cond_2

    .line 45
    .line 46
    return-wide p1

    .line 47
    :cond_2
    add-long/2addr v0, p3

    .line 48
    sub-long/2addr v0, v3

    .line 49
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 50
    .line 51
    .line 52
    move-result-wide p1

    .line 53
    return-wide p1

    .line 54
    :cond_3
    add-long/2addr p3, v0

    .line 55
    sub-long/2addr p3, v3

    .line 56
    move-wide v5, v0

    .line 57
    :goto_1
    cmp-long v2, v5, p3

    .line 58
    .line 59
    if-gtz v2, :cond_6

    .line 60
    .line 61
    sub-long v7, p3, v5

    .line 62
    .line 63
    const-wide/16 v9, 0x2

    .line 64
    .line 65
    div-long/2addr v7, v9

    .line 66
    add-long/2addr v7, v5

    .line 67
    invoke-virtual {p0, v7, v8}, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->getSegmentTimeUs(J)J

    .line 68
    .line 69
    .line 70
    move-result-wide v9

    .line 71
    cmp-long v2, v9, p1

    .line 72
    .line 73
    if-gez v2, :cond_4

    .line 74
    .line 75
    add-long v5, v7, v3

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_4
    if-lez v2, :cond_5

    .line 79
    .line 80
    sub-long/2addr v7, v3

    .line 81
    move-wide p3, v7

    .line 82
    goto :goto_1

    .line 83
    :cond_5
    return-wide v7

    .line 84
    :cond_6
    cmp-long p1, v5, v0

    .line 85
    .line 86
    if-nez p1, :cond_7

    .line 87
    .line 88
    return-wide v5

    .line 89
    :cond_7
    return-wide p3
.end method

.method public final getSegmentTimeUs(J)J
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->segmentTimeline:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-wide v1, p0, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->startNumber:J

    .line 6
    .line 7
    sub-long/2addr p1, v1

    .line 8
    long-to-int p1, p1

    .line 9
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$SegmentTimelineElement;

    .line 14
    .line 15
    iget-wide p1, p1, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$SegmentTimelineElement;->startTime:J

    .line 16
    .line 17
    iget-wide v0, p0, Landroidx/media3/exoplayer/dash/manifest/SegmentBase;->presentationTimeOffset:J

    .line 18
    .line 19
    sub-long/2addr p1, v0

    .line 20
    :goto_0
    move-wide v0, p1

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    iget-wide v0, p0, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->startNumber:J

    .line 23
    .line 24
    sub-long/2addr p1, v0

    .line 25
    iget-wide v0, p0, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->duration:J

    .line 26
    .line 27
    mul-long/2addr p1, v0

    .line 28
    goto :goto_0

    .line 29
    :goto_1
    const-wide/32 v2, 0xf4240

    .line 30
    .line 31
    .line 32
    iget-wide v4, p0, Landroidx/media3/exoplayer/dash/manifest/SegmentBase;->timescale:J

    .line 33
    .line 34
    invoke-static/range {v0 .. v5}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    .line 35
    .line 36
    .line 37
    move-result-wide p1

    .line 38
    return-wide p1
.end method

.method public abstract getSegmentUrl(Landroidx/media3/exoplayer/dash/manifest/Representation;J)Landroidx/media3/exoplayer/dash/manifest/RangedUri;
.end method

.method public isExplicit()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->segmentTimeline:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    return v0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    return v0
.end method
