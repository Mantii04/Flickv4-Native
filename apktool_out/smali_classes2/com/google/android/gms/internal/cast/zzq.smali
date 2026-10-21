.class public final Lcom/google/android/gms/internal/cast/zzq;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:J

.field private final zzc:I

.field private final zzd:J

.field private final zze:J

.field private zzf:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/cast/zzp;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzp;->zzi(Lcom/google/android/gms/internal/cast/zzp;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzq;->zza:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzp;->zzc(Lcom/google/android/gms/internal/cast/zzp;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/cast/zzq;->zzb:J

    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzp;->zza(Lcom/google/android/gms/internal/cast/zzp;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/cast/zzq;->zzc:I

    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzp;->zzd(Lcom/google/android/gms/internal/cast/zzp;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/cast/zzq;->zzd:J

    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzp;->zzb(Lcom/google/android/gms/internal/cast/zzp;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/cast/zzq;->zze:J

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/cast/zznq;
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/gms/internal/cast/zzq;->zza:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/cast/zznq;->zza()Lcom/google/android/gms/internal/cast/zznp;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    const/16 v4, 0xb

    .line 14
    .line 15
    const/16 v5, 0x14

    .line 16
    .line 17
    const/16 v6, 0xd

    .line 18
    .line 19
    const/16 v7, 0x11

    .line 20
    .line 21
    const/16 v8, 0x15

    .line 22
    .line 23
    const/4 v9, 0x7

    .line 24
    const/16 v10, 0x13

    .line 25
    .line 26
    const/16 v11, 0x8

    .line 27
    .line 28
    const/16 v12, 0xc

    .line 29
    .line 30
    const/4 v13, 0x5

    .line 31
    const/16 v14, 0x12

    .line 32
    .line 33
    const/4 v15, 0x6

    .line 34
    const/16 v16, 0x1

    .line 35
    .line 36
    const/16 v17, 0x4

    .line 37
    .line 38
    const/16 v18, 0x3

    .line 39
    .line 40
    const/16 v19, 0x2

    .line 41
    .line 42
    const/16 v20, 0x10

    .line 43
    .line 44
    const/16 v21, 0xe

    .line 45
    .line 46
    const/16 v22, 0xa

    .line 47
    .line 48
    const/16 v23, 0x9

    .line 49
    .line 50
    const/16 v24, 0xf

    .line 51
    .line 52
    sparse-switch v3, :sswitch_data_0

    .line 53
    .line 54
    .line 55
    goto/16 :goto_0

    .line 56
    .line 57
    :sswitch_0
    const-string v3, "queueFetchItemIds"

    .line 58
    .line 59
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-eqz v1, :cond_0

    .line 64
    .line 65
    move/from16 v1, v24

    .line 66
    .line 67
    goto/16 :goto_1

    .line 68
    .line 69
    :sswitch_1
    const-string v3, "activeTracks"

    .line 70
    .line 71
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-eqz v1, :cond_0

    .line 76
    .line 77
    move/from16 v1, v23

    .line 78
    .line 79
    goto/16 :goto_1

    .line 80
    .line 81
    :sswitch_2
    const-string v3, "trackStyle"

    .line 82
    .line 83
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    if-eqz v1, :cond_0

    .line 88
    .line 89
    move/from16 v1, v22

    .line 90
    .line 91
    goto/16 :goto_1

    .line 92
    .line 93
    :sswitch_3
    const-string v3, "queueReorder"

    .line 94
    .line 95
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    if-eqz v1, :cond_0

    .line 100
    .line 101
    move/from16 v1, v21

    .line 102
    .line 103
    goto/16 :goto_1

    .line 104
    .line 105
    :sswitch_4
    const-string v3, "queueFetchItemRange"

    .line 106
    .line 107
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    if-eqz v1, :cond_0

    .line 112
    .line 113
    move/from16 v1, v20

    .line 114
    .line 115
    goto/16 :goto_1

    .line 116
    .line 117
    :sswitch_5
    const-string v3, "pause"

    .line 118
    .line 119
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    if-eqz v1, :cond_0

    .line 124
    .line 125
    move/from16 v1, v19

    .line 126
    .line 127
    goto/16 :goto_1

    .line 128
    .line 129
    :sswitch_6
    const-string v3, "stop"

    .line 130
    .line 131
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    if-eqz v1, :cond_0

    .line 136
    .line 137
    move/from16 v1, v18

    .line 138
    .line 139
    goto/16 :goto_1

    .line 140
    .line 141
    :sswitch_7
    const-string v3, "seek"

    .line 142
    .line 143
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v1

    .line 147
    if-eqz v1, :cond_0

    .line 148
    .line 149
    move/from16 v1, v17

    .line 150
    .line 151
    goto/16 :goto_1

    .line 152
    .line 153
    :sswitch_8
    const-string v3, "play"

    .line 154
    .line 155
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result v1

    .line 159
    if-eqz v1, :cond_0

    .line 160
    .line 161
    move/from16 v1, v16

    .line 162
    .line 163
    goto/16 :goto_1

    .line 164
    .line 165
    :sswitch_9
    const-string v3, "mute"

    .line 166
    .line 167
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result v1

    .line 171
    if-eqz v1, :cond_0

    .line 172
    .line 173
    move v1, v15

    .line 174
    goto/16 :goto_1

    .line 175
    .line 176
    :sswitch_a
    const-string v3, "load"

    .line 177
    .line 178
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    move-result v1

    .line 182
    if-eqz v1, :cond_0

    .line 183
    .line 184
    const/4 v1, 0x0

    .line 185
    goto/16 :goto_1

    .line 186
    .line 187
    :sswitch_b
    const-string v3, "setPlaybackRate"

    .line 188
    .line 189
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    move-result v1

    .line 193
    if-eqz v1, :cond_0

    .line 194
    .line 195
    move v1, v14

    .line 196
    goto/16 :goto_1

    .line 197
    .line 198
    :sswitch_c
    const-string v3, "volume"

    .line 199
    .line 200
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    move-result v1

    .line 204
    if-eqz v1, :cond_0

    .line 205
    .line 206
    move v1, v13

    .line 207
    goto/16 :goto_1

    .line 208
    .line 209
    :sswitch_d
    const-string v3, "queueUpdate"

    .line 210
    .line 211
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    move-result v1

    .line 215
    if-eqz v1, :cond_0

    .line 216
    .line 217
    move v1, v12

    .line 218
    goto :goto_1

    .line 219
    :sswitch_e
    const-string v3, "status"

    .line 220
    .line 221
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    move-result v1

    .line 225
    if-eqz v1, :cond_0

    .line 226
    .line 227
    move v1, v11

    .line 228
    goto :goto_1

    .line 229
    :sswitch_f
    const-string v3, "skipAd"

    .line 230
    .line 231
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    move-result v1

    .line 235
    if-eqz v1, :cond_0

    .line 236
    .line 237
    move v1, v10

    .line 238
    goto :goto_1

    .line 239
    :sswitch_10
    const-string v3, "volume-mute"

    .line 240
    .line 241
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    move-result v1

    .line 245
    if-eqz v1, :cond_0

    .line 246
    .line 247
    move v1, v9

    .line 248
    goto :goto_1

    .line 249
    :sswitch_11
    const-string v3, "setPlaybackDevices"

    .line 250
    .line 251
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 252
    .line 253
    .line 254
    move-result v1

    .line 255
    if-eqz v1, :cond_0

    .line 256
    .line 257
    move v1, v8

    .line 258
    goto :goto_1

    .line 259
    :sswitch_12
    const-string v3, "queueFetchItems"

    .line 260
    .line 261
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    move-result v1

    .line 265
    if-eqz v1, :cond_0

    .line 266
    .line 267
    move v1, v7

    .line 268
    goto :goto_1

    .line 269
    :sswitch_13
    const-string v3, "queueRemove"

    .line 270
    .line 271
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 272
    .line 273
    .line 274
    move-result v1

    .line 275
    if-eqz v1, :cond_0

    .line 276
    .line 277
    move v1, v6

    .line 278
    goto :goto_1

    .line 279
    :sswitch_14
    const-string v3, "launch"

    .line 280
    .line 281
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 282
    .line 283
    .line 284
    move-result v1

    .line 285
    if-eqz v1, :cond_0

    .line 286
    .line 287
    move v1, v5

    .line 288
    goto :goto_1

    .line 289
    :sswitch_15
    const-string v3, "queueInsert"

    .line 290
    .line 291
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 292
    .line 293
    .line 294
    move-result v1

    .line 295
    if-eqz v1, :cond_0

    .line 296
    .line 297
    move v1, v4

    .line 298
    goto :goto_1

    .line 299
    :cond_0
    :goto_0
    const/4 v1, -0x1

    .line 300
    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 301
    .line 302
    .line 303
    move/from16 v4, v16

    .line 304
    .line 305
    goto :goto_2

    .line 306
    :pswitch_0
    const/16 v4, 0x17

    .line 307
    .line 308
    goto :goto_2

    .line 309
    :pswitch_1
    const/16 v4, 0x16

    .line 310
    .line 311
    goto :goto_2

    .line 312
    :pswitch_2
    move v4, v8

    .line 313
    goto :goto_2

    .line 314
    :pswitch_3
    move v4, v5

    .line 315
    goto :goto_2

    .line 316
    :pswitch_4
    move v4, v10

    .line 317
    goto :goto_2

    .line 318
    :pswitch_5
    move v4, v14

    .line 319
    goto :goto_2

    .line 320
    :pswitch_6
    move v4, v7

    .line 321
    goto :goto_2

    .line 322
    :pswitch_7
    move/from16 v4, v20

    .line 323
    .line 324
    goto :goto_2

    .line 325
    :pswitch_8
    move/from16 v4, v24

    .line 326
    .line 327
    goto :goto_2

    .line 328
    :pswitch_9
    move/from16 v4, v21

    .line 329
    .line 330
    goto :goto_2

    .line 331
    :pswitch_a
    move v4, v6

    .line 332
    goto :goto_2

    .line 333
    :pswitch_b
    move v4, v12

    .line 334
    goto :goto_2

    .line 335
    :pswitch_c
    move/from16 v4, v22

    .line 336
    .line 337
    goto :goto_2

    .line 338
    :pswitch_d
    move/from16 v4, v23

    .line 339
    .line 340
    goto :goto_2

    .line 341
    :pswitch_e
    move v4, v11

    .line 342
    goto :goto_2

    .line 343
    :pswitch_f
    move v4, v9

    .line 344
    goto :goto_2

    .line 345
    :pswitch_10
    move v4, v15

    .line 346
    goto :goto_2

    .line 347
    :pswitch_11
    move v4, v13

    .line 348
    goto :goto_2

    .line 349
    :pswitch_12
    move/from16 v4, v17

    .line 350
    .line 351
    goto :goto_2

    .line 352
    :pswitch_13
    move/from16 v4, v18

    .line 353
    .line 354
    goto :goto_2

    .line 355
    :pswitch_14
    move/from16 v4, v19

    .line 356
    .line 357
    :goto_2
    :pswitch_15
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/cast/zznp;->zze(I)Lcom/google/android/gms/internal/cast/zznp;

    .line 358
    .line 359
    .line 360
    iget-wide v3, v0, Lcom/google/android/gms/internal/cast/zzq;->zzb:J

    .line 361
    .line 362
    long-to-int v1, v3

    .line 363
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/cast/zznp;->zzb(I)Lcom/google/android/gms/internal/cast/zznp;

    .line 364
    .line 365
    .line 366
    iget v1, v0, Lcom/google/android/gms/internal/cast/zzq;->zzc:I

    .line 367
    .line 368
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/cast/zznp;->zzd(I)Lcom/google/android/gms/internal/cast/zznp;

    .line 369
    .line 370
    .line 371
    iget-wide v3, v0, Lcom/google/android/gms/internal/cast/zzq;->zzd:J

    .line 372
    .line 373
    iget-wide v5, v0, Lcom/google/android/gms/internal/cast/zzq;->zzf:J

    .line 374
    .line 375
    sub-long/2addr v3, v5

    .line 376
    long-to-int v1, v3

    .line 377
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/cast/zznp;->zzc(I)Lcom/google/android/gms/internal/cast/zznp;

    .line 378
    .line 379
    .line 380
    iget-wide v3, v0, Lcom/google/android/gms/internal/cast/zzq;->zze:J

    .line 381
    .line 382
    iget-wide v5, v0, Lcom/google/android/gms/internal/cast/zzq;->zzf:J

    .line 383
    .line 384
    sub-long/2addr v3, v5

    .line 385
    long-to-int v1, v3

    .line 386
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/cast/zznp;->zza(I)Lcom/google/android/gms/internal/cast/zznp;

    .line 387
    .line 388
    .line 389
    invoke-virtual {v2}, Lcom/google/android/gms/internal/cast/zztm;->zzq()Lcom/google/android/gms/internal/cast/zztp;

    .line 390
    .line 391
    .line 392
    move-result-object v1

    .line 393
    check-cast v1, Lcom/google/android/gms/internal/cast/zznq;

    .line 394
    .line 395
    return-object v1

    .line 396
    nop

    .line 397
    :sswitch_data_0
    .sparse-switch
        -0x46e808d6 -> :sswitch_15
        -0x4226dc4d -> :sswitch_14
        -0x380dd30b -> :sswitch_13
        -0x37d356e9 -> :sswitch_12
        -0x37752a80 -> :sswitch_11
        -0x36e71314 -> :sswitch_10
        -0x35ad75fe -> :sswitch_f
        -0x3532300e -> :sswitch_e
        -0x325892c6 -> :sswitch_d
        -0x305518e6 -> :sswitch_c
        -0x17fa60e3 -> :sswitch_b
        0x32c4e6 -> :sswitch_a
        0x335219 -> :sswitch_9
        0x348b34 -> :sswitch_8
        0x35ce78 -> :sswitch_7
        0x360802 -> :sswitch_6
        0x65825f6 -> :sswitch_5
        0x1f50ffc1 -> :sswitch_4
        0x3670baaa -> :sswitch_3
        0x447a5326 -> :sswitch_2
        0x5684c72e -> :sswitch_1
        0x6fa62e3c -> :sswitch_0
    .end sparse-switch

    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
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
        :pswitch_15
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

.method public final zzb(J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/internal/cast/zzq;->zzf:J

    return-void
.end method
