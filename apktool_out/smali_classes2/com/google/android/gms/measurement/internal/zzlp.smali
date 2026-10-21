.class final Lcom/google/android/gms/measurement/internal/zzlp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/google/android/gms/measurement/internal/zzbf;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Lcom/google/android/gms/internal/measurement/zzdi;

.field public final synthetic j:Lcom/google/android/gms/measurement/internal/zzla;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzla;Lcom/google/android/gms/measurement/internal/zzbf;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzdi;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzlp;->b:Lcom/google/android/gms/measurement/internal/zzbf;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzlp;->e:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzlp;->f:Lcom/google/android/gms/internal/measurement/zzdi;

    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzlp;->j:Lcom/google/android/gms/measurement/internal/zzla;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlp;->f:Lcom/google/android/gms/internal/measurement/zzdi;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzlp;->j:Lcom/google/android/gms/measurement/internal/zzla;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_0
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzla;->d:Lcom/google/android/gms/measurement/internal/zzfq;

    .line 7
    .line 8
    if-nez v3, :cond_0

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzla;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgb;->zzg()Lcom/google/android/gms/measurement/internal/zzgd;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    const-string v4, "Discarding data. Failed to send event to service to bundle"

    .line 19
    .line 20
    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzla;->zzq()Lcom/google/android/gms/measurement/internal/zznt;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/zznt;->zza(Lcom/google/android/gms/internal/measurement/zzdi;[B)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception v3

    .line 32
    goto :goto_1

    .line 33
    :catch_0
    move-exception v3

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzlp;->b:Lcom/google/android/gms/measurement/internal/zzbf;

    .line 36
    .line 37
    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzlp;->e:Ljava/lang/String;

    .line 38
    .line 39
    invoke-interface {v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Lcom/google/android/gms/measurement/internal/zzbf;Ljava/lang/String;)[B

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzla;->f()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzla;->zzq()Lcom/google/android/gms/measurement/internal/zznt;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/zznt;->zza(Lcom/google/android/gms/internal/measurement/zzdi;[B)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzla;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgb;->zzg()Lcom/google/android/gms/measurement/internal/zzgd;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    const-string v5, "Failed to send event to the service to bundle"

    .line 63
    .line 64
    invoke-virtual {v4, v5, v3}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzla;->zzq()Lcom/google/android/gms/measurement/internal/zznt;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/zznt;->zza(Lcom/google/android/gms/internal/measurement/zzdi;[B)V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :goto_1
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzla;->zzq()Lcom/google/android/gms/measurement/internal/zznt;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/zznt;->zza(Lcom/google/android/gms/internal/measurement/zzdi;[B)V

    .line 80
    .line 81
    .line 82
    throw v3
.end method
