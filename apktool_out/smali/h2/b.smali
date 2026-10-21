.class public final Lh2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/volley/Network;


# instance fields
.field public final a:Lh2/a;

.field public final b:Lh2/d;


# direct methods
.method public constructor <init>(Lh2/a;)V
    .locals 2

    .line 1
    new-instance v0, Lh2/d;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Lh2/d;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lh2/b;-><init>(Lh2/a;Lh2/d;)V

    return-void
.end method

.method public constructor <init>(Lh2/a;Lh2/d;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lh2/b;->a:Lh2/a;

    .line 4
    iput-object p2, p0, Lh2/b;->b:Lh2/d;

    return-void
.end method


# virtual methods
.method public performRequest(Lcom/android/volley/Request;)Lcom/android/volley/NetworkResponse;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "*>;)",
            "Lcom/android/volley/NetworkResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/VolleyError;
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    const/4 v3, 0x2

    .line 6
    const/4 v4, 0x1

    .line 7
    const/4 v5, 0x0

    .line 8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 9
    .line 10
    .line 11
    move-result-wide v6

    .line 12
    :goto_0
    const/4 v8, 0x0

    .line 13
    :try_start_0
    invoke-virtual {v2}, Lcom/android/volley/Request;->getCacheEntry()Lcom/android/volley/Cache$Entry;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    new-instance v9, Ljava/util/HashMap;

    .line 23
    .line 24
    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 25
    .line 26
    .line 27
    iget-object v10, v0, Lcom/android/volley/Cache$Entry;->etag:Ljava/lang/String;

    .line 28
    .line 29
    if-eqz v10, :cond_1

    .line 30
    .line 31
    const-string v11, "If-None-Match"

    .line 32
    .line 33
    invoke-virtual {v9, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    :cond_1
    iget-wide v10, v0, Lcom/android/volley/Cache$Entry;->lastModified:J

    .line 37
    .line 38
    const-wide/16 v12, 0x0

    .line 39
    .line 40
    cmp-long v0, v10, v12

    .line 41
    .line 42
    if-lez v0, :cond_2

    .line 43
    .line 44
    const-string v0, "EEE, dd MMM yyyy HH:mm:ss \'GMT\'"

    .line 45
    .line 46
    new-instance v12, Ljava/text/SimpleDateFormat;

    .line 47
    .line 48
    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 49
    .line 50
    invoke-direct {v12, v0, v13}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 51
    .line 52
    .line 53
    const-string v0, "GMT"

    .line 54
    .line 55
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v12, v0}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 60
    .line 61
    .line 62
    new-instance v0, Ljava/util/Date;

    .line 63
    .line 64
    invoke-direct {v0, v10, v11}, Ljava/util/Date;-><init>(J)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v12, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    const-string v10, "If-Modified-Since"

    .line 72
    .line 73
    invoke-virtual {v9, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    :cond_2
    move-object v0, v9

    .line 77
    :goto_1
    iget-object v9, v1, Lh2/b;->a:Lh2/a;

    .line 78
    .line 79
    invoke-virtual {v9, v2, v0}, Lh2/a;->executeRequest(Lcom/android/volley/Request;Ljava/util/Map;)Lh2/j;

    .line 80
    .line 81
    .line 82
    move-result-object v9
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 83
    :try_start_1
    invoke-virtual {v9}, Lh2/j;->getStatusCode()I

    .line 84
    .line 85
    .line 86
    move-result v11

    .line 87
    invoke-virtual {v9}, Lh2/j;->getHeaders()Ljava/util/List;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    const/16 v10, 0x130

    .line 92
    .line 93
    if-ne v11, v10, :cond_3

    .line 94
    .line 95
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 96
    .line 97
    .line 98
    move-result-wide v10

    .line 99
    sub-long/2addr v10, v6

    .line 100
    invoke-static {v2, v10, v11, v0}, Lh2/r;->a(Lcom/android/volley/Request;JLjava/util/List;)Lcom/android/volley/NetworkResponse;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    return-object v0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    move-object v11, v8

    .line 107
    move-object v8, v9

    .line 108
    goto/16 :goto_5

    .line 109
    .line 110
    :cond_3
    invoke-virtual {v9}, Lh2/j;->getContent()Ljava/io/InputStream;

    .line 111
    .line 112
    .line 113
    move-result-object v10

    .line 114
    if-eqz v10, :cond_4

    .line 115
    .line 116
    invoke-virtual {v9}, Lh2/j;->getContentLength()I

    .line 117
    .line 118
    .line 119
    move-result v12

    .line 120
    iget-object v13, v1, Lh2/b;->b:Lh2/d;

    .line 121
    .line 122
    invoke-static {v10, v12, v13}, Lh2/r;->b(Ljava/io/InputStream;ILh2/d;)[B

    .line 123
    .line 124
    .line 125
    move-result-object v8

    .line 126
    :goto_2
    move-object v12, v8

    .line 127
    goto :goto_3

    .line 128
    :cond_4
    new-array v8, v5, [B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 129
    .line 130
    goto :goto_2

    .line 131
    :goto_3
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 132
    .line 133
    .line 134
    move-result-wide v13

    .line 135
    sub-long/2addr v13, v6

    .line 136
    sget-boolean v8, Lcom/android/volley/VolleyLog;->DEBUG:Z

    .line 137
    .line 138
    if-nez v8, :cond_5

    .line 139
    .line 140
    const-wide/16 v15, 0xbb8

    .line 141
    .line 142
    cmp-long v8, v13, v15

    .line 143
    .line 144
    if-lez v8, :cond_7

    .line 145
    .line 146
    :cond_5
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 147
    .line 148
    .line 149
    move-result-object v8

    .line 150
    if-eqz v12, :cond_6

    .line 151
    .line 152
    array-length v10, v12

    .line 153
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 154
    .line 155
    .line 156
    move-result-object v10

    .line 157
    goto :goto_4

    .line 158
    :cond_6
    const-string v10, "null"

    .line 159
    .line 160
    :goto_4
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 161
    .line 162
    .line 163
    move-result-object v13

    .line 164
    invoke-virtual {v2}, Lcom/android/volley/Request;->getRetryPolicy()Lcom/android/volley/RetryPolicy;

    .line 165
    .line 166
    .line 167
    move-result-object v14

    .line 168
    invoke-interface {v14}, Lcom/android/volley/RetryPolicy;->getCurrentRetryCount()I

    .line 169
    .line 170
    .line 171
    move-result v14

    .line 172
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 173
    .line 174
    .line 175
    move-result-object v14

    .line 176
    const/4 v15, 0x5

    .line 177
    new-array v15, v15, [Ljava/lang/Object;

    .line 178
    .line 179
    aput-object v2, v15, v5

    .line 180
    .line 181
    aput-object v8, v15, v4

    .line 182
    .line 183
    aput-object v10, v15, v3

    .line 184
    .line 185
    const/4 v8, 0x3

    .line 186
    aput-object v13, v15, v8

    .line 187
    .line 188
    const/4 v8, 0x4

    .line 189
    aput-object v14, v15, v8

    .line 190
    .line 191
    const-string v8, "HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]"

    .line 192
    .line 193
    invoke-static {v8, v15}, Lcom/android/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    .line 195
    .line 196
    :cond_7
    const/16 v8, 0xc8

    .line 197
    .line 198
    if-lt v11, v8, :cond_8

    .line 199
    .line 200
    const/16 v8, 0x12b

    .line 201
    .line 202
    if-gt v11, v8, :cond_8

    .line 203
    .line 204
    new-instance v10, Lcom/android/volley/NetworkResponse;

    .line 205
    .line 206
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 207
    .line 208
    .line 209
    move-result-wide v13

    .line 210
    sub-long/2addr v13, v6

    .line 211
    move-wide v14, v13

    .line 212
    const/4 v13, 0x0

    .line 213
    move-object/from16 v16, v0

    .line 214
    .line 215
    invoke-direct/range {v10 .. v16}, Lcom/android/volley/NetworkResponse;-><init>(I[BZJLjava/util/List;)V

    .line 216
    .line 217
    .line 218
    return-object v10

    .line 219
    :catch_1
    move-exception v0

    .line 220
    move-object v8, v9

    .line 221
    move-object v11, v12

    .line 222
    goto :goto_5

    .line 223
    :cond_8
    new-instance v0, Ljava/io/IOException;

    .line 224
    .line 225
    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    .line 226
    .line 227
    .line 228
    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 229
    :catch_2
    move-exception v0

    .line 230
    move-object v11, v8

    .line 231
    :goto_5
    instance-of v9, v0, Ljava/net/SocketTimeoutException;

    .line 232
    .line 233
    if-eqz v9, :cond_9

    .line 234
    .line 235
    new-instance v0, LC/k;

    .line 236
    .line 237
    new-instance v8, Lcom/android/volley/TimeoutError;

    .line 238
    .line 239
    invoke-direct {v8}, Lcom/android/volley/TimeoutError;-><init>()V

    .line 240
    .line 241
    .line 242
    const-string v9, "socket"

    .line 243
    .line 244
    invoke-direct {v0, v9, v8}, LC/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 245
    .line 246
    .line 247
    goto/16 :goto_8

    .line 248
    .line 249
    :cond_9
    instance-of v9, v0, Ljava/net/MalformedURLException;

    .line 250
    .line 251
    if-nez v9, :cond_12

    .line 252
    .line 253
    if-eqz v8, :cond_10

    .line 254
    .line 255
    invoke-virtual {v8}, Lh2/j;->getStatusCode()I

    .line 256
    .line 257
    .line 258
    move-result v10

    .line 259
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    invoke-virtual {v2}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v9

    .line 267
    new-array v12, v3, [Ljava/lang/Object;

    .line 268
    .line 269
    aput-object v0, v12, v5

    .line 270
    .line 271
    aput-object v9, v12, v4

    .line 272
    .line 273
    const-string v0, "Unexpected response code %d for %s"

    .line 274
    .line 275
    invoke-static {v0, v12}, Lcom/android/volley/VolleyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 276
    .line 277
    .line 278
    if-eqz v11, :cond_f

    .line 279
    .line 280
    invoke-virtual {v8}, Lh2/j;->getHeaders()Ljava/util/List;

    .line 281
    .line 282
    .line 283
    move-result-object v15

    .line 284
    new-instance v9, Lcom/android/volley/NetworkResponse;

    .line 285
    .line 286
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 287
    .line 288
    .line 289
    move-result-wide v12

    .line 290
    sub-long/2addr v12, v6

    .line 291
    move-wide v13, v12

    .line 292
    const/4 v12, 0x0

    .line 293
    invoke-direct/range {v9 .. v15}, Lcom/android/volley/NetworkResponse;-><init>(I[BZJLjava/util/List;)V

    .line 294
    .line 295
    .line 296
    const/16 v0, 0x191

    .line 297
    .line 298
    if-eq v10, v0, :cond_e

    .line 299
    .line 300
    const/16 v0, 0x193

    .line 301
    .line 302
    if-ne v10, v0, :cond_a

    .line 303
    .line 304
    goto :goto_7

    .line 305
    :cond_a
    const/16 v0, 0x190

    .line 306
    .line 307
    if-lt v10, v0, :cond_c

    .line 308
    .line 309
    const/16 v0, 0x1f3

    .line 310
    .line 311
    if-le v10, v0, :cond_b

    .line 312
    .line 313
    goto :goto_6

    .line 314
    :cond_b
    new-instance v0, Lcom/android/volley/ClientError;

    .line 315
    .line 316
    invoke-direct {v0, v9}, Lcom/android/volley/ClientError;-><init>(Lcom/android/volley/NetworkResponse;)V

    .line 317
    .line 318
    .line 319
    throw v0

    .line 320
    :cond_c
    :goto_6
    const/16 v0, 0x1f4

    .line 321
    .line 322
    if-lt v10, v0, :cond_d

    .line 323
    .line 324
    const/16 v0, 0x257

    .line 325
    .line 326
    if-gt v10, v0, :cond_d

    .line 327
    .line 328
    invoke-virtual {v2}, Lcom/android/volley/Request;->shouldRetryServerErrors()Z

    .line 329
    .line 330
    .line 331
    move-result v0

    .line 332
    if-eqz v0, :cond_d

    .line 333
    .line 334
    new-instance v0, LC/k;

    .line 335
    .line 336
    new-instance v8, Lcom/android/volley/ServerError;

    .line 337
    .line 338
    invoke-direct {v8, v9}, Lcom/android/volley/ServerError;-><init>(Lcom/android/volley/NetworkResponse;)V

    .line 339
    .line 340
    .line 341
    const-string v9, "server"

    .line 342
    .line 343
    invoke-direct {v0, v9, v8}, LC/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 344
    .line 345
    .line 346
    goto :goto_8

    .line 347
    :cond_d
    new-instance v0, Lcom/android/volley/ServerError;

    .line 348
    .line 349
    invoke-direct {v0, v9}, Lcom/android/volley/ServerError;-><init>(Lcom/android/volley/NetworkResponse;)V

    .line 350
    .line 351
    .line 352
    throw v0

    .line 353
    :cond_e
    :goto_7
    new-instance v0, LC/k;

    .line 354
    .line 355
    new-instance v8, Lcom/android/volley/AuthFailureError;

    .line 356
    .line 357
    invoke-direct {v8, v9}, Lcom/android/volley/AuthFailureError;-><init>(Lcom/android/volley/NetworkResponse;)V

    .line 358
    .line 359
    .line 360
    const-string v9, "auth"

    .line 361
    .line 362
    invoke-direct {v0, v9, v8}, LC/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 363
    .line 364
    .line 365
    goto :goto_8

    .line 366
    :cond_f
    new-instance v0, LC/k;

    .line 367
    .line 368
    new-instance v8, Lcom/android/volley/NetworkError;

    .line 369
    .line 370
    invoke-direct {v8}, Lcom/android/volley/NetworkError;-><init>()V

    .line 371
    .line 372
    .line 373
    const-string v9, "network"

    .line 374
    .line 375
    invoke-direct {v0, v9, v8}, LC/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 376
    .line 377
    .line 378
    goto :goto_8

    .line 379
    :cond_10
    invoke-virtual {v2}, Lcom/android/volley/Request;->shouldRetryConnectionErrors()Z

    .line 380
    .line 381
    .line 382
    move-result v8

    .line 383
    if-eqz v8, :cond_11

    .line 384
    .line 385
    new-instance v0, LC/k;

    .line 386
    .line 387
    new-instance v8, Lcom/android/volley/NoConnectionError;

    .line 388
    .line 389
    invoke-direct {v8}, Lcom/android/volley/NoConnectionError;-><init>()V

    .line 390
    .line 391
    .line 392
    const-string v9, "connection"

    .line 393
    .line 394
    invoke-direct {v0, v9, v8}, LC/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 395
    .line 396
    .line 397
    :goto_8
    iget-object v8, v0, LC/k;->a:Ljava/lang/Object;

    .line 398
    .line 399
    check-cast v8, Ljava/lang/String;

    .line 400
    .line 401
    const-string v9, "]"

    .line 402
    .line 403
    invoke-virtual {v2}, Lcom/android/volley/Request;->getRetryPolicy()Lcom/android/volley/RetryPolicy;

    .line 404
    .line 405
    .line 406
    move-result-object v10

    .line 407
    invoke-virtual {v2}, Lcom/android/volley/Request;->getTimeoutMs()I

    .line 408
    .line 409
    .line 410
    move-result v11

    .line 411
    :try_start_3
    iget-object v0, v0, LC/k;->b:Ljava/lang/Object;

    .line 412
    .line 413
    check-cast v0, Lcom/android/volley/VolleyError;

    .line 414
    .line 415
    invoke-interface {v10, v0}, Lcom/android/volley/RetryPolicy;->retry(Lcom/android/volley/VolleyError;)V
    :try_end_3
    .catch Lcom/android/volley/VolleyError; {:try_start_3 .. :try_end_3} :catch_3

    .line 416
    .line 417
    .line 418
    new-instance v0, Ljava/lang/StringBuilder;

    .line 419
    .line 420
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 421
    .line 422
    .line 423
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    .line 425
    .line 426
    const-string v8, "-retry [timeout="

    .line 427
    .line 428
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    .line 430
    .line 431
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 432
    .line 433
    .line 434
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    .line 436
    .line 437
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 438
    .line 439
    .line 440
    move-result-object v0

    .line 441
    invoke-virtual {v2, v0}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 442
    .line 443
    .line 444
    goto/16 :goto_0

    .line 445
    .line 446
    :catch_3
    move-exception v0

    .line 447
    new-instance v3, Ljava/lang/StringBuilder;

    .line 448
    .line 449
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 450
    .line 451
    .line 452
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    .line 454
    .line 455
    const-string v4, "-timeout-giveup [timeout="

    .line 456
    .line 457
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    .line 459
    .line 460
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 461
    .line 462
    .line 463
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    .line 465
    .line 466
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 467
    .line 468
    .line 469
    move-result-object v3

    .line 470
    invoke-virtual {v2, v3}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 471
    .line 472
    .line 473
    throw v0

    .line 474
    :cond_11
    new-instance v2, Lcom/android/volley/NoConnectionError;

    .line 475
    .line 476
    invoke-direct {v2, v0}, Lcom/android/volley/NoConnectionError;-><init>(Ljava/lang/Throwable;)V

    .line 477
    .line 478
    .line 479
    throw v2

    .line 480
    :cond_12
    new-instance v3, Ljava/lang/RuntimeException;

    .line 481
    .line 482
    new-instance v4, Ljava/lang/StringBuilder;

    .line 483
    .line 484
    const-string v5, "Bad URL "

    .line 485
    .line 486
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 487
    .line 488
    .line 489
    invoke-virtual {v2}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    .line 490
    .line 491
    .line 492
    move-result-object v2

    .line 493
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    .line 495
    .line 496
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 497
    .line 498
    .line 499
    move-result-object v2

    .line 500
    invoke-direct {v3, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 501
    .line 502
    .line 503
    throw v3
.end method
