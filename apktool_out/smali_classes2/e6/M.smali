.class public final Le6/M;
.super Le6/O;
.source "SourceFile"


# virtual methods
.method public deadlineNanoTime(J)Le6/O;
    .locals 0

    .line 1
    return-object p0
.end method

.method public throwIfReached()V
    .locals 0

    .line 1
    return-void
.end method

.method public timeout(JLjava/util/concurrent/TimeUnit;)Le6/O;
    .locals 0

    .line 1
    const-string p1, "unit"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
