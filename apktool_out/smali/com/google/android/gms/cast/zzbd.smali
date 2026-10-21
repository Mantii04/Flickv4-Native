.class public final synthetic Lcom/google/android/gms/cast/zzbd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/cast/zzbt;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/cast/zzbt;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/cast/zzbu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cast/zzbd;->a:Lcom/google/android/gms/cast/zzbt;

    iput-object p2, p0, Lcom/google/android/gms/cast/zzbd;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/cast/zzbd;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Lcom/google/android/gms/cast/internal/zzx;

    .line 2
    .line 3
    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/cast/zzbd;->a:Lcom/google/android/gms/cast/zzbt;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/cast/zzbt;->zzl()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const-string v2, "Not connected to device"

    .line 12
    .line 13
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lcom/google/android/gms/cast/internal/zzag;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/google/android/gms/cast/zzbd;->b:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v2, p0, Lcom/google/android/gms/cast/zzbd;->c:Ljava/lang/String;

    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    invoke-virtual {p1, v1, v2, v3}, Lcom/google/android/gms/cast/internal/zzag;->zzg(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/cast/zzbu;)V

    .line 28
    .line 29
    .line 30
    iget-object p1, v0, Lcom/google/android/gms/cast/zzbt;->q:Ljava/lang/Object;

    .line 31
    .line 32
    monitor-enter p1

    .line 33
    :try_start_0
    iget-object v1, v0, Lcom/google/android/gms/cast/zzbt;->n:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 34
    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    const/16 v1, 0x9ad

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/zzbt;->d(I)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception p2

    .line 44
    goto :goto_1

    .line 45
    :cond_0
    :goto_0
    iput-object p2, v0, Lcom/google/android/gms/cast/zzbt;->n:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 46
    .line 47
    monitor-exit p1

    .line 48
    return-void

    .line 49
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    throw p2
.end method
