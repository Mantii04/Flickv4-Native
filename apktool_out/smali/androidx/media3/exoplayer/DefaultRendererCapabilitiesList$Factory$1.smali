.class Landroidx/media3/exoplayer/DefaultRendererCapabilitiesList$Factory$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/video/VideoRendererEventListener;


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
    iput-object p1, p0, Landroidx/media3/exoplayer/DefaultRendererCapabilitiesList$Factory$1;->this$0:Landroidx/media3/exoplayer/DefaultRendererCapabilitiesList$Factory;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final synthetic onDroppedFrames(IJ)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/media3/exoplayer/video/j;->a(Landroidx/media3/exoplayer/video/VideoRendererEventListener;IJ)V

    return-void
.end method

.method public final synthetic onRenderedFirstFrame(Ljava/lang/Object;J)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/media3/exoplayer/video/j;->b(Landroidx/media3/exoplayer/video/VideoRendererEventListener;Ljava/lang/Object;J)V

    return-void
.end method

.method public final synthetic onVideoCodecError(Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/video/j;->c(Landroidx/media3/exoplayer/video/VideoRendererEventListener;Ljava/lang/Exception;)V

    return-void
.end method

.method public final synthetic onVideoCodecParametersChanged(Landroidx/media3/exoplayer/CodecParameters;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/video/j;->d(Landroidx/media3/exoplayer/video/VideoRendererEventListener;Landroidx/media3/exoplayer/CodecParameters;)V

    return-void
.end method

.method public final synthetic onVideoDecoderInitialized(Ljava/lang/String;JJ)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Landroidx/media3/exoplayer/video/j;->e(Landroidx/media3/exoplayer/video/VideoRendererEventListener;Ljava/lang/String;JJ)V

    return-void
.end method

.method public final synthetic onVideoDecoderReleased(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/video/j;->f(Landroidx/media3/exoplayer/video/VideoRendererEventListener;Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic onVideoDisabled(Landroidx/media3/exoplayer/DecoderCounters;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/video/j;->g(Landroidx/media3/exoplayer/video/VideoRendererEventListener;Landroidx/media3/exoplayer/DecoderCounters;)V

    return-void
.end method

.method public final synthetic onVideoEnabled(Landroidx/media3/exoplayer/DecoderCounters;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/video/j;->h(Landroidx/media3/exoplayer/video/VideoRendererEventListener;Landroidx/media3/exoplayer/DecoderCounters;)V

    return-void
.end method

.method public final synthetic onVideoFrameProcessingOffset(JI)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/media3/exoplayer/video/j;->i(Landroidx/media3/exoplayer/video/VideoRendererEventListener;JI)V

    return-void
.end method

.method public final synthetic onVideoInputFormatChanged(Landroidx/media3/common/Format;Landroidx/media3/exoplayer/DecoderReuseEvaluation;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/media3/exoplayer/video/j;->j(Landroidx/media3/exoplayer/video/VideoRendererEventListener;Landroidx/media3/common/Format;Landroidx/media3/exoplayer/DecoderReuseEvaluation;)V

    return-void
.end method

.method public final synthetic onVideoSizeChanged(Landroidx/media3/common/VideoSize;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/video/j;->k(Landroidx/media3/exoplayer/video/VideoRendererEventListener;Landroidx/media3/common/VideoSize;)V

    return-void
.end method
