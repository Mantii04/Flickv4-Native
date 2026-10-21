.class final Lcom/google/android/gms/measurement/internal/zzmq;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/google/android/gms/measurement/internal/zzmi;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzmi;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzmq;->a:Lcom/google/android/gms/measurement/internal/zzmi;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzmq;->a:Lcom/google/android/gms/measurement/internal/zzmi;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzmi;->zzt()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzmi;->zzk()Lcom/google/android/gms/measurement/internal/zzgm;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzmi;->zzb()Lcom/google/android/gms/common/util/Clock;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 15
    .line 16
    .line 17
    move-result-wide v2

    .line 18
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzgm;->a(J)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzmi;->zzk()Lcom/google/android/gms/measurement/internal/zzgm;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzgm;->m:Lcom/google/android/gms/measurement/internal/zzgp;

    .line 29
    .line 30
    const/4 v2, 0x1

    .line 31
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzgp;->zza(Z)V

    .line 32
    .line 33
    .line 34
    new-instance v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 35
    .line 36
    invoke-direct {v1}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-static {v1}, Landroid/app/ActivityManager;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    .line 40
    .line 41
    .line 42
    iget v1, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    .line 43
    .line 44
    const/16 v2, 0x64

    .line 45
    .line 46
    if-ne v1, v2, :cond_0

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzmi;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgb;->zzp()Lcom/google/android/gms/measurement/internal/zzgd;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    const-string v2, "Detected application was in foreground"

    .line 57
    .line 58
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzmi;->zzb()Lcom/google/android/gms/common/util/Clock;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 66
    .line 67
    .line 68
    move-result-wide v0

    .line 69
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/zzmq;->c(J)V

    .line 70
    .line 71
    .line 72
    :cond_0
    return-void
.end method

.method public final b(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzmq;->a:Lcom/google/android/gms/measurement/internal/zzmi;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzmi;->zzt()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzmi;->a()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzmi;->zzk()Lcom/google/android/gms/measurement/internal/zzgm;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/measurement/internal/zzgm;->a(J)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzmi;->zzk()Lcom/google/android/gms/measurement/internal/zzgm;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzgm;->m:Lcom/google/android/gms/measurement/internal/zzgp;

    .line 24
    .line 25
    const/4 v2, 0x1

    .line 26
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzgp;->zza(Z)V

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzqk;->zza()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzmi;->zze()Lcom/google/android/gms/measurement/internal/zzae;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzbh;->r0:Lcom/google/android/gms/measurement/internal/zzfo;

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzae;->zza(Lcom/google/android/gms/measurement/internal/zzfo;)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_0

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzmi;->zzg()Lcom/google/android/gms/measurement/internal/zzfv;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfv;->zzag()V

    .line 52
    .line 53
    .line 54
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzmi;->zzk()Lcom/google/android/gms/measurement/internal/zzgm;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzgm;->q:Lcom/google/android/gms/measurement/internal/zzgr;

    .line 59
    .line 60
    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/measurement/internal/zzgr;->zza(J)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzmi;->zzk()Lcom/google/android/gms/measurement/internal/zzgm;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzgm;->m:Lcom/google/android/gms/measurement/internal/zzgp;

    .line 68
    .line 69
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgp;->zza()Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_1

    .line 74
    .line 75
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzmq;->c(J)V

    .line 76
    .line 77
    .line 78
    :cond_1
    return-void
.end method

.method public final c(J)V
    .locals 9

    .line 1
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzmq;->a:Lcom/google/android/gms/measurement/internal/zzmi;

    .line 2
    .line 3
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzmi;->zzt()V

    .line 4
    .line 5
    .line 6
    iget-object v0, v6, Lcom/google/android/gms/measurement/internal/zzim;->a:Lcom/google/android/gms/measurement/internal/zzho;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzho;->zzac()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto/16 :goto_0

    .line 15
    .line 16
    :cond_0
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzmi;->zzk()Lcom/google/android/gms/measurement/internal/zzgm;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzgm;->q:Lcom/google/android/gms/measurement/internal/zzgr;

    .line 21
    .line 22
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzgr;->zza(J)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzmi;->zzb()Lcom/google/android/gms/common/util/Clock;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    .line 30
    .line 31
    .line 32
    move-result-wide v0

    .line 33
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzmi;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgb;->zzp()Lcom/google/android/gms/measurement/internal/zzgd;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const-string v1, "Session started, time"

    .line 46
    .line 47
    invoke-virtual {v2, v1, v0}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    const-wide/16 v0, 0x3e8

    .line 51
    .line 52
    div-long v7, p1, v0

    .line 53
    .line 54
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzmi;->zzm()Lcom/google/android/gms/measurement/internal/zziy;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    const-string v4, "auto"

    .line 63
    .line 64
    const-string v5, "_sid"

    .line 65
    .line 66
    move-wide v1, p1

    .line 67
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zziy;->a(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzmi;->zzk()Lcom/google/android/gms/measurement/internal/zzgm;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzgm;->r:Lcom/google/android/gms/measurement/internal/zzgr;

    .line 75
    .line 76
    invoke-virtual {v0, v7, v8}, Lcom/google/android/gms/measurement/internal/zzgr;->zza(J)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzmi;->zzk()Lcom/google/android/gms/measurement/internal/zzgm;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzgm;->m:Lcom/google/android/gms/measurement/internal/zzgp;

    .line 84
    .line 85
    const/4 v1, 0x0

    .line 86
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzgp;->zza(Z)V

    .line 87
    .line 88
    .line 89
    new-instance v3, Landroid/os/Bundle;

    .line 90
    .line 91
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 92
    .line 93
    .line 94
    const-string v0, "_sid"

    .line 95
    .line 96
    invoke-virtual {v3, v0, v7, v8}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzmi;->zzm()Lcom/google/android/gms/measurement/internal/zziy;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    const-string v1, "auto"

    .line 104
    .line 105
    const-string v2, "_s"

    .line 106
    .line 107
    move-wide v4, p1

    .line 108
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zziy;->j(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzmi;->zzk()Lcom/google/android/gms/measurement/internal/zzgm;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzgm;->w:Lcom/google/android/gms/measurement/internal/zzgs;

    .line 116
    .line 117
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zza()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    if-nez v1, :cond_1

    .line 126
    .line 127
    new-instance v3, Landroid/os/Bundle;

    .line 128
    .line 129
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 130
    .line 131
    .line 132
    const-string v1, "_ffr"

    .line 133
    .line 134
    invoke-virtual {v3, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzmi;->zzm()Lcom/google/android/gms/measurement/internal/zziy;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    const-string v1, "auto"

    .line 142
    .line 143
    const-string v2, "_ssr"

    .line 144
    .line 145
    move-wide v4, p1

    .line 146
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zziy;->j(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V

    .line 147
    .line 148
    .line 149
    :cond_1
    :goto_0
    return-void
.end method
