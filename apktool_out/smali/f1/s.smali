.class public final Lf1/s;
.super Landroid/media/MediaRouter2$TransferCallback;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lf1/t;


# direct methods
.method public constructor <init>(Lf1/t;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf1/s;->a:Lf1/t;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/media/MediaRouter2$TransferCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onStop(Landroid/media/MediaRouter2$RoutingController;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lf1/s;->a:Lf1/t;

    .line 2
    .line 3
    iget-object v0, v0, Lf1/t;->k:Landroid/util/ArrayMap;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lf1/F;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lf1/s;->a:Lf1/t;

    .line 14
    .line 15
    iget-object p1, p1, Lf1/t;->j:Lf1/h;

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Lf1/h;->onReleaseController(Lf1/F;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v1, "onStop: No matching routeController found. routingController="

    .line 24
    .line 25
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const-string v0, "MR2Provider"

    .line 36
    .line 37
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public onTransfer(Landroid/media/MediaRouter2$RoutingController;Landroid/media/MediaRouter2$RoutingController;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lf1/s;->a:Lf1/t;

    .line 2
    .line 3
    iget-object v0, v0, Lf1/t;->k:Landroid/util/ArrayMap;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lf1/s;->a:Lf1/t;

    .line 9
    .line 10
    iget-object p1, p1, Lf1/t;->i:Landroid/media/MediaRouter2;

    .line 11
    .line 12
    invoke-static {p1}, LM/l1;->f(Landroid/media/MediaRouter2;)Landroid/media/MediaRouter2$RoutingController;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const/4 v0, 0x3

    .line 17
    if-ne p2, p1, :cond_0

    .line 18
    .line 19
    iget-object p1, p0, Lf1/s;->a:Lf1/t;

    .line 20
    .line 21
    iget-object p1, p1, Lf1/t;->j:Lf1/h;

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Lf1/h;->onSelectFallbackRoute(I)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    invoke-static {p2}, LM/l1;->m(Landroid/media/MediaRouter2$RoutingController;)Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    const-string p1, "MR2Provider"

    .line 38
    .line 39
    const-string p2, "Selected routes are empty. This shouldn\'t happen."

    .line 40
    .line 41
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_1
    const/4 v1, 0x0

    .line 46
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-static {p1}, LM/l1;->c(Ljava/lang/Object;)Landroid/media/MediaRoute2Info;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-static {p1}, Landroidx/media3/exoplayer/source/mediaparser/b;->k(Landroid/media/MediaRoute2Info;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    new-instance v1, Lf1/o;

    .line 59
    .line 60
    iget-object v2, p0, Lf1/s;->a:Lf1/t;

    .line 61
    .line 62
    invoke-direct {v1, v2, p2, p1}, Lf1/o;-><init>(Lf1/t;Landroid/media/MediaRouter2$RoutingController;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    iget-object v2, p0, Lf1/s;->a:Lf1/t;

    .line 66
    .line 67
    iget-object v2, v2, Lf1/t;->k:Landroid/util/ArrayMap;

    .line 68
    .line 69
    invoke-virtual {v2, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    iget-object v1, p0, Lf1/s;->a:Lf1/t;

    .line 73
    .line 74
    iget-object v1, v1, Lf1/t;->j:Lf1/h;

    .line 75
    .line 76
    invoke-virtual {v1, p1, v0}, Lf1/h;->onSelectRoute(Ljava/lang/String;I)V

    .line 77
    .line 78
    .line 79
    iget-object p1, p0, Lf1/s;->a:Lf1/t;

    .line 80
    .line 81
    invoke-virtual {p1, p2}, Lf1/t;->b(Landroid/media/MediaRouter2$RoutingController;)V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method public onTransferFailure(Landroid/media/MediaRoute2Info;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Transfer failed. requestedRoute="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string v0, "MR2Provider"

    .line 16
    .line 17
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    return-void
.end method
