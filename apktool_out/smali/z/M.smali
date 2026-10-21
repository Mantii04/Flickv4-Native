.class public final Lz/M;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz/w;


# instance fields
.field public final a:Landroid/app/Notification$Builder;

.field public final b:Lz/B;

.field public final c:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lz/B;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v2, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    new-instance v2, Landroid/os/Bundle;

    .line 14
    .line 15
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v2, v0, Lz/M;->c:Landroid/os/Bundle;

    .line 19
    .line 20
    iput-object v1, v0, Lz/M;->b:Lz/B;

    .line 21
    .line 22
    iget-object v2, v1, Lz/B;->a:Landroid/content/Context;

    .line 23
    .line 24
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 25
    .line 26
    const/16 v4, 0x1a

    .line 27
    .line 28
    if-lt v3, v4, :cond_0

    .line 29
    .line 30
    iget-object v3, v1, Lz/B;->r:Ljava/lang/String;

    .line 31
    .line 32
    invoke-static {v2, v3}, Lz/I;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    iput-object v3, v0, Lz/M;->a:Landroid/app/Notification$Builder;

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    new-instance v3, Landroid/app/Notification$Builder;

    .line 40
    .line 41
    iget-object v5, v1, Lz/B;->a:Landroid/content/Context;

    .line 42
    .line 43
    invoke-direct {v3, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 44
    .line 45
    .line 46
    iput-object v3, v0, Lz/M;->a:Landroid/app/Notification$Builder;

    .line 47
    .line 48
    :goto_0
    iget-object v3, v1, Lz/B;->u:Landroid/app/Notification;

    .line 49
    .line 50
    iget-object v5, v0, Lz/M;->a:Landroid/app/Notification$Builder;

    .line 51
    .line 52
    iget-wide v6, v3, Landroid/app/Notification;->when:J

    .line 53
    .line 54
    invoke-virtual {v5, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    iget v6, v3, Landroid/app/Notification;->icon:I

    .line 59
    .line 60
    iget v7, v3, Landroid/app/Notification;->iconLevel:I

    .line 61
    .line 62
    invoke-virtual {v5, v6, v7}, Landroid/app/Notification$Builder;->setSmallIcon(II)Landroid/app/Notification$Builder;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    iget-object v6, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 67
    .line 68
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    iget-object v6, v3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 73
    .line 74
    const/4 v7, 0x0

    .line 75
    invoke-virtual {v5, v6, v7}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    iget-object v6, v3, Landroid/app/Notification;->vibrate:[J

    .line 80
    .line 81
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    iget v6, v3, Landroid/app/Notification;->ledARGB:I

    .line 86
    .line 87
    iget v8, v3, Landroid/app/Notification;->ledOnMS:I

    .line 88
    .line 89
    iget v9, v3, Landroid/app/Notification;->ledOffMS:I

    .line 90
    .line 91
    invoke-virtual {v5, v6, v8, v9}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    iget v6, v3, Landroid/app/Notification;->flags:I

    .line 96
    .line 97
    and-int/lit8 v6, v6, 0x2

    .line 98
    .line 99
    const/4 v8, 0x0

    .line 100
    const/4 v9, 0x1

    .line 101
    if-eqz v6, :cond_1

    .line 102
    .line 103
    move v6, v9

    .line 104
    goto :goto_1

    .line 105
    :cond_1
    move v6, v8

    .line 106
    :goto_1
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    iget v6, v3, Landroid/app/Notification;->flags:I

    .line 111
    .line 112
    and-int/lit8 v6, v6, 0x8

    .line 113
    .line 114
    if-eqz v6, :cond_2

    .line 115
    .line 116
    move v6, v9

    .line 117
    goto :goto_2

    .line 118
    :cond_2
    move v6, v8

    .line 119
    :goto_2
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    .line 120
    .line 121
    .line 122
    move-result-object v5

    .line 123
    iget v6, v3, Landroid/app/Notification;->flags:I

    .line 124
    .line 125
    and-int/lit8 v6, v6, 0x10

    .line 126
    .line 127
    if-eqz v6, :cond_3

    .line 128
    .line 129
    move v6, v9

    .line 130
    goto :goto_3

    .line 131
    :cond_3
    move v6, v8

    .line 132
    :goto_3
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 133
    .line 134
    .line 135
    move-result-object v5

    .line 136
    iget v6, v3, Landroid/app/Notification;->defaults:I

    .line 137
    .line 138
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 139
    .line 140
    .line 141
    move-result-object v5

    .line 142
    iget-object v6, v1, Lz/B;->e:Ljava/lang/CharSequence;

    .line 143
    .line 144
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 145
    .line 146
    .line 147
    move-result-object v5

    .line 148
    iget-object v6, v1, Lz/B;->f:Ljava/lang/CharSequence;

    .line 149
    .line 150
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 151
    .line 152
    .line 153
    move-result-object v5

    .line 154
    invoke-virtual {v5, v7}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 155
    .line 156
    .line 157
    move-result-object v5

    .line 158
    iget-object v6, v1, Lz/B;->g:Landroid/app/PendingIntent;

    .line 159
    .line 160
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 161
    .line 162
    .line 163
    move-result-object v5

    .line 164
    iget-object v6, v3, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 165
    .line 166
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 167
    .line 168
    .line 169
    move-result-object v5

    .line 170
    iget v6, v3, Landroid/app/Notification;->flags:I

    .line 171
    .line 172
    and-int/lit16 v6, v6, 0x80

    .line 173
    .line 174
    if-eqz v6, :cond_4

    .line 175
    .line 176
    goto :goto_4

    .line 177
    :cond_4
    move v9, v8

    .line 178
    :goto_4
    invoke-virtual {v5, v7, v9}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    .line 179
    .line 180
    .line 181
    move-result-object v5

    .line 182
    invoke-virtual {v5, v8}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    .line 183
    .line 184
    .line 185
    move-result-object v5

    .line 186
    iget v6, v1, Lz/B;->l:I

    .line 187
    .line 188
    iget v9, v1, Lz/B;->m:I

    .line 189
    .line 190
    iget-boolean v10, v1, Lz/B;->n:Z

    .line 191
    .line 192
    invoke-virtual {v5, v6, v9, v10}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 193
    .line 194
    .line 195
    iget-object v5, v0, Lz/M;->a:Landroid/app/Notification$Builder;

    .line 196
    .line 197
    iget-object v6, v1, Lz/B;->h:Landroidx/core/graphics/drawable/IconCompat;

    .line 198
    .line 199
    if-nez v6, :cond_5

    .line 200
    .line 201
    move-object v2, v7

    .line 202
    goto :goto_5

    .line 203
    :cond_5
    invoke-virtual {v6, v2}, Landroidx/core/graphics/drawable/IconCompat;->toIcon(Landroid/content/Context;)Landroid/graphics/drawable/Icon;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    :goto_5
    invoke-static {v5, v2}, Lz/G;->b(Landroid/app/Notification$Builder;Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    .line 208
    .line 209
    .line 210
    iget-object v2, v0, Lz/M;->a:Landroid/app/Notification$Builder;

    .line 211
    .line 212
    invoke-virtual {v2, v7}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 213
    .line 214
    .line 215
    move-result-object v2

    .line 216
    invoke-virtual {v2, v8}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;

    .line 217
    .line 218
    .line 219
    move-result-object v2

    .line 220
    iget v5, v1, Lz/B;->i:I

    .line 221
    .line 222
    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 223
    .line 224
    .line 225
    iget-object v2, v1, Lz/B;->b:Ljava/util/ArrayList;

    .line 226
    .line 227
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 228
    .line 229
    .line 230
    move-result-object v2

    .line 231
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 232
    .line 233
    .line 234
    move-result v5

    .line 235
    const/16 v6, 0x1f

    .line 236
    .line 237
    const/16 v9, 0x1d

    .line 238
    .line 239
    const/16 v10, 0x1c

    .line 240
    .line 241
    const/16 v11, 0x18

    .line 242
    .line 243
    const-string v12, "android.support.allowGeneratedReplies"

    .line 244
    .line 245
    if-eqz v5, :cond_f

    .line 246
    .line 247
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object v5

    .line 251
    check-cast v5, Lz/y;

    .line 252
    .line 253
    invoke-virtual {v5}, Lz/y;->getIconCompat()Landroidx/core/graphics/drawable/IconCompat;

    .line 254
    .line 255
    .line 256
    move-result-object v13

    .line 257
    if-eqz v13, :cond_6

    .line 258
    .line 259
    invoke-virtual {v13}, Landroidx/core/graphics/drawable/IconCompat;->toIcon()Landroid/graphics/drawable/Icon;

    .line 260
    .line 261
    .line 262
    move-result-object v13

    .line 263
    goto :goto_7

    .line 264
    :cond_6
    move-object v13, v7

    .line 265
    :goto_7
    invoke-virtual {v5}, Lz/y;->getTitle()Ljava/lang/CharSequence;

    .line 266
    .line 267
    .line 268
    move-result-object v14

    .line 269
    invoke-virtual {v5}, Lz/y;->getActionIntent()Landroid/app/PendingIntent;

    .line 270
    .line 271
    .line 272
    move-result-object v15

    .line 273
    invoke-static {v13, v14, v15}, Lz/G;->a(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Action$Builder;

    .line 274
    .line 275
    .line 276
    move-result-object v13

    .line 277
    invoke-virtual {v5}, Lz/y;->getRemoteInputs()[Lz/U;

    .line 278
    .line 279
    .line 280
    move-result-object v14

    .line 281
    if-eqz v14, :cond_9

    .line 282
    .line 283
    invoke-virtual {v5}, Lz/y;->getRemoteInputs()[Lz/U;

    .line 284
    .line 285
    .line 286
    move-result-object v14

    .line 287
    if-nez v14, :cond_7

    .line 288
    .line 289
    move-object v15, v7

    .line 290
    goto :goto_9

    .line 291
    :cond_7
    array-length v15, v14

    .line 292
    new-array v15, v15, [Landroid/app/RemoteInput;

    .line 293
    .line 294
    move v4, v8

    .line 295
    :goto_8
    array-length v8, v14

    .line 296
    if-ge v4, v8, :cond_8

    .line 297
    .line 298
    aget-object v8, v14, v4

    .line 299
    .line 300
    invoke-static {v7}, Lz/T;->fromCompat(Lz/U;)Landroid/app/RemoteInput;

    .line 301
    .line 302
    .line 303
    move-result-object v8

    .line 304
    aput-object v8, v15, v4

    .line 305
    .line 306
    add-int/lit8 v4, v4, 0x1

    .line 307
    .line 308
    goto :goto_8

    .line 309
    :cond_8
    :goto_9
    array-length v4, v15

    .line 310
    const/4 v8, 0x0

    .line 311
    :goto_a
    if-ge v8, v4, :cond_9

    .line 312
    .line 313
    aget-object v14, v15, v8

    .line 314
    .line 315
    invoke-static {v13, v14}, Lz/E;->c(Landroid/app/Notification$Action$Builder;Landroid/app/RemoteInput;)Landroid/app/Notification$Action$Builder;

    .line 316
    .line 317
    .line 318
    add-int/lit8 v8, v8, 0x1

    .line 319
    .line 320
    goto :goto_a

    .line 321
    :cond_9
    invoke-virtual {v5}, Lz/y;->getExtras()Landroid/os/Bundle;

    .line 322
    .line 323
    .line 324
    move-result-object v4

    .line 325
    if-eqz v4, :cond_a

    .line 326
    .line 327
    new-instance v4, Landroid/os/Bundle;

    .line 328
    .line 329
    invoke-virtual {v5}, Lz/y;->getExtras()Landroid/os/Bundle;

    .line 330
    .line 331
    .line 332
    move-result-object v8

    .line 333
    invoke-direct {v4, v8}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 334
    .line 335
    .line 336
    goto :goto_b

    .line 337
    :cond_a
    new-instance v4, Landroid/os/Bundle;

    .line 338
    .line 339
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 340
    .line 341
    .line 342
    :goto_b
    invoke-virtual {v5}, Lz/y;->getAllowGeneratedReplies()Z

    .line 343
    .line 344
    .line 345
    move-result v8

    .line 346
    invoke-virtual {v4, v12, v8}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 347
    .line 348
    .line 349
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 350
    .line 351
    if-lt v8, v11, :cond_b

    .line 352
    .line 353
    invoke-virtual {v5}, Lz/y;->getAllowGeneratedReplies()Z

    .line 354
    .line 355
    .line 356
    move-result v11

    .line 357
    invoke-static {v13, v11}, Lz/H;->a(Landroid/app/Notification$Action$Builder;Z)Landroid/app/Notification$Action$Builder;

    .line 358
    .line 359
    .line 360
    :cond_b
    const-string v11, "android.support.action.semanticAction"

    .line 361
    .line 362
    invoke-virtual {v5}, Lz/y;->getSemanticAction()I

    .line 363
    .line 364
    .line 365
    move-result v12

    .line 366
    invoke-virtual {v4, v11, v12}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 367
    .line 368
    .line 369
    if-lt v8, v10, :cond_c

    .line 370
    .line 371
    invoke-virtual {v5}, Lz/y;->getSemanticAction()I

    .line 372
    .line 373
    .line 374
    move-result v10

    .line 375
    invoke-static {v13, v10}, Lz/J;->b(Landroid/app/Notification$Action$Builder;I)Landroid/app/Notification$Action$Builder;

    .line 376
    .line 377
    .line 378
    :cond_c
    if-lt v8, v9, :cond_d

    .line 379
    .line 380
    invoke-virtual {v5}, Lz/y;->isContextual()Z

    .line 381
    .line 382
    .line 383
    move-result v9

    .line 384
    invoke-static {v13, v9}, Lz/K;->c(Landroid/app/Notification$Action$Builder;Z)Landroid/app/Notification$Action$Builder;

    .line 385
    .line 386
    .line 387
    :cond_d
    if-lt v8, v6, :cond_e

    .line 388
    .line 389
    invoke-virtual {v5}, Lz/y;->isAuthenticationRequired()Z

    .line 390
    .line 391
    .line 392
    move-result v6

    .line 393
    invoke-static {v13, v6}, Lz/L;->a(Landroid/app/Notification$Action$Builder;Z)Landroid/app/Notification$Action$Builder;

    .line 394
    .line 395
    .line 396
    :cond_e
    const-string v6, "android.support.action.showsUserInterface"

    .line 397
    .line 398
    invoke-virtual {v5}, Lz/y;->getShowsUserInterface()Z

    .line 399
    .line 400
    .line 401
    move-result v5

    .line 402
    invoke-virtual {v4, v6, v5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 403
    .line 404
    .line 405
    invoke-static {v13, v4}, Lz/E;->b(Landroid/app/Notification$Action$Builder;Landroid/os/Bundle;)Landroid/app/Notification$Action$Builder;

    .line 406
    .line 407
    .line 408
    iget-object v4, v0, Lz/M;->a:Landroid/app/Notification$Builder;

    .line 409
    .line 410
    invoke-static {v13}, Lz/E;->d(Landroid/app/Notification$Action$Builder;)Landroid/app/Notification$Action;

    .line 411
    .line 412
    .line 413
    move-result-object v5

    .line 414
    invoke-static {v4, v5}, Lz/E;->a(Landroid/app/Notification$Builder;Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 415
    .line 416
    .line 417
    const/16 v4, 0x1a

    .line 418
    .line 419
    const/4 v8, 0x0

    .line 420
    goto/16 :goto_6

    .line 421
    .line 422
    :cond_f
    iget-object v2, v1, Lz/B;->p:Landroid/os/Bundle;

    .line 423
    .line 424
    if-eqz v2, :cond_10

    .line 425
    .line 426
    iget-object v4, v0, Lz/M;->c:Landroid/os/Bundle;

    .line 427
    .line 428
    invoke-virtual {v4, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 429
    .line 430
    .line 431
    :cond_10
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 432
    .line 433
    iget-object v4, v0, Lz/M;->a:Landroid/app/Notification$Builder;

    .line 434
    .line 435
    iget-boolean v5, v1, Lz/B;->j:Z

    .line 436
    .line 437
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    .line 438
    .line 439
    .line 440
    iget-object v4, v0, Lz/M;->a:Landroid/app/Notification$Builder;

    .line 441
    .line 442
    iget-boolean v5, v1, Lz/B;->o:Z

    .line 443
    .line 444
    invoke-static {v4, v5}, Lz/E;->i(Landroid/app/Notification$Builder;Z)Landroid/app/Notification$Builder;

    .line 445
    .line 446
    .line 447
    iget-object v4, v0, Lz/M;->a:Landroid/app/Notification$Builder;

    .line 448
    .line 449
    invoke-static {v4, v7}, Lz/E;->g(Landroid/app/Notification$Builder;Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 450
    .line 451
    .line 452
    iget-object v4, v0, Lz/M;->a:Landroid/app/Notification$Builder;

    .line 453
    .line 454
    invoke-static {v4, v7}, Lz/E;->j(Landroid/app/Notification$Builder;Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 455
    .line 456
    .line 457
    iget-object v4, v0, Lz/M;->a:Landroid/app/Notification$Builder;

    .line 458
    .line 459
    const/4 v5, 0x0

    .line 460
    invoke-static {v4, v5}, Lz/E;->h(Landroid/app/Notification$Builder;Z)Landroid/app/Notification$Builder;

    .line 461
    .line 462
    .line 463
    iget-object v4, v0, Lz/M;->a:Landroid/app/Notification$Builder;

    .line 464
    .line 465
    invoke-static {v4, v7}, Lz/F;->b(Landroid/app/Notification$Builder;Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 466
    .line 467
    .line 468
    iget-object v4, v0, Lz/M;->a:Landroid/app/Notification$Builder;

    .line 469
    .line 470
    invoke-static {v4, v5}, Lz/F;->c(Landroid/app/Notification$Builder;I)Landroid/app/Notification$Builder;

    .line 471
    .line 472
    .line 473
    iget-object v4, v0, Lz/M;->a:Landroid/app/Notification$Builder;

    .line 474
    .line 475
    iget v5, v1, Lz/B;->q:I

    .line 476
    .line 477
    invoke-static {v4, v5}, Lz/F;->f(Landroid/app/Notification$Builder;I)Landroid/app/Notification$Builder;

    .line 478
    .line 479
    .line 480
    iget-object v4, v0, Lz/M;->a:Landroid/app/Notification$Builder;

    .line 481
    .line 482
    invoke-static {v4, v7}, Lz/F;->d(Landroid/app/Notification$Builder;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    .line 483
    .line 484
    .line 485
    iget-object v4, v0, Lz/M;->a:Landroid/app/Notification$Builder;

    .line 486
    .line 487
    iget-object v5, v3, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 488
    .line 489
    iget-object v3, v3, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    .line 490
    .line 491
    invoke-static {v4, v5, v3}, Lz/F;->e(Landroid/app/Notification$Builder;Landroid/net/Uri;Ljava/lang/Object;)Landroid/app/Notification$Builder;

    .line 492
    .line 493
    .line 494
    iget-object v3, v1, Lz/B;->v:Ljava/util/ArrayList;

    .line 495
    .line 496
    iget-object v4, v1, Lz/B;->c:Ljava/util/ArrayList;

    .line 497
    .line 498
    if-ge v2, v10, :cond_15

    .line 499
    .line 500
    if-nez v4, :cond_11

    .line 501
    .line 502
    move-object v2, v7

    .line 503
    goto :goto_c

    .line 504
    :cond_11
    new-instance v2, Ljava/util/ArrayList;

    .line 505
    .line 506
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 507
    .line 508
    .line 509
    move-result v5

    .line 510
    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 511
    .line 512
    .line 513
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 514
    .line 515
    .line 516
    move-result-object v5

    .line 517
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 518
    .line 519
    .line 520
    move-result v8

    .line 521
    if-nez v8, :cond_14

    .line 522
    .line 523
    :goto_c
    if-nez v2, :cond_12

    .line 524
    .line 525
    goto :goto_d

    .line 526
    :cond_12
    if-nez v3, :cond_13

    .line 527
    .line 528
    move-object v3, v2

    .line 529
    goto :goto_d

    .line 530
    :cond_13
    new-instance v5, Lp/i;

    .line 531
    .line 532
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 533
    .line 534
    .line 535
    move-result v8

    .line 536
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 537
    .line 538
    .line 539
    move-result v13

    .line 540
    add-int/2addr v13, v8

    .line 541
    invoke-direct {v5, v13}, Lp/i;-><init>(I)V

    .line 542
    .line 543
    .line 544
    invoke-virtual {v5, v2}, Lp/i;->addAll(Ljava/util/Collection;)Z

    .line 545
    .line 546
    .line 547
    invoke-virtual {v5, v3}, Lp/i;->addAll(Ljava/util/Collection;)Z

    .line 548
    .line 549
    .line 550
    new-instance v3, Ljava/util/ArrayList;

    .line 551
    .line 552
    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 553
    .line 554
    .line 555
    goto :goto_d

    .line 556
    :cond_14
    invoke-static {v5}, Lb/c;->g(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    .line 557
    .line 558
    .line 559
    move-result-object v1

    .line 560
    throw v1

    .line 561
    :cond_15
    :goto_d
    if-eqz v3, :cond_16

    .line 562
    .line 563
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 564
    .line 565
    .line 566
    move-result v2

    .line 567
    if-nez v2, :cond_16

    .line 568
    .line 569
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 570
    .line 571
    .line 572
    move-result-object v2

    .line 573
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 574
    .line 575
    .line 576
    move-result v3

    .line 577
    if-eqz v3, :cond_16

    .line 578
    .line 579
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 580
    .line 581
    .line 582
    move-result-object v3

    .line 583
    check-cast v3, Ljava/lang/String;

    .line 584
    .line 585
    iget-object v5, v0, Lz/M;->a:Landroid/app/Notification$Builder;

    .line 586
    .line 587
    invoke-static {v5, v3}, Lz/F;->a(Landroid/app/Notification$Builder;Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 588
    .line 589
    .line 590
    goto :goto_e

    .line 591
    :cond_16
    iget-object v2, v1, Lz/B;->d:Ljava/util/ArrayList;

    .line 592
    .line 593
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 594
    .line 595
    .line 596
    move-result v3

    .line 597
    if-lez v3, :cond_1d

    .line 598
    .line 599
    invoke-virtual {v1}, Lz/B;->getExtras()Landroid/os/Bundle;

    .line 600
    .line 601
    .line 602
    move-result-object v3

    .line 603
    const-string v5, "android.car.EXTENSIONS"

    .line 604
    .line 605
    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 606
    .line 607
    .line 608
    move-result-object v3

    .line 609
    if-nez v3, :cond_17

    .line 610
    .line 611
    new-instance v3, Landroid/os/Bundle;

    .line 612
    .line 613
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 614
    .line 615
    .line 616
    :cond_17
    new-instance v8, Landroid/os/Bundle;

    .line 617
    .line 618
    invoke-direct {v8, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 619
    .line 620
    .line 621
    new-instance v13, Landroid/os/Bundle;

    .line 622
    .line 623
    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 624
    .line 625
    .line 626
    const/4 v14, 0x0

    .line 627
    :goto_f
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 628
    .line 629
    .line 630
    move-result v15

    .line 631
    if-ge v14, v15, :cond_1c

    .line 632
    .line 633
    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 634
    .line 635
    .line 636
    move-result-object v15

    .line 637
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 638
    .line 639
    .line 640
    move-result-object v16

    .line 641
    check-cast v16, Lz/y;

    .line 642
    .line 643
    new-instance v6, Landroid/os/Bundle;

    .line 644
    .line 645
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 646
    .line 647
    .line 648
    invoke-virtual/range {v16 .. v16}, Lz/y;->getIconCompat()Landroidx/core/graphics/drawable/IconCompat;

    .line 649
    .line 650
    .line 651
    move-result-object v17

    .line 652
    if-eqz v17, :cond_18

    .line 653
    .line 654
    invoke-virtual/range {v17 .. v17}, Landroidx/core/graphics/drawable/IconCompat;->getResId()I

    .line 655
    .line 656
    .line 657
    move-result v17

    .line 658
    move/from16 v9, v17

    .line 659
    .line 660
    goto :goto_10

    .line 661
    :cond_18
    const/4 v9, 0x0

    .line 662
    :goto_10
    const-string v10, "icon"

    .line 663
    .line 664
    invoke-virtual {v6, v10, v9}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 665
    .line 666
    .line 667
    const-string v9, "title"

    .line 668
    .line 669
    invoke-virtual/range {v16 .. v16}, Lz/y;->getTitle()Ljava/lang/CharSequence;

    .line 670
    .line 671
    .line 672
    move-result-object v10

    .line 673
    invoke-virtual {v6, v9, v10}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 674
    .line 675
    .line 676
    const-string v9, "actionIntent"

    .line 677
    .line 678
    invoke-virtual/range {v16 .. v16}, Lz/y;->getActionIntent()Landroid/app/PendingIntent;

    .line 679
    .line 680
    .line 681
    move-result-object v10

    .line 682
    invoke-virtual {v6, v9, v10}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 683
    .line 684
    .line 685
    invoke-virtual/range {v16 .. v16}, Lz/y;->getExtras()Landroid/os/Bundle;

    .line 686
    .line 687
    .line 688
    move-result-object v9

    .line 689
    if-eqz v9, :cond_19

    .line 690
    .line 691
    new-instance v9, Landroid/os/Bundle;

    .line 692
    .line 693
    invoke-virtual/range {v16 .. v16}, Lz/y;->getExtras()Landroid/os/Bundle;

    .line 694
    .line 695
    .line 696
    move-result-object v10

    .line 697
    invoke-direct {v9, v10}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 698
    .line 699
    .line 700
    goto :goto_11

    .line 701
    :cond_19
    new-instance v9, Landroid/os/Bundle;

    .line 702
    .line 703
    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 704
    .line 705
    .line 706
    :goto_11
    invoke-virtual/range {v16 .. v16}, Lz/y;->getAllowGeneratedReplies()Z

    .line 707
    .line 708
    .line 709
    move-result v10

    .line 710
    invoke-virtual {v9, v12, v10}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 711
    .line 712
    .line 713
    const-string v10, "extras"

    .line 714
    .line 715
    invoke-virtual {v6, v10, v9}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 716
    .line 717
    .line 718
    invoke-virtual/range {v16 .. v16}, Lz/y;->getRemoteInputs()[Lz/U;

    .line 719
    .line 720
    .line 721
    move-result-object v9

    .line 722
    if-nez v9, :cond_1a

    .line 723
    .line 724
    const/4 v10, 0x0

    .line 725
    goto :goto_12

    .line 726
    :cond_1a
    const/16 v18, 0x0

    .line 727
    .line 728
    array-length v10, v9

    .line 729
    new-array v10, v10, [Landroid/os/Bundle;

    .line 730
    .line 731
    array-length v7, v9

    .line 732
    if-gtz v7, :cond_1b

    .line 733
    .line 734
    :goto_12
    const-string v7, "remoteInputs"

    .line 735
    .line 736
    invoke-virtual {v6, v7, v10}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 737
    .line 738
    .line 739
    const-string v7, "showsUserInterface"

    .line 740
    .line 741
    invoke-virtual/range {v16 .. v16}, Lz/y;->getShowsUserInterface()Z

    .line 742
    .line 743
    .line 744
    move-result v9

    .line 745
    invoke-virtual {v6, v7, v9}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 746
    .line 747
    .line 748
    const-string v7, "semanticAction"

    .line 749
    .line 750
    invoke-virtual/range {v16 .. v16}, Lz/y;->getSemanticAction()I

    .line 751
    .line 752
    .line 753
    move-result v9

    .line 754
    invoke-virtual {v6, v7, v9}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 755
    .line 756
    .line 757
    invoke-virtual {v13, v15, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 758
    .line 759
    .line 760
    add-int/lit8 v14, v14, 0x1

    .line 761
    .line 762
    const/16 v6, 0x1f

    .line 763
    .line 764
    const/4 v7, 0x0

    .line 765
    const/16 v9, 0x1d

    .line 766
    .line 767
    const/16 v10, 0x1c

    .line 768
    .line 769
    goto/16 :goto_f

    .line 770
    .line 771
    :cond_1b
    const/4 v1, 0x0

    .line 772
    aget-object v1, v9, v1

    .line 773
    .line 774
    new-instance v1, Landroid/os/Bundle;

    .line 775
    .line 776
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 777
    .line 778
    .line 779
    throw v18

    .line 780
    :cond_1c
    const-string v2, "invisible_actions"

    .line 781
    .line 782
    invoke-virtual {v3, v2, v13}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 783
    .line 784
    .line 785
    invoke-virtual {v8, v2, v13}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 786
    .line 787
    .line 788
    invoke-virtual {v1}, Lz/B;->getExtras()Landroid/os/Bundle;

    .line 789
    .line 790
    .line 791
    move-result-object v2

    .line 792
    invoke-virtual {v2, v5, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 793
    .line 794
    .line 795
    iget-object v2, v0, Lz/M;->c:Landroid/os/Bundle;

    .line 796
    .line 797
    invoke-virtual {v2, v5, v8}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 798
    .line 799
    .line 800
    :cond_1d
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 801
    .line 802
    if-lt v2, v11, :cond_1e

    .line 803
    .line 804
    iget-object v3, v0, Lz/M;->a:Landroid/app/Notification$Builder;

    .line 805
    .line 806
    iget-object v5, v1, Lz/B;->p:Landroid/os/Bundle;

    .line 807
    .line 808
    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    .line 809
    .line 810
    .line 811
    iget-object v3, v0, Lz/M;->a:Landroid/app/Notification$Builder;

    .line 812
    .line 813
    const/4 v5, 0x0

    .line 814
    invoke-static {v3, v5}, Lz/H;->e(Landroid/app/Notification$Builder;[Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 815
    .line 816
    .line 817
    :goto_13
    const/16 v3, 0x1a

    .line 818
    .line 819
    goto :goto_14

    .line 820
    :cond_1e
    const/4 v5, 0x0

    .line 821
    goto :goto_13

    .line 822
    :goto_14
    if-lt v2, v3, :cond_1f

    .line 823
    .line 824
    iget-object v3, v0, Lz/M;->a:Landroid/app/Notification$Builder;

    .line 825
    .line 826
    const/4 v6, 0x0

    .line 827
    invoke-static {v3, v6}, Lz/I;->b(Landroid/app/Notification$Builder;I)Landroid/app/Notification$Builder;

    .line 828
    .line 829
    .line 830
    iget-object v3, v0, Lz/M;->a:Landroid/app/Notification$Builder;

    .line 831
    .line 832
    invoke-static {v3, v5}, Lz/I;->e(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 833
    .line 834
    .line 835
    iget-object v3, v0, Lz/M;->a:Landroid/app/Notification$Builder;

    .line 836
    .line 837
    invoke-static {v3, v5}, Lz/I;->f(Landroid/app/Notification$Builder;Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 838
    .line 839
    .line 840
    iget-object v3, v0, Lz/M;->a:Landroid/app/Notification$Builder;

    .line 841
    .line 842
    const-wide/16 v7, 0x0

    .line 843
    .line 844
    invoke-static {v3, v7, v8}, Lz/I;->g(Landroid/app/Notification$Builder;J)Landroid/app/Notification$Builder;

    .line 845
    .line 846
    .line 847
    iget-object v3, v0, Lz/M;->a:Landroid/app/Notification$Builder;

    .line 848
    .line 849
    invoke-static {v3, v6}, Lz/I;->d(Landroid/app/Notification$Builder;I)Landroid/app/Notification$Builder;

    .line 850
    .line 851
    .line 852
    iget-object v3, v1, Lz/B;->r:Ljava/lang/String;

    .line 853
    .line 854
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 855
    .line 856
    .line 857
    move-result v3

    .line 858
    if-nez v3, :cond_1f

    .line 859
    .line 860
    iget-object v3, v0, Lz/M;->a:Landroid/app/Notification$Builder;

    .line 861
    .line 862
    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 863
    .line 864
    .line 865
    move-result-object v3

    .line 866
    invoke-virtual {v3, v6}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 867
    .line 868
    .line 869
    move-result-object v3

    .line 870
    invoke-virtual {v3, v6, v6, v6}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    .line 871
    .line 872
    .line 873
    move-result-object v3

    .line 874
    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    .line 875
    .line 876
    .line 877
    :cond_1f
    const/16 v3, 0x1c

    .line 878
    .line 879
    if-lt v2, v3, :cond_20

    .line 880
    .line 881
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 882
    .line 883
    .line 884
    move-result-object v3

    .line 885
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 886
    .line 887
    .line 888
    move-result v4

    .line 889
    if-nez v4, :cond_21

    .line 890
    .line 891
    :cond_20
    const/16 v3, 0x1d

    .line 892
    .line 893
    goto :goto_15

    .line 894
    :cond_21
    invoke-static {v3}, Lb/c;->g(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    .line 895
    .line 896
    .line 897
    move-result-object v1

    .line 898
    throw v1

    .line 899
    :goto_15
    if-lt v2, v3, :cond_22

    .line 900
    .line 901
    iget-object v3, v0, Lz/M;->a:Landroid/app/Notification$Builder;

    .line 902
    .line 903
    iget-boolean v4, v1, Lz/B;->t:Z

    .line 904
    .line 905
    invoke-static {v3, v4}, Lz/K;->a(Landroid/app/Notification$Builder;Z)Landroid/app/Notification$Builder;

    .line 906
    .line 907
    .line 908
    iget-object v3, v0, Lz/M;->a:Landroid/app/Notification$Builder;

    .line 909
    .line 910
    const/16 v19, 0x0

    .line 911
    .line 912
    invoke-static/range {v19 .. v19}, Lz/A;->toPlatform(Lz/A;)Landroid/app/Notification$BubbleMetadata;

    .line 913
    .line 914
    .line 915
    move-result-object v4

    .line 916
    invoke-static {v3, v4}, Lz/K;->b(Landroid/app/Notification$Builder;Landroid/app/Notification$BubbleMetadata;)Landroid/app/Notification$Builder;

    .line 917
    .line 918
    .line 919
    :cond_22
    const/16 v3, 0x1f

    .line 920
    .line 921
    if-lt v2, v3, :cond_23

    .line 922
    .line 923
    iget v1, v1, Lz/B;->s:I

    .line 924
    .line 925
    if-eqz v1, :cond_23

    .line 926
    .line 927
    iget-object v2, v0, Lz/M;->a:Landroid/app/Notification$Builder;

    .line 928
    .line 929
    invoke-static {v2, v1}, Lz/L;->b(Landroid/app/Notification$Builder;I)Landroid/app/Notification$Builder;

    .line 930
    .line 931
    .line 932
    :cond_23
    return-void
.end method


# virtual methods
.method public build()Landroid/app/Notification;
    .locals 4

    .line 1
    iget-object v0, p0, Lz/M;->b:Lz/B;

    .line 2
    .line 3
    iget-object v1, v0, Lz/B;->k:Lz/C;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v1, p0}, Lz/C;->apply(Lz/w;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    if-eqz v1, :cond_1

    .line 11
    .line 12
    invoke-virtual {v1, p0}, Lz/C;->makeContentView(Lz/w;)Landroid/widget/RemoteViews;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/4 v2, 0x0

    .line 18
    :goto_0
    invoke-virtual {p0}, Lz/M;->buildInternal()Landroid/app/Notification;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    if-eqz v2, :cond_2

    .line 23
    .line 24
    iput-object v2, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    :goto_1
    if-eqz v1, :cond_3

    .line 31
    .line 32
    invoke-virtual {v1, p0}, Lz/C;->makeBigContentView(Lz/w;)Landroid/widget/RemoteViews;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    if-eqz v2, :cond_3

    .line 37
    .line 38
    iput-object v2, v3, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 39
    .line 40
    :cond_3
    if-eqz v1, :cond_4

    .line 41
    .line 42
    iget-object v0, v0, Lz/B;->k:Lz/C;

    .line 43
    .line 44
    invoke-virtual {v0, p0}, Lz/C;->makeHeadsUpContentView(Lz/w;)Landroid/widget/RemoteViews;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    if-eqz v0, :cond_4

    .line 49
    .line 50
    iput-object v0, v3, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 51
    .line 52
    :cond_4
    if-eqz v1, :cond_5

    .line 53
    .line 54
    invoke-static {v3}, Lz/D;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    if-eqz v0, :cond_5

    .line 59
    .line 60
    invoke-virtual {v1, v0}, Lz/C;->addCompatExtras(Landroid/os/Bundle;)V

    .line 61
    .line 62
    .line 63
    :cond_5
    return-object v3
.end method

.method public buildInternal()Landroid/app/Notification;
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    iget-object v2, p0, Lz/M;->a:Landroid/app/Notification$Builder;

    .line 6
    .line 7
    if-lt v0, v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    :cond_0
    const/16 v1, 0x18

    .line 15
    .line 16
    if-lt v0, v1, :cond_1

    .line 17
    .line 18
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    return-object v0

    .line 23
    :cond_1
    iget-object v0, p0, Lz/M;->c:Landroid/os/Bundle;

    .line 24
    .line 25
    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    return-object v0
.end method

.method public getBuilder()Landroid/app/Notification$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lz/M;->a:Landroid/app/Notification$Builder;

    .line 2
    .line 3
    return-object v0
.end method
