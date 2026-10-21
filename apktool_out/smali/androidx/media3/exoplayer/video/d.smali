.class public final synthetic Landroidx/media3/exoplayer/video/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Landroidx/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;I)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/media3/exoplayer/video/d;->b:I

    iput-object p1, p0, Landroidx/media3/exoplayer/video/d;->e:Landroidx/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/video/d;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/media3/exoplayer/video/d;->e:Landroidx/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;

    invoke-static {v0}, Landroidx/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;->b(Landroidx/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Landroidx/media3/exoplayer/video/d;->e:Landroidx/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;

    invoke-static {v0}, Landroidx/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;->a(Landroidx/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
