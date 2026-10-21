.class public Lkotlinx/coroutines/channels/BufferedChannel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LT5/c;


# static fields
.field public static final f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field public static final j:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field public static final m:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field public static final n:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field public static final p:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final q:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final r:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final s:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final t:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile _closeCause:Ljava/lang/Object;

.field public final b:I

.field private volatile bufferEnd:J

.field private volatile bufferEndSegment:Ljava/lang/Object;

.field private volatile closeHandler:Ljava/lang/Object;

.field private volatile completedExpandBuffersAndPauseFlag:J

.field public final e:LH5/l;

.field private volatile receiveSegment:Ljava/lang/Object;

.field private volatile receivers:J

.field private volatile sendSegment:Ljava/lang/Object;

.field private volatile sendersAndCloseStatus:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "sendersAndCloseStatus"

    const-class v1, Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-string v0, "receivers"

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->j:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-string v0, "bufferEnd"

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->m:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-string v0, "completedExpandBuffersAndPauseFlag"

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->n:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-string v0, "sendSegment"

    const-class v2, Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->p:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "receiveSegment"

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->q:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "bufferEndSegment"

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->r:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "_closeCause"

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->s:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "closeHandler"

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->t:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(ILH5/l;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "LH5/l;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lkotlinx/coroutines/channels/BufferedChannel;->b:I

    .line 5
    .line 6
    iput-object p2, p0, Lkotlinx/coroutines/channels/BufferedChannel;->e:LH5/l;

    .line 7
    .line 8
    if-ltz p1, :cond_2

    .line 9
    .line 10
    invoke-static {p1}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$initialBufferEnd(I)J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    iput-wide v0, p0, Lkotlinx/coroutines/channels/BufferedChannel;->bufferEnd:J

    .line 15
    .line 16
    sget-object p1, Lkotlinx/coroutines/channels/BufferedChannel;->m:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 17
    .line 18
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    iput-wide v0, p0, Lkotlinx/coroutines/channels/BufferedChannel;->completedExpandBuffersAndPauseFlag:J

    .line 23
    .line 24
    new-instance v2, LT5/k;

    .line 25
    .line 26
    const/4 v7, 0x3

    .line 27
    const-wide/16 v3, 0x0

    .line 28
    .line 29
    const/4 v5, 0x0

    .line 30
    move-object v6, p0

    .line 31
    invoke-direct/range {v2 .. v7}, LT5/k;-><init>(JLT5/k;Lkotlinx/coroutines/channels/BufferedChannel;I)V

    .line 32
    .line 33
    .line 34
    iput-object v2, v6, Lkotlinx/coroutines/channels/BufferedChannel;->sendSegment:Ljava/lang/Object;

    .line 35
    .line 36
    iput-object v2, v6, Lkotlinx/coroutines/channels/BufferedChannel;->receiveSegment:Ljava/lang/Object;

    .line 37
    .line 38
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->h()Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-eqz p1, :cond_0

    .line 43
    .line 44
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getNULL_SEGMENT$p()LT5/k;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    const-string p1, "null cannot be cast to non-null type kotlinx.coroutines.channels.ChannelSegment<E of kotlinx.coroutines.channels.BufferedChannel>"

    .line 49
    .line 50
    invoke-static {v2, p1}, Lkotlin/jvm/internal/j;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    :cond_0
    iput-object v2, v6, Lkotlinx/coroutines/channels/BufferedChannel;->bufferEndSegment:Ljava/lang/Object;

    .line 54
    .line 55
    if-eqz p2, :cond_1

    .line 56
    .line 57
    new-instance p1, Lkotlinx/coroutines/channels/BufferedChannel$onUndeliveredElementReceiveCancellationConstructor$1$1;

    .line 58
    .line 59
    invoke-direct {p1, p0}, Lkotlinx/coroutines/channels/BufferedChannel$onUndeliveredElementReceiveCancellationConstructor$1$1;-><init>(Lkotlinx/coroutines/channels/BufferedChannel;)V

    .line 60
    .line 61
    .line 62
    :cond_1
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getNO_CLOSE_CAUSE$p()LW5/G;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    iput-object p1, v6, Lkotlinx/coroutines/channels/BufferedChannel;->_closeCause:Ljava/lang/Object;

    .line 67
    .line 68
    return-void

    .line 69
    :cond_2
    move-object v6, p0

    .line 70
    const-string p2, "Invalid channel capacity: "

    .line 71
    .line 72
    const-string v0, ", should be >=0"

    .line 73
    .line 74
    invoke-static {p1, p2, v0}, LA/i;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 79
    .line 80
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw p2
.end method

.method public static final synthetic access$findSegmentReceive(Lkotlinx/coroutines/channels/BufferedChannel;JLT5/k;)LT5/k;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lkotlinx/coroutines/channels/BufferedChannel;->d(JLT5/k;)LT5/k;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final access$findSegmentSend(Lkotlinx/coroutines/channels/BufferedChannel;JLT5/k;)LT5/k;
    .locals 9

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->createSegmentFunction()LN5/e;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, LH5/p;

    .line 9
    .line 10
    :goto_0
    invoke-static {p3, p1, p2, v0}, LW5/d;->findSegmentInternal(LW5/D;JLH5/p;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-static {v1}, LW5/E;->isClosed-impl(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-nez v2, :cond_4

    .line 19
    .line 20
    invoke-static {v1}, LW5/E;->getSegment-impl(Ljava/lang/Object;)LW5/D;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    :cond_0
    :goto_1
    sget-object v3, Lkotlinx/coroutines/channels/BufferedChannel;->p:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 25
    .line 26
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    check-cast v4, LW5/D;

    .line 31
    .line 32
    iget-wide v5, v4, LW5/D;->f:J

    .line 33
    .line 34
    iget-wide v7, v2, LW5/D;->f:J

    .line 35
    .line 36
    cmp-long v5, v5, v7

    .line 37
    .line 38
    if-ltz v5, :cond_1

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_1
    invoke-virtual {v2}, LW5/D;->tryIncPointers$kotlinx_coroutines_core()Z

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    if-nez v5, :cond_2

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    invoke-virtual {v3, p0, v4, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    if-eqz v5, :cond_3

    .line 53
    .line 54
    invoke-virtual {v4}, LW5/D;->decPointers$kotlinx_coroutines_core()Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_4

    .line 59
    .line 60
    invoke-virtual {v4}, LW5/e;->remove()V

    .line 61
    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_3
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    if-eq v5, v4, :cond_2

    .line 69
    .line 70
    invoke-virtual {v2}, LW5/D;->decPointers$kotlinx_coroutines_core()Z

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    if-eqz v3, :cond_0

    .line 75
    .line 76
    invoke-virtual {v2}, LW5/e;->remove()V

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_4
    :goto_2
    invoke-static {v1}, LW5/E;->isClosed-impl(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    const/4 v2, 0x0

    .line 85
    if-eqz v0, :cond_5

    .line 86
    .line 87
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->isClosedForSend()Z

    .line 88
    .line 89
    .line 90
    iget-wide p1, p3, LW5/D;->f:J

    .line 91
    .line 92
    sget v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->b:I

    .line 93
    .line 94
    int-to-long v0, v0

    .line 95
    mul-long/2addr p1, v0

    .line 96
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceiversCounter$kotlinx_coroutines_core()J

    .line 97
    .line 98
    .line 99
    move-result-wide v0

    .line 100
    cmp-long p0, p1, v0

    .line 101
    .line 102
    if-gez p0, :cond_7

    .line 103
    .line 104
    invoke-virtual {p3}, LW5/e;->cleanPrev()V

    .line 105
    .line 106
    .line 107
    return-object v2

    .line 108
    :cond_5
    invoke-static {v1}, LW5/E;->getSegment-impl(Ljava/lang/Object;)LW5/D;

    .line 109
    .line 110
    .line 111
    move-result-object p3

    .line 112
    check-cast p3, LT5/k;

    .line 113
    .line 114
    iget-wide v0, p3, LW5/D;->f:J

    .line 115
    .line 116
    cmp-long p1, v0, p1

    .line 117
    .line 118
    if-lez p1, :cond_9

    .line 119
    .line 120
    sget p1, Lkotlinx/coroutines/channels/BufferedChannelKt;->b:I

    .line 121
    .line 122
    int-to-long p1, p1

    .line 123
    mul-long/2addr v0, p1

    .line 124
    :goto_3
    sget-object v3, Lkotlinx/coroutines/channels/BufferedChannel;->f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 125
    .line 126
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 127
    .line 128
    .line 129
    move-result-wide v5

    .line 130
    const-wide p1, 0xfffffffffffffffL

    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    and-long/2addr p1, v5

    .line 136
    cmp-long v4, p1, v0

    .line 137
    .line 138
    if-ltz v4, :cond_6

    .line 139
    .line 140
    move-object v4, p0

    .line 141
    goto :goto_4

    .line 142
    :cond_6
    const/16 v4, 0x3c

    .line 143
    .line 144
    shr-long v7, v5, v4

    .line 145
    .line 146
    long-to-int v4, v7

    .line 147
    invoke-static {p1, p2, v4}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$constructSendersAndCloseStatus(JI)J

    .line 148
    .line 149
    .line 150
    move-result-wide v7

    .line 151
    move-object v4, p0

    .line 152
    invoke-virtual/range {v3 .. v8}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    .line 153
    .line 154
    .line 155
    move-result p0

    .line 156
    if-eqz p0, :cond_8

    .line 157
    .line 158
    :goto_4
    sget p0, Lkotlinx/coroutines/channels/BufferedChannelKt;->b:I

    .line 159
    .line 160
    int-to-long p0, p0

    .line 161
    iget-wide v0, p3, LW5/D;->f:J

    .line 162
    .line 163
    mul-long/2addr v0, p0

    .line 164
    invoke-virtual {v4}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceiversCounter$kotlinx_coroutines_core()J

    .line 165
    .line 166
    .line 167
    move-result-wide p0

    .line 168
    cmp-long p0, v0, p0

    .line 169
    .line 170
    if-gez p0, :cond_7

    .line 171
    .line 172
    invoke-virtual {p3}, LW5/e;->cleanPrev()V

    .line 173
    .line 174
    .line 175
    :cond_7
    return-object v2

    .line 176
    :cond_8
    move-object p0, v4

    .line 177
    goto :goto_3

    .line 178
    :cond_9
    return-object p3
.end method

.method public static final synthetic access$getReceiveException(Lkotlinx/coroutines/channels/BufferedChannel;)Ljava/lang/Throwable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->e()Ljava/lang/Throwable;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getReceiveSegment$FU$p()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->q:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getReceivers$FU$p()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->j:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getSendSegment$FU$p()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->p:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getSendersAndCloseStatus$FU$p()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final access$isClosedForSend0(Lkotlinx/coroutines/channels/BufferedChannel;J)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lkotlinx/coroutines/channels/BufferedChannel;->g(JZ)Z

    .line 3
    .line 4
    .line 5
    move-result p0

    .line 6
    return p0
.end method

.method public static final access$onClosedReceiveOnNoWaiterSuspend(Lkotlinx/coroutines/channels/BufferedChannel;LR5/m;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget v0, Lkotlin/Result;->b:I

    .line 5
    .line 6
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->e()Ljava/lang/Throwable;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-static {p0}, Lkotlin/b;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-interface {p1, p0}, Ly5/c;->resumeWith(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public static final access$onClosedSendOnNoWaiterSuspend(Lkotlinx/coroutines/channels/BufferedChannel;Ljava/lang/Object;LR5/m;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/BufferedChannel;->e:LH5/l;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {p2}, Ly5/c;->getContext()Ly5/k;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0, p1, v1}, Lkotlinx/coroutines/internal/OnUndeliveredElementKt;->callUndeliveredElement(LH5/l;Ljava/lang/Object;Ly5/k;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendException()Ljava/lang/Throwable;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    sget p1, Lkotlin/Result;->b:I

    .line 17
    .line 18
    invoke-static {p0}, Lkotlin/b;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-interface {p2, p0}, Ly5/c;->resumeWith(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public static final access$prepareReceiverForSuspension(Lkotlinx/coroutines/channels/BufferedChannel;LR5/S0;LT5/k;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->onReceiveEnqueued()V

    .line 2
    .line 3
    .line 4
    invoke-interface {p1, p2, p3}, LR5/S0;->invokeOnCancellation(LW5/D;I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public static final access$prepareSenderForSuspension(Lkotlinx/coroutines/channels/BufferedChannel;LR5/S0;LT5/k;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget p0, Lkotlinx/coroutines/channels/BufferedChannelKt;->b:I

    .line 5
    .line 6
    add-int/2addr p3, p0

    .line 7
    invoke-interface {p1, p2, p3}, LR5/S0;->invokeOnCancellation(LW5/D;I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public static final synthetic access$updateCellReceive(Lkotlinx/coroutines/channels/BufferedChannel;LT5/k;IJLjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p5}, Lkotlinx/coroutines/channels/BufferedChannel;->n(LT5/k;IJLjava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final access$updateCellSend(Lkotlinx/coroutines/channels/BufferedChannel;LT5/k;ILjava/lang/Object;JLjava/lang/Object;Z)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, p2, p3}, LT5/k;->storeElement$kotlinx_coroutines_core(ILjava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    if-eqz p7, :cond_0

    .line 8
    .line 9
    invoke-virtual/range {p0 .. p7}, Lkotlinx/coroutines/channels/BufferedChannel;->o(LT5/k;ILjava/lang/Object;JLjava/lang/Object;Z)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0

    .line 14
    :cond_0
    invoke-virtual {p1, p2}, LT5/k;->getState$kotlinx_coroutines_core(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v1, 0x1

    .line 19
    if-nez v0, :cond_3

    .line 20
    .line 21
    invoke-virtual {p0, p4, p5}, Lkotlinx/coroutines/channels/BufferedChannel;->a(J)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const/4 v2, 0x0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->d:LW5/G;

    .line 29
    .line 30
    invoke-virtual {p1, p2, v2, v0}, LT5/k;->casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_6

    .line 35
    .line 36
    return v1

    .line 37
    :cond_1
    if-nez p6, :cond_2

    .line 38
    .line 39
    const/4 p0, 0x3

    .line 40
    return p0

    .line 41
    :cond_2
    invoke-virtual {p1, p2, v2, p6}, LT5/k;->casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_6

    .line 46
    .line 47
    const/4 p0, 0x2

    .line 48
    return p0

    .line 49
    :cond_3
    instance-of v2, v0, LR5/S0;

    .line 50
    .line 51
    if-eqz v2, :cond_6

    .line 52
    .line 53
    invoke-virtual {p1, p2}, LT5/k;->cleanElement$kotlinx_coroutines_core(I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, v0, p3}, Lkotlinx/coroutines/channels/BufferedChannel;->l(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result p3

    .line 60
    if-eqz p3, :cond_4

    .line 61
    .line 62
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getDONE_RCV$p()LW5/G;

    .line 63
    .line 64
    .line 65
    move-result-object p3

    .line 66
    invoke-virtual {p1, p2, p3}, LT5/k;->setState$kotlinx_coroutines_core(ILjava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->onReceiveDequeued()V

    .line 70
    .line 71
    .line 72
    const/4 p0, 0x0

    .line 73
    return p0

    .line 74
    :cond_4
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getINTERRUPTED_RCV$p()LW5/G;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    invoke-virtual {p1, p2, p0}, LT5/k;->getAndSetState$kotlinx_coroutines_core(ILjava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getINTERRUPTED_RCV$p()LW5/G;

    .line 83
    .line 84
    .line 85
    move-result-object p3

    .line 86
    if-eq p0, p3, :cond_5

    .line 87
    .line 88
    invoke-virtual {p1, p2, v1}, LT5/k;->onCancelledRequest(IZ)V

    .line 89
    .line 90
    .line 91
    :cond_5
    const/4 p0, 0x5

    .line 92
    return p0

    .line 93
    :cond_6
    invoke-virtual/range {p0 .. p7}, Lkotlinx/coroutines/channels/BufferedChannel;->o(LT5/k;ILjava/lang/Object;JLjava/lang/Object;Z)I

    .line 94
    .line 95
    .line 96
    move-result p0

    .line 97
    return p0
.end method

.method public static f(Lkotlinx/coroutines/channels/BufferedChannel;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->n:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 5
    .line 6
    const-wide/16 v1, 0x1

    .line 7
    .line 8
    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    .line 9
    .line 10
    .line 11
    move-result-wide v1

    .line 12
    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    .line 13
    .line 14
    and-long/2addr v1, v3

    .line 15
    const-wide/16 v5, 0x0

    .line 16
    .line 17
    cmp-long v1, v1, v5

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    :goto_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 22
    .line 23
    .line 24
    move-result-wide v1

    .line 25
    and-long/2addr v1, v3

    .line 26
    cmp-long v1, v1, v5

    .line 27
    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    return-void
.end method

.method public static m(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p0, LR5/m;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuation<kotlin.Unit>"

    .line 6
    .line 7
    invoke-static {p0, v0}, Lkotlin/jvm/internal/j;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    check-cast p0, LR5/m;

    .line 11
    .line 12
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->a:LT5/k;

    .line 13
    .line 14
    sget-object v0, Lu5/j;->a:Lu5/j;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-interface {p0, v0, v1, v1}, LR5/m;->tryResume(Ljava/lang/Object;Ljava/lang/Object;LH5/l;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-interface {p0, v0}, LR5/m;->completeResume(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    const/4 p0, 0x1

    .line 27
    return p0

    .line 28
    :cond_0
    const/4 p0, 0x0

    .line 29
    return p0

    .line 30
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 31
    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string v2, "Unexpected waiter: "

    .line 35
    .line 36
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw v0
.end method


# virtual methods
.method public final a(J)Z
    .locals 4

    .line 1
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->m:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    cmp-long v0, p1, v0

    .line 8
    .line 9
    if-ltz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceiversCounter$kotlinx_coroutines_core()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    iget v2, p0, Lkotlinx/coroutines/channels/BufferedChannel;->b:I

    .line 16
    .line 17
    int-to-long v2, v2

    .line 18
    add-long/2addr v0, v2

    .line 19
    cmp-long p1, p1, v0

    .line 20
    .line 21
    if-gez p1, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p1, 0x0

    .line 25
    return p1

    .line 26
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 27
    return p1
.end method

.method public final b(J)LT5/k;
    .locals 11

    .line 1
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->r:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lkotlinx/coroutines/channels/BufferedChannel;->p:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 8
    .line 9
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, LT5/k;

    .line 14
    .line 15
    iget-wide v2, v1, LW5/D;->f:J

    .line 16
    .line 17
    move-object v4, v0

    .line 18
    check-cast v4, LT5/k;

    .line 19
    .line 20
    iget-wide v4, v4, LW5/D;->f:J

    .line 21
    .line 22
    cmp-long v2, v2, v4

    .line 23
    .line 24
    if-lez v2, :cond_0

    .line 25
    .line 26
    move-object v0, v1

    .line 27
    :cond_0
    sget-object v1, Lkotlinx/coroutines/channels/BufferedChannel;->q:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 28
    .line 29
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, LT5/k;

    .line 34
    .line 35
    iget-wide v2, v1, LW5/D;->f:J

    .line 36
    .line 37
    move-object v4, v0

    .line 38
    check-cast v4, LT5/k;

    .line 39
    .line 40
    iget-wide v4, v4, LW5/D;->f:J

    .line 41
    .line 42
    cmp-long v2, v2, v4

    .line 43
    .line 44
    if-lez v2, :cond_1

    .line 45
    .line 46
    move-object v0, v1

    .line 47
    :cond_1
    check-cast v0, LW5/e;

    .line 48
    .line 49
    invoke-static {v0}, LW5/d;->close(LW5/e;)LW5/e;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, LT5/k;

    .line 54
    .line 55
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->isConflatedDropOldest()Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    const/4 v2, 0x1

    .line 60
    const/4 v3, -0x1

    .line 61
    if-eqz v1, :cond_8

    .line 62
    .line 63
    move-object v1, v0

    .line 64
    :cond_2
    sget v4, Lkotlinx/coroutines/channels/BufferedChannelKt;->b:I

    .line 65
    .line 66
    sub-int/2addr v4, v2

    .line 67
    :goto_0
    const-wide/16 v5, -0x1

    .line 68
    .line 69
    if-ge v3, v4, :cond_7

    .line 70
    .line 71
    iget-wide v7, v1, LW5/D;->f:J

    .line 72
    .line 73
    sget v9, Lkotlinx/coroutines/channels/BufferedChannelKt;->b:I

    .line 74
    .line 75
    int-to-long v9, v9

    .line 76
    mul-long/2addr v7, v9

    .line 77
    int-to-long v9, v4

    .line 78
    add-long/2addr v7, v9

    .line 79
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceiversCounter$kotlinx_coroutines_core()J

    .line 80
    .line 81
    .line 82
    move-result-wide v9

    .line 83
    cmp-long v9, v7, v9

    .line 84
    .line 85
    if-gez v9, :cond_3

    .line 86
    .line 87
    :goto_1
    move-wide v7, v5

    .line 88
    goto :goto_3

    .line 89
    :cond_3
    invoke-virtual {v1, v4}, LT5/k;->getState$kotlinx_coroutines_core(I)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v9

    .line 93
    if-eqz v9, :cond_5

    .line 94
    .line 95
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getIN_BUFFER$p()LW5/G;

    .line 96
    .line 97
    .line 98
    move-result-object v10

    .line 99
    if-ne v9, v10, :cond_4

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_4
    sget-object v10, Lkotlinx/coroutines/channels/BufferedChannelKt;->d:LW5/G;

    .line 103
    .line 104
    if-ne v9, v10, :cond_6

    .line 105
    .line 106
    goto :goto_3

    .line 107
    :cond_5
    :goto_2
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->getCHANNEL_CLOSED()LW5/G;

    .line 108
    .line 109
    .line 110
    move-result-object v10

    .line 111
    invoke-virtual {v1, v4, v9, v10}, LT5/k;->casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v9

    .line 115
    if-eqz v9, :cond_3

    .line 116
    .line 117
    invoke-virtual {v1}, LW5/D;->onSlotCleaned()V

    .line 118
    .line 119
    .line 120
    :cond_6
    add-int/lit8 v4, v4, -0x1

    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_7
    invoke-virtual {v1}, LW5/e;->getPrev()LW5/e;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    check-cast v1, LT5/k;

    .line 128
    .line 129
    if-nez v1, :cond_2

    .line 130
    .line 131
    goto :goto_1

    .line 132
    :goto_3
    cmp-long v1, v7, v5

    .line 133
    .line 134
    if-eqz v1, :cond_8

    .line 135
    .line 136
    invoke-virtual {p0, v7, v8}, Lkotlinx/coroutines/channels/BufferedChannel;->dropFirstElementUntilTheSpecifiedCellIsInTheBuffer(J)V

    .line 137
    .line 138
    .line 139
    :cond_8
    const/4 v1, 0x0

    .line 140
    invoke-static {v1, v2, v1}, LW5/k;->constructor-impl$default(Ljava/lang/Object;ILkotlin/jvm/internal/g;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    move-object v4, v0

    .line 145
    :goto_4
    if-eqz v4, :cond_f

    .line 146
    .line 147
    sget v5, Lkotlinx/coroutines/channels/BufferedChannelKt;->b:I

    .line 148
    .line 149
    sub-int/2addr v5, v2

    .line 150
    :goto_5
    if-ge v3, v5, :cond_e

    .line 151
    .line 152
    sget v6, Lkotlinx/coroutines/channels/BufferedChannelKt;->b:I

    .line 153
    .line 154
    int-to-long v6, v6

    .line 155
    iget-wide v8, v4, LW5/D;->f:J

    .line 156
    .line 157
    mul-long/2addr v8, v6

    .line 158
    int-to-long v6, v5

    .line 159
    add-long/2addr v8, v6

    .line 160
    cmp-long v6, v8, p1

    .line 161
    .line 162
    if-ltz v6, :cond_f

    .line 163
    .line 164
    :cond_9
    invoke-virtual {v4, v5}, LT5/k;->getState$kotlinx_coroutines_core(I)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v6

    .line 168
    if-eqz v6, :cond_c

    .line 169
    .line 170
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getIN_BUFFER$p()LW5/G;

    .line 171
    .line 172
    .line 173
    move-result-object v7

    .line 174
    if-ne v6, v7, :cond_a

    .line 175
    .line 176
    goto :goto_6

    .line 177
    :cond_a
    instance-of v7, v6, LT5/t;

    .line 178
    .line 179
    if-eqz v7, :cond_b

    .line 180
    .line 181
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->getCHANNEL_CLOSED()LW5/G;

    .line 182
    .line 183
    .line 184
    move-result-object v7

    .line 185
    invoke-virtual {v4, v5, v6, v7}, LT5/k;->casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    move-result v7

    .line 189
    if-eqz v7, :cond_9

    .line 190
    .line 191
    check-cast v6, LT5/t;

    .line 192
    .line 193
    iget-object v6, v6, LT5/t;->a:LR5/S0;

    .line 194
    .line 195
    invoke-static {v1, v6}, LW5/k;->plus-FjFbRPM(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    invoke-virtual {v4, v5, v2}, LT5/k;->onCancelledRequest(IZ)V

    .line 200
    .line 201
    .line 202
    goto :goto_7

    .line 203
    :cond_b
    instance-of v7, v6, LR5/S0;

    .line 204
    .line 205
    if-eqz v7, :cond_d

    .line 206
    .line 207
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->getCHANNEL_CLOSED()LW5/G;

    .line 208
    .line 209
    .line 210
    move-result-object v7

    .line 211
    invoke-virtual {v4, v5, v6, v7}, LT5/k;->casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    move-result v7

    .line 215
    if-eqz v7, :cond_9

    .line 216
    .line 217
    invoke-static {v1, v6}, LW5/k;->plus-FjFbRPM(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    invoke-virtual {v4, v5, v2}, LT5/k;->onCancelledRequest(IZ)V

    .line 222
    .line 223
    .line 224
    goto :goto_7

    .line 225
    :cond_c
    :goto_6
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->getCHANNEL_CLOSED()LW5/G;

    .line 226
    .line 227
    .line 228
    move-result-object v7

    .line 229
    invoke-virtual {v4, v5, v6, v7}, LT5/k;->casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    move-result v6

    .line 233
    if-eqz v6, :cond_9

    .line 234
    .line 235
    invoke-virtual {v4}, LW5/D;->onSlotCleaned()V

    .line 236
    .line 237
    .line 238
    :cond_d
    :goto_7
    add-int/lit8 v5, v5, -0x1

    .line 239
    .line 240
    goto :goto_5

    .line 241
    :cond_e
    invoke-virtual {v4}, LW5/e;->getPrev()LW5/e;

    .line 242
    .line 243
    .line 244
    move-result-object v4

    .line 245
    check-cast v4, LT5/k;

    .line 246
    .line 247
    goto :goto_4

    .line 248
    :cond_f
    if-eqz v1, :cond_11

    .line 249
    .line 250
    instance-of p1, v1, Ljava/util/ArrayList;

    .line 251
    .line 252
    if-nez p1, :cond_10

    .line 253
    .line 254
    check-cast v1, LR5/S0;

    .line 255
    .line 256
    invoke-virtual {p0, v1, v2}, Lkotlinx/coroutines/channels/BufferedChannel;->k(LR5/S0;Z)V

    .line 257
    .line 258
    .line 259
    return-object v0

    .line 260
    :cond_10
    const-string p1, "null cannot be cast to non-null type java.util.ArrayList<E of kotlinx.coroutines.internal.InlineList>{ kotlin.collections.TypeAliasesKt.ArrayList<E of kotlinx.coroutines.internal.InlineList> }"

    .line 261
    .line 262
    invoke-static {v1, p1}, Lkotlin/jvm/internal/j;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    check-cast v1, Ljava/util/ArrayList;

    .line 266
    .line 267
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 268
    .line 269
    .line 270
    move-result p1

    .line 271
    sub-int/2addr p1, v2

    .line 272
    :goto_8
    if-ge v3, p1, :cond_11

    .line 273
    .line 274
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object p2

    .line 278
    check-cast p2, LR5/S0;

    .line 279
    .line 280
    invoke-virtual {p0, p2, v2}, Lkotlinx/coroutines/channels/BufferedChannel;->k(LR5/S0;Z)V

    .line 281
    .line 282
    .line 283
    add-int/lit8 p1, p1, -0x1

    .line 284
    .line 285
    goto :goto_8

    .line 286
    :cond_11
    return-object v0
.end method

.method public final c()V
    .locals 15

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->h()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    sget-object v6, Lkotlinx/coroutines/channels/BufferedChannel;->r:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 9
    .line 10
    invoke-virtual {v6, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, LT5/k;

    .line 15
    .line 16
    move-object v7, v0

    .line 17
    :goto_0
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->m:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 18
    .line 19
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    .line 20
    .line 21
    .line 22
    move-result-wide v8

    .line 23
    sget v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->b:I

    .line 24
    .line 25
    int-to-long v2, v0

    .line 26
    div-long v2, v8, v2

    .line 27
    .line 28
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendersCounter$kotlinx_coroutines_core()J

    .line 29
    .line 30
    .line 31
    move-result-wide v4

    .line 32
    cmp-long v0, v4, v8

    .line 33
    .line 34
    if-gtz v0, :cond_2

    .line 35
    .line 36
    iget-wide v4, v7, LW5/D;->f:J

    .line 37
    .line 38
    cmp-long v0, v4, v2

    .line 39
    .line 40
    if-gez v0, :cond_1

    .line 41
    .line 42
    invoke-virtual {v7}, LW5/e;->getNext()LW5/e;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    invoke-virtual {p0, v2, v3, v7}, Lkotlinx/coroutines/channels/BufferedChannel;->i(JLT5/k;)V

    .line 49
    .line 50
    .line 51
    :cond_1
    invoke-static {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->f(Lkotlinx/coroutines/channels/BufferedChannel;)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_2
    iget-wide v4, v7, LW5/D;->f:J

    .line 56
    .line 57
    cmp-long v0, v4, v2

    .line 58
    .line 59
    if-eqz v0, :cond_d

    .line 60
    .line 61
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->createSegmentFunction()LN5/e;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    check-cast v0, LH5/p;

    .line 66
    .line 67
    :goto_1
    invoke-static {v7, v2, v3, v0}, LW5/d;->findSegmentInternal(LW5/D;JLH5/p;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    invoke-static {v4}, LW5/E;->isClosed-impl(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    if-nez v5, :cond_7

    .line 76
    .line 77
    invoke-static {v4}, LW5/E;->getSegment-impl(Ljava/lang/Object;)LW5/D;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    :cond_3
    :goto_2
    invoke-virtual {v6, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v10

    .line 85
    check-cast v10, LW5/D;

    .line 86
    .line 87
    iget-wide v11, v10, LW5/D;->f:J

    .line 88
    .line 89
    iget-wide v13, v5, LW5/D;->f:J

    .line 90
    .line 91
    cmp-long v11, v11, v13

    .line 92
    .line 93
    if-ltz v11, :cond_4

    .line 94
    .line 95
    goto :goto_3

    .line 96
    :cond_4
    invoke-virtual {v5}, LW5/D;->tryIncPointers$kotlinx_coroutines_core()Z

    .line 97
    .line 98
    .line 99
    move-result v11

    .line 100
    if-nez v11, :cond_5

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_5
    invoke-virtual {v6, p0, v10, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v11

    .line 107
    if-eqz v11, :cond_6

    .line 108
    .line 109
    invoke-virtual {v10}, LW5/D;->decPointers$kotlinx_coroutines_core()Z

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    if-eqz v0, :cond_7

    .line 114
    .line 115
    invoke-virtual {v10}, LW5/e;->remove()V

    .line 116
    .line 117
    .line 118
    goto :goto_3

    .line 119
    :cond_6
    invoke-virtual {v6, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v11

    .line 123
    if-eq v11, v10, :cond_5

    .line 124
    .line 125
    invoke-virtual {v5}, LW5/D;->decPointers$kotlinx_coroutines_core()Z

    .line 126
    .line 127
    .line 128
    move-result v10

    .line 129
    if-eqz v10, :cond_3

    .line 130
    .line 131
    invoke-virtual {v5}, LW5/e;->remove()V

    .line 132
    .line 133
    .line 134
    goto :goto_2

    .line 135
    :cond_7
    :goto_3
    invoke-static {v4}, LW5/E;->isClosed-impl(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    const/4 v10, 0x0

    .line 140
    if-eqz v0, :cond_8

    .line 141
    .line 142
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->isClosedForSend()Z

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0, v2, v3, v7}, Lkotlinx/coroutines/channels/BufferedChannel;->i(JLT5/k;)V

    .line 146
    .line 147
    .line 148
    invoke-static {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->f(Lkotlinx/coroutines/channels/BufferedChannel;)V

    .line 149
    .line 150
    .line 151
    goto :goto_5

    .line 152
    :cond_8
    invoke-static {v4}, LW5/E;->getSegment-impl(Ljava/lang/Object;)LW5/D;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    move-object v11, v0

    .line 157
    check-cast v11, LT5/k;

    .line 158
    .line 159
    iget-wide v4, v11, LW5/D;->f:J

    .line 160
    .line 161
    cmp-long v0, v4, v2

    .line 162
    .line 163
    if-lez v0, :cond_a

    .line 164
    .line 165
    const-wide/16 v2, 0x1

    .line 166
    .line 167
    add-long/2addr v2, v8

    .line 168
    sget v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->b:I

    .line 169
    .line 170
    int-to-long v12, v0

    .line 171
    mul-long/2addr v4, v12

    .line 172
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->m:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 173
    .line 174
    move-object v1, p0

    .line 175
    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    .line 176
    .line 177
    .line 178
    move-result v0

    .line 179
    if-eqz v0, :cond_9

    .line 180
    .line 181
    iget-wide v2, v11, LW5/D;->f:J

    .line 182
    .line 183
    mul-long/2addr v2, v12

    .line 184
    sub-long/2addr v2, v8

    .line 185
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->n:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 186
    .line 187
    invoke-virtual {v0, p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    .line 188
    .line 189
    .line 190
    move-result-wide v2

    .line 191
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 192
    .line 193
    and-long/2addr v2, v4

    .line 194
    const-wide/16 v11, 0x0

    .line 195
    .line 196
    cmp-long v2, v2, v11

    .line 197
    .line 198
    if-eqz v2, :cond_b

    .line 199
    .line 200
    :goto_4
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 201
    .line 202
    .line 203
    move-result-wide v2

    .line 204
    and-long/2addr v2, v4

    .line 205
    cmp-long v2, v2, v11

    .line 206
    .line 207
    if-eqz v2, :cond_b

    .line 208
    .line 209
    goto :goto_4

    .line 210
    :cond_9
    invoke-static {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->f(Lkotlinx/coroutines/channels/BufferedChannel;)V

    .line 211
    .line 212
    .line 213
    goto :goto_5

    .line 214
    :cond_a
    move-object v10, v11

    .line 215
    :cond_b
    :goto_5
    if-nez v10, :cond_c

    .line 216
    .line 217
    goto/16 :goto_0

    .line 218
    .line 219
    :cond_c
    move-object v7, v10

    .line 220
    :cond_d
    sget v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->b:I

    .line 221
    .line 222
    int-to-long v2, v0

    .line 223
    rem-long v2, v8, v2

    .line 224
    .line 225
    long-to-int v0, v2

    .line 226
    invoke-virtual {v7, v0}, LT5/k;->getState$kotlinx_coroutines_core(I)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object v2

    .line 230
    instance-of v3, v2, LR5/S0;

    .line 231
    .line 232
    sget-object v4, Lkotlinx/coroutines/channels/BufferedChannel;->j:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 233
    .line 234
    const/4 v5, 0x0

    .line 235
    if-eqz v3, :cond_f

    .line 236
    .line 237
    invoke-virtual {v4, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 238
    .line 239
    .line 240
    move-result-wide v10

    .line 241
    cmp-long v3, v8, v10

    .line 242
    .line 243
    if-ltz v3, :cond_f

    .line 244
    .line 245
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getRESUMING_BY_EB$p()LW5/G;

    .line 246
    .line 247
    .line 248
    move-result-object v3

    .line 249
    invoke-virtual {v7, v0, v2, v3}, LT5/k;->casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 250
    .line 251
    .line 252
    move-result v3

    .line 253
    if-eqz v3, :cond_f

    .line 254
    .line 255
    invoke-static {v2}, Lkotlinx/coroutines/channels/BufferedChannel;->m(Ljava/lang/Object;)Z

    .line 256
    .line 257
    .line 258
    move-result v2

    .line 259
    if-eqz v2, :cond_e

    .line 260
    .line 261
    sget-object v2, Lkotlinx/coroutines/channels/BufferedChannelKt;->d:LW5/G;

    .line 262
    .line 263
    invoke-virtual {v7, v0, v2}, LT5/k;->setState$kotlinx_coroutines_core(ILjava/lang/Object;)V

    .line 264
    .line 265
    .line 266
    goto/16 :goto_8

    .line 267
    .line 268
    :cond_e
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getINTERRUPTED_SEND$p()LW5/G;

    .line 269
    .line 270
    .line 271
    move-result-object v2

    .line 272
    invoke-virtual {v7, v0, v2}, LT5/k;->setState$kotlinx_coroutines_core(ILjava/lang/Object;)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {v7, v0, v5}, LT5/k;->onCancelledRequest(IZ)V

    .line 276
    .line 277
    .line 278
    goto :goto_7

    .line 279
    :cond_f
    :goto_6
    invoke-virtual {v7, v0}, LT5/k;->getState$kotlinx_coroutines_core(I)Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    move-result-object v2

    .line 283
    instance-of v3, v2, LR5/S0;

    .line 284
    .line 285
    if-eqz v3, :cond_12

    .line 286
    .line 287
    invoke-virtual {v4, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 288
    .line 289
    .line 290
    move-result-wide v10

    .line 291
    cmp-long v3, v8, v10

    .line 292
    .line 293
    if-gez v3, :cond_10

    .line 294
    .line 295
    new-instance v3, LT5/t;

    .line 296
    .line 297
    move-object v10, v2

    .line 298
    check-cast v10, LR5/S0;

    .line 299
    .line 300
    invoke-direct {v3, v10}, LT5/t;-><init>(LR5/S0;)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {v7, v0, v2, v3}, LT5/k;->casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 304
    .line 305
    .line 306
    move-result v2

    .line 307
    if-eqz v2, :cond_f

    .line 308
    .line 309
    goto/16 :goto_8

    .line 310
    .line 311
    :cond_10
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getRESUMING_BY_EB$p()LW5/G;

    .line 312
    .line 313
    .line 314
    move-result-object v3

    .line 315
    invoke-virtual {v7, v0, v2, v3}, LT5/k;->casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 316
    .line 317
    .line 318
    move-result v3

    .line 319
    if-eqz v3, :cond_f

    .line 320
    .line 321
    invoke-static {v2}, Lkotlinx/coroutines/channels/BufferedChannel;->m(Ljava/lang/Object;)Z

    .line 322
    .line 323
    .line 324
    move-result v2

    .line 325
    if-eqz v2, :cond_11

    .line 326
    .line 327
    sget-object v2, Lkotlinx/coroutines/channels/BufferedChannelKt;->d:LW5/G;

    .line 328
    .line 329
    invoke-virtual {v7, v0, v2}, LT5/k;->setState$kotlinx_coroutines_core(ILjava/lang/Object;)V

    .line 330
    .line 331
    .line 332
    goto :goto_8

    .line 333
    :cond_11
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getINTERRUPTED_SEND$p()LW5/G;

    .line 334
    .line 335
    .line 336
    move-result-object v2

    .line 337
    invoke-virtual {v7, v0, v2}, LT5/k;->setState$kotlinx_coroutines_core(ILjava/lang/Object;)V

    .line 338
    .line 339
    .line 340
    invoke-virtual {v7, v0, v5}, LT5/k;->onCancelledRequest(IZ)V

    .line 341
    .line 342
    .line 343
    goto :goto_7

    .line 344
    :cond_12
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getINTERRUPTED_SEND$p()LW5/G;

    .line 345
    .line 346
    .line 347
    move-result-object v3

    .line 348
    if-ne v2, v3, :cond_13

    .line 349
    .line 350
    :goto_7
    invoke-static {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->f(Lkotlinx/coroutines/channels/BufferedChannel;)V

    .line 351
    .line 352
    .line 353
    goto/16 :goto_0

    .line 354
    .line 355
    :cond_13
    if-nez v2, :cond_14

    .line 356
    .line 357
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getIN_BUFFER$p()LW5/G;

    .line 358
    .line 359
    .line 360
    move-result-object v3

    .line 361
    invoke-virtual {v7, v0, v2, v3}, LT5/k;->casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 362
    .line 363
    .line 364
    move-result v2

    .line 365
    if-eqz v2, :cond_f

    .line 366
    .line 367
    goto :goto_8

    .line 368
    :cond_14
    sget-object v3, Lkotlinx/coroutines/channels/BufferedChannelKt;->d:LW5/G;

    .line 369
    .line 370
    if-ne v2, v3, :cond_15

    .line 371
    .line 372
    goto :goto_8

    .line 373
    :cond_15
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getPOISONED$p()LW5/G;

    .line 374
    .line 375
    .line 376
    move-result-object v3

    .line 377
    if-eq v2, v3, :cond_19

    .line 378
    .line 379
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getDONE_RCV$p()LW5/G;

    .line 380
    .line 381
    .line 382
    move-result-object v3

    .line 383
    if-eq v2, v3, :cond_19

    .line 384
    .line 385
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getINTERRUPTED_RCV$p()LW5/G;

    .line 386
    .line 387
    .line 388
    move-result-object v3

    .line 389
    if-ne v2, v3, :cond_16

    .line 390
    .line 391
    goto :goto_8

    .line 392
    :cond_16
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->getCHANNEL_CLOSED()LW5/G;

    .line 393
    .line 394
    .line 395
    move-result-object v3

    .line 396
    if-ne v2, v3, :cond_17

    .line 397
    .line 398
    goto :goto_8

    .line 399
    :cond_17
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getRESUMING_BY_RCV$p()LW5/G;

    .line 400
    .line 401
    .line 402
    move-result-object v3

    .line 403
    if-ne v2, v3, :cond_18

    .line 404
    .line 405
    goto :goto_6

    .line 406
    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 407
    .line 408
    new-instance v3, Ljava/lang/StringBuilder;

    .line 409
    .line 410
    const-string v4, "Unexpected cell state: "

    .line 411
    .line 412
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 413
    .line 414
    .line 415
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 416
    .line 417
    .line 418
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 419
    .line 420
    .line 421
    move-result-object v2

    .line 422
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 423
    .line 424
    .line 425
    move-result-object v2

    .line 426
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 427
    .line 428
    .line 429
    throw v0

    .line 430
    :cond_19
    :goto_8
    invoke-static {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->f(Lkotlinx/coroutines/channels/BufferedChannel;)V

    .line 431
    .line 432
    .line 433
    return-void
.end method

.method public final cancel(Ljava/util/concurrent/CancellationException;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/BufferedChannel;->cancelImpl$kotlinx_coroutines_core(Ljava/lang/Throwable;)Z

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public cancelImpl$kotlinx_coroutines_core(Ljava/lang/Throwable;)Z
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    new-instance p1, Ljava/util/concurrent/CancellationException;

    .line 4
    .line 5
    const-string v0, "Channel was cancelled"

    .line 6
    .line 7
    invoke-direct {p1, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    const/4 v0, 0x1

    .line 11
    invoke-virtual {p0, p1, v0}, Lkotlinx/coroutines/channels/BufferedChannel;->closeOrCancelImpl(Ljava/lang/Throwable;Z)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1
.end method

.method public close(Ljava/lang/Throwable;)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lkotlinx/coroutines/channels/BufferedChannel;->closeOrCancelImpl(Ljava/lang/Throwable;Z)Z

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    return p1
.end method

.method public closeOrCancelImpl(Ljava/lang/Throwable;Z)Z
    .locals 12

    .line 1
    const/16 v0, 0x3c

    .line 2
    .line 3
    const-wide v1, 0xfffffffffffffffL

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    sget-object v3, Lkotlinx/coroutines/channels/BufferedChannel;->f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 9
    .line 10
    const/4 v9, 0x1

    .line 11
    if-eqz p2, :cond_1

    .line 12
    .line 13
    :cond_0
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 14
    .line 15
    .line 16
    move-result-wide v5

    .line 17
    shr-long v7, v5, v0

    .line 18
    .line 19
    long-to-int v4, v7

    .line 20
    if-nez v4, :cond_1

    .line 21
    .line 22
    and-long v7, v5, v1

    .line 23
    .line 24
    invoke-static {v7, v8, v9}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$constructSendersAndCloseStatus(JI)J

    .line 25
    .line 26
    .line 27
    move-result-wide v7

    .line 28
    move-object v4, p0

    .line 29
    invoke-virtual/range {v3 .. v8}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    if-eqz v5, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    move-object v4, p0

    .line 37
    :goto_0
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getNO_CLOSE_CAUSE$p()LW5/G;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    :cond_2
    sget-object v6, Lkotlinx/coroutines/channels/BufferedChannel;->s:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 42
    .line 43
    invoke-virtual {v6, p0, v5, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v7

    .line 47
    if-eqz v7, :cond_3

    .line 48
    .line 49
    move v10, v9

    .line 50
    goto :goto_1

    .line 51
    :cond_3
    invoke-virtual {v6, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    if-eq v6, v5, :cond_2

    .line 56
    .line 57
    const/4 p1, 0x0

    .line 58
    move v10, p1

    .line 59
    :goto_1
    const/4 v11, 0x3

    .line 60
    if-eqz p2, :cond_5

    .line 61
    .line 62
    :cond_4
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 63
    .line 64
    .line 65
    move-result-wide v5

    .line 66
    and-long p1, v5, v1

    .line 67
    .line 68
    invoke-static {p1, p2, v11}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$constructSendersAndCloseStatus(JI)J

    .line 69
    .line 70
    .line 71
    move-result-wide v7

    .line 72
    invoke-virtual/range {v3 .. v8}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    if-eqz p1, :cond_4

    .line 77
    .line 78
    goto :goto_4

    .line 79
    :cond_5
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 80
    .line 81
    .line 82
    move-result-wide v5

    .line 83
    shr-long p1, v5, v0

    .line 84
    .line 85
    long-to-int p1, p1

    .line 86
    if-eqz p1, :cond_7

    .line 87
    .line 88
    if-eq p1, v9, :cond_6

    .line 89
    .line 90
    goto :goto_4

    .line 91
    :cond_6
    and-long p1, v5, v1

    .line 92
    .line 93
    invoke-static {p1, p2, v11}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$constructSendersAndCloseStatus(JI)J

    .line 94
    .line 95
    .line 96
    move-result-wide p1

    .line 97
    :goto_2
    move-wide v7, p1

    .line 98
    goto :goto_3

    .line 99
    :cond_7
    and-long p1, v5, v1

    .line 100
    .line 101
    const/4 v7, 0x2

    .line 102
    invoke-static {p1, p2, v7}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$constructSendersAndCloseStatus(JI)J

    .line 103
    .line 104
    .line 105
    move-result-wide p1

    .line 106
    goto :goto_2

    .line 107
    :goto_3
    invoke-virtual/range {v3 .. v8}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    if-eqz p1, :cond_5

    .line 112
    .line 113
    :goto_4
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->isClosedForSend()Z

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->onClosedIdempotent()V

    .line 117
    .line 118
    .line 119
    if-eqz v10, :cond_c

    .line 120
    .line 121
    :goto_5
    sget-object p1, Lkotlinx/coroutines/channels/BufferedChannel;->t:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 122
    .line 123
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object p2

    .line 127
    if-nez p2, :cond_8

    .line 128
    .line 129
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getCLOSE_HANDLER_CLOSED$p()LW5/G;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    goto :goto_6

    .line 134
    :cond_8
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getCLOSE_HANDLER_INVOKED$p()LW5/G;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    :cond_9
    :goto_6
    invoke-virtual {p1, p0, p2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    if-eqz v1, :cond_b

    .line 143
    .line 144
    if-nez p2, :cond_a

    .line 145
    .line 146
    goto :goto_7

    .line 147
    :cond_a
    invoke-static {p2, v9}, Lkotlin/jvm/internal/o;->beforeCheckcastToFunctionOfArity(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    check-cast p1, LH5/l;

    .line 152
    .line 153
    check-cast p2, LH5/l;

    .line 154
    .line 155
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getCloseCause()Ljava/lang/Throwable;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    invoke-interface {p2, p1}, LH5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    return v10

    .line 163
    :cond_b
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    if-eq v1, p2, :cond_9

    .line 168
    .line 169
    goto :goto_5

    .line 170
    :cond_c
    :goto_7
    return v10
.end method

.method public final d(JLT5/k;)LT5/k;
    .locals 9

    .line 1
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->createSegmentFunction()LN5/e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, LH5/p;

    .line 6
    .line 7
    :goto_0
    invoke-static {p3, p1, p2, v0}, LW5/d;->findSegmentInternal(LW5/D;JLH5/p;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {v1}, LW5/E;->isClosed-impl(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-nez v2, :cond_4

    .line 16
    .line 17
    invoke-static {v1}, LW5/E;->getSegment-impl(Ljava/lang/Object;)LW5/D;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    :cond_0
    :goto_1
    sget-object v3, Lkotlinx/coroutines/channels/BufferedChannel;->q:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 22
    .line 23
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    check-cast v4, LW5/D;

    .line 28
    .line 29
    iget-wide v5, v4, LW5/D;->f:J

    .line 30
    .line 31
    iget-wide v7, v2, LW5/D;->f:J

    .line 32
    .line 33
    cmp-long v5, v5, v7

    .line 34
    .line 35
    if-ltz v5, :cond_1

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_1
    invoke-virtual {v2}, LW5/D;->tryIncPointers$kotlinx_coroutines_core()Z

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    if-nez v5, :cond_2

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    invoke-virtual {v3, p0, v4, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    if-eqz v5, :cond_3

    .line 50
    .line 51
    invoke-virtual {v4}, LW5/D;->decPointers$kotlinx_coroutines_core()Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_4

    .line 56
    .line 57
    invoke-virtual {v4}, LW5/e;->remove()V

    .line 58
    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_3
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    if-eq v5, v4, :cond_2

    .line 66
    .line 67
    invoke-virtual {v2}, LW5/D;->decPointers$kotlinx_coroutines_core()Z

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    if-eqz v3, :cond_0

    .line 72
    .line 73
    invoke-virtual {v2}, LW5/e;->remove()V

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_4
    :goto_2
    invoke-static {v1}, LW5/E;->isClosed-impl(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    const/4 v2, 0x0

    .line 82
    if-eqz v0, :cond_6

    .line 83
    .line 84
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->isClosedForSend()Z

    .line 85
    .line 86
    .line 87
    iget-wide p1, p3, LW5/D;->f:J

    .line 88
    .line 89
    sget v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->b:I

    .line 90
    .line 91
    int-to-long v0, v0

    .line 92
    mul-long/2addr p1, v0

    .line 93
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendersCounter$kotlinx_coroutines_core()J

    .line 94
    .line 95
    .line 96
    move-result-wide v0

    .line 97
    cmp-long p1, p1, v0

    .line 98
    .line 99
    if-gez p1, :cond_5

    .line 100
    .line 101
    invoke-virtual {p3}, LW5/e;->cleanPrev()V

    .line 102
    .line 103
    .line 104
    :cond_5
    return-object v2

    .line 105
    :cond_6
    invoke-static {v1}, LW5/E;->getSegment-impl(Ljava/lang/Object;)LW5/D;

    .line 106
    .line 107
    .line 108
    move-result-object p3

    .line 109
    check-cast p3, LT5/k;

    .line 110
    .line 111
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->h()Z

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-nez v0, :cond_a

    .line 116
    .line 117
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->m:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 118
    .line 119
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 120
    .line 121
    .line 122
    move-result-wide v0

    .line 123
    sget v3, Lkotlinx/coroutines/channels/BufferedChannelKt;->b:I

    .line 124
    .line 125
    int-to-long v3, v3

    .line 126
    div-long/2addr v0, v3

    .line 127
    cmp-long v0, p1, v0

    .line 128
    .line 129
    if-gtz v0, :cond_a

    .line 130
    .line 131
    :cond_7
    :goto_3
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->r:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 132
    .line 133
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    check-cast v1, LW5/D;

    .line 138
    .line 139
    iget-wide v3, v1, LW5/D;->f:J

    .line 140
    .line 141
    iget-wide v5, p3, LW5/D;->f:J

    .line 142
    .line 143
    cmp-long v3, v3, v5

    .line 144
    .line 145
    if-gez v3, :cond_a

    .line 146
    .line 147
    invoke-virtual {p3}, LW5/D;->tryIncPointers$kotlinx_coroutines_core()Z

    .line 148
    .line 149
    .line 150
    move-result v3

    .line 151
    if-eqz v3, :cond_a

    .line 152
    .line 153
    :cond_8
    invoke-virtual {v0, p0, v1, p3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result v3

    .line 157
    if-eqz v3, :cond_9

    .line 158
    .line 159
    invoke-virtual {v1}, LW5/D;->decPointers$kotlinx_coroutines_core()Z

    .line 160
    .line 161
    .line 162
    move-result v0

    .line 163
    if-eqz v0, :cond_a

    .line 164
    .line 165
    invoke-virtual {v1}, LW5/e;->remove()V

    .line 166
    .line 167
    .line 168
    goto :goto_4

    .line 169
    :cond_9
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v3

    .line 173
    if-eq v3, v1, :cond_8

    .line 174
    .line 175
    invoke-virtual {p3}, LW5/D;->decPointers$kotlinx_coroutines_core()Z

    .line 176
    .line 177
    .line 178
    move-result v0

    .line 179
    if-eqz v0, :cond_7

    .line 180
    .line 181
    invoke-virtual {p3}, LW5/e;->remove()V

    .line 182
    .line 183
    .line 184
    goto :goto_3

    .line 185
    :cond_a
    :goto_4
    iget-wide v0, p3, LW5/D;->f:J

    .line 186
    .line 187
    cmp-long p1, v0, p1

    .line 188
    .line 189
    if-lez p1, :cond_e

    .line 190
    .line 191
    sget p1, Lkotlinx/coroutines/channels/BufferedChannelKt;->b:I

    .line 192
    .line 193
    int-to-long p1, p1

    .line 194
    mul-long v7, v0, p1

    .line 195
    .line 196
    :cond_b
    sget-object v3, Lkotlinx/coroutines/channels/BufferedChannel;->j:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 197
    .line 198
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 199
    .line 200
    .line 201
    move-result-wide v5

    .line 202
    cmp-long p1, v5, v7

    .line 203
    .line 204
    if-ltz p1, :cond_c

    .line 205
    .line 206
    goto :goto_5

    .line 207
    :cond_c
    move-object v4, p0

    .line 208
    invoke-virtual/range {v3 .. v8}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    .line 209
    .line 210
    .line 211
    move-result p1

    .line 212
    if-eqz p1, :cond_b

    .line 213
    .line 214
    :goto_5
    sget p1, Lkotlinx/coroutines/channels/BufferedChannelKt;->b:I

    .line 215
    .line 216
    int-to-long p1, p1

    .line 217
    iget-wide v0, p3, LW5/D;->f:J

    .line 218
    .line 219
    mul-long/2addr v0, p1

    .line 220
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendersCounter$kotlinx_coroutines_core()J

    .line 221
    .line 222
    .line 223
    move-result-wide p1

    .line 224
    cmp-long p1, v0, p1

    .line 225
    .line 226
    if-gez p1, :cond_d

    .line 227
    .line 228
    invoke-virtual {p3}, LW5/e;->cleanPrev()V

    .line 229
    .line 230
    .line 231
    :cond_d
    return-object v2

    .line 232
    :cond_e
    return-object p3
.end method

.method public final dropFirstElementUntilTheSpecifiedCellIsInTheBuffer(J)V
    .locals 9

    .line 1
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->q:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, LT5/k;

    .line 8
    .line 9
    :cond_0
    :goto_0
    sget-object v1, Lkotlinx/coroutines/channels/BufferedChannel;->j:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 10
    .line 11
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 12
    .line 13
    .line 14
    move-result-wide v3

    .line 15
    iget v2, p0, Lkotlinx/coroutines/channels/BufferedChannel;->b:I

    .line 16
    .line 17
    int-to-long v5, v2

    .line 18
    add-long/2addr v5, v3

    .line 19
    sget-object v2, Lkotlinx/coroutines/channels/BufferedChannel;->m:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 20
    .line 21
    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 22
    .line 23
    .line 24
    move-result-wide v7

    .line 25
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    .line 26
    .line 27
    .line 28
    move-result-wide v5

    .line 29
    cmp-long v2, p1, v5

    .line 30
    .line 31
    if-gez v2, :cond_1

    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    const-wide/16 v5, 0x1

    .line 35
    .line 36
    add-long/2addr v5, v3

    .line 37
    move-object v2, p0

    .line 38
    invoke-virtual/range {v1 .. v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_0

    .line 43
    .line 44
    sget v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->b:I

    .line 45
    .line 46
    int-to-long v5, v1

    .line 47
    div-long v5, v3, v5

    .line 48
    .line 49
    int-to-long v7, v1

    .line 50
    rem-long v7, v3, v7

    .line 51
    .line 52
    long-to-int v1, v7

    .line 53
    iget-wide v7, v0, LW5/D;->f:J

    .line 54
    .line 55
    cmp-long v7, v7, v5

    .line 56
    .line 57
    if-eqz v7, :cond_3

    .line 58
    .line 59
    invoke-virtual {p0, v5, v6, v0}, Lkotlinx/coroutines/channels/BufferedChannel;->d(JLT5/k;)LT5/k;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    if-nez v5, :cond_2

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    move-object v0, v5

    .line 67
    :cond_3
    const/4 v7, 0x0

    .line 68
    move-wide v5, v3

    .line 69
    move-object v3, v0

    .line 70
    move v4, v1

    .line 71
    invoke-virtual/range {v2 .. v7}, Lkotlinx/coroutines/channels/BufferedChannel;->n(LT5/k;IJLjava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getFAILED$p()LW5/G;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    if-ne v0, v1, :cond_4

    .line 80
    .line 81
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendersCounter$kotlinx_coroutines_core()J

    .line 82
    .line 83
    .line 84
    move-result-wide v0

    .line 85
    cmp-long v0, v5, v0

    .line 86
    .line 87
    if-gez v0, :cond_6

    .line 88
    .line 89
    invoke-virtual {v3}, LW5/e;->cleanPrev()V

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_4
    invoke-virtual {v3}, LW5/e;->cleanPrev()V

    .line 94
    .line 95
    .line 96
    iget-object v1, v2, Lkotlinx/coroutines/channels/BufferedChannel;->e:LH5/l;

    .line 97
    .line 98
    if-eqz v1, :cond_6

    .line 99
    .line 100
    const/4 v4, 0x2

    .line 101
    const/4 v5, 0x0

    .line 102
    invoke-static {v1, v0, v5, v4, v5}, Lkotlinx/coroutines/internal/OnUndeliveredElementKt;->callUndeliveredElementCatchingException$default(LH5/l;Ljava/lang/Object;Lkotlinx/coroutines/internal/UndeliveredElementException;ILjava/lang/Object;)Lkotlinx/coroutines/internal/UndeliveredElementException;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    if-nez v0, :cond_5

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_5
    throw v0

    .line 110
    :cond_6
    :goto_1
    move-object v0, v3

    .line 111
    goto :goto_0
.end method

.method public final e()Ljava/lang/Throwable;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getCloseCause()Ljava/lang/Throwable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lkotlinx/coroutines/channels/ClosedReceiveChannelException;

    .line 8
    .line 9
    const-string v1, "Channel was closed"

    .line 10
    .line 11
    invoke-direct {v0, v1}, Lkotlinx/coroutines/channels/ClosedReceiveChannelException;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-object v0
.end method

.method public final g(JZ)Z
    .locals 11

    .line 1
    const/16 v0, 0x3c

    .line 2
    .line 3
    shr-long v0, p1, v0

    .line 4
    .line 5
    long-to-int v0, v0

    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_13

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    if-eq v0, v2, :cond_13

    .line 11
    .line 12
    const/4 v3, 0x2

    .line 13
    const-wide v4, 0xfffffffffffffffL

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    if-eq v0, v3, :cond_11

    .line 19
    .line 20
    const/4 p3, 0x3

    .line 21
    if-ne v0, p3, :cond_10

    .line 22
    .line 23
    and-long/2addr p1, v4

    .line 24
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/channels/BufferedChannel;->b(J)LT5/k;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const/4 p2, 0x0

    .line 29
    invoke-static {p2, v2, p2}, LW5/k;->constructor-impl$default(Ljava/lang/Object;ILkotlin/jvm/internal/g;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p3

    .line 33
    :cond_0
    sget v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->b:I

    .line 34
    .line 35
    sub-int/2addr v0, v2

    .line 36
    :goto_0
    const/4 v3, -0x1

    .line 37
    if-ge v3, v0, :cond_b

    .line 38
    .line 39
    iget-wide v4, p1, LW5/D;->f:J

    .line 40
    .line 41
    sget v6, Lkotlinx/coroutines/channels/BufferedChannelKt;->b:I

    .line 42
    .line 43
    int-to-long v6, v6

    .line 44
    mul-long/2addr v4, v6

    .line 45
    int-to-long v6, v0

    .line 46
    add-long/2addr v4, v6

    .line 47
    :cond_1
    invoke-virtual {p1, v0}, LT5/k;->getState$kotlinx_coroutines_core(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getDONE_RCV$p()LW5/G;

    .line 52
    .line 53
    .line 54
    move-result-object v7

    .line 55
    if-eq v6, v7, :cond_c

    .line 56
    .line 57
    sget-object v7, Lkotlinx/coroutines/channels/BufferedChannelKt;->d:LW5/G;

    .line 58
    .line 59
    iget-object v8, p0, Lkotlinx/coroutines/channels/BufferedChannel;->e:LH5/l;

    .line 60
    .line 61
    if-ne v6, v7, :cond_3

    .line 62
    .line 63
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceiversCounter$kotlinx_coroutines_core()J

    .line 64
    .line 65
    .line 66
    move-result-wide v9

    .line 67
    cmp-long v7, v4, v9

    .line 68
    .line 69
    if-ltz v7, :cond_c

    .line 70
    .line 71
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->getCHANNEL_CLOSED()LW5/G;

    .line 72
    .line 73
    .line 74
    move-result-object v7

    .line 75
    invoke-virtual {p1, v0, v6, v7}, LT5/k;->casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v6

    .line 79
    if-eqz v6, :cond_1

    .line 80
    .line 81
    if-eqz v8, :cond_2

    .line 82
    .line 83
    invoke-virtual {p1, v0}, LT5/k;->getElement$kotlinx_coroutines_core(I)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    invoke-static {v8, v3, p2}, Lkotlinx/coroutines/internal/OnUndeliveredElementKt;->callUndeliveredElementCatchingException(LH5/l;Ljava/lang/Object;Lkotlinx/coroutines/internal/UndeliveredElementException;)Lkotlinx/coroutines/internal/UndeliveredElementException;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    :cond_2
    invoke-virtual {p1, v0}, LT5/k;->cleanElement$kotlinx_coroutines_core(I)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1}, LW5/D;->onSlotCleaned()V

    .line 95
    .line 96
    .line 97
    goto/16 :goto_4

    .line 98
    .line 99
    :cond_3
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getIN_BUFFER$p()LW5/G;

    .line 100
    .line 101
    .line 102
    move-result-object v7

    .line 103
    if-eq v6, v7, :cond_a

    .line 104
    .line 105
    if-nez v6, :cond_4

    .line 106
    .line 107
    goto :goto_3

    .line 108
    :cond_4
    instance-of v7, v6, LR5/S0;

    .line 109
    .line 110
    if-nez v7, :cond_7

    .line 111
    .line 112
    instance-of v7, v6, LT5/t;

    .line 113
    .line 114
    if-eqz v7, :cond_5

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_5
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getRESUMING_BY_EB$p()LW5/G;

    .line 118
    .line 119
    .line 120
    move-result-object v7

    .line 121
    if-eq v6, v7, :cond_c

    .line 122
    .line 123
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getRESUMING_BY_RCV$p()LW5/G;

    .line 124
    .line 125
    .line 126
    move-result-object v7

    .line 127
    if-ne v6, v7, :cond_6

    .line 128
    .line 129
    goto :goto_5

    .line 130
    :cond_6
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getRESUMING_BY_EB$p()LW5/G;

    .line 131
    .line 132
    .line 133
    move-result-object v7

    .line 134
    if-eq v6, v7, :cond_1

    .line 135
    .line 136
    goto :goto_4

    .line 137
    :cond_7
    :goto_1
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceiversCounter$kotlinx_coroutines_core()J

    .line 138
    .line 139
    .line 140
    move-result-wide v9

    .line 141
    cmp-long v7, v4, v9

    .line 142
    .line 143
    if-ltz v7, :cond_c

    .line 144
    .line 145
    instance-of v7, v6, LT5/t;

    .line 146
    .line 147
    if-eqz v7, :cond_8

    .line 148
    .line 149
    move-object v7, v6

    .line 150
    check-cast v7, LT5/t;

    .line 151
    .line 152
    iget-object v7, v7, LT5/t;->a:LR5/S0;

    .line 153
    .line 154
    goto :goto_2

    .line 155
    :cond_8
    move-object v7, v6

    .line 156
    check-cast v7, LR5/S0;

    .line 157
    .line 158
    :goto_2
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->getCHANNEL_CLOSED()LW5/G;

    .line 159
    .line 160
    .line 161
    move-result-object v9

    .line 162
    invoke-virtual {p1, v0, v6, v9}, LT5/k;->casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result v6

    .line 166
    if-eqz v6, :cond_1

    .line 167
    .line 168
    if-eqz v8, :cond_9

    .line 169
    .line 170
    invoke-virtual {p1, v0}, LT5/k;->getElement$kotlinx_coroutines_core(I)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v3

    .line 174
    invoke-static {v8, v3, p2}, Lkotlinx/coroutines/internal/OnUndeliveredElementKt;->callUndeliveredElementCatchingException(LH5/l;Ljava/lang/Object;Lkotlinx/coroutines/internal/UndeliveredElementException;)Lkotlinx/coroutines/internal/UndeliveredElementException;

    .line 175
    .line 176
    .line 177
    move-result-object p2

    .line 178
    :cond_9
    invoke-static {p3, v7}, LW5/k;->plus-FjFbRPM(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object p3

    .line 182
    invoke-virtual {p1, v0}, LT5/k;->cleanElement$kotlinx_coroutines_core(I)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p1}, LW5/D;->onSlotCleaned()V

    .line 186
    .line 187
    .line 188
    goto :goto_4

    .line 189
    :cond_a
    :goto_3
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->getCHANNEL_CLOSED()LW5/G;

    .line 190
    .line 191
    .line 192
    move-result-object v7

    .line 193
    invoke-virtual {p1, v0, v6, v7}, LT5/k;->casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result v6

    .line 197
    if-eqz v6, :cond_1

    .line 198
    .line 199
    invoke-virtual {p1}, LW5/D;->onSlotCleaned()V

    .line 200
    .line 201
    .line 202
    :goto_4
    add-int/lit8 v0, v0, -0x1

    .line 203
    .line 204
    goto/16 :goto_0

    .line 205
    .line 206
    :cond_b
    invoke-virtual {p1}, LW5/e;->getPrev()LW5/e;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    check-cast p1, LT5/k;

    .line 211
    .line 212
    if-nez p1, :cond_0

    .line 213
    .line 214
    :cond_c
    :goto_5
    if-eqz p3, :cond_e

    .line 215
    .line 216
    instance-of p1, p3, Ljava/util/ArrayList;

    .line 217
    .line 218
    if-nez p1, :cond_d

    .line 219
    .line 220
    check-cast p3, LR5/S0;

    .line 221
    .line 222
    invoke-virtual {p0, p3, v1}, Lkotlinx/coroutines/channels/BufferedChannel;->k(LR5/S0;Z)V

    .line 223
    .line 224
    .line 225
    goto :goto_7

    .line 226
    :cond_d
    const-string p1, "null cannot be cast to non-null type java.util.ArrayList<E of kotlinx.coroutines.internal.InlineList>{ kotlin.collections.TypeAliasesKt.ArrayList<E of kotlinx.coroutines.internal.InlineList> }"

    .line 227
    .line 228
    invoke-static {p3, p1}, Lkotlin/jvm/internal/j;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    check-cast p3, Ljava/util/ArrayList;

    .line 232
    .line 233
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 234
    .line 235
    .line 236
    move-result p1

    .line 237
    sub-int/2addr p1, v2

    .line 238
    :goto_6
    if-ge v3, p1, :cond_e

    .line 239
    .line 240
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    check-cast v0, LR5/S0;

    .line 245
    .line 246
    invoke-virtual {p0, v0, v1}, Lkotlinx/coroutines/channels/BufferedChannel;->k(LR5/S0;Z)V

    .line 247
    .line 248
    .line 249
    add-int/lit8 p1, p1, -0x1

    .line 250
    .line 251
    goto :goto_6

    .line 252
    :cond_e
    :goto_7
    if-nez p2, :cond_f

    .line 253
    .line 254
    goto :goto_8

    .line 255
    :cond_f
    throw p2

    .line 256
    :cond_10
    const-string p1, "unexpected close status: "

    .line 257
    .line 258
    invoke-static {v0, p1}, LA/i;->f(ILjava/lang/String;)Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object p1

    .line 262
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 263
    .line 264
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object p1

    .line 268
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    throw p2

    .line 272
    :cond_11
    and-long/2addr p1, v4

    .line 273
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/channels/BufferedChannel;->b(J)LT5/k;

    .line 274
    .line 275
    .line 276
    if-eqz p3, :cond_12

    .line 277
    .line 278
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->hasElements$kotlinx_coroutines_core()Z

    .line 279
    .line 280
    .line 281
    move-result p1

    .line 282
    if-nez p1, :cond_13

    .line 283
    .line 284
    :cond_12
    :goto_8
    return v2

    .line 285
    :cond_13
    return v1
.end method

.method public final getCloseCause()Ljava/lang/Throwable;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->s:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Throwable;

    .line 8
    .line 9
    return-object v0
.end method

.method public final getReceiversCounter$kotlinx_coroutines_core()J
    .locals 2

    .line 1
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->j:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public final getSendException()Ljava/lang/Throwable;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getCloseCause()Ljava/lang/Throwable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lkotlinx/coroutines/channels/ClosedSendChannelException;

    .line 8
    .line 9
    const-string v1, "Channel was closed"

    .line 10
    .line 11
    invoke-direct {v0, v1}, Lkotlinx/coroutines/channels/ClosedSendChannelException;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-object v0
.end method

.method public final getSendersCounter$kotlinx_coroutines_core()J
    .locals 4

    .line 1
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const-wide v2, 0xfffffffffffffffL

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    and-long/2addr v0, v2

    .line 13
    return-wide v0
.end method

.method public final h()Z
    .locals 4

    .line 1
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->m:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    cmp-long v2, v0, v2

    .line 10
    .line 11
    if-eqz v2, :cond_1

    .line 12
    .line 13
    const-wide v2, 0x7fffffffffffffffL

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    cmp-long v0, v0, v2

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    return v0

    .line 25
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 26
    return v0
.end method

.method public final hasElements$kotlinx_coroutines_core()Z
    .locals 10

    .line 1
    :cond_0
    :goto_0
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->q:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, LT5/k;

    .line 8
    .line 9
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceiversCounter$kotlinx_coroutines_core()J

    .line 10
    .line 11
    .line 12
    move-result-wide v4

    .line 13
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendersCounter$kotlinx_coroutines_core()J

    .line 14
    .line 15
    .line 16
    move-result-wide v2

    .line 17
    cmp-long v2, v2, v4

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    if-gtz v2, :cond_1

    .line 21
    .line 22
    return v3

    .line 23
    :cond_1
    sget v2, Lkotlinx/coroutines/channels/BufferedChannelKt;->b:I

    .line 24
    .line 25
    int-to-long v6, v2

    .line 26
    div-long v6, v4, v6

    .line 27
    .line 28
    iget-wide v8, v1, LW5/D;->f:J

    .line 29
    .line 30
    cmp-long v8, v8, v6

    .line 31
    .line 32
    if-eqz v8, :cond_2

    .line 33
    .line 34
    invoke-virtual {p0, v6, v7, v1}, Lkotlinx/coroutines/channels/BufferedChannel;->d(JLT5/k;)LT5/k;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    if-nez v1, :cond_2

    .line 39
    .line 40
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, LT5/k;

    .line 45
    .line 46
    iget-wide v0, v0, LW5/D;->f:J

    .line 47
    .line 48
    cmp-long v0, v0, v6

    .line 49
    .line 50
    if-gez v0, :cond_0

    .line 51
    .line 52
    return v3

    .line 53
    :cond_2
    invoke-virtual {v1}, LW5/e;->cleanPrev()V

    .line 54
    .line 55
    .line 56
    int-to-long v2, v2

    .line 57
    rem-long v2, v4, v2

    .line 58
    .line 59
    long-to-int v0, v2

    .line 60
    :cond_3
    invoke-virtual {v1, v0}, LT5/k;->getState$kotlinx_coroutines_core(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    if-eqz v2, :cond_c

    .line 65
    .line 66
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getIN_BUFFER$p()LW5/G;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    if-ne v2, v3, :cond_4

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_4
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->d:LW5/G;

    .line 74
    .line 75
    if-ne v2, v0, :cond_5

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_5
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getINTERRUPTED_SEND$p()LW5/G;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    if-ne v2, v0, :cond_6

    .line 83
    .line 84
    goto :goto_3

    .line 85
    :cond_6
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->getCHANNEL_CLOSED()LW5/G;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    if-ne v2, v0, :cond_7

    .line 90
    .line 91
    goto :goto_3

    .line 92
    :cond_7
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getDONE_RCV$p()LW5/G;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    if-ne v2, v0, :cond_8

    .line 97
    .line 98
    goto :goto_3

    .line 99
    :cond_8
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getPOISONED$p()LW5/G;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    if-ne v2, v0, :cond_9

    .line 104
    .line 105
    goto :goto_3

    .line 106
    :cond_9
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getRESUMING_BY_EB$p()LW5/G;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    if-ne v2, v0, :cond_a

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_a
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getRESUMING_BY_RCV$p()LW5/G;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    if-ne v2, v0, :cond_b

    .line 118
    .line 119
    goto :goto_3

    .line 120
    :cond_b
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceiversCounter$kotlinx_coroutines_core()J

    .line 121
    .line 122
    .line 123
    move-result-wide v0

    .line 124
    cmp-long v0, v4, v0

    .line 125
    .line 126
    if-nez v0, :cond_d

    .line 127
    .line 128
    :goto_1
    const/4 v0, 0x1

    .line 129
    return v0

    .line 130
    :cond_c
    :goto_2
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getPOISONED$p()LW5/G;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    invoke-virtual {v1, v0, v2, v3}, LT5/k;->casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    if-eqz v2, :cond_3

    .line 139
    .line 140
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->c()V

    .line 141
    .line 142
    .line 143
    :cond_d
    :goto_3
    const-wide/16 v0, 0x1

    .line 144
    .line 145
    add-long v6, v4, v0

    .line 146
    .line 147
    sget-object v2, Lkotlinx/coroutines/channels/BufferedChannel;->j:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 148
    .line 149
    move-object v3, p0

    .line 150
    invoke-virtual/range {v2 .. v7}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    .line 151
    .line 152
    .line 153
    goto/16 :goto_0
.end method

.method public final i(JLT5/k;)V
    .locals 4

    .line 1
    :goto_0
    iget-wide v0, p3, LW5/D;->f:J

    .line 2
    .line 3
    cmp-long v0, v0, p1

    .line 4
    .line 5
    if-gez v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p3}, LW5/e;->getNext()LW5/e;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, LT5/k;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    move-object p3, v0

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    :goto_1
    invoke-virtual {p3}, LW5/D;->isRemoved()Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_3

    .line 23
    .line 24
    invoke-virtual {p3}, LW5/e;->getNext()LW5/e;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, LT5/k;

    .line 29
    .line 30
    if-nez p1, :cond_2

    .line 31
    .line 32
    goto :goto_2

    .line 33
    :cond_2
    move-object p3, p1

    .line 34
    goto :goto_1

    .line 35
    :cond_3
    :goto_2
    sget-object p1, Lkotlinx/coroutines/channels/BufferedChannel;->r:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 36
    .line 37
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    check-cast p2, LW5/D;

    .line 42
    .line 43
    iget-wide v0, p2, LW5/D;->f:J

    .line 44
    .line 45
    iget-wide v2, p3, LW5/D;->f:J

    .line 46
    .line 47
    cmp-long v0, v0, v2

    .line 48
    .line 49
    if-ltz v0, :cond_4

    .line 50
    .line 51
    goto :goto_3

    .line 52
    :cond_4
    invoke-virtual {p3}, LW5/D;->tryIncPointers$kotlinx_coroutines_core()Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-nez v0, :cond_5

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_5
    invoke-virtual {p1, p0, p2, p3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_7

    .line 64
    .line 65
    invoke-virtual {p2}, LW5/D;->decPointers$kotlinx_coroutines_core()Z

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    if-eqz p1, :cond_6

    .line 70
    .line 71
    invoke-virtual {p2}, LW5/e;->remove()V

    .line 72
    .line 73
    .line 74
    :cond_6
    :goto_3
    return-void

    .line 75
    :cond_7
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    if-eq v0, p2, :cond_5

    .line 80
    .line 81
    invoke-virtual {p3}, LW5/D;->decPointers$kotlinx_coroutines_core()Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-eqz p1, :cond_3

    .line 86
    .line 87
    invoke-virtual {p3}, LW5/e;->remove()V

    .line 88
    .line 89
    .line 90
    goto :goto_2
.end method

.method public invokeOnClose(LH5/l;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LH5/l;",
            ")V"
        }
    .end annotation

    .line 1
    :cond_0
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->t:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, p0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    return-void

    .line 11
    :cond_1
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    :goto_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getCLOSE_HANDLER_CLOSED$p()LW5/G;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    if-ne v1, v2, :cond_4

    .line 26
    .line 27
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getCLOSE_HANDLER_CLOSED$p()LW5/G;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getCLOSE_HANDLER_INVOKED$p()LW5/G;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    :cond_2
    invoke-virtual {v0, p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_3

    .line 40
    .line 41
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getCloseCause()Ljava/lang/Throwable;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-interface {p1, v0}, LH5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_3
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    if-eq v1, v2, :cond_2

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_4
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getCLOSE_HANDLER_INVOKED$p()LW5/G;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    if-ne v1, p1, :cond_5

    .line 61
    .line 62
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 63
    .line 64
    const-string v0, "Another handler was already registered and successfully invoked"

    .line 65
    .line 66
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw p1

    .line 70
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 71
    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    const-string v2, "Another handler is already registered: "

    .line 75
    .line 76
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw p1
.end method

.method public isClosedForReceive()Z
    .locals 3

    .line 1
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-virtual {p0, v0, v1, v2}, Lkotlinx/coroutines/channels/BufferedChannel;->g(JZ)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    return v0
.end method

.method public isClosedForSend()Z
    .locals 3

    .line 1
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {p0, v0, v1, v2}, Lkotlinx/coroutines/channels/BufferedChannel;->g(JZ)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    return v0
.end method

.method public isConflatedDropOldest()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public iterator()LT5/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LT5/e;"
        }
    .end annotation

    .line 1
    new-instance v0, LT5/a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, LT5/a;-><init>(Lkotlinx/coroutines/channels/BufferedChannel;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final j(Ljava/lang/Object;Ly5/c;)Ljava/lang/Object;
    .locals 4

    .line 1
    new-instance v0, LR5/n;

    .line 2
    .line 3
    invoke-static {p2}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt;->intercepted(Ly5/c;)Ly5/c;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-direct {v0, v1, v2}, LR5/n;-><init>(Ly5/c;I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, LR5/n;->initCancellability()V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lkotlinx/coroutines/channels/BufferedChannel;->e:LH5/l;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    const/4 v2, 0x2

    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-static {v1, p1, v3, v2, v3}, Lkotlinx/coroutines/internal/OnUndeliveredElementKt;->callUndeliveredElementCatchingException$default(LH5/l;Ljava/lang/Object;Lkotlinx/coroutines/internal/UndeliveredElementException;ILjava/lang/Object;)Lkotlinx/coroutines/internal/UndeliveredElementException;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendException()Ljava/lang/Throwable;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-static {p1, v1}, Lu5/a;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 31
    .line 32
    .line 33
    sget v1, Lkotlin/Result;->b:I

    .line 34
    .line 35
    invoke-static {p1}, Lkotlin/b;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-interface {v0, p1}, Ly5/c;->resumeWith(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendException()Ljava/lang/Throwable;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    sget v1, Lkotlin/Result;->b:I

    .line 52
    .line 53
    invoke-static {p1}, Lkotlin/b;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-interface {v0, p1}, Ly5/c;->resumeWith(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    :goto_0
    invoke-virtual {v0}, LR5/n;->getResult()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-static {}, Lz5/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    if-ne p1, v0, :cond_1

    .line 73
    .line 74
    invoke-static {p2}, LA5/f;->probeCoroutineSuspended(Ly5/c;)V

    .line 75
    .line 76
    .line 77
    :cond_1
    invoke-static {}, Lz5/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    if-ne p1, p2, :cond_2

    .line 82
    .line 83
    return-object p1

    .line 84
    :cond_2
    sget-object p1, Lu5/j;->a:Lu5/j;

    .line 85
    .line 86
    return-object p1
.end method

.method public final k(LR5/S0;Z)V
    .locals 2

    .line 1
    instance-of v0, p1, LR5/m;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    check-cast p1, Ly5/c;

    .line 6
    .line 7
    sget v0, Lkotlin/Result;->b:I

    .line 8
    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->e()Ljava/lang/Throwable;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendException()Ljava/lang/Throwable;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    :goto_0
    invoke-static {p2}, Lkotlin/b;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-interface {p1, p2}, Ly5/c;->resumeWith(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    instance-of p2, p1, LT5/a;

    .line 33
    .line 34
    if-eqz p2, :cond_2

    .line 35
    .line 36
    check-cast p1, LT5/a;

    .line 37
    .line 38
    invoke-virtual {p1}, LT5/a;->tryResumeHasNextOnClosedChannel()V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_2
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 43
    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string v1, "Unexpected waiter: "

    .line 47
    .line 48
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw p2
.end method

.method public final l(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, LT5/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.channels.BufferedChannel.BufferedChannelIterator<E of kotlinx.coroutines.channels.BufferedChannel>"

    .line 6
    .line 7
    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    check-cast p1, LT5/a;

    .line 11
    .line 12
    invoke-virtual {p1, p2}, LT5/a;->tryResumeHasNext(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    return p1

    .line 17
    :cond_0
    instance-of v0, p1, LR5/m;

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuation<E of kotlinx.coroutines.channels.BufferedChannel>"

    .line 22
    .line 23
    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    check-cast p1, LR5/m;

    .line 27
    .line 28
    iget-object v0, p0, Lkotlinx/coroutines/channels/BufferedChannel;->e:LH5/l;

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    invoke-interface {p1}, Ly5/c;->getContext()Ly5/k;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-static {v0, p2, v1}, Lkotlinx/coroutines/internal/OnUndeliveredElementKt;->bindCancellationFun(LH5/l;Ljava/lang/Object;Ly5/k;)LH5/l;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const/4 v0, 0x0

    .line 42
    :goto_0
    invoke-static {p1, p2, v0}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$tryResume0(LR5/m;Ljava/lang/Object;LH5/l;)Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    return p1

    .line 47
    :cond_2
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 48
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string v1, "Unexpected receiver type: "

    .line 52
    .line 53
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw p2
.end method

.method public final n(LT5/k;IJLjava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-virtual {p1, p2}, LT5/k;->getState$kotlinx_coroutines_core(I)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-wide v1, 0xfffffffffffffffL

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    sget-object v3, Lkotlinx/coroutines/channels/BufferedChannel;->f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 15
    .line 16
    .line 17
    move-result-wide v4

    .line 18
    and-long/2addr v4, v1

    .line 19
    cmp-long v4, p3, v4

    .line 20
    .line 21
    if-ltz v4, :cond_2

    .line 22
    .line 23
    if-nez p5, :cond_0

    .line 24
    .line 25
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getSUSPEND_NO_WAITER$p()LW5/G;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    return-object p1

    .line 30
    :cond_0
    invoke-virtual {p1, p2, v0, p5}, LT5/k;->casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->c()V

    .line 37
    .line 38
    .line 39
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getSUSPEND$p()LW5/G;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    return-object p1

    .line 44
    :cond_1
    sget-object v4, Lkotlinx/coroutines/channels/BufferedChannelKt;->d:LW5/G;

    .line 45
    .line 46
    if-ne v0, v4, :cond_2

    .line 47
    .line 48
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getDONE_RCV$p()LW5/G;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    invoke-virtual {p1, p2, v0, v4}, LT5/k;->casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->c()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, p2}, LT5/k;->retrieveElement$kotlinx_coroutines_core(I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    return-object p1

    .line 66
    :cond_2
    invoke-virtual {p1, p2}, LT5/k;->getState$kotlinx_coroutines_core(I)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    if-eqz v0, :cond_b

    .line 71
    .line 72
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getIN_BUFFER$p()LW5/G;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    if-ne v0, v4, :cond_3

    .line 77
    .line 78
    goto/16 :goto_0

    .line 79
    .line 80
    :cond_3
    sget-object v4, Lkotlinx/coroutines/channels/BufferedChannelKt;->d:LW5/G;

    .line 81
    .line 82
    if-ne v0, v4, :cond_4

    .line 83
    .line 84
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getDONE_RCV$p()LW5/G;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    invoke-virtual {p1, p2, v0, v4}, LT5/k;->casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-eqz v0, :cond_2

    .line 93
    .line 94
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->c()V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, p2}, LT5/k;->retrieveElement$kotlinx_coroutines_core(I)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    return-object p1

    .line 102
    :cond_4
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getINTERRUPTED_SEND$p()LW5/G;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    if-ne v0, v4, :cond_5

    .line 107
    .line 108
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getFAILED$p()LW5/G;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    return-object p1

    .line 113
    :cond_5
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getPOISONED$p()LW5/G;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    if-ne v0, v4, :cond_6

    .line 118
    .line 119
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getFAILED$p()LW5/G;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    return-object p1

    .line 124
    :cond_6
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->getCHANNEL_CLOSED()LW5/G;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    if-ne v0, v4, :cond_7

    .line 129
    .line 130
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->c()V

    .line 131
    .line 132
    .line 133
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getFAILED$p()LW5/G;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    return-object p1

    .line 138
    :cond_7
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getRESUMING_BY_EB$p()LW5/G;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    if-eq v0, v4, :cond_2

    .line 143
    .line 144
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getRESUMING_BY_RCV$p()LW5/G;

    .line 145
    .line 146
    .line 147
    move-result-object v4

    .line 148
    invoke-virtual {p1, p2, v0, v4}, LT5/k;->casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result v4

    .line 152
    if-eqz v4, :cond_2

    .line 153
    .line 154
    instance-of p3, v0, LT5/t;

    .line 155
    .line 156
    if-eqz p3, :cond_8

    .line 157
    .line 158
    check-cast v0, LT5/t;

    .line 159
    .line 160
    iget-object v0, v0, LT5/t;->a:LR5/S0;

    .line 161
    .line 162
    :cond_8
    invoke-static {v0}, Lkotlinx/coroutines/channels/BufferedChannel;->m(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result p4

    .line 166
    if-eqz p4, :cond_9

    .line 167
    .line 168
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getDONE_RCV$p()LW5/G;

    .line 169
    .line 170
    .line 171
    move-result-object p3

    .line 172
    invoke-virtual {p1, p2, p3}, LT5/k;->setState$kotlinx_coroutines_core(ILjava/lang/Object;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->c()V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p1, p2}, LT5/k;->retrieveElement$kotlinx_coroutines_core(I)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    return-object p1

    .line 183
    :cond_9
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getINTERRUPTED_SEND$p()LW5/G;

    .line 184
    .line 185
    .line 186
    move-result-object p4

    .line 187
    invoke-virtual {p1, p2, p4}, LT5/k;->setState$kotlinx_coroutines_core(ILjava/lang/Object;)V

    .line 188
    .line 189
    .line 190
    const/4 p4, 0x0

    .line 191
    invoke-virtual {p1, p2, p4}, LT5/k;->onCancelledRequest(IZ)V

    .line 192
    .line 193
    .line 194
    if-eqz p3, :cond_a

    .line 195
    .line 196
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->c()V

    .line 197
    .line 198
    .line 199
    :cond_a
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getFAILED$p()LW5/G;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    return-object p1

    .line 204
    :cond_b
    :goto_0
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 205
    .line 206
    .line 207
    move-result-wide v4

    .line 208
    and-long/2addr v4, v1

    .line 209
    cmp-long v4, p3, v4

    .line 210
    .line 211
    if-gez v4, :cond_c

    .line 212
    .line 213
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getPOISONED$p()LW5/G;

    .line 214
    .line 215
    .line 216
    move-result-object v4

    .line 217
    invoke-virtual {p1, p2, v0, v4}, LT5/k;->casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    move-result v0

    .line 221
    if-eqz v0, :cond_2

    .line 222
    .line 223
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->c()V

    .line 224
    .line 225
    .line 226
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getFAILED$p()LW5/G;

    .line 227
    .line 228
    .line 229
    move-result-object p1

    .line 230
    return-object p1

    .line 231
    :cond_c
    if-nez p5, :cond_d

    .line 232
    .line 233
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getSUSPEND_NO_WAITER$p()LW5/G;

    .line 234
    .line 235
    .line 236
    move-result-object p1

    .line 237
    return-object p1

    .line 238
    :cond_d
    invoke-virtual {p1, p2, v0, p5}, LT5/k;->casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    move-result v0

    .line 242
    if-eqz v0, :cond_2

    .line 243
    .line 244
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->c()V

    .line 245
    .line 246
    .line 247
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getSUSPEND$p()LW5/G;

    .line 248
    .line 249
    .line 250
    move-result-object p1

    .line 251
    return-object p1
.end method

.method public final o(LT5/k;ILjava/lang/Object;JLjava/lang/Object;Z)I
    .locals 5

    .line 1
    :cond_0
    invoke-virtual {p1, p2}, LT5/k;->getState$kotlinx_coroutines_core(I)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x4

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x1

    .line 8
    if-nez v0, :cond_4

    .line 9
    .line 10
    invoke-virtual {p0, p4, p5}, Lkotlinx/coroutines/channels/BufferedChannel;->a(J)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v4, 0x0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    if-nez p7, :cond_1

    .line 18
    .line 19
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->d:LW5/G;

    .line 20
    .line 21
    invoke-virtual {p1, p2, v4, v0}, LT5/k;->casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    if-eqz p7, :cond_2

    .line 29
    .line 30
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getINTERRUPTED_SEND$p()LW5/G;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {p1, p2, v4, v0}, LT5/k;->casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    invoke-virtual {p1, p2, v2}, LT5/k;->onCancelledRequest(IZ)V

    .line 41
    .line 42
    .line 43
    return v1

    .line 44
    :cond_2
    if-nez p6, :cond_3

    .line 45
    .line 46
    const/4 p1, 0x3

    .line 47
    return p1

    .line 48
    :cond_3
    invoke-virtual {p1, p2, v4, p6}, LT5/k;->casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_0

    .line 53
    .line 54
    const/4 p1, 0x2

    .line 55
    return p1

    .line 56
    :cond_4
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getIN_BUFFER$p()LW5/G;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    if-ne v0, v4, :cond_5

    .line 61
    .line 62
    sget-object v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->d:LW5/G;

    .line 63
    .line 64
    invoke-virtual {p1, p2, v0, v1}, LT5/k;->casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_0

    .line 69
    .line 70
    :goto_0
    return v3

    .line 71
    :cond_5
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getINTERRUPTED_RCV$p()LW5/G;

    .line 72
    .line 73
    .line 74
    move-result-object p4

    .line 75
    const/4 p5, 0x5

    .line 76
    if-ne v0, p4, :cond_6

    .line 77
    .line 78
    invoke-virtual {p1, p2}, LT5/k;->cleanElement$kotlinx_coroutines_core(I)V

    .line 79
    .line 80
    .line 81
    return p5

    .line 82
    :cond_6
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getPOISONED$p()LW5/G;

    .line 83
    .line 84
    .line 85
    move-result-object p4

    .line 86
    if-ne v0, p4, :cond_7

    .line 87
    .line 88
    invoke-virtual {p1, p2}, LT5/k;->cleanElement$kotlinx_coroutines_core(I)V

    .line 89
    .line 90
    .line 91
    return p5

    .line 92
    :cond_7
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->getCHANNEL_CLOSED()LW5/G;

    .line 93
    .line 94
    .line 95
    move-result-object p4

    .line 96
    if-ne v0, p4, :cond_8

    .line 97
    .line 98
    invoke-virtual {p1, p2}, LT5/k;->cleanElement$kotlinx_coroutines_core(I)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->isClosedForSend()Z

    .line 102
    .line 103
    .line 104
    return v1

    .line 105
    :cond_8
    invoke-virtual {p1, p2}, LT5/k;->cleanElement$kotlinx_coroutines_core(I)V

    .line 106
    .line 107
    .line 108
    instance-of p4, v0, LT5/t;

    .line 109
    .line 110
    if-eqz p4, :cond_9

    .line 111
    .line 112
    check-cast v0, LT5/t;

    .line 113
    .line 114
    iget-object v0, v0, LT5/t;->a:LR5/S0;

    .line 115
    .line 116
    :cond_9
    invoke-virtual {p0, v0, p3}, Lkotlinx/coroutines/channels/BufferedChannel;->l(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result p3

    .line 120
    if-eqz p3, :cond_a

    .line 121
    .line 122
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getDONE_RCV$p()LW5/G;

    .line 123
    .line 124
    .line 125
    move-result-object p3

    .line 126
    invoke-virtual {p1, p2, p3}, LT5/k;->setState$kotlinx_coroutines_core(ILjava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->onReceiveDequeued()V

    .line 130
    .line 131
    .line 132
    return v2

    .line 133
    :cond_a
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getINTERRUPTED_RCV$p()LW5/G;

    .line 134
    .line 135
    .line 136
    move-result-object p3

    .line 137
    invoke-virtual {p1, p2, p3}, LT5/k;->getAndSetState$kotlinx_coroutines_core(ILjava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object p3

    .line 141
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getINTERRUPTED_RCV$p()LW5/G;

    .line 142
    .line 143
    .line 144
    move-result-object p4

    .line 145
    if-eq p3, p4, :cond_b

    .line 146
    .line 147
    invoke-virtual {p1, p2, v3}, LT5/k;->onCancelledRequest(IZ)V

    .line 148
    .line 149
    .line 150
    :cond_b
    return p5
.end method

.method public onClosedIdempotent()V
    .locals 0

    return-void
.end method

.method public onReceiveDequeued()V
    .locals 0

    return-void
.end method

.method public onReceiveEnqueued()V
    .locals 0

    return-void
.end method

.method public receive(Ly5/c;)Ljava/lang/Object;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly5/c;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->access$getReceiveSegment$FU$p()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, LT5/k;

    .line 10
    .line 11
    :goto_0
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->isClosedForReceive()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-nez v2, :cond_14

    .line 16
    .line 17
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->access$getReceivers$FU$p()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    .line 22
    .line 23
    .line 24
    move-result-wide v4

    .line 25
    sget v2, Lkotlinx/coroutines/channels/BufferedChannelKt;->b:I

    .line 26
    .line 27
    int-to-long v2, v2

    .line 28
    div-long v6, v4, v2

    .line 29
    .line 30
    rem-long v2, v4, v2

    .line 31
    .line 32
    long-to-int v3, v2

    .line 33
    iget-wide v8, v0, LW5/D;->f:J

    .line 34
    .line 35
    cmp-long v2, v8, v6

    .line 36
    .line 37
    if-eqz v2, :cond_0

    .line 38
    .line 39
    invoke-static {p0, v6, v7, v0}, Lkotlinx/coroutines/channels/BufferedChannel;->access$findSegmentReceive(Lkotlinx/coroutines/channels/BufferedChannel;JLT5/k;)LT5/k;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    if-nez v2, :cond_1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    move-object v2, v0

    .line 47
    :cond_1
    const/4 v6, 0x0

    .line 48
    move-object v1, p0

    .line 49
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/channels/BufferedChannel;->access$updateCellReceive(Lkotlinx/coroutines/channels/BufferedChannel;LT5/k;IJLjava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getSUSPEND$p()LW5/G;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    const-string v7, "unexpected"

    .line 58
    .line 59
    if-eq v0, v1, :cond_13

    .line 60
    .line 61
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getFAILED$p()LW5/G;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    if-ne v0, v1, :cond_3

    .line 66
    .line 67
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendersCounter$kotlinx_coroutines_core()J

    .line 68
    .line 69
    .line 70
    move-result-wide v0

    .line 71
    cmp-long v0, v4, v0

    .line 72
    .line 73
    if-gez v0, :cond_2

    .line 74
    .line 75
    invoke-virtual {v2}, LW5/e;->cleanPrev()V

    .line 76
    .line 77
    .line 78
    :cond_2
    move-object v0, v2

    .line 79
    goto :goto_0

    .line 80
    :cond_3
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getSUSPEND_NO_WAITER$p()LW5/G;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    if-ne v0, v1, :cond_12

    .line 85
    .line 86
    invoke-static {p1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt;->intercepted(Ly5/c;)Ly5/c;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-static {v0}, LR5/p;->getOrCreateCancellableContinuation(Ly5/c;)LR5/n;

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    move-object v1, p0

    .line 95
    :try_start_0
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/channels/BufferedChannel;->access$updateCellReceive(Lkotlinx/coroutines/channels/BufferedChannel;LT5/k;IJLjava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getSUSPEND$p()LW5/G;

    .line 100
    .line 101
    .line 102
    move-result-object v8

    .line 103
    if-ne v0, v8, :cond_4

    .line 104
    .line 105
    invoke-static {p0, v6, v2, v3}, Lkotlinx/coroutines/channels/BufferedChannel;->access$prepareReceiverForSuspension(Lkotlinx/coroutines/channels/BufferedChannel;LR5/S0;LT5/k;I)V

    .line 106
    .line 107
    .line 108
    goto/16 :goto_5

    .line 109
    .line 110
    :catchall_0
    move-exception v0

    .line 111
    goto/16 :goto_6

    .line 112
    .line 113
    :cond_4
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getFAILED$p()LW5/G;

    .line 114
    .line 115
    .line 116
    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    iget-object v8, p0, Lkotlinx/coroutines/channels/BufferedChannel;->e:LH5/l;

    .line 118
    .line 119
    const/4 v9, 0x0

    .line 120
    if-ne v0, v3, :cond_f

    .line 121
    .line 122
    :try_start_1
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendersCounter$kotlinx_coroutines_core()J

    .line 123
    .line 124
    .line 125
    move-result-wide v10

    .line 126
    cmp-long v0, v4, v10

    .line 127
    .line 128
    if-gez v0, :cond_5

    .line 129
    .line 130
    invoke-virtual {v2}, LW5/e;->cleanPrev()V

    .line 131
    .line 132
    .line 133
    :cond_5
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->access$getReceiveSegment$FU$p()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    check-cast v0, LT5/k;

    .line 142
    .line 143
    :goto_1
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->isClosedForReceive()Z

    .line 144
    .line 145
    .line 146
    move-result v2

    .line 147
    if-eqz v2, :cond_6

    .line 148
    .line 149
    invoke-static {p0, v6}, Lkotlinx/coroutines/channels/BufferedChannel;->access$onClosedReceiveOnNoWaiterSuspend(Lkotlinx/coroutines/channels/BufferedChannel;LR5/m;)V

    .line 150
    .line 151
    .line 152
    goto/16 :goto_5

    .line 153
    .line 154
    :cond_6
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->access$getReceivers$FU$p()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    .line 159
    .line 160
    .line 161
    move-result-wide v4

    .line 162
    sget v2, Lkotlinx/coroutines/channels/BufferedChannelKt;->b:I

    .line 163
    .line 164
    int-to-long v2, v2

    .line 165
    div-long v10, v4, v2

    .line 166
    .line 167
    rem-long v2, v4, v2

    .line 168
    .line 169
    long-to-int v3, v2

    .line 170
    iget-wide v12, v0, LW5/D;->f:J

    .line 171
    .line 172
    cmp-long v2, v12, v10

    .line 173
    .line 174
    if-eqz v2, :cond_8

    .line 175
    .line 176
    invoke-static {p0, v10, v11, v0}, Lkotlinx/coroutines/channels/BufferedChannel;->access$findSegmentReceive(Lkotlinx/coroutines/channels/BufferedChannel;JLT5/k;)LT5/k;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    if-nez v2, :cond_7

    .line 181
    .line 182
    goto :goto_1

    .line 183
    :cond_7
    :goto_2
    move-object v1, p0

    .line 184
    goto :goto_3

    .line 185
    :cond_8
    move-object v2, v0

    .line 186
    goto :goto_2

    .line 187
    :goto_3
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/channels/BufferedChannel;->access$updateCellReceive(Lkotlinx/coroutines/channels/BufferedChannel;LT5/k;IJLjava/lang/Object;)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getSUSPEND$p()LW5/G;

    .line 192
    .line 193
    .line 194
    move-result-object v10

    .line 195
    if-ne v0, v10, :cond_a

    .line 196
    .line 197
    instance-of v0, v6, LR5/S0;

    .line 198
    .line 199
    if-eqz v0, :cond_9

    .line 200
    .line 201
    move-object v9, v6

    .line 202
    :cond_9
    if-eqz v9, :cond_10

    .line 203
    .line 204
    invoke-static {p0, v9, v2, v3}, Lkotlinx/coroutines/channels/BufferedChannel;->access$prepareReceiverForSuspension(Lkotlinx/coroutines/channels/BufferedChannel;LR5/S0;LT5/k;I)V

    .line 205
    .line 206
    .line 207
    goto :goto_5

    .line 208
    :cond_a
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getFAILED$p()LW5/G;

    .line 209
    .line 210
    .line 211
    move-result-object v3

    .line 212
    if-ne v0, v3, :cond_c

    .line 213
    .line 214
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendersCounter$kotlinx_coroutines_core()J

    .line 215
    .line 216
    .line 217
    move-result-wide v10

    .line 218
    cmp-long v0, v4, v10

    .line 219
    .line 220
    if-gez v0, :cond_b

    .line 221
    .line 222
    invoke-virtual {v2}, LW5/e;->cleanPrev()V

    .line 223
    .line 224
    .line 225
    :cond_b
    move-object v0, v2

    .line 226
    goto :goto_1

    .line 227
    :cond_c
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getSUSPEND_NO_WAITER$p()LW5/G;

    .line 228
    .line 229
    .line 230
    move-result-object v3

    .line 231
    if-eq v0, v3, :cond_e

    .line 232
    .line 233
    invoke-virtual {v2}, LW5/e;->cleanPrev()V

    .line 234
    .line 235
    .line 236
    if-eqz v8, :cond_d

    .line 237
    .line 238
    invoke-virtual {v6}, LR5/n;->getContext()Ly5/k;

    .line 239
    .line 240
    .line 241
    move-result-object v2

    .line 242
    invoke-static {v8, v0, v2}, Lkotlinx/coroutines/internal/OnUndeliveredElementKt;->bindCancellationFun(LH5/l;Ljava/lang/Object;Ly5/k;)LH5/l;

    .line 243
    .line 244
    .line 245
    move-result-object v9

    .line 246
    :cond_d
    :goto_4
    invoke-virtual {v6, v0, v9}, LR5/n;->resume(Ljava/lang/Object;LH5/l;)V

    .line 247
    .line 248
    .line 249
    goto :goto_5

    .line 250
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 251
    .line 252
    invoke-direct {v0, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    throw v0

    .line 256
    :cond_f
    invoke-virtual {v2}, LW5/e;->cleanPrev()V

    .line 257
    .line 258
    .line 259
    if-eqz v8, :cond_d

    .line 260
    .line 261
    invoke-virtual {v6}, LR5/n;->getContext()Ly5/k;

    .line 262
    .line 263
    .line 264
    move-result-object v2

    .line 265
    invoke-static {v8, v0, v2}, Lkotlinx/coroutines/internal/OnUndeliveredElementKt;->bindCancellationFun(LH5/l;Ljava/lang/Object;Ly5/k;)LH5/l;

    .line 266
    .line 267
    .line 268
    move-result-object v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 269
    goto :goto_4

    .line 270
    :cond_10
    :goto_5
    invoke-virtual {v6}, LR5/n;->getResult()Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    invoke-static {}, Lz5/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object v2

    .line 278
    if-ne v0, v2, :cond_11

    .line 279
    .line 280
    invoke-static {p1}, LA5/f;->probeCoroutineSuspended(Ly5/c;)V

    .line 281
    .line 282
    .line 283
    :cond_11
    return-object v0

    .line 284
    :goto_6
    invoke-virtual {v6}, LR5/n;->releaseClaimedReusableContinuation$kotlinx_coroutines_core()V

    .line 285
    .line 286
    .line 287
    throw v0

    .line 288
    :cond_12
    invoke-virtual {v2}, LW5/e;->cleanPrev()V

    .line 289
    .line 290
    .line 291
    return-object v0

    .line 292
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 293
    .line 294
    invoke-direct {v0, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    throw v0

    .line 298
    :cond_14
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->e()Ljava/lang/Throwable;

    .line 299
    .line 300
    .line 301
    move-result-object v0

    .line 302
    invoke-static {v0}, LW5/F;->recoverStackTrace(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 303
    .line 304
    .line 305
    move-result-object v0

    .line 306
    throw v0
.end method

.method public send(Ljava/lang/Object;Ly5/c;)Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ly5/c;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->access$getSendSegment$FU$p()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, LT5/k;

    .line 12
    .line 13
    :cond_0
    :goto_0
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->access$getSendersAndCloseStatus$FU$p()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    .line 18
    .line 19
    .line 20
    move-result-wide v2

    .line 21
    const-wide v9, 0xfffffffffffffffL

    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    and-long v5, v2, v9

    .line 27
    .line 28
    invoke-static {v1, v2, v3}, Lkotlinx/coroutines/channels/BufferedChannel;->access$isClosedForSend0(Lkotlinx/coroutines/channels/BufferedChannel;J)Z

    .line 29
    .line 30
    .line 31
    move-result v8

    .line 32
    sget v2, Lkotlinx/coroutines/channels/BufferedChannelKt;->b:I

    .line 33
    .line 34
    int-to-long v2, v2

    .line 35
    div-long v11, v5, v2

    .line 36
    .line 37
    rem-long v2, v5, v2

    .line 38
    .line 39
    long-to-int v3, v2

    .line 40
    iget-wide v13, v0, LW5/D;->f:J

    .line 41
    .line 42
    cmp-long v2, v13, v11

    .line 43
    .line 44
    sget-object v13, Lu5/j;->a:Lu5/j;

    .line 45
    .line 46
    if-eqz v2, :cond_1

    .line 47
    .line 48
    invoke-static {v1, v11, v12, v0}, Lkotlinx/coroutines/channels/BufferedChannel;->access$findSegmentSend(Lkotlinx/coroutines/channels/BufferedChannel;JLT5/k;)LT5/k;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    if-nez v2, :cond_2

    .line 53
    .line 54
    if-eqz v8, :cond_0

    .line 55
    .line 56
    invoke-virtual/range {p0 .. p2}, Lkotlinx/coroutines/channels/BufferedChannel;->j(Ljava/lang/Object;Ly5/c;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-static {}, Lz5/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    if-ne v0, v2, :cond_1d

    .line 65
    .line 66
    return-object v0

    .line 67
    :cond_1
    move-object v2, v0

    .line 68
    :cond_2
    const/4 v7, 0x0

    .line 69
    move-object/from16 v4, p1

    .line 70
    .line 71
    invoke-static/range {v1 .. v8}, Lkotlinx/coroutines/channels/BufferedChannel;->access$updateCellSend(Lkotlinx/coroutines/channels/BufferedChannel;LT5/k;ILjava/lang/Object;JLjava/lang/Object;Z)I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_1e

    .line 76
    .line 77
    const/4 v11, 0x1

    .line 78
    if-eq v0, v11, :cond_6

    .line 79
    .line 80
    const/4 v12, 0x2

    .line 81
    if-eq v0, v12, :cond_1c

    .line 82
    .line 83
    const/4 v14, 0x5

    .line 84
    const/4 v15, 0x4

    .line 85
    const/4 v1, 0x3

    .line 86
    if-eq v0, v1, :cond_7

    .line 87
    .line 88
    if-eq v0, v15, :cond_4

    .line 89
    .line 90
    if-eq v0, v14, :cond_3

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_3
    invoke-virtual {v2}, LW5/e;->cleanPrev()V

    .line 94
    .line 95
    .line 96
    :goto_1
    move-object/from16 v1, p0

    .line 97
    .line 98
    move-object v0, v2

    .line 99
    goto :goto_0

    .line 100
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceiversCounter$kotlinx_coroutines_core()J

    .line 101
    .line 102
    .line 103
    move-result-wide v0

    .line 104
    cmp-long v0, v5, v0

    .line 105
    .line 106
    if-gez v0, :cond_5

    .line 107
    .line 108
    invoke-virtual {v2}, LW5/e;->cleanPrev()V

    .line 109
    .line 110
    .line 111
    :cond_5
    invoke-virtual/range {p0 .. p2}, Lkotlinx/coroutines/channels/BufferedChannel;->j(Ljava/lang/Object;Ly5/c;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-static {}, Lz5/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    if-ne v0, v1, :cond_6

    .line 120
    .line 121
    return-object v0

    .line 122
    :cond_6
    move-object/from16 v1, p0

    .line 123
    .line 124
    goto/16 :goto_a

    .line 125
    .line 126
    :cond_7
    invoke-static/range {p2 .. p2}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt;->intercepted(Ly5/c;)Ly5/c;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-static {v0}, LR5/p;->getOrCreateCancellableContinuation(Ly5/c;)LR5/n;

    .line 131
    .line 132
    .line 133
    move-result-object v7

    .line 134
    const/4 v8, 0x0

    .line 135
    move-object/from16 v4, p1

    .line 136
    .line 137
    move v0, v1

    .line 138
    move-object/from16 v1, p0

    .line 139
    .line 140
    :try_start_0
    invoke-static/range {v1 .. v8}, Lkotlinx/coroutines/channels/BufferedChannel;->access$updateCellSend(Lkotlinx/coroutines/channels/BufferedChannel;LT5/k;ILjava/lang/Object;JLjava/lang/Object;Z)I

    .line 141
    .line 142
    .line 143
    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    if-eqz v8, :cond_18

    .line 145
    .line 146
    if-eq v8, v11, :cond_17

    .line 147
    .line 148
    if-eq v8, v12, :cond_16

    .line 149
    .line 150
    if-eq v8, v15, :cond_15

    .line 151
    .line 152
    const-string v3, "unexpected"

    .line 153
    .line 154
    if-ne v8, v14, :cond_14

    .line 155
    .line 156
    :try_start_1
    invoke-virtual {v2}, LW5/e;->cleanPrev()V

    .line 157
    .line 158
    .line 159
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->access$getSendSegment$FU$p()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    check-cast v2, LT5/k;

    .line 168
    .line 169
    :goto_2
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->access$getSendersAndCloseStatus$FU$p()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 170
    .line 171
    .line 172
    move-result-object v5

    .line 173
    invoke-virtual {v5, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    .line 174
    .line 175
    .line 176
    move-result-wide v5

    .line 177
    and-long v16, v5, v9

    .line 178
    .line 179
    invoke-static {v1, v5, v6}, Lkotlinx/coroutines/channels/BufferedChannel;->access$isClosedForSend0(Lkotlinx/coroutines/channels/BufferedChannel;J)Z

    .line 180
    .line 181
    .line 182
    move-result v8

    .line 183
    sget v5, Lkotlinx/coroutines/channels/BufferedChannelKt;->b:I

    .line 184
    .line 185
    int-to-long v5, v5

    .line 186
    div-long v9, v16, v5

    .line 187
    .line 188
    rem-long v5, v16, v5

    .line 189
    .line 190
    long-to-int v5, v5

    .line 191
    iget-wide v14, v2, LW5/D;->f:J

    .line 192
    .line 193
    cmp-long v6, v14, v9

    .line 194
    .line 195
    if-eqz v6, :cond_b

    .line 196
    .line 197
    invoke-static {v1, v9, v10, v2}, Lkotlinx/coroutines/channels/BufferedChannel;->access$findSegmentSend(Lkotlinx/coroutines/channels/BufferedChannel;JLT5/k;)LT5/k;

    .line 198
    .line 199
    .line 200
    move-result-object v6

    .line 201
    if-nez v6, :cond_a

    .line 202
    .line 203
    if-eqz v8, :cond_9

    .line 204
    .line 205
    :cond_8
    :goto_3
    invoke-static {v1, v4, v7}, Lkotlinx/coroutines/channels/BufferedChannel;->access$onClosedSendOnNoWaiterSuspend(Lkotlinx/coroutines/channels/BufferedChannel;Ljava/lang/Object;LR5/m;)V

    .line 206
    .line 207
    .line 208
    goto/16 :goto_7

    .line 209
    .line 210
    :catchall_0
    move-exception v0

    .line 211
    goto/16 :goto_9

    .line 212
    .line 213
    :cond_9
    const-wide v9, 0xfffffffffffffffL

    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    const/4 v14, 0x5

    .line 219
    const/4 v15, 0x4

    .line 220
    goto :goto_2

    .line 221
    :cond_a
    move-object v2, v6

    .line 222
    :cond_b
    move-object v9, v3

    .line 223
    move v3, v5

    .line 224
    move-wide/from16 v5, v16

    .line 225
    .line 226
    invoke-static/range {v1 .. v8}, Lkotlinx/coroutines/channels/BufferedChannel;->access$updateCellSend(Lkotlinx/coroutines/channels/BufferedChannel;LT5/k;ILjava/lang/Object;JLjava/lang/Object;Z)I

    .line 227
    .line 228
    .line 229
    move-result v10

    .line 230
    if-eqz v10, :cond_13

    .line 231
    .line 232
    if-eq v10, v11, :cond_12

    .line 233
    .line 234
    if-eq v10, v12, :cond_f

    .line 235
    .line 236
    if-eq v10, v0, :cond_e

    .line 237
    .line 238
    const/4 v3, 0x4

    .line 239
    if-eq v10, v3, :cond_d

    .line 240
    .line 241
    const/4 v8, 0x5

    .line 242
    if-eq v10, v8, :cond_c

    .line 243
    .line 244
    goto :goto_4

    .line 245
    :cond_c
    invoke-virtual {v2}, LW5/e;->cleanPrev()V

    .line 246
    .line 247
    .line 248
    :goto_4
    move v15, v3

    .line 249
    move v14, v8

    .line 250
    move-object v3, v9

    .line 251
    const-wide v9, 0xfffffffffffffffL

    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    goto :goto_2

    .line 257
    :cond_d
    invoke-virtual {v1}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceiversCounter$kotlinx_coroutines_core()J

    .line 258
    .line 259
    .line 260
    move-result-wide v8

    .line 261
    cmp-long v0, v5, v8

    .line 262
    .line 263
    if-gez v0, :cond_8

    .line 264
    .line 265
    invoke-virtual {v2}, LW5/e;->cleanPrev()V

    .line 266
    .line 267
    .line 268
    goto :goto_3

    .line 269
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 270
    .line 271
    invoke-direct {v0, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    throw v0

    .line 275
    :cond_f
    if-eqz v8, :cond_10

    .line 276
    .line 277
    invoke-virtual {v2}, LW5/D;->onSlotCleaned()V

    .line 278
    .line 279
    .line 280
    goto :goto_3

    .line 281
    :cond_10
    instance-of v0, v7, LR5/S0;

    .line 282
    .line 283
    if-eqz v0, :cond_11

    .line 284
    .line 285
    move-object v0, v7

    .line 286
    goto :goto_5

    .line 287
    :cond_11
    const/4 v0, 0x0

    .line 288
    :goto_5
    if-eqz v0, :cond_19

    .line 289
    .line 290
    invoke-static {v1, v0, v2, v3}, Lkotlinx/coroutines/channels/BufferedChannel;->access$prepareSenderForSuspension(Lkotlinx/coroutines/channels/BufferedChannel;LR5/S0;LT5/k;I)V

    .line 291
    .line 292
    .line 293
    goto :goto_7

    .line 294
    :cond_12
    invoke-static {v13}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    move-result-object v0

    .line 298
    :goto_6
    invoke-virtual {v7, v0}, LR5/n;->resumeWith(Ljava/lang/Object;)V

    .line 299
    .line 300
    .line 301
    goto :goto_7

    .line 302
    :cond_13
    invoke-virtual {v2}, LW5/e;->cleanPrev()V

    .line 303
    .line 304
    .line 305
    invoke-static {v13}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    move-result-object v0

    .line 309
    goto :goto_6

    .line 310
    :cond_14
    move-object v9, v3

    .line 311
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 312
    .line 313
    invoke-direct {v0, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    throw v0

    .line 317
    :cond_15
    invoke-virtual {v1}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceiversCounter$kotlinx_coroutines_core()J

    .line 318
    .line 319
    .line 320
    move-result-wide v8

    .line 321
    cmp-long v0, v5, v8

    .line 322
    .line 323
    if-gez v0, :cond_8

    .line 324
    .line 325
    invoke-virtual {v2}, LW5/e;->cleanPrev()V

    .line 326
    .line 327
    .line 328
    goto :goto_3

    .line 329
    :cond_16
    invoke-static {v1, v7, v2, v3}, Lkotlinx/coroutines/channels/BufferedChannel;->access$prepareSenderForSuspension(Lkotlinx/coroutines/channels/BufferedChannel;LR5/S0;LT5/k;I)V

    .line 330
    .line 331
    .line 332
    goto :goto_7

    .line 333
    :cond_17
    invoke-static {v13}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    .line 335
    .line 336
    move-result-object v0

    .line 337
    goto :goto_6

    .line 338
    :cond_18
    invoke-virtual {v2}, LW5/e;->cleanPrev()V

    .line 339
    .line 340
    .line 341
    invoke-static {v13}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    .line 343
    .line 344
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 345
    goto :goto_6

    .line 346
    :cond_19
    :goto_7
    invoke-virtual {v7}, LR5/n;->getResult()Ljava/lang/Object;

    .line 347
    .line 348
    .line 349
    move-result-object v0

    .line 350
    invoke-static {}, Lz5/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 351
    .line 352
    .line 353
    move-result-object v2

    .line 354
    if-ne v0, v2, :cond_1a

    .line 355
    .line 356
    invoke-static/range {p2 .. p2}, LA5/f;->probeCoroutineSuspended(Ly5/c;)V

    .line 357
    .line 358
    .line 359
    :cond_1a
    invoke-static {}, Lz5/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 360
    .line 361
    .line 362
    move-result-object v2

    .line 363
    if-ne v0, v2, :cond_1b

    .line 364
    .line 365
    goto :goto_8

    .line 366
    :cond_1b
    move-object v0, v13

    .line 367
    :goto_8
    invoke-static {}, Lz5/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 368
    .line 369
    .line 370
    move-result-object v2

    .line 371
    if-ne v0, v2, :cond_1d

    .line 372
    .line 373
    return-object v0

    .line 374
    :goto_9
    invoke-virtual {v7}, LR5/n;->releaseClaimedReusableContinuation$kotlinx_coroutines_core()V

    .line 375
    .line 376
    .line 377
    throw v0

    .line 378
    :cond_1c
    move-object/from16 v1, p0

    .line 379
    .line 380
    move-object/from16 v4, p1

    .line 381
    .line 382
    if-eqz v8, :cond_1d

    .line 383
    .line 384
    invoke-virtual {v2}, LW5/D;->onSlotCleaned()V

    .line 385
    .line 386
    .line 387
    invoke-virtual/range {p0 .. p2}, Lkotlinx/coroutines/channels/BufferedChannel;->j(Ljava/lang/Object;Ly5/c;)Ljava/lang/Object;

    .line 388
    .line 389
    .line 390
    move-result-object v0

    .line 391
    invoke-static {}, Lz5/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 392
    .line 393
    .line 394
    move-result-object v2

    .line 395
    if-ne v0, v2, :cond_1d

    .line 396
    .line 397
    return-object v0

    .line 398
    :cond_1d
    :goto_a
    return-object v13

    .line 399
    :cond_1e
    move-object/from16 v1, p0

    .line 400
    .line 401
    invoke-virtual {v2}, LW5/e;->cleanPrev()V

    .line 402
    .line 403
    .line 404
    return-object v13
.end method

.method public toString()Ljava/lang/String;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    sget-object v2, Lkotlinx/coroutines/channels/BufferedChannel;->f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 9
    .line 10
    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 11
    .line 12
    .line 13
    move-result-wide v2

    .line 14
    const/16 v4, 0x3c

    .line 15
    .line 16
    shr-long/2addr v2, v4

    .line 17
    long-to-int v2, v2

    .line 18
    const/4 v3, 0x3

    .line 19
    const/4 v4, 0x2

    .line 20
    if-eq v2, v4, :cond_1

    .line 21
    .line 22
    if-eq v2, v3, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const-string v2, "cancelled,"

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const-string v2, "closed,"

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string v5, "capacity="

    .line 39
    .line 40
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget v5, v0, Lkotlinx/coroutines/channels/BufferedChannel;->b:I

    .line 44
    .line 45
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const/16 v5, 0x2c

    .line 49
    .line 50
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v2, "data=["

    .line 61
    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    new-array v2, v3, [LT5/k;

    .line 66
    .line 67
    sget-object v3, Lkotlinx/coroutines/channels/BufferedChannel;->q:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 68
    .line 69
    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    const/4 v6, 0x0

    .line 74
    aput-object v3, v2, v6

    .line 75
    .line 76
    sget-object v3, Lkotlinx/coroutines/channels/BufferedChannel;->p:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 77
    .line 78
    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    const/4 v7, 0x1

    .line 83
    aput-object v3, v2, v7

    .line 84
    .line 85
    sget-object v3, Lkotlinx/coroutines/channels/BufferedChannel;->r:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 86
    .line 87
    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    aput-object v3, v2, v4

    .line 92
    .line 93
    invoke-static {v2}, Lv5/p;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    check-cast v2, Ljava/lang/Iterable;

    .line 98
    .line 99
    new-instance v3, Ljava/util/ArrayList;

    .line 100
    .line 101
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .line 103
    .line 104
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 109
    .line 110
    .line 111
    move-result v4

    .line 112
    if-eqz v4, :cond_3

    .line 113
    .line 114
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    move-object v8, v4

    .line 119
    check-cast v8, LT5/k;

    .line 120
    .line 121
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getNULL_SEGMENT$p()LT5/k;

    .line 122
    .line 123
    .line 124
    move-result-object v9

    .line 125
    if-eq v8, v9, :cond_2

    .line 126
    .line 127
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_3
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 136
    .line 137
    .line 138
    move-result v3

    .line 139
    if-eqz v3, :cond_1a

    .line 140
    .line 141
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 146
    .line 147
    .line 148
    move-result v4

    .line 149
    if-nez v4, :cond_4

    .line 150
    .line 151
    goto :goto_2

    .line 152
    :cond_4
    move-object v4, v3

    .line 153
    check-cast v4, LT5/k;

    .line 154
    .line 155
    iget-wide v8, v4, LW5/D;->f:J

    .line 156
    .line 157
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v4

    .line 161
    move-object v10, v4

    .line 162
    check-cast v10, LT5/k;

    .line 163
    .line 164
    iget-wide v10, v10, LW5/D;->f:J

    .line 165
    .line 166
    cmp-long v12, v8, v10

    .line 167
    .line 168
    if-lez v12, :cond_6

    .line 169
    .line 170
    move-object v3, v4

    .line 171
    move-wide v8, v10

    .line 172
    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 173
    .line 174
    .line 175
    move-result v4

    .line 176
    if-nez v4, :cond_5

    .line 177
    .line 178
    :goto_2
    check-cast v3, LT5/k;

    .line 179
    .line 180
    invoke-virtual {v0}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceiversCounter$kotlinx_coroutines_core()J

    .line 181
    .line 182
    .line 183
    move-result-wide v10

    .line 184
    invoke-virtual {v0}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendersCounter$kotlinx_coroutines_core()J

    .line 185
    .line 186
    .line 187
    move-result-wide v12

    .line 188
    :goto_3
    sget v2, Lkotlinx/coroutines/channels/BufferedChannelKt;->b:I

    .line 189
    .line 190
    move v4, v6

    .line 191
    :goto_4
    if-ge v4, v2, :cond_17

    .line 192
    .line 193
    iget-wide v8, v3, LW5/D;->f:J

    .line 194
    .line 195
    sget v14, Lkotlinx/coroutines/channels/BufferedChannelKt;->b:I

    .line 196
    .line 197
    int-to-long v14, v14

    .line 198
    mul-long/2addr v8, v14

    .line 199
    int-to-long v14, v4

    .line 200
    add-long/2addr v8, v14

    .line 201
    cmp-long v14, v8, v12

    .line 202
    .line 203
    if-ltz v14, :cond_8

    .line 204
    .line 205
    cmp-long v15, v8, v10

    .line 206
    .line 207
    if-gez v15, :cond_7

    .line 208
    .line 209
    goto :goto_5

    .line 210
    :cond_7
    move/from16 v16, v7

    .line 211
    .line 212
    goto/16 :goto_f

    .line 213
    .line 214
    :cond_8
    :goto_5
    invoke-virtual {v3, v4}, LT5/k;->getState$kotlinx_coroutines_core(I)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v15

    .line 218
    invoke-virtual {v3, v4}, LT5/k;->getElement$kotlinx_coroutines_core(I)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v6

    .line 222
    move/from16 v16, v7

    .line 223
    .line 224
    instance-of v7, v15, LR5/m;

    .line 225
    .line 226
    if-eqz v7, :cond_b

    .line 227
    .line 228
    cmp-long v7, v8, v10

    .line 229
    .line 230
    if-gez v7, :cond_9

    .line 231
    .line 232
    if-ltz v14, :cond_9

    .line 233
    .line 234
    const-string v7, "receive"

    .line 235
    .line 236
    goto/16 :goto_d

    .line 237
    .line 238
    :cond_9
    if-gez v14, :cond_a

    .line 239
    .line 240
    if-ltz v7, :cond_a

    .line 241
    .line 242
    const-string v7, "send"

    .line 243
    .line 244
    goto/16 :goto_d

    .line 245
    .line 246
    :cond_a
    const-string v7, "cont"

    .line 247
    .line 248
    goto/16 :goto_d

    .line 249
    .line 250
    :cond_b
    instance-of v7, v15, LT5/t;

    .line 251
    .line 252
    if-eqz v7, :cond_c

    .line 253
    .line 254
    new-instance v7, Ljava/lang/StringBuilder;

    .line 255
    .line 256
    const-string v8, "EB("

    .line 257
    .line 258
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    const/16 v8, 0x29

    .line 265
    .line 266
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v7

    .line 273
    goto/16 :goto_d

    .line 274
    .line 275
    :cond_c
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getRESUMING_BY_RCV$p()LW5/G;

    .line 276
    .line 277
    .line 278
    move-result-object v7

    .line 279
    invoke-static {v15, v7}, Lkotlin/jvm/internal/j;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 280
    .line 281
    .line 282
    move-result v7

    .line 283
    if-eqz v7, :cond_d

    .line 284
    .line 285
    move/from16 v7, v16

    .line 286
    .line 287
    goto :goto_6

    .line 288
    :cond_d
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getRESUMING_BY_EB$p()LW5/G;

    .line 289
    .line 290
    .line 291
    move-result-object v7

    .line 292
    invoke-static {v15, v7}, Lkotlin/jvm/internal/j;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 293
    .line 294
    .line 295
    move-result v7

    .line 296
    :goto_6
    if-eqz v7, :cond_e

    .line 297
    .line 298
    const-string v7, "resuming_sender"

    .line 299
    .line 300
    goto :goto_d

    .line 301
    :cond_e
    if-nez v15, :cond_f

    .line 302
    .line 303
    move/from16 v7, v16

    .line 304
    .line 305
    goto :goto_7

    .line 306
    :cond_f
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getIN_BUFFER$p()LW5/G;

    .line 307
    .line 308
    .line 309
    move-result-object v7

    .line 310
    invoke-static {v15, v7}, Lkotlin/jvm/internal/j;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 311
    .line 312
    .line 313
    move-result v7

    .line 314
    :goto_7
    if-eqz v7, :cond_10

    .line 315
    .line 316
    move/from16 v7, v16

    .line 317
    .line 318
    goto :goto_8

    .line 319
    :cond_10
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getDONE_RCV$p()LW5/G;

    .line 320
    .line 321
    .line 322
    move-result-object v7

    .line 323
    invoke-static {v15, v7}, Lkotlin/jvm/internal/j;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 324
    .line 325
    .line 326
    move-result v7

    .line 327
    :goto_8
    if-eqz v7, :cond_11

    .line 328
    .line 329
    move/from16 v7, v16

    .line 330
    .line 331
    goto :goto_9

    .line 332
    :cond_11
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getPOISONED$p()LW5/G;

    .line 333
    .line 334
    .line 335
    move-result-object v7

    .line 336
    invoke-static {v15, v7}, Lkotlin/jvm/internal/j;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 337
    .line 338
    .line 339
    move-result v7

    .line 340
    :goto_9
    if-eqz v7, :cond_12

    .line 341
    .line 342
    move/from16 v7, v16

    .line 343
    .line 344
    goto :goto_a

    .line 345
    :cond_12
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getINTERRUPTED_RCV$p()LW5/G;

    .line 346
    .line 347
    .line 348
    move-result-object v7

    .line 349
    invoke-static {v15, v7}, Lkotlin/jvm/internal/j;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 350
    .line 351
    .line 352
    move-result v7

    .line 353
    :goto_a
    if-eqz v7, :cond_13

    .line 354
    .line 355
    move/from16 v7, v16

    .line 356
    .line 357
    goto :goto_b

    .line 358
    :cond_13
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getINTERRUPTED_SEND$p()LW5/G;

    .line 359
    .line 360
    .line 361
    move-result-object v7

    .line 362
    invoke-static {v15, v7}, Lkotlin/jvm/internal/j;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 363
    .line 364
    .line 365
    move-result v7

    .line 366
    :goto_b
    if-eqz v7, :cond_14

    .line 367
    .line 368
    move/from16 v7, v16

    .line 369
    .line 370
    goto :goto_c

    .line 371
    :cond_14
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->getCHANNEL_CLOSED()LW5/G;

    .line 372
    .line 373
    .line 374
    move-result-object v7

    .line 375
    invoke-static {v15, v7}, Lkotlin/jvm/internal/j;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 376
    .line 377
    .line 378
    move-result v7

    .line 379
    :goto_c
    if-nez v7, :cond_16

    .line 380
    .line 381
    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object v7

    .line 385
    :goto_d
    if-eqz v6, :cond_15

    .line 386
    .line 387
    new-instance v8, Ljava/lang/StringBuilder;

    .line 388
    .line 389
    const-string v9, "("

    .line 390
    .line 391
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 392
    .line 393
    .line 394
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    .line 396
    .line 397
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 398
    .line 399
    .line 400
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 401
    .line 402
    .line 403
    const-string v6, "),"

    .line 404
    .line 405
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    .line 407
    .line 408
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object v6

    .line 412
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    .line 414
    .line 415
    goto :goto_e

    .line 416
    :cond_15
    new-instance v6, Ljava/lang/StringBuilder;

    .line 417
    .line 418
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 419
    .line 420
    .line 421
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    .line 423
    .line 424
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 425
    .line 426
    .line 427
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 428
    .line 429
    .line 430
    move-result-object v6

    .line 431
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    .line 433
    .line 434
    :cond_16
    :goto_e
    add-int/lit8 v4, v4, 0x1

    .line 435
    .line 436
    move/from16 v7, v16

    .line 437
    .line 438
    const/4 v6, 0x0

    .line 439
    goto/16 :goto_4

    .line 440
    .line 441
    :cond_17
    move/from16 v16, v7

    .line 442
    .line 443
    invoke-virtual {v3}, LW5/e;->getNext()LW5/e;

    .line 444
    .line 445
    .line 446
    move-result-object v2

    .line 447
    move-object v3, v2

    .line 448
    check-cast v3, LT5/k;

    .line 449
    .line 450
    if-nez v3, :cond_19

    .line 451
    .line 452
    :goto_f
    invoke-static {v1}, LP5/q;->last(Ljava/lang/CharSequence;)C

    .line 453
    .line 454
    .line 455
    move-result v2

    .line 456
    if-ne v2, v5, :cond_18

    .line 457
    .line 458
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    .line 459
    .line 460
    .line 461
    move-result v2

    .line 462
    add-int/lit8 v2, v2, -0x1

    .line 463
    .line 464
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 465
    .line 466
    .line 467
    move-result-object v2

    .line 468
    const-string v3, "this.deleteCharAt(index)"

    .line 469
    .line 470
    invoke-static {v2, v3}, Lkotlin/jvm/internal/j;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 471
    .line 472
    .line 473
    :cond_18
    const-string v2, "]"

    .line 474
    .line 475
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    .line 477
    .line 478
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 479
    .line 480
    .line 481
    move-result-object v1

    .line 482
    return-object v1

    .line 483
    :cond_19
    move/from16 v7, v16

    .line 484
    .line 485
    const/4 v6, 0x0

    .line 486
    goto/16 :goto_3

    .line 487
    .line 488
    :cond_1a
    new-instance v1, Ljava/util/NoSuchElementException;

    .line 489
    .line 490
    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    .line 491
    .line 492
    .line 493
    throw v1
.end method

.method public tryReceive-PtdJZtk()Ljava/lang/Object;
    .locals 9

    .line 1
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->j:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    sget-object v2, Lkotlinx/coroutines/channels/BufferedChannel;->f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 8
    .line 9
    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    const/4 v4, 0x1

    .line 14
    invoke-virtual {p0, v2, v3, v4}, Lkotlinx/coroutines/channels/BufferedChannel;->g(JZ)Z

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    if-eqz v4, :cond_0

    .line 19
    .line 20
    sget-object v0, LT5/j;->b:LT5/h;

    .line 21
    .line 22
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getCloseCause()Ljava/lang/Throwable;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, LT5/h;->closed-JP2dKIU(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    return-object v0

    .line 31
    :cond_0
    const-wide v4, 0xfffffffffffffffL

    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    and-long/2addr v2, v4

    .line 37
    cmp-long v0, v0, v2

    .line 38
    .line 39
    if-ltz v0, :cond_1

    .line 40
    .line 41
    sget-object v0, LT5/j;->b:LT5/h;

    .line 42
    .line 43
    invoke-virtual {v0}, LT5/h;->failure-PtdJZtk()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    return-object v0

    .line 48
    :cond_1
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getINTERRUPTED_RCV$p()LW5/G;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->access$getReceiveSegment$FU$p()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    check-cast v0, LT5/k;

    .line 61
    .line 62
    :goto_0
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->isClosedForReceive()Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-eqz v1, :cond_2

    .line 67
    .line 68
    sget-object v0, LT5/j;->b:LT5/h;

    .line 69
    .line 70
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getCloseCause()Ljava/lang/Throwable;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v0, v1}, LT5/h;->closed-JP2dKIU(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    return-object v0

    .line 79
    :cond_2
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->access$getReceivers$FU$p()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    .line 84
    .line 85
    .line 86
    move-result-wide v4

    .line 87
    sget v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->b:I

    .line 88
    .line 89
    int-to-long v2, v1

    .line 90
    div-long v2, v4, v2

    .line 91
    .line 92
    int-to-long v7, v1

    .line 93
    rem-long v7, v4, v7

    .line 94
    .line 95
    long-to-int v1, v7

    .line 96
    iget-wide v7, v0, LW5/D;->f:J

    .line 97
    .line 98
    cmp-long v7, v7, v2

    .line 99
    .line 100
    if-eqz v7, :cond_4

    .line 101
    .line 102
    invoke-static {p0, v2, v3, v0}, Lkotlinx/coroutines/channels/BufferedChannel;->access$findSegmentReceive(Lkotlinx/coroutines/channels/BufferedChannel;JLT5/k;)LT5/k;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    if-nez v2, :cond_3

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_3
    :goto_1
    move v3, v1

    .line 110
    move-object v1, p0

    .line 111
    goto :goto_2

    .line 112
    :cond_4
    move-object v2, v0

    .line 113
    goto :goto_1

    .line 114
    :goto_2
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/channels/BufferedChannel;->access$updateCellReceive(Lkotlinx/coroutines/channels/BufferedChannel;LT5/k;IJLjava/lang/Object;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getSUSPEND$p()LW5/G;

    .line 119
    .line 120
    .line 121
    move-result-object v7

    .line 122
    if-ne v0, v7, :cond_7

    .line 123
    .line 124
    instance-of v0, v6, LR5/S0;

    .line 125
    .line 126
    if-eqz v0, :cond_5

    .line 127
    .line 128
    check-cast v6, LR5/S0;

    .line 129
    .line 130
    goto :goto_3

    .line 131
    :cond_5
    const/4 v6, 0x0

    .line 132
    :goto_3
    if-eqz v6, :cond_6

    .line 133
    .line 134
    invoke-static {p0, v6, v2, v3}, Lkotlinx/coroutines/channels/BufferedChannel;->access$prepareReceiverForSuspension(Lkotlinx/coroutines/channels/BufferedChannel;LR5/S0;LT5/k;I)V

    .line 135
    .line 136
    .line 137
    :cond_6
    invoke-virtual {p0, v4, v5}, Lkotlinx/coroutines/channels/BufferedChannel;->waitExpandBufferCompletion$kotlinx_coroutines_core(J)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v2}, LW5/D;->onSlotCleaned()V

    .line 141
    .line 142
    .line 143
    sget-object v0, LT5/j;->b:LT5/h;

    .line 144
    .line 145
    invoke-virtual {v0}, LT5/h;->failure-PtdJZtk()Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    return-object v0

    .line 150
    :cond_7
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getFAILED$p()LW5/G;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    if-ne v0, v3, :cond_9

    .line 155
    .line 156
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendersCounter$kotlinx_coroutines_core()J

    .line 157
    .line 158
    .line 159
    move-result-wide v7

    .line 160
    cmp-long v0, v4, v7

    .line 161
    .line 162
    if-gez v0, :cond_8

    .line 163
    .line 164
    invoke-virtual {v2}, LW5/e;->cleanPrev()V

    .line 165
    .line 166
    .line 167
    :cond_8
    move-object v0, v2

    .line 168
    goto :goto_0

    .line 169
    :cond_9
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getSUSPEND_NO_WAITER$p()LW5/G;

    .line 170
    .line 171
    .line 172
    move-result-object v3

    .line 173
    if-eq v0, v3, :cond_a

    .line 174
    .line 175
    invoke-virtual {v2}, LW5/e;->cleanPrev()V

    .line 176
    .line 177
    .line 178
    sget-object v2, LT5/j;->b:LT5/h;

    .line 179
    .line 180
    invoke-virtual {v2, v0}, LT5/h;->success-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    return-object v0

    .line 185
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 186
    .line 187
    const-string v2, "unexpected"

    .line 188
    .line 189
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    throw v0
.end method

.method public trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {p0, v0, v1, v2}, Lkotlinx/coroutines/channels/BufferedChannel;->g(JZ)Z

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    const/4 v4, 0x1

    .line 13
    const-wide v5, 0xfffffffffffffffL

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    if-eqz v3, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    and-long/2addr v0, v5

    .line 22
    invoke-virtual {p0, v0, v1}, Lkotlinx/coroutines/channels/BufferedChannel;->a(J)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    xor-int/lit8 v2, v0, 0x1

    .line 27
    .line 28
    :goto_0
    if-eqz v2, :cond_1

    .line 29
    .line 30
    sget-object v0, LT5/j;->b:LT5/h;

    .line 31
    .line 32
    invoke-virtual {v0}, LT5/h;->failure-PtdJZtk()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    return-object v0

    .line 37
    :cond_1
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getINTERRUPTED_SEND$p()LW5/G;

    .line 38
    .line 39
    .line 40
    move-result-object v13

    .line 41
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->access$getSendSegment$FU$p()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, LT5/k;

    .line 50
    .line 51
    :cond_2
    :goto_1
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->access$getSendersAndCloseStatus$FU$p()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    .line 56
    .line 57
    .line 58
    move-result-wide v1

    .line 59
    and-long v11, v1, v5

    .line 60
    .line 61
    invoke-static {p0, v1, v2}, Lkotlinx/coroutines/channels/BufferedChannel;->access$isClosedForSend0(Lkotlinx/coroutines/channels/BufferedChannel;J)Z

    .line 62
    .line 63
    .line 64
    move-result v14

    .line 65
    sget v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->b:I

    .line 66
    .line 67
    int-to-long v2, v1

    .line 68
    div-long v2, v11, v2

    .line 69
    .line 70
    int-to-long v7, v1

    .line 71
    rem-long v7, v11, v7

    .line 72
    .line 73
    long-to-int v9, v7

    .line 74
    iget-wide v7, v0, LW5/D;->f:J

    .line 75
    .line 76
    cmp-long v1, v7, v2

    .line 77
    .line 78
    if-eqz v1, :cond_4

    .line 79
    .line 80
    invoke-static {p0, v2, v3, v0}, Lkotlinx/coroutines/channels/BufferedChannel;->access$findSegmentSend(Lkotlinx/coroutines/channels/BufferedChannel;JLT5/k;)LT5/k;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    if-nez v1, :cond_3

    .line 85
    .line 86
    if-eqz v14, :cond_2

    .line 87
    .line 88
    sget-object v0, LT5/j;->b:LT5/h;

    .line 89
    .line 90
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendException()Ljava/lang/Throwable;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {v0, v1}, LT5/h;->closed-JP2dKIU(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    return-object v0

    .line 99
    :cond_3
    move-object v8, v1

    .line 100
    :goto_2
    move-object v7, p0

    .line 101
    move-object/from16 v10, p1

    .line 102
    .line 103
    goto :goto_3

    .line 104
    :cond_4
    move-object v8, v0

    .line 105
    goto :goto_2

    .line 106
    :goto_3
    invoke-static/range {v7 .. v14}, Lkotlinx/coroutines/channels/BufferedChannel;->access$updateCellSend(Lkotlinx/coroutines/channels/BufferedChannel;LT5/k;ILjava/lang/Object;JLjava/lang/Object;Z)I

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    move-object v1, v8

    .line 111
    sget-object v2, Lu5/j;->a:Lu5/j;

    .line 112
    .line 113
    if-eqz v0, :cond_e

    .line 114
    .line 115
    if-eq v0, v4, :cond_d

    .line 116
    .line 117
    const/4 v2, 0x2

    .line 118
    if-eq v0, v2, :cond_9

    .line 119
    .line 120
    const/4 v2, 0x3

    .line 121
    if-eq v0, v2, :cond_8

    .line 122
    .line 123
    const/4 v2, 0x4

    .line 124
    if-eq v0, v2, :cond_6

    .line 125
    .line 126
    const/4 v2, 0x5

    .line 127
    if-eq v0, v2, :cond_5

    .line 128
    .line 129
    goto :goto_4

    .line 130
    :cond_5
    invoke-virtual {v1}, LW5/e;->cleanPrev()V

    .line 131
    .line 132
    .line 133
    :goto_4
    move-object v0, v1

    .line 134
    goto :goto_1

    .line 135
    :cond_6
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceiversCounter$kotlinx_coroutines_core()J

    .line 136
    .line 137
    .line 138
    move-result-wide v2

    .line 139
    cmp-long v0, v11, v2

    .line 140
    .line 141
    if-gez v0, :cond_7

    .line 142
    .line 143
    invoke-virtual {v1}, LW5/e;->cleanPrev()V

    .line 144
    .line 145
    .line 146
    :cond_7
    sget-object v0, LT5/j;->b:LT5/h;

    .line 147
    .line 148
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendException()Ljava/lang/Throwable;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    invoke-virtual {v0, v1}, LT5/h;->closed-JP2dKIU(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    return-object v0

    .line 157
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 158
    .line 159
    const-string v1, "unexpected"

    .line 160
    .line 161
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    throw v0

    .line 165
    :cond_9
    if-eqz v14, :cond_a

    .line 166
    .line 167
    invoke-virtual {v1}, LW5/D;->onSlotCleaned()V

    .line 168
    .line 169
    .line 170
    sget-object v0, LT5/j;->b:LT5/h;

    .line 171
    .line 172
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendException()Ljava/lang/Throwable;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    invoke-virtual {v0, v1}, LT5/h;->closed-JP2dKIU(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    return-object v0

    .line 181
    :cond_a
    instance-of v0, v13, LR5/S0;

    .line 182
    .line 183
    if-eqz v0, :cond_b

    .line 184
    .line 185
    check-cast v13, LR5/S0;

    .line 186
    .line 187
    goto :goto_5

    .line 188
    :cond_b
    const/4 v13, 0x0

    .line 189
    :goto_5
    if-eqz v13, :cond_c

    .line 190
    .line 191
    invoke-static {p0, v13, v1, v9}, Lkotlinx/coroutines/channels/BufferedChannel;->access$prepareSenderForSuspension(Lkotlinx/coroutines/channels/BufferedChannel;LR5/S0;LT5/k;I)V

    .line 192
    .line 193
    .line 194
    :cond_c
    invoke-virtual {v1}, LW5/D;->onSlotCleaned()V

    .line 195
    .line 196
    .line 197
    sget-object v0, LT5/j;->b:LT5/h;

    .line 198
    .line 199
    invoke-virtual {v0}, LT5/h;->failure-PtdJZtk()Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    return-object v0

    .line 204
    :cond_d
    sget-object v0, LT5/j;->b:LT5/h;

    .line 205
    .line 206
    invoke-virtual {v0, v2}, LT5/h;->success-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    return-object v0

    .line 211
    :cond_e
    invoke-virtual {v1}, LW5/e;->cleanPrev()V

    .line 212
    .line 213
    .line 214
    sget-object v0, LT5/j;->b:LT5/h;

    .line 215
    .line 216
    invoke-virtual {v0, v2}, LT5/h;->success-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    return-object v0
.end method

.method public final waitExpandBufferCompletion$kotlinx_coroutines_core(J)V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    invoke-virtual {v1}, Lkotlinx/coroutines/channels/BufferedChannel;->h()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_6

    .line 10
    .line 11
    :cond_0
    :goto_0
    sget-object v6, Lkotlinx/coroutines/channels/BufferedChannel;->m:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 12
    .line 13
    invoke-virtual {v6, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 14
    .line 15
    .line 16
    move-result-wide v2

    .line 17
    cmp-long v0, v2, p1

    .line 18
    .line 19
    if-lez v0, :cond_8

    .line 20
    .line 21
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getEXPAND_BUFFER_COMPLETION_WAIT_ITERATIONS$p()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const/4 v7, 0x0

    .line 26
    move v2, v7

    .line 27
    :goto_1
    sget-object v3, Lkotlinx/coroutines/channels/BufferedChannel;->n:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 28
    .line 29
    const-wide v8, 0x3fffffffffffffffL    # 1.9999999999999998

    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    if-ge v2, v0, :cond_2

    .line 35
    .line 36
    invoke-virtual {v6, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 37
    .line 38
    .line 39
    move-result-wide v4

    .line 40
    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 41
    .line 42
    .line 43
    move-result-wide v10

    .line 44
    and-long/2addr v8, v10

    .line 45
    cmp-long v3, v4, v8

    .line 46
    .line 47
    if-nez v3, :cond_1

    .line 48
    .line 49
    invoke-virtual {v6, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 50
    .line 51
    .line 52
    move-result-wide v8

    .line 53
    cmp-long v3, v4, v8

    .line 54
    .line 55
    if-nez v3, :cond_1

    .line 56
    .line 57
    goto :goto_6

    .line 58
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_2
    move-object v0, v3

    .line 62
    :goto_2
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 63
    .line 64
    .line 65
    move-result-wide v2

    .line 66
    and-long v4, v2, v8

    .line 67
    .line 68
    const/4 v10, 0x1

    .line 69
    invoke-static {v4, v5, v10}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$constructEBCompletedAndPauseFlag(JZ)J

    .line 70
    .line 71
    .line 72
    move-result-wide v4

    .line 73
    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    if-eqz v2, :cond_7

    .line 78
    .line 79
    :goto_3
    invoke-virtual {v6, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 80
    .line 81
    .line 82
    move-result-wide v2

    .line 83
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->n:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 84
    .line 85
    move-wide v4, v2

    .line 86
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 87
    .line 88
    .line 89
    move-result-wide v2

    .line 90
    and-long v11, v2, v8

    .line 91
    .line 92
    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    .line 93
    .line 94
    and-long/2addr v13, v2

    .line 95
    const-wide/16 v15, 0x0

    .line 96
    .line 97
    cmp-long v13, v13, v15

    .line 98
    .line 99
    if-eqz v13, :cond_3

    .line 100
    .line 101
    move v13, v10

    .line 102
    goto :goto_4

    .line 103
    :cond_3
    move v13, v7

    .line 104
    :goto_4
    cmp-long v14, v4, v11

    .line 105
    .line 106
    if-nez v14, :cond_5

    .line 107
    .line 108
    invoke-virtual {v6, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 109
    .line 110
    .line 111
    move-result-wide v14

    .line 112
    cmp-long v4, v4, v14

    .line 113
    .line 114
    if-nez v4, :cond_5

    .line 115
    .line 116
    :goto_5
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 117
    .line 118
    .line 119
    move-result-wide v2

    .line 120
    and-long v4, v2, v8

    .line 121
    .line 122
    invoke-static {v4, v5, v7}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$constructEBCompletedAndPauseFlag(JZ)J

    .line 123
    .line 124
    .line 125
    move-result-wide v4

    .line 126
    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    if-eqz v2, :cond_4

    .line 131
    .line 132
    :goto_6
    return-void

    .line 133
    :cond_4
    move-object/from16 v1, p0

    .line 134
    .line 135
    goto :goto_5

    .line 136
    :cond_5
    if-nez v13, :cond_6

    .line 137
    .line 138
    invoke-static {v11, v12, v10}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$constructEBCompletedAndPauseFlag(JZ)J

    .line 139
    .line 140
    .line 141
    move-result-wide v4

    .line 142
    move-object/from16 v1, p0

    .line 143
    .line 144
    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    .line 145
    .line 146
    .line 147
    goto :goto_3

    .line 148
    :cond_6
    move-object/from16 v1, p0

    .line 149
    .line 150
    goto :goto_3

    .line 151
    :cond_7
    move-object/from16 v1, p0

    .line 152
    .line 153
    goto :goto_2

    .line 154
    :cond_8
    move-object/from16 v1, p0

    .line 155
    .line 156
    goto/16 :goto_0
.end method
