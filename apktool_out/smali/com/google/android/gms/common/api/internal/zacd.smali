.class final Lcom/google/android/gms/common/api/internal/zacd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnCompleteListener<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

.field public final b:I

.field public final c:Lcom/google/android/gms/common/api/internal/ApiKey;

.field public final d:J

.field public final e:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/GoogleApiManager;ILcom/google/android/gms/common/api/internal/ApiKey;JJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zacd;->a:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 5
    .line 6
    iput p2, p0, Lcom/google/android/gms/common/api/internal/zacd;->b:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/common/api/internal/zacd;->c:Lcom/google/android/gms/common/api/internal/ApiKey;

    .line 9
    .line 10
    iput-wide p4, p0, Lcom/google/android/gms/common/api/internal/zacd;->d:J

    .line 11
    .line 12
    iput-wide p6, p0, Lcom/google/android/gms/common/api/internal/zacd;->e:J

    .line 13
    .line 14
    return-void
.end method

.method public static a(Lcom/google/android/gms/common/api/internal/zabq;Lcom/google/android/gms/common/internal/BaseGmsClient;I)Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getTelemetryConfiguration()Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_3

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->getMethodInvocationTelemetryEnabled()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_3

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->getMethodInvocationMethodKeyAllowlist()[I

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->getMethodInvocationMethodKeyDisallowlist()[I

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-static {v0, p2}, Lcom/google/android/gms/common/util/ArrayUtils;->contains([II)Z

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    if-eqz p2, :cond_2

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    invoke-static {v0, p2}, Lcom/google/android/gms/common/util/ArrayUtils;->contains([II)Z

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    if-nez p2, :cond_2

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_2
    :goto_0
    iget p0, p0, Lcom/google/android/gms/common/api/internal/zabq;->l:I

    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->getMaxMethodInvocationsLogged()I

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    if-ge p0, p2, :cond_3

    .line 47
    .line 48
    return-object p1

    .line 49
    :cond_3
    :goto_1
    const/4 p0, 0x0

    .line 50
    return-object p0
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/gms/common/api/internal/zacd;->a:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->a()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    goto/16 :goto_8

    .line 12
    .line 13
    :cond_0
    invoke-static {}, Lcom/google/android/gms/common/internal/RootTelemetryConfigManager;->getInstance()Lcom/google/android/gms/common/internal/RootTelemetryConfigManager;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/RootTelemetryConfigManager;->getConfig()Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->getMethodInvocationTelemetryEnabled()Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-eqz v3, :cond_d

    .line 28
    .line 29
    :cond_1
    iget-object v3, v1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->s:Ljava/util/concurrent/ConcurrentHashMap;

    .line 30
    .line 31
    iget-object v4, v0, Lcom/google/android/gms/common/api/internal/zacd;->c:Lcom/google/android/gms/common/api/internal/ApiKey;

    .line 32
    .line 33
    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    check-cast v3, Lcom/google/android/gms/common/api/internal/zabq;

    .line 38
    .line 39
    if-eqz v3, :cond_d

    .line 40
    .line 41
    invoke-virtual {v3}, Lcom/google/android/gms/common/api/internal/zabq;->zaf()Lcom/google/android/gms/common/api/Api$Client;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    instance-of v4, v4, Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 46
    .line 47
    if-nez v4, :cond_2

    .line 48
    .line 49
    goto/16 :goto_8

    .line 50
    .line 51
    :cond_2
    invoke-virtual {v3}, Lcom/google/android/gms/common/api/internal/zabq;->zaf()Lcom/google/android/gms/common/api/Api$Client;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    check-cast v4, Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 56
    .line 57
    iget-wide v5, v0, Lcom/google/android/gms/common/api/internal/zacd;->d:J

    .line 58
    .line 59
    const-wide/16 v7, 0x0

    .line 60
    .line 61
    cmp-long v9, v5, v7

    .line 62
    .line 63
    const/4 v10, 0x1

    .line 64
    const/4 v11, 0x0

    .line 65
    if-lez v9, :cond_3

    .line 66
    .line 67
    move v12, v10

    .line 68
    goto :goto_0

    .line 69
    :cond_3
    move v12, v11

    .line 70
    :goto_0
    invoke-virtual {v4}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getGCoreServiceId()I

    .line 71
    .line 72
    .line 73
    move-result v23

    .line 74
    const/16 v13, 0x64

    .line 75
    .line 76
    if-eqz v2, :cond_7

    .line 77
    .line 78
    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->getMethodTimingTelemetryEnabled()Z

    .line 79
    .line 80
    .line 81
    move-result v14

    .line 82
    and-int/2addr v12, v14

    .line 83
    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->getBatchPeriodMillis()I

    .line 84
    .line 85
    .line 86
    move-result v14

    .line 87
    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->getMaxMethodInvocationsInBatch()I

    .line 88
    .line 89
    .line 90
    move-result v15

    .line 91
    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->getVersion()I

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    invoke-virtual {v4}, Lcom/google/android/gms/common/internal/BaseGmsClient;->hasConnectionInfo()Z

    .line 96
    .line 97
    .line 98
    move-result v16

    .line 99
    if-eqz v16, :cond_6

    .line 100
    .line 101
    invoke-virtual {v4}, Lcom/google/android/gms/common/internal/BaseGmsClient;->isConnecting()Z

    .line 102
    .line 103
    .line 104
    move-result v16

    .line 105
    if-nez v16, :cond_6

    .line 106
    .line 107
    iget v12, v0, Lcom/google/android/gms/common/api/internal/zacd;->b:I

    .line 108
    .line 109
    invoke-static {v3, v4, v12}, Lcom/google/android/gms/common/api/internal/zacd;->a(Lcom/google/android/gms/common/api/internal/zabq;Lcom/google/android/gms/common/internal/BaseGmsClient;I)Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    if-nez v3, :cond_4

    .line 114
    .line 115
    goto/16 :goto_8

    .line 116
    .line 117
    :cond_4
    invoke-virtual {v3}, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->getMethodTimingTelemetryEnabled()Z

    .line 118
    .line 119
    .line 120
    move-result v4

    .line 121
    if-eqz v4, :cond_5

    .line 122
    .line 123
    if-lez v9, :cond_5

    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_5
    move v10, v11

    .line 127
    :goto_1
    invoke-virtual {v3}, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->getMaxMethodInvocationsLogged()I

    .line 128
    .line 129
    .line 130
    move-result v15

    .line 131
    move v12, v10

    .line 132
    :cond_6
    move v3, v14

    .line 133
    move v4, v15

    .line 134
    goto :goto_2

    .line 135
    :cond_7
    const/16 v14, 0x1388

    .line 136
    .line 137
    move v2, v11

    .line 138
    move v4, v13

    .line 139
    move v3, v14

    .line 140
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    .line 141
    .line 142
    .line 143
    move-result v9

    .line 144
    const/4 v10, -0x1

    .line 145
    if-eqz v9, :cond_8

    .line 146
    .line 147
    move v15, v11

    .line 148
    move/from16 v16, v15

    .line 149
    .line 150
    goto :goto_5

    .line 151
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/tasks/Task;->isCanceled()Z

    .line 152
    .line 153
    .line 154
    move-result v9

    .line 155
    if-eqz v9, :cond_9

    .line 156
    .line 157
    move/from16 v16, v10

    .line 158
    .line 159
    move v15, v13

    .line 160
    goto :goto_5

    .line 161
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    .line 162
    .line 163
    .line 164
    move-result-object v9

    .line 165
    instance-of v11, v9, Lcom/google/android/gms/common/api/ApiException;

    .line 166
    .line 167
    if-eqz v11, :cond_b

    .line 168
    .line 169
    check-cast v9, Lcom/google/android/gms/common/api/ApiException;

    .line 170
    .line 171
    invoke-virtual {v9}, Lcom/google/android/gms/common/api/ApiException;->getStatus()Lcom/google/android/gms/common/api/Status;

    .line 172
    .line 173
    .line 174
    move-result-object v9

    .line 175
    invoke-virtual {v9}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    .line 176
    .line 177
    .line 178
    move-result v11

    .line 179
    invoke-virtual {v9}, Lcom/google/android/gms/common/api/Status;->getConnectionResult()Lcom/google/android/gms/common/ConnectionResult;

    .line 180
    .line 181
    .line 182
    move-result-object v9

    .line 183
    if-nez v9, :cond_a

    .line 184
    .line 185
    move v9, v10

    .line 186
    goto :goto_3

    .line 187
    :cond_a
    invoke-virtual {v9}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    .line 188
    .line 189
    .line 190
    move-result v9

    .line 191
    :goto_3
    move/from16 v16, v9

    .line 192
    .line 193
    :goto_4
    move v15, v11

    .line 194
    goto :goto_5

    .line 195
    :cond_b
    const/16 v11, 0x65

    .line 196
    .line 197
    move/from16 v16, v10

    .line 198
    .line 199
    goto :goto_4

    .line 200
    :goto_5
    if-eqz v12, :cond_c

    .line 201
    .line 202
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 203
    .line 204
    .line 205
    move-result-wide v7

    .line 206
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 207
    .line 208
    .line 209
    move-result-wide v9

    .line 210
    iget-wide v11, v0, Lcom/google/android/gms/common/api/internal/zacd;->e:J

    .line 211
    .line 212
    sub-long/2addr v9, v11

    .line 213
    long-to-int v10, v9

    .line 214
    move-wide/from16 v17, v5

    .line 215
    .line 216
    move-wide/from16 v19, v7

    .line 217
    .line 218
    :goto_6
    move/from16 v24, v10

    .line 219
    .line 220
    goto :goto_7

    .line 221
    :cond_c
    move-wide/from16 v17, v7

    .line 222
    .line 223
    move-wide/from16 v19, v17

    .line 224
    .line 225
    goto :goto_6

    .line 226
    :goto_7
    new-instance v13, Lcom/google/android/gms/common/internal/MethodInvocation;

    .line 227
    .line 228
    const/16 v22, 0x0

    .line 229
    .line 230
    iget v14, v0, Lcom/google/android/gms/common/api/internal/zacd;->b:I

    .line 231
    .line 232
    const/16 v21, 0x0

    .line 233
    .line 234
    invoke-direct/range {v13 .. v24}, Lcom/google/android/gms/common/internal/MethodInvocation;-><init>(IIIJJLjava/lang/String;Ljava/lang/String;II)V

    .line 235
    .line 236
    .line 237
    move-object/from16 v16, v13

    .line 238
    .line 239
    int-to-long v5, v3

    .line 240
    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->w:Lcom/google/android/gms/internal/base/zaq;

    .line 241
    .line 242
    new-instance v15, Lcom/google/android/gms/common/api/internal/zace;

    .line 243
    .line 244
    move/from16 v17, v2

    .line 245
    .line 246
    move/from16 v20, v4

    .line 247
    .line 248
    move-wide/from16 v18, v5

    .line 249
    .line 250
    invoke-direct/range {v15 .. v20}, Lcom/google/android/gms/common/api/internal/zace;-><init>(Lcom/google/android/gms/common/internal/MethodInvocation;IJI)V

    .line 251
    .line 252
    .line 253
    const/16 v2, 0x12

    .line 254
    .line 255
    invoke-virtual {v1, v2, v15}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 256
    .line 257
    .line 258
    move-result-object v2

    .line 259
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 260
    .line 261
    .line 262
    :cond_d
    :goto_8
    return-void
.end method
