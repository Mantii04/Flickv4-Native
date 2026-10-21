.class public final synthetic Lcom/google/android/gms/cast/zzbc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/cast/zzbt;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/cast/zzbt;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cast/zzbc;->a:Lcom/google/android/gms/cast/zzbt;

    iput-boolean p2, p0, Lcom/google/android/gms/cast/zzbc;->b:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Lcom/google/android/gms/cast/internal/zzx;

    .line 2
    .line 3
    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/cast/zzbc;->a:Lcom/google/android/gms/cast/zzbt;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lcom/google/android/gms/cast/internal/zzag;

    .line 15
    .line 16
    iget-wide v1, v0, Lcom/google/android/gms/cast/zzbt;->u:D

    .line 17
    .line 18
    iget-boolean v0, v0, Lcom/google/android/gms/cast/zzbt;->v:Z

    .line 19
    .line 20
    iget-boolean v3, p0, Lcom/google/android/gms/cast/zzbc;->b:Z

    .line 21
    .line 22
    invoke-virtual {p1, v3, v1, v2, v0}, Lcom/google/android/gms/cast/internal/zzag;->zzn(ZDZ)V

    .line 23
    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    invoke-virtual {p2, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method
