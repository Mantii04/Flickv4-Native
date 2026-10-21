.class public final synthetic Landroidx/media3/exoplayer/video/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Landroidx/media3/exoplayer/video/VideoSink$Listener;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/video/VideoSink$Listener;I)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/media3/exoplayer/video/g;->b:I

    iput-object p1, p0, Landroidx/media3/exoplayer/video/g;->e:Landroidx/media3/exoplayer/video/VideoSink$Listener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/video/g;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/media3/exoplayer/video/g;->e:Landroidx/media3/exoplayer/video/VideoSink$Listener;

    invoke-interface {v0}, Landroidx/media3/exoplayer/video/VideoSink$Listener;->onFrameAvailableForRendering()V

    return-void

    :pswitch_0
    iget-object v0, p0, Landroidx/media3/exoplayer/video/g;->e:Landroidx/media3/exoplayer/video/VideoSink$Listener;

    invoke-interface {v0}, Landroidx/media3/exoplayer/video/VideoSink$Listener;->onFirstFrameRendered()V

    return-void

    :pswitch_1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/g;->e:Landroidx/media3/exoplayer/video/VideoSink$Listener;

    invoke-interface {v0}, Landroidx/media3/exoplayer/video/VideoSink$Listener;->onFrameDropped()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
