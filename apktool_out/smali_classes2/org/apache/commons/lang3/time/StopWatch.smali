.class public Lorg/apache/commons/lang3/time/StopWatch;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang3/time/StopWatch$SplitState;,
        Lorg/apache/commons/lang3/time/StopWatch$State;
    }
.end annotation


# static fields
.field private static final NANO_2_MILLIS:J = 0xf4240L


# instance fields
.field private runningState:Lorg/apache/commons/lang3/time/StopWatch$State;

.field private splitState:Lorg/apache/commons/lang3/time/StopWatch$SplitState;

.field private startTime:J

.field private startTimeMillis:J

.field private stopTime:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lorg/apache/commons/lang3/time/StopWatch$State;->UNSTARTED:Lorg/apache/commons/lang3/time/StopWatch$State;

    .line 5
    .line 6
    iput-object v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->runningState:Lorg/apache/commons/lang3/time/StopWatch$State;

    .line 7
    .line 8
    sget-object v0, Lorg/apache/commons/lang3/time/StopWatch$SplitState;->UNSPLIT:Lorg/apache/commons/lang3/time/StopWatch$SplitState;

    .line 9
    .line 10
    iput-object v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->splitState:Lorg/apache/commons/lang3/time/StopWatch$SplitState;

    .line 11
    .line 12
    return-void
.end method

.method public static createStarted()Lorg/apache/commons/lang3/time/StopWatch;
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/commons/lang3/time/StopWatch;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/apache/commons/lang3/time/StopWatch;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lorg/apache/commons/lang3/time/StopWatch;->start()V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public getNanoTime()J
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->runningState:Lorg/apache/commons/lang3/time/StopWatch$State;

    .line 2
    .line 3
    sget-object v1, Lorg/apache/commons/lang3/time/StopWatch$State;->STOPPED:Lorg/apache/commons/lang3/time/StopWatch$State;

    .line 4
    .line 5
    if-eq v0, v1, :cond_3

    .line 6
    .line 7
    sget-object v1, Lorg/apache/commons/lang3/time/StopWatch$State;->SUSPENDED:Lorg/apache/commons/lang3/time/StopWatch$State;

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    sget-object v1, Lorg/apache/commons/lang3/time/StopWatch$State;->UNSTARTED:Lorg/apache/commons/lang3/time/StopWatch$State;

    .line 13
    .line 14
    if-ne v0, v1, :cond_1

    .line 15
    .line 16
    const-wide/16 v0, 0x0

    .line 17
    .line 18
    return-wide v0

    .line 19
    :cond_1
    sget-object v1, Lorg/apache/commons/lang3/time/StopWatch$State;->RUNNING:Lorg/apache/commons/lang3/time/StopWatch$State;

    .line 20
    .line 21
    if-ne v0, v1, :cond_2

    .line 22
    .line 23
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 24
    .line 25
    .line 26
    move-result-wide v0

    .line 27
    iget-wide v2, p0, Lorg/apache/commons/lang3/time/StopWatch;->startTime:J

    .line 28
    .line 29
    :goto_0
    sub-long/2addr v0, v2

    .line 30
    return-wide v0

    .line 31
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    .line 32
    .line 33
    const-string v1, "Illegal running state has occurred."

    .line 34
    .line 35
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw v0

    .line 39
    :cond_3
    :goto_1
    iget-wide v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->stopTime:J

    .line 40
    .line 41
    iget-wide v2, p0, Lorg/apache/commons/lang3/time/StopWatch;->startTime:J

    .line 42
    .line 43
    goto :goto_0
.end method

.method public getSplitNanoTime()J
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->splitState:Lorg/apache/commons/lang3/time/StopWatch$SplitState;

    .line 2
    .line 3
    sget-object v1, Lorg/apache/commons/lang3/time/StopWatch$SplitState;->SPLIT:Lorg/apache/commons/lang3/time/StopWatch$SplitState;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget-wide v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->stopTime:J

    .line 8
    .line 9
    iget-wide v2, p0, Lorg/apache/commons/lang3/time/StopWatch;->startTime:J

    .line 10
    .line 11
    sub-long/2addr v0, v2

    .line 12
    return-wide v0

    .line 13
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 14
    .line 15
    const-string v1, "Stopwatch must be split to get the split time. "

    .line 16
    .line 17
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw v0
.end method

.method public getSplitTime()J
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/lang3/time/StopWatch;->getSplitNanoTime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/32 v2, 0xf4240

    .line 6
    .line 7
    .line 8
    div-long/2addr v0, v2

    .line 9
    return-wide v0
.end method

.method public getStartTime()J
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->runningState:Lorg/apache/commons/lang3/time/StopWatch$State;

    .line 2
    .line 3
    sget-object v1, Lorg/apache/commons/lang3/time/StopWatch$State;->UNSTARTED:Lorg/apache/commons/lang3/time/StopWatch$State;

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    iget-wide v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->startTimeMillis:J

    .line 8
    .line 9
    return-wide v0

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 11
    .line 12
    const-string v1, "Stopwatch has not been started"

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw v0
.end method

.method public getTime()J
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/lang3/time/StopWatch;->getNanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getTime(Ljava/util/concurrent/TimeUnit;)J
    .locals 3

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/lang3/time/StopWatch;->getNanoTime()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public isStarted()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->runningState:Lorg/apache/commons/lang3/time/StopWatch$State;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/apache/commons/lang3/time/StopWatch$State;->isStarted()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isStopped()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->runningState:Lorg/apache/commons/lang3/time/StopWatch$State;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/apache/commons/lang3/time/StopWatch$State;->isStopped()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isSuspended()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->runningState:Lorg/apache/commons/lang3/time/StopWatch$State;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/apache/commons/lang3/time/StopWatch$State;->isSuspended()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public reset()V
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/lang3/time/StopWatch$State;->UNSTARTED:Lorg/apache/commons/lang3/time/StopWatch$State;

    .line 2
    .line 3
    iput-object v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->runningState:Lorg/apache/commons/lang3/time/StopWatch$State;

    .line 4
    .line 5
    sget-object v0, Lorg/apache/commons/lang3/time/StopWatch$SplitState;->UNSPLIT:Lorg/apache/commons/lang3/time/StopWatch$SplitState;

    .line 6
    .line 7
    iput-object v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->splitState:Lorg/apache/commons/lang3/time/StopWatch$SplitState;

    .line 8
    .line 9
    return-void
.end method

.method public resume()V
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->runningState:Lorg/apache/commons/lang3/time/StopWatch$State;

    .line 2
    .line 3
    sget-object v1, Lorg/apache/commons/lang3/time/StopWatch$State;->SUSPENDED:Lorg/apache/commons/lang3/time/StopWatch$State;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget-wide v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->startTime:J

    .line 8
    .line 9
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    iget-wide v4, p0, Lorg/apache/commons/lang3/time/StopWatch;->stopTime:J

    .line 14
    .line 15
    sub-long/2addr v2, v4

    .line 16
    add-long/2addr v2, v0

    .line 17
    iput-wide v2, p0, Lorg/apache/commons/lang3/time/StopWatch;->startTime:J

    .line 18
    .line 19
    sget-object v0, Lorg/apache/commons/lang3/time/StopWatch$State;->RUNNING:Lorg/apache/commons/lang3/time/StopWatch$State;

    .line 20
    .line 21
    iput-object v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->runningState:Lorg/apache/commons/lang3/time/StopWatch$State;

    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 25
    .line 26
    const-string v1, "Stopwatch must be suspended to resume. "

    .line 27
    .line 28
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw v0
.end method

.method public split()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->runningState:Lorg/apache/commons/lang3/time/StopWatch$State;

    .line 2
    .line 3
    sget-object v1, Lorg/apache/commons/lang3/time/StopWatch$State;->RUNNING:Lorg/apache/commons/lang3/time/StopWatch$State;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    iput-wide v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->stopTime:J

    .line 12
    .line 13
    sget-object v0, Lorg/apache/commons/lang3/time/StopWatch$SplitState;->SPLIT:Lorg/apache/commons/lang3/time/StopWatch$SplitState;

    .line 14
    .line 15
    iput-object v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->splitState:Lorg/apache/commons/lang3/time/StopWatch$SplitState;

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 19
    .line 20
    const-string v1, "Stopwatch is not running. "

    .line 21
    .line 22
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw v0
.end method

.method public start()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->runningState:Lorg/apache/commons/lang3/time/StopWatch$State;

    .line 2
    .line 3
    sget-object v1, Lorg/apache/commons/lang3/time/StopWatch$State;->STOPPED:Lorg/apache/commons/lang3/time/StopWatch$State;

    .line 4
    .line 5
    if-eq v0, v1, :cond_1

    .line 6
    .line 7
    sget-object v1, Lorg/apache/commons/lang3/time/StopWatch$State;->UNSTARTED:Lorg/apache/commons/lang3/time/StopWatch$State;

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    iput-wide v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->startTime:J

    .line 16
    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    iput-wide v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->startTimeMillis:J

    .line 22
    .line 23
    sget-object v0, Lorg/apache/commons/lang3/time/StopWatch$State;->RUNNING:Lorg/apache/commons/lang3/time/StopWatch$State;

    .line 24
    .line 25
    iput-object v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->runningState:Lorg/apache/commons/lang3/time/StopWatch$State;

    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 29
    .line 30
    const-string v1, "Stopwatch already started. "

    .line 31
    .line 32
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw v0

    .line 36
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 37
    .line 38
    const-string v1, "Stopwatch must be reset before being restarted. "

    .line 39
    .line 40
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw v0
.end method

.method public stop()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->runningState:Lorg/apache/commons/lang3/time/StopWatch$State;

    .line 2
    .line 3
    sget-object v1, Lorg/apache/commons/lang3/time/StopWatch$State;->RUNNING:Lorg/apache/commons/lang3/time/StopWatch$State;

    .line 4
    .line 5
    if-eq v0, v1, :cond_1

    .line 6
    .line 7
    sget-object v2, Lorg/apache/commons/lang3/time/StopWatch$State;->SUSPENDED:Lorg/apache/commons/lang3/time/StopWatch$State;

    .line 8
    .line 9
    if-ne v0, v2, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 13
    .line 14
    const-string v1, "Stopwatch is not running. "

    .line 15
    .line 16
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw v0

    .line 20
    :cond_1
    :goto_0
    if-ne v0, v1, :cond_2

    .line 21
    .line 22
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    iput-wide v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->stopTime:J

    .line 27
    .line 28
    :cond_2
    sget-object v0, Lorg/apache/commons/lang3/time/StopWatch$State;->STOPPED:Lorg/apache/commons/lang3/time/StopWatch$State;

    .line 29
    .line 30
    iput-object v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->runningState:Lorg/apache/commons/lang3/time/StopWatch$State;

    .line 31
    .line 32
    return-void
.end method

.method public suspend()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->runningState:Lorg/apache/commons/lang3/time/StopWatch$State;

    .line 2
    .line 3
    sget-object v1, Lorg/apache/commons/lang3/time/StopWatch$State;->RUNNING:Lorg/apache/commons/lang3/time/StopWatch$State;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    iput-wide v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->stopTime:J

    .line 12
    .line 13
    sget-object v0, Lorg/apache/commons/lang3/time/StopWatch$State;->SUSPENDED:Lorg/apache/commons/lang3/time/StopWatch$State;

    .line 14
    .line 15
    iput-object v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->runningState:Lorg/apache/commons/lang3/time/StopWatch$State;

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 19
    .line 20
    const-string v1, "Stopwatch must be running to suspend. "

    .line 21
    .line 22
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw v0
.end method

.method public toSplitString()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/lang3/time/StopWatch;->getSplitTime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->formatDurationHMS(J)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/lang3/time/StopWatch;->getTime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->formatDurationHMS(J)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public unsplit()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->splitState:Lorg/apache/commons/lang3/time/StopWatch$SplitState;

    .line 2
    .line 3
    sget-object v1, Lorg/apache/commons/lang3/time/StopWatch$SplitState;->SPLIT:Lorg/apache/commons/lang3/time/StopWatch$SplitState;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    sget-object v0, Lorg/apache/commons/lang3/time/StopWatch$SplitState;->UNSPLIT:Lorg/apache/commons/lang3/time/StopWatch$SplitState;

    .line 8
    .line 9
    iput-object v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->splitState:Lorg/apache/commons/lang3/time/StopWatch$SplitState;

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 13
    .line 14
    const-string v1, "Stopwatch has not been split. "

    .line 15
    .line 16
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw v0
.end method
