.class public final Landroidx/media3/exoplayer/MetadataRetrieverInternal$RetrievalTask;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/MetadataRetrieverInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RetrievalTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/MetadataRetrieverInternal$RetrievalTask$OnPreparedListener;,
        Landroidx/media3/exoplayer/MetadataRetrieverInternal$RetrievalTask$OnFailureListener;,
        Landroidx/media3/exoplayer/MetadataRetrieverInternal$RetrievalTask$MediaSourceHandlerCallback;
    }
.end annotation


# static fields
.field private static final MESSAGE_CHECK_FOR_FAILURE:I = 0x2

.field private static final MESSAGE_CONTINUE_LOADING:I = 0x3

.field private static final MESSAGE_PREPARE_SOURCE:I = 0x1

.field private static final MESSAGE_RELEASE:I = 0x4

.field private static final SHARED_WORKER_THREAD:Landroidx/media3/exoplayer/MetadataRetrieverInternal$SharedWorkerThread;


# instance fields
.field private final mediaItem:Landroidx/media3/common/MediaItem;

.field private final mediaSourceFactory:Landroidx/media3/exoplayer/source/MediaSource$Factory;

.field private final mediaSourceHandler:Landroidx/media3/common/util/HandlerWrapper;

.field private final onFailureListener:Landroidx/media3/exoplayer/MetadataRetrieverInternal$RetrievalTask$OnFailureListener;

.field private final onPreparedListener:Landroidx/media3/exoplayer/MetadataRetrieverInternal$RetrievalTask$OnPreparedListener;

.field private sentReleaseMessage:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/media3/exoplayer/MetadataRetrieverInternal$SharedWorkerThread;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/media3/exoplayer/MetadataRetrieverInternal$SharedWorkerThread;-><init>(Landroidx/media3/exoplayer/MetadataRetrieverInternal$1;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/media3/exoplayer/MetadataRetrieverInternal$RetrievalTask;->SHARED_WORKER_THREAD:Landroidx/media3/exoplayer/MetadataRetrieverInternal$SharedWorkerThread;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroidx/media3/exoplayer/source/MediaSource$Factory;Landroidx/media3/common/MediaItem;Landroidx/media3/common/util/Clock;Landroidx/media3/exoplayer/MetadataRetrieverInternal$RetrievalTask$OnPreparedListener;Landroidx/media3/exoplayer/MetadataRetrieverInternal$RetrievalTask$OnFailureListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/MetadataRetrieverInternal$RetrievalTask;->mediaSourceFactory:Landroidx/media3/exoplayer/source/MediaSource$Factory;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/media3/exoplayer/MetadataRetrieverInternal$RetrievalTask;->mediaItem:Landroidx/media3/common/MediaItem;

    .line 7
    .line 8
    iput-object p4, p0, Landroidx/media3/exoplayer/MetadataRetrieverInternal$RetrievalTask;->onPreparedListener:Landroidx/media3/exoplayer/MetadataRetrieverInternal$RetrievalTask$OnPreparedListener;

    .line 9
    .line 10
    iput-object p5, p0, Landroidx/media3/exoplayer/MetadataRetrieverInternal$RetrievalTask;->onFailureListener:Landroidx/media3/exoplayer/MetadataRetrieverInternal$RetrievalTask$OnFailureListener;

    .line 11
    .line 12
    sget-object p1, Landroidx/media3/exoplayer/MetadataRetrieverInternal$RetrievalTask;->SHARED_WORKER_THREAD:Landroidx/media3/exoplayer/MetadataRetrieverInternal$SharedWorkerThread;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroidx/media3/exoplayer/MetadataRetrieverInternal$SharedWorkerThread;->addWorker()Landroid/os/Looper;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    new-instance p2, Landroidx/media3/exoplayer/MetadataRetrieverInternal$RetrievalTask$MediaSourceHandlerCallback;

    .line 19
    .line 20
    invoke-direct {p2, p0}, Landroidx/media3/exoplayer/MetadataRetrieverInternal$RetrievalTask$MediaSourceHandlerCallback;-><init>(Landroidx/media3/exoplayer/MetadataRetrieverInternal$RetrievalTask;)V

    .line 21
    .line 22
    .line 23
    invoke-interface {p3, p1, p2}, Landroidx/media3/common/util/Clock;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroidx/media3/common/util/HandlerWrapper;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iput-object p1, p0, Landroidx/media3/exoplayer/MetadataRetrieverInternal$RetrievalTask;->mediaSourceHandler:Landroidx/media3/common/util/HandlerWrapper;

    .line 28
    .line 29
    return-void
.end method

.method public static synthetic access$100(Landroidx/media3/exoplayer/MetadataRetrieverInternal$RetrievalTask;)Landroidx/media3/exoplayer/source/MediaSource$Factory;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/MetadataRetrieverInternal$RetrievalTask;->mediaSourceFactory:Landroidx/media3/exoplayer/source/MediaSource$Factory;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Landroidx/media3/exoplayer/MetadataRetrieverInternal$RetrievalTask;)Landroidx/media3/common/util/HandlerWrapper;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/MetadataRetrieverInternal$RetrievalTask;->mediaSourceHandler:Landroidx/media3/common/util/HandlerWrapper;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$300(Landroidx/media3/exoplayer/MetadataRetrieverInternal$RetrievalTask;)Landroidx/media3/exoplayer/MetadataRetrieverInternal$RetrievalTask$OnFailureListener;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/MetadataRetrieverInternal$RetrievalTask;->onFailureListener:Landroidx/media3/exoplayer/MetadataRetrieverInternal$RetrievalTask$OnFailureListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$400()Landroidx/media3/exoplayer/MetadataRetrieverInternal$SharedWorkerThread;
    .locals 1

    .line 1
    sget-object v0, Landroidx/media3/exoplayer/MetadataRetrieverInternal$RetrievalTask;->SHARED_WORKER_THREAD:Landroidx/media3/exoplayer/MetadataRetrieverInternal$SharedWorkerThread;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic access$800(Landroidx/media3/exoplayer/MetadataRetrieverInternal$RetrievalTask;)Landroidx/media3/exoplayer/MetadataRetrieverInternal$RetrievalTask$OnPreparedListener;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/MetadataRetrieverInternal$RetrievalTask;->onPreparedListener:Landroidx/media3/exoplayer/MetadataRetrieverInternal$RetrievalTask$OnPreparedListener;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public queueRetrieval()V
    .locals 1

    .line 1
    sget-object v0, Landroidx/media3/exoplayer/MetadataRetrieverInternal$RetrievalTask;->SHARED_WORKER_THREAD:Landroidx/media3/exoplayer/MetadataRetrieverInternal$SharedWorkerThread;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Landroidx/media3/exoplayer/MetadataRetrieverInternal$SharedWorkerThread;->startRetrieval(Landroidx/media3/exoplayer/MetadataRetrieverInternal$RetrievalTask;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public declared-synchronized release()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Landroidx/media3/exoplayer/MetadataRetrieverInternal$RetrievalTask;->sentReleaseMessage:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Landroidx/media3/exoplayer/MetadataRetrieverInternal$RetrievalTask;->sentReleaseMessage:Z

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/media3/exoplayer/MetadataRetrieverInternal$RetrievalTask;->mediaSourceHandler:Landroidx/media3/common/util/HandlerWrapper;

    .line 10
    .line 11
    const/4 v1, 0x4

    .line 12
    invoke-interface {v0, v1}, Landroidx/media3/common/util/HandlerWrapper;->obtainMessage(I)Landroidx/media3/common/util/HandlerWrapper$Message;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {v0}, Landroidx/media3/common/util/HandlerWrapper$Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    monitor-exit p0

    .line 23
    return-void

    .line 24
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    throw v0
.end method

.method public start()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/MetadataRetrieverInternal$RetrievalTask;->mediaSourceHandler:Landroidx/media3/common/util/HandlerWrapper;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iget-object v2, p0, Landroidx/media3/exoplayer/MetadataRetrieverInternal$RetrievalTask;->mediaItem:Landroidx/media3/common/MediaItem;

    .line 5
    .line 6
    invoke-interface {v0, v1, v2}, Landroidx/media3/common/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Landroidx/media3/common/util/HandlerWrapper$Message;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0}, Landroidx/media3/common/util/HandlerWrapper$Message;->sendToTarget()V

    .line 11
    .line 12
    .line 13
    return-void
.end method
