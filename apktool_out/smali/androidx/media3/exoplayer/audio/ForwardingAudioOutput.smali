.class public Landroidx/media3/exoplayer/audio/ForwardingAudioOutput;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/audio/AudioOutput;


# instance fields
.field private final audioOutput:Landroidx/media3/exoplayer/audio/AudioOutput;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/audio/AudioOutput;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/audio/ForwardingAudioOutput;->audioOutput:Landroidx/media3/exoplayer/audio/AudioOutput;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public addListener(Landroidx/media3/exoplayer/audio/AudioOutput$Listener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/ForwardingAudioOutput;->audioOutput:Landroidx/media3/exoplayer/audio/AudioOutput;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/audio/AudioOutput;->addListener(Landroidx/media3/exoplayer/audio/AudioOutput$Listener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public attachAuxEffect(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/ForwardingAudioOutput;->audioOutput:Landroidx/media3/exoplayer/audio/AudioOutput;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/audio/AudioOutput;->attachAuxEffect(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public flush()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/ForwardingAudioOutput;->audioOutput:Landroidx/media3/exoplayer/audio/AudioOutput;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/media3/exoplayer/audio/AudioOutput;->flush()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getAudioSessionId()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/ForwardingAudioOutput;->audioOutput:Landroidx/media3/exoplayer/audio/AudioOutput;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/media3/exoplayer/audio/AudioOutput;->getAudioSessionId()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getBufferSizeInFrames()J
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/ForwardingAudioOutput;->audioOutput:Landroidx/media3/exoplayer/audio/AudioOutput;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/media3/exoplayer/audio/AudioOutput;->getBufferSizeInFrames()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/ForwardingAudioOutput;->audioOutput:Landroidx/media3/exoplayer/audio/AudioOutput;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/media3/exoplayer/audio/AudioOutput;->getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getPositionUs()J
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/ForwardingAudioOutput;->audioOutput:Landroidx/media3/exoplayer/audio/AudioOutput;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/media3/exoplayer/audio/AudioOutput;->getPositionUs()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getSampleRate()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/ForwardingAudioOutput;->audioOutput:Landroidx/media3/exoplayer/audio/AudioOutput;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/media3/exoplayer/audio/AudioOutput;->getSampleRate()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isOffloadedPlayback()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/ForwardingAudioOutput;->audioOutput:Landroidx/media3/exoplayer/audio/AudioOutput;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/media3/exoplayer/audio/AudioOutput;->isOffloadedPlayback()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isStalled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/ForwardingAudioOutput;->audioOutput:Landroidx/media3/exoplayer/audio/AudioOutput;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/media3/exoplayer/audio/AudioOutput;->isStalled()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public pause()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/ForwardingAudioOutput;->audioOutput:Landroidx/media3/exoplayer/audio/AudioOutput;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/media3/exoplayer/audio/AudioOutput;->pause()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public play()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/ForwardingAudioOutput;->audioOutput:Landroidx/media3/exoplayer/audio/AudioOutput;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/media3/exoplayer/audio/AudioOutput;->play()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public release()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/ForwardingAudioOutput;->audioOutput:Landroidx/media3/exoplayer/audio/AudioOutput;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/media3/exoplayer/audio/AudioOutput;->release()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public removeListener(Landroidx/media3/exoplayer/audio/AudioOutput$Listener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/ForwardingAudioOutput;->audioOutput:Landroidx/media3/exoplayer/audio/AudioOutput;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/audio/AudioOutput;->removeListener(Landroidx/media3/exoplayer/audio/AudioOutput$Listener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setAuxEffectSendLevel(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/ForwardingAudioOutput;->audioOutput:Landroidx/media3/exoplayer/audio/AudioOutput;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/audio/AudioOutput;->setAuxEffectSendLevel(F)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setOffloadDelayPadding(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/ForwardingAudioOutput;->audioOutput:Landroidx/media3/exoplayer/audio/AudioOutput;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Landroidx/media3/exoplayer/audio/AudioOutput;->setOffloadDelayPadding(II)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setOffloadEndOfStream()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/ForwardingAudioOutput;->audioOutput:Landroidx/media3/exoplayer/audio/AudioOutput;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/media3/exoplayer/audio/AudioOutput;->setOffloadEndOfStream()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/ForwardingAudioOutput;->audioOutput:Landroidx/media3/exoplayer/audio/AudioOutput;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/audio/AudioOutput;->setPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setPlayerId(Landroidx/media3/exoplayer/analytics/PlayerId;)V
    .locals 1
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/ForwardingAudioOutput;->audioOutput:Landroidx/media3/exoplayer/audio/AudioOutput;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/audio/AudioOutput;->setPlayerId(Landroidx/media3/exoplayer/analytics/PlayerId;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setPreferredDevice(Landroid/media/AudioDeviceInfo;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/ForwardingAudioOutput;->audioOutput:Landroidx/media3/exoplayer/audio/AudioOutput;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/audio/AudioOutput;->setPreferredDevice(Landroid/media/AudioDeviceInfo;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setVolume(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/ForwardingAudioOutput;->audioOutput:Landroidx/media3/exoplayer/audio/AudioOutput;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/audio/AudioOutput;->setVolume(F)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public stop()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/ForwardingAudioOutput;->audioOutput:Landroidx/media3/exoplayer/audio/AudioOutput;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/media3/exoplayer/audio/AudioOutput;->stop()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public write(Ljava/nio/ByteBuffer;IJ)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/audio/AudioOutput$WriteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/ForwardingAudioOutput;->audioOutput:Landroidx/media3/exoplayer/audio/AudioOutput;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/audio/AudioOutput;->write(Ljava/nio/ByteBuffer;IJ)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method
