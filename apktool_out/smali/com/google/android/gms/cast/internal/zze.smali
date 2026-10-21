.class public final synthetic Lcom/google/android/gms/cast/internal/zze;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field public final synthetic a:[Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/cast/internal/zzn;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/cast/internal/zze;->a:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/google/android/gms/cast/internal/zzo;

    .line 2
    .line 3
    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 4
    .line 5
    new-instance v0, Lcom/google/android/gms/cast/internal/zzl;

    .line 6
    .line 7
    invoke-direct {v0, p2}, Lcom/google/android/gms/cast/internal/zzl;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lcom/google/android/gms/cast/internal/zzaj;

    .line 15
    .line 16
    iget-object p2, p0, Lcom/google/android/gms/cast/internal/zze;->a:[Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/cast/internal/zzaj;->zzh(Lcom/google/android/gms/cast/internal/zzaf;[Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
