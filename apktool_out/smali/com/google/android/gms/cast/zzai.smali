.class final Lcom/google/android/gms/cast/zzai;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    .line 1
    check-cast p2, Lcom/google/android/gms/cast/zzao;

    .line 2
    .line 3
    iget-object p1, p2, Lcom/google/android/gms/cast/zzao;->a:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;

    .line 4
    .line 5
    sget-object p2, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->q:Lcom/google/android/gms/cast/internal/Logger;

    .line 6
    .line 7
    const-string p2, "startRemoteDisplaySession"

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->a(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string p2, "Starting the Cast Remote Display must be done on the main thread"

    .line 13
    .line 14
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sget-object p2, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->r:Ljava/lang/Object;

    .line 18
    .line 19
    monitor-enter p2

    .line 20
    :try_start_0
    sget-object v0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->t:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    sput-object p1, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->t:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;

    .line 26
    .line 27
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    new-instance p2, Ljava/lang/ref/WeakReference;

    .line 29
    .line 30
    invoke-direct {p2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    iput-object p2, p1, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->b:Ljava/lang/ref/WeakReference;

    .line 34
    .line 35
    iget-object p2, p1, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->f:Lf1/X;

    .line 36
    .line 37
    if-nez p2, :cond_0

    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    invoke-static {p2}, Lf1/X;->getInstance(Landroid/content/Context;)Lf1/X;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    iput-object p2, p1, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->f:Lf1/X;

    .line 48
    .line 49
    :cond_0
    const-string p2, "applicationId is required."

    .line 50
    .line 51
    invoke-static {v1, p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    new-instance p2, Lf1/K;

    .line 55
    .line 56
    invoke-direct {p2}, Lf1/K;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-static {v1}, Lcom/google/android/gms/cast/CastMediaControlIntent;->categoryForCast(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {p2, v0}, Lf1/K;->addControlCategory(Ljava/lang/String;)Lf1/K;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    invoke-virtual {p2}, Lf1/K;->build()Lf1/L;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    const-string v0, "addMediaRouterCallback"

    .line 72
    .line 73
    invoke-virtual {p1, v0}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->a(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iget-object v0, p1, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->f:Lf1/X;

    .line 77
    .line 78
    iget-object p1, p1, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->n:Lf1/M;

    .line 79
    .line 80
    const/4 v2, 0x4

    .line 81
    invoke-virtual {v0, p2, p1, v2}, Lf1/X;->addCallback(Lf1/L;Lf1/M;I)V

    .line 82
    .line 83
    .line 84
    throw v1

    .line 85
    :catchall_0
    move-exception p1

    .line 86
    goto :goto_0

    .line 87
    :cond_1
    :try_start_1
    sget-object p1, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->q:Lcom/google/android/gms/cast/internal/Logger;

    .line 88
    .line 89
    const-string v0, "An existing service had not been stopped before starting one"

    .line 90
    .line 91
    const/4 v2, 0x0

    .line 92
    new-array v3, v2, [Ljava/lang/Object;

    .line 93
    .line 94
    invoke-virtual {p1, v0, v3}, Lcom/google/android/gms/cast/internal/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    const-string p2, "Connected but unable to get the service instance"

    .line 99
    .line 100
    new-array v0, v2, [Ljava/lang/Object;

    .line 101
    .line 102
    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/cast/internal/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    .line 106
    .line 107
    const/16 p2, 0x898

    .line 108
    .line 109
    invoke-direct {p1, p2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    .line 110
    .line 111
    .line 112
    throw v1

    .line 113
    :goto_0
    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 114
    throw p1
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .line 1
    sget-object p1, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->q:Lcom/google/android/gms/cast/internal/Logger;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    new-array v0, v0, [Ljava/lang/Object;

    .line 5
    .line 6
    const-string v1, "onServiceDisconnected"

    .line 7
    .line 8
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    .line 12
    .line 13
    const/16 v0, 0x899

    .line 14
    .line 15
    const-string v1, "Service Disconnected"

    .line 16
    .line 17
    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    throw p1
.end method
