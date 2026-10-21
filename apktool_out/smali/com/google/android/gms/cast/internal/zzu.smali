.class final Lcom/google/android/gms/cast/internal/zzu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/google/android/gms/cast/internal/zzw;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/cast/internal/zzw;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/cast/internal/zzu;->b:Lcom/google/android/gms/cast/internal/zzw;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/cast/internal/zzu;->e:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/cast/internal/zzu;->f:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzu;->b:Lcom/google/android/gms/cast/internal/zzw;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/cast/internal/zzw;->d:Ljava/util/HashMap;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/cast/internal/zzu;->b:Lcom/google/android/gms/cast/internal/zzw;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/google/android/gms/cast/internal/zzw;->d:Ljava/util/HashMap;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/google/android/gms/cast/internal/zzu;->e:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;

    .line 17
    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzu;->b:Lcom/google/android/gms/cast/internal/zzw;

    .line 22
    .line 23
    iget-object v2, p0, Lcom/google/android/gms/cast/internal/zzu;->e:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v3, p0, Lcom/google/android/gms/cast/internal/zzu;->f:Ljava/lang/String;

    .line 26
    .line 27
    iget-object v0, v0, Lcom/google/android/gms/cast/internal/zzw;->b:Lcom/google/android/gms/cast/CastDevice;

    .line 28
    .line 29
    invoke-interface {v1, v0, v2, v3}, Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;->onMessageReceived(Lcom/google/android/gms/cast/CastDevice;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzu;->e:Ljava/lang/String;

    .line 34
    .line 35
    sget-object v1, Lcom/google/android/gms/cast/internal/zzw;->x:Lcom/google/android/gms/cast/internal/Logger;

    .line 36
    .line 37
    const/4 v2, 0x1

    .line 38
    new-array v2, v2, [Ljava/lang/Object;

    .line 39
    .line 40
    const/4 v3, 0x0

    .line 41
    aput-object v0, v2, v3

    .line 42
    .line 43
    const-string v0, "Discarded message for unknown namespace \'%s\'"

    .line 44
    .line 45
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :catchall_0
    move-exception v1

    .line 50
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    throw v1
.end method
