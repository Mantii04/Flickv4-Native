.class public final LB1/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/concurrent/ExecutorService;

.field public final b:Ljava/util/concurrent/ExecutorService;

.field public final c:LB1/P;

.field public final d:LB1/m;

.field public final e:LC1/d;

.field public final f:I

.field public final g:I

.field public final h:I


# direct methods
.method public constructor <init>(LB1/b;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Runtime;->availableProcessors()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    const/4 v0, 0x1

    .line 13
    sub-int/2addr p1, v0

    .line 14
    const/4 v1, 0x4

    .line 15
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    const/4 v2, 0x2

    .line 20
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    new-instance v3, LB1/a;

    .line 25
    .line 26
    const/4 v4, 0x0

    .line 27
    invoke-direct {v3, v4}, LB1/a;-><init>(Z)V

    .line 28
    .line 29
    .line 30
    invoke-static {p1, v3}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iput-object p1, p0, LB1/c;->a:Ljava/util/concurrent/ExecutorService;

    .line 35
    .line 36
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1}, Ljava/lang/Runtime;->availableProcessors()I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    sub-int/2addr p1, v0

    .line 45
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    new-instance v2, LB1/a;

    .line 54
    .line 55
    invoke-direct {v2, v0}, LB1/a;-><init>(Z)V

    .line 56
    .line 57
    .line 58
    invoke-static {p1, v2}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    iput-object p1, p0, LB1/c;->b:Ljava/util/concurrent/ExecutorService;

    .line 63
    .line 64
    invoke-static {}, LB1/P;->getDefaultWorkerFactory()LB1/P;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    iput-object p1, p0, LB1/c;->c:LB1/P;

    .line 69
    .line 70
    invoke-static {}, LB1/m;->getDefaultInputMergerFactory()LB1/m;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    iput-object p1, p0, LB1/c;->d:LB1/m;

    .line 75
    .line 76
    new-instance p1, LC1/d;

    .line 77
    .line 78
    invoke-direct {p1}, LC1/d;-><init>()V

    .line 79
    .line 80
    .line 81
    iput-object p1, p0, LB1/c;->e:LC1/d;

    .line 82
    .line 83
    iput v1, p0, LB1/c;->f:I

    .line 84
    .line 85
    const p1, 0x7fffffff

    .line 86
    .line 87
    .line 88
    iput p1, p0, LB1/c;->g:I

    .line 89
    .line 90
    const/16 p1, 0x14

    .line 91
    .line 92
    iput p1, p0, LB1/c;->h:I

    .line 93
    .line 94
    return-void
.end method


# virtual methods
.method public getDefaultProcessName()Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public getExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 1
    iget-object v0, p0, LB1/c;->a:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    return-object v0
.end method

.method public getInitializationExceptionHandler()LL/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LL/a;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public getInputMergerFactory()LB1/m;
    .locals 1

    .line 1
    iget-object v0, p0, LB1/c;->d:LB1/m;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMaxJobSchedulerId()I
    .locals 1

    .line 1
    iget v0, p0, LB1/c;->g:I

    .line 2
    .line 3
    return v0
.end method

.method public getMaxSchedulerLimit()I
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x17

    .line 4
    .line 5
    iget v2, p0, LB1/c;->h:I

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    div-int/lit8 v2, v2, 0x2

    .line 10
    .line 11
    :cond_0
    return v2
.end method

.method public getMinJobSchedulerId()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public getMinimumLoggingLevel()I
    .locals 1

    .line 1
    iget v0, p0, LB1/c;->f:I

    .line 2
    .line 3
    return v0
.end method

.method public getRunnableScheduler()LB1/G;
    .locals 1

    .line 1
    iget-object v0, p0, LB1/c;->e:LC1/d;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSchedulingExceptionHandler()LL/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LL/a;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public getTaskExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 1
    iget-object v0, p0, LB1/c;->b:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    return-object v0
.end method

.method public getWorkerFactory()LB1/P;
    .locals 1

    .line 1
    iget-object v0, p0, LB1/c;->c:LB1/P;

    .line 2
    .line 3
    return-object v0
.end method
