.class Lcz/msebera/android/httpclient/impl/client/HttpRequestTaskCallable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private final callback:Lcz/msebera/android/httpclient/concurrent/FutureCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcz/msebera/android/httpclient/concurrent/FutureCallback<",
            "TV;>;"
        }
    .end annotation
.end field

.field private final cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final context:Lcz/msebera/android/httpclient/protocol/HttpContext;

.field private ended:J

.field private final httpclient:Lcz/msebera/android/httpclient/client/HttpClient;

.field private final metrics:Lcz/msebera/android/httpclient/impl/client/FutureRequestExecutionMetrics;

.field private final request:Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;

.field private final responseHandler:Lcz/msebera/android/httpclient/client/ResponseHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcz/msebera/android/httpclient/client/ResponseHandler<",
            "TV;>;"
        }
    .end annotation
.end field

.field private final scheduled:J

.field private started:J


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/client/HttpClient;Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/client/ResponseHandler;Lcz/msebera/android/httpclient/concurrent/FutureCallback;Lcz/msebera/android/httpclient/impl/client/FutureRequestExecutionMetrics;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcz/msebera/android/httpclient/client/HttpClient;",
            "Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;",
            "Lcz/msebera/android/httpclient/protocol/HttpContext;",
            "Lcz/msebera/android/httpclient/client/ResponseHandler<",
            "TV;>;",
            "Lcz/msebera/android/httpclient/concurrent/FutureCallback<",
            "TV;>;",
            "Lcz/msebera/android/httpclient/impl/client/FutureRequestExecutionMetrics;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpRequestTaskCallable;->cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    iput-wide v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpRequestTaskCallable;->scheduled:J

    .line 17
    .line 18
    const-wide/16 v0, -0x1

    .line 19
    .line 20
    iput-wide v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpRequestTaskCallable;->started:J

    .line 21
    .line 22
    iput-wide v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpRequestTaskCallable;->ended:J

    .line 23
    .line 24
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpRequestTaskCallable;->httpclient:Lcz/msebera/android/httpclient/client/HttpClient;

    .line 25
    .line 26
    iput-object p4, p0, Lcz/msebera/android/httpclient/impl/client/HttpRequestTaskCallable;->responseHandler:Lcz/msebera/android/httpclient/client/ResponseHandler;

    .line 27
    .line 28
    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/client/HttpRequestTaskCallable;->request:Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;

    .line 29
    .line 30
    iput-object p3, p0, Lcz/msebera/android/httpclient/impl/client/HttpRequestTaskCallable;->context:Lcz/msebera/android/httpclient/protocol/HttpContext;

    .line 31
    .line 32
    iput-object p5, p0, Lcz/msebera/android/httpclient/impl/client/HttpRequestTaskCallable;->callback:Lcz/msebera/android/httpclient/concurrent/FutureCallback;

    .line 33
    .line 34
    iput-object p6, p0, Lcz/msebera/android/httpclient/impl/client/HttpRequestTaskCallable;->metrics:Lcz/msebera/android/httpclient/impl/client/FutureRequestExecutionMetrics;

    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpRequestTaskCallable;->cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_2

    .line 8
    .line 9
    :try_start_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpRequestTaskCallable;->metrics:Lcz/msebera/android/httpclient/impl/client/FutureRequestExecutionMetrics;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/client/FutureRequestExecutionMetrics;->getActiveConnections()Ljava/util/concurrent/atomic/AtomicLong;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 16
    .line 17
    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    iput-wide v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpRequestTaskCallable;->started:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    :try_start_1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpRequestTaskCallable;->metrics:Lcz/msebera/android/httpclient/impl/client/FutureRequestExecutionMetrics;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/client/FutureRequestExecutionMetrics;->getScheduledConnections()Ljava/util/concurrent/atomic/AtomicLong;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpRequestTaskCallable;->httpclient:Lcz/msebera/android/httpclient/client/HttpClient;

    .line 34
    .line 35
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/HttpRequestTaskCallable;->request:Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;

    .line 36
    .line 37
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/HttpRequestTaskCallable;->responseHandler:Lcz/msebera/android/httpclient/client/ResponseHandler;

    .line 38
    .line 39
    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/client/HttpRequestTaskCallable;->context:Lcz/msebera/android/httpclient/protocol/HttpContext;

    .line 40
    .line 41
    invoke-interface {v0, v1, v2, v3}, Lcz/msebera/android/httpclient/client/HttpClient;->execute(Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;Lcz/msebera/android/httpclient/client/ResponseHandler;Lcz/msebera/android/httpclient/protocol/HttpContext;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 46
    .line 47
    .line 48
    move-result-wide v1

    .line 49
    iput-wide v1, p0, Lcz/msebera/android/httpclient/impl/client/HttpRequestTaskCallable;->ended:J

    .line 50
    .line 51
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/HttpRequestTaskCallable;->metrics:Lcz/msebera/android/httpclient/impl/client/FutureRequestExecutionMetrics;

    .line 52
    .line 53
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/impl/client/FutureRequestExecutionMetrics;->getSuccessfulConnections()Lcz/msebera/android/httpclient/impl/client/FutureRequestExecutionMetrics$DurationCounter;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    iget-wide v2, p0, Lcz/msebera/android/httpclient/impl/client/HttpRequestTaskCallable;->started:J

    .line 58
    .line 59
    invoke-virtual {v1, v2, v3}, Lcz/msebera/android/httpclient/impl/client/FutureRequestExecutionMetrics$DurationCounter;->increment(J)V

    .line 60
    .line 61
    .line 62
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/HttpRequestTaskCallable;->callback:Lcz/msebera/android/httpclient/concurrent/FutureCallback;

    .line 63
    .line 64
    if-eqz v1, :cond_0

    .line 65
    .line 66
    invoke-interface {v1, v0}, Lcz/msebera/android/httpclient/concurrent/FutureCallback;->completed(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :catchall_0
    move-exception v0

    .line 71
    goto :goto_2

    .line 72
    :catch_0
    move-exception v0

    .line 73
    goto :goto_1

    .line 74
    :cond_0
    :goto_0
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/HttpRequestTaskCallable;->metrics:Lcz/msebera/android/httpclient/impl/client/FutureRequestExecutionMetrics;

    .line 75
    .line 76
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/impl/client/FutureRequestExecutionMetrics;->getRequests()Lcz/msebera/android/httpclient/impl/client/FutureRequestExecutionMetrics$DurationCounter;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    iget-wide v2, p0, Lcz/msebera/android/httpclient/impl/client/HttpRequestTaskCallable;->started:J

    .line 81
    .line 82
    invoke-virtual {v1, v2, v3}, Lcz/msebera/android/httpclient/impl/client/FutureRequestExecutionMetrics$DurationCounter;->increment(J)V

    .line 83
    .line 84
    .line 85
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/HttpRequestTaskCallable;->metrics:Lcz/msebera/android/httpclient/impl/client/FutureRequestExecutionMetrics;

    .line 86
    .line 87
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/impl/client/FutureRequestExecutionMetrics;->getTasks()Lcz/msebera/android/httpclient/impl/client/FutureRequestExecutionMetrics$DurationCounter;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    iget-wide v2, p0, Lcz/msebera/android/httpclient/impl/client/HttpRequestTaskCallable;->started:J

    .line 92
    .line 93
    invoke-virtual {v1, v2, v3}, Lcz/msebera/android/httpclient/impl/client/FutureRequestExecutionMetrics$DurationCounter;->increment(J)V

    .line 94
    .line 95
    .line 96
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/HttpRequestTaskCallable;->metrics:Lcz/msebera/android/httpclient/impl/client/FutureRequestExecutionMetrics;

    .line 97
    .line 98
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/impl/client/FutureRequestExecutionMetrics;->getActiveConnections()Ljava/util/concurrent/atomic/AtomicLong;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    .line 103
    .line 104
    .line 105
    return-object v0

    .line 106
    :goto_1
    :try_start_2
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/HttpRequestTaskCallable;->metrics:Lcz/msebera/android/httpclient/impl/client/FutureRequestExecutionMetrics;

    .line 107
    .line 108
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/impl/client/FutureRequestExecutionMetrics;->getFailedConnections()Lcz/msebera/android/httpclient/impl/client/FutureRequestExecutionMetrics$DurationCounter;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    iget-wide v2, p0, Lcz/msebera/android/httpclient/impl/client/HttpRequestTaskCallable;->started:J

    .line 113
    .line 114
    invoke-virtual {v1, v2, v3}, Lcz/msebera/android/httpclient/impl/client/FutureRequestExecutionMetrics$DurationCounter;->increment(J)V

    .line 115
    .line 116
    .line 117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 118
    .line 119
    .line 120
    move-result-wide v1

    .line 121
    iput-wide v1, p0, Lcz/msebera/android/httpclient/impl/client/HttpRequestTaskCallable;->ended:J

    .line 122
    .line 123
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/HttpRequestTaskCallable;->callback:Lcz/msebera/android/httpclient/concurrent/FutureCallback;

    .line 124
    .line 125
    if-eqz v1, :cond_1

    .line 126
    .line 127
    invoke-interface {v1, v0}, Lcz/msebera/android/httpclient/concurrent/FutureCallback;->failed(Ljava/lang/Exception;)V

    .line 128
    .line 129
    .line 130
    :cond_1
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 131
    :goto_2
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/HttpRequestTaskCallable;->metrics:Lcz/msebera/android/httpclient/impl/client/FutureRequestExecutionMetrics;

    .line 132
    .line 133
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/impl/client/FutureRequestExecutionMetrics;->getRequests()Lcz/msebera/android/httpclient/impl/client/FutureRequestExecutionMetrics$DurationCounter;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    iget-wide v2, p0, Lcz/msebera/android/httpclient/impl/client/HttpRequestTaskCallable;->started:J

    .line 138
    .line 139
    invoke-virtual {v1, v2, v3}, Lcz/msebera/android/httpclient/impl/client/FutureRequestExecutionMetrics$DurationCounter;->increment(J)V

    .line 140
    .line 141
    .line 142
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/HttpRequestTaskCallable;->metrics:Lcz/msebera/android/httpclient/impl/client/FutureRequestExecutionMetrics;

    .line 143
    .line 144
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/impl/client/FutureRequestExecutionMetrics;->getTasks()Lcz/msebera/android/httpclient/impl/client/FutureRequestExecutionMetrics$DurationCounter;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    iget-wide v2, p0, Lcz/msebera/android/httpclient/impl/client/HttpRequestTaskCallable;->started:J

    .line 149
    .line 150
    invoke-virtual {v1, v2, v3}, Lcz/msebera/android/httpclient/impl/client/FutureRequestExecutionMetrics$DurationCounter;->increment(J)V

    .line 151
    .line 152
    .line 153
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/HttpRequestTaskCallable;->metrics:Lcz/msebera/android/httpclient/impl/client/FutureRequestExecutionMetrics;

    .line 154
    .line 155
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/impl/client/FutureRequestExecutionMetrics;->getActiveConnections()Ljava/util/concurrent/atomic/AtomicLong;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    .line 160
    .line 161
    .line 162
    throw v0

    .line 163
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 164
    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    .line 166
    .line 167
    const-string v2, "call has been cancelled for request "

    .line 168
    .line 169
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/HttpRequestTaskCallable;->request:Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;

    .line 173
    .line 174
    invoke-interface {v2}, Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    .line 175
    .line 176
    .line 177
    move-result-object v2

    .line 178
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    throw v0
.end method

.method public cancel()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpRequestTaskCallable;->cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpRequestTaskCallable;->callback:Lcz/msebera/android/httpclient/concurrent/FutureCallback;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Lcz/msebera/android/httpclient/concurrent/FutureCallback;->cancelled()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public getEnded()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpRequestTaskCallable;->ended:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getScheduled()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpRequestTaskCallable;->scheduled:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getStarted()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpRequestTaskCallable;->started:J

    .line 2
    .line 3
    return-wide v0
.end method
