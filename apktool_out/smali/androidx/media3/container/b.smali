.class public final Landroidx/media3/container/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:Z

.field public final d:Z

.field public final e:Z

.field public final f:I

.field public final g:I

.field public final h:Z

.field public final i:Z

.field public final j:Z

.field public final k:Z

.field public final l:Z

.field public final m:B

.field public final n:B

.field public final o:B


# direct methods
.method public constructor <init>(Ls0/w;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget v0, p1, Ls0/w;->a:I

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x1

    .line 8
    if-ne v0, v2, :cond_0

    .line 9
    .line 10
    move v0, v2

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move v0, v1

    .line 13
    :goto_0
    invoke-static {v0}, LP3/v;->checkArgument(Z)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p1, Ls0/w;->b:Ljava/nio/ByteBuffer;

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    new-array v0, v0, [B

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 29
    .line 30
    .line 31
    new-instance p1, Landroidx/media3/common/util/ParsableBitArray;

    .line 32
    .line 33
    invoke-direct {p1, v0}, Landroidx/media3/common/util/ParsableBitArray;-><init>([B)V

    .line 34
    .line 35
    .line 36
    const/4 v0, 0x3

    .line 37
    invoke-virtual {p1, v0}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    iput v3, p0, Landroidx/media3/container/b;->g:I

    .line 42
    .line 43
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableBitArray;->skipBit()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    iput-boolean v3, p0, Landroidx/media3/container/b;->a:Z

    .line 51
    .line 52
    const/4 v4, 0x5

    .line 53
    const/4 v5, 0x4

    .line 54
    if-eqz v3, :cond_1

    .line 55
    .line 56
    invoke-virtual {p1, v4}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 57
    .line 58
    .line 59
    iput-boolean v1, p0, Landroidx/media3/container/b;->b:Z

    .line 60
    .line 61
    iput-boolean v1, p0, Landroidx/media3/container/b;->h:Z

    .line 62
    .line 63
    goto/16 :goto_7

    .line 64
    .line 65
    :cond_1
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    if-eqz v3, :cond_4

    .line 70
    .line 71
    const/16 v3, 0x40

    .line 72
    .line 73
    invoke-virtual {p1, v3}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    if-eqz v3, :cond_3

    .line 81
    .line 82
    move v3, v1

    .line 83
    :goto_1
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    .line 84
    .line 85
    .line 86
    move-result v6

    .line 87
    if-eqz v6, :cond_2

    .line 88
    .line 89
    const/16 v6, 0x20

    .line 90
    .line 91
    if-ge v3, v6, :cond_3

    .line 92
    .line 93
    invoke-virtual {p1, v3}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 94
    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_3
    :goto_2
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    iput-boolean v3, p0, Landroidx/media3/container/b;->b:Z

    .line 105
    .line 106
    if-eqz v3, :cond_5

    .line 107
    .line 108
    const/16 v3, 0x2f

    .line 109
    .line 110
    invoke-virtual {p1, v3}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 111
    .line 112
    .line 113
    goto :goto_3

    .line 114
    :cond_4
    iput-boolean v1, p0, Landroidx/media3/container/b;->b:Z

    .line 115
    .line 116
    :cond_5
    :goto_3
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    .line 117
    .line 118
    .line 119
    move-result v3

    .line 120
    iput-boolean v3, p0, Landroidx/media3/container/b;->h:Z

    .line 121
    .line 122
    invoke-virtual {p1, v4}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 123
    .line 124
    .line 125
    move-result v3

    .line 126
    move v6, v1

    .line 127
    :goto_4
    if-gt v6, v3, :cond_b

    .line 128
    .line 129
    const/16 v7, 0xc

    .line 130
    .line 131
    invoke-virtual {p1, v7}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 132
    .line 133
    .line 134
    const/4 v7, 0x7

    .line 135
    if-nez v6, :cond_6

    .line 136
    .line 137
    invoke-virtual {p1, v4}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 138
    .line 139
    .line 140
    move-result v8

    .line 141
    if-le v8, v7, :cond_7

    .line 142
    .line 143
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    .line 144
    .line 145
    .line 146
    goto :goto_5

    .line 147
    :cond_6
    invoke-virtual {p1, v4}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 148
    .line 149
    .line 150
    move-result v8

    .line 151
    if-le v8, v7, :cond_7

    .line 152
    .line 153
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableBitArray;->skipBit()V

    .line 154
    .line 155
    .line 156
    :cond_7
    :goto_5
    iget-boolean v7, p0, Landroidx/media3/container/b;->b:Z

    .line 157
    .line 158
    if-eqz v7, :cond_8

    .line 159
    .line 160
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableBitArray;->skipBit()V

    .line 161
    .line 162
    .line 163
    :cond_8
    iget-boolean v7, p0, Landroidx/media3/container/b;->h:Z

    .line 164
    .line 165
    if-eqz v7, :cond_a

    .line 166
    .line 167
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    .line 168
    .line 169
    .line 170
    move-result v7

    .line 171
    if-eqz v7, :cond_a

    .line 172
    .line 173
    if-nez v6, :cond_9

    .line 174
    .line 175
    invoke-virtual {p1, v5}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 176
    .line 177
    .line 178
    goto :goto_6

    .line 179
    :cond_9
    invoke-virtual {p1, v5}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 180
    .line 181
    .line 182
    :cond_a
    :goto_6
    add-int/lit8 v6, v6, 0x1

    .line 183
    .line 184
    goto :goto_4

    .line 185
    :cond_b
    :goto_7
    invoke-virtual {p1, v5}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 186
    .line 187
    .line 188
    move-result v3

    .line 189
    invoke-virtual {p1, v5}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 190
    .line 191
    .line 192
    move-result v4

    .line 193
    add-int/2addr v3, v2

    .line 194
    invoke-virtual {p1, v3}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 195
    .line 196
    .line 197
    add-int/2addr v4, v2

    .line 198
    invoke-virtual {p1, v4}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 199
    .line 200
    .line 201
    iget-boolean v3, p0, Landroidx/media3/container/b;->a:Z

    .line 202
    .line 203
    if-nez v3, :cond_c

    .line 204
    .line 205
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    .line 206
    .line 207
    .line 208
    move-result v3

    .line 209
    iput-boolean v3, p0, Landroidx/media3/container/b;->c:Z

    .line 210
    .line 211
    goto :goto_8

    .line 212
    :cond_c
    iput-boolean v1, p0, Landroidx/media3/container/b;->c:Z

    .line 213
    .line 214
    :goto_8
    iget-boolean v3, p0, Landroidx/media3/container/b;->c:Z

    .line 215
    .line 216
    if-eqz v3, :cond_d

    .line 217
    .line 218
    invoke-virtual {p1, v5}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {p1, v0}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 222
    .line 223
    .line 224
    :cond_d
    invoke-virtual {p1, v0}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 225
    .line 226
    .line 227
    iget-boolean v3, p0, Landroidx/media3/container/b;->a:Z

    .line 228
    .line 229
    const/4 v4, 0x2

    .line 230
    if-eqz v3, :cond_e

    .line 231
    .line 232
    iput-boolean v2, p0, Landroidx/media3/container/b;->e:Z

    .line 233
    .line 234
    iput-boolean v2, p0, Landroidx/media3/container/b;->d:Z

    .line 235
    .line 236
    iput v1, p0, Landroidx/media3/container/b;->f:I

    .line 237
    .line 238
    goto :goto_b

    .line 239
    :cond_e
    invoke-virtual {p1, v5}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    .line 243
    .line 244
    .line 245
    move-result v3

    .line 246
    if-eqz v3, :cond_f

    .line 247
    .line 248
    invoke-virtual {p1, v4}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 249
    .line 250
    .line 251
    :cond_f
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    .line 252
    .line 253
    .line 254
    move-result v5

    .line 255
    if-eqz v5, :cond_10

    .line 256
    .line 257
    iput-boolean v2, p0, Landroidx/media3/container/b;->d:Z

    .line 258
    .line 259
    goto :goto_9

    .line 260
    :cond_10
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    .line 261
    .line 262
    .line 263
    move-result v5

    .line 264
    iput-boolean v5, p0, Landroidx/media3/container/b;->d:Z

    .line 265
    .line 266
    :goto_9
    iget-boolean v5, p0, Landroidx/media3/container/b;->d:Z

    .line 267
    .line 268
    if-eqz v5, :cond_12

    .line 269
    .line 270
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    .line 271
    .line 272
    .line 273
    move-result v5

    .line 274
    if-eqz v5, :cond_11

    .line 275
    .line 276
    iput-boolean v2, p0, Landroidx/media3/container/b;->e:Z

    .line 277
    .line 278
    goto :goto_a

    .line 279
    :cond_11
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    .line 280
    .line 281
    .line 282
    move-result v5

    .line 283
    iput-boolean v5, p0, Landroidx/media3/container/b;->e:Z

    .line 284
    .line 285
    goto :goto_a

    .line 286
    :cond_12
    iput-boolean v2, p0, Landroidx/media3/container/b;->e:Z

    .line 287
    .line 288
    :goto_a
    if-eqz v3, :cond_13

    .line 289
    .line 290
    invoke-virtual {p1, v0}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 291
    .line 292
    .line 293
    move-result v3

    .line 294
    add-int/2addr v3, v2

    .line 295
    iput v3, p0, Landroidx/media3/container/b;->f:I

    .line 296
    .line 297
    goto :goto_b

    .line 298
    :cond_13
    iput v1, p0, Landroidx/media3/container/b;->f:I

    .line 299
    .line 300
    :goto_b
    invoke-virtual {p1, v0}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    .line 304
    .line 305
    .line 306
    move-result v0

    .line 307
    iget v3, p0, Landroidx/media3/container/b;->g:I

    .line 308
    .line 309
    if-ne v3, v4, :cond_14

    .line 310
    .line 311
    if-eqz v0, :cond_14

    .line 312
    .line 313
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    .line 314
    .line 315
    .line 316
    move-result v0

    .line 317
    iput-boolean v0, p0, Landroidx/media3/container/b;->i:Z

    .line 318
    .line 319
    goto :goto_c

    .line 320
    :cond_14
    iput-boolean v1, p0, Landroidx/media3/container/b;->i:Z

    .line 321
    .line 322
    :goto_c
    iget v0, p0, Landroidx/media3/container/b;->g:I

    .line 323
    .line 324
    if-eq v0, v2, :cond_15

    .line 325
    .line 326
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    .line 327
    .line 328
    .line 329
    move-result v0

    .line 330
    iput-boolean v0, p0, Landroidx/media3/container/b;->j:Z

    .line 331
    .line 332
    goto :goto_d

    .line 333
    :cond_15
    iput-boolean v1, p0, Landroidx/media3/container/b;->j:Z

    .line 334
    .line 335
    :goto_d
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    .line 336
    .line 337
    .line 338
    move-result v0

    .line 339
    if-eqz v0, :cond_16

    .line 340
    .line 341
    const/16 v0, 0x8

    .line 342
    .line 343
    invoke-virtual {p1, v0}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 344
    .line 345
    .line 346
    move-result v3

    .line 347
    int-to-byte v3, v3

    .line 348
    iput-byte v3, p0, Landroidx/media3/container/b;->m:B

    .line 349
    .line 350
    invoke-virtual {p1, v0}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 351
    .line 352
    .line 353
    move-result v3

    .line 354
    int-to-byte v3, v3

    .line 355
    iput-byte v3, p0, Landroidx/media3/container/b;->n:B

    .line 356
    .line 357
    invoke-virtual {p1, v0}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 358
    .line 359
    .line 360
    move-result v0

    .line 361
    int-to-byte v0, v0

    .line 362
    iput-byte v0, p0, Landroidx/media3/container/b;->o:B

    .line 363
    .line 364
    goto :goto_e

    .line 365
    :cond_16
    iput-byte v1, p0, Landroidx/media3/container/b;->m:B

    .line 366
    .line 367
    iput-byte v1, p0, Landroidx/media3/container/b;->n:B

    .line 368
    .line 369
    iput-byte v1, p0, Landroidx/media3/container/b;->o:B

    .line 370
    .line 371
    :goto_e
    iget-boolean v0, p0, Landroidx/media3/container/b;->j:Z

    .line 372
    .line 373
    if-eqz v0, :cond_17

    .line 374
    .line 375
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableBitArray;->skipBit()V

    .line 376
    .line 377
    .line 378
    iput-boolean v1, p0, Landroidx/media3/container/b;->k:Z

    .line 379
    .line 380
    iput-boolean v1, p0, Landroidx/media3/container/b;->l:Z

    .line 381
    .line 382
    goto :goto_10

    .line 383
    :cond_17
    iget-byte v0, p0, Landroidx/media3/container/b;->m:B

    .line 384
    .line 385
    if-ne v0, v2, :cond_18

    .line 386
    .line 387
    iget-byte v0, p0, Landroidx/media3/container/b;->n:B

    .line 388
    .line 389
    const/16 v3, 0xd

    .line 390
    .line 391
    if-ne v0, v3, :cond_18

    .line 392
    .line 393
    iget-byte v0, p0, Landroidx/media3/container/b;->o:B

    .line 394
    .line 395
    if-nez v0, :cond_18

    .line 396
    .line 397
    iput-boolean v1, p0, Landroidx/media3/container/b;->k:Z

    .line 398
    .line 399
    iput-boolean v1, p0, Landroidx/media3/container/b;->l:Z

    .line 400
    .line 401
    goto :goto_10

    .line 402
    :cond_18
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableBitArray;->skipBit()V

    .line 403
    .line 404
    .line 405
    iget v0, p0, Landroidx/media3/container/b;->g:I

    .line 406
    .line 407
    if-nez v0, :cond_19

    .line 408
    .line 409
    iput-boolean v2, p0, Landroidx/media3/container/b;->k:Z

    .line 410
    .line 411
    iput-boolean v2, p0, Landroidx/media3/container/b;->l:Z

    .line 412
    .line 413
    goto :goto_f

    .line 414
    :cond_19
    if-ne v0, v2, :cond_1a

    .line 415
    .line 416
    iput-boolean v1, p0, Landroidx/media3/container/b;->k:Z

    .line 417
    .line 418
    iput-boolean v1, p0, Landroidx/media3/container/b;->l:Z

    .line 419
    .line 420
    goto :goto_f

    .line 421
    :cond_1a
    iget-boolean v0, p0, Landroidx/media3/container/b;->i:Z

    .line 422
    .line 423
    if-eqz v0, :cond_1c

    .line 424
    .line 425
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    .line 426
    .line 427
    .line 428
    move-result v0

    .line 429
    iput-boolean v0, p0, Landroidx/media3/container/b;->k:Z

    .line 430
    .line 431
    if-eqz v0, :cond_1b

    .line 432
    .line 433
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    .line 434
    .line 435
    .line 436
    move-result v0

    .line 437
    iput-boolean v0, p0, Landroidx/media3/container/b;->l:Z

    .line 438
    .line 439
    goto :goto_f

    .line 440
    :cond_1b
    iput-boolean v1, p0, Landroidx/media3/container/b;->l:Z

    .line 441
    .line 442
    goto :goto_f

    .line 443
    :cond_1c
    iput-boolean v2, p0, Landroidx/media3/container/b;->k:Z

    .line 444
    .line 445
    iput-boolean v1, p0, Landroidx/media3/container/b;->l:Z

    .line 446
    .line 447
    :goto_f
    iget-boolean v0, p0, Landroidx/media3/container/b;->k:Z

    .line 448
    .line 449
    if-eqz v0, :cond_1d

    .line 450
    .line 451
    iget-boolean v0, p0, Landroidx/media3/container/b;->l:Z

    .line 452
    .line 453
    if-eqz v0, :cond_1d

    .line 454
    .line 455
    invoke-virtual {p1, v4}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 456
    .line 457
    .line 458
    :cond_1d
    :goto_10
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableBitArray;->skipBit()V

    .line 459
    .line 460
    .line 461
    return-void
.end method

.method public static parse(Ls0/w;)Landroidx/media3/container/b;
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Landroidx/media3/container/b;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/media3/container/b;-><init>(Ls0/w;)V
    :try_end_0
    .catch Landroidx/media3/container/ObuParser$NotYetImplementedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    return-object v0

    .line 7
    :catch_0
    const/4 p0, 0x0

    .line 8
    return-object p0
.end method
