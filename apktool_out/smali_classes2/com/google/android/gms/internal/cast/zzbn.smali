.class public final Lcom/google/android/gms/internal/cast/zzbn;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1e
.end annotation


# static fields
.field private static final zza:Lcom/google/android/gms/cast/internal/Logger;


# instance fields
.field private final zzb:Lcom/google/android/gms/cast/framework/CastOptions;

.field private final zzc:Ljava/util/Set;

.field private final zzd:Landroid/os/Handler;

.field private final zze:Ljava/lang/Runnable;

.field private zzf:I

.field private zzg:Lcom/google/android/gms/cast/framework/SessionManager;

.field private zzh:Landroidx/concurrent/futures/j;

.field private zzi:Lcom/google/android/gms/cast/SessionState;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/cast/internal/Logger;

    .line 2
    .line 3
    const-string v1, "SessionTransController"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/google/android/gms/cast/internal/Logger;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/google/android/gms/internal/cast/zzbn;->zza:Lcom/google/android/gms/cast/internal/Logger;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/cast/framework/CastOptions;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashSet;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzbn;->zzc:Ljava/util/Set;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzbn;->zzb:Lcom/google/android/gms/cast/framework/CastOptions;

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    iput p1, p0, Lcom/google/android/gms/internal/cast/zzbn;->zzf:I

    .line 19
    .line 20
    new-instance p1, Lcom/google/android/gms/internal/cast/zzed;

    .line 21
    .line 22
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/cast/zzed;-><init>(Landroid/os/Looper;)V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzbn;->zzd:Landroid/os/Handler;

    .line 30
    .line 31
    new-instance p1, Lcom/google/android/gms/internal/cast/zzbj;

    .line 32
    .line 33
    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/cast/zzbj;-><init>(Lcom/google/android/gms/internal/cast/zzbn;)V

    .line 34
    .line 35
    .line 36
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzbn;->zze:Ljava/lang/Runnable;

    .line 37
    .line 38
    return-void
.end method

.method public static bridge synthetic zza(Lcom/google/android/gms/internal/cast/zzbn;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/cast/zzbn;->zzf:I

    return p0
.end method

.method public static bridge synthetic zzb(Lcom/google/android/gms/internal/cast/zzbn;)Lcom/google/android/gms/cast/framework/CastOptions;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/cast/zzbn;->zzb:Lcom/google/android/gms/cast/framework/CastOptions;

    return-object p0
.end method

.method public static bridge synthetic zzc()Lcom/google/android/gms/cast/internal/Logger;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/cast/zzbn;->zza:Lcom/google/android/gms/cast/internal/Logger;

    return-object v0
.end method

.method public static synthetic zzd(Lcom/google/android/gms/internal/cast/zzbn;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/cast/zzbm;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/cast/zzbm;-><init>(Lcom/google/android/gms/internal/cast/zzbn;Lcom/google/android/gms/internal/cast/zzbl;)V

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lcom/google/android/gms/internal/cast/zzbn;->zzg:Lcom/google/android/gms/cast/framework/SessionManager;

    .line 8
    .line 9
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Lcom/google/android/gms/cast/framework/SessionManager;

    .line 14
    .line 15
    const-class v1, Lcom/google/android/gms/cast/framework/CastSession;

    .line 16
    .line 17
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/cast/framework/SessionManager;->addSessionManagerListener(Lcom/google/android/gms/cast/framework/SessionManagerListener;Ljava/lang/Class;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public static synthetic zze(Lcom/google/android/gms/internal/cast/zzbn;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/cast/zzbn;->zza:Lcom/google/android/gms/cast/internal/Logger;

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/gms/internal/cast/zzbn;->zzf:I

    .line 4
    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x1

    .line 10
    new-array v2, v2, [Ljava/lang/Object;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    aput-object v1, v2, v3

    .line 14
    .line 15
    const-string v1, "transfer with type = %d has timed out"

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/cast/internal/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    const/16 v0, 0x65

    .line 21
    .line 22
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/cast/zzbn;->zzp(I)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public static synthetic zzf(Lcom/google/android/gms/internal/cast/zzbn;Lcom/google/android/gms/cast/SessionState;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzbn;->zzi:Lcom/google/android/gms/cast/SessionState;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/google/android/gms/internal/cast/zzbn;->zzh:Landroidx/concurrent/futures/j;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1}, Landroidx/concurrent/futures/j;->set(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public static bridge synthetic zzg(Lcom/google/android/gms/internal/cast/zzbn;)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/cast/zzbn;->zzf:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    sget-object p0, Lcom/google/android/gms/internal/cast/zzbn;->zza:Lcom/google/android/gms/cast/internal/Logger;

    .line 7
    .line 8
    new-array v0, v1, [Ljava/lang/Object;

    .line 9
    .line 10
    const-string v1, "No need to notify transferred if the transfer type is unknown"

    .line 11
    .line 12
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/cast/zzbn;->zzi:Lcom/google/android/gms/cast/SessionState;

    .line 17
    .line 18
    if-nez v2, :cond_1

    .line 19
    .line 20
    sget-object p0, Lcom/google/android/gms/internal/cast/zzbn;->zza:Lcom/google/android/gms/cast/internal/Logger;

    .line 21
    .line 22
    new-array v0, v1, [Ljava/lang/Object;

    .line 23
    .line 24
    const-string v1, "No need to notify with null sessionState"

    .line 25
    .line 26
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    sget-object v3, Lcom/google/android/gms/internal/cast/zzbn;->zza:Lcom/google/android/gms/cast/internal/Logger;

    .line 31
    .line 32
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget-object v4, p0, Lcom/google/android/gms/internal/cast/zzbn;->zzi:Lcom/google/android/gms/cast/SessionState;

    .line 37
    .line 38
    const/4 v5, 0x2

    .line 39
    new-array v5, v5, [Ljava/lang/Object;

    .line 40
    .line 41
    aput-object v0, v5, v1

    .line 42
    .line 43
    const/4 v0, 0x1

    .line 44
    aput-object v4, v5, v0

    .line 45
    .line 46
    const-string v0, "notify transferred with type = %d, sessionState = %s"

    .line 47
    .line 48
    invoke-virtual {v3, v0, v5}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzbn;->zzc:Ljava/util/Set;

    .line 52
    .line 53
    new-instance v1, Ljava/util/HashSet;

    .line 54
    .line 55
    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-eqz v1, :cond_2

    .line 67
    .line 68
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    check-cast v1, Lcom/google/android/gms/cast/framework/SessionTransferCallback;

    .line 73
    .line 74
    iget v3, p0, Lcom/google/android/gms/internal/cast/zzbn;->zzf:I

    .line 75
    .line 76
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/cast/framework/SessionTransferCallback;->onTransferred(ILcom/google/android/gms/cast/SessionState;)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_2
    return-void
.end method

.method public static bridge synthetic zzh(Lcom/google/android/gms/internal/cast/zzbn;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzbn;->zzq()V

    return-void
.end method

.method public static bridge synthetic zzi(Lcom/google/android/gms/internal/cast/zzbn;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzbn;->zzi:Lcom/google/android/gms/cast/SessionState;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    sget-object p0, Lcom/google/android/gms/internal/cast/zzbn;->zza:Lcom/google/android/gms/cast/internal/Logger;

    .line 7
    .line 8
    new-array v0, v1, [Ljava/lang/Object;

    .line 9
    .line 10
    const-string v1, "skip restoring session state due to null SessionState"

    .line 11
    .line 12
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzbn;->zzo()Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    sget-object p0, Lcom/google/android/gms/internal/cast/zzbn;->zza:Lcom/google/android/gms/cast/internal/Logger;

    .line 23
    .line 24
    new-array v0, v1, [Ljava/lang/Object;

    .line 25
    .line 26
    const-string v1, "skip restoring session state due to null RemoteMediaClient"

    .line 27
    .line 28
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    sget-object v2, Lcom/google/android/gms/internal/cast/zzbn;->zza:Lcom/google/android/gms/cast/internal/Logger;

    .line 33
    .line 34
    new-array v1, v1, [Ljava/lang/Object;

    .line 35
    .line 36
    const-string v3, "resume SessionState to current session"

    .line 37
    .line 38
    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    iget-object p0, p0, Lcom/google/android/gms/internal/cast/zzbn;->zzi:Lcom/google/android/gms/cast/SessionState;

    .line 42
    .line 43
    invoke-virtual {v0, p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzr(Lcom/google/android/gms/cast/SessionState;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method private final zzo()Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzbn;->zzg:Lcom/google/android/gms/cast/framework/SessionManager;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lcom/google/android/gms/internal/cast/zzbn;->zza:Lcom/google/android/gms/cast/internal/Logger;

    .line 8
    .line 9
    new-array v2, v2, [Ljava/lang/Object;

    .line 10
    .line 11
    const-string v3, "skip transferring as SessionManager is null"

    .line 12
    .line 13
    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-object v1

    .line 17
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/SessionManager;->getCurrentCastSession()Lcom/google/android/gms/cast/framework/CastSession;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    sget-object v0, Lcom/google/android/gms/internal/cast/zzbn;->zza:Lcom/google/android/gms/cast/internal/Logger;

    .line 24
    .line 25
    new-array v2, v2, [Ljava/lang/Object;

    .line 26
    .line 27
    const-string v3, "skip transferring as CastSession is null"

    .line 28
    .line 29
    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    return-object v1

    .line 33
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastSession;->getRemoteMediaClient()Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    return-object v0
.end method

.method private final zzp(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzbn;->zzh:Landroidx/concurrent/futures/j;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/concurrent/futures/j;->setCancelled()Z

    .line 6
    .line 7
    .line 8
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/cast/zzbn;->zza:Lcom/google/android/gms/cast/internal/Logger;

    .line 9
    .line 10
    iget v1, p0, Lcom/google/android/gms/internal/cast/zzbn;->zzf:I

    .line 11
    .line 12
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    const/4 v3, 0x2

    .line 21
    new-array v3, v3, [Ljava/lang/Object;

    .line 22
    .line 23
    const/4 v4, 0x0

    .line 24
    aput-object v1, v3, v4

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    aput-object v2, v3, v1

    .line 28
    .line 29
    const-string v1, "notify failed transfer with type = %d, reason = %d"

    .line 30
    .line 31
    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzbn;->zzc:Ljava/util/Set;

    .line 35
    .line 36
    new-instance v1, Ljava/util/HashSet;

    .line 37
    .line 38
    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_1

    .line 50
    .line 51
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    check-cast v1, Lcom/google/android/gms/cast/framework/SessionTransferCallback;

    .line 56
    .line 57
    iget v2, p0, Lcom/google/android/gms/internal/cast/zzbn;->zzf:I

    .line 58
    .line 59
    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/cast/framework/SessionTransferCallback;->onTransferFailed(II)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzbn;->zzq()V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method private final zzq()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzbn;->zzd:Landroid/os/Handler;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/os/Handler;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzbn;->zze:Ljava/lang/Runnable;

    .line 10
    .line 11
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Ljava/lang/Runnable;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lcom/google/android/gms/internal/cast/zzbn;->zzf:I

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzbn;->zzi:Lcom/google/android/gms/cast/SessionState;

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final zzj(Lcom/google/android/gms/cast/framework/SessionManager;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzbn;->zzg:Lcom/google/android/gms/cast/framework/SessionManager;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzbn;->zzd:Landroid/os/Handler;

    .line 4
    .line 5
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Landroid/os/Handler;

    .line 10
    .line 11
    new-instance v0, Lcom/google/android/gms/internal/cast/zzbk;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/cast/zzbk;-><init>(Lcom/google/android/gms/internal/cast/zzbn;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final synthetic zzk(Ljava/lang/Exception;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/cast/zzbn;->zza:Lcom/google/android/gms/cast/internal/Logger;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    const-string v2, "Fail to store SessionState"

    .line 7
    .line 8
    invoke-virtual {v0, p1, v2, v1}, Lcom/google/android/gms/cast/internal/Logger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    const/16 p1, 0x64

    .line 12
    .line 13
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/cast/zzbn;->zzp(I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final zzl(Lf1/U;Lf1/U;Landroidx/concurrent/futures/j;)V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    new-instance v1, Ljava/util/HashSet;

    .line 3
    .line 4
    iget-object v2, p0, Lcom/google/android/gms/internal/cast/zzbn;->zzc:Ljava/util/Set;

    .line 5
    .line 6
    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x0

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    sget-object p1, Lcom/google/android/gms/internal/cast/zzbn;->zza:Lcom/google/android/gms/cast/internal/Logger;

    .line 18
    .line 19
    new-array p2, v2, [Ljava/lang/Object;

    .line 20
    .line 21
    const-string v0, "No need to prepare transfer without any callback"

    .line 22
    .line 23
    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p3, v3}, Landroidx/concurrent/futures/j;->set(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    invoke-virtual {p1}, Lf1/U;->getPlaybackType()I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eq p1, v0, :cond_1

    .line 35
    .line 36
    sget-object p1, Lcom/google/android/gms/internal/cast/zzbn;->zza:Lcom/google/android/gms/cast/internal/Logger;

    .line 37
    .line 38
    new-array p2, v2, [Ljava/lang/Object;

    .line 39
    .line 40
    const-string v0, "No need to prepare transfer when transferring from local"

    .line 41
    .line 42
    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p3, v3}, Landroidx/concurrent/futures/j;->set(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzbn;->zzo()Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    if-eqz p1, :cond_6

    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->hasMediaSession()Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-nez v1, :cond_2

    .line 60
    .line 61
    goto/16 :goto_2

    .line 62
    .line 63
    :cond_2
    sget-object v1, Lcom/google/android/gms/internal/cast/zzbn;->zza:Lcom/google/android/gms/cast/internal/Logger;

    .line 64
    .line 65
    new-array v4, v2, [Ljava/lang/Object;

    .line 66
    .line 67
    const-string v5, "Prepare route transfer for changing endpoint"

    .line 68
    .line 69
    invoke-virtual {v1, v5, v4}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2}, Lf1/U;->getPlaybackType()I

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    if-nez v4, :cond_3

    .line 77
    .line 78
    sget-object p2, Lcom/google/android/gms/internal/cast/zzml;->zzP:Lcom/google/android/gms/internal/cast/zzml;

    .line 79
    .line 80
    invoke-static {p2}, Lcom/google/android/gms/internal/cast/zzo;->zzd(Lcom/google/android/gms/internal/cast/zzml;)V

    .line 81
    .line 82
    .line 83
    move p2, v0

    .line 84
    goto :goto_0

    .line 85
    :cond_3
    invoke-virtual {p2}, Lf1/U;->getExtras()Landroid/os/Bundle;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    invoke-static {p2}, Lcom/google/android/gms/cast/CastDevice;->getFromBundle(Landroid/os/Bundle;)Lcom/google/android/gms/cast/CastDevice;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    if-nez p2, :cond_4

    .line 94
    .line 95
    const/4 p2, 0x3

    .line 96
    goto :goto_0

    .line 97
    :cond_4
    const/4 p2, 0x2

    .line 98
    :goto_0
    iput p2, p0, Lcom/google/android/gms/internal/cast/zzbn;->zzf:I

    .line 99
    .line 100
    iput-object p3, p0, Lcom/google/android/gms/internal/cast/zzbn;->zzh:Landroidx/concurrent/futures/j;

    .line 101
    .line 102
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    new-array p3, v0, [Ljava/lang/Object;

    .line 107
    .line 108
    aput-object p2, p3, v2

    .line 109
    .line 110
    const-string p2, "notify transferring with type = %d"

    .line 111
    .line 112
    invoke-virtual {v1, p2, p3}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    iget-object p2, p0, Lcom/google/android/gms/internal/cast/zzbn;->zzc:Ljava/util/Set;

    .line 116
    .line 117
    new-instance p3, Ljava/util/HashSet;

    .line 118
    .line 119
    invoke-direct {p3, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 123
    .line 124
    .line 125
    move-result-object p2

    .line 126
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 127
    .line 128
    .line 129
    move-result p3

    .line 130
    if-eqz p3, :cond_5

    .line 131
    .line 132
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object p3

    .line 136
    check-cast p3, Lcom/google/android/gms/cast/framework/SessionTransferCallback;

    .line 137
    .line 138
    iget v0, p0, Lcom/google/android/gms/internal/cast/zzbn;->zzf:I

    .line 139
    .line 140
    invoke-virtual {p3, v0}, Lcom/google/android/gms/cast/framework/SessionTransferCallback;->onTransferring(I)V

    .line 141
    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_5
    iput-object v3, p0, Lcom/google/android/gms/internal/cast/zzbn;->zzi:Lcom/google/android/gms/cast/SessionState;

    .line 145
    .line 146
    invoke-virtual {p1, v3}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzk(Lorg/json/JSONObject;)Lcom/google/android/gms/tasks/Task;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    new-instance p2, Lcom/google/android/gms/internal/cast/zzbh;

    .line 151
    .line 152
    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/cast/zzbh;-><init>(Lcom/google/android/gms/internal/cast/zzbn;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    new-instance p2, Lcom/google/android/gms/internal/cast/zzbi;

    .line 160
    .line 161
    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/cast/zzbi;-><init>(Lcom/google/android/gms/internal/cast/zzbn;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    .line 165
    .line 166
    .line 167
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzbn;->zzd:Landroid/os/Handler;

    .line 168
    .line 169
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    check-cast p1, Landroid/os/Handler;

    .line 174
    .line 175
    iget-object p2, p0, Lcom/google/android/gms/internal/cast/zzbn;->zze:Ljava/lang/Runnable;

    .line 176
    .line 177
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object p2

    .line 181
    check-cast p2, Ljava/lang/Runnable;

    .line 182
    .line 183
    const-wide/16 v0, 0x2710

    .line 184
    .line 185
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 186
    .line 187
    .line 188
    return-void

    .line 189
    :cond_6
    :goto_2
    sget-object p1, Lcom/google/android/gms/internal/cast/zzbn;->zza:Lcom/google/android/gms/cast/internal/Logger;

    .line 190
    .line 191
    new-array p2, v2, [Ljava/lang/Object;

    .line 192
    .line 193
    const-string v0, "No need to prepare transfer when there is no media session"

    .line 194
    .line 195
    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {p3, v3}, Landroidx/concurrent/futures/j;->set(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    return-void
.end method

.method public final zzm(Lcom/google/android/gms/cast/framework/SessionTransferCallback;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/cast/zzbn;->zza:Lcom/google/android/gms/cast/internal/Logger;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object p1, v1, v2

    .line 8
    .line 9
    const-string v2, "register callback = %s"

    .line 10
    .line 11
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    const-string v0, "Must be called from the main thread."

    .line 15
    .line 16
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzbn;->zzc:Ljava/util/Set;

    .line 23
    .line 24
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final zzn(Lcom/google/android/gms/cast/framework/SessionTransferCallback;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/cast/zzbn;->zza:Lcom/google/android/gms/cast/internal/Logger;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object p1, v1, v2

    .line 8
    .line 9
    const-string v2, "unregister callback = %s"

    .line 10
    .line 11
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    const-string v0, "Must be called from the main thread."

    .line 15
    .line 16
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzbn;->zzc:Ljava/util/Set;

    .line 22
    .line 23
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method
