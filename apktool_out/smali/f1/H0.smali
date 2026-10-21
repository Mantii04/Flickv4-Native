.class public abstract Lf1/H0;
.super Lf1/L0;
.source "SourceFile"

# interfaces
.implements Lf1/Z;
.implements Lf1/d0;


# static fields
.field public static final s:Ljava/util/ArrayList;

.field public static final t:Ljava/util/ArrayList;


# instance fields
.field public final i:Lf1/K0;

.field public final j:Landroid/media/MediaRouter;

.field public final k:Landroid/media/MediaRouter$Callback;

.field public final l:Landroid/media/MediaRouter$VolumeCallback;

.field public final m:Landroid/media/MediaRouter$RouteCategory;

.field public n:I

.field public o:Z

.field public p:Z

.field public final q:Ljava/util/ArrayList;

.field public final r:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "android.media.intent.category.LIVE_AUDIO"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    sput-object v1, Lf1/H0;->s:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    new-instance v0, Landroid/content/IntentFilter;

    .line 22
    .line 23
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v1, "android.media.intent.category.LIVE_VIDEO"

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    new-instance v1, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .line 35
    .line 36
    sput-object v1, Lf1/H0;->t:Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lf1/K0;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lf1/L0;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lf1/H0;->q:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lf1/H0;->r:Ljava/util/ArrayList;

    .line 17
    .line 18
    iput-object p2, p0, Lf1/H0;->i:Lf1/K0;

    .line 19
    .line 20
    invoke-static {p1}, Lf1/f0;->getMediaRouter(Landroid/content/Context;)Landroid/media/MediaRouter;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    iput-object p2, p0, Lf1/H0;->j:Landroid/media/MediaRouter;

    .line 25
    .line 26
    invoke-virtual {p0}, Lf1/H0;->createCallback()Landroid/media/MediaRouter$Callback;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iput-object v0, p0, Lf1/H0;->k:Landroid/media/MediaRouter$Callback;

    .line 31
    .line 32
    invoke-virtual {p0}, Lf1/H0;->createVolumeCallback()Landroid/media/MediaRouter$VolumeCallback;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iput-object v0, p0, Lf1/H0;->l:Landroid/media/MediaRouter$VolumeCallback;

    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    sget v0, Landroidx/mediarouter/R$string;->mr_user_route_category_name:I

    .line 43
    .line 44
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    const/4 v0, 0x0

    .line 49
    invoke-static {p2, p1, v0}, Lf1/f0;->createRouteCategory(Landroid/media/MediaRouter;Ljava/lang/String;Z)Landroid/media/MediaRouter$RouteCategory;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    iput-object p1, p0, Lf1/H0;->m:Landroid/media/MediaRouter$RouteCategory;

    .line 54
    .line 55
    invoke-virtual {p0}, Lf1/H0;->b()V

    .line 56
    .line 57
    .line 58
    return-void
.end method


# virtual methods
.method public final a(Landroid/media/MediaRouter$RouteInfo;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Lf1/H0;->getUserRouteRecord(Landroid/media/MediaRouter$RouteInfo;)Lf1/G0;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    if-nez v2, :cond_3

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lf1/H0;->findSystemRouteRecord(Landroid/media/MediaRouter$RouteInfo;)I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-gez v2, :cond_3

    .line 14
    .line 15
    invoke-virtual {p0}, Lf1/H0;->getDefaultRoute()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    if-ne v2, p1, :cond_0

    .line 20
    .line 21
    const-string v0, "DEFAULT_ROUTE"

    .line 22
    .line 23
    :goto_0
    move-object v2, v0

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Lf1/H0;->getRouteName(Landroid/media/MediaRouter$RouteInfo;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    new-array v4, v1, [Ljava/lang/Object;

    .line 40
    .line 41
    aput-object v3, v4, v0

    .line 42
    .line 43
    const-string v0, "ROUTE_%08x"

    .line 44
    .line 45
    invoke-static {v2, v0, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    goto :goto_0

    .line 50
    :goto_1
    invoke-virtual {p0, v2}, Lf1/H0;->findSystemRouteRecordByDescriptorId(Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-gez v0, :cond_1

    .line 55
    .line 56
    goto :goto_3

    .line 57
    :cond_1
    const/4 v0, 0x2

    .line 58
    :goto_2
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 59
    .line 60
    new-instance v3, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v4, "_"

    .line 69
    .line 70
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    invoke-virtual {p0, v3}, Lf1/H0;->findSystemRouteRecordByDescriptorId(Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    if-gez v4, :cond_2

    .line 85
    .line 86
    move-object v2, v3

    .line 87
    :goto_3
    new-instance v0, Lf1/F0;

    .line 88
    .line 89
    invoke-direct {v0, p1, v2}, Lf1/F0;-><init>(Landroid/media/MediaRouter$RouteInfo;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, v0}, Lf1/H0;->updateSystemRouteDescriptor(Lf1/F0;)V

    .line 93
    .line 94
    .line 95
    iget-object p1, p0, Lf1/H0;->q:Ljava/util/ArrayList;

    .line 96
    .line 97
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    return v1

    .line 101
    :cond_2
    add-int/2addr v0, v1

    .line 102
    goto :goto_2

    .line 103
    :cond_3
    return v0
.end method

.method public final b()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lf1/H0;->updateCallback()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lf1/H0;->j:Landroid/media/MediaRouter;

    .line 5
    .line 6
    invoke-static {v0}, Lf1/f0;->getRoutes(Landroid/media/MediaRouter;)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x0

    .line 15
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Landroid/media/MediaRouter$RouteInfo;

    .line 26
    .line 27
    invoke-virtual {p0, v2}, Lf1/H0;->a(Landroid/media/MediaRouter$RouteInfo;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    or-int/2addr v1, v2

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    if-eqz v1, :cond_1

    .line 34
    .line 35
    invoke-virtual {p0}, Lf1/H0;->publishRoutes()V

    .line 36
    .line 37
    .line 38
    :cond_1
    return-void
.end method

.method public abstract createCallback()Landroid/media/MediaRouter$Callback;
.end method

.method public createVolumeCallback()Landroid/media/MediaRouter$VolumeCallback;
    .locals 1

    .line 1
    invoke-static {p0}, Lf1/f0;->createVolumeCallback(Lf1/d0;)Landroid/media/MediaRouter$VolumeCallback;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public findSystemRouteRecord(Landroid/media/MediaRouter$RouteInfo;)I
    .locals 4

    .line 1
    iget-object v0, p0, Lf1/H0;->q:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_0
    if-ge v2, v1, :cond_1

    .line 9
    .line 10
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    check-cast v3, Lf1/F0;

    .line 15
    .line 16
    iget-object v3, v3, Lf1/F0;->a:Landroid/media/MediaRouter$RouteInfo;

    .line 17
    .line 18
    if-ne v3, p1, :cond_0

    .line 19
    .line 20
    return v2

    .line 21
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 p1, -0x1

    .line 25
    return p1
.end method

.method public findSystemRouteRecordByDescriptorId(Ljava/lang/String;)I
    .locals 4

    .line 1
    iget-object v0, p0, Lf1/H0;->q:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_0
    if-ge v2, v1, :cond_1

    .line 9
    .line 10
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    check-cast v3, Lf1/F0;

    .line 15
    .line 16
    iget-object v3, v3, Lf1/F0;->b:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_0

    .line 23
    .line 24
    return v2

    .line 25
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 p1, -0x1

    .line 29
    return p1
.end method

.method public findUserRouteRecord(Lf1/U;)I
    .locals 4

    .line 1
    iget-object v0, p0, Lf1/H0;->r:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_0
    if-ge v2, v1, :cond_1

    .line 9
    .line 10
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    check-cast v3, Lf1/G0;

    .line 15
    .line 16
    iget-object v3, v3, Lf1/G0;->a:Lf1/U;

    .line 17
    .line 18
    if-ne v3, p1, :cond_0

    .line 19
    .line 20
    return v2

    .line 21
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 p1, -0x1

    .line 25
    return p1
.end method

.method public abstract getDefaultRoute()Ljava/lang/Object;
.end method

.method public getRouteName(Landroid/media/MediaRouter$RouteInfo;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lf1/G;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p1, v0}, Lf1/b0;->getName(Landroid/media/MediaRouter$RouteInfo;Landroid/content/Context;)Ljava/lang/CharSequence;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    :cond_0
    const-string p1, ""

    .line 17
    .line 18
    return-object p1
.end method

.method public getUserRouteRecord(Landroid/media/MediaRouter$RouteInfo;)Lf1/G0;
    .locals 1

    .line 1
    invoke-static {p1}, Lf1/b0;->getTag(Landroid/media/MediaRouter$RouteInfo;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    instance-of v0, p1, Lf1/G0;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    check-cast p1, Lf1/G0;

    .line 10
    .line 11
    return-object p1

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    return-object p1
.end method

.method public onBuildSystemRouteDescriptor(Lf1/F0;Lf1/u;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lf1/F0;->a:Landroid/media/MediaRouter$RouteInfo;

    .line 2
    .line 3
    invoke-static {v0}, Lf1/b0;->getSupportedTypes(Landroid/media/MediaRouter$RouteInfo;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    and-int/lit8 v1, v0, 0x1

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    sget-object v1, Lf1/H0;->s:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {p2, v1}, Lf1/u;->addControlFilters(Ljava/util/Collection;)Lf1/u;

    .line 14
    .line 15
    .line 16
    :cond_0
    and-int/lit8 v0, v0, 0x2

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    sget-object v0, Lf1/H0;->t:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {p2, v0}, Lf1/u;->addControlFilters(Ljava/util/Collection;)Lf1/u;

    .line 23
    .line 24
    .line 25
    :cond_1
    iget-object p1, p1, Lf1/F0;->a:Landroid/media/MediaRouter$RouteInfo;

    .line 26
    .line 27
    invoke-static {p1}, Lf1/b0;->getPlaybackType(Landroid/media/MediaRouter$RouteInfo;)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    invoke-virtual {p2, v0}, Lf1/u;->setPlaybackType(I)Lf1/u;

    .line 32
    .line 33
    .line 34
    invoke-static {p1}, Lf1/b0;->getPlaybackStream(Landroid/media/MediaRouter$RouteInfo;)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    invoke-virtual {p2, v0}, Lf1/u;->setPlaybackStream(I)Lf1/u;

    .line 39
    .line 40
    .line 41
    invoke-static {p1}, Lf1/b0;->getVolume(Landroid/media/MediaRouter$RouteInfo;)I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    invoke-virtual {p2, v0}, Lf1/u;->setVolume(I)Lf1/u;

    .line 46
    .line 47
    .line 48
    invoke-static {p1}, Lf1/b0;->getVolumeMax(Landroid/media/MediaRouter$RouteInfo;)I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    invoke-virtual {p2, v0}, Lf1/u;->setVolumeMax(I)Lf1/u;

    .line 53
    .line 54
    .line 55
    invoke-static {p1}, Lf1/b0;->getVolumeHandling(Landroid/media/MediaRouter$RouteInfo;)I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    invoke-virtual {p2, p1}, Lf1/u;->setVolumeHandling(I)Lf1/u;

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public onCreateRouteController(Ljava/lang/String;)Lf1/F;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lf1/H0;->findSystemRouteRecordByDescriptorId(Ljava/lang/String;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-ltz p1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lf1/H0;->q:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lf1/F0;

    .line 14
    .line 15
    new-instance v0, Lf1/E0;

    .line 16
    .line 17
    iget-object p1, p1, Lf1/F0;->a:Landroid/media/MediaRouter$RouteInfo;

    .line 18
    .line 19
    invoke-direct {v0, p1}, Lf1/E0;-><init>(Landroid/media/MediaRouter$RouteInfo;)V

    .line 20
    .line 21
    .line 22
    return-object v0

    .line 23
    :cond_0
    const/4 p1, 0x0

    .line 24
    return-object p1
.end method

.method public onDiscoveryRequestChanged(Lf1/w;)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_3

    .line 3
    .line 4
    invoke-virtual {p1}, Lf1/w;->getSelector()Lf1/L;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {v1}, Lf1/L;->getControlCategories()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    move v3, v0

    .line 17
    :goto_0
    if-ge v0, v2, :cond_2

    .line 18
    .line 19
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    check-cast v4, Ljava/lang/String;

    .line 24
    .line 25
    const-string v5, "android.media.intent.category.LIVE_AUDIO"

    .line 26
    .line 27
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    if-eqz v5, :cond_0

    .line 32
    .line 33
    or-int/lit8 v3, v3, 0x1

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_0
    const-string v5, "android.media.intent.category.LIVE_VIDEO"

    .line 37
    .line 38
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-eqz v4, :cond_1

    .line 43
    .line 44
    or-int/lit8 v3, v3, 0x2

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    const/high16 v4, 0x800000

    .line 48
    .line 49
    or-int/2addr v3, v4

    .line 50
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    invoke-virtual {p1}, Lf1/w;->isActiveScan()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    move p1, v0

    .line 58
    move v0, v3

    .line 59
    goto :goto_2

    .line 60
    :cond_3
    move p1, v0

    .line 61
    :goto_2
    iget v1, p0, Lf1/H0;->n:I

    .line 62
    .line 63
    if-ne v1, v0, :cond_5

    .line 64
    .line 65
    iget-boolean v1, p0, Lf1/H0;->o:Z

    .line 66
    .line 67
    if-eq v1, p1, :cond_4

    .line 68
    .line 69
    goto :goto_3

    .line 70
    :cond_4
    return-void

    .line 71
    :cond_5
    :goto_3
    iput v0, p0, Lf1/H0;->n:I

    .line 72
    .line 73
    iput-boolean p1, p0, Lf1/H0;->o:Z

    .line 74
    .line 75
    invoke-virtual {p0}, Lf1/H0;->b()V

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method public onRouteAdded(Landroid/media/MediaRouter$RouteInfo;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lf1/H0;->a(Landroid/media/MediaRouter$RouteInfo;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lf1/H0;->publishRoutes()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public onRouteChanged(Landroid/media/MediaRouter$RouteInfo;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lf1/H0;->getUserRouteRecord(Landroid/media/MediaRouter$RouteInfo;)Lf1/G0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lf1/H0;->findSystemRouteRecord(Landroid/media/MediaRouter$RouteInfo;)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-ltz p1, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lf1/H0;->q:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Lf1/F0;

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Lf1/H0;->updateSystemRouteDescriptor(Lf1/F0;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lf1/H0;->publishRoutes()V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public onRouteGrouped(Landroid/media/MediaRouter$RouteInfo;Landroid/media/MediaRouter$RouteGroup;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public onRouteRemoved(Landroid/media/MediaRouter$RouteInfo;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lf1/H0;->getUserRouteRecord(Landroid/media/MediaRouter$RouteInfo;)Lf1/G0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lf1/H0;->findSystemRouteRecord(Landroid/media/MediaRouter$RouteInfo;)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-ltz p1, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lf1/H0;->q:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lf1/H0;->publishRoutes()V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public onRouteSelected(ILandroid/media/MediaRouter$RouteInfo;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lf1/H0;->j:Landroid/media/MediaRouter;

    .line 2
    .line 3
    const v0, 0x800003

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lf1/f0;->getSelectedRoute(Landroid/media/MediaRouter;I)Landroid/media/MediaRouter$RouteInfo;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-eq p2, p1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p0, p2}, Lf1/H0;->getUserRouteRecord(Landroid/media/MediaRouter$RouteInfo;)Lf1/G0;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    iget-object p1, p1, Lf1/G0;->a:Lf1/U;

    .line 20
    .line 21
    invoke-virtual {p1}, Lf1/U;->select()V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    invoke-virtual {p0, p2}, Lf1/H0;->findSystemRouteRecord(Landroid/media/MediaRouter$RouteInfo;)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-ltz p1, :cond_2

    .line 30
    .line 31
    iget-object p2, p0, Lf1/H0;->q:Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Lf1/F0;

    .line 38
    .line 39
    iget-object p1, p1, Lf1/F0;->b:Ljava/lang/String;

    .line 40
    .line 41
    iget-object p2, p0, Lf1/H0;->i:Lf1/K0;

    .line 42
    .line 43
    check-cast p2, Lf1/k;

    .line 44
    .line 45
    invoke-virtual {p2, p1}, Lf1/k;->onSystemRouteSelectedByDescriptorId(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    :cond_2
    :goto_0
    return-void
.end method

.method public onRouteUngrouped(Landroid/media/MediaRouter$RouteInfo;Landroid/media/MediaRouter$RouteGroup;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onRouteUnselected(ILandroid/media/MediaRouter$RouteInfo;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onRouteVolumeChanged(Landroid/media/MediaRouter$RouteInfo;)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lf1/H0;->getUserRouteRecord(Landroid/media/MediaRouter$RouteInfo;)Lf1/G0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lf1/H0;->findSystemRouteRecord(Landroid/media/MediaRouter$RouteInfo;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-ltz v0, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Lf1/H0;->q:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lf1/F0;

    .line 20
    .line 21
    invoke-static {p1}, Lf1/b0;->getVolume(Landroid/media/MediaRouter$RouteInfo;)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    iget-object v1, v0, Lf1/F0;->c:Lf1/v;

    .line 26
    .line 27
    invoke-virtual {v1}, Lf1/v;->getVolume()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eq p1, v1, :cond_0

    .line 32
    .line 33
    new-instance v1, Lf1/u;

    .line 34
    .line 35
    iget-object v2, v0, Lf1/F0;->c:Lf1/v;

    .line 36
    .line 37
    invoke-direct {v1, v2}, Lf1/u;-><init>(Lf1/v;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, p1}, Lf1/u;->setVolume(I)Lf1/u;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p1}, Lf1/u;->build()Lf1/v;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    iput-object p1, v0, Lf1/F0;->c:Lf1/v;

    .line 49
    .line 50
    invoke-virtual {p0}, Lf1/H0;->publishRoutes()V

    .line 51
    .line 52
    .line 53
    :cond_0
    return-void
.end method

.method public onSyncRouteAdded(Lf1/U;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lf1/U;->getProviderInstance()Lf1/G;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lf1/H0;->j:Landroid/media/MediaRouter;

    .line 6
    .line 7
    if-eq v0, p0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lf1/H0;->m:Landroid/media/MediaRouter$RouteCategory;

    .line 10
    .line 11
    invoke-static {v1, v0}, Lf1/f0;->createUserRoute(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteCategory;)Landroid/media/MediaRouter$UserRouteInfo;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v2, Lf1/G0;

    .line 16
    .line 17
    invoke-direct {v2, p1, v0}, Lf1/G0;-><init>(Lf1/U;Landroid/media/MediaRouter$UserRouteInfo;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v2}, Lf1/b0;->setTag(Landroid/media/MediaRouter$RouteInfo;Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lf1/H0;->l:Landroid/media/MediaRouter$VolumeCallback;

    .line 24
    .line 25
    invoke-static {v0, p1}, Lf1/c0;->setVolumeCallback(Landroid/media/MediaRouter$UserRouteInfo;Landroid/media/MediaRouter$VolumeCallback;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v2}, Lf1/H0;->updateUserRouteProperties(Lf1/G0;)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lf1/H0;->r:Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    invoke-static {v1, v0}, Lf1/f0;->addUserRoute(Landroid/media/MediaRouter;Landroid/media/MediaRouter$UserRouteInfo;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_0
    const v0, 0x800003

    .line 41
    .line 42
    .line 43
    invoke-static {v1, v0}, Lf1/f0;->getSelectedRoute(Landroid/media/MediaRouter;I)Landroid/media/MediaRouter$RouteInfo;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {p0, v0}, Lf1/H0;->findSystemRouteRecord(Landroid/media/MediaRouter$RouteInfo;)I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-ltz v0, :cond_1

    .line 52
    .line 53
    iget-object v1, p0, Lf1/H0;->q:Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    check-cast v0, Lf1/F0;

    .line 60
    .line 61
    iget-object v0, v0, Lf1/F0;->b:Ljava/lang/String;

    .line 62
    .line 63
    iget-object v1, p1, Lf1/U;->b:Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_1

    .line 70
    .line 71
    invoke-virtual {p1}, Lf1/U;->select()V

    .line 72
    .line 73
    .line 74
    :cond_1
    return-void
.end method

.method public onSyncRouteChanged(Lf1/U;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lf1/U;->getProviderInstance()Lf1/G;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eq v0, p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lf1/H0;->findUserRouteRecord(Lf1/U;)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-ltz p1, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lf1/H0;->r:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Lf1/G0;

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Lf1/H0;->updateUserRouteProperties(Lf1/G0;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public onSyncRouteRemoved(Lf1/U;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lf1/U;->getProviderInstance()Lf1/G;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eq v0, p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lf1/H0;->findUserRouteRecord(Lf1/U;)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-ltz p1, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lf1/H0;->r:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Lf1/G0;

    .line 20
    .line 21
    iget-object v0, p1, Lf1/G0;->b:Landroid/media/MediaRouter$UserRouteInfo;

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-static {v0, v1}, Lf1/b0;->setTag(Landroid/media/MediaRouter$RouteInfo;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p1, Lf1/G0;->b:Landroid/media/MediaRouter$UserRouteInfo;

    .line 28
    .line 29
    invoke-static {p1, v1}, Lf1/c0;->setVolumeCallback(Landroid/media/MediaRouter$UserRouteInfo;Landroid/media/MediaRouter$VolumeCallback;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lf1/H0;->j:Landroid/media/MediaRouter;

    .line 33
    .line 34
    invoke-static {v0, p1}, Lf1/f0;->removeUserRoute(Landroid/media/MediaRouter;Landroid/media/MediaRouter$UserRouteInfo;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void
.end method

.method public onSyncRouteSelected(Lf1/U;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lf1/U;->isSelected()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1}, Lf1/U;->getProviderInstance()Lf1/G;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eq v0, p0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lf1/H0;->findUserRouteRecord(Lf1/U;)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-ltz p1, :cond_2

    .line 19
    .line 20
    iget-object v0, p0, Lf1/H0;->r:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Lf1/G0;

    .line 27
    .line 28
    iget-object p1, p1, Lf1/G0;->b:Landroid/media/MediaRouter$UserRouteInfo;

    .line 29
    .line 30
    invoke-virtual {p0, p1}, Lf1/H0;->selectRoute(Landroid/media/MediaRouter$RouteInfo;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    iget-object p1, p1, Lf1/U;->b:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {p0, p1}, Lf1/H0;->findSystemRouteRecordByDescriptorId(Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-ltz p1, :cond_2

    .line 41
    .line 42
    iget-object v0, p0, Lf1/H0;->q:Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    check-cast p1, Lf1/F0;

    .line 49
    .line 50
    iget-object p1, p1, Lf1/F0;->a:Landroid/media/MediaRouter$RouteInfo;

    .line 51
    .line 52
    invoke-virtual {p0, p1}, Lf1/H0;->selectRoute(Landroid/media/MediaRouter$RouteInfo;)V

    .line 53
    .line 54
    .line 55
    :cond_2
    :goto_0
    return-void
.end method

.method public onVolumeSetRequest(Landroid/media/MediaRouter$RouteInfo;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lf1/H0;->getUserRouteRecord(Landroid/media/MediaRouter$RouteInfo;)Lf1/G0;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p1, Lf1/G0;->a:Lf1/U;

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Lf1/U;->requestSetVolume(I)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public onVolumeUpdateRequest(Landroid/media/MediaRouter$RouteInfo;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lf1/H0;->getUserRouteRecord(Landroid/media/MediaRouter$RouteInfo;)Lf1/G0;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p1, Lf1/G0;->a:Lf1/U;

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Lf1/U;->requestUpdateVolume(I)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public publishRoutes()V
    .locals 5

    .line 1
    new-instance v0, Lf1/H;

    .line 2
    .line 3
    invoke-direct {v0}, Lf1/H;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lf1/H0;->q:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const/4 v3, 0x0

    .line 13
    :goto_0
    if-ge v3, v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    check-cast v4, Lf1/F0;

    .line 20
    .line 21
    iget-object v4, v4, Lf1/F0;->c:Lf1/v;

    .line 22
    .line 23
    invoke-virtual {v0, v4}, Lf1/H;->addRoute(Lf1/v;)Lf1/H;

    .line 24
    .line 25
    .line 26
    add-int/lit8 v3, v3, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {v0}, Lf1/H;->build()Lf1/I;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {p0, v0}, Lf1/G;->setDescriptor(Lf1/I;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public abstract selectRoute(Landroid/media/MediaRouter$RouteInfo;)V
.end method

.method public abstract updateCallback()V
.end method

.method public updateSystemRouteDescriptor(Lf1/F0;)V
    .locals 3

    .line 1
    new-instance v0, Lf1/u;

    .line 2
    .line 3
    iget-object v1, p1, Lf1/F0;->b:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p1, Lf1/F0;->a:Landroid/media/MediaRouter$RouteInfo;

    .line 6
    .line 7
    invoke-virtual {p0, v2}, Lf1/H0;->getRouteName(Landroid/media/MediaRouter$RouteInfo;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-direct {v0, v1, v2}, Lf1/u;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1, v0}, Lf1/H0;->onBuildSystemRouteDescriptor(Lf1/F0;Lf1/u;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lf1/u;->build()Lf1/v;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p1, Lf1/F0;->c:Lf1/v;

    .line 22
    .line 23
    return-void
.end method

.method public updateUserRouteProperties(Lf1/G0;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lf1/G0;->b:Landroid/media/MediaRouter$UserRouteInfo;

    .line 2
    .line 3
    iget-object v1, p1, Lf1/G0;->a:Lf1/U;

    .line 4
    .line 5
    invoke-virtual {v1}, Lf1/U;->getName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-static {v0, v2}, Lf1/c0;->setName(Landroid/media/MediaRouter$UserRouteInfo;Ljava/lang/CharSequence;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1}, Lf1/U;->getPlaybackType()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-object p1, p1, Lf1/G0;->b:Landroid/media/MediaRouter$UserRouteInfo;

    .line 17
    .line 18
    invoke-static {p1, v0}, Lf1/c0;->setPlaybackType(Landroid/media/MediaRouter$UserRouteInfo;I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Lf1/U;->getPlaybackStream()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    invoke-static {p1, v0}, Lf1/c0;->setPlaybackStream(Landroid/media/MediaRouter$UserRouteInfo;I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Lf1/U;->getVolume()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    invoke-static {p1, v0}, Lf1/c0;->setVolume(Landroid/media/MediaRouter$UserRouteInfo;I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Lf1/U;->getVolumeMax()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    invoke-static {p1, v0}, Lf1/c0;->setVolumeMax(Landroid/media/MediaRouter$UserRouteInfo;I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Lf1/U;->getVolumeHandling()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    invoke-static {p1, v0}, Lf1/c0;->setVolumeHandling(Landroid/media/MediaRouter$UserRouteInfo;I)V

    .line 47
    .line 48
    .line 49
    return-void
.end method
