.class final Lcom/google/common/collect/RegularImmutableMap;
.super Lcom/google/common/collect/ImmutableMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/RegularImmutableMap$EntrySet;,
        Lcom/google/common/collect/RegularImmutableMap$KeysOrValuesAsList;,
        Lcom/google/common/collect/RegularImmutableMap$KeySet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableMap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field public static final p:Lcom/google/common/collect/ImmutableMap;

.field private static final serialVersionUID:J


# instance fields
.field public final transient j:Ljava/lang/Object;

.field public final transient m:[Ljava/lang/Object;

.field public final transient n:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/common/collect/RegularImmutableMap;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v2, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    invoke-direct {v0, v3, v2, v1}, Lcom/google/common/collect/RegularImmutableMap;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/google/common/collect/RegularImmutableMap;->p:Lcom/google/common/collect/ImmutableMap;

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;[Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableMap;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableMap;->j:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/common/collect/RegularImmutableMap;->m:[Ljava/lang/Object;

    .line 7
    .line 8
    iput p3, p0, Lcom/google/common/collect/RegularImmutableMap;->n:I

    .line 9
    .line 10
    return-void
.end method

.method public static a(I[Ljava/lang/Object;Lcom/google/common/collect/w;)Lcom/google/common/collect/RegularImmutableMap;
    .locals 19

    .line 1
    move/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/google/common/collect/RegularImmutableMap;->p:Lcom/google/common/collect/ImmutableMap;

    .line 10
    .line 11
    check-cast v0, Lcom/google/common/collect/RegularImmutableMap;

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    const/4 v3, 0x0

    .line 15
    const/4 v4, 0x0

    .line 16
    const/4 v5, 0x1

    .line 17
    if-ne v0, v5, :cond_1

    .line 18
    .line 19
    aget-object v0, v1, v4

    .line 20
    .line 21
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    aget-object v0, v1, v5

    .line 25
    .line 26
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    new-instance v0, Lcom/google/common/collect/RegularImmutableMap;

    .line 30
    .line 31
    invoke-direct {v0, v3, v1, v5}, Lcom/google/common/collect/RegularImmutableMap;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    .line 32
    .line 33
    .line 34
    return-object v0

    .line 35
    :cond_1
    array-length v6, v1

    .line 36
    shr-int/2addr v6, v5

    .line 37
    invoke-static {v0, v6}, LP3/v;->checkPositionIndex(II)I

    .line 38
    .line 39
    .line 40
    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->e(I)I

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    const/4 v7, 0x2

    .line 45
    if-ne v0, v5, :cond_2

    .line 46
    .line 47
    aget-object v6, v1, v4

    .line 48
    .line 49
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    aget-object v6, v1, v5

    .line 53
    .line 54
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move/from16 v16, v4

    .line 58
    .line 59
    move/from16 v17, v5

    .line 60
    .line 61
    :goto_0
    move/from16 v18, v7

    .line 62
    .line 63
    goto/16 :goto_b

    .line 64
    .line 65
    :cond_2
    add-int/lit8 v8, v6, -0x1

    .line 66
    .line 67
    const/16 v9, 0x80

    .line 68
    .line 69
    const/4 v10, 0x3

    .line 70
    const/4 v11, -0x1

    .line 71
    if-gt v6, v9, :cond_8

    .line 72
    .line 73
    new-array v6, v6, [B

    .line 74
    .line 75
    invoke-static {v6, v11}, Ljava/util/Arrays;->fill([BB)V

    .line 76
    .line 77
    .line 78
    move v9, v4

    .line 79
    move v11, v9

    .line 80
    :goto_1
    if-ge v9, v0, :cond_6

    .line 81
    .line 82
    mul-int/lit8 v12, v9, 0x2

    .line 83
    .line 84
    mul-int/lit8 v13, v11, 0x2

    .line 85
    .line 86
    aget-object v14, v1, v12

    .line 87
    .line 88
    invoke-static {v14}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    xor-int/2addr v12, v5

    .line 92
    aget-object v12, v1, v12

    .line 93
    .line 94
    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v14}, Ljava/lang/Object;->hashCode()I

    .line 98
    .line 99
    .line 100
    move-result v15

    .line 101
    invoke-static {v15}, La/c;->d(I)I

    .line 102
    .line 103
    .line 104
    move-result v15

    .line 105
    :goto_2
    and-int/2addr v15, v8

    .line 106
    move/from16 v16, v4

    .line 107
    .line 108
    aget-byte v4, v6, v15

    .line 109
    .line 110
    move/from16 v17, v5

    .line 111
    .line 112
    const/16 v5, 0xff

    .line 113
    .line 114
    and-int/2addr v4, v5

    .line 115
    if-ne v4, v5, :cond_4

    .line 116
    .line 117
    int-to-byte v4, v13

    .line 118
    aput-byte v4, v6, v15

    .line 119
    .line 120
    if-ge v11, v9, :cond_3

    .line 121
    .line 122
    aput-object v14, v1, v13

    .line 123
    .line 124
    xor-int/lit8 v4, v13, 0x1

    .line 125
    .line 126
    aput-object v12, v1, v4

    .line 127
    .line 128
    :cond_3
    add-int/lit8 v11, v11, 0x1

    .line 129
    .line 130
    goto :goto_3

    .line 131
    :cond_4
    aget-object v5, v1, v4

    .line 132
    .line 133
    invoke-virtual {v14, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v5

    .line 137
    if-eqz v5, :cond_5

    .line 138
    .line 139
    new-instance v3, LQ3/v;

    .line 140
    .line 141
    xor-int/lit8 v4, v4, 0x1

    .line 142
    .line 143
    aget-object v5, v1, v4

    .line 144
    .line 145
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    invoke-direct {v3, v14, v12, v5}, LQ3/v;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    aput-object v12, v1, v4

    .line 152
    .line 153
    :goto_3
    add-int/lit8 v9, v9, 0x1

    .line 154
    .line 155
    move/from16 v4, v16

    .line 156
    .line 157
    move/from16 v5, v17

    .line 158
    .line 159
    goto :goto_1

    .line 160
    :cond_5
    add-int/lit8 v15, v15, 0x1

    .line 161
    .line 162
    move/from16 v4, v16

    .line 163
    .line 164
    move/from16 v5, v17

    .line 165
    .line 166
    goto :goto_2

    .line 167
    :cond_6
    move/from16 v16, v4

    .line 168
    .line 169
    move/from16 v17, v5

    .line 170
    .line 171
    if-ne v11, v0, :cond_7

    .line 172
    .line 173
    move-object v3, v6

    .line 174
    goto :goto_0

    .line 175
    :cond_7
    new-array v4, v10, [Ljava/lang/Object;

    .line 176
    .line 177
    aput-object v6, v4, v16

    .line 178
    .line 179
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 180
    .line 181
    .line 182
    move-result-object v5

    .line 183
    aput-object v5, v4, v17

    .line 184
    .line 185
    aput-object v3, v4, v7

    .line 186
    .line 187
    :goto_4
    move-object v3, v4

    .line 188
    goto :goto_0

    .line 189
    :cond_8
    move/from16 v16, v4

    .line 190
    .line 191
    move/from16 v17, v5

    .line 192
    .line 193
    const v4, 0x8000

    .line 194
    .line 195
    .line 196
    if-gt v6, v4, :cond_e

    .line 197
    .line 198
    new-array v4, v6, [S

    .line 199
    .line 200
    invoke-static {v4, v11}, Ljava/util/Arrays;->fill([SS)V

    .line 201
    .line 202
    .line 203
    move/from16 v5, v16

    .line 204
    .line 205
    move v6, v5

    .line 206
    :goto_5
    if-ge v5, v0, :cond_c

    .line 207
    .line 208
    mul-int/lit8 v9, v5, 0x2

    .line 209
    .line 210
    mul-int/lit8 v11, v6, 0x2

    .line 211
    .line 212
    aget-object v12, v1, v9

    .line 213
    .line 214
    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    xor-int/lit8 v9, v9, 0x1

    .line 218
    .line 219
    aget-object v9, v1, v9

    .line 220
    .line 221
    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v12}, Ljava/lang/Object;->hashCode()I

    .line 225
    .line 226
    .line 227
    move-result v13

    .line 228
    invoke-static {v13}, La/c;->d(I)I

    .line 229
    .line 230
    .line 231
    move-result v13

    .line 232
    :goto_6
    and-int/2addr v13, v8

    .line 233
    aget-short v14, v4, v13

    .line 234
    .line 235
    const v15, 0xffff

    .line 236
    .line 237
    .line 238
    and-int/2addr v14, v15

    .line 239
    if-ne v14, v15, :cond_a

    .line 240
    .line 241
    int-to-short v14, v11

    .line 242
    aput-short v14, v4, v13

    .line 243
    .line 244
    if-ge v6, v5, :cond_9

    .line 245
    .line 246
    aput-object v12, v1, v11

    .line 247
    .line 248
    xor-int/lit8 v11, v11, 0x1

    .line 249
    .line 250
    aput-object v9, v1, v11

    .line 251
    .line 252
    :cond_9
    add-int/lit8 v6, v6, 0x1

    .line 253
    .line 254
    goto :goto_7

    .line 255
    :cond_a
    aget-object v15, v1, v14

    .line 256
    .line 257
    invoke-virtual {v12, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 258
    .line 259
    .line 260
    move-result v15

    .line 261
    if-eqz v15, :cond_b

    .line 262
    .line 263
    new-instance v3, LQ3/v;

    .line 264
    .line 265
    xor-int/lit8 v11, v14, 0x1

    .line 266
    .line 267
    aget-object v13, v1, v11

    .line 268
    .line 269
    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    invoke-direct {v3, v12, v9, v13}, LQ3/v;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 273
    .line 274
    .line 275
    aput-object v9, v1, v11

    .line 276
    .line 277
    :goto_7
    add-int/lit8 v5, v5, 0x1

    .line 278
    .line 279
    goto :goto_5

    .line 280
    :cond_b
    add-int/lit8 v13, v13, 0x1

    .line 281
    .line 282
    goto :goto_6

    .line 283
    :cond_c
    if-ne v6, v0, :cond_d

    .line 284
    .line 285
    goto :goto_4

    .line 286
    :cond_d
    new-array v5, v10, [Ljava/lang/Object;

    .line 287
    .line 288
    aput-object v4, v5, v16

    .line 289
    .line 290
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 291
    .line 292
    .line 293
    move-result-object v4

    .line 294
    aput-object v4, v5, v17

    .line 295
    .line 296
    aput-object v3, v5, v7

    .line 297
    .line 298
    move-object v3, v5

    .line 299
    goto/16 :goto_0

    .line 300
    .line 301
    :cond_e
    new-array v4, v6, [I

    .line 302
    .line 303
    invoke-static {v4, v11}, Ljava/util/Arrays;->fill([II)V

    .line 304
    .line 305
    .line 306
    move/from16 v5, v16

    .line 307
    .line 308
    move v6, v5

    .line 309
    :goto_8
    if-ge v5, v0, :cond_12

    .line 310
    .line 311
    mul-int/lit8 v9, v5, 0x2

    .line 312
    .line 313
    mul-int/lit8 v12, v6, 0x2

    .line 314
    .line 315
    aget-object v13, v1, v9

    .line 316
    .line 317
    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    xor-int/lit8 v9, v9, 0x1

    .line 321
    .line 322
    aget-object v9, v1, v9

    .line 323
    .line 324
    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    invoke-virtual {v13}, Ljava/lang/Object;->hashCode()I

    .line 328
    .line 329
    .line 330
    move-result v14

    .line 331
    invoke-static {v14}, La/c;->d(I)I

    .line 332
    .line 333
    .line 334
    move-result v14

    .line 335
    :goto_9
    and-int/2addr v14, v8

    .line 336
    aget v15, v4, v14

    .line 337
    .line 338
    if-ne v15, v11, :cond_10

    .line 339
    .line 340
    aput v12, v4, v14

    .line 341
    .line 342
    if-ge v6, v5, :cond_f

    .line 343
    .line 344
    aput-object v13, v1, v12

    .line 345
    .line 346
    xor-int/lit8 v12, v12, 0x1

    .line 347
    .line 348
    aput-object v9, v1, v12

    .line 349
    .line 350
    :cond_f
    add-int/lit8 v6, v6, 0x1

    .line 351
    .line 352
    move/from16 v18, v7

    .line 353
    .line 354
    goto :goto_a

    .line 355
    :cond_10
    move/from16 v18, v7

    .line 356
    .line 357
    aget-object v7, v1, v15

    .line 358
    .line 359
    invoke-virtual {v13, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 360
    .line 361
    .line 362
    move-result v7

    .line 363
    if-eqz v7, :cond_11

    .line 364
    .line 365
    new-instance v3, LQ3/v;

    .line 366
    .line 367
    xor-int/lit8 v7, v15, 0x1

    .line 368
    .line 369
    aget-object v12, v1, v7

    .line 370
    .line 371
    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    .line 373
    .line 374
    invoke-direct {v3, v13, v9, v12}, LQ3/v;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 375
    .line 376
    .line 377
    aput-object v9, v1, v7

    .line 378
    .line 379
    :goto_a
    add-int/lit8 v5, v5, 0x1

    .line 380
    .line 381
    move/from16 v7, v18

    .line 382
    .line 383
    goto :goto_8

    .line 384
    :cond_11
    add-int/lit8 v14, v14, 0x1

    .line 385
    .line 386
    move/from16 v7, v18

    .line 387
    .line 388
    goto :goto_9

    .line 389
    :cond_12
    move/from16 v18, v7

    .line 390
    .line 391
    if-ne v6, v0, :cond_13

    .line 392
    .line 393
    move-object v3, v4

    .line 394
    goto :goto_b

    .line 395
    :cond_13
    new-array v5, v10, [Ljava/lang/Object;

    .line 396
    .line 397
    aput-object v4, v5, v16

    .line 398
    .line 399
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 400
    .line 401
    .line 402
    move-result-object v4

    .line 403
    aput-object v4, v5, v17

    .line 404
    .line 405
    aput-object v3, v5, v18

    .line 406
    .line 407
    move-object v3, v5

    .line 408
    :goto_b
    instance-of v4, v3, [Ljava/lang/Object;

    .line 409
    .line 410
    if-eqz v4, :cond_15

    .line 411
    .line 412
    check-cast v3, [Ljava/lang/Object;

    .line 413
    .line 414
    aget-object v0, v3, v18

    .line 415
    .line 416
    check-cast v0, LQ3/v;

    .line 417
    .line 418
    if-eqz v2, :cond_14

    .line 419
    .line 420
    iput-object v0, v2, Lcom/google/common/collect/w;->c:LQ3/v;

    .line 421
    .line 422
    aget-object v0, v3, v16

    .line 423
    .line 424
    aget-object v2, v3, v17

    .line 425
    .line 426
    check-cast v2, Ljava/lang/Integer;

    .line 427
    .line 428
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 429
    .line 430
    .line 431
    move-result v2

    .line 432
    mul-int/lit8 v3, v2, 0x2

    .line 433
    .line 434
    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 435
    .line 436
    .line 437
    move-result-object v1

    .line 438
    move-object v3, v0

    .line 439
    move v0, v2

    .line 440
    goto :goto_c

    .line 441
    :cond_14
    invoke-virtual {v0}, LQ3/v;->a()Ljava/lang/IllegalArgumentException;

    .line 442
    .line 443
    .line 444
    move-result-object v0

    .line 445
    throw v0

    .line 446
    :cond_15
    :goto_c
    new-instance v2, Lcom/google/common/collect/RegularImmutableMap;

    .line 447
    .line 448
    invoke-direct {v2, v3, v1, v0}, Lcom/google/common/collect/RegularImmutableMap;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    .line 449
    .line 450
    .line 451
    return-object v2
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_1

    .line 3
    .line 4
    :cond_0
    :goto_0
    move-object p1, v0

    .line 5
    goto/16 :goto_4

    .line 6
    .line 7
    :cond_1
    const/4 v1, 0x1

    .line 8
    iget-object v2, p0, Lcom/google/common/collect/RegularImmutableMap;->m:[Ljava/lang/Object;

    .line 9
    .line 10
    iget v3, p0, Lcom/google/common/collect/RegularImmutableMap;->n:I

    .line 11
    .line 12
    if-ne v3, v1, :cond_2

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    aget-object v3, v2, v3

    .line 16
    .line 17
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    aget-object p1, v2, v1

    .line 27
    .line 28
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    goto/16 :goto_4

    .line 32
    .line 33
    :cond_2
    iget-object v3, p0, Lcom/google/common/collect/RegularImmutableMap;->j:Ljava/lang/Object;

    .line 34
    .line 35
    if-nez v3, :cond_3

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_3
    instance-of v4, v3, [B

    .line 39
    .line 40
    if-eqz v4, :cond_6

    .line 41
    .line 42
    move-object v4, v3

    .line 43
    check-cast v4, [B

    .line 44
    .line 45
    array-length v3, v4

    .line 46
    add-int/lit8 v5, v3, -0x1

    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    invoke-static {v3}, La/c;->d(I)I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    :goto_1
    and-int/2addr v3, v5

    .line 57
    aget-byte v6, v4, v3

    .line 58
    .line 59
    const/16 v7, 0xff

    .line 60
    .line 61
    and-int/2addr v6, v7

    .line 62
    if-ne v6, v7, :cond_4

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_4
    aget-object v7, v2, v6

    .line 66
    .line 67
    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v7

    .line 71
    if-eqz v7, :cond_5

    .line 72
    .line 73
    xor-int/lit8 p1, v6, 0x1

    .line 74
    .line 75
    aget-object p1, v2, p1

    .line 76
    .line 77
    goto :goto_4

    .line 78
    :cond_5
    add-int/lit8 v3, v3, 0x1

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_6
    instance-of v4, v3, [S

    .line 82
    .line 83
    if-eqz v4, :cond_9

    .line 84
    .line 85
    move-object v4, v3

    .line 86
    check-cast v4, [S

    .line 87
    .line 88
    array-length v3, v4

    .line 89
    add-int/lit8 v5, v3, -0x1

    .line 90
    .line 91
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    invoke-static {v3}, La/c;->d(I)I

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    :goto_2
    and-int/2addr v3, v5

    .line 100
    aget-short v6, v4, v3

    .line 101
    .line 102
    const v7, 0xffff

    .line 103
    .line 104
    .line 105
    and-int/2addr v6, v7

    .line 106
    if-ne v6, v7, :cond_7

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_7
    aget-object v7, v2, v6

    .line 110
    .line 111
    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v7

    .line 115
    if-eqz v7, :cond_8

    .line 116
    .line 117
    xor-int/lit8 p1, v6, 0x1

    .line 118
    .line 119
    aget-object p1, v2, p1

    .line 120
    .line 121
    goto :goto_4

    .line 122
    :cond_8
    add-int/lit8 v3, v3, 0x1

    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_9
    check-cast v3, [I

    .line 126
    .line 127
    array-length v4, v3

    .line 128
    sub-int/2addr v4, v1

    .line 129
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 130
    .line 131
    .line 132
    move-result v5

    .line 133
    invoke-static {v5}, La/c;->d(I)I

    .line 134
    .line 135
    .line 136
    move-result v5

    .line 137
    :goto_3
    and-int/2addr v5, v4

    .line 138
    aget v6, v3, v5

    .line 139
    .line 140
    const/4 v7, -0x1

    .line 141
    if-ne v6, v7, :cond_a

    .line 142
    .line 143
    goto/16 :goto_0

    .line 144
    .line 145
    :cond_a
    aget-object v7, v2, v6

    .line 146
    .line 147
    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result v7

    .line 151
    if-eqz v7, :cond_c

    .line 152
    .line 153
    xor-int/lit8 p1, v6, 0x1

    .line 154
    .line 155
    aget-object p1, v2, p1

    .line 156
    .line 157
    :goto_4
    if-nez p1, :cond_b

    .line 158
    .line 159
    return-object v0

    .line 160
    :cond_b
    return-object p1

    .line 161
    :cond_c
    add-int/lit8 v5, v5, 0x1

    .line 162
    .line 163
    goto :goto_3
.end method

.method public size()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/common/collect/RegularImmutableMap;->n:I

    .line 2
    .line 3
    return v0
.end method
