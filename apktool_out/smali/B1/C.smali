.class public final LB1/C;
.super LB1/J;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/Class;JLjava/util/concurrent/TimeUnit;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "LB1/r;",
            ">;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "workerClass"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "repeatIntervalTimeUnit"

    .line 7
    .line 8
    invoke-static {p4, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1}, LB1/J;-><init>(Ljava/lang/Class;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, LB1/J;->getWorkSpec$work_runtime_release()LK1/E;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 19
    .line 20
    .line 21
    move-result-wide p2

    .line 22
    invoke-virtual {p1, p2, p3}, LK1/E;->setPeriodic(J)V

    .line 23
    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public buildInternal$work_runtime_release()LB1/E;
    .locals 2

    .line 2
    invoke-virtual {p0}, LB1/J;->getBackoffCriteriaSet$work_runtime_release()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, LB1/J;->getWorkSpec$work_runtime_release()LK1/E;

    move-result-object v0

    iget-object v0, v0, LK1/E;->j:LB1/f;

    invoke-virtual {v0}, LB1/f;->requiresDeviceIdle()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set backoff criteria on an idle mode job"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_1
    :goto_0
    invoke-virtual {p0}, LB1/J;->getWorkSpec$work_runtime_release()LK1/E;

    move-result-object v0

    iget-boolean v0, v0, LK1/E;->q:Z

    if-nez v0, :cond_2

    .line 6
    new-instance v0, LB1/E;

    invoke-direct {v0, p0}, LB1/E;-><init>(LB1/C;)V

    return-object v0

    .line 7
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "PeriodicWorkRequests cannot be expedited"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic buildInternal$work_runtime_release()LB1/L;
    .locals 1

    .line 1
    invoke-virtual {p0}, LB1/C;->buildInternal$work_runtime_release()LB1/E;

    move-result-object v0

    return-object v0
.end method

.method public getThisObject$work_runtime_release()LB1/C;
    .locals 0

    .line 2
    return-object p0
.end method

.method public bridge synthetic getThisObject$work_runtime_release()LB1/J;
    .locals 1

    .line 1
    invoke-virtual {p0}, LB1/C;->getThisObject$work_runtime_release()LB1/C;

    move-result-object v0

    return-object v0
.end method
