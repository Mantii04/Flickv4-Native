.class public final synthetic LA4/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Lflix/com/vision/activities/leanback/MainActivityLeanback;


# direct methods
.method public synthetic constructor <init>(Lflix/com/vision/activities/leanback/MainActivityLeanback;I)V
    .locals 0

    .line 1
    iput p2, p0, LA4/j;->b:I

    iput-object p1, p0, LA4/j;->e:Lflix/com/vision/activities/leanback/MainActivityLeanback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    const-string p1, ""

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x0

    .line 5
    iget-object v2, p0, LA4/j;->e:Lflix/com/vision/activities/leanback/MainActivityLeanback;

    .line 6
    .line 7
    iget v3, p0, LA4/j;->b:I

    .line 8
    .line 9
    packed-switch v3, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    sget p1, Lflix/com/vision/activities/leanback/MainActivityLeanback;->I:I

    .line 13
    .line 14
    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_0
    sget p1, Lflix/com/vision/activities/leanback/MainActivityLeanback;->I:I

    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    new-instance p1, Landroid/content/Intent;

    .line 24
    .line 25
    const-class v0, Lflix/com/vision/tv/MyImportActivity;

    .line 26
    .line 27
    invoke-direct {p1, v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :pswitch_1
    sget v1, Lflix/com/vision/activities/leanback/MainActivityLeanback;->I:I

    .line 35
    .line 36
    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-static {v2, v0}, LQ4/d;->newInstance(Landroid/app/Activity;Z)LQ4/d;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    const-string v4, "M3U Import"

    .line 45
    .line 46
    invoke-virtual {v3, v4}, LQ4/d;->setTitle(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const-string v4, "How do you want to import your M3U Playlist?"

    .line 50
    .line 51
    invoke-virtual {v3, v4}, LQ4/d;->setMessage(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    new-instance v4, LA4/j;

    .line 55
    .line 56
    invoke-direct {v4, v2, v0}, LA4/j;-><init>(Lflix/com/vision/activities/leanback/MainActivityLeanback;I)V

    .line 57
    .line 58
    .line 59
    const-string v0, "From File"

    .line 60
    .line 61
    invoke-virtual {v3, v0, v4}, LQ4/d;->setButton2(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 62
    .line 63
    .line 64
    new-instance v0, LA4/j;

    .line 65
    .line 66
    const/4 v4, 0x2

    .line 67
    invoke-direct {v0, v2, v4}, LA4/j;-><init>(Lflix/com/vision/activities/leanback/MainActivityLeanback;I)V

    .line 68
    .line 69
    .line 70
    const-string v2, "From URL"

    .line 71
    .line 72
    invoke-virtual {v3, v2, v0}, LQ4/d;->setButton1(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 73
    .line 74
    .line 75
    :try_start_0
    invoke-virtual {v3, v1, p1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :catch_0
    move-exception p1

    .line 80
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 81
    .line 82
    .line 83
    :goto_0
    return-void

    .line 84
    :pswitch_2
    sget p1, Lflix/com/vision/activities/leanback/MainActivityLeanback;->I:I

    .line 85
    .line 86
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    const-string p1, "COMING SOON..."

    .line 90
    .line 91
    invoke-static {v2, p1, v0}, Lh5/i;->makeToast(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v2, v0}, Lflix/com/vision/activities/leanback/MainActivityLeanback;->f(Z)V

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    :pswitch_3
    sget v0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->I:I

    .line 99
    .line 100
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 105
    .line 106
    const-string v3, "trakt_user_logged_in"

    .line 107
    .line 108
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    if-eqz v0, :cond_0

    .line 113
    .line 114
    new-instance p1, Landroid/content/Intent;

    .line 115
    .line 116
    const-class v0, Lflix/com/vision/activities/TraktActivity;

    .line 117
    .line 118
    invoke-direct {p1, v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 122
    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_0
    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-static {v2, v1}, LQ4/d;->newInstance(Landroid/app/Activity;Z)LQ4/d;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    sget v4, Lflix/com/vision/R$string;->trakt_tv_label:I

    .line 134
    .line 135
    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    invoke-virtual {v3, v4}, LQ4/d;->setTitle(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v3, v1}, Landroid/app/DialogFragment;->setCancelable(Z)V

    .line 143
    .line 144
    .line 145
    sget v4, Lflix/com/vision/R$string;->connect_with_trakt_tv_enjoy_benefits_mess:I

    .line 146
    .line 147
    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v4

    .line 151
    invoke-virtual {v3, v4}, LQ4/d;->setMessage(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    new-instance v4, LA4/q;

    .line 155
    .line 156
    invoke-direct {v4, v1}, LA4/q;-><init>(I)V

    .line 157
    .line 158
    .line 159
    const-string v1, "CANCEL"

    .line 160
    .line 161
    invoke-virtual {v3, v1, v4}, LQ4/d;->setButton1(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 162
    .line 163
    .line 164
    sget v1, Lflix/com/vision/R$string;->action_sign_in:I

    .line 165
    .line 166
    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    new-instance v4, LA4/j;

    .line 171
    .line 172
    const/4 v5, 0x4

    .line 173
    invoke-direct {v4, v2, v5}, LA4/j;-><init>(Lflix/com/vision/activities/leanback/MainActivityLeanback;I)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v3, v1, v4}, LQ4/d;->setButton2(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 177
    .line 178
    .line 179
    :try_start_1
    invoke-virtual {v3, v0, p1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 180
    .line 181
    .line 182
    goto :goto_1

    .line 183
    :catch_1
    move-exception p1

    .line 184
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 185
    .line 186
    .line 187
    :goto_1
    return-void

    .line 188
    :pswitch_4
    sget p1, Lflix/com/vision/activities/leanback/MainActivityLeanback;->I:I

    .line 189
    .line 190
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 191
    .line 192
    .line 193
    new-instance p1, Landroid/content/Intent;

    .line 194
    .line 195
    const-class v0, Lflix/com/vision/activities/DramaHomeActivity;

    .line 196
    .line 197
    invoke-direct {p1, v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 201
    .line 202
    .line 203
    return-void

    .line 204
    :pswitch_5
    sget p1, Lflix/com/vision/activities/leanback/MainActivityLeanback;->I:I

    .line 205
    .line 206
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 207
    .line 208
    .line 209
    new-instance p1, Landroid/content/Intent;

    .line 210
    .line 211
    const-string v0, "package:flix.com.vision"

    .line 212
    .line 213
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    const-string v1, "android.settings.MANAGE_UNKNOWN_APP_SOURCES"

    .line 218
    .line 219
    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 220
    .line 221
    .line 222
    const/16 v0, 0x7d0

    .line 223
    .line 224
    invoke-virtual {v2, p1, v0}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 225
    .line 226
    .line 227
    return-void

    .line 228
    :pswitch_6
    sget p1, Lflix/com/vision/activities/leanback/MainActivityLeanback;->I:I

    .line 229
    .line 230
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 231
    .line 232
    .line 233
    new-instance p1, Landroid/content/Intent;

    .line 234
    .line 235
    const-class v0, Lflix/com/vision/activities/TraktSignInActivity;

    .line 236
    .line 237
    invoke-direct {p1, v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 241
    .line 242
    .line 243
    return-void

    .line 244
    :pswitch_7
    sget p1, Lflix/com/vision/activities/leanback/MainActivityLeanback;->I:I

    .line 245
    .line 246
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 247
    .line 248
    .line 249
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 250
    .line 251
    .line 252
    move-result-object p1

    .line 253
    iget-object p1, p1, Lflix/com/vision/App;->r:LP4/e;

    .line 254
    .line 255
    invoke-virtual {p1}, LP4/e;->getWatchedMoviesFromDb()Ljava/util/ArrayList;

    .line 256
    .line 257
    .line 258
    move-result-object p1

    .line 259
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 260
    .line 261
    .line 262
    move-result p1

    .line 263
    if-nez p1, :cond_1

    .line 264
    .line 265
    const-string p1, "No Item Marked As Watched Yet"

    .line 266
    .line 267
    invoke-static {v2, p1, v1}, Lh5/i;->makeToast(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 268
    .line 269
    .line 270
    goto :goto_2

    .line 271
    :cond_1
    new-instance p1, Landroid/content/Intent;

    .line 272
    .line 273
    const-class v1, Lflix/com/vision/activities/WatchedAcvivity;

    .line 274
    .line 275
    invoke-direct {p1, v2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {v2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v2, v0}, Lflix/com/vision/activities/leanback/MainActivityLeanback;->f(Z)V

    .line 282
    .line 283
    .line 284
    :goto_2
    return-void

    .line 285
    :pswitch_8
    sget p1, Lflix/com/vision/activities/leanback/MainActivityLeanback;->I:I

    .line 286
    .line 287
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 288
    .line 289
    .line 290
    new-instance p1, Landroid/content/Intent;

    .line 291
    .line 292
    const-class v0, Lflix/com/vision/tv/M3UImportActivity;

    .line 293
    .line 294
    invoke-direct {p1, v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {v2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 298
    .line 299
    .line 300
    return-void

    .line 301
    :pswitch_9
    sget p1, Lflix/com/vision/activities/leanback/MainActivityLeanback;->I:I

    .line 302
    .line 303
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 304
    .line 305
    .line 306
    const-string p1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 307
    .line 308
    :try_start_2
    invoke-static {v2, p1}, LA/h;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 309
    .line 310
    .line 311
    move-result v0

    .line 312
    const/4 v1, -0x1

    .line 313
    if-ne v0, v1, :cond_2

    .line 314
    .line 315
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 316
    .line 317
    filled-new-array {v0, p1}, [Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object p1

    .line 321
    const/16 v0, 0x3e8

    .line 322
    .line 323
    invoke-static {v2, p1, v0}, Lz/d;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 324
    .line 325
    .line 326
    goto :goto_3

    .line 327
    :catch_2
    move-exception p1

    .line 328
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 329
    .line 330
    .line 331
    :cond_2
    new-instance p1, Landroid/content/Intent;

    .line 332
    .line 333
    const-class v0, Lflix/com/vision/activities/ModernFilePickerActivity;

    .line 334
    .line 335
    invoke-direct {p1, v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 336
    .line 337
    .line 338
    const-string v0, "picker_mode"

    .line 339
    .line 340
    const-string v1, "m3u"

    .line 341
    .line 342
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 343
    .line 344
    .line 345
    const/16 v0, 0x3039

    .line 346
    .line 347
    invoke-virtual {v2, p1, v0}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 348
    .line 349
    .line 350
    :goto_3
    return-void

    .line 351
    :pswitch_a
    sget v0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->I:I

    .line 352
    .line 353
    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 354
    .line 355
    .line 356
    move-result-object v0

    .line 357
    invoke-static {v2, v1}, LQ4/d;->newInstance(Landroid/app/Activity;Z)LQ4/d;

    .line 358
    .line 359
    .line 360
    move-result-object v3

    .line 361
    invoke-virtual {v3}, LQ4/d;->setloading()V

    .line 362
    .line 363
    .line 364
    :try_start_3
    invoke-virtual {v3, v0, p1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 365
    .line 366
    .line 367
    goto :goto_4

    .line 368
    :catch_3
    move-exception p1

    .line 369
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 370
    .line 371
    .line 372
    :goto_4
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 373
    .line 374
    .line 375
    move-result-object p1

    .line 376
    invoke-virtual {p1}, Lflix/com/vision/App;->loadRemoteConfig()V

    .line 377
    .line 378
    .line 379
    new-instance p1, Landroid/os/Handler;

    .line 380
    .line 381
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 382
    .line 383
    .line 384
    new-instance v0, LA4/n;

    .line 385
    .line 386
    invoke-direct {v0, v1, v2, v3}, LA4/n;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 387
    .line 388
    .line 389
    const-wide/16 v1, 0x1388

    .line 390
    .line 391
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 392
    .line 393
    .line 394
    return-void

    .line 395
    :pswitch_data_0
    .packed-switch 0x0
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
