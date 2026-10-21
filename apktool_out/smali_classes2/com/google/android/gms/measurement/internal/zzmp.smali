.class public final synthetic Lcom/google/android/gms/measurement/internal/zzmp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/google/android/gms/measurement/internal/zzmm;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/zzmm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzmp;->b:Lcom/google/android/gms/measurement/internal/zzmm;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzmp;->b:Lcom/google/android/gms/measurement/internal/zzmm;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzmm;->f:Lcom/google/android/gms/measurement/internal/zzmn;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzmn;->b:Lcom/google/android/gms/measurement/internal/zzmi;

    .line 6
    .line 7
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzmi;->zzt()V

    .line 8
    .line 9
    .line 10
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzmn;->b:Lcom/google/android/gms/measurement/internal/zzmi;

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzmi;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgb;->zzc()Lcom/google/android/gms/measurement/internal/zzgd;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    const-string v3, "Application going to the background"

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzmi;->zzk()Lcom/google/android/gms/measurement/internal/zzgm;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzgm;->t:Lcom/google/android/gms/measurement/internal/zzgp;

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzgp;->zza(Z)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzmi;->zzt()V

    .line 36
    .line 37
    .line 38
    iput-boolean v3, v1, Lcom/google/android/gms/measurement/internal/zzmi;->d:Z

    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzmi;->zze()Lcom/google/android/gms/measurement/internal/zzae;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzae;->zzv()Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-nez v2, :cond_0

    .line 49
    .line 50
    iget-wide v2, v0, Lcom/google/android/gms/measurement/internal/zzmm;->e:J

    .line 51
    .line 52
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzmi;->f:Lcom/google/android/gms/measurement/internal/zzmo;

    .line 53
    .line 54
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzmo;->c:Lcom/google/android/gms/measurement/internal/zzmr;

    .line 55
    .line 56
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzav;->a()V

    .line 57
    .line 58
    .line 59
    const/4 v4, 0x0

    .line 60
    invoke-virtual {v1, v4, v4, v2, v3}, Lcom/google/android/gms/measurement/internal/zzmi;->zza(ZZJ)Z

    .line 61
    .line 62
    .line 63
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzqe;->zza()Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    iget-wide v7, v0, Lcom/google/android/gms/measurement/internal/zzmm;->b:J

    .line 68
    .line 69
    if-eqz v2, :cond_1

    .line 70
    .line 71
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzmi;->zze()Lcom/google/android/gms/measurement/internal/zzae;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzbh;->D0:Lcom/google/android/gms/measurement/internal/zzfo;

    .line 76
    .line 77
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzae;->zza(Lcom/google/android/gms/measurement/internal/zzfo;)Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_1

    .line 82
    .line 83
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzmi;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzn()Lcom/google/android/gms/measurement/internal/zzgd;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    const-string v2, "Application backgrounded at: timestamp_millis"

    .line 96
    .line 97
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    return-void

    .line 101
    :cond_1
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzmi;->zzm()Lcom/google/android/gms/measurement/internal/zziy;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    new-instance v6, Landroid/os/Bundle;

    .line 106
    .line 107
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 108
    .line 109
    .line 110
    const-string v4, "auto"

    .line 111
    .line 112
    const-string v5, "_ab"

    .line 113
    .line 114
    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gms/measurement/internal/zziy;->j(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V

    .line 115
    .line 116
    .line 117
    return-void
.end method
