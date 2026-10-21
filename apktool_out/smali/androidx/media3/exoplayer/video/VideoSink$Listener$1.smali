.class Landroidx/media3/exoplayer/video/VideoSink$Listener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/video/VideoSink$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/video/VideoSink$Listener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final synthetic onError(Landroidx/media3/exoplayer/video/VideoSink$VideoSinkException;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/video/n;->a(Landroidx/media3/exoplayer/video/VideoSink$Listener;Landroidx/media3/exoplayer/video/VideoSink$VideoSinkException;)V

    return-void
.end method

.method public final synthetic onFirstFrameRendered()V
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/media3/exoplayer/video/n;->b(Landroidx/media3/exoplayer/video/VideoSink$Listener;)V

    return-void
.end method

.method public final synthetic onFrameAvailableForRendering()V
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/media3/exoplayer/video/n;->c(Landroidx/media3/exoplayer/video/VideoSink$Listener;)V

    return-void
.end method

.method public final synthetic onFrameDropped()V
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/media3/exoplayer/video/n;->d(Landroidx/media3/exoplayer/video/VideoSink$Listener;)V

    return-void
.end method

.method public final synthetic onVideoSizeChanged(Landroidx/media3/common/VideoSize;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/video/n;->e(Landroidx/media3/exoplayer/video/VideoSink$Listener;Landroidx/media3/common/VideoSize;)V

    return-void
.end method
