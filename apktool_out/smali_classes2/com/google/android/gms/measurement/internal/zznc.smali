.class final Lcom/google/android/gms/measurement/internal/zznc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/google/android/gms/measurement/internal/zznd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zznd;Lcom/google/android/gms/measurement/internal/zznn;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zznc;->b:Lcom/google/android/gms/measurement/internal/zznd;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznc;->b:Lcom/google/android/gms/measurement/internal/zznd;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zznd;->zzl()Lcom/google/android/gms/measurement/internal/zzhh;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhh;->zzt()V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzgv;

    .line 11
    .line 12
    invoke-direct {v1, v0}, Lcom/google/android/gms/measurement/internal/zzgv;-><init>(Lcom/google/android/gms/measurement/internal/zznd;)V

    .line 13
    .line 14
    .line 15
    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zznd;->k:Lcom/google/android/gms/measurement/internal/zzgv;

    .line 16
    .line 17
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzan;

    .line 18
    .line 19
    invoke-direct {v1, v0}, Lcom/google/android/gms/measurement/internal/zzan;-><init>(Lcom/google/android/gms/measurement/internal/zznd;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzmy;->zzal()V

    .line 23
    .line 24
    .line 25
    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zznd;->c:Lcom/google/android/gms/measurement/internal/zzan;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zznd;->zze()Lcom/google/android/gms/measurement/internal/zzae;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zznd;->a:Lcom/google/android/gms/measurement/internal/zzgy;

    .line 32
    .line 33
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Lcom/google/android/gms/measurement/internal/zzag;

    .line 38
    .line 39
    iput-object v2, v1, Lcom/google/android/gms/measurement/internal/zzae;->d:Lcom/google/android/gms/measurement/internal/zzag;

    .line 40
    .line 41
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzmd;

    .line 42
    .line 43
    invoke-direct {v1, v0}, Lcom/google/android/gms/measurement/internal/zzmd;-><init>(Lcom/google/android/gms/measurement/internal/zznd;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzmy;->zzal()V

    .line 47
    .line 48
    .line 49
    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zznd;->i:Lcom/google/android/gms/measurement/internal/zzmd;

    .line 50
    .line 51
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzs;

    .line 52
    .line 53
    invoke-direct {v1, v0}, Lcom/google/android/gms/measurement/internal/zzmy;-><init>(Lcom/google/android/gms/measurement/internal/zznd;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzmy;->zzal()V

    .line 57
    .line 58
    .line 59
    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zznd;->f:Lcom/google/android/gms/measurement/internal/zzs;

    .line 60
    .line 61
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzkq;

    .line 62
    .line 63
    invoke-direct {v1, v0}, Lcom/google/android/gms/measurement/internal/zzkq;-><init>(Lcom/google/android/gms/measurement/internal/zznd;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzmy;->zzal()V

    .line 67
    .line 68
    .line 69
    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zznd;->h:Lcom/google/android/gms/measurement/internal/zzkq;

    .line 70
    .line 71
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzmx;

    .line 72
    .line 73
    invoke-direct {v1, v0}, Lcom/google/android/gms/measurement/internal/zzmx;-><init>(Lcom/google/android/gms/measurement/internal/zznd;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzmy;->zzal()V

    .line 77
    .line 78
    .line 79
    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zznd;->e:Lcom/google/android/gms/measurement/internal/zzmx;

    .line 80
    .line 81
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzgl;

    .line 82
    .line 83
    invoke-direct {v1, v0}, Lcom/google/android/gms/measurement/internal/zzgl;-><init>(Lcom/google/android/gms/measurement/internal/zznd;)V

    .line 84
    .line 85
    .line 86
    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zznd;->d:Lcom/google/android/gms/measurement/internal/zzgl;

    .line 87
    .line 88
    iget v1, v0, Lcom/google/android/gms/measurement/internal/zznd;->r:I

    .line 89
    .line 90
    iget v2, v0, Lcom/google/android/gms/measurement/internal/zznd;->s:I

    .line 91
    .line 92
    if-eq v1, v2, :cond_0

    .line 93
    .line 94
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zznd;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgb;->zzg()Lcom/google/android/gms/measurement/internal/zzgd;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    iget v2, v0, Lcom/google/android/gms/measurement/internal/zznd;->r:I

    .line 103
    .line 104
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    iget v3, v0, Lcom/google/android/gms/measurement/internal/zznd;->s:I

    .line 109
    .line 110
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    const-string v4, "Not all upload components initialized"

    .line 115
    .line 116
    invoke-virtual {v1, v4, v2, v3}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    :cond_0
    const/4 v1, 0x1

    .line 120
    iput-boolean v1, v0, Lcom/google/android/gms/measurement/internal/zznd;->m:Z

    .line 121
    .line 122
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zznd;->zzv()V

    .line 123
    .line 124
    .line 125
    return-void
.end method
