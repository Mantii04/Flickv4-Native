.class public final Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Factory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/source/preload/PreCacheHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field private final cache:Landroidx/media3/datasource/cache/Cache;

.field private downloadExecutor:Ljava/util/concurrent/Executor;

.field private listener:Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Listener;

.field private final preCacheLooper:Landroid/os/Looper;

.field private final renderersFactory:Landroidx/media3/exoplayer/RenderersFactory;

.field private trackSelectionParameters:Landroidx/media3/common/TrackSelectionParameters;

.field private final upstreamDataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/media3/datasource/cache/Cache;Landroid/os/Looper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Factory;->cache:Landroidx/media3/datasource/cache/Cache;

    .line 3
    iput-object p3, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Factory;->preCacheLooper:Landroid/os/Looper;

    .line 4
    new-instance p2, Landroidx/media3/datasource/DefaultDataSource$Factory;

    invoke-direct {p2, p1}, Landroidx/media3/datasource/DefaultDataSource$Factory;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Factory;->upstreamDataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

    .line 5
    sget-object p2, Landroidx/media3/common/TrackSelectionParameters;->DEFAULT:Landroidx/media3/common/TrackSelectionParameters;

    iput-object p2, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Factory;->trackSelectionParameters:Landroidx/media3/common/TrackSelectionParameters;

    .line 6
    new-instance p2, Landroidx/media3/exoplayer/DefaultRenderersFactory;

    invoke-direct {p2, p1}, Landroidx/media3/exoplayer/DefaultRenderersFactory;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Factory;->renderersFactory:Landroidx/media3/exoplayer/RenderersFactory;

    .line 7
    new-instance p1, Landroidx/media3/exoplayer/dash/offline/a;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Landroidx/media3/exoplayer/dash/offline/a;-><init>(I)V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Factory;->downloadExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/media3/datasource/cache/Cache;Landroidx/media3/datasource/DataSource$Factory;Landroid/os/Looper;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p2, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Factory;->cache:Landroidx/media3/datasource/cache/Cache;

    .line 17
    iput-object p4, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Factory;->preCacheLooper:Landroid/os/Looper;

    .line 18
    iput-object p3, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Factory;->upstreamDataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

    .line 19
    sget-object p2, Landroidx/media3/common/TrackSelectionParameters;->DEFAULT:Landroidx/media3/common/TrackSelectionParameters;

    iput-object p2, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Factory;->trackSelectionParameters:Landroidx/media3/common/TrackSelectionParameters;

    .line 20
    new-instance p2, Landroidx/media3/exoplayer/DefaultRenderersFactory;

    invoke-direct {p2, p1}, Landroidx/media3/exoplayer/DefaultRenderersFactory;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Factory;->renderersFactory:Landroidx/media3/exoplayer/RenderersFactory;

    .line 21
    new-instance p1, Landroidx/media3/exoplayer/dash/offline/a;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Landroidx/media3/exoplayer/dash/offline/a;-><init>(I)V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Factory;->downloadExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/media3/datasource/cache/Cache;Landroidx/media3/exoplayer/RenderersFactory;Landroid/os/Looper;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p2, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Factory;->cache:Landroidx/media3/datasource/cache/Cache;

    .line 10
    iput-object p4, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Factory;->preCacheLooper:Landroid/os/Looper;

    .line 11
    new-instance p2, Landroidx/media3/datasource/DefaultDataSource$Factory;

    invoke-direct {p2, p1}, Landroidx/media3/datasource/DefaultDataSource$Factory;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Factory;->upstreamDataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

    .line 12
    sget-object p1, Landroidx/media3/common/TrackSelectionParameters;->DEFAULT:Landroidx/media3/common/TrackSelectionParameters;

    iput-object p1, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Factory;->trackSelectionParameters:Landroidx/media3/common/TrackSelectionParameters;

    .line 13
    iput-object p3, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Factory;->renderersFactory:Landroidx/media3/exoplayer/RenderersFactory;

    .line 14
    new-instance p1, Landroidx/media3/exoplayer/dash/offline/a;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Landroidx/media3/exoplayer/dash/offline/a;-><init>(I)V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Factory;->downloadExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Landroidx/media3/datasource/cache/Cache;Landroidx/media3/datasource/DataSource$Factory;Landroidx/media3/exoplayer/RenderersFactory;Landroid/os/Looper;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Factory;->cache:Landroidx/media3/datasource/cache/Cache;

    .line 24
    iput-object p4, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Factory;->preCacheLooper:Landroid/os/Looper;

    .line 25
    iput-object p2, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Factory;->upstreamDataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

    .line 26
    sget-object p1, Landroidx/media3/common/TrackSelectionParameters;->DEFAULT:Landroidx/media3/common/TrackSelectionParameters;

    iput-object p1, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Factory;->trackSelectionParameters:Landroidx/media3/common/TrackSelectionParameters;

    .line 27
    iput-object p3, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Factory;->renderersFactory:Landroidx/media3/exoplayer/RenderersFactory;

    .line 28
    new-instance p1, Landroidx/media3/exoplayer/dash/offline/a;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Landroidx/media3/exoplayer/dash/offline/a;-><init>(I)V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Factory;->downloadExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public create(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/source/preload/PreCacheHelper;
    .locals 10

    .line 1
    new-instance v0, Landroidx/media3/datasource/cache/CacheDataSource$Factory;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/media3/datasource/cache/CacheDataSource$Factory;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Factory;->upstreamDataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroidx/media3/datasource/cache/CacheDataSource$Factory;->setUpstreamDataSourceFactory(Landroidx/media3/datasource/DataSource$Factory;)Landroidx/media3/datasource/cache/CacheDataSource$Factory;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Factory;->cache:Landroidx/media3/datasource/cache/Cache;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroidx/media3/datasource/cache/CacheDataSource$Factory;->setCache(Landroidx/media3/datasource/cache/Cache;)Landroidx/media3/datasource/cache/CacheDataSource$Factory;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    new-instance v1, Landroidx/media3/exoplayer/offline/DownloadHelper$Factory;

    .line 19
    .line 20
    invoke-direct {v1}, Landroidx/media3/exoplayer/offline/DownloadHelper$Factory;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/offline/DownloadHelper$Factory;->setDataSourceFactory(Landroidx/media3/datasource/DataSource$Factory;)Landroidx/media3/exoplayer/offline/DownloadHelper$Factory;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    iget-object v2, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Factory;->renderersFactory:Landroidx/media3/exoplayer/RenderersFactory;

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/offline/DownloadHelper$Factory;->setRenderersFactory(Landroidx/media3/exoplayer/RenderersFactory;)Landroidx/media3/exoplayer/offline/DownloadHelper$Factory;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    iget-object v2, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Factory;->trackSelectionParameters:Landroidx/media3/common/TrackSelectionParameters;

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/offline/DownloadHelper$Factory;->setTrackSelectionParameters(Landroidx/media3/common/TrackSelectionParameters;)Landroidx/media3/exoplayer/offline/DownloadHelper$Factory;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    new-instance v7, Landroidx/media3/exoplayer/offline/DefaultDownloaderFactory;

    .line 40
    .line 41
    iget-object v1, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Factory;->downloadExecutor:Ljava/util/concurrent/Executor;

    .line 42
    .line 43
    invoke-direct {v7, v0, v1}, Landroidx/media3/exoplayer/offline/DefaultDownloaderFactory;-><init>(Landroidx/media3/datasource/cache/CacheDataSource$Factory;Ljava/util/concurrent/Executor;)V

    .line 44
    .line 45
    .line 46
    new-instance v3, Landroidx/media3/exoplayer/source/preload/PreCacheHelper;

    .line 47
    .line 48
    iget-object v8, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Factory;->preCacheLooper:Landroid/os/Looper;

    .line 49
    .line 50
    iget-object v9, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Factory;->listener:Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Listener;

    .line 51
    .line 52
    const/4 v5, 0x0

    .line 53
    move-object v4, p1

    .line 54
    invoke-direct/range {v3 .. v9}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper;-><init>(Landroidx/media3/common/MediaItem;Landroidx/media3/exoplayer/source/MediaSource$Factory;Landroidx/media3/exoplayer/offline/DownloadHelper$Factory;Landroidx/media3/exoplayer/offline/DownloaderFactory;Landroid/os/Looper;Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Listener;)V

    .line 55
    .line 56
    .line 57
    return-object v3
.end method

.method public setDownloadExecutor(Ljava/util/concurrent/Executor;)Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Factory;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Factory;->downloadExecutor:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    return-object p0
.end method

.method public setListener(Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Listener;)Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Factory;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Factory;->listener:Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Listener;

    .line 2
    .line 3
    return-object p0
.end method

.method public setTrackSelectionParameters(Landroidx/media3/common/TrackSelectionParameters;)Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Factory;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Factory;->trackSelectionParameters:Landroidx/media3/common/TrackSelectionParameters;

    .line 2
    .line 3
    return-object p0
.end method
