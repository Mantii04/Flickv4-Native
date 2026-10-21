.class public final synthetic Landroidx/media3/exoplayer/hls/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;

.field public final synthetic e:Ljava/util/Map;

.field public final synthetic f:Ljava/lang/Long;

.field public final synthetic j:Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$AssetListData;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;Ljava/util/Map;Ljava/lang/Long;Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$AssetListData;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/b;->b:Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;

    iput-object p2, p0, Landroidx/media3/exoplayer/hls/b;->e:Ljava/util/Map;

    iput-object p3, p0, Landroidx/media3/exoplayer/hls/b;->f:Ljava/lang/Long;

    iput-object p4, p0, Landroidx/media3/exoplayer/hls/b;->j:Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$AssetListData;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/b;->f:Ljava/lang/Long;

    iget-object v1, p0, Landroidx/media3/exoplayer/hls/b;->b:Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;

    iget-object v2, p0, Landroidx/media3/exoplayer/hls/b;->e:Ljava/util/Map;

    iget-object v3, p0, Landroidx/media3/exoplayer/hls/b;->j:Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$AssetListData;

    invoke-static {v1, v2, v0, v3}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->g(Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;Ljava/util/Map;Ljava/lang/Long;Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$AssetListData;)V

    return-void
.end method
