.class final Lcom/google/android/gms/cast/zzad;
.super Lcom/google/android/gms/cast/zzaf;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field public final synthetic b:Lcom/google/android/gms/cast/CastRemoteDisplayClient;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/cast/CastRemoteDisplayClient;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/cast/zzad;->b:Lcom/google/android/gms/cast/CastRemoteDisplayClient;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/google/android/gms/cast/zzad;->a:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzdr;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final zzd(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/zzad;->b:Lcom/google/android/gms/cast/CastRemoteDisplayClient;

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
    iget-object v0, p0, Lcom/google/android/gms/cast/zzad;->a:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 26
    .line 27
    invoke-static {p1, v0}, Lcom/google/android/gms/common/api/internal/TaskUtil;->setResultOrApiException(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final zzf()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/zzad;->b:Lcom/google/android/gms/cast/CastRemoteDisplayClient;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/gms/cast/CastRemoteDisplayClient;->j:Lcom/google/android/gms/cast/internal/Logger;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    new-array v2, v2, [Ljava/lang/Object;

    .line 7
    .line 8
    const-string v3, "onDisconnected"

    .line 9
    .line 10
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/google/android/gms/cast/CastRemoteDisplayClient;->a(Lcom/google/android/gms/cast/CastRemoteDisplayClient;)V

    .line 14
    .line 15
    .line 16
    sget-object v0, Lcom/google/android/gms/common/api/Status;->m:Lcom/google/android/gms/common/api/Status;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/google/android/gms/cast/zzad;->a:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 19
    .line 20
    invoke-static {v0, v1}, Lcom/google/android/gms/common/api/internal/TaskUtil;->setResultOrApiException(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
