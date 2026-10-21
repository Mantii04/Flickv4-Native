.class public final Lcom/google/android/gms/internal/cast/zzv;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/cast/zzg;

.field private final zzb:Lcom/google/android/gms/internal/cast/zzaf;

.field private final zzc:Ljava/lang/String;

.field private zzd:Lcom/google/android/gms/internal/cast/zzx;

.field private final zze:Lcom/google/android/gms/internal/cast/zzs;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/cast/zzg;Lcom/google/android/gms/internal/cast/zzaf;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzv;->zza:Lcom/google/android/gms/internal/cast/zzg;

    iput-object p2, p0, Lcom/google/android/gms/internal/cast/zzv;->zzb:Lcom/google/android/gms/internal/cast/zzaf;

    iput-object p3, p0, Lcom/google/android/gms/internal/cast/zzv;->zzc:Ljava/lang/String;

    new-instance p1, Lcom/google/android/gms/internal/cast/zzs;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/google/android/gms/internal/cast/zzs;-><init>(Lcom/google/android/gms/internal/cast/zzv;Lcom/google/android/gms/internal/cast/zzr;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzv;->zze:Lcom/google/android/gms/internal/cast/zzs;

    return-void
.end method

.method public static bridge synthetic zza(Lcom/google/android/gms/internal/cast/zzv;)Lcom/google/android/gms/internal/cast/zzs;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/cast/zzv;->zze:Lcom/google/android/gms/internal/cast/zzs;

    return-object p0
.end method

.method public static bridge synthetic zzb(Lcom/google/android/gms/internal/cast/zzv;)Lcom/google/android/gms/internal/cast/zzx;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/cast/zzv;->zzd:Lcom/google/android/gms/internal/cast/zzx;

    return-object p0
.end method

.method public static bridge synthetic zzc(Lcom/google/android/gms/internal/cast/zzv;)Lcom/google/android/gms/internal/cast/zzx;
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzv;->zzg()Lcom/google/android/gms/internal/cast/zzx;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic zzd(Lcom/google/android/gms/internal/cast/zzv;)Lcom/google/android/gms/internal/cast/zzaf;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/cast/zzv;->zzb:Lcom/google/android/gms/internal/cast/zzaf;

    return-object p0
.end method

.method public static bridge synthetic zze(Lcom/google/android/gms/internal/cast/zzv;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzv;->zzh()V

    return-void
.end method

.method public static bridge synthetic zzf(Lcom/google/android/gms/internal/cast/zzv;Lcom/google/android/gms/internal/cast/zzz;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/cast/zzz;->zzc()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzv;->zzd:Lcom/google/android/gms/internal/cast/zzx;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzv;->zzh()V

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/cast/zzz;->zzc()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-ne v0, v1, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzv;->zza:Lcom/google/android/gms/internal/cast/zzg;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzv;->zzc:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/cast/zzx;->zza(Lcom/google/android/gms/internal/cast/zzg;Ljava/lang/String;)Lcom/google/android/gms/internal/cast/zzx;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzv;->zzd:Lcom/google/android/gms/internal/cast/zzx;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzv;->zzg()Lcom/google/android/gms/internal/cast/zzx;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzv;->zzd:Lcom/google/android/gms/internal/cast/zzx;

    .line 37
    .line 38
    :goto_0
    iget-object p0, p0, Lcom/google/android/gms/internal/cast/zzv;->zzd:Lcom/google/android/gms/internal/cast/zzx;

    .line 39
    .line 40
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    check-cast p0, Lcom/google/android/gms/internal/cast/zzx;

    .line 45
    .line 46
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/zzx;->zzc(Lcom/google/android/gms/internal/cast/zzz;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method private final zzg()Lcom/google/android/gms/internal/cast/zzx;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzv;->zzd:Lcom/google/android/gms/internal/cast/zzx;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzv;->zza:Lcom/google/android/gms/internal/cast/zzg;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzv;->zzc:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/cast/zzx;->zza(Lcom/google/android/gms/internal/cast/zzg;Ljava/lang/String;)Lcom/google/android/gms/internal/cast/zzx;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzv;->zzd:Lcom/google/android/gms/internal/cast/zzx;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/cast/zzx;->zzh(I)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzv;->zzd:Lcom/google/android/gms/internal/cast/zzx;

    .line 20
    .line 21
    return-object v0
.end method

.method private final zzh()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzv;->zzd:Lcom/google/android/gms/internal/cast/zzx;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zzx;->zze()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzv;->zzd:Lcom/google/android/gms/internal/cast/zzx;

    .line 10
    .line 11
    :cond_0
    return-void
.end method
