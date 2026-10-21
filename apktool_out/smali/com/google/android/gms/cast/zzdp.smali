.class abstract Lcom/google/android/gms/cast/zzdp;
.super Lcom/google/android/gms/cast/internal/zzc;
.source "SourceFile"


# virtual methods
.method public final synthetic createFailedResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/cast/zzdo;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/google/android/gms/cast/zzdo;-><init>(Lcom/google/android/gms/common/api/Status;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

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
    const/4 p1, 0x0

    .line 4
    throw p1
.end method
