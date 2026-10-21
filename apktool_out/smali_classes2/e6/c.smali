.class public final Le6/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final access$cancelScheduledTimeout(Le6/c;Le6/g;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object p0, Le6/g;->Companion:Le6/c;

    .line 5
    .line 6
    invoke-virtual {p0}, Le6/c;->getLock()Ljava/util/concurrent/locks/ReentrantLock;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 11
    .line 12
    .line 13
    :try_start_0
    invoke-static {p1}, Le6/g;->access$getInQueue$p(Le6/g;)Z

    .line 14
    .line 15
    .line 16
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    const/4 v1, 0x0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 21
    .line 22
    .line 23
    return v1

    .line 24
    :cond_0
    :try_start_1
    invoke-static {p1, v1}, Le6/g;->access$setInQueue$p(Le6/g;Z)V

    .line 25
    .line 26
    .line 27
    invoke-static {}, Le6/g;->access$getHead$cp()Le6/g;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    :goto_0
    if-eqz v0, :cond_2

    .line 32
    .line 33
    invoke-static {v0}, Le6/g;->access$getNext$p(Le6/g;)Le6/g;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    if-ne v2, p1, :cond_1

    .line 38
    .line 39
    invoke-static {p1}, Le6/g;->access$getNext$p(Le6/g;)Le6/g;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-static {v0, v2}, Le6/g;->access$setNext$p(Le6/g;Le6/g;)V

    .line 44
    .line 45
    .line 46
    const/4 v0, 0x0

    .line 47
    invoke-static {p1, v0}, Le6/g;->access$setNext$p(Le6/g;Le6/g;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    .line 49
    .line 50
    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 51
    .line 52
    .line 53
    return v1

    .line 54
    :catchall_0
    move-exception p1

    .line 55
    goto :goto_1

    .line 56
    :cond_1
    :try_start_2
    invoke-static {v0}, Le6/g;->access$getNext$p(Le6/g;)Le6/g;

    .line 57
    .line 58
    .line 59
    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 60
    goto :goto_0

    .line 61
    :cond_2
    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 62
    .line 63
    .line 64
    const/4 p0, 0x1

    .line 65
    return p0

    .line 66
    :goto_1
    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 67
    .line 68
    .line 69
    throw p1
.end method

.method public static final access$scheduleTimeout(Le6/c;Le6/g;JZ)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object p0, Le6/g;->Companion:Le6/c;

    .line 5
    .line 6
    invoke-virtual {p0}, Le6/c;->getLock()Ljava/util/concurrent/locks/ReentrantLock;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 11
    .line 12
    .line 13
    :try_start_0
    invoke-static {p1}, Le6/g;->access$getInQueue$p(Le6/g;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_7

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    invoke-static {p1, v0}, Le6/g;->access$setInQueue$p(Le6/g;Z)V

    .line 21
    .line 22
    .line 23
    invoke-static {}, Le6/g;->access$getHead$cp()Le6/g;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    new-instance v0, Le6/g;

    .line 30
    .line 31
    invoke-direct {v0}, Le6/g;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-static {v0}, Le6/g;->access$setHead$cp(Le6/g;)V

    .line 35
    .line 36
    .line 37
    new-instance v0, Le6/d;

    .line 38
    .line 39
    invoke-direct {v0}, Le6/d;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception p1

    .line 47
    goto/16 :goto_4

    .line 48
    .line 49
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 50
    .line 51
    .line 52
    move-result-wide v0

    .line 53
    const-wide/16 v2, 0x0

    .line 54
    .line 55
    cmp-long v2, p2, v2

    .line 56
    .line 57
    if-eqz v2, :cond_1

    .line 58
    .line 59
    if-eqz p4, :cond_1

    .line 60
    .line 61
    invoke-virtual {p1}, Le6/O;->deadlineNanoTime()J

    .line 62
    .line 63
    .line 64
    move-result-wide v2

    .line 65
    sub-long/2addr v2, v0

    .line 66
    invoke-static {p2, p3, v2, v3}, Ljava/lang/Math;->min(JJ)J

    .line 67
    .line 68
    .line 69
    move-result-wide p2

    .line 70
    add-long/2addr p2, v0

    .line 71
    invoke-static {p1, p2, p3}, Le6/g;->access$setTimeoutAt$p(Le6/g;J)V

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_1
    if-eqz v2, :cond_2

    .line 76
    .line 77
    add-long/2addr p2, v0

    .line 78
    invoke-static {p1, p2, p3}, Le6/g;->access$setTimeoutAt$p(Le6/g;J)V

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_2
    if-eqz p4, :cond_6

    .line 83
    .line 84
    invoke-virtual {p1}, Le6/O;->deadlineNanoTime()J

    .line 85
    .line 86
    .line 87
    move-result-wide p2

    .line 88
    invoke-static {p1, p2, p3}, Le6/g;->access$setTimeoutAt$p(Le6/g;J)V

    .line 89
    .line 90
    .line 91
    :goto_1
    invoke-static {p1, v0, v1}, Le6/g;->access$remainingNanos(Le6/g;J)J

    .line 92
    .line 93
    .line 94
    move-result-wide p2

    .line 95
    invoke-static {}, Le6/g;->access$getHead$cp()Le6/g;

    .line 96
    .line 97
    .line 98
    move-result-object p4

    .line 99
    invoke-static {p4}, Lkotlin/jvm/internal/j;->checkNotNull(Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    :goto_2
    invoke-static {p4}, Le6/g;->access$getNext$p(Le6/g;)Le6/g;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    if-eqz v2, :cond_4

    .line 107
    .line 108
    invoke-static {p4}, Le6/g;->access$getNext$p(Le6/g;)Le6/g;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    invoke-static {v2}, Lkotlin/jvm/internal/j;->checkNotNull(Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    invoke-static {v2, v0, v1}, Le6/g;->access$remainingNanos(Le6/g;J)J

    .line 116
    .line 117
    .line 118
    move-result-wide v2

    .line 119
    cmp-long v2, p2, v2

    .line 120
    .line 121
    if-gez v2, :cond_3

    .line 122
    .line 123
    goto :goto_3

    .line 124
    :cond_3
    invoke-static {p4}, Le6/g;->access$getNext$p(Le6/g;)Le6/g;

    .line 125
    .line 126
    .line 127
    move-result-object p4

    .line 128
    invoke-static {p4}, Lkotlin/jvm/internal/j;->checkNotNull(Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    goto :goto_2

    .line 132
    :cond_4
    :goto_3
    invoke-static {p4}, Le6/g;->access$getNext$p(Le6/g;)Le6/g;

    .line 133
    .line 134
    .line 135
    move-result-object p2

    .line 136
    invoke-static {p1, p2}, Le6/g;->access$setNext$p(Le6/g;Le6/g;)V

    .line 137
    .line 138
    .line 139
    invoke-static {p4, p1}, Le6/g;->access$setNext$p(Le6/g;Le6/g;)V

    .line 140
    .line 141
    .line 142
    invoke-static {}, Le6/g;->access$getHead$cp()Le6/g;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    if-ne p4, p1, :cond_5

    .line 147
    .line 148
    sget-object p1, Le6/g;->Companion:Le6/c;

    .line 149
    .line 150
    invoke-virtual {p1}, Le6/c;->getCondition()Ljava/util/concurrent/locks/Condition;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    .line 156
    .line 157
    :cond_5
    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 158
    .line 159
    .line 160
    return-void

    .line 161
    :cond_6
    :try_start_1
    new-instance p1, Ljava/lang/AssertionError;

    .line 162
    .line 163
    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    .line 164
    .line 165
    .line 166
    throw p1

    .line 167
    :cond_7
    const-string p1, "Unbalanced enter/exit"

    .line 168
    .line 169
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 170
    .line 171
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 175
    :goto_4
    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 176
    .line 177
    .line 178
    throw p1
.end method


# virtual methods
.method public final awaitTimeout$okio()Le6/g;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    invoke-static {}, Le6/g;->access$getHead$cp()Le6/g;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lkotlin/jvm/internal/j;->checkNotNull(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Le6/g;->access$getNext$p(Le6/g;)Le6/g;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 16
    .line 17
    .line 18
    move-result-wide v2

    .line 19
    invoke-virtual {p0}, Le6/c;->getCondition()Ljava/util/concurrent/locks/Condition;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {}, Le6/g;->access$getIDLE_TIMEOUT_MILLIS$cp()J

    .line 24
    .line 25
    .line 26
    move-result-wide v4

    .line 27
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 28
    .line 29
    invoke-interface {v0, v4, v5, v6}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 30
    .line 31
    .line 32
    invoke-static {}, Le6/g;->access$getHead$cp()Le6/g;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {v0}, Lkotlin/jvm/internal/j;->checkNotNull(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    invoke-static {v0}, Le6/g;->access$getNext$p(Le6/g;)Le6/g;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    if-nez v0, :cond_0

    .line 44
    .line 45
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 46
    .line 47
    .line 48
    move-result-wide v4

    .line 49
    sub-long/2addr v4, v2

    .line 50
    invoke-static {}, Le6/g;->access$getIDLE_TIMEOUT_NANOS$cp()J

    .line 51
    .line 52
    .line 53
    move-result-wide v2

    .line 54
    cmp-long v0, v4, v2

    .line 55
    .line 56
    if-ltz v0, :cond_0

    .line 57
    .line 58
    invoke-static {}, Le6/g;->access$getHead$cp()Le6/g;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    return-object v0

    .line 63
    :cond_0
    return-object v1

    .line 64
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 65
    .line 66
    .line 67
    move-result-wide v2

    .line 68
    invoke-static {v0, v2, v3}, Le6/g;->access$remainingNanos(Le6/g;J)J

    .line 69
    .line 70
    .line 71
    move-result-wide v2

    .line 72
    const-wide/16 v4, 0x0

    .line 73
    .line 74
    cmp-long v4, v2, v4

    .line 75
    .line 76
    if-lez v4, :cond_2

    .line 77
    .line 78
    invoke-virtual {p0}, Le6/c;->getCondition()Ljava/util/concurrent/locks/Condition;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 83
    .line 84
    invoke-interface {v0, v2, v3, v4}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 85
    .line 86
    .line 87
    return-object v1

    .line 88
    :cond_2
    invoke-static {}, Le6/g;->access$getHead$cp()Le6/g;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-static {v2}, Lkotlin/jvm/internal/j;->checkNotNull(Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    invoke-static {v0}, Le6/g;->access$getNext$p(Le6/g;)Le6/g;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    invoke-static {v2, v3}, Le6/g;->access$setNext$p(Le6/g;Le6/g;)V

    .line 100
    .line 101
    .line 102
    invoke-static {v0, v1}, Le6/g;->access$setNext$p(Le6/g;Le6/g;)V

    .line 103
    .line 104
    .line 105
    return-object v0
.end method

.method public final getCondition()Ljava/util/concurrent/locks/Condition;
    .locals 1

    .line 1
    invoke-static {}, Le6/g;->access$getCondition$cp()Ljava/util/concurrent/locks/Condition;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final getLock()Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1

    .line 1
    invoke-static {}, Le6/g;->access$getLock$cp()Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
