.class public final Lcom/google/android/gms/internal/cast/zzu;
.super Lcom/google/android/gms/cast/framework/SessionTransferCallback;
.source "SourceFile"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/cast/zzv;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/cast/zzv;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzu;->zza:Lcom/google/android/gms/internal/cast/zzv;

    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/SessionTransferCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTransferFailed(II)V
    .locals 1

    .line 1
    new-instance p1, Lcom/google/android/gms/internal/cast/zzy;

    .line 2
    .line 3
    const/16 v0, 0xb

    .line 4
    .line 5
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/cast/zzy;-><init>(I)V

    .line 6
    .line 7
    .line 8
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/cast/zzy;->zzb(Ljava/lang/Integer;)Lcom/google/android/gms/internal/cast/zzy;

    .line 13
    .line 14
    .line 15
    iget-object p2, p0, Lcom/google/android/gms/internal/cast/zzu;->zza:Lcom/google/android/gms/internal/cast/zzv;

    .line 16
    .line 17
    invoke-static {p2}, Lcom/google/android/gms/internal/cast/zzv;->zzd(Lcom/google/android/gms/internal/cast/zzv;)Lcom/google/android/gms/internal/cast/zzaf;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-virtual {p2}, Lcom/google/android/gms/internal/cast/zzaf;->zze()Z

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/cast/zzy;->zza(Ljava/lang/Boolean;)Lcom/google/android/gms/internal/cast/zzy;

    .line 30
    .line 31
    .line 32
    new-instance p2, Lcom/google/android/gms/internal/cast/zzz;

    .line 33
    .line 34
    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/cast/zzz;-><init>(Lcom/google/android/gms/internal/cast/zzy;)V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzu;->zza:Lcom/google/android/gms/internal/cast/zzv;

    .line 38
    .line 39
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/cast/zzv;->zzf(Lcom/google/android/gms/internal/cast/zzv;Lcom/google/android/gms/internal/cast/zzz;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final onTransferred(ILcom/google/android/gms/cast/SessionState;)V
    .locals 0

    return-void
.end method

.method public final onTransferring(I)V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/cast/zzy;

    .line 2
    .line 3
    const/16 v1, 0xa

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/cast/zzy;-><init>(I)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzu;->zza:Lcom/google/android/gms/internal/cast/zzv;

    .line 9
    .line 10
    invoke-static {v1}, Lcom/google/android/gms/internal/cast/zzv;->zzd(Lcom/google/android/gms/internal/cast/zzv;)Lcom/google/android/gms/internal/cast/zzaf;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Lcom/google/android/gms/internal/cast/zzaf;->zze()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/cast/zzy;->zza(Ljava/lang/Boolean;)Lcom/google/android/gms/internal/cast/zzy;

    .line 23
    .line 24
    .line 25
    new-instance v1, Lcom/google/android/gms/internal/cast/zzz;

    .line 26
    .line 27
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/cast/zzz;-><init>(Lcom/google/android/gms/internal/cast/zzy;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzu;->zza:Lcom/google/android/gms/internal/cast/zzv;

    .line 31
    .line 32
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/cast/zzv;->zzf(Lcom/google/android/gms/internal/cast/zzv;Lcom/google/android/gms/internal/cast/zzz;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzu;->zza:Lcom/google/android/gms/internal/cast/zzv;

    .line 36
    .line 37
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzv;->zzc(Lcom/google/android/gms/internal/cast/zzv;)Lcom/google/android/gms/internal/cast/zzx;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    new-instance v1, Lcom/google/android/gms/internal/cast/zzaa;

    .line 42
    .line 43
    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/cast/zzaa;-><init>(I)V

    .line 44
    .line 45
    .line 46
    new-instance p1, Lcom/google/android/gms/internal/cast/zzab;

    .line 47
    .line 48
    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/cast/zzab;-><init>(Lcom/google/android/gms/internal/cast/zzaa;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/cast/zzx;->zzd(Lcom/google/android/gms/internal/cast/zzab;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method
