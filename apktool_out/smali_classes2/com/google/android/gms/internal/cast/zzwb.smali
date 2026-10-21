.class final Lcom/google/android/gms/internal/cast/zzwb;
.super Lcom/google/android/gms/internal/cast/zzvz;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzvz;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/cast/zzwa;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/cast/zzwa;->zza()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final synthetic zzb(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/cast/zzwa;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/cast/zzwa;->zzb()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final synthetic zzc(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/cast/zztp;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/google/android/gms/internal/cast/zztp;->zzc:Lcom/google/android/gms/internal/cast/zzwa;

    .line 4
    .line 5
    return-object p1
.end method

.method public final bridge synthetic zzd(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzwa;->zzc()Lcom/google/android/gms/internal/cast/zzwa;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/cast/zzwa;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzwa;->zzc()Lcom/google/android/gms/internal/cast/zzwa;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/cast/zzwa;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    check-cast p2, Lcom/google/android/gms/internal/cast/zzwa;

    .line 22
    .line 23
    check-cast p1, Lcom/google/android/gms/internal/cast/zzwa;

    .line 24
    .line 25
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/cast/zzwa;->zze(Lcom/google/android/gms/internal/cast/zzwa;Lcom/google/android/gms/internal/cast/zzwa;)Lcom/google/android/gms/internal/cast/zzwa;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    return-object p1

    .line 30
    :cond_0
    check-cast p2, Lcom/google/android/gms/internal/cast/zzwa;

    .line 31
    .line 32
    move-object v0, p1

    .line 33
    check-cast v0, Lcom/google/android/gms/internal/cast/zzwa;

    .line 34
    .line 35
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/cast/zzwa;->zzd(Lcom/google/android/gms/internal/cast/zzwa;)Lcom/google/android/gms/internal/cast/zzwa;

    .line 36
    .line 37
    .line 38
    :cond_1
    return-object p1
.end method

.method public final zze(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/cast/zztp;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/google/android/gms/internal/cast/zztp;->zzc:Lcom/google/android/gms/internal/cast/zzwa;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/cast/zzwa;->zzf()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final synthetic zzf(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/cast/zztp;

    .line 2
    .line 3
    check-cast p2, Lcom/google/android/gms/internal/cast/zzwa;

    .line 4
    .line 5
    iput-object p2, p1, Lcom/google/android/gms/internal/cast/zztp;->zzc:Lcom/google/android/gms/internal/cast/zzwa;

    .line 6
    .line 7
    return-void
.end method

.method public final synthetic zzg(Ljava/lang/Object;Lcom/google/android/gms/internal/cast/zzwq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method
