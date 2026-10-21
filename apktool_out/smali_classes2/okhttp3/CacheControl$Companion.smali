.class public final Lokhttp3/CacheControl$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/CacheControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lokhttp3/CacheControl$Companion;-><init>()V

    return-void
.end method

.method private final indexOfElement(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    :goto_0
    if-ge p3, v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x2

    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x0

    .line 14
    invoke-static {p2, v1, v4, v2, v3}, Lkotlin/text/StringsKt__StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    return p3

    .line 21
    :cond_0
    add-int/lit8 p3, p3, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    return p1
.end method

.method public static synthetic indexOfElement$default(Lokhttp3/CacheControl$Companion;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)I
    .locals 0

    .line 1
    and-int/lit8 p4, p4, 0x2

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    const/4 p3, 0x0

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lokhttp3/CacheControl$Companion;->indexOfElement(Ljava/lang/String;Ljava/lang/String;I)I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method


# virtual methods
.method public final parse(Lokhttp3/Headers;)Lokhttp3/CacheControl;
    .locals 32

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "headers"

    .line 6
    .line 7
    invoke-static {v1, v2}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1}, Lokhttp3/Headers;->size()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const/4 v5, 0x1

    .line 15
    move v8, v5

    .line 16
    const/4 v7, 0x0

    .line 17
    const/4 v9, 0x0

    .line 18
    const/4 v10, 0x0

    .line 19
    const/4 v11, 0x0

    .line 20
    const/4 v12, -0x1

    .line 21
    const/4 v13, -0x1

    .line 22
    const/4 v14, 0x0

    .line 23
    const/4 v15, 0x0

    .line 24
    const/16 v16, 0x0

    .line 25
    .line 26
    const/16 v17, -0x1

    .line 27
    .line 28
    const/16 v18, -0x1

    .line 29
    .line 30
    const/16 v19, 0x0

    .line 31
    .line 32
    const/16 v20, 0x0

    .line 33
    .line 34
    const/16 v21, 0x0

    .line 35
    .line 36
    :goto_0
    if-ge v7, v2, :cond_13

    .line 37
    .line 38
    invoke-virtual {v1, v7}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v1, v7}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    const-string v4, "Cache-Control"

    .line 47
    .line 48
    invoke-static {v3, v4, v5}, LP5/p;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-eqz v4, :cond_1

    .line 53
    .line 54
    if-eqz v9, :cond_0

    .line 55
    .line 56
    :goto_1
    const/4 v8, 0x0

    .line 57
    goto :goto_2

    .line 58
    :cond_0
    move-object v9, v6

    .line 59
    goto :goto_2

    .line 60
    :cond_1
    const-string v4, "Pragma"

    .line 61
    .line 62
    invoke-static {v3, v4, v5}, LP5/p;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-eqz v3, :cond_12

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :goto_2
    const/4 v3, 0x0

    .line 70
    :goto_3
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    if-ge v3, v4, :cond_12

    .line 75
    .line 76
    const-string v4, "=,;"

    .line 77
    .line 78
    invoke-direct {v0, v6, v4, v3}, Lokhttp3/CacheControl$Companion;->indexOfElement(Ljava/lang/String;Ljava/lang/String;I)I

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    invoke-virtual {v6, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    move/from16 v29, v5

    .line 87
    .line 88
    const-string v5, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    .line 89
    .line 90
    invoke-static {v3, v5}, Lkotlin/jvm/internal/j;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-static {v3}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    if-eq v4, v1, :cond_5

    .line 106
    .line 107
    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    move/from16 v30, v2

    .line 112
    .line 113
    const/16 v2, 0x2c

    .line 114
    .line 115
    if-eq v1, v2, :cond_2

    .line 116
    .line 117
    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    const/16 v2, 0x3b

    .line 122
    .line 123
    if-ne v1, v2, :cond_3

    .line 124
    .line 125
    :cond_2
    :goto_4
    move-object v2, v6

    .line 126
    goto :goto_5

    .line 127
    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 128
    .line 129
    invoke-static {v6, v4}, Lokhttp3/internal/Util;->indexOfNonWhitespace(Ljava/lang/String;I)I

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 134
    .line 135
    .line 136
    move-result v2

    .line 137
    if-ge v1, v2, :cond_4

    .line 138
    .line 139
    invoke-virtual {v6, v1}, Ljava/lang/String;->charAt(I)C

    .line 140
    .line 141
    .line 142
    move-result v2

    .line 143
    const/16 v4, 0x22

    .line 144
    .line 145
    if-ne v2, v4, :cond_4

    .line 146
    .line 147
    add-int/lit8 v25, v1, 0x1

    .line 148
    .line 149
    const/16 v27, 0x4

    .line 150
    .line 151
    const/16 v28, 0x0

    .line 152
    .line 153
    const/16 v24, 0x22

    .line 154
    .line 155
    const/16 v26, 0x0

    .line 156
    .line 157
    move-object/from16 v23, v6

    .line 158
    .line 159
    invoke-static/range {v23 .. v28}, Lkotlin/text/StringsKt__StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    .line 160
    .line 161
    .line 162
    move-result v1

    .line 163
    move-object/from16 v2, v23

    .line 164
    .line 165
    move/from16 v4, v25

    .line 166
    .line 167
    invoke-virtual {v2, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v4

    .line 171
    invoke-static {v4, v5}, Lkotlin/jvm/internal/j;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    add-int/lit8 v1, v1, 0x1

    .line 175
    .line 176
    move-object/from16 v31, v4

    .line 177
    .line 178
    move v4, v1

    .line 179
    move-object/from16 v1, v31

    .line 180
    .line 181
    goto :goto_6

    .line 182
    :cond_4
    move-object v2, v6

    .line 183
    const-string v4, ",;"

    .line 184
    .line 185
    invoke-direct {v0, v2, v4, v1}, Lokhttp3/CacheControl$Companion;->indexOfElement(Ljava/lang/String;Ljava/lang/String;I)I

    .line 186
    .line 187
    .line 188
    move-result v4

    .line 189
    invoke-virtual {v2, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    invoke-static {v1, v5}, Lkotlin/jvm/internal/j;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    invoke-static {v1}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    goto :goto_6

    .line 205
    :cond_5
    move/from16 v30, v2

    .line 206
    .line 207
    goto :goto_4

    .line 208
    :goto_5
    add-int/lit8 v4, v4, 0x1

    .line 209
    .line 210
    const/4 v1, 0x0

    .line 211
    :goto_6
    const-string v5, "no-cache"

    .line 212
    .line 213
    move/from16 v6, v29

    .line 214
    .line 215
    invoke-static {v5, v3, v6}, LP5/p;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 216
    .line 217
    .line 218
    move-result v5

    .line 219
    if-eqz v5, :cond_6

    .line 220
    .line 221
    move-object/from16 v1, p1

    .line 222
    .line 223
    move v3, v4

    .line 224
    move v5, v6

    .line 225
    move v10, v5

    .line 226
    :goto_7
    move-object v6, v2

    .line 227
    move/from16 v2, v30

    .line 228
    .line 229
    goto/16 :goto_3

    .line 230
    .line 231
    :cond_6
    const-string v5, "no-store"

    .line 232
    .line 233
    invoke-static {v5, v3, v6}, LP5/p;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 234
    .line 235
    .line 236
    move-result v5

    .line 237
    if-eqz v5, :cond_7

    .line 238
    .line 239
    move-object/from16 v1, p1

    .line 240
    .line 241
    move v3, v4

    .line 242
    move v5, v6

    .line 243
    move v11, v5

    .line 244
    goto :goto_7

    .line 245
    :cond_7
    const-string v5, "max-age"

    .line 246
    .line 247
    invoke-static {v5, v3, v6}, LP5/p;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 248
    .line 249
    .line 250
    move-result v5

    .line 251
    if-eqz v5, :cond_9

    .line 252
    .line 253
    const/4 v5, -0x1

    .line 254
    invoke-static {v1, v5}, Lokhttp3/internal/Util;->toNonNegativeInt(Ljava/lang/String;I)I

    .line 255
    .line 256
    .line 257
    move-result v12

    .line 258
    :cond_8
    :goto_8
    move-object/from16 v1, p1

    .line 259
    .line 260
    move v3, v4

    .line 261
    move v5, v6

    .line 262
    goto :goto_7

    .line 263
    :cond_9
    const-string v5, "s-maxage"

    .line 264
    .line 265
    invoke-static {v5, v3, v6}, LP5/p;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 266
    .line 267
    .line 268
    move-result v5

    .line 269
    if-eqz v5, :cond_a

    .line 270
    .line 271
    const/4 v5, -0x1

    .line 272
    invoke-static {v1, v5}, Lokhttp3/internal/Util;->toNonNegativeInt(Ljava/lang/String;I)I

    .line 273
    .line 274
    .line 275
    move-result v13

    .line 276
    goto :goto_8

    .line 277
    :cond_a
    const-string v5, "private"

    .line 278
    .line 279
    invoke-static {v5, v3, v6}, LP5/p;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 280
    .line 281
    .line 282
    move-result v5

    .line 283
    if-eqz v5, :cond_b

    .line 284
    .line 285
    move-object/from16 v1, p1

    .line 286
    .line 287
    move v3, v4

    .line 288
    move v5, v6

    .line 289
    move v14, v5

    .line 290
    goto :goto_7

    .line 291
    :cond_b
    const-string v5, "public"

    .line 292
    .line 293
    invoke-static {v5, v3, v6}, LP5/p;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 294
    .line 295
    .line 296
    move-result v5

    .line 297
    if-eqz v5, :cond_c

    .line 298
    .line 299
    move-object/from16 v1, p1

    .line 300
    .line 301
    move v3, v4

    .line 302
    move v5, v6

    .line 303
    move v15, v5

    .line 304
    goto :goto_7

    .line 305
    :cond_c
    const-string v5, "must-revalidate"

    .line 306
    .line 307
    invoke-static {v5, v3, v6}, LP5/p;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 308
    .line 309
    .line 310
    move-result v5

    .line 311
    if-eqz v5, :cond_d

    .line 312
    .line 313
    move-object/from16 v1, p1

    .line 314
    .line 315
    move v3, v4

    .line 316
    move v5, v6

    .line 317
    move/from16 v16, v5

    .line 318
    .line 319
    goto :goto_7

    .line 320
    :cond_d
    const-string v5, "max-stale"

    .line 321
    .line 322
    invoke-static {v5, v3, v6}, LP5/p;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 323
    .line 324
    .line 325
    move-result v5

    .line 326
    if-eqz v5, :cond_e

    .line 327
    .line 328
    const v3, 0x7fffffff

    .line 329
    .line 330
    .line 331
    invoke-static {v1, v3}, Lokhttp3/internal/Util;->toNonNegativeInt(Ljava/lang/String;I)I

    .line 332
    .line 333
    .line 334
    move-result v17

    .line 335
    goto :goto_8

    .line 336
    :cond_e
    const-string v5, "min-fresh"

    .line 337
    .line 338
    invoke-static {v5, v3, v6}, LP5/p;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 339
    .line 340
    .line 341
    move-result v5

    .line 342
    if-eqz v5, :cond_f

    .line 343
    .line 344
    const/4 v5, -0x1

    .line 345
    invoke-static {v1, v5}, Lokhttp3/internal/Util;->toNonNegativeInt(Ljava/lang/String;I)I

    .line 346
    .line 347
    .line 348
    move-result v18

    .line 349
    goto :goto_8

    .line 350
    :cond_f
    const/4 v5, -0x1

    .line 351
    const-string v1, "only-if-cached"

    .line 352
    .line 353
    invoke-static {v1, v3, v6}, LP5/p;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 354
    .line 355
    .line 356
    move-result v1

    .line 357
    if-eqz v1, :cond_10

    .line 358
    .line 359
    move-object/from16 v1, p1

    .line 360
    .line 361
    move v3, v4

    .line 362
    move v5, v6

    .line 363
    move/from16 v19, v5

    .line 364
    .line 365
    goto/16 :goto_7

    .line 366
    .line 367
    :cond_10
    const-string v1, "no-transform"

    .line 368
    .line 369
    invoke-static {v1, v3, v6}, LP5/p;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 370
    .line 371
    .line 372
    move-result v1

    .line 373
    if-eqz v1, :cond_11

    .line 374
    .line 375
    move-object/from16 v1, p1

    .line 376
    .line 377
    move v3, v4

    .line 378
    move v5, v6

    .line 379
    move/from16 v20, v5

    .line 380
    .line 381
    goto/16 :goto_7

    .line 382
    .line 383
    :cond_11
    const-string v1, "immutable"

    .line 384
    .line 385
    invoke-static {v1, v3, v6}, LP5/p;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 386
    .line 387
    .line 388
    move-result v1

    .line 389
    if-eqz v1, :cond_8

    .line 390
    .line 391
    move-object/from16 v1, p1

    .line 392
    .line 393
    move v3, v4

    .line 394
    move v5, v6

    .line 395
    move/from16 v21, v5

    .line 396
    .line 397
    goto/16 :goto_7

    .line 398
    .line 399
    :cond_12
    move/from16 v30, v2

    .line 400
    .line 401
    move v6, v5

    .line 402
    const/4 v5, -0x1

    .line 403
    add-int/lit8 v7, v7, 0x1

    .line 404
    .line 405
    move-object/from16 v1, p1

    .line 406
    .line 407
    move v5, v6

    .line 408
    move/from16 v2, v30

    .line 409
    .line 410
    goto/16 :goto_0

    .line 411
    .line 412
    :cond_13
    if-nez v8, :cond_14

    .line 413
    .line 414
    const/16 v22, 0x0

    .line 415
    .line 416
    goto :goto_9

    .line 417
    :cond_14
    move-object/from16 v22, v9

    .line 418
    .line 419
    :goto_9
    new-instance v9, Lokhttp3/CacheControl;

    .line 420
    .line 421
    const/16 v23, 0x0

    .line 422
    .line 423
    invoke-direct/range {v9 .. v23}, Lokhttp3/CacheControl;-><init>(ZZIIZZZIIZZZLjava/lang/String;Lkotlin/jvm/internal/g;)V

    .line 424
    .line 425
    .line 426
    return-object v9
.end method
