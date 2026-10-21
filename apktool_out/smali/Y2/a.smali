.class public final synthetic LY2/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic j:Ljava/lang/Object;

.field public final synthetic m:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p5, p0, LY2/a;->b:I

    iput-object p1, p0, LY2/a;->e:Ljava/lang/Object;

    iput-object p2, p0, LY2/a;->f:Ljava/lang/Object;

    iput-object p3, p0, LY2/a;->j:Ljava/lang/Object;

    iput-object p4, p0, LY2/a;->m:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    const/4 v3, 0x1

    .line 5
    iget-object v4, v1, LY2/a;->j:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v5, v1, LY2/a;->m:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object v6, v1, LY2/a;->f:Ljava/lang/Object;

    .line 10
    .line 11
    iget-object v7, v1, LY2/a;->e:Ljava/lang/Object;

    .line 12
    .line 13
    iget v8, v1, LY2/a;->b:I

    .line 14
    .line 15
    packed-switch v8, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    check-cast v7, Landroid/content/Context;

    .line 19
    .line 20
    check-cast v6, Ljava/lang/String;

    .line 21
    .line 22
    check-cast v5, Ljava/lang/String;

    .line 23
    .line 24
    const-string v8, "UTF-8"

    .line 25
    .line 26
    const-string v9, "BandwidthOptReporter"

    .line 27
    .line 28
    const-string v10, "{\"ips\":[\""

    .line 29
    .line 30
    const-string v11, "Basic "

    .line 31
    .line 32
    :try_start_0
    new-instance v12, Ljava/net/URL;

    .line 33
    .line 34
    const-string v13, "https://api.ipify.org"

    .line 35
    .line 36
    invoke-direct {v12, v13}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v12}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 40
    .line 41
    .line 42
    move-result-object v12

    .line 43
    check-cast v12, Ljava/net/HttpURLConnection;

    .line 44
    .line 45
    const/16 v13, 0x2710

    .line 46
    .line 47
    invoke-virtual {v12, v13}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v12, v13}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 51
    .line 52
    .line 53
    new-instance v14, Ljava/io/BufferedReader;

    .line 54
    .line 55
    new-instance v15, Ljava/io/InputStreamReader;

    .line 56
    .line 57
    const/16 v16, 0x0

    .line 58
    .line 59
    invoke-virtual {v12}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-direct {v15, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 64
    .line 65
    .line 66
    invoke-direct {v14, v15}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .line 68
    .line 69
    :try_start_1
    invoke-virtual {v14}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    :try_start_2
    invoke-virtual {v14}, Ljava/io/BufferedReader;->close()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 77
    .line 78
    .line 79
    if-eqz v2, :cond_2

    .line 80
    .line 81
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v12

    .line 85
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    .line 86
    .line 87
    .line 88
    move-result v12

    .line 89
    if-eqz v12, :cond_0

    .line 90
    .line 91
    goto/16 :goto_1

    .line 92
    .line 93
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 98
    .line 99
    .line 100
    move-result-object v7

    .line 101
    const-string v12, "android_id"

    .line 102
    .line 103
    invoke-static {v7, v12}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v7

    .line 107
    new-instance v12, Ljava/net/URL;

    .line 108
    .line 109
    invoke-direct {v12, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v12}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 113
    .line 114
    .line 115
    move-result-object v12

    .line 116
    check-cast v12, Ljava/net/HttpURLConnection;

    .line 117
    .line 118
    const-string v14, "POST"

    .line 119
    .line 120
    invoke-virtual {v12, v14}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v12, v3}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v12, v13}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v12, v13}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 130
    .line 131
    .line 132
    const-string v13, "Content-Type"

    .line 133
    .line 134
    const-string v14, "application/json"

    .line 135
    .line 136
    invoke-virtual {v12, v13, v14}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 137
    .line 138
    .line 139
    check-cast v4, Ljava/lang/String;

    .line 140
    .line 141
    if-nez v4, :cond_1

    .line 142
    .line 143
    :try_start_3
    const-string v4, ""

    .line 144
    .line 145
    goto :goto_0

    .line 146
    :catch_0
    move-exception v0

    .line 147
    goto/16 :goto_3

    .line 148
    .line 149
    :cond_1
    :goto_0
    new-instance v13, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    const-string v5, ":"

    .line 158
    .line 159
    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v4

    .line 169
    invoke-virtual {v4, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 170
    .line 171
    .line 172
    move-result-object v4

    .line 173
    invoke-static {v4, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v4

    .line 177
    const-string v5, "Authorization"

    .line 178
    .line 179
    new-instance v13, Ljava/lang/StringBuilder;

    .line 180
    .line 181
    invoke-direct {v13, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v4

    .line 191
    invoke-virtual {v12, v5, v4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    new-instance v4, Ljava/lang/StringBuilder;

    .line 195
    .line 196
    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    const-string v5, "\"],\"device_id\":\""

    .line 203
    .line 204
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    const-string v5, "\"}"

    .line 211
    .line 212
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v4

    .line 219
    invoke-virtual {v4, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 220
    .line 221
    .line 222
    move-result-object v4

    .line 223
    invoke-virtual {v12}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    .line 224
    .line 225
    .line 226
    move-result-object v5

    .line 227
    invoke-virtual {v5, v4}, Ljava/io/OutputStream;->write([B)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v12}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    .line 231
    .line 232
    .line 233
    move-result-object v4

    .line 234
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 238
    .line 239
    .line 240
    move-result v4

    .line 241
    const-string v5, "POST %s ip=%s HTTP %d"

    .line 242
    .line 243
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 244
    .line 245
    .line 246
    move-result-object v4

    .line 247
    const/4 v7, 0x3

    .line 248
    new-array v7, v7, [Ljava/lang/Object;

    .line 249
    .line 250
    aput-object v6, v7, v16

    .line 251
    .line 252
    aput-object v2, v7, v3

    .line 253
    .line 254
    aput-object v4, v7, v0

    .line 255
    .line 256
    invoke-static {v9, v5, v7}, Ls5/b;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 260
    .line 261
    .line 262
    goto :goto_4

    .line 263
    :cond_2
    :goto_1
    const-string v0, "could not resolve public IP"

    .line 264
    .line 265
    move/from16 v2, v16

    .line 266
    .line 267
    new-array v4, v2, [Ljava/lang/Object;

    .line 268
    .line 269
    invoke-static {v9, v0, v4}, Ls5/b;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 270
    .line 271
    .line 272
    goto :goto_4

    .line 273
    :catchall_0
    move-exception v0

    .line 274
    move-object v2, v0

    .line 275
    :try_start_4
    invoke-virtual {v14}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 276
    .line 277
    .line 278
    goto :goto_2

    .line 279
    :catchall_1
    move-exception v0

    .line 280
    :try_start_5
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 281
    .line 282
    .line 283
    :goto_2
    throw v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 284
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    new-array v2, v3, [Ljava/lang/Object;

    .line 289
    .line 290
    const/16 v16, 0x0

    .line 291
    .line 292
    aput-object v0, v2, v16

    .line 293
    .line 294
    const-string v0, "opt report failed: %s"

    .line 295
    .line 296
    invoke-static {v9, v0, v2}, Ls5/b;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 297
    .line 298
    .line 299
    :goto_4
    return-void

    .line 300
    :pswitch_0
    check-cast v7, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;

    .line 301
    .line 302
    check-cast v6, Landroidx/media3/exoplayer/source/MediaSource;

    .line 303
    .line 304
    check-cast v4, LP3/w;

    .line 305
    .line 306
    check-cast v5, Landroidx/media3/exoplayer/source/preload/PreloadException;

    .line 307
    .line 308
    invoke-static {v7, v6, v4, v5}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->j(Landroidx/media3/exoplayer/source/preload/BasePreloadManager;Landroidx/media3/exoplayer/source/MediaSource;LP3/w;Landroidx/media3/exoplayer/source/preload/PreloadException;)V

    .line 309
    .line 310
    .line 311
    return-void

    .line 312
    :pswitch_1
    check-cast v7, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;

    .line 313
    .line 314
    check-cast v6, Landroidx/media3/common/MediaItem;

    .line 315
    .line 316
    check-cast v4, LP3/w;

    .line 317
    .line 318
    check-cast v5, Landroidx/media3/exoplayer/source/preload/PreloadException;

    .line 319
    .line 320
    invoke-static {v7, v6, v4, v5}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->i(Landroidx/media3/exoplayer/source/preload/BasePreloadManager;Landroidx/media3/common/MediaItem;LP3/w;Landroidx/media3/exoplayer/source/preload/PreloadException;)V

    .line 321
    .line 322
    .line 323
    return-void

    .line 324
    :pswitch_2
    check-cast v6, LS2/E;

    .line 325
    .line 326
    check-cast v4, LP2/g;

    .line 327
    .line 328
    check-cast v5, LS2/u;

    .line 329
    .line 330
    check-cast v7, LY2/b;

    .line 331
    .line 332
    sget-object v2, LY2/b;->f:Ljava/util/logging/Logger;

    .line 333
    .line 334
    const-string v0, "Transport backend \'"

    .line 335
    .line 336
    :try_start_6
    iget-object v3, v7, LY2/b;->c:LT2/f;

    .line 337
    .line 338
    invoke-virtual {v6}, LS2/E;->getBackendName()Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v8

    .line 342
    check-cast v3, LT2/m;

    .line 343
    .line 344
    invoke-virtual {v3, v8}, LT2/m;->get(Ljava/lang/String;)LT2/o;

    .line 345
    .line 346
    .line 347
    move-result-object v3

    .line 348
    if-nez v3, :cond_3

    .line 349
    .line 350
    invoke-virtual {v6}, LS2/E;->getBackendName()Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v3

    .line 354
    new-instance v5, Ljava/lang/StringBuilder;

    .line 355
    .line 356
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    .line 361
    .line 362
    const-string v0, "\' is not registered"

    .line 363
    .line 364
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    .line 366
    .line 367
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v0

    .line 371
    invoke-virtual {v2, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 372
    .line 373
    .line 374
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 375
    .line 376
    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 377
    .line 378
    .line 379
    invoke-interface {v4, v3}, LP2/g;->onSchedule(Ljava/lang/Exception;)V

    .line 380
    .line 381
    .line 382
    goto :goto_6

    .line 383
    :catch_1
    move-exception v0

    .line 384
    goto :goto_5

    .line 385
    :cond_3
    check-cast v3, LQ2/d;

    .line 386
    .line 387
    invoke-virtual {v3, v5}, LQ2/d;->decorate(LS2/u;)LS2/u;

    .line 388
    .line 389
    .line 390
    move-result-object v0

    .line 391
    iget-object v3, v7, LY2/b;->e:Lb3/b;

    .line 392
    .line 393
    new-instance v5, LC4/f;

    .line 394
    .line 395
    const/4 v8, 0x4

    .line 396
    invoke-direct {v5, v7, v6, v0, v8}, LC4/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 397
    .line 398
    .line 399
    check-cast v3, La3/r;

    .line 400
    .line 401
    invoke-virtual {v3, v5}, La3/r;->runCriticalSection(Lb3/a;)Ljava/lang/Object;

    .line 402
    .line 403
    .line 404
    const/4 v0, 0x0

    .line 405
    invoke-interface {v4, v0}, LP2/g;->onSchedule(Ljava/lang/Exception;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 406
    .line 407
    .line 408
    goto :goto_6

    .line 409
    :goto_5
    new-instance v3, Ljava/lang/StringBuilder;

    .line 410
    .line 411
    const-string v5, "Error scheduling event "

    .line 412
    .line 413
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 414
    .line 415
    .line 416
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object v5

    .line 420
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    .line 422
    .line 423
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object v3

    .line 427
    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 428
    .line 429
    .line 430
    invoke-interface {v4, v0}, LP2/g;->onSchedule(Ljava/lang/Exception;)V

    .line 431
    .line 432
    .line 433
    :goto_6
    return-void

    .line 434
    nop

    .line 435
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
