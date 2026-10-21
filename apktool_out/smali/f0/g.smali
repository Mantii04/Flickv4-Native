.class public final Lf0/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final A:[B

.field public static final B:[B

.field public static final C:[B

.field public static final D:[B

.field public static final E:[B

.field public static final F:[Ljava/lang/String;

.field public static final G:[I

.field public static final H:[B

.field public static final I:Lf0/d;

.field public static final J:[[Lf0/d;

.field public static final K:[Lf0/d;

.field public static final L:[Ljava/util/HashMap;

.field public static final M:[Ljava/util/HashMap;

.field public static final N:Ljava/util/HashSet;

.field public static final O:Ljava/util/HashMap;

.field public static final P:Ljava/nio/charset/Charset;

.field public static final Q:[B

.field public static final R:[B

.field public static final n:Z

.field public static final o:Ljava/util/List;

.field public static final p:Ljava/util/List;

.field public static final q:[I

.field public static final r:[I

.field public static final s:[B

.field public static final t:[B

.field public static final u:[B

.field public static final v:[B

.field public static final w:[B

.field public static final x:[B

.field public static final y:[B

.field public static final z:[B


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/io/FileDescriptor;

.field public final c:Landroid/content/res/AssetManager$AssetInputStream;

.field public d:I

.field public final e:Z

.field public final f:[Ljava/util/HashMap;

.field public final g:Ljava/util/HashSet;

.field public h:Ljava/nio/ByteOrder;

.field public i:Z

.field public j:I

.field public k:I

.field public l:I

.field public m:I


# direct methods
.method static constructor <clinit>()V
    .locals 125

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    const-string v2, "ExifInterface"

    .line 7
    .line 8
    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    sput-boolean v2, Lf0/g;->n:Z

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    const/4 v4, 0x6

    .line 20
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    const/16 v6, 0x8

    .line 25
    .line 26
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v7

    .line 30
    const/4 v8, 0x4

    .line 31
    new-array v9, v8, [Ljava/lang/Integer;

    .line 32
    .line 33
    const/4 v10, 0x0

    .line 34
    aput-object v3, v9, v10

    .line 35
    .line 36
    aput-object v5, v9, v2

    .line 37
    .line 38
    const/4 v5, 0x2

    .line 39
    aput-object v1, v9, v5

    .line 40
    .line 41
    aput-object v7, v9, v0

    .line 42
    .line 43
    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object v9

    .line 47
    sput-object v9, Lf0/g;->o:Ljava/util/List;

    .line 48
    .line 49
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object v9

    .line 53
    const/4 v11, 0x7

    .line 54
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object v12

    .line 58
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object v13

    .line 62
    const/4 v14, 0x5

    .line 63
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object v15

    .line 67
    move/from16 v16, v10

    .line 68
    .line 69
    new-array v10, v8, [Ljava/lang/Integer;

    .line 70
    .line 71
    aput-object v9, v10, v16

    .line 72
    .line 73
    aput-object v12, v10, v2

    .line 74
    .line 75
    aput-object v13, v10, v5

    .line 76
    .line 77
    aput-object v15, v10, v0

    .line 78
    .line 79
    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 80
    .line 81
    .line 82
    move-result-object v10

    .line 83
    sput-object v10, Lf0/g;->p:Ljava/util/List;

    .line 84
    .line 85
    filled-new-array {v6, v6, v6}, [I

    .line 86
    .line 87
    .line 88
    move-result-object v10

    .line 89
    sput-object v10, Lf0/g;->q:[I

    .line 90
    .line 91
    filled-new-array {v6}, [I

    .line 92
    .line 93
    .line 94
    move-result-object v10

    .line 95
    sput-object v10, Lf0/g;->r:[I

    .line 96
    .line 97
    new-array v10, v0, [B

    .line 98
    .line 99
    fill-array-data v10, :array_0

    .line 100
    .line 101
    .line 102
    sput-object v10, Lf0/g;->s:[B

    .line 103
    .line 104
    new-array v10, v8, [B

    .line 105
    .line 106
    fill-array-data v10, :array_1

    .line 107
    .line 108
    .line 109
    sput-object v10, Lf0/g;->t:[B

    .line 110
    .line 111
    new-array v10, v8, [B

    .line 112
    .line 113
    fill-array-data v10, :array_2

    .line 114
    .line 115
    .line 116
    sput-object v10, Lf0/g;->u:[B

    .line 117
    .line 118
    new-array v10, v8, [B

    .line 119
    .line 120
    fill-array-data v10, :array_3

    .line 121
    .line 122
    .line 123
    sput-object v10, Lf0/g;->v:[B

    .line 124
    .line 125
    new-array v10, v4, [B

    .line 126
    .line 127
    fill-array-data v10, :array_4

    .line 128
    .line 129
    .line 130
    sput-object v10, Lf0/g;->w:[B

    .line 131
    .line 132
    const/16 v13, 0xa

    .line 133
    .line 134
    const/16 v17, 0x49

    .line 135
    .line 136
    new-array v10, v13, [B

    .line 137
    .line 138
    fill-array-data v10, :array_5

    .line 139
    .line 140
    .line 141
    sput-object v10, Lf0/g;->x:[B

    .line 142
    .line 143
    const/16 v18, 0xd

    .line 144
    .line 145
    const/16 v19, 0x1a

    .line 146
    .line 147
    new-array v10, v6, [B

    .line 148
    .line 149
    fill-array-data v10, :array_6

    .line 150
    .line 151
    .line 152
    sput-object v10, Lf0/g;->y:[B

    .line 153
    .line 154
    new-array v10, v8, [B

    .line 155
    .line 156
    fill-array-data v10, :array_7

    .line 157
    .line 158
    .line 159
    sput-object v10, Lf0/g;->z:[B

    .line 160
    .line 161
    new-array v10, v8, [B

    .line 162
    .line 163
    fill-array-data v10, :array_8

    .line 164
    .line 165
    .line 166
    sput-object v10, Lf0/g;->A:[B

    .line 167
    .line 168
    new-array v10, v8, [B

    .line 169
    .line 170
    fill-array-data v10, :array_9

    .line 171
    .line 172
    .line 173
    sput-object v10, Lf0/g;->B:[B

    .line 174
    .line 175
    new-array v10, v8, [B

    .line 176
    .line 177
    fill-array-data v10, :array_a

    .line 178
    .line 179
    .line 180
    sput-object v10, Lf0/g;->C:[B

    .line 181
    .line 182
    new-array v10, v8, [B

    .line 183
    .line 184
    fill-array-data v10, :array_b

    .line 185
    .line 186
    .line 187
    sput-object v10, Lf0/g;->D:[B

    .line 188
    .line 189
    new-array v10, v8, [B

    .line 190
    .line 191
    fill-array-data v10, :array_c

    .line 192
    .line 193
    .line 194
    sput-object v10, Lf0/g;->E:[B

    .line 195
    .line 196
    const-string v10, "VP8X"

    .line 197
    .line 198
    move/from16 v20, v13

    .line 199
    .line 200
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 201
    .line 202
    .line 203
    move-result-object v13

    .line 204
    invoke-virtual {v10, v13}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 205
    .line 206
    .line 207
    const-string v10, "VP8L"

    .line 208
    .line 209
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 210
    .line 211
    .line 212
    move-result-object v13

    .line 213
    invoke-virtual {v10, v13}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 214
    .line 215
    .line 216
    const-string v10, "VP8 "

    .line 217
    .line 218
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 219
    .line 220
    .line 221
    move-result-object v13

    .line 222
    invoke-virtual {v10, v13}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 223
    .line 224
    .line 225
    const-string v10, "ANIM"

    .line 226
    .line 227
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 228
    .line 229
    .line 230
    move-result-object v13

    .line 231
    invoke-virtual {v10, v13}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 232
    .line 233
    .line 234
    const-string v10, "ANMF"

    .line 235
    .line 236
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 237
    .line 238
    .line 239
    move-result-object v13

    .line 240
    invoke-virtual {v10, v13}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 241
    .line 242
    .line 243
    const-string v31, "SRATIONAL"

    .line 244
    .line 245
    const-string v32, "SINGLE"

    .line 246
    .line 247
    const-string v21, ""

    .line 248
    .line 249
    const-string v22, "BYTE"

    .line 250
    .line 251
    const-string v23, "STRING"

    .line 252
    .line 253
    const-string v24, "USHORT"

    .line 254
    .line 255
    const-string v25, "ULONG"

    .line 256
    .line 257
    const-string v26, "URATIONAL"

    .line 258
    .line 259
    const-string v27, "SBYTE"

    .line 260
    .line 261
    const-string v28, "UNDEFINED"

    .line 262
    .line 263
    const-string v29, "SSHORT"

    .line 264
    .line 265
    const-string v30, "SLONG"

    .line 266
    .line 267
    const-string v33, "DOUBLE"

    .line 268
    .line 269
    const-string v34, "IFD"

    .line 270
    .line 271
    filled-new-array/range {v21 .. v34}, [Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v10

    .line 275
    sput-object v10, Lf0/g;->F:[Ljava/lang/String;

    .line 276
    .line 277
    const/16 v10, 0xe

    .line 278
    .line 279
    new-array v13, v10, [I

    .line 280
    .line 281
    fill-array-data v13, :array_d

    .line 282
    .line 283
    .line 284
    sput-object v13, Lf0/g;->G:[I

    .line 285
    .line 286
    new-array v13, v6, [B

    .line 287
    .line 288
    fill-array-data v13, :array_e

    .line 289
    .line 290
    .line 291
    sput-object v13, Lf0/g;->H:[B

    .line 292
    .line 293
    new-instance v13, Lf0/d;

    .line 294
    .line 295
    move/from16 v21, v10

    .line 296
    .line 297
    const-string v10, "NewSubfileType"

    .line 298
    .line 299
    move/from16 v22, v6

    .line 300
    .line 301
    const/16 v6, 0xfe

    .line 302
    .line 303
    invoke-direct {v13, v10, v6, v8}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 304
    .line 305
    .line 306
    new-instance v6, Lf0/d;

    .line 307
    .line 308
    const-string v2, "SubfileType"

    .line 309
    .line 310
    const/16 v11, 0xff

    .line 311
    .line 312
    invoke-direct {v6, v2, v11, v8}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 313
    .line 314
    .line 315
    new-instance v11, Lf0/d;

    .line 316
    .line 317
    const-string v4, "ImageWidth"

    .line 318
    .line 319
    const/16 v14, 0x100

    .line 320
    .line 321
    invoke-direct {v11, v4, v14, v0, v8}, Lf0/d;-><init>(Ljava/lang/String;III)V

    .line 322
    .line 323
    .line 324
    new-instance v4, Lf0/d;

    .line 325
    .line 326
    const-string v14, "ImageLength"

    .line 327
    .line 328
    const/16 v5, 0x101

    .line 329
    .line 330
    invoke-direct {v4, v14, v5, v0, v8}, Lf0/d;-><init>(Ljava/lang/String;III)V

    .line 331
    .line 332
    .line 333
    new-instance v14, Lf0/d;

    .line 334
    .line 335
    const-string v5, "BitsPerSample"

    .line 336
    .line 337
    const/16 v8, 0x102

    .line 338
    .line 339
    invoke-direct {v14, v5, v8, v0}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 340
    .line 341
    .line 342
    new-instance v8, Lf0/d;

    .line 343
    .line 344
    move-object/from16 v34, v4

    .line 345
    .line 346
    const-string v4, "Compression"

    .line 347
    .line 348
    move-object/from16 v35, v6

    .line 349
    .line 350
    const/16 v6, 0x103

    .line 351
    .line 352
    invoke-direct {v8, v4, v6, v0}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 353
    .line 354
    .line 355
    new-instance v6, Lf0/d;

    .line 356
    .line 357
    move-object/from16 v37, v8

    .line 358
    .line 359
    const-string v8, "PhotometricInterpretation"

    .line 360
    .line 361
    move-object/from16 v38, v11

    .line 362
    .line 363
    const/16 v11, 0x106

    .line 364
    .line 365
    invoke-direct {v6, v8, v11, v0}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 366
    .line 367
    .line 368
    new-instance v11, Lf0/d;

    .line 369
    .line 370
    const-string v0, "ImageDescription"

    .line 371
    .line 372
    move-object/from16 v41, v6

    .line 373
    .line 374
    const/16 v6, 0x10e

    .line 375
    .line 376
    move-object/from16 v42, v13

    .line 377
    .line 378
    const/4 v13, 0x2

    .line 379
    invoke-direct {v11, v0, v6, v13}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 380
    .line 381
    .line 382
    new-instance v6, Lf0/d;

    .line 383
    .line 384
    move-object/from16 v44, v11

    .line 385
    .line 386
    const-string v11, "Make"

    .line 387
    .line 388
    move-object/from16 v45, v14

    .line 389
    .line 390
    const/16 v14, 0x10f

    .line 391
    .line 392
    invoke-direct {v6, v11, v14, v13}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 393
    .line 394
    .line 395
    new-instance v11, Lf0/d;

    .line 396
    .line 397
    const-string v14, "Model"

    .line 398
    .line 399
    move-object/from16 v46, v6

    .line 400
    .line 401
    const/16 v6, 0x110

    .line 402
    .line 403
    invoke-direct {v11, v14, v6, v13}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 404
    .line 405
    .line 406
    new-instance v6, Lf0/d;

    .line 407
    .line 408
    const-string v13, "StripOffsets"

    .line 409
    .line 410
    const/16 v14, 0x111

    .line 411
    .line 412
    move-object/from16 v48, v7

    .line 413
    .line 414
    move-object/from16 v47, v11

    .line 415
    .line 416
    const/4 v7, 0x4

    .line 417
    const/4 v11, 0x3

    .line 418
    invoke-direct {v6, v13, v14, v11, v7}, Lf0/d;-><init>(Ljava/lang/String;III)V

    .line 419
    .line 420
    .line 421
    new-instance v7, Lf0/d;

    .line 422
    .line 423
    const-string v14, "Orientation"

    .line 424
    .line 425
    move-object/from16 v49, v6

    .line 426
    .line 427
    const/16 v6, 0x112

    .line 428
    .line 429
    invoke-direct {v7, v14, v6, v11}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 430
    .line 431
    .line 432
    new-instance v6, Lf0/d;

    .line 433
    .line 434
    const-string v14, "SamplesPerPixel"

    .line 435
    .line 436
    move-object/from16 v50, v7

    .line 437
    .line 438
    const/16 v7, 0x115

    .line 439
    .line 440
    invoke-direct {v6, v14, v7, v11}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 441
    .line 442
    .line 443
    new-instance v7, Lf0/d;

    .line 444
    .line 445
    const-string v14, "RowsPerStrip"

    .line 446
    .line 447
    move-object/from16 v51, v6

    .line 448
    .line 449
    const/16 v6, 0x116

    .line 450
    .line 451
    move-object/from16 v52, v12

    .line 452
    .line 453
    const/4 v12, 0x4

    .line 454
    invoke-direct {v7, v14, v6, v11, v12}, Lf0/d;-><init>(Ljava/lang/String;III)V

    .line 455
    .line 456
    .line 457
    new-instance v6, Lf0/d;

    .line 458
    .line 459
    const-string v14, "StripByteCounts"

    .line 460
    .line 461
    move-object/from16 v53, v7

    .line 462
    .line 463
    const/16 v7, 0x117

    .line 464
    .line 465
    invoke-direct {v6, v14, v7, v11, v12}, Lf0/d;-><init>(Ljava/lang/String;III)V

    .line 466
    .line 467
    .line 468
    new-instance v7, Lf0/d;

    .line 469
    .line 470
    const-string v11, "XResolution"

    .line 471
    .line 472
    const/16 v12, 0x11a

    .line 473
    .line 474
    const/4 v14, 0x5

    .line 475
    invoke-direct {v7, v11, v12, v14}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 476
    .line 477
    .line 478
    new-instance v11, Lf0/d;

    .line 479
    .line 480
    const-string v12, "YResolution"

    .line 481
    .line 482
    move-object/from16 v54, v6

    .line 483
    .line 484
    const/16 v6, 0x11b

    .line 485
    .line 486
    invoke-direct {v11, v12, v6, v14}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 487
    .line 488
    .line 489
    new-instance v6, Lf0/d;

    .line 490
    .line 491
    const-string v12, "PlanarConfiguration"

    .line 492
    .line 493
    const/16 v14, 0x11c

    .line 494
    .line 495
    move-object/from16 v55, v7

    .line 496
    .line 497
    const/4 v7, 0x3

    .line 498
    invoke-direct {v6, v12, v14, v7}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 499
    .line 500
    .line 501
    new-instance v12, Lf0/d;

    .line 502
    .line 503
    const-string v14, "ResolutionUnit"

    .line 504
    .line 505
    move-object/from16 v56, v6

    .line 506
    .line 507
    const/16 v6, 0x128

    .line 508
    .line 509
    invoke-direct {v12, v14, v6, v7}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 510
    .line 511
    .line 512
    new-instance v6, Lf0/d;

    .line 513
    .line 514
    const-string v14, "TransferFunction"

    .line 515
    .line 516
    move-object/from16 v57, v11

    .line 517
    .line 518
    const/16 v11, 0x12d

    .line 519
    .line 520
    invoke-direct {v6, v14, v11, v7}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 521
    .line 522
    .line 523
    new-instance v7, Lf0/d;

    .line 524
    .line 525
    const-string v11, "Software"

    .line 526
    .line 527
    const/16 v14, 0x131

    .line 528
    .line 529
    move-object/from16 v58, v6

    .line 530
    .line 531
    const/4 v6, 0x2

    .line 532
    invoke-direct {v7, v11, v14, v6}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 533
    .line 534
    .line 535
    new-instance v11, Lf0/d;

    .line 536
    .line 537
    const-string v14, "DateTime"

    .line 538
    .line 539
    move-object/from16 v59, v7

    .line 540
    .line 541
    const/16 v7, 0x132

    .line 542
    .line 543
    invoke-direct {v11, v14, v7, v6}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 544
    .line 545
    .line 546
    new-instance v7, Lf0/d;

    .line 547
    .line 548
    const-string v14, "Artist"

    .line 549
    .line 550
    move-object/from16 v60, v11

    .line 551
    .line 552
    const/16 v11, 0x13b

    .line 553
    .line 554
    invoke-direct {v7, v14, v11, v6}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 555
    .line 556
    .line 557
    new-instance v6, Lf0/d;

    .line 558
    .line 559
    const-string v11, "WhitePoint"

    .line 560
    .line 561
    const/16 v14, 0x13e

    .line 562
    .line 563
    move-object/from16 v61, v7

    .line 564
    .line 565
    const/4 v7, 0x5

    .line 566
    invoke-direct {v6, v11, v14, v7}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 567
    .line 568
    .line 569
    new-instance v11, Lf0/d;

    .line 570
    .line 571
    const-string v14, "PrimaryChromaticities"

    .line 572
    .line 573
    move-object/from16 v62, v6

    .line 574
    .line 575
    const/16 v6, 0x13f

    .line 576
    .line 577
    invoke-direct {v11, v14, v6, v7}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 578
    .line 579
    .line 580
    new-instance v6, Lf0/d;

    .line 581
    .line 582
    const-string v7, "SubIFDPointer"

    .line 583
    .line 584
    const/16 v14, 0x14a

    .line 585
    .line 586
    move-object/from16 v63, v11

    .line 587
    .line 588
    const/4 v11, 0x4

    .line 589
    invoke-direct {v6, v7, v14, v11}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 590
    .line 591
    .line 592
    new-instance v14, Lf0/d;

    .line 593
    .line 594
    move-object/from16 v64, v6

    .line 595
    .line 596
    const-string v6, "JPEGInterchangeFormat"

    .line 597
    .line 598
    move-object/from16 v65, v12

    .line 599
    .line 600
    const/16 v12, 0x201

    .line 601
    .line 602
    invoke-direct {v14, v6, v12, v11}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 603
    .line 604
    .line 605
    new-instance v6, Lf0/d;

    .line 606
    .line 607
    const-string v12, "JPEGInterchangeFormatLength"

    .line 608
    .line 609
    move-object/from16 v66, v14

    .line 610
    .line 611
    const/16 v14, 0x202

    .line 612
    .line 613
    invoke-direct {v6, v12, v14, v11}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 614
    .line 615
    .line 616
    new-instance v11, Lf0/d;

    .line 617
    .line 618
    const-string v12, "YCbCrCoefficients"

    .line 619
    .line 620
    const/16 v14, 0x211

    .line 621
    .line 622
    move-object/from16 v67, v6

    .line 623
    .line 624
    const/4 v6, 0x5

    .line 625
    invoke-direct {v11, v12, v14, v6}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 626
    .line 627
    .line 628
    new-instance v6, Lf0/d;

    .line 629
    .line 630
    const-string v12, "YCbCrSubSampling"

    .line 631
    .line 632
    const/16 v14, 0x212

    .line 633
    .line 634
    move-object/from16 v68, v11

    .line 635
    .line 636
    const/4 v11, 0x3

    .line 637
    invoke-direct {v6, v12, v14, v11}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 638
    .line 639
    .line 640
    new-instance v12, Lf0/d;

    .line 641
    .line 642
    const-string v14, "YCbCrPositioning"

    .line 643
    .line 644
    move-object/from16 v69, v6

    .line 645
    .line 646
    const/16 v6, 0x213

    .line 647
    .line 648
    invoke-direct {v12, v14, v6, v11}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 649
    .line 650
    .line 651
    new-instance v6, Lf0/d;

    .line 652
    .line 653
    const-string v11, "ReferenceBlackWhite"

    .line 654
    .line 655
    const/16 v14, 0x214

    .line 656
    .line 657
    move-object/from16 v70, v12

    .line 658
    .line 659
    const/4 v12, 0x5

    .line 660
    invoke-direct {v6, v11, v14, v12}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 661
    .line 662
    .line 663
    new-instance v11, Lf0/d;

    .line 664
    .line 665
    const-string v12, "Copyright"

    .line 666
    .line 667
    const v14, 0x8298

    .line 668
    .line 669
    .line 670
    move-object/from16 v71, v6

    .line 671
    .line 672
    const/4 v6, 0x2

    .line 673
    invoke-direct {v11, v12, v14, v6}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 674
    .line 675
    .line 676
    new-instance v6, Lf0/d;

    .line 677
    .line 678
    const-string v12, "ExifIFDPointer"

    .line 679
    .line 680
    const v14, 0x8769

    .line 681
    .line 682
    .line 683
    move-object/from16 v72, v11

    .line 684
    .line 685
    const/4 v11, 0x4

    .line 686
    invoke-direct {v6, v12, v14, v11}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 687
    .line 688
    .line 689
    new-instance v14, Lf0/d;

    .line 690
    .line 691
    move-object/from16 v73, v6

    .line 692
    .line 693
    const-string v6, "GPSInfoIFDPointer"

    .line 694
    .line 695
    move-object/from16 v74, v1

    .line 696
    .line 697
    const v1, 0x8825

    .line 698
    .line 699
    .line 700
    invoke-direct {v14, v6, v1, v11}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 701
    .line 702
    .line 703
    new-instance v1, Lf0/d;

    .line 704
    .line 705
    move-object/from16 v75, v14

    .line 706
    .line 707
    const-string v14, "SensorTopBorder"

    .line 708
    .line 709
    invoke-direct {v1, v14, v11, v11}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 710
    .line 711
    .line 712
    new-instance v14, Lf0/d;

    .line 713
    .line 714
    move-object/from16 v76, v1

    .line 715
    .line 716
    const-string v1, "SensorLeftBorder"

    .line 717
    .line 718
    move-object/from16 v77, v9

    .line 719
    .line 720
    const/4 v9, 0x5

    .line 721
    invoke-direct {v14, v1, v9, v11}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 722
    .line 723
    .line 724
    new-instance v1, Lf0/d;

    .line 725
    .line 726
    const-string v9, "SensorBottomBorder"

    .line 727
    .line 728
    move-object/from16 v78, v14

    .line 729
    .line 730
    const/4 v14, 0x6

    .line 731
    invoke-direct {v1, v9, v14, v11}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 732
    .line 733
    .line 734
    new-instance v9, Lf0/d;

    .line 735
    .line 736
    const-string v14, "SensorRightBorder"

    .line 737
    .line 738
    move-object/from16 v79, v1

    .line 739
    .line 740
    const/4 v1, 0x7

    .line 741
    invoke-direct {v9, v14, v1, v11}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 742
    .line 743
    .line 744
    new-instance v11, Lf0/d;

    .line 745
    .line 746
    const-string v14, "ISO"

    .line 747
    .line 748
    const/16 v1, 0x17

    .line 749
    .line 750
    move-object/from16 v80, v9

    .line 751
    .line 752
    const/4 v9, 0x3

    .line 753
    invoke-direct {v11, v14, v1, v9}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 754
    .line 755
    .line 756
    new-instance v9, Lf0/d;

    .line 757
    .line 758
    const-string v14, "JpgFromRaw"

    .line 759
    .line 760
    move/from16 v81, v1

    .line 761
    .line 762
    const/16 v1, 0x2e

    .line 763
    .line 764
    move-object/from16 v82, v11

    .line 765
    .line 766
    const/4 v11, 0x7

    .line 767
    invoke-direct {v9, v14, v1, v11}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 768
    .line 769
    .line 770
    new-instance v1, Lf0/d;

    .line 771
    .line 772
    const-string v11, "Xmp"

    .line 773
    .line 774
    const/16 v14, 0x2bc

    .line 775
    .line 776
    move-object/from16 v83, v9

    .line 777
    .line 778
    const/4 v9, 0x1

    .line 779
    invoke-direct {v1, v11, v14, v9}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 780
    .line 781
    .line 782
    const/16 v11, 0x2a

    .line 783
    .line 784
    new-array v11, v11, [Lf0/d;

    .line 785
    .line 786
    aput-object v42, v11, v16

    .line 787
    .line 788
    aput-object v35, v11, v9

    .line 789
    .line 790
    const/16 v30, 0x2

    .line 791
    .line 792
    aput-object v38, v11, v30

    .line 793
    .line 794
    const/16 v40, 0x3

    .line 795
    .line 796
    aput-object v34, v11, v40

    .line 797
    .line 798
    const/16 v32, 0x4

    .line 799
    .line 800
    aput-object v45, v11, v32

    .line 801
    .line 802
    const/16 v28, 0x5

    .line 803
    .line 804
    aput-object v37, v11, v28

    .line 805
    .line 806
    const/16 v27, 0x6

    .line 807
    .line 808
    aput-object v41, v11, v27

    .line 809
    .line 810
    const/16 v25, 0x7

    .line 811
    .line 812
    aput-object v44, v11, v25

    .line 813
    .line 814
    aput-object v46, v11, v22

    .line 815
    .line 816
    const/16 v9, 0x9

    .line 817
    .line 818
    aput-object v47, v11, v9

    .line 819
    .line 820
    aput-object v49, v11, v20

    .line 821
    .line 822
    const/16 v14, 0xb

    .line 823
    .line 824
    aput-object v50, v11, v14

    .line 825
    .line 826
    move/from16 v34, v14

    .line 827
    .line 828
    const/16 v14, 0xc

    .line 829
    .line 830
    aput-object v51, v11, v14

    .line 831
    .line 832
    aput-object v53, v11, v18

    .line 833
    .line 834
    aput-object v54, v11, v21

    .line 835
    .line 836
    move/from16 v35, v14

    .line 837
    .line 838
    const/16 v14, 0xf

    .line 839
    .line 840
    aput-object v55, v11, v14

    .line 841
    .line 842
    move/from16 v37, v14

    .line 843
    .line 844
    const/16 v14, 0x10

    .line 845
    .line 846
    aput-object v57, v11, v14

    .line 847
    .line 848
    move/from16 v38, v14

    .line 849
    .line 850
    const/16 v14, 0x11

    .line 851
    .line 852
    aput-object v56, v11, v14

    .line 853
    .line 854
    move/from16 v41, v14

    .line 855
    .line 856
    const/16 v14, 0x12

    .line 857
    .line 858
    aput-object v65, v11, v14

    .line 859
    .line 860
    const/16 v42, 0x13

    .line 861
    .line 862
    aput-object v58, v11, v42

    .line 863
    .line 864
    const/16 v42, 0x14

    .line 865
    .line 866
    aput-object v59, v11, v42

    .line 867
    .line 868
    const/16 v42, 0x15

    .line 869
    .line 870
    aput-object v60, v11, v42

    .line 871
    .line 872
    const/16 v42, 0x16

    .line 873
    .line 874
    aput-object v61, v11, v42

    .line 875
    .line 876
    aput-object v62, v11, v81

    .line 877
    .line 878
    const/16 v42, 0x18

    .line 879
    .line 880
    aput-object v63, v11, v42

    .line 881
    .line 882
    const/16 v42, 0x19

    .line 883
    .line 884
    aput-object v64, v11, v42

    .line 885
    .line 886
    aput-object v66, v11, v19

    .line 887
    .line 888
    const/16 v42, 0x1b

    .line 889
    .line 890
    aput-object v67, v11, v42

    .line 891
    .line 892
    const/16 v42, 0x1c

    .line 893
    .line 894
    aput-object v68, v11, v42

    .line 895
    .line 896
    const/16 v42, 0x1d

    .line 897
    .line 898
    aput-object v69, v11, v42

    .line 899
    .line 900
    const/16 v42, 0x1e

    .line 901
    .line 902
    aput-object v70, v11, v42

    .line 903
    .line 904
    const/16 v42, 0x1f

    .line 905
    .line 906
    aput-object v71, v11, v42

    .line 907
    .line 908
    const/16 v42, 0x20

    .line 909
    .line 910
    aput-object v72, v11, v42

    .line 911
    .line 912
    const/16 v42, 0x21

    .line 913
    .line 914
    aput-object v73, v11, v42

    .line 915
    .line 916
    const/16 v42, 0x22

    .line 917
    .line 918
    aput-object v75, v11, v42

    .line 919
    .line 920
    const/16 v42, 0x23

    .line 921
    .line 922
    aput-object v76, v11, v42

    .line 923
    .line 924
    const/16 v42, 0x24

    .line 925
    .line 926
    aput-object v78, v11, v42

    .line 927
    .line 928
    const/16 v42, 0x25

    .line 929
    .line 930
    aput-object v79, v11, v42

    .line 931
    .line 932
    const/16 v42, 0x26

    .line 933
    .line 934
    aput-object v80, v11, v42

    .line 935
    .line 936
    const/16 v42, 0x27

    .line 937
    .line 938
    aput-object v82, v11, v42

    .line 939
    .line 940
    const/16 v42, 0x28

    .line 941
    .line 942
    aput-object v83, v11, v42

    .line 943
    .line 944
    const/16 v42, 0x29

    .line 945
    .line 946
    aput-object v1, v11, v42

    .line 947
    .line 948
    new-instance v1, Lf0/d;

    .line 949
    .line 950
    move/from16 v42, v14

    .line 951
    .line 952
    const-string v14, "ExposureTime"

    .line 953
    .line 954
    move/from16 v44, v9

    .line 955
    .line 956
    const v9, 0x829a

    .line 957
    .line 958
    .line 959
    move-object/from16 v45, v11

    .line 960
    .line 961
    const/4 v11, 0x5

    .line 962
    invoke-direct {v1, v14, v9, v11}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 963
    .line 964
    .line 965
    new-instance v9, Lf0/d;

    .line 966
    .line 967
    const-string v14, "FNumber"

    .line 968
    .line 969
    move-object/from16 v46, v1

    .line 970
    .line 971
    const v1, 0x829d

    .line 972
    .line 973
    .line 974
    invoke-direct {v9, v14, v1, v11}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 975
    .line 976
    .line 977
    new-instance v1, Lf0/d;

    .line 978
    .line 979
    const-string v11, "ExposureProgram"

    .line 980
    .line 981
    const v14, 0x8822

    .line 982
    .line 983
    .line 984
    move-object/from16 v47, v9

    .line 985
    .line 986
    const/4 v9, 0x3

    .line 987
    invoke-direct {v1, v11, v14, v9}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 988
    .line 989
    .line 990
    new-instance v11, Lf0/d;

    .line 991
    .line 992
    const-string v14, "SpectralSensitivity"

    .line 993
    .line 994
    const v9, 0x8824

    .line 995
    .line 996
    .line 997
    move-object/from16 v49, v1

    .line 998
    .line 999
    const/4 v1, 0x2

    .line 1000
    invoke-direct {v11, v14, v9, v1}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 1001
    .line 1002
    .line 1003
    new-instance v1, Lf0/d;

    .line 1004
    .line 1005
    const-string v9, "PhotographicSensitivity"

    .line 1006
    .line 1007
    const v14, 0x8827

    .line 1008
    .line 1009
    .line 1010
    move-object/from16 v50, v11

    .line 1011
    .line 1012
    const/4 v11, 0x3

    .line 1013
    invoke-direct {v1, v9, v14, v11}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 1014
    .line 1015
    .line 1016
    new-instance v9, Lf0/d;

    .line 1017
    .line 1018
    const-string v14, "OECF"

    .line 1019
    .line 1020
    const v11, 0x8828

    .line 1021
    .line 1022
    .line 1023
    move-object/from16 v51, v1

    .line 1024
    .line 1025
    const/4 v1, 0x7

    .line 1026
    invoke-direct {v9, v14, v11, v1}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 1027
    .line 1028
    .line 1029
    new-instance v1, Lf0/d;

    .line 1030
    .line 1031
    const-string v11, "SensitivityType"

    .line 1032
    .line 1033
    const v14, 0x8830

    .line 1034
    .line 1035
    .line 1036
    move-object/from16 v53, v9

    .line 1037
    .line 1038
    const/4 v9, 0x3

    .line 1039
    invoke-direct {v1, v11, v14, v9}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 1040
    .line 1041
    .line 1042
    new-instance v9, Lf0/d;

    .line 1043
    .line 1044
    const-string v11, "StandardOutputSensitivity"

    .line 1045
    .line 1046
    const v14, 0x8831

    .line 1047
    .line 1048
    .line 1049
    move-object/from16 v54, v1

    .line 1050
    .line 1051
    const/4 v1, 0x4

    .line 1052
    invoke-direct {v9, v11, v14, v1}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 1053
    .line 1054
    .line 1055
    new-instance v11, Lf0/d;

    .line 1056
    .line 1057
    const-string v14, "RecommendedExposureIndex"

    .line 1058
    .line 1059
    move-object/from16 v55, v9

    .line 1060
    .line 1061
    const v9, 0x8832

    .line 1062
    .line 1063
    .line 1064
    invoke-direct {v11, v14, v9, v1}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 1065
    .line 1066
    .line 1067
    new-instance v9, Lf0/d;

    .line 1068
    .line 1069
    const-string v14, "ISOSpeed"

    .line 1070
    .line 1071
    move-object/from16 v56, v11

    .line 1072
    .line 1073
    const v11, 0x8833

    .line 1074
    .line 1075
    .line 1076
    invoke-direct {v9, v14, v11, v1}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 1077
    .line 1078
    .line 1079
    new-instance v11, Lf0/d;

    .line 1080
    .line 1081
    const-string v14, "ISOSpeedLatitudeyyy"

    .line 1082
    .line 1083
    move-object/from16 v57, v9

    .line 1084
    .line 1085
    const v9, 0x8834

    .line 1086
    .line 1087
    .line 1088
    invoke-direct {v11, v14, v9, v1}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 1089
    .line 1090
    .line 1091
    new-instance v9, Lf0/d;

    .line 1092
    .line 1093
    const-string v14, "ISOSpeedLatitudezzz"

    .line 1094
    .line 1095
    move-object/from16 v58, v11

    .line 1096
    .line 1097
    const v11, 0x8835

    .line 1098
    .line 1099
    .line 1100
    invoke-direct {v9, v14, v11, v1}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 1101
    .line 1102
    .line 1103
    new-instance v1, Lf0/d;

    .line 1104
    .line 1105
    const-string v11, "ExifVersion"

    .line 1106
    .line 1107
    const v14, 0x9000

    .line 1108
    .line 1109
    .line 1110
    move-object/from16 v59, v9

    .line 1111
    .line 1112
    const/4 v9, 0x2

    .line 1113
    invoke-direct {v1, v11, v14, v9}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 1114
    .line 1115
    .line 1116
    new-instance v11, Lf0/d;

    .line 1117
    .line 1118
    const-string v14, "DateTimeOriginal"

    .line 1119
    .line 1120
    move-object/from16 v60, v1

    .line 1121
    .line 1122
    const v1, 0x9003

    .line 1123
    .line 1124
    .line 1125
    invoke-direct {v11, v14, v1, v9}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 1126
    .line 1127
    .line 1128
    new-instance v1, Lf0/d;

    .line 1129
    .line 1130
    const-string v14, "DateTimeDigitized"

    .line 1131
    .line 1132
    move-object/from16 v61, v11

    .line 1133
    .line 1134
    const v11, 0x9004

    .line 1135
    .line 1136
    .line 1137
    invoke-direct {v1, v14, v11, v9}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 1138
    .line 1139
    .line 1140
    new-instance v11, Lf0/d;

    .line 1141
    .line 1142
    const-string v14, "OffsetTime"

    .line 1143
    .line 1144
    move-object/from16 v62, v1

    .line 1145
    .line 1146
    const v1, 0x9010

    .line 1147
    .line 1148
    .line 1149
    invoke-direct {v11, v14, v1, v9}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 1150
    .line 1151
    .line 1152
    new-instance v1, Lf0/d;

    .line 1153
    .line 1154
    const-string v14, "OffsetTimeOriginal"

    .line 1155
    .line 1156
    move-object/from16 v63, v11

    .line 1157
    .line 1158
    const v11, 0x9011

    .line 1159
    .line 1160
    .line 1161
    invoke-direct {v1, v14, v11, v9}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 1162
    .line 1163
    .line 1164
    new-instance v11, Lf0/d;

    .line 1165
    .line 1166
    const-string v14, "OffsetTimeDigitized"

    .line 1167
    .line 1168
    move-object/from16 v64, v1

    .line 1169
    .line 1170
    const v1, 0x9012

    .line 1171
    .line 1172
    .line 1173
    invoke-direct {v11, v14, v1, v9}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 1174
    .line 1175
    .line 1176
    new-instance v1, Lf0/d;

    .line 1177
    .line 1178
    const-string v9, "ComponentsConfiguration"

    .line 1179
    .line 1180
    const v14, 0x9101

    .line 1181
    .line 1182
    .line 1183
    move-object/from16 v65, v11

    .line 1184
    .line 1185
    const/4 v11, 0x7

    .line 1186
    invoke-direct {v1, v9, v14, v11}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 1187
    .line 1188
    .line 1189
    new-instance v9, Lf0/d;

    .line 1190
    .line 1191
    const-string v11, "CompressedBitsPerPixel"

    .line 1192
    .line 1193
    const v14, 0x9102

    .line 1194
    .line 1195
    .line 1196
    move-object/from16 v66, v1

    .line 1197
    .line 1198
    const/4 v1, 0x5

    .line 1199
    invoke-direct {v9, v11, v14, v1}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 1200
    .line 1201
    .line 1202
    new-instance v11, Lf0/d;

    .line 1203
    .line 1204
    const-string v14, "ShutterSpeedValue"

    .line 1205
    .line 1206
    const v1, 0x9201

    .line 1207
    .line 1208
    .line 1209
    move-object/from16 v67, v9

    .line 1210
    .line 1211
    move/from16 v9, v20

    .line 1212
    .line 1213
    invoke-direct {v11, v14, v1, v9}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 1214
    .line 1215
    .line 1216
    new-instance v1, Lf0/d;

    .line 1217
    .line 1218
    const-string v14, "ApertureValue"

    .line 1219
    .line 1220
    const v9, 0x9202

    .line 1221
    .line 1222
    .line 1223
    move-object/from16 v68, v11

    .line 1224
    .line 1225
    const/4 v11, 0x5

    .line 1226
    invoke-direct {v1, v14, v9, v11}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 1227
    .line 1228
    .line 1229
    new-instance v9, Lf0/d;

    .line 1230
    .line 1231
    const-string v11, "BrightnessValue"

    .line 1232
    .line 1233
    const v14, 0x9203

    .line 1234
    .line 1235
    .line 1236
    move-object/from16 v69, v1

    .line 1237
    .line 1238
    const/16 v1, 0xa

    .line 1239
    .line 1240
    invoke-direct {v9, v11, v14, v1}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 1241
    .line 1242
    .line 1243
    new-instance v11, Lf0/d;

    .line 1244
    .line 1245
    const-string v14, "ExposureBiasValue"

    .line 1246
    .line 1247
    move-object/from16 v70, v9

    .line 1248
    .line 1249
    const v9, 0x9204

    .line 1250
    .line 1251
    .line 1252
    invoke-direct {v11, v14, v9, v1}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 1253
    .line 1254
    .line 1255
    new-instance v1, Lf0/d;

    .line 1256
    .line 1257
    const-string v9, "MaxApertureValue"

    .line 1258
    .line 1259
    const v14, 0x9205

    .line 1260
    .line 1261
    .line 1262
    move-object/from16 v71, v11

    .line 1263
    .line 1264
    const/4 v11, 0x5

    .line 1265
    invoke-direct {v1, v9, v14, v11}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 1266
    .line 1267
    .line 1268
    new-instance v9, Lf0/d;

    .line 1269
    .line 1270
    const-string v14, "SubjectDistance"

    .line 1271
    .line 1272
    move-object/from16 v72, v1

    .line 1273
    .line 1274
    const v1, 0x9206

    .line 1275
    .line 1276
    .line 1277
    invoke-direct {v9, v14, v1, v11}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 1278
    .line 1279
    .line 1280
    new-instance v1, Lf0/d;

    .line 1281
    .line 1282
    const-string v11, "MeteringMode"

    .line 1283
    .line 1284
    const v14, 0x9207

    .line 1285
    .line 1286
    .line 1287
    move-object/from16 v73, v9

    .line 1288
    .line 1289
    const/4 v9, 0x3

    .line 1290
    invoke-direct {v1, v11, v14, v9}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 1291
    .line 1292
    .line 1293
    new-instance v11, Lf0/d;

    .line 1294
    .line 1295
    const-string v14, "LightSource"

    .line 1296
    .line 1297
    move-object/from16 v75, v1

    .line 1298
    .line 1299
    const v1, 0x9208

    .line 1300
    .line 1301
    .line 1302
    invoke-direct {v11, v14, v1, v9}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 1303
    .line 1304
    .line 1305
    new-instance v1, Lf0/d;

    .line 1306
    .line 1307
    const-string v14, "Flash"

    .line 1308
    .line 1309
    move-object/from16 v76, v11

    .line 1310
    .line 1311
    const v11, 0x9209

    .line 1312
    .line 1313
    .line 1314
    invoke-direct {v1, v14, v11, v9}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 1315
    .line 1316
    .line 1317
    new-instance v11, Lf0/d;

    .line 1318
    .line 1319
    const-string v14, "FocalLength"

    .line 1320
    .line 1321
    const v9, 0x920a

    .line 1322
    .line 1323
    .line 1324
    move-object/from16 v78, v1

    .line 1325
    .line 1326
    const/4 v1, 0x5

    .line 1327
    invoke-direct {v11, v14, v9, v1}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 1328
    .line 1329
    .line 1330
    new-instance v1, Lf0/d;

    .line 1331
    .line 1332
    const-string v9, "SubjectArea"

    .line 1333
    .line 1334
    const v14, 0x9214

    .line 1335
    .line 1336
    .line 1337
    move-object/from16 v79, v11

    .line 1338
    .line 1339
    const/4 v11, 0x3

    .line 1340
    invoke-direct {v1, v9, v14, v11}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 1341
    .line 1342
    .line 1343
    new-instance v9, Lf0/d;

    .line 1344
    .line 1345
    const-string v11, "MakerNote"

    .line 1346
    .line 1347
    const v14, 0x927c

    .line 1348
    .line 1349
    .line 1350
    move-object/from16 v80, v1

    .line 1351
    .line 1352
    const/4 v1, 0x7

    .line 1353
    invoke-direct {v9, v11, v14, v1}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 1354
    .line 1355
    .line 1356
    new-instance v11, Lf0/d;

    .line 1357
    .line 1358
    const-string v14, "UserComment"

    .line 1359
    .line 1360
    move-object/from16 v82, v9

    .line 1361
    .line 1362
    const v9, 0x9286

    .line 1363
    .line 1364
    .line 1365
    invoke-direct {v11, v14, v9, v1}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 1366
    .line 1367
    .line 1368
    new-instance v1, Lf0/d;

    .line 1369
    .line 1370
    const-string v9, "SubSecTime"

    .line 1371
    .line 1372
    const v14, 0x9290

    .line 1373
    .line 1374
    .line 1375
    move-object/from16 v83, v11

    .line 1376
    .line 1377
    const/4 v11, 0x2

    .line 1378
    invoke-direct {v1, v9, v14, v11}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 1379
    .line 1380
    .line 1381
    new-instance v9, Lf0/d;

    .line 1382
    .line 1383
    const-string v14, "SubSecTimeOriginal"

    .line 1384
    .line 1385
    move-object/from16 v84, v1

    .line 1386
    .line 1387
    const v1, 0x9291

    .line 1388
    .line 1389
    .line 1390
    invoke-direct {v9, v14, v1, v11}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 1391
    .line 1392
    .line 1393
    new-instance v1, Lf0/d;

    .line 1394
    .line 1395
    const-string v14, "SubSecTimeDigitized"

    .line 1396
    .line 1397
    move-object/from16 v85, v9

    .line 1398
    .line 1399
    const v9, 0x9292

    .line 1400
    .line 1401
    .line 1402
    invoke-direct {v1, v14, v9, v11}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 1403
    .line 1404
    .line 1405
    new-instance v9, Lf0/d;

    .line 1406
    .line 1407
    const-string v11, "FlashpixVersion"

    .line 1408
    .line 1409
    const v14, 0xa000

    .line 1410
    .line 1411
    .line 1412
    move-object/from16 v86, v1

    .line 1413
    .line 1414
    const/4 v1, 0x7

    .line 1415
    invoke-direct {v9, v11, v14, v1}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 1416
    .line 1417
    .line 1418
    new-instance v1, Lf0/d;

    .line 1419
    .line 1420
    const-string v11, "ColorSpace"

    .line 1421
    .line 1422
    const v14, 0xa001

    .line 1423
    .line 1424
    .line 1425
    move-object/from16 v87, v9

    .line 1426
    .line 1427
    const/4 v9, 0x3

    .line 1428
    invoke-direct {v1, v11, v14, v9}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 1429
    .line 1430
    .line 1431
    new-instance v11, Lf0/d;

    .line 1432
    .line 1433
    const-string v14, "PixelXDimension"

    .line 1434
    .line 1435
    move-object/from16 v88, v1

    .line 1436
    .line 1437
    const v1, 0xa002

    .line 1438
    .line 1439
    .line 1440
    move-object/from16 v89, v3

    .line 1441
    .line 1442
    const/4 v3, 0x4

    .line 1443
    invoke-direct {v11, v14, v1, v9, v3}, Lf0/d;-><init>(Ljava/lang/String;III)V

    .line 1444
    .line 1445
    .line 1446
    new-instance v1, Lf0/d;

    .line 1447
    .line 1448
    const-string v14, "PixelYDimension"

    .line 1449
    .line 1450
    move-object/from16 v90, v11

    .line 1451
    .line 1452
    const v11, 0xa003

    .line 1453
    .line 1454
    .line 1455
    invoke-direct {v1, v14, v11, v9, v3}, Lf0/d;-><init>(Ljava/lang/String;III)V

    .line 1456
    .line 1457
    .line 1458
    new-instance v9, Lf0/d;

    .line 1459
    .line 1460
    const-string v11, "RelatedSoundFile"

    .line 1461
    .line 1462
    const v14, 0xa004

    .line 1463
    .line 1464
    .line 1465
    const/4 v3, 0x2

    .line 1466
    invoke-direct {v9, v11, v14, v3}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 1467
    .line 1468
    .line 1469
    new-instance v3, Lf0/d;

    .line 1470
    .line 1471
    const-string v11, "InteroperabilityIFDPointer"

    .line 1472
    .line 1473
    const v14, 0xa005

    .line 1474
    .line 1475
    .line 1476
    move-object/from16 v91, v1

    .line 1477
    .line 1478
    const/4 v1, 0x4

    .line 1479
    invoke-direct {v3, v11, v14, v1}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 1480
    .line 1481
    .line 1482
    new-instance v1, Lf0/d;

    .line 1483
    .line 1484
    const-string v11, "FlashEnergy"

    .line 1485
    .line 1486
    const v14, 0xa20b

    .line 1487
    .line 1488
    .line 1489
    move-object/from16 v92, v3

    .line 1490
    .line 1491
    const/4 v3, 0x5

    .line 1492
    invoke-direct {v1, v11, v14, v3}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 1493
    .line 1494
    .line 1495
    new-instance v11, Lf0/d;

    .line 1496
    .line 1497
    const-string v14, "SpatialFrequencyResponse"

    .line 1498
    .line 1499
    const v3, 0xa20c

    .line 1500
    .line 1501
    .line 1502
    move-object/from16 v93, v1

    .line 1503
    .line 1504
    const/4 v1, 0x7

    .line 1505
    invoke-direct {v11, v14, v3, v1}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 1506
    .line 1507
    .line 1508
    new-instance v1, Lf0/d;

    .line 1509
    .line 1510
    const-string v3, "FocalPlaneXResolution"

    .line 1511
    .line 1512
    const v14, 0xa20e

    .line 1513
    .line 1514
    .line 1515
    move-object/from16 v94, v9

    .line 1516
    .line 1517
    const/4 v9, 0x5

    .line 1518
    invoke-direct {v1, v3, v14, v9}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 1519
    .line 1520
    .line 1521
    new-instance v3, Lf0/d;

    .line 1522
    .line 1523
    const-string v14, "FocalPlaneYResolution"

    .line 1524
    .line 1525
    move-object/from16 v95, v1

    .line 1526
    .line 1527
    const v1, 0xa20f

    .line 1528
    .line 1529
    .line 1530
    invoke-direct {v3, v14, v1, v9}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 1531
    .line 1532
    .line 1533
    new-instance v1, Lf0/d;

    .line 1534
    .line 1535
    const-string v9, "FocalPlaneResolutionUnit"

    .line 1536
    .line 1537
    const v14, 0xa210

    .line 1538
    .line 1539
    .line 1540
    move-object/from16 v96, v3

    .line 1541
    .line 1542
    const/4 v3, 0x3

    .line 1543
    invoke-direct {v1, v9, v14, v3}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 1544
    .line 1545
    .line 1546
    new-instance v9, Lf0/d;

    .line 1547
    .line 1548
    const-string v14, "SubjectLocation"

    .line 1549
    .line 1550
    move-object/from16 v97, v1

    .line 1551
    .line 1552
    const v1, 0xa214

    .line 1553
    .line 1554
    .line 1555
    invoke-direct {v9, v14, v1, v3}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 1556
    .line 1557
    .line 1558
    new-instance v1, Lf0/d;

    .line 1559
    .line 1560
    const-string v14, "ExposureIndex"

    .line 1561
    .line 1562
    const v3, 0xa215

    .line 1563
    .line 1564
    .line 1565
    move-object/from16 v98, v9

    .line 1566
    .line 1567
    const/4 v9, 0x5

    .line 1568
    invoke-direct {v1, v14, v3, v9}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 1569
    .line 1570
    .line 1571
    new-instance v3, Lf0/d;

    .line 1572
    .line 1573
    const-string v9, "SensingMethod"

    .line 1574
    .line 1575
    const v14, 0xa217

    .line 1576
    .line 1577
    .line 1578
    move-object/from16 v99, v1

    .line 1579
    .line 1580
    const/4 v1, 0x3

    .line 1581
    invoke-direct {v3, v9, v14, v1}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 1582
    .line 1583
    .line 1584
    new-instance v1, Lf0/d;

    .line 1585
    .line 1586
    const-string v9, "FileSource"

    .line 1587
    .line 1588
    const v14, 0xa300

    .line 1589
    .line 1590
    .line 1591
    move-object/from16 v100, v3

    .line 1592
    .line 1593
    const/4 v3, 0x7

    .line 1594
    invoke-direct {v1, v9, v14, v3}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 1595
    .line 1596
    .line 1597
    new-instance v9, Lf0/d;

    .line 1598
    .line 1599
    const-string v14, "SceneType"

    .line 1600
    .line 1601
    move-object/from16 v101, v1

    .line 1602
    .line 1603
    const v1, 0xa301

    .line 1604
    .line 1605
    .line 1606
    invoke-direct {v9, v14, v1, v3}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 1607
    .line 1608
    .line 1609
    new-instance v1, Lf0/d;

    .line 1610
    .line 1611
    const-string v14, "CFAPattern"

    .line 1612
    .line 1613
    move-object/from16 v102, v9

    .line 1614
    .line 1615
    const v9, 0xa302

    .line 1616
    .line 1617
    .line 1618
    invoke-direct {v1, v14, v9, v3}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 1619
    .line 1620
    .line 1621
    new-instance v3, Lf0/d;

    .line 1622
    .line 1623
    const-string v9, "CustomRendered"

    .line 1624
    .line 1625
    const v14, 0xa401

    .line 1626
    .line 1627
    .line 1628
    move-object/from16 v103, v1

    .line 1629
    .line 1630
    const/4 v1, 0x3

    .line 1631
    invoke-direct {v3, v9, v14, v1}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 1632
    .line 1633
    .line 1634
    new-instance v9, Lf0/d;

    .line 1635
    .line 1636
    const-string v14, "ExposureMode"

    .line 1637
    .line 1638
    move-object/from16 v104, v3

    .line 1639
    .line 1640
    const v3, 0xa402

    .line 1641
    .line 1642
    .line 1643
    invoke-direct {v9, v14, v3, v1}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 1644
    .line 1645
    .line 1646
    new-instance v3, Lf0/d;

    .line 1647
    .line 1648
    const-string v14, "WhiteBalance"

    .line 1649
    .line 1650
    move-object/from16 v105, v9

    .line 1651
    .line 1652
    const v9, 0xa403

    .line 1653
    .line 1654
    .line 1655
    invoke-direct {v3, v14, v9, v1}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 1656
    .line 1657
    .line 1658
    new-instance v9, Lf0/d;

    .line 1659
    .line 1660
    const-string v14, "DigitalZoomRatio"

    .line 1661
    .line 1662
    const v1, 0xa404

    .line 1663
    .line 1664
    .line 1665
    move-object/from16 v106, v3

    .line 1666
    .line 1667
    const/4 v3, 0x5

    .line 1668
    invoke-direct {v9, v14, v1, v3}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 1669
    .line 1670
    .line 1671
    new-instance v1, Lf0/d;

    .line 1672
    .line 1673
    const-string v3, "FocalLengthIn35mmFilm"

    .line 1674
    .line 1675
    const v14, 0xa405

    .line 1676
    .line 1677
    .line 1678
    move-object/from16 v107, v9

    .line 1679
    .line 1680
    const/4 v9, 0x3

    .line 1681
    invoke-direct {v1, v3, v14, v9}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 1682
    .line 1683
    .line 1684
    new-instance v3, Lf0/d;

    .line 1685
    .line 1686
    const-string v14, "SceneCaptureType"

    .line 1687
    .line 1688
    move-object/from16 v108, v1

    .line 1689
    .line 1690
    const v1, 0xa406

    .line 1691
    .line 1692
    .line 1693
    invoke-direct {v3, v14, v1, v9}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 1694
    .line 1695
    .line 1696
    new-instance v1, Lf0/d;

    .line 1697
    .line 1698
    const-string v14, "GainControl"

    .line 1699
    .line 1700
    move-object/from16 v109, v3

    .line 1701
    .line 1702
    const v3, 0xa407

    .line 1703
    .line 1704
    .line 1705
    invoke-direct {v1, v14, v3, v9}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 1706
    .line 1707
    .line 1708
    new-instance v3, Lf0/d;

    .line 1709
    .line 1710
    const-string v14, "Contrast"

    .line 1711
    .line 1712
    move-object/from16 v110, v1

    .line 1713
    .line 1714
    const v1, 0xa408

    .line 1715
    .line 1716
    .line 1717
    invoke-direct {v3, v14, v1, v9}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 1718
    .line 1719
    .line 1720
    new-instance v1, Lf0/d;

    .line 1721
    .line 1722
    const-string v14, "Saturation"

    .line 1723
    .line 1724
    move-object/from16 v111, v3

    .line 1725
    .line 1726
    const v3, 0xa409

    .line 1727
    .line 1728
    .line 1729
    invoke-direct {v1, v14, v3, v9}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 1730
    .line 1731
    .line 1732
    new-instance v3, Lf0/d;

    .line 1733
    .line 1734
    const-string v14, "Sharpness"

    .line 1735
    .line 1736
    move-object/from16 v112, v1

    .line 1737
    .line 1738
    const v1, 0xa40a

    .line 1739
    .line 1740
    .line 1741
    invoke-direct {v3, v14, v1, v9}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 1742
    .line 1743
    .line 1744
    new-instance v1, Lf0/d;

    .line 1745
    .line 1746
    const-string v14, "DeviceSettingDescription"

    .line 1747
    .line 1748
    const v9, 0xa40b

    .line 1749
    .line 1750
    .line 1751
    move-object/from16 v113, v3

    .line 1752
    .line 1753
    const/4 v3, 0x7

    .line 1754
    invoke-direct {v1, v14, v9, v3}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 1755
    .line 1756
    .line 1757
    new-instance v3, Lf0/d;

    .line 1758
    .line 1759
    const-string v9, "SubjectDistanceRange"

    .line 1760
    .line 1761
    const v14, 0xa40c

    .line 1762
    .line 1763
    .line 1764
    move-object/from16 v114, v1

    .line 1765
    .line 1766
    const/4 v1, 0x3

    .line 1767
    invoke-direct {v3, v9, v14, v1}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 1768
    .line 1769
    .line 1770
    new-instance v1, Lf0/d;

    .line 1771
    .line 1772
    const-string v9, "ImageUniqueID"

    .line 1773
    .line 1774
    const v14, 0xa420

    .line 1775
    .line 1776
    .line 1777
    move-object/from16 v115, v3

    .line 1778
    .line 1779
    const/4 v3, 0x2

    .line 1780
    invoke-direct {v1, v9, v14, v3}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 1781
    .line 1782
    .line 1783
    new-instance v9, Lf0/d;

    .line 1784
    .line 1785
    const-string v14, "CameraOwnerName"

    .line 1786
    .line 1787
    move-object/from16 v116, v1

    .line 1788
    .line 1789
    const v1, 0xa430

    .line 1790
    .line 1791
    .line 1792
    invoke-direct {v9, v14, v1, v3}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 1793
    .line 1794
    .line 1795
    new-instance v1, Lf0/d;

    .line 1796
    .line 1797
    const-string v14, "BodySerialNumber"

    .line 1798
    .line 1799
    move-object/from16 v117, v9

    .line 1800
    .line 1801
    const v9, 0xa431

    .line 1802
    .line 1803
    .line 1804
    invoke-direct {v1, v14, v9, v3}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 1805
    .line 1806
    .line 1807
    new-instance v9, Lf0/d;

    .line 1808
    .line 1809
    const-string v14, "LensSpecification"

    .line 1810
    .line 1811
    const v3, 0xa432

    .line 1812
    .line 1813
    .line 1814
    move-object/from16 v118, v1

    .line 1815
    .line 1816
    const/4 v1, 0x5

    .line 1817
    invoke-direct {v9, v14, v3, v1}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 1818
    .line 1819
    .line 1820
    new-instance v1, Lf0/d;

    .line 1821
    .line 1822
    const-string v3, "LensMake"

    .line 1823
    .line 1824
    const v14, 0xa433

    .line 1825
    .line 1826
    .line 1827
    move-object/from16 v119, v9

    .line 1828
    .line 1829
    const/4 v9, 0x2

    .line 1830
    invoke-direct {v1, v3, v14, v9}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 1831
    .line 1832
    .line 1833
    new-instance v3, Lf0/d;

    .line 1834
    .line 1835
    const-string v14, "LensModel"

    .line 1836
    .line 1837
    move-object/from16 v120, v1

    .line 1838
    .line 1839
    const v1, 0xa434

    .line 1840
    .line 1841
    .line 1842
    invoke-direct {v3, v14, v1, v9}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 1843
    .line 1844
    .line 1845
    new-instance v1, Lf0/d;

    .line 1846
    .line 1847
    const-string v9, "Gamma"

    .line 1848
    .line 1849
    const v14, 0xa500

    .line 1850
    .line 1851
    .line 1852
    move-object/from16 v121, v3

    .line 1853
    .line 1854
    const/4 v3, 0x5

    .line 1855
    invoke-direct {v1, v9, v14, v3}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 1856
    .line 1857
    .line 1858
    new-instance v3, Lf0/d;

    .line 1859
    .line 1860
    const-string v9, "DNGVersion"

    .line 1861
    .line 1862
    const v14, 0xc612

    .line 1863
    .line 1864
    .line 1865
    move-object/from16 v122, v1

    .line 1866
    .line 1867
    const/4 v1, 0x1

    .line 1868
    invoke-direct {v3, v9, v14, v1}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 1869
    .line 1870
    .line 1871
    new-instance v9, Lf0/d;

    .line 1872
    .line 1873
    const-string v14, "DefaultCropSize"

    .line 1874
    .line 1875
    move/from16 v24, v1

    .line 1876
    .line 1877
    const v1, 0xc620

    .line 1878
    .line 1879
    .line 1880
    move-object/from16 v123, v3

    .line 1881
    .line 1882
    move-object/from16 v124, v11

    .line 1883
    .line 1884
    const/4 v3, 0x3

    .line 1885
    const/4 v11, 0x4

    .line 1886
    invoke-direct {v9, v14, v1, v3, v11}, Lf0/d;-><init>(Ljava/lang/String;III)V

    .line 1887
    .line 1888
    .line 1889
    const/16 v1, 0x4a

    .line 1890
    .line 1891
    new-array v1, v1, [Lf0/d;

    .line 1892
    .line 1893
    aput-object v46, v1, v16

    .line 1894
    .line 1895
    aput-object v47, v1, v24

    .line 1896
    .line 1897
    const/16 v30, 0x2

    .line 1898
    .line 1899
    aput-object v49, v1, v30

    .line 1900
    .line 1901
    aput-object v50, v1, v3

    .line 1902
    .line 1903
    aput-object v51, v1, v11

    .line 1904
    .line 1905
    const/16 v28, 0x5

    .line 1906
    .line 1907
    aput-object v53, v1, v28

    .line 1908
    .line 1909
    const/16 v27, 0x6

    .line 1910
    .line 1911
    aput-object v54, v1, v27

    .line 1912
    .line 1913
    const/16 v25, 0x7

    .line 1914
    .line 1915
    aput-object v55, v1, v25

    .line 1916
    .line 1917
    aput-object v56, v1, v22

    .line 1918
    .line 1919
    aput-object v57, v1, v44

    .line 1920
    .line 1921
    const/16 v20, 0xa

    .line 1922
    .line 1923
    aput-object v58, v1, v20

    .line 1924
    .line 1925
    aput-object v59, v1, v34

    .line 1926
    .line 1927
    aput-object v60, v1, v35

    .line 1928
    .line 1929
    aput-object v61, v1, v18

    .line 1930
    .line 1931
    aput-object v62, v1, v21

    .line 1932
    .line 1933
    aput-object v63, v1, v37

    .line 1934
    .line 1935
    aput-object v64, v1, v38

    .line 1936
    .line 1937
    aput-object v65, v1, v41

    .line 1938
    .line 1939
    aput-object v66, v1, v42

    .line 1940
    .line 1941
    const/16 v3, 0x13

    .line 1942
    .line 1943
    aput-object v67, v1, v3

    .line 1944
    .line 1945
    const/16 v3, 0x14

    .line 1946
    .line 1947
    aput-object v68, v1, v3

    .line 1948
    .line 1949
    const/16 v3, 0x15

    .line 1950
    .line 1951
    aput-object v69, v1, v3

    .line 1952
    .line 1953
    const/16 v3, 0x16

    .line 1954
    .line 1955
    aput-object v70, v1, v3

    .line 1956
    .line 1957
    aput-object v71, v1, v81

    .line 1958
    .line 1959
    const/16 v3, 0x18

    .line 1960
    .line 1961
    aput-object v72, v1, v3

    .line 1962
    .line 1963
    const/16 v3, 0x19

    .line 1964
    .line 1965
    aput-object v73, v1, v3

    .line 1966
    .line 1967
    aput-object v75, v1, v19

    .line 1968
    .line 1969
    const/16 v3, 0x1b

    .line 1970
    .line 1971
    aput-object v76, v1, v3

    .line 1972
    .line 1973
    const/16 v3, 0x1c

    .line 1974
    .line 1975
    aput-object v78, v1, v3

    .line 1976
    .line 1977
    const/16 v3, 0x1d

    .line 1978
    .line 1979
    aput-object v79, v1, v3

    .line 1980
    .line 1981
    const/16 v3, 0x1e

    .line 1982
    .line 1983
    aput-object v80, v1, v3

    .line 1984
    .line 1985
    const/16 v3, 0x1f

    .line 1986
    .line 1987
    aput-object v82, v1, v3

    .line 1988
    .line 1989
    const/16 v3, 0x20

    .line 1990
    .line 1991
    aput-object v83, v1, v3

    .line 1992
    .line 1993
    const/16 v3, 0x21

    .line 1994
    .line 1995
    aput-object v84, v1, v3

    .line 1996
    .line 1997
    const/16 v3, 0x22

    .line 1998
    .line 1999
    aput-object v85, v1, v3

    .line 2000
    .line 2001
    const/16 v3, 0x23

    .line 2002
    .line 2003
    aput-object v86, v1, v3

    .line 2004
    .line 2005
    const/16 v3, 0x24

    .line 2006
    .line 2007
    aput-object v87, v1, v3

    .line 2008
    .line 2009
    const/16 v3, 0x25

    .line 2010
    .line 2011
    aput-object v88, v1, v3

    .line 2012
    .line 2013
    const/16 v3, 0x26

    .line 2014
    .line 2015
    aput-object v90, v1, v3

    .line 2016
    .line 2017
    const/16 v3, 0x27

    .line 2018
    .line 2019
    aput-object v91, v1, v3

    .line 2020
    .line 2021
    const/16 v3, 0x28

    .line 2022
    .line 2023
    aput-object v94, v1, v3

    .line 2024
    .line 2025
    const/16 v3, 0x29

    .line 2026
    .line 2027
    aput-object v92, v1, v3

    .line 2028
    .line 2029
    const/16 v3, 0x2a

    .line 2030
    .line 2031
    aput-object v93, v1, v3

    .line 2032
    .line 2033
    const/16 v3, 0x2b

    .line 2034
    .line 2035
    aput-object v124, v1, v3

    .line 2036
    .line 2037
    const/16 v3, 0x2c

    .line 2038
    .line 2039
    aput-object v95, v1, v3

    .line 2040
    .line 2041
    const/16 v3, 0x2d

    .line 2042
    .line 2043
    aput-object v96, v1, v3

    .line 2044
    .line 2045
    const/16 v3, 0x2e

    .line 2046
    .line 2047
    aput-object v97, v1, v3

    .line 2048
    .line 2049
    const/16 v3, 0x2f

    .line 2050
    .line 2051
    aput-object v98, v1, v3

    .line 2052
    .line 2053
    const/16 v3, 0x30

    .line 2054
    .line 2055
    aput-object v99, v1, v3

    .line 2056
    .line 2057
    const/16 v3, 0x31

    .line 2058
    .line 2059
    aput-object v100, v1, v3

    .line 2060
    .line 2061
    const/16 v3, 0x32

    .line 2062
    .line 2063
    aput-object v101, v1, v3

    .line 2064
    .line 2065
    const/16 v3, 0x33

    .line 2066
    .line 2067
    aput-object v102, v1, v3

    .line 2068
    .line 2069
    const/16 v3, 0x34

    .line 2070
    .line 2071
    aput-object v103, v1, v3

    .line 2072
    .line 2073
    const/16 v3, 0x35

    .line 2074
    .line 2075
    aput-object v104, v1, v3

    .line 2076
    .line 2077
    const/16 v3, 0x36

    .line 2078
    .line 2079
    aput-object v105, v1, v3

    .line 2080
    .line 2081
    const/16 v3, 0x37

    .line 2082
    .line 2083
    aput-object v106, v1, v3

    .line 2084
    .line 2085
    const/16 v3, 0x38

    .line 2086
    .line 2087
    aput-object v107, v1, v3

    .line 2088
    .line 2089
    const/16 v3, 0x39

    .line 2090
    .line 2091
    aput-object v108, v1, v3

    .line 2092
    .line 2093
    const/16 v3, 0x3a

    .line 2094
    .line 2095
    aput-object v109, v1, v3

    .line 2096
    .line 2097
    const/16 v3, 0x3b

    .line 2098
    .line 2099
    aput-object v110, v1, v3

    .line 2100
    .line 2101
    const/16 v3, 0x3c

    .line 2102
    .line 2103
    aput-object v111, v1, v3

    .line 2104
    .line 2105
    const/16 v3, 0x3d

    .line 2106
    .line 2107
    aput-object v112, v1, v3

    .line 2108
    .line 2109
    const/16 v3, 0x3e

    .line 2110
    .line 2111
    aput-object v113, v1, v3

    .line 2112
    .line 2113
    const/16 v3, 0x3f

    .line 2114
    .line 2115
    aput-object v114, v1, v3

    .line 2116
    .line 2117
    const/16 v3, 0x40

    .line 2118
    .line 2119
    aput-object v115, v1, v3

    .line 2120
    .line 2121
    const/16 v3, 0x41

    .line 2122
    .line 2123
    aput-object v116, v1, v3

    .line 2124
    .line 2125
    const/16 v3, 0x42

    .line 2126
    .line 2127
    aput-object v117, v1, v3

    .line 2128
    .line 2129
    const/16 v3, 0x43

    .line 2130
    .line 2131
    aput-object v118, v1, v3

    .line 2132
    .line 2133
    const/16 v3, 0x44

    .line 2134
    .line 2135
    aput-object v119, v1, v3

    .line 2136
    .line 2137
    const/16 v3, 0x45

    .line 2138
    .line 2139
    aput-object v120, v1, v3

    .line 2140
    .line 2141
    const/16 v3, 0x46

    .line 2142
    .line 2143
    aput-object v121, v1, v3

    .line 2144
    .line 2145
    const/16 v3, 0x47

    .line 2146
    .line 2147
    aput-object v122, v1, v3

    .line 2148
    .line 2149
    const/16 v3, 0x48

    .line 2150
    .line 2151
    aput-object v123, v1, v3

    .line 2152
    .line 2153
    aput-object v9, v1, v17

    .line 2154
    .line 2155
    new-instance v3, Lf0/d;

    .line 2156
    .line 2157
    const-string v9, "GPSVersionID"

    .line 2158
    .line 2159
    move/from16 v14, v16

    .line 2160
    .line 2161
    const/4 v11, 0x1

    .line 2162
    invoke-direct {v3, v9, v14, v11}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 2163
    .line 2164
    .line 2165
    new-instance v9, Lf0/d;

    .line 2166
    .line 2167
    const-string v14, "GPSLatitudeRef"

    .line 2168
    .line 2169
    move-object/from16 v17, v1

    .line 2170
    .line 2171
    const/4 v1, 0x2

    .line 2172
    invoke-direct {v9, v14, v11, v1}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 2173
    .line 2174
    .line 2175
    new-instance v11, Lf0/d;

    .line 2176
    .line 2177
    const-string v14, "GPSLatitude"

    .line 2178
    .line 2179
    move-object/from16 v46, v3

    .line 2180
    .line 2181
    move-object/from16 v47, v9

    .line 2182
    .line 2183
    const/4 v3, 0x5

    .line 2184
    const/16 v9, 0xa

    .line 2185
    .line 2186
    invoke-direct {v11, v14, v1, v3, v9}, Lf0/d;-><init>(Ljava/lang/String;III)V

    .line 2187
    .line 2188
    .line 2189
    new-instance v14, Lf0/d;

    .line 2190
    .line 2191
    const-string v3, "GPSLongitudeRef"

    .line 2192
    .line 2193
    const/4 v9, 0x3

    .line 2194
    invoke-direct {v14, v3, v9, v1}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 2195
    .line 2196
    .line 2197
    new-instance v1, Lf0/d;

    .line 2198
    .line 2199
    const-string v3, "GPSLongitude"

    .line 2200
    .line 2201
    move-object/from16 v49, v11

    .line 2202
    .line 2203
    move-object/from16 v50, v14

    .line 2204
    .line 2205
    const/4 v9, 0x5

    .line 2206
    const/4 v11, 0x4

    .line 2207
    const/16 v14, 0xa

    .line 2208
    .line 2209
    invoke-direct {v1, v3, v11, v9, v14}, Lf0/d;-><init>(Ljava/lang/String;III)V

    .line 2210
    .line 2211
    .line 2212
    new-instance v3, Lf0/d;

    .line 2213
    .line 2214
    const-string v11, "GPSAltitudeRef"

    .line 2215
    .line 2216
    const/4 v14, 0x1

    .line 2217
    invoke-direct {v3, v11, v9, v14}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 2218
    .line 2219
    .line 2220
    new-instance v11, Lf0/d;

    .line 2221
    .line 2222
    const-string v14, "GPSAltitude"

    .line 2223
    .line 2224
    move-object/from16 v51, v1

    .line 2225
    .line 2226
    const/4 v1, 0x6

    .line 2227
    invoke-direct {v11, v14, v1, v9}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 2228
    .line 2229
    .line 2230
    new-instance v1, Lf0/d;

    .line 2231
    .line 2232
    const-string v14, "GPSTimeStamp"

    .line 2233
    .line 2234
    move-object/from16 v53, v3

    .line 2235
    .line 2236
    const/4 v3, 0x7

    .line 2237
    invoke-direct {v1, v14, v3, v9}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 2238
    .line 2239
    .line 2240
    new-instance v3, Lf0/d;

    .line 2241
    .line 2242
    const-string v9, "GPSSatellites"

    .line 2243
    .line 2244
    move-object/from16 v54, v1

    .line 2245
    .line 2246
    move/from16 v14, v22

    .line 2247
    .line 2248
    const/4 v1, 0x2

    .line 2249
    invoke-direct {v3, v9, v14, v1}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 2250
    .line 2251
    .line 2252
    new-instance v9, Lf0/d;

    .line 2253
    .line 2254
    const-string v14, "GPSStatus"

    .line 2255
    .line 2256
    move-object/from16 v55, v3

    .line 2257
    .line 2258
    move/from16 v3, v44

    .line 2259
    .line 2260
    invoke-direct {v9, v14, v3, v1}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 2261
    .line 2262
    .line 2263
    new-instance v3, Lf0/d;

    .line 2264
    .line 2265
    const-string v14, "GPSMeasureMode"

    .line 2266
    .line 2267
    move-object/from16 v56, v9

    .line 2268
    .line 2269
    const/16 v9, 0xa

    .line 2270
    .line 2271
    invoke-direct {v3, v14, v9, v1}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 2272
    .line 2273
    .line 2274
    new-instance v9, Lf0/d;

    .line 2275
    .line 2276
    const-string v14, "GPSDOP"

    .line 2277
    .line 2278
    move-object/from16 v57, v3

    .line 2279
    .line 2280
    move/from16 v3, v34

    .line 2281
    .line 2282
    const/4 v1, 0x5

    .line 2283
    invoke-direct {v9, v14, v3, v1}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 2284
    .line 2285
    .line 2286
    new-instance v3, Lf0/d;

    .line 2287
    .line 2288
    const-string v14, "GPSSpeedRef"

    .line 2289
    .line 2290
    move-object/from16 v58, v9

    .line 2291
    .line 2292
    move/from16 v9, v35

    .line 2293
    .line 2294
    const/4 v1, 0x2

    .line 2295
    invoke-direct {v3, v14, v9, v1}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 2296
    .line 2297
    .line 2298
    new-instance v9, Lf0/d;

    .line 2299
    .line 2300
    const-string v14, "GPSSpeed"

    .line 2301
    .line 2302
    move-object/from16 v59, v3

    .line 2303
    .line 2304
    move/from16 v3, v18

    .line 2305
    .line 2306
    const/4 v1, 0x5

    .line 2307
    invoke-direct {v9, v14, v3, v1}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 2308
    .line 2309
    .line 2310
    new-instance v3, Lf0/d;

    .line 2311
    .line 2312
    const-string v14, "GPSTrackRef"

    .line 2313
    .line 2314
    move-object/from16 v60, v9

    .line 2315
    .line 2316
    move/from16 v9, v21

    .line 2317
    .line 2318
    const/4 v1, 0x2

    .line 2319
    invoke-direct {v3, v14, v9, v1}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 2320
    .line 2321
    .line 2322
    new-instance v9, Lf0/d;

    .line 2323
    .line 2324
    const-string v14, "GPSTrack"

    .line 2325
    .line 2326
    move-object/from16 v61, v3

    .line 2327
    .line 2328
    move/from16 v3, v37

    .line 2329
    .line 2330
    const/4 v1, 0x5

    .line 2331
    invoke-direct {v9, v14, v3, v1}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 2332
    .line 2333
    .line 2334
    new-instance v3, Lf0/d;

    .line 2335
    .line 2336
    const-string v14, "GPSImgDirectionRef"

    .line 2337
    .line 2338
    move-object/from16 v62, v9

    .line 2339
    .line 2340
    move/from16 v9, v38

    .line 2341
    .line 2342
    const/4 v1, 0x2

    .line 2343
    invoke-direct {v3, v14, v9, v1}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 2344
    .line 2345
    .line 2346
    new-instance v9, Lf0/d;

    .line 2347
    .line 2348
    const-string v14, "GPSImgDirection"

    .line 2349
    .line 2350
    move-object/from16 v63, v3

    .line 2351
    .line 2352
    move/from16 v3, v41

    .line 2353
    .line 2354
    const/4 v1, 0x5

    .line 2355
    invoke-direct {v9, v14, v3, v1}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 2356
    .line 2357
    .line 2358
    new-instance v3, Lf0/d;

    .line 2359
    .line 2360
    const-string v14, "GPSMapDatum"

    .line 2361
    .line 2362
    move-object/from16 v64, v9

    .line 2363
    .line 2364
    move/from16 v9, v42

    .line 2365
    .line 2366
    const/4 v1, 0x2

    .line 2367
    invoke-direct {v3, v14, v9, v1}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 2368
    .line 2369
    .line 2370
    new-instance v9, Lf0/d;

    .line 2371
    .line 2372
    const-string v14, "GPSDestLatitudeRef"

    .line 2373
    .line 2374
    move-object/from16 v65, v3

    .line 2375
    .line 2376
    const/16 v3, 0x13

    .line 2377
    .line 2378
    invoke-direct {v9, v14, v3, v1}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 2379
    .line 2380
    .line 2381
    new-instance v3, Lf0/d;

    .line 2382
    .line 2383
    const-string v14, "GPSDestLatitude"

    .line 2384
    .line 2385
    const/16 v1, 0x14

    .line 2386
    .line 2387
    move-object/from16 v66, v9

    .line 2388
    .line 2389
    const/4 v9, 0x5

    .line 2390
    invoke-direct {v3, v14, v1, v9}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 2391
    .line 2392
    .line 2393
    new-instance v1, Lf0/d;

    .line 2394
    .line 2395
    const-string v14, "GPSDestLongitudeRef"

    .line 2396
    .line 2397
    const/16 v9, 0x15

    .line 2398
    .line 2399
    move-object/from16 v67, v3

    .line 2400
    .line 2401
    const/4 v3, 0x2

    .line 2402
    invoke-direct {v1, v14, v9, v3}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 2403
    .line 2404
    .line 2405
    new-instance v9, Lf0/d;

    .line 2406
    .line 2407
    const-string v14, "GPSDestLongitude"

    .line 2408
    .line 2409
    const/16 v3, 0x16

    .line 2410
    .line 2411
    move-object/from16 v68, v1

    .line 2412
    .line 2413
    const/4 v1, 0x5

    .line 2414
    invoke-direct {v9, v14, v3, v1}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 2415
    .line 2416
    .line 2417
    new-instance v3, Lf0/d;

    .line 2418
    .line 2419
    const-string v14, "GPSDestBearingRef"

    .line 2420
    .line 2421
    move-object/from16 v69, v9

    .line 2422
    .line 2423
    move/from16 v1, v81

    .line 2424
    .line 2425
    const/4 v9, 0x2

    .line 2426
    invoke-direct {v3, v14, v1, v9}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 2427
    .line 2428
    .line 2429
    new-instance v1, Lf0/d;

    .line 2430
    .line 2431
    const-string v14, "GPSDestBearing"

    .line 2432
    .line 2433
    const/16 v9, 0x18

    .line 2434
    .line 2435
    move-object/from16 v70, v3

    .line 2436
    .line 2437
    const/4 v3, 0x5

    .line 2438
    invoke-direct {v1, v14, v9, v3}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 2439
    .line 2440
    .line 2441
    new-instance v9, Lf0/d;

    .line 2442
    .line 2443
    const-string v14, "GPSDestDistanceRef"

    .line 2444
    .line 2445
    const/16 v3, 0x19

    .line 2446
    .line 2447
    move-object/from16 v71, v1

    .line 2448
    .line 2449
    const/4 v1, 0x2

    .line 2450
    invoke-direct {v9, v14, v3, v1}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 2451
    .line 2452
    .line 2453
    new-instance v1, Lf0/d;

    .line 2454
    .line 2455
    const-string v3, "GPSDestDistance"

    .line 2456
    .line 2457
    move-object/from16 v72, v9

    .line 2458
    .line 2459
    move/from16 v9, v19

    .line 2460
    .line 2461
    const/4 v14, 0x5

    .line 2462
    invoke-direct {v1, v3, v9, v14}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 2463
    .line 2464
    .line 2465
    new-instance v3, Lf0/d;

    .line 2466
    .line 2467
    const-string v9, "GPSProcessingMethod"

    .line 2468
    .line 2469
    const/16 v14, 0x1b

    .line 2470
    .line 2471
    move-object/from16 v73, v1

    .line 2472
    .line 2473
    const/4 v1, 0x7

    .line 2474
    invoke-direct {v3, v9, v14, v1}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 2475
    .line 2476
    .line 2477
    new-instance v9, Lf0/d;

    .line 2478
    .line 2479
    const-string v14, "GPSAreaInformation"

    .line 2480
    .line 2481
    move-object/from16 v75, v3

    .line 2482
    .line 2483
    const/16 v3, 0x1c

    .line 2484
    .line 2485
    invoke-direct {v9, v14, v3, v1}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 2486
    .line 2487
    .line 2488
    new-instance v1, Lf0/d;

    .line 2489
    .line 2490
    const-string v3, "GPSDateStamp"

    .line 2491
    .line 2492
    const/16 v14, 0x1d

    .line 2493
    .line 2494
    move-object/from16 v76, v9

    .line 2495
    .line 2496
    const/4 v9, 0x2

    .line 2497
    invoke-direct {v1, v3, v14, v9}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 2498
    .line 2499
    .line 2500
    new-instance v3, Lf0/d;

    .line 2501
    .line 2502
    const-string v9, "GPSDifferential"

    .line 2503
    .line 2504
    const/16 v14, 0x1e

    .line 2505
    .line 2506
    move-object/from16 v78, v1

    .line 2507
    .line 2508
    const/4 v1, 0x3

    .line 2509
    invoke-direct {v3, v9, v14, v1}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 2510
    .line 2511
    .line 2512
    new-instance v9, Lf0/d;

    .line 2513
    .line 2514
    const-string v14, "GPSHPositioningError"

    .line 2515
    .line 2516
    move/from16 v40, v1

    .line 2517
    .line 2518
    const/16 v1, 0x1f

    .line 2519
    .line 2520
    move-object/from16 v79, v3

    .line 2521
    .line 2522
    const/4 v3, 0x5

    .line 2523
    invoke-direct {v9, v14, v1, v3}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 2524
    .line 2525
    .line 2526
    const/16 v1, 0x20

    .line 2527
    .line 2528
    new-array v1, v1, [Lf0/d;

    .line 2529
    .line 2530
    const/16 v16, 0x0

    .line 2531
    .line 2532
    aput-object v46, v1, v16

    .line 2533
    .line 2534
    const/16 v24, 0x1

    .line 2535
    .line 2536
    aput-object v47, v1, v24

    .line 2537
    .line 2538
    const/16 v30, 0x2

    .line 2539
    .line 2540
    aput-object v49, v1, v30

    .line 2541
    .line 2542
    aput-object v50, v1, v40

    .line 2543
    .line 2544
    const/16 v32, 0x4

    .line 2545
    .line 2546
    aput-object v51, v1, v32

    .line 2547
    .line 2548
    aput-object v53, v1, v3

    .line 2549
    .line 2550
    const/16 v27, 0x6

    .line 2551
    .line 2552
    aput-object v11, v1, v27

    .line 2553
    .line 2554
    const/16 v25, 0x7

    .line 2555
    .line 2556
    aput-object v54, v1, v25

    .line 2557
    .line 2558
    const/16 v22, 0x8

    .line 2559
    .line 2560
    aput-object v55, v1, v22

    .line 2561
    .line 2562
    const/16 v44, 0x9

    .line 2563
    .line 2564
    aput-object v56, v1, v44

    .line 2565
    .line 2566
    const/16 v20, 0xa

    .line 2567
    .line 2568
    aput-object v57, v1, v20

    .line 2569
    .line 2570
    const/16 v34, 0xb

    .line 2571
    .line 2572
    aput-object v58, v1, v34

    .line 2573
    .line 2574
    const/16 v35, 0xc

    .line 2575
    .line 2576
    aput-object v59, v1, v35

    .line 2577
    .line 2578
    const/16 v18, 0xd

    .line 2579
    .line 2580
    aput-object v60, v1, v18

    .line 2581
    .line 2582
    const/16 v21, 0xe

    .line 2583
    .line 2584
    aput-object v61, v1, v21

    .line 2585
    .line 2586
    const/16 v37, 0xf

    .line 2587
    .line 2588
    aput-object v62, v1, v37

    .line 2589
    .line 2590
    const/16 v38, 0x10

    .line 2591
    .line 2592
    aput-object v63, v1, v38

    .line 2593
    .line 2594
    const/16 v41, 0x11

    .line 2595
    .line 2596
    aput-object v64, v1, v41

    .line 2597
    .line 2598
    const/16 v42, 0x12

    .line 2599
    .line 2600
    aput-object v65, v1, v42

    .line 2601
    .line 2602
    const/16 v3, 0x13

    .line 2603
    .line 2604
    aput-object v66, v1, v3

    .line 2605
    .line 2606
    const/16 v3, 0x14

    .line 2607
    .line 2608
    aput-object v67, v1, v3

    .line 2609
    .line 2610
    const/16 v3, 0x15

    .line 2611
    .line 2612
    aput-object v68, v1, v3

    .line 2613
    .line 2614
    const/16 v3, 0x16

    .line 2615
    .line 2616
    aput-object v69, v1, v3

    .line 2617
    .line 2618
    const/16 v81, 0x17

    .line 2619
    .line 2620
    aput-object v70, v1, v81

    .line 2621
    .line 2622
    const/16 v3, 0x18

    .line 2623
    .line 2624
    aput-object v71, v1, v3

    .line 2625
    .line 2626
    const/16 v3, 0x19

    .line 2627
    .line 2628
    aput-object v72, v1, v3

    .line 2629
    .line 2630
    const/16 v19, 0x1a

    .line 2631
    .line 2632
    aput-object v73, v1, v19

    .line 2633
    .line 2634
    const/16 v3, 0x1b

    .line 2635
    .line 2636
    aput-object v75, v1, v3

    .line 2637
    .line 2638
    const/16 v3, 0x1c

    .line 2639
    .line 2640
    aput-object v76, v1, v3

    .line 2641
    .line 2642
    const/16 v3, 0x1d

    .line 2643
    .line 2644
    aput-object v78, v1, v3

    .line 2645
    .line 2646
    const/16 v3, 0x1e

    .line 2647
    .line 2648
    aput-object v79, v1, v3

    .line 2649
    .line 2650
    const/16 v3, 0x1f

    .line 2651
    .line 2652
    aput-object v9, v1, v3

    .line 2653
    .line 2654
    new-instance v3, Lf0/d;

    .line 2655
    .line 2656
    const-string v9, "InteroperabilityIndex"

    .line 2657
    .line 2658
    const/4 v11, 0x1

    .line 2659
    const/4 v14, 0x2

    .line 2660
    invoke-direct {v3, v9, v11, v14}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 2661
    .line 2662
    .line 2663
    new-array v9, v11, [Lf0/d;

    .line 2664
    .line 2665
    const/16 v16, 0x0

    .line 2666
    .line 2667
    aput-object v3, v9, v16

    .line 2668
    .line 2669
    new-instance v3, Lf0/d;

    .line 2670
    .line 2671
    const/16 v11, 0xfe

    .line 2672
    .line 2673
    const/4 v14, 0x4

    .line 2674
    invoke-direct {v3, v10, v11, v14}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 2675
    .line 2676
    .line 2677
    new-instance v10, Lf0/d;

    .line 2678
    .line 2679
    const/16 v11, 0xff

    .line 2680
    .line 2681
    invoke-direct {v10, v2, v11, v14}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 2682
    .line 2683
    .line 2684
    new-instance v2, Lf0/d;

    .line 2685
    .line 2686
    const-string v11, "ThumbnailImageWidth"

    .line 2687
    .line 2688
    move-object/from16 v23, v1

    .line 2689
    .line 2690
    move-object/from16 v26, v3

    .line 2691
    .line 2692
    const/4 v1, 0x3

    .line 2693
    const/16 v3, 0x100

    .line 2694
    .line 2695
    invoke-direct {v2, v11, v3, v1, v14}, Lf0/d;-><init>(Ljava/lang/String;III)V

    .line 2696
    .line 2697
    .line 2698
    new-instance v3, Lf0/d;

    .line 2699
    .line 2700
    const-string v11, "ThumbnailImageLength"

    .line 2701
    .line 2702
    move-object/from16 v46, v2

    .line 2703
    .line 2704
    const/16 v2, 0x101

    .line 2705
    .line 2706
    invoke-direct {v3, v11, v2, v1, v14}, Lf0/d;-><init>(Ljava/lang/String;III)V

    .line 2707
    .line 2708
    .line 2709
    new-instance v2, Lf0/d;

    .line 2710
    .line 2711
    const/16 v11, 0x102

    .line 2712
    .line 2713
    invoke-direct {v2, v5, v11, v1}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 2714
    .line 2715
    .line 2716
    new-instance v5, Lf0/d;

    .line 2717
    .line 2718
    const/16 v11, 0x103

    .line 2719
    .line 2720
    invoke-direct {v5, v4, v11, v1}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 2721
    .line 2722
    .line 2723
    new-instance v4, Lf0/d;

    .line 2724
    .line 2725
    const/16 v11, 0x106

    .line 2726
    .line 2727
    invoke-direct {v4, v8, v11, v1}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 2728
    .line 2729
    .line 2730
    new-instance v1, Lf0/d;

    .line 2731
    .line 2732
    const/16 v8, 0x10e

    .line 2733
    .line 2734
    const/4 v11, 0x2

    .line 2735
    invoke-direct {v1, v0, v8, v11}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 2736
    .line 2737
    .line 2738
    new-instance v0, Lf0/d;

    .line 2739
    .line 2740
    const-string v8, "Make"

    .line 2741
    .line 2742
    const/16 v14, 0x10f

    .line 2743
    .line 2744
    invoke-direct {v0, v8, v14, v11}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 2745
    .line 2746
    .line 2747
    new-instance v8, Lf0/d;

    .line 2748
    .line 2749
    const-string v14, "Model"

    .line 2750
    .line 2751
    move-object/from16 v36, v0

    .line 2752
    .line 2753
    const/16 v0, 0x110

    .line 2754
    .line 2755
    invoke-direct {v8, v14, v0, v11}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 2756
    .line 2757
    .line 2758
    new-instance v0, Lf0/d;

    .line 2759
    .line 2760
    move-object/from16 v39, v1

    .line 2761
    .line 2762
    const/4 v1, 0x4

    .line 2763
    const/4 v11, 0x3

    .line 2764
    const/16 v14, 0x111

    .line 2765
    .line 2766
    invoke-direct {v0, v13, v14, v11, v1}, Lf0/d;-><init>(Ljava/lang/String;III)V

    .line 2767
    .line 2768
    .line 2769
    new-instance v1, Lf0/d;

    .line 2770
    .line 2771
    const-string v14, "ThumbnailOrientation"

    .line 2772
    .line 2773
    move-object/from16 v43, v0

    .line 2774
    .line 2775
    const/16 v0, 0x112

    .line 2776
    .line 2777
    invoke-direct {v1, v14, v0, v11}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 2778
    .line 2779
    .line 2780
    new-instance v0, Lf0/d;

    .line 2781
    .line 2782
    const-string v14, "SamplesPerPixel"

    .line 2783
    .line 2784
    move-object/from16 v47, v1

    .line 2785
    .line 2786
    const/16 v1, 0x115

    .line 2787
    .line 2788
    invoke-direct {v0, v14, v1, v11}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 2789
    .line 2790
    .line 2791
    new-instance v1, Lf0/d;

    .line 2792
    .line 2793
    const-string v14, "RowsPerStrip"

    .line 2794
    .line 2795
    move-object/from16 v49, v0

    .line 2796
    .line 2797
    const/16 v0, 0x116

    .line 2798
    .line 2799
    move-object/from16 v50, v2

    .line 2800
    .line 2801
    const/4 v2, 0x4

    .line 2802
    invoke-direct {v1, v14, v0, v11, v2}, Lf0/d;-><init>(Ljava/lang/String;III)V

    .line 2803
    .line 2804
    .line 2805
    new-instance v0, Lf0/d;

    .line 2806
    .line 2807
    const-string v14, "StripByteCounts"

    .line 2808
    .line 2809
    move-object/from16 v51, v1

    .line 2810
    .line 2811
    const/16 v1, 0x117

    .line 2812
    .line 2813
    invoke-direct {v0, v14, v1, v11, v2}, Lf0/d;-><init>(Ljava/lang/String;III)V

    .line 2814
    .line 2815
    .line 2816
    new-instance v1, Lf0/d;

    .line 2817
    .line 2818
    const-string v2, "XResolution"

    .line 2819
    .line 2820
    const/16 v11, 0x11a

    .line 2821
    .line 2822
    const/4 v14, 0x5

    .line 2823
    invoke-direct {v1, v2, v11, v14}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 2824
    .line 2825
    .line 2826
    new-instance v2, Lf0/d;

    .line 2827
    .line 2828
    const-string v11, "YResolution"

    .line 2829
    .line 2830
    move-object/from16 v53, v0

    .line 2831
    .line 2832
    const/16 v0, 0x11b

    .line 2833
    .line 2834
    invoke-direct {v2, v11, v0, v14}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 2835
    .line 2836
    .line 2837
    new-instance v0, Lf0/d;

    .line 2838
    .line 2839
    const-string v11, "PlanarConfiguration"

    .line 2840
    .line 2841
    const/16 v14, 0x11c

    .line 2842
    .line 2843
    move-object/from16 v54, v1

    .line 2844
    .line 2845
    const/4 v1, 0x3

    .line 2846
    invoke-direct {v0, v11, v14, v1}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 2847
    .line 2848
    .line 2849
    new-instance v11, Lf0/d;

    .line 2850
    .line 2851
    const-string v14, "ResolutionUnit"

    .line 2852
    .line 2853
    move-object/from16 v55, v0

    .line 2854
    .line 2855
    const/16 v0, 0x128

    .line 2856
    .line 2857
    invoke-direct {v11, v14, v0, v1}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 2858
    .line 2859
    .line 2860
    new-instance v0, Lf0/d;

    .line 2861
    .line 2862
    const-string v14, "TransferFunction"

    .line 2863
    .line 2864
    move-object/from16 v56, v2

    .line 2865
    .line 2866
    const/16 v2, 0x12d

    .line 2867
    .line 2868
    invoke-direct {v0, v14, v2, v1}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 2869
    .line 2870
    .line 2871
    new-instance v1, Lf0/d;

    .line 2872
    .line 2873
    const-string v2, "Software"

    .line 2874
    .line 2875
    const/16 v14, 0x131

    .line 2876
    .line 2877
    move-object/from16 v57, v0

    .line 2878
    .line 2879
    const/4 v0, 0x2

    .line 2880
    invoke-direct {v1, v2, v14, v0}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 2881
    .line 2882
    .line 2883
    new-instance v2, Lf0/d;

    .line 2884
    .line 2885
    const-string v14, "DateTime"

    .line 2886
    .line 2887
    move-object/from16 v58, v1

    .line 2888
    .line 2889
    const/16 v1, 0x132

    .line 2890
    .line 2891
    invoke-direct {v2, v14, v1, v0}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 2892
    .line 2893
    .line 2894
    new-instance v1, Lf0/d;

    .line 2895
    .line 2896
    const-string v14, "Artist"

    .line 2897
    .line 2898
    move-object/from16 v59, v2

    .line 2899
    .line 2900
    const/16 v2, 0x13b

    .line 2901
    .line 2902
    invoke-direct {v1, v14, v2, v0}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 2903
    .line 2904
    .line 2905
    new-instance v0, Lf0/d;

    .line 2906
    .line 2907
    const-string v2, "WhitePoint"

    .line 2908
    .line 2909
    const/16 v14, 0x13e

    .line 2910
    .line 2911
    move-object/from16 v60, v1

    .line 2912
    .line 2913
    const/4 v1, 0x5

    .line 2914
    invoke-direct {v0, v2, v14, v1}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 2915
    .line 2916
    .line 2917
    new-instance v2, Lf0/d;

    .line 2918
    .line 2919
    const-string v14, "PrimaryChromaticities"

    .line 2920
    .line 2921
    move-object/from16 v61, v0

    .line 2922
    .line 2923
    const/16 v0, 0x13f

    .line 2924
    .line 2925
    invoke-direct {v2, v14, v0, v1}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 2926
    .line 2927
    .line 2928
    new-instance v0, Lf0/d;

    .line 2929
    .line 2930
    const/16 v1, 0x14a

    .line 2931
    .line 2932
    const/4 v14, 0x4

    .line 2933
    invoke-direct {v0, v7, v1, v14}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 2934
    .line 2935
    .line 2936
    new-instance v1, Lf0/d;

    .line 2937
    .line 2938
    move-object/from16 v62, v0

    .line 2939
    .line 2940
    const-string v0, "JPEGInterchangeFormat"

    .line 2941
    .line 2942
    move-object/from16 v63, v2

    .line 2943
    .line 2944
    const/16 v2, 0x201

    .line 2945
    .line 2946
    invoke-direct {v1, v0, v2, v14}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 2947
    .line 2948
    .line 2949
    new-instance v0, Lf0/d;

    .line 2950
    .line 2951
    const-string v2, "JPEGInterchangeFormatLength"

    .line 2952
    .line 2953
    move-object/from16 v64, v1

    .line 2954
    .line 2955
    const/16 v1, 0x202

    .line 2956
    .line 2957
    invoke-direct {v0, v2, v1, v14}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 2958
    .line 2959
    .line 2960
    new-instance v1, Lf0/d;

    .line 2961
    .line 2962
    const-string v2, "YCbCrCoefficients"

    .line 2963
    .line 2964
    const/16 v14, 0x211

    .line 2965
    .line 2966
    move-object/from16 v65, v0

    .line 2967
    .line 2968
    const/4 v0, 0x5

    .line 2969
    invoke-direct {v1, v2, v14, v0}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 2970
    .line 2971
    .line 2972
    new-instance v0, Lf0/d;

    .line 2973
    .line 2974
    const-string v2, "YCbCrSubSampling"

    .line 2975
    .line 2976
    const/16 v14, 0x212

    .line 2977
    .line 2978
    move-object/from16 v66, v1

    .line 2979
    .line 2980
    const/4 v1, 0x3

    .line 2981
    invoke-direct {v0, v2, v14, v1}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 2982
    .line 2983
    .line 2984
    new-instance v2, Lf0/d;

    .line 2985
    .line 2986
    const-string v14, "YCbCrPositioning"

    .line 2987
    .line 2988
    move-object/from16 v67, v0

    .line 2989
    .line 2990
    const/16 v0, 0x213

    .line 2991
    .line 2992
    invoke-direct {v2, v14, v0, v1}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 2993
    .line 2994
    .line 2995
    new-instance v0, Lf0/d;

    .line 2996
    .line 2997
    const-string v1, "ReferenceBlackWhite"

    .line 2998
    .line 2999
    const/16 v14, 0x214

    .line 3000
    .line 3001
    move-object/from16 v68, v2

    .line 3002
    .line 3003
    const/4 v2, 0x5

    .line 3004
    invoke-direct {v0, v1, v14, v2}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 3005
    .line 3006
    .line 3007
    new-instance v1, Lf0/d;

    .line 3008
    .line 3009
    const-string v2, "Copyright"

    .line 3010
    .line 3011
    const v14, 0x8298

    .line 3012
    .line 3013
    .line 3014
    move-object/from16 v69, v0

    .line 3015
    .line 3016
    const/4 v0, 0x2

    .line 3017
    invoke-direct {v1, v2, v14, v0}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 3018
    .line 3019
    .line 3020
    new-instance v0, Lf0/d;

    .line 3021
    .line 3022
    const v2, 0x8769

    .line 3023
    .line 3024
    .line 3025
    const/4 v14, 0x4

    .line 3026
    invoke-direct {v0, v12, v2, v14}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 3027
    .line 3028
    .line 3029
    new-instance v2, Lf0/d;

    .line 3030
    .line 3031
    move-object/from16 v70, v0

    .line 3032
    .line 3033
    const v0, 0x8825

    .line 3034
    .line 3035
    .line 3036
    invoke-direct {v2, v6, v0, v14}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 3037
    .line 3038
    .line 3039
    new-instance v0, Lf0/d;

    .line 3040
    .line 3041
    const-string v14, "DNGVersion"

    .line 3042
    .line 3043
    move-object/from16 v71, v1

    .line 3044
    .line 3045
    const v1, 0xc612

    .line 3046
    .line 3047
    .line 3048
    move-object/from16 v72, v2

    .line 3049
    .line 3050
    const/4 v2, 0x1

    .line 3051
    invoke-direct {v0, v14, v1, v2}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 3052
    .line 3053
    .line 3054
    new-instance v1, Lf0/d;

    .line 3055
    .line 3056
    const-string v14, "DefaultCropSize"

    .line 3057
    .line 3058
    move/from16 v24, v2

    .line 3059
    .line 3060
    const v2, 0xc620

    .line 3061
    .line 3062
    .line 3063
    move-object/from16 v73, v0

    .line 3064
    .line 3065
    move-object/from16 v32, v3

    .line 3066
    .line 3067
    const/4 v0, 0x3

    .line 3068
    const/4 v3, 0x4

    .line 3069
    invoke-direct {v1, v14, v2, v0, v3}, Lf0/d;-><init>(Ljava/lang/String;III)V

    .line 3070
    .line 3071
    .line 3072
    const/16 v2, 0x25

    .line 3073
    .line 3074
    new-array v2, v2, [Lf0/d;

    .line 3075
    .line 3076
    const/16 v16, 0x0

    .line 3077
    .line 3078
    aput-object v26, v2, v16

    .line 3079
    .line 3080
    aput-object v10, v2, v24

    .line 3081
    .line 3082
    const/16 v30, 0x2

    .line 3083
    .line 3084
    aput-object v46, v2, v30

    .line 3085
    .line 3086
    aput-object v32, v2, v0

    .line 3087
    .line 3088
    aput-object v50, v2, v3

    .line 3089
    .line 3090
    const/16 v28, 0x5

    .line 3091
    .line 3092
    aput-object v5, v2, v28

    .line 3093
    .line 3094
    const/16 v27, 0x6

    .line 3095
    .line 3096
    aput-object v4, v2, v27

    .line 3097
    .line 3098
    const/16 v25, 0x7

    .line 3099
    .line 3100
    aput-object v39, v2, v25

    .line 3101
    .line 3102
    const/16 v22, 0x8

    .line 3103
    .line 3104
    aput-object v36, v2, v22

    .line 3105
    .line 3106
    const/16 v44, 0x9

    .line 3107
    .line 3108
    aput-object v8, v2, v44

    .line 3109
    .line 3110
    const/16 v20, 0xa

    .line 3111
    .line 3112
    aput-object v43, v2, v20

    .line 3113
    .line 3114
    const/16 v34, 0xb

    .line 3115
    .line 3116
    aput-object v47, v2, v34

    .line 3117
    .line 3118
    const/16 v35, 0xc

    .line 3119
    .line 3120
    aput-object v49, v2, v35

    .line 3121
    .line 3122
    const/16 v18, 0xd

    .line 3123
    .line 3124
    aput-object v51, v2, v18

    .line 3125
    .line 3126
    const/16 v21, 0xe

    .line 3127
    .line 3128
    aput-object v53, v2, v21

    .line 3129
    .line 3130
    const/16 v37, 0xf

    .line 3131
    .line 3132
    aput-object v54, v2, v37

    .line 3133
    .line 3134
    const/16 v38, 0x10

    .line 3135
    .line 3136
    aput-object v56, v2, v38

    .line 3137
    .line 3138
    const/16 v41, 0x11

    .line 3139
    .line 3140
    aput-object v55, v2, v41

    .line 3141
    .line 3142
    const/16 v42, 0x12

    .line 3143
    .line 3144
    aput-object v11, v2, v42

    .line 3145
    .line 3146
    const/16 v0, 0x13

    .line 3147
    .line 3148
    aput-object v57, v2, v0

    .line 3149
    .line 3150
    const/16 v0, 0x14

    .line 3151
    .line 3152
    aput-object v58, v2, v0

    .line 3153
    .line 3154
    const/16 v0, 0x15

    .line 3155
    .line 3156
    aput-object v59, v2, v0

    .line 3157
    .line 3158
    const/16 v0, 0x16

    .line 3159
    .line 3160
    aput-object v60, v2, v0

    .line 3161
    .line 3162
    const/16 v81, 0x17

    .line 3163
    .line 3164
    aput-object v61, v2, v81

    .line 3165
    .line 3166
    const/16 v0, 0x18

    .line 3167
    .line 3168
    aput-object v63, v2, v0

    .line 3169
    .line 3170
    const/16 v0, 0x19

    .line 3171
    .line 3172
    aput-object v62, v2, v0

    .line 3173
    .line 3174
    const/16 v19, 0x1a

    .line 3175
    .line 3176
    aput-object v64, v2, v19

    .line 3177
    .line 3178
    const/16 v0, 0x1b

    .line 3179
    .line 3180
    aput-object v65, v2, v0

    .line 3181
    .line 3182
    const/16 v0, 0x1c

    .line 3183
    .line 3184
    aput-object v66, v2, v0

    .line 3185
    .line 3186
    const/16 v0, 0x1d

    .line 3187
    .line 3188
    aput-object v67, v2, v0

    .line 3189
    .line 3190
    const/16 v0, 0x1e

    .line 3191
    .line 3192
    aput-object v68, v2, v0

    .line 3193
    .line 3194
    const/16 v0, 0x1f

    .line 3195
    .line 3196
    aput-object v69, v2, v0

    .line 3197
    .line 3198
    const/16 v0, 0x20

    .line 3199
    .line 3200
    aput-object v71, v2, v0

    .line 3201
    .line 3202
    const/16 v0, 0x21

    .line 3203
    .line 3204
    aput-object v70, v2, v0

    .line 3205
    .line 3206
    const/16 v0, 0x22

    .line 3207
    .line 3208
    aput-object v72, v2, v0

    .line 3209
    .line 3210
    const/16 v0, 0x23

    .line 3211
    .line 3212
    aput-object v73, v2, v0

    .line 3213
    .line 3214
    const/16 v0, 0x24

    .line 3215
    .line 3216
    aput-object v1, v2, v0

    .line 3217
    .line 3218
    new-instance v0, Lf0/d;

    .line 3219
    .line 3220
    const/4 v1, 0x3

    .line 3221
    const/16 v14, 0x111

    .line 3222
    .line 3223
    invoke-direct {v0, v13, v14, v1}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 3224
    .line 3225
    .line 3226
    sput-object v0, Lf0/g;->I:Lf0/d;

    .line 3227
    .line 3228
    new-instance v0, Lf0/d;

    .line 3229
    .line 3230
    const-string v1, "ThumbnailImage"

    .line 3231
    .line 3232
    const/4 v3, 0x7

    .line 3233
    const/16 v4, 0x100

    .line 3234
    .line 3235
    invoke-direct {v0, v1, v4, v3}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 3236
    .line 3237
    .line 3238
    new-instance v1, Lf0/d;

    .line 3239
    .line 3240
    const-string v3, "CameraSettingsIFDPointer"

    .line 3241
    .line 3242
    const/16 v4, 0x2020

    .line 3243
    .line 3244
    const/4 v11, 0x4

    .line 3245
    invoke-direct {v1, v3, v4, v11}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 3246
    .line 3247
    .line 3248
    new-instance v3, Lf0/d;

    .line 3249
    .line 3250
    const-string v4, "ImageProcessingIFDPointer"

    .line 3251
    .line 3252
    const/16 v5, 0x2040

    .line 3253
    .line 3254
    invoke-direct {v3, v4, v5, v11}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 3255
    .line 3256
    .line 3257
    const/4 v4, 0x3

    .line 3258
    new-array v5, v4, [Lf0/d;

    .line 3259
    .line 3260
    const/16 v16, 0x0

    .line 3261
    .line 3262
    aput-object v0, v5, v16

    .line 3263
    .line 3264
    const/4 v14, 0x1

    .line 3265
    aput-object v1, v5, v14

    .line 3266
    .line 3267
    const/4 v1, 0x2

    .line 3268
    aput-object v3, v5, v1

    .line 3269
    .line 3270
    new-instance v0, Lf0/d;

    .line 3271
    .line 3272
    const-string v3, "PreviewImageStart"

    .line 3273
    .line 3274
    const/16 v4, 0x101

    .line 3275
    .line 3276
    invoke-direct {v0, v3, v4, v11}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 3277
    .line 3278
    .line 3279
    new-instance v3, Lf0/d;

    .line 3280
    .line 3281
    const-string v4, "PreviewImageLength"

    .line 3282
    .line 3283
    const/16 v8, 0x102

    .line 3284
    .line 3285
    invoke-direct {v3, v4, v8, v11}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 3286
    .line 3287
    .line 3288
    new-array v4, v1, [Lf0/d;

    .line 3289
    .line 3290
    aput-object v0, v4, v16

    .line 3291
    .line 3292
    aput-object v3, v4, v14

    .line 3293
    .line 3294
    new-instance v0, Lf0/d;

    .line 3295
    .line 3296
    const-string v1, "AspectFrame"

    .line 3297
    .line 3298
    const/16 v3, 0x1113

    .line 3299
    .line 3300
    const/4 v11, 0x3

    .line 3301
    invoke-direct {v0, v1, v3, v11}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 3302
    .line 3303
    .line 3304
    new-array v1, v14, [Lf0/d;

    .line 3305
    .line 3306
    aput-object v0, v1, v16

    .line 3307
    .line 3308
    new-instance v0, Lf0/d;

    .line 3309
    .line 3310
    const-string v3, "ColorSpace"

    .line 3311
    .line 3312
    const/16 v8, 0x37

    .line 3313
    .line 3314
    invoke-direct {v0, v3, v8, v11}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 3315
    .line 3316
    .line 3317
    new-array v3, v14, [Lf0/d;

    .line 3318
    .line 3319
    aput-object v0, v3, v16

    .line 3320
    .line 3321
    const/16 v0, 0xa

    .line 3322
    .line 3323
    new-array v8, v0, [[Lf0/d;

    .line 3324
    .line 3325
    aput-object v45, v8, v16

    .line 3326
    .line 3327
    aput-object v17, v8, v14

    .line 3328
    .line 3329
    const/16 v30, 0x2

    .line 3330
    .line 3331
    aput-object v23, v8, v30

    .line 3332
    .line 3333
    aput-object v9, v8, v11

    .line 3334
    .line 3335
    const/4 v11, 0x4

    .line 3336
    aput-object v2, v8, v11

    .line 3337
    .line 3338
    const/16 v28, 0x5

    .line 3339
    .line 3340
    aput-object v45, v8, v28

    .line 3341
    .line 3342
    const/16 v27, 0x6

    .line 3343
    .line 3344
    aput-object v5, v8, v27

    .line 3345
    .line 3346
    const/16 v25, 0x7

    .line 3347
    .line 3348
    aput-object v4, v8, v25

    .line 3349
    .line 3350
    const/16 v22, 0x8

    .line 3351
    .line 3352
    aput-object v1, v8, v22

    .line 3353
    .line 3354
    const/16 v44, 0x9

    .line 3355
    .line 3356
    aput-object v3, v8, v44

    .line 3357
    .line 3358
    sput-object v8, Lf0/g;->J:[[Lf0/d;

    .line 3359
    .line 3360
    new-instance v0, Lf0/d;

    .line 3361
    .line 3362
    const/16 v1, 0x14a

    .line 3363
    .line 3364
    invoke-direct {v0, v7, v1, v11}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 3365
    .line 3366
    .line 3367
    new-instance v1, Lf0/d;

    .line 3368
    .line 3369
    const v2, 0x8769

    .line 3370
    .line 3371
    .line 3372
    invoke-direct {v1, v12, v2, v11}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 3373
    .line 3374
    .line 3375
    new-instance v2, Lf0/d;

    .line 3376
    .line 3377
    const v3, 0x8825

    .line 3378
    .line 3379
    .line 3380
    invoke-direct {v2, v6, v3, v11}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 3381
    .line 3382
    .line 3383
    new-instance v3, Lf0/d;

    .line 3384
    .line 3385
    const-string v4, "InteroperabilityIFDPointer"

    .line 3386
    .line 3387
    const v5, 0xa005

    .line 3388
    .line 3389
    .line 3390
    invoke-direct {v3, v4, v5, v11}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 3391
    .line 3392
    .line 3393
    new-instance v4, Lf0/d;

    .line 3394
    .line 3395
    const-string v5, "CameraSettingsIFDPointer"

    .line 3396
    .line 3397
    const/16 v6, 0x2020

    .line 3398
    .line 3399
    const/4 v11, 0x1

    .line 3400
    invoke-direct {v4, v5, v6, v11}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 3401
    .line 3402
    .line 3403
    new-instance v5, Lf0/d;

    .line 3404
    .line 3405
    const-string v6, "ImageProcessingIFDPointer"

    .line 3406
    .line 3407
    const/16 v7, 0x2040

    .line 3408
    .line 3409
    invoke-direct {v5, v6, v7, v11}, Lf0/d;-><init>(Ljava/lang/String;II)V

    .line 3410
    .line 3411
    .line 3412
    const/4 v14, 0x6

    .line 3413
    new-array v6, v14, [Lf0/d;

    .line 3414
    .line 3415
    const/16 v16, 0x0

    .line 3416
    .line 3417
    aput-object v0, v6, v16

    .line 3418
    .line 3419
    aput-object v1, v6, v11

    .line 3420
    .line 3421
    const/16 v30, 0x2

    .line 3422
    .line 3423
    aput-object v2, v6, v30

    .line 3424
    .line 3425
    const/16 v40, 0x3

    .line 3426
    .line 3427
    aput-object v3, v6, v40

    .line 3428
    .line 3429
    const/16 v32, 0x4

    .line 3430
    .line 3431
    aput-object v4, v6, v32

    .line 3432
    .line 3433
    const/16 v28, 0x5

    .line 3434
    .line 3435
    aput-object v5, v6, v28

    .line 3436
    .line 3437
    sput-object v6, Lf0/g;->K:[Lf0/d;

    .line 3438
    .line 3439
    const/16 v9, 0xa

    .line 3440
    .line 3441
    new-array v0, v9, [Ljava/util/HashMap;

    .line 3442
    .line 3443
    sput-object v0, Lf0/g;->L:[Ljava/util/HashMap;

    .line 3444
    .line 3445
    new-array v0, v9, [Ljava/util/HashMap;

    .line 3446
    .line 3447
    sput-object v0, Lf0/g;->M:[Ljava/util/HashMap;

    .line 3448
    .line 3449
    new-instance v0, Ljava/util/HashSet;

    .line 3450
    .line 3451
    const-string v1, "DigitalZoomRatio"

    .line 3452
    .line 3453
    const-string v2, "ExposureTime"

    .line 3454
    .line 3455
    const-string v3, "FNumber"

    .line 3456
    .line 3457
    const-string v4, "SubjectDistance"

    .line 3458
    .line 3459
    const-string v5, "GPSTimeStamp"

    .line 3460
    .line 3461
    filled-new-array {v3, v1, v2, v4, v5}, [Ljava/lang/String;

    .line 3462
    .line 3463
    .line 3464
    move-result-object v1

    .line 3465
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 3466
    .line 3467
    .line 3468
    move-result-object v1

    .line 3469
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 3470
    .line 3471
    .line 3472
    sput-object v0, Lf0/g;->N:Ljava/util/HashSet;

    .line 3473
    .line 3474
    new-instance v0, Ljava/util/HashMap;

    .line 3475
    .line 3476
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3477
    .line 3478
    .line 3479
    sput-object v0, Lf0/g;->O:Ljava/util/HashMap;

    .line 3480
    .line 3481
    const-string v0, "US-ASCII"

    .line 3482
    .line 3483
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 3484
    .line 3485
    .line 3486
    move-result-object v0

    .line 3487
    sput-object v0, Lf0/g;->P:Ljava/nio/charset/Charset;

    .line 3488
    .line 3489
    const-string v1, "Exif\u0000\u0000"

    .line 3490
    .line 3491
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 3492
    .line 3493
    .line 3494
    move-result-object v1

    .line 3495
    sput-object v1, Lf0/g;->Q:[B

    .line 3496
    .line 3497
    const-string v1, "http://ns.adobe.com/xap/1.0/\u0000"

    .line 3498
    .line 3499
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 3500
    .line 3501
    .line 3502
    move-result-object v0

    .line 3503
    sput-object v0, Lf0/g;->R:[B

    .line 3504
    .line 3505
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 3506
    .line 3507
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 3508
    .line 3509
    const-string v2, "yyyy:MM:dd HH:mm:ss"

    .line 3510
    .line 3511
    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 3512
    .line 3513
    .line 3514
    const-string v2, "UTC"

    .line 3515
    .line 3516
    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 3517
    .line 3518
    .line 3519
    move-result-object v2

    .line 3520
    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 3521
    .line 3522
    .line 3523
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 3524
    .line 3525
    const-string v2, "yyyy-MM-dd HH:mm:ss"

    .line 3526
    .line 3527
    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 3528
    .line 3529
    .line 3530
    const-string v1, "UTC"

    .line 3531
    .line 3532
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 3533
    .line 3534
    .line 3535
    move-result-object v1

    .line 3536
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 3537
    .line 3538
    .line 3539
    const/4 v14, 0x0

    .line 3540
    :goto_0
    sget-object v0, Lf0/g;->J:[[Lf0/d;

    .line 3541
    .line 3542
    array-length v1, v0

    .line 3543
    if-ge v14, v1, :cond_1

    .line 3544
    .line 3545
    sget-object v1, Lf0/g;->L:[Ljava/util/HashMap;

    .line 3546
    .line 3547
    new-instance v2, Ljava/util/HashMap;

    .line 3548
    .line 3549
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 3550
    .line 3551
    .line 3552
    aput-object v2, v1, v14

    .line 3553
    .line 3554
    sget-object v1, Lf0/g;->M:[Ljava/util/HashMap;

    .line 3555
    .line 3556
    new-instance v2, Ljava/util/HashMap;

    .line 3557
    .line 3558
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 3559
    .line 3560
    .line 3561
    aput-object v2, v1, v14

    .line 3562
    .line 3563
    aget-object v0, v0, v14

    .line 3564
    .line 3565
    array-length v1, v0

    .line 3566
    const/4 v2, 0x0

    .line 3567
    :goto_1
    if-ge v2, v1, :cond_0

    .line 3568
    .line 3569
    aget-object v3, v0, v2

    .line 3570
    .line 3571
    sget-object v4, Lf0/g;->L:[Ljava/util/HashMap;

    .line 3572
    .line 3573
    aget-object v4, v4, v14

    .line 3574
    .line 3575
    iget v5, v3, Lf0/d;->a:I

    .line 3576
    .line 3577
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3578
    .line 3579
    .line 3580
    move-result-object v5

    .line 3581
    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3582
    .line 3583
    .line 3584
    sget-object v4, Lf0/g;->M:[Ljava/util/HashMap;

    .line 3585
    .line 3586
    aget-object v4, v4, v14

    .line 3587
    .line 3588
    iget-object v5, v3, Lf0/d;->b:Ljava/lang/String;

    .line 3589
    .line 3590
    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3591
    .line 3592
    .line 3593
    const/16 v24, 0x1

    .line 3594
    .line 3595
    add-int/lit8 v2, v2, 0x1

    .line 3596
    .line 3597
    goto :goto_1

    .line 3598
    :cond_0
    const/16 v24, 0x1

    .line 3599
    .line 3600
    add-int/lit8 v14, v14, 0x1

    .line 3601
    .line 3602
    goto :goto_0

    .line 3603
    :cond_1
    const/16 v24, 0x1

    .line 3604
    .line 3605
    sget-object v0, Lf0/g;->O:Ljava/util/HashMap;

    .line 3606
    .line 3607
    sget-object v1, Lf0/g;->K:[Lf0/d;

    .line 3608
    .line 3609
    const/16 v16, 0x0

    .line 3610
    .line 3611
    aget-object v2, v1, v16

    .line 3612
    .line 3613
    iget v2, v2, Lf0/d;->a:I

    .line 3614
    .line 3615
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3616
    .line 3617
    .line 3618
    move-result-object v2

    .line 3619
    invoke-virtual {v0, v2, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3620
    .line 3621
    .line 3622
    aget-object v2, v1, v24

    .line 3623
    .line 3624
    iget v2, v2, Lf0/d;->a:I

    .line 3625
    .line 3626
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3627
    .line 3628
    .line 3629
    move-result-object v2

    .line 3630
    move-object/from16 v3, v89

    .line 3631
    .line 3632
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3633
    .line 3634
    .line 3635
    const/16 v30, 0x2

    .line 3636
    .line 3637
    aget-object v2, v1, v30

    .line 3638
    .line 3639
    iget v2, v2, Lf0/d;->a:I

    .line 3640
    .line 3641
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3642
    .line 3643
    .line 3644
    move-result-object v2

    .line 3645
    move-object/from16 v3, v77

    .line 3646
    .line 3647
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3648
    .line 3649
    .line 3650
    const/16 v40, 0x3

    .line 3651
    .line 3652
    aget-object v2, v1, v40

    .line 3653
    .line 3654
    iget v2, v2, Lf0/d;->a:I

    .line 3655
    .line 3656
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3657
    .line 3658
    .line 3659
    move-result-object v2

    .line 3660
    move-object/from16 v3, v74

    .line 3661
    .line 3662
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3663
    .line 3664
    .line 3665
    const/16 v32, 0x4

    .line 3666
    .line 3667
    aget-object v2, v1, v32

    .line 3668
    .line 3669
    iget v2, v2, Lf0/d;->a:I

    .line 3670
    .line 3671
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3672
    .line 3673
    .line 3674
    move-result-object v2

    .line 3675
    move-object/from16 v3, v52

    .line 3676
    .line 3677
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3678
    .line 3679
    .line 3680
    const/16 v28, 0x5

    .line 3681
    .line 3682
    aget-object v1, v1, v28

    .line 3683
    .line 3684
    iget v1, v1, Lf0/d;->a:I

    .line 3685
    .line 3686
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3687
    .line 3688
    .line 3689
    move-result-object v1

    .line 3690
    move-object/from16 v2, v48

    .line 3691
    .line 3692
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3693
    .line 3694
    .line 3695
    const-string v0, ".*[1-9].*"

    .line 3696
    .line 3697
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 3698
    .line 3699
    .line 3700
    const-string v0, "^(\\d{2}):(\\d{2}):(\\d{2})$"

    .line 3701
    .line 3702
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 3703
    .line 3704
    .line 3705
    const-string v0, "^(\\d{4}):(\\d{2}):(\\d{2})\\s(\\d{2}):(\\d{2}):(\\d{2})$"

    .line 3706
    .line 3707
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 3708
    .line 3709
    .line 3710
    const-string v0, "^(\\d{4})-(\\d{2})-(\\d{2})\\s(\\d{2}):(\\d{2}):(\\d{2})$"

    .line 3711
    .line 3712
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 3713
    .line 3714
    .line 3715
    return-void

    .line 3716
    nop

    .line 3717
    :array_0
    .array-data 1
        -0x1t
        -0x28t
        -0x1t
    .end array-data

    .line 3718
    .line 3719
    .line 3720
    .line 3721
    .line 3722
    .line 3723
    :array_1
    .array-data 1
        0x66t
        0x74t
        0x79t
        0x70t
    .end array-data

    .line 3724
    .line 3725
    .line 3726
    .line 3727
    .line 3728
    .line 3729
    :array_2
    .array-data 1
        0x6dt
        0x69t
        0x66t
        0x31t
    .end array-data

    .line 3730
    .line 3731
    .line 3732
    .line 3733
    .line 3734
    .line 3735
    :array_3
    .array-data 1
        0x68t
        0x65t
        0x69t
        0x63t
    .end array-data

    .line 3736
    .line 3737
    .line 3738
    .line 3739
    .line 3740
    .line 3741
    :array_4
    .array-data 1
        0x4ft
        0x4ct
        0x59t
        0x4dt
        0x50t
        0x0t
    .end array-data

    .line 3742
    .line 3743
    .line 3744
    .line 3745
    .line 3746
    .line 3747
    .line 3748
    nop

    .line 3749
    :array_5
    .array-data 1
        0x4ft
        0x4ct
        0x59t
        0x4dt
        0x50t
        0x55t
        0x53t
        0x0t
        0x49t
        0x49t
    .end array-data

    .line 3750
    .line 3751
    .line 3752
    .line 3753
    .line 3754
    .line 3755
    .line 3756
    .line 3757
    .line 3758
    nop

    :array_6
    .array-data 1
        -0x77t
        0x50t
        0x4et
        0x47t
        0xdt
        0xat
        0x1at
        0xat
    .end array-data

    :array_7
    .array-data 1
        0x65t
        0x58t
        0x49t
        0x66t
    .end array-data

    :array_8
    .array-data 1
        0x49t
        0x48t
        0x44t
        0x52t
    .end array-data

    :array_9
    .array-data 1
        0x49t
        0x45t
        0x4et
        0x44t
    .end array-data

    :array_a
    .array-data 1
        0x52t
        0x49t
        0x46t
        0x46t
    .end array-data

    :array_b
    .array-data 1
        0x57t
        0x45t
        0x42t
        0x50t
    .end array-data

    :array_c
    .array-data 1
        0x45t
        0x58t
        0x49t
        0x46t
    .end array-data

    :array_d
    .array-data 4
        0x0
        0x1
        0x1
        0x2
        0x4
        0x8
        0x1
        0x1
        0x2
        0x4
        0x8
        0x4
        0x8
        0x1
    .end array-data

    :array_e
    .array-data 1
        0x41t
        0x53t
        0x43t
        0x49t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, p1, v0}, Lf0/g;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    sget-object v0, Lf0/g;->J:[[Lf0/d;

    array-length v1, v0

    new-array v1, v1, [Ljava/util/HashMap;

    iput-object v1, p0, Lf0/g;->f:[Ljava/util/HashMap;

    .line 24
    new-instance v1, Ljava/util/HashSet;

    array-length v0, v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    iput-object v1, p0, Lf0/g;->g:Ljava/util/HashSet;

    .line 25
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Lf0/g;->h:Ljava/nio/ByteOrder;

    if-eqz p1, :cond_5

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lf0/g;->a:Ljava/lang/String;

    .line 27
    const-string v1, "ExifInterface"

    const/4 v2, 0x1

    if-ne p2, v2, :cond_2

    .line 28
    new-instance p2, Ljava/io/BufferedInputStream;

    sget-object v3, Lf0/g;->Q:[B

    array-length v4, v3

    invoke-direct {p2, p1, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 29
    array-length p1, v3

    invoke-virtual {p2, p1}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 30
    array-length p1, v3

    new-array p1, p1, [B

    .line 31
    invoke-virtual {p2, p1}, Ljava/io/InputStream;->read([B)I

    .line 32
    invoke-virtual {p2}, Ljava/io/BufferedInputStream;->reset()V

    const/4 v4, 0x0

    .line 33
    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_1

    .line 34
    aget-byte v5, p1, v4

    aget-byte v6, v3, v4

    if-eq v5, v6, :cond_0

    .line 35
    const-string p1, "Given data does not follow the structure of an Exif-only data."

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 36
    :cond_1
    iput-boolean v2, p0, Lf0/g;->e:Z

    .line 37
    iput-object v0, p0, Lf0/g;->c:Landroid/content/res/AssetManager$AssetInputStream;

    .line 38
    iput-object v0, p0, Lf0/g;->b:Ljava/io/FileDescriptor;

    move-object p1, p2

    goto :goto_1

    .line 39
    :cond_2
    instance-of p2, p1, Landroid/content/res/AssetManager$AssetInputStream;

    if-eqz p2, :cond_3

    .line 40
    move-object p2, p1

    check-cast p2, Landroid/content/res/AssetManager$AssetInputStream;

    iput-object p2, p0, Lf0/g;->c:Landroid/content/res/AssetManager$AssetInputStream;

    .line 41
    iput-object v0, p0, Lf0/g;->b:Ljava/io/FileDescriptor;

    goto :goto_1

    .line 42
    :cond_3
    instance-of p2, p1, Ljava/io/FileInputStream;

    if-eqz p2, :cond_4

    move-object p2, p1

    check-cast p2, Ljava/io/FileInputStream;

    .line 43
    invoke-virtual {p2}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    .line 44
    :try_start_0
    sget v3, Landroid/system/OsConstants;->SEEK_CUR:I

    const-wide/16 v4, 0x0

    invoke-static {v2, v4, v5, v3}, Lf0/h;->c(Ljava/io/FileDescriptor;JI)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    iput-object v0, p0, Lf0/g;->c:Landroid/content/res/AssetManager$AssetInputStream;

    .line 46
    invoke-virtual {p2}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p2

    iput-object p2, p0, Lf0/g;->b:Ljava/io/FileDescriptor;

    goto :goto_1

    .line 47
    :catch_0
    sget-boolean p2, Lf0/g;->n:Z

    if-eqz p2, :cond_4

    .line 48
    const-string p2, "The file descriptor for the given input is not seekable"

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :cond_4
    iput-object v0, p0, Lf0/g;->c:Landroid/content/res/AssetManager$AssetInputStream;

    .line 50
    iput-object v0, p0, Lf0/g;->b:Ljava/io/FileDescriptor;

    .line 51
    :goto_1
    invoke-virtual {p0, p1}, Lf0/g;->o(Ljava/io/InputStream;)V

    return-void

    .line 52
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "inputStream cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lf0/g;->J:[[Lf0/d;

    array-length v1, v0

    new-array v1, v1, [Ljava/util/HashMap;

    iput-object v1, p0, Lf0/g;->f:[Ljava/util/HashMap;

    .line 3
    new-instance v1, Ljava/util/HashSet;

    array-length v0, v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    iput-object v1, p0, Lf0/g;->g:Ljava/util/HashSet;

    .line 4
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Lf0/g;->h:Ljava/nio/ByteOrder;

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lf0/g;->c:Landroid/content/res/AssetManager$AssetInputStream;

    .line 6
    iput-object p1, p0, Lf0/g;->a:Ljava/lang/String;

    .line 7
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    :try_start_2
    sget v2, Landroid/system/OsConstants;->SEEK_CUR:I

    const-wide/16 v3, 0x0

    invoke-static {p1, v3, v4, v2}, Lf0/h;->c(Ljava/io/FileDescriptor;JI)J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 p1, 0x1

    goto :goto_0

    .line 10
    :catch_0
    :try_start_3
    sget-boolean p1, Lf0/g;->n:Z

    if-eqz p1, :cond_0

    .line 11
    const-string p1, "ExifInterface"

    const-string v2, "The file descriptor for the given input is not seekable"

    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 12
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    iput-object p1, p0, Lf0/g;->b:Ljava/io/FileDescriptor;

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_2

    .line 13
    :cond_1
    iput-object v0, p0, Lf0/g;->b:Ljava/io/FileDescriptor;

    .line 14
    :goto_1
    invoke-virtual {p0, v1}, Lf0/g;->o(Ljava/io/InputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 15
    :try_start_4
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    return-void

    :catch_2
    move-exception p1

    .line 16
    throw p1

    :catchall_1
    move-exception p1

    :goto_2
    if-eqz v0, :cond_2

    .line 17
    :try_start_5
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_3

    :catch_3
    move-exception p1

    .line 18
    throw p1

    .line 19
    :catch_4
    :cond_2
    :goto_3
    throw p1

    .line 20
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "filename cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static r(Lf0/b;)Ljava/nio/ByteOrder;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lf0/b;->readShort()S

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/16 v0, 0x4949

    .line 6
    .line 7
    const-string v1, "ExifInterface"

    .line 8
    .line 9
    sget-boolean v2, Lf0/g;->n:Z

    .line 10
    .line 11
    if-eq p0, v0, :cond_2

    .line 12
    .line 13
    const/16 v0, 0x4d4d

    .line 14
    .line 15
    if-ne p0, v0, :cond_1

    .line 16
    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    const-string p0, "readExifSegment: Byte Align MM"

    .line 20
    .line 21
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    sget-object p0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 25
    .line 26
    return-object p0

    .line 27
    :cond_1
    new-instance v0, Ljava/io/IOException;

    .line 28
    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v2, "Invalid byte order: "

    .line 32
    .line 33
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw v0

    .line 51
    :cond_2
    if-eqz v2, :cond_3

    .line 52
    .line 53
    const-string p0, "readExifSegment: Byte Align II"

    .line 54
    .line 55
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    :cond_3
    sget-object p0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 59
    .line 60
    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 7

    .line 1
    const-string v0, "DateTimeOriginal"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lf0/g;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    iget-object v2, p0, Lf0/g;->f:[Ljava/util/HashMap;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const-string v3, "DateTime"

    .line 13
    .line 14
    invoke-virtual {p0, v3}, Lf0/g;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    if-nez v4, :cond_0

    .line 19
    .line 20
    aget-object v4, v2, v1

    .line 21
    .line 22
    invoke-static {v0}, Lf0/c;->createString(Ljava/lang/String;)Lf0/c;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v4, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    :cond_0
    const-string v0, "ImageWidth"

    .line 30
    .line 31
    invoke-virtual {p0, v0}, Lf0/g;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    const-wide/16 v4, 0x0

    .line 36
    .line 37
    if-nez v3, :cond_1

    .line 38
    .line 39
    aget-object v3, v2, v1

    .line 40
    .line 41
    iget-object v6, p0, Lf0/g;->h:Ljava/nio/ByteOrder;

    .line 42
    .line 43
    invoke-static {v4, v5, v6}, Lf0/c;->createULong(JLjava/nio/ByteOrder;)Lf0/c;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    invoke-virtual {v3, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    :cond_1
    const-string v0, "ImageLength"

    .line 51
    .line 52
    invoke-virtual {p0, v0}, Lf0/g;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    if-nez v3, :cond_2

    .line 57
    .line 58
    aget-object v3, v2, v1

    .line 59
    .line 60
    iget-object v6, p0, Lf0/g;->h:Ljava/nio/ByteOrder;

    .line 61
    .line 62
    invoke-static {v4, v5, v6}, Lf0/c;->createULong(JLjava/nio/ByteOrder;)Lf0/c;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    invoke-virtual {v3, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    :cond_2
    const-string v0, "Orientation"

    .line 70
    .line 71
    invoke-virtual {p0, v0}, Lf0/g;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    if-nez v3, :cond_3

    .line 76
    .line 77
    aget-object v1, v2, v1

    .line 78
    .line 79
    iget-object v3, p0, Lf0/g;->h:Ljava/nio/ByteOrder;

    .line 80
    .line 81
    invoke-static {v4, v5, v3}, Lf0/c;->createULong(JLjava/nio/ByteOrder;)Lf0/c;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    :cond_3
    const-string v0, "LightSource"

    .line 89
    .line 90
    invoke-virtual {p0, v0}, Lf0/g;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    if-nez v1, :cond_4

    .line 95
    .line 96
    const/4 v1, 0x1

    .line 97
    aget-object v1, v2, v1

    .line 98
    .line 99
    iget-object v2, p0, Lf0/g;->h:Ljava/nio/ByteOrder;

    .line 100
    .line 101
    invoke-static {v4, v5, v2}, Lf0/c;->createULong(JLjava/nio/ByteOrder;)Lf0/c;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    :cond_4
    return-void
.end method

.method public final b(Ljava/lang/String;)Lf0/c;
    .locals 2

    .line 1
    const-string v0, "ISOSpeedRatings"

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    sget-boolean p1, Lf0/g;->n:Z

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    const-string p1, "ExifInterface"

    .line 14
    .line 15
    const-string v0, "getExifAttribute: Replacing TAG_ISO_SPEED_RATINGS with TAG_PHOTOGRAPHIC_SENSITIVITY."

    .line 16
    .line 17
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    :cond_0
    const-string p1, "PhotographicSensitivity"

    .line 21
    .line 22
    :cond_1
    const/4 v0, 0x0

    .line 23
    :goto_0
    sget-object v1, Lf0/g;->J:[[Lf0/d;

    .line 24
    .line 25
    array-length v1, v1

    .line 26
    if-ge v0, v1, :cond_3

    .line 27
    .line 28
    iget-object v1, p0, Lf0/g;->f:[Ljava/util/HashMap;

    .line 29
    .line 30
    aget-object v1, v1, v0

    .line 31
    .line 32
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Lf0/c;

    .line 37
    .line 38
    if-eqz v1, :cond_2

    .line 39
    .line 40
    return-object v1

    .line 41
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_3
    const/4 p1, 0x0

    .line 45
    return-object p1
.end method

.method public final c(Lf0/f;)V
    .locals 13

    .line 1
    const-string v0, "yes"

    .line 2
    .line 3
    const-string v1, "Heif meta: "

    .line 4
    .line 5
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 6
    .line 7
    const/16 v3, 0x1c

    .line 8
    .line 9
    if-lt v2, v3, :cond_e

    .line 10
    .line 11
    new-instance v2, Landroid/media/MediaMetadataRetriever;

    .line 12
    .line 13
    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 14
    .line 15
    .line 16
    :try_start_0
    new-instance v3, Lf0/a;

    .line 17
    .line 18
    invoke-direct {v3, p1}, Lf0/a;-><init>(Lf0/f;)V

    .line 19
    .line 20
    .line 21
    invoke-static {v2, v3}, Lf0/i;->a(Landroid/media/MediaMetadataRetriever;Landroid/media/MediaDataSource;)V

    .line 22
    .line 23
    .line 24
    const/16 v3, 0x21

    .line 25
    .line 26
    invoke-virtual {v2, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    const/16 v4, 0x22

    .line 31
    .line 32
    invoke-virtual {v2, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    const/16 v5, 0x1a

    .line 37
    .line 38
    invoke-virtual {v2, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    const/16 v6, 0x11

    .line 43
    .line 44
    invoke-virtual {v2, v6}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    if-eqz v5, :cond_0

    .line 53
    .line 54
    const/16 v0, 0x1d

    .line 55
    .line 56
    invoke-virtual {v2, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    const/16 v5, 0x1e

    .line 61
    .line 62
    invoke-virtual {v2, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    const/16 v6, 0x1f

    .line 67
    .line 68
    invoke-virtual {v2, v6}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    goto :goto_0

    .line 73
    :catchall_0
    move-exception p1

    .line 74
    goto/16 :goto_3

    .line 75
    .line 76
    :cond_0
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-eqz v0, :cond_1

    .line 81
    .line 82
    const/16 v0, 0x12

    .line 83
    .line 84
    invoke-virtual {v2, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    const/16 v5, 0x13

    .line 89
    .line 90
    invoke-virtual {v2, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    const/16 v6, 0x18

    .line 95
    .line 96
    invoke-virtual {v2, v6}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v6
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    goto :goto_0

    .line 101
    :cond_1
    const/4 v0, 0x0

    .line 102
    move-object v5, v0

    .line 103
    move-object v6, v5

    .line 104
    :goto_0
    iget-object v7, p0, Lf0/g;->f:[Ljava/util/HashMap;

    .line 105
    .line 106
    const/4 v8, 0x0

    .line 107
    if-eqz v0, :cond_2

    .line 108
    .line 109
    :try_start_1
    aget-object v9, v7, v8

    .line 110
    .line 111
    const-string v10, "ImageWidth"

    .line 112
    .line 113
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 114
    .line 115
    .line 116
    move-result v11

    .line 117
    iget-object v12, p0, Lf0/g;->h:Ljava/nio/ByteOrder;

    .line 118
    .line 119
    invoke-static {v11, v12}, Lf0/c;->createUShort(ILjava/nio/ByteOrder;)Lf0/c;

    .line 120
    .line 121
    .line 122
    move-result-object v11

    .line 123
    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    :cond_2
    if-eqz v5, :cond_3

    .line 127
    .line 128
    aget-object v9, v7, v8

    .line 129
    .line 130
    const-string v10, "ImageLength"

    .line 131
    .line 132
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 133
    .line 134
    .line 135
    move-result v11

    .line 136
    iget-object v12, p0, Lf0/g;->h:Ljava/nio/ByteOrder;

    .line 137
    .line 138
    invoke-static {v11, v12}, Lf0/c;->createUShort(ILjava/nio/ByteOrder;)Lf0/c;

    .line 139
    .line 140
    .line 141
    move-result-object v11

    .line 142
    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    :cond_3
    const/4 v9, 0x6

    .line 146
    if-eqz v6, :cond_7

    .line 147
    .line 148
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 149
    .line 150
    .line 151
    move-result v10

    .line 152
    const/16 v11, 0x5a

    .line 153
    .line 154
    if-eq v10, v11, :cond_6

    .line 155
    .line 156
    const/16 v11, 0xb4

    .line 157
    .line 158
    if-eq v10, v11, :cond_5

    .line 159
    .line 160
    const/16 v11, 0x10e

    .line 161
    .line 162
    if-eq v10, v11, :cond_4

    .line 163
    .line 164
    const/4 v10, 0x1

    .line 165
    goto :goto_1

    .line 166
    :cond_4
    const/16 v10, 0x8

    .line 167
    .line 168
    goto :goto_1

    .line 169
    :cond_5
    const/4 v10, 0x3

    .line 170
    goto :goto_1

    .line 171
    :cond_6
    move v10, v9

    .line 172
    :goto_1
    aget-object v7, v7, v8

    .line 173
    .line 174
    const-string v11, "Orientation"

    .line 175
    .line 176
    iget-object v12, p0, Lf0/g;->h:Ljava/nio/ByteOrder;

    .line 177
    .line 178
    invoke-static {v10, v12}, Lf0/c;->createUShort(ILjava/nio/ByteOrder;)Lf0/c;

    .line 179
    .line 180
    .line 181
    move-result-object v10

    .line 182
    invoke-virtual {v7, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    :cond_7
    if-eqz v3, :cond_c

    .line 186
    .line 187
    if-eqz v4, :cond_c

    .line 188
    .line 189
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 190
    .line 191
    .line 192
    move-result v3

    .line 193
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 194
    .line 195
    .line 196
    move-result v4

    .line 197
    if-le v4, v9, :cond_b

    .line 198
    .line 199
    int-to-long v10, v3

    .line 200
    invoke-virtual {p1, v10, v11}, Lf0/f;->seek(J)V

    .line 201
    .line 202
    .line 203
    new-array v7, v9, [B

    .line 204
    .line 205
    invoke-virtual {p1, v7}, Ljava/io/InputStream;->read([B)I

    .line 206
    .line 207
    .line 208
    move-result v10

    .line 209
    if-ne v10, v9, :cond_a

    .line 210
    .line 211
    add-int/2addr v3, v9

    .line 212
    add-int/lit8 v4, v4, -0x6

    .line 213
    .line 214
    sget-object v9, Lf0/g;->Q:[B

    .line 215
    .line 216
    invoke-static {v7, v9}, Ljava/util/Arrays;->equals([B[B)Z

    .line 217
    .line 218
    .line 219
    move-result v7

    .line 220
    if-eqz v7, :cond_9

    .line 221
    .line 222
    new-array v7, v4, [B

    .line 223
    .line 224
    invoke-virtual {p1, v7}, Ljava/io/InputStream;->read([B)I

    .line 225
    .line 226
    .line 227
    move-result p1

    .line 228
    if-ne p1, v4, :cond_8

    .line 229
    .line 230
    iput v3, p0, Lf0/g;->j:I

    .line 231
    .line 232
    invoke-virtual {p0, v8, v7}, Lf0/g;->s(I[B)V

    .line 233
    .line 234
    .line 235
    goto :goto_2

    .line 236
    :cond_8
    new-instance p1, Ljava/io/IOException;

    .line 237
    .line 238
    const-string v0, "Can\'t read exif"

    .line 239
    .line 240
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    throw p1

    .line 244
    :cond_9
    new-instance p1, Ljava/io/IOException;

    .line 245
    .line 246
    const-string v0, "Invalid identifier"

    .line 247
    .line 248
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    throw p1

    .line 252
    :cond_a
    new-instance p1, Ljava/io/IOException;

    .line 253
    .line 254
    const-string v0, "Can\'t read identifier"

    .line 255
    .line 256
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    throw p1

    .line 260
    :cond_b
    new-instance p1, Ljava/io/IOException;

    .line 261
    .line 262
    const-string v0, "Invalid exif length"

    .line 263
    .line 264
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    throw p1

    .line 268
    :cond_c
    :goto_2
    sget-boolean p1, Lf0/g;->n:Z

    .line 269
    .line 270
    if-eqz p1, :cond_d

    .line 271
    .line 272
    const-string p1, "ExifInterface"

    .line 273
    .line 274
    new-instance v3, Ljava/lang/StringBuilder;

    .line 275
    .line 276
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    const-string v0, "x"

    .line 283
    .line 284
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    const-string v0, ", rotation "

    .line 291
    .line 292
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v0

    .line 302
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 303
    .line 304
    .line 305
    :cond_d
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 306
    .line 307
    .line 308
    return-void

    .line 309
    :catch_0
    :try_start_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 310
    .line 311
    const-string v0, "Failed to read EXIF from HEIF file. Given stream is either malformed or unsupported."

    .line 312
    .line 313
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 317
    :goto_3
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 318
    .line 319
    .line 320
    throw p1

    .line 321
    :cond_e
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 322
    .line 323
    const-string v0, "Reading EXIF from HEIF files is supported from SDK 28 and above"

    .line 324
    .line 325
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 326
    .line 327
    .line 328
    throw p1
.end method

.method public final d(Lf0/b;II)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    .line 7
    const-string v3, "ExifInterface"

    .line 8
    .line 9
    sget-boolean v4, Lf0/g;->n:Z

    .line 10
    .line 11
    if-eqz v4, :cond_0

    .line 12
    .line 13
    new-instance v5, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v6, "getJpegAttributes starting with: "

    .line 16
    .line 17
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    :cond_0
    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 31
    .line 32
    invoke-virtual {v1, v5}, Lf0/b;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Lf0/b;->readByte()B

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    const-string v6, "Invalid marker: "

    .line 40
    .line 41
    const/4 v7, -0x1

    .line 42
    if-ne v5, v7, :cond_18

    .line 43
    .line 44
    invoke-virtual {v1}, Lf0/b;->readByte()B

    .line 45
    .line 46
    .line 47
    move-result v8

    .line 48
    const/16 v9, -0x28

    .line 49
    .line 50
    if-ne v8, v9, :cond_17

    .line 51
    .line 52
    const/4 v5, 0x2

    .line 53
    :goto_0
    invoke-virtual {v1}, Lf0/b;->readByte()B

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    if-ne v6, v7, :cond_16

    .line 58
    .line 59
    invoke-virtual {v1}, Lf0/b;->readByte()B

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    if-eqz v4, :cond_1

    .line 64
    .line 65
    new-instance v8, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string v9, "Found JPEG segment indicator: "

    .line 68
    .line 69
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    and-int/lit16 v9, v6, 0xff

    .line 73
    .line 74
    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v9

    .line 78
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v8

    .line 85
    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    :cond_1
    const/16 v8, -0x27

    .line 89
    .line 90
    if-eq v6, v8, :cond_15

    .line 91
    .line 92
    const/16 v8, -0x26

    .line 93
    .line 94
    if-ne v6, v8, :cond_2

    .line 95
    .line 96
    goto/16 :goto_9

    .line 97
    .line 98
    :cond_2
    invoke-virtual {v1}, Lf0/b;->readUnsignedShort()I

    .line 99
    .line 100
    .line 101
    move-result v8

    .line 102
    add-int/lit8 v9, v8, -0x2

    .line 103
    .line 104
    const/4 v10, 0x4

    .line 105
    add-int/2addr v5, v10

    .line 106
    if-eqz v4, :cond_3

    .line 107
    .line 108
    new-instance v11, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    const-string v12, "JPEG segment: "

    .line 111
    .line 112
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    and-int/lit16 v12, v6, 0xff

    .line 116
    .line 117
    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v12

    .line 121
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    const-string v12, " (length: "

    .line 125
    .line 126
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    const-string v12, ")"

    .line 133
    .line 134
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v11

    .line 141
    invoke-static {v3, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    .line 143
    .line 144
    :cond_3
    const-string v11, "Invalid length"

    .line 145
    .line 146
    if-ltz v9, :cond_14

    .line 147
    .line 148
    const/4 v12, 0x0

    .line 149
    const/16 v13, -0x1f

    .line 150
    .line 151
    iget-object v14, v0, Lf0/g;->f:[Ljava/util/HashMap;

    .line 152
    .line 153
    if-eq v6, v13, :cond_9

    .line 154
    .line 155
    const/4 v13, -0x2

    .line 156
    const/4 v15, 0x1

    .line 157
    if-eq v6, v13, :cond_6

    .line 158
    .line 159
    packed-switch v6, :pswitch_data_0

    .line 160
    .line 161
    .line 162
    packed-switch v6, :pswitch_data_1

    .line 163
    .line 164
    .line 165
    packed-switch v6, :pswitch_data_2

    .line 166
    .line 167
    .line 168
    packed-switch v6, :pswitch_data_3

    .line 169
    .line 170
    .line 171
    goto/16 :goto_8

    .line 172
    .line 173
    :pswitch_0
    invoke-virtual {v1, v15}, Lf0/b;->skipFully(I)V

    .line 174
    .line 175
    .line 176
    aget-object v6, v14, v2

    .line 177
    .line 178
    if-eq v2, v10, :cond_4

    .line 179
    .line 180
    const-string v9, "ImageLength"

    .line 181
    .line 182
    goto :goto_1

    .line 183
    :cond_4
    const-string v9, "ThumbnailImageLength"

    .line 184
    .line 185
    :goto_1
    invoke-virtual {v1}, Lf0/b;->readUnsignedShort()I

    .line 186
    .line 187
    .line 188
    move-result v12

    .line 189
    int-to-long v12, v12

    .line 190
    iget-object v15, v0, Lf0/g;->h:Ljava/nio/ByteOrder;

    .line 191
    .line 192
    invoke-static {v12, v13, v15}, Lf0/c;->createULong(JLjava/nio/ByteOrder;)Lf0/c;

    .line 193
    .line 194
    .line 195
    move-result-object v12

    .line 196
    invoke-virtual {v6, v9, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    aget-object v6, v14, v2

    .line 200
    .line 201
    if-eq v2, v10, :cond_5

    .line 202
    .line 203
    const-string v9, "ImageWidth"

    .line 204
    .line 205
    goto :goto_2

    .line 206
    :cond_5
    const-string v9, "ThumbnailImageWidth"

    .line 207
    .line 208
    :goto_2
    invoke-virtual {v1}, Lf0/b;->readUnsignedShort()I

    .line 209
    .line 210
    .line 211
    move-result v10

    .line 212
    int-to-long v12, v10

    .line 213
    iget-object v10, v0, Lf0/g;->h:Ljava/nio/ByteOrder;

    .line 214
    .line 215
    invoke-static {v12, v13, v10}, Lf0/c;->createULong(JLjava/nio/ByteOrder;)Lf0/c;

    .line 216
    .line 217
    .line 218
    move-result-object v10

    .line 219
    invoke-virtual {v6, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    add-int/lit8 v9, v8, -0x7

    .line 223
    .line 224
    goto/16 :goto_8

    .line 225
    .line 226
    :cond_6
    new-array v6, v9, [B

    .line 227
    .line 228
    invoke-virtual {v1, v6}, Ljava/io/InputStream;->read([B)I

    .line 229
    .line 230
    .line 231
    move-result v8

    .line 232
    if-ne v8, v9, :cond_8

    .line 233
    .line 234
    const-string v8, "UserComment"

    .line 235
    .line 236
    invoke-virtual {v0, v8}, Lf0/g;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v9

    .line 240
    if-nez v9, :cond_7

    .line 241
    .line 242
    aget-object v9, v14, v15

    .line 243
    .line 244
    new-instance v10, Ljava/lang/String;

    .line 245
    .line 246
    sget-object v13, Lf0/g;->P:Ljava/nio/charset/Charset;

    .line 247
    .line 248
    invoke-direct {v10, v6, v13}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 249
    .line 250
    .line 251
    invoke-static {v10}, Lf0/c;->createString(Ljava/lang/String;)Lf0/c;

    .line 252
    .line 253
    .line 254
    move-result-object v6

    .line 255
    invoke-virtual {v9, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    :cond_7
    :goto_3
    move v9, v12

    .line 259
    goto/16 :goto_8

    .line 260
    .line 261
    :cond_8
    new-instance v1, Ljava/io/IOException;

    .line 262
    .line 263
    const-string v2, "Invalid exif"

    .line 264
    .line 265
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    throw v1

    .line 269
    :cond_9
    new-array v6, v9, [B

    .line 270
    .line 271
    invoke-virtual {v1, v6}, Lf0/b;->readFully([B)V

    .line 272
    .line 273
    .line 274
    add-int v8, v5, v9

    .line 275
    .line 276
    sget-object v10, Lf0/g;->Q:[B

    .line 277
    .line 278
    if-nez v10, :cond_a

    .line 279
    .line 280
    goto :goto_5

    .line 281
    :cond_a
    array-length v13, v10

    .line 282
    if-ge v9, v13, :cond_b

    .line 283
    .line 284
    goto :goto_5

    .line 285
    :cond_b
    move v13, v12

    .line 286
    :goto_4
    array-length v15, v10

    .line 287
    if-ge v13, v15, :cond_11

    .line 288
    .line 289
    aget-byte v15, v6, v13

    .line 290
    .line 291
    aget-byte v7, v10, v13

    .line 292
    .line 293
    if-eq v15, v7, :cond_10

    .line 294
    .line 295
    :goto_5
    sget-object v7, Lf0/g;->R:[B

    .line 296
    .line 297
    if-nez v7, :cond_c

    .line 298
    .line 299
    goto :goto_7

    .line 300
    :cond_c
    array-length v10, v7

    .line 301
    if-ge v9, v10, :cond_d

    .line 302
    .line 303
    goto :goto_7

    .line 304
    :cond_d
    move v10, v12

    .line 305
    :goto_6
    array-length v13, v7

    .line 306
    if-ge v10, v13, :cond_f

    .line 307
    .line 308
    aget-byte v13, v6, v10

    .line 309
    .line 310
    aget-byte v15, v7, v10

    .line 311
    .line 312
    if-eq v13, v15, :cond_e

    .line 313
    .line 314
    goto :goto_7

    .line 315
    :cond_e
    add-int/lit8 v10, v10, 0x1

    .line 316
    .line 317
    goto :goto_6

    .line 318
    :cond_f
    array-length v10, v7

    .line 319
    add-int/2addr v5, v10

    .line 320
    array-length v7, v7

    .line 321
    invoke-static {v6, v7, v9}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 322
    .line 323
    .line 324
    move-result-object v6

    .line 325
    const-string v7, "Xmp"

    .line 326
    .line 327
    invoke-virtual {v0, v7}, Lf0/g;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v9

    .line 331
    if-nez v9, :cond_12

    .line 332
    .line 333
    aget-object v9, v14, v12

    .line 334
    .line 335
    new-instance v16, Lf0/c;

    .line 336
    .line 337
    array-length v10, v6

    .line 338
    int-to-long v13, v5

    .line 339
    const/16 v20, 0x1

    .line 340
    .line 341
    move-object/from16 v19, v6

    .line 342
    .line 343
    move/from16 v21, v10

    .line 344
    .line 345
    move-wide/from16 v17, v13

    .line 346
    .line 347
    invoke-direct/range {v16 .. v21}, Lf0/c;-><init>(J[BII)V

    .line 348
    .line 349
    .line 350
    move-object/from16 v5, v16

    .line 351
    .line 352
    invoke-virtual {v9, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    .line 354
    .line 355
    goto :goto_7

    .line 356
    :cond_10
    add-int/lit8 v13, v13, 0x1

    .line 357
    .line 358
    const/4 v7, -0x1

    .line 359
    goto :goto_4

    .line 360
    :cond_11
    array-length v7, v10

    .line 361
    invoke-static {v6, v7, v9}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 362
    .line 363
    .line 364
    move-result-object v6

    .line 365
    add-int v5, p2, v5

    .line 366
    .line 367
    array-length v7, v10

    .line 368
    add-int/2addr v5, v7

    .line 369
    iput v5, v0, Lf0/g;->j:I

    .line 370
    .line 371
    invoke-virtual {v0, v2, v6}, Lf0/g;->s(I[B)V

    .line 372
    .line 373
    .line 374
    new-instance v5, Lf0/b;

    .line 375
    .line 376
    invoke-direct {v5, v6}, Lf0/b;-><init>([B)V

    .line 377
    .line 378
    .line 379
    invoke-virtual {v0, v5}, Lf0/g;->v(Lf0/b;)V

    .line 380
    .line 381
    .line 382
    :cond_12
    :goto_7
    move v5, v8

    .line 383
    goto :goto_3

    .line 384
    :goto_8
    if-ltz v9, :cond_13

    .line 385
    .line 386
    invoke-virtual {v1, v9}, Lf0/b;->skipFully(I)V

    .line 387
    .line 388
    .line 389
    add-int/2addr v5, v9

    .line 390
    const/4 v7, -0x1

    .line 391
    goto/16 :goto_0

    .line 392
    .line 393
    :cond_13
    new-instance v1, Ljava/io/IOException;

    .line 394
    .line 395
    invoke-direct {v1, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 396
    .line 397
    .line 398
    throw v1

    .line 399
    :cond_14
    new-instance v1, Ljava/io/IOException;

    .line 400
    .line 401
    invoke-direct {v1, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 402
    .line 403
    .line 404
    throw v1

    .line 405
    :cond_15
    :goto_9
    iget-object v2, v0, Lf0/g;->h:Ljava/nio/ByteOrder;

    .line 406
    .line 407
    invoke-virtual {v1, v2}, Lf0/b;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 408
    .line 409
    .line 410
    return-void

    .line 411
    :cond_16
    new-instance v1, Ljava/io/IOException;

    .line 412
    .line 413
    new-instance v2, Ljava/lang/StringBuilder;

    .line 414
    .line 415
    const-string v3, "Invalid marker:"

    .line 416
    .line 417
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 418
    .line 419
    .line 420
    and-int/lit16 v3, v6, 0xff

    .line 421
    .line 422
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 423
    .line 424
    .line 425
    move-result-object v3

    .line 426
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    .line 428
    .line 429
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 430
    .line 431
    .line 432
    move-result-object v2

    .line 433
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 434
    .line 435
    .line 436
    throw v1

    .line 437
    :cond_17
    new-instance v1, Ljava/io/IOException;

    .line 438
    .line 439
    new-instance v2, Ljava/lang/StringBuilder;

    .line 440
    .line 441
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 442
    .line 443
    .line 444
    and-int/lit16 v3, v5, 0xff

    .line 445
    .line 446
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 447
    .line 448
    .line 449
    move-result-object v3

    .line 450
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    .line 452
    .line 453
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 454
    .line 455
    .line 456
    move-result-object v2

    .line 457
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 458
    .line 459
    .line 460
    throw v1

    .line 461
    :cond_18
    new-instance v1, Ljava/io/IOException;

    .line 462
    .line 463
    new-instance v2, Ljava/lang/StringBuilder;

    .line 464
    .line 465
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 466
    .line 467
    .line 468
    and-int/lit16 v3, v5, 0xff

    .line 469
    .line 470
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 471
    .line 472
    .line 473
    move-result-object v3

    .line 474
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    .line 476
    .line 477
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 478
    .line 479
    .line 480
    move-result-object v2

    .line 481
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 482
    .line 483
    .line 484
    throw v1

    .line 485
    :pswitch_data_0
    .packed-switch -0x40
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    :pswitch_data_1
    .packed-switch -0x3b
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    :pswitch_data_2
    .packed-switch -0x37
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    :pswitch_data_3
    .packed-switch -0x33
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final e(Ljava/io/BufferedInputStream;)I
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    const/16 v2, 0x1388

    .line 6
    .line 7
    invoke-virtual {v0, v2}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 8
    .line 9
    .line 10
    new-array v3, v2, [B

    .line 11
    .line 12
    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->reset()V

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    :goto_0
    sget-object v5, Lf0/g;->s:[B

    .line 20
    .line 21
    array-length v6, v5

    .line 22
    const/4 v7, 0x4

    .line 23
    if-ge v0, v6, :cond_22

    .line 24
    .line 25
    aget-byte v6, v3, v0

    .line 26
    .line 27
    aget-byte v5, v5, v0

    .line 28
    .line 29
    if-eq v6, v5, :cond_21

    .line 30
    .line 31
    const-string v0, "FUJIFILMCCD-RAW"

    .line 32
    .line 33
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const/4 v5, 0x0

    .line 42
    :goto_1
    array-length v6, v0

    .line 43
    if-ge v5, v6, :cond_20

    .line 44
    .line 45
    aget-byte v6, v3, v5

    .line 46
    .line 47
    aget-byte v8, v0, v5

    .line 48
    .line 49
    if-eq v6, v8, :cond_1f

    .line 50
    .line 51
    const/4 v6, 0x0

    .line 52
    :try_start_0
    new-instance v8, Lf0/b;

    .line 53
    .line 54
    invoke-direct {v8, v3}, Lf0/b;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 55
    .line 56
    .line 57
    :try_start_1
    invoke-virtual {v8}, Lf0/b;->readInt()I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    int-to-long v9, v0

    .line 62
    new-array v0, v7, [B

    .line 63
    .line 64
    invoke-virtual {v8, v0}, Ljava/io/InputStream;->read([B)I

    .line 65
    .line 66
    .line 67
    sget-object v11, Lf0/g;->t:[B

    .line 68
    .line 69
    invoke-static {v0, v11}, Ljava/util/Arrays;->equals([B[B)Z

    .line 70
    .line 71
    .line 72
    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    if-nez v0, :cond_0

    .line 74
    .line 75
    :goto_2
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 76
    .line 77
    .line 78
    const/16 p1, 0x0

    .line 79
    .line 80
    goto/16 :goto_a

    .line 81
    .line 82
    :cond_0
    const-wide/16 v11, 0x1

    .line 83
    .line 84
    cmp-long v0, v9, v11

    .line 85
    .line 86
    const-wide/16 v13, 0x8

    .line 87
    .line 88
    if-nez v0, :cond_2

    .line 89
    .line 90
    :try_start_2
    invoke-virtual {v8}, Lf0/b;->readLong()J

    .line 91
    .line 92
    .line 93
    move-result-wide v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 94
    const-wide/16 v15, 0x10

    .line 95
    .line 96
    cmp-long v0, v9, v15

    .line 97
    .line 98
    if-gez v0, :cond_1

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_1
    :goto_3
    const/16 p1, 0x0

    .line 102
    .line 103
    goto :goto_4

    .line 104
    :catchall_0
    move-exception v0

    .line 105
    move-object v6, v8

    .line 106
    goto/16 :goto_1a

    .line 107
    .line 108
    :catch_0
    move-exception v0

    .line 109
    const/16 p1, 0x0

    .line 110
    .line 111
    goto :goto_9

    .line 112
    :cond_2
    move-wide v15, v13

    .line 113
    goto :goto_3

    .line 114
    :goto_4
    int-to-long v4, v2

    .line 115
    cmp-long v0, v9, v4

    .line 116
    .line 117
    if-lez v0, :cond_3

    .line 118
    .line 119
    move-wide v9, v4

    .line 120
    :cond_3
    sub-long/2addr v9, v15

    .line 121
    cmp-long v0, v9, v13

    .line 122
    .line 123
    if-gez v0, :cond_5

    .line 124
    .line 125
    :cond_4
    :goto_5
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 126
    .line 127
    .line 128
    goto :goto_a

    .line 129
    :cond_5
    :try_start_3
    new-array v0, v7, [B

    .line 130
    .line 131
    const-wide/16 v4, 0x0

    .line 132
    .line 133
    move/from16 v2, p1

    .line 134
    .line 135
    move v13, v2

    .line 136
    :goto_6
    const-wide/16 v14, 0x4

    .line 137
    .line 138
    div-long v14, v9, v14

    .line 139
    .line 140
    cmp-long v14, v4, v14

    .line 141
    .line 142
    if-gez v14, :cond_4

    .line 143
    .line 144
    invoke-virtual {v8, v0}, Ljava/io/InputStream;->read([B)I

    .line 145
    .line 146
    .line 147
    move-result v14

    .line 148
    if-eq v14, v7, :cond_6

    .line 149
    .line 150
    goto :goto_5

    .line 151
    :cond_6
    cmp-long v14, v4, v11

    .line 152
    .line 153
    if-nez v14, :cond_7

    .line 154
    .line 155
    goto :goto_8

    .line 156
    :cond_7
    sget-object v14, Lf0/g;->u:[B

    .line 157
    .line 158
    invoke-static {v0, v14}, Ljava/util/Arrays;->equals([B[B)Z

    .line 159
    .line 160
    .line 161
    move-result v14

    .line 162
    if-eqz v14, :cond_8

    .line 163
    .line 164
    const/4 v2, 0x1

    .line 165
    goto :goto_7

    .line 166
    :cond_8
    sget-object v14, Lf0/g;->v:[B

    .line 167
    .line 168
    invoke-static {v0, v14}, Ljava/util/Arrays;->equals([B[B)Z

    .line 169
    .line 170
    .line 171
    move-result v14
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 172
    if-eqz v14, :cond_9

    .line 173
    .line 174
    const/4 v13, 0x1

    .line 175
    :cond_9
    :goto_7
    if-eqz v2, :cond_a

    .line 176
    .line 177
    if-eqz v13, :cond_a

    .line 178
    .line 179
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 180
    .line 181
    .line 182
    const/16 v0, 0xc

    .line 183
    .line 184
    return v0

    .line 185
    :cond_a
    :goto_8
    add-long/2addr v4, v11

    .line 186
    goto :goto_6

    .line 187
    :catch_1
    move-exception v0

    .line 188
    goto :goto_9

    .line 189
    :catchall_1
    move-exception v0

    .line 190
    goto/16 :goto_1a

    .line 191
    .line 192
    :catch_2
    move-exception v0

    .line 193
    const/16 p1, 0x0

    .line 194
    .line 195
    move-object v8, v6

    .line 196
    :goto_9
    :try_start_4
    sget-boolean v2, Lf0/g;->n:Z

    .line 197
    .line 198
    if-eqz v2, :cond_b

    .line 199
    .line 200
    const-string v2, "ExifInterface"

    .line 201
    .line 202
    const-string v4, "Exception parsing HEIF file type box."

    .line 203
    .line 204
    invoke-static {v2, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 205
    .line 206
    .line 207
    :cond_b
    if-eqz v8, :cond_c

    .line 208
    .line 209
    goto :goto_5

    .line 210
    :cond_c
    :goto_a
    :try_start_5
    new-instance v2, Lf0/b;

    .line 211
    .line 212
    invoke-direct {v2, v3}, Lf0/b;-><init>([B)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 213
    .line 214
    .line 215
    :try_start_6
    invoke-static {v2}, Lf0/g;->r(Lf0/b;)Ljava/nio/ByteOrder;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    iput-object v0, v1, Lf0/g;->h:Ljava/nio/ByteOrder;

    .line 220
    .line 221
    invoke-virtual {v2, v0}, Lf0/b;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v2}, Lf0/b;->readShort()S

    .line 225
    .line 226
    .line 227
    move-result v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 228
    const/16 v4, 0x4f52

    .line 229
    .line 230
    if-eq v0, v4, :cond_e

    .line 231
    .line 232
    const/16 v4, 0x5352

    .line 233
    .line 234
    if-ne v0, v4, :cond_d

    .line 235
    .line 236
    goto :goto_b

    .line 237
    :cond_d
    move/from16 v0, p1

    .line 238
    .line 239
    goto :goto_c

    .line 240
    :cond_e
    :goto_b
    const/4 v0, 0x1

    .line 241
    :goto_c
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 242
    .line 243
    .line 244
    goto :goto_f

    .line 245
    :catchall_2
    move-exception v0

    .line 246
    move-object v6, v2

    .line 247
    goto :goto_d

    .line 248
    :catchall_3
    move-exception v0

    .line 249
    goto :goto_d

    .line 250
    :catch_3
    move-object v2, v6

    .line 251
    goto :goto_e

    .line 252
    :goto_d
    if-eqz v6, :cond_f

    .line 253
    .line 254
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 255
    .line 256
    .line 257
    :cond_f
    throw v0

    .line 258
    :catch_4
    :goto_e
    if-eqz v2, :cond_10

    .line 259
    .line 260
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 261
    .line 262
    .line 263
    :cond_10
    move/from16 v0, p1

    .line 264
    .line 265
    :goto_f
    if-eqz v0, :cond_11

    .line 266
    .line 267
    const/4 v0, 0x7

    .line 268
    return v0

    .line 269
    :cond_11
    :try_start_7
    new-instance v2, Lf0/b;

    .line 270
    .line 271
    invoke-direct {v2, v3}, Lf0/b;-><init>([B)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 272
    .line 273
    .line 274
    :try_start_8
    invoke-static {v2}, Lf0/g;->r(Lf0/b;)Ljava/nio/ByteOrder;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    iput-object v0, v1, Lf0/g;->h:Ljava/nio/ByteOrder;

    .line 279
    .line 280
    invoke-virtual {v2, v0}, Lf0/b;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v2}, Lf0/b;->readShort()S

    .line 284
    .line 285
    .line 286
    move-result v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 287
    const/16 v4, 0x55

    .line 288
    .line 289
    if-ne v0, v4, :cond_12

    .line 290
    .line 291
    const/4 v0, 0x1

    .line 292
    goto :goto_10

    .line 293
    :cond_12
    move/from16 v0, p1

    .line 294
    .line 295
    :goto_10
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 296
    .line 297
    .line 298
    goto :goto_13

    .line 299
    :catchall_4
    move-exception v0

    .line 300
    move-object v6, v2

    .line 301
    goto :goto_11

    .line 302
    :catch_5
    move-object v6, v2

    .line 303
    goto :goto_12

    .line 304
    :catchall_5
    move-exception v0

    .line 305
    :goto_11
    if-eqz v6, :cond_13

    .line 306
    .line 307
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 308
    .line 309
    .line 310
    :cond_13
    throw v0

    .line 311
    :catch_6
    :goto_12
    if-eqz v6, :cond_14

    .line 312
    .line 313
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 314
    .line 315
    .line 316
    :cond_14
    move/from16 v0, p1

    .line 317
    .line 318
    :goto_13
    if-eqz v0, :cond_15

    .line 319
    .line 320
    const/16 v0, 0xa

    .line 321
    .line 322
    return v0

    .line 323
    :cond_15
    move/from16 v0, p1

    .line 324
    .line 325
    :goto_14
    sget-object v2, Lf0/g;->y:[B

    .line 326
    .line 327
    array-length v4, v2

    .line 328
    if-ge v0, v4, :cond_17

    .line 329
    .line 330
    aget-byte v4, v3, v0

    .line 331
    .line 332
    aget-byte v2, v2, v0

    .line 333
    .line 334
    if-eq v4, v2, :cond_16

    .line 335
    .line 336
    move/from16 v0, p1

    .line 337
    .line 338
    goto :goto_15

    .line 339
    :cond_16
    add-int/lit8 v0, v0, 0x1

    .line 340
    .line 341
    goto :goto_14

    .line 342
    :cond_17
    const/4 v0, 0x1

    .line 343
    :goto_15
    if-eqz v0, :cond_18

    .line 344
    .line 345
    const/16 v0, 0xd

    .line 346
    .line 347
    return v0

    .line 348
    :cond_18
    move/from16 v0, p1

    .line 349
    .line 350
    :goto_16
    sget-object v2, Lf0/g;->C:[B

    .line 351
    .line 352
    array-length v4, v2

    .line 353
    if-ge v0, v4, :cond_1a

    .line 354
    .line 355
    aget-byte v4, v3, v0

    .line 356
    .line 357
    aget-byte v2, v2, v0

    .line 358
    .line 359
    if-eq v4, v2, :cond_19

    .line 360
    .line 361
    :goto_17
    move/from16 v5, p1

    .line 362
    .line 363
    goto :goto_19

    .line 364
    :cond_19
    add-int/lit8 v0, v0, 0x1

    .line 365
    .line 366
    goto :goto_16

    .line 367
    :cond_1a
    move/from16 v0, p1

    .line 368
    .line 369
    :goto_18
    sget-object v4, Lf0/g;->D:[B

    .line 370
    .line 371
    array-length v5, v4

    .line 372
    if-ge v0, v5, :cond_1c

    .line 373
    .line 374
    array-length v5, v2

    .line 375
    add-int/2addr v5, v0

    .line 376
    add-int/2addr v5, v7

    .line 377
    aget-byte v5, v3, v5

    .line 378
    .line 379
    aget-byte v4, v4, v0

    .line 380
    .line 381
    if-eq v5, v4, :cond_1b

    .line 382
    .line 383
    goto :goto_17

    .line 384
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    .line 385
    .line 386
    goto :goto_18

    .line 387
    :cond_1c
    const/4 v5, 0x1

    .line 388
    :goto_19
    if-eqz v5, :cond_1d

    .line 389
    .line 390
    const/16 v0, 0xe

    .line 391
    .line 392
    return v0

    .line 393
    :cond_1d
    return p1

    .line 394
    :goto_1a
    if-eqz v6, :cond_1e

    .line 395
    .line 396
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 397
    .line 398
    .line 399
    :cond_1e
    throw v0

    .line 400
    :cond_1f
    const/16 p1, 0x0

    .line 401
    .line 402
    add-int/lit8 v5, v5, 0x1

    .line 403
    .line 404
    goto/16 :goto_1

    .line 405
    .line 406
    :cond_20
    const/16 v0, 0x9

    .line 407
    .line 408
    return v0

    .line 409
    :cond_21
    const/16 p1, 0x0

    .line 410
    .line 411
    add-int/lit8 v0, v0, 0x1

    .line 412
    .line 413
    goto/16 :goto_0

    .line 414
    .line 415
    :cond_22
    return v7
.end method

.method public final f(Lf0/f;)V
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lf0/g;->i(Lf0/f;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lf0/g;->f:[Ljava/util/HashMap;

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    aget-object v1, p1, v0

    .line 8
    .line 9
    const-string v2, "MakerNote"

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lf0/c;

    .line 16
    .line 17
    if-eqz v1, :cond_6

    .line 18
    .line 19
    new-instance v2, Lf0/f;

    .line 20
    .line 21
    iget-object v1, v1, Lf0/c;->d:[B

    .line 22
    .line 23
    invoke-direct {v2, v1}, Lf0/f;-><init>([B)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lf0/g;->h:Ljava/nio/ByteOrder;

    .line 27
    .line 28
    invoke-virtual {v2, v1}, Lf0/b;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 29
    .line 30
    .line 31
    sget-object v1, Lf0/g;->w:[B

    .line 32
    .line 33
    array-length v3, v1

    .line 34
    new-array v3, v3, [B

    .line 35
    .line 36
    invoke-virtual {v2, v3}, Lf0/b;->readFully([B)V

    .line 37
    .line 38
    .line 39
    const-wide/16 v4, 0x0

    .line 40
    .line 41
    invoke-virtual {v2, v4, v5}, Lf0/f;->seek(J)V

    .line 42
    .line 43
    .line 44
    sget-object v4, Lf0/g;->x:[B

    .line 45
    .line 46
    array-length v5, v4

    .line 47
    new-array v5, v5, [B

    .line 48
    .line 49
    invoke-virtual {v2, v5}, Lf0/b;->readFully([B)V

    .line 50
    .line 51
    .line 52
    invoke-static {v3, v1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_0

    .line 57
    .line 58
    const-wide/16 v3, 0x8

    .line 59
    .line 60
    invoke-virtual {v2, v3, v4}, Lf0/f;->seek(J)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    invoke-static {v5, v4}, Ljava/util/Arrays;->equals([B[B)Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-eqz v1, :cond_1

    .line 69
    .line 70
    const-wide/16 v3, 0xc

    .line 71
    .line 72
    invoke-virtual {v2, v3, v4}, Lf0/f;->seek(J)V

    .line 73
    .line 74
    .line 75
    :cond_1
    :goto_0
    const/4 v1, 0x6

    .line 76
    invoke-virtual {p0, v2, v1}, Lf0/g;->t(Lf0/f;I)V

    .line 77
    .line 78
    .line 79
    const/4 v1, 0x7

    .line 80
    aget-object v2, p1, v1

    .line 81
    .line 82
    const-string v3, "PreviewImageStart"

    .line 83
    .line 84
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    check-cast v2, Lf0/c;

    .line 89
    .line 90
    aget-object v1, p1, v1

    .line 91
    .line 92
    const-string v3, "PreviewImageLength"

    .line 93
    .line 94
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    check-cast v1, Lf0/c;

    .line 99
    .line 100
    if-eqz v2, :cond_2

    .line 101
    .line 102
    if-eqz v1, :cond_2

    .line 103
    .line 104
    const/4 v3, 0x5

    .line 105
    aget-object v4, p1, v3

    .line 106
    .line 107
    const-string v5, "JPEGInterchangeFormat"

    .line 108
    .line 109
    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    aget-object v2, p1, v3

    .line 113
    .line 114
    const-string v3, "JPEGInterchangeFormatLength"

    .line 115
    .line 116
    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    :cond_2
    const/16 v1, 0x8

    .line 120
    .line 121
    aget-object v1, p1, v1

    .line 122
    .line 123
    const-string v2, "AspectFrame"

    .line 124
    .line 125
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    check-cast v1, Lf0/c;

    .line 130
    .line 131
    if-eqz v1, :cond_6

    .line 132
    .line 133
    iget-object v2, p0, Lf0/g;->h:Ljava/nio/ByteOrder;

    .line 134
    .line 135
    invoke-virtual {v1, v2}, Lf0/c;->a(Ljava/nio/ByteOrder;)Ljava/io/Serializable;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    check-cast v1, [I

    .line 140
    .line 141
    if-eqz v1, :cond_5

    .line 142
    .line 143
    array-length v2, v1

    .line 144
    const/4 v3, 0x4

    .line 145
    if-eq v2, v3, :cond_3

    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_3
    const/4 v2, 0x2

    .line 149
    aget v2, v1, v2

    .line 150
    .line 151
    const/4 v3, 0x0

    .line 152
    aget v4, v1, v3

    .line 153
    .line 154
    if-le v2, v4, :cond_6

    .line 155
    .line 156
    const/4 v5, 0x3

    .line 157
    aget v5, v1, v5

    .line 158
    .line 159
    aget v1, v1, v0

    .line 160
    .line 161
    if-le v5, v1, :cond_6

    .line 162
    .line 163
    sub-int/2addr v2, v4

    .line 164
    add-int/2addr v2, v0

    .line 165
    sub-int/2addr v5, v1

    .line 166
    add-int/2addr v5, v0

    .line 167
    if-ge v2, v5, :cond_4

    .line 168
    .line 169
    add-int/2addr v2, v5

    .line 170
    sub-int v5, v2, v5

    .line 171
    .line 172
    sub-int/2addr v2, v5

    .line 173
    :cond_4
    iget-object v0, p0, Lf0/g;->h:Ljava/nio/ByteOrder;

    .line 174
    .line 175
    invoke-static {v2, v0}, Lf0/c;->createUShort(ILjava/nio/ByteOrder;)Lf0/c;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    iget-object v1, p0, Lf0/g;->h:Ljava/nio/ByteOrder;

    .line 180
    .line 181
    invoke-static {v5, v1}, Lf0/c;->createUShort(ILjava/nio/ByteOrder;)Lf0/c;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    aget-object v2, p1, v3

    .line 186
    .line 187
    const-string v4, "ImageWidth"

    .line 188
    .line 189
    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    aget-object p1, p1, v3

    .line 193
    .line 194
    const-string v0, "ImageLength"

    .line 195
    .line 196
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    return-void

    .line 200
    :cond_5
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 201
    .line 202
    const-string v0, "Invalid aspect frame values. frame="

    .line 203
    .line 204
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    const-string v0, "ExifInterface"

    .line 219
    .line 220
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    .line 222
    .line 223
    :cond_6
    return-void
.end method

.method public final g(Lf0/b;)V
    .locals 5

    .line 1
    sget-boolean v0, Lf0/g;->n:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, "getPngAttributes starting with: "

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "ExifInterface"

    .line 20
    .line 21
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Lf0/b;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 27
    .line 28
    .line 29
    sget-object v0, Lf0/g;->y:[B

    .line 30
    .line 31
    array-length v1, v0

    .line 32
    invoke-virtual {p1, v1}, Lf0/b;->skipFully(I)V

    .line 33
    .line 34
    .line 35
    array-length v0, v0

    .line 36
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lf0/b;->readInt()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    const/4 v2, 0x4

    .line 41
    new-array v3, v2, [B

    .line 42
    .line 43
    invoke-virtual {p1, v3}, Ljava/io/InputStream;->read([B)I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-ne v4, v2, :cond_7

    .line 48
    .line 49
    add-int/lit8 v0, v0, 0x8

    .line 50
    .line 51
    const/16 v2, 0x10

    .line 52
    .line 53
    if-ne v0, v2, :cond_2

    .line 54
    .line 55
    sget-object v2, Lf0/g;->A:[B

    .line 56
    .line 57
    invoke-static {v3, v2}, Ljava/util/Arrays;->equals([B[B)Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-eqz v2, :cond_1

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_1
    new-instance p1, Ljava/io/IOException;

    .line 65
    .line 66
    const-string v0, "Encountered invalid PNG file--IHDR chunk should appearas the first chunk"

    .line 67
    .line 68
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw p1

    .line 72
    :cond_2
    :goto_1
    sget-object v2, Lf0/g;->B:[B

    .line 73
    .line 74
    invoke-static {v3, v2}, Ljava/util/Arrays;->equals([B[B)Z

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-eqz v2, :cond_3

    .line 79
    .line 80
    return-void

    .line 81
    :cond_3
    sget-object v2, Lf0/g;->z:[B

    .line 82
    .line 83
    invoke-static {v3, v2}, Ljava/util/Arrays;->equals([B[B)Z

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    if-eqz v2, :cond_6

    .line 88
    .line 89
    new-array v2, v1, [B

    .line 90
    .line 91
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    .line 92
    .line 93
    .line 94
    move-result v4

    .line 95
    if-ne v4, v1, :cond_5

    .line 96
    .line 97
    invoke-virtual {p1}, Lf0/b;->readInt()I

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    new-instance v1, Ljava/util/zip/CRC32;

    .line 102
    .line 103
    invoke-direct {v1}, Ljava/util/zip/CRC32;-><init>()V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1, v3}, Ljava/util/zip/CRC32;->update([B)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1, v2}, Ljava/util/zip/CRC32;->update([B)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    .line 113
    .line 114
    .line 115
    move-result-wide v3

    .line 116
    long-to-int v3, v3

    .line 117
    if-ne v3, p1, :cond_4

    .line 118
    .line 119
    iput v0, p0, Lf0/g;->j:I

    .line 120
    .line 121
    const/4 p1, 0x0

    .line 122
    invoke-virtual {p0, p1, v2}, Lf0/g;->s(I[B)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0}, Lf0/g;->y()V

    .line 126
    .line 127
    .line 128
    new-instance p1, Lf0/b;

    .line 129
    .line 130
    invoke-direct {p1, v2}, Lf0/b;-><init>([B)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0, p1}, Lf0/g;->v(Lf0/b;)V

    .line 134
    .line 135
    .line 136
    return-void

    .line 137
    :cond_4
    new-instance v0, Ljava/io/IOException;

    .line 138
    .line 139
    new-instance v2, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    .line 143
    .line 144
    const-string v3, "Encountered invalid CRC value for PNG-EXIF chunk.\n recorded CRC value: "

    .line 145
    .line 146
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    const-string p1, ", calculated CRC value: "

    .line 153
    .line 154
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    .line 158
    .line 159
    .line 160
    move-result-wide v3

    .line 161
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    throw v0

    .line 172
    :cond_5
    new-instance p1, Ljava/io/IOException;

    .line 173
    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    .line 175
    .line 176
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    .line 178
    .line 179
    const-string v1, "Failed to read given length for given PNG chunk type: "

    .line 180
    .line 181
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-static {v3}, La/c;->a([B)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    throw p1

    .line 199
    :cond_6
    add-int/lit8 v1, v1, 0x4

    .line 200
    .line 201
    invoke-virtual {p1, v1}, Lf0/b;->skipFully(I)V

    .line 202
    .line 203
    .line 204
    add-int/2addr v0, v1

    .line 205
    goto/16 :goto_0

    .line 206
    .line 207
    :cond_7
    new-instance p1, Ljava/io/IOException;

    .line 208
    .line 209
    const-string v0, "Encountered invalid length while parsing PNG chunktype"

    .line 210
    .line 211
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    throw p1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    :catch_0
    new-instance p1, Ljava/io/IOException;

    .line 216
    .line 217
    const-string v0, "Encountered corrupt PNG file."

    .line 218
    .line 219
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    throw p1
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x3

    .line 5
    if-eqz p1, :cond_6

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lf0/g;->b(Ljava/lang/String;)Lf0/c;

    .line 8
    .line 9
    .line 10
    move-result-object v4

    .line 11
    const/4 v5, 0x0

    .line 12
    if-eqz v4, :cond_5

    .line 13
    .line 14
    sget-object v6, Lf0/g;->N:Ljava/util/HashSet;

    .line 15
    .line 16
    invoke-virtual {v6, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v6

    .line 20
    if-nez v6, :cond_0

    .line 21
    .line 22
    iget-object p1, p0, Lf0/g;->h:Ljava/nio/ByteOrder;

    .line 23
    .line 24
    invoke-virtual {v4, p1}, Lf0/c;->getStringValue(Ljava/nio/ByteOrder;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    return-object p1

    .line 29
    :cond_0
    const-string v6, "GPSTimeStamp"

    .line 30
    .line 31
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_4

    .line 36
    .line 37
    const/4 p1, 0x5

    .line 38
    const-string v6, "ExifInterface"

    .line 39
    .line 40
    iget v7, v4, Lf0/c;->a:I

    .line 41
    .line 42
    if-eq v7, p1, :cond_1

    .line 43
    .line 44
    const/16 p1, 0xa

    .line 45
    .line 46
    if-eq v7, p1, :cond_1

    .line 47
    .line 48
    new-instance p1, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string v0, "GPS Timestamp format is not rational. format="

    .line 51
    .line 52
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-static {v6, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    return-object v5

    .line 66
    :cond_1
    iget-object p1, p0, Lf0/g;->h:Ljava/nio/ByteOrder;

    .line 67
    .line 68
    invoke-virtual {v4, p1}, Lf0/c;->a(Ljava/nio/ByteOrder;)Ljava/io/Serializable;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    check-cast p1, [Lf0/e;

    .line 73
    .line 74
    if-eqz p1, :cond_3

    .line 75
    .line 76
    array-length v4, p1

    .line 77
    if-eq v4, v3, :cond_2

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_2
    aget-object v4, p1, v2

    .line 81
    .line 82
    iget-wide v5, v4, Lf0/e;->a:J

    .line 83
    .line 84
    long-to-float v5, v5

    .line 85
    iget-wide v6, v4, Lf0/e;->b:J

    .line 86
    .line 87
    long-to-float v4, v6

    .line 88
    div-float/2addr v5, v4

    .line 89
    float-to-int v4, v5

    .line 90
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    aget-object v5, p1, v1

    .line 95
    .line 96
    iget-wide v6, v5, Lf0/e;->a:J

    .line 97
    .line 98
    long-to-float v6, v6

    .line 99
    iget-wide v7, v5, Lf0/e;->b:J

    .line 100
    .line 101
    long-to-float v5, v7

    .line 102
    div-float/2addr v6, v5

    .line 103
    float-to-int v5, v6

    .line 104
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 105
    .line 106
    .line 107
    move-result-object v5

    .line 108
    aget-object p1, p1, v0

    .line 109
    .line 110
    iget-wide v6, p1, Lf0/e;->a:J

    .line 111
    .line 112
    long-to-float v6, v6

    .line 113
    iget-wide v7, p1, Lf0/e;->b:J

    .line 114
    .line 115
    long-to-float p1, v7

    .line 116
    div-float/2addr v6, p1

    .line 117
    float-to-int p1, v6

    .line 118
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    new-array v3, v3, [Ljava/lang/Object;

    .line 123
    .line 124
    aput-object v4, v3, v2

    .line 125
    .line 126
    aput-object v5, v3, v1

    .line 127
    .line 128
    aput-object p1, v3, v0

    .line 129
    .line 130
    const-string p1, "%02d:%02d:%02d"

    .line 131
    .line 132
    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    return-object p1

    .line 137
    :cond_3
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    const-string v1, "Invalid GPS Timestamp array. array="

    .line 140
    .line 141
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    invoke-static {v6, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    .line 157
    .line 158
    return-object v5

    .line 159
    :cond_4
    :try_start_0
    iget-object p1, p0, Lf0/g;->h:Ljava/nio/ByteOrder;

    .line 160
    .line 161
    invoke-virtual {v4, p1}, Lf0/c;->getDoubleValue(Ljava/nio/ByteOrder;)D

    .line 162
    .line 163
    .line 164
    move-result-wide v0

    .line 165
    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    return-object p1

    .line 170
    :catch_0
    :cond_5
    return-object v5

    .line 171
    :cond_6
    new-instance p1, Ljava/lang/NullPointerException;

    .line 172
    .line 173
    const-string v0, "tag shouldn\'t be null"

    .line 174
    .line 175
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    throw p1
.end method

.method public getAttributeInt(Ljava/lang/String;I)I
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lf0/g;->b(Ljava/lang/String;)Lf0/c;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    :try_start_0
    iget-object v0, p0, Lf0/g;->h:Ljava/nio/ByteOrder;

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Lf0/c;->getIntValue(Ljava/nio/ByteOrder;)I

    .line 13
    .line 14
    .line 15
    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    return p1

    .line 17
    :catch_0
    :goto_0
    return p2

    .line 18
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    .line 19
    .line 20
    const-string p2, "tag shouldn\'t be null"

    .line 21
    .line 22
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p1
.end method

.method public getRotationDegrees()I
    .locals 2

    .line 1
    const-string v0, "Orientation"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Lf0/g;->getAttributeInt(Ljava/lang/String;I)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return v0

    .line 13
    :pswitch_0
    const/16 v0, 0x5a

    .line 14
    .line 15
    return v0

    .line 16
    :pswitch_1
    const/16 v0, 0x10e

    .line 17
    .line 18
    return v0

    .line 19
    :pswitch_2
    const/16 v0, 0xb4

    .line 20
    .line 21
    return v0

    .line 22
    nop

    .line 23
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final h(Lf0/b;)V
    .locals 9

    .line 1
    const-string v0, "ExifInterface"

    .line 2
    .line 3
    sget-boolean v1, Lf0/g;->n:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v3, "getRafAttributes starting with: "

    .line 10
    .line 11
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    const/16 v2, 0x54

    .line 25
    .line 26
    invoke-virtual {p1, v2}, Lf0/b;->skipFully(I)V

    .line 27
    .line 28
    .line 29
    const/4 v2, 0x4

    .line 30
    new-array v3, v2, [B

    .line 31
    .line 32
    new-array v4, v2, [B

    .line 33
    .line 34
    new-array v2, v2, [B

    .line 35
    .line 36
    invoke-virtual {p1, v3}, Ljava/io/InputStream;->read([B)I

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v4}, Ljava/io/InputStream;->read([B)I

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    .line 43
    .line 44
    .line 45
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getInt()I

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    new-array v4, v4, [B

    .line 70
    .line 71
    invoke-virtual {p1}, Lf0/b;->position()I

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    sub-int v5, v3, v5

    .line 76
    .line 77
    invoke-virtual {p1, v5}, Lf0/b;->skipFully(I)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, v4}, Ljava/io/InputStream;->read([B)I

    .line 81
    .line 82
    .line 83
    new-instance v5, Lf0/b;

    .line 84
    .line 85
    invoke-direct {v5, v4}, Lf0/b;-><init>([B)V

    .line 86
    .line 87
    .line 88
    const/4 v4, 0x5

    .line 89
    invoke-virtual {p0, v5, v3, v4}, Lf0/g;->d(Lf0/b;II)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1}, Lf0/b;->position()I

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    sub-int/2addr v2, v3

    .line 97
    invoke-virtual {p1, v2}, Lf0/b;->skipFully(I)V

    .line 98
    .line 99
    .line 100
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 101
    .line 102
    invoke-virtual {p1, v2}, Lf0/b;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1}, Lf0/b;->readInt()I

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    if-eqz v1, :cond_1

    .line 110
    .line 111
    new-instance v3, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    const-string v4, "numberOfDirectoryEntry: "

    .line 114
    .line 115
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    .line 127
    .line 128
    :cond_1
    const/4 v3, 0x0

    .line 129
    move v4, v3

    .line 130
    :goto_0
    if-ge v4, v2, :cond_3

    .line 131
    .line 132
    invoke-virtual {p1}, Lf0/b;->readUnsignedShort()I

    .line 133
    .line 134
    .line 135
    move-result v5

    .line 136
    invoke-virtual {p1}, Lf0/b;->readUnsignedShort()I

    .line 137
    .line 138
    .line 139
    move-result v6

    .line 140
    sget-object v7, Lf0/g;->I:Lf0/d;

    .line 141
    .line 142
    iget v7, v7, Lf0/d;->a:I

    .line 143
    .line 144
    if-ne v5, v7, :cond_2

    .line 145
    .line 146
    invoke-virtual {p1}, Lf0/b;->readShort()S

    .line 147
    .line 148
    .line 149
    move-result v2

    .line 150
    invoke-virtual {p1}, Lf0/b;->readShort()S

    .line 151
    .line 152
    .line 153
    move-result p1

    .line 154
    iget-object v4, p0, Lf0/g;->h:Ljava/nio/ByteOrder;

    .line 155
    .line 156
    invoke-static {v2, v4}, Lf0/c;->createUShort(ILjava/nio/ByteOrder;)Lf0/c;

    .line 157
    .line 158
    .line 159
    move-result-object v4

    .line 160
    iget-object v5, p0, Lf0/g;->h:Ljava/nio/ByteOrder;

    .line 161
    .line 162
    invoke-static {p1, v5}, Lf0/c;->createUShort(ILjava/nio/ByteOrder;)Lf0/c;

    .line 163
    .line 164
    .line 165
    move-result-object v5

    .line 166
    iget-object v6, p0, Lf0/g;->f:[Ljava/util/HashMap;

    .line 167
    .line 168
    aget-object v7, v6, v3

    .line 169
    .line 170
    const-string v8, "ImageLength"

    .line 171
    .line 172
    invoke-virtual {v7, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    aget-object v3, v6, v3

    .line 176
    .line 177
    const-string v4, "ImageWidth"

    .line 178
    .line 179
    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    if-eqz v1, :cond_3

    .line 183
    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    .line 185
    .line 186
    const-string v3, "Updated to length: "

    .line 187
    .line 188
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    const-string v2, ", width: "

    .line 195
    .line 196
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    .line 208
    .line 209
    return-void

    .line 210
    :cond_2
    invoke-virtual {p1, v6}, Lf0/b;->skipFully(I)V

    .line 211
    .line 212
    .line 213
    add-int/lit8 v4, v4, 0x1

    .line 214
    .line 215
    goto :goto_0

    .line 216
    :cond_3
    return-void
.end method

.method public final i(Lf0/f;)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lf0/g;->p(Lf0/f;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, p1, v0}, Lf0/g;->t(Lf0/f;I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1, v0}, Lf0/g;->x(Lf0/f;I)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x5

    .line 12
    invoke-virtual {p0, p1, v0}, Lf0/g;->x(Lf0/f;I)V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x4

    .line 16
    invoke-virtual {p0, p1, v0}, Lf0/g;->x(Lf0/f;I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lf0/g;->y()V

    .line 20
    .line 21
    .line 22
    iget p1, p0, Lf0/g;->d:I

    .line 23
    .line 24
    const/16 v0, 0x8

    .line 25
    .line 26
    if-ne p1, v0, :cond_0

    .line 27
    .line 28
    iget-object p1, p0, Lf0/g;->f:[Ljava/util/HashMap;

    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    aget-object v1, p1, v0

    .line 32
    .line 33
    const-string v2, "MakerNote"

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Lf0/c;

    .line 40
    .line 41
    if-eqz v1, :cond_0

    .line 42
    .line 43
    new-instance v2, Lf0/f;

    .line 44
    .line 45
    iget-object v1, v1, Lf0/c;->d:[B

    .line 46
    .line 47
    invoke-direct {v2, v1}, Lf0/f;-><init>([B)V

    .line 48
    .line 49
    .line 50
    iget-object v1, p0, Lf0/g;->h:Ljava/nio/ByteOrder;

    .line 51
    .line 52
    invoke-virtual {v2, v1}, Lf0/b;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 53
    .line 54
    .line 55
    const/4 v1, 0x6

    .line 56
    invoke-virtual {v2, v1}, Lf0/b;->skipFully(I)V

    .line 57
    .line 58
    .line 59
    const/16 v1, 0x9

    .line 60
    .line 61
    invoke-virtual {p0, v2, v1}, Lf0/g;->t(Lf0/f;I)V

    .line 62
    .line 63
    .line 64
    aget-object v1, p1, v1

    .line 65
    .line 66
    const-string v2, "ColorSpace"

    .line 67
    .line 68
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    check-cast v1, Lf0/c;

    .line 73
    .line 74
    if-eqz v1, :cond_0

    .line 75
    .line 76
    aget-object p1, p1, v0

    .line 77
    .line 78
    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    :cond_0
    return-void
.end method

.method public final j(Lf0/f;)V
    .locals 5

    .line 1
    sget-boolean v0, Lf0/g;->n:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, "getRw2Attributes starting with: "

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "ExifInterface"

    .line 20
    .line 21
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-virtual {p0, p1}, Lf0/g;->i(Lf0/f;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lf0/g;->f:[Ljava/util/HashMap;

    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    aget-object v1, p1, v0

    .line 31
    .line 32
    const-string v2, "JpgFromRaw"

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Lf0/c;

    .line 39
    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    new-instance v2, Lf0/b;

    .line 43
    .line 44
    iget-object v3, v1, Lf0/c;->d:[B

    .line 45
    .line 46
    invoke-direct {v2, v3}, Lf0/b;-><init>([B)V

    .line 47
    .line 48
    .line 49
    iget-wide v3, v1, Lf0/c;->c:J

    .line 50
    .line 51
    long-to-int v1, v3

    .line 52
    const/4 v3, 0x5

    .line 53
    invoke-virtual {p0, v2, v1, v3}, Lf0/g;->d(Lf0/b;II)V

    .line 54
    .line 55
    .line 56
    :cond_1
    aget-object v0, p1, v0

    .line 57
    .line 58
    const-string v1, "ISO"

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Lf0/c;

    .line 65
    .line 66
    const/4 v1, 0x1

    .line 67
    aget-object v2, p1, v1

    .line 68
    .line 69
    const-string v3, "PhotographicSensitivity"

    .line 70
    .line 71
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    check-cast v2, Lf0/c;

    .line 76
    .line 77
    if-eqz v0, :cond_2

    .line 78
    .line 79
    if-nez v2, :cond_2

    .line 80
    .line 81
    aget-object p1, p1, v1

    .line 82
    .line 83
    invoke-virtual {p1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    :cond_2
    return-void
.end method

.method public final k(Lf0/f;)V
    .locals 2

    .line 1
    sget-object v0, Lf0/g;->Q:[B

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    invoke-virtual {p1, v1}, Lf0/b;->skipFully(I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lf0/b;->available()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    new-array v1, v1, [B

    .line 12
    .line 13
    invoke-virtual {p1, v1}, Lf0/b;->readFully([B)V

    .line 14
    .line 15
    .line 16
    array-length p1, v0

    .line 17
    iput p1, p0, Lf0/g;->j:I

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    invoke-virtual {p0, p1, v1}, Lf0/g;->s(I[B)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final l(Lf0/b;)V
    .locals 5

    .line 1
    sget-boolean v0, Lf0/g;->n:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, "getWebpAttributes starting with: "

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "ExifInterface"

    .line 20
    .line 21
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Lf0/b;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 27
    .line 28
    .line 29
    sget-object v0, Lf0/g;->C:[B

    .line 30
    .line 31
    array-length v0, v0

    .line 32
    invoke-virtual {p1, v0}, Lf0/b;->skipFully(I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Lf0/b;->readInt()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    add-int/lit8 v0, v0, 0x8

    .line 40
    .line 41
    sget-object v1, Lf0/g;->D:[B

    .line 42
    .line 43
    array-length v2, v1

    .line 44
    invoke-virtual {p1, v2}, Lf0/b;->skipFully(I)V

    .line 45
    .line 46
    .line 47
    array-length v1, v1

    .line 48
    add-int/lit8 v1, v1, 0x8

    .line 49
    .line 50
    :goto_0
    const/4 v2, 0x4

    .line 51
    :try_start_0
    new-array v3, v2, [B

    .line 52
    .line 53
    invoke-virtual {p1, v3}, Ljava/io/InputStream;->read([B)I

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    if-ne v4, v2, :cond_6

    .line 58
    .line 59
    invoke-virtual {p1}, Lf0/b;->readInt()I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    add-int/lit8 v1, v1, 0x8

    .line 64
    .line 65
    sget-object v4, Lf0/g;->E:[B

    .line 66
    .line 67
    invoke-static {v4, v3}, Ljava/util/Arrays;->equals([B[B)Z

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    if-eqz v4, :cond_2

    .line 72
    .line 73
    new-array v0, v2, [B

    .line 74
    .line 75
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    if-ne p1, v2, :cond_1

    .line 80
    .line 81
    iput v1, p0, Lf0/g;->j:I

    .line 82
    .line 83
    const/4 p1, 0x0

    .line 84
    invoke-virtual {p0, p1, v0}, Lf0/g;->s(I[B)V

    .line 85
    .line 86
    .line 87
    new-instance p1, Lf0/b;

    .line 88
    .line 89
    invoke-direct {p1, v0}, Lf0/b;-><init>([B)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, p1}, Lf0/g;->v(Lf0/b;)V

    .line 93
    .line 94
    .line 95
    return-void

    .line 96
    :cond_1
    new-instance p1, Ljava/io/IOException;

    .line 97
    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .line 102
    .line 103
    const-string v1, "Failed to read given length for given PNG chunk type: "

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-static {v3}, La/c;->a([B)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    throw p1

    .line 123
    :cond_2
    rem-int/lit8 v3, v2, 0x2

    .line 124
    .line 125
    const/4 v4, 0x1

    .line 126
    if-ne v3, v4, :cond_3

    .line 127
    .line 128
    add-int/lit8 v2, v2, 0x1

    .line 129
    .line 130
    :cond_3
    add-int/2addr v1, v2

    .line 131
    if-ne v1, v0, :cond_4

    .line 132
    .line 133
    return-void

    .line 134
    :cond_4
    if-gt v1, v0, :cond_5

    .line 135
    .line 136
    invoke-virtual {p1, v2}, Lf0/b;->skipFully(I)V

    .line 137
    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_5
    new-instance p1, Ljava/io/IOException;

    .line 141
    .line 142
    const-string v0, "Encountered WebP file with invalid chunk size"

    .line 143
    .line 144
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    throw p1

    .line 148
    :cond_6
    new-instance p1, Ljava/io/IOException;

    .line 149
    .line 150
    const-string v0, "Encountered invalid length while parsing WebP chunktype"

    .line 151
    .line 152
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    throw p1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :catch_0
    new-instance p1, Ljava/io/IOException;

    .line 157
    .line 158
    const-string v0, "Encountered corrupt WebP file."

    .line 159
    .line 160
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    throw p1
.end method

.method public final m(Lf0/b;Ljava/util/HashMap;)V
    .locals 4

    .line 1
    const-string v0, "JPEGInterchangeFormat"

    .line 2
    .line 3
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lf0/c;

    .line 8
    .line 9
    const-string v1, "JPEGInterchangeFormatLength"

    .line 10
    .line 11
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    check-cast p2, Lf0/c;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    if-eqz p2, :cond_2

    .line 20
    .line 21
    iget-object v1, p0, Lf0/g;->h:Ljava/nio/ByteOrder;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lf0/c;->getIntValue(Ljava/nio/ByteOrder;)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iget-object v1, p0, Lf0/g;->h:Ljava/nio/ByteOrder;

    .line 28
    .line 29
    invoke-virtual {p2, v1}, Lf0/c;->getIntValue(Ljava/nio/ByteOrder;)I

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    iget v1, p0, Lf0/g;->d:I

    .line 34
    .line 35
    const/4 v2, 0x7

    .line 36
    if-ne v1, v2, :cond_0

    .line 37
    .line 38
    iget v1, p0, Lf0/g;->k:I

    .line 39
    .line 40
    add-int/2addr v0, v1

    .line 41
    :cond_0
    if-lez v0, :cond_1

    .line 42
    .line 43
    if-lez p2, :cond_1

    .line 44
    .line 45
    iget-object v1, p0, Lf0/g;->a:Ljava/lang/String;

    .line 46
    .line 47
    if-nez v1, :cond_1

    .line 48
    .line 49
    iget-object v1, p0, Lf0/g;->c:Landroid/content/res/AssetManager$AssetInputStream;

    .line 50
    .line 51
    if-nez v1, :cond_1

    .line 52
    .line 53
    iget-object v1, p0, Lf0/g;->b:Ljava/io/FileDescriptor;

    .line 54
    .line 55
    if-nez v1, :cond_1

    .line 56
    .line 57
    new-array v1, p2, [B

    .line 58
    .line 59
    int-to-long v2, v0

    .line 60
    invoke-virtual {p1, v2, v3}, Ljava/io/InputStream;->skip(J)J

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    .line 64
    .line 65
    .line 66
    :cond_1
    sget-boolean p1, Lf0/g;->n:Z

    .line 67
    .line 68
    if-eqz p1, :cond_2

    .line 69
    .line 70
    new-instance p1, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    const-string v1, "Setting thumbnail attributes with offset: "

    .line 73
    .line 74
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v0, ", length: "

    .line 81
    .line 82
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    const-string p2, "ExifInterface"

    .line 93
    .line 94
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    :cond_2
    return-void
.end method

.method public final n(Ljava/util/HashMap;)Z
    .locals 2

    .line 1
    const-string v0, "ImageLength"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lf0/c;

    .line 8
    .line 9
    const-string v1, "ImageWidth"

    .line 10
    .line 11
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lf0/c;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    iget-object v1, p0, Lf0/g;->h:Ljava/nio/ByteOrder;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lf0/c;->getIntValue(Ljava/nio/ByteOrder;)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iget-object v1, p0, Lf0/g;->h:Ljava/nio/ByteOrder;

    .line 28
    .line 29
    invoke-virtual {p1, v1}, Lf0/c;->getIntValue(Ljava/nio/ByteOrder;)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    const/16 v1, 0x200

    .line 34
    .line 35
    if-gt v0, v1, :cond_0

    .line 36
    .line 37
    if-gt p1, v1, :cond_0

    .line 38
    .line 39
    const/4 p1, 0x1

    .line 40
    return p1

    .line 41
    :cond_0
    const/4 p1, 0x0

    .line 42
    return p1
.end method

.method public final o(Ljava/io/InputStream;)V
    .locals 8

    .line 1
    sget-boolean v0, Lf0/g;->n:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    move v2, v1

    .line 5
    :goto_0
    :try_start_0
    sget-object v3, Lf0/g;->J:[[Lf0/d;

    .line 6
    .line 7
    array-length v3, v3

    .line 8
    if-ge v2, v3, :cond_0

    .line 9
    .line 10
    iget-object v3, p0, Lf0/g;->f:[Ljava/util/HashMap;

    .line 11
    .line 12
    new-instance v4, Ljava/util/HashMap;

    .line 13
    .line 14
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 15
    .line 16
    .line 17
    aput-object v4, v3, v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    add-int/lit8 v2, v2, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    goto/16 :goto_5

    .line 24
    .line 25
    :catch_0
    move-exception p1

    .line 26
    goto/16 :goto_4

    .line 27
    .line 28
    :catch_1
    move-exception p1

    .line 29
    goto/16 :goto_4

    .line 30
    .line 31
    :cond_0
    iget-boolean v2, p0, Lf0/g;->e:Z

    .line 32
    .line 33
    if-nez v2, :cond_1

    .line 34
    .line 35
    :try_start_1
    new-instance v3, Ljava/io/BufferedInputStream;

    .line 36
    .line 37
    const/16 v4, 0x1388

    .line 38
    .line 39
    invoke-direct {v3, p1, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v3}, Lf0/g;->e(Ljava/io/BufferedInputStream;)I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    iput p1, p0, Lf0/g;->d:I

    .line 47
    .line 48
    move-object p1, v3

    .line 49
    :cond_1
    iget v3, p0, Lf0/g;->d:I

    .line 50
    .line 51
    const/16 v4, 0xe

    .line 52
    .line 53
    const/16 v5, 0xd

    .line 54
    .line 55
    const/16 v6, 0x9

    .line 56
    .line 57
    const/4 v7, 0x4

    .line 58
    if-eq v3, v7, :cond_7

    .line 59
    .line 60
    if-eq v3, v6, :cond_7

    .line 61
    .line 62
    if-eq v3, v5, :cond_7

    .line 63
    .line 64
    if-ne v3, v4, :cond_2

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_2
    new-instance v1, Lf0/f;

    .line 68
    .line 69
    invoke-direct {v1, p1}, Lf0/f;-><init>(Ljava/io/InputStream;)V

    .line 70
    .line 71
    .line 72
    if-eqz v2, :cond_3

    .line 73
    .line 74
    invoke-virtual {p0, v1}, Lf0/g;->k(Lf0/f;)V

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_3
    iget p1, p0, Lf0/g;->d:I

    .line 79
    .line 80
    const/16 v2, 0xc

    .line 81
    .line 82
    if-ne p1, v2, :cond_4

    .line 83
    .line 84
    invoke-virtual {p0, v1}, Lf0/g;->c(Lf0/f;)V

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_4
    const/4 v2, 0x7

    .line 89
    if-ne p1, v2, :cond_5

    .line 90
    .line 91
    invoke-virtual {p0, v1}, Lf0/g;->f(Lf0/f;)V

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_5
    const/16 v2, 0xa

    .line 96
    .line 97
    if-ne p1, v2, :cond_6

    .line 98
    .line 99
    invoke-virtual {p0, v1}, Lf0/g;->j(Lf0/f;)V

    .line 100
    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_6
    invoke-virtual {p0, v1}, Lf0/g;->i(Lf0/f;)V

    .line 104
    .line 105
    .line 106
    :goto_1
    iget p1, p0, Lf0/g;->j:I

    .line 107
    .line 108
    int-to-long v2, p1

    .line 109
    invoke-virtual {v1, v2, v3}, Lf0/f;->seek(J)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0, v1}, Lf0/g;->v(Lf0/b;)V

    .line 113
    .line 114
    .line 115
    goto :goto_3

    .line 116
    :cond_7
    :goto_2
    new-instance v2, Lf0/b;

    .line 117
    .line 118
    invoke-direct {v2, p1}, Lf0/b;-><init>(Ljava/io/InputStream;)V

    .line 119
    .line 120
    .line 121
    iget p1, p0, Lf0/g;->d:I

    .line 122
    .line 123
    if-ne p1, v7, :cond_8

    .line 124
    .line 125
    invoke-virtual {p0, v2, v1, v1}, Lf0/g;->d(Lf0/b;II)V

    .line 126
    .line 127
    .line 128
    goto :goto_3

    .line 129
    :cond_8
    if-ne p1, v5, :cond_9

    .line 130
    .line 131
    invoke-virtual {p0, v2}, Lf0/g;->g(Lf0/b;)V

    .line 132
    .line 133
    .line 134
    goto :goto_3

    .line 135
    :cond_9
    if-ne p1, v6, :cond_a

    .line 136
    .line 137
    invoke-virtual {p0, v2}, Lf0/g;->h(Lf0/b;)V

    .line 138
    .line 139
    .line 140
    goto :goto_3

    .line 141
    :cond_a
    if-ne p1, v4, :cond_b

    .line 142
    .line 143
    invoke-virtual {p0, v2}, Lf0/g;->l(Lf0/b;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    .line 145
    .line 146
    :cond_b
    :goto_3
    invoke-virtual {p0}, Lf0/g;->a()V

    .line 147
    .line 148
    .line 149
    if-eqz v0, :cond_e

    .line 150
    .line 151
    invoke-virtual {p0}, Lf0/g;->q()V

    .line 152
    .line 153
    .line 154
    return-void

    .line 155
    :goto_4
    if-eqz v0, :cond_d

    .line 156
    .line 157
    :try_start_2
    const-string v1, "ExifInterface"

    .line 158
    .line 159
    const-string v2, "Invalid image: ExifInterface got an unsupported image format file(ExifInterface supports JPEG and some RAW image formats only) or a corrupted JPEG file to ExifInterface."

    .line 160
    .line 161
    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 162
    .line 163
    .line 164
    goto :goto_6

    .line 165
    :goto_5
    invoke-virtual {p0}, Lf0/g;->a()V

    .line 166
    .line 167
    .line 168
    if-eqz v0, :cond_c

    .line 169
    .line 170
    invoke-virtual {p0}, Lf0/g;->q()V

    .line 171
    .line 172
    .line 173
    :cond_c
    throw p1

    .line 174
    :cond_d
    :goto_6
    invoke-virtual {p0}, Lf0/g;->a()V

    .line 175
    .line 176
    .line 177
    if-eqz v0, :cond_e

    .line 178
    .line 179
    invoke-virtual {p0}, Lf0/g;->q()V

    .line 180
    .line 181
    .line 182
    :cond_e
    return-void
.end method

.method public final p(Lf0/f;)V
    .locals 3

    .line 1
    invoke-static {p1}, Lf0/g;->r(Lf0/b;)Ljava/nio/ByteOrder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lf0/g;->h:Ljava/nio/ByteOrder;

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Lf0/b;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lf0/b;->readUnsignedShort()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iget v1, p0, Lf0/g;->d:I

    .line 15
    .line 16
    const/4 v2, 0x7

    .line 17
    if-eq v1, v2, :cond_1

    .line 18
    .line 19
    const/16 v2, 0xa

    .line 20
    .line 21
    if-eq v1, v2, :cond_1

    .line 22
    .line 23
    const/16 v1, 0x2a

    .line 24
    .line 25
    if-ne v0, v1, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance p1, Ljava/io/IOException;

    .line 29
    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v2, "Invalid start code: "

    .line 33
    .line 34
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p1

    .line 52
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lf0/b;->readInt()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    const/16 v1, 0x8

    .line 57
    .line 58
    if-lt v0, v1, :cond_3

    .line 59
    .line 60
    add-int/lit8 v0, v0, -0x8

    .line 61
    .line 62
    if-lez v0, :cond_2

    .line 63
    .line 64
    invoke-virtual {p1, v0}, Lf0/b;->skipFully(I)V

    .line 65
    .line 66
    .line 67
    :cond_2
    return-void

    .line 68
    :cond_3
    new-instance p1, Ljava/io/IOException;

    .line 69
    .line 70
    const-string v1, "Invalid first Ifd offset: "

    .line 71
    .line 72
    invoke-static {v0, v1}, LA/i;->f(ILjava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw p1
.end method

.method public final q()V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lf0/g;->f:[Ljava/util/HashMap;

    .line 3
    .line 4
    array-length v2, v1

    .line 5
    if-ge v0, v2, :cond_1

    .line 6
    .line 7
    const-string v2, "The size of tag group["

    .line 8
    .line 9
    const-string v3, "]: "

    .line 10
    .line 11
    invoke-static {v0, v2, v3}, LA/i;->q(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    aget-object v3, v1, v0

    .line 16
    .line 17
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    const-string v3, "ExifInterface"

    .line 29
    .line 30
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    aget-object v1, v1, v0

    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_0

    .line 48
    .line 49
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    check-cast v2, Ljava/util/Map$Entry;

    .line 54
    .line 55
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    check-cast v4, Lf0/c;

    .line 60
    .line 61
    new-instance v5, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    const-string v6, "tagName: "

    .line 64
    .line 65
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    check-cast v2, Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v2, ", tagType: "

    .line 78
    .line 79
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v4}, Lf0/c;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string v2, ", tagValue: \'"

    .line 90
    .line 91
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    iget-object v2, p0, Lf0/g;->h:Ljava/nio/ByteOrder;

    .line 95
    .line 96
    invoke-virtual {v4, v2}, Lf0/c;->getStringValue(Ljava/nio/ByteOrder;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v2, "\'"

    .line 104
    .line 105
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_1
    return-void
.end method

.method public final s(I[B)V
    .locals 1

    .line 1
    new-instance v0, Lf0/f;

    .line 2
    .line 3
    invoke-direct {v0, p2}, Lf0/f;-><init>([B)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lf0/g;->p(Lf0/f;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0, p1}, Lf0/g;->t(Lf0/f;I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final t(Lf0/f;I)V
    .locals 36

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    iget v9, v1, Lf0/b;->f:I

    .line 8
    .line 9
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v9

    .line 13
    iget-object v10, v0, Lf0/g;->g:Ljava/util/HashSet;

    .line 14
    .line 15
    invoke-virtual {v10, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Lf0/b;->readShort()S

    .line 19
    .line 20
    .line 21
    move-result v9

    .line 22
    const-string v11, "ExifInterface"

    .line 23
    .line 24
    sget-boolean v12, Lf0/g;->n:Z

    .line 25
    .line 26
    if-eqz v12, :cond_0

    .line 27
    .line 28
    new-instance v13, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v14, "numberOfDirectoryEntry: "

    .line 31
    .line 32
    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v13

    .line 42
    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    :cond_0
    if-gtz v9, :cond_1

    .line 46
    .line 47
    goto/16 :goto_18

    .line 48
    .line 49
    :cond_1
    const/4 v13, 0x0

    .line 50
    :goto_0
    const/16 v16, 0x0

    .line 51
    .line 52
    iget-object v7, v0, Lf0/g;->f:[Ljava/util/HashMap;

    .line 53
    .line 54
    if-ge v13, v9, :cond_2b

    .line 55
    .line 56
    const-wide/16 v17, 0x0

    .line 57
    .line 58
    invoke-virtual {v1}, Lf0/b;->readUnsignedShort()I

    .line 59
    .line 60
    .line 61
    move-result v14

    .line 62
    invoke-virtual {v1}, Lf0/b;->readUnsignedShort()I

    .line 63
    .line 64
    .line 65
    move-result v15

    .line 66
    const/16 v25, 0x1

    .line 67
    .line 68
    invoke-virtual {v1}, Lf0/b;->readInt()I

    .line 69
    .line 70
    .line 71
    move-result v8

    .line 72
    const/16 v26, 0x2

    .line 73
    .line 74
    invoke-virtual {v1}, Lf0/b;->position()I

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    const/16 v27, 0x3

    .line 79
    .line 80
    int-to-long v3, v4

    .line 81
    const-wide/16 v19, 0x4

    .line 82
    .line 83
    add-long v3, v3, v19

    .line 84
    .line 85
    sget-object v21, Lf0/g;->L:[Ljava/util/HashMap;

    .line 86
    .line 87
    const/16 v28, 0x4

    .line 88
    .line 89
    aget-object v6, v21, v2

    .line 90
    .line 91
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    check-cast v5, Lf0/d;

    .line 100
    .line 101
    if-eqz v12, :cond_3

    .line 102
    .line 103
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 108
    .line 109
    .line 110
    move-result-object v21

    .line 111
    move-object/from16 v22, v6

    .line 112
    .line 113
    if-eqz v5, :cond_2

    .line 114
    .line 115
    iget-object v6, v5, Lf0/d;->b:Ljava/lang/String;

    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_2
    const/4 v6, 0x0

    .line 119
    :goto_1
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 120
    .line 121
    .line 122
    move-result-object v23

    .line 123
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 124
    .line 125
    .line 126
    move-result-object v24

    .line 127
    move-object/from16 v29, v6

    .line 128
    .line 129
    move-object/from16 v30, v7

    .line 130
    .line 131
    const/4 v6, 0x5

    .line 132
    new-array v7, v6, [Ljava/lang/Object;

    .line 133
    .line 134
    aput-object v22, v7, v16

    .line 135
    .line 136
    aput-object v21, v7, v25

    .line 137
    .line 138
    aput-object v29, v7, v26

    .line 139
    .line 140
    aput-object v23, v7, v27

    .line 141
    .line 142
    aput-object v24, v7, v28

    .line 143
    .line 144
    const-string v6, "ifdType: %d, tagNumber: %d, tagName: %s, dataFormat: %d, numberOfComponents: %d"

    .line 145
    .line 146
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v6

    .line 150
    invoke-static {v11, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    .line 152
    .line 153
    goto :goto_2

    .line 154
    :cond_3
    move-object/from16 v30, v7

    .line 155
    .line 156
    :goto_2
    if-nez v5, :cond_5

    .line 157
    .line 158
    if-eqz v12, :cond_4

    .line 159
    .line 160
    new-instance v6, Ljava/lang/StringBuilder;

    .line 161
    .line 162
    const-string v7, "Skip the tag entry since tag number is not defined: "

    .line 163
    .line 164
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v6

    .line 174
    invoke-static {v11, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    .line 176
    .line 177
    :cond_4
    move/from16 v31, v9

    .line 178
    .line 179
    goto/16 :goto_b

    .line 180
    .line 181
    :cond_5
    if-lez v15, :cond_6

    .line 182
    .line 183
    sget-object v6, Lf0/g;->G:[I

    .line 184
    .line 185
    array-length v7, v6

    .line 186
    if-lt v15, v7, :cond_7

    .line 187
    .line 188
    :cond_6
    move/from16 v31, v9

    .line 189
    .line 190
    goto/16 :goto_a

    .line 191
    .line 192
    :cond_7
    iget v7, v5, Lf0/d;->c:I

    .line 193
    .line 194
    move-object/from16 v23, v6

    .line 195
    .line 196
    const/4 v6, 0x7

    .line 197
    if-eq v7, v6, :cond_9

    .line 198
    .line 199
    if-ne v15, v6, :cond_8

    .line 200
    .line 201
    goto :goto_3

    .line 202
    :cond_8
    if-eq v7, v15, :cond_9

    .line 203
    .line 204
    iget v6, v5, Lf0/d;->d:I

    .line 205
    .line 206
    if-ne v6, v15, :cond_a

    .line 207
    .line 208
    :cond_9
    :goto_3
    move/from16 v31, v9

    .line 209
    .line 210
    goto :goto_5

    .line 211
    :cond_a
    move/from16 v31, v9

    .line 212
    .line 213
    move/from16 v9, v28

    .line 214
    .line 215
    if-eq v7, v9, :cond_b

    .line 216
    .line 217
    if-ne v6, v9, :cond_c

    .line 218
    .line 219
    :cond_b
    move/from16 v9, v27

    .line 220
    .line 221
    goto :goto_4

    .line 222
    :cond_c
    const/16 v9, 0x9

    .line 223
    .line 224
    goto :goto_6

    .line 225
    :goto_4
    if-ne v15, v9, :cond_c

    .line 226
    .line 227
    :goto_5
    const/4 v6, 0x7

    .line 228
    goto :goto_7

    .line 229
    :goto_6
    if-eq v7, v9, :cond_d

    .line 230
    .line 231
    if-ne v6, v9, :cond_e

    .line 232
    .line 233
    :cond_d
    const/16 v9, 0x8

    .line 234
    .line 235
    if-ne v15, v9, :cond_e

    .line 236
    .line 237
    goto :goto_5

    .line 238
    :cond_e
    const/16 v9, 0xc

    .line 239
    .line 240
    if-eq v7, v9, :cond_f

    .line 241
    .line 242
    if-ne v6, v9, :cond_10

    .line 243
    .line 244
    :cond_f
    const/16 v6, 0xb

    .line 245
    .line 246
    if-ne v15, v6, :cond_10

    .line 247
    .line 248
    goto :goto_5

    .line 249
    :cond_10
    if-eqz v12, :cond_15

    .line 250
    .line 251
    new-instance v6, Ljava/lang/StringBuilder;

    .line 252
    .line 253
    const-string v7, "Skip the tag entry since data format ("

    .line 254
    .line 255
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    sget-object v7, Lf0/g;->F:[Ljava/lang/String;

    .line 259
    .line 260
    aget-object v7, v7, v15

    .line 261
    .line 262
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    const-string v7, ") is unexpected for tag: "

    .line 266
    .line 267
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    iget-object v7, v5, Lf0/d;->b:Ljava/lang/String;

    .line 271
    .line 272
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v6

    .line 279
    invoke-static {v11, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    .line 281
    .line 282
    goto :goto_b

    .line 283
    :goto_7
    if-ne v15, v6, :cond_11

    .line 284
    .line 285
    move v15, v7

    .line 286
    :cond_11
    int-to-long v6, v8

    .line 287
    aget v9, v23, v15

    .line 288
    .line 289
    move-wide/from16 v23, v6

    .line 290
    .line 291
    int-to-long v6, v9

    .line 292
    mul-long v6, v6, v23

    .line 293
    .line 294
    cmp-long v9, v6, v17

    .line 295
    .line 296
    if-ltz v9, :cond_13

    .line 297
    .line 298
    const-wide/32 v23, 0x7fffffff

    .line 299
    .line 300
    .line 301
    cmp-long v9, v6, v23

    .line 302
    .line 303
    if-lez v9, :cond_12

    .line 304
    .line 305
    goto :goto_8

    .line 306
    :cond_12
    move/from16 v9, v25

    .line 307
    .line 308
    goto :goto_c

    .line 309
    :cond_13
    :goto_8
    if-eqz v12, :cond_14

    .line 310
    .line 311
    new-instance v9, Ljava/lang/StringBuilder;

    .line 312
    .line 313
    move-wide/from16 v23, v6

    .line 314
    .line 315
    const-string v6, "Skip the tag entry since the number of components is invalid: "

    .line 316
    .line 317
    invoke-direct {v9, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v6

    .line 327
    invoke-static {v11, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    .line 329
    .line 330
    goto :goto_9

    .line 331
    :cond_14
    move-wide/from16 v23, v6

    .line 332
    .line 333
    :goto_9
    move/from16 v9, v16

    .line 334
    .line 335
    move-wide/from16 v6, v23

    .line 336
    .line 337
    goto :goto_c

    .line 338
    :goto_a
    if-eqz v12, :cond_15

    .line 339
    .line 340
    new-instance v6, Ljava/lang/StringBuilder;

    .line 341
    .line 342
    const-string v7, "Skip the tag entry since data format is invalid: "

    .line 343
    .line 344
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 348
    .line 349
    .line 350
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v6

    .line 354
    invoke-static {v11, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    .line 356
    .line 357
    :cond_15
    :goto_b
    move/from16 v9, v16

    .line 358
    .line 359
    move-wide/from16 v6, v17

    .line 360
    .line 361
    :goto_c
    if-nez v9, :cond_16

    .line 362
    .line 363
    invoke-virtual {v1, v3, v4}, Lf0/f;->seek(J)V

    .line 364
    .line 365
    .line 366
    move/from16 v32, v12

    .line 367
    .line 368
    move/from16 v33, v13

    .line 369
    .line 370
    move/from16 v12, v26

    .line 371
    .line 372
    :goto_d
    const/4 v6, 0x3

    .line 373
    goto/16 :goto_17

    .line 374
    .line 375
    :cond_16
    cmp-long v9, v6, v19

    .line 376
    .line 377
    move/from16 v19, v9

    .line 378
    .line 379
    const-string v9, "Compression"

    .line 380
    .line 381
    if-lez v19, :cond_1a

    .line 382
    .line 383
    move/from16 v32, v12

    .line 384
    .line 385
    invoke-virtual {v1}, Lf0/b;->readInt()I

    .line 386
    .line 387
    .line 388
    move-result v12

    .line 389
    move/from16 v33, v13

    .line 390
    .line 391
    if-eqz v32, :cond_17

    .line 392
    .line 393
    new-instance v13, Ljava/lang/StringBuilder;

    .line 394
    .line 395
    move/from16 v19, v14

    .line 396
    .line 397
    const-string v14, "seek to data offset: "

    .line 398
    .line 399
    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 400
    .line 401
    .line 402
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 403
    .line 404
    .line 405
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v13

    .line 409
    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    .line 411
    .line 412
    goto :goto_e

    .line 413
    :cond_17
    move/from16 v19, v14

    .line 414
    .line 415
    :goto_e
    iget v13, v0, Lf0/g;->d:I

    .line 416
    .line 417
    const/4 v14, 0x7

    .line 418
    if-ne v13, v14, :cond_18

    .line 419
    .line 420
    iget-object v13, v5, Lf0/d;->b:Ljava/lang/String;

    .line 421
    .line 422
    const-string v14, "MakerNote"

    .line 423
    .line 424
    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 425
    .line 426
    .line 427
    move-result v13

    .line 428
    if-eqz v13, :cond_19

    .line 429
    .line 430
    iput v12, v0, Lf0/g;->k:I

    .line 431
    .line 432
    :cond_18
    move-wide/from16 v34, v3

    .line 433
    .line 434
    goto :goto_f

    .line 435
    :cond_19
    const/4 v13, 0x6

    .line 436
    if-ne v2, v13, :cond_18

    .line 437
    .line 438
    iget-object v14, v5, Lf0/d;->b:Ljava/lang/String;

    .line 439
    .line 440
    const-string v13, "ThumbnailImage"

    .line 441
    .line 442
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 443
    .line 444
    .line 445
    move-result v13

    .line 446
    if-eqz v13, :cond_18

    .line 447
    .line 448
    iput v12, v0, Lf0/g;->l:I

    .line 449
    .line 450
    iput v8, v0, Lf0/g;->m:I

    .line 451
    .line 452
    iget-object v13, v0, Lf0/g;->h:Ljava/nio/ByteOrder;

    .line 453
    .line 454
    const/4 v14, 0x6

    .line 455
    invoke-static {v14, v13}, Lf0/c;->createUShort(ILjava/nio/ByteOrder;)Lf0/c;

    .line 456
    .line 457
    .line 458
    move-result-object v13

    .line 459
    iget v14, v0, Lf0/g;->l:I

    .line 460
    .line 461
    move-wide/from16 v34, v3

    .line 462
    .line 463
    int-to-long v2, v14

    .line 464
    iget-object v4, v0, Lf0/g;->h:Ljava/nio/ByteOrder;

    .line 465
    .line 466
    invoke-static {v2, v3, v4}, Lf0/c;->createULong(JLjava/nio/ByteOrder;)Lf0/c;

    .line 467
    .line 468
    .line 469
    move-result-object v2

    .line 470
    iget v3, v0, Lf0/g;->m:I

    .line 471
    .line 472
    int-to-long v3, v3

    .line 473
    iget-object v14, v0, Lf0/g;->h:Ljava/nio/ByteOrder;

    .line 474
    .line 475
    invoke-static {v3, v4, v14}, Lf0/c;->createULong(JLjava/nio/ByteOrder;)Lf0/c;

    .line 476
    .line 477
    .line 478
    move-result-object v3

    .line 479
    const/16 v28, 0x4

    .line 480
    .line 481
    aget-object v4, v30, v28

    .line 482
    .line 483
    invoke-virtual {v4, v9, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    .line 485
    .line 486
    aget-object v4, v30, v28

    .line 487
    .line 488
    const-string v13, "JPEGInterchangeFormat"

    .line 489
    .line 490
    invoke-virtual {v4, v13, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    .line 492
    .line 493
    aget-object v2, v30, v28

    .line 494
    .line 495
    const-string v4, "JPEGInterchangeFormatLength"

    .line 496
    .line 497
    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    .line 499
    .line 500
    :goto_f
    int-to-long v2, v12

    .line 501
    invoke-virtual {v1, v2, v3}, Lf0/f;->seek(J)V

    .line 502
    .line 503
    .line 504
    goto :goto_10

    .line 505
    :cond_1a
    move-wide/from16 v34, v3

    .line 506
    .line 507
    move/from16 v32, v12

    .line 508
    .line 509
    move/from16 v33, v13

    .line 510
    .line 511
    move/from16 v19, v14

    .line 512
    .line 513
    :goto_10
    sget-object v2, Lf0/g;->O:Ljava/util/HashMap;

    .line 514
    .line 515
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 516
    .line 517
    .line 518
    move-result-object v3

    .line 519
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    .line 521
    .line 522
    move-result-object v2

    .line 523
    check-cast v2, Ljava/lang/Integer;

    .line 524
    .line 525
    if-eqz v32, :cond_1b

    .line 526
    .line 527
    new-instance v3, Ljava/lang/StringBuilder;

    .line 528
    .line 529
    const-string v4, "nextIfdType: "

    .line 530
    .line 531
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 532
    .line 533
    .line 534
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 535
    .line 536
    .line 537
    const-string v4, " byteCount: "

    .line 538
    .line 539
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    .line 541
    .line 542
    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 543
    .line 544
    .line 545
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 546
    .line 547
    .line 548
    move-result-object v3

    .line 549
    invoke-static {v11, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    .line 551
    .line 552
    :cond_1b
    if-eqz v2, :cond_24

    .line 553
    .line 554
    const/4 v3, 0x3

    .line 555
    if-eq v15, v3, :cond_1f

    .line 556
    .line 557
    const/4 v9, 0x4

    .line 558
    if-eq v15, v9, :cond_1e

    .line 559
    .line 560
    const/16 v9, 0x8

    .line 561
    .line 562
    if-eq v15, v9, :cond_1d

    .line 563
    .line 564
    const/16 v9, 0x9

    .line 565
    .line 566
    if-eq v15, v9, :cond_1c

    .line 567
    .line 568
    const/16 v3, 0xd

    .line 569
    .line 570
    if-eq v15, v3, :cond_1c

    .line 571
    .line 572
    const-wide/16 v3, -0x1

    .line 573
    .line 574
    goto :goto_12

    .line 575
    :cond_1c
    invoke-virtual {v1}, Lf0/b;->readInt()I

    .line 576
    .line 577
    .line 578
    move-result v3

    .line 579
    :goto_11
    int-to-long v3, v3

    .line 580
    goto :goto_12

    .line 581
    :cond_1d
    invoke-virtual {v1}, Lf0/b;->readShort()S

    .line 582
    .line 583
    .line 584
    move-result v3

    .line 585
    goto :goto_11

    .line 586
    :cond_1e
    invoke-virtual {v1}, Lf0/b;->readUnsignedInt()J

    .line 587
    .line 588
    .line 589
    move-result-wide v3

    .line 590
    goto :goto_12

    .line 591
    :cond_1f
    invoke-virtual {v1}, Lf0/b;->readUnsignedShort()I

    .line 592
    .line 593
    .line 594
    move-result v3

    .line 595
    goto :goto_11

    .line 596
    :goto_12
    if-eqz v32, :cond_20

    .line 597
    .line 598
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 599
    .line 600
    .line 601
    move-result-object v6

    .line 602
    iget-object v5, v5, Lf0/d;->b:Ljava/lang/String;

    .line 603
    .line 604
    move/from16 v12, v26

    .line 605
    .line 606
    new-array v7, v12, [Ljava/lang/Object;

    .line 607
    .line 608
    aput-object v6, v7, v16

    .line 609
    .line 610
    aput-object v5, v7, v25

    .line 611
    .line 612
    const-string v5, "Offset: %d, tagName: %s"

    .line 613
    .line 614
    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 615
    .line 616
    .line 617
    move-result-object v5

    .line 618
    invoke-static {v11, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    .line 620
    .line 621
    goto :goto_13

    .line 622
    :cond_20
    move/from16 v12, v26

    .line 623
    .line 624
    :goto_13
    cmp-long v5, v3, v17

    .line 625
    .line 626
    if-lez v5, :cond_23

    .line 627
    .line 628
    long-to-int v5, v3

    .line 629
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 630
    .line 631
    .line 632
    move-result-object v5

    .line 633
    invoke-virtual {v10, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 634
    .line 635
    .line 636
    move-result v5

    .line 637
    if-nez v5, :cond_22

    .line 638
    .line 639
    invoke-virtual {v1, v3, v4}, Lf0/f;->seek(J)V

    .line 640
    .line 641
    .line 642
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 643
    .line 644
    .line 645
    move-result v2

    .line 646
    invoke-virtual {v0, v1, v2}, Lf0/g;->t(Lf0/f;I)V

    .line 647
    .line 648
    .line 649
    :cond_21
    :goto_14
    move-wide/from16 v3, v34

    .line 650
    .line 651
    goto :goto_15

    .line 652
    :cond_22
    if-eqz v32, :cond_21

    .line 653
    .line 654
    new-instance v5, Ljava/lang/StringBuilder;

    .line 655
    .line 656
    const-string v6, "Skip jump into the IFD since it has already been read: IfdType "

    .line 657
    .line 658
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 659
    .line 660
    .line 661
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 662
    .line 663
    .line 664
    const-string v2, " (at "

    .line 665
    .line 666
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 667
    .line 668
    .line 669
    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 670
    .line 671
    .line 672
    const-string v2, ")"

    .line 673
    .line 674
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 675
    .line 676
    .line 677
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 678
    .line 679
    .line 680
    move-result-object v2

    .line 681
    invoke-static {v11, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    .line 683
    .line 684
    goto :goto_14

    .line 685
    :cond_23
    if-eqz v32, :cond_21

    .line 686
    .line 687
    new-instance v2, Ljava/lang/StringBuilder;

    .line 688
    .line 689
    const-string v5, "Skip jump into the IFD since its offset is invalid: "

    .line 690
    .line 691
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 692
    .line 693
    .line 694
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 695
    .line 696
    .line 697
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 698
    .line 699
    .line 700
    move-result-object v2

    .line 701
    invoke-static {v11, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    .line 703
    .line 704
    goto :goto_14

    .line 705
    :goto_15
    invoke-virtual {v1, v3, v4}, Lf0/f;->seek(J)V

    .line 706
    .line 707
    .line 708
    goto/16 :goto_d

    .line 709
    .line 710
    :cond_24
    move/from16 v12, v26

    .line 711
    .line 712
    move-wide/from16 v3, v34

    .line 713
    .line 714
    invoke-virtual {v1}, Lf0/b;->position()I

    .line 715
    .line 716
    .line 717
    move-result v2

    .line 718
    iget v13, v0, Lf0/g;->j:I

    .line 719
    .line 720
    add-int/2addr v2, v13

    .line 721
    long-to-int v6, v6

    .line 722
    new-array v6, v6, [B

    .line 723
    .line 724
    invoke-virtual {v1, v6}, Lf0/b;->readFully([B)V

    .line 725
    .line 726
    .line 727
    new-instance v19, Lf0/c;

    .line 728
    .line 729
    int-to-long v13, v2

    .line 730
    move-object/from16 v22, v6

    .line 731
    .line 732
    move/from16 v24, v8

    .line 733
    .line 734
    move-wide/from16 v20, v13

    .line 735
    .line 736
    move/from16 v23, v15

    .line 737
    .line 738
    invoke-direct/range {v19 .. v24}, Lf0/c;-><init>(J[BII)V

    .line 739
    .line 740
    .line 741
    move-object/from16 v2, v19

    .line 742
    .line 743
    aget-object v6, v30, p2

    .line 744
    .line 745
    iget-object v7, v5, Lf0/d;->b:Ljava/lang/String;

    .line 746
    .line 747
    invoke-virtual {v6, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 748
    .line 749
    .line 750
    iget-object v5, v5, Lf0/d;->b:Ljava/lang/String;

    .line 751
    .line 752
    const-string v6, "DNGVersion"

    .line 753
    .line 754
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 755
    .line 756
    .line 757
    move-result v6

    .line 758
    if-eqz v6, :cond_25

    .line 759
    .line 760
    const/4 v6, 0x3

    .line 761
    iput v6, v0, Lf0/g;->d:I

    .line 762
    .line 763
    goto :goto_16

    .line 764
    :cond_25
    const/4 v6, 0x3

    .line 765
    :goto_16
    const-string v7, "Make"

    .line 766
    .line 767
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 768
    .line 769
    .line 770
    move-result v7

    .line 771
    if-nez v7, :cond_26

    .line 772
    .line 773
    const-string v7, "Model"

    .line 774
    .line 775
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 776
    .line 777
    .line 778
    move-result v7

    .line 779
    if-eqz v7, :cond_27

    .line 780
    .line 781
    :cond_26
    iget-object v7, v0, Lf0/g;->h:Ljava/nio/ByteOrder;

    .line 782
    .line 783
    invoke-virtual {v2, v7}, Lf0/c;->getStringValue(Ljava/nio/ByteOrder;)Ljava/lang/String;

    .line 784
    .line 785
    .line 786
    move-result-object v7

    .line 787
    const-string v8, "PENTAX"

    .line 788
    .line 789
    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 790
    .line 791
    .line 792
    move-result v7

    .line 793
    if-nez v7, :cond_28

    .line 794
    .line 795
    :cond_27
    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 796
    .line 797
    .line 798
    move-result v5

    .line 799
    if-eqz v5, :cond_29

    .line 800
    .line 801
    iget-object v5, v0, Lf0/g;->h:Ljava/nio/ByteOrder;

    .line 802
    .line 803
    invoke-virtual {v2, v5}, Lf0/c;->getIntValue(Ljava/nio/ByteOrder;)I

    .line 804
    .line 805
    .line 806
    move-result v2

    .line 807
    const v5, 0xffff

    .line 808
    .line 809
    .line 810
    if-ne v2, v5, :cond_29

    .line 811
    .line 812
    :cond_28
    const/16 v9, 0x8

    .line 813
    .line 814
    iput v9, v0, Lf0/g;->d:I

    .line 815
    .line 816
    :cond_29
    invoke-virtual {v1}, Lf0/b;->position()I

    .line 817
    .line 818
    .line 819
    move-result v2

    .line 820
    int-to-long v7, v2

    .line 821
    cmp-long v2, v7, v3

    .line 822
    .line 823
    if-eqz v2, :cond_2a

    .line 824
    .line 825
    invoke-virtual {v1, v3, v4}, Lf0/f;->seek(J)V

    .line 826
    .line 827
    .line 828
    :cond_2a
    :goto_17
    add-int/lit8 v13, v33, 0x1

    .line 829
    .line 830
    int-to-short v13, v13

    .line 831
    move/from16 v2, p2

    .line 832
    .line 833
    move/from16 v9, v31

    .line 834
    .line 835
    move/from16 v12, v32

    .line 836
    .line 837
    goto/16 :goto_0

    .line 838
    .line 839
    :cond_2b
    move-object/from16 v30, v7

    .line 840
    .line 841
    move/from16 v32, v12

    .line 842
    .line 843
    const-wide/16 v17, 0x0

    .line 844
    .line 845
    const/16 v25, 0x1

    .line 846
    .line 847
    invoke-virtual {v1}, Lf0/b;->readInt()I

    .line 848
    .line 849
    .line 850
    move-result v2

    .line 851
    if-eqz v32, :cond_2c

    .line 852
    .line 853
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 854
    .line 855
    .line 856
    move-result-object v3

    .line 857
    move/from16 v4, v25

    .line 858
    .line 859
    new-array v4, v4, [Ljava/lang/Object;

    .line 860
    .line 861
    aput-object v3, v4, v16

    .line 862
    .line 863
    const-string v3, "nextIfdOffset: %d"

    .line 864
    .line 865
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 866
    .line 867
    .line 868
    move-result-object v3

    .line 869
    invoke-static {v11, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    .line 871
    .line 872
    :cond_2c
    int-to-long v3, v2

    .line 873
    cmp-long v5, v3, v17

    .line 874
    .line 875
    if-lez v5, :cond_2f

    .line 876
    .line 877
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 878
    .line 879
    .line 880
    move-result-object v5

    .line 881
    invoke-virtual {v10, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 882
    .line 883
    .line 884
    move-result v5

    .line 885
    if-nez v5, :cond_2e

    .line 886
    .line 887
    invoke-virtual {v1, v3, v4}, Lf0/f;->seek(J)V

    .line 888
    .line 889
    .line 890
    const/4 v9, 0x4

    .line 891
    aget-object v2, v30, v9

    .line 892
    .line 893
    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    .line 894
    .line 895
    .line 896
    move-result v2

    .line 897
    if-eqz v2, :cond_2d

    .line 898
    .line 899
    invoke-virtual {v0, v1, v9}, Lf0/g;->t(Lf0/f;I)V

    .line 900
    .line 901
    .line 902
    return-void

    .line 903
    :cond_2d
    const/4 v6, 0x5

    .line 904
    aget-object v2, v30, v6

    .line 905
    .line 906
    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    .line 907
    .line 908
    .line 909
    move-result v2

    .line 910
    if-eqz v2, :cond_30

    .line 911
    .line 912
    invoke-virtual {v0, v1, v6}, Lf0/g;->t(Lf0/f;I)V

    .line 913
    .line 914
    .line 915
    return-void

    .line 916
    :cond_2e
    if-eqz v32, :cond_30

    .line 917
    .line 918
    new-instance v1, Ljava/lang/StringBuilder;

    .line 919
    .line 920
    const-string v3, "Stop reading file since re-reading an IFD may cause an infinite loop: "

    .line 921
    .line 922
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 923
    .line 924
    .line 925
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 926
    .line 927
    .line 928
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 929
    .line 930
    .line 931
    move-result-object v1

    .line 932
    invoke-static {v11, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    .line 934
    .line 935
    return-void

    .line 936
    :cond_2f
    if-eqz v32, :cond_30

    .line 937
    .line 938
    new-instance v1, Ljava/lang/StringBuilder;

    .line 939
    .line 940
    const-string v3, "Stop reading file since a wrong offset may cause an infinite loop: "

    .line 941
    .line 942
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 943
    .line 944
    .line 945
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 946
    .line 947
    .line 948
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 949
    .line 950
    .line 951
    move-result-object v1

    .line 952
    invoke-static {v11, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    .line 954
    .line 955
    :cond_30
    :goto_18
    return-void
.end method

.method public final u(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lf0/g;->f:[Ljava/util/HashMap;

    .line 2
    .line 3
    aget-object v1, v0, p1

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    aget-object v1, v0, p1

    .line 12
    .line 13
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    aget-object v1, v0, p1

    .line 20
    .line 21
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v1, p3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    aget-object p1, v0, p1

    .line 29
    .line 30
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method

.method public final v(Lf0/b;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lf0/g;->f:[Ljava/util/HashMap;

    .line 6
    .line 7
    const/4 v3, 0x4

    .line 8
    aget-object v2, v2, v3

    .line 9
    .line 10
    const-string v3, "Compression"

    .line 11
    .line 12
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    check-cast v3, Lf0/c;

    .line 17
    .line 18
    if-eqz v3, :cond_12

    .line 19
    .line 20
    iget-object v4, v0, Lf0/g;->h:Ljava/nio/ByteOrder;

    .line 21
    .line 22
    invoke-virtual {v3, v4}, Lf0/c;->getIntValue(Ljava/nio/ByteOrder;)I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    const/4 v4, 0x1

    .line 27
    const/4 v5, 0x6

    .line 28
    if-eq v3, v4, :cond_1

    .line 29
    .line 30
    if-eq v3, v5, :cond_0

    .line 31
    .line 32
    const/4 v6, 0x7

    .line 33
    if-eq v3, v6, :cond_1

    .line 34
    .line 35
    goto/16 :goto_5

    .line 36
    .line 37
    :cond_0
    invoke-virtual {v0, v1, v2}, Lf0/g;->m(Lf0/b;Ljava/util/HashMap;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_1
    const-string v3, "BitsPerSample"

    .line 42
    .line 43
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    check-cast v3, Lf0/c;

    .line 48
    .line 49
    const-string v6, "ExifInterface"

    .line 50
    .line 51
    if-eqz v3, :cond_10

    .line 52
    .line 53
    iget-object v7, v0, Lf0/g;->h:Ljava/nio/ByteOrder;

    .line 54
    .line 55
    invoke-virtual {v3, v7}, Lf0/c;->a(Ljava/nio/ByteOrder;)Ljava/io/Serializable;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    check-cast v3, [I

    .line 60
    .line 61
    sget-object v7, Lf0/g;->q:[I

    .line 62
    .line 63
    invoke-static {v7, v3}, Ljava/util/Arrays;->equals([I[I)Z

    .line 64
    .line 65
    .line 66
    move-result v8

    .line 67
    if-eqz v8, :cond_2

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    iget v8, v0, Lf0/g;->d:I

    .line 71
    .line 72
    const/4 v9, 0x3

    .line 73
    if-ne v8, v9, :cond_10

    .line 74
    .line 75
    const-string v8, "PhotometricInterpretation"

    .line 76
    .line 77
    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v8

    .line 81
    check-cast v8, Lf0/c;

    .line 82
    .line 83
    if-eqz v8, :cond_10

    .line 84
    .line 85
    iget-object v9, v0, Lf0/g;->h:Ljava/nio/ByteOrder;

    .line 86
    .line 87
    invoke-virtual {v8, v9}, Lf0/c;->getIntValue(Ljava/nio/ByteOrder;)I

    .line 88
    .line 89
    .line 90
    move-result v8

    .line 91
    if-ne v8, v4, :cond_3

    .line 92
    .line 93
    sget-object v9, Lf0/g;->r:[I

    .line 94
    .line 95
    invoke-static {v3, v9}, Ljava/util/Arrays;->equals([I[I)Z

    .line 96
    .line 97
    .line 98
    move-result v9

    .line 99
    if-nez v9, :cond_4

    .line 100
    .line 101
    :cond_3
    if-ne v8, v5, :cond_10

    .line 102
    .line 103
    invoke-static {v3, v7}, Ljava/util/Arrays;->equals([I[I)Z

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    if-eqz v3, :cond_10

    .line 108
    .line 109
    :cond_4
    :goto_0
    const-string v3, "StripOffsets"

    .line 110
    .line 111
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    check-cast v3, Lf0/c;

    .line 116
    .line 117
    const-string v5, "StripByteCounts"

    .line 118
    .line 119
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    check-cast v2, Lf0/c;

    .line 124
    .line 125
    if-eqz v3, :cond_11

    .line 126
    .line 127
    if-eqz v2, :cond_11

    .line 128
    .line 129
    iget-object v5, v0, Lf0/g;->h:Ljava/nio/ByteOrder;

    .line 130
    .line 131
    invoke-virtual {v3, v5}, Lf0/c;->a(Ljava/nio/ByteOrder;)Ljava/io/Serializable;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    invoke-static {v3}, La/c;->b(Ljava/io/Serializable;)[J

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    iget-object v5, v0, Lf0/g;->h:Ljava/nio/ByteOrder;

    .line 140
    .line 141
    invoke-virtual {v2, v5}, Lf0/c;->a(Ljava/nio/ByteOrder;)Ljava/io/Serializable;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    invoke-static {v2}, La/c;->b(Ljava/io/Serializable;)[J

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    if-eqz v3, :cond_f

    .line 150
    .line 151
    array-length v5, v3

    .line 152
    if-nez v5, :cond_5

    .line 153
    .line 154
    goto/16 :goto_4

    .line 155
    .line 156
    :cond_5
    if-eqz v2, :cond_e

    .line 157
    .line 158
    array-length v5, v2

    .line 159
    if-nez v5, :cond_6

    .line 160
    .line 161
    goto/16 :goto_3

    .line 162
    .line 163
    :cond_6
    array-length v5, v3

    .line 164
    array-length v7, v2

    .line 165
    if-eq v5, v7, :cond_7

    .line 166
    .line 167
    const-string v1, "stripOffsets and stripByteCounts should have same length."

    .line 168
    .line 169
    invoke-static {v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    .line 171
    .line 172
    return-void

    .line 173
    :cond_7
    array-length v5, v2

    .line 174
    const/4 v7, 0x0

    .line 175
    const-wide/16 v8, 0x0

    .line 176
    .line 177
    move v10, v7

    .line 178
    :goto_1
    if-ge v10, v5, :cond_8

    .line 179
    .line 180
    aget-wide v11, v2, v10

    .line 181
    .line 182
    add-long/2addr v8, v11

    .line 183
    add-int/lit8 v10, v10, 0x1

    .line 184
    .line 185
    goto :goto_1

    .line 186
    :cond_8
    long-to-int v5, v8

    .line 187
    new-array v5, v5, [B

    .line 188
    .line 189
    iput-boolean v4, v0, Lf0/g;->i:Z

    .line 190
    .line 191
    move v8, v7

    .line 192
    move v9, v8

    .line 193
    move v10, v9

    .line 194
    :goto_2
    array-length v11, v3

    .line 195
    if-ge v8, v11, :cond_d

    .line 196
    .line 197
    aget-wide v11, v3, v8

    .line 198
    .line 199
    long-to-int v11, v11

    .line 200
    aget-wide v12, v2, v8

    .line 201
    .line 202
    long-to-int v12, v12

    .line 203
    array-length v13, v3

    .line 204
    sub-int/2addr v13, v4

    .line 205
    if-ge v8, v13, :cond_9

    .line 206
    .line 207
    add-int v13, v11, v12

    .line 208
    .line 209
    int-to-long v13, v13

    .line 210
    add-int/lit8 v15, v8, 0x1

    .line 211
    .line 212
    aget-wide v15, v3, v15

    .line 213
    .line 214
    cmp-long v13, v13, v15

    .line 215
    .line 216
    if-eqz v13, :cond_9

    .line 217
    .line 218
    iput-boolean v7, v0, Lf0/g;->i:Z

    .line 219
    .line 220
    :cond_9
    sub-int/2addr v11, v9

    .line 221
    if-gez v11, :cond_a

    .line 222
    .line 223
    const-string v1, "Invalid strip offset value"

    .line 224
    .line 225
    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    .line 227
    .line 228
    return-void

    .line 229
    :cond_a
    int-to-long v13, v11

    .line 230
    invoke-virtual {v1, v13, v14}, Ljava/io/InputStream;->skip(J)J

    .line 231
    .line 232
    .line 233
    move-result-wide v15

    .line 234
    cmp-long v13, v15, v13

    .line 235
    .line 236
    const-string v14, " bytes."

    .line 237
    .line 238
    if-eqz v13, :cond_b

    .line 239
    .line 240
    new-instance v1, Ljava/lang/StringBuilder;

    .line 241
    .line 242
    const-string v2, "Failed to skip "

    .line 243
    .line 244
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v1

    .line 257
    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    .line 259
    .line 260
    return-void

    .line 261
    :cond_b
    add-int/2addr v9, v11

    .line 262
    new-array v11, v12, [B

    .line 263
    .line 264
    invoke-virtual {v1, v11}, Ljava/io/InputStream;->read([B)I

    .line 265
    .line 266
    .line 267
    move-result v13

    .line 268
    if-eq v13, v12, :cond_c

    .line 269
    .line 270
    new-instance v1, Ljava/lang/StringBuilder;

    .line 271
    .line 272
    const-string v2, "Failed to read "

    .line 273
    .line 274
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v1

    .line 287
    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    .line 289
    .line 290
    return-void

    .line 291
    :cond_c
    add-int/2addr v9, v12

    .line 292
    invoke-static {v11, v7, v5, v10, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 293
    .line 294
    .line 295
    add-int/2addr v10, v12

    .line 296
    add-int/lit8 v8, v8, 0x1

    .line 297
    .line 298
    goto :goto_2

    .line 299
    :cond_d
    iget-boolean v1, v0, Lf0/g;->i:Z

    .line 300
    .line 301
    if-eqz v1, :cond_11

    .line 302
    .line 303
    aget-wide v1, v3, v7

    .line 304
    .line 305
    return-void

    .line 306
    :cond_e
    :goto_3
    const-string v1, "stripByteCounts should not be null or have zero length."

    .line 307
    .line 308
    invoke-static {v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    .line 310
    .line 311
    return-void

    .line 312
    :cond_f
    :goto_4
    const-string v1, "stripOffsets should not be null or have zero length."

    .line 313
    .line 314
    invoke-static {v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    .line 316
    .line 317
    return-void

    .line 318
    :cond_10
    sget-boolean v1, Lf0/g;->n:Z

    .line 319
    .line 320
    if-eqz v1, :cond_11

    .line 321
    .line 322
    const-string v1, "Unsupported data type value"

    .line 323
    .line 324
    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    .line 326
    .line 327
    :cond_11
    :goto_5
    return-void

    .line 328
    :cond_12
    invoke-virtual {v0, v1, v2}, Lf0/g;->m(Lf0/b;Ljava/util/HashMap;)V

    .line 329
    .line 330
    .line 331
    return-void
.end method

.method public final w(II)V
    .locals 8

    .line 1
    iget-object v0, p0, Lf0/g;->f:[Ljava/util/HashMap;

    .line 2
    .line 3
    aget-object v1, v0, p1

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const-string v2, "ExifInterface"

    .line 10
    .line 11
    sget-boolean v3, Lf0/g;->n:Z

    .line 12
    .line 13
    if-nez v1, :cond_5

    .line 14
    .line 15
    aget-object v1, v0, p2

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    goto :goto_2

    .line 24
    :cond_0
    aget-object v1, v0, p1

    .line 25
    .line 26
    const-string v4, "ImageLength"

    .line 27
    .line 28
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Lf0/c;

    .line 33
    .line 34
    aget-object v5, v0, p1

    .line 35
    .line 36
    const-string v6, "ImageWidth"

    .line 37
    .line 38
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    check-cast v5, Lf0/c;

    .line 43
    .line 44
    aget-object v7, v0, p2

    .line 45
    .line 46
    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    check-cast v4, Lf0/c;

    .line 51
    .line 52
    aget-object v7, v0, p2

    .line 53
    .line 54
    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    check-cast v6, Lf0/c;

    .line 59
    .line 60
    if-eqz v1, :cond_4

    .line 61
    .line 62
    if-nez v5, :cond_1

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_1
    if-eqz v4, :cond_3

    .line 66
    .line 67
    if-nez v6, :cond_2

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    iget-object v2, p0, Lf0/g;->h:Ljava/nio/ByteOrder;

    .line 71
    .line 72
    invoke-virtual {v1, v2}, Lf0/c;->getIntValue(Ljava/nio/ByteOrder;)I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    iget-object v2, p0, Lf0/g;->h:Ljava/nio/ByteOrder;

    .line 77
    .line 78
    invoke-virtual {v5, v2}, Lf0/c;->getIntValue(Ljava/nio/ByteOrder;)I

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    iget-object v3, p0, Lf0/g;->h:Ljava/nio/ByteOrder;

    .line 83
    .line 84
    invoke-virtual {v4, v3}, Lf0/c;->getIntValue(Ljava/nio/ByteOrder;)I

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    iget-object v4, p0, Lf0/g;->h:Ljava/nio/ByteOrder;

    .line 89
    .line 90
    invoke-virtual {v6, v4}, Lf0/c;->getIntValue(Ljava/nio/ByteOrder;)I

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    if-ge v1, v3, :cond_6

    .line 95
    .line 96
    if-ge v2, v4, :cond_6

    .line 97
    .line 98
    aget-object v1, v0, p1

    .line 99
    .line 100
    aget-object v2, v0, p2

    .line 101
    .line 102
    aput-object v2, v0, p1

    .line 103
    .line 104
    aput-object v1, v0, p2

    .line 105
    .line 106
    return-void

    .line 107
    :cond_3
    :goto_0
    if-eqz v3, :cond_6

    .line 108
    .line 109
    const-string p1, "Second image does not contain valid size information"

    .line 110
    .line 111
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    return-void

    .line 115
    :cond_4
    :goto_1
    if-eqz v3, :cond_6

    .line 116
    .line 117
    const-string p1, "First image does not contain valid size information"

    .line 118
    .line 119
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    .line 121
    .line 122
    return-void

    .line 123
    :cond_5
    :goto_2
    if-eqz v3, :cond_6

    .line 124
    .line 125
    const-string p1, "Cannot perform swap since only one image data exists"

    .line 126
    .line 127
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    :cond_6
    return-void
.end method

.method public final x(Lf0/f;I)V
    .locals 10

    .line 1
    iget-object v0, p0, Lf0/g;->f:[Ljava/util/HashMap;

    .line 2
    .line 3
    aget-object v1, v0, p2

    .line 4
    .line 5
    const-string v2, "DefaultCropSize"

    .line 6
    .line 7
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Lf0/c;

    .line 12
    .line 13
    aget-object v2, v0, p2

    .line 14
    .line 15
    const-string v3, "SensorTopBorder"

    .line 16
    .line 17
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Lf0/c;

    .line 22
    .line 23
    aget-object v3, v0, p2

    .line 24
    .line 25
    const-string v4, "SensorLeftBorder"

    .line 26
    .line 27
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Lf0/c;

    .line 32
    .line 33
    aget-object v4, v0, p2

    .line 34
    .line 35
    const-string v5, "SensorBottomBorder"

    .line 36
    .line 37
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    check-cast v4, Lf0/c;

    .line 42
    .line 43
    aget-object v5, v0, p2

    .line 44
    .line 45
    const-string v6, "SensorRightBorder"

    .line 46
    .line 47
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    check-cast v5, Lf0/c;

    .line 52
    .line 53
    const-string v6, "ImageLength"

    .line 54
    .line 55
    const-string v7, "ImageWidth"

    .line 56
    .line 57
    if-eqz v1, :cond_5

    .line 58
    .line 59
    iget p1, v1, Lf0/c;->a:I

    .line 60
    .line 61
    const/4 v2, 0x5

    .line 62
    const-string v3, "Invalid crop size values. cropSize="

    .line 63
    .line 64
    const-string v4, "ExifInterface"

    .line 65
    .line 66
    const/4 v5, 0x1

    .line 67
    const/4 v8, 0x0

    .line 68
    const/4 v9, 0x2

    .line 69
    if-ne p1, v2, :cond_2

    .line 70
    .line 71
    iget-object p1, p0, Lf0/g;->h:Ljava/nio/ByteOrder;

    .line 72
    .line 73
    invoke-virtual {v1, p1}, Lf0/c;->a(Ljava/nio/ByteOrder;)Ljava/io/Serializable;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    check-cast p1, [Lf0/e;

    .line 78
    .line 79
    if-eqz p1, :cond_1

    .line 80
    .line 81
    array-length v1, p1

    .line 82
    if-eq v1, v9, :cond_0

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_0
    aget-object v1, p1, v8

    .line 86
    .line 87
    iget-object v2, p0, Lf0/g;->h:Ljava/nio/ByteOrder;

    .line 88
    .line 89
    invoke-static {v1, v2}, Lf0/c;->createURational(Lf0/e;Ljava/nio/ByteOrder;)Lf0/c;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    aget-object p1, p1, v5

    .line 94
    .line 95
    iget-object v2, p0, Lf0/g;->h:Ljava/nio/ByteOrder;

    .line 96
    .line 97
    invoke-static {p1, v2}, Lf0/c;->createURational(Lf0/e;Ljava/nio/ByteOrder;)Lf0/c;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    goto :goto_1

    .line 102
    :cond_1
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-static {v4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    .line 120
    .line 121
    return-void

    .line 122
    :cond_2
    iget-object p1, p0, Lf0/g;->h:Ljava/nio/ByteOrder;

    .line 123
    .line 124
    invoke-virtual {v1, p1}, Lf0/c;->a(Ljava/nio/ByteOrder;)Ljava/io/Serializable;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    check-cast p1, [I

    .line 129
    .line 130
    if-eqz p1, :cond_4

    .line 131
    .line 132
    array-length v1, p1

    .line 133
    if-eq v1, v9, :cond_3

    .line 134
    .line 135
    goto :goto_2

    .line 136
    :cond_3
    aget v1, p1, v8

    .line 137
    .line 138
    iget-object v2, p0, Lf0/g;->h:Ljava/nio/ByteOrder;

    .line 139
    .line 140
    invoke-static {v1, v2}, Lf0/c;->createUShort(ILjava/nio/ByteOrder;)Lf0/c;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    aget p1, p1, v5

    .line 145
    .line 146
    iget-object v2, p0, Lf0/g;->h:Ljava/nio/ByteOrder;

    .line 147
    .line 148
    invoke-static {p1, v2}, Lf0/c;->createUShort(ILjava/nio/ByteOrder;)Lf0/c;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    :goto_1
    aget-object v2, v0, p2

    .line 153
    .line 154
    invoke-virtual {v2, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    aget-object p2, v0, p2

    .line 158
    .line 159
    invoke-virtual {p2, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    return-void

    .line 163
    :cond_4
    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    .line 164
    .line 165
    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    invoke-static {v4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    .line 181
    .line 182
    return-void

    .line 183
    :cond_5
    if-eqz v2, :cond_6

    .line 184
    .line 185
    if-eqz v3, :cond_6

    .line 186
    .line 187
    if-eqz v4, :cond_6

    .line 188
    .line 189
    if-eqz v5, :cond_6

    .line 190
    .line 191
    iget-object p1, p0, Lf0/g;->h:Ljava/nio/ByteOrder;

    .line 192
    .line 193
    invoke-virtual {v2, p1}, Lf0/c;->getIntValue(Ljava/nio/ByteOrder;)I

    .line 194
    .line 195
    .line 196
    move-result p1

    .line 197
    iget-object v1, p0, Lf0/g;->h:Ljava/nio/ByteOrder;

    .line 198
    .line 199
    invoke-virtual {v4, v1}, Lf0/c;->getIntValue(Ljava/nio/ByteOrder;)I

    .line 200
    .line 201
    .line 202
    move-result v1

    .line 203
    iget-object v2, p0, Lf0/g;->h:Ljava/nio/ByteOrder;

    .line 204
    .line 205
    invoke-virtual {v5, v2}, Lf0/c;->getIntValue(Ljava/nio/ByteOrder;)I

    .line 206
    .line 207
    .line 208
    move-result v2

    .line 209
    iget-object v4, p0, Lf0/g;->h:Ljava/nio/ByteOrder;

    .line 210
    .line 211
    invoke-virtual {v3, v4}, Lf0/c;->getIntValue(Ljava/nio/ByteOrder;)I

    .line 212
    .line 213
    .line 214
    move-result v3

    .line 215
    if-le v1, p1, :cond_8

    .line 216
    .line 217
    if-le v2, v3, :cond_8

    .line 218
    .line 219
    sub-int/2addr v1, p1

    .line 220
    sub-int/2addr v2, v3

    .line 221
    iget-object p1, p0, Lf0/g;->h:Ljava/nio/ByteOrder;

    .line 222
    .line 223
    invoke-static {v1, p1}, Lf0/c;->createUShort(ILjava/nio/ByteOrder;)Lf0/c;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    iget-object v1, p0, Lf0/g;->h:Ljava/nio/ByteOrder;

    .line 228
    .line 229
    invoke-static {v2, v1}, Lf0/c;->createUShort(ILjava/nio/ByteOrder;)Lf0/c;

    .line 230
    .line 231
    .line 232
    move-result-object v1

    .line 233
    aget-object v2, v0, p2

    .line 234
    .line 235
    invoke-virtual {v2, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    aget-object p1, v0, p2

    .line 239
    .line 240
    invoke-virtual {p1, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    return-void

    .line 244
    :cond_6
    aget-object v1, v0, p2

    .line 245
    .line 246
    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object v1

    .line 250
    check-cast v1, Lf0/c;

    .line 251
    .line 252
    aget-object v2, v0, p2

    .line 253
    .line 254
    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object v2

    .line 258
    check-cast v2, Lf0/c;

    .line 259
    .line 260
    if-eqz v1, :cond_7

    .line 261
    .line 262
    if-nez v2, :cond_8

    .line 263
    .line 264
    :cond_7
    aget-object v1, v0, p2

    .line 265
    .line 266
    const-string v2, "JPEGInterchangeFormat"

    .line 267
    .line 268
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    move-result-object v1

    .line 272
    check-cast v1, Lf0/c;

    .line 273
    .line 274
    aget-object v0, v0, p2

    .line 275
    .line 276
    const-string v2, "JPEGInterchangeFormatLength"

    .line 277
    .line 278
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    check-cast v0, Lf0/c;

    .line 283
    .line 284
    if-eqz v1, :cond_8

    .line 285
    .line 286
    if-eqz v0, :cond_8

    .line 287
    .line 288
    iget-object v0, p0, Lf0/g;->h:Ljava/nio/ByteOrder;

    .line 289
    .line 290
    invoke-virtual {v1, v0}, Lf0/c;->getIntValue(Ljava/nio/ByteOrder;)I

    .line 291
    .line 292
    .line 293
    move-result v0

    .line 294
    iget-object v2, p0, Lf0/g;->h:Ljava/nio/ByteOrder;

    .line 295
    .line 296
    invoke-virtual {v1, v2}, Lf0/c;->getIntValue(Ljava/nio/ByteOrder;)I

    .line 297
    .line 298
    .line 299
    move-result v1

    .line 300
    int-to-long v2, v0

    .line 301
    invoke-virtual {p1, v2, v3}, Lf0/f;->seek(J)V

    .line 302
    .line 303
    .line 304
    new-array v1, v1, [B

    .line 305
    .line 306
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    .line 307
    .line 308
    .line 309
    new-instance p1, Lf0/b;

    .line 310
    .line 311
    invoke-direct {p1, v1}, Lf0/b;-><init>([B)V

    .line 312
    .line 313
    .line 314
    invoke-virtual {p0, p1, v0, p2}, Lf0/g;->d(Lf0/b;II)V

    .line 315
    .line 316
    .line 317
    :cond_8
    return-void
.end method

.method public final y()V
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x5

    .line 3
    invoke-virtual {p0, v0, v1}, Lf0/g;->w(II)V

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x4

    .line 7
    invoke-virtual {p0, v0, v2}, Lf0/g;->w(II)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v1, v2}, Lf0/g;->w(II)V

    .line 11
    .line 12
    .line 13
    iget-object v3, p0, Lf0/g;->f:[Ljava/util/HashMap;

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    aget-object v5, v3, v4

    .line 17
    .line 18
    const-string v6, "PixelXDimension"

    .line 19
    .line 20
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    check-cast v5, Lf0/c;

    .line 25
    .line 26
    aget-object v4, v3, v4

    .line 27
    .line 28
    const-string v6, "PixelYDimension"

    .line 29
    .line 30
    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    check-cast v4, Lf0/c;

    .line 35
    .line 36
    const-string v6, "ImageLength"

    .line 37
    .line 38
    const-string v7, "ImageWidth"

    .line 39
    .line 40
    if-eqz v5, :cond_0

    .line 41
    .line 42
    if-eqz v4, :cond_0

    .line 43
    .line 44
    aget-object v8, v3, v0

    .line 45
    .line 46
    invoke-virtual {v8, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    aget-object v5, v3, v0

    .line 50
    .line 51
    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    :cond_0
    aget-object v4, v3, v2

    .line 55
    .line 56
    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-eqz v4, :cond_1

    .line 61
    .line 62
    aget-object v4, v3, v1

    .line 63
    .line 64
    invoke-virtual {p0, v4}, Lf0/g;->n(Ljava/util/HashMap;)Z

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    if-eqz v4, :cond_1

    .line 69
    .line 70
    aget-object v4, v3, v1

    .line 71
    .line 72
    aput-object v4, v3, v2

    .line 73
    .line 74
    new-instance v4, Ljava/util/HashMap;

    .line 75
    .line 76
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 77
    .line 78
    .line 79
    aput-object v4, v3, v1

    .line 80
    .line 81
    :cond_1
    aget-object v3, v3, v2

    .line 82
    .line 83
    invoke-virtual {p0, v3}, Lf0/g;->n(Ljava/util/HashMap;)Z

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    if-nez v3, :cond_2

    .line 88
    .line 89
    const-string v3, "ExifInterface"

    .line 90
    .line 91
    const-string v4, "No image meets the size requirements of a thumbnail image."

    .line 92
    .line 93
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    :cond_2
    const-string v3, "ThumbnailOrientation"

    .line 97
    .line 98
    const-string v4, "Orientation"

    .line 99
    .line 100
    invoke-virtual {p0, v0, v3, v4}, Lf0/g;->u(ILjava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    const-string v5, "ThumbnailImageLength"

    .line 104
    .line 105
    invoke-virtual {p0, v0, v5, v6}, Lf0/g;->u(ILjava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    const-string v8, "ThumbnailImageWidth"

    .line 109
    .line 110
    invoke-virtual {p0, v0, v8, v7}, Lf0/g;->u(ILjava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0, v1, v3, v4}, Lf0/g;->u(ILjava/lang/String;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0, v1, v5, v6}, Lf0/g;->u(ILjava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0, v1, v8, v7}, Lf0/g;->u(ILjava/lang/String;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0, v2, v4, v3}, Lf0/g;->u(ILjava/lang/String;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0, v2, v6, v5}, Lf0/g;->u(ILjava/lang/String;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0, v2, v7, v8}, Lf0/g;->u(ILjava/lang/String;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    return-void
.end method
