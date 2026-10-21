.class public final synthetic Ly4/U0;
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
    iput p2, p0, Ly4/U0;->b:I

    iput-object p1, p0, Ly4/U0;->e:Lflix/com/vision/activities/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 9

    .line 1
    const/4 p1, 0x4

    .line 2
    const-string v0, "subtitle_source_index_2"

    .line 3
    .line 4
    const-string v1, "CANCEL"

    .line 5
    .line 6
    const/16 v2, 0x8

    .line 7
    .line 8
    const-string v3, ""

    .line 9
    .line 10
    const/4 v4, 0x3

    .line 11
    const/4 v5, 0x1

    .line 12
    const/4 v6, 0x0

    .line 13
    iget-object v7, p0, Ly4/U0;->e:Lflix/com/vision/activities/SettingsActivity;

    .line 14
    .line 15
    iget v8, p0, Ly4/U0;->b:I

    .line 16
    .line 17
    packed-switch v8, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    sget p1, Lflix/com/vision/activities/SettingsActivity;->c2:I

    .line 21
    .line 22
    invoke-virtual {v7}, Lflix/com/vision/activities/SettingsActivity;->showReleaseNoteDialog()V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :pswitch_0
    iget-object p1, v7, Lflix/com/vision/activities/SettingsActivity;->Q1:Landroid/widget/CheckBox;

    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :pswitch_1
    iget-object p1, v7, Lflix/com/vision/activities/SettingsActivity;->P1:Landroid/widget/CheckBox;

    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :pswitch_2
    iget-object p1, v7, Lflix/com/vision/activities/SettingsActivity;->G1:Landroid/widget/CheckBox;

    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :pswitch_3
    iget-object p1, v7, Lflix/com/vision/activities/SettingsActivity;->I1:Landroid/widget/CheckBox;

    .line 45
    .line 46
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :pswitch_4
    sget p1, Lflix/com/vision/activities/SettingsActivity;->c2:I

    .line 51
    .line 52
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 60
    .line 61
    const-string v0, "player_index"

    .line 62
    .line 63
    invoke-interface {p1, v0, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    new-instance v0, Le/r;

    .line 68
    .line 69
    new-instance v1, Landroid/view/ContextThemeWrapper;

    .line 70
    .line 71
    sget v2, Lflix/com/vision/R$style;->AlertDialogCustom:I

    .line 72
    .line 73
    invoke-direct {v1, v7, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 74
    .line 75
    .line 76
    invoke-direct {v0, v1}, Le/r;-><init>(Landroid/content/Context;)V

    .line 77
    .line 78
    .line 79
    new-instance v1, Ly4/f1;

    .line 80
    .line 81
    sget v2, Lflix/com/vision/R$layout;->custom_select_dialog_singlechoice:I

    .line 82
    .line 83
    iget-object v3, v7, Lflix/com/vision/activities/SettingsActivity;->w:[Ljava/lang/CharSequence;

    .line 84
    .line 85
    invoke-direct {v1, v7, v2, v3, p1}, Ly4/f1;-><init>(Landroid/content/Context;I[Ljava/lang/CharSequence;I)V

    .line 86
    .line 87
    .line 88
    new-instance v2, Ly4/Y0;

    .line 89
    .line 90
    invoke-direct {v2, v7, v4}, Ly4/Y0;-><init>(Lflix/com/vision/activities/SettingsActivity;I)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v1, p1, v2}, Le/r;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Le/r;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0}, Le/r;->show()Le/s;

    .line 97
    .line 98
    .line 99
    return-void

    .line 100
    :pswitch_5
    iget-object p1, v7, Lflix/com/vision/activities/SettingsActivity;->O1:Landroid/widget/CheckBox;

    .line 101
    .line 102
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 103
    .line 104
    .line 105
    return-void

    .line 106
    :pswitch_6
    iget-object p1, v7, Lflix/com/vision/activities/SettingsActivity;->D1:Landroid/widget/CheckBox;

    .line 107
    .line 108
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 109
    .line 110
    .line 111
    return-void

    .line 112
    :pswitch_7
    iget-object p1, v7, Lflix/com/vision/activities/SettingsActivity;->N1:Landroid/widget/CheckBox;

    .line 113
    .line 114
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 115
    .line 116
    .line 117
    return-void

    .line 118
    :pswitch_8
    iget-object p1, v7, Lflix/com/vision/activities/SettingsActivity;->M1:Landroid/widget/CheckBox;

    .line 119
    .line 120
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 121
    .line 122
    .line 123
    return-void

    .line 124
    :pswitch_9
    iget-object p1, v7, Lflix/com/vision/activities/SettingsActivity;->H1:Landroid/widget/CheckBox;

    .line 125
    .line 126
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 127
    .line 128
    .line 129
    return-void

    .line 130
    :pswitch_a
    iget-object p1, v7, Lflix/com/vision/activities/SettingsActivity;->B1:Landroid/widget/CheckBox;

    .line 131
    .line 132
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 133
    .line 134
    .line 135
    return-void

    .line 136
    :pswitch_b
    iget-object p1, v7, Lflix/com/vision/activities/SettingsActivity;->K1:Landroid/widget/CheckBox;

    .line 137
    .line 138
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 139
    .line 140
    .line 141
    return-void

    .line 142
    :pswitch_c
    iget-object p1, v7, Lflix/com/vision/activities/SettingsActivity;->L1:Landroid/widget/CheckBox;

    .line 143
    .line 144
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 145
    .line 146
    .line 147
    return-void

    .line 148
    :pswitch_d
    iget-object p1, v7, Lflix/com/vision/activities/SettingsActivity;->J1:Landroid/widget/CheckBox;

    .line 149
    .line 150
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 151
    .line 152
    .line 153
    return-void

    .line 154
    :pswitch_e
    sget p1, Lflix/com/vision/activities/SettingsActivity;->c2:I

    .line 155
    .line 156
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 157
    .line 158
    .line 159
    :try_start_0
    invoke-static {v7, v5}, LQ4/d;->newInstance(Landroid/app/Activity;Z)LQ4/d;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    const-string v0, "Check our FAQs on our website flixvision.tv"

    .line 164
    .line 165
    invoke-virtual {p1, v0}, LQ4/d;->setTitle(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    const-string v0, "You can also view them directly here "

    .line 169
    .line 170
    invoke-virtual {p1, v0}, LQ4/d;->setMessage(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    const-string v0, "GOT IT"

    .line 174
    .line 175
    new-instance v1, LA4/o;

    .line 176
    .line 177
    const/16 v2, 0xe

    .line 178
    .line 179
    invoke-direct {v1, p1, v2}, LA4/o;-><init>(LQ4/d;I)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p1, v0, v1}, LQ4/d;->setButton1(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 183
    .line 184
    .line 185
    const-string v0, "OPEN HERE"

    .line 186
    .line 187
    new-instance v1, Ly4/W0;

    .line 188
    .line 189
    const/16 v2, 0x12

    .line 190
    .line 191
    invoke-direct {v1, v7, v2}, Ly4/W0;-><init>(Lflix/com/vision/activities/SettingsActivity;I)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {p1, v0, v1}, LQ4/d;->setButton2(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v7}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    invoke-virtual {p1, v0, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    .line 203
    .line 204
    :catch_0
    return-void

    .line 205
    :pswitch_f
    sget p1, Lflix/com/vision/activities/SettingsActivity;->c2:I

    .line 206
    .line 207
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 208
    .line 209
    .line 210
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 215
    .line 216
    const-string v0, "pref_auto_play_minutes"

    .line 217
    .line 218
    invoke-interface {p1, v0, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 219
    .line 220
    .line 221
    move-result p1

    .line 222
    new-instance v0, Le/r;

    .line 223
    .line 224
    new-instance v1, Landroid/view/ContextThemeWrapper;

    .line 225
    .line 226
    sget v2, Lflix/com/vision/R$style;->AlertDialogCustom:I

    .line 227
    .line 228
    invoke-direct {v1, v7, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 229
    .line 230
    .line 231
    invoke-direct {v0, v1}, Le/r;-><init>(Landroid/content/Context;)V

    .line 232
    .line 233
    .line 234
    new-instance v1, Ly4/f1;

    .line 235
    .line 236
    sget v2, Lflix/com/vision/R$layout;->custom_select_dialog_singlechoice:I

    .line 237
    .line 238
    iget-object v3, v7, Lflix/com/vision/activities/SettingsActivity;->y:[Ljava/lang/CharSequence;

    .line 239
    .line 240
    invoke-direct {v1, v7, v2, v3, p1}, Ly4/f1;-><init>(Landroid/content/Context;I[Ljava/lang/CharSequence;I)V

    .line 241
    .line 242
    .line 243
    new-instance v2, Ly4/Y0;

    .line 244
    .line 245
    const/4 v3, 0x5

    .line 246
    invoke-direct {v2, v7, v3}, Ly4/Y0;-><init>(Lflix/com/vision/activities/SettingsActivity;I)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v0, v1, p1, v2}, Le/r;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Le/r;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v0}, Le/r;->show()Le/s;

    .line 253
    .line 254
    .line 255
    return-void

    .line 256
    :pswitch_10
    iget-object p1, v7, Lflix/com/vision/activities/SettingsActivity;->C1:Landroid/widget/CheckBox;

    .line 257
    .line 258
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 259
    .line 260
    .line 261
    return-void

    .line 262
    :pswitch_11
    sget p1, Lflix/com/vision/activities/SettingsActivity;->c2:I

    .line 263
    .line 264
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 265
    .line 266
    .line 267
    new-instance p1, Landroid/content/Intent;

    .line 268
    .line 269
    const-class v0, Lflix/com/vision/activities/ReleaseHistoryActivity;

    .line 270
    .line 271
    invoke-direct {p1, v7, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v7, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 275
    .line 276
    .line 277
    return-void

    .line 278
    :pswitch_12
    sget p1, Lflix/com/vision/activities/SettingsActivity;->c2:I

    .line 279
    .line 280
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 281
    .line 282
    .line 283
    sget-boolean p1, Lflix/com/vision/api/realdebrid/RealDebridCommon;->m:Z

    .line 284
    .line 285
    if-nez p1, :cond_1

    .line 286
    .line 287
    sget-boolean p1, Lflix/com/vision/api/premiumize/PremiumizeCommon;->b:Z

    .line 288
    .line 289
    if-nez p1, :cond_1

    .line 290
    .line 291
    sget-boolean p1, Lflix/com/vision/api/alldebrid/AllDebridCommon;->f:Z

    .line 292
    .line 293
    if-eqz p1, :cond_0

    .line 294
    .line 295
    goto :goto_0

    .line 296
    :cond_0
    const-string p1, "You have to connect a Premium account first"

    .line 297
    .line 298
    invoke-static {v7, p1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 299
    .line 300
    .line 301
    move-result-object p1

    .line 302
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 303
    .line 304
    .line 305
    goto :goto_1

    .line 306
    :cond_1
    :goto_0
    iget-object p1, v7, Lflix/com/vision/activities/SettingsActivity;->E1:Landroid/widget/CheckBox;

    .line 307
    .line 308
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 309
    .line 310
    .line 311
    :goto_1
    return-void

    .line 312
    :pswitch_13
    iget-object p1, v7, Lflix/com/vision/activities/SettingsActivity;->H0:Landroid/widget/FrameLayout;

    .line 313
    .line 314
    invoke-virtual {p1, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 315
    .line 316
    .line 317
    new-instance p1, Landroid/content/Intent;

    .line 318
    .line 319
    const-class v0, Lflix/com/vision/activities/ModernFilePickerActivity;

    .line 320
    .line 321
    invoke-direct {p1, v7, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 322
    .line 323
    .line 324
    const-string v0, "picker_mode"

    .line 325
    .line 326
    const-string v1, "backup"

    .line 327
    .line 328
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 329
    .line 330
    .line 331
    const/16 v0, 0x1a9b

    .line 332
    .line 333
    invoke-virtual {v7, p1, v0}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 334
    .line 335
    .line 336
    new-instance p1, Landroid/os/Handler;

    .line 337
    .line 338
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 339
    .line 340
    .line 341
    new-instance v0, Ly4/e1;

    .line 342
    .line 343
    invoke-direct {v0, v7}, Ly4/e1;-><init>(Lflix/com/vision/activities/SettingsActivity;)V

    .line 344
    .line 345
    .line 346
    const-wide/16 v1, 0xfa0

    .line 347
    .line 348
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 349
    .line 350
    .line 351
    return-void

    .line 352
    :pswitch_14
    sget p1, Lflix/com/vision/activities/SettingsActivity;->c2:I

    .line 353
    .line 354
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 355
    .line 356
    .line 357
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 358
    .line 359
    .line 360
    move-result-object p1

    .line 361
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 362
    .line 363
    const-string v0, "trakt_user_logged_in"

    .line 364
    .line 365
    invoke-interface {p1, v0, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 366
    .line 367
    .line 368
    move-result p1

    .line 369
    if-eqz p1, :cond_2

    .line 370
    .line 371
    new-instance p1, Landroid/content/Intent;

    .line 372
    .line 373
    const-class v0, Lflix/com/vision/activities/TraktTvConfigActivity;

    .line 374
    .line 375
    invoke-direct {p1, v7, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 376
    .line 377
    .line 378
    invoke-virtual {v7, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 379
    .line 380
    .line 381
    goto :goto_2

    .line 382
    :cond_2
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 383
    .line 384
    .line 385
    move-result-object p1

    .line 386
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 387
    .line 388
    invoke-interface {p1, v0, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 389
    .line 390
    .line 391
    move-result p1

    .line 392
    if-eqz p1, :cond_3

    .line 393
    .line 394
    new-instance p1, Landroid/content/Intent;

    .line 395
    .line 396
    const-class v0, Lflix/com/vision/activities/TraktActivity;

    .line 397
    .line 398
    invoke-direct {p1, v7, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 399
    .line 400
    .line 401
    invoke-virtual {v7, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 402
    .line 403
    .line 404
    goto :goto_2

    .line 405
    :cond_3
    invoke-virtual {v7}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 406
    .line 407
    .line 408
    move-result-object p1

    .line 409
    invoke-static {v7, v6}, LQ4/d;->newInstance(Landroid/app/Activity;Z)LQ4/d;

    .line 410
    .line 411
    .line 412
    move-result-object v0

    .line 413
    sget v4, Lflix/com/vision/R$string;->trakt_tv_label:I

    .line 414
    .line 415
    invoke-virtual {v7, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object v4

    .line 419
    invoke-virtual {v0, v4}, LQ4/d;->setTitle(Ljava/lang/String;)V

    .line 420
    .line 421
    .line 422
    invoke-virtual {v0, v6}, Landroid/app/DialogFragment;->setCancelable(Z)V

    .line 423
    .line 424
    .line 425
    sget v4, Lflix/com/vision/R$string;->connect_with_trakt_tv_enjoy_benefits_mess:I

    .line 426
    .line 427
    invoke-virtual {v7, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 428
    .line 429
    .line 430
    move-result-object v4

    .line 431
    invoke-virtual {v0, v4}, LQ4/d;->setMessage(Ljava/lang/String;)V

    .line 432
    .line 433
    .line 434
    new-instance v4, LA4/q;

    .line 435
    .line 436
    invoke-direct {v4, v2}, LA4/q;-><init>(I)V

    .line 437
    .line 438
    .line 439
    invoke-virtual {v0, v1, v4}, LQ4/d;->setButton1(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 440
    .line 441
    .line 442
    sget v1, Lflix/com/vision/R$string;->action_sign_in:I

    .line 443
    .line 444
    invoke-virtual {v7, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 445
    .line 446
    .line 447
    move-result-object v1

    .line 448
    new-instance v2, Ly4/W0;

    .line 449
    .line 450
    const/16 v4, 0x14

    .line 451
    .line 452
    invoke-direct {v2, v7, v4}, Ly4/W0;-><init>(Lflix/com/vision/activities/SettingsActivity;I)V

    .line 453
    .line 454
    .line 455
    invoke-virtual {v0, v1, v2}, LQ4/d;->setButton2(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 456
    .line 457
    .line 458
    :try_start_1
    invoke-virtual {v0, p1, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 459
    .line 460
    .line 461
    goto :goto_2

    .line 462
    :catch_1
    move-exception p1

    .line 463
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 464
    .line 465
    .line 466
    :goto_2
    return-void

    .line 467
    :pswitch_15
    sget p1, Lflix/com/vision/activities/SettingsActivity;->c2:I

    .line 468
    .line 469
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 470
    .line 471
    .line 472
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 473
    .line 474
    .line 475
    move-result-object p1

    .line 476
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 477
    .line 478
    const-string v0, "pref_adult_zone_pin_set"

    .line 479
    .line 480
    invoke-interface {p1, v0, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 481
    .line 482
    .line 483
    move-result p1

    .line 484
    if-eqz p1, :cond_4

    .line 485
    .line 486
    new-instance p1, Landroid/content/Intent;

    .line 487
    .line 488
    const-class v0, Lflix/com/vision/activities/adult/AdultZonePINEntryActivity;

    .line 489
    .line 490
    invoke-direct {p1, v7, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 491
    .line 492
    .line 493
    const-string v0, "isPINChange"

    .line 494
    .line 495
    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 496
    .line 497
    .line 498
    invoke-virtual {v7, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 499
    .line 500
    .line 501
    goto :goto_3

    .line 502
    :cond_4
    new-instance p1, Landroid/content/Intent;

    .line 503
    .line 504
    const-class v0, Lflix/com/vision/activities/adult/AdultPINSetupActivity;

    .line 505
    .line 506
    invoke-direct {p1, v7, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 507
    .line 508
    .line 509
    invoke-virtual {v7, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 510
    .line 511
    .line 512
    :goto_3
    return-void

    .line 513
    :pswitch_16
    sget p1, Lflix/com/vision/activities/SettingsActivity;->c2:I

    .line 514
    .line 515
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 516
    .line 517
    .line 518
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 519
    .line 520
    .line 521
    move-result-object p1

    .line 522
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 523
    .line 524
    const-string v0, "pref_adult_zone_player"

    .line 525
    .line 526
    invoke-interface {p1, v0, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 527
    .line 528
    .line 529
    move-result p1

    .line 530
    new-instance v0, Le/r;

    .line 531
    .line 532
    new-instance v1, Landroid/view/ContextThemeWrapper;

    .line 533
    .line 534
    sget v2, Lflix/com/vision/R$style;->AlertDialogCustom:I

    .line 535
    .line 536
    invoke-direct {v1, v7, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 537
    .line 538
    .line 539
    invoke-direct {v0, v1}, Le/r;-><init>(Landroid/content/Context;)V

    .line 540
    .line 541
    .line 542
    new-instance v1, Ly4/f1;

    .line 543
    .line 544
    sget v2, Lflix/com/vision/R$layout;->custom_select_dialog_singlechoice:I

    .line 545
    .line 546
    iget-object v3, v7, Lflix/com/vision/activities/SettingsActivity;->w:[Ljava/lang/CharSequence;

    .line 547
    .line 548
    invoke-direct {v1, v7, v2, v3, p1}, Ly4/f1;-><init>(Landroid/content/Context;I[Ljava/lang/CharSequence;I)V

    .line 549
    .line 550
    .line 551
    new-instance v2, Ly4/Y0;

    .line 552
    .line 553
    const/4 v3, 0x2

    .line 554
    invoke-direct {v2, v7, v3}, Ly4/Y0;-><init>(Lflix/com/vision/activities/SettingsActivity;I)V

    .line 555
    .line 556
    .line 557
    invoke-virtual {v0, v1, p1, v2}, Le/r;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Le/r;

    .line 558
    .line 559
    .line 560
    invoke-virtual {v0}, Le/r;->show()Le/s;

    .line 561
    .line 562
    .line 563
    return-void

    .line 564
    :pswitch_17
    sget p1, Lflix/com/vision/activities/SettingsActivity;->c2:I

    .line 565
    .line 566
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 567
    .line 568
    .line 569
    sget-boolean p1, Lflix/com/vision/api/realdebrid/RealDebridCommon;->m:Z

    .line 570
    .line 571
    if-nez p1, :cond_5

    .line 572
    .line 573
    new-instance p1, Landroid/content/Intent;

    .line 574
    .line 575
    const-class v0, Lflix/com/vision/api/realdebrid/RealDebridLoginActivity;

    .line 576
    .line 577
    invoke-direct {p1, v7, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 578
    .line 579
    .line 580
    invoke-virtual {v7, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 581
    .line 582
    .line 583
    goto :goto_4

    .line 584
    :cond_5
    invoke-virtual {v7}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 585
    .line 586
    .line 587
    move-result-object p1

    .line 588
    invoke-static {v7, v5}, LQ4/d;->newInstance(Landroid/app/Activity;Z)LQ4/d;

    .line 589
    .line 590
    .line 591
    move-result-object v0

    .line 592
    const-string v4, "Real Debrid Logout"

    .line 593
    .line 594
    invoke-virtual {v0, v4}, LQ4/d;->setTitle(Ljava/lang/String;)V

    .line 595
    .line 596
    .line 597
    const-string v4, "Do you really want to unlink your Account ?"

    .line 598
    .line 599
    invoke-virtual {v0, v4}, LQ4/d;->setMessage(Ljava/lang/String;)V

    .line 600
    .line 601
    .line 602
    new-instance v4, LA4/q;

    .line 603
    .line 604
    invoke-direct {v4, v2}, LA4/q;-><init>(I)V

    .line 605
    .line 606
    .line 607
    invoke-virtual {v0, v1, v4}, LQ4/d;->setButton1(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 608
    .line 609
    .line 610
    new-instance v1, Ly4/W0;

    .line 611
    .line 612
    const/16 v2, 0x11

    .line 613
    .line 614
    invoke-direct {v1, v7, v2}, Ly4/W0;-><init>(Lflix/com/vision/activities/SettingsActivity;I)V

    .line 615
    .line 616
    .line 617
    const-string v2, "YES, LOGOUT"

    .line 618
    .line 619
    invoke-virtual {v0, v2, v1}, LQ4/d;->setButton2(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 620
    .line 621
    .line 622
    :try_start_2
    invoke-virtual {v0, p1, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 623
    .line 624
    .line 625
    goto :goto_4

    .line 626
    :catch_2
    move-exception p1

    .line 627
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 628
    .line 629
    .line 630
    :goto_4
    return-void

    .line 631
    :pswitch_18
    sget p1, Lflix/com/vision/activities/SettingsActivity;->c2:I

    .line 632
    .line 633
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 634
    .line 635
    .line 636
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 637
    .line 638
    .line 639
    move-result-object p1

    .line 640
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 641
    .line 642
    invoke-interface {p1, v0, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 643
    .line 644
    .line 645
    move-result p1

    .line 646
    new-instance v0, Le/r;

    .line 647
    .line 648
    new-instance v1, Landroid/view/ContextThemeWrapper;

    .line 649
    .line 650
    sget v2, Lflix/com/vision/R$style;->AlertDialogCustom:I

    .line 651
    .line 652
    invoke-direct {v1, v7, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 653
    .line 654
    .line 655
    invoke-direct {v0, v1}, Le/r;-><init>(Landroid/content/Context;)V

    .line 656
    .line 657
    .line 658
    new-instance v1, Ly4/f1;

    .line 659
    .line 660
    sget v2, Lflix/com/vision/R$layout;->custom_select_dialog_singlechoice:I

    .line 661
    .line 662
    iget-object v3, v7, Lflix/com/vision/activities/SettingsActivity;->z:[Ljava/lang/CharSequence;

    .line 663
    .line 664
    invoke-direct {v1, v7, v2, v3, p1}, Ly4/f1;-><init>(Landroid/content/Context;I[Ljava/lang/CharSequence;I)V

    .line 665
    .line 666
    .line 667
    new-instance v2, Ly4/Y0;

    .line 668
    .line 669
    const/4 v3, 0x7

    .line 670
    invoke-direct {v2, v7, v3}, Ly4/Y0;-><init>(Lflix/com/vision/activities/SettingsActivity;I)V

    .line 671
    .line 672
    .line 673
    invoke-virtual {v0, v1, p1, v2}, Le/r;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Le/r;

    .line 674
    .line 675
    .line 676
    invoke-virtual {v0}, Le/r;->show()Le/s;

    .line 677
    .line 678
    .line 679
    return-void

    .line 680
    :pswitch_19
    sget p1, Lflix/com/vision/activities/SettingsActivity;->c2:I

    .line 681
    .line 682
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 683
    .line 684
    .line 685
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 686
    .line 687
    .line 688
    move-result-object p1

    .line 689
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 690
    .line 691
    const-string v0, "pref_subtitle_encoding_index"

    .line 692
    .line 693
    invoke-interface {p1, v0, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 694
    .line 695
    .line 696
    move-result p1

    .line 697
    new-instance v0, Le/r;

    .line 698
    .line 699
    new-instance v1, Landroid/view/ContextThemeWrapper;

    .line 700
    .line 701
    sget v2, Lflix/com/vision/R$style;->AlertDialogCustom:I

    .line 702
    .line 703
    invoke-direct {v1, v7, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 704
    .line 705
    .line 706
    invoke-direct {v0, v1}, Le/r;-><init>(Landroid/content/Context;)V

    .line 707
    .line 708
    .line 709
    const-string v1, "Change Subtitle Encoding"

    .line 710
    .line 711
    invoke-virtual {v0, v1}, Le/r;->setTitle(Ljava/lang/CharSequence;)Le/r;

    .line 712
    .line 713
    .line 714
    new-instance v1, Ly4/f1;

    .line 715
    .line 716
    sget v2, Lflix/com/vision/R$layout;->custom_select_dialog_singlechoice:I

    .line 717
    .line 718
    iget-object v3, v7, Lflix/com/vision/activities/SettingsActivity;->a2:[Ljava/lang/CharSequence;

    .line 719
    .line 720
    invoke-direct {v1, v7, v2, v3, p1}, Ly4/f1;-><init>(Landroid/content/Context;I[Ljava/lang/CharSequence;I)V

    .line 721
    .line 722
    .line 723
    new-instance v2, Ly4/Y0;

    .line 724
    .line 725
    const/4 v3, 0x6

    .line 726
    invoke-direct {v2, v7, v3}, Ly4/Y0;-><init>(Lflix/com/vision/activities/SettingsActivity;I)V

    .line 727
    .line 728
    .line 729
    invoke-virtual {v0, v1, p1, v2}, Le/r;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Le/r;

    .line 730
    .line 731
    .line 732
    invoke-virtual {v0}, Le/r;->show()Le/s;

    .line 733
    .line 734
    .line 735
    return-void

    .line 736
    :pswitch_1a
    sget p1, Lflix/com/vision/activities/SettingsActivity;->c2:I

    .line 737
    .line 738
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 739
    .line 740
    .line 741
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 742
    .line 743
    .line 744
    move-result-object p1

    .line 745
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 746
    .line 747
    const-string v0, "pref_subtitle_size"

    .line 748
    .line 749
    invoke-interface {p1, v0, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 750
    .line 751
    .line 752
    move-result p1

    .line 753
    new-instance v0, Le/r;

    .line 754
    .line 755
    new-instance v1, Landroid/view/ContextThemeWrapper;

    .line 756
    .line 757
    sget v2, Lflix/com/vision/R$style;->AlertDialogCustom:I

    .line 758
    .line 759
    invoke-direct {v1, v7, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 760
    .line 761
    .line 762
    invoke-direct {v0, v1}, Le/r;-><init>(Landroid/content/Context;)V

    .line 763
    .line 764
    .line 765
    const-string v1, "Change Subtitle Size"

    .line 766
    .line 767
    invoke-virtual {v0, v1}, Le/r;->setTitle(Ljava/lang/CharSequence;)Le/r;

    .line 768
    .line 769
    .line 770
    new-instance v1, Ly4/f1;

    .line 771
    .line 772
    sget v2, Lflix/com/vision/R$layout;->custom_select_dialog_singlechoice:I

    .line 773
    .line 774
    iget-object v3, v7, Lflix/com/vision/activities/SettingsActivity;->Z1:[Ljava/lang/CharSequence;

    .line 775
    .line 776
    invoke-direct {v1, v7, v2, v3, p1}, Ly4/f1;-><init>(Landroid/content/Context;I[Ljava/lang/CharSequence;I)V

    .line 777
    .line 778
    .line 779
    new-instance v2, Ly4/Y0;

    .line 780
    .line 781
    invoke-direct {v2, v7, v6}, Ly4/Y0;-><init>(Lflix/com/vision/activities/SettingsActivity;I)V

    .line 782
    .line 783
    .line 784
    invoke-virtual {v0, v1, p1, v2}, Le/r;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Le/r;

    .line 785
    .line 786
    .line 787
    invoke-virtual {v0}, Le/r;->show()Le/s;

    .line 788
    .line 789
    .line 790
    return-void

    .line 791
    :pswitch_1b
    iget-object p1, v7, Lflix/com/vision/activities/SettingsActivity;->B:Landroid/widget/ToggleButton;

    .line 792
    .line 793
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 794
    .line 795
    .line 796
    return-void

    .line 797
    :pswitch_1c
    sget v1, Lflix/com/vision/activities/SettingsActivity;->c2:I

    .line 798
    .line 799
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 800
    .line 801
    .line 802
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 803
    .line 804
    .line 805
    move-result-object v1

    .line 806
    iget-object v1, v1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 807
    .line 808
    invoke-interface {v1, v0, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 809
    .line 810
    .line 811
    move-result v0

    .line 812
    if-nez v0, :cond_6

    .line 813
    .line 814
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 815
    .line 816
    .line 817
    move-result-object v0

    .line 818
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 819
    .line 820
    const-string v1, "sub_lang_index_1"

    .line 821
    .line 822
    const/16 v2, 0x13

    .line 823
    .line 824
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 825
    .line 826
    .line 827
    move-result v0

    .line 828
    new-instance v1, Le/r;

    .line 829
    .line 830
    new-instance v2, Landroid/view/ContextThemeWrapper;

    .line 831
    .line 832
    sget v3, Lflix/com/vision/R$style;->AlertDialogCustom:I

    .line 833
    .line 834
    invoke-direct {v2, v7, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 835
    .line 836
    .line 837
    invoke-direct {v1, v2}, Le/r;-><init>(Landroid/content/Context;)V

    .line 838
    .line 839
    .line 840
    new-instance v2, Ly4/f1;

    .line 841
    .line 842
    sget v3, Lflix/com/vision/R$layout;->custom_select_dialog_singlechoice:I

    .line 843
    .line 844
    iget-object v4, v7, Lflix/com/vision/activities/SettingsActivity;->Y1:[Ljava/lang/String;

    .line 845
    .line 846
    invoke-direct {v2, v7, v3, v4, v0}, Ly4/f1;-><init>(Landroid/content/Context;I[Ljava/lang/CharSequence;I)V

    .line 847
    .line 848
    .line 849
    new-instance v3, Ly4/Y0;

    .line 850
    .line 851
    invoke-direct {v3, v7, v5}, Ly4/Y0;-><init>(Lflix/com/vision/activities/SettingsActivity;I)V

    .line 852
    .line 853
    .line 854
    invoke-virtual {v1, v2, v0, v3}, Le/r;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Le/r;

    .line 855
    .line 856
    .line 857
    new-instance v0, LB4/c;

    .line 858
    .line 859
    invoke-direct {v0, p1}, LB4/c;-><init>(I)V

    .line 860
    .line 861
    .line 862
    invoke-virtual {v1, v0}, Le/r;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Le/r;

    .line 863
    .line 864
    .line 865
    invoke-virtual {v1}, Le/r;->show()Le/s;

    .line 866
    .line 867
    .line 868
    goto/16 :goto_8

    .line 869
    .line 870
    :cond_6
    iget-object v0, v7, Lflix/com/vision/activities/SettingsActivity;->e:Ljava/util/ArrayList;

    .line 871
    .line 872
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 873
    .line 874
    .line 875
    move-result v0

    .line 876
    new-array v0, v0, [Ljava/lang/CharSequence;

    .line 877
    .line 878
    iget-object v1, v7, Lflix/com/vision/activities/SettingsActivity;->e:Ljava/util/ArrayList;

    .line 879
    .line 880
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 881
    .line 882
    .line 883
    move-result v1

    .line 884
    new-array v1, v1, [Z

    .line 885
    .line 886
    move v2, v6

    .line 887
    :goto_5
    iget-object v3, v7, Lflix/com/vision/activities/SettingsActivity;->e:Ljava/util/ArrayList;

    .line 888
    .line 889
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 890
    .line 891
    .line 892
    move-result v3

    .line 893
    if-ge v2, v3, :cond_7

    .line 894
    .line 895
    :try_start_3
    iget-object v3, v7, Lflix/com/vision/activities/SettingsActivity;->e:Ljava/util/ArrayList;

    .line 896
    .line 897
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 898
    .line 899
    .line 900
    move-result-object v3

    .line 901
    check-cast v3, Ljava/lang/String;

    .line 902
    .line 903
    const-string v8, "--"

    .line 904
    .line 905
    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 906
    .line 907
    .line 908
    move-result-object v3

    .line 909
    array-length v8, v3

    .line 910
    sub-int/2addr v8, v5

    .line 911
    aget-object v3, v3, v8

    .line 912
    .line 913
    aput-object v3, v0, v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 914
    .line 915
    goto :goto_6

    .line 916
    :catch_3
    move-exception v3

    .line 917
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 918
    .line 919
    .line 920
    iget-object v3, v7, Lflix/com/vision/activities/SettingsActivity;->e:Ljava/util/ArrayList;

    .line 921
    .line 922
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 923
    .line 924
    .line 925
    move-result-object v3

    .line 926
    check-cast v3, Ljava/lang/CharSequence;

    .line 927
    .line 928
    aput-object v3, v0, v2

    .line 929
    .line 930
    :goto_6
    add-int/2addr v2, v5

    .line 931
    goto :goto_5

    .line 932
    :cond_7
    new-instance v2, Ljava/util/HashSet;

    .line 933
    .line 934
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 935
    .line 936
    .line 937
    const-string v3, "eng--English"

    .line 938
    .line 939
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 940
    .line 941
    .line 942
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 943
    .line 944
    .line 945
    move-result-object v3

    .line 946
    iget-object v3, v3, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 947
    .line 948
    const-string v8, "prefs_sub_lang_set_1"

    .line 949
    .line 950
    invoke-interface {v3, v8, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    .line 951
    .line 952
    .line 953
    move-result-object v2

    .line 954
    :goto_7
    iget-object v3, v7, Lflix/com/vision/activities/SettingsActivity;->e:Ljava/util/ArrayList;

    .line 955
    .line 956
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 957
    .line 958
    .line 959
    move-result v3

    .line 960
    if-ge v6, v3, :cond_8

    .line 961
    .line 962
    iget-object v3, v7, Lflix/com/vision/activities/SettingsActivity;->e:Ljava/util/ArrayList;

    .line 963
    .line 964
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 965
    .line 966
    .line 967
    move-result-object v3

    .line 968
    check-cast v3, Ljava/lang/String;

    .line 969
    .line 970
    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 971
    .line 972
    .line 973
    move-result v3

    .line 974
    aput-boolean v3, v1, v6

    .line 975
    .line 976
    add-int/2addr v6, v5

    .line 977
    goto :goto_7

    .line 978
    :cond_8
    new-instance v2, Le/r;

    .line 979
    .line 980
    invoke-direct {v2, v7}, Le/r;-><init>(Landroid/content/Context;)V

    .line 981
    .line 982
    .line 983
    const-string v3, "Subtitles Languages"

    .line 984
    .line 985
    invoke-virtual {v2, v3}, Le/r;->setTitle(Ljava/lang/CharSequence;)Le/r;

    .line 986
    .line 987
    .line 988
    new-instance v3, Ly4/c1;

    .line 989
    .line 990
    invoke-direct {v3, v7, v1}, Ly4/c1;-><init>(Lflix/com/vision/activities/SettingsActivity;[Z)V

    .line 991
    .line 992
    .line 993
    invoke-virtual {v2, v0, v1, v3}, Le/r;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Le/r;

    .line 994
    .line 995
    .line 996
    sget v0, Lflix/com/vision/R$string;->ok_label:I

    .line 997
    .line 998
    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 999
    .line 1000
    .line 1001
    move-result-object v0

    .line 1002
    new-instance v1, Ly4/Z;

    .line 1003
    .line 1004
    invoke-direct {v1, v4}, Ly4/Z;-><init>(I)V

    .line 1005
    .line 1006
    .line 1007
    invoke-virtual {v2, v0, v1}, Le/r;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Le/r;

    .line 1008
    .line 1009
    .line 1010
    new-instance v0, LB4/c;

    .line 1011
    .line 1012
    invoke-direct {v0, p1}, LB4/c;-><init>(I)V

    .line 1013
    .line 1014
    .line 1015
    invoke-virtual {v2, v0}, Le/r;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Le/r;

    .line 1016
    .line 1017
    .line 1018
    invoke-virtual {v2}, Le/r;->show()Le/s;

    .line 1019
    .line 1020
    .line 1021
    :goto_8
    return-void

    .line 1022
    nop

    .line 1023
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
