.class public abstract LW5/x;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final isMissing(LR5/E0;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, LR5/E0;->getImmediate()LR5/E0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    instance-of p0, p0, LW5/y;

    .line 6
    .line 7
    return p0
.end method

.method public static final throwMissingMainDispatcherException()Ljava/lang/Void;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 2
    .line 3
    const-string v1, "Module with the Main dispatcher is missing. Add dependency providing the Main dispatcher, e.g. \'kotlinx-coroutines-android\' and ensure it has the same version as \'kotlinx-coroutines-core\'"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw v0
.end method

.method public static final tryCreateDispatcher(LW5/v;Ljava/util/List;)LR5/E0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LW5/v;",
            "Ljava/util/List<",
            "+",
            "LW5/v;",
            ">;)",
            "LR5/E0;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-interface {p0, p1}, LW5/v;->createDispatcher(Ljava/util/List;)LR5/E0;

    .line 2
    .line 3
    .line 4
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    return-object p0

    .line 6
    :catchall_0
    move-exception p1

    .line 7
    invoke-interface {p0}, LW5/v;->hintOnError()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    throw p1
.end method
