.class public final synthetic Lcom/google/android/gms/cast/zzbj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/cast/zzbt;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/cast/zzbt;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cast/zzbj;->a:Lcom/google/android/gms/cast/zzbt;

    iput-object p2, p0, Lcom/google/android/gms/cast/zzbj;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/zzbj;->a:Lcom/google/android/gms/cast/zzbt;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/cast/zzbj;->b:Ljava/lang/String;

    .line 4
    .line 5
    check-cast p1, Lcom/google/android/gms/cast/internal/zzx;

    .line 6
    .line 7
    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/cast/zzbt;->zzl()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const-string v3, "Not connected to device"

    .line 14
    .line 15
    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Lcom/google/android/gms/cast/internal/zzag;

    .line 23
    .line 24
    invoke-virtual {p1, v1}, Lcom/google/android/gms/cast/internal/zzag;->zzp(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, v0, Lcom/google/android/gms/cast/zzbt;->r:Ljava/lang/Object;

    .line 28
    .line 29
    monitor-enter p1

    .line 30
    :try_start_0
    iget-object v1, v0, Lcom/google/android/gms/cast/zzbt;->o:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 31
    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    .line 35
    .line 36
    const/16 v1, 0x7d1

    .line 37
    .line 38
    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    .line 39
    .line 40
    .line 41
    invoke-static {v0}, Lcom/google/android/gms/common/internal/ApiExceptionUtil;->fromStatus(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/ApiException;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {p2, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    .line 46
    .line 47
    .line 48
    monitor-exit p1

    .line 49
    return-void

    .line 50
    :catchall_0
    move-exception p2

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    iput-object p2, v0, Lcom/google/android/gms/cast/zzbt;->o:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 53
    .line 54
    monitor-exit p1

    .line 55
    return-void

    .line 56
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    throw p2
.end method
