.class public abstract Lkotlinx/coroutines/channels/BufferedChannelKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LT5/k;

.field public static final b:I

.field public static final c:I

.field public static final d:LW5/G;

.field public static final e:LW5/G;

.field public static final f:LW5/G;

.field public static final g:LW5/G;

.field public static final h:LW5/G;

.field public static final i:LW5/G;

.field public static final j:LW5/G;

.field public static final k:LW5/G;

.field public static final l:LW5/G;

.field public static final m:LW5/G;

.field public static final n:LW5/G;

.field public static final o:LW5/G;

.field public static final p:LW5/G;

.field public static final q:LW5/G;

.field public static final r:LW5/G;

.field public static final s:LW5/G;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, LT5/k;

    .line 2
    .line 3
    const/4 v4, 0x0

    .line 4
    const/4 v5, 0x0

    .line 5
    const-wide/16 v1, -0x1

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct/range {v0 .. v5}, LT5/k;-><init>(JLT5/k;Lkotlinx/coroutines/channels/BufferedChannel;I)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->a:LT5/k;

    .line 12
    .line 13
    const/16 v5, 0xc

    .line 14
    .line 15
    const/4 v6, 0x0

    .line 16
    const-string v1, "kotlinx.coroutines.bufferedChannel.segmentSize"

    .line 17
    .line 18
    const/16 v2, 0x20

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    const/4 v4, 0x0

    .line 22
    invoke-static/range {v1 .. v6}, LW5/H;->systemProp$default(Ljava/lang/String;IIIILjava/lang/Object;)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    sput v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->b:I

    .line 27
    .line 28
    const-string v1, "kotlinx.coroutines.bufferedChannel.expandBufferCompletionWaitIterations"

    .line 29
    .line 30
    const/16 v2, 0x2710

    .line 31
    .line 32
    invoke-static/range {v1 .. v6}, LW5/H;->systemProp$default(Ljava/lang/String;IIIILjava/lang/Object;)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    sput v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->c:I

    .line 37
    .line 38
    new-instance v0, LW5/G;

    .line 39
    .line 40
    const-string v1, "BUFFERED"

    .line 41
    .line 42
    invoke-direct {v0, v1}, LW5/G;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    sput-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->d:LW5/G;

    .line 46
    .line 47
    new-instance v0, LW5/G;

    .line 48
    .line 49
    const-string v1, "SHOULD_BUFFER"

    .line 50
    .line 51
    invoke-direct {v0, v1}, LW5/G;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    sput-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->e:LW5/G;

    .line 55
    .line 56
    new-instance v0, LW5/G;

    .line 57
    .line 58
    const-string v1, "S_RESUMING_BY_RCV"

    .line 59
    .line 60
    invoke-direct {v0, v1}, LW5/G;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    sput-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->f:LW5/G;

    .line 64
    .line 65
    new-instance v0, LW5/G;

    .line 66
    .line 67
    const-string v1, "RESUMING_BY_EB"

    .line 68
    .line 69
    invoke-direct {v0, v1}, LW5/G;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    sput-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->g:LW5/G;

    .line 73
    .line 74
    new-instance v0, LW5/G;

    .line 75
    .line 76
    const-string v1, "POISONED"

    .line 77
    .line 78
    invoke-direct {v0, v1}, LW5/G;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    sput-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->h:LW5/G;

    .line 82
    .line 83
    new-instance v0, LW5/G;

    .line 84
    .line 85
    const-string v1, "DONE_RCV"

    .line 86
    .line 87
    invoke-direct {v0, v1}, LW5/G;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    sput-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->i:LW5/G;

    .line 91
    .line 92
    new-instance v0, LW5/G;

    .line 93
    .line 94
    const-string v1, "INTERRUPTED_SEND"

    .line 95
    .line 96
    invoke-direct {v0, v1}, LW5/G;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    sput-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->j:LW5/G;

    .line 100
    .line 101
    new-instance v0, LW5/G;

    .line 102
    .line 103
    const-string v1, "INTERRUPTED_RCV"

    .line 104
    .line 105
    invoke-direct {v0, v1}, LW5/G;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    sput-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->k:LW5/G;

    .line 109
    .line 110
    new-instance v0, LW5/G;

    .line 111
    .line 112
    const-string v1, "CHANNEL_CLOSED"

    .line 113
    .line 114
    invoke-direct {v0, v1}, LW5/G;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    sput-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->l:LW5/G;

    .line 118
    .line 119
    new-instance v0, LW5/G;

    .line 120
    .line 121
    const-string v1, "SUSPEND"

    .line 122
    .line 123
    invoke-direct {v0, v1}, LW5/G;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    sput-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->m:LW5/G;

    .line 127
    .line 128
    new-instance v0, LW5/G;

    .line 129
    .line 130
    const-string v1, "SUSPEND_NO_WAITER"

    .line 131
    .line 132
    invoke-direct {v0, v1}, LW5/G;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    sput-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->n:LW5/G;

    .line 136
    .line 137
    new-instance v0, LW5/G;

    .line 138
    .line 139
    const-string v1, "FAILED"

    .line 140
    .line 141
    invoke-direct {v0, v1}, LW5/G;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    sput-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->o:LW5/G;

    .line 145
    .line 146
    new-instance v0, LW5/G;

    .line 147
    .line 148
    const-string v1, "NO_RECEIVE_RESULT"

    .line 149
    .line 150
    invoke-direct {v0, v1}, LW5/G;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    sput-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->p:LW5/G;

    .line 154
    .line 155
    new-instance v0, LW5/G;

    .line 156
    .line 157
    const-string v1, "CLOSE_HANDLER_CLOSED"

    .line 158
    .line 159
    invoke-direct {v0, v1}, LW5/G;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    sput-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->q:LW5/G;

    .line 163
    .line 164
    new-instance v0, LW5/G;

    .line 165
    .line 166
    const-string v1, "CLOSE_HANDLER_INVOKED"

    .line 167
    .line 168
    invoke-direct {v0, v1}, LW5/G;-><init>(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    sput-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->r:LW5/G;

    .line 172
    .line 173
    new-instance v0, LW5/G;

    .line 174
    .line 175
    const-string v1, "NO_CLOSE_CAUSE"

    .line 176
    .line 177
    invoke-direct {v0, v1}, LW5/G;-><init>(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    sput-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->s:LW5/G;

    .line 181
    .line 182
    return-void
.end method

.method public static final access$constructEBCompletedAndPauseFlag(JZ)J
    .locals 2

    if-eqz p2, :cond_0

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    add-long/2addr v0, p0

    return-wide v0
.end method

.method public static final access$constructSendersAndCloseStatus(JI)J
    .locals 2

    int-to-long v0, p2

    const/16 p2, 0x3c

    shl-long/2addr v0, p2

    add-long/2addr v0, p0

    return-wide v0
.end method

.method public static final access$createSegment(JLT5/k;)LT5/k;
    .locals 6

    .line 1
    new-instance v0, LT5/k;

    .line 2
    .line 3
    invoke-virtual {p2}, LT5/k;->getChannel()Lkotlinx/coroutines/channels/BufferedChannel;

    .line 4
    .line 5
    .line 6
    move-result-object v4

    .line 7
    const/4 v5, 0x0

    .line 8
    move-wide v1, p0

    .line 9
    move-object v3, p2

    .line 10
    invoke-direct/range {v0 .. v5}, LT5/k;-><init>(JLT5/k;Lkotlinx/coroutines/channels/BufferedChannel;I)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public static final synthetic access$getCLOSE_HANDLER_CLOSED$p()LW5/G;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->q:LW5/G;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getCLOSE_HANDLER_INVOKED$p()LW5/G;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->r:LW5/G;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getDONE_RCV$p()LW5/G;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->i:LW5/G;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getEXPAND_BUFFER_COMPLETION_WAIT_ITERATIONS$p()I
    .locals 1

    .line 1
    sget v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->c:I

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic access$getFAILED$p()LW5/G;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->o:LW5/G;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getINTERRUPTED_RCV$p()LW5/G;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->k:LW5/G;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getINTERRUPTED_SEND$p()LW5/G;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->j:LW5/G;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getIN_BUFFER$p()LW5/G;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->e:LW5/G;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getNO_CLOSE_CAUSE$p()LW5/G;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->s:LW5/G;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getNO_RECEIVE_RESULT$p()LW5/G;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->p:LW5/G;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getNULL_SEGMENT$p()LT5/k;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->a:LT5/k;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getPOISONED$p()LW5/G;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->h:LW5/G;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getRESUMING_BY_EB$p()LW5/G;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->g:LW5/G;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getRESUMING_BY_RCV$p()LW5/G;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->f:LW5/G;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getSUSPEND$p()LW5/G;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->m:LW5/G;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getSUSPEND_NO_WAITER$p()LW5/G;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->n:LW5/G;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final access$initialBufferEnd(I)J
    .locals 2

    if-eqz p0, :cond_1

    const v0, 0x7fffffff

    if-eq p0, v0, :cond_0

    int-to-long v0, p0

    return-wide v0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0

    :cond_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static final access$tryResume0(LR5/m;Ljava/lang/Object;LH5/l;)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-interface {p0, p1, v0, p2}, LR5/m;->tryResume(Ljava/lang/Object;Ljava/lang/Object;LH5/l;)Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-interface {p0, p1}, LR5/m;->completeResume(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    return p0
.end method

.method public static final createSegmentFunction()LN5/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "LN5/e;"
        }
    .end annotation

    .line 1
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt$createSegmentFunction$1;->b:Lkotlinx/coroutines/channels/BufferedChannelKt$createSegmentFunction$1;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final getCHANNEL_CLOSED()LW5/G;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->l:LW5/G;

    .line 2
    .line 3
    return-object v0
.end method
