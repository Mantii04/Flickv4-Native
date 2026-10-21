.class public final synthetic LB4/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic j:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p4, p0, LB4/y;->b:I

    iput-object p1, p0, LB4/y;->e:Ljava/lang/Object;

    iput-object p2, p0, LB4/y;->f:Ljava/lang/Object;

    iput-object p3, p0, LB4/y;->j:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, LB4/y;->e:Ljava/lang/Object;

    .line 3
    .line 4
    iget-object v2, p0, LB4/y;->j:Ljava/lang/Object;

    .line 5
    .line 6
    iget-object v3, p0, LB4/y;->f:Ljava/lang/Object;

    .line 7
    .line 8
    iget v4, p0, LB4/y;->b:I

    .line 9
    .line 10
    packed-switch v4, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    check-cast v3, Ljava/io/File;

    .line 14
    .line 15
    check-cast v2, Landroid/app/ProgressDialog;

    .line 16
    .line 17
    sget v4, Lflix/com/vision/activities/SettingsActivity;->c2:I

    .line 18
    .line 19
    check-cast v1, Lflix/com/vision/activities/SettingsActivity;

    .line 20
    .line 21
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    new-instance v5, Ljava/util/Scanner;

    .line 27
    .line 28
    invoke-direct {v5, v3}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    invoke-virtual {v5}, Ljava/util/Scanner;->hasNextLine()Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_0

    .line 36
    .line 37
    invoke-virtual {v5}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catch_0
    move-exception v3

    .line 46
    goto :goto_1

    .line 47
    :cond_0
    invoke-virtual {v5}, Ljava/util/Scanner;->close()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-static {v1, v3}, LP4/b;->restoreFromJson(Landroid/content/Context;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    new-instance v3, Ly4/b1;

    .line 58
    .line 59
    const/4 v4, 0x0

    .line 60
    invoke-direct {v3, v1, v2, v4}, Ly4/b1;-><init>(Lflix/com/vision/activities/SettingsActivity;Landroid/app/ProgressDialog;I)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .line 65
    .line 66
    goto :goto_2

    .line 67
    :goto_1
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 68
    .line 69
    .line 70
    new-instance v3, Ly4/b1;

    .line 71
    .line 72
    invoke-direct {v3, v1, v2, v0}, Ly4/b1;-><init>(Lflix/com/vision/activities/SettingsActivity;Landroid/app/ProgressDialog;I)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 76
    .line 77
    .line 78
    :goto_2
    return-void

    .line 79
    :pswitch_0
    sget v4, Lflix/com/vision/activities/SettingsActivity;->c2:I

    .line 80
    .line 81
    check-cast v1, Lflix/com/vision/activities/SettingsActivity;

    .line 82
    .line 83
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    check-cast v3, Landroid/app/ProgressDialog;

    .line 87
    .line 88
    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 89
    .line 90
    .line 91
    new-instance v3, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    const-string v4, "Export Failed: "

    .line 94
    .line 95
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    check-cast v2, Ljava/lang/Exception;

    .line 99
    .line 100
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 116
    .line 117
    .line 118
    return-void

    .line 119
    :pswitch_1
    sget v4, Lflix/com/vision/activities/SettingsActivity;->c2:I

    .line 120
    .line 121
    check-cast v1, Lflix/com/vision/activities/SettingsActivity;

    .line 122
    .line 123
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 124
    .line 125
    .line 126
    check-cast v3, Landroid/app/ProgressDialog;

    .line 127
    .line 128
    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 129
    .line 130
    .line 131
    iget-object v3, v1, Lflix/com/vision/activities/SettingsActivity;->G:Landroid/widget/TextView;

    .line 132
    .line 133
    new-instance v4, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    const-string v5, "Saved to Downloads: "

    .line 136
    .line 137
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    check-cast v2, Ljava/lang/String;

    .line 141
    .line 142
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    invoke-static {v1, v0}, LQ4/d;->newInstance(Landroid/app/Activity;Z)LQ4/d;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    const-string v1, "Backup Complete"

    .line 161
    .line 162
    invoke-virtual {v0, v1}, LQ4/d;->setTitle(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    .line 166
    .line 167
    const-string v4, "File saved to your Downloads folder as:\n\n"

    .line 168
    .line 169
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    invoke-virtual {v0, v1}, LQ4/d;->setMessage(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    new-instance v1, LA4/o;

    .line 183
    .line 184
    const/16 v2, 0xd

    .line 185
    .line 186
    invoke-direct {v1, v0, v2}, LA4/o;-><init>(LQ4/d;I)V

    .line 187
    .line 188
    .line 189
    const-string v2, "OK"

    .line 190
    .line 191
    invoke-virtual {v0, v2, v1}, LQ4/d;->setButton1(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 192
    .line 193
    .line 194
    :try_start_1
    const-string v1, ""

    .line 195
    .line 196
    invoke-virtual {v0, v3, v1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 197
    .line 198
    .line 199
    :catch_1
    return-void

    .line 200
    :pswitch_2
    check-cast v2, Lcom/google/firebase/remoteconfig/internal/ConfigContainer;

    .line 201
    .line 202
    check-cast v1, Lcom/google/android/gms/common/util/BiConsumer;

    .line 203
    .line 204
    check-cast v3, Ljava/lang/String;

    .line 205
    .line 206
    invoke-static {v1, v3, v2}, Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;->a(Lcom/google/android/gms/common/util/BiConsumer;Ljava/lang/String;Lcom/google/firebase/remoteconfig/internal/ConfigContainer;)V

    .line 207
    .line 208
    .line 209
    return-void

    .line 210
    :pswitch_3
    check-cast v2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 211
    .line 212
    check-cast v1, Ljava/util/concurrent/Callable;

    .line 213
    .line 214
    check-cast v3, Ljava/util/concurrent/Executor;

    .line 215
    .line 216
    invoke-static {v1, v3, v2}, Lcom/google/firebase/crashlytics/internal/common/Utils;->e(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 217
    .line 218
    .line 219
    return-void

    .line 220
    :pswitch_4
    check-cast v3, Lb4/d;

    .line 221
    .line 222
    check-cast v2, Ljava/util/concurrent/CountDownLatch;

    .line 223
    .line 224
    check-cast v1, Lb4/j;

    .line 225
    .line 226
    const-string v0, "Failed to stop "

    .line 227
    .line 228
    :try_start_2
    invoke-virtual {v1, v3}, Lb4/j;->e(Lb4/d;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 229
    .line 230
    .line 231
    :goto_3
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 232
    .line 233
    .line 234
    goto :goto_4

    .line 235
    :catchall_0
    move-exception v1

    .line 236
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    .line 237
    .line 238
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    iget-object v0, v3, Lb4/d;->a:Ljava/lang/String;

    .line 242
    .line 243
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    invoke-static {v0, v1}, Lb4/n;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 251
    .line 252
    .line 253
    goto :goto_3

    .line 254
    :goto_4
    return-void

    .line 255
    :catchall_1
    move-exception v0

    .line 256
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 257
    .line 258
    .line 259
    throw v0

    .line 260
    :pswitch_5
    check-cast v1, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    .line 261
    .line 262
    check-cast v3, Landroidx/media3/exoplayer/drm/DrmSessionEventListener;

    .line 263
    .line 264
    check-cast v2, Landroidx/media3/exoplayer/drm/KeyRequestInfo;

    .line 265
    .line 266
    invoke-static {v1, v3, v2}, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->f(Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;Landroidx/media3/exoplayer/drm/DrmSessionEventListener;Landroidx/media3/exoplayer/drm/KeyRequestInfo;)V

    .line 267
    .line 268
    .line 269
    return-void

    .line 270
    :pswitch_6
    check-cast v1, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    .line 271
    .line 272
    check-cast v3, Landroidx/media3/exoplayer/drm/DrmSessionEventListener;

    .line 273
    .line 274
    check-cast v2, Ljava/lang/Exception;

    .line 275
    .line 276
    invoke-static {v1, v3, v2}, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->d(Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;Landroidx/media3/exoplayer/drm/DrmSessionEventListener;Ljava/lang/Exception;)V

    .line 277
    .line 278
    .line 279
    return-void

    .line 280
    :pswitch_7
    check-cast v2, Landroidx/media3/common/util/ListenerSet;

    .line 281
    .line 282
    check-cast v1, Landroid/media/AudioTrack;

    .line 283
    .line 284
    check-cast v3, Landroid/os/Handler;

    .line 285
    .line 286
    invoke-static {v1, v3, v2}, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->a(Landroid/media/AudioTrack;Landroid/os/Handler;Landroidx/media3/common/util/ListenerSet;)V

    .line 287
    .line 288
    .line 289
    return-void

    .line 290
    :pswitch_8
    check-cast v1, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;

    .line 291
    .line 292
    check-cast v3, Landroidx/media3/common/Format;

    .line 293
    .line 294
    check-cast v2, Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    .line 295
    .line 296
    invoke-static {v1, v3, v2}, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;->i(Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;Landroidx/media3/common/Format;Landroidx/media3/exoplayer/DecoderReuseEvaluation;)V

    .line 297
    .line 298
    .line 299
    return-void

    .line 300
    :pswitch_9
    check-cast v3, LV3/M;

    .line 301
    .line 302
    check-cast v2, LV3/q;

    .line 303
    .line 304
    check-cast v1, LV3/F;

    .line 305
    .line 306
    invoke-static {v1, v3, v2}, Landroidx/media3/common/util/Util;->c(LV3/F;LV3/M;LV3/q;)V

    .line 307
    .line 308
    .line 309
    return-void

    .line 310
    :pswitch_a
    check-cast v1, LV3/M;

    .line 311
    .line 312
    check-cast v3, Ljava/lang/Runnable;

    .line 313
    .line 314
    invoke-static {v1, v3, v2}, Landroidx/media3/common/util/Util;->a(LV3/M;Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 315
    .line 316
    .line 317
    return-void

    .line 318
    :pswitch_b
    check-cast v3, Landroidx/emoji2/text/o;

    .line 319
    .line 320
    check-cast v2, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 321
    .line 322
    check-cast v1, Landroidx/emoji2/text/s;

    .line 323
    .line 324
    :try_start_4
    iget-object v0, v1, Landroidx/emoji2/text/s;->a:Landroid/content/Context;

    .line 325
    .line 326
    invoke-static {v0}, Landroidx/emoji2/text/g;->create(Landroid/content/Context;)Landroidx/emoji2/text/z;

    .line 327
    .line 328
    .line 329
    move-result-object v0

    .line 330
    if-eqz v0, :cond_1

    .line 331
    .line 332
    invoke-virtual {v0, v2}, Landroidx/emoji2/text/z;->setLoadingExecutor(Ljava/util/concurrent/Executor;)Landroidx/emoji2/text/z;

    .line 333
    .line 334
    .line 335
    invoke-virtual {v0}, Landroidx/emoji2/text/k;->getMetadataRepoLoader()Landroidx/emoji2/text/n;

    .line 336
    .line 337
    .line 338
    move-result-object v0

    .line 339
    new-instance v1, Landroidx/emoji2/text/r;

    .line 340
    .line 341
    invoke-direct {v1, v3, v2}, Landroidx/emoji2/text/r;-><init>(Landroidx/emoji2/text/o;Ljava/util/concurrent/ThreadPoolExecutor;)V

    .line 342
    .line 343
    .line 344
    invoke-interface {v0, v1}, Landroidx/emoji2/text/n;->load(Landroidx/emoji2/text/o;)V

    .line 345
    .line 346
    .line 347
    goto :goto_6

    .line 348
    :catchall_2
    move-exception v0

    .line 349
    goto :goto_5

    .line 350
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    .line 351
    .line 352
    const-string v1, "EmojiCompat font provider not available on this device."

    .line 353
    .line 354
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 355
    .line 356
    .line 357
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 358
    :goto_5
    invoke-virtual {v3, v0}, Landroidx/emoji2/text/o;->onFailed(Ljava/lang/Throwable;)V

    .line 359
    .line 360
    .line 361
    invoke-virtual {v2}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 362
    .line 363
    .line 364
    :goto_6
    return-void

    .line 365
    :pswitch_c
    sget-boolean v0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->Q0:Z

    .line 366
    .line 367
    check-cast v1, Landroid/widget/TextView;

    .line 368
    .line 369
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 370
    .line 371
    .line 372
    move-result-object v0

    .line 373
    const/4 v1, 0x0

    .line 374
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 375
    .line 376
    .line 377
    move-result-object v0

    .line 378
    const/high16 v1, -0x3db80000    # -50.0f

    .line 379
    .line 380
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 381
    .line 382
    .line 383
    move-result-object v0

    .line 384
    const-wide/16 v4, 0x258

    .line 385
    .line 386
    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 387
    .line 388
    .line 389
    move-result-object v0

    .line 390
    new-instance v1, LA4/n;

    .line 391
    .line 392
    check-cast v3, Landroid/view/View;

    .line 393
    .line 394
    check-cast v2, Landroid/widget/LinearLayout;

    .line 395
    .line 396
    const/4 v4, 0x5

    .line 397
    invoke-direct {v1, v4, v3, v2}, LA4/n;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 398
    .line 399
    .line 400
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 401
    .line 402
    .line 403
    move-result-object v0

    .line 404
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 405
    .line 406
    .line 407
    return-void

    .line 408
    nop

    .line 409
    :pswitch_data_0
    .packed-switch 0x0
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
