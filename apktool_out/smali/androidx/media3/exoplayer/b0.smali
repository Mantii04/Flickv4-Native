.class public final synthetic Landroidx/media3/exoplayer/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LP3/p;


# instance fields
.field public final synthetic a:Landroidx/media3/exoplayer/StreamVolumeManager;

.field public final synthetic b:I

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/StreamVolumeManager;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/b0;->a:Landroidx/media3/exoplayer/StreamVolumeManager;

    iput p2, p0, Landroidx/media3/exoplayer/b0;->b:I

    iput p3, p0, Landroidx/media3/exoplayer/b0;->c:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;

    iget-object v0, p0, Landroidx/media3/exoplayer/b0;->a:Landroidx/media3/exoplayer/StreamVolumeManager;

    iget v1, p0, Landroidx/media3/exoplayer/b0;->b:I

    iget v2, p0, Landroidx/media3/exoplayer/b0;->c:I

    invoke-static {v0, v1, v2, p1}, Landroidx/media3/exoplayer/StreamVolumeManager;->g(Landroidx/media3/exoplayer/StreamVolumeManager;IILandroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;)Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;

    move-result-object p1

    return-object p1
.end method
