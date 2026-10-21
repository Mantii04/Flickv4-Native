.class public final Landroidx/media3/common/util/WifiLockManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/common/util/WifiLockManager$WifiLockManagerInternal;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiLockManager"

.field private static final UNREACTIVE_WIFILOCK_HANDLER_RELEASE_DELAY_MS:I = 0x3e8

.field private static final WIFI_LOCK_TAG:Ljava/lang/String; = "ExoPlayer:WifiLockManager"


# instance fields
.field private enabled:Z

.field private final mainHandler:Landroidx/media3/common/util/HandlerWrapper;

.field private stayAwake:Z

.field private final wifiLockHandler:Landroidx/media3/common/util/HandlerWrapper;

.field private final wifiLockManagerInternal:Landroidx/media3/common/util/WifiLockManager$WifiLockManagerInternal;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroidx/media3/common/util/Clock;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/media3/common/util/WifiLockManager$WifiLockManagerInternal;

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-direct {v0, p1}, Landroidx/media3/common/util/WifiLockManager$WifiLockManagerInternal;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Landroidx/media3/common/util/WifiLockManager;->wifiLockManagerInternal:Landroidx/media3/common/util/WifiLockManager$WifiLockManagerInternal;

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    invoke-interface {p3, p2, p1}, Landroidx/media3/common/util/Clock;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroidx/media3/common/util/HandlerWrapper;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    iput-object p2, p0, Landroidx/media3/common/util/WifiLockManager;->wifiLockHandler:Landroidx/media3/common/util/HandlerWrapper;

    .line 21
    .line 22
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-interface {p3, p2, p1}, Landroidx/media3/common/util/Clock;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroidx/media3/common/util/HandlerWrapper;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iput-object p1, p0, Landroidx/media3/common/util/WifiLockManager;->mainHandler:Landroidx/media3/common/util/HandlerWrapper;

    .line 31
    .line 32
    return-void
.end method

.method public static synthetic a(Landroidx/media3/common/util/WifiLockManager;Ljava/util/concurrent/atomic/AtomicBoolean;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/common/util/WifiLockManager;->lambda$postUpdateWifiLock$2(Ljava/util/concurrent/atomic/AtomicBoolean;ZZ)V

    return-void
.end method

.method public static synthetic access$000(ZZ)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/common/util/WifiLockManager;->shouldAcquireWifilock(ZZ)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic b(Landroidx/media3/common/util/WifiLockManager;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/media3/common/util/WifiLockManager;->lambda$postUpdateWifiLock$1(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    return-void
.end method

.method public static synthetic c(Landroidx/media3/common/util/WifiLockManager;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/media3/common/util/WifiLockManager;->lambda$postUpdateWifiLock$0(ZZ)V

    return-void
.end method

.method private synthetic lambda$postUpdateWifiLock$0(ZZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/common/util/WifiLockManager;->wifiLockManagerInternal:Landroidx/media3/common/util/WifiLockManager$WifiLockManagerInternal;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroidx/media3/common/util/WifiLockManager$WifiLockManagerInternal;->updateWifiLock(ZZ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$postUpdateWifiLock$1(Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/common/util/WifiLockManager;->wifiLockManagerInternal:Landroidx/media3/common/util/WifiLockManager$WifiLockManagerInternal;

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroidx/media3/common/util/WifiLockManager$WifiLockManagerInternal;->access$100(Landroidx/media3/common/util/WifiLockManager$WifiLockManagerInternal;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$postUpdateWifiLock$2(Ljava/util/concurrent/atomic/AtomicBoolean;ZZ)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3
    .line 4
    .line 5
    iget-object p1, p0, Landroidx/media3/common/util/WifiLockManager;->wifiLockManagerInternal:Landroidx/media3/common/util/WifiLockManager$WifiLockManagerInternal;

    .line 6
    .line 7
    invoke-virtual {p1, p2, p3}, Landroidx/media3/common/util/WifiLockManager$WifiLockManagerInternal;->updateWifiLock(ZZ)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private postUpdateWifiLock(ZZ)V
    .locals 9

    .line 1
    invoke-static {p1, p2}, Landroidx/media3/common/util/WifiLockManager;->shouldAcquireWifilock(ZZ)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/media3/common/util/WifiLockManager;->wifiLockHandler:Landroidx/media3/common/util/HandlerWrapper;

    .line 8
    .line 9
    new-instance v1, Landroidx/media3/common/util/j;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    invoke-direct {v1, v2, p0, p1, p2}, Landroidx/media3/common/util/j;-><init>(ILjava/lang/Object;ZZ)V

    .line 13
    .line 14
    .line 15
    invoke-interface {v0, v1}, Landroidx/media3/common/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    new-instance v5, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    invoke-direct {v5, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Landroidx/media3/common/util/WifiLockManager;->mainHandler:Landroidx/media3/common/util/HandlerWrapper;

    .line 26
    .line 27
    new-instance v1, Landroidx/media3/common/util/g;

    .line 28
    .line 29
    const/4 v2, 0x7

    .line 30
    invoke-direct {v1, v2, p0, v5}, Landroidx/media3/common/util/g;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    const-wide/16 v2, 0x3e8

    .line 34
    .line 35
    invoke-interface {v0, v1, v2, v3}, Landroidx/media3/common/util/HandlerWrapper;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Landroidx/media3/common/util/WifiLockManager;->wifiLockHandler:Landroidx/media3/common/util/HandlerWrapper;

    .line 39
    .line 40
    new-instance v3, Landroidx/media3/common/util/k;

    .line 41
    .line 42
    const/4 v8, 0x1

    .line 43
    move-object v4, p0

    .line 44
    move v6, p1

    .line 45
    move v7, p2

    .line 46
    invoke-direct/range {v3 .. v8}, Landroidx/media3/common/util/k;-><init>(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicBoolean;ZZI)V

    .line 47
    .line 48
    .line 49
    invoke-interface {v0, v3}, Landroidx/media3/common/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method private static shouldAcquireWifilock(ZZ)Z
    .locals 0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public setEnabled(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/media3/common/util/WifiLockManager;->enabled:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-boolean p1, p0, Landroidx/media3/common/util/WifiLockManager;->enabled:Z

    .line 7
    .line 8
    iget-boolean v0, p0, Landroidx/media3/common/util/WifiLockManager;->stayAwake:Z

    .line 9
    .line 10
    invoke-direct {p0, p1, v0}, Landroidx/media3/common/util/WifiLockManager;->postUpdateWifiLock(ZZ)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setStayAwake(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/media3/common/util/WifiLockManager;->stayAwake:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iput-boolean p1, p0, Landroidx/media3/common/util/WifiLockManager;->stayAwake:Z

    .line 7
    .line 8
    iget-boolean v0, p0, Landroidx/media3/common/util/WifiLockManager;->enabled:Z

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    invoke-direct {p0, v0, p1}, Landroidx/media3/common/util/WifiLockManager;->postUpdateWifiLock(ZZ)V

    .line 14
    .line 15
    .line 16
    :cond_1
    :goto_0
    return-void
.end method
