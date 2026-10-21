.class public final LV0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LS0/s;


# instance fields
.field public final a:Landroidx/media3/common/util/ParsableByteArray;

.field public final b:Landroidx/media3/common/util/ParsableByteArray;

.field public final c:LV0/a;

.field public d:Ljava/util/zip/Inflater;


# direct methods
.method public constructor <init>()V
    .locals 1

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
    iput-object v0, p0, LV0/b;->a:Landroidx/media3/common/util/ParsableByteArray;

    .line 10
    .line 11
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    .line 12
    .line 13
    invoke-direct {v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, LV0/b;->b:Landroidx/media3/common/util/ParsableByteArray;

    .line 17
    .line 18
    new-instance v0, LV0/a;

    .line 19
    .line 20
    invoke-direct {v0}, LV0/a;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, LV0/b;->c:LV0/a;

    .line 24
    .line 25
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
    .locals 22
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
    iget-object v3, v0, LV0/b;->a:Landroidx/media3/common/util/ParsableByteArray;

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
    iget-object v1, v0, LV0/b;->d:Ljava/util/zip/Inflater;

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
    iput-object v1, v0, LV0/b;->d:Ljava/util/zip/Inflater;

    .line 27
    .line 28
    :cond_0
    iget-object v1, v0, LV0/b;->d:Ljava/util/zip/Inflater;

    .line 29
    .line 30
    iget-object v2, v0, LV0/b;->b:Landroidx/media3/common/util/ParsableByteArray;

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
    iget-object v1, v0, LV0/b;->c:LV0/a;

    .line 50
    .line 51
    invoke-virtual {v1}, LV0/a;->reset()V

    .line 52
    .line 53
    .line 54
    new-instance v5, Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .line 58
    .line 59
    :goto_0
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    const/4 v4, 0x3

    .line 64
    if-lt v2, v4, :cond_e

    .line 65
    .line 66
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 71
    .line 72
    .line 73
    move-result v6

    .line 74
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    .line 75
    .line 76
    .line 77
    move-result v7

    .line 78
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    .line 79
    .line 80
    .line 81
    move-result v8

    .line 82
    add-int/2addr v8, v7

    .line 83
    if-le v8, v2, :cond_2

    .line 84
    .line 85
    invoke-virtual {v3, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 86
    .line 87
    .line 88
    move-object v2, v3

    .line 89
    const/4 v9, 0x0

    .line 90
    goto/16 :goto_7

    .line 91
    .line 92
    :cond_2
    const/16 v2, 0x80

    .line 93
    .line 94
    if-eq v6, v2, :cond_c

    .line 95
    .line 96
    const/4 v11, 0x0

    .line 97
    packed-switch v6, :pswitch_data_0

    .line 98
    .line 99
    .line 100
    :cond_3
    :goto_1
    move-object/from16 p3, v3

    .line 101
    .line 102
    goto/16 :goto_4

    .line 103
    .line 104
    :pswitch_0
    const/16 v2, 0x13

    .line 105
    .line 106
    if-ge v7, v2, :cond_4

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_4
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    iput v2, v1, LV0/a;->d:I

    .line 114
    .line 115
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    iput v2, v1, LV0/a;->e:I

    .line 120
    .line 121
    const/16 v2, 0xb

    .line 122
    .line 123
    invoke-virtual {v3, v2}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    iput v2, v1, LV0/a;->f:I

    .line 131
    .line 132
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    iput v2, v1, LV0/a;->g:I

    .line 137
    .line 138
    goto :goto_1

    .line 139
    :pswitch_1
    const/4 v6, 0x4

    .line 140
    if-ge v7, v6, :cond_5

    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_5
    invoke-virtual {v3, v4}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 147
    .line 148
    .line 149
    move-result v4

    .line 150
    and-int/2addr v2, v4

    .line 151
    if-eqz v2, :cond_6

    .line 152
    .line 153
    const/4 v10, 0x1

    .line 154
    goto :goto_2

    .line 155
    :cond_6
    move v10, v11

    .line 156
    :goto_2
    add-int/lit8 v2, v7, -0x4

    .line 157
    .line 158
    iget-object v4, v1, LV0/a;->a:Landroidx/media3/common/util/ParsableByteArray;

    .line 159
    .line 160
    if-eqz v10, :cond_9

    .line 161
    .line 162
    const/4 v10, 0x7

    .line 163
    if-ge v2, v10, :cond_7

    .line 164
    .line 165
    goto :goto_1

    .line 166
    :cond_7
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt24()I

    .line 167
    .line 168
    .line 169
    move-result v2

    .line 170
    if-ge v2, v6, :cond_8

    .line 171
    .line 172
    goto :goto_1

    .line 173
    :cond_8
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    .line 174
    .line 175
    .line 176
    move-result v6

    .line 177
    iput v6, v1, LV0/a;->h:I

    .line 178
    .line 179
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    .line 180
    .line 181
    .line 182
    move-result v6

    .line 183
    iput v6, v1, LV0/a;->i:I

    .line 184
    .line 185
    add-int/lit8 v2, v2, -0x4

    .line 186
    .line 187
    invoke-virtual {v4, v2}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    .line 188
    .line 189
    .line 190
    add-int/lit8 v2, v7, -0xb

    .line 191
    .line 192
    :cond_9
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    .line 193
    .line 194
    .line 195
    move-result v6

    .line 196
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    .line 197
    .line 198
    .line 199
    move-result v7

    .line 200
    if-ge v6, v7, :cond_3

    .line 201
    .line 202
    if-lez v2, :cond_3

    .line 203
    .line 204
    sub-int/2addr v7, v6

    .line 205
    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    .line 206
    .line 207
    .line 208
    move-result v2

    .line 209
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 210
    .line 211
    .line 212
    move-result-object v7

    .line 213
    invoke-virtual {v3, v7, v6, v2}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 214
    .line 215
    .line 216
    add-int/2addr v6, v2

    .line 217
    invoke-virtual {v4, v6}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 218
    .line 219
    .line 220
    goto :goto_1

    .line 221
    :pswitch_2
    rem-int/lit8 v4, v7, 0x5

    .line 222
    .line 223
    const/4 v6, 0x2

    .line 224
    if-eq v4, v6, :cond_a

    .line 225
    .line 226
    goto :goto_1

    .line 227
    :cond_a
    invoke-virtual {v3, v6}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 228
    .line 229
    .line 230
    iget-object v4, v1, LV0/a;->b:[I

    .line 231
    .line 232
    invoke-static {v4, v11}, Ljava/util/Arrays;->fill([II)V

    .line 233
    .line 234
    .line 235
    div-int/lit8 v7, v7, 0x5

    .line 236
    .line 237
    move v6, v11

    .line 238
    :goto_3
    if-ge v6, v7, :cond_b

    .line 239
    .line 240
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 241
    .line 242
    .line 243
    move-result v12

    .line 244
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 245
    .line 246
    .line 247
    move-result v13

    .line 248
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 249
    .line 250
    .line 251
    move-result v14

    .line 252
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 253
    .line 254
    .line 255
    move-result v15

    .line 256
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 257
    .line 258
    .line 259
    move-result v16

    .line 260
    move/from16 p1, v2

    .line 261
    .line 262
    move-object/from16 p3, v3

    .line 263
    .line 264
    int-to-double v2, v13

    .line 265
    add-int/lit8 v14, v14, -0x80

    .line 266
    .line 267
    int-to-double v13, v14

    .line 268
    const-wide v17, 0x3ff66e978d4fdf3bL    # 1.402

    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    mul-double v17, v17, v13

    .line 274
    .line 275
    add-double v9, v17, v2

    .line 276
    .line 277
    double-to-int v9, v9

    .line 278
    add-int/lit8 v15, v15, -0x80

    .line 279
    .line 280
    move/from16 v17, v12

    .line 281
    .line 282
    int-to-double v11, v15

    .line 283
    const-wide v18, 0x3fd60663c74fb54aL    # 0.34414

    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    mul-double v18, v18, v11

    .line 289
    .line 290
    sub-double v18, v2, v18

    .line 291
    .line 292
    const-wide v20, 0x3fe6da3c21187e7cL    # 0.71414

    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    mul-double v13, v13, v20

    .line 298
    .line 299
    sub-double v13, v18, v13

    .line 300
    .line 301
    double-to-int v13, v13

    .line 302
    const-wide v14, 0x3ffc5a1cac083127L    # 1.772

    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    mul-double/2addr v11, v14

    .line 308
    add-double/2addr v11, v2

    .line 309
    double-to-int v2, v11

    .line 310
    shl-int/lit8 v3, v16, 0x18

    .line 311
    .line 312
    const/16 v11, 0xff

    .line 313
    .line 314
    const/4 v10, 0x0

    .line 315
    invoke-static {v9, v10, v11}, Landroidx/media3/common/util/Util;->constrainValue(III)I

    .line 316
    .line 317
    .line 318
    move-result v9

    .line 319
    shl-int/lit8 v9, v9, 0x10

    .line 320
    .line 321
    or-int/2addr v3, v9

    .line 322
    invoke-static {v13, v10, v11}, Landroidx/media3/common/util/Util;->constrainValue(III)I

    .line 323
    .line 324
    .line 325
    move-result v9

    .line 326
    shl-int/lit8 v9, v9, 0x8

    .line 327
    .line 328
    or-int/2addr v3, v9

    .line 329
    invoke-static {v2, v10, v11}, Landroidx/media3/common/util/Util;->constrainValue(III)I

    .line 330
    .line 331
    .line 332
    move-result v2

    .line 333
    or-int/2addr v2, v3

    .line 334
    aput v2, v4, v17

    .line 335
    .line 336
    add-int/lit8 v6, v6, 0x1

    .line 337
    .line 338
    move/from16 v2, p1

    .line 339
    .line 340
    move-object/from16 v3, p3

    .line 341
    .line 342
    move v11, v10

    .line 343
    goto :goto_3

    .line 344
    :cond_b
    move-object/from16 p3, v3

    .line 345
    .line 346
    const/4 v2, 0x1

    .line 347
    iput-boolean v2, v1, LV0/a;->c:Z

    .line 348
    .line 349
    :goto_4
    const/4 v9, 0x0

    .line 350
    :goto_5
    move-object/from16 v2, p3

    .line 351
    .line 352
    goto :goto_6

    .line 353
    :cond_c
    move-object/from16 p3, v3

    .line 354
    .line 355
    invoke-virtual {v1}, LV0/a;->build()Landroidx/media3/common/text/Cue;

    .line 356
    .line 357
    .line 358
    move-result-object v9

    .line 359
    invoke-virtual {v1}, LV0/a;->reset()V

    .line 360
    .line 361
    .line 362
    goto :goto_5

    .line 363
    :goto_6
    invoke-virtual {v2, v8}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 364
    .line 365
    .line 366
    :goto_7
    if-eqz v9, :cond_d

    .line 367
    .line 368
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 369
    .line 370
    .line 371
    :cond_d
    move-object v3, v2

    .line 372
    goto/16 :goto_0

    .line 373
    .line 374
    :cond_e
    new-instance v4, LS0/c;

    .line 375
    .line 376
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    invoke-direct/range {v4 .. v9}, LS0/c;-><init>(Ljava/util/List;JJ)V

    .line 387
    .line 388
    .line 389
    move-object/from16 v1, p5

    .line 390
    .line 391
    invoke-interface {v1, v4}, Landroidx/media3/common/util/Consumer;->accept(Ljava/lang/Object;)V

    .line 392
    .line 393
    .line 394
    return-void

    .line 395
    :pswitch_data_0
    .packed-switch 0x14
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
