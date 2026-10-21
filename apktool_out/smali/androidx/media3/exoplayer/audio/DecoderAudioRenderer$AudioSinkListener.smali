.class final Landroidx/media3/exoplayer/audio/DecoderAudioRenderer$AudioSinkListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/audio/AudioSink$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AudioSinkListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;


# direct methods
.method private constructor <init>(Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer$AudioSinkListener;->this$0:Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;Landroidx/media3/exoplayer/audio/DecoderAudioRenderer$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer$AudioSinkListener;-><init>(Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;)V

    return-void
.end method


# virtual methods
.method public onAudioCapabilitiesChanged()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer$AudioSinkListener;->this$0:Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->access$400(Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onAudioSessionIdChanged(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer$AudioSinkListener;->this$0:Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->access$300(Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;)Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;->audioSessionIdChanged(I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onAudioSinkError(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    const-string v0, "DecoderAudioRenderer"

    .line 2
    .line 3
    const-string v1, "Audio sink error"

    .line 4
    .line 5
    invoke-static {v0, v1, p1}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer$AudioSinkListener;->this$0:Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;

    .line 9
    .line 10
    invoke-static {v0}, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->access$300(Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;)Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;->audioSinkError(Ljava/lang/Exception;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public onAudioTrackInitialized(Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer$AudioSinkListener;->this$0:Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->access$300(Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;)Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;->audioTrackInitialized(Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onAudioTrackReleased(Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer$AudioSinkListener;->this$0:Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->access$300(Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;)Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;->audioTrackReleased(Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final synthetic onOffloadBufferEmptying()V
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/media3/exoplayer/audio/l;->f(Landroidx/media3/exoplayer/audio/AudioSink$Listener;)V

    return-void
.end method

.method public final synthetic onOffloadBufferFull()V
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/media3/exoplayer/audio/l;->g(Landroidx/media3/exoplayer/audio/AudioSink$Listener;)V

    return-void
.end method

.method public onPositionAdvancing(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer$AudioSinkListener;->this$0:Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->access$202(Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;Z)Z

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer$AudioSinkListener;->this$0:Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;

    .line 8
    .line 9
    invoke-static {v0}, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->access$300(Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;)Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1, p2}, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;->positionAdvancing(J)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public onPositionDiscontinuity()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer$AudioSinkListener;->this$0:Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->onPositionDiscontinuity()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onSilenceSkipped()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer$AudioSinkListener;->this$0:Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->access$102(Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;Z)Z

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onSkipSilenceEnabledChanged(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer$AudioSinkListener;->this$0:Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->access$300(Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;)Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;->skipSilenceEnabledChanged(Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onUnderrun(IJJ)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer$AudioSinkListener;->this$0:Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->access$300(Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;)Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    move v2, p1

    .line 8
    move-wide v3, p2

    .line 9
    move-wide v5, p4

    .line 10
    invoke-virtual/range {v1 .. v6}, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;->underrun(IJJ)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
