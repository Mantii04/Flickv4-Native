.class public Lcom/google/android/gms/cast/internal/zzp;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/cast/internal/Logger;

.field public final b:Ljava/lang/String;

.field public c:Lcom/google/android/gms/cast/internal/zzar;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/google/android/gms/cast/internal/CastUtils;->throwIfInvalidNamespace(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/google/android/gms/cast/internal/zzp;->b:Ljava/lang/String;

    .line 8
    .line 9
    new-instance p1, Lcom/google/android/gms/cast/internal/Logger;

    .line 10
    .line 11
    const-string p2, "MediaControlChannel"

    .line 12
    .line 13
    const/4 p3, 0x0

    .line 14
    invoke-direct {p1, p2, p3}, Lcom/google/android/gms/cast/internal/Logger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lcom/google/android/gms/cast/internal/zzp;->a:Lcom/google/android/gms/cast/internal/Logger;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final zzd()J
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzp;->c:Lcom/google/android/gms/cast/internal/zzar;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    new-array v0, v0, [Ljava/lang/Object;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/google/android/gms/cast/internal/zzp;->a:Lcom/google/android/gms/cast/internal/Logger;

    .line 9
    .line 10
    const-string v2, "Attempt to generate requestId without a sink"

    .line 11
    .line 12
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/cast/internal/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    const-wide/16 v0, 0x0

    .line 16
    .line 17
    return-wide v0

    .line 18
    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/cast/internal/zzar;->zza()J

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    return-wide v0
.end method

.method public final zze()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzp;->b:Ljava/lang/String;

    return-object v0
.end method

.method public zzf()V
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public final zzg(Ljava/lang/String;JLjava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzp;->c:Lcom/google/android/gms/cast/internal/zzar;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    new-array p1, p1, [Ljava/lang/Object;

    .line 7
    .line 8
    iget-object p2, p0, Lcom/google/android/gms/cast/internal/zzp;->a:Lcom/google/android/gms/cast/internal/Logger;

    .line 9
    .line 10
    const-string p3, "Attempt to send text message without a sink"

    .line 11
    .line 12
    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/cast/internal/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/cast/internal/zzp;->b:Ljava/lang/String;

    .line 17
    .line 18
    const/4 v5, 0x0

    .line 19
    move-object v2, p1

    .line 20
    move-wide v3, p2

    .line 21
    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/cast/internal/zzar;->zzb(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final zzh(Lcom/google/android/gms/cast/internal/zzar;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/cast/internal/zzp;->c:Lcom/google/android/gms/cast/internal/zzar;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzp;->zzf()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
