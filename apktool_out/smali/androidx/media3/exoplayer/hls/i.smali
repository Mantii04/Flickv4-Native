.class public final synthetic Landroidx/media3/exoplayer/hls/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/util/Consumer;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:I

.field public final synthetic j:I

.field public final synthetic m:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;III)V
    .locals 0

    .line 1
    iput p5, p0, Landroidx/media3/exoplayer/hls/i;->b:I

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/i;->m:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/media3/exoplayer/hls/i;->e:Ljava/lang/Object;

    iput p3, p0, Landroidx/media3/exoplayer/hls/i;->f:I

    iput p4, p0, Landroidx/media3/exoplayer/hls/i;->j:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/hls/i;->b:I

    check-cast p1, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$Listener;

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/i;->m:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource;

    iget-object v1, p0, Landroidx/media3/exoplayer/hls/i;->e:Ljava/lang/Object;

    iget v2, p0, Landroidx/media3/exoplayer/hls/i;->f:I

    iget v3, p0, Landroidx/media3/exoplayer/hls/i;->j:I

    invoke-static {v0, v1, v2, v3, p1}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->c(Landroidx/media3/exoplayer/source/ads/AdsMediaSource;Ljava/lang/Object;IILandroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$Listener;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/i;->e:Ljava/lang/Object;

    iget v1, p0, Landroidx/media3/exoplayer/hls/i;->f:I

    iget-object v2, p0, Landroidx/media3/exoplayer/hls/i;->m:Ljava/lang/Object;

    check-cast v2, Landroidx/media3/common/MediaItem;

    iget v3, p0, Landroidx/media3/exoplayer/hls/i;->j:I

    invoke-static {v2, v0, v1, v3, p1}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$PlayerListener;->b(Landroidx/media3/common/MediaItem;Ljava/lang/Object;IILandroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$Listener;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
