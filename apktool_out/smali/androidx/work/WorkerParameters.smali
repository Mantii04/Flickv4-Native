.class public final Landroidx/work/WorkerParameters;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/UUID;

.field public final b:LB1/h;

.field public final c:Ljava/util/concurrent/Executor;

.field public final d:LB1/P;

.field public final e:LB1/j;


# direct methods
.method public constructor <init>(Ljava/util/UUID;LB1/h;Ljava/util/Collection;LB1/Q;IILjava/util/concurrent/Executor;LN1/c;LB1/P;LB1/F;LB1/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "LB1/h;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "LB1/Q;",
            "II",
            "Ljava/util/concurrent/Executor;",
            "LN1/c;",
            "LB1/P;",
            "LB1/F;",
            "LB1/j;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/work/WorkerParameters;->a:Ljava/util/UUID;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/work/WorkerParameters;->b:LB1/h;

    .line 7
    .line 8
    new-instance p1, Ljava/util/HashSet;

    .line 9
    .line 10
    invoke-direct {p1, p3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 11
    .line 12
    .line 13
    iput-object p7, p0, Landroidx/work/WorkerParameters;->c:Ljava/util/concurrent/Executor;

    .line 14
    .line 15
    iput-object p9, p0, Landroidx/work/WorkerParameters;->d:LB1/P;

    .line 16
    .line 17
    iput-object p11, p0, Landroidx/work/WorkerParameters;->e:LB1/j;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public getBackgroundExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/work/WorkerParameters;->c:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    return-object v0
.end method

.method public getForegroundUpdater()LB1/j;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/work/WorkerParameters;->e:LB1/j;

    .line 2
    .line 3
    return-object v0
.end method

.method public getId()Ljava/util/UUID;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/work/WorkerParameters;->a:Ljava/util/UUID;

    .line 2
    .line 3
    return-object v0
.end method

.method public getInputData()LB1/h;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/work/WorkerParameters;->b:LB1/h;

    .line 2
    .line 3
    return-object v0
.end method

.method public getWorkerFactory()LB1/P;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/work/WorkerParameters;->d:LB1/P;

    .line 2
    .line 3
    return-object v0
.end method
