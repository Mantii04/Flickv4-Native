.class public final Landroidx/media3/exoplayer/drm/LocalMediaDrmCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/drm/MediaDrmCallback;


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation


# instance fields
.field private final keyResponse:Landroidx/media3/exoplayer/drm/MediaDrmCallback$Response;


# direct methods
.method public constructor <init>([B)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/media3/exoplayer/drm/MediaDrmCallback$Response;

    .line 5
    .line 6
    invoke-static {p1}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, [B

    .line 11
    .line 12
    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/drm/MediaDrmCallback$Response;-><init>([B)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Landroidx/media3/exoplayer/drm/LocalMediaDrmCallback;->keyResponse:Landroidx/media3/exoplayer/drm/MediaDrmCallback$Response;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public executeKeyRequest(Ljava/util/UUID;Landroidx/media3/exoplayer/drm/ExoMediaDrm$KeyRequest;)Landroidx/media3/exoplayer/drm/MediaDrmCallback$Response;
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/media3/exoplayer/drm/LocalMediaDrmCallback;->keyResponse:Landroidx/media3/exoplayer/drm/MediaDrmCallback$Response;

    .line 2
    .line 3
    return-object p1
.end method

.method public executeProvisionRequest(Ljava/util/UUID;Landroidx/media3/exoplayer/drm/ExoMediaDrm$ProvisionRequest;)Landroidx/media3/exoplayer/drm/MediaDrmCallback$Response;
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p1
.end method
