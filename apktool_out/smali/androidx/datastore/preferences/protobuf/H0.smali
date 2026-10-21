.class public abstract Landroidx/datastore/preferences/protobuf/H0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/logging/Logger;

.field public static final b:Lsun/misc/Unsafe;

.field public static final c:Ljava/lang/Class;

.field public static final d:Landroidx/datastore/preferences/protobuf/G0;

.field public static final e:Z

.field public static final f:Z

.field public static final g:J

.field public static final h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 21

    .line 1
    const/4 v4, 0x1

    .line 2
    const-class v0, Landroidx/datastore/preferences/protobuf/H0;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sput-object v0, Landroidx/datastore/preferences/protobuf/H0;->a:Ljava/util/logging/Logger;

    .line 13
    .line 14
    invoke-static {}, Landroidx/datastore/preferences/protobuf/H0;->i()Lsun/misc/Unsafe;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sput-object v0, Landroidx/datastore/preferences/protobuf/H0;->b:Lsun/misc/Unsafe;

    .line 19
    .line 20
    sget-object v5, Landroidx/datastore/preferences/protobuf/e;->a:Ljava/lang/Class;

    .line 21
    .line 22
    sput-object v5, Landroidx/datastore/preferences/protobuf/H0;->c:Ljava/lang/Class;

    .line 23
    .line 24
    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 25
    .line 26
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/H0;->e(Ljava/lang/Class;)Z

    .line 27
    .line 28
    .line 29
    move-result v6

    .line 30
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 31
    .line 32
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/H0;->e(Ljava/lang/Class;)Z

    .line 33
    .line 34
    .line 35
    move-result v8

    .line 36
    const/4 v9, 0x0

    .line 37
    if-nez v0, :cond_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    invoke-static {}, Landroidx/datastore/preferences/protobuf/e;->a()Z

    .line 41
    .line 42
    .line 43
    move-result v10

    .line 44
    if-eqz v10, :cond_2

    .line 45
    .line 46
    if-eqz v6, :cond_1

    .line 47
    .line 48
    new-instance v9, Landroidx/datastore/preferences/protobuf/E0;

    .line 49
    .line 50
    invoke-direct {v9, v0}, Landroidx/datastore/preferences/protobuf/G0;-><init>(Lsun/misc/Unsafe;)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    if-eqz v8, :cond_3

    .line 55
    .line 56
    new-instance v9, Landroidx/datastore/preferences/protobuf/D0;

    .line 57
    .line 58
    invoke-direct {v9, v0}, Landroidx/datastore/preferences/protobuf/G0;-><init>(Lsun/misc/Unsafe;)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    new-instance v9, Landroidx/datastore/preferences/protobuf/F0;

    .line 63
    .line 64
    invoke-direct {v9, v0}, Landroidx/datastore/preferences/protobuf/G0;-><init>(Lsun/misc/Unsafe;)V

    .line 65
    .line 66
    .line 67
    :cond_3
    :goto_0
    sput-object v9, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 68
    .line 69
    const-string v6, "copyMemory"

    .line 70
    .line 71
    const-string v8, "platform method missing - proto runtime falling back to safer methods: "

    .line 72
    .line 73
    const-string v9, "putLong"

    .line 74
    .line 75
    const-string v10, "putInt"

    .line 76
    .line 77
    const-string v11, "getInt"

    .line 78
    .line 79
    sget-object v12, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 80
    .line 81
    const-string v13, "putByte"

    .line 82
    .line 83
    const-string v14, "getByte"

    .line 84
    .line 85
    const-class v15, Ljava/lang/reflect/Field;

    .line 86
    .line 87
    const/16 v16, 0x0

    .line 88
    .line 89
    const-string v3, "objectFieldOffset"

    .line 90
    .line 91
    const-class v17, Ljava/lang/Object;

    .line 92
    .line 93
    const-string v1, "getLong"

    .line 94
    .line 95
    if-nez v0, :cond_4

    .line 96
    .line 97
    :goto_1
    move/from16 v0, v16

    .line 98
    .line 99
    goto/16 :goto_2

    .line 100
    .line 101
    :cond_4
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    new-array v2, v4, [Ljava/lang/Class;

    .line 106
    .line 107
    aput-object v15, v2, v16

    .line 108
    .line 109
    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 110
    .line 111
    .line 112
    move/from16 v20, v4

    .line 113
    .line 114
    const/4 v2, 0x2

    .line 115
    new-array v4, v2, [Ljava/lang/Class;

    .line 116
    .line 117
    aput-object v17, v4, v16

    .line 118
    .line 119
    aput-object v5, v4, v20

    .line 120
    .line 121
    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 122
    .line 123
    .line 124
    invoke-static {}, Landroidx/datastore/preferences/protobuf/H0;->d()Ljava/lang/reflect/Field;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    if-nez v2, :cond_5

    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_5
    invoke-static {}, Landroidx/datastore/preferences/protobuf/e;->a()Z

    .line 132
    .line 133
    .line 134
    move-result v2

    .line 135
    if-eqz v2, :cond_6

    .line 136
    .line 137
    move/from16 v0, v20

    .line 138
    .line 139
    goto/16 :goto_2

    .line 140
    .line 141
    :cond_6
    move/from16 v2, v20

    .line 142
    .line 143
    new-array v4, v2, [Ljava/lang/Class;

    .line 144
    .line 145
    aput-object v5, v4, v16

    .line 146
    .line 147
    invoke-virtual {v0, v14, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 148
    .line 149
    .line 150
    move/from16 v20, v2

    .line 151
    .line 152
    const/4 v4, 0x2

    .line 153
    new-array v2, v4, [Ljava/lang/Class;

    .line 154
    .line 155
    aput-object v5, v2, v16

    .line 156
    .line 157
    aput-object v12, v2, v20

    .line 158
    .line 159
    invoke-virtual {v0, v13, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 160
    .line 161
    .line 162
    move/from16 v2, v20

    .line 163
    .line 164
    new-array v4, v2, [Ljava/lang/Class;

    .line 165
    .line 166
    aput-object v5, v4, v16

    .line 167
    .line 168
    invoke-virtual {v0, v11, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 169
    .line 170
    .line 171
    move/from16 v20, v2

    .line 172
    .line 173
    const/4 v4, 0x2

    .line 174
    new-array v2, v4, [Ljava/lang/Class;

    .line 175
    .line 176
    aput-object v5, v2, v16

    .line 177
    .line 178
    aput-object v7, v2, v20

    .line 179
    .line 180
    invoke-virtual {v0, v10, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 181
    .line 182
    .line 183
    move/from16 v2, v20

    .line 184
    .line 185
    new-array v4, v2, [Ljava/lang/Class;

    .line 186
    .line 187
    aput-object v5, v4, v16

    .line 188
    .line 189
    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 190
    .line 191
    .line 192
    move/from16 v20, v2

    .line 193
    .line 194
    const/4 v4, 0x2

    .line 195
    new-array v2, v4, [Ljava/lang/Class;

    .line 196
    .line 197
    aput-object v5, v2, v16

    .line 198
    .line 199
    aput-object v5, v2, v20

    .line 200
    .line 201
    invoke-virtual {v0, v9, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 202
    .line 203
    .line 204
    const/4 v2, 0x3

    .line 205
    new-array v4, v2, [Ljava/lang/Class;

    .line 206
    .line 207
    aput-object v5, v4, v16

    .line 208
    .line 209
    aput-object v5, v4, v20

    .line 210
    .line 211
    const/16 v19, 0x2

    .line 212
    .line 213
    aput-object v5, v4, v19

    .line 214
    .line 215
    invoke-virtual {v0, v6, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 216
    .line 217
    .line 218
    const/4 v2, 0x5

    .line 219
    new-array v2, v2, [Ljava/lang/Class;

    .line 220
    .line 221
    aput-object v17, v2, v16

    .line 222
    .line 223
    aput-object v5, v2, v20

    .line 224
    .line 225
    aput-object v17, v2, v19

    .line 226
    .line 227
    const/16 v18, 0x3

    .line 228
    .line 229
    aput-object v5, v2, v18

    .line 230
    .line 231
    const/4 v4, 0x4

    .line 232
    aput-object v5, v2, v4

    .line 233
    .line 234
    invoke-virtual {v0, v6, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    .line 236
    .line 237
    const/4 v0, 0x1

    .line 238
    goto :goto_2

    .line 239
    :catchall_0
    move-exception v0

    .line 240
    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 241
    .line 242
    new-instance v4, Ljava/lang/StringBuilder;

    .line 243
    .line 244
    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    sget-object v4, Landroidx/datastore/preferences/protobuf/H0;->a:Ljava/util/logging/Logger;

    .line 255
    .line 256
    invoke-virtual {v4, v2, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    goto/16 :goto_1

    .line 260
    .line 261
    :goto_2
    sput-boolean v0, Landroidx/datastore/preferences/protobuf/H0;->e:Z

    .line 262
    .line 263
    const-class v0, Ljava/lang/Class;

    .line 264
    .line 265
    sget-object v2, Landroidx/datastore/preferences/protobuf/H0;->b:Lsun/misc/Unsafe;

    .line 266
    .line 267
    if-nez v2, :cond_7

    .line 268
    .line 269
    move/from16 v2, v16

    .line 270
    .line 271
    :goto_3
    const/16 v20, 0x1

    .line 272
    .line 273
    goto/16 :goto_5

    .line 274
    .line 275
    :cond_7
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 276
    .line 277
    .line 278
    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 279
    const/4 v4, 0x1

    .line 280
    :try_start_2
    new-array v6, v4, [Ljava/lang/Class;

    .line 281
    .line 282
    aput-object v15, v6, v16

    .line 283
    .line 284
    invoke-virtual {v2, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 285
    .line 286
    .line 287
    const-string v3, "arrayBaseOffset"

    .line 288
    .line 289
    new-array v6, v4, [Ljava/lang/Class;

    .line 290
    .line 291
    aput-object v0, v6, v16

    .line 292
    .line 293
    invoke-virtual {v2, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 294
    .line 295
    .line 296
    const-string v3, "arrayIndexScale"

    .line 297
    .line 298
    new-array v6, v4, [Ljava/lang/Class;

    .line 299
    .line 300
    aput-object v0, v6, v16

    .line 301
    .line 302
    invoke-virtual {v2, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 303
    .line 304
    .line 305
    const/4 v3, 0x2

    .line 306
    new-array v0, v3, [Ljava/lang/Class;

    .line 307
    .line 308
    aput-object v17, v0, v16

    .line 309
    .line 310
    aput-object v5, v0, v4

    .line 311
    .line 312
    invoke-virtual {v2, v11, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 313
    .line 314
    .line 315
    const/4 v3, 0x3

    .line 316
    new-array v0, v3, [Ljava/lang/Class;

    .line 317
    .line 318
    aput-object v17, v0, v16

    .line 319
    .line 320
    aput-object v5, v0, v4

    .line 321
    .line 322
    const/4 v3, 0x2

    .line 323
    aput-object v7, v0, v3

    .line 324
    .line 325
    invoke-virtual {v2, v10, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 326
    .line 327
    .line 328
    new-array v0, v3, [Ljava/lang/Class;

    .line 329
    .line 330
    aput-object v17, v0, v16

    .line 331
    .line 332
    aput-object v5, v0, v4

    .line 333
    .line 334
    invoke-virtual {v2, v1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 335
    .line 336
    .line 337
    const/4 v3, 0x3

    .line 338
    new-array v0, v3, [Ljava/lang/Class;

    .line 339
    .line 340
    aput-object v17, v0, v16

    .line 341
    .line 342
    aput-object v5, v0, v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 343
    .line 344
    const/4 v4, 0x2

    .line 345
    :try_start_3
    aput-object v5, v0, v4

    .line 346
    .line 347
    invoke-virtual {v2, v9, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 348
    .line 349
    .line 350
    const-string v0, "getObject"

    .line 351
    .line 352
    new-array v1, v4, [Ljava/lang/Class;

    .line 353
    .line 354
    aput-object v17, v1, v16
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 355
    .line 356
    const/16 v20, 0x1

    .line 357
    .line 358
    :try_start_4
    aput-object v5, v1, v20

    .line 359
    .line 360
    invoke-virtual {v2, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 361
    .line 362
    .line 363
    const-string v0, "putObject"

    .line 364
    .line 365
    const/4 v3, 0x3

    .line 366
    new-array v1, v3, [Ljava/lang/Class;

    .line 367
    .line 368
    aput-object v17, v1, v16

    .line 369
    .line 370
    aput-object v5, v1, v20
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 371
    .line 372
    const/4 v4, 0x2

    .line 373
    :try_start_5
    aput-object v17, v1, v4

    .line 374
    .line 375
    invoke-virtual {v2, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 376
    .line 377
    .line 378
    invoke-static {}, Landroidx/datastore/preferences/protobuf/e;->a()Z

    .line 379
    .line 380
    .line 381
    move-result v0

    .line 382
    if-eqz v0, :cond_8

    .line 383
    .line 384
    const/4 v2, 0x1

    .line 385
    goto :goto_3

    .line 386
    :cond_8
    new-array v0, v4, [Ljava/lang/Class;

    .line 387
    .line 388
    aput-object v17, v0, v16
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 389
    .line 390
    const/16 v20, 0x1

    .line 391
    .line 392
    :try_start_6
    aput-object v5, v0, v20

    .line 393
    .line 394
    invoke-virtual {v2, v14, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 395
    .line 396
    .line 397
    const/4 v3, 0x3

    .line 398
    new-array v0, v3, [Ljava/lang/Class;

    .line 399
    .line 400
    aput-object v17, v0, v16

    .line 401
    .line 402
    aput-object v5, v0, v20
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 403
    .line 404
    const/4 v4, 0x2

    .line 405
    :try_start_7
    aput-object v12, v0, v4

    .line 406
    .line 407
    invoke-virtual {v2, v13, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 408
    .line 409
    .line 410
    const-string v0, "getBoolean"

    .line 411
    .line 412
    new-array v1, v4, [Ljava/lang/Class;

    .line 413
    .line 414
    aput-object v17, v1, v16
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 415
    .line 416
    const/16 v20, 0x1

    .line 417
    .line 418
    :try_start_8
    aput-object v5, v1, v20

    .line 419
    .line 420
    invoke-virtual {v2, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 421
    .line 422
    .line 423
    const-string v0, "putBoolean"

    .line 424
    .line 425
    const/4 v3, 0x3

    .line 426
    new-array v1, v3, [Ljava/lang/Class;

    .line 427
    .line 428
    aput-object v17, v1, v16

    .line 429
    .line 430
    aput-object v5, v1, v20
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 431
    .line 432
    :try_start_9
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 433
    .line 434
    const/4 v4, 0x2

    .line 435
    aput-object v3, v1, v4

    .line 436
    .line 437
    invoke-virtual {v2, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 438
    .line 439
    .line 440
    const-string v0, "getFloat"

    .line 441
    .line 442
    new-array v1, v4, [Ljava/lang/Class;

    .line 443
    .line 444
    aput-object v17, v1, v16
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 445
    .line 446
    const/16 v20, 0x1

    .line 447
    .line 448
    :try_start_a
    aput-object v5, v1, v20

    .line 449
    .line 450
    invoke-virtual {v2, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 451
    .line 452
    .line 453
    const-string v0, "putFloat"

    .line 454
    .line 455
    const/4 v3, 0x3

    .line 456
    new-array v1, v3, [Ljava/lang/Class;

    .line 457
    .line 458
    aput-object v17, v1, v16

    .line 459
    .line 460
    aput-object v5, v1, v20
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 461
    .line 462
    :try_start_b
    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 463
    .line 464
    const/4 v4, 0x2

    .line 465
    aput-object v3, v1, v4

    .line 466
    .line 467
    invoke-virtual {v2, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 468
    .line 469
    .line 470
    const-string v0, "getDouble"

    .line 471
    .line 472
    new-array v1, v4, [Ljava/lang/Class;

    .line 473
    .line 474
    aput-object v17, v1, v16
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 475
    .line 476
    const/16 v20, 0x1

    .line 477
    .line 478
    :try_start_c
    aput-object v5, v1, v20

    .line 479
    .line 480
    invoke-virtual {v2, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 481
    .line 482
    .line 483
    const-string v0, "putDouble"

    .line 484
    .line 485
    const/4 v3, 0x3

    .line 486
    new-array v1, v3, [Ljava/lang/Class;

    .line 487
    .line 488
    aput-object v17, v1, v16

    .line 489
    .line 490
    aput-object v5, v1, v20

    .line 491
    .line 492
    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 493
    .line 494
    const/16 v19, 0x2

    .line 495
    .line 496
    aput-object v3, v1, v19

    .line 497
    .line 498
    invoke-virtual {v2, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 499
    .line 500
    .line 501
    move/from16 v2, v20

    .line 502
    .line 503
    goto :goto_5

    .line 504
    :catchall_1
    move-exception v0

    .line 505
    goto :goto_4

    .line 506
    :catchall_2
    move-exception v0

    .line 507
    const/16 v20, 0x1

    .line 508
    .line 509
    goto :goto_4

    .line 510
    :catchall_3
    move-exception v0

    .line 511
    move/from16 v20, v4

    .line 512
    .line 513
    :goto_4
    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 514
    .line 515
    new-instance v2, Ljava/lang/StringBuilder;

    .line 516
    .line 517
    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 518
    .line 519
    .line 520
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 521
    .line 522
    .line 523
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 524
    .line 525
    .line 526
    move-result-object v0

    .line 527
    sget-object v2, Landroidx/datastore/preferences/protobuf/H0;->a:Ljava/util/logging/Logger;

    .line 528
    .line 529
    invoke-virtual {v2, v1, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 530
    .line 531
    .line 532
    move/from16 v2, v16

    .line 533
    .line 534
    :goto_5
    sput-boolean v2, Landroidx/datastore/preferences/protobuf/H0;->f:Z

    .line 535
    .line 536
    const-class v0, [B

    .line 537
    .line 538
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/H0;->b(Ljava/lang/Class;)I

    .line 539
    .line 540
    .line 541
    move-result v0

    .line 542
    int-to-long v0, v0

    .line 543
    sput-wide v0, Landroidx/datastore/preferences/protobuf/H0;->g:J

    .line 544
    .line 545
    const-class v0, [Z

    .line 546
    .line 547
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/H0;->b(Ljava/lang/Class;)I

    .line 548
    .line 549
    .line 550
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/H0;->c(Ljava/lang/Class;)V

    .line 551
    .line 552
    .line 553
    const-class v0, [I

    .line 554
    .line 555
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/H0;->b(Ljava/lang/Class;)I

    .line 556
    .line 557
    .line 558
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/H0;->c(Ljava/lang/Class;)V

    .line 559
    .line 560
    .line 561
    const-class v0, [J

    .line 562
    .line 563
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/H0;->b(Ljava/lang/Class;)I

    .line 564
    .line 565
    .line 566
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/H0;->c(Ljava/lang/Class;)V

    .line 567
    .line 568
    .line 569
    const-class v0, [F

    .line 570
    .line 571
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/H0;->b(Ljava/lang/Class;)I

    .line 572
    .line 573
    .line 574
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/H0;->c(Ljava/lang/Class;)V

    .line 575
    .line 576
    .line 577
    const-class v0, [D

    .line 578
    .line 579
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/H0;->b(Ljava/lang/Class;)I

    .line 580
    .line 581
    .line 582
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/H0;->c(Ljava/lang/Class;)V

    .line 583
    .line 584
    .line 585
    const-class v0, [Ljava/lang/Object;

    .line 586
    .line 587
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/H0;->b(Ljava/lang/Class;)I

    .line 588
    .line 589
    .line 590
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/H0;->c(Ljava/lang/Class;)V

    .line 591
    .line 592
    .line 593
    invoke-static {}, Landroidx/datastore/preferences/protobuf/H0;->d()Ljava/lang/reflect/Field;

    .line 594
    .line 595
    .line 596
    move-result-object v0

    .line 597
    if-eqz v0, :cond_a

    .line 598
    .line 599
    sget-object v1, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 600
    .line 601
    if-nez v1, :cond_9

    .line 602
    .line 603
    goto :goto_6

    .line 604
    :cond_9
    invoke-virtual {v1, v0}, Landroidx/datastore/preferences/protobuf/G0;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 605
    .line 606
    .line 607
    :cond_a
    :goto_6
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 608
    .line 609
    .line 610
    move-result-object v0

    .line 611
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 612
    .line 613
    if-ne v0, v1, :cond_b

    .line 614
    .line 615
    move/from16 v3, v20

    .line 616
    .line 617
    goto :goto_7

    .line 618
    :cond_b
    move/from16 v3, v16

    .line 619
    .line 620
    :goto_7
    sput-boolean v3, Landroidx/datastore/preferences/protobuf/H0;->h:Z

    .line 621
    .line 622
    return-void
.end method

.method public static a(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Landroidx/datastore/preferences/protobuf/H0;->b:Lsun/misc/Unsafe;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->allocateInstance(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return-object p0

    .line 8
    :catch_0
    move-exception p0

    .line 9
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 12
    .line 13
    .line 14
    throw v0
.end method

.method public static b(Ljava/lang/Class;)I
    .locals 1

    .line 1
    sget-boolean v0, Landroidx/datastore/preferences/protobuf/H0;->f:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 6
    .line 7
    invoke-virtual {v0, p0}, Landroidx/datastore/preferences/protobuf/G0;->arrayBaseOffset(Ljava/lang/Class;)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_0
    const/4 p0, -0x1

    .line 13
    return p0
.end method

.method public static c(Ljava/lang/Class;)V
    .locals 1

    .line 1
    sget-boolean v0, Landroidx/datastore/preferences/protobuf/H0;->f:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 6
    .line 7
    invoke-virtual {v0, p0}, Landroidx/datastore/preferences/protobuf/G0;->arrayIndexScale(Ljava/lang/Class;)I

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public static d()Ljava/lang/reflect/Field;
    .locals 4

    .line 1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/e;->a()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-class v1, Ljava/nio/Buffer;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string v0, "effectiveDirectAddress"

    .line 11
    .line 12
    :try_start_0
    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 13
    .line 14
    .line 15
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-object v0, v2

    .line 18
    :goto_0
    if-eqz v0, :cond_0

    .line 19
    .line 20
    return-object v0

    .line 21
    :cond_0
    const-string v0, "address"

    .line 22
    .line 23
    :try_start_1
    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 24
    .line 25
    .line 26
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 27
    goto :goto_1

    .line 28
    :catchall_1
    move-object v0, v2

    .line 29
    :goto_1
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 36
    .line 37
    if-ne v1, v3, :cond_1

    .line 38
    .line 39
    return-object v0

    .line 40
    :cond_1
    return-object v2
.end method

.method public static e(Ljava/lang/Class;)Z
    .locals 11

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x3

    .line 3
    const/4 v2, 0x2

    .line 4
    const/4 v3, 0x1

    .line 5
    const-class v4, [B

    .line 6
    .line 7
    invoke-static {}, Landroidx/datastore/preferences/protobuf/e;->a()Z

    .line 8
    .line 9
    .line 10
    move-result v5

    .line 11
    const/4 v6, 0x0

    .line 12
    if-nez v5, :cond_0

    .line 13
    .line 14
    return v6

    .line 15
    :cond_0
    :try_start_0
    sget-object v5, Landroidx/datastore/preferences/protobuf/H0;->c:Ljava/lang/Class;

    .line 16
    .line 17
    const-string v7, "peekLong"

    .line 18
    .line 19
    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 20
    .line 21
    new-array v9, v2, [Ljava/lang/Class;

    .line 22
    .line 23
    aput-object p0, v9, v6

    .line 24
    .line 25
    aput-object v8, v9, v3

    .line 26
    .line 27
    invoke-virtual {v5, v7, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 28
    .line 29
    .line 30
    const-string v7, "pokeLong"

    .line 31
    .line 32
    new-array v9, v1, [Ljava/lang/Class;

    .line 33
    .line 34
    aput-object p0, v9, v6

    .line 35
    .line 36
    sget-object v10, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 37
    .line 38
    aput-object v10, v9, v3

    .line 39
    .line 40
    aput-object v8, v9, v2

    .line 41
    .line 42
    invoke-virtual {v5, v7, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 43
    .line 44
    .line 45
    const-string v7, "pokeInt"

    .line 46
    .line 47
    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 48
    .line 49
    new-array v10, v1, [Ljava/lang/Class;

    .line 50
    .line 51
    aput-object p0, v10, v6

    .line 52
    .line 53
    aput-object v9, v10, v3

    .line 54
    .line 55
    aput-object v8, v10, v2

    .line 56
    .line 57
    invoke-virtual {v5, v7, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 58
    .line 59
    .line 60
    const-string v7, "peekInt"

    .line 61
    .line 62
    new-array v10, v2, [Ljava/lang/Class;

    .line 63
    .line 64
    aput-object p0, v10, v6

    .line 65
    .line 66
    aput-object v8, v10, v3

    .line 67
    .line 68
    invoke-virtual {v5, v7, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 69
    .line 70
    .line 71
    const-string v7, "pokeByte"

    .line 72
    .line 73
    new-array v8, v2, [Ljava/lang/Class;

    .line 74
    .line 75
    aput-object p0, v8, v6

    .line 76
    .line 77
    sget-object v10, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 78
    .line 79
    aput-object v10, v8, v3

    .line 80
    .line 81
    invoke-virtual {v5, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 82
    .line 83
    .line 84
    const-string v7, "peekByte"

    .line 85
    .line 86
    new-array v8, v3, [Ljava/lang/Class;

    .line 87
    .line 88
    aput-object p0, v8, v6

    .line 89
    .line 90
    invoke-virtual {v5, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 91
    .line 92
    .line 93
    const-string v7, "pokeByteArray"

    .line 94
    .line 95
    new-array v8, v0, [Ljava/lang/Class;

    .line 96
    .line 97
    aput-object p0, v8, v6

    .line 98
    .line 99
    aput-object v4, v8, v3

    .line 100
    .line 101
    aput-object v9, v8, v2

    .line 102
    .line 103
    aput-object v9, v8, v1

    .line 104
    .line 105
    invoke-virtual {v5, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 106
    .line 107
    .line 108
    const-string v7, "peekByteArray"

    .line 109
    .line 110
    new-array v0, v0, [Ljava/lang/Class;

    .line 111
    .line 112
    aput-object p0, v0, v6

    .line 113
    .line 114
    aput-object v4, v0, v3

    .line 115
    .line 116
    aput-object v9, v0, v2

    .line 117
    .line 118
    aput-object v9, v0, v1

    .line 119
    .line 120
    invoke-virtual {v5, v7, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    .line 122
    .line 123
    return v3

    .line 124
    :catchall_0
    return v6
.end method

.method public static f(J[B)B
    .locals 2

    .line 1
    sget-wide v0, Landroidx/datastore/preferences/protobuf/H0;->g:J

    .line 2
    .line 3
    add-long/2addr v0, p0

    .line 4
    sget-object p0, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 5
    .line 6
    invoke-virtual {p0, p2, v0, v1}, Landroidx/datastore/preferences/protobuf/G0;->getByte(Ljava/lang/Object;J)B

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method public static g(JLjava/lang/Object;)B
    .locals 3

    .line 1
    const-wide/16 v0, -0x4

    .line 2
    .line 3
    and-long/2addr v0, p0

    .line 4
    sget-object v2, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 5
    .line 6
    invoke-virtual {v2, p2, v0, v1}, Landroidx/datastore/preferences/protobuf/G0;->getInt(Ljava/lang/Object;J)I

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    not-long p0, p0

    .line 11
    const-wide/16 v0, 0x3

    .line 12
    .line 13
    and-long/2addr p0, v0

    .line 14
    const/4 v0, 0x3

    .line 15
    shl-long/2addr p0, v0

    .line 16
    long-to-int p0, p0

    .line 17
    ushr-int p0, p2, p0

    .line 18
    .line 19
    and-int/lit16 p0, p0, 0xff

    .line 20
    .line 21
    int-to-byte p0, p0

    .line 22
    return p0
.end method

.method public static h(JLjava/lang/Object;)B
    .locals 3

    .line 1
    const-wide/16 v0, -0x4

    .line 2
    .line 3
    and-long/2addr v0, p0

    .line 4
    sget-object v2, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 5
    .line 6
    invoke-virtual {v2, p2, v0, v1}, Landroidx/datastore/preferences/protobuf/G0;->getInt(Ljava/lang/Object;J)I

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    const-wide/16 v0, 0x3

    .line 11
    .line 12
    and-long/2addr p0, v0

    .line 13
    const/4 v0, 0x3

    .line 14
    shl-long/2addr p0, v0

    .line 15
    long-to-int p0, p0

    .line 16
    ushr-int p0, p2, p0

    .line 17
    .line 18
    and-int/lit16 p0, p0, 0xff

    .line 19
    .line 20
    int-to-byte p0, p0

    .line 21
    return p0
.end method

.method public static i()Lsun/misc/Unsafe;
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Landroidx/datastore/preferences/protobuf/C0;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lsun/misc/Unsafe;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    return-object v0

    .line 13
    :catchall_0
    const/4 v0, 0x0

    .line 14
    return-object v0
.end method

.method public static j([BJB)V
    .locals 2

    .line 1
    sget-wide v0, Landroidx/datastore/preferences/protobuf/H0;->g:J

    .line 2
    .line 3
    add-long/2addr v0, p1

    .line 4
    sget-object p1, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 5
    .line 6
    invoke-virtual {p1, p0, v0, v1, p3}, Landroidx/datastore/preferences/protobuf/G0;->putByte(Ljava/lang/Object;JB)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static k(Ljava/lang/Object;JB)V
    .locals 4

    .line 1
    const-wide/16 v0, -0x4

    .line 2
    .line 3
    and-long/2addr v0, p1

    .line 4
    sget-object v2, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 5
    .line 6
    invoke-virtual {v2, p0, v0, v1}, Landroidx/datastore/preferences/protobuf/G0;->getInt(Ljava/lang/Object;J)I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    long-to-int p1, p1

    .line 11
    not-int p1, p1

    .line 12
    and-int/lit8 p1, p1, 0x3

    .line 13
    .line 14
    shl-int/lit8 p1, p1, 0x3

    .line 15
    .line 16
    const/16 p2, 0xff

    .line 17
    .line 18
    shl-int v3, p2, p1

    .line 19
    .line 20
    not-int v3, v3

    .line 21
    and-int/2addr v2, v3

    .line 22
    and-int/2addr p2, p3

    .line 23
    shl-int p1, p2, p1

    .line 24
    .line 25
    or-int/2addr p1, v2

    .line 26
    invoke-static {p0, v0, v1, p1}, Landroidx/datastore/preferences/protobuf/H0;->m(Ljava/lang/Object;JI)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public static l(Ljava/lang/Object;JB)V
    .locals 4

    .line 1
    const-wide/16 v0, -0x4

    .line 2
    .line 3
    and-long/2addr v0, p1

    .line 4
    sget-object v2, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 5
    .line 6
    invoke-virtual {v2, p0, v0, v1}, Landroidx/datastore/preferences/protobuf/G0;->getInt(Ljava/lang/Object;J)I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    long-to-int p1, p1

    .line 11
    and-int/lit8 p1, p1, 0x3

    .line 12
    .line 13
    shl-int/lit8 p1, p1, 0x3

    .line 14
    .line 15
    const/16 p2, 0xff

    .line 16
    .line 17
    shl-int v3, p2, p1

    .line 18
    .line 19
    not-int v3, v3

    .line 20
    and-int/2addr v2, v3

    .line 21
    and-int/2addr p2, p3

    .line 22
    shl-int p1, p2, p1

    .line 23
    .line 24
    or-int/2addr p1, v2

    .line 25
    invoke-static {p0, v0, v1, p1}, Landroidx/datastore/preferences/protobuf/H0;->m(Ljava/lang/Object;JI)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public static m(Ljava/lang/Object;JI)V
    .locals 1

    .line 1
    sget-object v0, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/G0;->putInt(Ljava/lang/Object;JI)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static n(Ljava/lang/Object;JJ)V
    .locals 6

    .line 1
    sget-object v0, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 2
    .line 3
    move-object v1, p0

    .line 4
    move-wide v2, p1

    .line 5
    move-wide v4, p3

    .line 6
    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/G0;->putLong(Ljava/lang/Object;JJ)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static o(Ljava/lang/Object;JLjava/lang/Object;)V
    .locals 1

    .line 1
    sget-object v0, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/G0;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
