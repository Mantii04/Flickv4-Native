.class public Lorg/apache/commons/lang3/StringEscapeUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang3/StringEscapeUtils$CsvUnescaper;,
        Lorg/apache/commons/lang3/StringEscapeUtils$CsvEscaper;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final ESCAPE_CSV:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

.field public static final ESCAPE_ECMASCRIPT:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

.field public static final ESCAPE_HTML3:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

.field public static final ESCAPE_HTML4:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

.field public static final ESCAPE_JAVA:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

.field public static final ESCAPE_JSON:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

.field public static final ESCAPE_XML:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ESCAPE_XML10:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

.field public static final ESCAPE_XML11:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

.field public static final UNESCAPE_CSV:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

.field public static final UNESCAPE_ECMASCRIPT:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

.field public static final UNESCAPE_HTML3:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

.field public static final UNESCAPE_HTML4:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

.field public static final UNESCAPE_JAVA:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

.field public static final UNESCAPE_JSON:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

.field public static final UNESCAPE_XML:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;


# direct methods
.method static constructor <clinit>()V
    .locals 30

    .line 1
    new-instance v0, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    new-array v2, v1, [[Ljava/lang/String;

    .line 5
    .line 6
    const-string v3, "\""

    .line 7
    .line 8
    const-string v4, "\\\""

    .line 9
    .line 10
    filled-new-array {v3, v4}, [Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v5

    .line 14
    const/4 v6, 0x0

    .line 15
    aput-object v5, v2, v6

    .line 16
    .line 17
    const-string v5, "\\"

    .line 18
    .line 19
    const-string v7, "\\\\"

    .line 20
    .line 21
    filled-new-array {v5, v7}, [Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v8

    .line 25
    const/4 v9, 0x1

    .line 26
    aput-object v8, v2, v9

    .line 27
    .line 28
    invoke-direct {v0, v2}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    .line 29
    .line 30
    .line 31
    new-instance v2, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    .line 32
    .line 33
    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->JAVA_CTRL_CHARS_ESCAPE()[[Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v8

    .line 37
    invoke-direct {v2, v8}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    .line 38
    .line 39
    .line 40
    new-array v8, v9, [Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 41
    .line 42
    aput-object v2, v8, v6

    .line 43
    .line 44
    invoke-virtual {v0, v8}, Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;->with([Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;)Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    const/16 v2, 0x20

    .line 49
    .line 50
    const/16 v8, 0x7f

    .line 51
    .line 52
    invoke-static {v2, v8}, Lorg/apache/commons/lang3/text/translate/JavaUnicodeEscaper;->outsideOf(II)Lorg/apache/commons/lang3/text/translate/JavaUnicodeEscaper;

    .line 53
    .line 54
    .line 55
    move-result-object v10

    .line 56
    new-array v11, v9, [Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 57
    .line 58
    aput-object v10, v11, v6

    .line 59
    .line 60
    invoke-virtual {v0, v11}, Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;->with([Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;)Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    sput-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->ESCAPE_JAVA:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 65
    .line 66
    new-instance v0, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;

    .line 67
    .line 68
    new-instance v10, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    .line 69
    .line 70
    const/4 v11, 0x4

    .line 71
    new-array v12, v11, [[Ljava/lang/String;

    .line 72
    .line 73
    const-string v13, "\'"

    .line 74
    .line 75
    const-string v14, "\\\'"

    .line 76
    .line 77
    filled-new-array {v13, v14}, [Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v15

    .line 81
    aput-object v15, v12, v6

    .line 82
    .line 83
    filled-new-array {v3, v4}, [Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v15

    .line 87
    aput-object v15, v12, v9

    .line 88
    .line 89
    filled-new-array {v5, v7}, [Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v15

    .line 93
    aput-object v15, v12, v1

    .line 94
    .line 95
    const-string v15, "/"

    .line 96
    .line 97
    move/from16 v16, v6

    .line 98
    .line 99
    const-string v6, "\\/"

    .line 100
    .line 101
    filled-new-array {v15, v6}, [Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v17

    .line 105
    move/from16 v18, v11

    .line 106
    .line 107
    const/4 v11, 0x3

    .line 108
    aput-object v17, v12, v11

    .line 109
    .line 110
    invoke-direct {v10, v12}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    .line 111
    .line 112
    .line 113
    new-instance v12, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    .line 114
    .line 115
    move/from16 v17, v9

    .line 116
    .line 117
    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->JAVA_CTRL_CHARS_ESCAPE()[[Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v9

    .line 121
    invoke-direct {v12, v9}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    .line 122
    .line 123
    .line 124
    invoke-static {v2, v8}, Lorg/apache/commons/lang3/text/translate/JavaUnicodeEscaper;->outsideOf(II)Lorg/apache/commons/lang3/text/translate/JavaUnicodeEscaper;

    .line 125
    .line 126
    .line 127
    move-result-object v9

    .line 128
    move/from16 v19, v1

    .line 129
    .line 130
    new-array v1, v11, [Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 131
    .line 132
    aput-object v10, v1, v16

    .line 133
    .line 134
    aput-object v12, v1, v17

    .line 135
    .line 136
    aput-object v9, v1, v19

    .line 137
    .line 138
    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;)V

    .line 139
    .line 140
    .line 141
    sput-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->ESCAPE_ECMASCRIPT:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 142
    .line 143
    new-instance v0, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;

    .line 144
    .line 145
    new-instance v1, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    .line 146
    .line 147
    new-array v9, v11, [[Ljava/lang/String;

    .line 148
    .line 149
    filled-new-array {v3, v4}, [Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v10

    .line 153
    aput-object v10, v9, v16

    .line 154
    .line 155
    filled-new-array {v5, v7}, [Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v10

    .line 159
    aput-object v10, v9, v17

    .line 160
    .line 161
    filled-new-array {v15, v6}, [Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v6

    .line 165
    aput-object v6, v9, v19

    .line 166
    .line 167
    invoke-direct {v1, v9}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    .line 168
    .line 169
    .line 170
    new-instance v6, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    .line 171
    .line 172
    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->JAVA_CTRL_CHARS_ESCAPE()[[Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v9

    .line 176
    invoke-direct {v6, v9}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    .line 177
    .line 178
    .line 179
    invoke-static {v2, v8}, Lorg/apache/commons/lang3/text/translate/JavaUnicodeEscaper;->outsideOf(II)Lorg/apache/commons/lang3/text/translate/JavaUnicodeEscaper;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    new-array v9, v11, [Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 184
    .line 185
    aput-object v1, v9, v16

    .line 186
    .line 187
    aput-object v6, v9, v17

    .line 188
    .line 189
    aput-object v2, v9, v19

    .line 190
    .line 191
    invoke-direct {v0, v9}, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;)V

    .line 192
    .line 193
    .line 194
    sput-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->ESCAPE_JSON:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 195
    .line 196
    new-instance v0, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;

    .line 197
    .line 198
    new-instance v1, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    .line 199
    .line 200
    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->BASIC_ESCAPE()[[Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v2

    .line 204
    invoke-direct {v1, v2}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    .line 205
    .line 206
    .line 207
    new-instance v2, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    .line 208
    .line 209
    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->APOS_ESCAPE()[[Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v6

    .line 213
    invoke-direct {v2, v6}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    .line 214
    .line 215
    .line 216
    move/from16 v6, v19

    .line 217
    .line 218
    new-array v9, v6, [Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 219
    .line 220
    aput-object v1, v9, v16

    .line 221
    .line 222
    aput-object v2, v9, v17

    .line 223
    .line 224
    invoke-direct {v0, v9}, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;)V

    .line 225
    .line 226
    .line 227
    sput-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->ESCAPE_XML:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 228
    .line 229
    new-instance v0, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;

    .line 230
    .line 231
    new-instance v1, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    .line 232
    .line 233
    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->BASIC_ESCAPE()[[Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v2

    .line 237
    invoke-direct {v1, v2}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    .line 238
    .line 239
    .line 240
    new-instance v2, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    .line 241
    .line 242
    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->APOS_ESCAPE()[[Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v6

    .line 246
    invoke-direct {v2, v6}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    .line 247
    .line 248
    .line 249
    new-instance v6, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    .line 250
    .line 251
    const/16 v9, 0x1f

    .line 252
    .line 253
    new-array v10, v9, [[Ljava/lang/String;

    .line 254
    .line 255
    const-string v12, "\u0000"

    .line 256
    .line 257
    const-string v15, ""

    .line 258
    .line 259
    filled-new-array {v12, v15}, [Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v20

    .line 263
    aput-object v20, v10, v16

    .line 264
    .line 265
    move/from16 v20, v11

    .line 266
    .line 267
    const-string v11, "\u0001"

    .line 268
    .line 269
    filled-new-array {v11, v15}, [Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v11

    .line 273
    aput-object v11, v10, v17

    .line 274
    .line 275
    const-string v11, "\u0002"

    .line 276
    .line 277
    filled-new-array {v11, v15}, [Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v11

    .line 281
    const/16 v19, 0x2

    .line 282
    .line 283
    aput-object v11, v10, v19

    .line 284
    .line 285
    const-string v11, "\u0003"

    .line 286
    .line 287
    filled-new-array {v11, v15}, [Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v11

    .line 291
    aput-object v11, v10, v20

    .line 292
    .line 293
    const-string v11, "\u0004"

    .line 294
    .line 295
    filled-new-array {v11, v15}, [Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v11

    .line 299
    aput-object v11, v10, v18

    .line 300
    .line 301
    const-string v11, "\u0005"

    .line 302
    .line 303
    filled-new-array {v11, v15}, [Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v11

    .line 307
    const/4 v9, 0x5

    .line 308
    aput-object v11, v10, v9

    .line 309
    .line 310
    const-string v11, "\u0006"

    .line 311
    .line 312
    filled-new-array {v11, v15}, [Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v11

    .line 316
    move/from16 v22, v9

    .line 317
    .line 318
    const/4 v9, 0x6

    .line 319
    aput-object v11, v10, v9

    .line 320
    .line 321
    const-string v11, "\u0007"

    .line 322
    .line 323
    filled-new-array {v11, v15}, [Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v11

    .line 327
    const/16 v23, 0x7

    .line 328
    .line 329
    aput-object v11, v10, v23

    .line 330
    .line 331
    const-string v11, "\u0008"

    .line 332
    .line 333
    filled-new-array {v11, v15}, [Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v11

    .line 337
    const/16 v9, 0x8

    .line 338
    .line 339
    aput-object v11, v10, v9

    .line 340
    .line 341
    const-string v11, "\u000b"

    .line 342
    .line 343
    filled-new-array {v11, v15}, [Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v25

    .line 347
    const/16 v26, 0x9

    .line 348
    .line 349
    aput-object v25, v10, v26

    .line 350
    .line 351
    const-string v9, "\u000c"

    .line 352
    .line 353
    filled-new-array {v9, v15}, [Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v26

    .line 357
    const/16 v27, 0xa

    .line 358
    .line 359
    aput-object v26, v10, v27

    .line 360
    .line 361
    const-string v8, "\u000e"

    .line 362
    .line 363
    filled-new-array {v8, v15}, [Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v8

    .line 367
    const/16 v27, 0xb

    .line 368
    .line 369
    aput-object v8, v10, v27

    .line 370
    .line 371
    const-string v8, "\u000f"

    .line 372
    .line 373
    filled-new-array {v8, v15}, [Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object v8

    .line 377
    const/16 v27, 0xc

    .line 378
    .line 379
    aput-object v8, v10, v27

    .line 380
    .line 381
    const-string v8, "\u0010"

    .line 382
    .line 383
    filled-new-array {v8, v15}, [Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    move-result-object v8

    .line 387
    const/16 v27, 0xd

    .line 388
    .line 389
    aput-object v8, v10, v27

    .line 390
    .line 391
    const-string v8, "\u0011"

    .line 392
    .line 393
    filled-new-array {v8, v15}, [Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v8

    .line 397
    const/16 v27, 0xe

    .line 398
    .line 399
    aput-object v8, v10, v27

    .line 400
    .line 401
    const-string v8, "\u0012"

    .line 402
    .line 403
    filled-new-array {v8, v15}, [Ljava/lang/String;

    .line 404
    .line 405
    .line 406
    move-result-object v8

    .line 407
    const/16 v27, 0xf

    .line 408
    .line 409
    aput-object v8, v10, v27

    .line 410
    .line 411
    const-string v8, "\u0013"

    .line 412
    .line 413
    filled-new-array {v8, v15}, [Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v8

    .line 417
    const/16 v27, 0x10

    .line 418
    .line 419
    aput-object v8, v10, v27

    .line 420
    .line 421
    const-string v8, "\u0014"

    .line 422
    .line 423
    filled-new-array {v8, v15}, [Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object v8

    .line 427
    const/16 v27, 0x11

    .line 428
    .line 429
    aput-object v8, v10, v27

    .line 430
    .line 431
    const-string v8, "\u0015"

    .line 432
    .line 433
    filled-new-array {v8, v15}, [Ljava/lang/String;

    .line 434
    .line 435
    .line 436
    move-result-object v8

    .line 437
    const/16 v27, 0x12

    .line 438
    .line 439
    aput-object v8, v10, v27

    .line 440
    .line 441
    const-string v8, "\u0016"

    .line 442
    .line 443
    filled-new-array {v8, v15}, [Ljava/lang/String;

    .line 444
    .line 445
    .line 446
    move-result-object v8

    .line 447
    const/16 v27, 0x13

    .line 448
    .line 449
    aput-object v8, v10, v27

    .line 450
    .line 451
    const-string v8, "\u0017"

    .line 452
    .line 453
    filled-new-array {v8, v15}, [Ljava/lang/String;

    .line 454
    .line 455
    .line 456
    move-result-object v8

    .line 457
    const/16 v27, 0x14

    .line 458
    .line 459
    aput-object v8, v10, v27

    .line 460
    .line 461
    const-string v8, "\u0018"

    .line 462
    .line 463
    filled-new-array {v8, v15}, [Ljava/lang/String;

    .line 464
    .line 465
    .line 466
    move-result-object v8

    .line 467
    const/16 v27, 0x15

    .line 468
    .line 469
    aput-object v8, v10, v27

    .line 470
    .line 471
    const-string v8, "\u0019"

    .line 472
    .line 473
    filled-new-array {v8, v15}, [Ljava/lang/String;

    .line 474
    .line 475
    .line 476
    move-result-object v8

    .line 477
    const/16 v27, 0x16

    .line 478
    .line 479
    aput-object v8, v10, v27

    .line 480
    .line 481
    const-string v8, "\u001a"

    .line 482
    .line 483
    filled-new-array {v8, v15}, [Ljava/lang/String;

    .line 484
    .line 485
    .line 486
    move-result-object v8

    .line 487
    const/16 v27, 0x17

    .line 488
    .line 489
    aput-object v8, v10, v27

    .line 490
    .line 491
    const-string v8, "\u001b"

    .line 492
    .line 493
    filled-new-array {v8, v15}, [Ljava/lang/String;

    .line 494
    .line 495
    .line 496
    move-result-object v8

    .line 497
    const/16 v27, 0x18

    .line 498
    .line 499
    aput-object v8, v10, v27

    .line 500
    .line 501
    const-string v8, "\u001c"

    .line 502
    .line 503
    filled-new-array {v8, v15}, [Ljava/lang/String;

    .line 504
    .line 505
    .line 506
    move-result-object v8

    .line 507
    const/16 v27, 0x19

    .line 508
    .line 509
    aput-object v8, v10, v27

    .line 510
    .line 511
    const-string v8, "\u001d"

    .line 512
    .line 513
    filled-new-array {v8, v15}, [Ljava/lang/String;

    .line 514
    .line 515
    .line 516
    move-result-object v8

    .line 517
    const/16 v27, 0x1a

    .line 518
    .line 519
    aput-object v8, v10, v27

    .line 520
    .line 521
    const-string v8, "\u001e"

    .line 522
    .line 523
    filled-new-array {v8, v15}, [Ljava/lang/String;

    .line 524
    .line 525
    .line 526
    move-result-object v8

    .line 527
    const/16 v27, 0x1b

    .line 528
    .line 529
    aput-object v8, v10, v27

    .line 530
    .line 531
    const-string v8, "\u001f"

    .line 532
    .line 533
    filled-new-array {v8, v15}, [Ljava/lang/String;

    .line 534
    .line 535
    .line 536
    move-result-object v8

    .line 537
    const/16 v27, 0x1c

    .line 538
    .line 539
    aput-object v8, v10, v27

    .line 540
    .line 541
    const-string v8, "\ufffe"

    .line 542
    .line 543
    filled-new-array {v8, v15}, [Ljava/lang/String;

    .line 544
    .line 545
    .line 546
    move-result-object v8

    .line 547
    const/16 v27, 0x1d

    .line 548
    .line 549
    aput-object v8, v10, v27

    .line 550
    .line 551
    const-string v8, "\uffff"

    .line 552
    .line 553
    filled-new-array {v8, v15}, [Ljava/lang/String;

    .line 554
    .line 555
    .line 556
    move-result-object v8

    .line 557
    const/16 v27, 0x1e

    .line 558
    .line 559
    aput-object v8, v10, v27

    .line 560
    .line 561
    invoke-direct {v6, v10}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    .line 562
    .line 563
    .line 564
    const/16 v8, 0x84

    .line 565
    .line 566
    const/16 v10, 0x7f

    .line 567
    .line 568
    invoke-static {v10, v8}, Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;->between(II)Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;

    .line 569
    .line 570
    .line 571
    move-result-object v27

    .line 572
    const/16 v10, 0x86

    .line 573
    .line 574
    const/16 v8, 0x9f

    .line 575
    .line 576
    invoke-static {v10, v8}, Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;->between(II)Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;

    .line 577
    .line 578
    .line 579
    move-result-object v28

    .line 580
    new-instance v29, Lorg/apache/commons/lang3/text/translate/UnicodeUnpairedSurrogateRemover;

    .line 581
    .line 582
    invoke-direct/range {v29 .. v29}, Lorg/apache/commons/lang3/text/translate/UnicodeUnpairedSurrogateRemover;-><init>()V

    .line 583
    .line 584
    .line 585
    const/4 v8, 0x6

    .line 586
    new-array v10, v8, [Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 587
    .line 588
    aput-object v1, v10, v16

    .line 589
    .line 590
    aput-object v2, v10, v17

    .line 591
    .line 592
    const/16 v19, 0x2

    .line 593
    .line 594
    aput-object v6, v10, v19

    .line 595
    .line 596
    aput-object v27, v10, v20

    .line 597
    .line 598
    aput-object v28, v10, v18

    .line 599
    .line 600
    aput-object v29, v10, v22

    .line 601
    .line 602
    invoke-direct {v0, v10}, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;)V

    .line 603
    .line 604
    .line 605
    sput-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->ESCAPE_XML10:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 606
    .line 607
    new-instance v0, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;

    .line 608
    .line 609
    new-instance v1, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    .line 610
    .line 611
    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->BASIC_ESCAPE()[[Ljava/lang/String;

    .line 612
    .line 613
    .line 614
    move-result-object v2

    .line 615
    invoke-direct {v1, v2}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    .line 616
    .line 617
    .line 618
    new-instance v2, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    .line 619
    .line 620
    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->APOS_ESCAPE()[[Ljava/lang/String;

    .line 621
    .line 622
    .line 623
    move-result-object v6

    .line 624
    invoke-direct {v2, v6}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    .line 625
    .line 626
    .line 627
    new-instance v6, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    .line 628
    .line 629
    move/from16 v8, v22

    .line 630
    .line 631
    new-array v10, v8, [[Ljava/lang/String;

    .line 632
    .line 633
    filled-new-array {v12, v15}, [Ljava/lang/String;

    .line 634
    .line 635
    .line 636
    move-result-object v8

    .line 637
    aput-object v8, v10, v16

    .line 638
    .line 639
    const-string v8, "&#11;"

    .line 640
    .line 641
    filled-new-array {v11, v8}, [Ljava/lang/String;

    .line 642
    .line 643
    .line 644
    move-result-object v8

    .line 645
    aput-object v8, v10, v17

    .line 646
    .line 647
    const-string v8, "&#12;"

    .line 648
    .line 649
    filled-new-array {v9, v8}, [Ljava/lang/String;

    .line 650
    .line 651
    .line 652
    move-result-object v8

    .line 653
    const/16 v19, 0x2

    .line 654
    .line 655
    aput-object v8, v10, v19

    .line 656
    .line 657
    const-string v8, "\ufffe"

    .line 658
    .line 659
    filled-new-array {v8, v15}, [Ljava/lang/String;

    .line 660
    .line 661
    .line 662
    move-result-object v8

    .line 663
    aput-object v8, v10, v20

    .line 664
    .line 665
    const-string v8, "\uffff"

    .line 666
    .line 667
    filled-new-array {v8, v15}, [Ljava/lang/String;

    .line 668
    .line 669
    .line 670
    move-result-object v8

    .line 671
    aput-object v8, v10, v18

    .line 672
    .line 673
    invoke-direct {v6, v10}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    .line 674
    .line 675
    .line 676
    move/from16 v8, v17

    .line 677
    .line 678
    const/16 v9, 0x8

    .line 679
    .line 680
    invoke-static {v8, v9}, Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;->between(II)Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;

    .line 681
    .line 682
    .line 683
    move-result-object v10

    .line 684
    const/16 v11, 0xe

    .line 685
    .line 686
    const/16 v12, 0x1f

    .line 687
    .line 688
    invoke-static {v11, v12}, Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;->between(II)Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;

    .line 689
    .line 690
    .line 691
    move-result-object v11

    .line 692
    const/16 v8, 0x84

    .line 693
    .line 694
    const/16 v12, 0x7f

    .line 695
    .line 696
    invoke-static {v12, v8}, Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;->between(II)Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;

    .line 697
    .line 698
    .line 699
    move-result-object v8

    .line 700
    const/16 v9, 0x9f

    .line 701
    .line 702
    const/16 v12, 0x86

    .line 703
    .line 704
    invoke-static {v12, v9}, Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;->between(II)Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;

    .line 705
    .line 706
    .line 707
    move-result-object v9

    .line 708
    new-instance v12, Lorg/apache/commons/lang3/text/translate/UnicodeUnpairedSurrogateRemover;

    .line 709
    .line 710
    invoke-direct {v12}, Lorg/apache/commons/lang3/text/translate/UnicodeUnpairedSurrogateRemover;-><init>()V

    .line 711
    .line 712
    .line 713
    move-object/from16 v21, v1

    .line 714
    .line 715
    const/16 v1, 0x8

    .line 716
    .line 717
    new-array v1, v1, [Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 718
    .line 719
    aput-object v21, v1, v16

    .line 720
    .line 721
    aput-object v2, v1, v17

    .line 722
    .line 723
    const/16 v19, 0x2

    .line 724
    .line 725
    aput-object v6, v1, v19

    .line 726
    .line 727
    aput-object v10, v1, v20

    .line 728
    .line 729
    aput-object v11, v1, v18

    .line 730
    .line 731
    const/16 v22, 0x5

    .line 732
    .line 733
    aput-object v8, v1, v22

    .line 734
    .line 735
    const/16 v24, 0x6

    .line 736
    .line 737
    aput-object v9, v1, v24

    .line 738
    .line 739
    aput-object v12, v1, v23

    .line 740
    .line 741
    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;)V

    .line 742
    .line 743
    .line 744
    sput-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->ESCAPE_XML11:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 745
    .line 746
    new-instance v0, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;

    .line 747
    .line 748
    new-instance v1, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    .line 749
    .line 750
    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->BASIC_ESCAPE()[[Ljava/lang/String;

    .line 751
    .line 752
    .line 753
    move-result-object v2

    .line 754
    invoke-direct {v1, v2}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    .line 755
    .line 756
    .line 757
    new-instance v2, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    .line 758
    .line 759
    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->ISO8859_1_ESCAPE()[[Ljava/lang/String;

    .line 760
    .line 761
    .line 762
    move-result-object v6

    .line 763
    invoke-direct {v2, v6}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    .line 764
    .line 765
    .line 766
    const/4 v6, 0x2

    .line 767
    new-array v8, v6, [Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 768
    .line 769
    aput-object v1, v8, v16

    .line 770
    .line 771
    const/16 v17, 0x1

    .line 772
    .line 773
    aput-object v2, v8, v17

    .line 774
    .line 775
    invoke-direct {v0, v8}, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;)V

    .line 776
    .line 777
    .line 778
    sput-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->ESCAPE_HTML3:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 779
    .line 780
    new-instance v0, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;

    .line 781
    .line 782
    new-instance v1, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    .line 783
    .line 784
    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->BASIC_ESCAPE()[[Ljava/lang/String;

    .line 785
    .line 786
    .line 787
    move-result-object v2

    .line 788
    invoke-direct {v1, v2}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    .line 789
    .line 790
    .line 791
    new-instance v2, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    .line 792
    .line 793
    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->ISO8859_1_ESCAPE()[[Ljava/lang/String;

    .line 794
    .line 795
    .line 796
    move-result-object v6

    .line 797
    invoke-direct {v2, v6}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    .line 798
    .line 799
    .line 800
    new-instance v6, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    .line 801
    .line 802
    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->HTML40_EXTENDED_ESCAPE()[[Ljava/lang/String;

    .line 803
    .line 804
    .line 805
    move-result-object v8

    .line 806
    invoke-direct {v6, v8}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    .line 807
    .line 808
    .line 809
    move/from16 v8, v20

    .line 810
    .line 811
    new-array v9, v8, [Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 812
    .line 813
    aput-object v1, v9, v16

    .line 814
    .line 815
    const/16 v17, 0x1

    .line 816
    .line 817
    aput-object v2, v9, v17

    .line 818
    .line 819
    const/16 v19, 0x2

    .line 820
    .line 821
    aput-object v6, v9, v19

    .line 822
    .line 823
    invoke-direct {v0, v9}, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;)V

    .line 824
    .line 825
    .line 826
    sput-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->ESCAPE_HTML4:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 827
    .line 828
    new-instance v0, Lorg/apache/commons/lang3/StringEscapeUtils$CsvEscaper;

    .line 829
    .line 830
    invoke-direct {v0}, Lorg/apache/commons/lang3/StringEscapeUtils$CsvEscaper;-><init>()V

    .line 831
    .line 832
    .line 833
    sput-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->ESCAPE_CSV:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 834
    .line 835
    new-instance v0, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;

    .line 836
    .line 837
    new-instance v1, Lorg/apache/commons/lang3/text/translate/OctalUnescaper;

    .line 838
    .line 839
    invoke-direct {v1}, Lorg/apache/commons/lang3/text/translate/OctalUnescaper;-><init>()V

    .line 840
    .line 841
    .line 842
    new-instance v2, Lorg/apache/commons/lang3/text/translate/UnicodeUnescaper;

    .line 843
    .line 844
    invoke-direct {v2}, Lorg/apache/commons/lang3/text/translate/UnicodeUnescaper;-><init>()V

    .line 845
    .line 846
    .line 847
    new-instance v6, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    .line 848
    .line 849
    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->JAVA_CTRL_CHARS_UNESCAPE()[[Ljava/lang/String;

    .line 850
    .line 851
    .line 852
    move-result-object v8

    .line 853
    invoke-direct {v6, v8}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    .line 854
    .line 855
    .line 856
    new-instance v8, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    .line 857
    .line 858
    move/from16 v9, v18

    .line 859
    .line 860
    new-array v10, v9, [[Ljava/lang/String;

    .line 861
    .line 862
    filled-new-array {v7, v5}, [Ljava/lang/String;

    .line 863
    .line 864
    .line 865
    move-result-object v7

    .line 866
    aput-object v7, v10, v16

    .line 867
    .line 868
    filled-new-array {v4, v3}, [Ljava/lang/String;

    .line 869
    .line 870
    .line 871
    move-result-object v3

    .line 872
    const/16 v17, 0x1

    .line 873
    .line 874
    aput-object v3, v10, v17

    .line 875
    .line 876
    filled-new-array {v14, v13}, [Ljava/lang/String;

    .line 877
    .line 878
    .line 879
    move-result-object v3

    .line 880
    const/16 v19, 0x2

    .line 881
    .line 882
    aput-object v3, v10, v19

    .line 883
    .line 884
    filled-new-array {v5, v15}, [Ljava/lang/String;

    .line 885
    .line 886
    .line 887
    move-result-object v3

    .line 888
    const/16 v20, 0x3

    .line 889
    .line 890
    aput-object v3, v10, v20

    .line 891
    .line 892
    invoke-direct {v8, v10}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    .line 893
    .line 894
    .line 895
    new-array v3, v9, [Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 896
    .line 897
    aput-object v1, v3, v16

    .line 898
    .line 899
    aput-object v2, v3, v17

    .line 900
    .line 901
    aput-object v6, v3, v19

    .line 902
    .line 903
    aput-object v8, v3, v20

    .line 904
    .line 905
    invoke-direct {v0, v3}, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;)V

    .line 906
    .line 907
    .line 908
    sput-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->UNESCAPE_JAVA:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 909
    .line 910
    sput-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->UNESCAPE_ECMASCRIPT:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 911
    .line 912
    sput-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->UNESCAPE_JSON:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 913
    .line 914
    new-instance v0, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;

    .line 915
    .line 916
    new-instance v1, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    .line 917
    .line 918
    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->BASIC_UNESCAPE()[[Ljava/lang/String;

    .line 919
    .line 920
    .line 921
    move-result-object v2

    .line 922
    invoke-direct {v1, v2}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    .line 923
    .line 924
    .line 925
    new-instance v2, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    .line 926
    .line 927
    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->ISO8859_1_UNESCAPE()[[Ljava/lang/String;

    .line 928
    .line 929
    .line 930
    move-result-object v3

    .line 931
    invoke-direct {v2, v3}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    .line 932
    .line 933
    .line 934
    new-instance v3, Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper;

    .line 935
    .line 936
    move/from16 v4, v16

    .line 937
    .line 938
    new-array v5, v4, [Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;

    .line 939
    .line 940
    invoke-direct {v3, v5}, Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper;-><init>([Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;)V

    .line 941
    .line 942
    .line 943
    const/4 v8, 0x3

    .line 944
    new-array v5, v8, [Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 945
    .line 946
    aput-object v1, v5, v4

    .line 947
    .line 948
    const/16 v17, 0x1

    .line 949
    .line 950
    aput-object v2, v5, v17

    .line 951
    .line 952
    const/16 v19, 0x2

    .line 953
    .line 954
    aput-object v3, v5, v19

    .line 955
    .line 956
    invoke-direct {v0, v5}, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;)V

    .line 957
    .line 958
    .line 959
    sput-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->UNESCAPE_HTML3:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 960
    .line 961
    new-instance v0, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;

    .line 962
    .line 963
    new-instance v1, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    .line 964
    .line 965
    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->BASIC_UNESCAPE()[[Ljava/lang/String;

    .line 966
    .line 967
    .line 968
    move-result-object v2

    .line 969
    invoke-direct {v1, v2}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    .line 970
    .line 971
    .line 972
    new-instance v2, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    .line 973
    .line 974
    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->ISO8859_1_UNESCAPE()[[Ljava/lang/String;

    .line 975
    .line 976
    .line 977
    move-result-object v3

    .line 978
    invoke-direct {v2, v3}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    .line 979
    .line 980
    .line 981
    new-instance v3, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    .line 982
    .line 983
    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->HTML40_EXTENDED_UNESCAPE()[[Ljava/lang/String;

    .line 984
    .line 985
    .line 986
    move-result-object v4

    .line 987
    invoke-direct {v3, v4}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    .line 988
    .line 989
    .line 990
    new-instance v4, Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper;

    .line 991
    .line 992
    const/4 v5, 0x0

    .line 993
    new-array v6, v5, [Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;

    .line 994
    .line 995
    invoke-direct {v4, v6}, Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper;-><init>([Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;)V

    .line 996
    .line 997
    .line 998
    const/4 v9, 0x4

    .line 999
    new-array v6, v9, [Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 1000
    .line 1001
    aput-object v1, v6, v5

    .line 1002
    .line 1003
    const/16 v17, 0x1

    .line 1004
    .line 1005
    aput-object v2, v6, v17

    .line 1006
    .line 1007
    const/16 v19, 0x2

    .line 1008
    .line 1009
    aput-object v3, v6, v19

    .line 1010
    .line 1011
    const/16 v20, 0x3

    .line 1012
    .line 1013
    aput-object v4, v6, v20

    .line 1014
    .line 1015
    invoke-direct {v0, v6}, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;)V

    .line 1016
    .line 1017
    .line 1018
    sput-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->UNESCAPE_HTML4:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 1019
    .line 1020
    new-instance v0, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;

    .line 1021
    .line 1022
    new-instance v1, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    .line 1023
    .line 1024
    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->BASIC_UNESCAPE()[[Ljava/lang/String;

    .line 1025
    .line 1026
    .line 1027
    move-result-object v2

    .line 1028
    invoke-direct {v1, v2}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    .line 1029
    .line 1030
    .line 1031
    new-instance v2, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    .line 1032
    .line 1033
    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->APOS_UNESCAPE()[[Ljava/lang/String;

    .line 1034
    .line 1035
    .line 1036
    move-result-object v3

    .line 1037
    invoke-direct {v2, v3}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    .line 1038
    .line 1039
    .line 1040
    new-instance v3, Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper;

    .line 1041
    .line 1042
    const/4 v4, 0x0

    .line 1043
    new-array v5, v4, [Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;

    .line 1044
    .line 1045
    invoke-direct {v3, v5}, Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper;-><init>([Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;)V

    .line 1046
    .line 1047
    .line 1048
    const/4 v8, 0x3

    .line 1049
    new-array v5, v8, [Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 1050
    .line 1051
    aput-object v1, v5, v4

    .line 1052
    .line 1053
    const/16 v17, 0x1

    .line 1054
    .line 1055
    aput-object v2, v5, v17

    .line 1056
    .line 1057
    const/16 v19, 0x2

    .line 1058
    .line 1059
    aput-object v3, v5, v19

    .line 1060
    .line 1061
    invoke-direct {v0, v5}, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;)V

    .line 1062
    .line 1063
    .line 1064
    sput-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->UNESCAPE_XML:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 1065
    .line 1066
    new-instance v0, Lorg/apache/commons/lang3/StringEscapeUtils$CsvUnescaper;

    .line 1067
    .line 1068
    invoke-direct {v0}, Lorg/apache/commons/lang3/StringEscapeUtils$CsvUnescaper;-><init>()V

    .line 1069
    .line 1070
    .line 1071
    sput-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->UNESCAPE_CSV:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 1072
    .line 1073
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final escapeCsv(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->ESCAPE_CSV:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static final escapeEcmaScript(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->ESCAPE_ECMASCRIPT:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static final escapeHtml3(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->ESCAPE_HTML3:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static final escapeHtml4(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->ESCAPE_HTML4:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static final escapeJava(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->ESCAPE_JAVA:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static final escapeJson(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->ESCAPE_JSON:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static final escapeXml(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->ESCAPE_XML:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static escapeXml10(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->ESCAPE_XML10:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static escapeXml11(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->ESCAPE_XML11:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static final unescapeCsv(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->UNESCAPE_CSV:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static final unescapeEcmaScript(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->UNESCAPE_ECMASCRIPT:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static final unescapeHtml3(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->UNESCAPE_HTML3:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static final unescapeHtml4(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->UNESCAPE_HTML4:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static final unescapeJava(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->UNESCAPE_JAVA:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static final unescapeJson(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->UNESCAPE_JSON:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static final unescapeXml(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->UNESCAPE_XML:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
