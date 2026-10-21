.class final Landroidx/media3/exoplayer/source/MergingMediaPeriod$MergingMediaPeriodTrackSelection;
.super Landroidx/media3/exoplayer/trackselection/ForwardingTrackSelection;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/source/MergingMediaPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MergingMediaPeriodTrackSelection"
.end annotation


# instance fields
.field private final trackGroup:Landroidx/media3/common/TrackGroup;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;Landroidx/media3/common/TrackGroup;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/trackselection/ForwardingTrackSelection;-><init>(Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod$MergingMediaPeriodTrackSelection;->trackGroup:Landroidx/media3/common/TrackGroup;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/media3/exoplayer/trackselection/ForwardingTrackSelection;->equals(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    instance-of v0, p1, Landroidx/media3/exoplayer/source/MergingMediaPeriod$MergingMediaPeriodTrackSelection;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    check-cast p1, Landroidx/media3/exoplayer/source/MergingMediaPeriod$MergingMediaPeriodTrackSelection;

    .line 13
    .line 14
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod$MergingMediaPeriodTrackSelection;->trackGroup:Landroidx/media3/common/TrackGroup;

    .line 15
    .line 16
    iget-object p1, p1, Landroidx/media3/exoplayer/source/MergingMediaPeriod$MergingMediaPeriodTrackSelection;->trackGroup:Landroidx/media3/common/TrackGroup;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Landroidx/media3/common/TrackGroup;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    return p1

    .line 23
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 24
    return p1
.end method

.method public getFormat(I)Landroidx/media3/common/Format;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod$MergingMediaPeriodTrackSelection;->trackGroup:Landroidx/media3/common/TrackGroup;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/media3/exoplayer/trackselection/ForwardingTrackSelection;->getWrappedInstance()Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v1, p1}, Landroidx/media3/exoplayer/trackselection/TrackSelection;->getIndexInTrackGroup(I)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    invoke-virtual {v0, p1}, Landroidx/media3/common/TrackGroup;->getFormat(I)Landroidx/media3/common/Format;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method public getSelectedFormat()Landroidx/media3/common/Format;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod$MergingMediaPeriodTrackSelection;->trackGroup:Landroidx/media3/common/TrackGroup;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/media3/exoplayer/trackselection/ForwardingTrackSelection;->getWrappedInstance()Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v1}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->getSelectedIndexInTrackGroup()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-virtual {v0, v1}, Landroidx/media3/common/TrackGroup;->getFormat(I)Landroidx/media3/common/Format;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public getTrackGroup()Landroidx/media3/common/TrackGroup;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod$MergingMediaPeriodTrackSelection;->trackGroup:Landroidx/media3/common/TrackGroup;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/media3/exoplayer/trackselection/ForwardingTrackSelection;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    mul-int/lit8 v0, v0, 0x1f

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod$MergingMediaPeriodTrackSelection;->trackGroup:Landroidx/media3/common/TrackGroup;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroidx/media3/common/TrackGroup;->hashCode()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    add-int/2addr v1, v0

    .line 14
    return v1
.end method

.method public indexOf(Landroidx/media3/common/Format;)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/trackselection/ForwardingTrackSelection;->getWrappedInstance()Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod$MergingMediaPeriodTrackSelection;->trackGroup:Landroidx/media3/common/TrackGroup;

    .line 6
    .line 7
    invoke-virtual {v1, p1}, Landroidx/media3/common/TrackGroup;->indexOf(Landroidx/media3/common/Format;)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/trackselection/TrackSelection;->indexOf(I)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1
.end method
