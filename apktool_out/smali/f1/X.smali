.class public final Lf1/X;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static c:Lf1/k;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "AxMediaRouter"

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    iput-object v0, p0, Lf1/X;->b:Ljava/util/ArrayList;

    .line 10
    .line 11
    iput-object p1, p0, Lf1/X;->a:Landroid/content/Context;

    .line 12
    .line 13
    return-void
.end method

.method public static a()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 13
    .line 14
    const-string v1, "The media router service must only be accessed on the application\'s main thread."

    .line 15
    .line 16
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw v0
.end method

.method public static b()Lf1/k;
    .locals 2

    .line 1
    sget-object v0, Lf1/X;->c:Lf1/k;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    const-string v1, "getGlobalRouter cannot be called when sGlobal is null"

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw v0
.end method

.method public static getInstance(Landroid/content/Context;)Lf1/X;
    .locals 4

    .line 1
    if-eqz p0, :cond_4

    .line 2
    .line 3
    invoke-static {}, Lf1/X;->a()V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lf1/X;->c:Lf1/k;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Lf1/k;

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-direct {v0, v1}, Lf1/k;-><init>(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lf1/X;->c:Lf1/k;

    .line 20
    .line 21
    :cond_0
    sget-object v0, Lf1/X;->c:Lf1/k;

    .line 22
    .line 23
    iget-object v0, v0, Lf1/k;->f:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    :cond_1
    :goto_0
    add-int/lit8 v1, v1, -0x1

    .line 30
    .line 31
    if-ltz v1, :cond_3

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    check-cast v2, Lf1/X;

    .line 44
    .line 45
    if-nez v2, :cond_2

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    iget-object v3, v2, Lf1/X;->a:Landroid/content/Context;

    .line 52
    .line 53
    if-ne v3, p0, :cond_1

    .line 54
    .line 55
    return-object v2

    .line 56
    :cond_3
    new-instance v1, Lf1/X;

    .line 57
    .line 58
    invoke-direct {v1, p0}, Lf1/X;-><init>(Landroid/content/Context;)V

    .line 59
    .line 60
    .line 61
    new-instance p0, Ljava/lang/ref/WeakReference;

    .line 62
    .line 63
    invoke-direct {p0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    return-object v1

    .line 70
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 71
    .line 72
    const-string v0, "context must not be null"

    .line 73
    .line 74
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw p0
.end method

.method public static isGroupVolumeUxEnabled()Z
    .locals 4

    .line 1
    sget-object v0, Lf1/X;->c:Lf1/k;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-static {}, Lf1/X;->b()Lf1/k;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v0, v0, Lf1/k;->p:Lf1/l0;

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    iget-object v0, v0, Lf1/l0;->d:Landroid/os/Bundle;

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    const-string v3, "androidx.mediarouter.media.MediaRouterParams.ENABLE_GROUP_VOLUME_UX"

    .line 21
    .line 22
    invoke-virtual {v0, v3, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    return v1

    .line 30
    :cond_2
    :goto_0
    return v2
.end method

.method public static isMediaTransferEnabled()Z
    .locals 1

    .line 1
    sget-object v0, Lf1/X;->c:Lf1/k;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-static {}, Lf1/X;->b()Lf1/k;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lf1/k;->f()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0
.end method


# virtual methods
.method public addCallback(Lf1/L;Lf1/M;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lf1/X;->addCallback(Lf1/L;Lf1/M;I)V

    return-void
.end method

.method public addCallback(Lf1/L;Lf1/M;I)V
    .locals 5

    if-eqz p1, :cond_8

    if-eqz p2, :cond_7

    .line 2
    invoke-static {}, Lf1/X;->a()V

    .line 3
    iget-object v0, p0, Lf1/X;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    .line 4
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lf1/N;

    iget-object v4, v4, Lf1/N;->b:Lf1/M;

    if-ne v4, p2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    :goto_1
    if-gez v3, :cond_2

    .line 5
    new-instance v1, Lf1/N;

    invoke-direct {v1, p0, p2}, Lf1/N;-><init>(Lf1/X;Lf1/M;)V

    .line 6
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 7
    :cond_2
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Lf1/N;

    .line 8
    :goto_2
    iget p2, v1, Lf1/N;->d:I

    const/4 v0, 0x1

    if-eq p3, p2, :cond_3

    .line 9
    iput p3, v1, Lf1/N;->d:I

    move v2, v0

    .line 10
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    and-int/lit8 p2, p3, 0x1

    if-eqz p2, :cond_4

    move v2, v0

    .line 11
    :cond_4
    iput-wide v3, v1, Lf1/N;->e:J

    .line 12
    iget-object p2, v1, Lf1/N;->c:Lf1/L;

    invoke-virtual {p2, p1}, Lf1/L;->contains(Lf1/L;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 13
    new-instance p2, Lf1/K;

    iget-object p3, v1, Lf1/N;->c:Lf1/L;

    invoke-direct {p2, p3}, Lf1/K;-><init>(Lf1/L;)V

    .line 14
    invoke-virtual {p2, p1}, Lf1/K;->addSelector(Lf1/L;)Lf1/K;

    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lf1/K;->build()Lf1/L;

    move-result-object p1

    iput-object p1, v1, Lf1/N;->c:Lf1/L;

    goto :goto_3

    :cond_5
    move v0, v2

    :goto_3
    if-eqz v0, :cond_6

    .line 16
    invoke-static {}, Lf1/X;->b()Lf1/k;

    move-result-object p1

    invoke-virtual {p1}, Lf1/k;->k()V

    :cond_6
    return-void

    .line 17
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "callback must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "selector must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addMemberToDynamicGroup(Lf1/U;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    invoke-static {}, Lf1/X;->a()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lf1/X;->b()Lf1/k;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, v0, Lf1/k;->t:Lf1/F;

    .line 11
    .line 12
    instance-of v1, v1, Lf1/C;

    .line 13
    .line 14
    if-eqz v1, :cond_2

    .line 15
    .line 16
    iget-object v1, v0, Lf1/k;->s:Lf1/U;

    .line 17
    .line 18
    invoke-virtual {v1, p1}, Lf1/U;->getDynamicGroupState(Lf1/U;)Lf1/T;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iget-object v2, v0, Lf1/k;->s:Lf1/U;

    .line 23
    .line 24
    invoke-virtual {v2}, Lf1/U;->getMemberRoutes()Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-nez v2, :cond_1

    .line 33
    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    invoke-virtual {v1}, Lf1/T;->isGroupable()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-nez v1, :cond_0

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    iget-object v0, v0, Lf1/k;->t:Lf1/F;

    .line 44
    .line 45
    check-cast v0, Lf1/C;

    .line 46
    .line 47
    iget-object p1, p1, Lf1/U;->b:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {v0, p1}, Lf1/C;->onAddMemberRoute(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string v1, "Ignoring attempt to add a non-groupable route to dynamic group : "

    .line 56
    .line 57
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    const-string v0, "GlobalMediaRouter"

    .line 68
    .line 69
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 74
    .line 75
    const-string v0, "There is no currently selected dynamic group route."

    .line 76
    .line 77
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    throw p1

    .line 81
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    .line 82
    .line 83
    const-string v0, "route must not be null"

    .line 84
    .line 85
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    throw p1
.end method

.method public getBluetoothRoute()Lf1/U;
    .locals 1

    .line 1
    invoke-static {}, Lf1/X;->a()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lf1/X;->b()Lf1/k;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v0, v0, Lf1/k;->r:Lf1/U;

    .line 9
    .line 10
    return-object v0
.end method

.method public getDefaultRoute()Lf1/U;
    .locals 2

    .line 1
    invoke-static {}, Lf1/X;->a()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lf1/X;->b()Lf1/k;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v0, v0, Lf1/k;->q:Lf1/U;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 14
    .line 15
    const-string v1, "There is no default route.  The media router has not yet been fully initialized."

    .line 16
    .line 17
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw v0
.end method

.method public getMediaSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .locals 3

    .line 1
    sget-object v0, Lf1/X;->c:Lf1/k;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    iget-object v2, v0, Lf1/k;->C:Lf1/g;

    .line 8
    .line 9
    if-eqz v2, :cond_1

    .line 10
    .line 11
    iget-object v0, v2, Lf1/g;->a:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 12
    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->getSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0

    .line 20
    :cond_1
    iget-object v0, v0, Lf1/k;->D:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->getSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    return-object v0

    .line 29
    :cond_2
    return-object v1
.end method

.method public getRouterParams()Lf1/l0;
    .locals 1

    .line 1
    invoke-static {}, Lf1/X;->a()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lf1/X;->b()Lf1/k;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v0, v0, Lf1/k;->p:Lf1/l0;

    .line 9
    .line 10
    return-object v0
.end method

.method public getRoutes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lf1/U;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lf1/X;->a()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lf1/X;->b()Lf1/k;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v0, v0, Lf1/k;->g:Ljava/util/ArrayList;

    .line 9
    .line 10
    return-object v0
.end method

.method public getSelectedRoute()Lf1/U;
    .locals 1

    .line 1
    invoke-static {}, Lf1/X;->a()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lf1/X;->b()Lf1/k;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lf1/k;->e()Lf1/U;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method public isRouteAvailable(Lf1/L;I)Z
    .locals 10

    .line 1
    if-eqz p1, :cond_7

    .line 2
    .line 3
    invoke-static {}, Lf1/X;->a()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lf1/X;->b()Lf1/k;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lf1/L;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x0

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    goto :goto_4

    .line 21
    :cond_0
    and-int/lit8 v1, p2, 0x2

    .line 22
    .line 23
    const/4 v3, 0x1

    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    iget-boolean v1, v0, Lf1/k;->n:Z

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    goto :goto_2

    .line 31
    :cond_1
    iget-object v1, v0, Lf1/k;->p:Lf1/l0;

    .line 32
    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    invoke-virtual {v1}, Lf1/l0;->isOutputSwitcherEnabled()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_2

    .line 40
    .line 41
    invoke-virtual {v0}, Lf1/k;->f()Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_2

    .line 46
    .line 47
    move v1, v3

    .line 48
    goto :goto_0

    .line 49
    :cond_2
    move v1, v2

    .line 50
    :goto_0
    iget-object v4, v0, Lf1/k;->g:Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    move v6, v2

    .line 57
    :goto_1
    if-ge v6, v5, :cond_6

    .line 58
    .line 59
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v7

    .line 63
    check-cast v7, Lf1/U;

    .line 64
    .line 65
    and-int/lit8 v8, p2, 0x1

    .line 66
    .line 67
    if-eqz v8, :cond_3

    .line 68
    .line 69
    invoke-virtual {v7}, Lf1/U;->isDefaultOrBluetooth()Z

    .line 70
    .line 71
    .line 72
    move-result v8

    .line 73
    if-eqz v8, :cond_3

    .line 74
    .line 75
    goto :goto_3

    .line 76
    :cond_3
    if-eqz v1, :cond_4

    .line 77
    .line 78
    invoke-virtual {v7}, Lf1/U;->isDefaultOrBluetooth()Z

    .line 79
    .line 80
    .line 81
    move-result v8

    .line 82
    if-nez v8, :cond_4

    .line 83
    .line 84
    invoke-virtual {v7}, Lf1/U;->getProviderInstance()Lf1/G;

    .line 85
    .line 86
    .line 87
    move-result-object v8

    .line 88
    iget-object v9, v0, Lf1/k;->e:Lf1/t;

    .line 89
    .line 90
    if-eq v8, v9, :cond_4

    .line 91
    .line 92
    goto :goto_3

    .line 93
    :cond_4
    invoke-virtual {v7, p1}, Lf1/U;->matchesSelector(Lf1/L;)Z

    .line 94
    .line 95
    .line 96
    move-result v7

    .line 97
    if-eqz v7, :cond_5

    .line 98
    .line 99
    :goto_2
    return v3

    .line 100
    :cond_5
    :goto_3
    add-int/lit8 v6, v6, 0x1

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_6
    :goto_4
    return v2

    .line 104
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 105
    .line 106
    const-string p2, "selector must not be null"

    .line 107
    .line 108
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    throw p1
.end method

.method public removeCallback(Lf1/M;)V
    .locals 4

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    invoke-static {}, Lf1/X;->a()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lf1/X;->b:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x0

    .line 13
    :goto_0
    if-ge v2, v1, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    check-cast v3, Lf1/N;

    .line 20
    .line 21
    iget-object v3, v3, Lf1/N;->b:Lf1/M;

    .line 22
    .line 23
    if-ne v3, p1, :cond_0

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 v2, -0x1

    .line 30
    :goto_1
    if-ltz v2, :cond_2

    .line 31
    .line 32
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    invoke-static {}, Lf1/X;->b()Lf1/k;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p1}, Lf1/k;->k()V

    .line 40
    .line 41
    .line 42
    :cond_2
    return-void

    .line 43
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 44
    .line 45
    const-string v0, "callback must not be null"

    .line 46
    .line 47
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw p1
.end method

.method public removeMemberFromDynamicGroup(Lf1/U;)V
    .locals 4

    .line 1
    if-eqz p1, :cond_4

    .line 2
    .line 3
    invoke-static {}, Lf1/X;->a()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lf1/X;->b()Lf1/k;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, v0, Lf1/k;->t:Lf1/F;

    .line 11
    .line 12
    instance-of v1, v1, Lf1/C;

    .line 13
    .line 14
    if-eqz v1, :cond_3

    .line 15
    .line 16
    iget-object v1, v0, Lf1/k;->s:Lf1/U;

    .line 17
    .line 18
    invoke-virtual {v1, p1}, Lf1/U;->getDynamicGroupState(Lf1/U;)Lf1/T;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iget-object v2, v0, Lf1/k;->s:Lf1/U;

    .line 23
    .line 24
    invoke-virtual {v2}, Lf1/U;->getMemberRoutes()Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    const-string v3, "GlobalMediaRouter"

    .line 33
    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    invoke-virtual {v1}, Lf1/T;->isUnselectable()Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-nez v1, :cond_0

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    iget-object v1, v0, Lf1/k;->s:Lf1/U;

    .line 46
    .line 47
    invoke-virtual {v1}, Lf1/U;->getMemberRoutes()Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    const/4 v2, 0x1

    .line 56
    if-gt v1, v2, :cond_1

    .line 57
    .line 58
    const-string p1, "Ignoring attempt to remove the last member route."

    .line 59
    .line 60
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :cond_1
    iget-object v0, v0, Lf1/k;->t:Lf1/F;

    .line 65
    .line 66
    check-cast v0, Lf1/C;

    .line 67
    .line 68
    iget-object p1, p1, Lf1/U;->b:Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {v0, p1}, Lf1/C;->onRemoveMemberRoute(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    const-string v1, "Ignoring attempt to remove a non-unselectable member route : "

    .line 77
    .line 78
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    return-void

    .line 92
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 93
    .line 94
    const-string v0, "There is no currently selected dynamic group route."

    .line 95
    .line 96
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    throw p1

    .line 100
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    .line 101
    .line 102
    const-string v0, "route must not be null"

    .line 103
    .line 104
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    throw p1
.end method

.method public selectRoute(Lf1/U;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-static {}, Lf1/X;->a()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lf1/X;->b()Lf1/k;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x3

    .line 11
    invoke-virtual {v0, p1, v1}, Lf1/k;->i(Lf1/U;I)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 16
    .line 17
    const-string v0, "route must not be null"

    .line 18
    .line 19
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw p1
.end method

.method public setMediaSessionCompat(Landroid/support/v4/media/session/MediaSessionCompat;)V
    .locals 2

    .line 1
    invoke-static {}, Lf1/X;->a()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lf1/X;->b()Lf1/k;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object p1, v0, Lf1/k;->D:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lf1/g;

    .line 13
    .line 14
    invoke-direct {v1, v0, p1}, Lf1/g;-><init>(Lf1/k;Landroid/support/v4/media/session/MediaSessionCompat;)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v1, 0x0

    .line 19
    :goto_0
    iget-object p1, v0, Lf1/k;->C:Lf1/g;

    .line 20
    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    invoke-virtual {p1}, Lf1/g;->a()V

    .line 24
    .line 25
    .line 26
    :cond_1
    iput-object v1, v0, Lf1/k;->C:Lf1/g;

    .line 27
    .line 28
    if-eqz v1, :cond_2

    .line 29
    .line 30
    invoke-virtual {v0}, Lf1/k;->l()V

    .line 31
    .line 32
    .line 33
    :cond_2
    return-void
.end method

.method public setOnPrepareTransferListener(Lf1/P;)V
    .locals 1

    .line 1
    invoke-static {}, Lf1/X;->a()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lf1/X;->b()Lf1/k;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object p1, v0, Lf1/k;->A:Lf1/P;

    .line 9
    .line 10
    return-void
.end method

.method public setRouterParams(Lf1/l0;)V
    .locals 6

    .line 1
    invoke-static {}, Lf1/X;->a()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lf1/X;->b()Lf1/k;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, v0, Lf1/k;->p:Lf1/l0;

    .line 9
    .line 10
    iput-object p1, v0, Lf1/k;->p:Lf1/l0;

    .line 11
    .line 12
    invoke-virtual {v0}, Lf1/k;->f()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_3

    .line 17
    .line 18
    iget-object v2, v0, Lf1/k;->e:Lf1/t;

    .line 19
    .line 20
    const/4 v3, 0x1

    .line 21
    if-nez v2, :cond_0

    .line 22
    .line 23
    new-instance v2, Lf1/t;

    .line 24
    .line 25
    new-instance v4, Lf1/h;

    .line 26
    .line 27
    invoke-direct {v4, v0}, Lf1/h;-><init>(Lf1/k;)V

    .line 28
    .line 29
    .line 30
    iget-object v5, v0, Lf1/k;->a:Landroid/content/Context;

    .line 31
    .line 32
    invoke-direct {v2, v5, v4}, Lf1/t;-><init>(Landroid/content/Context;Lf1/h;)V

    .line 33
    .line 34
    .line 35
    iput-object v2, v0, Lf1/k;->e:Lf1/t;

    .line 36
    .line 37
    invoke-virtual {v0, v2, v3}, Lf1/k;->a(Lf1/G;Z)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Lf1/k;->k()V

    .line 41
    .line 42
    .line 43
    iget-object v2, v0, Lf1/k;->c:Lf1/B0;

    .line 44
    .line 45
    invoke-virtual {v2}, Lf1/B0;->rescan()V

    .line 46
    .line 47
    .line 48
    :cond_0
    const/4 v2, 0x0

    .line 49
    if-eqz v1, :cond_1

    .line 50
    .line 51
    invoke-virtual {v1}, Lf1/l0;->isTransferToLocalEnabled()Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_1

    .line 56
    .line 57
    move v1, v3

    .line 58
    goto :goto_0

    .line 59
    :cond_1
    move v1, v2

    .line 60
    :goto_0
    if-eqz p1, :cond_2

    .line 61
    .line 62
    invoke-virtual {p1}, Lf1/l0;->isTransferToLocalEnabled()Z

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    if-eqz v4, :cond_2

    .line 67
    .line 68
    move v2, v3

    .line 69
    :cond_2
    if-eq v1, v2, :cond_4

    .line 70
    .line 71
    iget-object v1, v0, Lf1/k;->e:Lf1/t;

    .line 72
    .line 73
    iget-object v2, v0, Lf1/k;->y:Lf1/w;

    .line 74
    .line 75
    iput-object v2, v1, Lf1/G;->e:Lf1/w;

    .line 76
    .line 77
    iget-boolean v2, v1, Lf1/G;->f:Z

    .line 78
    .line 79
    if-nez v2, :cond_4

    .line 80
    .line 81
    iput-boolean v3, v1, Lf1/G;->f:Z

    .line 82
    .line 83
    iget-object v1, v1, Lf1/G;->c:Lf1/D;

    .line 84
    .line 85
    const/4 v2, 0x2

    .line 86
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_3
    iget-object v1, v0, Lf1/k;->e:Lf1/t;

    .line 91
    .line 92
    if-eqz v1, :cond_4

    .line 93
    .line 94
    invoke-virtual {v0, v1}, Lf1/k;->removeProvider(Lf1/G;)V

    .line 95
    .line 96
    .line 97
    const/4 v1, 0x0

    .line 98
    iput-object v1, v0, Lf1/k;->e:Lf1/t;

    .line 99
    .line 100
    iget-object v1, v0, Lf1/k;->c:Lf1/B0;

    .line 101
    .line 102
    invoke-virtual {v1}, Lf1/B0;->rescan()V

    .line 103
    .line 104
    .line 105
    :cond_4
    :goto_1
    iget-object v0, v0, Lf1/k;->m:Lf1/d;

    .line 106
    .line 107
    const/16 v1, 0x301

    .line 108
    .line 109
    invoke-virtual {v0, v1, p1}, Lf1/d;->b(ILjava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    return-void
.end method

.method public transferToRoute(Lf1/U;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    invoke-static {}, Lf1/X;->a()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lf1/X;->b()Lf1/k;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, v0, Lf1/k;->t:Lf1/F;

    .line 11
    .line 12
    instance-of v1, v1, Lf1/C;

    .line 13
    .line 14
    if-eqz v1, :cond_2

    .line 15
    .line 16
    iget-object v1, v0, Lf1/k;->s:Lf1/U;

    .line 17
    .line 18
    invoke-virtual {v1, p1}, Lf1/U;->getDynamicGroupState(Lf1/U;)Lf1/T;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    invoke-virtual {v1}, Lf1/T;->isTransferable()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget-object v0, v0, Lf1/k;->t:Lf1/F;

    .line 32
    .line 33
    check-cast v0, Lf1/C;

    .line 34
    .line 35
    iget-object p1, p1, Lf1/U;->b:Ljava/lang/String;

    .line 36
    .line 37
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {v0, p1}, Lf1/C;->onUpdateMemberRoutes(Ljava/util/List;)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_1
    :goto_0
    const-string p1, "GlobalMediaRouter"

    .line 46
    .line 47
    const-string v0, "Ignoring attempt to transfer to a non-transferable route."

    .line 48
    .line 49
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 54
    .line 55
    const-string v0, "There is no currently selected dynamic group route."

    .line 56
    .line 57
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw p1

    .line 61
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    .line 62
    .line 63
    const-string v0, "route must not be null"

    .line 64
    .line 65
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw p1
.end method

.method public unselect(I)V
    .locals 3

    .line 1
    if-ltz p1, :cond_1

    .line 2
    .line 3
    const/4 v0, 0x3

    .line 4
    if-gt p1, v0, :cond_1

    .line 5
    .line 6
    invoke-static {}, Lf1/X;->a()V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lf1/X;->b()Lf1/k;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lf1/k;->c()Lf1/U;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0}, Lf1/k;->e()Lf1/U;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    if-eq v2, v1, :cond_0

    .line 22
    .line 23
    invoke-virtual {v0, v1, p1}, Lf1/k;->i(Lf1/U;I)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void

    .line 27
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 28
    .line 29
    const-string v0, "Unsupported reason to unselect route"

    .line 30
    .line 31
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw p1
.end method
