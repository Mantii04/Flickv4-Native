.class final Lcom/google/android/gms/cast/zzbs;
.super Lcom/google/android/gms/cast/internal/zzah;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/google/android/gms/cast/zzbt;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/cast/zzbt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/cast/zzbs;->a:Lcom/google/android/gms/cast/zzbt;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/cast/internal/zzah;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/cast/ApplicationMetadata;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/zzbs;->a:Lcom/google/android/gms/cast/zzbt;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/google/android/gms/cast/zzbt;->s:Lcom/google/android/gms/cast/ApplicationMetadata;

    .line 4
    .line 5
    iput-object p2, v0, Lcom/google/android/gms/cast/zzbt;->t:Ljava/lang/String;

    .line 6
    .line 7
    new-instance v1, Lcom/google/android/gms/cast/internal/zzq;

    .line 8
    .line 9
    new-instance v2, Lcom/google/android/gms/common/api/Status;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-direct {v2, v0}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    .line 13
    .line 14
    .line 15
    move-object v3, p1

    .line 16
    move-object v4, p2

    .line 17
    move-object v5, p3

    .line 18
    move v6, p4

    .line 19
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/cast/internal/zzq;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/cast/ApplicationMetadata;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/google/android/gms/cast/zzbs;->a:Lcom/google/android/gms/cast/zzbt;

    .line 23
    .line 24
    iget-object p2, p1, Lcom/google/android/gms/cast/zzbt;->q:Ljava/lang/Object;

    .line 25
    .line 26
    monitor-enter p2

    .line 27
    :try_start_0
    iget-object p3, p1, Lcom/google/android/gms/cast/zzbt;->n:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 28
    .line 29
    if-eqz p3, :cond_0

    .line 30
    .line 31
    invoke-virtual {p3, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception v0

    .line 36
    move-object p1, v0

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    :goto_0
    const/4 p3, 0x0

    .line 39
    iput-object p3, p1, Lcom/google/android/gms/cast/zzbt;->n:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 40
    .line 41
    monitor-exit p2

    .line 42
    return-void

    .line 43
    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    throw p1
.end method

.method public final zzc(I)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/cast/zzbt;->F:Lcom/google/android/gms/cast/internal/Logger;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/cast/zzbs;->a:Lcom/google/android/gms/cast/zzbt;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/zzbt;->d(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final zzd(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/zzbs;->a:Lcom/google/android/gms/cast/zzbt;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/google/android/gms/cast/zzbt;->b(Lcom/google/android/gms/cast/zzbt;I)V

    .line 4
    .line 5
    .line 6
    iget-object v1, v0, Lcom/google/android/gms/cast/zzbt;->C:Lcom/google/android/gms/cast/Cast$Listener;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-static {v0}, Lcom/google/android/gms/cast/zzbt;->f(Lcom/google/android/gms/cast/zzbt;)Landroid/os/Handler;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v1, Lcom/google/android/gms/cast/zzbq;

    .line 15
    .line 16
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/cast/zzbq;-><init>(Lcom/google/android/gms/cast/zzbs;I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public final zze(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/zzbs;->a:Lcom/google/android/gms/cast/zzbt;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/google/android/gms/cast/zzbt;->b(Lcom/google/android/gms/cast/zzbt;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final zzf(Lcom/google/android/gms/cast/internal/zza;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/zzbs;->a:Lcom/google/android/gms/cast/zzbt;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/cast/zzbt;->f(Lcom/google/android/gms/cast/zzbt;)Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/google/android/gms/cast/zzbm;

    .line 8
    .line 9
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/cast/zzbm;-><init>(Lcom/google/android/gms/cast/zzbs;Lcom/google/android/gms/cast/internal/zza;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final zzg(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/zzbs;->a:Lcom/google/android/gms/cast/zzbt;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/google/android/gms/cast/zzbt;->b(Lcom/google/android/gms/cast/zzbt;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final zzh(Ljava/lang/String;[B)V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/cast/zzbt;->F:Lcom/google/android/gms/cast/internal/Logger;

    .line 2
    .line 3
    array-length p2, p2

    .line 4
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    const/4 v1, 0x2

    .line 9
    new-array v1, v1, [Ljava/lang/Object;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    aput-object p1, v1, v2

    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    aput-object p2, v1, p1

    .line 16
    .line 17
    const-string p1, "IGNORING: Receive (type=binary, ns=%s) <%d bytes>"

    .line 18
    .line 19
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final zzi(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/zzbs;->a:Lcom/google/android/gms/cast/zzbt;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/cast/zzbt;->f(Lcom/google/android/gms/cast/zzbt;)Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/google/android/gms/cast/zzbo;

    .line 8
    .line 9
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/cast/zzbo;-><init>(Lcom/google/android/gms/cast/zzbs;I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final zzj(Lcom/google/android/gms/cast/internal/zzab;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/zzbs;->a:Lcom/google/android/gms/cast/zzbt;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/cast/zzbt;->f(Lcom/google/android/gms/cast/zzbt;)Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/google/android/gms/cast/zzbl;

    .line 8
    .line 9
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/cast/zzbl;-><init>(Lcom/google/android/gms/cast/zzbs;Lcom/google/android/gms/cast/internal/zzab;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final zzk(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/zzbs;->a:Lcom/google/android/gms/cast/zzbt;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/cast/zzbt;->f(Lcom/google/android/gms/cast/zzbt;)Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/google/android/gms/cast/zzbn;

    .line 8
    .line 9
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/cast/zzbn;-><init>(Lcom/google/android/gms/cast/zzbs;I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final zzl(Ljava/lang/String;J)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/cast/zzbs;->a:Lcom/google/android/gms/cast/zzbt;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-static {p1, p2, p3, v0}, Lcom/google/android/gms/cast/zzbt;->a(Lcom/google/android/gms/cast/zzbt;JI)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final zzm(Ljava/lang/String;JI)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/cast/zzbs;->a:Lcom/google/android/gms/cast/zzbt;

    .line 2
    .line 3
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/cast/zzbt;->a(Lcom/google/android/gms/cast/zzbt;JI)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final zzn(Ljava/lang/String;DZ)V
    .locals 0

    .line 1
    sget-object p1, Lcom/google/android/gms/cast/zzbt;->F:Lcom/google/android/gms/cast/internal/Logger;

    .line 2
    .line 3
    const/4 p2, 0x0

    .line 4
    new-array p2, p2, [Ljava/lang/Object;

    .line 5
    .line 6
    const-string p3, "Deprecated callback: \"onStatusReceived\""

    .line 7
    .line 8
    invoke-virtual {p1, p3, p2}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final zzo(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/zzbs;->a:Lcom/google/android/gms/cast/zzbt;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/cast/zzbt;->f(Lcom/google/android/gms/cast/zzbt;)Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/google/android/gms/cast/zzbr;

    .line 8
    .line 9
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/cast/zzbr;-><init>(Lcom/google/android/gms/cast/zzbs;I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final zzp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/cast/zzbt;->F:Lcom/google/android/gms/cast/internal/Logger;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object p1, v1, v2

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    aput-object p2, v1, v2

    .line 11
    .line 12
    const-string v2, "Receive (type=text, ns=%s) %s"

    .line 13
    .line 14
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/google/android/gms/cast/zzbs;->a:Lcom/google/android/gms/cast/zzbt;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/google/android/gms/cast/zzbt;->f(Lcom/google/android/gms/cast/zzbt;)Landroid/os/Handler;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    new-instance v1, Lcom/google/android/gms/cast/zzbp;

    .line 24
    .line 25
    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/cast/zzbp;-><init>(Lcom/google/android/gms/cast/zzbs;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 29
    .line 30
    .line 31
    return-void
.end method
