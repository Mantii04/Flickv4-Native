.class final Lcom/google/android/gms/measurement/internal/zzb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic e:J

.field public final synthetic f:Lcom/google/android/gms/measurement/internal/zza;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zza;Ljava/lang/String;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzb;->b:Ljava/lang/String;

    .line 5
    .line 6
    iput-wide p3, p0, Lcom/google/android/gms/measurement/internal/zzb;->e:J

    .line 7
    .line 8
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzb;->f:Lcom/google/android/gms/measurement/internal/zza;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzb;->f:Lcom/google/android/gms/measurement/internal/zza;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zza;->zzt()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzb;->b:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zza;->c:Lp/g;

    .line 12
    .line 13
    invoke-virtual {v2, v1}, Lp/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    check-cast v3, Ljava/lang/Integer;

    .line 18
    .line 19
    if-eqz v3, :cond_4

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zza;->zzn()Lcom/google/android/gms/measurement/internal/zzkv;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    const/4 v5, 0x0

    .line 26
    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzkv;->zza(Z)Lcom/google/android/gms/measurement/internal/zzks;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    add-int/lit8 v3, v3, -0x1

    .line 35
    .line 36
    if-nez v3, :cond_3

    .line 37
    .line 38
    invoke-virtual {v2, v1}, Lp/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zza;->b:Lp/g;

    .line 42
    .line 43
    invoke-virtual {v3, v1}, Lp/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    check-cast v5, Ljava/lang/Long;

    .line 48
    .line 49
    iget-wide v6, p0, Lcom/google/android/gms/measurement/internal/zzb;->e:J

    .line 50
    .line 51
    if-nez v5, :cond_0

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zza;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgb;->zzg()Lcom/google/android/gms/measurement/internal/zzgd;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    const-string v3, "First ad unit exposure time was never set"

    .line 62
    .line 63
    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_0
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 68
    .line 69
    .line 70
    move-result-wide v8

    .line 71
    sub-long v8, v6, v8

    .line 72
    .line 73
    invoke-virtual {v3, v1}, Lp/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v1, v8, v9, v4}, Lcom/google/android/gms/measurement/internal/zza;->b(Ljava/lang/String;JLcom/google/android/gms/measurement/internal/zzks;)V

    .line 77
    .line 78
    .line 79
    :goto_0
    invoke-virtual {v2}, Lp/q;->isEmpty()Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-eqz v1, :cond_2

    .line 84
    .line 85
    iget-wide v1, v0, Lcom/google/android/gms/measurement/internal/zza;->d:J

    .line 86
    .line 87
    const-wide/16 v8, 0x0

    .line 88
    .line 89
    cmp-long v3, v1, v8

    .line 90
    .line 91
    if-nez v3, :cond_1

    .line 92
    .line 93
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zza;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzg()Lcom/google/android/gms/measurement/internal/zzgd;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    const-string v1, "First ad exposure time was never set"

    .line 102
    .line 103
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :cond_1
    sub-long/2addr v6, v1

    .line 108
    invoke-virtual {v0, v6, v7, v4}, Lcom/google/android/gms/measurement/internal/zza;->a(JLcom/google/android/gms/measurement/internal/zzks;)V

    .line 109
    .line 110
    .line 111
    iput-wide v8, v0, Lcom/google/android/gms/measurement/internal/zza;->d:J

    .line 112
    .line 113
    :cond_2
    return-void

    .line 114
    :cond_3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    return-void

    .line 122
    :cond_4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zza;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzg()Lcom/google/android/gms/measurement/internal/zzgd;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    const-string v2, "Call to endAdUnitExposure for unknown ad unit id"

    .line 131
    .line 132
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    return-void
.end method
