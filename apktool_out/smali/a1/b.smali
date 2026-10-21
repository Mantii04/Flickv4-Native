.class public final La1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LS0/s;


# instance fields
.field public final a:Landroidx/media3/common/util/ParsableByteArray;

.field public final b:Landroidx/media3/common/util/ParsableByteArray;

.field public final c:La1/a;

.field public d:Ljava/util/zip/Inflater;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    .line 5
    .line 6
    invoke-direct {v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, La1/b;->a:Landroidx/media3/common/util/ParsableByteArray;

    .line 10
    .line 11
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    .line 12
    .line 13
    invoke-direct {v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, La1/b;->b:Landroidx/media3/common/util/ParsableByteArray;

    .line 17
    .line 18
    new-instance v0, La1/a;

    .line 19
    .line 20
    invoke-direct {v0}, La1/a;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, La1/b;->c:La1/a;

    .line 24
    .line 25
    new-instance v1, Ljava/lang/String;

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, [B

    .line 33
    .line 34
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 35
    .line 36
    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, La1/a;->parseIdx(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method


# virtual methods
.method public getCueReplacementBehavior()I
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    return v0
.end method

.method public parse([BIILS0/r;Landroidx/media3/common/util/Consumer;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "LS0/r;",
            "Landroidx/media3/common/util/Consumer<",
            "LS0/c;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    add-int v2, v1, p3

    .line 6
    .line 7
    iget-object v3, v0, La1/b;->a:Landroidx/media3/common/util/ParsableByteArray;

    .line 8
    .line 9
    move-object/from16 v4, p1

    .line 10
    .line 11
    invoke-virtual {v3, v4, v2}, Landroidx/media3/common/util/ParsableByteArray;->reset([BI)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v3, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 15
    .line 16
    .line 17
    iget-object v1, v0, La1/b;->d:Ljava/util/zip/Inflater;

    .line 18
    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    new-instance v1, Ljava/util/zip/Inflater;

    .line 22
    .line 23
    invoke-direct {v1}, Ljava/util/zip/Inflater;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v1, v0, La1/b;->d:Ljava/util/zip/Inflater;

    .line 27
    .line 28
    :cond_0
    iget-object v1, v0, La1/b;->d:Ljava/util/zip/Inflater;

    .line 29
    .line 30
    iget-object v2, v0, La1/b;->b:Landroidx/media3/common/util/ParsableByteArray;

    .line 31
    .line 32
    invoke-static {v3, v2, v1}, Landroidx/media3/common/util/Util;->maybeInflate(Landroidx/media3/common/util/ParsableByteArray;Landroidx/media3/common/util/ParsableByteArray;Ljava/util/zip/Inflater;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    invoke-virtual {v3, v1, v2}, Landroidx/media3/common/util/ParsableByteArray;->reset([BI)V

    .line 47
    .line 48
    .line 49
    :cond_1
    iget-object v1, v0, La1/b;->c:La1/a;

    .line 50
    .line 51
    invoke-virtual {v1}, La1/a;->reset()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    const/4 v4, 0x2

    .line 59
    if-lt v2, v4, :cond_11

    .line 60
    .line 61
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    if-eq v5, v2, :cond_2

    .line 66
    .line 67
    goto/16 :goto_a

    .line 68
    .line 69
    :cond_2
    iget-object v2, v1, La1/a;->d:[I

    .line 70
    .line 71
    const-string v5, "VobsubParser"

    .line 72
    .line 73
    if-nez v2, :cond_3

    .line 74
    .line 75
    const-string v2, "Skipping SPU (no palette)"

    .line 76
    .line 77
    invoke-static {v5, v2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    goto/16 :goto_9

    .line 81
    .line 82
    :cond_3
    iget-boolean v2, v1, La1/a;->b:Z

    .line 83
    .line 84
    if-nez v2, :cond_4

    .line 85
    .line 86
    const-string v2, "Skipping SPU (no plane)"

    .line 87
    .line 88
    invoke-static {v5, v2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    goto/16 :goto_9

    .line 92
    .line 93
    :cond_4
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    sub-int/2addr v2, v4

    .line 98
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    .line 99
    .line 100
    .line 101
    move-result v6

    .line 102
    add-int/2addr v6, v2

    .line 103
    invoke-virtual {v3, v6}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 104
    .line 105
    .line 106
    :cond_5
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 107
    .line 108
    .line 109
    move-result v6

    .line 110
    const/4 v7, 0x4

    .line 111
    if-ge v6, v7, :cond_6

    .line 112
    .line 113
    const/4 v8, 0x0

    .line 114
    goto/16 :goto_8

    .line 115
    .line 116
    :cond_6
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    .line 117
    .line 118
    .line 119
    move-result v6

    .line 120
    invoke-virtual {v3, v4}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    .line 124
    .line 125
    .line 126
    move-result v9

    .line 127
    add-int/2addr v9, v2

    .line 128
    const/4 v10, 0x1

    .line 129
    if-eq v9, v6, :cond_7

    .line 130
    .line 131
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    .line 132
    .line 133
    .line 134
    move-result v6

    .line 135
    if-ge v9, v6, :cond_7

    .line 136
    .line 137
    move v6, v10

    .line 138
    goto :goto_0

    .line 139
    :cond_7
    const/4 v6, 0x0

    .line 140
    :goto_0
    if-eqz v6, :cond_8

    .line 141
    .line 142
    move v11, v9

    .line 143
    goto :goto_1

    .line 144
    :cond_8
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    .line 145
    .line 146
    .line 147
    move-result v11

    .line 148
    :goto_1
    move v12, v10

    .line 149
    :goto_2
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    .line 150
    .line 151
    .line 152
    move-result v13

    .line 153
    if-ge v13, v11, :cond_f

    .line 154
    .line 155
    if-eqz v12, :cond_f

    .line 156
    .line 157
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 158
    .line 159
    .line 160
    move-result v12

    .line 161
    const/16 v13, 0xff

    .line 162
    .line 163
    if-eq v12, v13, :cond_e

    .line 164
    .line 165
    iget-object v13, v1, La1/a;->a:[I

    .line 166
    .line 167
    const/4 v14, 0x3

    .line 168
    packed-switch v12, :pswitch_data_0

    .line 169
    .line 170
    .line 171
    const-string v13, "Unrecognized command: "

    .line 172
    .line 173
    invoke-static {v12, v13, v5}, LA/i;->v(ILjava/lang/String;Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    :goto_3
    const/16 p2, 0x0

    .line 177
    .line 178
    const/4 v12, 0x0

    .line 179
    goto/16 :goto_7

    .line 180
    .line 181
    :pswitch_0
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 182
    .line 183
    .line 184
    move-result v12

    .line 185
    if-ge v12, v7, :cond_9

    .line 186
    .line 187
    const-string v12, "Incomplete offsets command"

    .line 188
    .line 189
    invoke-static {v5, v12}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    goto :goto_3

    .line 193
    :cond_9
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    .line 194
    .line 195
    .line 196
    move-result v12

    .line 197
    iput v12, v1, La1/a;->h:I

    .line 198
    .line 199
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    .line 200
    .line 201
    .line 202
    move-result v12

    .line 203
    iput v12, v1, La1/a;->i:I

    .line 204
    .line 205
    :goto_4
    move v12, v10

    .line 206
    const/16 p2, 0x0

    .line 207
    .line 208
    goto/16 :goto_7

    .line 209
    .line 210
    :pswitch_1
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 211
    .line 212
    .line 213
    move-result v12

    .line 214
    const/4 v13, 0x6

    .line 215
    if-ge v12, v13, :cond_a

    .line 216
    .line 217
    const-string v12, "Incomplete area command"

    .line 218
    .line 219
    invoke-static {v5, v12}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    goto :goto_3

    .line 223
    :cond_a
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 224
    .line 225
    .line 226
    move-result v12

    .line 227
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 228
    .line 229
    .line 230
    move-result v13

    .line 231
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 232
    .line 233
    .line 234
    move-result v14

    .line 235
    shl-int/2addr v12, v7

    .line 236
    shr-int/lit8 v15, v13, 0x4

    .line 237
    .line 238
    or-int/2addr v12, v15

    .line 239
    and-int/lit8 v13, v13, 0xf

    .line 240
    .line 241
    shl-int/lit8 v13, v13, 0x8

    .line 242
    .line 243
    or-int/2addr v13, v14

    .line 244
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 245
    .line 246
    .line 247
    move-result v14

    .line 248
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 249
    .line 250
    .line 251
    move-result v15

    .line 252
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 253
    .line 254
    .line 255
    move-result v16

    .line 256
    shl-int/2addr v14, v7

    .line 257
    shr-int/lit8 v17, v15, 0x4

    .line 258
    .line 259
    or-int v14, v14, v17

    .line 260
    .line 261
    and-int/lit8 v15, v15, 0xf

    .line 262
    .line 263
    shl-int/lit8 v15, v15, 0x8

    .line 264
    .line 265
    or-int v15, v15, v16

    .line 266
    .line 267
    new-instance v7, Landroid/graphics/Rect;

    .line 268
    .line 269
    add-int/2addr v13, v10

    .line 270
    add-int/2addr v15, v10

    .line 271
    invoke-direct {v7, v12, v14, v13, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 272
    .line 273
    .line 274
    iput-object v7, v1, La1/a;->g:Landroid/graphics/Rect;

    .line 275
    .line 276
    goto :goto_4

    .line 277
    :pswitch_2
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 278
    .line 279
    .line 280
    move-result v7

    .line 281
    if-ge v7, v4, :cond_b

    .line 282
    .line 283
    const-string v7, "Incomplete alpha command"

    .line 284
    .line 285
    invoke-static {v5, v7}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    goto :goto_3

    .line 289
    :cond_b
    iget-boolean v7, v1, La1/a;->c:Z

    .line 290
    .line 291
    if-nez v7, :cond_c

    .line 292
    .line 293
    const-string v7, "Ignoring alpha command before color command"

    .line 294
    .line 295
    invoke-static {v5, v7}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    goto :goto_3

    .line 299
    :cond_c
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 300
    .line 301
    .line 302
    move-result v7

    .line 303
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 304
    .line 305
    .line 306
    move-result v12

    .line 307
    aget v15, v13, v14

    .line 308
    .line 309
    const/16 p2, 0x0

    .line 310
    .line 311
    shr-int/lit8 v8, v7, 0x4

    .line 312
    .line 313
    invoke-static {v15, v8}, La1/a;->c(II)I

    .line 314
    .line 315
    .line 316
    move-result v8

    .line 317
    aput v8, v13, v14

    .line 318
    .line 319
    aget v8, v13, v4

    .line 320
    .line 321
    and-int/lit8 v7, v7, 0xf

    .line 322
    .line 323
    invoke-static {v8, v7}, La1/a;->c(II)I

    .line 324
    .line 325
    .line 326
    move-result v7

    .line 327
    aput v7, v13, v4

    .line 328
    .line 329
    aget v7, v13, v10

    .line 330
    .line 331
    shr-int/lit8 v8, v12, 0x4

    .line 332
    .line 333
    invoke-static {v7, v8}, La1/a;->c(II)I

    .line 334
    .line 335
    .line 336
    move-result v7

    .line 337
    aput v7, v13, v10

    .line 338
    .line 339
    aget v7, v13, p2

    .line 340
    .line 341
    and-int/lit8 v8, v12, 0xf

    .line 342
    .line 343
    invoke-static {v7, v8}, La1/a;->c(II)I

    .line 344
    .line 345
    .line 346
    move-result v7

    .line 347
    aput v7, v13, p2

    .line 348
    .line 349
    :goto_5
    move v12, v10

    .line 350
    goto :goto_7

    .line 351
    :pswitch_3
    const/16 p2, 0x0

    .line 352
    .line 353
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 354
    .line 355
    .line 356
    move-result v7

    .line 357
    if-ge v7, v4, :cond_d

    .line 358
    .line 359
    const-string v7, "Incomplete color command"

    .line 360
    .line 361
    invoke-static {v5, v7}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    .line 363
    .line 364
    :goto_6
    move/from16 v12, p2

    .line 365
    .line 366
    goto :goto_7

    .line 367
    :cond_d
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 368
    .line 369
    .line 370
    move-result v7

    .line 371
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 372
    .line 373
    .line 374
    move-result v8

    .line 375
    iget-object v12, v1, La1/a;->d:[I

    .line 376
    .line 377
    shr-int/lit8 v15, v7, 0x4

    .line 378
    .line 379
    invoke-static {v12, v15}, La1/a;->a([II)I

    .line 380
    .line 381
    .line 382
    move-result v12

    .line 383
    aput v12, v13, v14

    .line 384
    .line 385
    iget-object v12, v1, La1/a;->d:[I

    .line 386
    .line 387
    and-int/lit8 v7, v7, 0xf

    .line 388
    .line 389
    invoke-static {v12, v7}, La1/a;->a([II)I

    .line 390
    .line 391
    .line 392
    move-result v7

    .line 393
    aput v7, v13, v4

    .line 394
    .line 395
    iget-object v7, v1, La1/a;->d:[I

    .line 396
    .line 397
    shr-int/lit8 v12, v8, 0x4

    .line 398
    .line 399
    invoke-static {v7, v12}, La1/a;->a([II)I

    .line 400
    .line 401
    .line 402
    move-result v7

    .line 403
    aput v7, v13, v10

    .line 404
    .line 405
    iget-object v7, v1, La1/a;->d:[I

    .line 406
    .line 407
    and-int/lit8 v8, v8, 0xf

    .line 408
    .line 409
    invoke-static {v7, v8}, La1/a;->a([II)I

    .line 410
    .line 411
    .line 412
    move-result v7

    .line 413
    aput v7, v13, p2

    .line 414
    .line 415
    iput-boolean v10, v1, La1/a;->c:Z

    .line 416
    .line 417
    goto :goto_5

    .line 418
    :pswitch_4
    const/16 p2, 0x0

    .line 419
    .line 420
    goto :goto_5

    .line 421
    :cond_e
    const/16 p2, 0x0

    .line 422
    .line 423
    goto :goto_6

    .line 424
    :goto_7
    const/4 v7, 0x4

    .line 425
    goto/16 :goto_2

    .line 426
    .line 427
    :cond_f
    if-eqz v6, :cond_10

    .line 428
    .line 429
    invoke-virtual {v3, v9}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 430
    .line 431
    .line 432
    :cond_10
    move v8, v6

    .line 433
    :goto_8
    if-nez v8, :cond_5

    .line 434
    .line 435
    :goto_9
    invoke-virtual {v1, v3}, La1/a;->build(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/common/text/Cue;

    .line 436
    .line 437
    .line 438
    move-result-object v1

    .line 439
    goto :goto_b

    .line 440
    :cond_11
    :goto_a
    const/4 v1, 0x0

    .line 441
    :goto_b
    new-instance v2, LS0/c;

    .line 442
    .line 443
    if-eqz v1, :cond_12

    .line 444
    .line 445
    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    .line 446
    .line 447
    .line 448
    move-result-object v1

    .line 449
    :goto_c
    move-object v3, v1

    .line 450
    goto :goto_d

    .line 451
    :cond_12
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    .line 452
    .line 453
    .line 454
    move-result-object v1

    .line 455
    goto :goto_c

    .line 456
    :goto_d
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    const-wide/32 v6, 0x4c4b40

    .line 462
    .line 463
    .line 464
    invoke-direct/range {v2 .. v7}, LS0/c;-><init>(Ljava/util/List;JJ)V

    .line 465
    .line 466
    .line 467
    move-object/from16 v1, p5

    .line 468
    .line 469
    invoke-interface {v1, v2}, Landroidx/media3/common/util/Consumer;->accept(Ljava/lang/Object;)V

    .line 470
    .line 471
    .line 472
    return-void

    .line 473
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic parseToLegacySubtitle([BII)LS0/i;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, LS0/o;->a(LS0/s;[BII)LS0/i;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic reset()V
    .locals 0

    .line 1
    invoke-static {p0}, LS0/o;->b(LS0/s;)V

    return-void
.end method
