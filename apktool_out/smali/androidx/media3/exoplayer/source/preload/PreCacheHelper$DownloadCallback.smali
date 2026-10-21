.class final Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/offline/DownloadHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/source/preload/PreCacheHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DownloadCallback"
.end annotation


# instance fields
.field private final downloadHelper:Landroidx/media3/exoplayer/offline/DownloadHelper;

.field private downloader:Landroidx/media3/exoplayer/offline/Downloader;

.field private downloaderTask:Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;

.field private final durationMs:J

.field private isCanceled:Z

.field private isPreparationOngoing:Z

.field private final lock:Ljava/lang/Object;

.field private pendingDownloadRequest:Landroidx/media3/exoplayer/offline/DownloadRequest;

.field private final releasableExecutorSupplier:Landroidx/media3/exoplayer/source/preload/PreCacheHelper$ReleasableExecutorSupplier;

.field private final startPositionMs:J

.field final synthetic this$0:Landroidx/media3/exoplayer/source/preload/PreCacheHelper;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/source/preload/PreCacheHelper;JJ)V
    .locals 3

    .line 1
    iput-object p1, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->this$0:Landroidx/media3/exoplayer/source/preload/PreCacheHelper;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {p1}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper;->access$100(Landroidx/media3/exoplayer/source/preload/PreCacheHelper;)Landroid/os/Handler;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const/4 v2, 0x1

    .line 19
    if-ne v0, v1, :cond_0

    .line 20
    .line 21
    move v0, v2

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    :goto_0
    invoke-static {v0}, LP3/v;->checkState(Z)V

    .line 25
    .line 26
    .line 27
    new-instance v0, Ljava/lang/Object;

    .line 28
    .line 29
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->lock:Ljava/lang/Object;

    .line 33
    .line 34
    iput-wide p2, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->startPositionMs:J

    .line 35
    .line 36
    iput-wide p4, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->durationMs:J

    .line 37
    .line 38
    invoke-static {p1}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper;->access$200(Landroidx/media3/exoplayer/source/preload/PreCacheHelper;)Landroidx/media3/exoplayer/source/MediaSource$Factory;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    const/4 p3, 0x0

    .line 43
    if-eqz p2, :cond_1

    .line 44
    .line 45
    iput-object p3, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->releasableExecutorSupplier:Landroidx/media3/exoplayer/source/preload/PreCacheHelper$ReleasableExecutorSupplier;

    .line 46
    .line 47
    invoke-static {p1}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper;->access$400(Landroidx/media3/exoplayer/source/preload/PreCacheHelper;)Landroidx/media3/exoplayer/offline/DownloadHelper$Factory;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    invoke-static {p1}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper;->access$200(Landroidx/media3/exoplayer/source/preload/PreCacheHelper;)Landroidx/media3/exoplayer/source/MediaSource$Factory;

    .line 52
    .line 53
    .line 54
    move-result-object p3

    .line 55
    invoke-static {p1}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper;->access$300(Landroidx/media3/exoplayer/source/preload/PreCacheHelper;)Landroidx/media3/common/MediaItem;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-interface {p3, p1}, Landroidx/media3/exoplayer/source/MediaSource$Factory;->createMediaSource(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/source/MediaSource;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p2, p1}, Landroidx/media3/exoplayer/offline/DownloadHelper$Factory;->create(Landroidx/media3/exoplayer/source/MediaSource;)Landroidx/media3/exoplayer/offline/DownloadHelper;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    iput-object p1, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->downloadHelper:Landroidx/media3/exoplayer/offline/DownloadHelper;

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_1
    new-instance p2, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$ReleasableExecutorSupplier;

    .line 71
    .line 72
    invoke-static {p1}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper;->access$100(Landroidx/media3/exoplayer/source/preload/PreCacheHelper;)Landroid/os/Handler;

    .line 73
    .line 74
    .line 75
    move-result-object p4

    .line 76
    invoke-direct {p2, p4, p3}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$ReleasableExecutorSupplier;-><init>(Landroid/os/Handler;Landroidx/media3/exoplayer/source/preload/PreCacheHelper$1;)V

    .line 77
    .line 78
    .line 79
    iput-object p2, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->releasableExecutorSupplier:Landroidx/media3/exoplayer/source/preload/PreCacheHelper$ReleasableExecutorSupplier;

    .line 80
    .line 81
    invoke-static {p1}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper;->access$400(Landroidx/media3/exoplayer/source/preload/PreCacheHelper;)Landroidx/media3/exoplayer/offline/DownloadHelper$Factory;

    .line 82
    .line 83
    .line 84
    move-result-object p3

    .line 85
    invoke-virtual {p3, p2}, Landroidx/media3/exoplayer/offline/DownloadHelper$Factory;->setLoadExecutor(LP3/C;)Landroidx/media3/exoplayer/offline/DownloadHelper$Factory;

    .line 86
    .line 87
    .line 88
    invoke-static {p1}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper;->access$400(Landroidx/media3/exoplayer/source/preload/PreCacheHelper;)Landroidx/media3/exoplayer/offline/DownloadHelper$Factory;

    .line 89
    .line 90
    .line 91
    move-result-object p3

    .line 92
    invoke-static {p1}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper;->access$300(Landroidx/media3/exoplayer/source/preload/PreCacheHelper;)Landroidx/media3/common/MediaItem;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-virtual {p3, p1}, Landroidx/media3/exoplayer/offline/DownloadHelper$Factory;->create(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/offline/DownloadHelper;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    iput-object p1, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->downloadHelper:Landroidx/media3/exoplayer/offline/DownloadHelper;

    .line 101
    .line 102
    invoke-virtual {p2, p0}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$ReleasableExecutorSupplier;->setDownloadCallback(Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;)V

    .line 103
    .line 104
    .line 105
    :goto_1
    iput-boolean v2, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->isPreparationOngoing:Z

    .line 106
    .line 107
    iget-object p1, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->downloadHelper:Landroidx/media3/exoplayer/offline/DownloadHelper;

    .line 108
    .line 109
    invoke-virtual {p1, p0}, Landroidx/media3/exoplayer/offline/DownloadHelper;->prepare(Landroidx/media3/exoplayer/offline/DownloadHelper$Callback;)V

    .line 110
    .line 111
    .line 112
    return-void
.end method

.method public static synthetic a(Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;Landroidx/media3/common/MediaItem;Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Listener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->lambda$onPrepared$0(Landroidx/media3/common/MediaItem;Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Listener;)V

    return-void
.end method

.method public static synthetic b(Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;Landroidx/media3/common/util/Consumer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->lambda$notifyListeners$6(Landroidx/media3/common/util/Consumer;)V

    return-void
.end method

.method public static synthetic c(Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;Ljava/io/IOException;Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Listener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->lambda$onDownloadStopped$2(Ljava/io/IOException;Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Listener;)V

    return-void
.end method

.method public static synthetic d(Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->lambda$onDownloadProgress$5(Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;)V

    return-void
.end method

.method public static synthetic e(Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Listener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->lambda$onDownloadProgress$4(Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Listener;)V

    return-void
.end method

.method public static synthetic f(Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;Ljava/io/IOException;Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Listener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->lambda$onPrepareError$1(Ljava/io/IOException;Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Listener;)V

    return-void
.end method

.method public static synthetic g(Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->lambda$onDownloadStopped$3(Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;)V

    return-void
.end method

.method private synthetic lambda$notifyListeners$6(Landroidx/media3/common/util/Consumer;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->isCanceled:Z

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v1, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->this$0:Landroidx/media3/exoplayer/source/preload/PreCacheHelper;

    .line 13
    .line 14
    invoke-static {v1}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper;->access$1000(Landroidx/media3/exoplayer/source/preload/PreCacheHelper;)Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Listener;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    iget-object v1, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->this$0:Landroidx/media3/exoplayer/source/preload/PreCacheHelper;

    .line 21
    .line 22
    invoke-static {v1}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper;->access$1000(Landroidx/media3/exoplayer/source/preload/PreCacheHelper;)Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Listener;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-interface {p1, v1}, Landroidx/media3/common/util/Consumer;->accept(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    :cond_1
    monitor-exit v0

    .line 30
    return-void

    .line 31
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    throw p1
.end method

.method private synthetic lambda$onDownloadProgress$4(Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Listener;)V
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->this$0:Landroidx/media3/exoplayer/source/preload/PreCacheHelper;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper;->access$300(Landroidx/media3/exoplayer/source/preload/PreCacheHelper;)Landroidx/media3/common/MediaItem;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    invoke-static {p1}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;->access$1100(Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;)J

    .line 8
    .line 9
    .line 10
    move-result-wide v3

    .line 11
    invoke-static {p1}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;->access$1200(Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;)J

    .line 12
    .line 13
    .line 14
    move-result-wide v5

    .line 15
    invoke-static {p1}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;->access$1300(Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;)F

    .line 16
    .line 17
    .line 18
    move-result v7

    .line 19
    move-object v1, p2

    .line 20
    invoke-interface/range {v1 .. v7}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Listener;->onPreCacheProgress(Landroidx/media3/common/MediaItem;JJF)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private synthetic lambda$onDownloadProgress$5(Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->downloaderTask:Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;

    .line 2
    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Landroidx/media3/exoplayer/source/preload/m;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-direct {v0, p0, p1, v1}, Landroidx/media3/exoplayer/source/preload/m;-><init>(Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;Ljava/lang/Object;I)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->notifyListeners(Landroidx/media3/common/util/Consumer;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private synthetic lambda$onDownloadStopped$2(Ljava/io/IOException;Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Listener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->this$0:Landroidx/media3/exoplayer/source/preload/PreCacheHelper;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper;->access$300(Landroidx/media3/exoplayer/source/preload/PreCacheHelper;)Landroidx/media3/common/MediaItem;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {p2, v0, p1}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Listener;->onDownloadError(Landroidx/media3/common/MediaItem;Ljava/io/IOException;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private synthetic lambda$onDownloadStopped$3(Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->downloaderTask:Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;

    .line 2
    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->downloaderTask:Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;

    .line 8
    .line 9
    invoke-static {p1}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;->access$1400(Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;)Ljava/io/IOException;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {p1}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;->access$800(Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-nez p1, :cond_1

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    new-instance p1, Landroidx/media3/exoplayer/source/preload/l;

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-direct {p1, p0, v0, v1}, Landroidx/media3/exoplayer/source/preload/l;-><init>(Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;Ljava/io/IOException;I)V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->notifyListeners(Landroidx/media3/common/util/Consumer;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$onPrepareError$1(Ljava/io/IOException;Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Listener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->this$0:Landroidx/media3/exoplayer/source/preload/PreCacheHelper;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper;->access$300(Landroidx/media3/exoplayer/source/preload/PreCacheHelper;)Landroidx/media3/common/MediaItem;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {p2, v0, p1}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Listener;->onPrepareError(Landroidx/media3/common/MediaItem;Ljava/io/IOException;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private synthetic lambda$onPrepared$0(Landroidx/media3/common/MediaItem;Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Listener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->this$0:Landroidx/media3/exoplayer/source/preload/PreCacheHelper;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper;->access$300(Landroidx/media3/exoplayer/source/preload/PreCacheHelper;)Landroidx/media3/common/MediaItem;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {p2, v0, p1}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Listener;->onPrepared(Landroidx/media3/common/MediaItem;Landroidx/media3/common/MediaItem;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private notifyListeners(Landroidx/media3/common/util/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/util/Consumer<",
            "Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Listener;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->this$0:Landroidx/media3/exoplayer/source/preload/PreCacheHelper;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper;->access$900(Landroidx/media3/exoplayer/source/preload/PreCacheHelper;)Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Landroidx/media3/exoplayer/source/preload/n;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-direct {v1, v2, p0, p1}, Landroidx/media3/exoplayer/source/preload/n;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public cancel(Z)V
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->this$0:Landroidx/media3/exoplayer/source/preload/PreCacheHelper;

    .line 6
    .line 7
    invoke-static {v1}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper;->access$100(Landroidx/media3/exoplayer/source/preload/PreCacheHelper;)Landroid/os/Handler;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const/4 v2, 0x1

    .line 16
    if-ne v0, v1, :cond_0

    .line 17
    .line 18
    move v0, v2

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    :goto_0
    invoke-static {v0}, LP3/v;->checkState(Z)V

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->lock:Ljava/lang/Object;

    .line 25
    .line 26
    monitor-enter v1

    .line 27
    :try_start_0
    iput-boolean v2, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->isCanceled:Z

    .line 28
    .line 29
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->pendingDownloadRequest:Landroidx/media3/exoplayer/offline/DownloadRequest;

    .line 32
    .line 33
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->downloadHelper:Landroidx/media3/exoplayer/offline/DownloadHelper;

    .line 34
    .line 35
    invoke-virtual {v0}, Landroidx/media3/exoplayer/offline/DownloadHelper;->release()V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->downloaderTask:Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    invoke-static {v0}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;->access$800(Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    :cond_1
    move-object v4, p0

    .line 49
    goto :goto_1

    .line 50
    :cond_2
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->downloaderTask:Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;

    .line 51
    .line 52
    if-eqz v0, :cond_3

    .line 53
    .line 54
    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;->cancel()V

    .line 55
    .line 56
    .line 57
    :cond_3
    if-eqz p1, :cond_1

    .line 58
    .line 59
    iget-object p1, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->downloader:Landroidx/media3/exoplayer/offline/Downloader;

    .line 60
    .line 61
    if-eqz p1, :cond_1

    .line 62
    .line 63
    new-instance v0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;

    .line 64
    .line 65
    iget-object v1, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->downloader:Landroidx/media3/exoplayer/offline/Downloader;

    .line 66
    .line 67
    const/4 v3, 0x5

    .line 68
    const/4 v5, 0x0

    .line 69
    const/4 v2, 0x1

    .line 70
    move-object v4, p0

    .line 71
    invoke-direct/range {v0 .. v5}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;-><init>(Landroidx/media3/exoplayer/offline/Downloader;ZILandroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;Landroidx/media3/exoplayer/source/preload/PreCacheHelper$1;)V

    .line 72
    .line 73
    .line 74
    iput-object v0, v4, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->downloaderTask:Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;

    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 77
    .line 78
    .line 79
    :goto_1
    return-void

    .line 80
    :catchall_0
    move-exception v0

    .line 81
    move-object v4, p0

    .line 82
    :goto_2
    move-object p1, v0

    .line 83
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 84
    throw p1

    .line 85
    :catchall_1
    move-exception v0

    .line 86
    goto :goto_2
.end method

.method public isReusable(JJ)Z
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->this$0:Landroidx/media3/exoplayer/source/preload/PreCacheHelper;

    .line 6
    .line 7
    invoke-static {v1}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper;->access$100(Landroidx/media3/exoplayer/source/preload/PreCacheHelper;)Landroid/os/Handler;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const/4 v2, 0x0

    .line 16
    const/4 v3, 0x1

    .line 17
    if-ne v0, v1, :cond_0

    .line 18
    .line 19
    move v0, v3

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v0, v2

    .line 22
    :goto_0
    invoke-static {v0}, LP3/v;->checkState(Z)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->lock:Ljava/lang/Object;

    .line 26
    .line 27
    monitor-enter v0

    .line 28
    :try_start_0
    iget-boolean v1, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->isCanceled:Z

    .line 29
    .line 30
    if-nez v1, :cond_2

    .line 31
    .line 32
    iget-wide v4, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->startPositionMs:J

    .line 33
    .line 34
    cmp-long p1, p1, v4

    .line 35
    .line 36
    if-nez p1, :cond_2

    .line 37
    .line 38
    iget-wide p1, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->durationMs:J

    .line 39
    .line 40
    cmp-long p1, p3, p1

    .line 41
    .line 42
    if-nez p1, :cond_2

    .line 43
    .line 44
    iget-boolean p1, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->isPreparationOngoing:Z

    .line 45
    .line 46
    if-nez p1, :cond_1

    .line 47
    .line 48
    iget-object p1, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->downloaderTask:Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;

    .line 49
    .line 50
    if-eqz p1, :cond_2

    .line 51
    .line 52
    invoke-static {p1}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;->access$800(Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;)Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-nez p1, :cond_2

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :catchall_0
    move-exception p1

    .line 60
    goto :goto_2

    .line 61
    :cond_1
    :goto_1
    move v2, v3

    .line 62
    :cond_2
    monitor-exit v0

    .line 63
    return v2

    .line 64
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    throw p1
.end method

.method public maybeSubmitPendingDownloadRequest()V
    .locals 7

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->this$0:Landroidx/media3/exoplayer/source/preload/PreCacheHelper;

    .line 6
    .line 7
    invoke-static {v1}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper;->access$100(Landroidx/media3/exoplayer/source/preload/PreCacheHelper;)Landroid/os/Handler;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    invoke-static {v0}, LP3/v;->checkState(Z)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->pendingDownloadRequest:Landroidx/media3/exoplayer/offline/DownloadRequest;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->this$0:Landroidx/media3/exoplayer/source/preload/PreCacheHelper;

    .line 28
    .line 29
    invoke-static {v0}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper;->access$600(Landroidx/media3/exoplayer/source/preload/PreCacheHelper;)Landroidx/media3/exoplayer/offline/DownloaderFactory;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget-object v1, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->pendingDownloadRequest:Landroidx/media3/exoplayer/offline/DownloadRequest;

    .line 34
    .line 35
    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/offline/DownloaderFactory;->createDownloader(Landroidx/media3/exoplayer/offline/DownloadRequest;)Landroidx/media3/exoplayer/offline/Downloader;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iput-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->downloader:Landroidx/media3/exoplayer/offline/Downloader;

    .line 40
    .line 41
    new-instance v1, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;

    .line 42
    .line 43
    iget-object v2, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->downloader:Landroidx/media3/exoplayer/offline/Downloader;

    .line 44
    .line 45
    const/4 v4, 0x5

    .line 46
    const/4 v6, 0x0

    .line 47
    const/4 v3, 0x0

    .line 48
    move-object v5, p0

    .line 49
    invoke-direct/range {v1 .. v6}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;-><init>(Landroidx/media3/exoplayer/offline/Downloader;ZILandroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;Landroidx/media3/exoplayer/source/preload/PreCacheHelper$1;)V

    .line 50
    .line 51
    .line 52
    iput-object v1, v5, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->downloaderTask:Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;

    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 55
    .line 56
    .line 57
    const/4 v0, 0x0

    .line 58
    iput-object v0, v5, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->pendingDownloadRequest:Landroidx/media3/exoplayer/offline/DownloadRequest;

    .line 59
    .line 60
    return-void

    .line 61
    :cond_1
    move-object v5, p0

    .line 62
    return-void
.end method

.method public onDownloadProgress(Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->this$0:Landroidx/media3/exoplayer/source/preload/PreCacheHelper;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper;->access$100(Landroidx/media3/exoplayer/source/preload/PreCacheHelper;)Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Landroidx/media3/exoplayer/source/preload/o;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-direct {v1, p0, p1, v2}, Landroidx/media3/exoplayer/source/preload/o;-><init>(Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public onDownloadStopped(Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->this$0:Landroidx/media3/exoplayer/source/preload/PreCacheHelper;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper;->access$100(Landroidx/media3/exoplayer/source/preload/PreCacheHelper;)Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Landroidx/media3/exoplayer/source/preload/o;

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-direct {v1, p0, p1, v2}, Landroidx/media3/exoplayer/source/preload/o;-><init>(Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public onPrepareError(Landroidx/media3/exoplayer/offline/DownloadHelper;Ljava/io/IOException;)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->this$0:Landroidx/media3/exoplayer/source/preload/PreCacheHelper;

    .line 6
    .line 7
    invoke-static {v1}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper;->access$100(Landroidx/media3/exoplayer/source/preload/PreCacheHelper;)Landroid/os/Handler;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const/4 v2, 0x1

    .line 16
    const/4 v3, 0x0

    .line 17
    if-ne v0, v1, :cond_0

    .line 18
    .line 19
    move v0, v2

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v0, v3

    .line 22
    :goto_0
    invoke-static {v0}, LP3/v;->checkState(Z)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->downloadHelper:Landroidx/media3/exoplayer/offline/DownloadHelper;

    .line 26
    .line 27
    if-ne p1, v0, :cond_1

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    move v2, v3

    .line 31
    :goto_1
    invoke-static {v2}, LP3/v;->checkState(Z)V

    .line 32
    .line 33
    .line 34
    iput-boolean v3, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->isPreparationOngoing:Z

    .line 35
    .line 36
    iget-object p1, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->downloadHelper:Landroidx/media3/exoplayer/offline/DownloadHelper;

    .line 37
    .line 38
    invoke-virtual {p1}, Landroidx/media3/exoplayer/offline/DownloadHelper;->release()V

    .line 39
    .line 40
    .line 41
    new-instance p1, Landroidx/media3/exoplayer/source/preload/l;

    .line 42
    .line 43
    const/4 v0, 0x1

    .line 44
    invoke-direct {p1, p0, p2, v0}, Landroidx/media3/exoplayer/source/preload/l;-><init>(Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;Ljava/io/IOException;I)V

    .line 45
    .line 46
    .line 47
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->notifyListeners(Landroidx/media3/common/util/Consumer;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public onPrepared(Landroidx/media3/exoplayer/offline/DownloadHelper;Z)V
    .locals 9

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->this$0:Landroidx/media3/exoplayer/source/preload/PreCacheHelper;

    .line 6
    .line 7
    invoke-static {v0}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper;->access$100(Landroidx/media3/exoplayer/source/preload/PreCacheHelper;)Landroid/os/Handler;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x1

    .line 16
    const/4 v2, 0x0

    .line 17
    if-ne p2, v0, :cond_0

    .line 18
    .line 19
    move p2, v1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move p2, v2

    .line 22
    :goto_0
    invoke-static {p2}, LP3/v;->checkState(Z)V

    .line 23
    .line 24
    .line 25
    iget-object p2, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->downloadHelper:Landroidx/media3/exoplayer/offline/DownloadHelper;

    .line 26
    .line 27
    if-ne p1, p2, :cond_1

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    move v1, v2

    .line 31
    :goto_1
    invoke-static {v1}, LP3/v;->checkState(Z)V

    .line 32
    .line 33
    .line 34
    iput-boolean v2, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->isPreparationOngoing:Z

    .line 35
    .line 36
    iget-wide v5, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->startPositionMs:J

    .line 37
    .line 38
    iget-wide v7, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->durationMs:J

    .line 39
    .line 40
    const/4 v4, 0x0

    .line 41
    move-object v3, p1

    .line 42
    invoke-virtual/range {v3 .. v8}, Landroidx/media3/exoplayer/offline/DownloadHelper;->getDownloadRequest([BJJ)Landroidx/media3/exoplayer/offline/DownloadRequest;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    iget-object p2, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->downloadHelper:Landroidx/media3/exoplayer/offline/DownloadHelper;

    .line 47
    .line 48
    invoke-virtual {p2}, Landroidx/media3/exoplayer/offline/DownloadHelper;->release()V

    .line 49
    .line 50
    .line 51
    iget-object p2, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->this$0:Landroidx/media3/exoplayer/source/preload/PreCacheHelper;

    .line 52
    .line 53
    invoke-static {p2}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper;->access$300(Landroidx/media3/exoplayer/source/preload/PreCacheHelper;)Landroidx/media3/common/MediaItem;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-virtual {p2}, Landroidx/media3/common/MediaItem;->buildUpon()Landroidx/media3/common/MediaItem$Builder;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    invoke-virtual {p1, p2}, Landroidx/media3/exoplayer/offline/DownloadRequest;->toMediaItem(Landroidx/media3/common/MediaItem$Builder;)Landroidx/media3/common/MediaItem;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    new-instance v0, Landroidx/media3/exoplayer/source/preload/m;

    .line 66
    .line 67
    const/4 v1, 0x0

    .line 68
    invoke-direct {v0, p0, p2, v1}, Landroidx/media3/exoplayer/source/preload/m;-><init>(Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;Ljava/lang/Object;I)V

    .line 69
    .line 70
    .line 71
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->notifyListeners(Landroidx/media3/common/util/Consumer;)V

    .line 72
    .line 73
    .line 74
    iput-object p1, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->pendingDownloadRequest:Landroidx/media3/exoplayer/offline/DownloadRequest;

    .line 75
    .line 76
    iget-object p1, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->releasableExecutorSupplier:Landroidx/media3/exoplayer/source/preload/PreCacheHelper$ReleasableExecutorSupplier;

    .line 77
    .line 78
    if-eqz p1, :cond_3

    .line 79
    .line 80
    invoke-virtual {p1}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$ReleasableExecutorSupplier;->wereExecutorsReleased()Z

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    if-eqz p1, :cond_2

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_2
    return-void

    .line 88
    :cond_3
    :goto_2
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->maybeSubmitPendingDownloadRequest()V

    .line 89
    .line 90
    .line 91
    return-void
.end method
