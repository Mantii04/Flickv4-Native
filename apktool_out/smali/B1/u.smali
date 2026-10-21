.class public final LB1/u;
.super LB1/J;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "LB1/r;",
            ">;)V"
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
    invoke-direct {p0, p1}, LB1/J;-><init>(Ljava/lang/Class;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, LB1/J;->getWorkSpec$work_runtime_release()LK1/E;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const-class v0, Landroidx/work/OverwritingInputMerger;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p1, LK1/E;->d:Ljava/lang/String;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public bridge synthetic buildInternal$work_runtime_release()LB1/L;
    .locals 1

    .line 1
    invoke-virtual {p0}, LB1/u;->buildInternal$work_runtime_release()LB1/w;

    move-result-object v0

    return-object v0
.end method

.method public buildInternal$work_runtime_release()LB1/w;
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
    new-instance v0, LB1/w;

    invoke-direct {v0, p0}, LB1/w;-><init>(LB1/u;)V

    return-object v0
.end method

.method public bridge synthetic getThisObject$work_runtime_release()LB1/J;
    .locals 1

    .line 1
    invoke-virtual {p0}, LB1/u;->getThisObject$work_runtime_release()LB1/u;

    move-result-object v0

    return-object v0
.end method

.method public getThisObject$work_runtime_release()LB1/u;
    .locals 0

    .line 2
    return-object p0
.end method
