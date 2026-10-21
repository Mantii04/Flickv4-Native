.class final Lcom/google/android/gms/measurement/internal/zzmo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:J

.field public b:J

.field public final c:Lcom/google/android/gms/measurement/internal/zzmr;

.field public final synthetic d:Lcom/google/android/gms/measurement/internal/zzmi;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzmi;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzmo;->d:Lcom/google/android/gms/measurement/internal/zzmi;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzmr;

    .line 7
    .line 8
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzim;->a:Lcom/google/android/gms/measurement/internal/zzho;

    .line 9
    .line 10
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/measurement/internal/zzmr;-><init>(Lcom/google/android/gms/measurement/internal/zzmo;Lcom/google/android/gms/measurement/internal/zzio;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzmo;->c:Lcom/google/android/gms/measurement/internal/zzmr;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzmi;->zzb()Lcom/google/android/gms/common/util/Clock;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzmo;->a:J

    .line 24
    .line 25
    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzmo;->b:J

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public final zza(ZZJ)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzmo;->d:Lcom/google/android/gms/measurement/internal/zzmi;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzmi;->zzt()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzu()V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpa;->zza()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzmi;->zze()Lcom/google/android/gms/measurement/internal/zzae;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzbh;->m0:Lcom/google/android/gms/measurement/internal/zzfo;

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzae;->zza(Lcom/google/android/gms/measurement/internal/zzfo;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzim;->a:Lcom/google/android/gms/measurement/internal/zzho;

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzho;->zzac()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzmi;->zzk()Lcom/google/android/gms/measurement/internal/zzgm;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzgm;->q:Lcom/google/android/gms/measurement/internal/zzgr;

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzmi;->zzb()Lcom/google/android/gms/common/util/Clock;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 46
    .line 47
    .line 48
    move-result-wide v2

    .line 49
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzgr;->zza(J)V

    .line 50
    .line 51
    .line 52
    :cond_1
    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzmo;->a:J

    .line 53
    .line 54
    sub-long v1, p3, v1

    .line 55
    .line 56
    if-nez p1, :cond_2

    .line 57
    .line 58
    const-wide/16 v3, 0x3e8

    .line 59
    .line 60
    cmp-long p1, v1, v3

    .line 61
    .line 62
    if-gez p1, :cond_2

    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzmi;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgb;->zzp()Lcom/google/android/gms/measurement/internal/zzgd;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    const-string p3, "Screen exposed for less than 1000 ms. Event not sent. time"

    .line 77
    .line 78
    invoke-virtual {p1, p3, p2}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    const/4 p1, 0x0

    .line 82
    return p1

    .line 83
    :cond_2
    if-nez p2, :cond_3

    .line 84
    .line 85
    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzmo;->b:J

    .line 86
    .line 87
    sub-long v1, p3, v1

    .line 88
    .line 89
    iput-wide p3, p0, Lcom/google/android/gms/measurement/internal/zzmo;->b:J

    .line 90
    .line 91
    :cond_3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzmi;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgb;->zzp()Lcom/google/android/gms/measurement/internal/zzgd;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    const-string v4, "Recording user engagement, ms"

    .line 104
    .line 105
    invoke-virtual {p1, v4, v3}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    new-instance p1, Landroid/os/Bundle;

    .line 109
    .line 110
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 111
    .line 112
    .line 113
    const-string v3, "_et"

    .line 114
    .line 115
    invoke-virtual {p1, v3, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzmi;->zze()Lcom/google/android/gms/measurement/internal/zzae;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzae;->zzv()Z

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    const/4 v2, 0x1

    .line 127
    xor-int/2addr v1, v2

    .line 128
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzmi;->zzn()Lcom/google/android/gms/measurement/internal/zzkv;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    invoke-virtual {v3, v1}, Lcom/google/android/gms/measurement/internal/zzkv;->zza(Z)Lcom/google/android/gms/measurement/internal/zzks;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-static {v1, p1, v2}, Lcom/google/android/gms/measurement/internal/zznt;->zza(Lcom/google/android/gms/measurement/internal/zzks;Landroid/os/Bundle;Z)V

    .line 137
    .line 138
    .line 139
    if-nez p2, :cond_4

    .line 140
    .line 141
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzmi;->zzm()Lcom/google/android/gms/measurement/internal/zziy;

    .line 142
    .line 143
    .line 144
    move-result-object p2

    .line 145
    const-string v0, "auto"

    .line 146
    .line 147
    const-string v1, "_e"

    .line 148
    .line 149
    invoke-virtual {p2, v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zziy;->n(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 150
    .line 151
    .line 152
    :cond_4
    iput-wide p3, p0, Lcom/google/android/gms/measurement/internal/zzmo;->a:J

    .line 153
    .line 154
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzmo;->c:Lcom/google/android/gms/measurement/internal/zzmr;

    .line 155
    .line 156
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzav;->a()V

    .line 157
    .line 158
    .line 159
    const-wide/32 p2, 0x36ee80

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzav;->zza(J)V

    .line 163
    .line 164
    .line 165
    return v2
.end method
