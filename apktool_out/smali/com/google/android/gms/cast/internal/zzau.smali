.class public final Lcom/google/android/gms/cast/internal/zzau;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final j:Ljava/lang/Object;


# instance fields
.field public final a:Lcom/google/android/gms/cast/internal/Logger;

.field public final b:J

.field public final c:Ljava/lang/String;

.field public final d:Lcom/google/android/gms/internal/cast/zzed;

.field public final e:Lcom/google/android/gms/common/util/Clock;

.field public f:J

.field public g:J

.field public h:Lcom/google/android/gms/cast/internal/zzas;

.field public i:Lcom/google/android/gms/cast/internal/zzat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/cast/internal/zzau;->j:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/google/android/gms/cast/internal/zzau;->b:J

    .line 5
    .line 6
    iput-object p3, p0, Lcom/google/android/gms/cast/internal/zzau;->c:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {}, Lcom/google/android/gms/common/util/DefaultClock;->getInstance()Lcom/google/android/gms/common/util/Clock;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lcom/google/android/gms/cast/internal/zzau;->e:Lcom/google/android/gms/common/util/Clock;

    .line 13
    .line 14
    const-wide/16 p1, -0x1

    .line 15
    .line 16
    iput-wide p1, p0, Lcom/google/android/gms/cast/internal/zzau;->f:J

    .line 17
    .line 18
    const-wide/16 p1, 0x0

    .line 19
    .line 20
    iput-wide p1, p0, Lcom/google/android/gms/cast/internal/zzau;->g:J

    .line 21
    .line 22
    new-instance p1, Lcom/google/android/gms/internal/cast/zzed;

    .line 23
    .line 24
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/cast/zzed;-><init>(Landroid/os/Looper;)V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Lcom/google/android/gms/cast/internal/zzau;->d:Lcom/google/android/gms/internal/cast/zzed;

    .line 32
    .line 33
    new-instance p1, Lcom/google/android/gms/cast/internal/Logger;

    .line 34
    .line 35
    const-string p2, "RequestTracker"

    .line 36
    .line 37
    invoke-direct {p1, p2, p3}, Lcom/google/android/gms/cast/internal/Logger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iput-object p1, p0, Lcom/google/android/gms/cast/internal/zzau;->a:Lcom/google/android/gms/cast/internal/Logger;

    .line 41
    .line 42
    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/cast/internal/zzau;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/cast/internal/zzau;->j:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzau;->zzf()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    monitor-exit v0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/16 v1, 0xf

    .line 15
    .line 16
    invoke-virtual {p0, v1}, Lcom/google/android/gms/cast/internal/zzau;->b(I)Z

    .line 17
    .line 18
    .line 19
    monitor-exit v0

    .line 20
    return-void

    .line 21
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/android/gms/cast/internal/zzau;->a:Lcom/google/android/gms/cast/internal/Logger;

    .line 5
    .line 6
    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    sget-object p1, Lcom/google/android/gms/cast/internal/zzau;->j:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter p1

    .line 12
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzau;->h:Lcom/google/android/gms/cast/internal/zzas;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzau;->e:Lcom/google/android/gms/common/util/Clock;

    .line 17
    .line 18
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 19
    .line 20
    .line 21
    move-result-wide v9

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzau;->h:Lcom/google/android/gms/cast/internal/zzas;

    .line 23
    .line 24
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    move-object v1, v0

    .line 29
    check-cast v1, Lcom/google/android/gms/cast/internal/zzas;

    .line 30
    .line 31
    iget-object v2, p0, Lcom/google/android/gms/cast/internal/zzau;->c:Ljava/lang/String;

    .line 32
    .line 33
    iget-wide v3, p0, Lcom/google/android/gms/cast/internal/zzau;->f:J

    .line 34
    .line 35
    iget-wide v7, p0, Lcom/google/android/gms/cast/internal/zzau;->g:J

    .line 36
    .line 37
    move v5, p2

    .line 38
    move-object v6, p3

    .line 39
    invoke-interface/range {v1 .. v10}, Lcom/google/android/gms/cast/internal/zzas;->zza(Ljava/lang/String;JILjava/lang/Object;JJ)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception v0

    .line 44
    move-object p2, v0

    .line 45
    goto :goto_3

    .line 46
    :cond_0
    :goto_0
    const-wide/16 p2, -0x1

    .line 47
    .line 48
    iput-wide p2, p0, Lcom/google/android/gms/cast/internal/zzau;->f:J

    .line 49
    .line 50
    const/4 p2, 0x0

    .line 51
    iput-object p2, p0, Lcom/google/android/gms/cast/internal/zzau;->h:Lcom/google/android/gms/cast/internal/zzas;

    .line 52
    .line 53
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    :try_start_1
    iget-object p3, p0, Lcom/google/android/gms/cast/internal/zzau;->i:Lcom/google/android/gms/cast/internal/zzat;

    .line 55
    .line 56
    if-nez p3, :cond_1

    .line 57
    .line 58
    monitor-exit p1

    .line 59
    goto :goto_1

    .line 60
    :catchall_1
    move-exception v0

    .line 61
    move-object p2, v0

    .line 62
    goto :goto_2

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzau;->d:Lcom/google/android/gms/internal/cast/zzed;

    .line 64
    .line 65
    invoke-virtual {v0, p3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 66
    .line 67
    .line 68
    iput-object p2, p0, Lcom/google/android/gms/cast/internal/zzau;->i:Lcom/google/android/gms/cast/internal/zzat;

    .line 69
    .line 70
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 71
    :goto_1
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 72
    return-void

    .line 73
    :goto_2
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 74
    :try_start_4
    throw p2

    .line 75
    :goto_3
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 76
    throw p2
.end method

.method public final b(I)Z
    .locals 5

    .line 1
    const-string v0, "clearing request "

    .line 2
    .line 3
    sget-object v1, Lcom/google/android/gms/cast/internal/zzau;->j:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzau;->zzf()Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 13
    .line 14
    iget-wide v2, p0, Lcom/google/android/gms/cast/internal/zzau;->f:J

    .line 15
    .line 16
    new-instance v4, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const/4 v2, 0x0

    .line 29
    invoke-virtual {p0, v0, p1, v2}, Lcom/google/android/gms/cast/internal/zzau;->a(Ljava/lang/String;ILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    monitor-exit v1

    .line 33
    const/4 p1, 0x1

    .line 34
    return p1

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    monitor-exit v1

    .line 38
    const/4 p1, 0x0

    .line 39
    return p1

    .line 40
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    throw p1
.end method

.method public final zzb(JLcom/google/android/gms/cast/internal/zzas;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzau;->e:Lcom/google/android/gms/common/util/Clock;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v7

    .line 7
    sget-object v9, Lcom/google/android/gms/cast/internal/zzau;->j:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v9

    .line 10
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/cast/internal/zzau;->h:Lcom/google/android/gms/cast/internal/zzas;

    .line 11
    .line 12
    iget-wide v3, p0, Lcom/google/android/gms/cast/internal/zzau;->f:J

    .line 13
    .line 14
    iget-wide v5, p0, Lcom/google/android/gms/cast/internal/zzau;->g:J

    .line 15
    .line 16
    iput-wide p1, p0, Lcom/google/android/gms/cast/internal/zzau;->f:J

    .line 17
    .line 18
    iput-object p3, p0, Lcom/google/android/gms/cast/internal/zzau;->h:Lcom/google/android/gms/cast/internal/zzas;

    .line 19
    .line 20
    iput-wide v7, p0, Lcom/google/android/gms/cast/internal/zzau;->g:J

    .line 21
    .line 22
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    iget-object v2, p0, Lcom/google/android/gms/cast/internal/zzau;->c:Ljava/lang/String;

    .line 26
    .line 27
    invoke-interface/range {v1 .. v8}, Lcom/google/android/gms/cast/internal/zzas;->zzb(Ljava/lang/String;JJJ)V

    .line 28
    .line 29
    .line 30
    :cond_0
    monitor-enter v9

    .line 31
    :try_start_1
    iget-object p1, p0, Lcom/google/android/gms/cast/internal/zzau;->i:Lcom/google/android/gms/cast/internal/zzat;

    .line 32
    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    iget-object p2, p0, Lcom/google/android/gms/cast/internal/zzau;->d:Lcom/google/android/gms/internal/cast/zzed;

    .line 36
    .line 37
    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception v0

    .line 42
    move-object p1, v0

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    :goto_0
    new-instance p1, Lcom/google/android/gms/cast/internal/zzat;

    .line 45
    .line 46
    invoke-direct {p1, p0}, Lcom/google/android/gms/cast/internal/zzat;-><init>(Lcom/google/android/gms/cast/internal/zzau;)V

    .line 47
    .line 48
    .line 49
    iput-object p1, p0, Lcom/google/android/gms/cast/internal/zzau;->i:Lcom/google/android/gms/cast/internal/zzat;

    .line 50
    .line 51
    iget-object p2, p0, Lcom/google/android/gms/cast/internal/zzau;->d:Lcom/google/android/gms/internal/cast/zzed;

    .line 52
    .line 53
    iget-wide v0, p0, Lcom/google/android/gms/cast/internal/zzau;->b:J

    .line 54
    .line 55
    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 56
    .line 57
    .line 58
    monitor-exit v9

    .line 59
    return-void

    .line 60
    :goto_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    throw p1

    .line 62
    :catchall_1
    move-exception v0

    .line 63
    move-object p1, v0

    .line 64
    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 65
    throw p1
.end method

.method public final zzc(I)Z
    .locals 0

    .line 1
    const/16 p1, 0x7d2

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/internal/zzau;->b(I)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final zzd(JILjava/lang/Object;)Z
    .locals 3

    .line 1
    const-string v0, "request "

    .line 2
    .line 3
    sget-object v1, Lcom/google/android/gms/cast/internal/zzau;->j:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/cast/internal/zzau;->zze(J)Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 13
    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string p1, " completed"

    .line 23
    .line 24
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p0, p1, p3, p4}, Lcom/google/android/gms/cast/internal/zzau;->a(Ljava/lang/String;ILjava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    monitor-exit v1

    .line 35
    const/4 p1, 0x1

    .line 36
    return p1

    .line 37
    :catchall_0
    move-exception p1

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    monitor-exit v1

    .line 40
    const/4 p1, 0x0

    .line 41
    return p1

    .line 42
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    throw p1
.end method

.method public final zze(J)Z
    .locals 5

    .line 1
    sget-object v0, Lcom/google/android/gms/cast/internal/zzau;->j:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-wide v1, p0, Lcom/google/android/gms/cast/internal/zzau;->f:J

    .line 5
    .line 6
    const-wide/16 v3, -0x1

    .line 7
    .line 8
    cmp-long v3, v1, v3

    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    if-eqz v3, :cond_0

    .line 12
    .line 13
    cmp-long p1, v1, p1

    .line 14
    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    const/4 v4, 0x1

    .line 18
    :cond_0
    monitor-exit v0

    .line 19
    return v4

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw p1
.end method

.method public final zzf()Z
    .locals 5

    .line 1
    sget-object v0, Lcom/google/android/gms/cast/internal/zzau;->j:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-wide v1, p0, Lcom/google/android/gms/cast/internal/zzau;->f:J

    .line 5
    .line 6
    const-wide/16 v3, -0x1

    .line 7
    .line 8
    cmp-long v1, v1, v3

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v1, 0x0

    .line 15
    :goto_0
    monitor-exit v0

    .line 16
    return v1

    .line 17
    :catchall_0
    move-exception v1

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw v1
.end method
