.class public final Lf1/e0;
.super Landroid/media/MediaRouter$VolumeCallback;
.source "SourceFile"


# instance fields
.field public final a:Lf1/d0;


# direct methods
.method public constructor <init>(Lf1/d0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/media/MediaRouter$VolumeCallback;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lf1/e0;->a:Lf1/d0;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onVolumeSetRequest(Landroid/media/MediaRouter$RouteInfo;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf1/e0;->a:Lf1/d0;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lf1/d0;->onVolumeSetRequest(Landroid/media/MediaRouter$RouteInfo;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onVolumeUpdateRequest(Landroid/media/MediaRouter$RouteInfo;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf1/e0;->a:Lf1/d0;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lf1/d0;->onVolumeUpdateRequest(Landroid/media/MediaRouter$RouteInfo;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
