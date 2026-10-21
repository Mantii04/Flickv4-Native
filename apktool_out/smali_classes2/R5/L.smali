.class public final LR5/L;
.super LR5/a0;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static volatile _thread:Ljava/lang/Thread;

.field private static volatile debugStatus:I

.field public static final r:LR5/L;

.field public static final s:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, LR5/L;

    .line 2
    .line 3
    invoke-direct {v0}, LR5/a0;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, LR5/L;->r:LR5/L;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-static {v0, v3, v1, v2}, LR5/Y;->incrementUseCount$default(LR5/Y;ZILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 15
    .line 16
    const-wide/16 v1, 0x3e8

    .line 17
    .line 18
    :try_start_0
    const-string v3, "kotlinx.coroutines.DefaultExecutor.keepAlive"

    .line 19
    .line 20
    invoke-static {v3, v1, v2}, Ljava/lang/Long;->getLong(Ljava/lang/String;J)Ljava/lang/Long;

    .line 21
    .line 22
    .line 23
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    goto :goto_0

    .line 25
    :catch_0
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 30
    .line 31
    .line 32
    move-result-wide v1

    .line 33
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 34
    .line 35
    .line 36
    move-result-wide v0

    .line 37
    sput-wide v0, LR5/L;->s:J

    .line 38
    .line 39
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget v0, LR5/L;->debugStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    const/4 v1, 0x2

    .line 5
    const/4 v2, 0x3

    .line 6
    if-eq v0, v1, :cond_1

    .line 7
    .line 8
    if-ne v0, v2, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    goto :goto_1

    .line 13
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 14
    :goto_1
    if-nez v0, :cond_2

    .line 15
    .line 16
    monitor-exit p0

    .line 17
    return-void

    .line 18
    :cond_2
    :try_start_1
    sput v2, LR5/L;->debugStatus:I

    .line 19
    .line 20
    invoke-virtual {p0}, LR5/a0;->resetAll()V

    .line 21
    .line 22
    .line 23
    const-string v0, "null cannot be cast to non-null type java.lang.Object"

    .line 24
    .line 25
    invoke-static {p0, v0}, Lkotlin/jvm/internal/j;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    .line 30
    .line 31
    monitor-exit p0

    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception v0

    .line 34
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 35
    throw v0
.end method

.method public enqueue(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    sget v0, LR5/L;->debugStatus:I

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    invoke-super {p0, p1}, LR5/a0;->enqueue(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance p1, Ljava/util/concurrent/RejectedExecutionException;

    .line 11
    .line 12
    const-string v0, "DefaultExecutor was shut down. This error indicates that Dispatchers.shutdown() was invoked prior to completion of exiting coroutines, leaving coroutines in incomplete state. Please refer to Dispatchers.shutdown documentation for more details"

    .line 13
    .line 14
    invoke-direct {p1, v0}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw p1
.end method

.method public getThread()Ljava/lang/Thread;
    .locals 2

    .line 1
    sget-object v0, LR5/L;->_thread:Ljava/lang/Thread;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    sget-object v0, LR5/L;->_thread:Ljava/lang/Thread;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Ljava/lang/Thread;

    .line 11
    .line 12
    const-string v1, "kotlinx.coroutines.DefaultExecutor"

    .line 13
    .line 14
    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, LR5/L;->_thread:Ljava/lang/Thread;

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception v0

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    :goto_0
    monitor-exit p0

    .line 30
    return-object v0

    .line 31
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    throw v0

    .line 33
    :cond_1
    return-object v0
.end method

.method public run()V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    sget-object v0, LR5/O0;->a:LR5/O0;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, LR5/O0;->setEventLoop$kotlinx_coroutines_core(LR5/Y;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, LR5/c;->getTimeSource()LR5/b;

    .line 9
    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    :try_start_1
    sget v0, LR5/L;->debugStatus:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 14
    .line 15
    const/4 v4, 0x3

    .line 16
    const/4 v5, 0x2

    .line 17
    const/4 v6, 0x1

    .line 18
    if-eq v0, v5, :cond_1

    .line 19
    .line 20
    if-ne v0, v4, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    :goto_0
    move v0, v6

    .line 26
    :goto_1
    if-eqz v0, :cond_2

    .line 27
    .line 28
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 29
    sput-object v2, LR5/L;->_thread:Ljava/lang/Thread;

    .line 30
    .line 31
    invoke-virtual {v1}, LR5/L;->a()V

    .line 32
    .line 33
    .line 34
    invoke-static {}, LR5/c;->getTimeSource()LR5/b;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, LR5/a0;->isEmpty()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_8

    .line 42
    .line 43
    invoke-virtual {v1}, LR5/L;->getThread()Ljava/lang/Thread;

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_2
    :try_start_3
    sput v6, LR5/L;->debugStatus:I

    .line 48
    .line 49
    const-string v0, "null cannot be cast to non-null type java.lang.Object"

    .line 50
    .line 51
    invoke-static {v1, v0}, Lkotlin/jvm/internal/j;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 55
    .line 56
    .line 57
    :try_start_4
    monitor-exit p0

    .line 58
    const-wide v7, 0x7fffffffffffffffL

    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    move-wide v9, v7

    .line 64
    :goto_2
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1}, LR5/a0;->processNextEvent()J

    .line 68
    .line 69
    .line 70
    move-result-wide v11

    .line 71
    cmp-long v0, v11, v7

    .line 72
    .line 73
    const-wide/16 v13, 0x0

    .line 74
    .line 75
    if-nez v0, :cond_5

    .line 76
    .line 77
    invoke-static {}, LR5/c;->getTimeSource()LR5/b;

    .line 78
    .line 79
    .line 80
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 81
    .line 82
    .line 83
    move-result-wide v15

    .line 84
    cmp-long v0, v9, v7

    .line 85
    .line 86
    if-nez v0, :cond_3

    .line 87
    .line 88
    sget-wide v9, LR5/L;->s:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 89
    .line 90
    add-long/2addr v9, v15

    .line 91
    :cond_3
    move-object/from16 v17, v2

    .line 92
    .line 93
    goto :goto_3

    .line 94
    :catchall_0
    move-exception v0

    .line 95
    move-object/from16 v17, v2

    .line 96
    .line 97
    goto :goto_8

    .line 98
    :goto_3
    sub-long v2, v9, v15

    .line 99
    .line 100
    cmp-long v15, v2, v13

    .line 101
    .line 102
    if-gtz v15, :cond_4

    .line 103
    .line 104
    sput-object v17, LR5/L;->_thread:Ljava/lang/Thread;

    .line 105
    .line 106
    invoke-virtual {v1}, LR5/L;->a()V

    .line 107
    .line 108
    .line 109
    invoke-static {}, LR5/c;->getTimeSource()LR5/b;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1}, LR5/a0;->isEmpty()Z

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    if-nez v0, :cond_8

    .line 117
    .line 118
    invoke-virtual {v1}, LR5/L;->getThread()Ljava/lang/Thread;

    .line 119
    .line 120
    .line 121
    return-void

    .line 122
    :cond_4
    :try_start_5
    invoke-static {v11, v12, v2, v3}, LM5/g;->coerceAtMost(JJ)J

    .line 123
    .line 124
    .line 125
    move-result-wide v11

    .line 126
    goto :goto_4

    .line 127
    :catchall_1
    move-exception v0

    .line 128
    goto :goto_8

    .line 129
    :cond_5
    move-object/from16 v17, v2

    .line 130
    .line 131
    move-wide v9, v7

    .line 132
    :goto_4
    cmp-long v2, v11, v13

    .line 133
    .line 134
    if-lez v2, :cond_a

    .line 135
    .line 136
    sget v2, LR5/L;->debugStatus:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 137
    .line 138
    if-eq v2, v5, :cond_7

    .line 139
    .line 140
    if-ne v2, v4, :cond_6

    .line 141
    .line 142
    goto :goto_5

    .line 143
    :cond_6
    const/4 v2, 0x0

    .line 144
    goto :goto_6

    .line 145
    :cond_7
    :goto_5
    move v2, v6

    .line 146
    :goto_6
    if-eqz v2, :cond_9

    .line 147
    .line 148
    sput-object v17, LR5/L;->_thread:Ljava/lang/Thread;

    .line 149
    .line 150
    invoke-virtual {v1}, LR5/L;->a()V

    .line 151
    .line 152
    .line 153
    invoke-static {}, LR5/c;->getTimeSource()LR5/b;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v1}, LR5/a0;->isEmpty()Z

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    if-nez v0, :cond_8

    .line 161
    .line 162
    invoke-virtual {v1}, LR5/L;->getThread()Ljava/lang/Thread;

    .line 163
    .line 164
    .line 165
    :cond_8
    return-void

    .line 166
    :cond_9
    :try_start_6
    invoke-static {}, LR5/c;->getTimeSource()LR5/b;

    .line 167
    .line 168
    .line 169
    invoke-static {v1, v11, v12}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 170
    .line 171
    .line 172
    :cond_a
    move-object/from16 v2, v17

    .line 173
    .line 174
    goto :goto_2

    .line 175
    :catchall_2
    move-exception v0

    .line 176
    move-object/from16 v17, v2

    .line 177
    .line 178
    :goto_7
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 179
    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 180
    :catchall_3
    move-exception v0

    .line 181
    goto :goto_7

    .line 182
    :goto_8
    sput-object v17, LR5/L;->_thread:Ljava/lang/Thread;

    .line 183
    .line 184
    invoke-virtual {v1}, LR5/L;->a()V

    .line 185
    .line 186
    .line 187
    invoke-static {}, LR5/c;->getTimeSource()LR5/b;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v1}, LR5/a0;->isEmpty()Z

    .line 191
    .line 192
    .line 193
    move-result v2

    .line 194
    if-nez v2, :cond_b

    .line 195
    .line 196
    invoke-virtual {v1}, LR5/L;->getThread()Ljava/lang/Thread;

    .line 197
    .line 198
    .line 199
    :cond_b
    throw v0
.end method

.method public shutdown()V
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    sput v0, LR5/L;->debugStatus:I

    .line 3
    .line 4
    invoke-super {p0}, LR5/a0;->shutdown()V

    .line 5
    .line 6
    .line 7
    return-void
.end method
