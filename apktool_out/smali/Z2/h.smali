.class public abstract LZ2/h;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static builder()LZ2/e;
    .locals 1

    .line 1
    new-instance v0, LZ2/e;

    .line 2
    .line 3
    invoke-direct {v0}, LZ2/e;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static getDefault(Lc3/a;)LZ2/h;
    .locals 7

    .line 1
    invoke-static {}, LZ2/h;->builder()LZ2/e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/google/android/datatransport/Priority;->b:Lcom/google/android/datatransport/Priority;

    .line 6
    .line 7
    invoke-static {}, LZ2/g;->builder()LZ2/f;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const-wide/16 v3, 0x7530

    .line 12
    .line 13
    invoke-virtual {v2, v3, v4}, LZ2/f;->setDelta(J)LZ2/f;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const-wide/32 v3, 0x5265c00

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2, v3, v4}, LZ2/f;->setMaxAllowedDelay(J)LZ2/f;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v2}, LZ2/f;->build()LZ2/g;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v0, v1, v2}, LZ2/e;->addConfig(Lcom/google/android/datatransport/Priority;LZ2/g;)LZ2/e;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    sget-object v1, Lcom/google/android/datatransport/Priority;->f:Lcom/google/android/datatransport/Priority;

    .line 33
    .line 34
    invoke-static {}, LZ2/g;->builder()LZ2/f;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    const-wide/16 v5, 0x3e8

    .line 39
    .line 40
    invoke-virtual {v2, v5, v6}, LZ2/f;->setDelta(J)LZ2/f;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v2, v3, v4}, LZ2/f;->setMaxAllowedDelay(J)LZ2/f;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v2}, LZ2/f;->build()LZ2/g;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v0, v1, v2}, LZ2/e;->addConfig(Lcom/google/android/datatransport/Priority;LZ2/g;)LZ2/e;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    sget-object v1, Lcom/google/android/datatransport/Priority;->e:Lcom/google/android/datatransport/Priority;

    .line 57
    .line 58
    invoke-static {}, LZ2/g;->builder()LZ2/f;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {v2, v3, v4}, LZ2/f;->setDelta(J)LZ2/f;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {v2, v3, v4}, LZ2/f;->setMaxAllowedDelay(J)LZ2/f;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    const/4 v3, 0x1

    .line 71
    new-array v3, v3, [Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig$Flag;

    .line 72
    .line 73
    sget-object v4, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig$Flag;->e:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig$Flag;

    .line 74
    .line 75
    const/4 v5, 0x0

    .line 76
    aput-object v4, v3, v5

    .line 77
    .line 78
    new-instance v4, Ljava/util/HashSet;

    .line 79
    .line 80
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    invoke-direct {v4, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 85
    .line 86
    .line 87
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    invoke-virtual {v2, v3}, LZ2/f;->setFlags(Ljava/util/Set;)LZ2/f;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-virtual {v2}, LZ2/f;->build()LZ2/g;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-virtual {v0, v1, v2}, LZ2/e;->addConfig(Lcom/google/android/datatransport/Priority;LZ2/g;)LZ2/e;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {v0, p0}, LZ2/e;->setClock(Lc3/a;)LZ2/e;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    invoke-virtual {p0}, LZ2/e;->build()LZ2/h;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    return-object p0
.end method


# virtual methods
.method public configureJob(Landroid/app/job/JobInfo$Builder;Lcom/google/android/datatransport/Priority;JI)Landroid/app/job/JobInfo$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p2, p3, p4, p5}, LZ2/h;->getScheduleDelay(Lcom/google/android/datatransport/Priority;JI)J

    .line 2
    .line 3
    .line 4
    move-result-wide p3

    .line 5
    invoke-virtual {p1, p3, p4}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    .line 6
    .line 7
    .line 8
    move-object p3, p0

    .line 9
    check-cast p3, LZ2/a;

    .line 10
    .line 11
    iget-object p3, p3, LZ2/a;->b:Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-virtual {p3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    check-cast p2, LZ2/g;

    .line 18
    .line 19
    check-cast p2, LZ2/c;

    .line 20
    .line 21
    iget-object p2, p2, LZ2/c;->c:Ljava/util/Set;

    .line 22
    .line 23
    sget-object p3, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig$Flag;->b:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig$Flag;

    .line 24
    .line 25
    invoke-interface {p2, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result p3

    .line 29
    const/4 p4, 0x1

    .line 30
    if-eqz p3, :cond_0

    .line 31
    .line 32
    const/4 p3, 0x2

    .line 33
    invoke-virtual {p1, p3}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {p1, p4}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    .line 38
    .line 39
    .line 40
    :goto_0
    sget-object p3, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig$Flag;->f:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig$Flag;

    .line 41
    .line 42
    invoke-interface {p2, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result p3

    .line 46
    if-eqz p3, :cond_1

    .line 47
    .line 48
    invoke-virtual {p1, p4}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    .line 49
    .line 50
    .line 51
    :cond_1
    sget-object p3, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig$Flag;->e:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig$Flag;

    .line 52
    .line 53
    invoke-interface {p2, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result p2

    .line 57
    if-eqz p2, :cond_2

    .line 58
    .line 59
    invoke-virtual {p1, p4}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    .line 60
    .line 61
    .line 62
    :cond_2
    return-object p1
.end method

.method public getScheduleDelay(Lcom/google/android/datatransport/Priority;JI)J
    .locals 8

    .line 1
    move-object v0, p0

    .line 2
    check-cast v0, LZ2/a;

    .line 3
    .line 4
    iget-object v1, v0, LZ2/a;->a:Lc3/a;

    .line 5
    .line 6
    invoke-interface {v1}, Lc3/a;->getTime()J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    sub-long/2addr p2, v1

    .line 11
    iget-object v0, v0, LZ2/a;->b:Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, LZ2/g;

    .line 18
    .line 19
    check-cast p1, LZ2/c;

    .line 20
    .line 21
    iget-wide v0, p1, LZ2/c;->a:J

    .line 22
    .line 23
    add-int/lit8 p4, p4, -0x1

    .line 24
    .line 25
    const-wide/16 v2, 0x1

    .line 26
    .line 27
    cmp-long v2, v0, v2

    .line 28
    .line 29
    if-lez v2, :cond_0

    .line 30
    .line 31
    move-wide v2, v0

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const-wide/16 v2, 0x2

    .line 34
    .line 35
    :goto_0
    const-wide v4, 0x40c3880000000000L    # 10000.0

    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    .line 41
    .line 42
    .line 43
    move-result-wide v4

    .line 44
    int-to-long v6, p4

    .line 45
    mul-long/2addr v2, v6

    .line 46
    long-to-double v2, v2

    .line 47
    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    .line 48
    .line 49
    .line 50
    move-result-wide v2

    .line 51
    div-double/2addr v4, v2

    .line 52
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 53
    .line 54
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    .line 55
    .line 56
    .line 57
    move-result-wide v2

    .line 58
    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    .line 59
    .line 60
    int-to-double v6, p4

    .line 61
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    .line 62
    .line 63
    .line 64
    move-result-wide v4

    .line 65
    long-to-double v0, v0

    .line 66
    mul-double/2addr v4, v0

    .line 67
    mul-double/2addr v4, v2

    .line 68
    double-to-long v0, v4

    .line 69
    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->max(JJ)J

    .line 70
    .line 71
    .line 72
    move-result-wide p2

    .line 73
    iget-wide v0, p1, LZ2/c;->b:J

    .line 74
    .line 75
    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 76
    .line 77
    .line 78
    move-result-wide p1

    .line 79
    return-wide p1
.end method
