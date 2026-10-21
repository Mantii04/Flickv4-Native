.class public final Lf1/U;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lf1/S;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Landroid/net/Uri;

.field public g:Z

.field public h:I

.field public i:Z

.field public final j:Ljava/util/ArrayList;

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:Landroid/os/Bundle;

.field public s:Landroid/content/IntentSender;

.field public t:Lf1/v;

.field public u:Ljava/util/ArrayList;

.field public v:Lp/g;


# direct methods
.method public constructor <init>(Lf1/S;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lf1/U;->j:Ljava/util/ArrayList;

    .line 10
    .line 11
    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lf1/U;->q:I

    .line 13
    .line 14
    new-instance v0, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lf1/U;->u:Ljava/util/ArrayList;

    .line 20
    .line 21
    iput-object p1, p0, Lf1/U;->a:Lf1/S;

    .line 22
    .line 23
    iput-object p2, p0, Lf1/U;->b:Ljava/lang/String;

    .line 24
    .line 25
    iput-object p3, p0, Lf1/U;->c:Ljava/lang/String;

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lf1/U;->t:Lf1/v;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lf1/U;->g:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    return v0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    return v0
.end method

.method public final b(Lf1/v;)I
    .locals 12

    .line 1
    iget-object v0, p0, Lf1/U;->t:Lf1/v;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eq v0, p1, :cond_21

    .line 5
    .line 6
    iput-object p1, p0, Lf1/U;->t:Lf1/v;

    .line 7
    .line 8
    if-eqz p1, :cond_21

    .line 9
    .line 10
    iget-object v0, p0, Lf1/U;->d:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {p1}, Lf1/v;->getName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-static {v0, v2}, LL/c;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v2, 0x1

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {p1}, Lf1/v;->getName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lf1/U;->d:Ljava/lang/String;

    .line 28
    .line 29
    move v0, v2

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move v0, v1

    .line 32
    :goto_0
    iget-object v3, p0, Lf1/U;->e:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {p1}, Lf1/v;->getDescription()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-static {v3, v4}, LL/c;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-nez v3, :cond_1

    .line 43
    .line 44
    invoke-virtual {p1}, Lf1/v;->getDescription()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iput-object v0, p0, Lf1/U;->e:Ljava/lang/String;

    .line 49
    .line 50
    move v0, v2

    .line 51
    :cond_1
    iget-object v3, p0, Lf1/U;->f:Landroid/net/Uri;

    .line 52
    .line 53
    invoke-virtual {p1}, Lf1/v;->getIconUri()Landroid/net/Uri;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    invoke-static {v3, v4}, LL/c;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-nez v3, :cond_2

    .line 62
    .line 63
    invoke-virtual {p1}, Lf1/v;->getIconUri()Landroid/net/Uri;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    iput-object v0, p0, Lf1/U;->f:Landroid/net/Uri;

    .line 68
    .line 69
    move v0, v2

    .line 70
    :cond_2
    iget-boolean v3, p0, Lf1/U;->g:Z

    .line 71
    .line 72
    invoke-virtual {p1}, Lf1/v;->isEnabled()Z

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    if-eq v3, v4, :cond_3

    .line 77
    .line 78
    invoke-virtual {p1}, Lf1/v;->isEnabled()Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    iput-boolean v0, p0, Lf1/U;->g:Z

    .line 83
    .line 84
    move v0, v2

    .line 85
    :cond_3
    iget v3, p0, Lf1/U;->h:I

    .line 86
    .line 87
    invoke-virtual {p1}, Lf1/v;->getConnectionState()I

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    if-eq v3, v4, :cond_4

    .line 92
    .line 93
    invoke-virtual {p1}, Lf1/v;->getConnectionState()I

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    iput v0, p0, Lf1/U;->h:I

    .line 98
    .line 99
    move v0, v2

    .line 100
    :cond_4
    iget-object v3, p0, Lf1/U;->j:Ljava/util/ArrayList;

    .line 101
    .line 102
    invoke-virtual {p1}, Lf1/v;->getControlFilters()Ljava/util/List;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    if-ne v3, v4, :cond_5

    .line 107
    .line 108
    goto/16 :goto_5

    .line 109
    .line 110
    :cond_5
    if-eqz v3, :cond_10

    .line 111
    .line 112
    if-nez v4, :cond_6

    .line 113
    .line 114
    goto/16 :goto_4

    .line 115
    .line 116
    :cond_6
    invoke-virtual {v3}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    .line 117
    .line 118
    .line 119
    move-result-object v5

    .line 120
    invoke-interface {v4}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    :cond_7
    :goto_1
    invoke-interface {v5}, Ljava/util/ListIterator;->hasNext()Z

    .line 125
    .line 126
    .line 127
    move-result v6

    .line 128
    if-eqz v6, :cond_f

    .line 129
    .line 130
    invoke-interface {v4}, Ljava/util/ListIterator;->hasNext()Z

    .line 131
    .line 132
    .line 133
    move-result v6

    .line 134
    if-eqz v6, :cond_f

    .line 135
    .line 136
    invoke-interface {v5}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v6

    .line 140
    check-cast v6, Landroid/content/IntentFilter;

    .line 141
    .line 142
    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v7

    .line 146
    check-cast v7, Landroid/content/IntentFilter;

    .line 147
    .line 148
    if-ne v6, v7, :cond_8

    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_8
    if-eqz v6, :cond_10

    .line 152
    .line 153
    if-nez v7, :cond_9

    .line 154
    .line 155
    goto :goto_4

    .line 156
    :cond_9
    invoke-virtual {v6}, Landroid/content/IntentFilter;->countActions()I

    .line 157
    .line 158
    .line 159
    move-result v8

    .line 160
    invoke-virtual {v7}, Landroid/content/IntentFilter;->countActions()I

    .line 161
    .line 162
    .line 163
    move-result v9

    .line 164
    if-eq v8, v9, :cond_a

    .line 165
    .line 166
    goto :goto_4

    .line 167
    :cond_a
    move v9, v1

    .line 168
    :goto_2
    if-ge v9, v8, :cond_c

    .line 169
    .line 170
    invoke-virtual {v6, v9}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v10

    .line 174
    invoke-virtual {v7, v9}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v11

    .line 178
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    move-result v10

    .line 182
    if-nez v10, :cond_b

    .line 183
    .line 184
    goto :goto_4

    .line 185
    :cond_b
    add-int/lit8 v9, v9, 0x1

    .line 186
    .line 187
    goto :goto_2

    .line 188
    :cond_c
    invoke-virtual {v6}, Landroid/content/IntentFilter;->countCategories()I

    .line 189
    .line 190
    .line 191
    move-result v8

    .line 192
    invoke-virtual {v7}, Landroid/content/IntentFilter;->countCategories()I

    .line 193
    .line 194
    .line 195
    move-result v9

    .line 196
    if-eq v8, v9, :cond_d

    .line 197
    .line 198
    goto :goto_4

    .line 199
    :cond_d
    move v9, v1

    .line 200
    :goto_3
    if-ge v9, v8, :cond_7

    .line 201
    .line 202
    invoke-virtual {v6, v9}, Landroid/content/IntentFilter;->getCategory(I)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v10

    .line 206
    invoke-virtual {v7, v9}, Landroid/content/IntentFilter;->getCategory(I)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v11

    .line 210
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    move-result v10

    .line 214
    if-nez v10, :cond_e

    .line 215
    .line 216
    goto :goto_4

    .line 217
    :cond_e
    add-int/lit8 v9, v9, 0x1

    .line 218
    .line 219
    goto :goto_3

    .line 220
    :cond_f
    invoke-interface {v5}, Ljava/util/ListIterator;->hasNext()Z

    .line 221
    .line 222
    .line 223
    move-result v5

    .line 224
    if-nez v5, :cond_10

    .line 225
    .line 226
    invoke-interface {v4}, Ljava/util/ListIterator;->hasNext()Z

    .line 227
    .line 228
    .line 229
    move-result v4

    .line 230
    if-nez v4, :cond_10

    .line 231
    .line 232
    goto :goto_5

    .line 233
    :cond_10
    :goto_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 234
    .line 235
    .line 236
    invoke-virtual {p1}, Lf1/v;->getControlFilters()Ljava/util/List;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 241
    .line 242
    .line 243
    move v0, v2

    .line 244
    :goto_5
    iget v3, p0, Lf1/U;->k:I

    .line 245
    .line 246
    invoke-virtual {p1}, Lf1/v;->getPlaybackType()I

    .line 247
    .line 248
    .line 249
    move-result v4

    .line 250
    if-eq v3, v4, :cond_11

    .line 251
    .line 252
    invoke-virtual {p1}, Lf1/v;->getPlaybackType()I

    .line 253
    .line 254
    .line 255
    move-result v0

    .line 256
    iput v0, p0, Lf1/U;->k:I

    .line 257
    .line 258
    move v0, v2

    .line 259
    :cond_11
    iget v3, p0, Lf1/U;->l:I

    .line 260
    .line 261
    invoke-virtual {p1}, Lf1/v;->getPlaybackStream()I

    .line 262
    .line 263
    .line 264
    move-result v4

    .line 265
    if-eq v3, v4, :cond_12

    .line 266
    .line 267
    invoke-virtual {p1}, Lf1/v;->getPlaybackStream()I

    .line 268
    .line 269
    .line 270
    move-result v0

    .line 271
    iput v0, p0, Lf1/U;->l:I

    .line 272
    .line 273
    move v0, v2

    .line 274
    :cond_12
    iget v3, p0, Lf1/U;->m:I

    .line 275
    .line 276
    invoke-virtual {p1}, Lf1/v;->getDeviceType()I

    .line 277
    .line 278
    .line 279
    move-result v4

    .line 280
    if-eq v3, v4, :cond_13

    .line 281
    .line 282
    invoke-virtual {p1}, Lf1/v;->getDeviceType()I

    .line 283
    .line 284
    .line 285
    move-result v0

    .line 286
    iput v0, p0, Lf1/U;->m:I

    .line 287
    .line 288
    move v0, v2

    .line 289
    :cond_13
    iget v3, p0, Lf1/U;->n:I

    .line 290
    .line 291
    invoke-virtual {p1}, Lf1/v;->getVolumeHandling()I

    .line 292
    .line 293
    .line 294
    move-result v4

    .line 295
    const/4 v5, 0x3

    .line 296
    if-eq v3, v4, :cond_14

    .line 297
    .line 298
    invoke-virtual {p1}, Lf1/v;->getVolumeHandling()I

    .line 299
    .line 300
    .line 301
    move-result v0

    .line 302
    iput v0, p0, Lf1/U;->n:I

    .line 303
    .line 304
    move v0, v5

    .line 305
    :cond_14
    iget v3, p0, Lf1/U;->o:I

    .line 306
    .line 307
    invoke-virtual {p1}, Lf1/v;->getVolume()I

    .line 308
    .line 309
    .line 310
    move-result v4

    .line 311
    if-eq v3, v4, :cond_15

    .line 312
    .line 313
    invoke-virtual {p1}, Lf1/v;->getVolume()I

    .line 314
    .line 315
    .line 316
    move-result v0

    .line 317
    iput v0, p0, Lf1/U;->o:I

    .line 318
    .line 319
    move v0, v5

    .line 320
    :cond_15
    iget v3, p0, Lf1/U;->p:I

    .line 321
    .line 322
    invoke-virtual {p1}, Lf1/v;->getVolumeMax()I

    .line 323
    .line 324
    .line 325
    move-result v4

    .line 326
    if-eq v3, v4, :cond_16

    .line 327
    .line 328
    invoke-virtual {p1}, Lf1/v;->getVolumeMax()I

    .line 329
    .line 330
    .line 331
    move-result v0

    .line 332
    iput v0, p0, Lf1/U;->p:I

    .line 333
    .line 334
    goto :goto_6

    .line 335
    :cond_16
    move v5, v0

    .line 336
    :goto_6
    iget v0, p0, Lf1/U;->q:I

    .line 337
    .line 338
    invoke-virtual {p1}, Lf1/v;->getPresentationDisplayId()I

    .line 339
    .line 340
    .line 341
    move-result v3

    .line 342
    if-eq v0, v3, :cond_17

    .line 343
    .line 344
    invoke-virtual {p1}, Lf1/v;->getPresentationDisplayId()I

    .line 345
    .line 346
    .line 347
    move-result v0

    .line 348
    iput v0, p0, Lf1/U;->q:I

    .line 349
    .line 350
    or-int/lit8 v5, v5, 0x5

    .line 351
    .line 352
    :cond_17
    iget-object v0, p0, Lf1/U;->r:Landroid/os/Bundle;

    .line 353
    .line 354
    invoke-virtual {p1}, Lf1/v;->getExtras()Landroid/os/Bundle;

    .line 355
    .line 356
    .line 357
    move-result-object v3

    .line 358
    invoke-static {v0, v3}, LL/c;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 359
    .line 360
    .line 361
    move-result v0

    .line 362
    if-nez v0, :cond_18

    .line 363
    .line 364
    invoke-virtual {p1}, Lf1/v;->getExtras()Landroid/os/Bundle;

    .line 365
    .line 366
    .line 367
    move-result-object v0

    .line 368
    iput-object v0, p0, Lf1/U;->r:Landroid/os/Bundle;

    .line 369
    .line 370
    or-int/lit8 v5, v5, 0x1

    .line 371
    .line 372
    :cond_18
    iget-object v0, p0, Lf1/U;->s:Landroid/content/IntentSender;

    .line 373
    .line 374
    invoke-virtual {p1}, Lf1/v;->getSettingsActivity()Landroid/content/IntentSender;

    .line 375
    .line 376
    .line 377
    move-result-object v3

    .line 378
    invoke-static {v0, v3}, LL/c;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 379
    .line 380
    .line 381
    move-result v0

    .line 382
    if-nez v0, :cond_19

    .line 383
    .line 384
    invoke-virtual {p1}, Lf1/v;->getSettingsActivity()Landroid/content/IntentSender;

    .line 385
    .line 386
    .line 387
    move-result-object v0

    .line 388
    iput-object v0, p0, Lf1/U;->s:Landroid/content/IntentSender;

    .line 389
    .line 390
    or-int/lit8 v5, v5, 0x1

    .line 391
    .line 392
    :cond_19
    iget-boolean v0, p0, Lf1/U;->i:Z

    .line 393
    .line 394
    invoke-virtual {p1}, Lf1/v;->canDisconnectAndKeepPlaying()Z

    .line 395
    .line 396
    .line 397
    move-result v3

    .line 398
    if-eq v0, v3, :cond_1a

    .line 399
    .line 400
    invoke-virtual {p1}, Lf1/v;->canDisconnectAndKeepPlaying()Z

    .line 401
    .line 402
    .line 403
    move-result v0

    .line 404
    iput-boolean v0, p0, Lf1/U;->i:Z

    .line 405
    .line 406
    or-int/lit8 v5, v5, 0x5

    .line 407
    .line 408
    :cond_1a
    invoke-virtual {p1}, Lf1/v;->getGroupMemberIds()Ljava/util/List;

    .line 409
    .line 410
    .line 411
    move-result-object p1

    .line 412
    new-instance v0, Ljava/util/ArrayList;

    .line 413
    .line 414
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 415
    .line 416
    .line 417
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 418
    .line 419
    .line 420
    move-result v3

    .line 421
    iget-object v4, p0, Lf1/U;->u:Ljava/util/ArrayList;

    .line 422
    .line 423
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 424
    .line 425
    .line 426
    move-result v4

    .line 427
    if-eq v3, v4, :cond_1b

    .line 428
    .line 429
    move v1, v2

    .line 430
    :cond_1b
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 431
    .line 432
    .line 433
    move-result v3

    .line 434
    if-nez v3, :cond_1f

    .line 435
    .line 436
    invoke-static {}, Lf1/X;->b()Lf1/k;

    .line 437
    .line 438
    .line 439
    move-result-object v3

    .line 440
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 441
    .line 442
    .line 443
    move-result-object p1

    .line 444
    :cond_1c
    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 445
    .line 446
    .line 447
    move-result v4

    .line 448
    if-eqz v4, :cond_1f

    .line 449
    .line 450
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 451
    .line 452
    .line 453
    move-result-object v4

    .line 454
    check-cast v4, Ljava/lang/String;

    .line 455
    .line 456
    invoke-virtual {p0}, Lf1/U;->getProvider()Lf1/S;

    .line 457
    .line 458
    .line 459
    move-result-object v6

    .line 460
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 461
    .line 462
    .line 463
    invoke-virtual {v6}, Lf1/S;->getComponentName()Landroid/content/ComponentName;

    .line 464
    .line 465
    .line 466
    move-result-object v6

    .line 467
    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 468
    .line 469
    .line 470
    move-result-object v6

    .line 471
    new-instance v7, LL/d;

    .line 472
    .line 473
    invoke-direct {v7, v6, v4}, LL/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 474
    .line 475
    .line 476
    iget-object v4, v3, Lf1/k;->h:Ljava/util/HashMap;

    .line 477
    .line 478
    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    .line 480
    .line 481
    move-result-object v4

    .line 482
    check-cast v4, Ljava/lang/String;

    .line 483
    .line 484
    iget-object v6, v3, Lf1/k;->g:Ljava/util/ArrayList;

    .line 485
    .line 486
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 487
    .line 488
    .line 489
    move-result-object v6

    .line 490
    :cond_1d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 491
    .line 492
    .line 493
    move-result v7

    .line 494
    if-eqz v7, :cond_1e

    .line 495
    .line 496
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 497
    .line 498
    .line 499
    move-result-object v7

    .line 500
    check-cast v7, Lf1/U;

    .line 501
    .line 502
    iget-object v8, v7, Lf1/U;->c:Ljava/lang/String;

    .line 503
    .line 504
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 505
    .line 506
    .line 507
    move-result v8

    .line 508
    if-eqz v8, :cond_1d

    .line 509
    .line 510
    goto :goto_8

    .line 511
    :cond_1e
    const/4 v7, 0x0

    .line 512
    :goto_8
    if-eqz v7, :cond_1c

    .line 513
    .line 514
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 515
    .line 516
    .line 517
    if-nez v1, :cond_1c

    .line 518
    .line 519
    iget-object v4, p0, Lf1/U;->u:Ljava/util/ArrayList;

    .line 520
    .line 521
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 522
    .line 523
    .line 524
    move-result v4

    .line 525
    if-nez v4, :cond_1c

    .line 526
    .line 527
    move v1, v2

    .line 528
    goto :goto_7

    .line 529
    :cond_1f
    if-eqz v1, :cond_20

    .line 530
    .line 531
    iput-object v0, p0, Lf1/U;->u:Ljava/util/ArrayList;

    .line 532
    .line 533
    or-int/lit8 p1, v5, 0x1

    .line 534
    .line 535
    return p1

    .line 536
    :cond_20
    return v5

    .line 537
    :cond_21
    return v1
.end method

.method public final c(Ljava/util/Collection;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lf1/U;->u:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lf1/U;->v:Lp/g;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Lp/g;

    .line 11
    .line 12
    invoke-direct {v0}, Lp/g;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lf1/U;->v:Lp/g;

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lf1/U;->v:Lp/g;

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 20
    .line 21
    .line 22
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_6

    .line 31
    .line 32
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Lf1/B;

    .line 37
    .line 38
    invoke-virtual {v0}, Lf1/B;->getRouteDescriptor()Lf1/v;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v1}, Lf1/v;->getId()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {p0}, Lf1/U;->getProvider()Lf1/S;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    iget-object v2, v2, Lf1/S;->b:Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    if-eqz v3, :cond_3

    .line 61
    .line 62
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    check-cast v3, Lf1/U;

    .line 67
    .line 68
    iget-object v4, v3, Lf1/U;->b:Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    if-eqz v4, :cond_2

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_3
    const/4 v3, 0x0

    .line 78
    :goto_1
    if-nez v3, :cond_4

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_4
    iget-object v1, p0, Lf1/U;->v:Lp/g;

    .line 82
    .line 83
    iget-object v2, v3, Lf1/U;->c:Ljava/lang/String;

    .line 84
    .line 85
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0}, Lf1/B;->getSelectionState()I

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    const/4 v2, 0x2

    .line 93
    if-eq v1, v2, :cond_5

    .line 94
    .line 95
    invoke-virtual {v0}, Lf1/B;->getSelectionState()I

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    const/4 v1, 0x3

    .line 100
    if-ne v0, v1, :cond_1

    .line 101
    .line 102
    :cond_5
    iget-object v0, p0, Lf1/U;->u:Ljava/util/ArrayList;

    .line 103
    .line 104
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_6
    invoke-static {}, Lf1/X;->b()Lf1/k;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    iget-object p1, p1, Lf1/k;->m:Lf1/d;

    .line 113
    .line 114
    const/16 v0, 0x103

    .line 115
    .line 116
    invoke-virtual {p1, v0, p0}, Lf1/d;->b(ILjava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    return-void
.end method

.method public canDisconnect()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lf1/U;->i:Z

    .line 2
    .line 3
    return v0
.end method

.method public getConnectionState()I
    .locals 1

    .line 1
    iget v0, p0, Lf1/U;->h:I

    .line 2
    .line 3
    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lf1/U;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDeviceType()I
    .locals 1

    .line 1
    iget v0, p0, Lf1/U;->m:I

    .line 2
    .line 3
    return v0
.end method

.method public getDynamicGroupController()Lf1/C;
    .locals 2

    .line 1
    invoke-static {}, Lf1/X;->a()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lf1/X;->b()Lf1/k;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v0, v0, Lf1/k;->t:Lf1/F;

    .line 9
    .line 10
    instance-of v1, v0, Lf1/C;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    check-cast v0, Lf1/C;

    .line 15
    .line 16
    return-object v0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    return-object v0
.end method

.method public getDynamicGroupState(Lf1/U;)Lf1/T;
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lf1/U;->v:Lp/g;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p1, p1, Lf1/U;->c:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lp/g;->containsKey(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    new-instance v0, Lf1/T;

    .line 16
    .line 17
    iget-object v1, p0, Lf1/U;->v:Lp/g;

    .line 18
    .line 19
    invoke-virtual {v1, p1}, Lp/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Lf1/B;

    .line 24
    .line 25
    invoke-direct {v0, p1}, Lf1/T;-><init>(Lf1/B;)V

    .line 26
    .line 27
    .line 28
    return-object v0

    .line 29
    :cond_0
    const/4 p1, 0x0

    .line 30
    return-object p1

    .line 31
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    .line 32
    .line 33
    const-string v0, "route must not be null"

    .line 34
    .line 35
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw p1
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .line 1
    iget-object v0, p0, Lf1/U;->r:Landroid/os/Bundle;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIconUri()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lf1/U;->f:Landroid/net/Uri;

    .line 2
    .line 3
    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lf1/U;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMemberRoutes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lf1/U;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf1/U;->u:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lf1/U;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPlaybackStream()I
    .locals 1

    .line 1
    iget v0, p0, Lf1/U;->l:I

    .line 2
    .line 3
    return v0
.end method

.method public getPlaybackType()I
    .locals 1

    .line 1
    iget v0, p0, Lf1/U;->k:I

    .line 2
    .line 3
    return v0
.end method

.method public getPresentationDisplayId()I
    .locals 1

    .line 1
    iget v0, p0, Lf1/U;->q:I

    .line 2
    .line 3
    return v0
.end method

.method public getProvider()Lf1/S;
    .locals 1

    .line 1
    iget-object v0, p0, Lf1/U;->a:Lf1/S;

    .line 2
    .line 3
    return-object v0
.end method

.method public getProviderInstance()Lf1/G;
    .locals 1

    .line 1
    iget-object v0, p0, Lf1/U;->a:Lf1/S;

    .line 2
    .line 3
    invoke-virtual {v0}, Lf1/S;->getProviderInstance()Lf1/G;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getVolume()I
    .locals 1

    .line 1
    iget v0, p0, Lf1/U;->o:I

    .line 2
    .line 3
    return v0
.end method

.method public getVolumeHandling()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lf1/U;->isGroup()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lf1/X;->isGroupVolumeUxEnabled()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    return v0

    .line 15
    :cond_0
    iget v0, p0, Lf1/U;->n:I

    .line 16
    .line 17
    return v0
.end method

.method public getVolumeMax()I
    .locals 1

    .line 1
    iget v0, p0, Lf1/U;->p:I

    .line 2
    .line 3
    return v0
.end method

.method public isDefault()Z
    .locals 2

    .line 1
    invoke-static {}, Lf1/X;->a()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lf1/X;->b()Lf1/k;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v0, v0, Lf1/k;->q:Lf1/U;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    if-ne v0, p0, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    return v0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    return v0

    .line 18
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 19
    .line 20
    const-string v1, "There is no default route.  The media router has not yet been fully initialized."

    .line 21
    .line 22
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw v0
.end method

.method public isDefaultOrBluetooth()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lf1/U;->isDefault()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_2

    .line 7
    .line 8
    iget v0, p0, Lf1/U;->m:I

    .line 9
    .line 10
    const/4 v2, 0x3

    .line 11
    if-ne v0, v2, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0}, Lf1/U;->getProviderInstance()Lf1/G;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lf1/G;->getMetadata()Lf1/E;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lf1/E;->getPackageName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v2, "android"

    .line 27
    .line 28
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    const-string v0, "android.media.intent.category.LIVE_AUDIO"

    .line 35
    .line 36
    invoke-virtual {p0, v0}, Lf1/U;->supportsControlCategory(Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    const-string v0, "android.media.intent.category.LIVE_VIDEO"

    .line 43
    .line 44
    invoke-virtual {p0, v0}, Lf1/U;->supportsControlCategory(Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-nez v0, :cond_1

    .line 49
    .line 50
    return v1

    .line 51
    :cond_1
    const/4 v0, 0x0

    .line 52
    return v0

    .line 53
    :cond_2
    :goto_0
    return v1
.end method

.method public isEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lf1/U;->g:Z

    .line 2
    .line 3
    return v0
.end method

.method public isGroup()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lf1/U;->getMemberRoutes()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-lt v0, v1, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    return v0
.end method

.method public isSelected()Z
    .locals 1

    .line 1
    invoke-static {}, Lf1/X;->a()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lf1/X;->b()Lf1/k;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lf1/k;->e()Lf1/U;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-ne v0, p0, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    return v0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    return v0
.end method

.method public matchesSelector(Lf1/L;)Z
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-static {}, Lf1/X;->a()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lf1/U;->j:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lf1/L;->matchesControlFilters(Ljava/util/List;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    return p1

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 14
    .line 15
    const-string v0, "selector must not be null"

    .line 16
    .line 17
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p1
.end method

.method public requestSetVolume(I)V
    .locals 3

    .line 1
    invoke-static {}, Lf1/X;->a()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lf1/X;->b()Lf1/k;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget v1, p0, Lf1/U;->p:I

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    iget-object v1, v0, Lf1/k;->s:Lf1/U;

    .line 20
    .line 21
    if-ne p0, v1, :cond_0

    .line 22
    .line 23
    iget-object v1, v0, Lf1/k;->t:Lf1/F;

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    invoke-virtual {v1, p1}, Lf1/F;->onSetVolume(I)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    iget-object v0, v0, Lf1/k;->w:Ljava/util/HashMap;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-nez v1, :cond_1

    .line 38
    .line 39
    iget-object v1, p0, Lf1/U;->c:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Lf1/F;

    .line 46
    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    invoke-virtual {v0, p1}, Lf1/F;->onSetVolume(I)V

    .line 50
    .line 51
    .line 52
    :cond_1
    return-void
.end method

.method public requestUpdateVolume(I)V
    .locals 2

    .line 1
    invoke-static {}, Lf1/X;->a()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_1

    .line 5
    .line 6
    invoke-static {}, Lf1/X;->b()Lf1/k;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, v0, Lf1/k;->s:Lf1/U;

    .line 11
    .line 12
    if-ne p0, v1, :cond_0

    .line 13
    .line 14
    iget-object v1, v0, Lf1/k;->t:Lf1/F;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {v1, p1}, Lf1/F;->onUpdateVolume(I)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    iget-object v0, v0, Lf1/k;->w:Ljava/util/HashMap;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_1

    .line 29
    .line 30
    iget-object v1, p0, Lf1/U;->c:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Lf1/F;

    .line 37
    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    invoke-virtual {v0, p1}, Lf1/F;->onUpdateVolume(I)V

    .line 41
    .line 42
    .line 43
    :cond_1
    return-void
.end method

.method public select()V
    .locals 2

    .line 1
    invoke-static {}, Lf1/X;->a()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lf1/X;->b()Lf1/k;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x3

    .line 9
    invoke-virtual {v0, p0, v1}, Lf1/k;->i(Lf1/U;I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public supportsControlCategory(Ljava/lang/String;)Z
    .locals 2

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    invoke-static {}, Lf1/X;->a()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lf1/U;->j:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Landroid/content/IntentFilter;

    .line 23
    .line 24
    invoke-virtual {v1, p1}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    const/4 p1, 0x1

    .line 31
    return p1

    .line 32
    :cond_1
    const/4 p1, 0x0

    .line 33
    return p1

    .line 34
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 35
    .line 36
    const-string v0, "category must not be null"

    .line 37
    .line 38
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "MediaRouter.RouteInfo{ uniqueId="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lf1/U;->c:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", name="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lf1/U;->d:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", description="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lf1/U;->e:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", iconUri="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lf1/U;->f:Landroid/net/Uri;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", enabled="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-boolean v1, p0, Lf1/U;->g:Z

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", connectionState="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget v1, p0, Lf1/U;->h:I

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, ", canDisconnect="

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-boolean v1, p0, Lf1/U;->i:Z

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v1, ", playbackType="

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget v1, p0, Lf1/U;->k:I

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v1, ", playbackStream="

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    iget v1, p0, Lf1/U;->l:I

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v1, ", deviceType="

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    iget v1, p0, Lf1/U;->m:I

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v1, ", volumeHandling="

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    iget v1, p0, Lf1/U;->n:I

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string v1, ", volume="

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    iget v1, p0, Lf1/U;->o:I

    .line 119
    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string v1, ", volumeMax="

    .line 124
    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    iget v1, p0, Lf1/U;->p:I

    .line 129
    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const-string v1, ", presentationDisplayId="

    .line 134
    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    iget v1, p0, Lf1/U;->q:I

    .line 139
    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    const-string v1, ", extras="

    .line 144
    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    iget-object v1, p0, Lf1/U;->r:Landroid/os/Bundle;

    .line 149
    .line 150
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    const-string v1, ", settingsIntent="

    .line 154
    .line 155
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    iget-object v1, p0, Lf1/U;->s:Landroid/content/IntentSender;

    .line 159
    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    const-string v1, ", providerPackageName="

    .line 164
    .line 165
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    iget-object v1, p0, Lf1/U;->a:Lf1/S;

    .line 169
    .line 170
    invoke-virtual {v1}, Lf1/S;->getPackageName()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {p0}, Lf1/U;->isGroup()Z

    .line 178
    .line 179
    .line 180
    move-result v1

    .line 181
    if-eqz v1, :cond_3

    .line 182
    .line 183
    const-string v1, ", members=["

    .line 184
    .line 185
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    iget-object v1, p0, Lf1/U;->u:Ljava/util/ArrayList;

    .line 189
    .line 190
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 191
    .line 192
    .line 193
    move-result v1

    .line 194
    const/4 v2, 0x0

    .line 195
    :goto_0
    if-ge v2, v1, :cond_2

    .line 196
    .line 197
    if-lez v2, :cond_0

    .line 198
    .line 199
    const-string v3, ", "

    .line 200
    .line 201
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    :cond_0
    iget-object v3, p0, Lf1/U;->u:Ljava/util/ArrayList;

    .line 205
    .line 206
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v3

    .line 210
    if-eq v3, p0, :cond_1

    .line 211
    .line 212
    iget-object v3, p0, Lf1/U;->u:Ljava/util/ArrayList;

    .line 213
    .line 214
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v3

    .line 218
    check-cast v3, Lf1/U;

    .line 219
    .line 220
    invoke-virtual {v3}, Lf1/U;->getId()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v3

    .line 224
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 228
    .line 229
    goto :goto_0

    .line 230
    :cond_2
    const/16 v1, 0x5d

    .line 231
    .line 232
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    :cond_3
    const-string v1, " }"

    .line 236
    .line 237
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    return-object v0
.end method
