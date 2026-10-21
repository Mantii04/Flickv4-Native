.class Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$AssetListData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AssetListData"
.end annotation


# instance fields
.field private final adGroupIndex:I

.field private final adIndexInAdGroup:I

.field private final adsId:Ljava/lang/Object;

.field private final interstitial:Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial;

.field private final mediaItem:Landroidx/media3/common/MediaItem;

.field private final targetDurationUs:J


# direct methods
.method public constructor <init>(Landroidx/media3/common/MediaItem;Ljava/lang/Object;Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial;IIJ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p3, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial;->assetListUri:Landroid/net/Uri;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    invoke-static {v0}, LP3/v;->checkArgument(Z)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$AssetListData;->mediaItem:Landroidx/media3/common/MediaItem;

    .line 15
    .line 16
    iput-object p2, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$AssetListData;->adsId:Ljava/lang/Object;

    .line 17
    .line 18
    iput p4, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$AssetListData;->adGroupIndex:I

    .line 19
    .line 20
    iput p5, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$AssetListData;->adIndexInAdGroup:I

    .line 21
    .line 22
    iput-wide p6, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$AssetListData;->targetDurationUs:J

    .line 23
    .line 24
    iput-object p3, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$AssetListData;->interstitial:Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial;

    .line 25
    .line 26
    return-void
.end method

.method public static synthetic access$1200(Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$AssetListData;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$AssetListData;->adsId:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$1300(Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$AssetListData;)I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$AssetListData;->adGroupIndex:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$1400(Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$AssetListData;)I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$AssetListData;->adIndexInAdGroup:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$1600(Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$AssetListData;)Landroidx/media3/common/MediaItem;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$AssetListData;->mediaItem:Landroidx/media3/common/MediaItem;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$AssetListData;)Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$AssetListData;->interstitial:Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$400(Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$AssetListData;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$AssetListData;->targetDurationUs:J

    .line 2
    .line 3
    return-wide v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .line 1
    instance-of v0, p1, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$AssetListData;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    check-cast p1, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$AssetListData;

    .line 8
    .line 9
    iget v0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$AssetListData;->adGroupIndex:I

    .line 10
    .line 11
    iget v2, p1, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$AssetListData;->adGroupIndex:I

    .line 12
    .line 13
    if-ne v0, v2, :cond_1

    .line 14
    .line 15
    iget v0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$AssetListData;->adIndexInAdGroup:I

    .line 16
    .line 17
    iget v2, p1, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$AssetListData;->adIndexInAdGroup:I

    .line 18
    .line 19
    if-ne v0, v2, :cond_1

    .line 20
    .line 21
    iget-wide v2, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$AssetListData;->targetDurationUs:J

    .line 22
    .line 23
    iget-wide v4, p1, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$AssetListData;->targetDurationUs:J

    .line 24
    .line 25
    cmp-long v0, v2, v4

    .line 26
    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$AssetListData;->mediaItem:Landroidx/media3/common/MediaItem;

    .line 30
    .line 31
    iget-object v2, p1, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$AssetListData;->mediaItem:Landroidx/media3/common/MediaItem;

    .line 32
    .line 33
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$AssetListData;->adsId:Ljava/lang/Object;

    .line 40
    .line 41
    iget-object v2, p1, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$AssetListData;->adsId:Ljava/lang/Object;

    .line 42
    .line 43
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$AssetListData;->interstitial:Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial;

    .line 50
    .line 51
    iget-object p1, p1, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$AssetListData;->interstitial:Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial;

    .line 52
    .line 53
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-eqz p1, :cond_1

    .line 58
    .line 59
    const/4 p1, 0x1

    .line 60
    return p1

    .line 61
    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$AssetListData;->mediaItem:Landroidx/media3/common/MediaItem;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/media3/common/MediaItem;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$AssetListData;->adsId:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v1, v0

    .line 16
    mul-int/lit8 v1, v1, 0x1f

    .line 17
    .line 18
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$AssetListData;->interstitial:Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    add-int/2addr v0, v1

    .line 25
    mul-int/lit8 v0, v0, 0x1f

    .line 26
    .line 27
    iget v1, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$AssetListData;->adGroupIndex:I

    .line 28
    .line 29
    add-int/2addr v0, v1

    .line 30
    mul-int/lit8 v0, v0, 0x1f

    .line 31
    .line 32
    iget v1, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$AssetListData;->adIndexInAdGroup:I

    .line 33
    .line 34
    add-int/2addr v0, v1

    .line 35
    const-wide/16 v1, 0x1f

    .line 36
    .line 37
    int-to-long v3, v0

    .line 38
    mul-long/2addr v3, v1

    .line 39
    iget-wide v0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$AssetListData;->targetDurationUs:J

    .line 40
    .line 41
    add-long/2addr v3, v0

    .line 42
    long-to-int v0, v3

    .line 43
    return v0
.end method
