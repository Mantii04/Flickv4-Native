.class public Lf1/J0;
.super Lf1/I0;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lf1/K0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lf1/I0;-><init>(Landroid/content/Context;Lf1/K0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getDefaultRoute()Landroid/media/MediaRouter$RouteInfo;
    .locals 1

    .line 2
    iget-object v0, p0, Lf1/H0;->j:Landroid/media/MediaRouter;

    invoke-virtual {v0}, Landroid/media/MediaRouter;->getDefaultRoute()Landroid/media/MediaRouter$RouteInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultRoute()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lf1/J0;->getDefaultRoute()Landroid/media/MediaRouter$RouteInfo;

    move-result-object v0

    return-object v0
.end method

.method public isConnecting(Lf1/F0;)Z
    .locals 0

    .line 1
    iget-object p1, p1, Lf1/F0;->a:Landroid/media/MediaRouter$RouteInfo;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->isConnecting()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public onBuildSystemRouteDescriptor(Lf1/F0;Lf1/u;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lf1/I0;->onBuildSystemRouteDescriptor(Lf1/F0;Lf1/u;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p1, Lf1/F0;->a:Landroid/media/MediaRouter$RouteInfo;

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->getDescription()Ljava/lang/CharSequence;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p2, p1}, Lf1/u;->setDescription(Ljava/lang/String;)Lf1/u;

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public selectRoute(Landroid/media/MediaRouter$RouteInfo;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lf1/H0;->j:Landroid/media/MediaRouter;

    .line 2
    .line 3
    const v1, 0x800003

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1, p1}, Lf1/f0;->selectRoute(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public updateCallback()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lf1/H0;->p:Z

    .line 2
    .line 3
    iget-object v1, p0, Lf1/H0;->k:Landroid/media/MediaRouter$Callback;

    .line 4
    .line 5
    iget-object v2, p0, Lf1/H0;->j:Landroid/media/MediaRouter;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v2, v1}, Lf1/f0;->removeCallback(Landroid/media/MediaRouter;Landroid/media/MediaRouter$Callback;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lf1/H0;->p:Z

    .line 14
    .line 15
    iget-boolean v0, p0, Lf1/H0;->o:Z

    .line 16
    .line 17
    or-int/lit8 v0, v0, 0x2

    .line 18
    .line 19
    iget v3, p0, Lf1/H0;->n:I

    .line 20
    .line 21
    invoke-virtual {v2, v3, v1, v0}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;I)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public updateUserRouteProperties(Lf1/G0;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lf1/H0;->updateUserRouteProperties(Lf1/G0;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lf1/G0;->b:Landroid/media/MediaRouter$UserRouteInfo;

    .line 5
    .line 6
    iget-object p1, p1, Lf1/G0;->a:Lf1/U;

    .line 7
    .line 8
    invoke-virtual {p1}, Lf1/U;->getDescription()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {v0, p1}, Landroid/media/MediaRouter$UserRouteInfo;->setDescription(Ljava/lang/CharSequence;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
