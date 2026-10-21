.class public final Le6/s;
.super Le6/O;
.source "SourceFile"


# instance fields
.field public a:Le6/O;


# direct methods
.method public constructor <init>(Le6/O;)V
    .locals 1

    .line 1
    const-string v0, "delegate"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Le6/O;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Le6/s;->a:Le6/O;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public clearDeadline()Le6/O;
    .locals 1

    .line 1
    iget-object v0, p0, Le6/s;->a:Le6/O;

    .line 2
    .line 3
    invoke-virtual {v0}, Le6/O;->clearDeadline()Le6/O;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public clearTimeout()Le6/O;
    .locals 1

    .line 1
    iget-object v0, p0, Le6/s;->a:Le6/O;

    .line 2
    .line 3
    invoke-virtual {v0}, Le6/O;->clearTimeout()Le6/O;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public deadlineNanoTime()J
    .locals 2

    .line 1
    iget-object v0, p0, Le6/s;->a:Le6/O;

    invoke-virtual {v0}, Le6/O;->deadlineNanoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public deadlineNanoTime(J)Le6/O;
    .locals 1

    .line 2
    iget-object v0, p0, Le6/s;->a:Le6/O;

    invoke-virtual {v0, p1, p2}, Le6/O;->deadlineNanoTime(J)Le6/O;

    move-result-object p1

    return-object p1
.end method

.method public final delegate()Le6/O;
    .locals 1

    .line 1
    iget-object v0, p0, Le6/s;->a:Le6/O;

    .line 2
    .line 3
    return-object v0
.end method

.method public hasDeadline()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le6/s;->a:Le6/O;

    .line 2
    .line 3
    invoke-virtual {v0}, Le6/O;->hasDeadline()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final setDelegate(Le6/O;)Le6/s;
    .locals 1

    .line 1
    const-string v0, "delegate"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Le6/s;->a:Le6/O;

    .line 7
    .line 8
    return-object p0
.end method

.method public throwIfReached()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le6/s;->a:Le6/O;

    .line 2
    .line 3
    invoke-virtual {v0}, Le6/O;->throwIfReached()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public timeout(JLjava/util/concurrent/TimeUnit;)Le6/O;
    .locals 1

    .line 1
    const-string v0, "unit"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Le6/s;->a:Le6/O;

    .line 7
    .line 8
    invoke-virtual {v0, p1, p2, p3}, Le6/O;->timeout(JLjava/util/concurrent/TimeUnit;)Le6/O;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public timeoutNanos()J
    .locals 2

    .line 1
    iget-object v0, p0, Le6/s;->a:Le6/O;

    .line 2
    .line 3
    invoke-virtual {v0}, Le6/O;->timeoutNanos()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method
