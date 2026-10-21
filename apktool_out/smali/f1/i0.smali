.class public abstract Lf1/i0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static getPresentationDisplay(Landroid/media/MediaRouter$RouteInfo;)Landroid/view/Display;
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getPresentationDisplay()Landroid/view/Display;

    .line 2
    .line 3
    .line 4
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object p0

    .line 6
    :catch_0
    move-exception p0

    .line 7
    const-string v0, "MediaRouterJellybeanMr1"

    .line 8
    .line 9
    const-string v1, "Cannot get presentation display for the route."

    .line 10
    .line 11
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 12
    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    return-object p0
.end method

.method public static isEnabled(Landroid/media/MediaRouter$RouteInfo;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->isEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method
