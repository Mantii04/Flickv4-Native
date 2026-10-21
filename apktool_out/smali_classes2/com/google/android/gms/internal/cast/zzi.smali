.class public final Lcom/google/android/gms/internal/cast/zzi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/cast/framework/SessionManagerListener;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/cast/zzk;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/cast/zzk;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzi;->zza:Lcom/google/android/gms/internal/cast/zzk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic onSessionEnded(Lcom/google/android/gms/cast/framework/Session;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzi;->zza:Lcom/google/android/gms/internal/cast/zzk;

    .line 2
    .line 3
    check-cast p1, Lcom/google/android/gms/cast/framework/CastSession;

    .line 4
    .line 5
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/cast/zzk;->zzh(Lcom/google/android/gms/internal/cast/zzk;Lcom/google/android/gms/cast/framework/CastSession;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzi;->zza:Lcom/google/android/gms/internal/cast/zzk;

    .line 9
    .line 10
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/cast/zzk;->zzm(Lcom/google/android/gms/internal/cast/zzk;I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final synthetic onSessionEnding(Lcom/google/android/gms/cast/framework/Session;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzi;->zza:Lcom/google/android/gms/internal/cast/zzk;

    .line 2
    .line 3
    check-cast p1, Lcom/google/android/gms/cast/framework/CastSession;

    .line 4
    .line 5
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/cast/zzk;->zzh(Lcom/google/android/gms/internal/cast/zzk;Lcom/google/android/gms/cast/framework/CastSession;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final bridge synthetic onSessionResumeFailed(Lcom/google/android/gms/cast/framework/Session;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzi;->zza:Lcom/google/android/gms/internal/cast/zzk;

    .line 2
    .line 3
    check-cast p1, Lcom/google/android/gms/cast/framework/CastSession;

    .line 4
    .line 5
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/cast/zzk;->zzh(Lcom/google/android/gms/internal/cast/zzk;Lcom/google/android/gms/cast/framework/CastSession;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzi;->zza:Lcom/google/android/gms/internal/cast/zzk;

    .line 9
    .line 10
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/cast/zzk;->zzm(Lcom/google/android/gms/internal/cast/zzk;I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final bridge synthetic onSessionResumed(Lcom/google/android/gms/cast/framework/Session;Z)V
    .locals 4

    .line 1
    check-cast p1, Lcom/google/android/gms/cast/framework/CastSession;

    .line 2
    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzk;->zze()Lcom/google/android/gms/cast/internal/Logger;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x1

    .line 12
    new-array v2, v2, [Ljava/lang/Object;

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    aput-object v1, v2, v3

    .line 16
    .line 17
    const-string v1, "onSessionResumed with wasSuspended = %b"

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzi;->zza:Lcom/google/android/gms/internal/cast/zzk;

    .line 23
    .line 24
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/cast/zzk;->zzh(Lcom/google/android/gms/internal/cast/zzk;Lcom/google/android/gms/cast/framework/CastSession;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzi;->zza:Lcom/google/android/gms/internal/cast/zzk;

    .line 28
    .line 29
    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzk;->zzk(Lcom/google/android/gms/internal/cast/zzk;)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzi;->zza:Lcom/google/android/gms/internal/cast/zzk;

    .line 33
    .line 34
    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzk;->zzc(Lcom/google/android/gms/internal/cast/zzk;)Lcom/google/android/gms/internal/cast/zzl;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzi;->zza:Lcom/google/android/gms/internal/cast/zzk;

    .line 42
    .line 43
    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzk;->zzd(Lcom/google/android/gms/internal/cast/zzk;)Lcom/google/android/gms/internal/cast/zzm;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzk;->zzc(Lcom/google/android/gms/internal/cast/zzk;)Lcom/google/android/gms/internal/cast/zzl;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/cast/zzm;->zzb(Lcom/google/android/gms/internal/cast/zzl;Z)Lcom/google/android/gms/internal/cast/zzno;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    iget-object p2, p0, Lcom/google/android/gms/internal/cast/zzi;->zza:Lcom/google/android/gms/internal/cast/zzk;

    .line 56
    .line 57
    invoke-static {p2}, Lcom/google/android/gms/internal/cast/zzk;->zzb(Lcom/google/android/gms/internal/cast/zzk;)Lcom/google/android/gms/internal/cast/zzg;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    const/16 v0, 0xe3

    .line 62
    .line 63
    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/internal/cast/zzg;->zze(Lcom/google/android/gms/internal/cast/zzno;I)V

    .line 64
    .line 65
    .line 66
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzi;->zza:Lcom/google/android/gms/internal/cast/zzk;

    .line 67
    .line 68
    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzk;->zzo(Lcom/google/android/gms/internal/cast/zzk;)V

    .line 69
    .line 70
    .line 71
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzi;->zza:Lcom/google/android/gms/internal/cast/zzk;

    .line 72
    .line 73
    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzk;->zzp(Lcom/google/android/gms/internal/cast/zzk;)V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method public final bridge synthetic onSessionResuming(Lcom/google/android/gms/cast/framework/Session;Ljava/lang/String;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/google/android/gms/cast/framework/CastSession;

    .line 2
    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzk;->zze()Lcom/google/android/gms/cast/internal/Logger;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    new-array v1, v1, [Ljava/lang/Object;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    aput-object p2, v1, v2

    .line 12
    .line 13
    const-string v2, "onSessionResuming with sessionId = %s"

    .line 14
    .line 15
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzi;->zza:Lcom/google/android/gms/internal/cast/zzk;

    .line 19
    .line 20
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/cast/zzk;->zzh(Lcom/google/android/gms/internal/cast/zzk;Lcom/google/android/gms/cast/framework/CastSession;)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzi;->zza:Lcom/google/android/gms/internal/cast/zzk;

    .line 24
    .line 25
    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzk;->zza(Lcom/google/android/gms/internal/cast/zzk;)Landroid/content/SharedPreferences;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {p1, v0, p2}, Lcom/google/android/gms/internal/cast/zzk;->zzn(Lcom/google/android/gms/internal/cast/zzk;Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzi;->zza:Lcom/google/android/gms/internal/cast/zzk;

    .line 33
    .line 34
    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzk;->zzc(Lcom/google/android/gms/internal/cast/zzk;)Lcom/google/android/gms/internal/cast/zzl;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzi;->zza:Lcom/google/android/gms/internal/cast/zzk;

    .line 42
    .line 43
    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzk;->zzd(Lcom/google/android/gms/internal/cast/zzk;)Lcom/google/android/gms/internal/cast/zzm;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzk;->zzc(Lcom/google/android/gms/internal/cast/zzk;)Lcom/google/android/gms/internal/cast/zzl;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/cast/zzm;->zzc(Lcom/google/android/gms/internal/cast/zzl;)Lcom/google/android/gms/internal/cast/zzno;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    iget-object p2, p0, Lcom/google/android/gms/internal/cast/zzi;->zza:Lcom/google/android/gms/internal/cast/zzk;

    .line 56
    .line 57
    invoke-static {p2}, Lcom/google/android/gms/internal/cast/zzk;->zzb(Lcom/google/android/gms/internal/cast/zzk;)Lcom/google/android/gms/internal/cast/zzg;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    const/16 v0, 0xe2

    .line 62
    .line 63
    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/internal/cast/zzg;->zze(Lcom/google/android/gms/internal/cast/zzno;I)V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public final bridge synthetic onSessionStartFailed(Lcom/google/android/gms/cast/framework/Session;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzi;->zza:Lcom/google/android/gms/internal/cast/zzk;

    .line 2
    .line 3
    check-cast p1, Lcom/google/android/gms/cast/framework/CastSession;

    .line 4
    .line 5
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/cast/zzk;->zzh(Lcom/google/android/gms/internal/cast/zzk;Lcom/google/android/gms/cast/framework/CastSession;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzi;->zza:Lcom/google/android/gms/internal/cast/zzk;

    .line 9
    .line 10
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/cast/zzk;->zzm(Lcom/google/android/gms/internal/cast/zzk;I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final bridge synthetic onSessionStarted(Lcom/google/android/gms/cast/framework/Session;Ljava/lang/String;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/google/android/gms/cast/framework/CastSession;

    .line 2
    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzk;->zze()Lcom/google/android/gms/cast/internal/Logger;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    new-array v1, v1, [Ljava/lang/Object;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    aput-object p2, v1, v2

    .line 12
    .line 13
    const-string v2, "onSessionStarted with sessionId = %s"

    .line 14
    .line 15
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzi;->zza:Lcom/google/android/gms/internal/cast/zzk;

    .line 19
    .line 20
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/cast/zzk;->zzh(Lcom/google/android/gms/internal/cast/zzk;Lcom/google/android/gms/cast/framework/CastSession;)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzi;->zza:Lcom/google/android/gms/internal/cast/zzk;

    .line 24
    .line 25
    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzk;->zzk(Lcom/google/android/gms/internal/cast/zzk;)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzi;->zza:Lcom/google/android/gms/internal/cast/zzk;

    .line 29
    .line 30
    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzk;->zzc(Lcom/google/android/gms/internal/cast/zzk;)Lcom/google/android/gms/internal/cast/zzl;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iput-object p2, v0, Lcom/google/android/gms/internal/cast/zzl;->zzf:Ljava/lang/String;

    .line 35
    .line 36
    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzk;->zzd(Lcom/google/android/gms/internal/cast/zzk;)Lcom/google/android/gms/internal/cast/zzm;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzk;->zzc(Lcom/google/android/gms/internal/cast/zzk;)Lcom/google/android/gms/internal/cast/zzl;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/cast/zzm;->zza(Lcom/google/android/gms/internal/cast/zzl;)Lcom/google/android/gms/internal/cast/zzno;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    iget-object p2, p0, Lcom/google/android/gms/internal/cast/zzi;->zza:Lcom/google/android/gms/internal/cast/zzk;

    .line 49
    .line 50
    invoke-static {p2}, Lcom/google/android/gms/internal/cast/zzk;->zzb(Lcom/google/android/gms/internal/cast/zzk;)Lcom/google/android/gms/internal/cast/zzg;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    const/16 v0, 0xde

    .line 55
    .line 56
    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/internal/cast/zzg;->zze(Lcom/google/android/gms/internal/cast/zzno;I)V

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzi;->zza:Lcom/google/android/gms/internal/cast/zzk;

    .line 60
    .line 61
    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzk;->zzo(Lcom/google/android/gms/internal/cast/zzk;)V

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzi;->zza:Lcom/google/android/gms/internal/cast/zzk;

    .line 65
    .line 66
    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzk;->zzp(Lcom/google/android/gms/internal/cast/zzk;)V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public final bridge synthetic onSessionStarting(Lcom/google/android/gms/cast/framework/Session;)V
    .locals 4

    .line 1
    check-cast p1, Lcom/google/android/gms/cast/framework/CastSession;

    .line 2
    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzk;->zze()Lcom/google/android/gms/cast/internal/Logger;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    new-array v2, v1, [Ljava/lang/Object;

    .line 9
    .line 10
    const-string v3, "onSessionStarting"

    .line 11
    .line 12
    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzi;->zza:Lcom/google/android/gms/internal/cast/zzk;

    .line 16
    .line 17
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/cast/zzk;->zzh(Lcom/google/android/gms/internal/cast/zzk;Lcom/google/android/gms/cast/framework/CastSession;)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzi;->zza:Lcom/google/android/gms/internal/cast/zzk;

    .line 21
    .line 22
    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzk;->zzc(Lcom/google/android/gms/internal/cast/zzk;)Lcom/google/android/gms/internal/cast/zzl;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzk;->zze()Lcom/google/android/gms/cast/internal/Logger;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    new-array v0, v1, [Ljava/lang/Object;

    .line 33
    .line 34
    const-string v1, "Start a session while there\'s already an active session. Create a new one."

    .line 35
    .line 36
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/cast/internal/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzi;->zza:Lcom/google/android/gms/internal/cast/zzk;

    .line 40
    .line 41
    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzk;->zzl(Lcom/google/android/gms/internal/cast/zzk;)V

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzi;->zza:Lcom/google/android/gms/internal/cast/zzk;

    .line 45
    .line 46
    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzk;->zzd(Lcom/google/android/gms/internal/cast/zzk;)Lcom/google/android/gms/internal/cast/zzm;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzk;->zzc(Lcom/google/android/gms/internal/cast/zzk;)Lcom/google/android/gms/internal/cast/zzl;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/cast/zzm;->zzd(Lcom/google/android/gms/internal/cast/zzl;)Lcom/google/android/gms/internal/cast/zzno;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzi;->zza:Lcom/google/android/gms/internal/cast/zzk;

    .line 59
    .line 60
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzk;->zzb(Lcom/google/android/gms/internal/cast/zzk;)Lcom/google/android/gms/internal/cast/zzg;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    const/16 v1, 0xdd

    .line 65
    .line 66
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/cast/zzg;->zze(Lcom/google/android/gms/internal/cast/zzno;I)V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public final bridge synthetic onSessionSuspended(Lcom/google/android/gms/cast/framework/Session;I)V
    .locals 4

    .line 1
    check-cast p1, Lcom/google/android/gms/cast/framework/CastSession;

    .line 2
    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzk;->zze()Lcom/google/android/gms/cast/internal/Logger;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x1

    .line 12
    new-array v2, v2, [Ljava/lang/Object;

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    aput-object v1, v2, v3

    .line 16
    .line 17
    const-string v1, "onSessionSuspended with reason = %d"

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzi;->zza:Lcom/google/android/gms/internal/cast/zzk;

    .line 23
    .line 24
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/cast/zzk;->zzh(Lcom/google/android/gms/internal/cast/zzk;Lcom/google/android/gms/cast/framework/CastSession;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzi;->zza:Lcom/google/android/gms/internal/cast/zzk;

    .line 28
    .line 29
    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzk;->zzk(Lcom/google/android/gms/internal/cast/zzk;)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzi;->zza:Lcom/google/android/gms/internal/cast/zzk;

    .line 33
    .line 34
    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzk;->zzc(Lcom/google/android/gms/internal/cast/zzk;)Lcom/google/android/gms/internal/cast/zzl;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzi;->zza:Lcom/google/android/gms/internal/cast/zzk;

    .line 42
    .line 43
    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzk;->zzd(Lcom/google/android/gms/internal/cast/zzk;)Lcom/google/android/gms/internal/cast/zzm;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzk;->zzc(Lcom/google/android/gms/internal/cast/zzk;)Lcom/google/android/gms/internal/cast/zzl;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/cast/zzm;->zze(Lcom/google/android/gms/internal/cast/zzl;I)Lcom/google/android/gms/internal/cast/zzno;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    iget-object p2, p0, Lcom/google/android/gms/internal/cast/zzi;->zza:Lcom/google/android/gms/internal/cast/zzk;

    .line 56
    .line 57
    invoke-static {p2}, Lcom/google/android/gms/internal/cast/zzk;->zzb(Lcom/google/android/gms/internal/cast/zzk;)Lcom/google/android/gms/internal/cast/zzg;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    const/16 v0, 0xe1

    .line 62
    .line 63
    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/internal/cast/zzg;->zze(Lcom/google/android/gms/internal/cast/zzno;I)V

    .line 64
    .line 65
    .line 66
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzi;->zza:Lcom/google/android/gms/internal/cast/zzk;

    .line 67
    .line 68
    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzk;->zzo(Lcom/google/android/gms/internal/cast/zzk;)V

    .line 69
    .line 70
    .line 71
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzi;->zza:Lcom/google/android/gms/internal/cast/zzk;

    .line 72
    .line 73
    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzk;->zzj(Lcom/google/android/gms/internal/cast/zzk;)V

    .line 74
    .line 75
    .line 76
    return-void
.end method
