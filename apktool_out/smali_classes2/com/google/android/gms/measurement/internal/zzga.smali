.class final Lcom/google/android/gms/measurement/internal/zzga;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic j:Ljava/lang/Object;

.field public final synthetic m:Ljava/lang/Object;

.field public final synthetic n:Lcom/google/android/gms/measurement/internal/zzgb;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzgb;ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lcom/google/android/gms/measurement/internal/zzga;->b:I

    .line 5
    .line 6
    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzga;->e:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzga;->f:Ljava/lang/Object;

    .line 9
    .line 10
    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/zzga;->j:Ljava/lang/Object;

    .line 11
    .line 12
    iput-object p6, p0, Lcom/google/android/gms/measurement/internal/zzga;->m:Ljava/lang/Object;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzga;->n:Lcom/google/android/gms/measurement/internal/zzgb;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzga;->n:Lcom/google/android/gms/measurement/internal/zzgb;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzim;->a:Lcom/google/android/gms/measurement/internal/zzho;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzho;->zzn()Lcom/google/android/gms/measurement/internal/zzgm;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-boolean v2, v1, Lcom/google/android/gms/measurement/internal/zzil;->b:Z

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    const/4 v1, 0x6

    .line 14
    const-string v2, "Persisted config not initialized. Not logging error/warn"

    .line 15
    .line 16
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(ILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iget-char v2, v0, Lcom/google/android/gms/measurement/internal/zzgb;->c:C

    .line 21
    .line 22
    if-nez v2, :cond_2

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zze()Lcom/google/android/gms/measurement/internal/zzae;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzae;->zzy()Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    const/16 v2, 0x43

    .line 35
    .line 36
    iput-char v2, v0, Lcom/google/android/gms/measurement/internal/zzgb;->c:C

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/16 v2, 0x63

    .line 40
    .line 41
    iput-char v2, v0, Lcom/google/android/gms/measurement/internal/zzgb;->c:C

    .line 42
    .line 43
    :cond_2
    :goto_0
    iget-wide v2, v0, Lcom/google/android/gms/measurement/internal/zzgb;->d:J

    .line 44
    .line 45
    const-wide/16 v4, 0x0

    .line 46
    .line 47
    cmp-long v2, v2, v4

    .line 48
    .line 49
    if-gez v2, :cond_3

    .line 50
    .line 51
    const-wide/32 v2, 0x153d8

    .line 52
    .line 53
    .line 54
    iput-wide v2, v0, Lcom/google/android/gms/measurement/internal/zzgb;->d:J

    .line 55
    .line 56
    :cond_3
    const-string v2, "01VDIWEA?"

    .line 57
    .line 58
    iget v3, p0, Lcom/google/android/gms/measurement/internal/zzga;->b:I

    .line 59
    .line 60
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    iget-char v3, v0, Lcom/google/android/gms/measurement/internal/zzgb;->c:C

    .line 65
    .line 66
    iget-wide v4, v0, Lcom/google/android/gms/measurement/internal/zzgb;->d:J

    .line 67
    .line 68
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzga;->f:Ljava/lang/Object;

    .line 69
    .line 70
    const/4 v6, 0x1

    .line 71
    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/zzga;->e:Ljava/lang/String;

    .line 72
    .line 73
    iget-object v8, p0, Lcom/google/android/gms/measurement/internal/zzga;->j:Ljava/lang/Object;

    .line 74
    .line 75
    iget-object v9, p0, Lcom/google/android/gms/measurement/internal/zzga;->m:Ljava/lang/Object;

    .line 76
    .line 77
    invoke-static {v6, v7, v0, v8, v9}, Lcom/google/android/gms/measurement/internal/zzgb;->b(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    new-instance v6, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    const-string v8, "2"

    .line 84
    .line 85
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string v2, ":"

    .line 98
    .line 99
    invoke-static {v6, v2, v0}, LA/i;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 104
    .line 105
    .line 106
    move-result v2

    .line 107
    const/16 v3, 0x400

    .line 108
    .line 109
    if-le v2, v3, :cond_4

    .line 110
    .line 111
    const/4 v0, 0x0

    .line 112
    invoke-virtual {v7, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    :cond_4
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzgm;->f:Lcom/google/android/gms/measurement/internal/zzgq;

    .line 117
    .line 118
    if-eqz v1, :cond_5

    .line 119
    .line 120
    const-wide/16 v2, 0x1

    .line 121
    .line 122
    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;J)V

    .line 123
    .line 124
    .line 125
    :cond_5
    return-void
.end method
