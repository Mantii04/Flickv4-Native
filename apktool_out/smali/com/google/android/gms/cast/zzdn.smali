.class final Lcom/google/android/gms/cast/zzdn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/cast/internal/zzas;


# virtual methods
.method public final zza(Ljava/lang/String;JILjava/lang/Object;JJ)V
    .locals 0

    .line 1
    :try_start_0
    new-instance p1, Lcom/google/android/gms/cast/zzdq;

    .line 2
    .line 3
    new-instance p2, Lcom/google/android/gms/common/api/Status;

    .line 4
    .line 5
    invoke-direct {p2, p4}, Lcom/google/android/gms/common/api/Status;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    instance-of p3, p5, Lcom/google/android/gms/cast/internal/zzap;

    .line 9
    .line 10
    const/4 p4, 0x1

    .line 11
    if-eq p4, p3, :cond_0

    .line 12
    .line 13
    const/4 p5, 0x0

    .line 14
    :cond_0
    if-eqz p5, :cond_1

    .line 15
    .line 16
    :try_start_1
    check-cast p5, Lcom/google/android/gms/cast/internal/zzap;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception p1

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    :goto_0
    invoke-direct {p1, p2}, Lcom/google/android/gms/cast/zzdq;-><init>(Lcom/google/android/gms/common/api/Status;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 22
    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    throw p1

    .line 26
    :goto_1
    const-string p2, "RemoteMediaPlayer"

    .line 27
    .line 28
    const-string p3, "Result already set when calling onRequestCompleted"

    .line 29
    .line 30
    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final zzb(Ljava/lang/String;JJJ)V
    .locals 0

    .line 1
    :try_start_0
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    .line 2
    .line 3
    const/16 p2, 0x837

    .line 4
    .line 5
    invoke-direct {p1, p2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    .line 6
    .line 7
    .line 8
    new-instance p2, Lcom/google/android/gms/cast/zzdo;

    .line 9
    .line 10
    invoke-direct {p2, p1}, Lcom/google/android/gms/cast/zzdo;-><init>(Lcom/google/android/gms/common/api/Status;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    throw p1

    .line 15
    :catch_0
    move-exception p1

    .line 16
    const-string p2, "RemoteMediaPlayer"

    .line 17
    .line 18
    const-string p3, "Result already set when calling onRequestReplaced"

    .line 19
    .line 20
    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 21
    .line 22
    .line 23
    return-void
.end method
