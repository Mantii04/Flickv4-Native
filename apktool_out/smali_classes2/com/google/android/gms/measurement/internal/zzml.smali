.class final Lcom/google/android/gms/measurement/internal/zzml;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:J

.field public final synthetic e:Lcom/google/android/gms/measurement/internal/zzmi;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzmi;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p2, p0, Lcom/google/android/gms/measurement/internal/zzml;->b:J

    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzml;->e:Lcom/google/android/gms/measurement/internal/zzmi;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzml;->e:Lcom/google/android/gms/measurement/internal/zzmi;

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
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzmi;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgb;->zzp()Lcom/google/android/gms/measurement/internal/zzgd;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/zzml;->b:J

    .line 18
    .line 19
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    const-string v5, "Activity resumed, time"

    .line 24
    .line 25
    invoke-virtual {v1, v5, v4}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzmi;->zze()Lcom/google/android/gms/measurement/internal/zzae;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    sget-object v4, Lcom/google/android/gms/measurement/internal/zzbh;->K0:Lcom/google/android/gms/measurement/internal/zzfo;

    .line 33
    .line 34
    invoke-virtual {v1, v4}, Lcom/google/android/gms/measurement/internal/zzae;->zza(Lcom/google/android/gms/measurement/internal/zzfo;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzmi;->f:Lcom/google/android/gms/measurement/internal/zzmo;

    .line 39
    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzmi;->zze()Lcom/google/android/gms/measurement/internal/zzae;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzae;->zzv()Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-nez v1, :cond_0

    .line 51
    .line 52
    iget-boolean v1, v0, Lcom/google/android/gms/measurement/internal/zzmi;->d:Z

    .line 53
    .line 54
    if-eqz v1, :cond_3

    .line 55
    .line 56
    :cond_0
    iget-object v1, v4, Lcom/google/android/gms/measurement/internal/zzmo;->d:Lcom/google/android/gms/measurement/internal/zzmi;

    .line 57
    .line 58
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzmi;->zzt()V

    .line 59
    .line 60
    .line 61
    iget-object v1, v4, Lcom/google/android/gms/measurement/internal/zzmo;->c:Lcom/google/android/gms/measurement/internal/zzmr;

    .line 62
    .line 63
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzav;->a()V

    .line 64
    .line 65
    .line 66
    iput-wide v2, v4, Lcom/google/android/gms/measurement/internal/zzmo;->a:J

    .line 67
    .line 68
    iput-wide v2, v4, Lcom/google/android/gms/measurement/internal/zzmo;->b:J

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzmi;->zze()Lcom/google/android/gms/measurement/internal/zzae;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzae;->zzv()Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-nez v1, :cond_2

    .line 80
    .line 81
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzmi;->zzk()Lcom/google/android/gms/measurement/internal/zzgm;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzgm;->t:Lcom/google/android/gms/measurement/internal/zzgp;

    .line 86
    .line 87
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgp;->zza()Z

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    if-eqz v1, :cond_3

    .line 92
    .line 93
    :cond_2
    iget-object v1, v4, Lcom/google/android/gms/measurement/internal/zzmo;->d:Lcom/google/android/gms/measurement/internal/zzmi;

    .line 94
    .line 95
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzmi;->zzt()V

    .line 96
    .line 97
    .line 98
    iget-object v1, v4, Lcom/google/android/gms/measurement/internal/zzmo;->c:Lcom/google/android/gms/measurement/internal/zzmr;

    .line 99
    .line 100
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzav;->a()V

    .line 101
    .line 102
    .line 103
    iput-wide v2, v4, Lcom/google/android/gms/measurement/internal/zzmo;->a:J

    .line 104
    .line 105
    iput-wide v2, v4, Lcom/google/android/gms/measurement/internal/zzmo;->b:J

    .line 106
    .line 107
    :cond_3
    :goto_0
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzmi;->g:Lcom/google/android/gms/measurement/internal/zzmn;

    .line 108
    .line 109
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzmn;->b:Lcom/google/android/gms/measurement/internal/zzmi;

    .line 110
    .line 111
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzmi;->zzt()V

    .line 112
    .line 113
    .line 114
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzmn;->a:Lcom/google/android/gms/measurement/internal/zzmm;

    .line 115
    .line 116
    if-eqz v1, :cond_4

    .line 117
    .line 118
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzmi;->c:Lcom/google/android/gms/internal/measurement/zzdc;

    .line 119
    .line 120
    invoke-virtual {v3, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 121
    .line 122
    .line 123
    :cond_4
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzmi;->zzk()Lcom/google/android/gms/measurement/internal/zzgm;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzgm;->t:Lcom/google/android/gms/measurement/internal/zzgp;

    .line 128
    .line 129
    const/4 v3, 0x0

    .line 130
    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/zzgp;->zza(Z)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzmi;->zzt()V

    .line 134
    .line 135
    .line 136
    iput-boolean v3, v2, Lcom/google/android/gms/measurement/internal/zzmi;->d:Z

    .line 137
    .line 138
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzmi;->e:Lcom/google/android/gms/measurement/internal/zzmq;

    .line 139
    .line 140
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzmq;->a:Lcom/google/android/gms/measurement/internal/zzmi;

    .line 141
    .line 142
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzmi;->zzt()V

    .line 143
    .line 144
    .line 145
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzmq;->a:Lcom/google/android/gms/measurement/internal/zzmi;

    .line 146
    .line 147
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzim;->a:Lcom/google/android/gms/measurement/internal/zzho;

    .line 148
    .line 149
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzho;->zzac()Z

    .line 150
    .line 151
    .line 152
    move-result v2

    .line 153
    if-eqz v2, :cond_5

    .line 154
    .line 155
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzmi;->zzb()Lcom/google/android/gms/common/util/Clock;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 160
    .line 161
    .line 162
    move-result-wide v1

    .line 163
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzmq;->b(J)V

    .line 164
    .line 165
    .line 166
    :cond_5
    return-void
.end method
