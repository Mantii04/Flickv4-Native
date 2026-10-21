.class public final synthetic Lcom/google/android/gms/cast/zzay;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/cast/zzbt;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/google/android/gms/cast/LaunchOptions;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/cast/zzbt;Ljava/lang/String;Lcom/google/android/gms/cast/LaunchOptions;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cast/zzay;->a:Lcom/google/android/gms/cast/zzbt;

    iput-object p2, p0, Lcom/google/android/gms/cast/zzay;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/cast/zzay;->c:Lcom/google/android/gms/cast/LaunchOptions;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/google/android/gms/cast/internal/zzx;

    .line 2
    .line 3
    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/cast/zzay;->a:Lcom/google/android/gms/cast/zzbt;

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
    iget-object v1, p0, Lcom/google/android/gms/cast/zzay;->b:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v2, p0, Lcom/google/android/gms/cast/zzay;->c:Lcom/google/android/gms/cast/LaunchOptions;

    .line 25
    .line 26
    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/cast/internal/zzag;->zzh(Ljava/lang/String;Lcom/google/android/gms/cast/LaunchOptions;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, v0, Lcom/google/android/gms/cast/zzbt;->q:Ljava/lang/Object;

    .line 30
    .line 31
    monitor-enter p1

    .line 32
    :try_start_0
    iget-object v1, v0, Lcom/google/android/gms/cast/zzbt;->n:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 33
    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    const/16 v1, 0x9ad

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/zzbt;->d(I)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception p2

    .line 43
    goto :goto_1

    .line 44
    :cond_0
    :goto_0
    iput-object p2, v0, Lcom/google/android/gms/cast/zzbt;->n:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 45
    .line 46
    monitor-exit p1

    .line 47
    return-void

    .line 48
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    throw p2
.end method
