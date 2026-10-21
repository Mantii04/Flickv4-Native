.class public final Landroidx/media3/exoplayer/dash/DashWrappingSegmentIndex;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/dash/DashSegmentIndex;


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation


# instance fields
.field private final chunkIndex:Lv0/r;

.field private final timeOffsetUs:J


# direct methods
.method public constructor <init>(Lv0/r;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/dash/DashWrappingSegmentIndex;->chunkIndex:Lv0/r;

    .line 5
    .line 6
    iput-wide p2, p0, Landroidx/media3/exoplayer/dash/DashWrappingSegmentIndex;->timeOffsetUs:J

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getAvailableSegmentCount(JJ)J
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/media3/exoplayer/dash/DashWrappingSegmentIndex;->chunkIndex:Lv0/r;

    .line 2
    .line 3
    iget p1, p1, Lv0/r;->a:I

    .line 4
    .line 5
    int-to-long p1, p1

    .line 6
    return-wide p1
.end method

.method public getDurationUs(JJ)J
    .locals 0

    .line 1
    iget-object p3, p0, Landroidx/media3/exoplayer/dash/DashWrappingSegmentIndex;->chunkIndex:Lv0/r;

    .line 2
    .line 3
    iget-object p3, p3, Lv0/r;->d:[J

    .line 4
    .line 5
    long-to-int p1, p1

    .line 6
    aget-wide p1, p3, p1

    .line 7
    .line 8
    return-wide p1
.end method

.method public getFirstAvailableSegmentNum(JJ)J
    .locals 0

    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public getFirstSegmentNum()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getNextSegmentAvailableTimeUs(JJ)J
    .locals 0

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    return-wide p1
.end method

.method public getSegmentCount(J)J
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/media3/exoplayer/dash/DashWrappingSegmentIndex;->chunkIndex:Lv0/r;

    .line 2
    .line 3
    iget p1, p1, Lv0/r;->a:I

    .line 4
    .line 5
    int-to-long p1, p1

    .line 6
    return-wide p1
.end method

.method public getSegmentNum(JJ)J
    .locals 2

    .line 1
    iget-object p3, p0, Landroidx/media3/exoplayer/dash/DashWrappingSegmentIndex;->chunkIndex:Lv0/r;

    .line 2
    .line 3
    iget-wide v0, p0, Landroidx/media3/exoplayer/dash/DashWrappingSegmentIndex;->timeOffsetUs:J

    .line 4
    .line 5
    add-long/2addr p1, v0

    .line 6
    invoke-virtual {p3, p1, p2}, Lv0/r;->getChunkIndex(J)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    int-to-long p1, p1

    .line 11
    return-wide p1
.end method

.method public getSegmentUrl(J)Landroidx/media3/exoplayer/dash/manifest/RangedUri;
    .locals 6

    .line 1
    new-instance v0, Landroidx/media3/exoplayer/dash/manifest/RangedUri;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media3/exoplayer/dash/DashWrappingSegmentIndex;->chunkIndex:Lv0/r;

    .line 4
    .line 5
    iget-object v2, v1, Lv0/r;->c:[J

    .line 6
    .line 7
    long-to-int p1, p1

    .line 8
    aget-wide v3, v2, p1

    .line 9
    .line 10
    iget-object p2, v1, Lv0/r;->b:[I

    .line 11
    .line 12
    aget p1, p2, p1

    .line 13
    .line 14
    int-to-long p1, p1

    .line 15
    const/4 v1, 0x0

    .line 16
    move-wide v2, v3

    .line 17
    move-wide v4, p1

    .line 18
    invoke-direct/range {v0 .. v5}, Landroidx/media3/exoplayer/dash/manifest/RangedUri;-><init>(Ljava/lang/String;JJ)V

    .line 19
    .line 20
    .line 21
    return-object v0
.end method

.method public getTimeUs(J)J
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/DashWrappingSegmentIndex;->chunkIndex:Lv0/r;

    .line 2
    .line 3
    iget-object v0, v0, Lv0/r;->e:[J

    .line 4
    .line 5
    long-to-int p1, p1

    .line 6
    aget-wide p1, v0, p1

    .line 7
    .line 8
    iget-wide v0, p0, Landroidx/media3/exoplayer/dash/DashWrappingSegmentIndex;->timeOffsetUs:J

    .line 9
    .line 10
    sub-long/2addr p1, v0

    .line 11
    return-wide p1
.end method

.method public isExplicit()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
