.class public final synthetic LA4/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, LA4/n;->b:I

    iput-object p2, p0, LA4/n;->e:Ljava/lang/Object;

    iput-object p3, p0, LA4/n;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x7

    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x0

    .line 5
    const/4 v4, 0x1

    .line 6
    iget v5, p0, LA4/n;->b:I

    .line 7
    .line 8
    packed-switch v5, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, LA4/n;->f:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Ljava/lang/Runnable;

    .line 14
    .line 15
    iget-object v1, p0, LA4/n;->e:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v1, Le/h0;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    :try_start_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Le/h0;->scheduleNext()V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :catchall_0
    move-exception v0

    .line 30
    invoke-virtual {v1}, Le/h0;->scheduleNext()V

    .line 31
    .line 32
    .line 33
    throw v0

    .line 34
    :pswitch_0
    iget-object v0, p0, LA4/n;->e:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v0, Landroid/content/Context;

    .line 37
    .line 38
    iget-object v1, p0, LA4/n;->f:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v1, Landroid/content/Intent;

    .line 41
    .line 42
    invoke-static {v0, v1}, Lcom/ax/altpop/fg/a;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :pswitch_1
    iget-object v0, p0, LA4/n;->e:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v0, Ljava/lang/String;

    .line 49
    .line 50
    :try_start_1
    new-instance v1, Ljava/util/HashMap;

    .line 51
    .line 52
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 53
    .line 54
    .line 55
    const-string v5, "deviceId"

    .line 56
    .line 57
    invoke-static {v2}, Lb4/c;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    const-string v5, "message"

    .line 65
    .line 66
    invoke-virtual {v1, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, LA4/n;->f:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v0, Ljava/lang/Throwable;

    .line 72
    .line 73
    if-eqz v0, :cond_0

    .line 74
    .line 75
    :try_start_2
    const-string v5, "error"

    .line 76
    .line 77
    new-instance v6, Ljava/io/StringWriter;

    .line 78
    .line 79
    invoke-direct {v6}, Ljava/io/StringWriter;-><init>()V

    .line 80
    .line 81
    .line 82
    new-instance v7, Ljava/io/PrintWriter;

    .line 83
    .line 84
    invoke-direct {v7, v6}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v7}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v7}, Ljava/io/PrintWriter;->flush()V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v6}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-virtual {v1, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :catchall_1
    move-exception v0

    .line 102
    goto :goto_2

    .line 103
    :cond_0
    :goto_0
    new-instance v0, Lc4/b;

    .line 104
    .line 105
    invoke-direct {v0, v1}, Lc4/b;-><init>(Ljava/util/Map;)V

    .line 106
    .line 107
    .line 108
    new-instance v1, Ljava/net/URL;

    .line 109
    .line 110
    const-string v5, "https://imsdk.tv/sdk/log/error"

    .line 111
    .line 112
    invoke-direct {v1, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    check-cast v1, Ljava/net/HttpURLConnection;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 120
    .line 121
    const/16 v2, 0x3a98

    .line 122
    .line 123
    :try_start_3
    invoke-virtual {v1, v2}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 124
    .line 125
    .line 126
    const/16 v2, 0x7530

    .line 127
    .line 128
    invoke-virtual {v1, v2}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 129
    .line 130
    .line 131
    const-string v2, "POST"

    .line 132
    .line 133
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    const-string v2, "Content-Type"

    .line 137
    .line 138
    const-string v5, "application/json; charset=UTF-8"

    .line 139
    .line 140
    invoke-virtual {v1, v2, v5}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    const-string v2, "Accept"

    .line 144
    .line 145
    const-string v5, "application/json"

    .line 146
    .line 147
    invoke-virtual {v1, v2, v5}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v1, v4}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v1, v3}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v1}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    .line 157
    .line 158
    .line 159
    move-result-object v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 160
    :try_start_4
    invoke-virtual {v0}, Lc4/b;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    const-string v4, "UTF-8"

    .line 165
    .line 166
    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    array-length v4, v0

    .line 171
    invoke-virtual {v2, v0, v3, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 172
    .line 173
    .line 174
    :try_start_5
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 178
    .line 179
    .line 180
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 181
    .line 182
    .line 183
    goto :goto_4

    .line 184
    :catchall_2
    move-exception v0

    .line 185
    move-object v2, v1

    .line 186
    goto :goto_2

    .line 187
    :catch_0
    move-object v2, v1

    .line 188
    goto :goto_3

    .line 189
    :catchall_3
    move-exception v0

    .line 190
    if-eqz v2, :cond_1

    .line 191
    .line 192
    :try_start_6
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 193
    .line 194
    .line 195
    goto :goto_1

    .line 196
    :catchall_4
    move-exception v2

    .line 197
    :try_start_7
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 198
    .line 199
    .line 200
    :cond_1
    :goto_1
    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 201
    :goto_2
    if-eqz v2, :cond_2

    .line 202
    .line 203
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 204
    .line 205
    .line 206
    :cond_2
    throw v0

    .line 207
    :catch_1
    :goto_3
    if-eqz v2, :cond_3

    .line 208
    .line 209
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 210
    .line 211
    .line 212
    :cond_3
    :goto_4
    return-void

    .line 213
    :pswitch_2
    iget-object v0, p0, LA4/n;->f:Ljava/lang/Object;

    .line 214
    .line 215
    check-cast v0, Lb4/d;

    .line 216
    .line 217
    iget-object v1, p0, LA4/n;->e:Ljava/lang/Object;

    .line 218
    .line 219
    check-cast v1, Lb4/j;

    .line 220
    .line 221
    :try_start_8
    invoke-virtual {v1, v0}, Lb4/j;->f(Lb4/d;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 222
    .line 223
    .line 224
    goto :goto_5

    .line 225
    :catchall_5
    move-exception v1

    .line 226
    new-instance v2, Ljava/lang/StringBuilder;

    .line 227
    .line 228
    const-string v3, "Failed to load/run "

    .line 229
    .line 230
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    iget-object v0, v0, Lb4/d;->a:Ljava/lang/String;

    .line 234
    .line 235
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    invoke-static {v0, v1}, Lb4/n;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 243
    .line 244
    .line 245
    :goto_5
    return-void

    .line 246
    :pswitch_3
    iget-object v0, p0, LA4/n;->e:Ljava/lang/Object;

    .line 247
    .line 248
    check-cast v0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

    .line 249
    .line 250
    iget-object v1, p0, LA4/n;->f:Ljava/lang/Object;

    .line 251
    .line 252
    check-cast v1, Landroid/graphics/SurfaceTexture;

    .line 253
    .line 254
    invoke-static {v0, v1}, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->b(Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;Landroid/graphics/SurfaceTexture;)V

    .line 255
    .line 256
    .line 257
    return-void

    .line 258
    :pswitch_4
    iget-object v0, p0, LA4/n;->e:Ljava/lang/Object;

    .line 259
    .line 260
    check-cast v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;

    .line 261
    .line 262
    iget-object v1, p0, LA4/n;->f:Ljava/lang/Object;

    .line 263
    .line 264
    check-cast v1, Landroid/media/metrics/PlaybackStateEvent;

    .line 265
    .line 266
    invoke-static {v0, v1}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->e(Landroidx/media3/exoplayer/analytics/MediaMetricsListener;Landroid/media/metrics/PlaybackStateEvent;)V

    .line 267
    .line 268
    .line 269
    return-void

    .line 270
    :pswitch_5
    iget-object v0, p0, LA4/n;->e:Ljava/lang/Object;

    .line 271
    .line 272
    check-cast v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;

    .line 273
    .line 274
    iget-object v1, p0, LA4/n;->f:Ljava/lang/Object;

    .line 275
    .line 276
    check-cast v1, Landroid/media/metrics/PlaybackMetrics;

    .line 277
    .line 278
    invoke-static {v0, v1}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->b(Landroidx/media3/exoplayer/analytics/MediaMetricsListener;Landroid/media/metrics/PlaybackMetrics;)V

    .line 279
    .line 280
    .line 281
    return-void

    .line 282
    :pswitch_6
    iget-object v0, p0, LA4/n;->e:Ljava/lang/Object;

    .line 283
    .line 284
    check-cast v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;

    .line 285
    .line 286
    iget-object v1, p0, LA4/n;->f:Ljava/lang/Object;

    .line 287
    .line 288
    check-cast v1, Landroid/media/metrics/PlaybackErrorEvent;

    .line 289
    .line 290
    invoke-static {v0, v1}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->a(Landroidx/media3/exoplayer/analytics/MediaMetricsListener;Landroid/media/metrics/PlaybackErrorEvent;)V

    .line 291
    .line 292
    .line 293
    return-void

    .line 294
    :pswitch_7
    iget-object v0, p0, LA4/n;->e:Ljava/lang/Object;

    .line 295
    .line 296
    check-cast v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;

    .line 297
    .line 298
    iget-object v1, p0, LA4/n;->f:Ljava/lang/Object;

    .line 299
    .line 300
    check-cast v1, Landroid/media/metrics/NetworkEvent;

    .line 301
    .line 302
    invoke-static {v0, v1}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->c(Landroidx/media3/exoplayer/analytics/MediaMetricsListener;Landroid/media/metrics/NetworkEvent;)V

    .line 303
    .line 304
    .line 305
    return-void

    .line 306
    :pswitch_8
    iget-object v0, p0, LA4/n;->e:Ljava/lang/Object;

    .line 307
    .line 308
    check-cast v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;

    .line 309
    .line 310
    iget-object v1, p0, LA4/n;->f:Ljava/lang/Object;

    .line 311
    .line 312
    check-cast v1, Landroid/media/metrics/TrackChangeEvent;

    .line 313
    .line 314
    invoke-static {v0, v1}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->d(Landroidx/media3/exoplayer/analytics/MediaMetricsListener;Landroid/media/metrics/TrackChangeEvent;)V

    .line 315
    .line 316
    .line 317
    return-void

    .line 318
    :pswitch_9
    iget-object v0, p0, LA4/n;->f:Ljava/lang/Object;

    .line 319
    .line 320
    check-cast v0, Landroidx/media3/common/util/ConditionVariable;

    .line 321
    .line 322
    iget-object v1, p0, LA4/n;->e:Ljava/lang/Object;

    .line 323
    .line 324
    check-cast v1, Landroid/content/Context;

    .line 325
    .line 326
    invoke-static {v1, v0}, Landroidx/media3/common/audio/AudioManagerCompat;->a(Landroid/content/Context;Landroidx/media3/common/util/ConditionVariable;)V

    .line 327
    .line 328
    .line 329
    return-void

    .line 330
    :pswitch_a
    iget-object v0, p0, LA4/n;->e:Ljava/lang/Object;

    .line 331
    .line 332
    check-cast v0, Landroidx/media3/common/SimpleBasePlayer;

    .line 333
    .line 334
    iget-object v1, p0, LA4/n;->f:Ljava/lang/Object;

    .line 335
    .line 336
    check-cast v1, LV3/F;

    .line 337
    .line 338
    invoke-static {v0, v1}, Landroidx/media3/common/SimpleBasePlayer;->d(Landroidx/media3/common/SimpleBasePlayer;LV3/F;)V

    .line 339
    .line 340
    .line 341
    return-void

    .line 342
    :pswitch_b
    iget-object v0, p0, LA4/n;->e:Ljava/lang/Object;

    .line 343
    .line 344
    check-cast v0, La5/i;

    .line 345
    .line 346
    iget-object v0, v0, La5/i;->c:La5/l;

    .line 347
    .line 348
    iget-boolean v2, v0, La5/l;->c:Z

    .line 349
    .line 350
    if-nez v2, :cond_4

    .line 351
    .line 352
    sget-object v2, Lflix/com/vision/api/realdebrid/RealDebridCommon;->f:Ljava/lang/String;

    .line 353
    .line 354
    sget-object v3, Lflix/com/vision/api/realdebrid/RealDebridCommon;->b:Ljava/lang/String;

    .line 355
    .line 356
    iget-object v4, p0, LA4/n;->f:Ljava/lang/Object;

    .line 357
    .line 358
    check-cast v4, Ljava/lang/String;

    .line 359
    .line 360
    invoke-static {v4, v2, v3}, LD4/a;->getTorrent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    .line 361
    .line 362
    .line 363
    move-result-object v2

    .line 364
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    .line 365
    .line 366
    .line 367
    move-result-object v3

    .line 368
    invoke-virtual {v2, v3}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    .line 369
    .line 370
    .line 371
    move-result-object v2

    .line 372
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->newThread()Lio/reactivex/Scheduler;

    .line 373
    .line 374
    .line 375
    move-result-object v3

    .line 376
    invoke-virtual {v2, v3}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    .line 377
    .line 378
    .line 379
    move-result-object v2

    .line 380
    new-instance v3, LE4/c;

    .line 381
    .line 382
    invoke-direct {v3, v0, v1}, LE4/c;-><init>(Ljava/lang/Object;I)V

    .line 383
    .line 384
    .line 385
    new-instance v0, LA4/c;

    .line 386
    .line 387
    const/16 v1, 0x12

    .line 388
    .line 389
    invoke-direct {v0, v1}, LA4/c;-><init>(I)V

    .line 390
    .line 391
    .line 392
    invoke-virtual {v2, v3, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 393
    .line 394
    .line 395
    :cond_4
    return-void

    .line 396
    :pswitch_c
    iget-object v0, p0, LA4/n;->e:Ljava/lang/Object;

    .line 397
    .line 398
    check-cast v0, La5/e;

    .line 399
    .line 400
    iget-object v0, v0, La5/e;->c:La5/h;

    .line 401
    .line 402
    iget-boolean v1, v0, La5/h;->f:Z

    .line 403
    .line 404
    if-nez v1, :cond_5

    .line 405
    .line 406
    sget-object v1, Lflix/com/vision/api/realdebrid/RealDebridCommon;->f:Ljava/lang/String;

    .line 407
    .line 408
    sget-object v2, Lflix/com/vision/api/realdebrid/RealDebridCommon;->b:Ljava/lang/String;

    .line 409
    .line 410
    iget-object v3, p0, LA4/n;->f:Ljava/lang/Object;

    .line 411
    .line 412
    check-cast v3, Ljava/lang/String;

    .line 413
    .line 414
    invoke-static {v3, v1, v2}, LD4/a;->getTorrent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    .line 415
    .line 416
    .line 417
    move-result-object v1

    .line 418
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    .line 419
    .line 420
    .line 421
    move-result-object v2

    .line 422
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    .line 423
    .line 424
    .line 425
    move-result-object v1

    .line 426
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->newThread()Lio/reactivex/Scheduler;

    .line 427
    .line 428
    .line 429
    move-result-object v2

    .line 430
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    .line 431
    .line 432
    .line 433
    move-result-object v1

    .line 434
    new-instance v2, LE4/c;

    .line 435
    .line 436
    const/4 v3, 0x6

    .line 437
    invoke-direct {v2, v0, v3}, LE4/c;-><init>(Ljava/lang/Object;I)V

    .line 438
    .line 439
    .line 440
    new-instance v0, LA4/c;

    .line 441
    .line 442
    const/16 v3, 0x11

    .line 443
    .line 444
    invoke-direct {v0, v3}, LA4/c;-><init>(I)V

    .line 445
    .line 446
    .line 447
    invoke-virtual {v1, v2, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 448
    .line 449
    .line 450
    :cond_5
    return-void

    .line 451
    :pswitch_d
    iget-object v0, p0, LA4/n;->e:Ljava/lang/Object;

    .line 452
    .line 453
    check-cast v0, LZ4/o;

    .line 454
    .line 455
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 456
    .line 457
    .line 458
    new-instance v1, Landroid/webkit/WebView;

    .line 459
    .line 460
    iget-object v2, v0, LZ4/o;->b:Landroid/content/Context;

    .line 461
    .line 462
    invoke-direct {v1, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 463
    .line 464
    .line 465
    iput-object v1, v0, LZ4/o;->f:Landroid/webkit/WebView;

    .line 466
    .line 467
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 468
    .line 469
    .line 470
    move-result-object v1

    .line 471
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 472
    .line 473
    .line 474
    iget-object v1, v0, LZ4/o;->f:Landroid/webkit/WebView;

    .line 475
    .line 476
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 477
    .line 478
    .line 479
    move-result-object v1

    .line 480
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 481
    .line 482
    .line 483
    iget-object v1, v0, LZ4/o;->f:Landroid/webkit/WebView;

    .line 484
    .line 485
    new-instance v2, LZ4/n;

    .line 486
    .line 487
    invoke-direct {v2, v0}, LZ4/n;-><init>(LZ4/o;)V

    .line 488
    .line 489
    .line 490
    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 491
    .line 492
    .line 493
    iget-object v0, v0, LZ4/o;->f:Landroid/webkit/WebView;

    .line 494
    .line 495
    iget-object v1, p0, LA4/n;->f:Ljava/lang/Object;

    .line 496
    .line 497
    check-cast v1, Ljava/lang/String;

    .line 498
    .line 499
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 500
    .line 501
    .line 502
    return-void

    .line 503
    :pswitch_e
    sget v0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoSchedulerService;->b:I

    .line 504
    .line 505
    iget-object v0, p0, LA4/n;->e:Ljava/lang/Object;

    .line 506
    .line 507
    check-cast v0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoSchedulerService;

    .line 508
    .line 509
    iget-object v1, p0, LA4/n;->f:Ljava/lang/Object;

    .line 510
    .line 511
    check-cast v1, Landroid/app/job/JobParameters;

    .line 512
    .line 513
    invoke-virtual {v0, v1, v3}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 514
    .line 515
    .line 516
    return-void

    .line 517
    :pswitch_f
    iget-object v0, p0, LA4/n;->e:Ljava/lang/Object;

    .line 518
    .line 519
    check-cast v0, Lcom/google/common/util/concurrent/e;

    .line 520
    .line 521
    iget-object v1, p0, LA4/n;->f:Ljava/lang/Object;

    .line 522
    .line 523
    check-cast v1, Lcom/google/common/collect/ImmutableCollection;

    .line 524
    .line 525
    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/c;->i(Lcom/google/common/collect/ImmutableCollection;)V

    .line 526
    .line 527
    .line 528
    return-void

    .line 529
    :pswitch_10
    iget-object v0, p0, LA4/n;->e:Ljava/lang/Object;

    .line 530
    .line 531
    check-cast v0, LT4/a;

    .line 532
    .line 533
    iget-object v1, p0, LA4/n;->f:Ljava/lang/Object;

    .line 534
    .line 535
    check-cast v1, Landroid/content/Context;

    .line 536
    .line 537
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 538
    .line 539
    .line 540
    const-string v2, "Loading ad hosts file..."

    .line 541
    .line 542
    const-string v3, "AdBlocker"

    .line 543
    .line 544
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    .line 546
    .line 547
    :try_start_9
    new-instance v2, Ljava/io/BufferedReader;

    .line 548
    .line 549
    new-instance v5, Ljava/io/InputStreamReader;

    .line 550
    .line 551
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 552
    .line 553
    .line 554
    move-result-object v1

    .line 555
    sget v6, Lflix/com/vision/R$raw;->adblockserverlist:I

    .line 556
    .line 557
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    .line 558
    .line 559
    .line 560
    move-result-object v1

    .line 561
    invoke-direct {v5, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 562
    .line 563
    .line 564
    invoke-direct {v2, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    .line 565
    .line 566
    .line 567
    :cond_6
    :goto_6
    :try_start_a
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 568
    .line 569
    .line 570
    move-result-object v1

    .line 571
    if-eqz v1, :cond_7

    .line 572
    .line 573
    const-string v5, "0.0.0.0"

    .line 574
    .line 575
    const-string v6, ""

    .line 576
    .line 577
    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 578
    .line 579
    .line 580
    move-result-object v1

    .line 581
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 582
    .line 583
    .line 584
    move-result-object v1

    .line 585
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 586
    .line 587
    .line 588
    move-result v5

    .line 589
    if-nez v5, :cond_6

    .line 590
    .line 591
    iget-object v5, v0, LT4/a;->a:Ljava/util/HashSet;

    .line 592
    .line 593
    invoke-virtual {v5, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 594
    .line 595
    .line 596
    goto :goto_6

    .line 597
    :catchall_6
    move-exception v0

    .line 598
    goto :goto_7

    .line 599
    :cond_7
    iput-boolean v4, v0, LT4/a;->b:Z

    .line 600
    .line 601
    new-instance v1, Ljava/lang/StringBuilder;

    .line 602
    .line 603
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 604
    .line 605
    .line 606
    const-string v4, "Ad hosts loaded successfully. "

    .line 607
    .line 608
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    .line 610
    .line 611
    iget-object v0, v0, LT4/a;->a:Ljava/util/HashSet;

    .line 612
    .line 613
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    .line 614
    .line 615
    .line 616
    move-result v0

    .line 617
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 618
    .line 619
    .line 620
    const-string v0, " entries."

    .line 621
    .line 622
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 623
    .line 624
    .line 625
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 626
    .line 627
    .line 628
    move-result-object v0

    .line 629
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 630
    .line 631
    .line 632
    :try_start_b
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    .line 633
    .line 634
    .line 635
    goto :goto_a

    .line 636
    :catch_2
    move-exception v0

    .line 637
    goto :goto_9

    .line 638
    :goto_7
    :try_start_c
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    .line 639
    .line 640
    .line 641
    goto :goto_8

    .line 642
    :catchall_7
    move-exception v1

    .line 643
    :try_start_d
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 644
    .line 645
    .line 646
    :goto_8
    throw v0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2

    .line 647
    :goto_9
    const-string v1, "Error loading ad hosts file"

    .line 648
    .line 649
    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 650
    .line 651
    .line 652
    :goto_a
    return-void

    .line 653
    :pswitch_11
    iget-object v0, p0, LA4/n;->e:Ljava/lang/Object;

    .line 654
    .line 655
    check-cast v0, Landroidx/work/impl/workers/ConstraintTrackingWorker;

    .line 656
    .line 657
    iget-object v1, p0, LA4/n;->f:Ljava/lang/Object;

    .line 658
    .line 659
    check-cast v1, LV3/F;

    .line 660
    .line 661
    const-string v2, "this$0"

    .line 662
    .line 663
    invoke-static {v0, v2}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 664
    .line 665
    .line 666
    const-string v2, "$innerFuture"

    .line 667
    .line 668
    invoke-static {v1, v2}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 669
    .line 670
    .line 671
    iget-object v2, v0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->n:Ljava/lang/Object;

    .line 672
    .line 673
    monitor-enter v2

    .line 674
    :try_start_e
    iget-boolean v3, v0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->p:Z

    .line 675
    .line 676
    if-eqz v3, :cond_8

    .line 677
    .line 678
    iget-object v0, v0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->q:LM1/g;

    .line 679
    .line 680
    const-string v1, "future"

    .line 681
    .line 682
    invoke-static {v0, v1}, Lkotlin/jvm/internal/j;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 683
    .line 684
    .line 685
    invoke-static {v0}, LO1/a;->access$setRetry(LM1/g;)Z

    .line 686
    .line 687
    .line 688
    goto :goto_b

    .line 689
    :catchall_8
    move-exception v0

    .line 690
    goto :goto_c

    .line 691
    :cond_8
    iget-object v0, v0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->q:LM1/g;

    .line 692
    .line 693
    invoke-virtual {v0, v1}, LM1/g;->setFuture(LV3/F;)Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    .line 694
    .line 695
    .line 696
    :goto_b
    monitor-exit v2

    .line 697
    return-void

    .line 698
    :goto_c
    monitor-exit v2

    .line 699
    throw v0

    .line 700
    :pswitch_12
    iget-object v0, p0, LA4/n;->e:Ljava/lang/Object;

    .line 701
    .line 702
    check-cast v0, LL1/A;

    .line 703
    .line 704
    iget-object v1, v0, LL1/A;->b:LM1/g;

    .line 705
    .line 706
    invoke-virtual {v1}, Landroidx/work/impl/utils/futures/b;->isCancelled()Z

    .line 707
    .line 708
    .line 709
    move-result v1

    .line 710
    iget-object v2, p0, LA4/n;->f:Ljava/lang/Object;

    .line 711
    .line 712
    check-cast v2, LM1/g;

    .line 713
    .line 714
    if-nez v1, :cond_9

    .line 715
    .line 716
    iget-object v0, v0, LL1/A;->j:LB1/r;

    .line 717
    .line 718
    invoke-virtual {v0}, LB1/r;->getForegroundInfoAsync()LV3/F;

    .line 719
    .line 720
    .line 721
    move-result-object v0

    .line 722
    invoke-virtual {v2, v0}, LM1/g;->setFuture(LV3/F;)Z

    .line 723
    .line 724
    .line 725
    goto :goto_d

    .line 726
    :cond_9
    invoke-virtual {v2, v4}, Landroidx/work/impl/utils/futures/b;->cancel(Z)Z

    .line 727
    .line 728
    .line 729
    :goto_d
    return-void

    .line 730
    :pswitch_13
    const-string v0, "$listenersList"

    .line 731
    .line 732
    iget-object v1, p0, LA4/n;->e:Ljava/lang/Object;

    .line 733
    .line 734
    check-cast v1, Ljava/util/List;

    .line 735
    .line 736
    invoke-static {v1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 737
    .line 738
    .line 739
    const-string v0, "this$0"

    .line 740
    .line 741
    iget-object v2, p0, LA4/n;->f:Ljava/lang/Object;

    .line 742
    .line 743
    check-cast v2, LI1/h;

    .line 744
    .line 745
    invoke-static {v2, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 746
    .line 747
    .line 748
    check-cast v1, Ljava/lang/Iterable;

    .line 749
    .line 750
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 751
    .line 752
    .line 753
    move-result-object v0

    .line 754
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 755
    .line 756
    .line 757
    move-result v1

    .line 758
    if-eqz v1, :cond_a

    .line 759
    .line 760
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 761
    .line 762
    .line 763
    move-result-object v1

    .line 764
    check-cast v1, LG1/a;

    .line 765
    .line 766
    iget-object v3, v2, LI1/h;->e:Ljava/lang/Object;

    .line 767
    .line 768
    check-cast v1, LH1/d;

    .line 769
    .line 770
    invoke-virtual {v1, v3}, LH1/d;->onConstraintChanged(Ljava/lang/Object;)V

    .line 771
    .line 772
    .line 773
    goto :goto_e

    .line 774
    :cond_a
    return-void

    .line 775
    :pswitch_14
    iget-object v0, p0, LA4/n;->e:Ljava/lang/Object;

    .line 776
    .line 777
    check-cast v0, LC1/N;

    .line 778
    .line 779
    iget-object v0, v0, LC1/N;->z:LM1/g;

    .line 780
    .line 781
    invoke-virtual {v0}, Landroidx/work/impl/utils/futures/b;->isCancelled()Z

    .line 782
    .line 783
    .line 784
    move-result v0

    .line 785
    if-eqz v0, :cond_b

    .line 786
    .line 787
    iget-object v0, p0, LA4/n;->f:Ljava/lang/Object;

    .line 788
    .line 789
    check-cast v0, LV3/F;

    .line 790
    .line 791
    invoke-interface {v0, v4}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 792
    .line 793
    .line 794
    :cond_b
    return-void

    .line 795
    :pswitch_15
    iget-object v0, p0, LA4/n;->f:Ljava/lang/Object;

    .line 796
    .line 797
    check-cast v0, LK1/r;

    .line 798
    .line 799
    iget-object v1, p0, LA4/n;->e:Ljava/lang/Object;

    .line 800
    .line 801
    check-cast v1, LC1/r;

    .line 802
    .line 803
    invoke-virtual {v1, v0, v3}, LC1/r;->onExecuted(LK1/r;Z)V

    .line 804
    .line 805
    .line 806
    return-void

    .line 807
    :pswitch_16
    iget-object v0, p0, LA4/n;->e:Ljava/lang/Object;

    .line 808
    .line 809
    check-cast v0, LC/r;

    .line 810
    .line 811
    iget-object v1, p0, LA4/n;->f:Ljava/lang/Object;

    .line 812
    .line 813
    check-cast v1, Landroid/graphics/Typeface;

    .line 814
    .line 815
    invoke-virtual {v0, v1}, LC/r;->onFontRetrieved(Landroid/graphics/Typeface;)V

    .line 816
    .line 817
    .line 818
    return-void

    .line 819
    :pswitch_17
    sget-boolean v1, Lflix/com/vision/activities/player/SimpleVideoPlayer;->Q0:Z

    .line 820
    .line 821
    iget-object v1, p0, LA4/n;->e:Ljava/lang/Object;

    .line 822
    .line 823
    check-cast v1, Landroid/view/View;

    .line 824
    .line 825
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 826
    .line 827
    .line 828
    move-result-object v1

    .line 829
    const/4 v2, 0x0

    .line 830
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 831
    .line 832
    .line 833
    move-result-object v1

    .line 834
    const-wide/16 v2, 0x258

    .line 835
    .line 836
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 837
    .line 838
    .line 839
    move-result-object v1

    .line 840
    new-instance v2, LA3/d;

    .line 841
    .line 842
    iget-object v3, p0, LA4/n;->f:Ljava/lang/Object;

    .line 843
    .line 844
    check-cast v3, Landroid/widget/LinearLayout;

    .line 845
    .line 846
    invoke-direct {v2, v3, v0}, LA3/d;-><init>(Ljava/lang/Object;I)V

    .line 847
    .line 848
    .line 849
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 850
    .line 851
    .line 852
    move-result-object v0

    .line 853
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 854
    .line 855
    .line 856
    return-void

    .line 857
    :pswitch_18
    sget-boolean v0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->Q0:Z

    .line 858
    .line 859
    iget-object v0, p0, LA4/n;->e:Ljava/lang/Object;

    .line 860
    .line 861
    check-cast v0, Lflix/com/vision/activities/player/SimpleVideoPlayer;

    .line 862
    .line 863
    invoke-virtual {v0}, Lflix/com/vision/activities/player/SimpleVideoPlayer;->p()V

    .line 864
    .line 865
    .line 866
    new-instance v0, Lflix/com/vision/models/CastAction;

    .line 867
    .line 868
    invoke-direct {v0}, Lflix/com/vision/models/CastAction;-><init>()V

    .line 869
    .line 870
    .line 871
    iget-object v1, p0, LA4/n;->f:Ljava/lang/Object;

    .line 872
    .line 873
    check-cast v1, Landroid/net/Uri;

    .line 874
    .line 875
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 876
    .line 877
    .line 878
    move-result-object v1

    .line 879
    iput-object v1, v0, Lflix/com/vision/models/CastAction;->file:Ljava/lang/String;

    .line 880
    .line 881
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 882
    .line 883
    .line 884
    move-result-object v1

    .line 885
    invoke-virtual {v1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 886
    .line 887
    .line 888
    return-void

    .line 889
    :pswitch_19
    iget-object v2, p0, LA4/n;->f:Ljava/lang/Object;

    .line 890
    .line 891
    check-cast v2, Lflix/com/vision/subtitles/OpenSubtitles$Subtitle;

    .line 892
    .line 893
    sget-boolean v3, Lflix/com/vision/activities/player/SimpleVideoPlayer;->Q0:Z

    .line 894
    .line 895
    iget-object v3, p0, LA4/n;->e:Ljava/lang/Object;

    .line 896
    .line 897
    check-cast v3, Lflix/com/vision/activities/player/SimpleVideoPlayer;

    .line 898
    .line 899
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 900
    .line 901
    .line 902
    :try_start_f
    invoke-static {v2}, Lflix/com/vision/subtitles/OpenSubtitles;->download(Lflix/com/vision/subtitles/OpenSubtitles$Subtitle;)Landroid/net/Uri;

    .line 903
    .line 904
    .line 905
    move-result-object v2

    .line 906
    new-instance v4, LA4/n;

    .line 907
    .line 908
    invoke-direct {v4, v0, v3, v2}, LA4/n;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 909
    .line 910
    .line 911
    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_3

    .line 912
    .line 913
    .line 914
    goto :goto_f

    .line 915
    :catch_3
    move-exception v0

    .line 916
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 917
    .line 918
    .line 919
    new-instance v0, LB4/s;

    .line 920
    .line 921
    invoke-direct {v0, v3, v1}, LB4/s;-><init>(Lflix/com/vision/activities/player/SimpleVideoPlayer;I)V

    .line 922
    .line 923
    .line 924
    invoke-virtual {v3, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 925
    .line 926
    .line 927
    :goto_f
    return-void

    .line 928
    :pswitch_1a
    sget-boolean v0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->Q0:Z

    .line 929
    .line 930
    iget-object v0, p0, LA4/n;->e:Ljava/lang/Object;

    .line 931
    .line 932
    check-cast v0, Lflix/com/vision/activities/player/SimpleVideoPlayer;

    .line 933
    .line 934
    iget-object v1, p0, LA4/n;->f:Ljava/lang/Object;

    .line 935
    .line 936
    check-cast v1, Lflix/com/vision/models/VideoSource;

    .line 937
    .line 938
    iget-boolean v5, v1, Lflix/com/vision/models/VideoSource;->isPremiumSupported:Z

    .line 939
    .line 940
    if-eqz v5, :cond_d

    .line 941
    .line 942
    iget-boolean v2, v1, Lflix/com/vision/models/VideoSource;->rd_checked:Z

    .line 943
    .line 944
    if-nez v2, :cond_c

    .line 945
    .line 946
    iget-object v2, v1, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    .line 947
    .line 948
    invoke-static {v2}, Lflix/com/vision/App;->isRdSupported(Ljava/lang/String;)Z

    .line 949
    .line 950
    .line 951
    move-result v2

    .line 952
    if-nez v2, :cond_c

    .line 953
    .line 954
    goto/16 :goto_10

    .line 955
    .line 956
    :cond_c
    iget-object v2, v1, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    .line 957
    .line 958
    sget-object v5, Lflix/com/vision/api/realdebrid/RealDebridCommon;->f:Ljava/lang/String;

    .line 959
    .line 960
    sget-object v6, Lflix/com/vision/api/realdebrid/RealDebridCommon;->b:Ljava/lang/String;

    .line 961
    .line 962
    invoke-static {v2, v5, v6}, LD4/a;->getLinkRealDebrid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    .line 963
    .line 964
    .line 965
    move-result-object v2

    .line 966
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    .line 967
    .line 968
    .line 969
    move-result-object v5

    .line 970
    invoke-virtual {v2, v5}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    .line 971
    .line 972
    .line 973
    move-result-object v2

    .line 974
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->newThread()Lio/reactivex/Scheduler;

    .line 975
    .line 976
    .line 977
    move-result-object v5

    .line 978
    invoke-virtual {v2, v5}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    .line 979
    .line 980
    .line 981
    move-result-object v2

    .line 982
    new-instance v5, LB4/v;

    .line 983
    .line 984
    invoke-direct {v5, v0, v4}, LB4/v;-><init>(Lflix/com/vision/activities/player/SimpleVideoPlayer;I)V

    .line 985
    .line 986
    .line 987
    new-instance v0, LB4/w;

    .line 988
    .line 989
    invoke-direct {v0, v3, v1}, LB4/w;-><init>(ILflix/com/vision/models/VideoSource;)V

    .line 990
    .line 991
    .line 992
    invoke-virtual {v2, v5, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 993
    .line 994
    .line 995
    goto/16 :goto_10

    .line 996
    .line 997
    :cond_d
    iget-object v5, v0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->r:Ljava/util/ArrayList;

    .line 998
    .line 999
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1000
    .line 1001
    .line 1002
    sget-object v5, Lflix/com/vision/App;->B:Ljava/util/ArrayList;

    .line 1003
    .line 1004
    if-nez v5, :cond_e

    .line 1005
    .line 1006
    new-instance v5, Ljava/util/ArrayList;

    .line 1007
    .line 1008
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1009
    .line 1010
    .line 1011
    sput-object v5, Lflix/com/vision/App;->B:Ljava/util/ArrayList;

    .line 1012
    .line 1013
    :cond_e
    sget-object v5, Lflix/com/vision/App;->B:Ljava/util/ArrayList;

    .line 1014
    .line 1015
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1016
    .line 1017
    .line 1018
    iget-boolean v5, v0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->R:Z

    .line 1019
    .line 1020
    const/16 v6, 0x30

    .line 1021
    .line 1022
    const-string v7, " Loaded"

    .line 1023
    .line 1024
    const-string v8, "Episode "

    .line 1025
    .line 1026
    if-eqz v5, :cond_10

    .line 1027
    .line 1028
    iget-boolean v5, v0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->v0:Z

    .line 1029
    .line 1030
    if-nez v5, :cond_10

    .line 1031
    .line 1032
    iget-boolean v5, v1, Lflix/com/vision/models/VideoSource;->isFvDirectStream:Z

    .line 1033
    .line 1034
    if-nez v5, :cond_f

    .line 1035
    .line 1036
    iget v5, v1, Lflix/com/vision/models/VideoSource;->quality:I

    .line 1037
    .line 1038
    const/16 v9, 0x2d0

    .line 1039
    .line 1040
    if-ge v5, v9, :cond_f

    .line 1041
    .line 1042
    iget-boolean v5, v1, Lflix/com/vision/models/VideoSource;->isRealDebrid:Z

    .line 1043
    .line 1044
    if-eqz v5, :cond_10

    .line 1045
    .line 1046
    :cond_f
    iget-object v5, v1, Lflix/com/vision/models/VideoSource;->label:Ljava/lang/String;

    .line 1047
    .line 1048
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 1049
    .line 1050
    .line 1051
    move-result-object v5

    .line 1052
    const-string v9, "moflix"

    .line 1053
    .line 1054
    invoke-virtual {v5, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1055
    .line 1056
    .line 1057
    move-result v5

    .line 1058
    if-nez v5, :cond_10

    .line 1059
    .line 1060
    iput-boolean v4, v0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->v0:Z

    .line 1061
    .line 1062
    invoke-virtual {v0}, Lflix/com/vision/activities/player/SimpleVideoPlayer;->p()V

    .line 1063
    .line 1064
    .line 1065
    invoke-virtual {v0, v1, v4}, Lflix/com/vision/activities/player/SimpleVideoPlayer;->y(Lflix/com/vision/models/VideoSource;Z)V

    .line 1066
    .line 1067
    .line 1068
    :try_start_10
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1069
    .line 1070
    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1071
    .line 1072
    .line 1073
    iget v9, v0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->h0:I

    .line 1074
    .line 1075
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1076
    .line 1077
    .line 1078
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1079
    .line 1080
    .line 1081
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1082
    .line 1083
    .line 1084
    move-result-object v5

    .line 1085
    invoke-static {v0, v5, v2, v6, v3}, LN4/a;->Success(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_4

    .line 1086
    .line 1087
    .line 1088
    :catch_4
    :cond_10
    iget-boolean v5, v0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->v0:Z

    .line 1089
    .line 1090
    if-eqz v5, :cond_11

    .line 1091
    .line 1092
    goto :goto_10

    .line 1093
    :cond_11
    invoke-virtual {v1}, Lflix/com/vision/models/VideoSource;->isDebrid()Z

    .line 1094
    .line 1095
    .line 1096
    move-result v5

    .line 1097
    if-eqz v5, :cond_13

    .line 1098
    .line 1099
    invoke-virtual {v0}, Lflix/com/vision/activities/player/SimpleVideoPlayer;->p()V

    .line 1100
    .line 1101
    .line 1102
    iget-boolean v5, v0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->u0:Z

    .line 1103
    .line 1104
    if-eqz v5, :cond_12

    .line 1105
    .line 1106
    goto :goto_10

    .line 1107
    :cond_12
    iput-boolean v4, v0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->u0:Z

    .line 1108
    .line 1109
    new-instance v4, Lflix/com/vision/models/PlayerEvent;

    .line 1110
    .line 1111
    invoke-direct {v4}, Lflix/com/vision/models/PlayerEvent;-><init>()V

    .line 1112
    .line 1113
    .line 1114
    iput-object v1, v4, Lflix/com/vision/models/PlayerEvent;->vs:Lflix/com/vision/models/VideoSource;

    .line 1115
    .line 1116
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 1117
    .line 1118
    .line 1119
    move-result-object v1

    .line 1120
    invoke-virtual {v1, v4}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 1121
    .line 1122
    .line 1123
    :try_start_11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1124
    .line 1125
    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1126
    .line 1127
    .line 1128
    iget v4, v0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->h0:I

    .line 1129
    .line 1130
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1131
    .line 1132
    .line 1133
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1134
    .line 1135
    .line 1136
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1137
    .line 1138
    .line 1139
    move-result-object v1

    .line 1140
    invoke-static {v0, v1, v2, v6, v3}, LN4/a;->Success(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_5

    .line 1141
    .line 1142
    .line 1143
    goto :goto_10

    .line 1144
    :cond_13
    invoke-virtual {v0}, Lflix/com/vision/activities/player/SimpleVideoPlayer;->p()V

    .line 1145
    .line 1146
    .line 1147
    iput-boolean v4, v0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->v0:Z

    .line 1148
    .line 1149
    :try_start_12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1150
    .line 1151
    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1152
    .line 1153
    .line 1154
    iget v4, v0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->h0:I

    .line 1155
    .line 1156
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1157
    .line 1158
    .line 1159
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1160
    .line 1161
    .line 1162
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1163
    .line 1164
    .line 1165
    move-result-object v1

    .line 1166
    invoke-static {v0, v1, v2, v6, v3}, LN4/a;->Success(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_5

    .line 1167
    .line 1168
    .line 1169
    :catch_5
    :goto_10
    return-void

    .line 1170
    :pswitch_1b
    sget v0, Lflix/com/vision/activities/player/AdultVideoPlayerActivity;->z:I

    .line 1171
    .line 1172
    iget-object v0, p0, LA4/n;->e:Ljava/lang/Object;

    .line 1173
    .line 1174
    check-cast v0, Lflix/com/vision/activities/player/AdultVideoPlayerActivity;

    .line 1175
    .line 1176
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1177
    .line 1178
    .line 1179
    iget-object v1, p0, LA4/n;->f:Ljava/lang/Object;

    .line 1180
    .line 1181
    check-cast v1, Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 1182
    .line 1183
    invoke-virtual {v1}, Lflix/com/vision/bvp/BetterVideoPlayer;->isPlaying()Z

    .line 1184
    .line 1185
    .line 1186
    move-result v1

    .line 1187
    if-nez v1, :cond_14

    .line 1188
    .line 1189
    invoke-virtual {v0}, Lflix/com/vision/activities/base/a;->Show()V

    .line 1190
    .line 1191
    .line 1192
    :cond_14
    return-void

    .line 1193
    :pswitch_1c
    sget v0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->I:I

    .line 1194
    .line 1195
    iget-object v0, p0, LA4/n;->e:Ljava/lang/Object;

    .line 1196
    .line 1197
    check-cast v0, Lflix/com/vision/activities/leanback/MainActivityLeanback;

    .line 1198
    .line 1199
    invoke-virtual {v0, v4, v2}, Lflix/com/vision/activities/leanback/MainActivityLeanback;->askToUpdateIfAny(ZLflix/com/vision/models/Movie;)V

    .line 1200
    .line 1201
    .line 1202
    iget-object v0, p0, LA4/n;->f:Ljava/lang/Object;

    .line 1203
    .line 1204
    check-cast v0, LQ4/d;

    .line 1205
    .line 1206
    if-eqz v0, :cond_15

    .line 1207
    .line 1208
    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 1209
    .line 1210
    .line 1211
    :cond_15
    return-void

    .line 1212
    nop

    .line 1213
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
