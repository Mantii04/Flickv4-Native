.class public final synthetic Landroidx/media3/exoplayer/drm/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;

.field public final synthetic f:Landroidx/media3/exoplayer/drm/DrmSession;

.field public final synthetic j:LV3/M;


# direct methods
.method public synthetic constructor <init>(LV3/M;Landroidx/media3/exoplayer/drm/DrmSession;Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Landroidx/media3/exoplayer/drm/o;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Landroidx/media3/exoplayer/drm/o;->e:Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;

    iput-object p2, p0, Landroidx/media3/exoplayer/drm/o;->f:Landroidx/media3/exoplayer/drm/DrmSession;

    iput-object p1, p0, Landroidx/media3/exoplayer/drm/o;->j:LV3/M;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;LV3/M;Landroidx/media3/exoplayer/drm/DrmSession;I)V
    .locals 0

    .line 2
    iput p4, p0, Landroidx/media3/exoplayer/drm/o;->b:I

    iput-object p1, p0, Landroidx/media3/exoplayer/drm/o;->e:Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;

    iput-object p2, p0, Landroidx/media3/exoplayer/drm/o;->j:LV3/M;

    iput-object p3, p0, Landroidx/media3/exoplayer/drm/o;->f:Landroidx/media3/exoplayer/drm/DrmSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/drm/o;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/media3/exoplayer/drm/o;->e:Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;

    iget-object v1, p0, Landroidx/media3/exoplayer/drm/o;->j:LV3/M;

    iget-object v2, p0, Landroidx/media3/exoplayer/drm/o;->f:Landroidx/media3/exoplayer/drm/DrmSession;

    invoke-static {v1, v2, v0}, Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;->c(LV3/M;Landroidx/media3/exoplayer/drm/DrmSession;Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/o;->e:Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;

    iget-object v1, p0, Landroidx/media3/exoplayer/drm/o;->f:Landroidx/media3/exoplayer/drm/DrmSession;

    iget-object v2, p0, Landroidx/media3/exoplayer/drm/o;->j:LV3/M;

    invoke-static {v2, v1, v0}, Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;->a(LV3/M;Landroidx/media3/exoplayer/drm/DrmSession;Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/o;->e:Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;

    iget-object v1, p0, Landroidx/media3/exoplayer/drm/o;->j:LV3/M;

    iget-object v2, p0, Landroidx/media3/exoplayer/drm/o;->f:Landroidx/media3/exoplayer/drm/DrmSession;

    invoke-static {v1, v2, v0}, Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;->e(LV3/M;Landroidx/media3/exoplayer/drm/DrmSession;Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
