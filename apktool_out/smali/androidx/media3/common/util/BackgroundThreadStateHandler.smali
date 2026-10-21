.class public final Landroidx/media3/common/util/BackgroundThreadStateHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/common/util/BackgroundThreadStateHandler$StateChangeListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final backgroundHandler:Landroidx/media3/common/util/HandlerWrapper;

.field private backgroundState:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final foregroundHandler:Landroidx/media3/common/util/HandlerWrapper;

.field private foregroundState:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final onStateChanged:Landroidx/media3/common/util/BackgroundThreadStateHandler$StateChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/common/util/BackgroundThreadStateHandler$StateChangeListener<",
            "TT;>;"
        }
    .end annotation
.end field

.field private pendingOperations:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/os/Looper;Landroid/os/Looper;Landroidx/media3/common/util/Clock;Landroidx/media3/common/util/BackgroundThreadStateHandler$StateChangeListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/Looper;",
            "Landroid/os/Looper;",
            "Landroidx/media3/common/util/Clock;",
            "Landroidx/media3/common/util/BackgroundThreadStateHandler$StateChangeListener<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-interface {p4, p2, v0}, Landroidx/media3/common/util/Clock;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroidx/media3/common/util/HandlerWrapper;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    iput-object p2, p0, Landroidx/media3/common/util/BackgroundThreadStateHandler;->backgroundHandler:Landroidx/media3/common/util/HandlerWrapper;

    .line 10
    .line 11
    invoke-interface {p4, p3, v0}, Landroidx/media3/common/util/Clock;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroidx/media3/common/util/HandlerWrapper;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    iput-object p2, p0, Landroidx/media3/common/util/BackgroundThreadStateHandler;->foregroundHandler:Landroidx/media3/common/util/HandlerWrapper;

    .line 16
    .line 17
    iput-object p1, p0, Landroidx/media3/common/util/BackgroundThreadStateHandler;->foregroundState:Ljava/lang/Object;

    .line 18
    .line 19
    iput-object p1, p0, Landroidx/media3/common/util/BackgroundThreadStateHandler;->backgroundState:Ljava/lang/Object;

    .line 20
    .line 21
    iput-object p5, p0, Landroidx/media3/common/util/BackgroundThreadStateHandler;->onStateChanged:Landroidx/media3/common/util/BackgroundThreadStateHandler$StateChangeListener;

    .line 22
    .line 23
    return-void
.end method

.method public static synthetic a(Landroidx/media3/common/util/BackgroundThreadStateHandler;LP3/p;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/media3/common/util/BackgroundThreadStateHandler;->lambda$updateStateAsync$1(LP3/p;)V

    return-void
.end method

.method public static synthetic b(Landroidx/media3/common/util/BackgroundThreadStateHandler;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/media3/common/util/BackgroundThreadStateHandler;->lambda$setStateInBackground$2(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic c(Landroidx/media3/common/util/BackgroundThreadStateHandler;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/media3/common/util/BackgroundThreadStateHandler;->lambda$updateStateAsync$0(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$setStateInBackground$2(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/media3/common/util/BackgroundThreadStateHandler;->pendingOperations:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0, p1}, Landroidx/media3/common/util/BackgroundThreadStateHandler;->updateStateInForeground(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private synthetic lambda$updateStateAsync$0(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/media3/common/util/BackgroundThreadStateHandler;->pendingOperations:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, -0x1

    .line 4
    .line 5
    iput v0, p0, Landroidx/media3/common/util/BackgroundThreadStateHandler;->pendingOperations:I

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-direct {p0, p1}, Landroidx/media3/common/util/BackgroundThreadStateHandler;->updateStateInForeground(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method private synthetic lambda$updateStateAsync$1(LP3/p;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/common/util/BackgroundThreadStateHandler;->backgroundState:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-interface {p1, v0}, LP3/p;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iput-object p1, p0, Landroidx/media3/common/util/BackgroundThreadStateHandler;->backgroundState:Ljava/lang/Object;

    .line 8
    .line 9
    new-instance v0, Landroidx/media3/common/util/a;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-direct {v0, p0, p1, v1}, Landroidx/media3/common/util/a;-><init>(Landroidx/media3/common/util/BackgroundThreadStateHandler;Ljava/lang/Object;I)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, v0}, Landroidx/media3/common/util/BackgroundThreadStateHandler;->runInForeground(Ljava/lang/Runnable;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private runInForeground(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/common/util/BackgroundThreadStateHandler;->foregroundHandler:Landroidx/media3/common/util/HandlerWrapper;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/media3/common/util/HandlerWrapper;->getLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    iget-object v0, p0, Landroidx/media3/common/util/BackgroundThreadStateHandler;->foregroundHandler:Landroidx/media3/common/util/HandlerWrapper;

    .line 19
    .line 20
    invoke-interface {v0, p1}, Landroidx/media3/common/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private updateStateInForeground(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/media3/common/util/BackgroundThreadStateHandler;->foregroundState:Ljava/lang/Object;

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/media3/common/util/BackgroundThreadStateHandler;->foregroundState:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Landroidx/media3/common/util/BackgroundThreadStateHandler;->onStateChanged:Landroidx/media3/common/util/BackgroundThreadStateHandler$StateChangeListener;

    .line 12
    .line 13
    invoke-interface {v1, v0, p1}, Landroidx/media3/common/util/BackgroundThreadStateHandler$StateChangeListener;->onStateChanged(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Landroidx/media3/common/util/BackgroundThreadStateHandler;->foregroundHandler:Landroidx/media3/common/util/HandlerWrapper;

    .line 6
    .line 7
    invoke-interface {v1}, Landroidx/media3/common/util/HandlerWrapper;->getLooper()Landroid/os/Looper;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/media3/common/util/BackgroundThreadStateHandler;->foregroundState:Ljava/lang/Object;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    iget-object v1, p0, Landroidx/media3/common/util/BackgroundThreadStateHandler;->backgroundHandler:Landroidx/media3/common/util/HandlerWrapper;

    .line 17
    .line 18
    invoke-interface {v1}, Landroidx/media3/common/util/HandlerWrapper;->getLooper()Landroid/os/Looper;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-ne v0, v1, :cond_1

    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 v0, 0x0

    .line 27
    :goto_0
    invoke-static {v0}, LP3/v;->checkState(Z)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Landroidx/media3/common/util/BackgroundThreadStateHandler;->backgroundState:Ljava/lang/Object;

    .line 31
    .line 32
    return-object v0
.end method

.method public runInBackground(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/common/util/BackgroundThreadStateHandler;->backgroundHandler:Landroidx/media3/common/util/HandlerWrapper;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/media3/common/util/HandlerWrapper;->getLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    iget-object v0, p0, Landroidx/media3/common/util/BackgroundThreadStateHandler;->backgroundHandler:Landroidx/media3/common/util/HandlerWrapper;

    .line 19
    .line 20
    invoke-interface {v0, p1}, Landroidx/media3/common/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public setStateInBackground(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/media3/common/util/BackgroundThreadStateHandler;->backgroundState:Ljava/lang/Object;

    .line 2
    .line 3
    new-instance v0, Landroidx/media3/common/util/a;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-direct {v0, p0, p1, v1}, Landroidx/media3/common/util/a;-><init>(Landroidx/media3/common/util/BackgroundThreadStateHandler;Ljava/lang/Object;I)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, v0}, Landroidx/media3/common/util/BackgroundThreadStateHandler;->runInForeground(Ljava/lang/Runnable;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public updateStateAsync(LP3/p;LP3/p;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LP3/p;",
            "LP3/p;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Landroidx/media3/common/util/BackgroundThreadStateHandler;->foregroundHandler:Landroidx/media3/common/util/HandlerWrapper;

    .line 6
    .line 7
    invoke-interface {v1}, Landroidx/media3/common/util/HandlerWrapper;->getLooper()Landroid/os/Looper;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x1

    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    move v0, v2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    invoke-static {v0}, LP3/v;->checkState(Z)V

    .line 18
    .line 19
    .line 20
    iget v0, p0, Landroidx/media3/common/util/BackgroundThreadStateHandler;->pendingOperations:I

    .line 21
    .line 22
    add-int/2addr v0, v2

    .line 23
    iput v0, p0, Landroidx/media3/common/util/BackgroundThreadStateHandler;->pendingOperations:I

    .line 24
    .line 25
    new-instance v0, Landroidx/media3/common/util/g;

    .line 26
    .line 27
    const/4 v1, 0x3

    .line 28
    invoke-direct {v0, v1, p0, p2}, Landroidx/media3/common/util/g;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/BackgroundThreadStateHandler;->runInBackground(Ljava/lang/Runnable;)V

    .line 32
    .line 33
    .line 34
    iget-object p2, p0, Landroidx/media3/common/util/BackgroundThreadStateHandler;->foregroundState:Ljava/lang/Object;

    .line 35
    .line 36
    invoke-interface {p1, p2}, LP3/p;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-direct {p0, p1}, Landroidx/media3/common/util/BackgroundThreadStateHandler;->updateStateInForeground(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method
