.class public abstract Landroidx/media3/exoplayer/dash/manifest/SegmentBase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/dash/manifest/SegmentBase$SegmentTimelineElement;,
        Landroidx/media3/exoplayer/dash/manifest/SegmentBase$SegmentTemplate;,
        Landroidx/media3/exoplayer/dash/manifest/SegmentBase$SegmentList;,
        Landroidx/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;,
        Landroidx/media3/exoplayer/dash/manifest/SegmentBase$SingleSegmentBase;
    }
.end annotation


# instance fields
.field final initialization:Landroidx/media3/exoplayer/dash/manifest/RangedUri;

.field final presentationTimeOffset:J

.field final timescale:J


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/dash/manifest/RangedUri;JJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/dash/manifest/SegmentBase;->initialization:Landroidx/media3/exoplayer/dash/manifest/RangedUri;

    .line 5
    .line 6
    iput-wide p2, p0, Landroidx/media3/exoplayer/dash/manifest/SegmentBase;->timescale:J

    .line 7
    .line 8
    iput-wide p4, p0, Landroidx/media3/exoplayer/dash/manifest/SegmentBase;->presentationTimeOffset:J

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public getInitialization(Landroidx/media3/exoplayer/dash/manifest/Representation;)Landroidx/media3/exoplayer/dash/manifest/RangedUri;
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/media3/exoplayer/dash/manifest/SegmentBase;->initialization:Landroidx/media3/exoplayer/dash/manifest/RangedUri;

    .line 2
    .line 3
    return-object p1
.end method

.method public getPresentationTimeOffsetUs()J
    .locals 6

    .line 1
    iget-wide v0, p0, Landroidx/media3/exoplayer/dash/manifest/SegmentBase;->presentationTimeOffset:J

    .line 2
    .line 3
    const-wide/32 v2, 0xf4240

    .line 4
    .line 5
    .line 6
    iget-wide v4, p0, Landroidx/media3/exoplayer/dash/manifest/SegmentBase;->timescale:J

    .line 7
    .line 8
    invoke-static/range {v0 .. v5}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    return-wide v0
.end method
