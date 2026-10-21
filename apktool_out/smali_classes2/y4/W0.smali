.class public final synthetic Ly4/W0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Lflix/com/vision/activities/SettingsActivity;


# direct methods
.method public synthetic constructor <init>(Lflix/com/vision/activities/SettingsActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Ly4/W0;->b:I

    iput-object p1, p0, Ly4/W0;->e:Lflix/com/vision/activities/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 12

    .line 1
    const/4 p1, 0x2

    .line 2
    const-string v0, "YES, LOGOUT"

    .line 3
    .line 4
    const-string v1, "CANCEL"

    .line 5
    .line 6
    const-string v2, "Do you really want to unlink your Account ?"

    .line 7
    .line 8
    const-string v3, "Successfully Logged out"

    .line 9
    .line 10
    const/16 v4, 0x30

    .line 11
    .line 12
    const/4 v5, 0x0

    .line 13
    const-string v6, ""

    .line 14
    .line 15
    const/16 v7, 0x8

    .line 16
    .line 17
    const/4 v8, 0x1

    .line 18
    const/4 v9, 0x0

    .line 19
    iget-object v10, p0, Ly4/W0;->e:Lflix/com/vision/activities/SettingsActivity;

    .line 20
    .line 21
    iget v11, p0, Ly4/W0;->b:I

    .line 22
    .line 23
    packed-switch v11, :pswitch_data_0

    .line 24
    .line 25
    .line 26
    sget p1, Lflix/com/vision/activities/SettingsActivity;->c2:I

    .line 27
    .line 28
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 36
    .line 37
    const-string v0, "pref_tv_layout"

    .line 38
    .line 39
    invoke-interface {p1, v0, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    new-instance v0, Le/r;

    .line 44
    .line 45
    new-instance v1, Landroid/view/ContextThemeWrapper;

    .line 46
    .line 47
    sget v2, Lflix/com/vision/R$style;->AlertDialogCustom:I

    .line 48
    .line 49
    invoke-direct {v1, v10, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 50
    .line 51
    .line 52
    invoke-direct {v0, v1}, Le/r;-><init>(Landroid/content/Context;)V

    .line 53
    .line 54
    .line 55
    new-instance v1, Ly4/f1;

    .line 56
    .line 57
    sget v2, Lflix/com/vision/R$layout;->custom_select_dialog_singlechoice:I

    .line 58
    .line 59
    iget-object v3, v10, Lflix/com/vision/activities/SettingsActivity;->x:[Ljava/lang/CharSequence;

    .line 60
    .line 61
    invoke-direct {v1, v10, v2, v3, p1}, Ly4/f1;-><init>(Landroid/content/Context;I[Ljava/lang/CharSequence;I)V

    .line 62
    .line 63
    .line 64
    new-instance v2, Ly4/Y0;

    .line 65
    .line 66
    const/4 v3, 0x4

    .line 67
    invoke-direct {v2, v10, v3}, Ly4/Y0;-><init>(Lflix/com/vision/activities/SettingsActivity;I)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1, p1, v2}, Le/r;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Le/r;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Le/r;->show()Le/s;

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :pswitch_0
    sget p1, Lflix/com/vision/activities/SettingsActivity;->c2:I

    .line 78
    .line 79
    invoke-virtual {v10}, Landroid/app/Activity;->finish()V

    .line 80
    .line 81
    .line 82
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {p1}, Lflix/com/vision/App;->restartApp()V

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    :pswitch_1
    sget p1, Lflix/com/vision/activities/SettingsActivity;->c2:I

    .line 91
    .line 92
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    new-instance p1, Landroid/content/Intent;

    .line 96
    .line 97
    const-class v0, Lflix/com/vision/activities/TraktSignInActivity;

    .line 98
    .line 99
    invoke-direct {p1, v10, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v10, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 103
    .line 104
    .line 105
    return-void

    .line 106
    :pswitch_2
    sget p1, Lflix/com/vision/activities/SettingsActivity;->c2:I

    .line 107
    .line 108
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    .line 110
    .line 111
    sget-boolean p1, LG4/b;->a:Z

    .line 112
    .line 113
    if-nez p1, :cond_0

    .line 114
    .line 115
    new-instance p1, Landroid/content/Intent;

    .line 116
    .line 117
    const-class v0, Lflix/com/vision/api/offcloud/OffCloudApiKeyEntryActivity;

    .line 118
    .line 119
    invoke-direct {p1, v10, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v10, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 123
    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_0
    invoke-virtual {v10}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-static {v10, v8}, LQ4/d;->newInstance(Landroid/app/Activity;Z)LQ4/d;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    const-string v4, "OffCloud Logout"

    .line 135
    .line 136
    invoke-virtual {v3, v4}, LQ4/d;->setTitle(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v3, v2}, LQ4/d;->setMessage(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    new-instance v2, LA4/q;

    .line 143
    .line 144
    invoke-direct {v2, v7}, LA4/q;-><init>(I)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v3, v1, v2}, LQ4/d;->setButton1(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 148
    .line 149
    .line 150
    new-instance v1, Ly4/W0;

    .line 151
    .line 152
    const/16 v2, 0xc

    .line 153
    .line 154
    invoke-direct {v1, v10, v2}, Ly4/W0;-><init>(Lflix/com/vision/activities/SettingsActivity;I)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v3, v0, v1}, LQ4/d;->setButton2(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 158
    .line 159
    .line 160
    :try_start_0
    invoke-virtual {v3, p1, v6}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    .line 162
    .line 163
    goto :goto_0

    .line 164
    :catch_0
    move-exception p1

    .line 165
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 166
    .line 167
    .line 168
    :goto_0
    return-void

    .line 169
    :pswitch_3
    sget p1, Lflix/com/vision/activities/SettingsActivity;->c2:I

    .line 170
    .line 171
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 172
    .line 173
    .line 174
    new-instance p1, Landroid/content/Intent;

    .line 175
    .line 176
    const-class v0, Lflix/com/vision/activities/player/YouTubeWebviewActivity;

    .line 177
    .line 178
    invoke-direct {p1, v10, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 179
    .line 180
    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    .line 182
    .line 183
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 184
    .line 185
    .line 186
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    iget-object v1, v1, Lflix/com/vision/App;->w:Ljava/lang/String;

    .line 191
    .line 192
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    const-string v1, "/#faqs"

    .line 196
    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    const-string v1, "url"

    .line 205
    .line 206
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v10, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 210
    .line 211
    .line 212
    return-void

    .line 213
    :pswitch_4
    sget p1, Lflix/com/vision/activities/SettingsActivity;->c2:I

    .line 214
    .line 215
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 216
    .line 217
    .line 218
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 219
    .line 220
    .line 221
    move-result-object p1

    .line 222
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 223
    .line 224
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    const-string v0, "ACCESS_TOKEN"

    .line 229
    .line 230
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 231
    .line 232
    .line 233
    move-result-object p1

    .line 234
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 235
    .line 236
    .line 237
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 238
    .line 239
    .line 240
    move-result-object p1

    .line 241
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 242
    .line 243
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 244
    .line 245
    .line 246
    move-result-object p1

    .line 247
    const-string v0, "REFRESH_TOKEN"

    .line 248
    .line 249
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 250
    .line 251
    .line 252
    move-result-object p1

    .line 253
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 254
    .line 255
    .line 256
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 257
    .line 258
    .line 259
    move-result-object p1

    .line 260
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 261
    .line 262
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 263
    .line 264
    .line 265
    move-result-object p1

    .line 266
    const-string v0, "TOKEN_TYPE"

    .line 267
    .line 268
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 269
    .line 270
    .line 271
    move-result-object p1

    .line 272
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 273
    .line 274
    .line 275
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 276
    .line 277
    .line 278
    move-result-object p1

    .line 279
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 280
    .line 281
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 282
    .line 283
    .line 284
    move-result-object p1

    .line 285
    const-string v0, "IS_RD_LOGGED_IN"

    .line 286
    .line 287
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 288
    .line 289
    .line 290
    move-result-object p1

    .line 291
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 292
    .line 293
    .line 294
    sput-boolean v9, Lflix/com/vision/api/realdebrid/RealDebridCommon;->m:Z

    .line 295
    .line 296
    iget-object p1, v10, Lflix/com/vision/activities/SettingsActivity;->H:Landroid/widget/TextView;

    .line 297
    .line 298
    invoke-virtual {v10}, Le/v;->getResources()Landroid/content/res/Resources;

    .line 299
    .line 300
    .line 301
    move-result-object v0

    .line 302
    sget v1, Lflix/com/vision/R$color;->white_grey:I

    .line 303
    .line 304
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 305
    .line 306
    .line 307
    move-result v0

    .line 308
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 309
    .line 310
    .line 311
    iget-object p1, v10, Lflix/com/vision/activities/SettingsActivity;->H:Landroid/widget/TextView;

    .line 312
    .line 313
    const-string v0, "Link your Real Debrid account to enjoy the best streaming experience"

    .line 314
    .line 315
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    .line 317
    .line 318
    :try_start_1
    invoke-virtual {v10}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 319
    .line 320
    .line 321
    move-result-object p1

    .line 322
    invoke-static {p1, v3, v5, v4, v9}, LN4/a;->Success(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 323
    .line 324
    .line 325
    :catch_1
    return-void

    .line 326
    :pswitch_5
    sget p1, Lflix/com/vision/activities/SettingsActivity;->c2:I

    .line 327
    .line 328
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 329
    .line 330
    .line 331
    sget-boolean p1, LJ4/b;->a:Z

    .line 332
    .line 333
    if-nez p1, :cond_1

    .line 334
    .line 335
    new-instance p1, Landroid/content/Intent;

    .line 336
    .line 337
    const-class v0, Lflix/com/vision/api/torbox/TorBoxApiKeyEntryActivity;

    .line 338
    .line 339
    invoke-direct {p1, v10, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 340
    .line 341
    .line 342
    invoke-virtual {v10, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 343
    .line 344
    .line 345
    goto :goto_1

    .line 346
    :cond_1
    invoke-virtual {v10}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 347
    .line 348
    .line 349
    move-result-object p1

    .line 350
    invoke-static {v10, v8}, LQ4/d;->newInstance(Landroid/app/Activity;Z)LQ4/d;

    .line 351
    .line 352
    .line 353
    move-result-object v3

    .line 354
    const-string v4, "Torbox Logout"

    .line 355
    .line 356
    invoke-virtual {v3, v4}, LQ4/d;->setTitle(Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    invoke-virtual {v3, v2}, LQ4/d;->setMessage(Ljava/lang/String;)V

    .line 360
    .line 361
    .line 362
    new-instance v2, LA4/q;

    .line 363
    .line 364
    invoke-direct {v2, v7}, LA4/q;-><init>(I)V

    .line 365
    .line 366
    .line 367
    invoke-virtual {v3, v1, v2}, LQ4/d;->setButton1(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 368
    .line 369
    .line 370
    new-instance v1, Ly4/W0;

    .line 371
    .line 372
    const/16 v2, 0xd

    .line 373
    .line 374
    invoke-direct {v1, v10, v2}, Ly4/W0;-><init>(Lflix/com/vision/activities/SettingsActivity;I)V

    .line 375
    .line 376
    .line 377
    invoke-virtual {v3, v0, v1}, LQ4/d;->setButton2(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 378
    .line 379
    .line 380
    :try_start_2
    invoke-virtual {v3, p1, v6}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 381
    .line 382
    .line 383
    goto :goto_1

    .line 384
    :catch_2
    move-exception p1

    .line 385
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 386
    .line 387
    .line 388
    :goto_1
    return-void

    .line 389
    :pswitch_6
    sget p1, Lflix/com/vision/activities/SettingsActivity;->c2:I

    .line 390
    .line 391
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 392
    .line 393
    .line 394
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 395
    .line 396
    .line 397
    move-result-object p1

    .line 398
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 399
    .line 400
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 401
    .line 402
    .line 403
    move-result-object p1

    .line 404
    const-string v0, "PREM_LOGGED_IN"

    .line 405
    .line 406
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 407
    .line 408
    .line 409
    move-result-object p1

    .line 410
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 411
    .line 412
    .line 413
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 414
    .line 415
    .line 416
    move-result-object p1

    .line 417
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 418
    .line 419
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 420
    .line 421
    .line 422
    move-result-object p1

    .line 423
    sget-object v0, LT4/f;->a:Ljava/lang/String;

    .line 424
    .line 425
    const-string v0, "prem_apikey"

    .line 426
    .line 427
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 428
    .line 429
    .line 430
    move-result-object p1

    .line 431
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 432
    .line 433
    .line 434
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 435
    .line 436
    .line 437
    move-result-object p1

    .line 438
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 439
    .line 440
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 441
    .line 442
    .line 443
    move-result-object p1

    .line 444
    const-string v0, "PREM_PREMIUM_UNTIL"

    .line 445
    .line 446
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 447
    .line 448
    .line 449
    move-result-object p1

    .line 450
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 451
    .line 452
    .line 453
    sput-boolean v9, Lflix/com/vision/api/premiumize/PremiumizeCommon;->b:Z

    .line 454
    .line 455
    iget-object p1, v10, Lflix/com/vision/activities/SettingsActivity;->F:Landroid/widget/TextView;

    .line 456
    .line 457
    invoke-virtual {p1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 458
    .line 459
    .line 460
    iget-object p1, v10, Lflix/com/vision/activities/SettingsActivity;->g0:Landroid/widget/TextView;

    .line 461
    .line 462
    const-string v0, "Link your Premiumize.me account to enjoy the best streaming experience"

    .line 463
    .line 464
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 465
    .line 466
    .line 467
    iget-object p1, v10, Lflix/com/vision/activities/SettingsActivity;->g0:Landroid/widget/TextView;

    .line 468
    .line 469
    invoke-virtual {v10}, Le/v;->getResources()Landroid/content/res/Resources;

    .line 470
    .line 471
    .line 472
    move-result-object v0

    .line 473
    sget v1, Lflix/com/vision/R$color;->white_grey:I

    .line 474
    .line 475
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 476
    .line 477
    .line 478
    move-result v0

    .line 479
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 480
    .line 481
    .line 482
    :try_start_3
    invoke-virtual {v10}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 483
    .line 484
    .line 485
    move-result-object p1

    .line 486
    invoke-static {p1, v3, v5, v4, v9}, LN4/a;->Success(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 487
    .line 488
    .line 489
    :catch_3
    return-void

    .line 490
    :pswitch_7
    sget p1, Lflix/com/vision/activities/SettingsActivity;->c2:I

    .line 491
    .line 492
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 493
    .line 494
    .line 495
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 496
    .line 497
    .line 498
    move-result-object p1

    .line 499
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 500
    .line 501
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 502
    .line 503
    .line 504
    move-result-object p1

    .line 505
    const-string v0, "ALL_DEBRID_LOGGED_IN"

    .line 506
    .line 507
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 508
    .line 509
    .line 510
    move-result-object p1

    .line 511
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 512
    .line 513
    .line 514
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 515
    .line 516
    .line 517
    move-result-object p1

    .line 518
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 519
    .line 520
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 521
    .line 522
    .line 523
    move-result-object p1

    .line 524
    sget-object v0, LT4/f;->a:Ljava/lang/String;

    .line 525
    .line 526
    const-string v0, "all_debrid_apikey"

    .line 527
    .line 528
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 529
    .line 530
    .line 531
    move-result-object p1

    .line 532
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 533
    .line 534
    .line 535
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 536
    .line 537
    .line 538
    move-result-object p1

    .line 539
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 540
    .line 541
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 542
    .line 543
    .line 544
    move-result-object p1

    .line 545
    const-string v0, "ALL_DEBRID_PREMIUM_UNTIL"

    .line 546
    .line 547
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 548
    .line 549
    .line 550
    move-result-object p1

    .line 551
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 552
    .line 553
    .line 554
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 555
    .line 556
    .line 557
    move-result-object p1

    .line 558
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 559
    .line 560
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 561
    .line 562
    .line 563
    move-result-object p1

    .line 564
    const-string v0, "ALL_DEBRID_IS_PREMIUM"

    .line 565
    .line 566
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 567
    .line 568
    .line 569
    move-result-object p1

    .line 570
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 571
    .line 572
    .line 573
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 574
    .line 575
    .line 576
    move-result-object p1

    .line 577
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 578
    .line 579
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 580
    .line 581
    .line 582
    move-result-object p1

    .line 583
    const-string v0, "ALL_DEBRID_USERNAME"

    .line 584
    .line 585
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 586
    .line 587
    .line 588
    move-result-object p1

    .line 589
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 590
    .line 591
    .line 592
    sput-boolean v9, Lflix/com/vision/api/alldebrid/AllDebridCommon;->f:Z

    .line 593
    .line 594
    iget-object p1, v10, Lflix/com/vision/activities/SettingsActivity;->d0:Landroid/widget/TextView;

    .line 595
    .line 596
    invoke-virtual {p1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 597
    .line 598
    .line 599
    iget-object p1, v10, Lflix/com/vision/activities/SettingsActivity;->f0:Landroid/widget/TextView;

    .line 600
    .line 601
    invoke-virtual {p1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 602
    .line 603
    .line 604
    iget-object p1, v10, Lflix/com/vision/activities/SettingsActivity;->e0:Landroid/widget/TextView;

    .line 605
    .line 606
    const-string v0, "Link your AllDebrid account to enjoy the best streaming experience"

    .line 607
    .line 608
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 609
    .line 610
    .line 611
    iget-object p1, v10, Lflix/com/vision/activities/SettingsActivity;->e0:Landroid/widget/TextView;

    .line 612
    .line 613
    invoke-virtual {v10}, Le/v;->getResources()Landroid/content/res/Resources;

    .line 614
    .line 615
    .line 616
    move-result-object v0

    .line 617
    sget v1, Lflix/com/vision/R$color;->white_grey:I

    .line 618
    .line 619
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 620
    .line 621
    .line 622
    move-result v0

    .line 623
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 624
    .line 625
    .line 626
    :try_start_4
    invoke-virtual {v10}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 627
    .line 628
    .line 629
    move-result-object p1

    .line 630
    invoke-static {p1, v3, v5, v4, v9}, LN4/a;->Success(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 631
    .line 632
    .line 633
    :catch_4
    return-void

    .line 634
    :pswitch_8
    sget p1, Lflix/com/vision/activities/SettingsActivity;->c2:I

    .line 635
    .line 636
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 637
    .line 638
    .line 639
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 640
    .line 641
    .line 642
    move-result-object p1

    .line 643
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 644
    .line 645
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 646
    .line 647
    .line 648
    move-result-object p1

    .line 649
    const-string v0, "torbox_logged_in"

    .line 650
    .line 651
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 652
    .line 653
    .line 654
    move-result-object p1

    .line 655
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 656
    .line 657
    .line 658
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 659
    .line 660
    .line 661
    move-result-object p1

    .line 662
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 663
    .line 664
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 665
    .line 666
    .line 667
    move-result-object p1

    .line 668
    const-string v0, "torbox_apikey"

    .line 669
    .line 670
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 671
    .line 672
    .line 673
    move-result-object p1

    .line 674
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 675
    .line 676
    .line 677
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 678
    .line 679
    .line 680
    move-result-object p1

    .line 681
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 682
    .line 683
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 684
    .line 685
    .line 686
    move-result-object p1

    .line 687
    const-string v0, "pref_torbox_is_premium"

    .line 688
    .line 689
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 690
    .line 691
    .line 692
    move-result-object p1

    .line 693
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 694
    .line 695
    .line 696
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 697
    .line 698
    .line 699
    move-result-object p1

    .line 700
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 701
    .line 702
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 703
    .line 704
    .line 705
    move-result-object p1

    .line 706
    const-string v0, "pref_torbox_premium_until"

    .line 707
    .line 708
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 709
    .line 710
    .line 711
    move-result-object p1

    .line 712
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 713
    .line 714
    .line 715
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 716
    .line 717
    .line 718
    move-result-object p1

    .line 719
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 720
    .line 721
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 722
    .line 723
    .line 724
    move-result-object p1

    .line 725
    const-string v0, "pref_torbox_username"

    .line 726
    .line 727
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 728
    .line 729
    .line 730
    move-result-object p1

    .line 731
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 732
    .line 733
    .line 734
    sput-boolean v9, LJ4/b;->a:Z

    .line 735
    .line 736
    iget-object p1, v10, Lflix/com/vision/activities/SettingsActivity;->a0:Landroid/widget/TextView;

    .line 737
    .line 738
    invoke-virtual {p1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 739
    .line 740
    .line 741
    iget-object p1, v10, Lflix/com/vision/activities/SettingsActivity;->c0:Landroid/widget/TextView;

    .line 742
    .line 743
    invoke-virtual {p1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 744
    .line 745
    .line 746
    iget-object p1, v10, Lflix/com/vision/activities/SettingsActivity;->b0:Landroid/widget/TextView;

    .line 747
    .line 748
    const-string v0, "Link your Torbix account to enjoy the best streaming experience"

    .line 749
    .line 750
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 751
    .line 752
    .line 753
    iget-object p1, v10, Lflix/com/vision/activities/SettingsActivity;->b0:Landroid/widget/TextView;

    .line 754
    .line 755
    invoke-virtual {v10}, Le/v;->getResources()Landroid/content/res/Resources;

    .line 756
    .line 757
    .line 758
    move-result-object v0

    .line 759
    sget v1, Lflix/com/vision/R$color;->white_grey:I

    .line 760
    .line 761
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 762
    .line 763
    .line 764
    move-result v0

    .line 765
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 766
    .line 767
    .line 768
    :try_start_5
    invoke-virtual {v10}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 769
    .line 770
    .line 771
    move-result-object p1

    .line 772
    invoke-static {p1, v3, v5, v4, v9}, LN4/a;->Success(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 773
    .line 774
    .line 775
    :catch_5
    return-void

    .line 776
    :pswitch_9
    sget p1, Lflix/com/vision/activities/SettingsActivity;->c2:I

    .line 777
    .line 778
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 779
    .line 780
    .line 781
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 782
    .line 783
    .line 784
    move-result-object p1

    .line 785
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 786
    .line 787
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 788
    .line 789
    .line 790
    move-result-object p1

    .line 791
    const-string v0, "offcloud_logged_in"

    .line 792
    .line 793
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 794
    .line 795
    .line 796
    move-result-object p1

    .line 797
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 798
    .line 799
    .line 800
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 801
    .line 802
    .line 803
    move-result-object p1

    .line 804
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 805
    .line 806
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 807
    .line 808
    .line 809
    move-result-object p1

    .line 810
    const-string v0, "offcloud_apikey"

    .line 811
    .line 812
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 813
    .line 814
    .line 815
    move-result-object p1

    .line 816
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 817
    .line 818
    .line 819
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 820
    .line 821
    .line 822
    move-result-object p1

    .line 823
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 824
    .line 825
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 826
    .line 827
    .line 828
    move-result-object p1

    .line 829
    const-string v0, "pref_offcloud_is_premium"

    .line 830
    .line 831
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 832
    .line 833
    .line 834
    move-result-object p1

    .line 835
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 836
    .line 837
    .line 838
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 839
    .line 840
    .line 841
    move-result-object p1

    .line 842
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 843
    .line 844
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 845
    .line 846
    .line 847
    move-result-object p1

    .line 848
    const-string v0, "pref_offcloud_premium_until"

    .line 849
    .line 850
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 851
    .line 852
    .line 853
    move-result-object p1

    .line 854
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 855
    .line 856
    .line 857
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 858
    .line 859
    .line 860
    move-result-object p1

    .line 861
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 862
    .line 863
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 864
    .line 865
    .line 866
    move-result-object p1

    .line 867
    const-string v0, "pref_offcloud_username"

    .line 868
    .line 869
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 870
    .line 871
    .line 872
    move-result-object p1

    .line 873
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 874
    .line 875
    .line 876
    sput-boolean v9, LG4/b;->a:Z

    .line 877
    .line 878
    iget-object p1, v10, Lflix/com/vision/activities/SettingsActivity;->X:Landroid/widget/TextView;

    .line 879
    .line 880
    invoke-virtual {p1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 881
    .line 882
    .line 883
    iget-object p1, v10, Lflix/com/vision/activities/SettingsActivity;->Z:Landroid/widget/TextView;

    .line 884
    .line 885
    invoke-virtual {p1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 886
    .line 887
    .line 888
    iget-object p1, v10, Lflix/com/vision/activities/SettingsActivity;->Y:Landroid/widget/TextView;

    .line 889
    .line 890
    const-string v0, "Link your OffCloud account to enjoy the best streaming experience"

    .line 891
    .line 892
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 893
    .line 894
    .line 895
    iget-object p1, v10, Lflix/com/vision/activities/SettingsActivity;->Y:Landroid/widget/TextView;

    .line 896
    .line 897
    invoke-virtual {v10}, Le/v;->getResources()Landroid/content/res/Resources;

    .line 898
    .line 899
    .line 900
    move-result-object v0

    .line 901
    sget v1, Lflix/com/vision/R$color;->white_grey:I

    .line 902
    .line 903
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 904
    .line 905
    .line 906
    move-result v0

    .line 907
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 908
    .line 909
    .line 910
    :try_start_6
    invoke-virtual {v10}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 911
    .line 912
    .line 913
    move-result-object p1

    .line 914
    invoke-static {p1, v3, v5, v4, v9}, LN4/a;->Success(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 915
    .line 916
    .line 917
    :catch_6
    return-void

    .line 918
    :pswitch_a
    sget p1, Lflix/com/vision/activities/SettingsActivity;->c2:I

    .line 919
    .line 920
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 921
    .line 922
    .line 923
    sget-boolean p1, Lflix/com/vision/api/alldebrid/AllDebridCommon;->f:Z

    .line 924
    .line 925
    if-nez p1, :cond_2

    .line 926
    .line 927
    new-instance p1, Landroid/content/Intent;

    .line 928
    .line 929
    const-class v0, Lflix/com/vision/api/alldebrid/AllDebridApiKeyEntryActivity;

    .line 930
    .line 931
    invoke-direct {p1, v10, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 932
    .line 933
    .line 934
    invoke-virtual {v10, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 935
    .line 936
    .line 937
    goto :goto_2

    .line 938
    :cond_2
    invoke-virtual {v10}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 939
    .line 940
    .line 941
    move-result-object p1

    .line 942
    invoke-static {v10, v8}, LQ4/d;->newInstance(Landroid/app/Activity;Z)LQ4/d;

    .line 943
    .line 944
    .line 945
    move-result-object v3

    .line 946
    const-string v4, "AllDebrid Logout"

    .line 947
    .line 948
    invoke-virtual {v3, v4}, LQ4/d;->setTitle(Ljava/lang/String;)V

    .line 949
    .line 950
    .line 951
    invoke-virtual {v3, v2}, LQ4/d;->setMessage(Ljava/lang/String;)V

    .line 952
    .line 953
    .line 954
    new-instance v2, LA4/q;

    .line 955
    .line 956
    invoke-direct {v2, v7}, LA4/q;-><init>(I)V

    .line 957
    .line 958
    .line 959
    invoke-virtual {v3, v1, v2}, LQ4/d;->setButton1(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 960
    .line 961
    .line 962
    new-instance v1, Ly4/W0;

    .line 963
    .line 964
    const/16 v2, 0xe

    .line 965
    .line 966
    invoke-direct {v1, v10, v2}, Ly4/W0;-><init>(Lflix/com/vision/activities/SettingsActivity;I)V

    .line 967
    .line 968
    .line 969
    invoke-virtual {v3, v0, v1}, LQ4/d;->setButton2(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 970
    .line 971
    .line 972
    :try_start_7
    invoke-virtual {v3, p1, v6}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 973
    .line 974
    .line 975
    goto :goto_2

    .line 976
    :catch_7
    move-exception p1

    .line 977
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 978
    .line 979
    .line 980
    :goto_2
    return-void

    .line 981
    :pswitch_b
    iget-object v0, v10, Lflix/com/vision/activities/SettingsActivity;->G0:Landroid/widget/FrameLayout;

    .line 982
    .line 983
    invoke-virtual {v0, v9}, Landroid/view/View;->setEnabled(Z)V

    .line 984
    .line 985
    .line 986
    new-instance v0, Landroid/app/ProgressDialog;

    .line 987
    .line 988
    invoke-direct {v0, v10}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 989
    .line 990
    .line 991
    const-string v1, "Creating Backup..."

    .line 992
    .line 993
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 994
    .line 995
    .line 996
    invoke-virtual {v0, v9}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 997
    .line 998
    .line 999
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1000
    .line 1001
    .line 1002
    new-instance v1, Ljava/lang/Thread;

    .line 1003
    .line 1004
    new-instance v2, Ly4/b1;

    .line 1005
    .line 1006
    invoke-direct {v2, v10, v0, p1}, Ly4/b1;-><init>(Lflix/com/vision/activities/SettingsActivity;Landroid/app/ProgressDialog;I)V

    .line 1007
    .line 1008
    .line 1009
    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1010
    .line 1011
    .line 1012
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1013
    .line 1014
    .line 1015
    new-instance p1, Landroid/os/Handler;

    .line 1016
    .line 1017
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 1018
    .line 1019
    .line 1020
    new-instance v0, Ly4/Z0;

    .line 1021
    .line 1022
    invoke-direct {v0, v10, v8}, Ly4/Z0;-><init>(Lflix/com/vision/activities/SettingsActivity;I)V

    .line 1023
    .line 1024
    .line 1025
    const-wide/16 v1, 0xfa0

    .line 1026
    .line 1027
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1028
    .line 1029
    .line 1030
    return-void

    .line 1031
    :pswitch_c
    iget-object p1, v10, Lflix/com/vision/activities/SettingsActivity;->F1:Landroid/widget/CheckBox;

    .line 1032
    .line 1033
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 1034
    .line 1035
    .line 1036
    return-void

    .line 1037
    :pswitch_d
    iget-object p1, v10, Lflix/com/vision/activities/SettingsActivity;->y1:Landroid/widget/CheckBox;

    .line 1038
    .line 1039
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 1040
    .line 1041
    .line 1042
    return-void

    .line 1043
    :pswitch_e
    iget-object p1, v10, Lflix/com/vision/activities/SettingsActivity;->z1:Landroid/widget/CheckBox;

    .line 1044
    .line 1045
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 1046
    .line 1047
    .line 1048
    return-void

    .line 1049
    :pswitch_f
    sget p1, Lflix/com/vision/activities/SettingsActivity;->c2:I

    .line 1050
    .line 1051
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1052
    .line 1053
    .line 1054
    new-instance p1, Landroid/app/ProgressDialog;

    .line 1055
    .line 1056
    invoke-direct {p1, v10}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1057
    .line 1058
    .line 1059
    iput-object p1, v10, Lflix/com/vision/activities/SettingsActivity;->t:Landroid/app/ProgressDialog;

    .line 1060
    .line 1061
    const-string v0, "Checking updates..."

    .line 1062
    .line 1063
    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1064
    .line 1065
    .line 1066
    iget-object p1, v10, Lflix/com/vision/activities/SettingsActivity;->t:Landroid/app/ProgressDialog;

    .line 1067
    .line 1068
    invoke-virtual {p1, v9}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 1069
    .line 1070
    .line 1071
    iget-object p1, v10, Lflix/com/vision/activities/SettingsActivity;->t:Landroid/app/ProgressDialog;

    .line 1072
    .line 1073
    invoke-virtual {p1, v9}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1074
    .line 1075
    .line 1076
    iget-object p1, v10, Lflix/com/vision/activities/SettingsActivity;->t:Landroid/app/ProgressDialog;

    .line 1077
    .line 1078
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 1079
    .line 1080
    .line 1081
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 1082
    .line 1083
    .line 1084
    move-result-object p1

    .line 1085
    invoke-virtual {p1}, Lflix/com/vision/App;->loadRemoteConfig()V

    .line 1086
    .line 1087
    .line 1088
    new-instance p1, Landroid/os/Handler;

    .line 1089
    .line 1090
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 1091
    .line 1092
    .line 1093
    new-instance v0, Ly4/Z0;

    .line 1094
    .line 1095
    invoke-direct {v0, v10, v9}, Ly4/Z0;-><init>(Lflix/com/vision/activities/SettingsActivity;I)V

    .line 1096
    .line 1097
    .line 1098
    const-wide/16 v1, 0x1388

    .line 1099
    .line 1100
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1101
    .line 1102
    .line 1103
    return-void

    .line 1104
    :pswitch_10
    sget p1, Lflix/com/vision/activities/SettingsActivity;->c2:I

    .line 1105
    .line 1106
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1107
    .line 1108
    .line 1109
    const-string p1, "Clear Cache - "

    .line 1110
    .line 1111
    :try_start_8
    invoke-virtual {v10}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 1112
    .line 1113
    .line 1114
    move-result-object v0

    .line 1115
    invoke-static {v0}, Lflix/com/vision/activities/SettingsActivity;->deleteDir(Ljava/io/File;)Z

    .line 1116
    .line 1117
    .line 1118
    invoke-virtual {v10}, Landroid/content/Context;->getCodeCacheDir()Ljava/io/File;

    .line 1119
    .line 1120
    .line 1121
    move-result-object v0

    .line 1122
    invoke-static {v0}, Lflix/com/vision/activities/SettingsActivity;->deleteDir(Ljava/io/File;)Z

    .line 1123
    .line 1124
    .line 1125
    invoke-virtual {v10}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    .line 1126
    .line 1127
    .line 1128
    move-result-object v0

    .line 1129
    if-eqz v0, :cond_3

    .line 1130
    .line 1131
    invoke-static {v0}, Lflix/com/vision/activities/SettingsActivity;->deleteDir(Ljava/io/File;)Z

    .line 1132
    .line 1133
    .line 1134
    goto :goto_3

    .line 1135
    :catch_8
    move-exception p1

    .line 1136
    goto :goto_4

    .line 1137
    :cond_3
    :goto_3
    invoke-virtual {v10}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 1138
    .line 1139
    .line 1140
    move-result-object v0

    .line 1141
    sget v1, Lflix/com/vision/R$string;->cache_cleared:I

    .line 1142
    .line 1143
    invoke-static {v0, v1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 1144
    .line 1145
    .line 1146
    move-result-object v0

    .line 1147
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1148
    .line 1149
    .line 1150
    iget-object v0, v10, Lflix/com/vision/activities/SettingsActivity;->N:Landroid/widget/TextView;

    .line 1151
    .line 1152
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1153
    .line 1154
    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1155
    .line 1156
    .line 1157
    invoke-virtual {v10}, Lflix/com/vision/activities/SettingsActivity;->getCacheSize()Ljava/lang/String;

    .line 1158
    .line 1159
    .line 1160
    move-result-object p1

    .line 1161
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1162
    .line 1163
    .line 1164
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1165
    .line 1166
    .line 1167
    move-result-object p1

    .line 1168
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    .line 1169
    .line 1170
    .line 1171
    goto :goto_5

    .line 1172
    :goto_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1173
    .line 1174
    .line 1175
    invoke-virtual {v10}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 1176
    .line 1177
    .line 1178
    move-result-object p1

    .line 1179
    const-string v0, "An Error Occurred"

    .line 1180
    .line 1181
    invoke-static {p1, v0, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 1182
    .line 1183
    .line 1184
    move-result-object p1

    .line 1185
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 1186
    .line 1187
    .line 1188
    :goto_5
    return-void

    .line 1189
    :pswitch_11
    sget p1, Lflix/com/vision/activities/SettingsActivity;->c2:I

    .line 1190
    .line 1191
    sget-boolean p1, Lflix/com/vision/api/premiumize/PremiumizeCommon;->b:Z

    .line 1192
    .line 1193
    if-nez p1, :cond_4

    .line 1194
    .line 1195
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1196
    .line 1197
    .line 1198
    new-instance p1, Landroid/content/Intent;

    .line 1199
    .line 1200
    const-class v0, Lflix/com/vision/api/premiumize/PremApiKeyEntryActivity;

    .line 1201
    .line 1202
    invoke-direct {p1, v10, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1203
    .line 1204
    .line 1205
    invoke-virtual {v10, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1206
    .line 1207
    .line 1208
    goto :goto_6

    .line 1209
    :cond_4
    invoke-virtual {v10}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 1210
    .line 1211
    .line 1212
    move-result-object p1

    .line 1213
    invoke-static {v10, v8}, LQ4/d;->newInstance(Landroid/app/Activity;Z)LQ4/d;

    .line 1214
    .line 1215
    .line 1216
    move-result-object v3

    .line 1217
    const-string v4, "Premiumize Logout"

    .line 1218
    .line 1219
    invoke-virtual {v3, v4}, LQ4/d;->setTitle(Ljava/lang/String;)V

    .line 1220
    .line 1221
    .line 1222
    invoke-virtual {v3, v2}, LQ4/d;->setMessage(Ljava/lang/String;)V

    .line 1223
    .line 1224
    .line 1225
    new-instance v2, LA4/q;

    .line 1226
    .line 1227
    invoke-direct {v2, v7}, LA4/q;-><init>(I)V

    .line 1228
    .line 1229
    .line 1230
    invoke-virtual {v3, v1, v2}, LQ4/d;->setButton1(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 1231
    .line 1232
    .line 1233
    new-instance v1, Ly4/W0;

    .line 1234
    .line 1235
    const/16 v2, 0xf

    .line 1236
    .line 1237
    invoke-direct {v1, v10, v2}, Ly4/W0;-><init>(Lflix/com/vision/activities/SettingsActivity;I)V

    .line 1238
    .line 1239
    .line 1240
    invoke-virtual {v3, v0, v1}, LQ4/d;->setButton2(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 1241
    .line 1242
    .line 1243
    :try_start_9
    invoke-virtual {v3, p1, v6}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    .line 1244
    .line 1245
    .line 1246
    goto :goto_6

    .line 1247
    :catch_9
    move-exception p1

    .line 1248
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1249
    .line 1250
    .line 1251
    :goto_6
    return-void

    .line 1252
    :pswitch_12
    iput-boolean v8, v10, Lflix/com/vision/activities/SettingsActivity;->u:Z

    .line 1253
    .line 1254
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 1255
    .line 1256
    .line 1257
    move-result-object p1

    .line 1258
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 1259
    .line 1260
    const-string v0, "clear_history_pending"

    .line 1261
    .line 1262
    invoke-static {p1, v0, v8}, LA/i;->x(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 1263
    .line 1264
    .line 1265
    :try_start_a
    const-string p1, "Search history cleared"

    .line 1266
    .line 1267
    invoke-static {v10, p1, v5, v4, v9}, LN4/a;->Success(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    .line 1268
    .line 1269
    .line 1270
    :catch_a
    return-void

    .line 1271
    :pswitch_13
    sget v0, Lflix/com/vision/activities/SettingsActivity;->c2:I

    .line 1272
    .line 1273
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1274
    .line 1275
    .line 1276
    sget-boolean v0, Lflix/com/vision/App;->I:Z

    .line 1277
    .line 1278
    const-string v1, "subtitle_color"

    .line 1279
    .line 1280
    if-eqz v0, :cond_5

    .line 1281
    .line 1282
    invoke-virtual {v10, v1, v8}, Lflix/com/vision/activities/SettingsActivity;->e(Ljava/lang/String;Z)V

    .line 1283
    .line 1284
    .line 1285
    goto :goto_7

    .line 1286
    :cond_5
    new-instance v0, Ln4/c;

    .line 1287
    .line 1288
    invoke-virtual {v10}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 1289
    .line 1290
    .line 1291
    move-result-object v2

    .line 1292
    invoke-direct {v0, v2}, Ln4/c;-><init>(Landroid/content/Context;)V

    .line 1293
    .line 1294
    .line 1295
    sget v2, Lflix/com/vision/R$array;->sub_colors:I

    .line 1296
    .line 1297
    invoke-virtual {v0, v2}, Ln4/c;->setColors(I)Ln4/c;

    .line 1298
    .line 1299
    .line 1300
    move-result-object v0

    .line 1301
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 1302
    .line 1303
    .line 1304
    move-result-object v2

    .line 1305
    iget-object v2, v2, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 1306
    .line 1307
    sget v3, Lflix/com/vision/R$color;->md_white_1:I

    .line 1308
    .line 1309
    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 1310
    .line 1311
    .line 1312
    move-result v1

    .line 1313
    invoke-virtual {v0, v1}, Ln4/c;->setSelectedColorRes(I)Ln4/c;

    .line 1314
    .line 1315
    .line 1316
    move-result-object v0

    .line 1317
    invoke-virtual {v0, v8}, Ln4/c;->setDismissOnColorSelected(Z)Ln4/c;

    .line 1318
    .line 1319
    .line 1320
    move-result-object v0

    .line 1321
    sget v1, Lflix/com/vision/R$string;->select_font_color_label:I

    .line 1322
    .line 1323
    invoke-virtual {v0, v1}, Ln4/c;->setTitle(I)Ln4/c;

    .line 1324
    .line 1325
    .line 1326
    move-result-object v0

    .line 1327
    invoke-virtual {v0, p1}, Ln4/c;->setOutlineWidth(I)Ln4/c;

    .line 1328
    .line 1329
    .line 1330
    move-result-object p1

    .line 1331
    new-instance v0, Ly4/a1;

    .line 1332
    .line 1333
    invoke-direct {v0, v10, v9}, Ly4/a1;-><init>(Lflix/com/vision/activities/SettingsActivity;I)V

    .line 1334
    .line 1335
    .line 1336
    invoke-virtual {p1, v0}, Ln4/c;->setOnColorSelectedListener(Ln4/d;)Ln4/c;

    .line 1337
    .line 1338
    .line 1339
    move-result-object p1

    .line 1340
    invoke-virtual {p1}, Ln4/c;->build()Lcom/thebluealliance/spectrum/a;

    .line 1341
    .line 1342
    .line 1343
    move-result-object p1

    .line 1344
    invoke-virtual {v10}, Landroidx/fragment/app/H;->getSupportFragmentManager()Landroidx/fragment/app/i0;

    .line 1345
    .line 1346
    .line 1347
    move-result-object v0

    .line 1348
    invoke-virtual {p1, v0, v6}, Landroidx/fragment/app/y;->show(Landroidx/fragment/app/i0;Ljava/lang/String;)V

    .line 1349
    .line 1350
    .line 1351
    :goto_7
    return-void

    .line 1352
    :pswitch_14
    sget v0, Lflix/com/vision/activities/SettingsActivity;->c2:I

    .line 1353
    .line 1354
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1355
    .line 1356
    .line 1357
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 1358
    .line 1359
    .line 1360
    move-result-object v0

    .line 1361
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 1362
    .line 1363
    sget-object v1, Lflix/com/vision/tv/Constant;->b:Ljava/lang/String;

    .line 1364
    .line 1365
    const-string v1, "mouse_toggle_mode"

    .line 1366
    .line 1367
    invoke-interface {v0, v1, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 1368
    .line 1369
    .line 1370
    move-result v0

    .line 1371
    if-eqz v0, :cond_6

    .line 1372
    .line 1373
    invoke-virtual {v10}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 1374
    .line 1375
    .line 1376
    move-result-object p1

    .line 1377
    const-string v0, "Only Applicable for Circle Toggle"

    .line 1378
    .line 1379
    invoke-static {p1, v0, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 1380
    .line 1381
    .line 1382
    move-result-object p1

    .line 1383
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 1384
    .line 1385
    .line 1386
    goto :goto_8

    .line 1387
    :cond_6
    sget-boolean v0, Lflix/com/vision/App;->I:Z

    .line 1388
    .line 1389
    const-string v1, "mouse_toggle_color"

    .line 1390
    .line 1391
    if-eqz v0, :cond_7

    .line 1392
    .line 1393
    invoke-virtual {v10, v1, v9}, Lflix/com/vision/activities/SettingsActivity;->e(Ljava/lang/String;Z)V

    .line 1394
    .line 1395
    .line 1396
    goto :goto_8

    .line 1397
    :cond_7
    new-instance v0, Ln4/c;

    .line 1398
    .line 1399
    invoke-virtual {v10}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 1400
    .line 1401
    .line 1402
    move-result-object v2

    .line 1403
    invoke-direct {v0, v2}, Ln4/c;-><init>(Landroid/content/Context;)V

    .line 1404
    .line 1405
    .line 1406
    sget v2, Lflix/com/vision/R$array;->sub_colors:I

    .line 1407
    .line 1408
    invoke-virtual {v0, v2}, Ln4/c;->setColors(I)Ln4/c;

    .line 1409
    .line 1410
    .line 1411
    move-result-object v0

    .line 1412
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 1413
    .line 1414
    .line 1415
    move-result-object v2

    .line 1416
    iget-object v2, v2, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 1417
    .line 1418
    sget v3, Lflix/com/vision/R$color;->md_deep_orange_500:I

    .line 1419
    .line 1420
    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 1421
    .line 1422
    .line 1423
    move-result v1

    .line 1424
    invoke-virtual {v0, v1}, Ln4/c;->setSelectedColorRes(I)Ln4/c;

    .line 1425
    .line 1426
    .line 1427
    move-result-object v0

    .line 1428
    invoke-virtual {v0, v8}, Ln4/c;->setDismissOnColorSelected(Z)Ln4/c;

    .line 1429
    .line 1430
    .line 1431
    move-result-object v0

    .line 1432
    sget v1, Lflix/com/vision/R$string;->select_font_color_label:I

    .line 1433
    .line 1434
    invoke-virtual {v0, v1}, Ln4/c;->setTitle(I)Ln4/c;

    .line 1435
    .line 1436
    .line 1437
    move-result-object v0

    .line 1438
    invoke-virtual {v0, p1}, Ln4/c;->setOutlineWidth(I)Ln4/c;

    .line 1439
    .line 1440
    .line 1441
    move-result-object p1

    .line 1442
    new-instance v0, Ly4/a1;

    .line 1443
    .line 1444
    invoke-direct {v0, v10, v8}, Ly4/a1;-><init>(Lflix/com/vision/activities/SettingsActivity;I)V

    .line 1445
    .line 1446
    .line 1447
    invoke-virtual {p1, v0}, Ln4/c;->setOnColorSelectedListener(Ln4/d;)Ln4/c;

    .line 1448
    .line 1449
    .line 1450
    move-result-object p1

    .line 1451
    invoke-virtual {p1}, Ln4/c;->build()Lcom/thebluealliance/spectrum/a;

    .line 1452
    .line 1453
    .line 1454
    move-result-object p1

    .line 1455
    invoke-virtual {v10}, Landroidx/fragment/app/H;->getSupportFragmentManager()Landroidx/fragment/app/i0;

    .line 1456
    .line 1457
    .line 1458
    move-result-object v0

    .line 1459
    invoke-virtual {p1, v0, v6}, Landroidx/fragment/app/y;->show(Landroidx/fragment/app/i0;Ljava/lang/String;)V

    .line 1460
    .line 1461
    .line 1462
    :goto_8
    return-void

    .line 1463
    :pswitch_15
    iget-object p1, v10, Lflix/com/vision/activities/SettingsActivity;->A1:Landroid/widget/CheckBox;

    .line 1464
    .line 1465
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 1466
    .line 1467
    .line 1468
    return-void

    .line 1469
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
