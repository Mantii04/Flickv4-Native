.class final Lcom/google/android/gms/internal/cast/zzs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/cast/framework/zzs;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/cast/zzv;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/cast/zzv;Lcom/google/android/gms/internal/cast/zzr;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzs;->zza:Lcom/google/android/gms/internal/cast/zzv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/cast/zzy;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/cast/zzy;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Lcom/google/android/gms/internal/cast/zzz;

    .line 8
    .line 9
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/cast/zzz;-><init>(Lcom/google/android/gms/internal/cast/zzy;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzs;->zza:Lcom/google/android/gms/internal/cast/zzv;

    .line 13
    .line 14
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/cast/zzv;->zzf(Lcom/google/android/gms/internal/cast/zzv;Lcom/google/android/gms/internal/cast/zzz;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final zzb(Ljava/lang/String;JIJJ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzs;->zza:Lcom/google/android/gms/internal/cast/zzv;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzv;->zzc(Lcom/google/android/gms/internal/cast/zzv;)Lcom/google/android/gms/internal/cast/zzx;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/google/android/gms/internal/cast/zzp;

    .line 8
    .line 9
    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/cast/zzp;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, p2, p3}, Lcom/google/android/gms/internal/cast/zzp;->zzf(J)Lcom/google/android/gms/internal/cast/zzp;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p4}, Lcom/google/android/gms/internal/cast/zzp;->zzh(I)Lcom/google/android/gms/internal/cast/zzp;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p5, p6}, Lcom/google/android/gms/internal/cast/zzp;->zzg(J)Lcom/google/android/gms/internal/cast/zzp;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p7, p8}, Lcom/google/android/gms/internal/cast/zzp;->zze(J)Lcom/google/android/gms/internal/cast/zzp;

    .line 22
    .line 23
    .line 24
    new-instance p1, Lcom/google/android/gms/internal/cast/zzq;

    .line 25
    .line 26
    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/cast/zzq;-><init>(Lcom/google/android/gms/internal/cast/zzp;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/cast/zzx;->zzb(Lcom/google/android/gms/internal/cast/zzq;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method
