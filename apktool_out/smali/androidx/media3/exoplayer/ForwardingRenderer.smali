.class public Landroidx/media3/exoplayer/ForwardingRenderer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/Renderer;


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation


# instance fields
.field private final renderer:Landroidx/media3/exoplayer/Renderer;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/Renderer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/ForwardingRenderer;->renderer:Landroidx/media3/exoplayer/Renderer;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public disable()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/ForwardingRenderer;->renderer:Landroidx/media3/exoplayer/Renderer;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/media3/exoplayer/Renderer;->disable()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public enable(Landroidx/media3/exoplayer/RendererConfiguration;[Landroidx/media3/common/Format;Landroidx/media3/exoplayer/source/SampleStream;JZZJJLandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/ForwardingRenderer;->renderer:Landroidx/media3/exoplayer/Renderer;

    .line 2
    .line 3
    move-object v1, p1

    .line 4
    move-object v2, p2

    .line 5
    move-object/from16 v3, p3

    .line 6
    .line 7
    move-wide/from16 v4, p4

    .line 8
    .line 9
    move/from16 v6, p6

    .line 10
    .line 11
    move/from16 v7, p7

    .line 12
    .line 13
    move-wide/from16 v8, p8

    .line 14
    .line 15
    move-wide/from16 v10, p10

    .line 16
    .line 17
    move-object/from16 v12, p12

    .line 18
    .line 19
    invoke-interface/range {v0 .. v12}, Landroidx/media3/exoplayer/Renderer;->enable(Landroidx/media3/exoplayer/RendererConfiguration;[Landroidx/media3/common/Format;Landroidx/media3/exoplayer/source/SampleStream;JZZJJLandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public enableMayRenderStartOfStream()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/ForwardingRenderer;->renderer:Landroidx/media3/exoplayer/Renderer;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/media3/exoplayer/Renderer;->enableMayRenderStartOfStream()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getCapabilities()Landroidx/media3/exoplayer/RendererCapabilities;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/ForwardingRenderer;->renderer:Landroidx/media3/exoplayer/Renderer;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/media3/exoplayer/Renderer;->getCapabilities()Landroidx/media3/exoplayer/RendererCapabilities;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getDurationToProgressUs(JJ)J
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/ForwardingRenderer;->renderer:Landroidx/media3/exoplayer/Renderer;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/Renderer;->getDurationToProgressUs(JJ)J

    .line 4
    .line 5
    .line 6
    move-result-wide p1

    .line 7
    return-wide p1
.end method

.method public getMediaClock()Landroidx/media3/exoplayer/MediaClock;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/ForwardingRenderer;->renderer:Landroidx/media3/exoplayer/Renderer;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/media3/exoplayer/Renderer;->getMediaClock()Landroidx/media3/exoplayer/MediaClock;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/ForwardingRenderer;->renderer:Landroidx/media3/exoplayer/Renderer;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/media3/exoplayer/Renderer;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getReadingPositionUs()J
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/ForwardingRenderer;->renderer:Landroidx/media3/exoplayer/Renderer;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/media3/exoplayer/Renderer;->getReadingPositionUs()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getState()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/ForwardingRenderer;->renderer:Landroidx/media3/exoplayer/Renderer;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/media3/exoplayer/Renderer;->getState()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getStream()Landroidx/media3/exoplayer/source/SampleStream;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/ForwardingRenderer;->renderer:Landroidx/media3/exoplayer/Renderer;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/media3/exoplayer/Renderer;->getStream()Landroidx/media3/exoplayer/source/SampleStream;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getTrackType()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/ForwardingRenderer;->renderer:Landroidx/media3/exoplayer/Renderer;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/media3/exoplayer/Renderer;->getTrackType()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/ForwardingRenderer;->renderer:Landroidx/media3/exoplayer/Renderer;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Landroidx/media3/exoplayer/PlayerMessage$Target;->handleMessage(ILjava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public hasReadStreamToEnd()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/ForwardingRenderer;->renderer:Landroidx/media3/exoplayer/Renderer;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/media3/exoplayer/Renderer;->hasReadStreamToEnd()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public init(ILandroidx/media3/exoplayer/analytics/PlayerId;Landroidx/media3/common/util/Clock;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/ForwardingRenderer;->renderer:Landroidx/media3/exoplayer/Renderer;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3}, Landroidx/media3/exoplayer/Renderer;->init(ILandroidx/media3/exoplayer/analytics/PlayerId;Landroidx/media3/common/util/Clock;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public isCurrentStreamFinal()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/ForwardingRenderer;->renderer:Landroidx/media3/exoplayer/Renderer;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/media3/exoplayer/Renderer;->isCurrentStreamFinal()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isEnded()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/ForwardingRenderer;->renderer:Landroidx/media3/exoplayer/Renderer;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/media3/exoplayer/Renderer;->isEnded()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isReady()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/ForwardingRenderer;->renderer:Landroidx/media3/exoplayer/Renderer;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/media3/exoplayer/Renderer;->isReady()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public maybeThrowStreamError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/ForwardingRenderer;->renderer:Landroidx/media3/exoplayer/Renderer;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/media3/exoplayer/Renderer;->maybeThrowStreamError()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public release()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/ForwardingRenderer;->renderer:Landroidx/media3/exoplayer/Renderer;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/media3/exoplayer/Renderer;->release()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public render(JJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/ForwardingRenderer;->renderer:Landroidx/media3/exoplayer/Renderer;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/Renderer;->render(JJ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public replaceStream([Landroidx/media3/common/Format;Landroidx/media3/exoplayer/source/SampleStream;JJLandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/ForwardingRenderer;->renderer:Landroidx/media3/exoplayer/Renderer;

    .line 2
    .line 3
    move-object v1, p1

    .line 4
    move-object v2, p2

    .line 5
    move-wide v3, p3

    .line 6
    move-wide v5, p5

    .line 7
    move-object v7, p7

    .line 8
    invoke-interface/range {v0 .. v7}, Landroidx/media3/exoplayer/Renderer;->replaceStream([Landroidx/media3/common/Format;Landroidx/media3/exoplayer/source/SampleStream;JJLandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public reset()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/ForwardingRenderer;->renderer:Landroidx/media3/exoplayer/Renderer;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/media3/exoplayer/Renderer;->reset()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public resetPosition(JZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/ForwardingRenderer;->renderer:Landroidx/media3/exoplayer/Renderer;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3}, Landroidx/media3/exoplayer/Renderer;->resetPosition(JZ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setCurrentStreamFinal()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/ForwardingRenderer;->renderer:Landroidx/media3/exoplayer/Renderer;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/media3/exoplayer/Renderer;->setCurrentStreamFinal()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setPlaybackSpeed(FF)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/ForwardingRenderer;->renderer:Landroidx/media3/exoplayer/Renderer;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Landroidx/media3/exoplayer/Renderer;->setPlaybackSpeed(FF)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setTimeline(Landroidx/media3/common/Timeline;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/ForwardingRenderer;->renderer:Landroidx/media3/exoplayer/Renderer;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/Renderer;->setTimeline(Landroidx/media3/common/Timeline;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public start()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/ForwardingRenderer;->renderer:Landroidx/media3/exoplayer/Renderer;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/media3/exoplayer/Renderer;->start()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public stop()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/ForwardingRenderer;->renderer:Landroidx/media3/exoplayer/Renderer;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/media3/exoplayer/Renderer;->stop()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public supportsResetPositionWithoutKeyFrameReset(J)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/ForwardingRenderer;->renderer:Landroidx/media3/exoplayer/Renderer;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Landroidx/media3/exoplayer/Renderer;->supportsResetPositionWithoutKeyFrameReset(J)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method
