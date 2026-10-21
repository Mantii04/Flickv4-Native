.class public final synthetic Landroidx/media3/exoplayer/drm/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;

.field public final synthetic e:I

.field public final synthetic f:[B

.field public final synthetic j:LV3/M;

.field public final synthetic m:Landroidx/media3/common/Format;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;I[BLV3/M;Landroidx/media3/common/Format;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/drm/p;->b:Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;

    iput p2, p0, Landroidx/media3/exoplayer/drm/p;->e:I

    iput-object p3, p0, Landroidx/media3/exoplayer/drm/p;->f:[B

    iput-object p4, p0, Landroidx/media3/exoplayer/drm/p;->j:LV3/M;

    iput-object p5, p0, Landroidx/media3/exoplayer/drm/p;->m:Landroidx/media3/common/Format;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/p;->m:Landroidx/media3/common/Format;

    iget-object v1, p0, Landroidx/media3/exoplayer/drm/p;->b:Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;

    iget v2, p0, Landroidx/media3/exoplayer/drm/p;->e:I

    iget-object v3, p0, Landroidx/media3/exoplayer/drm/p;->f:[B

    iget-object v4, p0, Landroidx/media3/exoplayer/drm/p;->j:LV3/M;

    invoke-static {v1, v2, v3, v4, v0}, Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;->d(Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;I[BLV3/M;Landroidx/media3/common/Format;)V

    return-void
.end method
