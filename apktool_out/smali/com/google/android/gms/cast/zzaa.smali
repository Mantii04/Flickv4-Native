.class public final synthetic Lcom/google/android/gms/cast/zzaa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/cast/CastRemoteDisplayClient;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/cast/CastRemoteDisplayClient;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cast/zzaa;->a:Lcom/google/android/gms/cast/CastRemoteDisplayClient;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/cast/zzdo;

    .line 2
    .line 3
    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 4
    .line 5
    new-instance v0, Lcom/google/android/gms/cast/zzad;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/google/android/gms/cast/zzaa;->a:Lcom/google/android/gms/cast/CastRemoteDisplayClient;

    .line 8
    .line 9
    invoke-direct {v0, v1, p2}, Lcom/google/android/gms/cast/zzad;-><init>(Lcom/google/android/gms/cast/CastRemoteDisplayClient;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Lcom/google/android/gms/internal/cast/zzdt;

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/cast/zzdt;->zzi(Lcom/google/android/gms/internal/cast/zzds;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
