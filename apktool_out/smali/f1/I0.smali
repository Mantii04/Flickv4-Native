.class public abstract Lf1/I0;
.super Lf1/H0;
.source "SourceFile"

# interfaces
.implements Lf1/g0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lf1/K0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lf1/H0;-><init>(Landroid/content/Context;Lf1/K0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public createCallback()Landroid/media/MediaRouter$Callback;
    .locals 1

    .line 1
    invoke-static {p0}, Lf1/j0;->createCallback(Lf1/g0;)Landroid/media/MediaRouter$Callback;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public abstract isConnecting(Lf1/F0;)Z
.end method

.method public onBuildSystemRouteDescriptor(Lf1/F0;Lf1/u;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lf1/H0;->onBuildSystemRouteDescriptor(Lf1/F0;Lf1/u;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lf1/F0;->a:Landroid/media/MediaRouter$RouteInfo;

    .line 5
    .line 6
    invoke-static {v0}, Lf1/i0;->isEnabled(Landroid/media/MediaRouter$RouteInfo;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p2, v0}, Lf1/u;->setEnabled(Z)Lf1/u;

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {p0, p1}, Lf1/I0;->isConnecting(Lf1/F0;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    invoke-virtual {p2, v0}, Lf1/u;->setConnectionState(I)Lf1/u;

    .line 24
    .line 25
    .line 26
    :cond_1
    iget-object p1, p1, Lf1/F0;->a:Landroid/media/MediaRouter$RouteInfo;

    .line 27
    .line 28
    invoke-static {p1}, Lf1/i0;->getPresentationDisplay(Landroid/media/MediaRouter$RouteInfo;)Landroid/view/Display;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    if-eqz p1, :cond_2

    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    invoke-virtual {p2, p1}, Lf1/u;->setPresentationDisplayId(I)Lf1/u;

    .line 39
    .line 40
    .line 41
    :cond_2
    return-void
.end method

.method public onRoutePresentationDisplayChanged(Landroid/media/MediaRouter$RouteInfo;)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lf1/H0;->findSystemRouteRecord(Landroid/media/MediaRouter$RouteInfo;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-ltz v0, :cond_1

    .line 6
    .line 7
    iget-object v1, p0, Lf1/H0;->q:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lf1/F0;

    .line 14
    .line 15
    invoke-static {p1}, Lf1/i0;->getPresentationDisplay(Landroid/media/MediaRouter$RouteInfo;)Landroid/view/Display;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p1, -0x1

    .line 27
    :goto_0
    iget-object v1, v0, Lf1/F0;->c:Lf1/v;

    .line 28
    .line 29
    invoke-virtual {v1}, Lf1/v;->getPresentationDisplayId()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eq p1, v1, :cond_1

    .line 34
    .line 35
    new-instance v1, Lf1/u;

    .line 36
    .line 37
    iget-object v2, v0, Lf1/F0;->c:Lf1/v;

    .line 38
    .line 39
    invoke-direct {v1, v2}, Lf1/u;-><init>(Lf1/v;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, p1}, Lf1/u;->setPresentationDisplayId(I)Lf1/u;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p1}, Lf1/u;->build()Lf1/v;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    iput-object p1, v0, Lf1/F0;->c:Lf1/v;

    .line 51
    .line 52
    invoke-virtual {p0}, Lf1/H0;->publishRoutes()V

    .line 53
    .line 54
    .line 55
    :cond_1
    return-void
.end method
