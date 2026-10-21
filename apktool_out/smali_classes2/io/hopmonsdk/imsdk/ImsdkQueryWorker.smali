.class public Lio/hopmonsdk/imsdk/ImsdkQueryWorker;
.super Landroidx/work/Worker;
.source "SourceFile"


# static fields
.field public static n:Z = true

.field public static volatile p:Lo5/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lo5/e;
    .locals 6

    .line 1
    sget-object v0, Lio/hopmonsdk/imsdk/ImsdkQueryWorker;->p:Lo5/e;

    .line 2
    .line 3
    if-nez v0, :cond_3

    .line 4
    .line 5
    const-class v0, Lio/hopmonsdk/imsdk/ImsdkQueryWorker;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lio/hopmonsdk/imsdk/ImsdkQueryWorker;->p:Lo5/e;

    .line 9
    .line 10
    if-nez v1, :cond_2

    .line 11
    .line 12
    new-instance v1, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v2, ","

    .line 18
    .line 19
    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    array-length v2, p0

    .line 24
    const/4 v3, 0x0

    .line 25
    :goto_0
    if-ge v3, v2, :cond_1

    .line 26
    .line 27
    aget-object v4, p0, v3

    .line 28
    .line 29
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    if-nez v5, :cond_0

    .line 38
    .line 39
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    goto :goto_2

    .line 45
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    new-instance p0, Lo5/e;

    .line 49
    .line 50
    invoke-direct {p0, v1, p1}, Lo5/e;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    sput-object p0, Lio/hopmonsdk/imsdk/ImsdkQueryWorker;->p:Lo5/e;

    .line 54
    .line 55
    :cond_2
    monitor-exit v0

    .line 56
    goto :goto_3

    .line 57
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    throw p0

    .line 59
    :cond_3
    :goto_3
    sget-object p0, Lio/hopmonsdk/imsdk/ImsdkQueryWorker;->p:Lo5/e;

    .line 60
    .line 61
    return-object p0
.end method


# virtual methods
.method public doWork()LB1/q;
    .locals 12

    .line 1
    const-string v0, "/active.php?app=imsdk2&app2=appgain&pub="

    .line 2
    .line 3
    invoke-virtual {p0}, LB1/r;->getApplicationContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v1}, Lio/hopmonsdk/Hopmn;->isConsentAgreed(Landroid/content/Context;)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x1

    .line 12
    const/4 v4, 0x0

    .line 13
    const-string v5, "ImsdkQueryWorker"

    .line 14
    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    new-array v0, v4, [Ljava/lang/Object;

    .line 18
    .line 19
    const-string v1, "Consent not granted - skip active check and stop imsdk"

    .line 20
    .line 21
    invoke-static {v5, v1, v0}, Ls5/b;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    invoke-static {}, Ll5/a;->stopImsdk()V

    .line 25
    .line 26
    .line 27
    sput-boolean v3, Lio/hopmonsdk/imsdk/ImsdkQueryWorker;->n:Z

    .line 28
    .line 29
    invoke-static {}, LB1/q;->success()LB1/q;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    return-object v0

    .line 34
    :cond_0
    :try_start_0
    invoke-virtual {p0}, LB1/r;->getInputData()LB1/h;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    const-string v6, "PUBLISHER_ID"

    .line 39
    .line 40
    invoke-virtual {v2, v6}, LB1/h;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {p0}, LB1/r;->getInputData()LB1/h;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    const-string v7, "SEED_CSV"

    .line 49
    .line 50
    invoke-virtual {v6, v7}, LB1/h;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 55
    .line 56
    .line 57
    move-result-object v7

    .line 58
    const-string v8, "android_id"

    .line 59
    .line 60
    invoke-static {v7, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v7

    .line 64
    if-eqz v6, :cond_9

    .line 65
    .line 66
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v8

    .line 70
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 71
    .line 72
    .line 73
    move-result v8

    .line 74
    if-eqz v8, :cond_1

    .line 75
    .line 76
    goto/16 :goto_4

    .line 77
    .line 78
    :cond_1
    invoke-static {v6, v2}, Lio/hopmonsdk/imsdk/ImsdkQueryWorker;->a(Ljava/lang/String;Ljava/lang/String;)Lo5/e;

    .line 79
    .line 80
    .line 81
    move-result-object v6

    .line 82
    new-instance v8, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string v0, "&deviceid="

    .line 91
    .line 92
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string v0, "&ver=extpub"

    .line 99
    .line 100
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    .line 108
    .line 109
    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 110
    .line 111
    .line 112
    new-instance v7, Ljava/util/concurrent/atomic/AtomicReference;

    .line 113
    .line 114
    const/4 v8, 0x0

    .line 115
    invoke-direct {v7, v8}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    new-instance v9, Ljava/util/concurrent/atomic/AtomicReference;

    .line 119
    .line 120
    invoke-direct {v9, v8}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    new-instance v10, Ll5/b;

    .line 124
    .line 125
    invoke-direct {v10, v7, v2, v9}, Ll5/b;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v6, v0, v10}, Lo5/e;->executeGet(Ljava/lang/String;Lo5/d;)V

    .line 129
    .line 130
    .line 131
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 132
    .line 133
    const-wide/16 v10, 0x5a

    .line 134
    .line 135
    invoke-virtual {v2, v10, v11, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    if-nez v0, :cond_2

    .line 140
    .line 141
    const-string v0, "active check timed out"

    .line 142
    .line 143
    new-array v1, v4, [Ljava/lang/Object;

    .line 144
    .line 145
    invoke-static {v5, v0, v1}, Ls5/b;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    :goto_0
    invoke-static {}, LB1/q;->retry()LB1/q;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    return-object v0

    .line 153
    :catch_0
    move-exception v0

    .line 154
    goto/16 :goto_5

    .line 155
    .line 156
    :cond_2
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    check-cast v0, Ljava/lang/String;

    .line 161
    .line 162
    if-nez v0, :cond_3

    .line 163
    .line 164
    const-string v0, "active check failed: %s"

    .line 165
    .line 166
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    new-array v2, v3, [Ljava/lang/Object;

    .line 171
    .line 172
    aput-object v1, v2, v4

    .line 173
    .line 174
    invoke-static {v5, v0, v2}, Ls5/b;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    .line 176
    .line 177
    goto :goto_0

    .line 178
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    const-string v2, "btv"

    .line 183
    .line 184
    const-string v6, "{"

    .line 185
    .line 186
    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 187
    .line 188
    .line 189
    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    if-nez v6, :cond_4

    .line 191
    .line 192
    goto :goto_1

    .line 193
    :cond_4
    :try_start_1
    new-instance v6, Lorg/json/JSONObject;

    .line 194
    .line 195
    invoke-direct {v6, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    const-string v7, "status"

    .line 199
    .line 200
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v7

    .line 204
    const-string v9, "publisher"

    .line 205
    .line 206
    invoke-virtual {v6, v9, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 210
    move-object v0, v7

    .line 211
    :catch_1
    :goto_1
    :try_start_2
    const-string v6, "OK"

    .line 212
    .line 213
    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 214
    .line 215
    .line 216
    move-result v0

    .line 217
    if-eqz v0, :cond_7

    .line 218
    .line 219
    if-eqz v8, :cond_6

    .line 220
    .line 221
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 226
    .line 227
    .line 228
    move-result v0

    .line 229
    if-eqz v0, :cond_5

    .line 230
    .line 231
    goto :goto_2

    .line 232
    :cond_5
    move-object v2, v8

    .line 233
    :cond_6
    :goto_2
    const-string v0, "active OK, publisher=%s"

    .line 234
    .line 235
    new-array v6, v3, [Ljava/lang/Object;

    .line 236
    .line 237
    aput-object v2, v6, v4

    .line 238
    .line 239
    invoke-static {v5, v0, v6}, Ls5/b;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 240
    .line 241
    .line 242
    sget-boolean v0, Lio/hopmonsdk/imsdk/ImsdkQueryWorker;->n:Z

    .line 243
    .line 244
    if-eqz v0, :cond_8

    .line 245
    .line 246
    invoke-static {v1, v2}, Ll5/a;->startImsdk(Landroid/content/Context;Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    sput-boolean v4, Lio/hopmonsdk/imsdk/ImsdkQueryWorker;->n:Z

    .line 250
    .line 251
    goto :goto_3

    .line 252
    :cond_7
    const-string v0, "active INACTIVE - stop imsdk"

    .line 253
    .line 254
    new-array v1, v4, [Ljava/lang/Object;

    .line 255
    .line 256
    invoke-static {v5, v0, v1}, Ls5/b;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 257
    .line 258
    .line 259
    invoke-static {}, Ll5/a;->stopImsdk()V

    .line 260
    .line 261
    .line 262
    sput-boolean v3, Lio/hopmonsdk/imsdk/ImsdkQueryWorker;->n:Z

    .line 263
    .line 264
    :cond_8
    :goto_3
    invoke-static {}, LB1/q;->success()LB1/q;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    return-object v0

    .line 269
    :cond_9
    :goto_4
    const-string v0, "No seed CSV - cannot resolve API server"

    .line 270
    .line 271
    new-array v1, v4, [Ljava/lang/Object;

    .line 272
    .line 273
    invoke-static {v5, v0, v1}, Ls5/b;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 274
    .line 275
    .line 276
    invoke-static {}, LB1/q;->failure()LB1/q;

    .line 277
    .line 278
    .line 279
    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 280
    return-object v0

    .line 281
    :goto_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v0

    .line 285
    new-array v1, v3, [Ljava/lang/Object;

    .line 286
    .line 287
    aput-object v0, v1, v4

    .line 288
    .line 289
    const-string v0, "Exception in imsdk active check: %s"

    .line 290
    .line 291
    invoke-static {v5, v0, v1}, Ls5/b;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 292
    .line 293
    .line 294
    invoke-static {}, LB1/q;->retry()LB1/q;

    .line 295
    .line 296
    .line 297
    move-result-object v0

    .line 298
    return-object v0
.end method
