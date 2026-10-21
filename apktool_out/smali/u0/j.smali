.class public abstract Lu0/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu0/e;


# instance fields
.field private availableInputBufferCount:I

.field private final availableInputBuffers:[Lu0/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lu0/f;"
        }
    .end annotation
.end field

.field private availableOutputBufferCount:I

.field private final availableOutputBuffers:[Lu0/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lu0/h;"
        }
    .end annotation
.end field

.field private final decodeThread:Ljava/lang/Thread;

.field private dequeuedInputBuffer:Lu0/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu0/f;"
        }
    .end annotation
.end field

.field private exception:Landroidx/media3/decoder/DecoderException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/decoder/DecoderException;"
        }
    .end annotation
.end field

.field private flushed:Z

.field private final lock:Ljava/lang/Object;

.field private outputStartTimeUs:J

.field private final queuedInputBuffers:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lu0/f;",
            ">;"
        }
    .end annotation
.end field

.field private final queuedOutputBuffers:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lu0/h;",
            ">;"
        }
    .end annotation
.end field

.field private released:Z

.field private skippedOutputBufferCount:I


# direct methods
.method public constructor <init>([Lu0/f;[Lu0/h;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lu0/f;",
            "[",
            "Lu0/h;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lu0/j;->lock:Ljava/lang/Object;

    .line 10
    .line 11
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    iput-wide v0, p0, Lu0/j;->outputStartTimeUs:J

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayDeque;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lu0/j;->queuedInputBuffers:Ljava/util/ArrayDeque;

    .line 24
    .line 25
    new-instance v0, Ljava/util/ArrayDeque;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lu0/j;->queuedOutputBuffers:Ljava/util/ArrayDeque;

    .line 31
    .line 32
    iput-object p1, p0, Lu0/j;->availableInputBuffers:[Lu0/f;

    .line 33
    .line 34
    array-length p1, p1

    .line 35
    iput p1, p0, Lu0/j;->availableInputBufferCount:I

    .line 36
    .line 37
    const/4 p1, 0x0

    .line 38
    move v0, p1

    .line 39
    :goto_0
    iget v1, p0, Lu0/j;->availableInputBufferCount:I

    .line 40
    .line 41
    if-ge v0, v1, :cond_0

    .line 42
    .line 43
    iget-object v1, p0, Lu0/j;->availableInputBuffers:[Lu0/f;

    .line 44
    .line 45
    invoke-virtual {p0}, Lu0/j;->createInputBuffer()Lu0/f;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    aput-object v2, v1, v0

    .line 50
    .line 51
    add-int/lit8 v0, v0, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    iput-object p2, p0, Lu0/j;->availableOutputBuffers:[Lu0/h;

    .line 55
    .line 56
    array-length p2, p2

    .line 57
    iput p2, p0, Lu0/j;->availableOutputBufferCount:I

    .line 58
    .line 59
    :goto_1
    iget p2, p0, Lu0/j;->availableOutputBufferCount:I

    .line 60
    .line 61
    if-ge p1, p2, :cond_1

    .line 62
    .line 63
    iget-object p2, p0, Lu0/j;->availableOutputBuffers:[Lu0/h;

    .line 64
    .line 65
    invoke-virtual {p0}, Lu0/j;->createOutputBuffer()Lu0/h;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    aput-object v0, p2, p1

    .line 70
    .line 71
    add-int/lit8 p1, p1, 0x1

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_1
    new-instance p1, Lu0/i;

    .line 75
    .line 76
    invoke-direct {p1, p0}, Lu0/i;-><init>(Lu0/j;)V

    .line 77
    .line 78
    .line 79
    iput-object p1, p0, Lu0/j;->decodeThread:Ljava/lang/Thread;

    .line 80
    .line 81
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method public static access$000(Lu0/j;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lu0/j;->a()Z

    .line 5
    .line 6
    .line 7
    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    return-void

    .line 12
    :catch_0
    move-exception p0

    .line 13
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 16
    .line 17
    .line 18
    throw v0
.end method


# virtual methods
.method public final a()Z
    .locals 8

    .line 1
    iget-object v0, p0, Lu0/j;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lu0/j;->released:Z

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x1

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    iget-object v1, p0, Lu0/j;->queuedInputBuffers:Ljava/util/ArrayDeque;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    iget v1, p0, Lu0/j;->availableOutputBufferCount:I

    .line 19
    .line 20
    if-lez v1, :cond_0

    .line 21
    .line 22
    move v1, v3

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    move v1, v2

    .line 25
    :goto_1
    if-nez v1, :cond_1

    .line 26
    .line 27
    iget-object v1, p0, Lu0/j;->lock:Ljava/lang/Object;

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception v1

    .line 34
    goto/16 :goto_6

    .line 35
    .line 36
    :cond_1
    iget-boolean v1, p0, Lu0/j;->released:Z

    .line 37
    .line 38
    if-eqz v1, :cond_2

    .line 39
    .line 40
    monitor-exit v0

    .line 41
    return v2

    .line 42
    :cond_2
    iget-object v1, p0, Lu0/j;->queuedInputBuffers:Ljava/util/ArrayDeque;

    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    check-cast v1, Lu0/f;

    .line 49
    .line 50
    iget-object v4, p0, Lu0/j;->availableOutputBuffers:[Lu0/h;

    .line 51
    .line 52
    iget v5, p0, Lu0/j;->availableOutputBufferCount:I

    .line 53
    .line 54
    sub-int/2addr v5, v3

    .line 55
    iput v5, p0, Lu0/j;->availableOutputBufferCount:I

    .line 56
    .line 57
    aget-object v4, v4, v5

    .line 58
    .line 59
    iget-boolean v5, p0, Lu0/j;->flushed:Z

    .line 60
    .line 61
    iput-boolean v2, p0, Lu0/j;->flushed:Z

    .line 62
    .line 63
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    invoke-virtual {v1}, Lu0/a;->isEndOfStream()Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_3

    .line 69
    .line 70
    const/4 v0, 0x4

    .line 71
    invoke-virtual {v4, v0}, Lu0/a;->addFlag(I)V

    .line 72
    .line 73
    .line 74
    goto :goto_3

    .line 75
    :cond_3
    iget-wide v6, v1, Lu0/f;->timeUs:J

    .line 76
    .line 77
    iput-wide v6, v4, Lu0/h;->timeUs:J

    .line 78
    .line 79
    invoke-virtual {v1}, Lu0/a;->isFirstSample()Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-eqz v0, :cond_4

    .line 84
    .line 85
    const/high16 v0, 0x8000000

    .line 86
    .line 87
    invoke-virtual {v4, v0}, Lu0/a;->addFlag(I)V

    .line 88
    .line 89
    .line 90
    :cond_4
    iget-wide v6, v1, Lu0/f;->timeUs:J

    .line 91
    .line 92
    invoke-virtual {p0, v6, v7}, Lu0/j;->isAtLeastOutputStartTimeUs(J)Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-nez v0, :cond_5

    .line 97
    .line 98
    iput-boolean v3, v4, Lu0/h;->shouldBeSkipped:Z

    .line 99
    .line 100
    :cond_5
    :try_start_1
    invoke-virtual {p0, v1, v4, v5}, Lu0/j;->decode(Lu0/f;Lu0/h;Z)Landroidx/media3/decoder/DecoderException;

    .line 101
    .line 102
    .line 103
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    .line 104
    goto :goto_2

    .line 105
    :catch_0
    move-exception v0

    .line 106
    invoke-virtual {p0, v0}, Lu0/j;->createUnexpectedDecodeException(Ljava/lang/Throwable;)Landroidx/media3/decoder/DecoderException;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    goto :goto_2

    .line 111
    :catch_1
    move-exception v0

    .line 112
    invoke-virtual {p0, v0}, Lu0/j;->createUnexpectedDecodeException(Ljava/lang/Throwable;)Landroidx/media3/decoder/DecoderException;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    :goto_2
    if-eqz v0, :cond_6

    .line 117
    .line 118
    iget-object v5, p0, Lu0/j;->lock:Ljava/lang/Object;

    .line 119
    .line 120
    monitor-enter v5

    .line 121
    :try_start_2
    iput-object v0, p0, Lu0/j;->exception:Landroidx/media3/decoder/DecoderException;

    .line 122
    .line 123
    monitor-exit v5

    .line 124
    return v2

    .line 125
    :catchall_1
    move-exception v0

    .line 126
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 127
    throw v0

    .line 128
    :cond_6
    :goto_3
    iget-object v5, p0, Lu0/j;->lock:Ljava/lang/Object;

    .line 129
    .line 130
    monitor-enter v5

    .line 131
    :try_start_3
    iget-boolean v0, p0, Lu0/j;->flushed:Z

    .line 132
    .line 133
    if-eqz v0, :cond_7

    .line 134
    .line 135
    invoke-virtual {v4}, Lu0/h;->release()V

    .line 136
    .line 137
    .line 138
    goto :goto_4

    .line 139
    :catchall_2
    move-exception v0

    .line 140
    goto :goto_5

    .line 141
    :cond_7
    iget-boolean v0, v4, Lu0/h;->shouldBeSkipped:Z

    .line 142
    .line 143
    if-eqz v0, :cond_8

    .line 144
    .line 145
    iget v0, p0, Lu0/j;->skippedOutputBufferCount:I

    .line 146
    .line 147
    add-int/2addr v0, v3

    .line 148
    iput v0, p0, Lu0/j;->skippedOutputBufferCount:I

    .line 149
    .line 150
    invoke-virtual {v4}, Lu0/h;->release()V

    .line 151
    .line 152
    .line 153
    goto :goto_4

    .line 154
    :cond_8
    iget v0, p0, Lu0/j;->skippedOutputBufferCount:I

    .line 155
    .line 156
    iput v0, v4, Lu0/h;->skippedOutputBufferCount:I

    .line 157
    .line 158
    iput v2, p0, Lu0/j;->skippedOutputBufferCount:I

    .line 159
    .line 160
    iget-object v0, p0, Lu0/j;->queuedOutputBuffers:Ljava/util/ArrayDeque;

    .line 161
    .line 162
    invoke-virtual {v0, v4}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    :goto_4
    invoke-virtual {v1}, Lu0/f;->clear()V

    .line 166
    .line 167
    .line 168
    iget-object v0, p0, Lu0/j;->availableInputBuffers:[Lu0/f;

    .line 169
    .line 170
    iget v2, p0, Lu0/j;->availableInputBufferCount:I

    .line 171
    .line 172
    add-int/lit8 v4, v2, 0x1

    .line 173
    .line 174
    iput v4, p0, Lu0/j;->availableInputBufferCount:I

    .line 175
    .line 176
    aput-object v1, v0, v2

    .line 177
    .line 178
    monitor-exit v5

    .line 179
    return v3

    .line 180
    :goto_5
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 181
    throw v0

    .line 182
    :goto_6
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 183
    throw v1
.end method

.method public abstract createInputBuffer()Lu0/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lu0/f;"
        }
    .end annotation
.end method

.method public abstract createOutputBuffer()Lu0/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lu0/h;"
        }
    .end annotation
.end method

.method public abstract createUnexpectedDecodeException(Ljava/lang/Throwable;)Landroidx/media3/decoder/DecoderException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Landroidx/media3/decoder/DecoderException;"
        }
    .end annotation
.end method

.method public abstract decode(Lu0/f;Lu0/h;Z)Landroidx/media3/decoder/DecoderException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu0/f;",
            "Lu0/h;",
            "Z)",
            "Landroidx/media3/decoder/DecoderException;"
        }
    .end annotation
.end method

.method public bridge synthetic dequeueInputBuffer()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/decoder/DecoderException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lu0/j;->dequeueInputBuffer()Lu0/f;

    move-result-object v0

    return-object v0
.end method

.method public final dequeueInputBuffer()Lu0/f;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lu0/f;",
            "^",
            "Landroidx/media3/decoder/DecoderException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/decoder/DecoderException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lu0/j;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lu0/j;->exception:Landroidx/media3/decoder/DecoderException;

    if-nez v1, :cond_2

    .line 4
    iget-object v1, p0, Lu0/j;->dequeuedInputBuffer:Lu0/f;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, LP3/v;->checkState(Z)V

    .line 5
    iget v1, p0, Lu0/j;->availableInputBufferCount:I

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    .line 6
    :cond_1
    iget-object v3, p0, Lu0/j;->availableInputBuffers:[Lu0/f;

    sub-int/2addr v1, v2

    iput v1, p0, Lu0/j;->availableInputBufferCount:I

    aget-object v1, v3, v1

    :goto_1
    iput-object v1, p0, Lu0/j;->dequeuedInputBuffer:Lu0/f;

    .line 7
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_2

    .line 8
    :cond_2
    throw v1

    .line 9
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public bridge synthetic dequeueOutputBuffer()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/decoder/DecoderException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lu0/j;->dequeueOutputBuffer()Lu0/h;

    move-result-object v0

    return-object v0
.end method

.method public final dequeueOutputBuffer()Lu0/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lu0/h;",
            "^",
            "Landroidx/media3/decoder/DecoderException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/decoder/DecoderException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lu0/j;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lu0/j;->exception:Landroidx/media3/decoder/DecoderException;

    if-nez v1, :cond_1

    .line 4
    iget-object v1, p0, Lu0/j;->queuedOutputBuffers:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 5
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lu0/j;->queuedOutputBuffers:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lu0/h;

    monitor-exit v0

    return-object v1

    .line 7
    :cond_1
    throw v1

    .line 8
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final flush()V
    .locals 5

    .line 1
    iget-object v0, p0, Lu0/j;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x1

    .line 5
    :try_start_0
    iput-boolean v1, p0, Lu0/j;->flushed:Z

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput v1, p0, Lu0/j;->skippedOutputBufferCount:I

    .line 9
    .line 10
    iget-object v1, p0, Lu0/j;->dequeuedInputBuffer:Lu0/f;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {v1}, Lu0/f;->clear()V

    .line 15
    .line 16
    .line 17
    iget-object v2, p0, Lu0/j;->availableInputBuffers:[Lu0/f;

    .line 18
    .line 19
    iget v3, p0, Lu0/j;->availableInputBufferCount:I

    .line 20
    .line 21
    add-int/lit8 v4, v3, 0x1

    .line 22
    .line 23
    iput v4, p0, Lu0/j;->availableInputBufferCount:I

    .line 24
    .line 25
    aput-object v1, v2, v3

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    iput-object v1, p0, Lu0/j;->dequeuedInputBuffer:Lu0/f;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception v1

    .line 32
    goto :goto_2

    .line 33
    :cond_0
    :goto_0
    iget-object v1, p0, Lu0/j;->queuedInputBuffers:Ljava/util/ArrayDeque;

    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_1

    .line 40
    .line 41
    iget-object v1, p0, Lu0/j;->queuedInputBuffers:Ljava/util/ArrayDeque;

    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Lu0/f;

    .line 48
    .line 49
    invoke-virtual {v1}, Lu0/f;->clear()V

    .line 50
    .line 51
    .line 52
    iget-object v2, p0, Lu0/j;->availableInputBuffers:[Lu0/f;

    .line 53
    .line 54
    iget v3, p0, Lu0/j;->availableInputBufferCount:I

    .line 55
    .line 56
    add-int/lit8 v4, v3, 0x1

    .line 57
    .line 58
    iput v4, p0, Lu0/j;->availableInputBufferCount:I

    .line 59
    .line 60
    aput-object v1, v2, v3

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    :goto_1
    iget-object v1, p0, Lu0/j;->queuedOutputBuffers:Ljava/util/ArrayDeque;

    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-nez v1, :cond_2

    .line 70
    .line 71
    iget-object v1, p0, Lu0/j;->queuedOutputBuffers:Ljava/util/ArrayDeque;

    .line 72
    .line 73
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    check-cast v1, Lu0/h;

    .line 78
    .line 79
    invoke-virtual {v1}, Lu0/h;->release()V

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_2
    monitor-exit v0

    .line 84
    return-void

    .line 85
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    throw v1
.end method

.method public final isAtLeastOutputStartTimeUs(J)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lu0/j;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-wide v1, p0, Lu0/j;->outputStartTimeUs:J

    .line 5
    .line 6
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    cmp-long v3, v1, v3

    .line 12
    .line 13
    if-eqz v3, :cond_1

    .line 14
    .line 15
    cmp-long p1, p1, v1

    .line 16
    .line 17
    if-ltz p1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 23
    :goto_1
    monitor-exit v0

    .line 24
    return p1

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    throw p1
.end method

.method public bridge synthetic queueInputBuffer(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/decoder/DecoderException;
        }
    .end annotation

    .line 1
    check-cast p1, Lu0/f;

    invoke-virtual {p0, p1}, Lu0/j;->queueInputBuffer(Lu0/f;)V

    return-void
.end method

.method public final queueInputBuffer(Lu0/f;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu0/f;",
            ")V^",
            "Landroidx/media3/decoder/DecoderException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/decoder/DecoderException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lu0/j;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lu0/j;->exception:Landroidx/media3/decoder/DecoderException;

    if-nez v1, :cond_2

    .line 4
    iget-object v1, p0, Lu0/j;->dequeuedInputBuffer:Lu0/f;

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, LP3/v;->checkArgument(Z)V

    .line 5
    iget-object v1, p0, Lu0/j;->queuedInputBuffers:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lu0/j;->queuedInputBuffers:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    iget p1, p0, Lu0/j;->availableOutputBufferCount:I

    if-lez p1, :cond_1

    .line 7
    iget-object p1, p0, Lu0/j;->lock:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    :cond_1
    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lu0/j;->dequeuedInputBuffer:Lu0/f;

    .line 9
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 10
    :cond_2
    throw v1

    .line 11
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public release()V
    .locals 2

    .line 1
    iget-object v0, p0, Lu0/j;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x1

    .line 5
    :try_start_0
    iput-boolean v1, p0, Lu0/j;->released:Z

    .line 6
    .line 7
    iget-object v1, p0, Lu0/j;->lock:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 10
    .line 11
    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    :try_start_1
    iget-object v0, p0, Lu0/j;->decodeThread:Ljava/lang/Thread;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :catchall_0
    move-exception v1

    .line 28
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 29
    throw v1
.end method

.method public releaseOutputBuffer(Lu0/h;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu0/h;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lu0/j;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p1}, Lu0/h;->clear()V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lu0/j;->availableOutputBuffers:[Lu0/h;

    .line 8
    .line 9
    iget v2, p0, Lu0/j;->availableOutputBufferCount:I

    .line 10
    .line 11
    add-int/lit8 v3, v2, 0x1

    .line 12
    .line 13
    iput v3, p0, Lu0/j;->availableOutputBufferCount:I

    .line 14
    .line 15
    aput-object p1, v1, v2

    .line 16
    .line 17
    iget-object p1, p0, Lu0/j;->queuedInputBuffers:Ljava/util/ArrayDeque;

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-nez p1, :cond_0

    .line 24
    .line 25
    iget p1, p0, Lu0/j;->availableOutputBufferCount:I

    .line 26
    .line 27
    if-lez p1, :cond_0

    .line 28
    .line 29
    iget-object p1, p0, Lu0/j;->lock:Ljava/lang/Object;

    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    .line 32
    .line 33
    .line 34
    :cond_0
    monitor-exit v0

    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception p1

    .line 37
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    throw p1
.end method

.method public final setInitialInputBufferSize(I)V
    .locals 4

    .line 1
    iget v0, p0, Lu0/j;->availableInputBufferCount:I

    .line 2
    .line 3
    iget-object v1, p0, Lu0/j;->availableInputBuffers:[Lu0/f;

    .line 4
    .line 5
    array-length v1, v1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v0, v2

    .line 12
    :goto_0
    invoke-static {v0}, LP3/v;->checkState(Z)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lu0/j;->availableInputBuffers:[Lu0/f;

    .line 16
    .line 17
    array-length v1, v0

    .line 18
    :goto_1
    if-ge v2, v1, :cond_1

    .line 19
    .line 20
    aget-object v3, v0, v2

    .line 21
    .line 22
    invoke-virtual {v3, p1}, Lu0/f;->ensureSpaceForWrite(I)V

    .line 23
    .line 24
    .line 25
    add-int/lit8 v2, v2, 0x1

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    return-void
.end method

.method public final setOutputStartTimeUs(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lu0/j;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lu0/j;->availableInputBufferCount:I

    .line 5
    .line 6
    iget-object v2, p0, Lu0/j;->availableInputBuffers:[Lu0/f;

    .line 7
    .line 8
    array-length v2, v2

    .line 9
    if-eq v1, v2, :cond_1

    .line 10
    .line 11
    iget-boolean v1, p0, Lu0/j;->flushed:Z

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v1, 0x0

    .line 17
    goto :goto_1

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    goto :goto_2

    .line 20
    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 21
    :goto_1
    invoke-static {v1}, LP3/v;->checkState(Z)V

    .line 22
    .line 23
    .line 24
    iput-wide p1, p0, Lu0/j;->outputStartTimeUs:J

    .line 25
    .line 26
    monitor-exit v0

    .line 27
    return-void

    .line 28
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    throw p1
.end method
