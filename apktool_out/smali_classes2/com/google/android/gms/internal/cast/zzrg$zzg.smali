.class final Lcom/google/android/gms/internal/cast/zzrg$zzg;
.super Lcom/google/android/gms/internal/cast/zzrg$zza;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/cast/zzrg$zza;-><init>(Lcom/google/android/gms/internal/cast/zzrf;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/cast/zzri;)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/cast/zzrg$zza;-><init>(Lcom/google/android/gms/internal/cast/zzrf;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/cast/zzrg;Lcom/google/android/gms/internal/cast/zzrg$zzd;)Lcom/google/android/gms/internal/cast/zzrg$zzd;
    .locals 1

    .line 1
    monitor-enter p1

    .line 2
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzrg;->zzb(Lcom/google/android/gms/internal/cast/zzrg;)Lcom/google/android/gms/internal/cast/zzrg$zzd;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    if-eq v0, p2, :cond_0

    .line 7
    .line 8
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/cast/zzrg;->zzg(Lcom/google/android/gms/internal/cast/zzrg;Lcom/google/android/gms/internal/cast/zzrg$zzd;)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    move-exception p2

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    :goto_0
    monitor-exit p1

    .line 15
    return-object v0

    .line 16
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw p2
.end method

.method public final zzb(Lcom/google/android/gms/internal/cast/zzrg;Lcom/google/android/gms/internal/cast/zzrg$zzk;)Lcom/google/android/gms/internal/cast/zzrg$zzk;
    .locals 1

    .line 1
    monitor-enter p1

    .line 2
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzrg;->zzc(Lcom/google/android/gms/internal/cast/zzrg;)Lcom/google/android/gms/internal/cast/zzrg$zzk;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    if-eq v0, p2, :cond_0

    .line 7
    .line 8
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/cast/zzrg;->zzi(Lcom/google/android/gms/internal/cast/zzrg;Lcom/google/android/gms/internal/cast/zzrg$zzk;)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    move-exception p2

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    :goto_0
    monitor-exit p1

    .line 15
    return-object v0

    .line 16
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw p2
.end method

.method public final zzc(Lcom/google/android/gms/internal/cast/zzrg$zzk;Lcom/google/android/gms/internal/cast/zzrg$zzk;)V
    .locals 0

    iput-object p2, p1, Lcom/google/android/gms/internal/cast/zzrg$zzk;->next:Lcom/google/android/gms/internal/cast/zzrg$zzk;

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/cast/zzrg$zzk;Ljava/lang/Thread;)V
    .locals 0

    iput-object p2, p1, Lcom/google/android/gms/internal/cast/zzrg$zzk;->thread:Ljava/lang/Thread;

    return-void
.end method

.method public final zze(Lcom/google/android/gms/internal/cast/zzrg;Lcom/google/android/gms/internal/cast/zzrg$zzd;Lcom/google/android/gms/internal/cast/zzrg$zzd;)Z
    .locals 1

    .line 1
    monitor-enter p1

    .line 2
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzrg;->zzb(Lcom/google/android/gms/internal/cast/zzrg;)Lcom/google/android/gms/internal/cast/zzrg$zzd;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    if-ne v0, p2, :cond_0

    .line 7
    .line 8
    invoke-static {p1, p3}, Lcom/google/android/gms/internal/cast/zzrg;->zzg(Lcom/google/android/gms/internal/cast/zzrg;Lcom/google/android/gms/internal/cast/zzrg$zzd;)V

    .line 9
    .line 10
    .line 11
    monitor-exit p1

    .line 12
    const/4 p1, 0x1

    .line 13
    return p1

    .line 14
    :catchall_0
    move-exception p2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    monitor-exit p1

    .line 17
    const/4 p1, 0x0

    .line 18
    return p1

    .line 19
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw p2
.end method

.method public final zzf(Lcom/google/android/gms/internal/cast/zzrg;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .line 1
    monitor-enter p1

    .line 2
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzrg;->zzd(Lcom/google/android/gms/internal/cast/zzrg;)Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    if-ne v0, p2, :cond_0

    .line 7
    .line 8
    invoke-static {p1, p3}, Lcom/google/android/gms/internal/cast/zzrg;->zzh(Lcom/google/android/gms/internal/cast/zzrg;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    monitor-exit p1

    .line 12
    const/4 p1, 0x1

    .line 13
    return p1

    .line 14
    :catchall_0
    move-exception p2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    monitor-exit p1

    .line 17
    const/4 p1, 0x0

    .line 18
    return p1

    .line 19
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw p2
.end method

.method public final zzg(Lcom/google/android/gms/internal/cast/zzrg;Lcom/google/android/gms/internal/cast/zzrg$zzk;Lcom/google/android/gms/internal/cast/zzrg$zzk;)Z
    .locals 1

    .line 1
    monitor-enter p1

    .line 2
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzrg;->zzc(Lcom/google/android/gms/internal/cast/zzrg;)Lcom/google/android/gms/internal/cast/zzrg$zzk;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    if-ne v0, p2, :cond_0

    .line 7
    .line 8
    invoke-static {p1, p3}, Lcom/google/android/gms/internal/cast/zzrg;->zzi(Lcom/google/android/gms/internal/cast/zzrg;Lcom/google/android/gms/internal/cast/zzrg$zzk;)V

    .line 9
    .line 10
    .line 11
    monitor-exit p1

    .line 12
    const/4 p1, 0x1

    .line 13
    return p1

    .line 14
    :catchall_0
    move-exception p2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    monitor-exit p1

    .line 17
    const/4 p1, 0x0

    .line 18
    return p1

    .line 19
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw p2
.end method
