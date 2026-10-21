.class public final synthetic Landroidx/media3/exoplayer/offline/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/media3/exoplayer/offline/d;->b:I

    iput-object p1, p0, Landroidx/media3/exoplayer/offline/d;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/offline/d;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/media3/exoplayer/offline/d;->e:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/offline/DownloadManager;

    invoke-static {v0, p1}, Landroidx/media3/exoplayer/offline/DownloadManager;->b(Landroidx/media3/exoplayer/offline/DownloadManager;Landroid/os/Message;)Z

    move-result p1

    return p1

    :pswitch_0
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/d;->e:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/offline/DownloadHelper$MediaPreparer;

    invoke-static {v0, p1}, Landroidx/media3/exoplayer/offline/DownloadHelper$MediaPreparer;->a(Landroidx/media3/exoplayer/offline/DownloadHelper$MediaPreparer;Landroid/os/Message;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
