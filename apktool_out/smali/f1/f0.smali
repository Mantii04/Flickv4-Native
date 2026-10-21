.class public abstract Lf1/f0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static addCallback(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$Callback;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static addUserRoute(Landroid/media/MediaRouter;Landroid/media/MediaRouter$UserRouteInfo;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/media/MediaRouter;->addUserRoute(Landroid/media/MediaRouter$UserRouteInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static createCallback(Lf1/Z;)Landroid/media/MediaRouter$Callback;
    .locals 1

    .line 1
    new-instance v0, Lf1/a0;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lf1/a0;-><init>(Lf1/Z;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static createRouteCategory(Landroid/media/MediaRouter;Ljava/lang/String;Z)Landroid/media/MediaRouter$RouteCategory;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaRouter;->createRouteCategory(Ljava/lang/CharSequence;Z)Landroid/media/MediaRouter$RouteCategory;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static createUserRoute(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteCategory;)Landroid/media/MediaRouter$UserRouteInfo;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/media/MediaRouter;->createUserRoute(Landroid/media/MediaRouter$RouteCategory;)Landroid/media/MediaRouter$UserRouteInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static createVolumeCallback(Lf1/d0;)Landroid/media/MediaRouter$VolumeCallback;
    .locals 1

    .line 1
    new-instance v0, Lf1/e0;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lf1/e0;-><init>(Lf1/d0;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static getMediaRouter(Landroid/content/Context;)Landroid/media/MediaRouter;
    .locals 1

    .line 1
    const-string v0, "media_router"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/media/MediaRouter;

    .line 8
    .line 9
    return-object p0
.end method

.method public static getRoutes(Landroid/media/MediaRouter;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/MediaRouter;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/MediaRouter$RouteInfo;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/media/MediaRouter;->getRouteCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    if-ge v2, v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0, v2}, Landroid/media/MediaRouter;->getRouteAt(I)Landroid/media/MediaRouter$RouteInfo;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    add-int/lit8 v2, v2, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-object v1
.end method

.method public static getSelectedRoute(Landroid/media/MediaRouter;I)Landroid/media/MediaRouter$RouteInfo;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/media/MediaRouter;->getSelectedRoute(I)Landroid/media/MediaRouter$RouteInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static removeCallback(Landroid/media/MediaRouter;Landroid/media/MediaRouter$Callback;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/media/MediaRouter;->removeCallback(Landroid/media/MediaRouter$Callback;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static removeUserRoute(Landroid/media/MediaRouter;Landroid/media/MediaRouter$UserRouteInfo;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/media/MediaRouter;->removeUserRoute(Landroid/media/MediaRouter$UserRouteInfo;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    return-void

    .line 5
    :catch_0
    move-exception p0

    .line 6
    const-string p1, "MediaRouterJellybean"

    .line 7
    .line 8
    const-string v0, "Failed to remove user route"

    .line 9
    .line 10
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static selectRoute(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaRouter;->selectRoute(ILandroid/media/MediaRouter$RouteInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
