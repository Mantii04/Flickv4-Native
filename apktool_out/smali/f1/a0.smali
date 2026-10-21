.class public Lf1/a0;
.super Landroid/media/MediaRouter$Callback;
.source "SourceFile"


# instance fields
.field public final a:Lf1/Z;


# direct methods
.method public constructor <init>(Lf1/Z;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/media/MediaRouter$Callback;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lf1/a0;->a:Lf1/Z;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onRouteAdded(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lf1/a0;->a:Lf1/Z;

    .line 2
    .line 3
    check-cast p1, Lf1/H0;

    .line 4
    .line 5
    invoke-virtual {p1, p2}, Lf1/H0;->onRouteAdded(Landroid/media/MediaRouter$RouteInfo;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onRouteChanged(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lf1/a0;->a:Lf1/Z;

    .line 2
    .line 3
    check-cast p1, Lf1/H0;

    .line 4
    .line 5
    invoke-virtual {p1, p2}, Lf1/H0;->onRouteChanged(Landroid/media/MediaRouter$RouteInfo;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onRouteGrouped(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;Landroid/media/MediaRouter$RouteGroup;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lf1/a0;->a:Lf1/Z;

    .line 2
    .line 3
    check-cast p1, Lf1/H0;

    .line 4
    .line 5
    invoke-virtual {p1, p2, p3, p4}, Lf1/H0;->onRouteGrouped(Landroid/media/MediaRouter$RouteInfo;Landroid/media/MediaRouter$RouteGroup;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onRouteRemoved(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lf1/a0;->a:Lf1/Z;

    .line 2
    .line 3
    check-cast p1, Lf1/H0;

    .line 4
    .line 5
    invoke-virtual {p1, p2}, Lf1/H0;->onRouteRemoved(Landroid/media/MediaRouter$RouteInfo;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onRouteSelected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lf1/a0;->a:Lf1/Z;

    .line 2
    .line 3
    check-cast p1, Lf1/H0;

    .line 4
    .line 5
    invoke-virtual {p1, p2, p3}, Lf1/H0;->onRouteSelected(ILandroid/media/MediaRouter$RouteInfo;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onRouteUngrouped(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;Landroid/media/MediaRouter$RouteGroup;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lf1/a0;->a:Lf1/Z;

    .line 2
    .line 3
    check-cast p1, Lf1/H0;

    .line 4
    .line 5
    invoke-virtual {p1, p2, p3}, Lf1/H0;->onRouteUngrouped(Landroid/media/MediaRouter$RouteInfo;Landroid/media/MediaRouter$RouteGroup;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onRouteUnselected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lf1/a0;->a:Lf1/Z;

    .line 2
    .line 3
    check-cast p1, Lf1/H0;

    .line 4
    .line 5
    invoke-virtual {p1, p2, p3}, Lf1/H0;->onRouteUnselected(ILandroid/media/MediaRouter$RouteInfo;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onRouteVolumeChanged(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lf1/a0;->a:Lf1/Z;

    .line 2
    .line 3
    check-cast p1, Lf1/H0;

    .line 4
    .line 5
    invoke-virtual {p1, p2}, Lf1/H0;->onRouteVolumeChanged(Landroid/media/MediaRouter$RouteInfo;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
