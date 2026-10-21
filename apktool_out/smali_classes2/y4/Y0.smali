.class public final synthetic Ly4/Y0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Lflix/com/vision/activities/SettingsActivity;


# direct methods
.method public synthetic constructor <init>(Lflix/com/vision/activities/SettingsActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Ly4/Y0;->b:I

    iput-object p1, p0, Ly4/Y0;->e:Lflix/com/vision/activities/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    .line 1
    const-string v0, "Please make sure the selected App is installed to avoid issues"

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    const-string v2, "sub_lang_name_1"

    .line 5
    .line 6
    const-string v3, "sub_lang_index_1"

    .line 7
    .line 8
    const/4 v4, 0x1

    .line 9
    iget-object v5, p0, Ly4/Y0;->e:Lflix/com/vision/activities/SettingsActivity;

    .line 10
    .line 11
    iget v6, p0, Ly4/Y0;->b:I

    .line 12
    .line 13
    packed-switch v6, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    sget v0, Lflix/com/vision/activities/SettingsActivity;->c2:I

    .line 17
    .line 18
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 22
    .line 23
    .line 24
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iput-boolean v4, p1, Lflix/com/vision/App;->b:Z

    .line 29
    .line 30
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 35
    .line 36
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    const-string v0, "subtitle_source_index_2"

    .line 41
    .line 42
    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 47
    .line 48
    .line 49
    if-lez p2, :cond_0

    .line 50
    .line 51
    iget-object p1, v5, Lflix/com/vision/activities/SettingsActivity;->I:Landroid/widget/TextView;

    .line 52
    .line 53
    iget-object v0, v5, Lflix/com/vision/activities/SettingsActivity;->z:[Ljava/lang/CharSequence;

    .line 54
    .line 55
    aget-object p2, v0, p2

    .line 56
    .line 57
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    .line 59
    .line 60
    const/4 p1, 0x0

    .line 61
    invoke-virtual {v5, p1, v4}, Lflix/com/vision/activities/SettingsActivity;->k(Ljava/util/Set;Z)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_0
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 70
    .line 71
    const/16 v0, 0x13

    .line 72
    .line 73
    invoke-interface {p1, v3, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    iget-object v0, v5, Lflix/com/vision/activities/SettingsActivity;->i0:Landroid/widget/TextView;

    .line 78
    .line 79
    iget-object v1, v5, Lflix/com/vision/activities/SettingsActivity;->Y1:[Ljava/lang/String;

    .line 80
    .line 81
    aget-object v1, v1, p1

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    .line 85
    .line 86
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 91
    .line 92
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    iget-object v1, v5, Lflix/com/vision/activities/SettingsActivity;->Y1:[Ljava/lang/String;

    .line 97
    .line 98
    aget-object p1, v1, p1

    .line 99
    .line 100
    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 105
    .line 106
    .line 107
    iget-object p1, v5, Lflix/com/vision/activities/SettingsActivity;->I:Landroid/widget/TextView;

    .line 108
    .line 109
    iget-object v0, v5, Lflix/com/vision/activities/SettingsActivity;->z:[Ljava/lang/CharSequence;

    .line 110
    .line 111
    aget-object p2, v0, p2

    .line 112
    .line 113
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    .line 115
    .line 116
    :goto_0
    return-void

    .line 117
    :pswitch_0
    const-string v0, " "

    .line 118
    .line 119
    iget-object v1, v5, Lflix/com/vision/activities/SettingsActivity;->a2:[Ljava/lang/CharSequence;

    .line 120
    .line 121
    :try_start_0
    iput-boolean v4, v5, Lflix/com/vision/activities/SettingsActivity;->b2:Z

    .line 122
    .line 123
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    iget-object v2, v2, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 128
    .line 129
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    const-string v3, "pref_subtitle_encoding_index"

    .line 134
    .line 135
    invoke-interface {v2, v3, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 140
    .line 141
    .line 142
    iget-object v2, v5, Lflix/com/vision/activities/SettingsActivity;->C:Landroid/widget/TextView;

    .line 143
    .line 144
    aget-object v3, v1, p2

    .line 145
    .line 146
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    .line 148
    .line 149
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    .line 151
    .line 152
    const-string p1, "pref_subtitle_encoding_label"

    .line 153
    .line 154
    if-lez p2, :cond_1

    .line 155
    .line 156
    :try_start_1
    aget-object p2, v1, p2

    .line 157
    .line 158
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p2

    .line 162
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p2

    .line 170
    array-length p2, p2

    .line 171
    sub-int/2addr p2, v4

    .line 172
    aget-object p2, v1, p2

    .line 173
    .line 174
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p2

    .line 178
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 183
    .line 184
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 193
    .line 194
    .line 195
    goto :goto_1

    .line 196
    :cond_1
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 197
    .line 198
    .line 199
    move-result-object p2

    .line 200
    iget-object p2, p2, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 201
    .line 202
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 203
    .line 204
    .line 205
    move-result-object p2

    .line 206
    const-string v0, "utf-8"

    .line 207
    .line 208
    invoke-interface {p2, p1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 213
    .line 214
    .line 215
    :catch_0
    :goto_1
    return-void

    .line 216
    :pswitch_1
    sget v0, Lflix/com/vision/activities/SettingsActivity;->c2:I

    .line 217
    .line 218
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 219
    .line 220
    .line 221
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 222
    .line 223
    .line 224
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 229
    .line 230
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 231
    .line 232
    .line 233
    move-result-object p1

    .line 234
    const-string v0, "pref_auto_play_minutes"

    .line 235
    .line 236
    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 237
    .line 238
    .line 239
    move-result-object p1

    .line 240
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 241
    .line 242
    .line 243
    iget-object p1, v5, Lflix/com/vision/activities/SettingsActivity;->J:Landroid/widget/TextView;

    .line 244
    .line 245
    iget-object v0, v5, Lflix/com/vision/activities/SettingsActivity;->y:[Ljava/lang/CharSequence;

    .line 246
    .line 247
    aget-object p2, v0, p2

    .line 248
    .line 249
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    .line 251
    .line 252
    return-void

    .line 253
    :pswitch_2
    sget v0, Lflix/com/vision/activities/SettingsActivity;->c2:I

    .line 254
    .line 255
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 256
    .line 257
    .line 258
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 262
    .line 263
    .line 264
    move-result-object p1

    .line 265
    const-string v0, "Please restart to see the changes"

    .line 266
    .line 267
    invoke-static {p1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 268
    .line 269
    .line 270
    move-result-object p1

    .line 271
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 272
    .line 273
    .line 274
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 275
    .line 276
    .line 277
    move-result-object p1

    .line 278
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 279
    .line 280
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 281
    .line 282
    .line 283
    move-result-object p1

    .line 284
    const-string v0, "pref_tv_layout"

    .line 285
    .line 286
    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 287
    .line 288
    .line 289
    move-result-object p1

    .line 290
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v5}, Lflix/com/vision/activities/SettingsActivity;->h()V

    .line 294
    .line 295
    .line 296
    return-void

    .line 297
    :pswitch_3
    sget v2, Lflix/com/vision/activities/SettingsActivity;->c2:I

    .line 298
    .line 299
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 300
    .line 301
    .line 302
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 303
    .line 304
    .line 305
    if-eqz p2, :cond_2

    .line 306
    .line 307
    if-eq p2, v1, :cond_2

    .line 308
    .line 309
    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 310
    .line 311
    .line 312
    move-result-object p1

    .line 313
    invoke-static {p1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 314
    .line 315
    .line 316
    move-result-object p1

    .line 317
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 318
    .line 319
    .line 320
    :cond_2
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 321
    .line 322
    .line 323
    move-result-object p1

    .line 324
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 325
    .line 326
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 327
    .line 328
    .line 329
    move-result-object p1

    .line 330
    const-string v0, "player_index"

    .line 331
    .line 332
    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 333
    .line 334
    .line 335
    move-result-object p1

    .line 336
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 337
    .line 338
    .line 339
    invoke-virtual {v5}, Lflix/com/vision/activities/SettingsActivity;->i()V

    .line 340
    .line 341
    .line 342
    return-void

    .line 343
    :pswitch_4
    sget v2, Lflix/com/vision/activities/SettingsActivity;->c2:I

    .line 344
    .line 345
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 346
    .line 347
    .line 348
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 349
    .line 350
    .line 351
    if-eqz p2, :cond_3

    .line 352
    .line 353
    if-eq p2, v1, :cond_3

    .line 354
    .line 355
    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 356
    .line 357
    .line 358
    move-result-object p1

    .line 359
    invoke-static {p1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 360
    .line 361
    .line 362
    move-result-object p1

    .line 363
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 364
    .line 365
    .line 366
    :cond_3
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 367
    .line 368
    .line 369
    move-result-object p1

    .line 370
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 371
    .line 372
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 373
    .line 374
    .line 375
    move-result-object p1

    .line 376
    const-string v0, "pref_adult_zone_player"

    .line 377
    .line 378
    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 379
    .line 380
    .line 381
    move-result-object p1

    .line 382
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 383
    .line 384
    .line 385
    invoke-virtual {v5}, Lflix/com/vision/activities/SettingsActivity;->f()V

    .line 386
    .line 387
    .line 388
    return-void

    .line 389
    :pswitch_5
    sget v0, Lflix/com/vision/activities/SettingsActivity;->c2:I

    .line 390
    .line 391
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 392
    .line 393
    .line 394
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 395
    .line 396
    .line 397
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 398
    .line 399
    .line 400
    move-result-object p1

    .line 401
    iput-boolean v4, p1, Lflix/com/vision/App;->b:Z

    .line 402
    .line 403
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 404
    .line 405
    .line 406
    move-result-object p1

    .line 407
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 408
    .line 409
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 410
    .line 411
    .line 412
    move-result-object p1

    .line 413
    invoke-interface {p1, v3, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 414
    .line 415
    .line 416
    iget-object v0, v5, Lflix/com/vision/activities/SettingsActivity;->e:Ljava/util/ArrayList;

    .line 417
    .line 418
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 419
    .line 420
    .line 421
    move-result-object v0

    .line 422
    check-cast v0, Ljava/lang/String;

    .line 423
    .line 424
    const-string v1, "--"

    .line 425
    .line 426
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    move-result-object v0

    .line 430
    const/4 v1, 0x0

    .line 431
    aget-object v0, v0, v1

    .line 432
    .line 433
    const-string v1, "sub_lang_code_1"

    .line 434
    .line 435
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 436
    .line 437
    .line 438
    iget-object v0, v5, Lflix/com/vision/activities/SettingsActivity;->Y1:[Ljava/lang/String;

    .line 439
    .line 440
    aget-object v0, v0, p2

    .line 441
    .line 442
    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 443
    .line 444
    .line 445
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 446
    .line 447
    .line 448
    iget-object p1, v5, Lflix/com/vision/activities/SettingsActivity;->i0:Landroid/widget/TextView;

    .line 449
    .line 450
    iget-object v0, v5, Lflix/com/vision/activities/SettingsActivity;->Y1:[Ljava/lang/String;

    .line 451
    .line 452
    aget-object p2, v0, p2

    .line 453
    .line 454
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 455
    .line 456
    .line 457
    return-void

    .line 458
    :pswitch_6
    sget v0, Lflix/com/vision/activities/SettingsActivity;->c2:I

    .line 459
    .line 460
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 461
    .line 462
    .line 463
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 464
    .line 465
    .line 466
    move-result-object v0

    .line 467
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 468
    .line 469
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 470
    .line 471
    .line 472
    move-result-object v0

    .line 473
    const-string v1, "pref_subtitle_size"

    .line 474
    .line 475
    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 476
    .line 477
    .line 478
    move-result-object v0

    .line 479
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 480
    .line 481
    .line 482
    iget-object v0, v5, Lflix/com/vision/activities/SettingsActivity;->h0:Landroid/widget/TextView;

    .line 483
    .line 484
    iget-object v1, v5, Lflix/com/vision/activities/SettingsActivity;->Z1:[Ljava/lang/CharSequence;

    .line 485
    .line 486
    aget-object v1, v1, p2

    .line 487
    .line 488
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 489
    .line 490
    .line 491
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 492
    .line 493
    .line 494
    new-instance p1, Lflix/com/vision/models/SubEvent;

    .line 495
    .line 496
    invoke-direct {p1}, Lflix/com/vision/models/SubEvent;-><init>()V

    .line 497
    .line 498
    .line 499
    iput p2, p1, Lflix/com/vision/models/SubEvent;->size_index:I

    .line 500
    .line 501
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 502
    .line 503
    .line 504
    move-result-object p2

    .line 505
    invoke-virtual {p2, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 506
    .line 507
    .line 508
    return-void

    .line 509
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
