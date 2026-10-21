.class public final Lf1/D0;
.super Lf1/J0;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lf1/K0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lf1/J0;-><init>(Landroid/content/Context;Lf1/K0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public onBuildSystemRouteDescriptor(Lf1/F0;Lf1/u;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lf1/J0;->onBuildSystemRouteDescriptor(Lf1/F0;Lf1/u;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p1, Lf1/F0;->a:Landroid/media/MediaRouter$RouteInfo;

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->getDeviceType()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    invoke-virtual {p2, p1}, Lf1/u;->setDeviceType(I)Lf1/u;

    .line 11
    .line 12
    .line 13
    return-void
.end method
