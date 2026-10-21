.class public final synthetic LB4/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Lflix/com/vision/activities/player/SimpleVideoPlayer;


# direct methods
.method public synthetic constructor <init>(Lflix/com/vision/activities/player/SimpleVideoPlayer;I)V
    .locals 0

    .line 1
    iput p2, p0, LB4/q;->b:I

    iput-object p1, p0, LB4/q;->e:Lflix/com/vision/activities/player/SimpleVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    const-class p1, Lflix/com/vision/activities/SettingsActivity;

    .line 2
    .line 3
    const/16 v0, 0x30

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const-string v2, ""

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    const/4 v4, 0x1

    .line 10
    iget-object v5, p0, LB4/q;->e:Lflix/com/vision/activities/player/SimpleVideoPlayer;

    .line 11
    .line 12
    iget v6, p0, LB4/q;->b:I

    .line 13
    .line 14
    packed-switch v6, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    sget-boolean p1, Lflix/com/vision/activities/player/SimpleVideoPlayer;->Q0:Z

    .line 18
    .line 19
    invoke-virtual {v5, v4}, Lflix/com/vision/activities/player/SimpleVideoPlayer;->k(Z)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :pswitch_0
    sget-boolean p1, Lflix/com/vision/activities/player/SimpleVideoPlayer;->Q0:Z

    .line 24
    .line 25
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 33
    .line 34
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    const-string v0, "pref_sub_auto_dl"

    .line 39
    .line 40
    invoke-interface {p1, v0, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v5, v4}, Lflix/com/vision/activities/player/SimpleVideoPlayer;->k(Z)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :pswitch_1
    sget-boolean p1, Lflix/com/vision/activities/player/SimpleVideoPlayer;->Q0:Z

    .line 52
    .line 53
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 61
    .line 62
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    iget-object v0, v5, Lflix/com/vision/activities/player/SimpleVideoPlayer;->Y:Ljava/lang/String;

    .line 67
    .line 68
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :pswitch_2
    iget p1, v5, Lflix/com/vision/activities/player/SimpleVideoPlayer;->m0:I

    .line 77
    .line 78
    const/16 v0, 0x1388

    .line 79
    .line 80
    if-le p1, v0, :cond_1

    .line 81
    .line 82
    iget-object p1, v5, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 83
    .line 84
    invoke-virtual {p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->isPlaying()Z

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    if-eqz p1, :cond_0

    .line 89
    .line 90
    :try_start_0
    iget-object p1, v5, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 91
    .line 92
    iget v1, v5, Lflix/com/vision/activities/player/SimpleVideoPlayer;->m0:I

    .line 93
    .line 94
    sub-int/2addr v1, v0

    .line 95
    int-to-long v0, v1

    .line 96
    invoke-virtual {p1, v0, v1}, Lflix/com/vision/bvp/BetterVideoPlayer;->seekTo(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_0
    iput-boolean v4, v5, Lflix/com/vision/activities/player/SimpleVideoPlayer;->l0:Z

    .line 101
    .line 102
    :catch_0
    :cond_1
    :goto_0
    return-void

    .line 103
    :pswitch_3
    sget-boolean p1, Lflix/com/vision/activities/player/SimpleVideoPlayer;->Q0:Z

    .line 104
    .line 105
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 110
    .line 111
    const-string v0, "pref_subtitle_encoding_index"

    .line 112
    .line 113
    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    new-instance v0, Le/r;

    .line 118
    .line 119
    new-instance v1, Landroid/view/ContextThemeWrapper;

    .line 120
    .line 121
    sget v2, Lflix/com/vision/R$style;->AlertDialogCustom:I

    .line 122
    .line 123
    invoke-direct {v1, v5, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 124
    .line 125
    .line 126
    invoke-direct {v0, v1}, Le/r;-><init>(Landroid/content/Context;)V

    .line 127
    .line 128
    .line 129
    const-string v1, "Change Subtitle Encoding"

    .line 130
    .line 131
    invoke-virtual {v0, v1}, Le/r;->setTitle(Ljava/lang/CharSequence;)Le/r;

    .line 132
    .line 133
    .line 134
    new-instance v1, Ly4/f1;

    .line 135
    .line 136
    sget v2, Lflix/com/vision/R$layout;->custom_select_dialog_singlechoice:I

    .line 137
    .line 138
    iget-object v3, v5, Lflix/com/vision/activities/player/SimpleVideoPlayer;->N0:[Ljava/lang/CharSequence;

    .line 139
    .line 140
    invoke-direct {v1, v5, v2, v3, p1}, Ly4/f1;-><init>(Landroid/content/Context;I[Ljava/lang/CharSequence;I)V

    .line 141
    .line 142
    .line 143
    new-instance v2, LB4/t;

    .line 144
    .line 145
    const/4 v3, 0x2

    .line 146
    invoke-direct {v2, v5, v3}, LB4/t;-><init>(Lflix/com/vision/activities/player/SimpleVideoPlayer;I)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0, v1, p1, v2}, Le/r;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Le/r;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0}, Le/r;->show()Le/s;

    .line 153
    .line 154
    .line 155
    return-void

    .line 156
    :pswitch_4
    sget-boolean p1, Lflix/com/vision/activities/player/SimpleVideoPlayer;->Q0:Z

    .line 157
    .line 158
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 163
    .line 164
    const-string v0, "pref_subtitle_size"

    .line 165
    .line 166
    const/4 v1, 0x3

    .line 167
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 168
    .line 169
    .line 170
    move-result p1

    .line 171
    new-instance v0, Le/r;

    .line 172
    .line 173
    new-instance v1, Landroid/view/ContextThemeWrapper;

    .line 174
    .line 175
    sget v2, Lflix/com/vision/R$style;->AlertDialogCustom:I

    .line 176
    .line 177
    invoke-direct {v1, v5, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 178
    .line 179
    .line 180
    invoke-direct {v0, v1}, Le/r;-><init>(Landroid/content/Context;)V

    .line 181
    .line 182
    .line 183
    const-string v1, "Change Subtitle Size"

    .line 184
    .line 185
    invoke-virtual {v0, v1}, Le/r;->setTitle(Ljava/lang/CharSequence;)Le/r;

    .line 186
    .line 187
    .line 188
    new-instance v1, Ly4/f1;

    .line 189
    .line 190
    sget v2, Lflix/com/vision/R$layout;->custom_select_dialog_singlechoice:I

    .line 191
    .line 192
    iget-object v3, v5, Lflix/com/vision/activities/player/SimpleVideoPlayer;->M0:[Ljava/lang/CharSequence;

    .line 193
    .line 194
    invoke-direct {v1, v5, v2, v3, p1}, Ly4/f1;-><init>(Landroid/content/Context;I[Ljava/lang/CharSequence;I)V

    .line 195
    .line 196
    .line 197
    new-instance v2, LB4/t;

    .line 198
    .line 199
    invoke-direct {v2, v5, v4}, LB4/t;-><init>(Lflix/com/vision/activities/player/SimpleVideoPlayer;I)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v0, v1, p1, v2}, Le/r;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Le/r;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v0}, Le/r;->show()Le/s;

    .line 206
    .line 207
    .line 208
    return-void

    .line 209
    :pswitch_5
    iget-object p1, v5, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 210
    .line 211
    invoke-static {p1}, LQ4/g;->newInstance(Lflix/com/vision/bvp/BetterVideoPlayer;)LQ4/g;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    :try_start_1
    invoke-virtual {v5}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    invoke-virtual {p1, v0, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 220
    .line 221
    .line 222
    goto :goto_1

    .line 223
    :catch_1
    move-exception p1

    .line 224
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 225
    .line 226
    .line 227
    :goto_1
    return-void

    .line 228
    :pswitch_6
    sget-boolean p1, Lflix/com/vision/activities/player/SimpleVideoPlayer;->Q0:Z

    .line 229
    .line 230
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 231
    .line 232
    .line 233
    new-instance p1, Landroid/content/Intent;

    .line 234
    .line 235
    const-class v0, Lflix/com/vision/activities/ModernFilePickerActivity;

    .line 236
    .line 237
    invoke-direct {p1, v5, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 238
    .line 239
    .line 240
    const-string v0, "picker_mode"

    .line 241
    .line 242
    const-string v1, "subtitle"

    .line 243
    .line 244
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 245
    .line 246
    .line 247
    const/16 v0, 0x3039

    .line 248
    .line 249
    invoke-virtual {v5, p1, v0}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 250
    .line 251
    .line 252
    return-void

    .line 253
    :pswitch_7
    sget-boolean p1, Lflix/com/vision/activities/player/SimpleVideoPlayer;->Q0:Z

    .line 254
    .line 255
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 256
    .line 257
    .line 258
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 259
    .line 260
    .line 261
    move-result-object p1

    .line 262
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 263
    .line 264
    const-string v0, "subtitle_message_shown4"

    .line 265
    .line 266
    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 267
    .line 268
    .line 269
    move-result p1

    .line 270
    if-nez p1, :cond_2

    .line 271
    .line 272
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 273
    .line 274
    .line 275
    move-result-object p1

    .line 276
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 277
    .line 278
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 279
    .line 280
    .line 281
    move-result-object p1

    .line 282
    invoke-interface {p1, v0, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 283
    .line 284
    .line 285
    move-result-object p1

    .line 286
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 287
    .line 288
    .line 289
    invoke-virtual {v5}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 290
    .line 291
    .line 292
    move-result-object p1

    .line 293
    invoke-static {v5, v4}, LQ4/d;->newInstance(Landroid/app/Activity;Z)LQ4/d;

    .line 294
    .line 295
    .line 296
    move-result-object v0

    .line 297
    new-instance v1, LB4/q;

    .line 298
    .line 299
    const/16 v3, 0x14

    .line 300
    .line 301
    invoke-direct {v1, v5, v3}, LB4/q;-><init>(Lflix/com/vision/activities/player/SimpleVideoPlayer;I)V

    .line 302
    .line 303
    .line 304
    const-string v3, "Activate"

    .line 305
    .line 306
    invoke-virtual {v0, v3, v1}, LQ4/d;->setButton1(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 307
    .line 308
    .line 309
    new-instance v1, LB4/q;

    .line 310
    .line 311
    const/16 v3, 0x15

    .line 312
    .line 313
    invoke-direct {v1, v5, v3}, LB4/q;-><init>(Lflix/com/vision/activities/player/SimpleVideoPlayer;I)V

    .line 314
    .line 315
    .line 316
    const-string v3, "Later"

    .line 317
    .line 318
    invoke-virtual {v0, v3, v1}, LQ4/d;->setButton2(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 319
    .line 320
    .line 321
    const-string v1, "Subtitles Auto-Download"

    .line 322
    .line 323
    invoke-virtual {v0, v1}, LQ4/d;->setTitle(Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    const-string v1, "FlixVision can now download subtitles automatically. Would you like to activate it ?"

    .line 327
    .line 328
    invoke-virtual {v0, v1}, LQ4/d;->setMessage(Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    :try_start_2
    invoke-virtual {v0, p1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 332
    .line 333
    .line 334
    goto :goto_2

    .line 335
    :catch_2
    move-exception p1

    .line 336
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 337
    .line 338
    .line 339
    goto :goto_2

    .line 340
    :cond_2
    iput-boolean v4, v5, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A0:Z

    .line 341
    .line 342
    iget-boolean p1, v5, Lflix/com/vision/activities/player/SimpleVideoPlayer;->E0:Z

    .line 343
    .line 344
    if-eqz p1, :cond_3

    .line 345
    .line 346
    :try_start_3
    const-string p1, "Please wait..."

    .line 347
    .line 348
    invoke-static {v5, p1, v4}, Lh5/i;->makeToast(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 349
    .line 350
    .line 351
    goto :goto_2

    .line 352
    :cond_3
    iget-object p1, v5, Lflix/com/vision/activities/player/SimpleVideoPlayer;->B0:Ljava/util/ArrayList;

    .line 353
    .line 354
    if-eqz p1, :cond_4

    .line 355
    .line 356
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 357
    .line 358
    .line 359
    move-result p1

    .line 360
    if-nez p1, :cond_4

    .line 361
    .line 362
    invoke-virtual {v5}, Lflix/com/vision/activities/player/SimpleVideoPlayer;->E()V

    .line 363
    .line 364
    .line 365
    goto :goto_2

    .line 366
    :cond_4
    invoke-virtual {v5, v4}, Lflix/com/vision/activities/player/SimpleVideoPlayer;->k(Z)V

    .line 367
    .line 368
    .line 369
    :catch_3
    :goto_2
    return-void

    .line 370
    :pswitch_8
    iget-object p1, v5, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 371
    .line 372
    invoke-virtual {p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->removeCaptions()V

    .line 373
    .line 374
    .line 375
    :try_start_4
    const-string p1, "Subtitles Disabled"

    .line 376
    .line 377
    invoke-static {v5, p1, v1, v0, v3}, LN4/a;->Success(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 378
    .line 379
    .line 380
    :catch_4
    invoke-virtual {v5}, Lflix/com/vision/activities/player/SimpleVideoPlayer;->H()V

    .line 381
    .line 382
    .line 383
    return-void

    .line 384
    :pswitch_9
    iget p1, v5, Lflix/com/vision/activities/player/SimpleVideoPlayer;->i0:I

    .line 385
    .line 386
    iget v0, v5, Lflix/com/vision/activities/player/SimpleVideoPlayer;->h0:I

    .line 387
    .line 388
    if-le p1, v0, :cond_5

    .line 389
    .line 390
    invoke-virtual {v5}, Lflix/com/vision/activities/player/SimpleVideoPlayer;->h()V

    .line 391
    .line 392
    .line 393
    iget p1, v5, Lflix/com/vision/activities/player/SimpleVideoPlayer;->h0:I

    .line 394
    .line 395
    add-int/2addr v4, p1

    .line 396
    iput v4, v5, Lflix/com/vision/activities/player/SimpleVideoPlayer;->h0:I

    .line 397
    .line 398
    invoke-virtual {v5, p1}, Lflix/com/vision/activities/player/SimpleVideoPlayer;->x(I)V

    .line 399
    .line 400
    .line 401
    :cond_5
    iget-object p1, v5, Lflix/com/vision/activities/player/SimpleVideoPlayer;->M:Landroid/widget/LinearLayout;

    .line 402
    .line 403
    const/16 v0, 0x8

    .line 404
    .line 405
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 406
    .line 407
    .line 408
    return-void

    .line 409
    :pswitch_a
    sget-boolean p1, Lflix/com/vision/activities/player/SimpleVideoPlayer;->Q0:Z

    .line 410
    .line 411
    invoke-virtual {v5}, Lflix/com/vision/activities/player/SimpleVideoPlayer;->t()V

    .line 412
    .line 413
    .line 414
    return-void

    .line 415
    :pswitch_b
    sget-boolean p1, Lflix/com/vision/activities/player/SimpleVideoPlayer;->Q0:Z

    .line 416
    .line 417
    iget-object p1, v5, Lflix/com/vision/activities/player/SimpleVideoPlayer;->J0:Landroid/os/CountDownTimer;

    .line 418
    .line 419
    if-eqz p1, :cond_6

    .line 420
    .line 421
    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    .line 422
    .line 423
    .line 424
    :cond_6
    invoke-virtual {v5}, Lflix/com/vision/activities/player/SimpleVideoPlayer;->q()V

    .line 425
    .line 426
    .line 427
    :try_start_5
    const-string p1, "Auto-play cancelled"

    .line 428
    .line 429
    invoke-static {v5, p1, v1, v0, v3}, LN4/a;->Success(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 430
    .line 431
    .line 432
    :catch_5
    return-void

    .line 433
    :pswitch_c
    sget-boolean v0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->Q0:Z

    .line 434
    .line 435
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 436
    .line 437
    .line 438
    new-instance v0, Landroid/content/Intent;

    .line 439
    .line 440
    invoke-direct {v0, v5, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 441
    .line 442
    .line 443
    invoke-virtual {v5, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 444
    .line 445
    .line 446
    return-void

    .line 447
    :pswitch_d
    iget-object p1, v5, Lflix/com/vision/activities/player/SimpleVideoPlayer;->r:Ljava/util/ArrayList;

    .line 448
    .line 449
    if-eqz p1, :cond_7

    .line 450
    .line 451
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 452
    .line 453
    .line 454
    move-result p1

    .line 455
    if-nez p1, :cond_7

    .line 456
    .line 457
    iget-object p1, v5, Lflix/com/vision/activities/player/SimpleVideoPlayer;->r:Ljava/util/ArrayList;

    .line 458
    .line 459
    invoke-virtual {v5, p1}, Lflix/com/vision/activities/player/SimpleVideoPlayer;->j(Ljava/util/ArrayList;)V

    .line 460
    .line 461
    .line 462
    :cond_7
    return-void

    .line 463
    :pswitch_e
    sget-boolean p1, Lflix/com/vision/activities/player/SimpleVideoPlayer;->Q0:Z

    .line 464
    .line 465
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 466
    .line 467
    .line 468
    :try_start_6
    invoke-virtual {v5}, Lflix/com/vision/activities/player/SimpleVideoPlayer;->l()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 469
    .line 470
    .line 471
    :catch_6
    return-void

    .line 472
    :pswitch_f
    sget-boolean p1, Lflix/com/vision/activities/player/SimpleVideoPlayer;->Q0:Z

    .line 473
    .line 474
    invoke-virtual {v5}, Lflix/com/vision/activities/player/SimpleVideoPlayer;->r()V

    .line 475
    .line 476
    .line 477
    return-void

    .line 478
    :pswitch_10
    iget-object p1, v5, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 479
    .line 480
    iget-object v0, v5, Lflix/com/vision/activities/player/SimpleVideoPlayer;->P0:Lflix/com/vision/models/IntroDbResponse$Segment;

    .line 481
    .line 482
    iget-wide v0, v0, Lflix/com/vision/models/IntroDbResponse$Segment;->end_ms:J

    .line 483
    .line 484
    const-wide/16 v2, 0x3e8

    .line 485
    .line 486
    sub-long/2addr v0, v2

    .line 487
    invoke-virtual {p1, v0, v1}, Lflix/com/vision/bvp/BetterVideoPlayer;->seekTo(J)V

    .line 488
    .line 489
    .line 490
    invoke-virtual {v5}, Lflix/com/vision/activities/player/SimpleVideoPlayer;->r()V

    .line 491
    .line 492
    .line 493
    return-void

    .line 494
    :pswitch_11
    sget-boolean v0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->Q0:Z

    .line 495
    .line 496
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 497
    .line 498
    .line 499
    new-instance v0, Landroid/content/Intent;

    .line 500
    .line 501
    invoke-direct {v0, v5, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 502
    .line 503
    .line 504
    invoke-virtual {v5, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 505
    .line 506
    .line 507
    return-void

    .line 508
    :pswitch_12
    iget-object p1, v5, Lflix/com/vision/activities/player/SimpleVideoPlayer;->r:Ljava/util/ArrayList;

    .line 509
    .line 510
    if-eqz p1, :cond_8

    .line 511
    .line 512
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 513
    .line 514
    .line 515
    move-result p1

    .line 516
    if-nez p1, :cond_8

    .line 517
    .line 518
    iget-object p1, v5, Lflix/com/vision/activities/player/SimpleVideoPlayer;->r:Ljava/util/ArrayList;

    .line 519
    .line 520
    invoke-virtual {v5, p1}, Lflix/com/vision/activities/player/SimpleVideoPlayer;->j(Ljava/util/ArrayList;)V

    .line 521
    .line 522
    .line 523
    :cond_8
    return-void

    .line 524
    :pswitch_13
    sget-boolean p1, Lflix/com/vision/activities/player/SimpleVideoPlayer;->Q0:Z

    .line 525
    .line 526
    invoke-virtual {v5}, Lflix/com/vision/activities/player/SimpleVideoPlayer;->v()V

    .line 527
    .line 528
    .line 529
    return-void

    .line 530
    :pswitch_14
    invoke-static {v5}, Lflix/com/vision/activities/player/SimpleVideoPlayer;->e(Lflix/com/vision/activities/player/SimpleVideoPlayer;)V

    .line 531
    .line 532
    .line 533
    return-void

    .line 534
    nop

    .line 535
    :pswitch_data_0
    .packed-switch 0x0
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
