.class public abstract LJ/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LJ/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, LJ/c;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, LJ/c;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, LJ/h;->a:LJ/c;

    .line 8
    .line 9
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/os/CancellationSignal;LJ/i;)LJ/p;
    .locals 19

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual/range {p2 .. p2}, LJ/i;->getProviderAuthority()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    if-eqz v4, :cond_11

    .line 19
    .line 20
    iget-object v5, v4, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual/range {p2 .. p2}, LJ/i;->getProviderPackage()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v6

    .line 26
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    if-eqz v5, :cond_10

    .line 31
    .line 32
    iget-object v2, v4, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 33
    .line 34
    const/16 v5, 0x40

    .line 35
    .line 36
    invoke-virtual {v0, v2, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 41
    .line 42
    new-instance v2, Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .line 46
    .line 47
    array-length v5, v0

    .line 48
    move v6, v3

    .line 49
    :goto_0
    if-ge v6, v5, :cond_0

    .line 50
    .line 51
    aget-object v7, v0, v6

    .line 52
    .line 53
    invoke-virtual {v7}, Landroid/content/pm/Signature;->toByteArray()[B

    .line 54
    .line 55
    .line 56
    move-result-object v7

    .line 57
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    add-int/lit8 v6, v6, 0x1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    sget-object v0, LJ/h;->a:LJ/c;

    .line 64
    .line 65
    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual/range {p2 .. p2}, LJ/i;->getCertificates()Ljava/util/List;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    if-eqz v5, :cond_1

    .line 73
    .line 74
    invoke-virtual/range {p2 .. p2}, LJ/i;->getCertificates()Ljava/util/List;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    goto :goto_1

    .line 79
    :cond_1
    invoke-virtual/range {p2 .. p2}, LJ/i;->getCertificatesArrayResId()I

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    invoke-static {v1, v5}, LC/j;->readCerts(Landroid/content/res/Resources;I)Ljava/util/List;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    :goto_1
    move v5, v3

    .line 88
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 89
    .line 90
    .line 91
    move-result v6

    .line 92
    const/4 v7, 0x0

    .line 93
    if-ge v5, v6, :cond_4

    .line 94
    .line 95
    new-instance v6, Ljava/util/ArrayList;

    .line 96
    .line 97
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v8

    .line 101
    check-cast v8, Ljava/util/Collection;

    .line 102
    .line 103
    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 104
    .line 105
    .line 106
    invoke-static {v6, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 110
    .line 111
    .line 112
    move-result v8

    .line 113
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 114
    .line 115
    .line 116
    move-result v9

    .line 117
    if-eq v8, v9, :cond_2

    .line 118
    .line 119
    goto :goto_4

    .line 120
    :cond_2
    move v8, v3

    .line 121
    :goto_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 122
    .line 123
    .line 124
    move-result v9

    .line 125
    if-ge v8, v9, :cond_5

    .line 126
    .line 127
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v9

    .line 131
    check-cast v9, [B

    .line 132
    .line 133
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v10

    .line 137
    check-cast v10, [B

    .line 138
    .line 139
    invoke-static {v9, v10}, Ljava/util/Arrays;->equals([B[B)Z

    .line 140
    .line 141
    .line 142
    move-result v9

    .line 143
    if-nez v9, :cond_3

    .line 144
    .line 145
    :goto_4
    add-int/lit8 v5, v5, 0x1

    .line 146
    .line 147
    goto :goto_2

    .line 148
    :cond_3
    add-int/lit8 v8, v8, 0x1

    .line 149
    .line 150
    goto :goto_3

    .line 151
    :cond_4
    move-object v4, v7

    .line 152
    :cond_5
    const/4 v0, 0x1

    .line 153
    if-nez v4, :cond_6

    .line 154
    .line 155
    new-instance v1, LJ/p;

    .line 156
    .line 157
    invoke-direct {v1, v0, v7}, LJ/p;-><init>(I[LJ/q;)V

    .line 158
    .line 159
    .line 160
    return-object v1

    .line 161
    :cond_6
    iget-object v1, v4, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 162
    .line 163
    new-instance v2, Ljava/util/ArrayList;

    .line 164
    .line 165
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 166
    .line 167
    .line 168
    new-instance v4, Landroid/net/Uri$Builder;

    .line 169
    .line 170
    invoke-direct {v4}, Landroid/net/Uri$Builder;-><init>()V

    .line 171
    .line 172
    .line 173
    const-string v5, "content"

    .line 174
    .line 175
    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 176
    .line 177
    .line 178
    move-result-object v4

    .line 179
    invoke-virtual {v4, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 180
    .line 181
    .line 182
    move-result-object v4

    .line 183
    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 184
    .line 185
    .line 186
    move-result-object v9

    .line 187
    new-instance v4, Landroid/net/Uri$Builder;

    .line 188
    .line 189
    invoke-direct {v4}, Landroid/net/Uri$Builder;-><init>()V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 193
    .line 194
    .line 195
    move-result-object v4

    .line 196
    invoke-virtual {v4, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    const-string v4, "file"

    .line 201
    .line 202
    invoke-virtual {v1, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    move-object/from16 v4, p0

    .line 211
    .line 212
    invoke-static {v4, v9}, LJ/d;->a(Landroid/content/Context;Landroid/net/Uri;)LJ/e;

    .line 213
    .line 214
    .line 215
    move-result-object v8

    .line 216
    :try_start_0
    const-string v10, "_id"

    .line 217
    .line 218
    const-string v11, "file_id"

    .line 219
    .line 220
    const-string v12, "font_ttc_index"

    .line 221
    .line 222
    const-string v13, "font_variation_settings"

    .line 223
    .line 224
    const-string v14, "font_weight"

    .line 225
    .line 226
    const-string v15, "font_italic"

    .line 227
    .line 228
    const-string v16, "result_code"

    .line 229
    .line 230
    filled-new-array/range {v10 .. v16}, [Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v10

    .line 234
    const-string v11, "query = ?"

    .line 235
    .line 236
    invoke-virtual/range {p2 .. p2}, LJ/i;->getQuery()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v4

    .line 240
    filled-new-array {v4}, [Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v12

    .line 244
    const/4 v13, 0x0

    .line 245
    move-object/from16 v14, p1

    .line 246
    .line 247
    invoke-interface/range {v8 .. v14}, LJ/e;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    .line 248
    .line 249
    .line 250
    move-result-object v7

    .line 251
    if-eqz v7, :cond_d

    .line 252
    .line 253
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    .line 254
    .line 255
    .line 256
    move-result v4

    .line 257
    if-lez v4, :cond_d

    .line 258
    .line 259
    const-string v2, "result_code"

    .line 260
    .line 261
    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 262
    .line 263
    .line 264
    move-result v2

    .line 265
    new-instance v4, Ljava/util/ArrayList;

    .line 266
    .line 267
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 268
    .line 269
    .line 270
    const-string v5, "_id"

    .line 271
    .line 272
    invoke-interface {v7, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 273
    .line 274
    .line 275
    move-result v5

    .line 276
    const-string v6, "file_id"

    .line 277
    .line 278
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 279
    .line 280
    .line 281
    move-result v6

    .line 282
    const-string v10, "font_ttc_index"

    .line 283
    .line 284
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 285
    .line 286
    .line 287
    move-result v10

    .line 288
    const-string v11, "font_weight"

    .line 289
    .line 290
    invoke-interface {v7, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 291
    .line 292
    .line 293
    move-result v11

    .line 294
    const-string v12, "font_italic"

    .line 295
    .line 296
    invoke-interface {v7, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 297
    .line 298
    .line 299
    move-result v12

    .line 300
    :goto_5
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    .line 301
    .line 302
    .line 303
    move-result v13

    .line 304
    if-eqz v13, :cond_c

    .line 305
    .line 306
    const/4 v13, -0x1

    .line 307
    if-eq v2, v13, :cond_7

    .line 308
    .line 309
    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    .line 310
    .line 311
    .line 312
    move-result v14

    .line 313
    move/from16 v18, v14

    .line 314
    .line 315
    goto :goto_6

    .line 316
    :catchall_0
    move-exception v0

    .line 317
    goto/16 :goto_d

    .line 318
    .line 319
    :cond_7
    move/from16 v18, v3

    .line 320
    .line 321
    :goto_6
    if-eq v10, v13, :cond_8

    .line 322
    .line 323
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getInt(I)I

    .line 324
    .line 325
    .line 326
    move-result v14

    .line 327
    move v15, v14

    .line 328
    goto :goto_7

    .line 329
    :cond_8
    move v15, v3

    .line 330
    :goto_7
    if-ne v6, v13, :cond_9

    .line 331
    .line 332
    move-object/from16 p0, v4

    .line 333
    .line 334
    invoke-interface {v7, v5}, Landroid/database/Cursor;->getLong(I)J

    .line 335
    .line 336
    .line 337
    move-result-wide v3

    .line 338
    invoke-static {v9, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    .line 339
    .line 340
    .line 341
    move-result-object v3

    .line 342
    :goto_8
    move-object v14, v3

    .line 343
    goto :goto_9

    .line 344
    :cond_9
    move-object/from16 p0, v4

    .line 345
    .line 346
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getLong(I)J

    .line 347
    .line 348
    .line 349
    move-result-wide v3

    .line 350
    invoke-static {v1, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    .line 351
    .line 352
    .line 353
    move-result-object v3

    .line 354
    goto :goto_8

    .line 355
    :goto_9
    if-eq v11, v13, :cond_a

    .line 356
    .line 357
    invoke-interface {v7, v11}, Landroid/database/Cursor;->getInt(I)I

    .line 358
    .line 359
    .line 360
    move-result v3

    .line 361
    :goto_a
    move/from16 v16, v3

    .line 362
    .line 363
    goto :goto_b

    .line 364
    :cond_a
    const/16 v3, 0x190

    .line 365
    .line 366
    goto :goto_a

    .line 367
    :goto_b
    if-eq v12, v13, :cond_b

    .line 368
    .line 369
    invoke-interface {v7, v12}, Landroid/database/Cursor;->getInt(I)I

    .line 370
    .line 371
    .line 372
    move-result v3

    .line 373
    if-ne v3, v0, :cond_b

    .line 374
    .line 375
    move/from16 v17, v0

    .line 376
    .line 377
    goto :goto_c

    .line 378
    :cond_b
    const/16 v17, 0x0

    .line 379
    .line 380
    :goto_c
    new-instance v13, LJ/q;

    .line 381
    .line 382
    invoke-direct/range {v13 .. v18}, LJ/q;-><init>(Landroid/net/Uri;IIZI)V

    .line 383
    .line 384
    .line 385
    move-object/from16 v3, p0

    .line 386
    .line 387
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 388
    .line 389
    .line 390
    move-object v4, v3

    .line 391
    const/4 v3, 0x0

    .line 392
    goto :goto_5

    .line 393
    :cond_c
    move-object v3, v4

    .line 394
    move-object v2, v3

    .line 395
    :cond_d
    if-eqz v7, :cond_e

    .line 396
    .line 397
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 398
    .line 399
    .line 400
    :cond_e
    invoke-interface {v8}, LJ/e;->close()V

    .line 401
    .line 402
    .line 403
    const/4 v0, 0x0

    .line 404
    new-array v1, v0, [LJ/q;

    .line 405
    .line 406
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 407
    .line 408
    .line 409
    move-result-object v1

    .line 410
    check-cast v1, [LJ/q;

    .line 411
    .line 412
    new-instance v2, LJ/p;

    .line 413
    .line 414
    invoke-direct {v2, v0, v1}, LJ/p;-><init>(I[LJ/q;)V

    .line 415
    .line 416
    .line 417
    return-object v2

    .line 418
    :goto_d
    if-eqz v7, :cond_f

    .line 419
    .line 420
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 421
    .line 422
    .line 423
    :cond_f
    invoke-interface {v8}, LJ/e;->close()V

    .line 424
    .line 425
    .line 426
    throw v0

    .line 427
    :cond_10
    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    .line 428
    .line 429
    const-string v1, "Found content provider "

    .line 430
    .line 431
    const-string v3, ", but package was not "

    .line 432
    .line 433
    invoke-static {v1, v2, v3}, LA/i;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    .line 435
    .line 436
    move-result-object v1

    .line 437
    invoke-virtual/range {p2 .. p2}, LJ/i;->getProviderPackage()Ljava/lang/String;

    .line 438
    .line 439
    .line 440
    move-result-object v2

    .line 441
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    .line 443
    .line 444
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 445
    .line 446
    .line 447
    move-result-object v1

    .line 448
    invoke-direct {v0, v1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    .line 449
    .line 450
    .line 451
    throw v0

    .line 452
    :cond_11
    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    .line 453
    .line 454
    const-string v1, "No package found for authority: "

    .line 455
    .line 456
    invoke-static {v1, v2}, LA/i;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 457
    .line 458
    .line 459
    move-result-object v1

    .line 460
    invoke-direct {v0, v1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    .line 461
    .line 462
    .line 463
    throw v0
.end method
