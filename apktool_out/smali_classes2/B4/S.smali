.class public final LB4/S;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lflix/com/vision/activities/player/WebPlayerActivity;


# direct methods
.method public constructor <init>(Lflix/com/vision/activities/player/WebPlayerActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, LB4/S;->a:Lflix/com/vision/activities/player/WebPlayerActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 8

    .line 1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, LB4/S;->a:Lflix/com/vision/activities/player/WebPlayerActivity;

    .line 5
    .line 6
    iget-object v0, p1, Lflix/com/vision/activities/player/WebPlayerActivity;->p:Landroid/widget/LinearLayout;

    .line 7
    .line 8
    const/16 v1, 0x8

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p1, Lflix/com/vision/activities/player/WebPlayerActivity;->F:Landroid/widget/RelativeLayout;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    iget-boolean v0, p1, Lflix/com/vision/activities/player/WebPlayerActivity;->e:Z

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    :try_start_0
    iget-object v0, p1, Lflix/com/vision/activities/player/WebPlayerActivity;->v:Landroid/widget/ImageView;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 25
    .line 26
    .line 27
    iget-object v0, p1, Lflix/com/vision/activities/player/WebPlayerActivity;->v:Landroid/widget/ImageView;

    .line 28
    .line 29
    const/high16 v1, 0x3f800000    # 1.0f

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    :catch_0
    :cond_0
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 39
    .line 40
    const-string v1, "trakt_user_logged_in"

    .line 41
    .line 42
    const/4 v2, 0x0

    .line 43
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    iget-object v0, p1, Lflix/com/vision/activities/player/WebPlayerActivity;->r:Lflix/com/vision/models/Movie;

    .line 50
    .line 51
    invoke-virtual {v0}, Lflix/com/vision/models/Movie;->isSeries()Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_1

    .line 56
    .line 57
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    iget-object v0, v0, Lflix/com/vision/App;->q:LD4/h;

    .line 62
    .line 63
    iget-object v1, p1, Lflix/com/vision/activities/player/WebPlayerActivity;->r:Lflix/com/vision/models/Movie;

    .line 64
    .line 65
    invoke-virtual {v0, v1}, LD4/h;->checkInMovie(Lflix/com/vision/models/Movie;)Lio/reactivex/Completable;

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    iget-object v0, v0, Lflix/com/vision/App;->q:LD4/h;

    .line 74
    .line 75
    iget-object v1, p1, Lflix/com/vision/activities/player/WebPlayerActivity;->r:Lflix/com/vision/models/Movie;

    .line 76
    .line 77
    iget v3, p1, Lflix/com/vision/activities/player/WebPlayerActivity;->n:I

    .line 78
    .line 79
    iget v4, p1, Lflix/com/vision/activities/player/WebPlayerActivity;->G:I

    .line 80
    .line 81
    invoke-virtual {v0, v1, v3, v4}, LD4/h;->checkInEpisode(Lflix/com/vision/models/Movie;II)Lio/reactivex/Completable;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-virtual {v0, v1}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    new-instance v1, LB4/N;

    .line 94
    .line 95
    const/4 v3, 0x0

    .line 96
    invoke-direct {v1, p1, v3}, LB4/N;-><init>(Le/v;I)V

    .line 97
    .line 98
    .line 99
    new-instance v3, LA4/c;

    .line 100
    .line 101
    const/16 v4, 0x9

    .line 102
    .line 103
    invoke-direct {v3, v4}, LA4/c;-><init>(I)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v1, v3}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 107
    .line 108
    .line 109
    :cond_2
    :goto_0
    iget-object v0, p1, Lflix/com/vision/activities/player/WebPlayerActivity;->I:Landroid/webkit/WebView;

    .line 110
    .line 111
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 112
    .line 113
    .line 114
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 119
    .line 120
    const-string v1, "pref_hide_watermark_tip"

    .line 121
    .line 122
    const/4 v3, 0x1

    .line 123
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    const-string v1, "pref_hide_watermark"

    .line 128
    .line 129
    if-eqz v0, :cond_3

    .line 130
    .line 131
    new-instance v0, Lflix/com/vision/models/VideoSource;

    .line 132
    .line 133
    invoke-direct {v0}, Lflix/com/vision/models/VideoSource;-><init>()V

    .line 134
    .line 135
    .line 136
    iget-object v4, p1, Lflix/com/vision/activities/player/WebPlayerActivity;->q:Ljava/lang/String;

    .line 137
    .line 138
    iput-object v4, v0, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    .line 139
    .line 140
    new-instance v4, Ljava/util/Random;

    .line 141
    .line 142
    const-wide/16 v5, 0x5

    .line 143
    .line 144
    invoke-direct {v4, v5, v6}, Ljava/util/Random;-><init>(J)V

    .line 145
    .line 146
    .line 147
    const/4 v5, 0x2

    .line 148
    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    .line 149
    .line 150
    .line 151
    move-result v4

    .line 152
    if-ne v4, v3, :cond_3

    .line 153
    .line 154
    invoke-virtual {v0}, Lflix/com/vision/models/VideoSource;->hasMultiSubtitles()Z

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    if-eqz v0, :cond_3

    .line 159
    .line 160
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 165
    .line 166
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    if-nez v0, :cond_3

    .line 171
    .line 172
    new-instance v0, Landroid/os/Handler;

    .line 173
    .line 174
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 175
    .line 176
    .line 177
    new-instance v4, LA3/d;

    .line 178
    .line 179
    const/4 v5, 0x5

    .line 180
    invoke-direct {v4, p1, v5}, LA3/d;-><init>(Ljava/lang/Object;I)V

    .line 181
    .line 182
    .line 183
    const-wide/16 v5, 0x4e20

    .line 184
    .line 185
    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 186
    .line 187
    .line 188
    :cond_3
    new-instance v0, Lflix/com/vision/models/VideoSource;

    .line 189
    .line 190
    invoke-direct {v0}, Lflix/com/vision/models/VideoSource;-><init>()V

    .line 191
    .line 192
    .line 193
    iput-object p2, v0, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    .line 194
    .line 195
    invoke-virtual {v0}, Lflix/com/vision/models/VideoSource;->hasMultiSubtitles()Z

    .line 196
    .line 197
    .line 198
    move-result p2

    .line 199
    const-string v4, ""

    .line 200
    .line 201
    const-string v5, "GOT IT"

    .line 202
    .line 203
    if-eqz p2, :cond_4

    .line 204
    .line 205
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 206
    .line 207
    .line 208
    move-result-object p2

    .line 209
    iget-object p2, p2, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 210
    .line 211
    const-string v6, "pref_multi_subtitle_tuto_shown"

    .line 212
    .line 213
    invoke-interface {p2, v6, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 214
    .line 215
    .line 216
    move-result p2

    .line 217
    if-nez p2, :cond_5

    .line 218
    .line 219
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 220
    .line 221
    .line 222
    move-result-object p2

    .line 223
    iget-object p2, p2, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 224
    .line 225
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 226
    .line 227
    .line 228
    move-result-object p2

    .line 229
    invoke-interface {p2, v6, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 230
    .line 231
    .line 232
    move-result-object p2

    .line 233
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 234
    .line 235
    .line 236
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 237
    .line 238
    .line 239
    move-result-object p2

    .line 240
    invoke-static {p1, v2}, LQ4/d;->newInstance(Landroid/app/Activity;Z)LQ4/d;

    .line 241
    .line 242
    .line 243
    move-result-object v3

    .line 244
    const-string v6, "Multi-language Subtitles Available"

    .line 245
    .line 246
    invoke-virtual {v3, v6}, LQ4/d;->setTitle(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v3, v2}, Landroid/app/DialogFragment;->setCancelable(Z)V

    .line 250
    .line 251
    .line 252
    const-string v6, "Multi-language Subtitles are Available on this player. Press the CC button to choose your language subtitle"

    .line 253
    .line 254
    invoke-virtual {v3, v6}, LQ4/d;->setMessage(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    new-instance v6, LB4/M;

    .line 258
    .line 259
    const/4 v7, 0x3

    .line 260
    invoke-direct {v6, p1, v7}, LB4/M;-><init>(Lflix/com/vision/activities/player/WebPlayerActivity;I)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v3, v5, v6}, LQ4/d;->setButton1(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 264
    .line 265
    .line 266
    :try_start_1
    invoke-virtual {v3, p2, v4}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 267
    .line 268
    .line 269
    goto :goto_1

    .line 270
    :catch_1
    move-exception p2

    .line 271
    iput-boolean v2, p1, Lflix/com/vision/activities/player/WebPlayerActivity;->K:Z

    .line 272
    .line 273
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 274
    .line 275
    .line 276
    goto :goto_1

    .line 277
    :cond_4
    invoke-virtual {v0}, Lflix/com/vision/models/VideoSource;->hasSubtitles()Z

    .line 278
    .line 279
    .line 280
    move-result p2

    .line 281
    if-eqz p2, :cond_5

    .line 282
    .line 283
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 284
    .line 285
    .line 286
    move-result-object p2

    .line 287
    iget-object p2, p2, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 288
    .line 289
    const-string v6, "pref_subtiel_tuto_shown"

    .line 290
    .line 291
    invoke-interface {p2, v6, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 292
    .line 293
    .line 294
    move-result p2

    .line 295
    if-nez p2, :cond_5

    .line 296
    .line 297
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 298
    .line 299
    .line 300
    move-result-object p2

    .line 301
    iget-object p2, p2, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 302
    .line 303
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 304
    .line 305
    .line 306
    move-result-object p2

    .line 307
    invoke-interface {p2, v6, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 308
    .line 309
    .line 310
    move-result-object p2

    .line 311
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 312
    .line 313
    .line 314
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 315
    .line 316
    .line 317
    move-result-object p2

    .line 318
    invoke-static {p1, v2}, LQ4/d;->newInstance(Landroid/app/Activity;Z)LQ4/d;

    .line 319
    .line 320
    .line 321
    move-result-object v3

    .line 322
    const-string v6, "Subtitles Available"

    .line 323
    .line 324
    invoke-virtual {v3, v6}, LQ4/d;->setTitle(Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    invoke-virtual {v3, v2}, Landroid/app/DialogFragment;->setCancelable(Z)V

    .line 328
    .line 329
    .line 330
    const-string v6, "Subtitles are Available on this player. Press the CC button to choose your language subtitle"

    .line 331
    .line 332
    invoke-virtual {v3, v6}, LQ4/d;->setMessage(Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    new-instance v6, LB4/M;

    .line 336
    .line 337
    const/4 v7, 0x2

    .line 338
    invoke-direct {v6, p1, v7}, LB4/M;-><init>(Lflix/com/vision/activities/player/WebPlayerActivity;I)V

    .line 339
    .line 340
    .line 341
    invoke-virtual {v3, v5, v6}, LQ4/d;->setButton1(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 342
    .line 343
    .line 344
    :try_start_2
    invoke-virtual {v3, p2, v4}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 345
    .line 346
    .line 347
    goto :goto_1

    .line 348
    :catch_2
    move-exception p2

    .line 349
    iput-boolean v2, p1, Lflix/com/vision/activities/player/WebPlayerActivity;->K:Z

    .line 350
    .line 351
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 352
    .line 353
    .line 354
    :cond_5
    :goto_1
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 355
    .line 356
    .line 357
    move-result-object p1

    .line 358
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 359
    .line 360
    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 361
    .line 362
    .line 363
    move-result p1

    .line 364
    const-wide/16 v1, 0x7d0

    .line 365
    .line 366
    if-eqz p1, :cond_6

    .line 367
    .line 368
    invoke-virtual {v0}, Lflix/com/vision/models/VideoSource;->hasMultiSubtitles()Z

    .line 369
    .line 370
    .line 371
    move-result p1

    .line 372
    if-eqz p1, :cond_6

    .line 373
    .line 374
    new-instance p1, Landroid/os/Handler;

    .line 375
    .line 376
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 377
    .line 378
    .line 379
    new-instance p2, LB4/Q;

    .line 380
    .line 381
    const/4 v0, 0x0

    .line 382
    invoke-direct {p2, p0, v0}, LB4/Q;-><init>(LB4/S;I)V

    .line 383
    .line 384
    .line 385
    invoke-virtual {p1, p2, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 386
    .line 387
    .line 388
    :cond_6
    new-instance p1, Landroid/os/Handler;

    .line 389
    .line 390
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 391
    .line 392
    .line 393
    new-instance p2, LB4/Q;

    .line 394
    .line 395
    const/4 v0, 0x1

    .line 396
    invoke-direct {p2, p0, v0}, LB4/Q;-><init>(LB4/S;I)V

    .line 397
    .line 398
    .line 399
    invoke-virtual {p1, p2, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 400
    .line 401
    .line 402
    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 2

    .line 1
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {}, LT4/a;->getInstance()LT4/a;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1, v0}, LT4/a;->isAd(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    new-instance p1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string p2, "Blocking ad request: "

    .line 22
    .line 23
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const-string p2, "AdBlocker"

    .line 34
    .line 35
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    invoke-static {}, LT4/a;->getInstance()LT4/a;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p1}, LT4/a;->createEmptyResource()Landroid/webkit/WebResourceResponse;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    return-object p1

    .line 47
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    return-object p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method
