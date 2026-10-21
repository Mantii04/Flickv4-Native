.class public final synthetic Landroidx/media3/exoplayer/offline/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/exoplayer/offline/h;->b:I

    iput-object p2, p0, Landroidx/media3/exoplayer/offline/h;->e:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/media3/exoplayer/offline/h;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/offline/h;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/media3/exoplayer/offline/h;->e:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/offline/DownloadHelper;

    iget-object v1, p0, Landroidx/media3/exoplayer/offline/h;->f:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/exoplayer/offline/DownloadHelper$Callback;

    invoke-static {v0, v1}, Landroidx/media3/exoplayer/offline/DownloadHelper;->e(Landroidx/media3/exoplayer/offline/DownloadHelper;Landroidx/media3/exoplayer/offline/DownloadHelper$Callback;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/h;->e:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/offline/DownloadHelper;

    iget-object v1, p0, Landroidx/media3/exoplayer/offline/h;->f:Ljava/lang/Object;

    check-cast v1, Ljava/io/IOException;

    invoke-static {v0, v1}, Landroidx/media3/exoplayer/offline/DownloadHelper;->b(Landroidx/media3/exoplayer/offline/DownloadHelper;Ljava/io/IOException;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/h;->e:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/offline/DownloadService$DownloadManagerHelper;

    iget-object v1, p0, Landroidx/media3/exoplayer/offline/h;->f:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/exoplayer/offline/DownloadService;

    invoke-static {v0, v1}, Landroidx/media3/exoplayer/offline/DownloadService$DownloadManagerHelper;->a(Landroidx/media3/exoplayer/offline/DownloadService$DownloadManagerHelper;Landroidx/media3/exoplayer/offline/DownloadService;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
