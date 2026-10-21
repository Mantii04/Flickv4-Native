.class public final synthetic LA4/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, LA4/m;->b:I

    iput-object p2, p0, LA4/m;->e:Ljava/lang/Object;

    iput-object p3, p0, LA4/m;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 10

    .line 1
    const p1, 0x3ecccccd    # 0.4f

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x3e8

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    const-string v3, ""

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    const-string v5, "Added to Favorites"

    .line 11
    .line 12
    const/4 v6, 0x1

    .line 13
    iget-object v7, p0, LA4/m;->f:Ljava/lang/Object;

    .line 14
    .line 15
    iget-object v8, p0, LA4/m;->e:Ljava/lang/Object;

    .line 16
    .line 17
    iget v9, p0, LA4/m;->b:I

    .line 18
    .line 19
    packed-switch v9, :pswitch_data_0

    .line 20
    .line 21
    .line 22
    sget p1, Lflix/com/vision/activities/adult/AdultHistoryActivity;->v:I

    .line 23
    .line 24
    check-cast v8, Lflix/com/vision/activities/adult/AdultHistoryActivity;

    .line 25
    .line 26
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iget-object p1, p1, Lflix/com/vision/App;->r:LP4/e;

    .line 34
    .line 35
    check-cast v7, Lflix/com/vision/models/adult/AdultVideo;

    .line 36
    .line 37
    invoke-virtual {p1, v7}, LP4/e;->addFavoritesAdult(Lflix/com/vision/models/adult/AdultVideo;)Z

    .line 38
    .line 39
    .line 40
    invoke-static {v8, v5, v6}, Lh5/i;->makeToast(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :pswitch_0
    sget p1, Lflix/com/vision/activities/WatchedAcvivity;->n:I

    .line 45
    .line 46
    check-cast v8, Lflix/com/vision/activities/WatchedAcvivity;

    .line 47
    .line 48
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    iget-object p1, p1, Lflix/com/vision/App;->r:LP4/e;

    .line 56
    .line 57
    check-cast v7, Lflix/com/vision/models/Movie;

    .line 58
    .line 59
    invoke-virtual {p1, v7}, LP4/e;->addMovieFavorites(Lflix/com/vision/models/Movie;)Z

    .line 60
    .line 61
    .line 62
    invoke-static {v8, v5, v6}, Lh5/i;->makeToast(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :pswitch_1
    sget p1, Lflix/com/vision/activities/SearchActivityTV;->I:I

    .line 67
    .line 68
    check-cast v8, Lflix/com/vision/activities/SearchActivityTV;

    .line 69
    .line 70
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    check-cast v7, LQ4/d;

    .line 74
    .line 75
    invoke-virtual {v7}, Landroid/app/DialogFragment;->dismiss()V

    .line 76
    .line 77
    .line 78
    const-string p1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 79
    .line 80
    invoke-static {v8, p1}, LA/h;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    const/4 v1, -0x1

    .line 85
    if-ne v0, v1, :cond_0

    .line 86
    .line 87
    invoke-virtual {v8}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    sget v1, Lflix/com/vision/R$string;->please_grant_permissions_label:I

    .line 92
    .line 93
    invoke-virtual {v8, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 102
    .line 103
    .line 104
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 105
    .line 106
    filled-new-array {v0, p1}, [Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    const/16 v0, 0x3e8

    .line 111
    .line 112
    invoke-static {v8, p1, v0}, Lz/d;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 113
    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 117
    .line 118
    const/16 v0, 0x1a

    .line 119
    .line 120
    if-lt p1, v0, :cond_1

    .line 121
    .line 122
    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    invoke-static {p1}, Lb4/h;->A(Landroid/content/pm/PackageManager;)Z

    .line 127
    .line 128
    .line 129
    move-result p1

    .line 130
    if-nez p1, :cond_1

    .line 131
    .line 132
    invoke-virtual {v7}, Landroid/app/DialogFragment;->dismiss()V

    .line 133
    .line 134
    .line 135
    invoke-static {v8, v6}, LQ4/d;->newInstance(Landroid/app/Activity;Z)LQ4/d;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    const-string v0, "Grant install Permission"

    .line 140
    .line 141
    invoke-virtual {p1, v0}, LQ4/d;->setTitle(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    const-string v0, "Please grant the Permission to install the Update"

    .line 145
    .line 146
    invoke-virtual {p1, v0}, LQ4/d;->setMessage(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    new-instance v0, LA4/o;

    .line 150
    .line 151
    const/16 v1, 0xc

    .line 152
    .line 153
    invoke-direct {v0, p1, v1}, LA4/o;-><init>(LQ4/d;I)V

    .line 154
    .line 155
    .line 156
    const-string v1, "Cancel"

    .line 157
    .line 158
    invoke-virtual {p1, v1, v0}, LQ4/d;->setButton1(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 159
    .line 160
    .line 161
    new-instance v0, Ly4/I0;

    .line 162
    .line 163
    invoke-direct {v0, v8, v4}, Ly4/I0;-><init>(Lflix/com/vision/activities/SearchActivityTV;I)V

    .line 164
    .line 165
    .line 166
    const-string v1, "OK"

    .line 167
    .line 168
    invoke-virtual {p1, v1, v0}, LQ4/d;->setButton2(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v8}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    invoke-virtual {p1, v0, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    goto :goto_0

    .line 179
    :cond_1
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 184
    .line 185
    sget-object v0, Lflix/com/vision/tv/Constant;->b:Ljava/lang/String;

    .line 186
    .line 187
    const-string v0, "update_url"

    .line 188
    .line 189
    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    if-eqz p1, :cond_2

    .line 194
    .line 195
    new-instance v0, Ly4/M0;

    .line 196
    .line 197
    invoke-direct {v0, v8}, Ly4/M0;-><init>(Lflix/com/vision/activities/SearchActivityTV;)V

    .line 198
    .line 199
    .line 200
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 201
    .line 202
    filled-new-array {p1}, [Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    invoke-virtual {v0, v1, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 207
    .line 208
    .line 209
    :cond_2
    :goto_0
    return-void

    .line 210
    :pswitch_2
    sget p1, Lflix/com/vision/activities/MainActivity;->T:I

    .line 211
    .line 212
    check-cast v8, Lflix/com/vision/activities/MainActivity;

    .line 213
    .line 214
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 215
    .line 216
    .line 217
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    iget-object p1, p1, Lflix/com/vision/App;->r:LP4/e;

    .line 222
    .line 223
    check-cast v7, Lflix/com/vision/models/Movie;

    .line 224
    .line 225
    invoke-virtual {p1, v7}, LP4/e;->addMovieFavorites(Lflix/com/vision/models/Movie;)Z

    .line 226
    .line 227
    .line 228
    invoke-static {v8, v5, v6}, Lh5/i;->makeToast(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 229
    .line 230
    .line 231
    return-void

    .line 232
    :pswitch_3
    sget p1, Lflix/com/vision/activities/MainActivity;->T:I

    .line 233
    .line 234
    check-cast v8, Lflix/com/vision/activities/MainActivity;

    .line 235
    .line 236
    check-cast v7, Le/s;

    .line 237
    .line 238
    invoke-virtual {v7}, Le/c0;->dismiss()V

    .line 239
    .line 240
    .line 241
    new-instance p1, Landroid/os/Handler;

    .line 242
    .line 243
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 244
    .line 245
    .line 246
    new-instance v2, Ly4/a0;

    .line 247
    .line 248
    const/16 v3, 0x8

    .line 249
    .line 250
    invoke-direct {v2, v8, v3}, Ly4/a0;-><init>(Lflix/com/vision/activities/MainActivity;I)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 254
    .line 255
    .line 256
    return-void

    .line 257
    :pswitch_4
    sget p1, Lflix/com/vision/activities/DramaHomeActivity;->W:I

    .line 258
    .line 259
    check-cast v8, Lflix/com/vision/activities/DramaHomeActivity;

    .line 260
    .line 261
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 262
    .line 263
    .line 264
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 265
    .line 266
    .line 267
    move-result-object p1

    .line 268
    iget-object p1, p1, Lflix/com/vision/App;->r:LP4/e;

    .line 269
    .line 270
    check-cast v7, Lflix/com/vision/models/Drama;

    .line 271
    .line 272
    invoke-virtual {p1, v7}, LP4/e;->addDramaToFavorites(Lflix/com/vision/models/Drama;)V

    .line 273
    .line 274
    .line 275
    invoke-static {v8, v5, v6}, Lh5/i;->makeToast(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 276
    .line 277
    .line 278
    return-void

    .line 279
    :pswitch_5
    check-cast v8, LC4/o0;

    .line 280
    .line 281
    iget-object p1, v8, LC4/o0;->d:LU4/j;

    .line 282
    .line 283
    check-cast v7, LC4/n0;

    .line 284
    .line 285
    iget-object v0, v7, LC4/n0;->u:Lflix/com/vision/models/Movie;

    .line 286
    .line 287
    invoke-interface {p1, v0}, LU4/j;->onMediaSelected(Lflix/com/vision/models/Movie;)V

    .line 288
    .line 289
    .line 290
    return-void

    .line 291
    :pswitch_6
    check-cast v8, LC4/m0;

    .line 292
    .line 293
    iget-object p1, v8, LC4/m0;->d:LU4/j;

    .line 294
    .line 295
    check-cast v7, LC4/l0;

    .line 296
    .line 297
    iget-object v0, v7, LC4/l0;->u:Lflix/com/vision/models/Movie;

    .line 298
    .line 299
    invoke-interface {p1, v0}, LU4/j;->onMediaSelected(Lflix/com/vision/models/Movie;)V

    .line 300
    .line 301
    .line 302
    return-void

    .line 303
    :pswitch_7
    check-cast v8, LC4/j0;

    .line 304
    .line 305
    iget-object v0, v8, LC4/j0;->h:Landroid/app/Activity;

    .line 306
    .line 307
    check-cast v0, Lflix/com/vision/activities/LinksActivity;

    .line 308
    .line 309
    check-cast v7, LC4/i0;

    .line 310
    .line 311
    iget-object v1, v7, LC4/i0;->u:Lflix/com/vision/models/VideoSource;

    .line 312
    .line 313
    invoke-virtual {v0, v1, v4}, Lflix/com/vision/activities/LinksActivity;->linkClicked(Lflix/com/vision/models/VideoSource;Z)V

    .line 314
    .line 315
    .line 316
    iget-object v0, v7, LC4/i0;->u:Lflix/com/vision/models/VideoSource;

    .line 317
    .line 318
    iput-boolean v6, v0, Lflix/com/vision/models/VideoSource;->clicked:Z

    .line 319
    .line 320
    iget-object v0, v7, LC4/i0;->w:Landroid/widget/TextView;

    .line 321
    .line 322
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 323
    .line 324
    .line 325
    iget-object v0, v7, LC4/i0;->x:Landroid/widget/TextView;

    .line 326
    .line 327
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 328
    .line 329
    .line 330
    return-void

    .line 331
    :pswitch_8
    check-cast v8, LC4/h0;

    .line 332
    .line 333
    iget-object v0, v8, LC4/h0;->e:Landroid/app/Activity;

    .line 334
    .line 335
    check-cast v0, Lflix/com/vision/activities/UserTorrentsActivity;

    .line 336
    .line 337
    check-cast v7, LC4/g0;

    .line 338
    .line 339
    iget-object v1, v7, LC4/g0;->u:Lflix/com/vision/models/torrent/UserTorrent;

    .line 340
    .line 341
    invoke-virtual {v0, v1}, Lflix/com/vision/activities/UserTorrentsActivity;->torrentClicked(Lflix/com/vision/models/torrent/UserTorrent;)V

    .line 342
    .line 343
    .line 344
    iget-object v0, v7, LC4/g0;->u:Lflix/com/vision/models/torrent/UserTorrent;

    .line 345
    .line 346
    iput-boolean v6, v0, Lflix/com/vision/models/torrent/UserTorrent;->clicked:Z

    .line 347
    .line 348
    iget-object v0, v7, LC4/g0;->w:Landroid/widget/TextView;

    .line 349
    .line 350
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 351
    .line 352
    .line 353
    iget-object v0, v7, LC4/g0;->x:Landroid/widget/TextView;

    .line 354
    .line 355
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 356
    .line 357
    .line 358
    return-void

    .line 359
    :pswitch_9
    check-cast v8, LC4/e0;

    .line 360
    .line 361
    check-cast v7, LC4/d0;

    .line 362
    .line 363
    iget-object p1, v7, LC4/d0;->u:Lflix/com/vision/models/HistoryTVLink;

    .line 364
    .line 365
    iget-object p1, p1, Lflix/com/vision/models/HistoryTVLink;->type:Ljava/lang/String;

    .line 366
    .line 367
    const-string v0, "1"

    .line 368
    .line 369
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 370
    .line 371
    .line 372
    move-result p1

    .line 373
    iget-object v0, v8, LC4/e0;->d:Landroid/app/Activity;

    .line 374
    .line 375
    if-eqz p1, :cond_3

    .line 376
    .line 377
    check-cast v0, Lflix/com/vision/tv/MyImportActivity;

    .line 378
    .line 379
    iget-object p1, v7, LC4/d0;->u:Lflix/com/vision/models/HistoryTVLink;

    .line 380
    .line 381
    invoke-virtual {v0, p1}, Lflix/com/vision/tv/MyImportActivity;->openItem(Lflix/com/vision/models/HistoryTVLink;)V

    .line 382
    .line 383
    .line 384
    goto :goto_2

    .line 385
    :cond_3
    new-instance p1, Ll/v1;

    .line 386
    .line 387
    iget-object v1, v7, LC4/d0;->v:Landroid/widget/ImageButton;

    .line 388
    .line 389
    invoke-direct {p1, v0, v1}, Ll/v1;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 390
    .line 391
    .line 392
    iget-object v0, v7, LC4/d0;->u:Lflix/com/vision/models/HistoryTVLink;

    .line 393
    .line 394
    iget-object v0, v0, Lflix/com/vision/models/HistoryTVLink;->type:Ljava/lang/String;

    .line 395
    .line 396
    const-string v1, "3"

    .line 397
    .line 398
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 399
    .line 400
    .line 401
    move-result v0

    .line 402
    if-eqz v0, :cond_4

    .line 403
    .line 404
    invoke-virtual {p1}, Ll/v1;->getMenuInflater()Landroid/view/MenuInflater;

    .line 405
    .line 406
    .line 407
    move-result-object v0

    .line 408
    sget v1, Lflix/com/vision/R$menu;->history_menu_file:I

    .line 409
    .line 410
    invoke-virtual {p1}, Ll/v1;->getMenu()Landroid/view/Menu;

    .line 411
    .line 412
    .line 413
    move-result-object v2

    .line 414
    invoke-virtual {v0, v1, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 415
    .line 416
    .line 417
    goto :goto_1

    .line 418
    :cond_4
    invoke-virtual {p1}, Ll/v1;->getMenuInflater()Landroid/view/MenuInflater;

    .line 419
    .line 420
    .line 421
    move-result-object v0

    .line 422
    sget v1, Lflix/com/vision/R$menu;->history_menu:I

    .line 423
    .line 424
    invoke-virtual {p1}, Ll/v1;->getMenu()Landroid/view/Menu;

    .line 425
    .line 426
    .line 427
    move-result-object v2

    .line 428
    invoke-virtual {v0, v1, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 429
    .line 430
    .line 431
    :goto_1
    new-instance v0, LC4/f;

    .line 432
    .line 433
    const/4 v1, 0x3

    .line 434
    invoke-direct {v0, v8, v7, p1, v1}, LC4/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 435
    .line 436
    .line 437
    invoke-virtual {p1, v0}, Ll/v1;->setOnMenuItemClickListener(Ll/u1;)V

    .line 438
    .line 439
    .line 440
    invoke-virtual {p1}, Ll/v1;->show()V

    .line 441
    .line 442
    .line 443
    :goto_2
    return-void

    .line 444
    :pswitch_a
    check-cast v8, LC4/c0;

    .line 445
    .line 446
    iget-object p1, v8, LC4/c0;->e:LU4/l;

    .line 447
    .line 448
    check-cast v7, LC4/b0;

    .line 449
    .line 450
    iget-object v0, v7, LC4/b0;->u:Lflix/com/vision/tv/TVCategory;

    .line 451
    .line 452
    invoke-interface {p1, v0}, LU4/l;->openCategory(Lflix/com/vision/tv/TVCategory;)V

    .line 453
    .line 454
    .line 455
    return-void

    .line 456
    :pswitch_b
    check-cast v8, LC4/S;

    .line 457
    .line 458
    iget-object p1, v8, LC4/S;->d:Landroid/app/Activity;

    .line 459
    .line 460
    instance-of v0, p1, Lflix/com/vision/activities/MainActivity;

    .line 461
    .line 462
    if-eqz v0, :cond_5

    .line 463
    .line 464
    check-cast p1, Lflix/com/vision/activities/MainActivity;

    .line 465
    .line 466
    check-cast v7, LC4/Q;

    .line 467
    .line 468
    iget-object v0, v7, LC4/Q;->u:Lflix/com/vision/models/tmdb/Network;

    .line 469
    .line 470
    invoke-virtual {p1, v0}, Lflix/com/vision/activities/MainActivity;->onNetworkClicked(Lflix/com/vision/models/tmdb/Network;)V

    .line 471
    .line 472
    .line 473
    :cond_5
    return-void

    .line 474
    :pswitch_c
    check-cast v8, LC4/P;

    .line 475
    .line 476
    iget-object p1, v8, LC4/P;->d:LU4/j;

    .line 477
    .line 478
    check-cast v7, LC4/O;

    .line 479
    .line 480
    iget-object v0, v7, LC4/O;->u:Lflix/com/vision/models/Movie;

    .line 481
    .line 482
    invoke-interface {p1, v0}, LU4/j;->onMediaSelected(Lflix/com/vision/models/Movie;)V

    .line 483
    .line 484
    .line 485
    return-void

    .line 486
    :pswitch_d
    check-cast v8, LC4/L;

    .line 487
    .line 488
    iget-object p1, v8, LC4/L;->f:LC4/J;

    .line 489
    .line 490
    check-cast v7, Ljava/io/File;

    .line 491
    .line 492
    invoke-interface {p1, v7}, LC4/J;->onFileClicked(Ljava/io/File;)V

    .line 493
    .line 494
    .line 495
    return-void

    .line 496
    :pswitch_e
    check-cast v8, LC4/I;

    .line 497
    .line 498
    iget-object p1, v8, LC4/I;->g:LU4/i;

    .line 499
    .line 500
    check-cast v7, LC4/H;

    .line 501
    .line 502
    iget-object v0, v7, LC4/H;->u:Ljava/lang/String;

    .line 503
    .line 504
    invoke-interface {p1, v0}, LU4/i;->onLetterClicked(Ljava/lang/String;)V

    .line 505
    .line 506
    .line 507
    return-void

    .line 508
    :pswitch_f
    check-cast v8, LC4/B;

    .line 509
    .line 510
    iget-object p1, v8, LC4/B;->d:LU4/e;

    .line 511
    .line 512
    if-eqz p1, :cond_6

    .line 513
    .line 514
    check-cast v7, LC4/A;

    .line 515
    .line 516
    iget-object v0, v7, LC4/A;->u:Lflix/com/vision/models/Drama;

    .line 517
    .line 518
    invoke-interface {p1, v0}, LU4/e;->openDrama(Lflix/com/vision/models/Drama;)V

    .line 519
    .line 520
    .line 521
    :cond_6
    return-void

    .line 522
    :pswitch_10
    check-cast v8, LC4/z;

    .line 523
    .line 524
    iget-object p1, v8, LC4/z;->d:LU4/e;

    .line 525
    .line 526
    if-eqz p1, :cond_7

    .line 527
    .line 528
    check-cast v7, LC4/y;

    .line 529
    .line 530
    iget-object v0, v7, LC4/y;->u:Lflix/com/vision/models/Drama;

    .line 531
    .line 532
    invoke-interface {p1, v0}, LU4/e;->openDrama(Lflix/com/vision/models/Drama;)V

    .line 533
    .line 534
    .line 535
    :cond_7
    return-void

    .line 536
    :pswitch_11
    check-cast v8, LC4/w;

    .line 537
    .line 538
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 539
    .line 540
    .line 541
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 542
    .line 543
    .line 544
    move-result-object p1

    .line 545
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 546
    .line 547
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 548
    .line 549
    .line 550
    move-result-object p1

    .line 551
    check-cast v7, LC4/v;

    .line 552
    .line 553
    iget-object v0, v7, LC4/v;->u:Lflix/com/vision/models/ColorItem;

    .line 554
    .line 555
    iget v0, v0, Lflix/com/vision/models/ColorItem;->colorID:I

    .line 556
    .line 557
    iget-object v1, v8, LC4/w;->d:Ljava/lang/String;

    .line 558
    .line 559
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 560
    .line 561
    .line 562
    move-result-object p1

    .line 563
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 564
    .line 565
    .line 566
    iget-object p1, v8, LC4/w;->e:Ljava/util/ArrayList;

    .line 567
    .line 568
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 569
    .line 570
    .line 571
    move-result-object p1

    .line 572
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 573
    .line 574
    .line 575
    move-result v0

    .line 576
    if-eqz v0, :cond_8

    .line 577
    .line 578
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 579
    .line 580
    .line 581
    move-result-object v0

    .line 582
    check-cast v0, Lflix/com/vision/models/ColorItem;

    .line 583
    .line 584
    iput-boolean v4, v0, Lflix/com/vision/models/ColorItem;->isChecked:Z

    .line 585
    .line 586
    goto :goto_3

    .line 587
    :cond_8
    iget-object p1, v7, LC4/v;->u:Lflix/com/vision/models/ColorItem;

    .line 588
    .line 589
    iput-boolean v6, p1, Lflix/com/vision/models/ColorItem;->isChecked:Z

    .line 590
    .line 591
    iget-object p1, v8, LC4/w;->g:Le/s;

    .line 592
    .line 593
    if-eqz p1, :cond_9

    .line 594
    .line 595
    :try_start_0
    invoke-virtual {p1}, Le/c0;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 596
    .line 597
    .line 598
    :catch_0
    :cond_9
    invoke-virtual {v8}, Lm1/V;->notifyDataSetChanged()V

    .line 599
    .line 600
    .line 601
    return-void

    .line 602
    :pswitch_12
    check-cast v8, LC4/r;

    .line 603
    .line 604
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 605
    .line 606
    .line 607
    new-instance p1, Landroid/content/Intent;

    .line 608
    .line 609
    sget-boolean v0, Lflix/com/vision/App;->I:Z

    .line 610
    .line 611
    if-eqz v0, :cond_a

    .line 612
    .line 613
    const-class v0, Lflix/com/vision/activities/leanback/CastMoviesActivityLeanBack;

    .line 614
    .line 615
    goto :goto_4

    .line 616
    :cond_a
    const-class v0, Lflix/com/vision/activities/CastMoviesActivity;

    .line 617
    .line 618
    :goto_4
    iget-object v1, v8, LC4/r;->d:Landroid/app/Activity;

    .line 619
    .line 620
    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 621
    .line 622
    .line 623
    check-cast v7, LC4/q;

    .line 624
    .line 625
    iget-object v0, v7, LC4/q;->u:Lflix/com/vision/models/Cast;

    .line 626
    .line 627
    iget v0, v0, Lflix/com/vision/models/Cast;->gender:I

    .line 628
    .line 629
    const-string v2, "gender"

    .line 630
    .line 631
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 632
    .line 633
    .line 634
    iget-object v0, v7, LC4/q;->u:Lflix/com/vision/models/Cast;

    .line 635
    .line 636
    invoke-virtual {v0}, Lflix/com/vision/models/Cast;->getName()Ljava/lang/String;

    .line 637
    .line 638
    .line 639
    move-result-object v0

    .line 640
    const-string v2, "name"

    .line 641
    .line 642
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 643
    .line 644
    .line 645
    iget-object v0, v7, LC4/q;->u:Lflix/com/vision/models/Cast;

    .line 646
    .line 647
    invoke-virtual {v0}, Lflix/com/vision/models/Cast;->getId()J

    .line 648
    .line 649
    .line 650
    move-result-wide v2

    .line 651
    const-string v0, "id"

    .line 652
    .line 653
    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 654
    .line 655
    .line 656
    iget-object v0, v7, LC4/q;->u:Lflix/com/vision/models/Cast;

    .line 657
    .line 658
    invoke-virtual {v0}, Lflix/com/vision/models/Cast;->getImg_url()Ljava/lang/String;

    .line 659
    .line 660
    .line 661
    move-result-object v0

    .line 662
    const-string v2, "image"

    .line 663
    .line 664
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 665
    .line 666
    .line 667
    const-string v0, "type"

    .line 668
    .line 669
    iget v2, v8, LC4/r;->e:I

    .line 670
    .line 671
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 672
    .line 673
    .line 674
    invoke-virtual {v1, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 675
    .line 676
    .line 677
    return-void

    .line 678
    :pswitch_13
    check-cast v8, LC4/k;

    .line 679
    .line 680
    iget-object p1, v8, LC4/k;->e:LU4/d;

    .line 681
    .line 682
    if-eqz p1, :cond_b

    .line 683
    .line 684
    check-cast v7, LC4/j;

    .line 685
    .line 686
    iget-object v0, v7, LC4/j;->u:Lflix/com/vision/models/Anime;

    .line 687
    .line 688
    invoke-interface {p1, v0}, LU4/d;->openAnime(Lflix/com/vision/models/Anime;)V

    .line 689
    .line 690
    .line 691
    :cond_b
    return-void

    .line 692
    :pswitch_14
    check-cast v8, Lflix/com/vision/activities/player/SimpleVideoPlayer;

    .line 693
    .line 694
    iget-object p1, v8, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 695
    .line 696
    sget-object v0, Lflix/com/vision/bvp/subtitle/CaptionsView$CMime;->b:Lflix/com/vision/bvp/subtitle/CaptionsView$CMime;

    .line 697
    .line 698
    check-cast v7, Ljava/lang/String;

    .line 699
    .line 700
    invoke-virtual {p1, v7, v0, v3}, Lflix/com/vision/bvp/BetterVideoPlayer;->setCaptionsPath(Ljava/lang/String;Lflix/com/vision/bvp/subtitle/CaptionsView$CMime;Ljava/lang/String;)V

    .line 701
    .line 702
    .line 703
    invoke-virtual {v8}, Lflix/com/vision/activities/player/SimpleVideoPlayer;->H()V

    .line 704
    .line 705
    .line 706
    :try_start_1
    const-string p1, "Subtitles Enabled"

    .line 707
    .line 708
    const/16 v0, 0x30

    .line 709
    .line 710
    invoke-static {v8, p1, v2, v0, v4}, LN4/a;->Success(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 711
    .line 712
    .line 713
    :catch_1
    return-void

    .line 714
    :pswitch_15
    sget p1, Lflix/com/vision/activities/leanback/MainActivityLeanback;->I:I

    .line 715
    .line 716
    check-cast v8, Lflix/com/vision/activities/leanback/MainActivityLeanback;

    .line 717
    .line 718
    check-cast v7, Le/s;

    .line 719
    .line 720
    invoke-virtual {v7}, Le/c0;->dismiss()V

    .line 721
    .line 722
    .line 723
    new-instance p1, Landroid/os/Handler;

    .line 724
    .line 725
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 726
    .line 727
    .line 728
    new-instance v2, LA4/k;

    .line 729
    .line 730
    const/4 v3, 0x4

    .line 731
    invoke-direct {v2, v8, v3}, LA4/k;-><init>(Lflix/com/vision/activities/leanback/MainActivityLeanback;I)V

    .line 732
    .line 733
    .line 734
    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 735
    .line 736
    .line 737
    return-void

    .line 738
    nop

    .line 739
    :pswitch_data_0
    .packed-switch 0x0
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
