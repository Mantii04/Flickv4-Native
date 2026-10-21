.class public final Lm/a;
.super Lm/e;
.source "SourceFile"


# static fields
.field public static volatile b:Lm/a;

.field public static final c:Landroidx/media3/exoplayer/dash/offline/a;


# instance fields
.field public final a:Lm/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/media3/exoplayer/dash/offline/a;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Landroidx/media3/exoplayer/dash/offline/a;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lm/a;->c:Landroidx/media3/exoplayer/dash/offline/a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lm/e;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lm/d;

    .line 5
    .line 6
    invoke-direct {v0}, Lm/d;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lm/a;->a:Lm/d;

    .line 10
    .line 11
    return-void
.end method

.method public static getIOThreadExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 1
    sget-object v0, Lm/a;->c:Landroidx/media3/exoplayer/dash/offline/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public static getInstance()Lm/a;
    .locals 2

    .line 1
    sget-object v0, Lm/a;->b:Lm/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lm/a;->b:Lm/a;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    const-class v0, Lm/a;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    sget-object v1, Lm/a;->b:Lm/a;

    .line 12
    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    new-instance v1, Lm/a;

    .line 16
    .line 17
    invoke-direct {v1}, Lm/a;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v1, Lm/a;->b:Lm/a;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception v1

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    sget-object v0, Lm/a;->b:Lm/a;

    .line 27
    .line 28
    return-object v0

    .line 29
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    throw v1
.end method


# virtual methods
.method public executeOnDiskIO(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lm/a;->a:Lm/d;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lm/d;->executeOnDiskIO(Ljava/lang/Runnable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public isMainThread()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lm/a;->a:Lm/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Lm/d;->isMainThread()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public postToMainThread(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lm/a;->a:Lm/d;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lm/d;->postToMainThread(Ljava/lang/Runnable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
