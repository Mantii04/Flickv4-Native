.class public final LT5/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LT5/e;
.implements LR5/S0;


# instance fields
.field public b:Ljava/lang/Object;

.field public e:LR5/n;

.field public final synthetic f:Lkotlinx/coroutines/channels/BufferedChannel;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/channels/BufferedChannel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, LT5/a;->f:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getNO_RECEIVE_RESULT$p()LW5/G;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, LT5/a;->b:Ljava/lang/Object;

    .line 11
    .line 12
    return-void
.end method

.method public static final access$onClosedHasNextNoWaiterSuspend(LT5/a;)V
    .locals 2

    .line 1
    iget-object v0, p0, LT5/a;->e:LR5/n;

    .line 2
    .line 3
    invoke-static {v0}, Lkotlin/jvm/internal/j;->checkNotNull(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, LT5/a;->e:LR5/n;

    .line 8
    .line 9
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->getCHANNEL_CLOSED()LW5/G;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iput-object v1, p0, LT5/a;->b:Ljava/lang/Object;

    .line 14
    .line 15
    iget-object p0, p0, LT5/a;->f:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 16
    .line 17
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getCloseCause()Ljava/lang/Throwable;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    if-nez p0, :cond_0

    .line 22
    .line 23
    sget p0, Lkotlin/Result;->b:I

    .line 24
    .line 25
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 26
    .line 27
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {v0, p0}, LR5/n;->resumeWith(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    sget v1, Lkotlin/Result;->b:I

    .line 36
    .line 37
    invoke-static {p0}, Lkotlin/b;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-virtual {v0, p0}, LR5/n;->resumeWith(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public static final synthetic access$setContinuation$p(LT5/a;LR5/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, LT5/a;->e:LR5/n;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setReceiveResult$p(LT5/a;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, LT5/a;->b:Ljava/lang/Object;

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public hasNext(Ly5/c;)Ljava/lang/Object;
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
    iget-object v6, p0, LT5/a;->f:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 6
    .line 7
    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, LT5/k;

    .line 12
    .line 13
    :goto_0
    invoke-virtual {v6}, Lkotlinx/coroutines/channels/BufferedChannel;->isClosedForReceive()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->getCHANNEL_CLOSED()LW5/G;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, LT5/a;->b:Ljava/lang/Object;

    .line 24
    .line 25
    invoke-virtual {v6}, Lkotlinx/coroutines/channels/BufferedChannel;->getCloseCause()Ljava/lang/Throwable;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    invoke-static {v0}, LA5/a;->boxBoolean(Z)Ljava/lang/Boolean;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    return-object v0

    .line 37
    :cond_0
    invoke-static {v0}, LW5/F;->recoverStackTrace(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    throw v0

    .line 42
    :cond_1
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->access$getReceivers$FU$p()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v1, v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    .line 47
    .line 48
    .line 49
    move-result-wide v3

    .line 50
    sget v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->b:I

    .line 51
    .line 52
    int-to-long v7, v1

    .line 53
    div-long v7, v3, v7

    .line 54
    .line 55
    int-to-long v1, v1

    .line 56
    rem-long v1, v3, v1

    .line 57
    .line 58
    long-to-int v2, v1

    .line 59
    iget-wide v9, v0, LW5/D;->f:J

    .line 60
    .line 61
    cmp-long v1, v9, v7

    .line 62
    .line 63
    if-eqz v1, :cond_2

    .line 64
    .line 65
    invoke-static {v6, v7, v8, v0}, Lkotlinx/coroutines/channels/BufferedChannel;->access$findSegmentReceive(Lkotlinx/coroutines/channels/BufferedChannel;JLT5/k;)LT5/k;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    if-nez v1, :cond_3

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_2
    move-object v1, v0

    .line 73
    :cond_3
    const/4 v11, 0x0

    .line 74
    move-object v7, v1

    .line 75
    move v8, v2

    .line 76
    move-wide v9, v3

    .line 77
    invoke-static/range {v6 .. v11}, Lkotlinx/coroutines/channels/BufferedChannel;->access$updateCellReceive(Lkotlinx/coroutines/channels/BufferedChannel;LT5/k;IJLjava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getSUSPEND$p()LW5/G;

    .line 82
    .line 83
    .line 84
    move-result-object v7

    .line 85
    if-eq v0, v7, :cond_13

    .line 86
    .line 87
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getFAILED$p()LW5/G;

    .line 88
    .line 89
    .line 90
    move-result-object v7

    .line 91
    if-ne v0, v7, :cond_5

    .line 92
    .line 93
    invoke-virtual {v6}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendersCounter$kotlinx_coroutines_core()J

    .line 94
    .line 95
    .line 96
    move-result-wide v7

    .line 97
    cmp-long v0, v3, v7

    .line 98
    .line 99
    if-gez v0, :cond_4

    .line 100
    .line 101
    invoke-virtual {v1}, LW5/e;->cleanPrev()V

    .line 102
    .line 103
    .line 104
    :cond_4
    move-object v0, v1

    .line 105
    goto :goto_0

    .line 106
    :cond_5
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getSUSPEND_NO_WAITER$p()LW5/G;

    .line 107
    .line 108
    .line 109
    move-result-object v6

    .line 110
    const/4 v7, 0x1

    .line 111
    if-ne v0, v6, :cond_12

    .line 112
    .line 113
    iget-object v0, p0, LT5/a;->f:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 114
    .line 115
    invoke-static {p1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt;->intercepted(Ly5/c;)Ly5/c;

    .line 116
    .line 117
    .line 118
    move-result-object v6

    .line 119
    invoke-static {v6}, LR5/p;->getOrCreateCancellableContinuation(Ly5/c;)LR5/n;

    .line 120
    .line 121
    .line 122
    move-result-object v6

    .line 123
    :try_start_0
    invoke-static {p0, v6}, LT5/a;->access$setContinuation$p(LT5/a;LR5/n;)V

    .line 124
    .line 125
    .line 126
    move-object v5, p0

    .line 127
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/channels/BufferedChannel;->access$updateCellReceive(Lkotlinx/coroutines/channels/BufferedChannel;LT5/k;IJLjava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v8

    .line 131
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getSUSPEND$p()LW5/G;

    .line 132
    .line 133
    .line 134
    move-result-object v9

    .line 135
    if-ne v8, v9, :cond_6

    .line 136
    .line 137
    invoke-static {v0, p0, v1, v2}, Lkotlinx/coroutines/channels/BufferedChannel;->access$prepareReceiverForSuspension(Lkotlinx/coroutines/channels/BufferedChannel;LR5/S0;LT5/k;I)V

    .line 138
    .line 139
    .line 140
    goto/16 :goto_3

    .line 141
    .line 142
    :catchall_0
    move-exception v0

    .line 143
    goto/16 :goto_4

    .line 144
    .line 145
    :cond_6
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getFAILED$p()LW5/G;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    const/4 v9, 0x0

    .line 150
    if-ne v8, v2, :cond_10

    .line 151
    .line 152
    invoke-virtual {v0}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendersCounter$kotlinx_coroutines_core()J

    .line 153
    .line 154
    .line 155
    move-result-wide v10

    .line 156
    cmp-long v2, v3, v10

    .line 157
    .line 158
    if-gez v2, :cond_7

    .line 159
    .line 160
    invoke-virtual {v1}, LW5/e;->cleanPrev()V

    .line 161
    .line 162
    .line 163
    :cond_7
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->access$getReceiveSegment$FU$p()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    check-cast v1, LT5/k;

    .line 172
    .line 173
    :cond_8
    :goto_1
    invoke-virtual {v0}, Lkotlinx/coroutines/channels/BufferedChannel;->isClosedForReceive()Z

    .line 174
    .line 175
    .line 176
    move-result v2

    .line 177
    if-eqz v2, :cond_9

    .line 178
    .line 179
    invoke-static {p0}, LT5/a;->access$onClosedHasNextNoWaiterSuspend(LT5/a;)V

    .line 180
    .line 181
    .line 182
    goto/16 :goto_3

    .line 183
    .line 184
    :cond_9
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->access$getReceivers$FU$p()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    .line 189
    .line 190
    .line 191
    move-result-wide v3

    .line 192
    sget v2, Lkotlinx/coroutines/channels/BufferedChannelKt;->b:I

    .line 193
    .line 194
    int-to-long v10, v2

    .line 195
    div-long v12, v3, v10

    .line 196
    .line 197
    rem-long v10, v3, v10

    .line 198
    .line 199
    long-to-int v2, v10

    .line 200
    iget-wide v10, v1, LW5/D;->f:J

    .line 201
    .line 202
    cmp-long v8, v10, v12

    .line 203
    .line 204
    if-eqz v8, :cond_b

    .line 205
    .line 206
    invoke-static {v0, v12, v13, v1}, Lkotlinx/coroutines/channels/BufferedChannel;->access$findSegmentReceive(Lkotlinx/coroutines/channels/BufferedChannel;JLT5/k;)LT5/k;

    .line 207
    .line 208
    .line 209
    move-result-object v8

    .line 210
    if-nez v8, :cond_a

    .line 211
    .line 212
    goto :goto_1

    .line 213
    :cond_a
    move-object v1, v8

    .line 214
    :cond_b
    move-object v5, p0

    .line 215
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/channels/BufferedChannel;->access$updateCellReceive(Lkotlinx/coroutines/channels/BufferedChannel;LT5/k;IJLjava/lang/Object;)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v8

    .line 219
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getSUSPEND$p()LW5/G;

    .line 220
    .line 221
    .line 222
    move-result-object v10

    .line 223
    if-ne v8, v10, :cond_c

    .line 224
    .line 225
    invoke-static {v0, p0, v1, v2}, Lkotlinx/coroutines/channels/BufferedChannel;->access$prepareReceiverForSuspension(Lkotlinx/coroutines/channels/BufferedChannel;LR5/S0;LT5/k;I)V

    .line 226
    .line 227
    .line 228
    goto :goto_3

    .line 229
    :cond_c
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getFAILED$p()LW5/G;

    .line 230
    .line 231
    .line 232
    move-result-object v2

    .line 233
    if-ne v8, v2, :cond_d

    .line 234
    .line 235
    invoke-virtual {v0}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendersCounter$kotlinx_coroutines_core()J

    .line 236
    .line 237
    .line 238
    move-result-wide v10

    .line 239
    cmp-long v2, v3, v10

    .line 240
    .line 241
    if-gez v2, :cond_8

    .line 242
    .line 243
    invoke-virtual {v1}, LW5/e;->cleanPrev()V

    .line 244
    .line 245
    .line 246
    goto :goto_1

    .line 247
    :cond_d
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getSUSPEND_NO_WAITER$p()LW5/G;

    .line 248
    .line 249
    .line 250
    move-result-object v2

    .line 251
    if-eq v8, v2, :cond_f

    .line 252
    .line 253
    invoke-virtual {v1}, LW5/e;->cleanPrev()V

    .line 254
    .line 255
    .line 256
    invoke-static {p0, v8}, LT5/a;->access$setReceiveResult$p(LT5/a;Ljava/lang/Object;)V

    .line 257
    .line 258
    .line 259
    invoke-static {p0, v9}, LT5/a;->access$setContinuation$p(LT5/a;LR5/n;)V

    .line 260
    .line 261
    .line 262
    invoke-static {v7}, LA5/a;->boxBoolean(Z)Ljava/lang/Boolean;

    .line 263
    .line 264
    .line 265
    move-result-object v1

    .line 266
    iget-object v0, v0, Lkotlinx/coroutines/channels/BufferedChannel;->e:LH5/l;

    .line 267
    .line 268
    if-eqz v0, :cond_e

    .line 269
    .line 270
    invoke-virtual {v6}, LR5/n;->getContext()Ly5/k;

    .line 271
    .line 272
    .line 273
    move-result-object v2

    .line 274
    invoke-static {v0, v8, v2}, Lkotlinx/coroutines/internal/OnUndeliveredElementKt;->bindCancellationFun(LH5/l;Ljava/lang/Object;Ly5/k;)LH5/l;

    .line 275
    .line 276
    .line 277
    move-result-object v9

    .line 278
    :cond_e
    :goto_2
    invoke-virtual {v6, v1, v9}, LR5/n;->resume(Ljava/lang/Object;LH5/l;)V

    .line 279
    .line 280
    .line 281
    goto :goto_3

    .line 282
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 283
    .line 284
    const-string v1, "unexpected"

    .line 285
    .line 286
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    throw v0

    .line 290
    :cond_10
    invoke-virtual {v1}, LW5/e;->cleanPrev()V

    .line 291
    .line 292
    .line 293
    invoke-static {p0, v8}, LT5/a;->access$setReceiveResult$p(LT5/a;Ljava/lang/Object;)V

    .line 294
    .line 295
    .line 296
    invoke-static {p0, v9}, LT5/a;->access$setContinuation$p(LT5/a;LR5/n;)V

    .line 297
    .line 298
    .line 299
    invoke-static {v7}, LA5/a;->boxBoolean(Z)Ljava/lang/Boolean;

    .line 300
    .line 301
    .line 302
    move-result-object v1

    .line 303
    iget-object v0, v0, Lkotlinx/coroutines/channels/BufferedChannel;->e:LH5/l;

    .line 304
    .line 305
    if-eqz v0, :cond_e

    .line 306
    .line 307
    invoke-virtual {v6}, LR5/n;->getContext()Ly5/k;

    .line 308
    .line 309
    .line 310
    move-result-object v2

    .line 311
    invoke-static {v0, v8, v2}, Lkotlinx/coroutines/internal/OnUndeliveredElementKt;->bindCancellationFun(LH5/l;Ljava/lang/Object;Ly5/k;)LH5/l;

    .line 312
    .line 313
    .line 314
    move-result-object v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    goto :goto_2

    .line 316
    :goto_3
    invoke-virtual {v6}, LR5/n;->getResult()Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    move-result-object v0

    .line 320
    invoke-static {}, Lz5/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 321
    .line 322
    .line 323
    move-result-object v1

    .line 324
    if-ne v0, v1, :cond_11

    .line 325
    .line 326
    invoke-static {p1}, LA5/f;->probeCoroutineSuspended(Ly5/c;)V

    .line 327
    .line 328
    .line 329
    :cond_11
    return-object v0

    .line 330
    :goto_4
    invoke-virtual {v6}, LR5/n;->releaseClaimedReusableContinuation$kotlinx_coroutines_core()V

    .line 331
    .line 332
    .line 333
    throw v0

    .line 334
    :cond_12
    invoke-virtual {v1}, LW5/e;->cleanPrev()V

    .line 335
    .line 336
    .line 337
    iput-object v0, p0, LT5/a;->b:Ljava/lang/Object;

    .line 338
    .line 339
    invoke-static {v7}, LA5/a;->boxBoolean(Z)Ljava/lang/Boolean;

    .line 340
    .line 341
    .line 342
    move-result-object v0

    .line 343
    return-object v0

    .line 344
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 345
    .line 346
    const-string v1, "unreachable"

    .line 347
    .line 348
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    throw v0
.end method

.method public invokeOnCancellation(LW5/D;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LW5/D;",
            "I)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LT5/a;->e:LR5/n;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, LR5/n;->invokeOnCancellation(LW5/D;I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LT5/a;->b:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getNO_RECEIVE_RESULT$p()LW5/G;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eq v0, v1, :cond_1

    .line 8
    .line 9
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getNO_RECEIVE_RESULT$p()LW5/G;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iput-object v1, p0, LT5/a;->b:Ljava/lang/Object;

    .line 14
    .line 15
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->getCHANNEL_CLOSED()LW5/G;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-eq v0, v1, :cond_0

    .line 20
    .line 21
    return-object v0

    .line 22
    :cond_0
    iget-object v0, p0, LT5/a;->f:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 23
    .line 24
    invoke-static {v0}, Lkotlinx/coroutines/channels/BufferedChannel;->access$getReceiveException(Lkotlinx/coroutines/channels/BufferedChannel;)Ljava/lang/Throwable;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0}, LW5/F;->recoverStackTrace(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    throw v0

    .line 33
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 34
    .line 35
    const-string v1, "`hasNext()` has not been invoked"

    .line 36
    .line 37
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw v0
.end method

.method public final tryResumeHasNext(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LT5/a;->e:LR5/n;

    .line 2
    .line 3
    invoke-static {v0}, Lkotlin/jvm/internal/j;->checkNotNull(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, LT5/a;->e:LR5/n;

    .line 8
    .line 9
    iput-object p1, p0, LT5/a;->b:Ljava/lang/Object;

    .line 10
    .line 11
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 12
    .line 13
    iget-object v3, p0, LT5/a;->f:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 14
    .line 15
    iget-object v3, v3, Lkotlinx/coroutines/channels/BufferedChannel;->e:LH5/l;

    .line 16
    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, LR5/n;->getContext()Ly5/k;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {v3, p1, v1}, Lkotlinx/coroutines/internal/OnUndeliveredElementKt;->bindCancellationFun(LH5/l;Ljava/lang/Object;Ly5/k;)LH5/l;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    :cond_0
    invoke-static {v0, v2, v1}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$tryResume0(LR5/m;Ljava/lang/Object;LH5/l;)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    return p1
.end method

.method public final tryResumeHasNextOnClosedChannel()V
    .locals 3

    .line 1
    iget-object v0, p0, LT5/a;->e:LR5/n;

    .line 2
    .line 3
    invoke-static {v0}, Lkotlin/jvm/internal/j;->checkNotNull(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, LT5/a;->e:LR5/n;

    .line 8
    .line 9
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->getCHANNEL_CLOSED()LW5/G;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iput-object v1, p0, LT5/a;->b:Ljava/lang/Object;

    .line 14
    .line 15
    iget-object v1, p0, LT5/a;->f:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 16
    .line 17
    invoke-virtual {v1}, Lkotlinx/coroutines/channels/BufferedChannel;->getCloseCause()Ljava/lang/Throwable;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    sget v1, Lkotlin/Result;->b:I

    .line 24
    .line 25
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 26
    .line 27
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-interface {v0, v1}, Ly5/c;->resumeWith(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    sget v2, Lkotlin/Result;->b:I

    .line 36
    .line 37
    invoke-static {v1}, Lkotlin/b;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-interface {v0, v1}, Ly5/c;->resumeWith(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method
