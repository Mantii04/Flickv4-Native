.class public Lflix/com/vision/activities/player/YouTubeWebviewActivity;
.super Lflix/com/vision/activities/base/a;
.source "SourceFile"

# interfaces
.implements LU4/m;


# static fields
.field public static final synthetic t:I


# instance fields
.field public b:Ljava/lang/String;

.field public e:LT4/j;

.field public f:Landroid/view/animation/Animation;

.field public j:Landroid/widget/RelativeLayout;

.field public m:Lcom/github/ybq/android/spinkit/SpinKitView;

.field public n:Landroid/webkit/WebView;

.field public p:Landroid/view/View;

.field public q:Landroid/widget/ImageView;

.field public r:Landroid/widget/ImageView;

.field public s:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lflix/com/vision/activities/base/a;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lflix/com/vision/activities/player/YouTubeWebviewActivity;->s:Z

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public infoToggle(Z)V
    .locals 0

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 1
    invoke-super {p0, p1}, Lflix/com/vision/activities/base/a;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget p1, Lflix/com/vision/R$layout;->activity_you_tube_webview:I

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Le/v;->setContentView(I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lflix/com/vision/activities/player/YouTubeWebviewActivity;->p:Landroid/view/View;

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    const/16 v0, 0x404

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 24
    .line 25
    .line 26
    :cond_0
    new-instance p1, LT4/j;

    .line 27
    .line 28
    invoke-direct {p1}, LT4/j;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Lflix/com/vision/activities/player/YouTubeWebviewActivity;->e:LT4/j;

    .line 32
    .line 33
    sget p1, Lflix/com/vision/R$id;->title_poster_img:I

    .line 34
    .line 35
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    check-cast p1, Landroid/widget/ImageView;

    .line 40
    .line 41
    iput-object p1, p0, Lflix/com/vision/activities/player/YouTubeWebviewActivity;->r:Landroid/widget/ImageView;

    .line 42
    .line 43
    sget p1, Lflix/com/vision/R$id;->buffering_layout:I

    .line 44
    .line 45
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 50
    .line 51
    iput-object p1, p0, Lflix/com/vision/activities/player/YouTubeWebviewActivity;->j:Landroid/widget/RelativeLayout;

    .line 52
    .line 53
    sget p1, Lflix/com/vision/R$id;->poster_yt:I

    .line 54
    .line 55
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    check-cast p1, Landroid/widget/ImageView;

    .line 60
    .line 61
    iput-object p1, p0, Lflix/com/vision/activities/player/YouTubeWebviewActivity;->q:Landroid/widget/ImageView;

    .line 62
    .line 63
    sget p1, Lflix/com/vision/R$id;->loader:I

    .line 64
    .line 65
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    check-cast p1, Lcom/github/ybq/android/spinkit/SpinKitView;

    .line 70
    .line 71
    iput-object p1, p0, Lflix/com/vision/activities/player/YouTubeWebviewActivity;->m:Lcom/github/ybq/android/spinkit/SpinKitView;

    .line 72
    .line 73
    sget p1, Lflix/com/vision/R$id;->webview:I

    .line 74
    .line 75
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    check-cast p1, Landroid/webkit/WebView;

    .line 80
    .line 81
    iput-object p1, p0, Lflix/com/vision/activities/player/YouTubeWebviewActivity;->n:Landroid/webkit/WebView;

    .line 82
    .line 83
    sget p1, Lflix/com/vision/R$id;->cursorLayout:I

    .line 84
    .line 85
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    check-cast p1, Lflix/com/vision/helpers/CursorLayout;

    .line 90
    .line 91
    if-eqz p1, :cond_1

    .line 92
    .line 93
    invoke-virtual {p1, p0}, Lflix/com/vision/helpers/CursorLayout;->setActivity(LU4/m;)V

    .line 94
    .line 95
    .line 96
    :cond_1
    iget-object p1, p0, Lflix/com/vision/activities/player/YouTubeWebviewActivity;->n:Landroid/webkit/WebView;

    .line 97
    .line 98
    new-instance v0, Landroid/webkit/WebViewClient;

    .line 99
    .line 100
    invoke-direct {v0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 104
    .line 105
    .line 106
    iget-object p1, p0, Lflix/com/vision/activities/player/YouTubeWebviewActivity;->n:Landroid/webkit/WebView;

    .line 107
    .line 108
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    const/4 v1, 0x1

    .line 113
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 114
    .line 115
    .line 116
    iget-object p1, p0, Lflix/com/vision/activities/player/YouTubeWebviewActivity;->n:Landroid/webkit/WebView;

    .line 117
    .line 118
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    const-string v0, "video_id"

    .line 130
    .line 131
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    const-string v2, "poster"

    .line 140
    .line 141
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    if-eqz v0, :cond_2

    .line 146
    .line 147
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 148
    .line 149
    .line 150
    move-result v2

    .line 151
    if-nez v2, :cond_2

    .line 152
    .line 153
    :try_start_0
    invoke-static {}, Lm4/D;->get()Lm4/D;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    invoke-virtual {v2, v0}, Lm4/D;->load(Ljava/lang/String;)Lm4/J;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    invoke-virtual {v0}, Lm4/J;->fit()Lm4/J;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    invoke-virtual {v0}, Lm4/J;->centerCrop()Lm4/J;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    iget-object v2, p0, Lflix/com/vision/activities/player/YouTubeWebviewActivity;->q:Landroid/widget/ImageView;

    .line 170
    .line 171
    invoke-virtual {v0, v2}, Lm4/J;->into(Landroid/widget/ImageView;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 172
    .line 173
    .line 174
    goto :goto_0

    .line 175
    :catch_0
    move-exception v0

    .line 176
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 177
    .line 178
    .line 179
    :catch_1
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    const-string v2, "title_logo"

    .line 184
    .line 185
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    iput-object v0, p0, Lflix/com/vision/activities/player/YouTubeWebviewActivity;->b:Ljava/lang/String;

    .line 190
    .line 191
    const/4 v2, 0x0

    .line 192
    if-eqz v0, :cond_3

    .line 193
    .line 194
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 195
    .line 196
    .line 197
    move-result v0

    .line 198
    if-nez v0, :cond_3

    .line 199
    .line 200
    iget-object v0, p0, Lflix/com/vision/activities/player/YouTubeWebviewActivity;->j:Landroid/widget/RelativeLayout;

    .line 201
    .line 202
    if-eqz v0, :cond_3

    .line 203
    .line 204
    iput-boolean v1, p0, Lflix/com/vision/activities/player/YouTubeWebviewActivity;->s:Z

    .line 205
    .line 206
    :try_start_2
    invoke-static {}, Lm4/D;->get()Lm4/D;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    iget-object v3, p0, Lflix/com/vision/activities/player/YouTubeWebviewActivity;->b:Ljava/lang/String;

    .line 211
    .line 212
    invoke-virtual {v0, v3}, Lm4/D;->load(Ljava/lang/String;)Lm4/J;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    iget-object v3, p0, Lflix/com/vision/activities/player/YouTubeWebviewActivity;->r:Landroid/widget/ImageView;

    .line 217
    .line 218
    invoke-virtual {v0, v3}, Lm4/J;->into(Landroid/widget/ImageView;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 219
    .line 220
    .line 221
    goto :goto_1

    .line 222
    :catch_2
    move-exception v0

    .line 223
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 224
    .line 225
    .line 226
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    sget v3, Lflix/com/vision/R$anim;->fade_in_infinite:I

    .line 231
    .line 232
    invoke-static {v0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    iput-object v0, p0, Lflix/com/vision/activities/player/YouTubeWebviewActivity;->f:Landroid/view/animation/Animation;

    .line 237
    .line 238
    iget-object v0, p0, Lflix/com/vision/activities/player/YouTubeWebviewActivity;->m:Lcom/github/ybq/android/spinkit/SpinKitView;

    .line 239
    .line 240
    const/16 v3, 0x8

    .line 241
    .line 242
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 243
    .line 244
    .line 245
    :try_start_3
    iget-object v0, p0, Lflix/com/vision/activities/player/YouTubeWebviewActivity;->r:Landroid/widget/ImageView;

    .line 246
    .line 247
    const/high16 v3, 0x3f800000    # 1.0f

    .line 248
    .line 249
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 250
    .line 251
    .line 252
    iget-object v0, p0, Lflix/com/vision/activities/player/YouTubeWebviewActivity;->j:Landroid/widget/RelativeLayout;

    .line 253
    .line 254
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 255
    .line 256
    .line 257
    iget-object v0, p0, Lflix/com/vision/activities/player/YouTubeWebviewActivity;->r:Landroid/widget/ImageView;

    .line 258
    .line 259
    iget-object v3, p0, Lflix/com/vision/activities/player/YouTubeWebviewActivity;->f:Landroid/view/animation/Animation;

    .line 260
    .line 261
    invoke-virtual {v0, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 262
    .line 263
    .line 264
    :catch_3
    :cond_3
    iget-object v0, p0, Lflix/com/vision/activities/player/YouTubeWebviewActivity;->n:Landroid/webkit/WebView;

    .line 265
    .line 266
    new-instance v3, LB4/Z;

    .line 267
    .line 268
    invoke-direct {v3, p0}, LB4/Z;-><init>(Lflix/com/vision/activities/player/YouTubeWebviewActivity;)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 272
    .line 273
    .line 274
    iget-object v0, p0, Lflix/com/vision/activities/player/YouTubeWebviewActivity;->n:Landroid/webkit/WebView;

    .line 275
    .line 276
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 281
    .line 282
    .line 283
    iget-object v0, p0, Lflix/com/vision/activities/player/YouTubeWebviewActivity;->n:Landroid/webkit/WebView;

    .line 284
    .line 285
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 290
    .line 291
    .line 292
    iget-object v0, p0, Lflix/com/vision/activities/player/YouTubeWebviewActivity;->n:Landroid/webkit/WebView;

    .line 293
    .line 294
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 295
    .line 296
    .line 297
    move-result-object v0

    .line 298
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 299
    .line 300
    .line 301
    iget-object v0, p0, Lflix/com/vision/activities/player/YouTubeWebviewActivity;->n:Landroid/webkit/WebView;

    .line 302
    .line 303
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 304
    .line 305
    .line 306
    move-result-object v0

    .line 307
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 308
    .line 309
    .line 310
    iget-object v0, p0, Lflix/com/vision/activities/player/YouTubeWebviewActivity;->n:Landroid/webkit/WebView;

    .line 311
    .line 312
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 317
    .line 318
    .line 319
    iget-object v0, p0, Lflix/com/vision/activities/player/YouTubeWebviewActivity;->n:Landroid/webkit/WebView;

    .line 320
    .line 321
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 326
    .line 327
    .line 328
    iget-object v0, p0, Lflix/com/vision/activities/player/YouTubeWebviewActivity;->n:Landroid/webkit/WebView;

    .line 329
    .line 330
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 331
    .line 332
    .line 333
    move-result-object v0

    .line 334
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 335
    .line 336
    .line 337
    iget-object v0, p0, Lflix/com/vision/activities/player/YouTubeWebviewActivity;->n:Landroid/webkit/WebView;

    .line 338
    .line 339
    new-instance v3, Landroid/webkit/WebChromeClient;

    .line 340
    .line 341
    invoke-direct {v3}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 342
    .line 343
    .line 344
    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 345
    .line 346
    .line 347
    iget-object v0, p0, Lflix/com/vision/activities/player/YouTubeWebviewActivity;->n:Landroid/webkit/WebView;

    .line 348
    .line 349
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 350
    .line 351
    .line 352
    move-result-object v0

    .line 353
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 354
    .line 355
    .line 356
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    .line 357
    .line 358
    .line 359
    move-result-object v0

    .line 360
    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 361
    .line 362
    .line 363
    iget-object v2, p0, Lflix/com/vision/activities/player/YouTubeWebviewActivity;->n:Landroid/webkit/WebView;

    .line 364
    .line 365
    invoke-virtual {v0, v2, v1}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    .line 366
    .line 367
    .line 368
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 369
    .line 370
    .line 371
    move-result-object v0

    .line 372
    const-string v1, "goyt2.html"

    .line 373
    .line 374
    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 375
    .line 376
    .line 377
    move-result-object v0

    .line 378
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    .line 379
    .line 380
    .line 381
    move-result v1

    .line 382
    new-array v1, v1, [B

    .line 383
    .line 384
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    .line 385
    .line 386
    .line 387
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 388
    .line 389
    .line 390
    new-instance v0, Ljava/lang/String;

    .line 391
    .line 392
    const-string v2, "UTF-8"

    .line 393
    .line 394
    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 395
    .line 396
    .line 397
    const-string v1, "INJECT_VIDEO_ID_HERE"

    .line 398
    .line 399
    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object v4

    .line 403
    iget-object v2, p0, Lflix/com/vision/activities/player/YouTubeWebviewActivity;->n:Landroid/webkit/WebView;

    .line 404
    .line 405
    if-eqz v2, :cond_4

    .line 406
    .line 407
    const-string v3, "https://localhost"

    .line 408
    .line 409
    const-string v5, "text/html"

    .line 410
    .line 411
    const-string v6, "UTF-8"

    .line 412
    .line 413
    const/4 v7, 0x0

    .line 414
    invoke-virtual/range {v2 .. v7}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 415
    .line 416
    .line 417
    goto :goto_2

    .line 418
    :catch_4
    move-exception v0

    .line 419
    move-object p1, v0

    .line 420
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 421
    .line 422
    .line 423
    :cond_4
    :goto_2
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lflix/com/vision/activities/player/YouTubeWebviewActivity;->e:LT4/j;

    .line 2
    .line 3
    invoke-virtual {v0, p2}, LT4/j;->getDirectionPressed(Landroid/view/InputEvent;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0xa

    .line 8
    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    invoke-super {p0, p1, p2}, Le/v;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1

    .line 16
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-nez p1, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0}, Lflix/com/vision/activities/player/YouTubeWebviewActivity;->showDialog()V

    .line 23
    .line 24
    .line 25
    :cond_1
    const/4 p1, 0x1

    .line 26
    return p1
.end method

.method public onStop()V
    .locals 0

    .line 1
    invoke-super {p0}, Le/v;->onStop()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lflix/com/vision/activities/player/YouTubeWebviewActivity;->p:Landroid/view/View;

    .line 7
    .line 8
    const/16 v0, 0x1706

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public showDialog()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "EXIT_DIALOG"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v2, 0x1

    .line 15
    invoke-static {p0, v2}, LQ4/d;->newInstance(Landroid/app/Activity;Z)LQ4/d;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const-string v3, "Exit"

    .line 20
    .line 21
    invoke-virtual {v2, v3}, LQ4/d;->setTitle(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string v3, "Do you really want to and exit trailer?"

    .line 25
    .line 26
    invoke-virtual {v2, v3}, LQ4/d;->setMessage(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    new-instance v3, LA4/q;

    .line 30
    .line 31
    const/4 v4, 0x3

    .line 32
    invoke-direct {v3, v4}, LA4/q;-><init>(I)V

    .line 33
    .line 34
    .line 35
    const-string v4, "CANCEL"

    .line 36
    .line 37
    invoke-virtual {v2, v4, v3}, LQ4/d;->setButton1(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 38
    .line 39
    .line 40
    new-instance v3, LB4/a;

    .line 41
    .line 42
    const/4 v4, 0x1

    .line 43
    invoke-direct {v3, p0, v4}, LB4/a;-><init>(Ljava/lang/Object;I)V

    .line 44
    .line 45
    .line 46
    const-string v4, "YES"

    .line 47
    .line 48
    invoke-virtual {v2, v4, v3}, LQ4/d;->setButton2(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 49
    .line 50
    .line 51
    :try_start_0
    invoke-virtual {v2, v0, v1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :catch_0
    move-exception v0

    .line 56
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 57
    .line 58
    .line 59
    :goto_0
    return-void
.end method
