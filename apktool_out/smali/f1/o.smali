.class public final Lf1/o;
.super Lf1/C;
.source "SourceFile"


# instance fields
.field public final f:Ljava/lang/String;

.field public final g:Landroid/media/MediaRouter2$RoutingController;

.field public final h:Landroid/os/Messenger;

.field public final i:Landroid/os/Messenger;

.field public final j:Landroid/util/SparseArray;

.field public final k:Landroid/os/Handler;

.field public final l:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final m:Lf1/a;

.field public n:I

.field public o:Lf1/v;

.field public final synthetic p:Lf1/t;


# direct methods
.method public constructor <init>(Lf1/t;Landroid/media/MediaRouter2$RoutingController;Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lf1/o;->p:Lf1/t;

    .line 2
    .line 3
    invoke-direct {p0}, Lf1/C;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Landroid/util/SparseArray;

    .line 7
    .line 8
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lf1/o;->j:Landroid/util/SparseArray;

    .line 12
    .line 13
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lf1/o;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 20
    .line 21
    new-instance p1, Lf1/a;

    .line 22
    .line 23
    invoke-direct {p1, p0, v0}, Lf1/a;-><init>(Ljava/lang/Object;I)V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lf1/o;->m:Lf1/a;

    .line 27
    .line 28
    const/4 p1, -0x1

    .line 29
    iput p1, p0, Lf1/o;->n:I

    .line 30
    .line 31
    iput-object p2, p0, Lf1/o;->g:Landroid/media/MediaRouter2$RoutingController;

    .line 32
    .line 33
    iput-object p3, p0, Lf1/o;->f:Ljava/lang/String;

    .line 34
    .line 35
    sget p1, Lf1/t;->r:I

    .line 36
    .line 37
    invoke-static {p2}, Landroidx/media3/exoplayer/source/mediaparser/b;->h(Landroid/media/MediaRouter2$RoutingController;)Landroid/os/Bundle;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    const/4 p2, 0x0

    .line 42
    if-nez p1, :cond_0

    .line 43
    .line 44
    move-object p1, p2

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    const-string p3, "androidx.mediarouter.media.KEY_MESSENGER"

    .line 47
    .line 48
    invoke-virtual {p1, p3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    check-cast p1, Landroid/os/Messenger;

    .line 53
    .line 54
    :goto_0
    iput-object p1, p0, Lf1/o;->h:Landroid/os/Messenger;

    .line 55
    .line 56
    if-nez p1, :cond_1

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_1
    new-instance p2, Landroid/os/Messenger;

    .line 60
    .line 61
    new-instance p1, Lf1/n;

    .line 62
    .line 63
    invoke-direct {p1, p0}, Lf1/n;-><init>(Lf1/o;)V

    .line 64
    .line 65
    .line 66
    invoke-direct {p2, p1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    .line 67
    .line 68
    .line 69
    :goto_1
    iput-object p2, p0, Lf1/o;->i:Landroid/os/Messenger;

    .line 70
    .line 71
    new-instance p1, Landroid/os/Handler;

    .line 72
    .line 73
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 78
    .line 79
    .line 80
    iput-object p1, p0, Lf1/o;->k:Landroid/os/Handler;

    .line 81
    .line 82
    return-void
.end method


# virtual methods
.method public getGroupRouteId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lf1/o;->o:Lf1/v;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lf1/v;->getId()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    iget-object v0, p0, Lf1/o;->g:Landroid/media/MediaRouter2$RoutingController;

    .line 11
    .line 12
    invoke-static {v0}, Landroidx/media3/exoplayer/source/mediaparser/b;->l(Landroid/media/MediaRouter2$RoutingController;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method public onAddMemberRoute(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "MR2Provider"

    .line 2
    .line 3
    if-eqz p1, :cond_2

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v1, p0, Lf1/o;->p:Lf1/t;

    .line 13
    .line 14
    invoke-virtual {v1, p1}, Lf1/t;->a(Ljava/lang/String;)Landroid/media/MediaRoute2Info;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    const-string v1, "onAddMemberRoute: Specified route not found. routeId="

    .line 21
    .line 22
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    iget-object p1, p0, Lf1/o;->g:Landroid/media/MediaRouter2$RoutingController;

    .line 31
    .line 32
    invoke-static {p1, v1}, Lf1/m;->q(Landroid/media/MediaRouter2$RoutingController;Landroid/media/MediaRoute2Info;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_2
    :goto_0
    const-string p1, "onAddMemberRoute: Ignoring null or empty routeId."

    .line 37
    .line 38
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public onRelease()V
    .locals 1

    .line 1
    iget-object v0, p0, Lf1/o;->g:Landroid/media/MediaRouter2$RoutingController;

    .line 2
    .line 3
    invoke-static {v0}, Lf1/m;->j(Landroid/media/MediaRouter2$RoutingController;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onRemoveMemberRoute(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "MR2Provider"

    .line 2
    .line 3
    if-eqz p1, :cond_2

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v1, p0, Lf1/o;->p:Lf1/t;

    .line 13
    .line 14
    invoke-virtual {v1, p1}, Lf1/t;->a(Ljava/lang/String;)Landroid/media/MediaRoute2Info;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    const-string v1, "onRemoveMemberRoute: Specified route not found. routeId="

    .line 21
    .line 22
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    iget-object p1, p0, Lf1/o;->g:Landroid/media/MediaRouter2$RoutingController;

    .line 31
    .line 32
    invoke-static {p1, v1}, Lf1/m;->l(Landroid/media/MediaRouter2$RoutingController;Landroid/media/MediaRoute2Info;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_2
    :goto_0
    const-string p1, "onRemoveMemberRoute: Ignoring null or empty routeId."

    .line 37
    .line 38
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public onSetVolume(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lf1/o;->g:Landroid/media/MediaRouter2$RoutingController;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {v0, p1}, Lf1/m;->k(Landroid/media/MediaRouter2$RoutingController;I)V

    .line 7
    .line 8
    .line 9
    iput p1, p0, Lf1/o;->n:I

    .line 10
    .line 11
    iget-object p1, p0, Lf1/o;->k:Landroid/os/Handler;

    .line 12
    .line 13
    iget-object v0, p0, Lf1/o;->m:Lf1/a;

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 16
    .line 17
    .line 18
    const-wide/16 v1, 0x3e8

    .line 19
    .line 20
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public onUpdateMemberRoutes(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "MR2Provider"

    .line 2
    .line 3
    if-eqz p1, :cond_2

    .line 4
    .line 5
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Ljava/lang/String;

    .line 18
    .line 19
    iget-object v1, p0, Lf1/o;->p:Lf1/t;

    .line 20
    .line 21
    invoke-virtual {v1, p1}, Lf1/t;->a(Ljava/lang/String;)Landroid/media/MediaRoute2Info;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    if-nez v2, :cond_1

    .line 26
    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v2, "onUpdateMemberRoutes: Specified route not found. routeId="

    .line 30
    .line 31
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_1
    iget-object p1, v1, Lf1/t;->i:Landroid/media/MediaRouter2;

    .line 46
    .line 47
    invoke-static {p1, v2}, Landroidx/media3/exoplayer/source/mediaparser/b;->o(Landroid/media/MediaRouter2;Landroid/media/MediaRoute2Info;)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_2
    :goto_0
    const-string p1, "onUpdateMemberRoutes: Ignoring null or empty routeIds."

    .line 52
    .line 53
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public onUpdateVolume(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lf1/o;->g:Landroid/media/MediaRouter2$RoutingController;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v1, p0, Lf1/o;->n:I

    .line 7
    .line 8
    if-gez v1, :cond_1

    .line 9
    .line 10
    invoke-static {v0}, Landroidx/media3/exoplayer/source/mediaparser/b;->d(Landroid/media/MediaRouter2$RoutingController;)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    :cond_1
    add-int/2addr v1, p1

    .line 15
    iget-object p1, p0, Lf1/o;->g:Landroid/media/MediaRouter2$RoutingController;

    .line 16
    .line 17
    invoke-static {p1}, Landroidx/media3/exoplayer/source/mediaparser/b;->z(Landroid/media/MediaRouter2$RoutingController;)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    const/4 v0, 0x0

    .line 26
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    iput p1, p0, Lf1/o;->n:I

    .line 31
    .line 32
    iget-object v0, p0, Lf1/o;->g:Landroid/media/MediaRouter2$RoutingController;

    .line 33
    .line 34
    invoke-static {v0, p1}, Lf1/m;->k(Landroid/media/MediaRouter2$RoutingController;I)V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lf1/o;->k:Landroid/os/Handler;

    .line 38
    .line 39
    iget-object v0, p0, Lf1/o;->m:Lf1/a;

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 42
    .line 43
    .line 44
    const-wide/16 v1, 0x3e8

    .line 45
    .line 46
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 47
    .line 48
    .line 49
    return-void
.end method
