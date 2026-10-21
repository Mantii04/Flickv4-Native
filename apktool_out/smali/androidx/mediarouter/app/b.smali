.class public final Landroidx/mediarouter/app/b;
.super Lf1/M;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroidx/mediarouter/app/MediaRouteButton;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/app/MediaRouteButton;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/mediarouter/app/b;->a:Landroidx/mediarouter/app/MediaRouteButton;

    .line 2
    .line 3
    invoke-direct {p0}, Lf1/M;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onProviderAdded(Lf1/X;Lf1/S;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/mediarouter/app/b;->a:Landroidx/mediarouter/app/MediaRouteButton;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/mediarouter/app/MediaRouteButton;->b()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onProviderChanged(Lf1/X;Lf1/S;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/mediarouter/app/b;->a:Landroidx/mediarouter/app/MediaRouteButton;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/mediarouter/app/MediaRouteButton;->b()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onProviderRemoved(Lf1/X;Lf1/S;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/mediarouter/app/b;->a:Landroidx/mediarouter/app/MediaRouteButton;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/mediarouter/app/MediaRouteButton;->b()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onRouteAdded(Lf1/X;Lf1/U;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/mediarouter/app/b;->a:Landroidx/mediarouter/app/MediaRouteButton;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/mediarouter/app/MediaRouteButton;->b()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onRouteChanged(Lf1/X;Lf1/U;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/mediarouter/app/b;->a:Landroidx/mediarouter/app/MediaRouteButton;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/mediarouter/app/MediaRouteButton;->b()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onRouteRemoved(Lf1/X;Lf1/U;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/mediarouter/app/b;->a:Landroidx/mediarouter/app/MediaRouteButton;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/mediarouter/app/MediaRouteButton;->b()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onRouteSelected(Lf1/X;Lf1/U;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/mediarouter/app/b;->a:Landroidx/mediarouter/app/MediaRouteButton;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/mediarouter/app/MediaRouteButton;->b()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onRouteUnselected(Lf1/X;Lf1/U;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/mediarouter/app/b;->a:Landroidx/mediarouter/app/MediaRouteButton;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/mediarouter/app/MediaRouteButton;->b()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onRouterParamsChanged(Lf1/X;Lf1/l0;)V
    .locals 1

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p2}, Lf1/l0;->getExtras()Landroid/os/Bundle;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string p2, "androidx.mediarouter.media.MediaRouterParams.FIXED_CAST_ICON"

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    :goto_0
    iget-object p2, p0, Landroidx/mediarouter/app/b;->a:Landroidx/mediarouter/app/MediaRouteButton;

    .line 16
    .line 17
    iget-boolean v0, p2, Landroidx/mediarouter/app/MediaRouteButton;->n:Z

    .line 18
    .line 19
    if-eq v0, p1, :cond_1

    .line 20
    .line 21
    iput-boolean p1, p2, Landroidx/mediarouter/app/MediaRouteButton;->n:Z

    .line 22
    .line 23
    invoke-virtual {p2}, Landroid/view/View;->refreshDrawableState()V

    .line 24
    .line 25
    .line 26
    :cond_1
    return-void
.end method
