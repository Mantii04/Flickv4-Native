.class public final synthetic LC4/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll/u1;
.implements Lb3/a;
.implements La3/p;
.implements Landroidx/media3/common/util/Consumer;
.implements Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo$Factory;
.implements Lcom/google/android/gms/tasks/Continuation;
.implements Lcom/google/android/gms/tasks/OnSuccessListener;
.implements LI/e;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic j:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p4, p0, LC4/f;->b:I

    iput-object p1, p0, LC4/f;->f:Ljava/lang/Object;

    iput-object p2, p0, LC4/f;->j:Ljava/lang/Object;

    iput-object p3, p0, LC4/f;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Landroidx/media3/exoplayer/source/MediaSourceEventListener;

    iget-object v0, p0, LC4/f;->f:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    iget-object v1, p0, LC4/f;->j:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v2, p0, LC4/f;->e:Ljava/lang/Object;

    check-cast v2, Landroidx/media3/exoplayer/source/MediaLoadData;

    invoke-static {v0, v1, v2, p1}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->d(Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/MediaLoadData;Landroidx/media3/exoplayer/source/MediaSourceEventListener;)V

    return-void
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget v0, v1, LC4/f;->b:I

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    move-object/from16 v0, p1

    .line 9
    .line 10
    check-cast v0, Landroid/database/Cursor;

    .line 11
    .line 12
    iget-object v2, v1, LC4/f;->f:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v2, La3/r;

    .line 15
    .line 16
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    iget-object v4, v1, LC4/f;->j:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v4, Ljava/util/HashMap;

    .line 23
    .line 24
    const/4 v5, 0x0

    .line 25
    if-eqz v3, :cond_8

    .line 26
    .line 27
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    const/4 v5, 0x1

    .line 32
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    sget-object v6, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->e:Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;

    .line 37
    .line 38
    invoke-virtual {v6}, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->getNumber()I

    .line 39
    .line 40
    .line 41
    move-result v7

    .line 42
    if-ne v5, v7, :cond_0

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_0
    sget-object v7, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->f:Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;

    .line 46
    .line 47
    invoke-virtual {v7}, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->getNumber()I

    .line 48
    .line 49
    .line 50
    move-result v8

    .line 51
    if-ne v5, v8, :cond_1

    .line 52
    .line 53
    :goto_1
    move-object v6, v7

    .line 54
    goto :goto_2

    .line 55
    :cond_1
    sget-object v7, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->j:Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;

    .line 56
    .line 57
    invoke-virtual {v7}, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->getNumber()I

    .line 58
    .line 59
    .line 60
    move-result v8

    .line 61
    if-ne v5, v8, :cond_2

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_2
    sget-object v7, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->m:Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;

    .line 65
    .line 66
    invoke-virtual {v7}, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->getNumber()I

    .line 67
    .line 68
    .line 69
    move-result v8

    .line 70
    if-ne v5, v8, :cond_3

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_3
    sget-object v7, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->n:Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;

    .line 74
    .line 75
    invoke-virtual {v7}, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->getNumber()I

    .line 76
    .line 77
    .line 78
    move-result v8

    .line 79
    if-ne v5, v8, :cond_4

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_4
    sget-object v7, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->p:Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;

    .line 83
    .line 84
    invoke-virtual {v7}, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->getNumber()I

    .line 85
    .line 86
    .line 87
    move-result v8

    .line 88
    if-ne v5, v8, :cond_5

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_5
    sget-object v7, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->q:Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;

    .line 92
    .line 93
    invoke-virtual {v7}, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->getNumber()I

    .line 94
    .line 95
    .line 96
    move-result v8

    .line 97
    if-ne v5, v8, :cond_6

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_6
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    const-string v7, "SQLiteEventStore"

    .line 105
    .line 106
    const-string v8, "%n is not valid. No matched LogEventDropped-Reason found. Treated it as REASON_UNKNOWN"

    .line 107
    .line 108
    invoke-static {v7, v8, v5}, LW2/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    :goto_2
    const/4 v5, 0x2

    .line 112
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    .line 113
    .line 114
    .line 115
    move-result-wide v7

    .line 116
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v5

    .line 120
    if-nez v5, :cond_7

    .line 121
    .line 122
    new-instance v5, Ljava/util/ArrayList;

    .line 123
    .line 124
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    :cond_7
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    check-cast v3, Ljava/util/List;

    .line 135
    .line 136
    invoke-static {}, LV2/f;->newBuilder()LV2/e;

    .line 137
    .line 138
    .line 139
    move-result-object v4

    .line 140
    invoke-virtual {v4, v6}, LV2/e;->setReason(Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;)LV2/e;

    .line 141
    .line 142
    .line 143
    move-result-object v4

    .line 144
    invoke-virtual {v4, v7, v8}, LV2/e;->setEventsDroppedCount(J)LV2/e;

    .line 145
    .line 146
    .line 147
    move-result-object v4

    .line 148
    invoke-virtual {v4}, LV2/e;->build()LV2/f;

    .line 149
    .line 150
    .line 151
    move-result-object v4

    .line 152
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    goto/16 :goto_0

    .line 156
    .line 157
    :cond_8
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 166
    .line 167
    .line 168
    move-result v3

    .line 169
    iget-object v4, v1, LC4/f;->e:Ljava/lang/Object;

    .line 170
    .line 171
    check-cast v4, LV2/a;

    .line 172
    .line 173
    if-eqz v3, :cond_9

    .line 174
    .line 175
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    check-cast v3, Ljava/util/Map$Entry;

    .line 180
    .line 181
    invoke-static {}, LV2/h;->newBuilder()LV2/g;

    .line 182
    .line 183
    .line 184
    move-result-object v6

    .line 185
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v7

    .line 189
    check-cast v7, Ljava/lang/String;

    .line 190
    .line 191
    invoke-virtual {v6, v7}, LV2/g;->setLogSource(Ljava/lang/String;)LV2/g;

    .line 192
    .line 193
    .line 194
    move-result-object v6

    .line 195
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v3

    .line 199
    check-cast v3, Ljava/util/List;

    .line 200
    .line 201
    invoke-virtual {v6, v3}, LV2/g;->setLogEventDroppedList(Ljava/util/List;)LV2/g;

    .line 202
    .line 203
    .line 204
    move-result-object v3

    .line 205
    invoke-virtual {v3}, LV2/g;->build()LV2/h;

    .line 206
    .line 207
    .line 208
    move-result-object v3

    .line 209
    invoke-virtual {v4, v3}, LV2/a;->addLogSourceMetrics(LV2/h;)LV2/a;

    .line 210
    .line 211
    .line 212
    goto :goto_3

    .line 213
    :cond_9
    iget-object v0, v2, La3/r;->e:Lc3/a;

    .line 214
    .line 215
    invoke-interface {v0}, Lc3/a;->getTime()J

    .line 216
    .line 217
    .line 218
    move-result-wide v6

    .line 219
    invoke-virtual {v2}, La3/r;->a()Landroid/database/sqlite/SQLiteDatabase;

    .line 220
    .line 221
    .line 222
    move-result-object v3

    .line 223
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 224
    .line 225
    .line 226
    :try_start_0
    new-array v0, v5, [Ljava/lang/String;

    .line 227
    .line 228
    const-string v8, "SELECT last_metrics_upload_ms FROM global_log_event_state LIMIT 1"

    .line 229
    .line 230
    invoke-virtual {v3, v8, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 231
    .line 232
    .line 233
    move-result-object v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    .line 235
    .line 236
    .line 237
    invoke-interface {v8, v5}, Landroid/database/Cursor;->getLong(I)J

    .line 238
    .line 239
    .line 240
    move-result-wide v9

    .line 241
    invoke-static {}, LV2/l;->newBuilder()LV2/k;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    invoke-virtual {v0, v9, v10}, LV2/k;->setStartMs(J)LV2/k;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    invoke-virtual {v0, v6, v7}, LV2/k;->setEndMs(J)LV2/k;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    invoke-virtual {v0}, LV2/k;->build()LV2/l;

    .line 254
    .line 255
    .line 256
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 257
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 261
    .line 262
    .line 263
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v4, v0}, LV2/a;->setWindow(LV2/l;)LV2/a;

    .line 267
    .line 268
    .line 269
    invoke-static {}, LV2/d;->newBuilder()LV2/c;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    invoke-static {}, LV2/j;->newBuilder()LV2/i;

    .line 274
    .line 275
    .line 276
    move-result-object v3

    .line 277
    invoke-virtual {v2}, La3/r;->a()Landroid/database/sqlite/SQLiteDatabase;

    .line 278
    .line 279
    .line 280
    move-result-object v5

    .line 281
    const-string v6, "PRAGMA page_count"

    .line 282
    .line 283
    invoke-virtual {v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    .line 284
    .line 285
    .line 286
    move-result-object v5

    .line 287
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    .line 288
    .line 289
    .line 290
    move-result-wide v5

    .line 291
    invoke-virtual {v2}, La3/r;->a()Landroid/database/sqlite/SQLiteDatabase;

    .line 292
    .line 293
    .line 294
    move-result-object v7

    .line 295
    const-string v8, "PRAGMA page_size"

    .line 296
    .line 297
    invoke-virtual {v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    .line 298
    .line 299
    .line 300
    move-result-object v7

    .line 301
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    .line 302
    .line 303
    .line 304
    move-result-wide v7

    .line 305
    mul-long/2addr v7, v5

    .line 306
    invoke-virtual {v3, v7, v8}, LV2/i;->setCurrentCacheSizeBytes(J)LV2/i;

    .line 307
    .line 308
    .line 309
    move-result-object v3

    .line 310
    sget-object v5, La3/e;->a:La3/a;

    .line 311
    .line 312
    iget-wide v5, v5, La3/a;->b:J

    .line 313
    .line 314
    invoke-virtual {v3, v5, v6}, LV2/i;->setMaxCacheSizeBytes(J)LV2/i;

    .line 315
    .line 316
    .line 317
    move-result-object v3

    .line 318
    invoke-virtual {v3}, LV2/i;->build()LV2/j;

    .line 319
    .line 320
    .line 321
    move-result-object v3

    .line 322
    invoke-virtual {v0, v3}, LV2/c;->setStorageMetrics(LV2/j;)LV2/c;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    invoke-virtual {v0}, LV2/c;->build()LV2/d;

    .line 327
    .line 328
    .line 329
    move-result-object v0

    .line 330
    invoke-virtual {v4, v0}, LV2/a;->setGlobalMetrics(LV2/d;)LV2/a;

    .line 331
    .line 332
    .line 333
    iget-object v0, v2, La3/r;->m:Lt5/a;

    .line 334
    .line 335
    invoke-interface {v0}, Lt5/a;->get()Ljava/lang/Object;

    .line 336
    .line 337
    .line 338
    move-result-object v0

    .line 339
    check-cast v0, Ljava/lang/String;

    .line 340
    .line 341
    invoke-virtual {v4, v0}, LV2/a;->setAppNamespace(Ljava/lang/String;)LV2/a;

    .line 342
    .line 343
    .line 344
    invoke-virtual {v4}, LV2/a;->build()LV2/b;

    .line 345
    .line 346
    .line 347
    move-result-object v0

    .line 348
    return-object v0

    .line 349
    :catchall_0
    move-exception v0

    .line 350
    goto :goto_4

    .line 351
    :catchall_1
    move-exception v0

    .line 352
    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 353
    .line 354
    .line 355
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 356
    :goto_4
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 357
    .line 358
    .line 359
    throw v0

    .line 360
    :pswitch_0
    move-object/from16 v0, p1

    .line 361
    .line 362
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    .line 363
    .line 364
    iget-object v2, v1, LC4/f;->f:Ljava/lang/Object;

    .line 365
    .line 366
    check-cast v2, La3/r;

    .line 367
    .line 368
    invoke-virtual {v2}, La3/r;->a()Landroid/database/sqlite/SQLiteDatabase;

    .line 369
    .line 370
    .line 371
    move-result-object v3

    .line 372
    const-string v4, "PRAGMA page_count"

    .line 373
    .line 374
    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    .line 375
    .line 376
    .line 377
    move-result-object v3

    .line 378
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    .line 379
    .line 380
    .line 381
    move-result-wide v3

    .line 382
    invoke-virtual {v2}, La3/r;->a()Landroid/database/sqlite/SQLiteDatabase;

    .line 383
    .line 384
    .line 385
    move-result-object v5

    .line 386
    const-string v6, "PRAGMA page_size"

    .line 387
    .line 388
    invoke-virtual {v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    .line 389
    .line 390
    .line 391
    move-result-object v5

    .line 392
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    .line 393
    .line 394
    .line 395
    move-result-wide v5

    .line 396
    mul-long/2addr v5, v3

    .line 397
    iget-object v3, v2, La3/r;->j:La3/e;

    .line 398
    .line 399
    check-cast v3, La3/a;

    .line 400
    .line 401
    iget-wide v7, v3, La3/a;->b:J

    .line 402
    .line 403
    cmp-long v4, v5, v7

    .line 404
    .line 405
    iget-object v5, v1, LC4/f;->j:Ljava/lang/Object;

    .line 406
    .line 407
    check-cast v5, LS2/u;

    .line 408
    .line 409
    if-ltz v4, :cond_a

    .line 410
    .line 411
    sget-object v0, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->j:Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;

    .line 412
    .line 413
    invoke-virtual {v5}, LS2/u;->getTransportName()Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v3

    .line 417
    const-wide/16 v4, 0x1

    .line 418
    .line 419
    invoke-virtual {v2, v4, v5, v0, v3}, La3/r;->recordLogEventDropped(JLcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;Ljava/lang/String;)V

    .line 420
    .line 421
    .line 422
    const-wide/16 v2, -0x1

    .line 423
    .line 424
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 425
    .line 426
    .line 427
    move-result-object v0

    .line 428
    goto/16 :goto_a

    .line 429
    .line 430
    :cond_a
    iget-object v2, v1, LC4/f;->e:Ljava/lang/Object;

    .line 431
    .line 432
    check-cast v2, LS2/E;

    .line 433
    .line 434
    invoke-static {v0, v2}, La3/r;->b(Landroid/database/sqlite/SQLiteDatabase;LS2/E;)Ljava/lang/Long;

    .line 435
    .line 436
    .line 437
    move-result-object v4

    .line 438
    const/4 v6, 0x0

    .line 439
    const/4 v7, 0x0

    .line 440
    if-eqz v4, :cond_b

    .line 441
    .line 442
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 443
    .line 444
    .line 445
    move-result-wide v8

    .line 446
    goto :goto_5

    .line 447
    :cond_b
    new-instance v4, Landroid/content/ContentValues;

    .line 448
    .line 449
    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 450
    .line 451
    .line 452
    const-string v8, "backend_name"

    .line 453
    .line 454
    invoke-virtual {v2}, LS2/E;->getBackendName()Ljava/lang/String;

    .line 455
    .line 456
    .line 457
    move-result-object v9

    .line 458
    invoke-virtual {v4, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    .line 460
    .line 461
    invoke-virtual {v2}, LS2/E;->getPriority()Lcom/google/android/datatransport/Priority;

    .line 462
    .line 463
    .line 464
    move-result-object v8

    .line 465
    invoke-static {v8}, Ld3/a;->toInt(Lcom/google/android/datatransport/Priority;)I

    .line 466
    .line 467
    .line 468
    move-result v8

    .line 469
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 470
    .line 471
    .line 472
    move-result-object v8

    .line 473
    const-string v9, "priority"

    .line 474
    .line 475
    invoke-virtual {v4, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 476
    .line 477
    .line 478
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 479
    .line 480
    .line 481
    move-result-object v8

    .line 482
    const-string v9, "next_request_ms"

    .line 483
    .line 484
    invoke-virtual {v4, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 485
    .line 486
    .line 487
    invoke-virtual {v2}, LS2/E;->getExtras()[B

    .line 488
    .line 489
    .line 490
    move-result-object v8

    .line 491
    if-eqz v8, :cond_c

    .line 492
    .line 493
    invoke-virtual {v2}, LS2/E;->getExtras()[B

    .line 494
    .line 495
    .line 496
    move-result-object v2

    .line 497
    invoke-static {v2, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 498
    .line 499
    .line 500
    move-result-object v2

    .line 501
    const-string v8, "extras"

    .line 502
    .line 503
    invoke-virtual {v4, v8, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    .line 505
    .line 506
    :cond_c
    const-string v2, "transport_contexts"

    .line 507
    .line 508
    invoke-virtual {v0, v2, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 509
    .line 510
    .line 511
    move-result-wide v8

    .line 512
    :goto_5
    invoke-virtual {v5}, LS2/u;->getEncodedPayload()LS2/s;

    .line 513
    .line 514
    .line 515
    move-result-object v2

    .line 516
    invoke-virtual {v2}, LS2/s;->getBytes()[B

    .line 517
    .line 518
    .line 519
    move-result-object v2

    .line 520
    array-length v4, v2

    .line 521
    const/4 v10, 0x1

    .line 522
    iget v3, v3, La3/a;->f:I

    .line 523
    .line 524
    if-gt v4, v3, :cond_d

    .line 525
    .line 526
    move v4, v10

    .line 527
    goto :goto_6

    .line 528
    :cond_d
    move v4, v7

    .line 529
    :goto_6
    new-instance v11, Landroid/content/ContentValues;

    .line 530
    .line 531
    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 532
    .line 533
    .line 534
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 535
    .line 536
    .line 537
    move-result-object v8

    .line 538
    const-string v9, "context_id"

    .line 539
    .line 540
    invoke-virtual {v11, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 541
    .line 542
    .line 543
    const-string v8, "transport_name"

    .line 544
    .line 545
    invoke-virtual {v5}, LS2/u;->getTransportName()Ljava/lang/String;

    .line 546
    .line 547
    .line 548
    move-result-object v9

    .line 549
    invoke-virtual {v11, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    .line 551
    .line 552
    invoke-virtual {v5}, LS2/u;->getEventMillis()J

    .line 553
    .line 554
    .line 555
    move-result-wide v8

    .line 556
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 557
    .line 558
    .line 559
    move-result-object v8

    .line 560
    const-string v9, "timestamp_ms"

    .line 561
    .line 562
    invoke-virtual {v11, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 563
    .line 564
    .line 565
    invoke-virtual {v5}, LS2/u;->getUptimeMillis()J

    .line 566
    .line 567
    .line 568
    move-result-wide v8

    .line 569
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 570
    .line 571
    .line 572
    move-result-object v8

    .line 573
    const-string v9, "uptime_ms"

    .line 574
    .line 575
    invoke-virtual {v11, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 576
    .line 577
    .line 578
    invoke-virtual {v5}, LS2/u;->getEncodedPayload()LS2/s;

    .line 579
    .line 580
    .line 581
    move-result-object v8

    .line 582
    invoke-virtual {v8}, LS2/s;->getEncoding()LP2/b;

    .line 583
    .line 584
    .line 585
    move-result-object v8

    .line 586
    invoke-virtual {v8}, LP2/b;->getName()Ljava/lang/String;

    .line 587
    .line 588
    .line 589
    move-result-object v8

    .line 590
    const-string v9, "payload_encoding"

    .line 591
    .line 592
    invoke-virtual {v11, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    .line 594
    .line 595
    const-string v8, "code"

    .line 596
    .line 597
    invoke-virtual {v5}, LS2/u;->getCode()Ljava/lang/Integer;

    .line 598
    .line 599
    .line 600
    move-result-object v9

    .line 601
    invoke-virtual {v11, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 602
    .line 603
    .line 604
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 605
    .line 606
    .line 607
    move-result-object v8

    .line 608
    const-string v9, "num_attempts"

    .line 609
    .line 610
    invoke-virtual {v11, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 611
    .line 612
    .line 613
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 614
    .line 615
    .line 616
    move-result-object v8

    .line 617
    const-string v9, "inline"

    .line 618
    .line 619
    invoke-virtual {v11, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 620
    .line 621
    .line 622
    if-eqz v4, :cond_e

    .line 623
    .line 624
    move-object v7, v2

    .line 625
    goto :goto_7

    .line 626
    :cond_e
    new-array v7, v7, [B

    .line 627
    .line 628
    :goto_7
    const-string v8, "payload"

    .line 629
    .line 630
    invoke-virtual {v11, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 631
    .line 632
    .line 633
    const-string v7, "events"

    .line 634
    .line 635
    invoke-virtual {v0, v7, v6, v11}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 636
    .line 637
    .line 638
    move-result-wide v7

    .line 639
    const-string v9, "event_id"

    .line 640
    .line 641
    if-nez v4, :cond_f

    .line 642
    .line 643
    array-length v4, v2

    .line 644
    int-to-double v11, v4

    .line 645
    int-to-double v13, v3

    .line 646
    div-double/2addr v11, v13

    .line 647
    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    .line 648
    .line 649
    .line 650
    move-result-wide v11

    .line 651
    double-to-int v4, v11

    .line 652
    :goto_8
    if-gt v10, v4, :cond_f

    .line 653
    .line 654
    add-int/lit8 v11, v10, -0x1

    .line 655
    .line 656
    mul-int/2addr v11, v3

    .line 657
    mul-int v12, v10, v3

    .line 658
    .line 659
    array-length v13, v2

    .line 660
    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    .line 661
    .line 662
    .line 663
    move-result v12

    .line 664
    invoke-static {v2, v11, v12}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 665
    .line 666
    .line 667
    move-result-object v11

    .line 668
    new-instance v12, Landroid/content/ContentValues;

    .line 669
    .line 670
    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 671
    .line 672
    .line 673
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 674
    .line 675
    .line 676
    move-result-object v13

    .line 677
    invoke-virtual {v12, v9, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 678
    .line 679
    .line 680
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 681
    .line 682
    .line 683
    move-result-object v13

    .line 684
    const-string v14, "sequence_num"

    .line 685
    .line 686
    invoke-virtual {v12, v14, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 687
    .line 688
    .line 689
    const-string v13, "bytes"

    .line 690
    .line 691
    invoke-virtual {v12, v13, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 692
    .line 693
    .line 694
    const-string v11, "event_payloads"

    .line 695
    .line 696
    invoke-virtual {v0, v11, v6, v12}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 697
    .line 698
    .line 699
    add-int/lit8 v10, v10, 0x1

    .line 700
    .line 701
    goto :goto_8

    .line 702
    :cond_f
    invoke-virtual {v5}, LS2/u;->getMetadata()Ljava/util/Map;

    .line 703
    .line 704
    .line 705
    move-result-object v2

    .line 706
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 707
    .line 708
    .line 709
    move-result-object v2

    .line 710
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 711
    .line 712
    .line 713
    move-result-object v2

    .line 714
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 715
    .line 716
    .line 717
    move-result v3

    .line 718
    if-eqz v3, :cond_10

    .line 719
    .line 720
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 721
    .line 722
    .line 723
    move-result-object v3

    .line 724
    check-cast v3, Ljava/util/Map$Entry;

    .line 725
    .line 726
    new-instance v4, Landroid/content/ContentValues;

    .line 727
    .line 728
    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 729
    .line 730
    .line 731
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 732
    .line 733
    .line 734
    move-result-object v5

    .line 735
    invoke-virtual {v4, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 736
    .line 737
    .line 738
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 739
    .line 740
    .line 741
    move-result-object v5

    .line 742
    check-cast v5, Ljava/lang/String;

    .line 743
    .line 744
    const-string v10, "name"

    .line 745
    .line 746
    invoke-virtual {v4, v10, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    .line 748
    .line 749
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 750
    .line 751
    .line 752
    move-result-object v3

    .line 753
    check-cast v3, Ljava/lang/String;

    .line 754
    .line 755
    const-string v5, "value"

    .line 756
    .line 757
    invoke-virtual {v4, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    .line 759
    .line 760
    const-string v3, "event_metadata"

    .line 761
    .line 762
    invoke-virtual {v0, v3, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 763
    .line 764
    .line 765
    goto :goto_9

    .line 766
    :cond_10
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 767
    .line 768
    .line 769
    move-result-object v0

    .line 770
    :goto_a
    return-object v0

    .line 771
    :pswitch_1
    move-object/from16 v0, p1

    .line 772
    .line 773
    check-cast v0, Landroid/database/Cursor;

    .line 774
    .line 775
    iget-object v2, v1, LC4/f;->f:Ljava/lang/Object;

    .line 776
    .line 777
    check-cast v2, La3/r;

    .line 778
    .line 779
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 780
    .line 781
    .line 782
    :goto_b
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 783
    .line 784
    .line 785
    move-result v3

    .line 786
    if-eqz v3, :cond_18

    .line 787
    .line 788
    const/4 v3, 0x0

    .line 789
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    .line 790
    .line 791
    .line 792
    move-result-wide v4

    .line 793
    const/4 v6, 0x7

    .line 794
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    .line 795
    .line 796
    .line 797
    move-result v6

    .line 798
    const/4 v7, 0x1

    .line 799
    if-eqz v6, :cond_11

    .line 800
    .line 801
    move v6, v7

    .line 802
    goto :goto_c

    .line 803
    :cond_11
    move v6, v3

    .line 804
    :goto_c
    invoke-static {}, LS2/u;->builder()LS2/t;

    .line 805
    .line 806
    .line 807
    move-result-object v8

    .line 808
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 809
    .line 810
    .line 811
    move-result-object v7

    .line 812
    invoke-virtual {v8, v7}, LS2/t;->setTransportName(Ljava/lang/String;)LS2/t;

    .line 813
    .line 814
    .line 815
    move-result-object v7

    .line 816
    const/4 v8, 0x2

    .line 817
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    .line 818
    .line 819
    .line 820
    move-result-wide v8

    .line 821
    invoke-virtual {v7, v8, v9}, LS2/t;->setEventMillis(J)LS2/t;

    .line 822
    .line 823
    .line 824
    move-result-object v7

    .line 825
    const/4 v8, 0x3

    .line 826
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    .line 827
    .line 828
    .line 829
    move-result-wide v8

    .line 830
    invoke-virtual {v7, v8, v9}, LS2/t;->setUptimeMillis(J)LS2/t;

    .line 831
    .line 832
    .line 833
    move-result-object v7

    .line 834
    const/4 v8, 0x4

    .line 835
    if-eqz v6, :cond_13

    .line 836
    .line 837
    new-instance v3, LS2/s;

    .line 838
    .line 839
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 840
    .line 841
    .line 842
    move-result-object v6

    .line 843
    if-nez v6, :cond_12

    .line 844
    .line 845
    sget-object v6, La3/r;->n:LP2/b;

    .line 846
    .line 847
    goto :goto_d

    .line 848
    :cond_12
    invoke-static {v6}, LP2/b;->of(Ljava/lang/String;)LP2/b;

    .line 849
    .line 850
    .line 851
    move-result-object v6

    .line 852
    :goto_d
    const/4 v8, 0x5

    .line 853
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getBlob(I)[B

    .line 854
    .line 855
    .line 856
    move-result-object v8

    .line 857
    invoke-direct {v3, v6, v8}, LS2/s;-><init>(LP2/b;[B)V

    .line 858
    .line 859
    .line 860
    invoke-virtual {v7, v3}, LS2/t;->setEncodedPayload(LS2/s;)LS2/t;

    .line 861
    .line 862
    .line 863
    goto :goto_11

    .line 864
    :cond_13
    new-instance v6, LS2/s;

    .line 865
    .line 866
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 867
    .line 868
    .line 869
    move-result-object v8

    .line 870
    if-nez v8, :cond_14

    .line 871
    .line 872
    sget-object v8, La3/r;->n:LP2/b;

    .line 873
    .line 874
    goto :goto_e

    .line 875
    :cond_14
    invoke-static {v8}, LP2/b;->of(Ljava/lang/String;)LP2/b;

    .line 876
    .line 877
    .line 878
    move-result-object v8

    .line 879
    :goto_e
    invoke-virtual {v2}, La3/r;->a()Landroid/database/sqlite/SQLiteDatabase;

    .line 880
    .line 881
    .line 882
    move-result-object v9

    .line 883
    const-string v10, "bytes"

    .line 884
    .line 885
    filled-new-array {v10}, [Ljava/lang/String;

    .line 886
    .line 887
    .line 888
    move-result-object v11

    .line 889
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 890
    .line 891
    .line 892
    move-result-object v10

    .line 893
    filled-new-array {v10}, [Ljava/lang/String;

    .line 894
    .line 895
    .line 896
    move-result-object v13

    .line 897
    const/4 v15, 0x0

    .line 898
    const-string v16, "sequence_num"

    .line 899
    .line 900
    const-string v10, "event_payloads"

    .line 901
    .line 902
    const-string v12, "event_id = ?"

    .line 903
    .line 904
    const/4 v14, 0x0

    .line 905
    invoke-virtual/range {v9 .. v16}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 906
    .line 907
    .line 908
    move-result-object v9

    .line 909
    :try_start_4
    new-instance v10, Ljava/util/ArrayList;

    .line 910
    .line 911
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 912
    .line 913
    .line 914
    move v11, v3

    .line 915
    :goto_f
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    .line 916
    .line 917
    .line 918
    move-result v12

    .line 919
    if-eqz v12, :cond_15

    .line 920
    .line 921
    invoke-interface {v9, v3}, Landroid/database/Cursor;->getBlob(I)[B

    .line 922
    .line 923
    .line 924
    move-result-object v12

    .line 925
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 926
    .line 927
    .line 928
    array-length v12, v12

    .line 929
    add-int/2addr v11, v12

    .line 930
    goto :goto_f

    .line 931
    :cond_15
    new-array v11, v11, [B

    .line 932
    .line 933
    move v12, v3

    .line 934
    move v13, v12

    .line 935
    :goto_10
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 936
    .line 937
    .line 938
    move-result v14

    .line 939
    if-ge v12, v14, :cond_16

    .line 940
    .line 941
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 942
    .line 943
    .line 944
    move-result-object v14

    .line 945
    check-cast v14, [B

    .line 946
    .line 947
    array-length v15, v14

    .line 948
    invoke-static {v14, v3, v11, v13, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 949
    .line 950
    .line 951
    array-length v14, v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 952
    add-int/2addr v13, v14

    .line 953
    add-int/lit8 v12, v12, 0x1

    .line 954
    .line 955
    goto :goto_10

    .line 956
    :cond_16
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 957
    .line 958
    .line 959
    invoke-direct {v6, v8, v11}, LS2/s;-><init>(LP2/b;[B)V

    .line 960
    .line 961
    .line 962
    invoke-virtual {v7, v6}, LS2/t;->setEncodedPayload(LS2/s;)LS2/t;

    .line 963
    .line 964
    .line 965
    :goto_11
    const/4 v3, 0x6

    .line 966
    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    .line 967
    .line 968
    .line 969
    move-result v6

    .line 970
    if-nez v6, :cond_17

    .line 971
    .line 972
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    .line 973
    .line 974
    .line 975
    move-result v3

    .line 976
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 977
    .line 978
    .line 979
    move-result-object v3

    .line 980
    invoke-virtual {v7, v3}, LS2/t;->setCode(Ljava/lang/Integer;)LS2/t;

    .line 981
    .line 982
    .line 983
    :cond_17
    invoke-virtual {v7}, LS2/t;->build()LS2/u;

    .line 984
    .line 985
    .line 986
    move-result-object v3

    .line 987
    iget-object v6, v1, LC4/f;->e:Ljava/lang/Object;

    .line 988
    .line 989
    check-cast v6, LS2/E;

    .line 990
    .line 991
    invoke-static {v4, v5, v6, v3}, La3/m;->create(JLS2/E;LS2/u;)La3/m;

    .line 992
    .line 993
    .line 994
    move-result-object v3

    .line 995
    iget-object v4, v1, LC4/f;->j:Ljava/lang/Object;

    .line 996
    .line 997
    check-cast v4, Ljava/util/ArrayList;

    .line 998
    .line 999
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1000
    .line 1001
    .line 1002
    goto/16 :goto_b

    .line 1003
    .line 1004
    :catchall_2
    move-exception v0

    .line 1005
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1006
    .line 1007
    .line 1008
    throw v0

    .line 1009
    :cond_18
    const/4 v0, 0x0

    .line 1010
    return-object v0

    .line 1011
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public create(ILandroidx/media3/common/TrackGroup;[I)Ljava/util/List;
    .locals 7

    .line 1
    iget-object v0, p0, LC4/f;->f:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    iget-object v0, p0, LC4/f;->j:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    iget-object v0, p0, LC4/f;->e:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->f(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;Ljava/lang/String;Ljava/lang/String;ILandroidx/media3/common/TrackGroup;[I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public execute()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, LC4/f;->f:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, LY2/b;

    .line 4
    .line 5
    iget-object v1, v0, LY2/b;->d:La3/d;

    .line 6
    .line 7
    check-cast v1, La3/r;

    .line 8
    .line 9
    iget-object v2, p0, LC4/f;->j:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v2, LS2/E;

    .line 12
    .line 13
    iget-object v3, p0, LC4/f;->e:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v3, LS2/u;

    .line 16
    .line 17
    invoke-virtual {v1, v2, v3}, La3/r;->persist(LS2/E;LS2/u;)La3/m;

    .line 18
    .line 19
    .line 20
    iget-object v0, v0, LY2/b;->a:LZ2/q;

    .line 21
    .line 22
    check-cast v0, LZ2/d;

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    invoke-virtual {v0, v2, v1}, LZ2/d;->schedule(LS2/E;I)V

    .line 26
    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    return-object v0
.end method

.method public onCancel()V
    .locals 1

    .line 1
    iget-object v0, p0, LC4/f;->f:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/lang/Runnable;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, LC4/f;->j:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Landroidx/transition/e;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/transition/e;->cancel()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, LC4/f;->e:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Ljava/lang/Runnable;

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 5

    .line 1
    iget v0, p0, LC4/f;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, LC4/f;->f:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, LC4/e0;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    sget v2, Lflix/com/vision/R$id;->action_remove:I

    .line 18
    .line 19
    iget-object v3, p0, LC4/f;->j:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v3, LC4/d0;

    .line 22
    .line 23
    iget-object v0, v0, LC4/e0;->d:Landroid/app/Activity;

    .line 24
    .line 25
    if-ne v1, v2, :cond_0

    .line 26
    .line 27
    check-cast v0, Lflix/com/vision/tv/MyImportActivity;

    .line 28
    .line 29
    iget-object p1, v3, LC4/d0;->u:Lflix/com/vision/models/HistoryTVLink;

    .line 30
    .line 31
    invoke-virtual {v0, p1}, Lflix/com/vision/tv/MyImportActivity;->removeItem(Lflix/com/vision/models/HistoryTVLink;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    sget v2, Lflix/com/vision/R$id;->action_open:I

    .line 40
    .line 41
    if-ne v1, v2, :cond_1

    .line 42
    .line 43
    check-cast v0, Lflix/com/vision/tv/MyImportActivity;

    .line 44
    .line 45
    iget-object p1, v3, LC4/d0;->u:Lflix/com/vision/models/HistoryTVLink;

    .line 46
    .line 47
    invoke-virtual {v0, p1}, Lflix/com/vision/tv/MyImportActivity;->openItem(Lflix/com/vision/models/HistoryTVLink;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    sget v1, Lflix/com/vision/R$id;->action_edit:I

    .line 56
    .line 57
    if-ne p1, v1, :cond_2

    .line 58
    .line 59
    check-cast v0, Lflix/com/vision/tv/MyImportActivity;

    .line 60
    .line 61
    iget-object p1, v3, LC4/d0;->u:Lflix/com/vision/models/HistoryTVLink;

    .line 62
    .line 63
    invoke-virtual {v0, p1}, Lflix/com/vision/tv/MyImportActivity;->editItem(Lflix/com/vision/models/HistoryTVLink;)V

    .line 64
    .line 65
    .line 66
    :cond_2
    :goto_0
    iget-object p1, p0, LC4/f;->e:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast p1, Ll/v1;

    .line 69
    .line 70
    invoke-virtual {p1}, Ll/v1;->dismiss()V

    .line 71
    .line 72
    .line 73
    const/4 p1, 0x1

    .line 74
    return p1

    .line 75
    :pswitch_0
    iget-object v0, p0, LC4/f;->f:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast v0, LC4/u;

    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    sget v2, Lflix/com/vision/R$id;->action_add_favorites_live_tv:I

    .line 87
    .line 88
    iget-object v3, p0, LC4/f;->j:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast v3, Lflix/com/vision/models/ChannelTv;

    .line 91
    .line 92
    const/4 v4, 0x0

    .line 93
    iget-object v0, v0, LC4/u;->e:Landroid/content/Context;

    .line 94
    .line 95
    if-ne v1, v2, :cond_3

    .line 96
    .line 97
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    iget-object v1, v1, Lflix/com/vision/App;->r:LP4/e;

    .line 102
    .line 103
    invoke-virtual {v1, v3}, LP4/e;->addChannelToFavorites(Lflix/com/vision/models/ChannelTv;)Z

    .line 104
    .line 105
    .line 106
    sget v1, Lflix/com/vision/R$string;->added_fav_label:I

    .line 107
    .line 108
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 117
    .line 118
    .line 119
    :cond_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    sget v1, Lflix/com/vision/R$id;->action_remove_favorites_live_tv:I

    .line 124
    .line 125
    if-ne p1, v1, :cond_4

    .line 126
    .line 127
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    iget-object p1, p1, Lflix/com/vision/App;->r:LP4/e;

    .line 132
    .line 133
    invoke-virtual {p1, v3}, LP4/e;->deleteChannelFromFavorites(Lflix/com/vision/models/ChannelTv;)V

    .line 134
    .line 135
    .line 136
    sget p1, Lflix/com/vision/R$string;->removed_fav_label:I

    .line 137
    .line 138
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    invoke-static {v0, p1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 147
    .line 148
    .line 149
    :cond_4
    iget-object p1, p0, LC4/f;->e:Ljava/lang/Object;

    .line 150
    .line 151
    check-cast p1, Ll/v1;

    .line 152
    .line 153
    invoke-virtual {p1}, Ll/v1;->dismiss()V

    .line 154
    .line 155
    .line 156
    const/4 p1, 0x1

    .line 157
    return p1

    .line 158
    :pswitch_1
    iget-object v0, p0, LC4/f;->f:Ljava/lang/Object;

    .line 159
    .line 160
    check-cast v0, LC4/k;

    .line 161
    .line 162
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 163
    .line 164
    .line 165
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 166
    .line 167
    .line 168
    move-result v1

    .line 169
    sget v2, Lflix/com/vision/R$id;->action_add_favorites_live_tv:I

    .line 170
    .line 171
    iget-object v3, p0, LC4/f;->j:Ljava/lang/Object;

    .line 172
    .line 173
    check-cast v3, Lflix/com/vision/models/Anime;

    .line 174
    .line 175
    const/4 v4, 0x0

    .line 176
    iget-object v0, v0, LC4/k;->d:Landroid/content/Context;

    .line 177
    .line 178
    if-ne v1, v2, :cond_5

    .line 179
    .line 180
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    iget-object v1, v1, Lflix/com/vision/App;->r:LP4/e;

    .line 185
    .line 186
    invoke-virtual {v3}, Lflix/com/vision/models/Anime;->toMovie()Lflix/com/vision/models/Movie;

    .line 187
    .line 188
    .line 189
    move-result-object v2

    .line 190
    invoke-virtual {v1, v2}, LP4/e;->addMovieFavorites_Anime(Lflix/com/vision/models/Movie;)Z

    .line 191
    .line 192
    .line 193
    sget v1, Lflix/com/vision/R$string;->added_fav_label:I

    .line 194
    .line 195
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 204
    .line 205
    .line 206
    :cond_5
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 207
    .line 208
    .line 209
    move-result p1

    .line 210
    sget v1, Lflix/com/vision/R$id;->action_remove_favorites_live_tv:I

    .line 211
    .line 212
    if-ne p1, v1, :cond_6

    .line 213
    .line 214
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    iget-object p1, p1, Lflix/com/vision/App;->r:LP4/e;

    .line 219
    .line 220
    invoke-virtual {v3}, Lflix/com/vision/models/Anime;->toMovie()Lflix/com/vision/models/Movie;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    invoke-virtual {p1, v1}, LP4/e;->deleteFavoriteMovie_ANIME(Lflix/com/vision/models/Movie;)V

    .line 225
    .line 226
    .line 227
    sget p1, Lflix/com/vision/R$string;->removed_fav_label:I

    .line 228
    .line 229
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    invoke-static {v0, p1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 234
    .line 235
    .line 236
    move-result-object p1

    .line 237
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 238
    .line 239
    .line 240
    :cond_6
    iget-object p1, p0, LC4/f;->e:Ljava/lang/Object;

    .line 241
    .line 242
    check-cast p1, Ll/v1;

    .line 243
    .line 244
    invoke-virtual {p1}, Ll/v1;->dismiss()V

    .line 245
    .line 246
    .line 247
    const/4 p1, 0x1

    .line 248
    return p1

    .line 249
    :pswitch_2
    iget-object v0, p0, LC4/f;->f:Ljava/lang/Object;

    .line 250
    .line 251
    check-cast v0, LC4/h;

    .line 252
    .line 253
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 254
    .line 255
    .line 256
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 257
    .line 258
    .line 259
    move-result v1

    .line 260
    sget v2, Lflix/com/vision/R$id;->action_add_favorites_live_tv:I

    .line 261
    .line 262
    iget-object v3, p0, LC4/f;->j:Ljava/lang/Object;

    .line 263
    .line 264
    check-cast v3, Lflix/com/vision/models/adult/AdultVideo;

    .line 265
    .line 266
    const/4 v4, 0x0

    .line 267
    iget-object v0, v0, LC4/h;->e:Landroid/app/Activity;

    .line 268
    .line 269
    if-ne v1, v2, :cond_7

    .line 270
    .line 271
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    iget-object v1, v1, Lflix/com/vision/App;->r:LP4/e;

    .line 276
    .line 277
    invoke-virtual {v1, v3}, LP4/e;->addFavoritesAdult(Lflix/com/vision/models/adult/AdultVideo;)Z

    .line 278
    .line 279
    .line 280
    sget v1, Lflix/com/vision/R$string;->added_fav_label:I

    .line 281
    .line 282
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v1

    .line 286
    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 287
    .line 288
    .line 289
    move-result-object v1

    .line 290
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 291
    .line 292
    .line 293
    :cond_7
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 294
    .line 295
    .line 296
    move-result p1

    .line 297
    sget v1, Lflix/com/vision/R$id;->action_remove_favorites_live_tv:I

    .line 298
    .line 299
    if-ne p1, v1, :cond_8

    .line 300
    .line 301
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 302
    .line 303
    .line 304
    move-result-object p1

    .line 305
    iget-object p1, p1, Lflix/com/vision/App;->r:LP4/e;

    .line 306
    .line 307
    invoke-virtual {p1, v3}, LP4/e;->deleteFavoriteAdultVideo(Lflix/com/vision/models/adult/AdultVideo;)V

    .line 308
    .line 309
    .line 310
    sget p1, Lflix/com/vision/R$string;->removed_fav_label:I

    .line 311
    .line 312
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object p1

    .line 316
    invoke-static {v0, p1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 317
    .line 318
    .line 319
    move-result-object p1

    .line 320
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 321
    .line 322
    .line 323
    :cond_8
    iget-object p1, p0, LC4/f;->e:Ljava/lang/Object;

    .line 324
    .line 325
    check-cast p1, Ll/v1;

    .line 326
    .line 327
    invoke-virtual {p1}, Ll/v1;->dismiss()V

    .line 328
    .line 329
    .line 330
    const/4 p1, 0x1

    .line 331
    return p1

    .line 332
    nop

    .line 333
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/google/firebase/remoteconfig/internal/ConfigContainer;

    iget-object v0, p0, LC4/f;->f:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/remoteconfig/internal/rollouts/RolloutsStateSubscriptionsHandler;

    iget-object v1, p0, LC4/f;->j:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/tasks/Task;

    iget-object v2, p0, LC4/f;->e:Ljava/lang/Object;

    check-cast v2, Lcom/google/firebase/remoteconfig/interop/rollouts/RolloutsStateSubscriber;

    invoke-static {v0, v1, v2, p1}, Lcom/google/firebase/remoteconfig/internal/rollouts/RolloutsStateSubscriptionsHandler;->a(Lcom/google/firebase/remoteconfig/internal/rollouts/RolloutsStateSubscriptionsHandler;Lcom/google/android/gms/tasks/Task;Lcom/google/firebase/remoteconfig/interop/rollouts/RolloutsStateSubscriber;Lcom/google/firebase/remoteconfig/internal/ConfigContainer;)V

    return-void
.end method

.method public then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, LC4/f;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LC4/f;->f:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;

    iget-object v1, p0, LC4/f;->j:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/tasks/Task;

    iget-object v2, p0, LC4/f;->e:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/tasks/Task;

    invoke-static {v0, v1, v2, p1}, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;->b(Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    :pswitch_0
    iget-object v0, p0, LC4/f;->f:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    iget-object v1, p0, LC4/f;->j:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/tasks/Task;

    iget-object v2, p0, LC4/f;->e:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/tasks/Task;

    invoke-static {v0, v1, v2, p1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->i(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method
