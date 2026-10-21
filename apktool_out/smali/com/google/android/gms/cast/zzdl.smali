.class final Lcom/google/android/gms/cast/zzdl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# instance fields
.field public final a:J

.field public final synthetic b:Lcom/google/android/gms/cast/zzdm;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/cast/zzdm;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cast/zzdl;->b:Lcom/google/android/gms/cast/zzdm;

    iput-wide p2, p0, Lcom/google/android/gms/cast/zzdl;->a:J

    return-void
.end method


# virtual methods
.method public final bridge synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/google/android/gms/common/api/Status;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/gms/cast/zzdl;->b:Lcom/google/android/gms/cast/zzdm;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/google/android/gms/cast/zzdm;->b:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/google/android/gms/cast/RemoteMediaPlayer;->b:Lcom/google/android/gms/cast/internal/zzaq;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    iget-wide v1, p0, Lcom/google/android/gms/cast/zzdl;->a:J

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/cast/internal/zzaq;->zzP(JI)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method
