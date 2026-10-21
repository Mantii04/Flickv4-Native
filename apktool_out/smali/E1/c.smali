.class public final LE1/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LC1/e;


# static fields
.field public static final m:Ljava/lang/String;


# instance fields
.field public final b:Landroid/content/Context;

.field public final e:Ljava/util/HashMap;

.field public final f:Ljava/lang/Object;

.field public final j:LC1/w;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "CommandHandler"

    .line 2
    .line 3
    invoke-static {v0}, LB1/t;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, LE1/c;->m:Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;LC1/w;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LE1/c;->b:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, LE1/c;->j:LC1/w;

    .line 7
    .line 8
    new-instance p1, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, LE1/c;->e:Ljava/util/HashMap;

    .line 14
    .line 15
    new-instance p1, Ljava/lang/Object;

    .line 16
    .line 17
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, LE1/c;->f:Ljava/lang/Object;

    .line 21
    .line 22
    return-void
.end method

.method public static c(Landroid/content/Intent;)LK1/r;
    .locals 4

    .line 1
    new-instance v0, LK1/r;

    .line 2
    .line 3
    const-string v1, "KEY_WORKSPEC_ID"

    .line 4
    .line 5
    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "KEY_WORKSPEC_GENERATION"

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    invoke-direct {v0, v1, p0}, LK1/r;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method

.method public static d(Landroid/content/Intent;LK1/r;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, LK1/r;->getWorkSpecId()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "KEY_WORKSPEC_ID"

    .line 6
    .line 7
    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    .line 9
    .line 10
    const-string v0, "KEY_WORKSPEC_GENERATION"

    .line 11
    .line 12
    invoke-virtual {p1}, LK1/r;->getGeneration()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 17
    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .line 1
    iget-object v0, p0, LE1/c;->f:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, LE1/c;->e:Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    xor-int/lit8 v1, v1, 0x1

    .line 11
    .line 12
    monitor-exit v0

    .line 13
    return v1

    .line 14
    :catchall_0
    move-exception v1

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    throw v1
.end method

.method public final b(ILE1/m;Landroid/content/Intent;)V
    .locals 9

    .line 1
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "ACTION_CONSTRAINTS_CHANGED"

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x1

    .line 12
    const/4 v3, 0x0

    .line 13
    if-eqz v1, :cond_7

    .line 14
    .line 15
    invoke-static {}, LB1/t;->get()LB1/t;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v4, "Handling constraints changed "

    .line 22
    .line 23
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p3

    .line 33
    sget-object v1, LE1/c;->m:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v0, v1, p3}, LB1/t;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    new-instance p3, LE1/f;

    .line 39
    .line 40
    iget-object v0, p0, LE1/c;->b:Landroid/content/Context;

    .line 41
    .line 42
    invoke-direct {p3, v0, p1, p2}, LE1/f;-><init>(Landroid/content/Context;ILE1/m;)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p2, LE1/m;->m:LC1/G;

    .line 46
    .line 47
    invoke-virtual {p1}, LC1/G;->getWorkDatabase()Landroidx/work/impl/WorkDatabase;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->workSpecDao()LK1/F;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    check-cast p1, LK1/U;

    .line 56
    .line 57
    invoke-virtual {p1}, LK1/U;->getScheduledWork()Ljava/util/List;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    sget-object v0, LE1/d;->a:Ljava/lang/String;

    .line 62
    .line 63
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    move v1, v3

    .line 68
    move v4, v1

    .line 69
    move v5, v4

    .line 70
    move v6, v5

    .line 71
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 72
    .line 73
    .line 74
    move-result v7

    .line 75
    if-eqz v7, :cond_2

    .line 76
    .line 77
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v7

    .line 81
    check-cast v7, LK1/E;

    .line 82
    .line 83
    iget-object v7, v7, LK1/E;->j:LB1/f;

    .line 84
    .line 85
    invoke-virtual {v7}, LB1/f;->requiresBatteryNotLow()Z

    .line 86
    .line 87
    .line 88
    move-result v8

    .line 89
    or-int/2addr v1, v8

    .line 90
    invoke-virtual {v7}, LB1/f;->requiresCharging()Z

    .line 91
    .line 92
    .line 93
    move-result v8

    .line 94
    or-int/2addr v4, v8

    .line 95
    invoke-virtual {v7}, LB1/f;->requiresStorageNotLow()Z

    .line 96
    .line 97
    .line 98
    move-result v8

    .line 99
    or-int/2addr v5, v8

    .line 100
    invoke-virtual {v7}, LB1/f;->getRequiredNetworkType()Landroidx/work/NetworkType;

    .line 101
    .line 102
    .line 103
    move-result-object v7

    .line 104
    sget-object v8, Landroidx/work/NetworkType;->b:Landroidx/work/NetworkType;

    .line 105
    .line 106
    if-eq v7, v8, :cond_1

    .line 107
    .line 108
    move v7, v2

    .line 109
    goto :goto_0

    .line 110
    :cond_1
    move v7, v3

    .line 111
    :goto_0
    or-int/2addr v6, v7

    .line 112
    if-eqz v1, :cond_0

    .line 113
    .line 114
    if-eqz v4, :cond_0

    .line 115
    .line 116
    if-eqz v5, :cond_0

    .line 117
    .line 118
    if-eqz v6, :cond_0

    .line 119
    .line 120
    :cond_2
    iget-object v0, p3, LE1/f;->a:Landroid/content/Context;

    .line 121
    .line 122
    invoke-static {v0, v1, v4, v5, v6}, Landroidx/work/impl/background/systemalarm/ConstraintProxyUpdateReceiver;->newConstraintProxyUpdateIntent(Landroid/content/Context;ZZZZ)Landroid/content/Intent;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 127
    .line 128
    .line 129
    iget-object v1, p3, LE1/f;->c:LG1/e;

    .line 130
    .line 131
    invoke-virtual {v1, p1}, LG1/e;->replace(Ljava/lang/Iterable;)V

    .line 132
    .line 133
    .line 134
    new-instance v2, Ljava/util/ArrayList;

    .line 135
    .line 136
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 137
    .line 138
    .line 139
    move-result v3

    .line 140
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 141
    .line 142
    .line 143
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 144
    .line 145
    .line 146
    move-result-wide v3

    .line 147
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 152
    .line 153
    .line 154
    move-result v5

    .line 155
    if-eqz v5, :cond_5

    .line 156
    .line 157
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v5

    .line 161
    check-cast v5, LK1/E;

    .line 162
    .line 163
    iget-object v6, v5, LK1/E;->a:Ljava/lang/String;

    .line 164
    .line 165
    invoke-virtual {v5}, LK1/E;->calculateNextRunTime()J

    .line 166
    .line 167
    .line 168
    move-result-wide v7

    .line 169
    cmp-long v7, v3, v7

    .line 170
    .line 171
    if-ltz v7, :cond_3

    .line 172
    .line 173
    invoke-virtual {v5}, LK1/E;->hasConstraints()Z

    .line 174
    .line 175
    .line 176
    move-result v7

    .line 177
    if-eqz v7, :cond_4

    .line 178
    .line 179
    invoke-virtual {v1, v6}, LG1/e;->areAllConstraintsMet(Ljava/lang/String;)Z

    .line 180
    .line 181
    .line 182
    move-result v6

    .line 183
    if-eqz v6, :cond_3

    .line 184
    .line 185
    :cond_4
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    goto :goto_1

    .line 189
    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 194
    .line 195
    .line 196
    move-result v2

    .line 197
    if-eqz v2, :cond_6

    .line 198
    .line 199
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    check-cast v2, LK1/E;

    .line 204
    .line 205
    iget-object v3, v2, LK1/E;->a:Ljava/lang/String;

    .line 206
    .line 207
    invoke-static {v2}, LK1/V;->generationalId(LK1/E;)LK1/r;

    .line 208
    .line 209
    .line 210
    move-result-object v2

    .line 211
    new-instance v4, Landroid/content/Intent;

    .line 212
    .line 213
    const-class v5, Landroidx/work/impl/background/systemalarm/SystemAlarmService;

    .line 214
    .line 215
    invoke-direct {v4, v0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 216
    .line 217
    .line 218
    const-string v5, "ACTION_DELAY_MET"

    .line 219
    .line 220
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    .line 222
    .line 223
    invoke-static {v4, v2}, LE1/c;->d(Landroid/content/Intent;LK1/r;)V

    .line 224
    .line 225
    .line 226
    invoke-static {}, LB1/t;->get()LB1/t;

    .line 227
    .line 228
    .line 229
    move-result-object v2

    .line 230
    const-string v5, "Creating a delay_met command for workSpec with id ("

    .line 231
    .line 232
    const-string v6, ")"

    .line 233
    .line 234
    invoke-static {v5, v3, v6}, LA/i;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v3

    .line 238
    sget-object v5, LE1/f;->d:Ljava/lang/String;

    .line 239
    .line 240
    invoke-virtual {v2, v5, v3}, LB1/t;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    iget-object v2, p2, LE1/m;->e:LN1/c;

    .line 244
    .line 245
    check-cast v2, LN1/e;

    .line 246
    .line 247
    invoke-virtual {v2}, LN1/e;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    .line 248
    .line 249
    .line 250
    move-result-object v2

    .line 251
    new-instance v3, LE1/j;

    .line 252
    .line 253
    iget v5, p3, LE1/f;->b:I

    .line 254
    .line 255
    invoke-direct {v3, v5, p2, v4}, LE1/j;-><init>(ILE1/m;Landroid/content/Intent;)V

    .line 256
    .line 257
    .line 258
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 259
    .line 260
    .line 261
    goto :goto_2

    .line 262
    :cond_6
    invoke-virtual {v1}, LG1/e;->reset()V

    .line 263
    .line 264
    .line 265
    return-void

    .line 266
    :cond_7
    const-string v1, "ACTION_RESCHEDULE"

    .line 267
    .line 268
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 269
    .line 270
    .line 271
    move-result v1

    .line 272
    if-eqz v1, :cond_8

    .line 273
    .line 274
    invoke-static {}, LB1/t;->get()LB1/t;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    new-instance v1, Ljava/lang/StringBuilder;

    .line 279
    .line 280
    const-string v2, "Handling reschedule "

    .line 281
    .line 282
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    const-string p3, ", "

    .line 289
    .line 290
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object p1

    .line 300
    sget-object p3, LE1/c;->m:Ljava/lang/String;

    .line 301
    .line 302
    invoke-virtual {v0, p3, p1}, LB1/t;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    iget-object p1, p2, LE1/m;->m:LC1/G;

    .line 306
    .line 307
    invoke-virtual {p1}, LC1/G;->rescheduleEligibleWork()V

    .line 308
    .line 309
    .line 310
    return-void

    .line 311
    :cond_8
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 312
    .line 313
    .line 314
    move-result-object v1

    .line 315
    const-string v4, "KEY_WORKSPEC_ID"

    .line 316
    .line 317
    filled-new-array {v4}, [Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v4

    .line 321
    if-eqz v1, :cond_16

    .line 322
    .line 323
    invoke-virtual {v1}, Landroid/os/BaseBundle;->isEmpty()Z

    .line 324
    .line 325
    .line 326
    move-result v5

    .line 327
    if-eqz v5, :cond_9

    .line 328
    .line 329
    goto/16 :goto_9

    .line 330
    .line 331
    :cond_9
    aget-object v4, v4, v3

    .line 332
    .line 333
    invoke-virtual {v1, v4}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 334
    .line 335
    .line 336
    move-result-object v1

    .line 337
    if-nez v1, :cond_a

    .line 338
    .line 339
    goto/16 :goto_9

    .line 340
    .line 341
    :cond_a
    const-string v1, "ACTION_SCHEDULE_WORK"

    .line 342
    .line 343
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 344
    .line 345
    .line 346
    move-result v1

    .line 347
    if-eqz v1, :cond_e

    .line 348
    .line 349
    const-string v0, "Opportunistically setting an alarm for "

    .line 350
    .line 351
    const-string v1, "Setting up Alarms for "

    .line 352
    .line 353
    invoke-static {p3}, LE1/c;->c(Landroid/content/Intent;)LK1/r;

    .line 354
    .line 355
    .line 356
    move-result-object p3

    .line 357
    invoke-static {}, LB1/t;->get()LB1/t;

    .line 358
    .line 359
    .line 360
    move-result-object v2

    .line 361
    new-instance v3, Ljava/lang/StringBuilder;

    .line 362
    .line 363
    const-string v4, "Handling schedule work for "

    .line 364
    .line 365
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 369
    .line 370
    .line 371
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v3

    .line 375
    sget-object v4, LE1/c;->m:Ljava/lang/String;

    .line 376
    .line 377
    invoke-virtual {v2, v4, v3}, LB1/t;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    .line 379
    .line 380
    iget-object v2, p2, LE1/m;->m:LC1/G;

    .line 381
    .line 382
    invoke-virtual {v2}, LC1/G;->getWorkDatabase()Landroidx/work/impl/WorkDatabase;

    .line 383
    .line 384
    .line 385
    move-result-object v2

    .line 386
    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 387
    .line 388
    .line 389
    :try_start_0
    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->workSpecDao()LK1/F;

    .line 390
    .line 391
    .line 392
    move-result-object v3

    .line 393
    invoke-virtual {p3}, LK1/r;->getWorkSpecId()Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v5

    .line 397
    check-cast v3, LK1/U;

    .line 398
    .line 399
    invoke-virtual {v3, v5}, LK1/U;->getWorkSpec(Ljava/lang/String;)LK1/E;

    .line 400
    .line 401
    .line 402
    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 403
    const-string v5, "Skipping scheduling "

    .line 404
    .line 405
    if-nez v3, :cond_b

    .line 406
    .line 407
    :try_start_1
    invoke-static {}, LB1/t;->get()LB1/t;

    .line 408
    .line 409
    .line 410
    move-result-object p1

    .line 411
    new-instance p2, Ljava/lang/StringBuilder;

    .line 412
    .line 413
    invoke-direct {p2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 414
    .line 415
    .line 416
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 417
    .line 418
    .line 419
    const-string p3, " because it\'s no longer in the DB"

    .line 420
    .line 421
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    .line 423
    .line 424
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 425
    .line 426
    .line 427
    move-result-object p2

    .line 428
    invoke-virtual {p1, v4, p2}, LB1/t;->warning(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 429
    .line 430
    .line 431
    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 432
    .line 433
    .line 434
    return-void

    .line 435
    :catchall_0
    move-exception p1

    .line 436
    goto/16 :goto_4

    .line 437
    .line 438
    :cond_b
    :try_start_2
    iget-object v6, v3, LK1/E;->b:Landroidx/work/WorkInfo$State;

    .line 439
    .line 440
    invoke-virtual {v6}, Landroidx/work/WorkInfo$State;->isFinished()Z

    .line 441
    .line 442
    .line 443
    move-result v6

    .line 444
    if-eqz v6, :cond_c

    .line 445
    .line 446
    invoke-static {}, LB1/t;->get()LB1/t;

    .line 447
    .line 448
    .line 449
    move-result-object p1

    .line 450
    new-instance p2, Ljava/lang/StringBuilder;

    .line 451
    .line 452
    invoke-direct {p2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 453
    .line 454
    .line 455
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 456
    .line 457
    .line 458
    const-string p3, "because it is finished."

    .line 459
    .line 460
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    .line 462
    .line 463
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 464
    .line 465
    .line 466
    move-result-object p2

    .line 467
    invoke-virtual {p1, v4, p2}, LB1/t;->warning(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 468
    .line 469
    .line 470
    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 471
    .line 472
    .line 473
    return-void

    .line 474
    :cond_c
    :try_start_3
    invoke-virtual {v3}, LK1/E;->calculateNextRunTime()J

    .line 475
    .line 476
    .line 477
    move-result-wide v5

    .line 478
    invoke-virtual {v3}, LK1/E;->hasConstraints()Z

    .line 479
    .line 480
    .line 481
    move-result v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 482
    const-string v7, "at "

    .line 483
    .line 484
    iget-object v8, p0, LE1/c;->b:Landroid/content/Context;

    .line 485
    .line 486
    if-nez v3, :cond_d

    .line 487
    .line 488
    :try_start_4
    invoke-static {}, LB1/t;->get()LB1/t;

    .line 489
    .line 490
    .line 491
    move-result-object p1

    .line 492
    new-instance p2, Ljava/lang/StringBuilder;

    .line 493
    .line 494
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 495
    .line 496
    .line 497
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 498
    .line 499
    .line 500
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    .line 502
    .line 503
    invoke-virtual {p2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 504
    .line 505
    .line 506
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 507
    .line 508
    .line 509
    move-result-object p2

    .line 510
    invoke-virtual {p1, v4, p2}, LB1/t;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    .line 512
    .line 513
    invoke-static {v8, v2, p3, v5, v6}, LE1/b;->setAlarm(Landroid/content/Context;Landroidx/work/impl/WorkDatabase;LK1/r;J)V

    .line 514
    .line 515
    .line 516
    goto :goto_3

    .line 517
    :cond_d
    invoke-static {}, LB1/t;->get()LB1/t;

    .line 518
    .line 519
    .line 520
    move-result-object v1

    .line 521
    new-instance v3, Ljava/lang/StringBuilder;

    .line 522
    .line 523
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 524
    .line 525
    .line 526
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 527
    .line 528
    .line 529
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    .line 531
    .line 532
    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 533
    .line 534
    .line 535
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 536
    .line 537
    .line 538
    move-result-object v0

    .line 539
    invoke-virtual {v1, v4, v0}, LB1/t;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    .line 541
    .line 542
    invoke-static {v8, v2, p3, v5, v6}, LE1/b;->setAlarm(Landroid/content/Context;Landroidx/work/impl/WorkDatabase;LK1/r;J)V

    .line 543
    .line 544
    .line 545
    new-instance p3, Landroid/content/Intent;

    .line 546
    .line 547
    const-class v0, Landroidx/work/impl/background/systemalarm/SystemAlarmService;

    .line 548
    .line 549
    invoke-direct {p3, v8, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 550
    .line 551
    .line 552
    const-string v0, "ACTION_CONSTRAINTS_CHANGED"

    .line 553
    .line 554
    invoke-virtual {p3, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 555
    .line 556
    .line 557
    iget-object v0, p2, LE1/m;->e:LN1/c;

    .line 558
    .line 559
    check-cast v0, LN1/e;

    .line 560
    .line 561
    invoke-virtual {v0}, LN1/e;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    .line 562
    .line 563
    .line 564
    move-result-object v0

    .line 565
    new-instance v1, LE1/j;

    .line 566
    .line 567
    invoke-direct {v1, p1, p2, p3}, LE1/j;-><init>(ILE1/m;Landroid/content/Intent;)V

    .line 568
    .line 569
    .line 570
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 571
    .line 572
    .line 573
    :goto_3
    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 574
    .line 575
    .line 576
    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 577
    .line 578
    .line 579
    return-void

    .line 580
    :goto_4
    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 581
    .line 582
    .line 583
    throw p1

    .line 584
    :cond_e
    const-string v1, "ACTION_DELAY_MET"

    .line 585
    .line 586
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 587
    .line 588
    .line 589
    move-result v1

    .line 590
    if-eqz v1, :cond_10

    .line 591
    .line 592
    const-string v0, "WorkSpec "

    .line 593
    .line 594
    const-string v1, "Handing delay met for "

    .line 595
    .line 596
    iget-object v4, p0, LE1/c;->f:Ljava/lang/Object;

    .line 597
    .line 598
    monitor-enter v4

    .line 599
    :try_start_5
    invoke-static {p3}, LE1/c;->c(Landroid/content/Intent;)LK1/r;

    .line 600
    .line 601
    .line 602
    move-result-object p3

    .line 603
    invoke-static {}, LB1/t;->get()LB1/t;

    .line 604
    .line 605
    .line 606
    move-result-object v2

    .line 607
    sget-object v3, LE1/c;->m:Ljava/lang/String;

    .line 608
    .line 609
    new-instance v5, Ljava/lang/StringBuilder;

    .line 610
    .line 611
    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 612
    .line 613
    .line 614
    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 615
    .line 616
    .line 617
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 618
    .line 619
    .line 620
    move-result-object v1

    .line 621
    invoke-virtual {v2, v3, v1}, LB1/t;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    .line 623
    .line 624
    iget-object v1, p0, LE1/c;->e:Ljava/util/HashMap;

    .line 625
    .line 626
    invoke-virtual {v1, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 627
    .line 628
    .line 629
    move-result v1

    .line 630
    if-nez v1, :cond_f

    .line 631
    .line 632
    new-instance v0, LE1/h;

    .line 633
    .line 634
    iget-object v1, p0, LE1/c;->b:Landroid/content/Context;

    .line 635
    .line 636
    iget-object v2, p0, LE1/c;->j:LC1/w;

    .line 637
    .line 638
    invoke-virtual {v2, p3}, LC1/w;->tokenFor(LK1/r;)LC1/v;

    .line 639
    .line 640
    .line 641
    move-result-object v2

    .line 642
    invoke-direct {v0, v1, p1, p2, v2}, LE1/h;-><init>(Landroid/content/Context;ILE1/m;LC1/v;)V

    .line 643
    .line 644
    .line 645
    iget-object p1, p0, LE1/c;->e:Ljava/util/HashMap;

    .line 646
    .line 647
    invoke-virtual {p1, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 648
    .line 649
    .line 650
    invoke-virtual {v0}, LE1/h;->c()V

    .line 651
    .line 652
    .line 653
    goto :goto_5

    .line 654
    :catchall_1
    move-exception p1

    .line 655
    goto :goto_6

    .line 656
    :cond_f
    invoke-static {}, LB1/t;->get()LB1/t;

    .line 657
    .line 658
    .line 659
    move-result-object p1

    .line 660
    new-instance p2, Ljava/lang/StringBuilder;

    .line 661
    .line 662
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 663
    .line 664
    .line 665
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 666
    .line 667
    .line 668
    const-string p3, " is is already being handled for ACTION_DELAY_MET"

    .line 669
    .line 670
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 671
    .line 672
    .line 673
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 674
    .line 675
    .line 676
    move-result-object p2

    .line 677
    invoke-virtual {p1, v3, p2}, LB1/t;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    .line 679
    .line 680
    :goto_5
    monitor-exit v4

    .line 681
    return-void

    .line 682
    :goto_6
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 683
    throw p1

    .line 684
    :cond_10
    const-string v1, "ACTION_STOP_WORK"

    .line 685
    .line 686
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 687
    .line 688
    .line 689
    move-result v1

    .line 690
    if-eqz v1, :cond_14

    .line 691
    .line 692
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 693
    .line 694
    .line 695
    move-result-object p1

    .line 696
    const-string p3, "KEY_WORKSPEC_ID"

    .line 697
    .line 698
    invoke-virtual {p1, p3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 699
    .line 700
    .line 701
    move-result-object p3

    .line 702
    const-string v0, "KEY_WORKSPEC_GENERATION"

    .line 703
    .line 704
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 705
    .line 706
    .line 707
    move-result v1

    .line 708
    iget-object v4, p0, LE1/c;->j:LC1/w;

    .line 709
    .line 710
    if-eqz v1, :cond_11

    .line 711
    .line 712
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 713
    .line 714
    .line 715
    move-result p1

    .line 716
    new-instance v0, Ljava/util/ArrayList;

    .line 717
    .line 718
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 719
    .line 720
    .line 721
    new-instance v1, LK1/r;

    .line 722
    .line 723
    invoke-direct {v1, p3, p1}, LK1/r;-><init>(Ljava/lang/String;I)V

    .line 724
    .line 725
    .line 726
    invoke-virtual {v4, v1}, LC1/w;->remove(LK1/r;)LC1/v;

    .line 727
    .line 728
    .line 729
    move-result-object p1

    .line 730
    if-eqz p1, :cond_12

    .line 731
    .line 732
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 733
    .line 734
    .line 735
    goto :goto_7

    .line 736
    :cond_11
    invoke-virtual {v4, p3}, LC1/w;->remove(Ljava/lang/String;)Ljava/util/List;

    .line 737
    .line 738
    .line 739
    move-result-object v0

    .line 740
    :cond_12
    :goto_7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 741
    .line 742
    .line 743
    move-result-object p1

    .line 744
    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 745
    .line 746
    .line 747
    move-result v0

    .line 748
    if-eqz v0, :cond_13

    .line 749
    .line 750
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 751
    .line 752
    .line 753
    move-result-object v0

    .line 754
    check-cast v0, LC1/v;

    .line 755
    .line 756
    invoke-static {}, LB1/t;->get()LB1/t;

    .line 757
    .line 758
    .line 759
    move-result-object v1

    .line 760
    const-string v2, "Handing stopWork work for "

    .line 761
    .line 762
    invoke-static {v2, p3}, LA/i;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 763
    .line 764
    .line 765
    move-result-object v2

    .line 766
    sget-object v4, LE1/c;->m:Ljava/lang/String;

    .line 767
    .line 768
    invoke-virtual {v1, v4, v2}, LB1/t;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    .line 770
    .line 771
    iget-object v1, p2, LE1/m;->m:LC1/G;

    .line 772
    .line 773
    invoke-virtual {v1, v0}, LC1/G;->stopWork(LC1/v;)V

    .line 774
    .line 775
    .line 776
    iget-object v1, p2, LE1/m;->m:LC1/G;

    .line 777
    .line 778
    invoke-virtual {v1}, LC1/G;->getWorkDatabase()Landroidx/work/impl/WorkDatabase;

    .line 779
    .line 780
    .line 781
    move-result-object v1

    .line 782
    invoke-virtual {v0}, LC1/v;->getId()LK1/r;

    .line 783
    .line 784
    .line 785
    move-result-object v2

    .line 786
    iget-object v4, p0, LE1/c;->b:Landroid/content/Context;

    .line 787
    .line 788
    invoke-static {v4, v1, v2}, LE1/b;->cancelAlarm(Landroid/content/Context;Landroidx/work/impl/WorkDatabase;LK1/r;)V

    .line 789
    .line 790
    .line 791
    invoke-virtual {v0}, LC1/v;->getId()LK1/r;

    .line 792
    .line 793
    .line 794
    move-result-object v0

    .line 795
    invoke-virtual {p2, v0, v3}, LE1/m;->onExecuted(LK1/r;Z)V

    .line 796
    .line 797
    .line 798
    goto :goto_8

    .line 799
    :cond_13
    return-void

    .line 800
    :cond_14
    const-string p2, "ACTION_EXECUTION_COMPLETED"

    .line 801
    .line 802
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 803
    .line 804
    .line 805
    move-result p2

    .line 806
    if-eqz p2, :cond_15

    .line 807
    .line 808
    invoke-static {p3}, LE1/c;->c(Landroid/content/Intent;)LK1/r;

    .line 809
    .line 810
    .line 811
    move-result-object p2

    .line 812
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 813
    .line 814
    .line 815
    move-result-object v0

    .line 816
    const-string v1, "KEY_NEEDS_RESCHEDULE"

    .line 817
    .line 818
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 819
    .line 820
    .line 821
    move-result v0

    .line 822
    invoke-static {}, LB1/t;->get()LB1/t;

    .line 823
    .line 824
    .line 825
    move-result-object v1

    .line 826
    new-instance v2, Ljava/lang/StringBuilder;

    .line 827
    .line 828
    const-string v3, "Handling onExecutionCompleted "

    .line 829
    .line 830
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 831
    .line 832
    .line 833
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 834
    .line 835
    .line 836
    const-string p3, ", "

    .line 837
    .line 838
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 839
    .line 840
    .line 841
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 842
    .line 843
    .line 844
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 845
    .line 846
    .line 847
    move-result-object p1

    .line 848
    sget-object p3, LE1/c;->m:Ljava/lang/String;

    .line 849
    .line 850
    invoke-virtual {v1, p3, p1}, LB1/t;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    .line 852
    .line 853
    invoke-virtual {p0, p2, v0}, LE1/c;->onExecuted(LK1/r;Z)V

    .line 854
    .line 855
    .line 856
    return-void

    .line 857
    :cond_15
    invoke-static {}, LB1/t;->get()LB1/t;

    .line 858
    .line 859
    .line 860
    move-result-object p1

    .line 861
    sget-object p2, LE1/c;->m:Ljava/lang/String;

    .line 862
    .line 863
    new-instance v0, Ljava/lang/StringBuilder;

    .line 864
    .line 865
    const-string v1, "Ignoring intent "

    .line 866
    .line 867
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 868
    .line 869
    .line 870
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 871
    .line 872
    .line 873
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 874
    .line 875
    .line 876
    move-result-object p3

    .line 877
    invoke-virtual {p1, p2, p3}, LB1/t;->warning(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    .line 879
    .line 880
    return-void

    .line 881
    :cond_16
    :goto_9
    invoke-static {}, LB1/t;->get()LB1/t;

    .line 882
    .line 883
    .line 884
    move-result-object p1

    .line 885
    sget-object p2, LE1/c;->m:Ljava/lang/String;

    .line 886
    .line 887
    new-instance p3, Ljava/lang/StringBuilder;

    .line 888
    .line 889
    const-string v1, "Invalid request for "

    .line 890
    .line 891
    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 892
    .line 893
    .line 894
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 895
    .line 896
    .line 897
    const-string v0, " , requires KEY_WORKSPEC_ID ."

    .line 898
    .line 899
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 900
    .line 901
    .line 902
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 903
    .line 904
    .line 905
    move-result-object p3

    .line 906
    invoke-virtual {p1, p2, p3}, LB1/t;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    .line 908
    .line 909
    return-void
.end method

.method public onExecuted(LK1/r;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, LE1/c;->f:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, LE1/c;->e:Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, LE1/h;

    .line 11
    .line 12
    iget-object v2, p0, LE1/c;->j:LC1/w;

    .line 13
    .line 14
    invoke-virtual {v2, p1}, LC1/w;->remove(LK1/r;)LC1/v;

    .line 15
    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {v1, p2}, LE1/h;->d(Z)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    :goto_0
    monitor-exit v0

    .line 26
    return-void

    .line 27
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw p1
.end method
