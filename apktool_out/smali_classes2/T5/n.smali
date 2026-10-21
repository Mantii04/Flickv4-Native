.class public final LT5/n;
.super Lkotlinx/coroutines/channels/BufferedChannel;
.source "SourceFile"


# instance fields
.field public final u:Lkotlinx/coroutines/channels/BufferOverflow;


# direct methods
.method public constructor <init>(ILkotlinx/coroutines/channels/BufferOverflow;LH5/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlinx/coroutines/channels/BufferOverflow;",
            "LH5/l;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p3}, Lkotlinx/coroutines/channels/BufferedChannel;-><init>(ILH5/l;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, LT5/n;->u:Lkotlinx/coroutines/channels/BufferOverflow;

    .line 5
    .line 6
    sget-object p3, Lkotlinx/coroutines/channels/BufferOverflow;->b:Lkotlinx/coroutines/channels/BufferOverflow;

    .line 7
    .line 8
    if-eq p2, p3, :cond_1

    .line 9
    .line 10
    const/4 p2, 0x1

    .line 11
    if-lt p1, p2, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    const-string p2, "Buffered channel capacity must be at least 1, but "

    .line 15
    .line 16
    const-string p3, " was specified"

    .line 17
    .line 18
    invoke-static {p1, p2, p3}, LA/i;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p2

    .line 32
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string p2, "This implementation does not support suspension for senders, use "

    .line 35
    .line 36
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-class p2, Lkotlinx/coroutines/channels/BufferedChannel;

    .line 40
    .line 41
    invoke-static {p2}, Lkotlin/jvm/internal/l;->getOrCreateKotlinClass(Ljava/lang/Class;)LN5/c;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    check-cast p2, Lkotlin/jvm/internal/e;

    .line 46
    .line 47
    invoke-virtual {p2}, Lkotlin/jvm/internal/e;->getSimpleName()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string p2, " instead"

    .line 55
    .line 56
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 64
    .line 65
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw p2
.end method


# virtual methods
.method public isConflatedDropOldest()Z
    .locals 2

    .line 1
    sget-object v0, Lkotlinx/coroutines/channels/BufferOverflow;->e:Lkotlinx/coroutines/channels/BufferOverflow;

    .line 2
    .line 3
    iget-object v1, p0, LT5/n;->u:Lkotlinx/coroutines/channels/BufferOverflow;

    .line 4
    .line 5
    if-ne v1, v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    return v0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    return v0
.end method

.method public final p(Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 15

    .line 1
    sget-object v1, Lkotlinx/coroutines/channels/BufferOverflow;->f:Lkotlinx/coroutines/channels/BufferOverflow;

    .line 2
    .line 3
    sget-object v8, Lu5/j;->a:Lu5/j;

    .line 4
    .line 5
    iget-object v2, p0, LT5/n;->u:Lkotlinx/coroutines/channels/BufferOverflow;

    .line 6
    .line 7
    const/4 v9, 0x0

    .line 8
    const/4 v10, 0x2

    .line 9
    if-ne v2, v1, :cond_4

    .line 10
    .line 11
    invoke-super/range {p0 .. p1}, Lkotlinx/coroutines/channels/BufferedChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v1}, LT5/j;->isSuccess-impl(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-nez v2, :cond_3

    .line 20
    .line 21
    invoke-static {v1}, LT5/j;->isClosed-impl(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    if-eqz p2, :cond_2

    .line 29
    .line 30
    iget-object v1, p0, Lkotlinx/coroutines/channels/BufferedChannel;->e:LH5/l;

    .line 31
    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    move-object/from16 v3, p1

    .line 35
    .line 36
    invoke-static {v1, v3, v9, v10, v9}, Lkotlinx/coroutines/internal/OnUndeliveredElementKt;->callUndeliveredElementCatchingException$default(LH5/l;Ljava/lang/Object;Lkotlinx/coroutines/internal/UndeliveredElementException;ILjava/lang/Object;)Lkotlinx/coroutines/internal/UndeliveredElementException;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    if-nez v1, :cond_1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    throw v1

    .line 44
    :cond_2
    :goto_0
    sget-object v1, LT5/j;->b:LT5/h;

    .line 45
    .line 46
    invoke-virtual {v1, v8}, LT5/h;->success-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    :cond_3
    :goto_1
    return-object v1

    .line 51
    :cond_4
    move-object/from16 v3, p1

    .line 52
    .line 53
    sget-object v6, Lkotlinx/coroutines/channels/BufferedChannelKt;->d:LW5/G;

    .line 54
    .line 55
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->access$getSendSegment$FU$p()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    check-cast v1, LT5/k;

    .line 64
    .line 65
    :goto_2
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->access$getSendersAndCloseStatus$FU$p()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    .line 70
    .line 71
    .line 72
    move-result-wide v4

    .line 73
    const-wide v11, 0xfffffffffffffffL

    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    and-long/2addr v11, v4

    .line 79
    invoke-static {p0, v4, v5}, Lkotlinx/coroutines/channels/BufferedChannel;->access$isClosedForSend0(Lkotlinx/coroutines/channels/BufferedChannel;J)Z

    .line 80
    .line 81
    .line 82
    move-result v7

    .line 83
    sget v2, Lkotlinx/coroutines/channels/BufferedChannelKt;->b:I

    .line 84
    .line 85
    int-to-long v13, v2

    .line 86
    div-long v4, v11, v13

    .line 87
    .line 88
    rem-long v9, v11, v13

    .line 89
    .line 90
    long-to-int v2, v9

    .line 91
    iget-wide v9, v1, LW5/D;->f:J

    .line 92
    .line 93
    cmp-long v9, v9, v4

    .line 94
    .line 95
    if-eqz v9, :cond_7

    .line 96
    .line 97
    invoke-static {p0, v4, v5, v1}, Lkotlinx/coroutines/channels/BufferedChannel;->access$findSegmentSend(Lkotlinx/coroutines/channels/BufferedChannel;JLT5/k;)LT5/k;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    if-nez v4, :cond_6

    .line 102
    .line 103
    if-eqz v7, :cond_5

    .line 104
    .line 105
    sget-object v1, LT5/j;->b:LT5/h;

    .line 106
    .line 107
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendException()Ljava/lang/Throwable;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    invoke-virtual {v1, v2}, LT5/h;->closed-JP2dKIU(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    return-object v1

    .line 116
    :cond_5
    const/4 v9, 0x0

    .line 117
    const/4 v10, 0x2

    .line 118
    goto :goto_2

    .line 119
    :cond_6
    move-object v1, v4

    .line 120
    :cond_7
    move-object v0, p0

    .line 121
    move-wide v4, v11

    .line 122
    invoke-static/range {v0 .. v7}, Lkotlinx/coroutines/channels/BufferedChannel;->access$updateCellSend(Lkotlinx/coroutines/channels/BufferedChannel;LT5/k;ILjava/lang/Object;JLjava/lang/Object;Z)I

    .line 123
    .line 124
    .line 125
    move-result v9

    .line 126
    if-eqz v9, :cond_11

    .line 127
    .line 128
    const/4 v3, 0x1

    .line 129
    if-eq v9, v3, :cond_10

    .line 130
    .line 131
    const/4 v3, 0x2

    .line 132
    if-eq v9, v3, :cond_c

    .line 133
    .line 134
    const/4 v2, 0x3

    .line 135
    if-eq v9, v2, :cond_b

    .line 136
    .line 137
    const/4 v2, 0x4

    .line 138
    if-eq v9, v2, :cond_9

    .line 139
    .line 140
    const/4 v2, 0x5

    .line 141
    if-eq v9, v2, :cond_8

    .line 142
    .line 143
    goto :goto_3

    .line 144
    :cond_8
    invoke-virtual {v1}, LW5/e;->cleanPrev()V

    .line 145
    .line 146
    .line 147
    :goto_3
    move v10, v3

    .line 148
    const/4 v9, 0x0

    .line 149
    move-object/from16 v3, p1

    .line 150
    .line 151
    goto :goto_2

    .line 152
    :cond_9
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceiversCounter$kotlinx_coroutines_core()J

    .line 153
    .line 154
    .line 155
    move-result-wide v2

    .line 156
    cmp-long v2, v4, v2

    .line 157
    .line 158
    if-gez v2, :cond_a

    .line 159
    .line 160
    invoke-virtual {v1}, LW5/e;->cleanPrev()V

    .line 161
    .line 162
    .line 163
    :cond_a
    sget-object v1, LT5/j;->b:LT5/h;

    .line 164
    .line 165
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendException()Ljava/lang/Throwable;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    invoke-virtual {v1, v2}, LT5/h;->closed-JP2dKIU(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    return-object v1

    .line 174
    :cond_b
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 175
    .line 176
    const-string v2, "unexpected"

    .line 177
    .line 178
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    throw v1

    .line 182
    :cond_c
    if-eqz v7, :cond_d

    .line 183
    .line 184
    invoke-virtual {v1}, LW5/D;->onSlotCleaned()V

    .line 185
    .line 186
    .line 187
    sget-object v1, LT5/j;->b:LT5/h;

    .line 188
    .line 189
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendException()Ljava/lang/Throwable;

    .line 190
    .line 191
    .line 192
    move-result-object v2

    .line 193
    invoke-virtual {v1, v2}, LT5/h;->closed-JP2dKIU(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    return-object v1

    .line 198
    :cond_d
    instance-of v3, v6, LR5/S0;

    .line 199
    .line 200
    if-eqz v3, :cond_e

    .line 201
    .line 202
    move-object v9, v6

    .line 203
    check-cast v9, LR5/S0;

    .line 204
    .line 205
    goto :goto_4

    .line 206
    :cond_e
    const/4 v9, 0x0

    .line 207
    :goto_4
    if-eqz v9, :cond_f

    .line 208
    .line 209
    invoke-static {p0, v9, v1, v2}, Lkotlinx/coroutines/channels/BufferedChannel;->access$prepareSenderForSuspension(Lkotlinx/coroutines/channels/BufferedChannel;LR5/S0;LT5/k;I)V

    .line 210
    .line 211
    .line 212
    :cond_f
    iget-wide v3, v1, LW5/D;->f:J

    .line 213
    .line 214
    mul-long/2addr v3, v13

    .line 215
    int-to-long v1, v2

    .line 216
    add-long/2addr v3, v1

    .line 217
    invoke-virtual {p0, v3, v4}, Lkotlinx/coroutines/channels/BufferedChannel;->dropFirstElementUntilTheSpecifiedCellIsInTheBuffer(J)V

    .line 218
    .line 219
    .line 220
    sget-object v1, LT5/j;->b:LT5/h;

    .line 221
    .line 222
    invoke-virtual {v1, v8}, LT5/h;->success-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    return-object v1

    .line 227
    :cond_10
    sget-object v1, LT5/j;->b:LT5/h;

    .line 228
    .line 229
    invoke-virtual {v1, v8}, LT5/h;->success-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object v1

    .line 233
    return-object v1

    .line 234
    :cond_11
    invoke-virtual {v1}, LW5/e;->cleanPrev()V

    .line 235
    .line 236
    .line 237
    sget-object v1, LT5/j;->b:LT5/h;

    .line 238
    .line 239
    invoke-virtual {v1, v8}, LT5/h;->success-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object v1

    .line 243
    return-object v1
.end method

.method public send(Ljava/lang/Object;Ly5/c;)Ljava/lang/Object;
    .locals 2
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
    const/4 p2, 0x1

    .line 2
    invoke-virtual {p0, p1, p2}, LT5/n;->p(Ljava/lang/Object;Z)Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object p2

    .line 6
    instance-of v0, p2, LT5/g;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-static {p2}, LT5/j;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 11
    .line 12
    .line 13
    iget-object p2, p0, Lkotlinx/coroutines/channels/BufferedChannel;->e:LH5/l;

    .line 14
    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x2

    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-static {p2, p1, v1, v0, v1}, Lkotlinx/coroutines/internal/OnUndeliveredElementKt;->callUndeliveredElementCatchingException$default(LH5/l;Ljava/lang/Object;Lkotlinx/coroutines/internal/UndeliveredElementException;ILjava/lang/Object;)Lkotlinx/coroutines/internal/UndeliveredElementException;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendException()Ljava/lang/Throwable;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    invoke-static {p1, p2}, Lu5/a;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 30
    .line 31
    .line 32
    throw p1

    .line 33
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendException()Ljava/lang/Throwable;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    throw p1

    .line 38
    :cond_1
    sget-object p1, Lu5/j;->a:Lu5/j;

    .line 39
    .line 40
    return-object p1
.end method

.method public trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, LT5/n;->p(Ljava/lang/Object;Z)Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method
