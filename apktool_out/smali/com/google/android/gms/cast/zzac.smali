.class final Lcom/google/android/gms/cast/zzac;
.super Lcom/google/android/gms/cast/zzaf;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field public final synthetic b:Lcom/google/android/gms/internal/cast/zzdo;

.field public final synthetic c:Lcom/google/android/gms/cast/CastRemoteDisplayClient;

.field public final synthetic d:Lcom/google/android/gms/cast/zzal;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/cast/CastRemoteDisplayClient;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/internal/cast/zzdo;Lcom/google/android/gms/cast/zzal;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/cast/zzac;->c:Lcom/google/android/gms/cast/CastRemoteDisplayClient;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/google/android/gms/cast/zzac;->a:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/google/android/gms/cast/zzac;->b:Lcom/google/android/gms/internal/cast/zzdo;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/google/android/gms/cast/zzac;->d:Lcom/google/android/gms/cast/zzal;

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzdr;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final zzb(IILandroid/view/Surface;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/zzac;->c:Lcom/google/android/gms/cast/CastRemoteDisplayClient;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/gms/cast/CastRemoteDisplayClient;->j:Lcom/google/android/gms/cast/internal/Logger;

    .line 4
    .line 5
    const-string v2, "onConnected"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    new-array v4, v3, [Ljava/lang/Object;

    .line 9
    .line 10
    invoke-virtual {v1, v2, v4}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApi;->getApplicationContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const-string v2, "display"

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    move-object v4, v1

    .line 24
    check-cast v4, Landroid/hardware/display/DisplayManager;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    iget-object v2, p0, Lcom/google/android/gms/cast/zzac;->a:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 28
    .line 29
    if-nez v4, :cond_0

    .line 30
    .line 31
    iget-object p1, v0, Lcom/google/android/gms/cast/CastRemoteDisplayClient;->j:Lcom/google/android/gms/cast/internal/Logger;

    .line 32
    .line 33
    new-array p2, v3, [Ljava/lang/Object;

    .line 34
    .line 35
    const-string p3, "Unable to get the display manager"

    .line 36
    .line 37
    invoke-virtual {p1, p3, p2}, Lcom/google/android/gms/cast/internal/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    sget-object p1, Lcom/google/android/gms/common/api/Status;->p:Lcom/google/android/gms/common/api/Status;

    .line 41
    .line 42
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/api/internal/TaskUtil;->setResultOrApiException(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/cast/CastRemoteDisplayClient;->a(Lcom/google/android/gms/cast/CastRemoteDisplayClient;)V

    .line 47
    .line 48
    .line 49
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    mul-int/lit16 v5, v5, 0x140

    .line 54
    .line 55
    div-int/lit16 v8, v5, 0x438

    .line 56
    .line 57
    const/4 v10, 0x2

    .line 58
    const-string v5, "private_display"

    .line 59
    .line 60
    move v6, p1

    .line 61
    move v7, p2

    .line 62
    move-object v9, p3

    .line 63
    invoke-virtual/range {v4 .. v10}, Landroid/hardware/display/DisplayManager;->createVirtualDisplay(Ljava/lang/String;IIILandroid/view/Surface;I)Landroid/hardware/display/VirtualDisplay;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    iput-object p1, v0, Lcom/google/android/gms/cast/CastRemoteDisplayClient;->k:Landroid/hardware/display/VirtualDisplay;

    .line 68
    .line 69
    iget-object p1, v0, Lcom/google/android/gms/cast/CastRemoteDisplayClient;->k:Landroid/hardware/display/VirtualDisplay;

    .line 70
    .line 71
    if-nez p1, :cond_1

    .line 72
    .line 73
    new-array p1, v3, [Ljava/lang/Object;

    .line 74
    .line 75
    const-string p2, "Unable to create virtual display"

    .line 76
    .line 77
    iget-object p3, v0, Lcom/google/android/gms/cast/CastRemoteDisplayClient;->j:Lcom/google/android/gms/cast/internal/Logger;

    .line 78
    .line 79
    invoke-virtual {p3, p2, p1}, Lcom/google/android/gms/cast/internal/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    sget-object p1, Lcom/google/android/gms/common/api/Status;->p:Lcom/google/android/gms/common/api/Status;

    .line 83
    .line 84
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/api/internal/TaskUtil;->setResultOrApiException(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :cond_1
    invoke-virtual {p1}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    if-nez p1, :cond_2

    .line 93
    .line 94
    iget-object p1, v0, Lcom/google/android/gms/cast/CastRemoteDisplayClient;->j:Lcom/google/android/gms/cast/internal/Logger;

    .line 95
    .line 96
    new-array p2, v3, [Ljava/lang/Object;

    .line 97
    .line 98
    const-string p3, "Virtual display does not have a display"

    .line 99
    .line 100
    invoke-virtual {p1, p3, p2}, Lcom/google/android/gms/cast/internal/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    sget-object p1, Lcom/google/android/gms/common/api/Status;->p:Lcom/google/android/gms/common/api/Status;

    .line 104
    .line 105
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/api/internal/TaskUtil;->setResultOrApiException(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 106
    .line 107
    .line 108
    return-void

    .line 109
    :cond_2
    :try_start_0
    iget-object p2, p0, Lcom/google/android/gms/cast/zzac;->b:Lcom/google/android/gms/internal/cast/zzdo;

    .line 110
    .line 111
    invoke-virtual {p2}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    check-cast p2, Lcom/google/android/gms/internal/cast/zzdt;

    .line 116
    .line 117
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    invoke-virtual {p2, p0, p1}, Lcom/google/android/gms/internal/cast/zzdt;->zzf(Lcom/google/android/gms/internal/cast/zzds;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    .line 123
    .line 124
    return-void

    .line 125
    :catch_0
    iget-object p1, v0, Lcom/google/android/gms/cast/CastRemoteDisplayClient;->j:Lcom/google/android/gms/cast/internal/Logger;

    .line 126
    .line 127
    new-array p2, v3, [Ljava/lang/Object;

    .line 128
    .line 129
    const-string p3, "Unable to provision the route\'s new virtual Display"

    .line 130
    .line 131
    invoke-virtual {p1, p3, p2}, Lcom/google/android/gms/cast/internal/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    sget-object p1, Lcom/google/android/gms/common/api/Status;->p:Lcom/google/android/gms/common/api/Status;

    .line 135
    .line 136
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/api/internal/TaskUtil;->setResultOrApiException(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 137
    .line 138
    .line 139
    return-void
.end method

.method public final zzc()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/zzac;->c:Lcom/google/android/gms/cast/CastRemoteDisplayClient;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/gms/cast/CastRemoteDisplayClient;->j:Lcom/google/android/gms/cast/internal/Logger;

    .line 4
    .line 5
    const-string v2, "onConnectedWithDisplay"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    new-array v4, v3, [Ljava/lang/Object;

    .line 9
    .line 10
    invoke-virtual {v1, v2, v4}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, v0, Lcom/google/android/gms/cast/CastRemoteDisplayClient;->k:Landroid/hardware/display/VirtualDisplay;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    iget-object v4, p0, Lcom/google/android/gms/cast/zzac;->a:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 17
    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    new-array v1, v3, [Ljava/lang/Object;

    .line 21
    .line 22
    const-string v3, "There is no virtual display"

    .line 23
    .line 24
    iget-object v0, v0, Lcom/google/android/gms/cast/CastRemoteDisplayClient;->j:Lcom/google/android/gms/cast/internal/Logger;

    .line 25
    .line 26
    invoke-virtual {v0, v3, v1}, Lcom/google/android/gms/cast/internal/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    sget-object v0, Lcom/google/android/gms/common/api/Status;->p:Lcom/google/android/gms/common/api/Status;

    .line 30
    .line 31
    invoke-static {v0, v2, v4}, Lcom/google/android/gms/common/api/internal/TaskUtil;->setResultOrApiException(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    invoke-virtual {v1}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    sget-object v0, Lcom/google/android/gms/common/api/Status;->m:Lcom/google/android/gms/common/api/Status;

    .line 42
    .line 43
    invoke-static {v0, v1, v4}, Lcom/google/android/gms/common/api/internal/TaskUtil;->setResultOrApiException(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_1
    iget-object v0, v0, Lcom/google/android/gms/cast/CastRemoteDisplayClient;->j:Lcom/google/android/gms/cast/internal/Logger;

    .line 48
    .line 49
    new-array v1, v3, [Ljava/lang/Object;

    .line 50
    .line 51
    const-string v3, "Virtual display no longer has a display"

    .line 52
    .line 53
    invoke-virtual {v0, v3, v1}, Lcom/google/android/gms/cast/internal/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    sget-object v0, Lcom/google/android/gms/common/api/Status;->p:Lcom/google/android/gms/common/api/Status;

    .line 57
    .line 58
    invoke-static {v0, v2, v4}, Lcom/google/android/gms/common/api/internal/TaskUtil;->setResultOrApiException(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public final zzd(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/zzac;->c:Lcom/google/android/gms/cast/CastRemoteDisplayClient;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/gms/cast/CastRemoteDisplayClient;->j:Lcom/google/android/gms/cast/internal/Logger;

    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const/4 v2, 0x1

    .line 10
    new-array v2, v2, [Ljava/lang/Object;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    aput-object p1, v2, v3

    .line 14
    .line 15
    const-string p1, "onError: %d"

    .line 16
    .line 17
    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lcom/google/android/gms/cast/CastRemoteDisplayClient;->a(Lcom/google/android/gms/cast/CastRemoteDisplayClient;)V

    .line 21
    .line 22
    .line 23
    sget-object p1, Lcom/google/android/gms/common/api/Status;->p:Lcom/google/android/gms/common/api/Status;

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    iget-object v1, p0, Lcom/google/android/gms/cast/zzac;->a:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 27
    .line 28
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/api/internal/TaskUtil;->setResultOrApiException(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final zze(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/zzac;->c:Lcom/google/android/gms/cast/CastRemoteDisplayClient;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/cast/CastRemoteDisplayClient;->j:Lcom/google/android/gms/cast/internal/Logger;

    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x1

    .line 10
    new-array v2, v2, [Ljava/lang/Object;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    aput-object v1, v2, v3

    .line 14
    .line 15
    const-string v1, "onRemoteDisplayMuteStateChanged: %b"

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/google/android/gms/cast/zzac;->d:Lcom/google/android/gms/cast/zzal;

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v1, "onRemoteDisplayMuteStateChanged: "

    .line 28
    .line 29
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    sget-object p1, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->q:Lcom/google/android/gms/cast/internal/Logger;

    .line 36
    .line 37
    const/4 p1, 0x0

    .line 38
    throw p1
.end method
