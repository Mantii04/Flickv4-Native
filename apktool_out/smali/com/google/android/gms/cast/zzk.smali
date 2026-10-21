.class final Lcom/google/android/gms/cast/zzk;
.super Lcom/google/android/gms/cast/internal/zzad;
.source "SourceFile"


# virtual methods
.method public final bridge synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/cast/internal/zzw;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/zzk;->zza(Lcom/google/android/gms/cast/internal/zzw;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final zza(Lcom/google/android/gms/cast/internal/zzw;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    const-string v0, ""

    .line 2
    .line 3
    invoke-virtual {p1, v0, p0}, Lcom/google/android/gms/cast/internal/zzw;->zzV(Ljava/lang/String;Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catch_0
    const/16 p1, 0x7d1

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/internal/zzc;->zzc(I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
