.class public final LT0/g;
.super LT0/j;
.source "SourceFile"


# instance fields
.field public final h:Landroidx/media3/common/util/ParsableByteArray;

.field public final i:Landroidx/media3/common/util/ParsableBitArray;

.field public j:I

.field public final k:I

.field public final l:[LT0/e;

.field public m:LT0/e;

.field public n:Ljava/util/List;

.field public o:Ljava/util/List;

.field public p:LT0/f;

.field public q:I


# direct methods
.method public constructor <init>(ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, LT0/j;-><init>()V

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
    iput-object v0, p0, LT0/g;->h:Landroidx/media3/common/util/ParsableByteArray;

    .line 10
    .line 11
    new-instance v0, Landroidx/media3/common/util/ParsableBitArray;

    .line 12
    .line 13
    invoke-direct {v0}, Landroidx/media3/common/util/ParsableBitArray;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, LT0/g;->i:Landroidx/media3/common/util/ParsableBitArray;

    .line 17
    .line 18
    const/4 v0, -0x1

    .line 19
    iput v0, p0, LT0/g;->j:I

    .line 20
    .line 21
    if-ne p1, v0, :cond_0

    .line 22
    .line 23
    const/4 p1, 0x1

    .line 24
    :cond_0
    iput p1, p0, LT0/g;->k:I

    .line 25
    .line 26
    if-eqz p2, :cond_1

    .line 27
    .line 28
    invoke-static {p2}, Landroidx/media3/common/util/CodecSpecificDataUtil;->parseCea708InitializationData(Ljava/util/List;)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    :cond_1
    const/16 p1, 0x8

    .line 33
    .line 34
    new-array p2, p1, [LT0/e;

    .line 35
    .line 36
    iput-object p2, p0, LT0/g;->l:[LT0/e;

    .line 37
    .line 38
    const/4 p2, 0x0

    .line 39
    move v0, p2

    .line 40
    :goto_0
    if-ge v0, p1, :cond_2

    .line 41
    .line 42
    iget-object v1, p0, LT0/g;->l:[LT0/e;

    .line 43
    .line 44
    new-instance v2, LT0/e;

    .line 45
    .line 46
    invoke-direct {v2}, LT0/e;-><init>()V

    .line 47
    .line 48
    .line 49
    aput-object v2, v1, v0

    .line 50
    .line 51
    add-int/lit8 v0, v0, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    iget-object p1, p0, LT0/g;->l:[LT0/e;

    .line 55
    .line 56
    aget-object p1, p1, p2

    .line 57
    .line 58
    iput-object p1, p0, LT0/g;->m:LT0/e;

    .line 59
    .line 60
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, LT0/g;->p:LT0/f;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget v2, v1, LT0/f;->d:I

    .line 9
    .line 10
    iget v1, v1, LT0/f;->b:I

    .line 11
    .line 12
    const/4 v3, 0x2

    .line 13
    mul-int/2addr v1, v3

    .line 14
    const/4 v4, 0x1

    .line 15
    sub-int/2addr v1, v4

    .line 16
    const-string v5, "Cea708Decoder"

    .line 17
    .line 18
    if-eq v2, v1, :cond_1

    .line 19
    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v2, "DtvCcPacket ended prematurely; size is "

    .line 23
    .line 24
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v2, v0, LT0/g;->p:LT0/f;

    .line 28
    .line 29
    iget v2, v2, LT0/f;->b:I

    .line 30
    .line 31
    mul-int/2addr v2, v3

    .line 32
    sub-int/2addr v2, v4

    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v2, ", but current index is "

    .line 37
    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-object v2, v0, LT0/g;->p:LT0/f;

    .line 42
    .line 43
    iget v2, v2, LT0/f;->d:I

    .line 44
    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v2, " (sequence number "

    .line 49
    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    iget-object v2, v0, LT0/g;->p:LT0/f;

    .line 54
    .line 55
    iget v2, v2, LT0/f;->a:I

    .line 56
    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v2, ");"

    .line 61
    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-static {v5, v1}, Landroidx/media3/common/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    :cond_1
    iget-object v1, v0, LT0/g;->p:LT0/f;

    .line 73
    .line 74
    iget-object v2, v1, LT0/f;->c:[B

    .line 75
    .line 76
    iget v1, v1, LT0/f;->d:I

    .line 77
    .line 78
    iget-object v6, v0, LT0/g;->i:Landroidx/media3/common/util/ParsableBitArray;

    .line 79
    .line 80
    invoke-virtual {v6, v2, v1}, Landroidx/media3/common/util/ParsableBitArray;->reset([BI)V

    .line 81
    .line 82
    .line 83
    const/4 v2, 0x0

    .line 84
    :cond_2
    :goto_0
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableBitArray;->bitsLeft()I

    .line 85
    .line 86
    .line 87
    move-result v7

    .line 88
    if-lez v7, :cond_34

    .line 89
    .line 90
    const/4 v7, 0x3

    .line 91
    invoke-virtual {v6, v7}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 92
    .line 93
    .line 94
    move-result v8

    .line 95
    const/4 v9, 0x5

    .line 96
    invoke-virtual {v6, v9}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 97
    .line 98
    .line 99
    move-result v9

    .line 100
    const/4 v10, 0x6

    .line 101
    const/4 v11, 0x7

    .line 102
    if-ne v8, v11, :cond_3

    .line 103
    .line 104
    invoke-virtual {v6, v3}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v6, v10}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 108
    .line 109
    .line 110
    move-result v8

    .line 111
    if-ge v8, v11, :cond_3

    .line 112
    .line 113
    const-string v12, "Invalid extended service number: "

    .line 114
    .line 115
    invoke-static {v8, v12, v5}, LA/i;->v(ILjava/lang/String;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    :cond_3
    if-nez v9, :cond_4

    .line 119
    .line 120
    if-eqz v8, :cond_34

    .line 121
    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    const-string v3, "serviceNumber is non-zero ("

    .line 125
    .line 126
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    const-string v3, ") when blockSize is 0"

    .line 133
    .line 134
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    invoke-static {v5, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    goto/16 :goto_11

    .line 145
    .line 146
    :cond_4
    iget v12, v0, LT0/g;->k:I

    .line 147
    .line 148
    if-eq v8, v12, :cond_5

    .line 149
    .line 150
    invoke-virtual {v6, v9}, Landroidx/media3/common/util/ParsableBitArray;->skipBytes(I)V

    .line 151
    .line 152
    .line 153
    goto :goto_0

    .line 154
    :cond_5
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableBitArray;->getPosition()I

    .line 155
    .line 156
    .line 157
    move-result v8

    .line 158
    mul-int/lit8 v9, v9, 0x8

    .line 159
    .line 160
    add-int/2addr v9, v8

    .line 161
    :goto_1
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableBitArray;->getPosition()I

    .line 162
    .line 163
    .line 164
    move-result v8

    .line 165
    if-ge v8, v9, :cond_2

    .line 166
    .line 167
    const/16 v8, 0x8

    .line 168
    .line 169
    invoke-virtual {v6, v8}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 170
    .line 171
    .line 172
    move-result v12

    .line 173
    const/16 v14, 0x17

    .line 174
    .line 175
    const/16 v13, 0x9f

    .line 176
    .line 177
    move/from16 v16, v4

    .line 178
    .line 179
    const/16 v4, 0x7f

    .line 180
    .line 181
    const/16 v1, 0x18

    .line 182
    .line 183
    const/16 v15, 0x1f

    .line 184
    .line 185
    const/16 v10, 0x10

    .line 186
    .line 187
    if-eq v12, v10, :cond_1f

    .line 188
    .line 189
    if-gt v12, v15, :cond_a

    .line 190
    .line 191
    if-eqz v12, :cond_c

    .line 192
    .line 193
    if-eq v12, v7, :cond_9

    .line 194
    .line 195
    if-eq v12, v8, :cond_8

    .line 196
    .line 197
    packed-switch v12, :pswitch_data_0

    .line 198
    .line 199
    .line 200
    const/16 v4, 0x11

    .line 201
    .line 202
    if-lt v12, v4, :cond_6

    .line 203
    .line 204
    if-gt v12, v14, :cond_6

    .line 205
    .line 206
    new-instance v1, Ljava/lang/StringBuilder;

    .line 207
    .line 208
    const-string v4, "Currently unsupported COMMAND_EXT1 Command: "

    .line 209
    .line 210
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    invoke-static {v5, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v6, v8}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 224
    .line 225
    .line 226
    goto :goto_3

    .line 227
    :cond_6
    if-lt v12, v1, :cond_7

    .line 228
    .line 229
    if-gt v12, v15, :cond_7

    .line 230
    .line 231
    new-instance v1, Ljava/lang/StringBuilder;

    .line 232
    .line 233
    const-string v4, "Currently unsupported COMMAND_P16 Command: "

    .line 234
    .line 235
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    invoke-static {v5, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v6, v10}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 249
    .line 250
    .line 251
    goto :goto_3

    .line 252
    :cond_7
    const-string v1, "Invalid C0 command: "

    .line 253
    .line 254
    invoke-static {v12, v1, v5}, LA/i;->v(ILjava/lang/String;Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    goto :goto_3

    .line 258
    :pswitch_0
    iget-object v1, v0, LT0/g;->m:LT0/e;

    .line 259
    .line 260
    const/16 v4, 0xa

    .line 261
    .line 262
    invoke-virtual {v1, v4}, LT0/e;->append(C)V

    .line 263
    .line 264
    .line 265
    goto :goto_3

    .line 266
    :pswitch_1
    invoke-virtual {v0}, LT0/g;->c()V

    .line 267
    .line 268
    .line 269
    goto :goto_3

    .line 270
    :cond_8
    iget-object v1, v0, LT0/g;->m:LT0/e;

    .line 271
    .line 272
    invoke-virtual {v1}, LT0/e;->backspace()V

    .line 273
    .line 274
    .line 275
    goto :goto_3

    .line 276
    :cond_9
    invoke-virtual {v0}, LT0/g;->b()Ljava/util/List;

    .line 277
    .line 278
    .line 279
    move-result-object v1

    .line 280
    iput-object v1, v0, LT0/g;->n:Ljava/util/List;

    .line 281
    .line 282
    goto :goto_3

    .line 283
    :cond_a
    if-gt v12, v4, :cond_d

    .line 284
    .line 285
    if-ne v12, v4, :cond_b

    .line 286
    .line 287
    iget-object v1, v0, LT0/g;->m:LT0/e;

    .line 288
    .line 289
    const/16 v2, 0x266b

    .line 290
    .line 291
    invoke-virtual {v1, v2}, LT0/e;->append(C)V

    .line 292
    .line 293
    .line 294
    goto :goto_2

    .line 295
    :cond_b
    iget-object v1, v0, LT0/g;->m:LT0/e;

    .line 296
    .line 297
    and-int/lit16 v2, v12, 0xff

    .line 298
    .line 299
    int-to-char v2, v2

    .line 300
    invoke-virtual {v1, v2}, LT0/e;->append(C)V

    .line 301
    .line 302
    .line 303
    :goto_2
    move/from16 v2, v16

    .line 304
    .line 305
    :cond_c
    :goto_3
    :pswitch_2
    const/4 v4, 0x6

    .line 306
    const/16 v17, 0x0

    .line 307
    .line 308
    goto/16 :goto_10

    .line 309
    .line 310
    :cond_d
    if-gt v12, v13, :cond_1d

    .line 311
    .line 312
    const/4 v2, 0x4

    .line 313
    iget-object v4, v0, LT0/g;->l:[LT0/e;

    .line 314
    .line 315
    packed-switch v12, :pswitch_data_1

    .line 316
    .line 317
    .line 318
    :pswitch_3
    const-string v1, "Invalid C1 command: "

    .line 319
    .line 320
    invoke-static {v12, v1, v5}, LA/i;->v(ILjava/lang/String;Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    :cond_e
    :goto_4
    :pswitch_4
    move/from16 v13, v16

    .line 324
    .line 325
    const/4 v10, 0x0

    .line 326
    goto/16 :goto_c

    .line 327
    .line 328
    :pswitch_5
    add-int/lit16 v12, v12, -0x98

    .line 329
    .line 330
    aget-object v18, v4, v12

    .line 331
    .line 332
    invoke-virtual {v6, v3}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 333
    .line 334
    .line 335
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    .line 336
    .line 337
    .line 338
    move-result v19

    .line 339
    invoke-virtual {v6, v3}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 340
    .line 341
    .line 342
    invoke-virtual {v6, v7}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 343
    .line 344
    .line 345
    move-result v20

    .line 346
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    .line 347
    .line 348
    .line 349
    move-result v21

    .line 350
    invoke-virtual {v6, v11}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 351
    .line 352
    .line 353
    move-result v22

    .line 354
    invoke-virtual {v6, v8}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 355
    .line 356
    .line 357
    move-result v23

    .line 358
    invoke-virtual {v6, v2}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 359
    .line 360
    .line 361
    move-result v25

    .line 362
    invoke-virtual {v6, v2}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 363
    .line 364
    .line 365
    move-result v24

    .line 366
    invoke-virtual {v6, v3}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 367
    .line 368
    .line 369
    const/4 v1, 0x6

    .line 370
    invoke-virtual {v6, v1}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 371
    .line 372
    .line 373
    invoke-virtual {v6, v3}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 374
    .line 375
    .line 376
    invoke-virtual {v6, v7}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 377
    .line 378
    .line 379
    move-result v26

    .line 380
    invoke-virtual {v6, v7}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 381
    .line 382
    .line 383
    move-result v27

    .line 384
    invoke-virtual/range {v18 .. v27}, LT0/e;->defineWindow(ZIZIIIIII)V

    .line 385
    .line 386
    .line 387
    iget v1, v0, LT0/g;->q:I

    .line 388
    .line 389
    if-eq v1, v12, :cond_e

    .line 390
    .line 391
    iput v12, v0, LT0/g;->q:I

    .line 392
    .line 393
    aget-object v1, v4, v12

    .line 394
    .line 395
    iput-object v1, v0, LT0/g;->m:LT0/e;

    .line 396
    .line 397
    goto :goto_4

    .line 398
    :pswitch_6
    iget-object v1, v0, LT0/g;->m:LT0/e;

    .line 399
    .line 400
    invoke-virtual {v1}, LT0/e;->isDefined()Z

    .line 401
    .line 402
    .line 403
    move-result v1

    .line 404
    if-nez v1, :cond_f

    .line 405
    .line 406
    const/16 v1, 0x20

    .line 407
    .line 408
    invoke-virtual {v6, v1}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 409
    .line 410
    .line 411
    goto :goto_4

    .line 412
    :cond_f
    invoke-virtual {v6, v3}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 413
    .line 414
    .line 415
    move-result v1

    .line 416
    invoke-virtual {v6, v3}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 417
    .line 418
    .line 419
    move-result v2

    .line 420
    invoke-virtual {v6, v3}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 421
    .line 422
    .line 423
    move-result v4

    .line 424
    invoke-virtual {v6, v3}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 425
    .line 426
    .line 427
    move-result v10

    .line 428
    invoke-static {v2, v4, v10, v1}, LT0/e;->getArgbColorFromCeaColor(IIII)I

    .line 429
    .line 430
    .line 431
    move-result v19

    .line 432
    invoke-virtual {v6, v3}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 433
    .line 434
    .line 435
    move-result v1

    .line 436
    invoke-virtual {v6, v3}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 437
    .line 438
    .line 439
    move-result v2

    .line 440
    invoke-virtual {v6, v3}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 441
    .line 442
    .line 443
    move-result v4

    .line 444
    invoke-virtual {v6, v3}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 445
    .line 446
    .line 447
    move-result v10

    .line 448
    invoke-static {v2, v4, v10}, LT0/e;->getArgbColorFromCeaColor(III)I

    .line 449
    .line 450
    .line 451
    move-result v20

    .line 452
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    .line 453
    .line 454
    .line 455
    move-result v2

    .line 456
    if-eqz v2, :cond_10

    .line 457
    .line 458
    or-int/lit8 v1, v1, 0x4

    .line 459
    .line 460
    :cond_10
    move/from16 v22, v1

    .line 461
    .line 462
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    .line 463
    .line 464
    .line 465
    move-result v21

    .line 466
    invoke-virtual {v6, v3}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 467
    .line 468
    .line 469
    move-result v23

    .line 470
    invoke-virtual {v6, v3}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 471
    .line 472
    .line 473
    move-result v24

    .line 474
    invoke-virtual {v6, v3}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 475
    .line 476
    .line 477
    move-result v25

    .line 478
    invoke-virtual {v6, v8}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 479
    .line 480
    .line 481
    iget-object v1, v0, LT0/g;->m:LT0/e;

    .line 482
    .line 483
    move-object/from16 v18, v1

    .line 484
    .line 485
    invoke-virtual/range {v18 .. v25}, LT0/e;->setWindowAttributes(IIZIIII)V

    .line 486
    .line 487
    .line 488
    goto/16 :goto_4

    .line 489
    .line 490
    :pswitch_7
    iget-object v1, v0, LT0/g;->m:LT0/e;

    .line 491
    .line 492
    invoke-virtual {v1}, LT0/e;->isDefined()Z

    .line 493
    .line 494
    .line 495
    move-result v1

    .line 496
    if-nez v1, :cond_11

    .line 497
    .line 498
    invoke-virtual {v6, v10}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 499
    .line 500
    .line 501
    goto/16 :goto_4

    .line 502
    .line 503
    :cond_11
    invoke-virtual {v6, v2}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 504
    .line 505
    .line 506
    invoke-virtual {v6, v2}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 507
    .line 508
    .line 509
    move-result v1

    .line 510
    invoke-virtual {v6, v3}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 511
    .line 512
    .line 513
    const/4 v2, 0x6

    .line 514
    invoke-virtual {v6, v2}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 515
    .line 516
    .line 517
    move-result v4

    .line 518
    iget-object v2, v0, LT0/g;->m:LT0/e;

    .line 519
    .line 520
    invoke-virtual {v2, v1, v4}, LT0/e;->setPenLocation(II)V

    .line 521
    .line 522
    .line 523
    goto/16 :goto_4

    .line 524
    .line 525
    :pswitch_8
    iget-object v2, v0, LT0/g;->m:LT0/e;

    .line 526
    .line 527
    invoke-virtual {v2}, LT0/e;->isDefined()Z

    .line 528
    .line 529
    .line 530
    move-result v2

    .line 531
    if-nez v2, :cond_12

    .line 532
    .line 533
    invoke-virtual {v6, v1}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 534
    .line 535
    .line 536
    goto/16 :goto_4

    .line 537
    .line 538
    :cond_12
    invoke-virtual {v6, v3}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 539
    .line 540
    .line 541
    move-result v1

    .line 542
    invoke-virtual {v6, v3}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 543
    .line 544
    .line 545
    move-result v2

    .line 546
    invoke-virtual {v6, v3}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 547
    .line 548
    .line 549
    move-result v4

    .line 550
    invoke-virtual {v6, v3}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 551
    .line 552
    .line 553
    move-result v8

    .line 554
    invoke-static {v2, v4, v8, v1}, LT0/e;->getArgbColorFromCeaColor(IIII)I

    .line 555
    .line 556
    .line 557
    move-result v1

    .line 558
    invoke-virtual {v6, v3}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 559
    .line 560
    .line 561
    move-result v2

    .line 562
    invoke-virtual {v6, v3}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 563
    .line 564
    .line 565
    move-result v4

    .line 566
    invoke-virtual {v6, v3}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 567
    .line 568
    .line 569
    move-result v8

    .line 570
    invoke-virtual {v6, v3}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 571
    .line 572
    .line 573
    move-result v10

    .line 574
    invoke-static {v4, v8, v10, v2}, LT0/e;->getArgbColorFromCeaColor(IIII)I

    .line 575
    .line 576
    .line 577
    move-result v2

    .line 578
    invoke-virtual {v6, v3}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 579
    .line 580
    .line 581
    invoke-virtual {v6, v3}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 582
    .line 583
    .line 584
    move-result v4

    .line 585
    invoke-virtual {v6, v3}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 586
    .line 587
    .line 588
    move-result v8

    .line 589
    invoke-virtual {v6, v3}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 590
    .line 591
    .line 592
    move-result v10

    .line 593
    invoke-static {v4, v8, v10}, LT0/e;->getArgbColorFromCeaColor(III)I

    .line 594
    .line 595
    .line 596
    move-result v4

    .line 597
    iget-object v8, v0, LT0/g;->m:LT0/e;

    .line 598
    .line 599
    invoke-virtual {v8, v1, v2, v4}, LT0/e;->setPenColor(III)V

    .line 600
    .line 601
    .line 602
    goto/16 :goto_4

    .line 603
    .line 604
    :pswitch_9
    iget-object v1, v0, LT0/g;->m:LT0/e;

    .line 605
    .line 606
    invoke-virtual {v1}, LT0/e;->isDefined()Z

    .line 607
    .line 608
    .line 609
    move-result v1

    .line 610
    if-nez v1, :cond_13

    .line 611
    .line 612
    invoke-virtual {v6, v10}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 613
    .line 614
    .line 615
    goto/16 :goto_4

    .line 616
    .line 617
    :cond_13
    invoke-virtual {v6, v2}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 618
    .line 619
    .line 620
    move-result v19

    .line 621
    invoke-virtual {v6, v3}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 622
    .line 623
    .line 624
    move-result v20

    .line 625
    invoke-virtual {v6, v3}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 626
    .line 627
    .line 628
    move-result v21

    .line 629
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    .line 630
    .line 631
    .line 632
    move-result v22

    .line 633
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    .line 634
    .line 635
    .line 636
    move-result v23

    .line 637
    invoke-virtual {v6, v7}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 638
    .line 639
    .line 640
    move-result v24

    .line 641
    invoke-virtual {v6, v7}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 642
    .line 643
    .line 644
    move-result v25

    .line 645
    iget-object v1, v0, LT0/g;->m:LT0/e;

    .line 646
    .line 647
    move-object/from16 v18, v1

    .line 648
    .line 649
    invoke-virtual/range {v18 .. v25}, LT0/e;->setPenAttributes(IIIZZII)V

    .line 650
    .line 651
    .line 652
    goto/16 :goto_4

    .line 653
    .line 654
    :pswitch_a
    invoke-virtual {v0}, LT0/g;->c()V

    .line 655
    .line 656
    .line 657
    goto/16 :goto_4

    .line 658
    .line 659
    :pswitch_b
    invoke-virtual {v6, v8}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 660
    .line 661
    .line 662
    goto/16 :goto_4

    .line 663
    .line 664
    :pswitch_c
    move/from16 v1, v16

    .line 665
    .line 666
    :goto_5
    if-gt v1, v8, :cond_e

    .line 667
    .line 668
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    .line 669
    .line 670
    .line 671
    move-result v2

    .line 672
    if-eqz v2, :cond_14

    .line 673
    .line 674
    rsub-int/lit8 v2, v1, 0x8

    .line 675
    .line 676
    aget-object v2, v4, v2

    .line 677
    .line 678
    invoke-virtual {v2}, LT0/e;->reset()V

    .line 679
    .line 680
    .line 681
    :cond_14
    add-int/lit8 v1, v1, 0x1

    .line 682
    .line 683
    goto :goto_5

    .line 684
    :pswitch_d
    move/from16 v1, v16

    .line 685
    .line 686
    :goto_6
    if-gt v1, v8, :cond_e

    .line 687
    .line 688
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    .line 689
    .line 690
    .line 691
    move-result v2

    .line 692
    if-eqz v2, :cond_15

    .line 693
    .line 694
    rsub-int/lit8 v2, v1, 0x8

    .line 695
    .line 696
    aget-object v2, v4, v2

    .line 697
    .line 698
    invoke-virtual {v2}, LT0/e;->isVisible()Z

    .line 699
    .line 700
    .line 701
    move-result v10

    .line 702
    xor-int/lit8 v10, v10, 0x1

    .line 703
    .line 704
    invoke-virtual {v2, v10}, LT0/e;->setVisibility(Z)V

    .line 705
    .line 706
    .line 707
    :cond_15
    add-int/lit8 v1, v1, 0x1

    .line 708
    .line 709
    goto :goto_6

    .line 710
    :pswitch_e
    move/from16 v1, v16

    .line 711
    .line 712
    :goto_7
    if-gt v1, v8, :cond_17

    .line 713
    .line 714
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    .line 715
    .line 716
    .line 717
    move-result v2

    .line 718
    if-eqz v2, :cond_16

    .line 719
    .line 720
    rsub-int/lit8 v2, v1, 0x8

    .line 721
    .line 722
    aget-object v2, v4, v2

    .line 723
    .line 724
    const/4 v10, 0x0

    .line 725
    invoke-virtual {v2, v10}, LT0/e;->setVisibility(Z)V

    .line 726
    .line 727
    .line 728
    goto :goto_8

    .line 729
    :cond_16
    const/4 v10, 0x0

    .line 730
    :goto_8
    add-int/lit8 v1, v1, 0x1

    .line 731
    .line 732
    goto :goto_7

    .line 733
    :cond_17
    const/4 v10, 0x0

    .line 734
    :cond_18
    move/from16 v13, v16

    .line 735
    .line 736
    goto :goto_c

    .line 737
    :pswitch_f
    const/4 v10, 0x0

    .line 738
    move/from16 v1, v16

    .line 739
    .line 740
    :goto_9
    if-gt v1, v8, :cond_18

    .line 741
    .line 742
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    .line 743
    .line 744
    .line 745
    move-result v2

    .line 746
    if-eqz v2, :cond_19

    .line 747
    .line 748
    rsub-int/lit8 v2, v1, 0x8

    .line 749
    .line 750
    aget-object v2, v4, v2

    .line 751
    .line 752
    move/from16 v13, v16

    .line 753
    .line 754
    invoke-virtual {v2, v13}, LT0/e;->setVisibility(Z)V

    .line 755
    .line 756
    .line 757
    goto :goto_a

    .line 758
    :cond_19
    move/from16 v13, v16

    .line 759
    .line 760
    :goto_a
    add-int/lit8 v1, v1, 0x1

    .line 761
    .line 762
    move/from16 v16, v13

    .line 763
    .line 764
    goto :goto_9

    .line 765
    :pswitch_10
    move/from16 v13, v16

    .line 766
    .line 767
    const/4 v10, 0x0

    .line 768
    move v1, v13

    .line 769
    :goto_b
    if-gt v1, v8, :cond_1b

    .line 770
    .line 771
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    .line 772
    .line 773
    .line 774
    move-result v2

    .line 775
    if-eqz v2, :cond_1a

    .line 776
    .line 777
    rsub-int/lit8 v2, v1, 0x8

    .line 778
    .line 779
    aget-object v2, v4, v2

    .line 780
    .line 781
    invoke-virtual {v2}, LT0/e;->clear()V

    .line 782
    .line 783
    .line 784
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    .line 785
    .line 786
    goto :goto_b

    .line 787
    :pswitch_11
    move/from16 v13, v16

    .line 788
    .line 789
    const/4 v10, 0x0

    .line 790
    add-int/lit8 v12, v12, -0x80

    .line 791
    .line 792
    iget v1, v0, LT0/g;->q:I

    .line 793
    .line 794
    if-eq v1, v12, :cond_1b

    .line 795
    .line 796
    iput v12, v0, LT0/g;->q:I

    .line 797
    .line 798
    aget-object v1, v4, v12

    .line 799
    .line 800
    iput-object v1, v0, LT0/g;->m:LT0/e;

    .line 801
    .line 802
    :cond_1b
    :goto_c
    move/from16 v17, v10

    .line 803
    .line 804
    move v2, v13

    .line 805
    move/from16 v16, v2

    .line 806
    .line 807
    :cond_1c
    :goto_d
    const/4 v4, 0x6

    .line 808
    goto/16 :goto_10

    .line 809
    .line 810
    :cond_1d
    move/from16 v13, v16

    .line 811
    .line 812
    const/16 v1, 0xff

    .line 813
    .line 814
    const/4 v10, 0x0

    .line 815
    if-gt v12, v1, :cond_1e

    .line 816
    .line 817
    iget-object v1, v0, LT0/g;->m:LT0/e;

    .line 818
    .line 819
    and-int/lit16 v2, v12, 0xff

    .line 820
    .line 821
    int-to-char v2, v2

    .line 822
    invoke-virtual {v1, v2}, LT0/e;->append(C)V

    .line 823
    .line 824
    .line 825
    goto :goto_c

    .line 826
    :cond_1e
    const-string v1, "Invalid base command: "

    .line 827
    .line 828
    invoke-static {v12, v1, v5}, LA/i;->v(ILjava/lang/String;Ljava/lang/String;)V

    .line 829
    .line 830
    .line 831
    move/from16 v17, v10

    .line 832
    .line 833
    move/from16 v16, v13

    .line 834
    .line 835
    goto :goto_d

    .line 836
    :cond_1f
    const/16 v17, 0x0

    .line 837
    .line 838
    invoke-virtual {v6, v8}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 839
    .line 840
    .line 841
    move-result v12

    .line 842
    if-gt v12, v15, :cond_23

    .line 843
    .line 844
    if-gt v12, v11, :cond_20

    .line 845
    .line 846
    goto :goto_d

    .line 847
    :cond_20
    const/16 v4, 0xf

    .line 848
    .line 849
    if-gt v12, v4, :cond_21

    .line 850
    .line 851
    invoke-virtual {v6, v8}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 852
    .line 853
    .line 854
    goto :goto_d

    .line 855
    :cond_21
    if-gt v12, v14, :cond_22

    .line 856
    .line 857
    invoke-virtual {v6, v10}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 858
    .line 859
    .line 860
    goto :goto_d

    .line 861
    :cond_22
    if-gt v12, v15, :cond_1c

    .line 862
    .line 863
    invoke-virtual {v6, v1}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 864
    .line 865
    .line 866
    goto :goto_d

    .line 867
    :cond_23
    const/16 v1, 0xa0

    .line 868
    .line 869
    if-gt v12, v4, :cond_2e

    .line 870
    .line 871
    const/16 v4, 0x20

    .line 872
    .line 873
    if-eq v12, v4, :cond_2d

    .line 874
    .line 875
    const/16 v2, 0x21

    .line 876
    .line 877
    if-eq v12, v2, :cond_2c

    .line 878
    .line 879
    const/16 v1, 0x25

    .line 880
    .line 881
    if-eq v12, v1, :cond_2b

    .line 882
    .line 883
    const/16 v1, 0x2a

    .line 884
    .line 885
    if-eq v12, v1, :cond_2a

    .line 886
    .line 887
    const/16 v1, 0x2c

    .line 888
    .line 889
    if-eq v12, v1, :cond_29

    .line 890
    .line 891
    const/16 v1, 0x3f

    .line 892
    .line 893
    if-eq v12, v1, :cond_28

    .line 894
    .line 895
    const/16 v1, 0x39

    .line 896
    .line 897
    if-eq v12, v1, :cond_27

    .line 898
    .line 899
    const/16 v1, 0x3a

    .line 900
    .line 901
    if-eq v12, v1, :cond_26

    .line 902
    .line 903
    const/16 v1, 0x3c

    .line 904
    .line 905
    if-eq v12, v1, :cond_25

    .line 906
    .line 907
    const/16 v1, 0x3d

    .line 908
    .line 909
    if-eq v12, v1, :cond_24

    .line 910
    .line 911
    packed-switch v12, :pswitch_data_2

    .line 912
    .line 913
    .line 914
    packed-switch v12, :pswitch_data_3

    .line 915
    .line 916
    .line 917
    const-string v1, "Invalid G2 character: "

    .line 918
    .line 919
    invoke-static {v12, v1, v5}, LA/i;->v(ILjava/lang/String;Ljava/lang/String;)V

    .line 920
    .line 921
    .line 922
    goto/16 :goto_e

    .line 923
    .line 924
    :pswitch_12
    iget-object v1, v0, LT0/g;->m:LT0/e;

    .line 925
    .line 926
    const/16 v2, 0x250c

    .line 927
    .line 928
    invoke-virtual {v1, v2}, LT0/e;->append(C)V

    .line 929
    .line 930
    .line 931
    goto/16 :goto_e

    .line 932
    .line 933
    :pswitch_13
    iget-object v1, v0, LT0/g;->m:LT0/e;

    .line 934
    .line 935
    const/16 v2, 0x2518

    .line 936
    .line 937
    invoke-virtual {v1, v2}, LT0/e;->append(C)V

    .line 938
    .line 939
    .line 940
    goto/16 :goto_e

    .line 941
    .line 942
    :pswitch_14
    iget-object v1, v0, LT0/g;->m:LT0/e;

    .line 943
    .line 944
    const/16 v2, 0x2500

    .line 945
    .line 946
    invoke-virtual {v1, v2}, LT0/e;->append(C)V

    .line 947
    .line 948
    .line 949
    goto/16 :goto_e

    .line 950
    .line 951
    :pswitch_15
    iget-object v1, v0, LT0/g;->m:LT0/e;

    .line 952
    .line 953
    const/16 v2, 0x2514

    .line 954
    .line 955
    invoke-virtual {v1, v2}, LT0/e;->append(C)V

    .line 956
    .line 957
    .line 958
    goto/16 :goto_e

    .line 959
    .line 960
    :pswitch_16
    iget-object v1, v0, LT0/g;->m:LT0/e;

    .line 961
    .line 962
    const/16 v2, 0x2510

    .line 963
    .line 964
    invoke-virtual {v1, v2}, LT0/e;->append(C)V

    .line 965
    .line 966
    .line 967
    goto/16 :goto_e

    .line 968
    .line 969
    :pswitch_17
    iget-object v1, v0, LT0/g;->m:LT0/e;

    .line 970
    .line 971
    const/16 v2, 0x2502

    .line 972
    .line 973
    invoke-virtual {v1, v2}, LT0/e;->append(C)V

    .line 974
    .line 975
    .line 976
    goto/16 :goto_e

    .line 977
    .line 978
    :pswitch_18
    iget-object v1, v0, LT0/g;->m:LT0/e;

    .line 979
    .line 980
    const/16 v2, 0x215e

    .line 981
    .line 982
    invoke-virtual {v1, v2}, LT0/e;->append(C)V

    .line 983
    .line 984
    .line 985
    goto/16 :goto_e

    .line 986
    .line 987
    :pswitch_19
    iget-object v1, v0, LT0/g;->m:LT0/e;

    .line 988
    .line 989
    const/16 v2, 0x215d

    .line 990
    .line 991
    invoke-virtual {v1, v2}, LT0/e;->append(C)V

    .line 992
    .line 993
    .line 994
    goto/16 :goto_e

    .line 995
    .line 996
    :pswitch_1a
    iget-object v1, v0, LT0/g;->m:LT0/e;

    .line 997
    .line 998
    const/16 v2, 0x215c

    .line 999
    .line 1000
    invoke-virtual {v1, v2}, LT0/e;->append(C)V

    .line 1001
    .line 1002
    .line 1003
    goto/16 :goto_e

    .line 1004
    .line 1005
    :pswitch_1b
    iget-object v1, v0, LT0/g;->m:LT0/e;

    .line 1006
    .line 1007
    const/16 v2, 0x215b

    .line 1008
    .line 1009
    invoke-virtual {v1, v2}, LT0/e;->append(C)V

    .line 1010
    .line 1011
    .line 1012
    goto/16 :goto_e

    .line 1013
    .line 1014
    :pswitch_1c
    iget-object v1, v0, LT0/g;->m:LT0/e;

    .line 1015
    .line 1016
    const/16 v2, 0x2022

    .line 1017
    .line 1018
    invoke-virtual {v1, v2}, LT0/e;->append(C)V

    .line 1019
    .line 1020
    .line 1021
    goto/16 :goto_e

    .line 1022
    .line 1023
    :pswitch_1d
    iget-object v1, v0, LT0/g;->m:LT0/e;

    .line 1024
    .line 1025
    const/16 v2, 0x201d

    .line 1026
    .line 1027
    invoke-virtual {v1, v2}, LT0/e;->append(C)V

    .line 1028
    .line 1029
    .line 1030
    goto/16 :goto_e

    .line 1031
    .line 1032
    :pswitch_1e
    iget-object v1, v0, LT0/g;->m:LT0/e;

    .line 1033
    .line 1034
    const/16 v2, 0x201c

    .line 1035
    .line 1036
    invoke-virtual {v1, v2}, LT0/e;->append(C)V

    .line 1037
    .line 1038
    .line 1039
    goto/16 :goto_e

    .line 1040
    .line 1041
    :pswitch_1f
    iget-object v1, v0, LT0/g;->m:LT0/e;

    .line 1042
    .line 1043
    const/16 v2, 0x2019

    .line 1044
    .line 1045
    invoke-virtual {v1, v2}, LT0/e;->append(C)V

    .line 1046
    .line 1047
    .line 1048
    goto :goto_e

    .line 1049
    :pswitch_20
    iget-object v1, v0, LT0/g;->m:LT0/e;

    .line 1050
    .line 1051
    const/16 v2, 0x2018

    .line 1052
    .line 1053
    invoke-virtual {v1, v2}, LT0/e;->append(C)V

    .line 1054
    .line 1055
    .line 1056
    goto :goto_e

    .line 1057
    :pswitch_21
    iget-object v1, v0, LT0/g;->m:LT0/e;

    .line 1058
    .line 1059
    const/16 v2, 0x2588

    .line 1060
    .line 1061
    invoke-virtual {v1, v2}, LT0/e;->append(C)V

    .line 1062
    .line 1063
    .line 1064
    goto :goto_e

    .line 1065
    :cond_24
    iget-object v1, v0, LT0/g;->m:LT0/e;

    .line 1066
    .line 1067
    const/16 v2, 0x2120

    .line 1068
    .line 1069
    invoke-virtual {v1, v2}, LT0/e;->append(C)V

    .line 1070
    .line 1071
    .line 1072
    goto :goto_e

    .line 1073
    :cond_25
    iget-object v1, v0, LT0/g;->m:LT0/e;

    .line 1074
    .line 1075
    const/16 v2, 0x153

    .line 1076
    .line 1077
    invoke-virtual {v1, v2}, LT0/e;->append(C)V

    .line 1078
    .line 1079
    .line 1080
    goto :goto_e

    .line 1081
    :cond_26
    iget-object v1, v0, LT0/g;->m:LT0/e;

    .line 1082
    .line 1083
    const/16 v2, 0x161

    .line 1084
    .line 1085
    invoke-virtual {v1, v2}, LT0/e;->append(C)V

    .line 1086
    .line 1087
    .line 1088
    goto :goto_e

    .line 1089
    :cond_27
    iget-object v1, v0, LT0/g;->m:LT0/e;

    .line 1090
    .line 1091
    const/16 v2, 0x2122

    .line 1092
    .line 1093
    invoke-virtual {v1, v2}, LT0/e;->append(C)V

    .line 1094
    .line 1095
    .line 1096
    goto :goto_e

    .line 1097
    :cond_28
    iget-object v1, v0, LT0/g;->m:LT0/e;

    .line 1098
    .line 1099
    const/16 v2, 0x178

    .line 1100
    .line 1101
    invoke-virtual {v1, v2}, LT0/e;->append(C)V

    .line 1102
    .line 1103
    .line 1104
    goto :goto_e

    .line 1105
    :cond_29
    iget-object v1, v0, LT0/g;->m:LT0/e;

    .line 1106
    .line 1107
    const/16 v2, 0x152

    .line 1108
    .line 1109
    invoke-virtual {v1, v2}, LT0/e;->append(C)V

    .line 1110
    .line 1111
    .line 1112
    goto :goto_e

    .line 1113
    :cond_2a
    iget-object v1, v0, LT0/g;->m:LT0/e;

    .line 1114
    .line 1115
    const/16 v2, 0x160

    .line 1116
    .line 1117
    invoke-virtual {v1, v2}, LT0/e;->append(C)V

    .line 1118
    .line 1119
    .line 1120
    goto :goto_e

    .line 1121
    :cond_2b
    iget-object v1, v0, LT0/g;->m:LT0/e;

    .line 1122
    .line 1123
    const/16 v2, 0x2026

    .line 1124
    .line 1125
    invoke-virtual {v1, v2}, LT0/e;->append(C)V

    .line 1126
    .line 1127
    .line 1128
    goto :goto_e

    .line 1129
    :cond_2c
    iget-object v2, v0, LT0/g;->m:LT0/e;

    .line 1130
    .line 1131
    invoke-virtual {v2, v1}, LT0/e;->append(C)V

    .line 1132
    .line 1133
    .line 1134
    goto :goto_e

    .line 1135
    :cond_2d
    iget-object v1, v0, LT0/g;->m:LT0/e;

    .line 1136
    .line 1137
    const/16 v4, 0x20

    .line 1138
    .line 1139
    invoke-virtual {v1, v4}, LT0/e;->append(C)V

    .line 1140
    .line 1141
    .line 1142
    :goto_e
    move/from16 v2, v16

    .line 1143
    .line 1144
    goto/16 :goto_d

    .line 1145
    .line 1146
    :cond_2e
    const/16 v4, 0x20

    .line 1147
    .line 1148
    if-gt v12, v13, :cond_31

    .line 1149
    .line 1150
    const/16 v1, 0x87

    .line 1151
    .line 1152
    if-gt v12, v1, :cond_2f

    .line 1153
    .line 1154
    invoke-virtual {v6, v4}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 1155
    .line 1156
    .line 1157
    goto/16 :goto_d

    .line 1158
    .line 1159
    :cond_2f
    const/16 v1, 0x8f

    .line 1160
    .line 1161
    if-gt v12, v1, :cond_30

    .line 1162
    .line 1163
    const/16 v1, 0x28

    .line 1164
    .line 1165
    invoke-virtual {v6, v1}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 1166
    .line 1167
    .line 1168
    goto/16 :goto_d

    .line 1169
    .line 1170
    :cond_30
    if-gt v12, v13, :cond_1c

    .line 1171
    .line 1172
    invoke-virtual {v6, v3}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 1173
    .line 1174
    .line 1175
    const/4 v4, 0x6

    .line 1176
    invoke-virtual {v6, v4}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 1177
    .line 1178
    .line 1179
    move-result v1

    .line 1180
    mul-int/2addr v1, v8

    .line 1181
    invoke-virtual {v6, v1}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 1182
    .line 1183
    .line 1184
    goto :goto_10

    .line 1185
    :cond_31
    const/4 v4, 0x6

    .line 1186
    const/16 v8, 0xff

    .line 1187
    .line 1188
    if-gt v12, v8, :cond_33

    .line 1189
    .line 1190
    if-ne v12, v1, :cond_32

    .line 1191
    .line 1192
    iget-object v1, v0, LT0/g;->m:LT0/e;

    .line 1193
    .line 1194
    const/16 v2, 0x33c4

    .line 1195
    .line 1196
    invoke-virtual {v1, v2}, LT0/e;->append(C)V

    .line 1197
    .line 1198
    .line 1199
    goto :goto_f

    .line 1200
    :cond_32
    const-string v1, "Invalid G3 character: "

    .line 1201
    .line 1202
    invoke-static {v12, v1, v5}, LA/i;->v(ILjava/lang/String;Ljava/lang/String;)V

    .line 1203
    .line 1204
    .line 1205
    iget-object v1, v0, LT0/g;->m:LT0/e;

    .line 1206
    .line 1207
    const/16 v2, 0x5f

    .line 1208
    .line 1209
    invoke-virtual {v1, v2}, LT0/e;->append(C)V

    .line 1210
    .line 1211
    .line 1212
    :goto_f
    move/from16 v2, v16

    .line 1213
    .line 1214
    goto :goto_10

    .line 1215
    :cond_33
    const-string v1, "Invalid extended command: "

    .line 1216
    .line 1217
    invoke-static {v12, v1, v5}, LA/i;->v(ILjava/lang/String;Ljava/lang/String;)V

    .line 1218
    .line 1219
    .line 1220
    :goto_10
    move v10, v4

    .line 1221
    move/from16 v4, v16

    .line 1222
    .line 1223
    goto/16 :goto_1

    .line 1224
    .line 1225
    :cond_34
    :goto_11
    if-eqz v2, :cond_35

    .line 1226
    .line 1227
    invoke-virtual {v0}, LT0/g;->b()Ljava/util/List;

    .line 1228
    .line 1229
    .line 1230
    move-result-object v1

    .line 1231
    iput-object v1, v0, LT0/g;->n:Ljava/util/List;

    .line 1232
    .line 1233
    :cond_35
    const/4 v1, 0x0

    .line 1234
    iput-object v1, v0, LT0/g;->p:LT0/f;

    .line 1235
    .line 1236
    return-void

    .line 1237
    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 1238
    .line 1239
    .line 1240
    .line 1241
    .line 1242
    .line 1243
    .line 1244
    .line 1245
    .line 1246
    .line 1247
    :pswitch_data_1
    .packed-switch 0x80
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_4
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch

    .line 1248
    .line 1249
    .line 1250
    .line 1251
    .line 1252
    .line 1253
    .line 1254
    .line 1255
    .line 1256
    .line 1257
    .line 1258
    .line 1259
    .line 1260
    .line 1261
    .line 1262
    .line 1263
    .line 1264
    .line 1265
    .line 1266
    .line 1267
    .line 1268
    .line 1269
    .line 1270
    .line 1271
    .line 1272
    .line 1273
    .line 1274
    .line 1275
    .line 1276
    .line 1277
    .line 1278
    .line 1279
    .line 1280
    .line 1281
    .line 1282
    .line 1283
    .line 1284
    .line 1285
    .line 1286
    .line 1287
    .line 1288
    .line 1289
    .line 1290
    .line 1291
    .line 1292
    .line 1293
    .line 1294
    .line 1295
    .line 1296
    .line 1297
    .line 1298
    .line 1299
    .line 1300
    .line 1301
    .line 1302
    .line 1303
    .line 1304
    .line 1305
    .line 1306
    .line 1307
    .line 1308
    .line 1309
    .line 1310
    .line 1311
    .line 1312
    .line 1313
    .line 1314
    .line 1315
    :pswitch_data_2
    .packed-switch 0x30
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
    .end packed-switch

    .line 1316
    .line 1317
    .line 1318
    .line 1319
    .line 1320
    .line 1321
    .line 1322
    .line 1323
    .line 1324
    .line 1325
    .line 1326
    .line 1327
    .line 1328
    .line 1329
    .line 1330
    .line 1331
    :pswitch_data_3
    .packed-switch 0x76
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
    .end packed-switch
.end method

.method public final b()Ljava/util/List;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    move v2, v1

    .line 8
    :goto_0
    const/16 v3, 0x8

    .line 9
    .line 10
    if-ge v2, v3, :cond_1

    .line 11
    .line 12
    iget-object v3, p0, LT0/g;->l:[LT0/e;

    .line 13
    .line 14
    aget-object v4, v3, v2

    .line 15
    .line 16
    invoke-virtual {v4}, LT0/e;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    if-nez v4, :cond_0

    .line 21
    .line 22
    aget-object v4, v3, v2

    .line 23
    .line 24
    invoke-virtual {v4}, LT0/e;->isVisible()Z

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    if-eqz v4, :cond_0

    .line 29
    .line 30
    aget-object v3, v3, v2

    .line 31
    .line 32
    invoke-virtual {v3}, LT0/e;->build()LT0/d;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    if-eqz v3, :cond_0

    .line 37
    .line 38
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    sget-object v2, LT0/d;->c:LJ/c;

    .line 45
    .line 46
    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 47
    .line 48
    .line 49
    new-instance v2, Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 56
    .line 57
    .line 58
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    if-ge v1, v3, :cond_2

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    check-cast v3, LT0/d;

    .line 69
    .line 70
    iget-object v3, v3, LT0/d;->a:Landroidx/media3/common/text/Cue;

    .line 71
    .line 72
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    add-int/lit8 v1, v1, 0x1

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_2
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    return-object v0
.end method

.method public final c()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    const/16 v1, 0x8

    .line 3
    .line 4
    if-ge v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v1, p0, LT0/g;->l:[LT0/e;

    .line 7
    .line 8
    aget-object v1, v1, v0

    .line 9
    .line 10
    invoke-virtual {v1}, LT0/e;->reset()V

    .line 11
    .line 12
    .line 13
    add-int/lit8 v0, v0, 0x1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    return-void
.end method

.method public createSubtitle()LS0/i;
    .locals 2

    .line 1
    iget-object v0, p0, LT0/g;->n:Ljava/util/List;

    .line 2
    .line 3
    iput-object v0, p0, LT0/g;->o:Ljava/util/List;

    .line 4
    .line 5
    new-instance v1, LT0/k;

    .line 6
    .line 7
    invoke-static {v0}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/util/List;

    .line 12
    .line 13
    invoke-direct {v1, v0}, LT0/k;-><init>(Ljava/util/List;)V

    .line 14
    .line 15
    .line 16
    return-object v1
.end method

.method public decode(LS0/m;)V
    .locals 9

    .line 1
    iget-object p1, p1, Lu0/f;->data:Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    invoke-static {p1}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/nio/ByteBuffer;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    iget-object v1, p0, LT0/g;->h:Landroidx/media3/common/util/ParsableByteArray;

    .line 18
    .line 19
    invoke-virtual {v1, v0, p1}, Landroidx/media3/common/util/ParsableByteArray;->reset([BI)V

    .line 20
    .line 21
    .line 22
    :cond_0
    :goto_0
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    const/4 v0, 0x3

    .line 27
    if-lt p1, v0, :cond_9

    .line 28
    .line 29
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    and-int/lit8 v2, p1, 0x3

    .line 34
    .line 35
    const/4 v3, 0x4

    .line 36
    and-int/2addr p1, v3

    .line 37
    const/4 v4, 0x0

    .line 38
    const/4 v5, 0x1

    .line 39
    if-ne p1, v3, :cond_1

    .line 40
    .line 41
    move p1, v5

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    move p1, v4

    .line 44
    :goto_1
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 45
    .line 46
    .line 47
    move-result v6

    .line 48
    int-to-byte v6, v6

    .line 49
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 50
    .line 51
    .line 52
    move-result v7

    .line 53
    int-to-byte v7, v7

    .line 54
    const/4 v8, 0x2

    .line 55
    if-eq v2, v8, :cond_2

    .line 56
    .line 57
    if-eq v2, v0, :cond_2

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    if-nez p1, :cond_3

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_3
    const-string p1, "Cea708Decoder"

    .line 64
    .line 65
    if-ne v2, v0, :cond_6

    .line 66
    .line 67
    invoke-virtual {p0}, LT0/g;->a()V

    .line 68
    .line 69
    .line 70
    and-int/lit16 v0, v6, 0xc0

    .line 71
    .line 72
    shr-int/lit8 v0, v0, 0x6

    .line 73
    .line 74
    iget v2, p0, LT0/g;->j:I

    .line 75
    .line 76
    const/4 v4, -0x1

    .line 77
    if-eq v2, v4, :cond_4

    .line 78
    .line 79
    add-int/lit8 v2, v2, 0x1

    .line 80
    .line 81
    rem-int/2addr v2, v3

    .line 82
    if-eq v0, v2, :cond_4

    .line 83
    .line 84
    invoke-virtual {p0}, LT0/g;->c()V

    .line 85
    .line 86
    .line 87
    new-instance v2, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    const-string v3, "Sequence number discontinuity. previous="

    .line 90
    .line 91
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    iget v3, p0, LT0/g;->j:I

    .line 95
    .line 96
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string v3, " current="

    .line 100
    .line 101
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    invoke-static {p1, v2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    :cond_4
    iput v0, p0, LT0/g;->j:I

    .line 115
    .line 116
    and-int/lit8 p1, v6, 0x3f

    .line 117
    .line 118
    if-nez p1, :cond_5

    .line 119
    .line 120
    const/16 p1, 0x40

    .line 121
    .line 122
    :cond_5
    new-instance v2, LT0/f;

    .line 123
    .line 124
    invoke-direct {v2, v0, p1}, LT0/f;-><init>(II)V

    .line 125
    .line 126
    .line 127
    iput-object v2, p0, LT0/g;->p:LT0/f;

    .line 128
    .line 129
    iget p1, v2, LT0/f;->d:I

    .line 130
    .line 131
    add-int/lit8 v0, p1, 0x1

    .line 132
    .line 133
    iput v0, v2, LT0/f;->d:I

    .line 134
    .line 135
    iget-object v0, v2, LT0/f;->c:[B

    .line 136
    .line 137
    aput-byte v7, v0, p1

    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_6
    if-ne v2, v8, :cond_7

    .line 141
    .line 142
    move v4, v5

    .line 143
    :cond_7
    invoke-static {v4}, LP3/v;->checkArgument(Z)V

    .line 144
    .line 145
    .line 146
    iget-object v0, p0, LT0/g;->p:LT0/f;

    .line 147
    .line 148
    if-nez v0, :cond_8

    .line 149
    .line 150
    const-string v0, "Encountered DTVCC_PACKET_DATA before DTVCC_PACKET_START"

    .line 151
    .line 152
    invoke-static {p1, v0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    goto/16 :goto_0

    .line 156
    .line 157
    :cond_8
    iget-object p1, v0, LT0/f;->c:[B

    .line 158
    .line 159
    iget v2, v0, LT0/f;->d:I

    .line 160
    .line 161
    add-int/lit8 v3, v2, 0x1

    .line 162
    .line 163
    iput v3, v0, LT0/f;->d:I

    .line 164
    .line 165
    aput-byte v6, p1, v2

    .line 166
    .line 167
    add-int/2addr v2, v8

    .line 168
    iput v2, v0, LT0/f;->d:I

    .line 169
    .line 170
    aput-byte v7, p1, v3

    .line 171
    .line 172
    :goto_2
    iget-object p1, p0, LT0/g;->p:LT0/f;

    .line 173
    .line 174
    iget v0, p1, LT0/f;->d:I

    .line 175
    .line 176
    iget p1, p1, LT0/f;->b:I

    .line 177
    .line 178
    mul-int/2addr p1, v8

    .line 179
    sub-int/2addr p1, v5

    .line 180
    if-ne v0, p1, :cond_0

    .line 181
    .line 182
    invoke-virtual {p0}, LT0/g;->a()V

    .line 183
    .line 184
    .line 185
    goto/16 :goto_0

    .line 186
    .line 187
    :cond_9
    return-void
.end method

.method public bridge synthetic dequeueInputBuffer()LS0/m;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/extractor/text/SubtitleDecoderException;
        }
    .end annotation

    .line 1
    invoke-super {p0}, LT0/j;->dequeueInputBuffer()LS0/m;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic dequeueOutputBuffer()LS0/n;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/extractor/text/SubtitleDecoderException;
        }
    .end annotation

    .line 1
    invoke-super {p0}, LT0/j;->dequeueOutputBuffer()LS0/n;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public flush()V
    .locals 3

    .line 1
    invoke-super {p0}, LT0/j;->flush()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, LT0/g;->n:Ljava/util/List;

    .line 6
    .line 7
    iput-object v0, p0, LT0/g;->o:Ljava/util/List;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput v1, p0, LT0/g;->q:I

    .line 11
    .line 12
    iget-object v2, p0, LT0/g;->l:[LT0/e;

    .line 13
    .line 14
    aget-object v1, v2, v1

    .line 15
    .line 16
    iput-object v1, p0, LT0/g;->m:LT0/e;

    .line 17
    .line 18
    invoke-virtual {p0}, LT0/g;->c()V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, LT0/g;->p:LT0/f;

    .line 22
    .line 23
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Cea708Decoder"

    .line 2
    .line 3
    return-object v0
.end method

.method public isNewSubtitleDataAvailable()Z
    .locals 2

    .line 1
    iget-object v0, p0, LT0/g;->n:Ljava/util/List;

    .line 2
    .line 3
    iget-object v1, p0, LT0/g;->o:Ljava/util/List;

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    return v0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    return v0
.end method

.method public bridge synthetic queueInputBuffer(LS0/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/extractor/text/SubtitleDecoderException;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, LT0/j;->queueInputBuffer(LS0/m;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic release()V
    .locals 0

    .line 1
    invoke-super {p0}, LT0/j;->release()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic setPositionUs(J)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, LT0/j;->setPositionUs(J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
