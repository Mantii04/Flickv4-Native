.class public final synthetic Ly4/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Lflix/com/vision/activities/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lflix/com/vision/activities/MainActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Ly4/a0;->b:I

    iput-object p1, p0, Ly4/a0;->e:Lflix/com/vision/activities/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    iget-object v3, p0, Ly4/a0;->e:Lflix/com/vision/activities/MainActivity;

    .line 5
    .line 6
    iget v4, p0, Ly4/a0;->b:I

    .line 7
    .line 8
    packed-switch v4, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    iget-object v0, v3, Lflix/com/vision/activities/MainActivity;->C:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :pswitch_0
    sget v0, Lflix/com/vision/activities/MainActivity;->T:I

    .line 18
    .line 19
    invoke-virtual {v3}, Landroid/app/Activity;->recreate()V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :pswitch_1
    sget v0, Lflix/com/vision/activities/MainActivity;->T:I

    .line 24
    .line 25
    invoke-virtual {v3}, Landroid/app/Activity;->recreate()V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :pswitch_2
    iget v0, v3, Lflix/com/vision/activities/MainActivity;->D:I

    .line 30
    .line 31
    invoke-virtual {v3, v0}, Lflix/com/vision/activities/MainActivity;->g(I)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :pswitch_3
    sget v0, Lflix/com/vision/activities/MainActivity;->T:I

    .line 36
    .line 37
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 41
    .line 42
    :try_start_0
    invoke-static {v3, v0}, LA/h;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    const/4 v2, -0x1

    .line 47
    if-ne v1, v2, :cond_0

    .line 48
    .line 49
    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    .line 50
    .line 51
    filled-new-array {v1, v0}, [Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    const/16 v1, 0x2711

    .line 56
    .line 57
    invoke-static {v3, v0, v1}, Lz/d;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 63
    .line 64
    .line 65
    :cond_0
    :goto_0
    return-void

    .line 66
    :pswitch_4
    iput-boolean v2, v3, Lflix/com/vision/activities/MainActivity;->M:Z

    .line 67
    .line 68
    return-void

    .line 69
    :pswitch_5
    sget v0, Lflix/com/vision/activities/MainActivity;->T:I

    .line 70
    .line 71
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    :try_start_1
    iget-object v0, v3, Lflix/com/vision/activities/MainActivity;->w:LA3/k;

    .line 75
    .line 76
    if-eqz v0, :cond_1

    .line 77
    .line 78
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    check-cast v0, Lcom/google/android/material/internal/NavigationMenuView;

    .line 83
    .line 84
    if-eqz v0, :cond_1

    .line 85
    .line 86
    invoke-virtual {v0, v2}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :catch_1
    move-exception v0

    .line 91
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 92
    .line 93
    .line 94
    :cond_1
    :goto_1
    return-void

    .line 95
    :pswitch_6
    sget v0, Lflix/com/vision/activities/MainActivity;->T:I

    .line 96
    .line 97
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    .line 99
    .line 100
    :try_start_2
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 105
    .line 106
    const-string v2, "actual_menu_index"

    .line 107
    .line 108
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    iget-object v2, v3, Lflix/com/vision/activities/MainActivity;->w:LA3/k;

    .line 113
    .line 114
    if-eqz v2, :cond_2

    .line 115
    .line 116
    invoke-virtual {v2}, LA3/k;->getMenu()Landroid/view/Menu;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    invoke-interface {v2, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 125
    .line 126
    .line 127
    goto :goto_2

    .line 128
    :catch_2
    move-exception v0

    .line 129
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 130
    .line 131
    .line 132
    :cond_2
    :goto_2
    return-void

    .line 133
    :pswitch_7
    sget v1, Lflix/com/vision/activities/MainActivity;->T:I

    .line 134
    .line 135
    invoke-virtual {v3, v2, v0}, Lflix/com/vision/activities/MainActivity;->askToUpdateIfAny(ZLflix/com/vision/models/Movie;)V

    .line 136
    .line 137
    .line 138
    return-void

    .line 139
    :pswitch_8
    sget v0, Lflix/com/vision/activities/MainActivity;->T:I

    .line 140
    .line 141
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 142
    .line 143
    .line 144
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 149
    .line 150
    sget-object v4, Lflix/com/vision/tv/Constant;->b:Ljava/lang/String;

    .line 151
    .line 152
    const-string v4, "app_start_count"

    .line 153
    .line 154
    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    add-int/2addr v0, v1

    .line 159
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    iget-object v1, v1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 164
    .line 165
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    invoke-interface {v1, v4, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 174
    .line 175
    .line 176
    const/16 v1, 0xb

    .line 177
    .line 178
    if-lt v0, v1, :cond_3

    .line 179
    .line 180
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    iget-object v1, v1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 185
    .line 186
    const-string v4, "twitter_check"

    .line 187
    .line 188
    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    if-nez v1, :cond_3

    .line 193
    .line 194
    invoke-virtual {v3}, Lflix/com/vision/activities/MainActivity;->l()V

    .line 195
    .line 196
    .line 197
    :cond_3
    const/16 v1, 0x10

    .line 198
    .line 199
    if-lt v0, v1, :cond_4

    .line 200
    .line 201
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 206
    .line 207
    const-string v1, "discord_check"

    .line 208
    .line 209
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 210
    .line 211
    .line 212
    move-result v0

    .line 213
    if-nez v0, :cond_4

    .line 214
    .line 215
    invoke-virtual {v3}, Lflix/com/vision/activities/MainActivity;->j()V

    .line 216
    .line 217
    .line 218
    :cond_4
    return-void

    .line 219
    :pswitch_9
    sget v4, Lflix/com/vision/activities/MainActivity;->T:I

    .line 220
    .line 221
    const-string v4, ""

    .line 222
    .line 223
    :try_start_3
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 224
    .line 225
    .line 226
    move-result-object v5

    .line 227
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v6

    .line 231
    invoke-virtual {v5, v6, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 232
    .line 233
    .line 234
    move-result-object v5

    .line 235
    new-instance v6, Ljava/lang/StringBuilder;

    .line 236
    .line 237
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 238
    .line 239
    .line 240
    iget-object v5, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 241
    .line 242
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 252
    goto :goto_3

    .line 253
    :catch_3
    move-exception v5

    .line 254
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 255
    .line 256
    .line 257
    const-string v5, "x.x.x"

    .line 258
    .line 259
    :goto_3
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 260
    .line 261
    .line 262
    move-result-object v6

    .line 263
    iget-object v6, v6, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 264
    .line 265
    invoke-interface {v6, v5, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 266
    .line 267
    .line 268
    move-result v6

    .line 269
    if-nez v6, :cond_7

    .line 270
    .line 271
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 272
    .line 273
    .line 274
    move-result-object v6

    .line 275
    iget-object v6, v6, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 276
    .line 277
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 278
    .line 279
    .line 280
    move-result-object v6

    .line 281
    sget v7, Lflix/com/vision/R$string;->start_count_label:I

    .line 282
    .line 283
    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v7

    .line 287
    invoke-interface {v6, v7, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 288
    .line 289
    .line 290
    move-result-object v6

    .line 291
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 292
    .line 293
    .line 294
    sget-object v6, Lflix/com/vision/App;->z:Ljava/util/ArrayList;

    .line 295
    .line 296
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 297
    .line 298
    .line 299
    move-result-object v6

    .line 300
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 301
    .line 302
    .line 303
    move-result v7

    .line 304
    if-eqz v7, :cond_5

    .line 305
    .line 306
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    move-result-object v7

    .line 310
    check-cast v7, Ljava/lang/String;

    .line 311
    .line 312
    invoke-static {v4, v7}, LA/i;->B(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v4

    .line 316
    goto :goto_4

    .line 317
    :cond_5
    new-instance v6, Le/r;

    .line 318
    .line 319
    sget v7, Lflix/com/vision/R$style;->AlertDialogCustom:I

    .line 320
    .line 321
    invoke-direct {v6, v3, v7}, Le/r;-><init>(Landroid/content/Context;I)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 325
    .line 326
    .line 327
    move-result-object v7

    .line 328
    sget v8, Lflix/com/vision/R$layout;->dialog_release_notes:I

    .line 329
    .line 330
    invoke-virtual {v7, v8, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 331
    .line 332
    .line 333
    move-result-object v0

    .line 334
    invoke-virtual {v6, v0}, Le/r;->setView(Landroid/view/View;)Le/r;

    .line 335
    .line 336
    .line 337
    sget v7, Lflix/com/vision/R$id;->rn_title:I

    .line 338
    .line 339
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 340
    .line 341
    .line 342
    move-result-object v7

    .line 343
    check-cast v7, Landroid/widget/TextView;

    .line 344
    .line 345
    sget v8, Lflix/com/vision/R$id;->rn_content:I

    .line 346
    .line 347
    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 348
    .line 349
    .line 350
    move-result-object v8

    .line 351
    check-cast v8, Landroid/widget/TextView;

    .line 352
    .line 353
    sget v9, Lflix/com/vision/R$id;->rn_btn_ok:I

    .line 354
    .line 355
    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 356
    .line 357
    .line 358
    move-result-object v0

    .line 359
    new-instance v9, Ljava/lang/StringBuilder;

    .line 360
    .line 361
    const-string v10, "v"

    .line 362
    .line 363
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    const-string v10, " Release Notes"

    .line 370
    .line 371
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    .line 373
    .line 374
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object v9

    .line 378
    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 379
    .line 380
    .line 381
    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 382
    .line 383
    .line 384
    invoke-virtual {v6}, Le/r;->create()Le/s;

    .line 385
    .line 386
    .line 387
    move-result-object v4

    .line 388
    invoke-virtual {v4, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 389
    .line 390
    .line 391
    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 392
    .line 393
    .line 394
    move-result-object v6

    .line 395
    if-eqz v6, :cond_6

    .line 396
    .line 397
    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 398
    .line 399
    .line 400
    move-result-object v6

    .line 401
    new-instance v7, Landroid/graphics/drawable/ColorDrawable;

    .line 402
    .line 403
    invoke-direct {v7, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 404
    .line 405
    .line 406
    invoke-virtual {v6, v7}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 407
    .line 408
    .line 409
    :cond_6
    new-instance v2, LA4/m;

    .line 410
    .line 411
    const/16 v6, 0x12

    .line 412
    .line 413
    invoke-direct {v2, v6, v3, v4}, LA4/m;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 414
    .line 415
    .line 416
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 417
    .line 418
    .line 419
    :try_start_4
    invoke-virtual {v4}, Landroid/app/Dialog;->show()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 420
    .line 421
    .line 422
    goto :goto_5

    .line 423
    :catch_4
    move-exception v0

    .line 424
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 425
    .line 426
    .line 427
    :goto_5
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 428
    .line 429
    .line 430
    move-result-object v0

    .line 431
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 432
    .line 433
    invoke-static {v0, v5, v1}, LA/i;->x(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 434
    .line 435
    .line 436
    :cond_7
    return-void

    .line 437
    :pswitch_a
    sget v0, Lflix/com/vision/activities/MainActivity;->T:I

    .line 438
    .line 439
    invoke-virtual {v3}, Landroid/app/Activity;->recreate()V

    .line 440
    .line 441
    .line 442
    return-void

    .line 443
    :pswitch_b
    sget v0, Lflix/com/vision/activities/MainActivity;->T:I

    .line 444
    .line 445
    invoke-virtual {v3}, Landroid/app/Activity;->recreate()V

    .line 446
    .line 447
    .line 448
    return-void

    .line 449
    :pswitch_data_0
    .packed-switch 0x0
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
