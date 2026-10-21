.class public final synthetic Lflix/com/vision/activities/leanback/fragment/a;
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
    iput p1, p0, Lflix/com/vision/activities/leanback/fragment/a;->b:I

    iput-object p2, p0, Lflix/com/vision/activities/leanback/fragment/a;->e:Ljava/lang/Object;

    iput-object p3, p0, Lflix/com/vision/activities/leanback/fragment/a;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v0, " \u00b7 "

    .line 4
    .line 5
    const-string v2, " \u00b7 Film"

    .line 6
    .line 7
    const-string v3, " \u00b7 Series"

    .line 8
    .line 9
    const-string v5, "https://closeload.top/"

    .line 10
    .line 11
    const-string v6, "1080p \u00b7 [FVSTREAM 3] \u00b7 [DIRECT] \u00b7 English"

    .line 12
    .line 13
    const-string v7, "{url}"

    .line 14
    .line 15
    const-string v8, "data-src"

    .line 16
    .line 17
    const-string v9, "iframe"

    .line 18
    .line 19
    const-string v10, "video_id"

    .line 20
    .line 21
    const-string v11, "template"

    .line 22
    .line 23
    const-string v12, "this$0"

    .line 24
    .line 25
    const/4 v15, 0x1

    .line 26
    iget-object v14, v1, Lflix/com/vision/activities/leanback/fragment/a;->f:Ljava/lang/Object;

    .line 27
    .line 28
    iget-object v13, v1, Lflix/com/vision/activities/leanback/fragment/a;->e:Ljava/lang/Object;

    .line 29
    .line 30
    iget v4, v1, Lflix/com/vision/activities/leanback/fragment/a;->b:I

    .line 31
    .line 32
    packed-switch v4, :pswitch_data_0

    .line 33
    .line 34
    .line 35
    sget v0, Lflix/com/vision/activities/MainActivity;->T:I

    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    check-cast v13, Lflix/com/vision/activities/MainActivity;

    .line 39
    .line 40
    invoke-virtual {v13, v15, v0}, Lflix/com/vision/activities/MainActivity;->askToUpdateIfAny(ZLflix/com/vision/models/Movie;)V

    .line 41
    .line 42
    .line 43
    check-cast v14, LQ4/d;

    .line 44
    .line 45
    if-eqz v14, :cond_0

    .line 46
    .line 47
    invoke-virtual {v14}, Landroid/app/DialogFragment;->dismiss()V

    .line 48
    .line 49
    .line 50
    :cond_0
    return-void

    .line 51
    :pswitch_0
    check-cast v13, Lorg/greenrobot/eventbus/util/AsyncExecutor;

    .line 52
    .line 53
    check-cast v14, Lorg/greenrobot/eventbus/util/AsyncExecutor$RunnableEx;

    .line 54
    .line 55
    invoke-static {v13, v14}, Lorg/greenrobot/eventbus/util/AsyncExecutor;->a(Lorg/greenrobot/eventbus/util/AsyncExecutor;Lorg/greenrobot/eventbus/util/AsyncExecutor$RunnableEx;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :pswitch_1
    const-string v0, "$command"

    .line 60
    .line 61
    check-cast v13, Ljava/lang/Runnable;

    .line 62
    .line 63
    invoke-static {v13, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    check-cast v14, Ln1/Q;

    .line 67
    .line 68
    invoke-static {v14, v12}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    :try_start_0
    invoke-interface {v13}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    .line 73
    .line 74
    invoke-virtual {v14}, Ln1/Q;->scheduleNext()V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :catchall_0
    move-exception v0

    .line 79
    invoke-virtual {v14}, Ln1/Q;->scheduleNext()V

    .line 80
    .line 81
    .line 82
    throw v0

    .line 83
    :pswitch_2
    check-cast v13, Ln1/z;

    .line 84
    .line 85
    invoke-static {v13, v12}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    const-string v0, "$tables"

    .line 89
    .line 90
    check-cast v14, [Ljava/lang/String;

    .line 91
    .line 92
    invoke-static {v14, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v13}, Ln1/z;->getInvalidationTracker()Ln1/u;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    array-length v2, v14

    .line 100
    invoke-static {v14, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    check-cast v2, [Ljava/lang/String;

    .line 105
    .line 106
    invoke-virtual {v0, v2}, Ln1/u;->notifyObserversByTableNames([Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    return-void

    .line 110
    :pswitch_3
    const-string v0, "$violation"

    .line 111
    .line 112
    check-cast v14, Landroidx/fragment/app/strictmode/Violation;

    .line 113
    .line 114
    invoke-static {v14, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    const-string v2, "Policy violation with PENALTY_DEATH in "

    .line 120
    .line 121
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    check-cast v13, Ljava/lang/String;

    .line 125
    .line 126
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    const-string v2, "FragmentStrictMode"

    .line 134
    .line 135
    invoke-static {v2, v0, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 136
    .line 137
    .line 138
    throw v14

    .line 139
    :pswitch_4
    check-cast v13, Lflix/com/vision/processors/english/B;

    .line 140
    .line 141
    iget-object v0, v13, Lflix/com/vision/processors/english/m;->callBack:LU4/f;

    .line 142
    .line 143
    if-eqz v0, :cond_1

    .line 144
    .line 145
    check-cast v14, Lflix/com/vision/models/VideoSource;

    .line 146
    .line 147
    invoke-interface {v0, v14}, LU4/f;->OnSuccess(Lflix/com/vision/models/VideoSource;)V

    .line 148
    .line 149
    .line 150
    :cond_1
    return-void

    .line 151
    :pswitch_5
    check-cast v13, Lflix/com/vision/processors/english/y;

    .line 152
    .line 153
    iget-object v0, v13, Lflix/com/vision/processors/english/m;->callBack:LU4/f;

    .line 154
    .line 155
    if-eqz v0, :cond_2

    .line 156
    .line 157
    check-cast v14, Lflix/com/vision/models/VideoSource;

    .line 158
    .line 159
    invoke-interface {v0, v14}, LU4/f;->OnSuccess(Lflix/com/vision/models/VideoSource;)V

    .line 160
    .line 161
    .line 162
    :cond_2
    return-void

    .line 163
    :pswitch_6
    check-cast v13, Lflix/com/vision/processors/english/v;

    .line 164
    .line 165
    iget-object v0, v13, Lflix/com/vision/processors/english/m;->callBack:LU4/f;

    .line 166
    .line 167
    check-cast v14, Lflix/com/vision/models/VideoSource;

    .line 168
    .line 169
    invoke-interface {v0, v14}, LU4/f;->OnSuccess(Lflix/com/vision/models/VideoSource;)V

    .line 170
    .line 171
    .line 172
    return-void

    .line 173
    :pswitch_7
    check-cast v13, Lflix/com/vision/processors/english/v;

    .line 174
    .line 175
    const/4 v0, 0x0

    .line 176
    :goto_0
    move-object v2, v14

    .line 177
    check-cast v2, Lcom/google/gson/JsonArray;

    .line 178
    .line 179
    invoke-virtual {v2}, Lcom/google/gson/JsonArray;->size()I

    .line 180
    .line 181
    .line 182
    move-result v3

    .line 183
    if-ge v0, v3, :cond_6

    .line 184
    .line 185
    :try_start_1
    invoke-virtual {v2, v0}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 190
    .line 191
    .line 192
    move-result-object v2

    .line 193
    invoke-virtual {v2, v11}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 194
    .line 195
    .line 196
    move-result-object v3

    .line 197
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v3

    .line 201
    invoke-virtual {v2, v10}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 202
    .line 203
    .line 204
    move-result-object v2

    .line 205
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v2

    .line 209
    invoke-static {v3}, Lg6/e;->parse(Ljava/lang/String;)Lj6/h;

    .line 210
    .line 211
    .line 212
    move-result-object v3

    .line 213
    invoke-virtual {v3, v9}, Lorg/jsoup/nodes/b;->selectFirst(Ljava/lang/String;)Lorg/jsoup/nodes/b;

    .line 214
    .line 215
    .line 216
    move-result-object v3

    .line 217
    if-nez v3, :cond_3

    .line 218
    .line 219
    goto :goto_2

    .line 220
    :cond_3
    invoke-virtual {v3, v8}, Lj6/p;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v3

    .line 224
    invoke-virtual {v3, v7, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v2

    .line 228
    const-string v3, "ridorapid"

    .line 229
    .line 230
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 231
    .line 232
    .line 233
    move-result v3

    .line 234
    if-eqz v3, :cond_4

    .line 235
    .line 236
    new-instance v3, Lflix/com/vision/extractors/CloseloadExtractorExtended;

    .line 237
    .line 238
    invoke-direct {v3}, Lflix/com/vision/extractors/CloseloadExtractorExtended;-><init>()V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v3, v2}, Lflix/com/vision/extractors/CloseloadExtractorExtended;->extract(Ljava/lang/String;)Lflix/com/vision/models/Video;

    .line 242
    .line 243
    .line 244
    move-result-object v2

    .line 245
    goto :goto_1

    .line 246
    :cond_4
    new-instance v3, Lflix/com/vision/extractors/CloseloadExtractor;

    .line 247
    .line 248
    invoke-direct {v3}, Lflix/com/vision/extractors/CloseloadExtractor;-><init>()V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v3, v2}, Lflix/com/vision/extractors/CloseloadExtractor;->extract(Ljava/lang/String;)Lflix/com/vision/models/Video;

    .line 252
    .line 253
    .line 254
    move-result-object v2

    .line 255
    :goto_1
    new-instance v3, Lflix/com/vision/models/VideoSource;

    .line 256
    .line 257
    invoke-direct {v3}, Lflix/com/vision/models/VideoSource;-><init>()V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v2}, Lflix/com/vision/models/Video;->getSource()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v4

    .line 264
    iput-object v4, v3, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    .line 265
    .line 266
    iput-object v6, v3, Lflix/com/vision/models/VideoSource;->label:Ljava/lang/String;

    .line 267
    .line 268
    iput-boolean v15, v3, Lflix/com/vision/models/VideoSource;->streamable:Z

    .line 269
    .line 270
    iput-object v5, v3, Lflix/com/vision/models/VideoSource;->referer:Ljava/lang/String;

    .line 271
    .line 272
    invoke-virtual {v2}, Lflix/com/vision/models/Video;->getHeaders()Ljava/util/Map;

    .line 273
    .line 274
    .line 275
    move-result-object v4

    .line 276
    if-eqz v4, :cond_5

    .line 277
    .line 278
    invoke-virtual {v2}, Lflix/com/vision/models/Video;->getHeaders()Ljava/util/Map;

    .line 279
    .line 280
    .line 281
    move-result-object v2

    .line 282
    iput-object v2, v3, Lflix/com/vision/models/VideoSource;->headers:Ljava/util/Map;

    .line 283
    .line 284
    :cond_5
    const/16 v2, 0x438

    .line 285
    .line 286
    iput v2, v3, Lflix/com/vision/models/VideoSource;->quality:I

    .line 287
    .line 288
    new-instance v2, Landroid/os/Handler;

    .line 289
    .line 290
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 291
    .line 292
    .line 293
    move-result-object v4

    .line 294
    invoke-direct {v2, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 295
    .line 296
    .line 297
    new-instance v4, Lflix/com/vision/activities/leanback/fragment/a;

    .line 298
    .line 299
    const/16 v12, 0x9

    .line 300
    .line 301
    invoke-direct {v4, v12, v13, v3}, Lflix/com/vision/activities/leanback/fragment/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 305
    .line 306
    .line 307
    :catch_0
    :goto_2
    add-int/2addr v0, v15

    .line 308
    goto/16 :goto_0

    .line 309
    .line 310
    :cond_6
    new-instance v0, Landroid/os/Handler;

    .line 311
    .line 312
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 313
    .line 314
    .line 315
    move-result-object v2

    .line 316
    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 317
    .line 318
    .line 319
    new-instance v2, Lflix/com/vision/processors/english/d;

    .line 320
    .line 321
    const/4 v3, 0x4

    .line 322
    invoke-direct {v2, v13, v3}, Lflix/com/vision/processors/english/d;-><init>(Ljava/lang/Object;I)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 326
    .line 327
    .line 328
    return-void

    .line 329
    :pswitch_8
    check-cast v13, Lflix/com/vision/processors/english/v;

    .line 330
    .line 331
    :try_start_2
    new-instance v0, Landroid/webkit/WebView;

    .line 332
    .line 333
    iget-object v2, v13, Lflix/com/vision/processors/english/v;->b:Landroid/content/Context;

    .line 334
    .line 335
    invoke-direct {v0, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 336
    .line 337
    .line 338
    iput-object v0, v13, Lflix/com/vision/processors/english/v;->a:Landroid/webkit/WebView;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 339
    .line 340
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 341
    .line 342
    .line 343
    move-result-object v0

    .line 344
    invoke-virtual {v0, v15}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 345
    .line 346
    .line 347
    iget-object v0, v13, Lflix/com/vision/processors/english/v;->a:Landroid/webkit/WebView;

    .line 348
    .line 349
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 350
    .line 351
    .line 352
    move-result-object v0

    .line 353
    invoke-virtual {v0, v15}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 354
    .line 355
    .line 356
    iget-object v0, v13, Lflix/com/vision/processors/english/v;->a:Landroid/webkit/WebView;

    .line 357
    .line 358
    new-instance v2, Lflix/com/vision/processors/english/u;

    .line 359
    .line 360
    invoke-direct {v2, v13}, Lflix/com/vision/processors/english/u;-><init>(Lflix/com/vision/processors/english/v;)V

    .line 361
    .line 362
    .line 363
    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 364
    .line 365
    .line 366
    iget-object v0, v13, Lflix/com/vision/processors/english/v;->a:Landroid/webkit/WebView;

    .line 367
    .line 368
    check-cast v14, Ljava/lang/String;

    .line 369
    .line 370
    invoke-virtual {v0, v14}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 371
    .line 372
    .line 373
    :catch_1
    return-void

    .line 374
    :pswitch_9
    check-cast v13, Lflix/com/vision/processors/english/s;

    .line 375
    .line 376
    iget-object v0, v13, Lflix/com/vision/processors/english/m;->callBack:LU4/f;

    .line 377
    .line 378
    check-cast v14, Lflix/com/vision/models/VideoSource;

    .line 379
    .line 380
    invoke-interface {v0, v14}, LU4/f;->OnSuccess(Lflix/com/vision/models/VideoSource;)V

    .line 381
    .line 382
    .line 383
    return-void

    .line 384
    :pswitch_a
    check-cast v13, Lflix/com/vision/processors/english/s;

    .line 385
    .line 386
    const/4 v0, 0x0

    .line 387
    :goto_3
    move-object v2, v14

    .line 388
    check-cast v2, Lcom/google/gson/JsonArray;

    .line 389
    .line 390
    invoke-virtual {v2}, Lcom/google/gson/JsonArray;->size()I

    .line 391
    .line 392
    .line 393
    move-result v3

    .line 394
    if-ge v0, v3, :cond_9

    .line 395
    .line 396
    :try_start_3
    invoke-virtual {v2, v0}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    .line 397
    .line 398
    .line 399
    move-result-object v2

    .line 400
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 401
    .line 402
    .line 403
    move-result-object v2

    .line 404
    invoke-virtual {v2, v11}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 405
    .line 406
    .line 407
    move-result-object v3

    .line 408
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object v3

    .line 412
    invoke-virtual {v2, v10}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 413
    .line 414
    .line 415
    move-result-object v2

    .line 416
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object v2

    .line 420
    invoke-static {v3}, Lg6/e;->parse(Ljava/lang/String;)Lj6/h;

    .line 421
    .line 422
    .line 423
    move-result-object v3

    .line 424
    invoke-virtual {v3, v9}, Lorg/jsoup/nodes/b;->selectFirst(Ljava/lang/String;)Lorg/jsoup/nodes/b;

    .line 425
    .line 426
    .line 427
    move-result-object v3

    .line 428
    if-nez v3, :cond_7

    .line 429
    .line 430
    goto :goto_4

    .line 431
    :cond_7
    invoke-virtual {v3, v8}, Lj6/p;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 432
    .line 433
    .line 434
    move-result-object v3

    .line 435
    invoke-virtual {v3, v7, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 436
    .line 437
    .line 438
    move-result-object v2

    .line 439
    new-instance v3, Lflix/com/vision/extractors/CloseloadExtractor;

    .line 440
    .line 441
    invoke-direct {v3}, Lflix/com/vision/extractors/CloseloadExtractor;-><init>()V

    .line 442
    .line 443
    .line 444
    invoke-virtual {v3, v2}, Lflix/com/vision/extractors/CloseloadExtractor;->extract(Ljava/lang/String;)Lflix/com/vision/models/Video;

    .line 445
    .line 446
    .line 447
    move-result-object v2

    .line 448
    new-instance v3, Lflix/com/vision/models/VideoSource;

    .line 449
    .line 450
    invoke-direct {v3}, Lflix/com/vision/models/VideoSource;-><init>()V

    .line 451
    .line 452
    .line 453
    invoke-virtual {v2}, Lflix/com/vision/models/Video;->getSource()Ljava/lang/String;

    .line 454
    .line 455
    .line 456
    move-result-object v4

    .line 457
    iput-object v4, v3, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    .line 458
    .line 459
    iput-object v6, v3, Lflix/com/vision/models/VideoSource;->label:Ljava/lang/String;

    .line 460
    .line 461
    iput-boolean v15, v3, Lflix/com/vision/models/VideoSource;->streamable:Z

    .line 462
    .line 463
    const/16 v4, 0x438

    .line 464
    .line 465
    iput v4, v3, Lflix/com/vision/models/VideoSource;->quality:I

    .line 466
    .line 467
    iput-object v5, v3, Lflix/com/vision/models/VideoSource;->referer:Ljava/lang/String;

    .line 468
    .line 469
    invoke-virtual {v2}, Lflix/com/vision/models/Video;->getHeaders()Ljava/util/Map;

    .line 470
    .line 471
    .line 472
    move-result-object v12

    .line 473
    if-eqz v12, :cond_8

    .line 474
    .line 475
    invoke-virtual {v2}, Lflix/com/vision/models/Video;->getHeaders()Ljava/util/Map;

    .line 476
    .line 477
    .line 478
    move-result-object v2

    .line 479
    iput-object v2, v3, Lflix/com/vision/models/VideoSource;->headers:Ljava/util/Map;

    .line 480
    .line 481
    :cond_8
    new-instance v2, Landroid/os/Handler;

    .line 482
    .line 483
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 484
    .line 485
    .line 486
    move-result-object v12

    .line 487
    invoke-direct {v2, v12}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 488
    .line 489
    .line 490
    new-instance v12, Lflix/com/vision/activities/leanback/fragment/a;

    .line 491
    .line 492
    const/4 v4, 0x6

    .line 493
    invoke-direct {v12, v4, v13, v3}, Lflix/com/vision/activities/leanback/fragment/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 494
    .line 495
    .line 496
    invoke-virtual {v2, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 497
    .line 498
    .line 499
    :catch_2
    :goto_4
    add-int/2addr v0, v15

    .line 500
    goto :goto_3

    .line 501
    :cond_9
    :try_start_4
    new-instance v0, Landroid/os/Handler;

    .line 502
    .line 503
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 504
    .line 505
    .line 506
    move-result-object v2

    .line 507
    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 508
    .line 509
    .line 510
    new-instance v2, Lflix/com/vision/processors/english/d;

    .line 511
    .line 512
    const/4 v3, 0x2

    .line 513
    invoke-direct {v2, v13, v3}, Lflix/com/vision/processors/english/d;-><init>(Ljava/lang/Object;I)V

    .line 514
    .line 515
    .line 516
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 517
    .line 518
    .line 519
    :catch_3
    return-void

    .line 520
    :pswitch_b
    check-cast v13, Lflix/com/vision/processors/english/s;

    .line 521
    .line 522
    new-instance v0, Landroid/webkit/WebView;

    .line 523
    .line 524
    iget-object v2, v13, Lflix/com/vision/processors/english/s;->c:Landroid/content/Context;

    .line 525
    .line 526
    invoke-direct {v0, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 527
    .line 528
    .line 529
    iput-object v0, v13, Lflix/com/vision/processors/english/s;->a:Landroid/webkit/WebView;

    .line 530
    .line 531
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 532
    .line 533
    .line 534
    move-result-object v0

    .line 535
    invoke-virtual {v0, v15}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 536
    .line 537
    .line 538
    iget-object v0, v13, Lflix/com/vision/processors/english/s;->a:Landroid/webkit/WebView;

    .line 539
    .line 540
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 541
    .line 542
    .line 543
    move-result-object v0

    .line 544
    invoke-virtual {v0, v15}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 545
    .line 546
    .line 547
    iget-object v0, v13, Lflix/com/vision/processors/english/s;->a:Landroid/webkit/WebView;

    .line 548
    .line 549
    new-instance v2, Lflix/com/vision/processors/english/r;

    .line 550
    .line 551
    invoke-direct {v2, v13}, Lflix/com/vision/processors/english/r;-><init>(Lflix/com/vision/processors/english/s;)V

    .line 552
    .line 553
    .line 554
    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 555
    .line 556
    .line 557
    iget-object v0, v13, Lflix/com/vision/processors/english/s;->a:Landroid/webkit/WebView;

    .line 558
    .line 559
    check-cast v14, Ljava/lang/String;

    .line 560
    .line 561
    invoke-virtual {v0, v14}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 562
    .line 563
    .line 564
    return-void

    .line 565
    :pswitch_c
    check-cast v13, Lflix/com/vision/extractors/VixSrcExtractor;

    .line 566
    .line 567
    check-cast v14, Ljava/lang/String;

    .line 568
    .line 569
    invoke-static {v13, v14}, Lflix/com/vision/extractors/VixSrcExtractor;->a(Lflix/com/vision/extractors/VixSrcExtractor;Ljava/lang/String;)V

    .line 570
    .line 571
    .line 572
    return-void

    .line 573
    :pswitch_d
    check-cast v13, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;

    .line 574
    .line 575
    iget-object v0, v13, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->X0:Landroidx/leanback/widget/a;

    .line 576
    .line 577
    invoke-virtual {v0}, Landroidx/leanback/widget/a;->size()I

    .line 578
    .line 579
    .line 580
    move-result v0

    .line 581
    check-cast v14, Landroidx/leanback/widget/f0;

    .line 582
    .line 583
    if-lez v0, :cond_a

    .line 584
    .line 585
    iget-object v0, v13, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->X0:Landroidx/leanback/widget/a;

    .line 586
    .line 587
    invoke-virtual {v0, v15, v14}, Landroidx/leanback/widget/a;->add(ILjava/lang/Object;)V

    .line 588
    .line 589
    .line 590
    goto :goto_5

    .line 591
    :cond_a
    iget-object v0, v13, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->X0:Landroidx/leanback/widget/a;

    .line 592
    .line 593
    const/4 v2, 0x0

    .line 594
    invoke-virtual {v0, v2, v14}, Landroidx/leanback/widget/a;->add(ILjava/lang/Object;)V

    .line 595
    .line 596
    .line 597
    :goto_5
    return-void

    .line 598
    :pswitch_e
    check-cast v13, Lflix/com/vision/activities/leanback/fragment/d;

    .line 599
    .line 600
    iget-object v4, v13, Lflix/com/vision/activities/leanback/fragment/d;->o0:Lme/grantland/widget/AutofitTextView;

    .line 601
    .line 602
    check-cast v14, Lflix/com/vision/models/tmdb/Network;

    .line 603
    .line 604
    iget-object v5, v14, Lflix/com/vision/models/tmdb/Network;->movie:Lflix/com/vision/models/Movie;

    .line 605
    .line 606
    invoke-virtual {v5}, Lflix/com/vision/models/Movie;->getTitle()Ljava/lang/String;

    .line 607
    .line 608
    .line 609
    move-result-object v5

    .line 610
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 611
    .line 612
    .line 613
    iget-object v4, v13, Lflix/com/vision/activities/leanback/fragment/d;->m0:Landroid/widget/TextView;

    .line 614
    .line 615
    iget-object v5, v14, Lflix/com/vision/models/tmdb/Network;->movie:Lflix/com/vision/models/Movie;

    .line 616
    .line 617
    invoke-virtual {v5}, Lflix/com/vision/models/Movie;->getOverview()Ljava/lang/String;

    .line 618
    .line 619
    .line 620
    move-result-object v5

    .line 621
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 622
    .line 623
    .line 624
    iget-object v4, v14, Lflix/com/vision/models/tmdb/Network;->movie:Lflix/com/vision/models/Movie;

    .line 625
    .line 626
    invoke-virtual {v4}, Lflix/com/vision/models/Movie;->isSeries()Z

    .line 627
    .line 628
    .line 629
    move-result v4

    .line 630
    if-eqz v4, :cond_b

    .line 631
    .line 632
    iget-object v2, v13, Lflix/com/vision/activities/leanback/fragment/d;->n0:Landroid/widget/TextView;

    .line 633
    .line 634
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 635
    .line 636
    .line 637
    goto :goto_6

    .line 638
    :cond_b
    iget-object v3, v13, Lflix/com/vision/activities/leanback/fragment/d;->n0:Landroid/widget/TextView;

    .line 639
    .line 640
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 641
    .line 642
    .line 643
    :goto_6
    iget v2, v14, Lflix/com/vision/models/tmdb/Network;->id:I

    .line 644
    .line 645
    const v3, 0x1869f

    .line 646
    .line 647
    .line 648
    if-ne v2, v3, :cond_c

    .line 649
    .line 650
    iget-object v2, v13, Lflix/com/vision/activities/leanback/fragment/d;->n0:Landroid/widget/TextView;

    .line 651
    .line 652
    const-string v3, " \u00b7 Film & Series"

    .line 653
    .line 654
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 655
    .line 656
    .line 657
    :cond_c
    iget-object v2, v14, Lflix/com/vision/models/tmdb/Network;->movie:Lflix/com/vision/models/Movie;

    .line 658
    .line 659
    invoke-virtual {v2}, Lflix/com/vision/models/Movie;->getYear()Ljava/lang/String;

    .line 660
    .line 661
    .line 662
    move-result-object v2

    .line 663
    iget-object v3, v14, Lflix/com/vision/models/tmdb/Network;->movie:Lflix/com/vision/models/Movie;

    .line 664
    .line 665
    invoke-virtual {v3}, Lflix/com/vision/models/Movie;->getGenres()Ljava/lang/String;

    .line 666
    .line 667
    .line 668
    move-result-object v3

    .line 669
    if-eqz v3, :cond_d

    .line 670
    .line 671
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 672
    .line 673
    .line 674
    move-result v4

    .line 675
    const/4 v5, 0x2

    .line 676
    if-le v4, v5, :cond_d

    .line 677
    .line 678
    invoke-static {v2, v0, v3}, LA/i;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 679
    .line 680
    .line 681
    move-result-object v2

    .line 682
    :cond_d
    iget-object v0, v13, Lflix/com/vision/activities/leanback/fragment/d;->l0:Landroid/widget/TextView;

    .line 683
    .line 684
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 685
    .line 686
    .line 687
    :try_start_5
    invoke-static {}, Lm4/D;->get()Lm4/D;

    .line 688
    .line 689
    .line 690
    move-result-object v0

    .line 691
    iget-object v2, v14, Lflix/com/vision/models/tmdb/Network;->movie:Lflix/com/vision/models/Movie;

    .line 692
    .line 693
    iget v2, v2, Lflix/com/vision/models/Movie;->backdrop_image_res_id:I

    .line 694
    .line 695
    invoke-virtual {v0, v2}, Lm4/D;->load(I)Lm4/J;

    .line 696
    .line 697
    .line 698
    move-result-object v0

    .line 699
    invoke-virtual {v0}, Lm4/J;->fit()Lm4/J;

    .line 700
    .line 701
    .line 702
    move-result-object v0

    .line 703
    invoke-virtual {v0}, Lm4/J;->centerCrop()Lm4/J;

    .line 704
    .line 705
    .line 706
    move-result-object v0

    .line 707
    iget-object v2, v13, Lflix/com/vision/activities/leanback/fragment/d;->p0:Landroid/widget/ImageView;

    .line 708
    .line 709
    invoke-virtual {v0, v2}, Lm4/J;->into(Landroid/widget/ImageView;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 710
    .line 711
    .line 712
    goto :goto_7

    .line 713
    :catch_4
    move-exception v0

    .line 714
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 715
    .line 716
    .line 717
    :goto_7
    invoke-virtual {v13}, Lflix/com/vision/activities/leanback/fragment/d;->i()V

    .line 718
    .line 719
    .line 720
    return-void

    .line 721
    :pswitch_f
    const-string v4, "https://www.themoviedb.org/t/p/"

    .line 722
    .line 723
    check-cast v13, Lflix/com/vision/activities/leanback/fragment/d;

    .line 724
    .line 725
    iget-object v5, v13, Lflix/com/vision/activities/leanback/fragment/d;->o0:Lme/grantland/widget/AutofitTextView;

    .line 726
    .line 727
    check-cast v14, Lflix/com/vision/models/Movie;

    .line 728
    .line 729
    invoke-virtual {v14}, Lflix/com/vision/models/Movie;->getTitle()Ljava/lang/String;

    .line 730
    .line 731
    .line 732
    move-result-object v6

    .line 733
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 734
    .line 735
    .line 736
    iget-object v5, v13, Lflix/com/vision/activities/leanback/fragment/d;->m0:Landroid/widget/TextView;

    .line 737
    .line 738
    invoke-virtual {v14}, Lflix/com/vision/models/Movie;->getOverview()Ljava/lang/String;

    .line 739
    .line 740
    .line 741
    move-result-object v6

    .line 742
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 743
    .line 744
    .line 745
    invoke-virtual {v14}, Lflix/com/vision/models/Movie;->isSeries()Z

    .line 746
    .line 747
    .line 748
    move-result v5

    .line 749
    if-eqz v5, :cond_e

    .line 750
    .line 751
    iget-object v2, v13, Lflix/com/vision/activities/leanback/fragment/d;->n0:Landroid/widget/TextView;

    .line 752
    .line 753
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 754
    .line 755
    .line 756
    goto :goto_8

    .line 757
    :cond_e
    iget-object v3, v13, Lflix/com/vision/activities/leanback/fragment/d;->n0:Landroid/widget/TextView;

    .line 758
    .line 759
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 760
    .line 761
    .line 762
    :goto_8
    invoke-virtual {v14}, Lflix/com/vision/models/Movie;->getYear()Ljava/lang/String;

    .line 763
    .line 764
    .line 765
    move-result-object v2

    .line 766
    invoke-virtual {v14}, Lflix/com/vision/models/Movie;->getGenres()Ljava/lang/String;

    .line 767
    .line 768
    .line 769
    move-result-object v3

    .line 770
    if-eqz v3, :cond_f

    .line 771
    .line 772
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 773
    .line 774
    .line 775
    move-result v5

    .line 776
    const/4 v6, 0x2

    .line 777
    if-le v5, v6, :cond_f

    .line 778
    .line 779
    invoke-static {v2, v0, v3}, LA/i;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 780
    .line 781
    .line 782
    move-result-object v2

    .line 783
    :cond_f
    iget-object v0, v13, Lflix/com/vision/activities/leanback/fragment/d;->l0:Landroid/widget/TextView;

    .line 784
    .line 785
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 786
    .line 787
    .line 788
    :try_start_6
    sget-boolean v0, Lflix/com/vision/App;->G:Z

    .line 789
    .line 790
    if-eqz v0, :cond_10

    .line 791
    .line 792
    const-string v0, "w1280/"

    .line 793
    .line 794
    goto :goto_9

    .line 795
    :catch_5
    move-exception v0

    .line 796
    goto :goto_a

    .line 797
    :cond_10
    const-string v0, "w780/"

    .line 798
    .line 799
    :goto_9
    invoke-static {}, Lm4/D;->get()Lm4/D;

    .line 800
    .line 801
    .line 802
    move-result-object v2

    .line 803
    new-instance v3, Ljava/lang/StringBuilder;

    .line 804
    .line 805
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 806
    .line 807
    .line 808
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 809
    .line 810
    .line 811
    iget-object v0, v14, Lflix/com/vision/models/Movie;->backdrop:Ljava/lang/String;

    .line 812
    .line 813
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 814
    .line 815
    .line 816
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 817
    .line 818
    .line 819
    move-result-object v0

    .line 820
    invoke-virtual {v2, v0}, Lm4/D;->load(Ljava/lang/String;)Lm4/J;

    .line 821
    .line 822
    .line 823
    move-result-object v0

    .line 824
    invoke-virtual {v0}, Lm4/J;->fit()Lm4/J;

    .line 825
    .line 826
    .line 827
    move-result-object v0

    .line 828
    invoke-virtual {v0}, Lm4/J;->centerCrop()Lm4/J;

    .line 829
    .line 830
    .line 831
    move-result-object v0

    .line 832
    iget-object v2, v13, Lflix/com/vision/activities/leanback/fragment/d;->p0:Landroid/widget/ImageView;

    .line 833
    .line 834
    invoke-virtual {v0, v2}, Lm4/J;->into(Landroid/widget/ImageView;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 835
    .line 836
    .line 837
    goto :goto_b

    .line 838
    :goto_a
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 839
    .line 840
    .line 841
    :goto_b
    invoke-virtual {v13}, Lflix/com/vision/activities/leanback/fragment/d;->i()V

    .line 842
    .line 843
    .line 844
    return-void

    .line 845
    :pswitch_data_0
    .packed-switch 0x0
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
