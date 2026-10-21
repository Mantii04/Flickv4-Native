.class public final LZ2/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:LT2/f;

.field public final c:La3/d;

.field public final d:LZ2/q;

.field public final e:Ljava/util/concurrent/Executor;

.field public final f:Lb3/b;

.field public final g:Lc3/a;

.field public final h:Lc3/a;

.field public final i:La3/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;LT2/f;La3/d;LZ2/q;Ljava/util/concurrent/Executor;Lb3/b;Lc3/a;Lc3/a;La3/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LZ2/m;->a:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, LZ2/m;->b:LT2/f;

    .line 7
    .line 8
    iput-object p3, p0, LZ2/m;->c:La3/d;

    .line 9
    .line 10
    iput-object p4, p0, LZ2/m;->d:LZ2/q;

    .line 11
    .line 12
    iput-object p5, p0, LZ2/m;->e:Ljava/util/concurrent/Executor;

    .line 13
    .line 14
    iput-object p6, p0, LZ2/m;->f:Lb3/b;

    .line 15
    .line 16
    iput-object p7, p0, LZ2/m;->g:Lc3/a;

    .line 17
    .line 18
    iput-object p8, p0, LZ2/m;->h:Lc3/a;

    .line 19
    .line 20
    iput-object p9, p0, LZ2/m;->i:La3/c;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public createMetricsEvent(LT2/o;)LS2/u;
    .locals 4

    .line 1
    iget-object v0, p0, LZ2/m;->i:La3/c;

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    new-instance v1, LA0/a;

    .line 7
    .line 8
    const/16 v2, 0xe

    .line 9
    .line 10
    invoke-direct {v1, v0, v2}, LA0/a;-><init>(Ljava/lang/Object;I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, LZ2/m;->f:Lb3/b;

    .line 14
    .line 15
    check-cast v0, La3/r;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, La3/r;->runCriticalSection(Lb3/a;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, LV2/b;

    .line 22
    .line 23
    invoke-static {}, LS2/u;->builder()LS2/t;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    iget-object v2, p0, LZ2/m;->g:Lc3/a;

    .line 28
    .line 29
    invoke-interface {v2}, Lc3/a;->getTime()J

    .line 30
    .line 31
    .line 32
    move-result-wide v2

    .line 33
    invoke-virtual {v1, v2, v3}, LS2/t;->setEventMillis(J)LS2/t;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    iget-object v2, p0, LZ2/m;->h:Lc3/a;

    .line 38
    .line 39
    invoke-interface {v2}, Lc3/a;->getTime()J

    .line 40
    .line 41
    .line 42
    move-result-wide v2

    .line 43
    invoke-virtual {v1, v2, v3}, LS2/t;->setUptimeMillis(J)LS2/t;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    const-string v2, "GDT_CLIENT_METRICS"

    .line 48
    .line 49
    invoke-virtual {v1, v2}, LS2/t;->setTransportName(Ljava/lang/String;)LS2/t;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    new-instance v2, LS2/s;

    .line 54
    .line 55
    const-string v3, "proto"

    .line 56
    .line 57
    invoke-static {v3}, LP2/b;->of(Ljava/lang/String;)LP2/b;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-virtual {v0}, LV2/b;->toByteArray()[B

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-direct {v2, v3, v0}, LS2/s;-><init>(LP2/b;[B)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, v2}, LS2/t;->setEncodedPayload(LS2/s;)LS2/t;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v0}, LS2/t;->build()LS2/u;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    check-cast p1, LQ2/d;

    .line 77
    .line 78
    invoke-virtual {p1, v0}, LQ2/d;->decorate(LS2/u;)LS2/u;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    return-object p1
.end method

.method public logAndUpdateState(LS2/E;I)LT2/i;
    .locals 12

    .line 1
    invoke-virtual {p1}, LS2/E;->getBackendName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, LZ2/m;->b:LT2/f;

    .line 6
    .line 7
    check-cast v1, LT2/m;

    .line 8
    .line 9
    invoke-virtual {v1, v0}, LT2/m;->get(Ljava/lang/String;)LT2/o;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-wide/16 v1, 0x0

    .line 14
    .line 15
    invoke-static {v1, v2}, LT2/i;->ok(J)LT2/i;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    move-wide v8, v1

    .line 20
    :goto_0
    new-instance v1, LZ2/i;

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-direct {v1, p0, p1, v2}, LZ2/i;-><init>(LZ2/m;LS2/E;I)V

    .line 24
    .line 25
    .line 26
    iget-object v2, p0, LZ2/m;->f:Lb3/b;

    .line 27
    .line 28
    check-cast v2, La3/r;

    .line 29
    .line 30
    invoke-virtual {v2, v1}, La3/r;->runCriticalSection(Lb3/a;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Ljava/lang/Boolean;

    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_9

    .line 41
    .line 42
    new-instance v1, LZ2/i;

    .line 43
    .line 44
    const/4 v4, 0x1

    .line 45
    invoke-direct {v1, p0, p1, v4}, LZ2/i;-><init>(LZ2/m;LS2/E;I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, v1}, La3/r;->runCriticalSection(Lb3/a;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    move-object v6, v1

    .line 53
    check-cast v6, Ljava/lang/Iterable;

    .line 54
    .line 55
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-nez v1, :cond_0

    .line 64
    .line 65
    return-object v3

    .line 66
    :cond_0
    if-nez v0, :cond_1

    .line 67
    .line 68
    const-string v1, "Uploader"

    .line 69
    .line 70
    const-string v3, "Unknown backend for %s, deleting event batch for it..."

    .line 71
    .line 72
    invoke-static {v1, v3, p1}, LW2/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    invoke-static {}, LT2/i;->fatalError()LT2/i;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    :goto_1
    move-object v3, v1

    .line 80
    goto :goto_3

    .line 81
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    .line 82
    .line 83
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .line 85
    .line 86
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    if-eqz v4, :cond_2

    .line 95
    .line 96
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    check-cast v4, La3/m;

    .line 101
    .line 102
    invoke-virtual {v4}, La3/m;->getEvent()LS2/u;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_2
    invoke-virtual {p1}, LS2/E;->shouldUploadClientHealthMetrics()Z

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    if-eqz v3, :cond_3

    .line 115
    .line 116
    invoke-virtual {p0, v0}, LZ2/m;->createMetricsEvent(LT2/o;)LS2/u;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    :cond_3
    invoke-static {}, LT2/h;->builder()LT2/g;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    invoke-virtual {v3, v1}, LT2/g;->setEvents(Ljava/lang/Iterable;)LT2/g;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-virtual {p1}, LS2/E;->getExtras()[B

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    invoke-virtual {v1, v3}, LT2/g;->setExtras([B)LT2/g;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-virtual {v1}, LT2/g;->build()LT2/h;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    move-object v3, v0

    .line 144
    check-cast v3, LQ2/d;

    .line 145
    .line 146
    invoke-virtual {v3, v1}, LQ2/d;->send(LT2/h;)LT2/i;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    goto :goto_1

    .line 151
    :goto_3
    invoke-virtual {v3}, LT2/i;->getStatus()Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    sget-object v4, Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;->e:Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;

    .line 156
    .line 157
    const/4 v10, 0x1

    .line 158
    if-ne v1, v4, :cond_4

    .line 159
    .line 160
    new-instance v4, LZ2/k;

    .line 161
    .line 162
    move-object v5, p0

    .line 163
    move-object v7, p1

    .line 164
    invoke-direct/range {v4 .. v9}, LZ2/k;-><init>(LZ2/m;Ljava/lang/Iterable;LS2/E;J)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v2, v4}, La3/r;->runCriticalSection(Lb3/a;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    add-int/2addr p2, v10

    .line 171
    iget-object p1, v5, LZ2/m;->d:LZ2/q;

    .line 172
    .line 173
    check-cast p1, LZ2/d;

    .line 174
    .line 175
    invoke-virtual {p1, v7, p2, v10}, LZ2/d;->schedule(LS2/E;IZ)V

    .line 176
    .line 177
    .line 178
    return-object v3

    .line 179
    :cond_4
    move-object v5, p0

    .line 180
    move-object v7, p1

    .line 181
    new-instance p1, LX4/a;

    .line 182
    .line 183
    const/4 v1, 0x2

    .line 184
    invoke-direct {p1, v1, p0, v6}, LX4/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v2, p1}, La3/r;->runCriticalSection(Lb3/a;)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v3}, LT2/i;->getStatus()Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    sget-object v1, Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;->b:Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;

    .line 195
    .line 196
    if-ne p1, v1, :cond_5

    .line 197
    .line 198
    invoke-virtual {v3}, LT2/i;->getNextRequestWaitMillis()J

    .line 199
    .line 200
    .line 201
    move-result-wide v10

    .line 202
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    .line 203
    .line 204
    .line 205
    move-result-wide v8

    .line 206
    invoke-virtual {v7}, LS2/E;->shouldUploadClientHealthMetrics()Z

    .line 207
    .line 208
    .line 209
    move-result p1

    .line 210
    if-eqz p1, :cond_8

    .line 211
    .line 212
    new-instance p1, LA0/a;

    .line 213
    .line 214
    const/16 v1, 0xd

    .line 215
    .line 216
    invoke-direct {p1, p0, v1}, LA0/a;-><init>(Ljava/lang/Object;I)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v2, p1}, La3/r;->runCriticalSection(Lb3/a;)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    goto :goto_5

    .line 223
    :cond_5
    invoke-virtual {v3}, LT2/i;->getStatus()Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    sget-object v1, Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;->j:Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;

    .line 228
    .line 229
    if-ne p1, v1, :cond_8

    .line 230
    .line 231
    new-instance p1, Ljava/util/HashMap;

    .line 232
    .line 233
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 234
    .line 235
    .line 236
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 237
    .line 238
    .line 239
    move-result-object v1

    .line 240
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 241
    .line 242
    .line 243
    move-result v4

    .line 244
    if-eqz v4, :cond_7

    .line 245
    .line 246
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object v4

    .line 250
    check-cast v4, La3/m;

    .line 251
    .line 252
    invoke-virtual {v4}, La3/m;->getEvent()LS2/u;

    .line 253
    .line 254
    .line 255
    move-result-object v4

    .line 256
    invoke-virtual {v4}, LS2/u;->getTransportName()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v4

    .line 260
    invoke-virtual {p1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 261
    .line 262
    .line 263
    move-result v6

    .line 264
    if-nez v6, :cond_6

    .line 265
    .line 266
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 267
    .line 268
    .line 269
    move-result-object v6

    .line 270
    invoke-virtual {p1, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    goto :goto_4

    .line 274
    :cond_6
    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object v6

    .line 278
    check-cast v6, Ljava/lang/Integer;

    .line 279
    .line 280
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 281
    .line 282
    .line 283
    move-result v6

    .line 284
    add-int/2addr v6, v10

    .line 285
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 286
    .line 287
    .line 288
    move-result-object v6

    .line 289
    invoke-virtual {p1, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    goto :goto_4

    .line 293
    :cond_7
    new-instance v1, LX4/a;

    .line 294
    .line 295
    const/4 v4, 0x3

    .line 296
    invoke-direct {v1, v4, p0, p1}, LX4/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v2, v1}, La3/r;->runCriticalSection(Lb3/a;)Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    :cond_8
    :goto_5
    move-object p1, v7

    .line 303
    goto/16 :goto_0

    .line 304
    .line 305
    :cond_9
    move-object v5, p0

    .line 306
    move-object v7, p1

    .line 307
    new-instance p1, LZ2/l;

    .line 308
    .line 309
    invoke-direct {p1, p0, v8, v9, v7}, LZ2/l;-><init>(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {v2, p1}, La3/r;->runCriticalSection(Lb3/a;)Ljava/lang/Object;

    .line 313
    .line 314
    .line 315
    return-object v3
.end method

.method public upload(LS2/E;ILjava/lang/Runnable;)V
    .locals 1

    .line 1
    new-instance v0, Lflix/com/vision/processors/english/i;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2, p3}, Lflix/com/vision/processors/english/i;-><init>(LZ2/m;LS2/E;ILjava/lang/Runnable;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, LZ2/m;->e:Ljava/util/concurrent/Executor;

    .line 7
    .line 8
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
