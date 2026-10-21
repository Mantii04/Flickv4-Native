.class final Lokhttp3/MultipartReader$PartSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le6/L;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/MultipartReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PartSource"
.end annotation


# instance fields
.field final synthetic this$0:Lokhttp3/MultipartReader;

.field private final timeout:Le6/O;


# direct methods
.method public constructor <init>(Lokhttp3/MultipartReader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lokhttp3/MultipartReader$PartSource;->this$0:Lokhttp3/MultipartReader;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Le6/O;

    .line 7
    .line 8
    invoke-direct {p1}, Le6/O;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lokhttp3/MultipartReader$PartSource;->timeout:Le6/O;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 1
    iget-object v0, p0, Lokhttp3/MultipartReader$PartSource;->this$0:Lokhttp3/MultipartReader;

    .line 2
    .line 3
    invoke-static {v0}, Lokhttp3/MultipartReader;->access$getCurrentPart$p(Lokhttp3/MultipartReader;)Lokhttp3/MultipartReader$PartSource;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0, p0}, Lkotlin/jvm/internal/j;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lokhttp3/MultipartReader$PartSource;->this$0:Lokhttp3/MultipartReader;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-static {v0, v1}, Lokhttp3/MultipartReader;->access$setCurrentPart$p(Lokhttp3/MultipartReader;Lokhttp3/MultipartReader$PartSource;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public read(Le6/l;J)J
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-wide/from16 v2, p2

    .line 6
    .line 7
    const-string v4, "sink"

    .line 8
    .line 9
    invoke-static {v0, v4}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-wide/16 v4, 0x0

    .line 13
    .line 14
    cmp-long v6, v2, v4

    .line 15
    .line 16
    if-ltz v6, :cond_a

    .line 17
    .line 18
    iget-object v6, v1, Lokhttp3/MultipartReader$PartSource;->this$0:Lokhttp3/MultipartReader;

    .line 19
    .line 20
    invoke-static {v6}, Lokhttp3/MultipartReader;->access$getCurrentPart$p(Lokhttp3/MultipartReader;)Lokhttp3/MultipartReader$PartSource;

    .line 21
    .line 22
    .line 23
    move-result-object v6

    .line 24
    invoke-static {v6, v1}, Lkotlin/jvm/internal/j;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v6

    .line 28
    if-eqz v6, :cond_9

    .line 29
    .line 30
    iget-object v6, v1, Lokhttp3/MultipartReader$PartSource;->this$0:Lokhttp3/MultipartReader;

    .line 31
    .line 32
    invoke-static {v6}, Lokhttp3/MultipartReader;->access$getSource$p(Lokhttp3/MultipartReader;)Le6/n;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    invoke-interface {v6}, Le6/L;->timeout()Le6/O;

    .line 37
    .line 38
    .line 39
    move-result-object v6

    .line 40
    iget-object v7, v1, Lokhttp3/MultipartReader$PartSource;->timeout:Le6/O;

    .line 41
    .line 42
    iget-object v8, v1, Lokhttp3/MultipartReader$PartSource;->this$0:Lokhttp3/MultipartReader;

    .line 43
    .line 44
    invoke-virtual {v6}, Le6/O;->timeoutNanos()J

    .line 45
    .line 46
    .line 47
    move-result-wide v9

    .line 48
    sget-object v11, Le6/O;->Companion:Le6/N;

    .line 49
    .line 50
    invoke-virtual {v7}, Le6/O;->timeoutNanos()J

    .line 51
    .line 52
    .line 53
    move-result-wide v12

    .line 54
    invoke-virtual {v6}, Le6/O;->timeoutNanos()J

    .line 55
    .line 56
    .line 57
    move-result-wide v14

    .line 58
    invoke-virtual {v11, v12, v13, v14, v15}, Le6/N;->minTimeout(JJ)J

    .line 59
    .line 60
    .line 61
    move-result-wide v11

    .line 62
    sget-object v13, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 63
    .line 64
    invoke-virtual {v6, v11, v12, v13}, Le6/O;->timeout(JLjava/util/concurrent/TimeUnit;)Le6/O;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v6}, Le6/O;->hasDeadline()Z

    .line 68
    .line 69
    .line 70
    move-result v11

    .line 71
    if-eqz v11, :cond_4

    .line 72
    .line 73
    invoke-virtual {v6}, Le6/O;->deadlineNanoTime()J

    .line 74
    .line 75
    .line 76
    move-result-wide v11

    .line 77
    invoke-virtual {v7}, Le6/O;->hasDeadline()Z

    .line 78
    .line 79
    .line 80
    move-result v16

    .line 81
    if-eqz v16, :cond_0

    .line 82
    .line 83
    move-wide/from16 v16, v4

    .line 84
    .line 85
    invoke-virtual {v6}, Le6/O;->deadlineNanoTime()J

    .line 86
    .line 87
    .line 88
    move-result-wide v4

    .line 89
    invoke-virtual {v7}, Le6/O;->deadlineNanoTime()J

    .line 90
    .line 91
    .line 92
    move-result-wide v14

    .line 93
    invoke-static {v4, v5, v14, v15}, Ljava/lang/Math;->min(JJ)J

    .line 94
    .line 95
    .line 96
    move-result-wide v4

    .line 97
    invoke-virtual {v6, v4, v5}, Le6/O;->deadlineNanoTime(J)Le6/O;

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_0
    move-wide/from16 v16, v4

    .line 102
    .line 103
    :goto_0
    :try_start_0
    invoke-static {v8, v2, v3}, Lokhttp3/MultipartReader;->access$currentPartBytesRemaining(Lokhttp3/MultipartReader;J)J

    .line 104
    .line 105
    .line 106
    move-result-wide v2

    .line 107
    cmp-long v4, v2, v16

    .line 108
    .line 109
    if-nez v4, :cond_1

    .line 110
    .line 111
    const-wide/16 v14, -0x1

    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_1
    invoke-static {v8}, Lokhttp3/MultipartReader;->access$getSource$p(Lokhttp3/MultipartReader;)Le6/n;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    invoke-interface {v4, v0, v2, v3}, Le6/L;->read(Le6/l;J)J

    .line 119
    .line 120
    .line 121
    move-result-wide v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    :goto_1
    invoke-virtual {v6, v9, v10, v13}, Le6/O;->timeout(JLjava/util/concurrent/TimeUnit;)Le6/O;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v7}, Le6/O;->hasDeadline()Z

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    if-eqz v0, :cond_2

    .line 130
    .line 131
    invoke-virtual {v6, v11, v12}, Le6/O;->deadlineNanoTime(J)Le6/O;

    .line 132
    .line 133
    .line 134
    :cond_2
    return-wide v14

    .line 135
    :catchall_0
    move-exception v0

    .line 136
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 137
    .line 138
    invoke-virtual {v6, v9, v10, v2}, Le6/O;->timeout(JLjava/util/concurrent/TimeUnit;)Le6/O;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v7}, Le6/O;->hasDeadline()Z

    .line 142
    .line 143
    .line 144
    move-result v2

    .line 145
    if-eqz v2, :cond_3

    .line 146
    .line 147
    invoke-virtual {v6, v11, v12}, Le6/O;->deadlineNanoTime(J)Le6/O;

    .line 148
    .line 149
    .line 150
    :cond_3
    throw v0

    .line 151
    :cond_4
    move-wide/from16 v16, v4

    .line 152
    .line 153
    invoke-virtual {v7}, Le6/O;->hasDeadline()Z

    .line 154
    .line 155
    .line 156
    move-result v4

    .line 157
    if-eqz v4, :cond_5

    .line 158
    .line 159
    invoke-virtual {v7}, Le6/O;->deadlineNanoTime()J

    .line 160
    .line 161
    .line 162
    move-result-wide v4

    .line 163
    invoke-virtual {v6, v4, v5}, Le6/O;->deadlineNanoTime(J)Le6/O;

    .line 164
    .line 165
    .line 166
    :cond_5
    :try_start_1
    invoke-static {v8, v2, v3}, Lokhttp3/MultipartReader;->access$currentPartBytesRemaining(Lokhttp3/MultipartReader;J)J

    .line 167
    .line 168
    .line 169
    move-result-wide v2

    .line 170
    cmp-long v4, v2, v16

    .line 171
    .line 172
    if-nez v4, :cond_6

    .line 173
    .line 174
    const-wide/16 v14, -0x1

    .line 175
    .line 176
    goto :goto_2

    .line 177
    :cond_6
    invoke-static {v8}, Lokhttp3/MultipartReader;->access$getSource$p(Lokhttp3/MultipartReader;)Le6/n;

    .line 178
    .line 179
    .line 180
    move-result-object v4

    .line 181
    invoke-interface {v4, v0, v2, v3}, Le6/L;->read(Le6/l;J)J

    .line 182
    .line 183
    .line 184
    move-result-wide v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 185
    :goto_2
    invoke-virtual {v6, v9, v10, v13}, Le6/O;->timeout(JLjava/util/concurrent/TimeUnit;)Le6/O;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v7}, Le6/O;->hasDeadline()Z

    .line 189
    .line 190
    .line 191
    move-result v0

    .line 192
    if-eqz v0, :cond_7

    .line 193
    .line 194
    invoke-virtual {v6}, Le6/O;->clearDeadline()Le6/O;

    .line 195
    .line 196
    .line 197
    :cond_7
    return-wide v14

    .line 198
    :catchall_1
    move-exception v0

    .line 199
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 200
    .line 201
    invoke-virtual {v6, v9, v10, v2}, Le6/O;->timeout(JLjava/util/concurrent/TimeUnit;)Le6/O;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v7}, Le6/O;->hasDeadline()Z

    .line 205
    .line 206
    .line 207
    move-result v2

    .line 208
    if-eqz v2, :cond_8

    .line 209
    .line 210
    invoke-virtual {v6}, Le6/O;->clearDeadline()Le6/O;

    .line 211
    .line 212
    .line 213
    :cond_8
    throw v0

    .line 214
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 215
    .line 216
    const-string v2, "closed"

    .line 217
    .line 218
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    throw v0

    .line 222
    :cond_a
    const-string v0, "byteCount < 0: "

    .line 223
    .line 224
    invoke-static {v0, v2, v3}, LA/i;->i(Ljava/lang/String;J)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 229
    .line 230
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    throw v2
.end method

.method public timeout()Le6/O;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/MultipartReader$PartSource;->timeout:Le6/O;

    .line 2
    .line 3
    return-object v0
.end method
