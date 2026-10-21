.class public final synthetic Landroidx/media3/exoplayer/hls/j;
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

.field public final synthetic n:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;IILjava/lang/Object;I)V
    .locals 0

    .line 1
    iput p6, p0, Landroidx/media3/exoplayer/hls/j;->b:I

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/j;->m:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/media3/exoplayer/hls/j;->e:Ljava/lang/Object;

    iput p3, p0, Landroidx/media3/exoplayer/hls/j;->f:I

    iput p4, p0, Landroidx/media3/exoplayer/hls/j;->j:I

    iput-object p5, p0, Landroidx/media3/exoplayer/hls/j;->n:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 13

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/hls/j;->b:I

    packed-switch v0, :pswitch_data_0

    move-object v6, p1

    check-cast v6, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$Listener;

    iget-object p1, p0, Landroidx/media3/exoplayer/hls/j;->m:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Landroidx/media3/exoplayer/source/ads/AdsMediaSource;

    iget v3, p0, Landroidx/media3/exoplayer/hls/j;->f:I

    iget v4, p0, Landroidx/media3/exoplayer/hls/j;->j:I

    iget-object v2, p0, Landroidx/media3/exoplayer/hls/j;->e:Ljava/lang/Object;

    iget-object p1, p0, Landroidx/media3/exoplayer/hls/j;->n:Ljava/lang/Object;

    move-object v5, p1

    check-cast v5, Ljava/io/IOException;

    invoke-static/range {v1 .. v6}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->e(Landroidx/media3/exoplayer/source/ads/AdsMediaSource;Ljava/lang/Object;IILjava/io/IOException;Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$Listener;)V

    return-void

    :pswitch_0
    move-object v12, p1

    check-cast v12, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$Listener;

    iget v9, p0, Landroidx/media3/exoplayer/hls/j;->f:I

    iget v10, p0, Landroidx/media3/exoplayer/hls/j;->j:I

    iget-object p1, p0, Landroidx/media3/exoplayer/hls/j;->m:Ljava/lang/Object;

    move-object v7, p1

    check-cast v7, Landroidx/media3/common/MediaItem;

    iget-object v8, p0, Landroidx/media3/exoplayer/hls/j;->e:Ljava/lang/Object;

    iget-object p1, p0, Landroidx/media3/exoplayer/hls/j;->n:Ljava/lang/Object;

    move-object v11, p1

    check-cast v11, Landroidx/media3/common/Metadata;

    invoke-static/range {v7 .. v12}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$PlayerListener;->f(Landroidx/media3/common/MediaItem;Ljava/lang/Object;IILandroidx/media3/common/Metadata;Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$Listener;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
