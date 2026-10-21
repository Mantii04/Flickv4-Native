.class public final Landroidx/media3/exoplayer/drm/MediaDrmCallback$Response$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/drm/MediaDrmCallback$Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final data:[B

.field private loadEventInfo:Landroidx/media3/exoplayer/source/LoadEventInfo;


# direct methods
.method public constructor <init>([B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/drm/MediaDrmCallback$Response$Builder;->data:[B

    .line 5
    .line 6
    return-void
.end method

.method public static synthetic access$100(Landroidx/media3/exoplayer/drm/MediaDrmCallback$Response$Builder;)[B
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/drm/MediaDrmCallback$Response$Builder;->data:[B

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Landroidx/media3/exoplayer/drm/MediaDrmCallback$Response$Builder;)Landroidx/media3/exoplayer/source/LoadEventInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/drm/MediaDrmCallback$Response$Builder;->loadEventInfo:Landroidx/media3/exoplayer/source/LoadEventInfo;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public build()Landroidx/media3/exoplayer/drm/MediaDrmCallback$Response;
    .locals 2

    .line 1
    new-instance v0, Landroidx/media3/exoplayer/drm/MediaDrmCallback$Response;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Landroidx/media3/exoplayer/drm/MediaDrmCallback$Response;-><init>(Landroidx/media3/exoplayer/drm/MediaDrmCallback$Response$Builder;Landroidx/media3/exoplayer/drm/MediaDrmCallback$1;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public setLoadEventInfo(Landroidx/media3/exoplayer/source/LoadEventInfo;)Landroidx/media3/exoplayer/drm/MediaDrmCallback$Response$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/exoplayer/drm/MediaDrmCallback$Response$Builder;->loadEventInfo:Landroidx/media3/exoplayer/source/LoadEventInfo;

    .line 2
    .line 3
    return-object p0
.end method
