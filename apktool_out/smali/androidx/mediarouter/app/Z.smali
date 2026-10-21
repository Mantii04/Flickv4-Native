.class public final Landroidx/mediarouter/app/Z;
.super Lf1/M;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroidx/mediarouter/app/m0;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/app/m0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/mediarouter/app/Z;->a:Landroidx/mediarouter/app/m0;

    .line 2
    .line 3
    invoke-direct {p0}, Lf1/M;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onRouteAdded(Lf1/X;Lf1/U;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/mediarouter/app/Z;->a:Landroidx/mediarouter/app/m0;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/mediarouter/app/m0;->h()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onRouteChanged(Lf1/X;Lf1/U;)V
    .locals 2

    .line 1
    iget-object p1, p0, Landroidx/mediarouter/app/Z;->a:Landroidx/mediarouter/app/m0;

    .line 2
    .line 3
    iget-object v0, p1, Landroidx/mediarouter/app/m0;->r:Lf1/U;

    .line 4
    .line 5
    if-ne p2, v0, :cond_2

    .line 6
    .line 7
    invoke-virtual {p2}, Lf1/U;->getDynamicGroupController()Lf1/C;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    invoke-virtual {p2}, Lf1/U;->getProvider()Lf1/S;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-virtual {p2}, Lf1/S;->getRoutes()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Lf1/U;

    .line 36
    .line 37
    iget-object v1, p1, Landroidx/mediarouter/app/m0;->r:Lf1/U;

    .line 38
    .line 39
    invoke-virtual {v1}, Lf1/U;->getMemberRoutes()Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    iget-object v1, p1, Landroidx/mediarouter/app/m0;->r:Lf1/U;

    .line 51
    .line 52
    invoke-virtual {v1, v0}, Lf1/U;->getDynamicGroupState(Lf1/U;)Lf1/T;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    if-eqz v1, :cond_0

    .line 57
    .line 58
    invoke-virtual {v1}, Lf1/T;->isGroupable()Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_0

    .line 63
    .line 64
    iget-object v1, p1, Landroidx/mediarouter/app/m0;->t:Ljava/util/ArrayList;

    .line 65
    .line 66
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-nez v0, :cond_0

    .line 71
    .line 72
    invoke-virtual {p1}, Landroidx/mediarouter/app/m0;->i()V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1}, Landroidx/mediarouter/app/m0;->g()V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :cond_2
    invoke-virtual {p1}, Landroidx/mediarouter/app/m0;->h()V

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method public onRouteRemoved(Lf1/X;Lf1/U;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/mediarouter/app/Z;->a:Landroidx/mediarouter/app/m0;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/mediarouter/app/m0;->h()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onRouteSelected(Lf1/X;Lf1/U;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/mediarouter/app/Z;->a:Landroidx/mediarouter/app/m0;

    .line 2
    .line 3
    iput-object p2, p1, Landroidx/mediarouter/app/m0;->r:Lf1/U;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroidx/mediarouter/app/m0;->i()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroidx/mediarouter/app/m0;->g()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onRouteUnselected(Lf1/X;Lf1/U;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/mediarouter/app/Z;->a:Landroidx/mediarouter/app/m0;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/mediarouter/app/m0;->h()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onRouteVolumeChanged(Lf1/X;Lf1/U;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Lf1/U;->getVolume()I

    .line 2
    .line 3
    .line 4
    sget p1, Landroidx/mediarouter/app/m0;->c0:I

    .line 5
    .line 6
    iget-object p1, p0, Landroidx/mediarouter/app/Z;->a:Landroidx/mediarouter/app/m0;

    .line 7
    .line 8
    iget-object v0, p1, Landroidx/mediarouter/app/m0;->F:Lf1/U;

    .line 9
    .line 10
    if-eq v0, p2, :cond_1

    .line 11
    .line 12
    iget-object p1, p1, Landroidx/mediarouter/app/m0;->E:Ljava/util/HashMap;

    .line 13
    .line 14
    invoke-virtual {p2}, Lf1/U;->getId()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Landroidx/mediarouter/app/Y;

    .line 23
    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    iget-object p2, p1, Landroidx/mediarouter/app/Y;->u:Lf1/U;

    .line 27
    .line 28
    invoke-virtual {p2}, Lf1/U;->getVolume()I

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    if-nez p2, :cond_0

    .line 33
    .line 34
    const/4 v0, 0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 v0, 0x0

    .line 37
    :goto_0
    invoke-virtual {p1, v0}, Landroidx/mediarouter/app/Y;->o(Z)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p1, Landroidx/mediarouter/app/Y;->w:Landroidx/mediarouter/app/MediaRouteVolumeSlider;

    .line 41
    .line 42
    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 43
    .line 44
    .line 45
    :cond_1
    return-void
.end method
