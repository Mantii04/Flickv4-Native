.class Landroidx/media3/exoplayer/DefaultRendererCapabilitiesList$Factory$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/audio/AudioRendererEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media3/exoplayer/DefaultRendererCapabilitiesList$Factory;->createRendererCapabilitiesList()Landroidx/media3/exoplayer/DefaultRendererCapabilitiesList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media3/exoplayer/DefaultRendererCapabilitiesList$Factory;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/DefaultRendererCapabilitiesList$Factory;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/exoplayer/DefaultRendererCapabilitiesList$Factory$2;->this$0:Landroidx/media3/exoplayer/DefaultRendererCapabilitiesList$Factory;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final synthetic onAudioCodecError(Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/audio/c;->a(Landroidx/media3/exoplayer/audio/AudioRendererEventListener;Ljava/lang/Exception;)V

    return-void
.end method

.method public final synthetic onAudioCodecParametersChanged(Landroidx/media3/exoplayer/CodecParameters;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/audio/c;->b(Landroidx/media3/exoplayer/audio/AudioRendererEventListener;Landroidx/media3/exoplayer/CodecParameters;)V

    return-void
.end method

.method public final synthetic onAudioDecoderInitialized(Ljava/lang/String;JJ)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Landroidx/media3/exoplayer/audio/c;->c(Landroidx/media3/exoplayer/audio/AudioRendererEventListener;Ljava/lang/String;JJ)V

    return-void
.end method

.method public final synthetic onAudioDecoderReleased(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/audio/c;->d(Landroidx/media3/exoplayer/audio/AudioRendererEventListener;Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic onAudioDisabled(Landroidx/media3/exoplayer/DecoderCounters;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/audio/c;->e(Landroidx/media3/exoplayer/audio/AudioRendererEventListener;Landroidx/media3/exoplayer/DecoderCounters;)V

    return-void
.end method

.method public final synthetic onAudioEnabled(Landroidx/media3/exoplayer/DecoderCounters;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/audio/c;->f(Landroidx/media3/exoplayer/audio/AudioRendererEventListener;Landroidx/media3/exoplayer/DecoderCounters;)V

    return-void
.end method

.method public final synthetic onAudioInputFormatChanged(Landroidx/media3/common/Format;Landroidx/media3/exoplayer/DecoderReuseEvaluation;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/media3/exoplayer/audio/c;->g(Landroidx/media3/exoplayer/audio/AudioRendererEventListener;Landroidx/media3/common/Format;Landroidx/media3/exoplayer/DecoderReuseEvaluation;)V

    return-void
.end method

.method public final synthetic onAudioPositionAdvancing(J)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/media3/exoplayer/audio/c;->h(Landroidx/media3/exoplayer/audio/AudioRendererEventListener;J)V

    return-void
.end method

.method public final synthetic onAudioSessionIdChanged(I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/audio/c;->i(Landroidx/media3/exoplayer/audio/AudioRendererEventListener;I)V

    return-void
.end method

.method public final synthetic onAudioSinkError(Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/audio/c;->j(Landroidx/media3/exoplayer/audio/AudioRendererEventListener;Ljava/lang/Exception;)V

    return-void
.end method

.method public final synthetic onAudioTrackInitialized(Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/audio/c;->k(Landroidx/media3/exoplayer/audio/AudioRendererEventListener;Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;)V

    return-void
.end method

.method public final synthetic onAudioTrackReleased(Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/audio/c;->l(Landroidx/media3/exoplayer/audio/AudioRendererEventListener;Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;)V

    return-void
.end method

.method public final synthetic onAudioUnderrun(IJJ)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Landroidx/media3/exoplayer/audio/c;->m(Landroidx/media3/exoplayer/audio/AudioRendererEventListener;IJJ)V

    return-void
.end method

.method public final synthetic onSkipSilenceEnabledChanged(Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/audio/c;->n(Landroidx/media3/exoplayer/audio/AudioRendererEventListener;Z)V

    return-void
.end method
