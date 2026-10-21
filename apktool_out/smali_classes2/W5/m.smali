.class public final LW5/m;
.super LR5/E;
.source "SourceFile"

# interfaces
.implements LR5/P;


# static fields
.field public static final p:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field public final f:LR5/E;

.field public final j:I

.field public final m:LW5/r;

.field public final n:Ljava/lang/Object;

.field private volatile runningWorkers:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, LW5/m;

    .line 2
    .line 3
    const-string v1, "runningWorkers"

    .line 4
    .line 5
    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, LW5/m;->p:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(LR5/E;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, LR5/E;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LW5/m;->f:LR5/E;

    .line 5
    .line 6
    iput p2, p0, LW5/m;->j:I

    .line 7
    .line 8
    instance-of p2, p1, LR5/P;

    .line 9
    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    check-cast p1, LR5/P;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    :goto_0
    if-nez p1, :cond_1

    .line 17
    .line 18
    invoke-static {}, LR5/M;->getDefaultDelay()LR5/P;

    .line 19
    .line 20
    .line 21
    :cond_1
    new-instance p1, LW5/r;

    .line 22
    .line 23
    const/4 p2, 0x0

    .line 24
    invoke-direct {p1, p2}, LW5/r;-><init>(Z)V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, LW5/m;->m:LW5/r;

    .line 28
    .line 29
    new-instance p1, Ljava/lang/Object;

    .line 30
    .line 31
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object p1, p0, LW5/m;->n:Ljava/lang/Object;

    .line 35
    .line 36
    return-void
.end method

.method public static final synthetic access$getDispatcher$p(LW5/m;)LR5/E;
    .locals 0

    .line 1
    iget-object p0, p0, LW5/m;->f:LR5/E;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$obtainTaskOrDeallocateWorker(LW5/m;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    invoke-virtual {p0}, LW5/m;->a()Ljava/lang/Runnable;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method


# virtual methods
.method public final a()Ljava/lang/Runnable;
    .locals 3

    .line 1
    :goto_0
    iget-object v0, p0, LW5/m;->m:LW5/r;

    .line 2
    .line 3
    invoke-virtual {v0}, LW5/r;->removeFirstOrNull()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Runnable;

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, LW5/m;->n:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v0

    .line 14
    :try_start_0
    sget-object v1, LW5/m;->p:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 15
    .line 16
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I

    .line 17
    .line 18
    .line 19
    iget-object v2, p0, LW5/m;->m:LW5/r;

    .line 20
    .line 21
    invoke-virtual {v2}, LW5/r;->getSize()I

    .line 22
    .line 23
    .line 24
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    if-nez v2, :cond_0

    .line 26
    .line 27
    monitor-exit v0

    .line 28
    const/4 v0, 0x0

    .line 29
    return-object v0

    .line 30
    :cond_0
    :try_start_1
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    .line 32
    .line 33
    monitor-exit v0

    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception v1

    .line 36
    monitor-exit v0

    .line 37
    throw v1

    .line 38
    :cond_1
    return-object v0
.end method

.method public dispatch(Ly5/k;Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    iget-object p1, p0, LW5/m;->m:LW5/r;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, LW5/r;->addLast(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    sget-object p1, LW5/m;->p:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 7
    .line 8
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    iget v0, p0, LW5/m;->j:I

    .line 13
    .line 14
    if-ge p2, v0, :cond_2

    .line 15
    .line 16
    iget-object p2, p0, LW5/m;->n:Ljava/lang/Object;

    .line 17
    .line 18
    monitor-enter p2

    .line 19
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iget v1, p0, LW5/m;->j:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    if-lt v0, v1, :cond_0

    .line 26
    .line 27
    monitor-exit p2

    .line 28
    return-void

    .line 29
    :cond_0
    :try_start_1
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    .line 31
    .line 32
    monitor-exit p2

    .line 33
    invoke-virtual {p0}, LW5/m;->a()Ljava/lang/Runnable;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    if-nez p1, :cond_1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    new-instance p2, LW5/l;

    .line 41
    .line 42
    invoke-direct {p2, p0, p1}, LW5/l;-><init>(LW5/m;Ljava/lang/Runnable;)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, LW5/m;->f:LR5/E;

    .line 46
    .line 47
    invoke-virtual {p1, p0, p2}, LR5/E;->dispatch(Ly5/k;Ljava/lang/Runnable;)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :catchall_0
    move-exception p1

    .line 52
    monitor-exit p2

    .line 53
    throw p1

    .line 54
    :cond_2
    :goto_0
    return-void
.end method
