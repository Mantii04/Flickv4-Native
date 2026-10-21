.class public final LT3/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final f:Lcom/google/common/collect/ImmutableListMultimap;

.field public static final g:LP3/o;

.field public static final h:Ljava/util/HashMap;

.field public static final i:LT3/a;

.field public static final j:LP3/q;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Lcom/google/common/collect/ImmutableListMultimap;

.field public d:Ljava/lang/String;

.field public e:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, LP3/a;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "charset"

    .line 12
    .line 13
    invoke-static {v1, v0}, Lcom/google/common/collect/ImmutableListMultimap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableListMultimap;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, LT3/a;->f:Lcom/google/common/collect/ImmutableListMultimap;

    .line 18
    .line 19
    invoke-static {}, LP3/o;->ascii()LP3/o;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {}, LP3/o;->javaIsoControl()LP3/o;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1}, LP3/o;->negate()LP3/o;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, LP3/o;->and(LP3/o;)LP3/o;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const/16 v1, 0x20

    .line 36
    .line 37
    invoke-static {v1}, LP3/o;->isNot(C)LP3/o;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v0, v1}, LP3/o;->and(LP3/o;)LP3/o;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const-string v1, "()<>@,;:\\\"/[]?="

    .line 46
    .line 47
    invoke-static {v1}, LP3/o;->noneOf(Ljava/lang/CharSequence;)LP3/o;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v0, v1}, LP3/o;->and(LP3/o;)LP3/o;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    sput-object v0, LT3/a;->g:LP3/o;

    .line 56
    .line 57
    invoke-static {}, LP3/o;->ascii()LP3/o;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    const-string v1, "\"\\\r"

    .line 62
    .line 63
    invoke-static {v1}, LP3/o;->noneOf(Ljava/lang/CharSequence;)LP3/o;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v0, v1}, LP3/o;->and(LP3/o;)LP3/o;

    .line 68
    .line 69
    .line 70
    const-string v0, " \t\r\n"

    .line 71
    .line 72
    invoke-static {v0}, LP3/o;->anyOf(Ljava/lang/CharSequence;)LP3/o;

    .line 73
    .line 74
    .line 75
    invoke-static {}, Lcom/google/common/collect/C;->newHashMap()Ljava/util/HashMap;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    sput-object v0, LT3/a;->h:Ljava/util/HashMap;

    .line 80
    .line 81
    const-string v0, "*"

    .line 82
    .line 83
    invoke-static {v0, v0}, LT3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    const-string v1, "text"

    .line 87
    .line 88
    invoke-static {v1, v0}, LT3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    const-string v2, "image"

    .line 92
    .line 93
    invoke-static {v2, v0}, LT3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    const-string v3, "audio"

    .line 97
    .line 98
    invoke-static {v3, v0}, LT3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    const-string v4, "video"

    .line 102
    .line 103
    invoke-static {v4, v0}, LT3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    const-string v5, "application"

    .line 107
    .line 108
    invoke-static {v5, v0}, LT3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    const-string v6, "font"

    .line 112
    .line 113
    invoke-static {v6, v0}, LT3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    const-string v0, "cache-manifest"

    .line 117
    .line 118
    invoke-static {v1, v0}, LT3/a;->b(Ljava/lang/String;Ljava/lang/String;)LT3/a;

    .line 119
    .line 120
    .line 121
    const-string v0, "css"

    .line 122
    .line 123
    invoke-static {v1, v0}, LT3/a;->b(Ljava/lang/String;Ljava/lang/String;)LT3/a;

    .line 124
    .line 125
    .line 126
    const-string v0, "csv"

    .line 127
    .line 128
    invoke-static {v1, v0}, LT3/a;->b(Ljava/lang/String;Ljava/lang/String;)LT3/a;

    .line 129
    .line 130
    .line 131
    const-string v0, "html"

    .line 132
    .line 133
    invoke-static {v1, v0}, LT3/a;->b(Ljava/lang/String;Ljava/lang/String;)LT3/a;

    .line 134
    .line 135
    .line 136
    const-string v0, "calendar"

    .line 137
    .line 138
    invoke-static {v1, v0}, LT3/a;->b(Ljava/lang/String;Ljava/lang/String;)LT3/a;

    .line 139
    .line 140
    .line 141
    const-string v0, "markdown"

    .line 142
    .line 143
    invoke-static {v1, v0}, LT3/a;->b(Ljava/lang/String;Ljava/lang/String;)LT3/a;

    .line 144
    .line 145
    .line 146
    const-string v0, "plain"

    .line 147
    .line 148
    invoke-static {v1, v0}, LT3/a;->b(Ljava/lang/String;Ljava/lang/String;)LT3/a;

    .line 149
    .line 150
    .line 151
    const-string v0, "javascript"

    .line 152
    .line 153
    invoke-static {v1, v0}, LT3/a;->b(Ljava/lang/String;Ljava/lang/String;)LT3/a;

    .line 154
    .line 155
    .line 156
    const-string v7, "tab-separated-values"

    .line 157
    .line 158
    invoke-static {v1, v7}, LT3/a;->b(Ljava/lang/String;Ljava/lang/String;)LT3/a;

    .line 159
    .line 160
    .line 161
    const-string v7, "vcard"

    .line 162
    .line 163
    invoke-static {v1, v7}, LT3/a;->b(Ljava/lang/String;Ljava/lang/String;)LT3/a;

    .line 164
    .line 165
    .line 166
    const-string v7, "vnd.wap.wml"

    .line 167
    .line 168
    invoke-static {v1, v7}, LT3/a;->b(Ljava/lang/String;Ljava/lang/String;)LT3/a;

    .line 169
    .line 170
    .line 171
    const-string v7, "xml"

    .line 172
    .line 173
    invoke-static {v1, v7}, LT3/a;->b(Ljava/lang/String;Ljava/lang/String;)LT3/a;

    .line 174
    .line 175
    .line 176
    const-string v8, "vtt"

    .line 177
    .line 178
    invoke-static {v1, v8}, LT3/a;->b(Ljava/lang/String;Ljava/lang/String;)LT3/a;

    .line 179
    .line 180
    .line 181
    const-string v1, "bmp"

    .line 182
    .line 183
    invoke-static {v2, v1}, LT3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    const-string v1, "x-canon-crw"

    .line 187
    .line 188
    invoke-static {v2, v1}, LT3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    const-string v1, "gif"

    .line 192
    .line 193
    invoke-static {v2, v1}, LT3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    const-string v1, "vnd.microsoft.icon"

    .line 197
    .line 198
    invoke-static {v2, v1}, LT3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    const-string v1, "jpeg"

    .line 202
    .line 203
    invoke-static {v2, v1}, LT3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    const-string v1, "png"

    .line 207
    .line 208
    invoke-static {v2, v1}, LT3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    const-string v1, "vnd.adobe.photoshop"

    .line 212
    .line 213
    invoke-static {v2, v1}, LT3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    const-string v1, "svg+xml"

    .line 217
    .line 218
    invoke-static {v2, v1}, LT3/a;->b(Ljava/lang/String;Ljava/lang/String;)LT3/a;

    .line 219
    .line 220
    .line 221
    const-string v1, "tiff"

    .line 222
    .line 223
    invoke-static {v2, v1}, LT3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    const-string v1, "webp"

    .line 227
    .line 228
    invoke-static {v2, v1}, LT3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    const-string v1, "heif"

    .line 232
    .line 233
    invoke-static {v2, v1}, LT3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    const-string v1, "jp2"

    .line 237
    .line 238
    invoke-static {v2, v1}, LT3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    const-string v1, "mp4"

    .line 242
    .line 243
    invoke-static {v3, v1}, LT3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    const-string v2, "mpeg"

    .line 247
    .line 248
    invoke-static {v3, v2}, LT3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    const-string v8, "ogg"

    .line 252
    .line 253
    invoke-static {v3, v8}, LT3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    const-string v9, "webm"

    .line 257
    .line 258
    invoke-static {v3, v9}, LT3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    const-string v10, "l16"

    .line 262
    .line 263
    invoke-static {v3, v10}, LT3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    const-string v10, "l24"

    .line 267
    .line 268
    invoke-static {v3, v10}, LT3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    const-string v10, "basic"

    .line 272
    .line 273
    invoke-static {v3, v10}, LT3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    const-string v10, "aac"

    .line 277
    .line 278
    invoke-static {v3, v10}, LT3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    const-string v10, "vorbis"

    .line 282
    .line 283
    invoke-static {v3, v10}, LT3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    const-string v10, "x-ms-wma"

    .line 287
    .line 288
    invoke-static {v3, v10}, LT3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    const-string v10, "x-ms-wax"

    .line 292
    .line 293
    invoke-static {v3, v10}, LT3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    const-string v10, "vnd.rn-realaudio"

    .line 297
    .line 298
    invoke-static {v3, v10}, LT3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    const-string v10, "vnd.wave"

    .line 302
    .line 303
    invoke-static {v3, v10}, LT3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    invoke-static {v4, v1}, LT3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    invoke-static {v4, v2}, LT3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    invoke-static {v4, v8}, LT3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    const-string v1, "quicktime"

    .line 316
    .line 317
    invoke-static {v4, v1}, LT3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    invoke-static {v4, v9}, LT3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    const-string v1, "x-ms-wmv"

    .line 324
    .line 325
    invoke-static {v4, v1}, LT3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    .line 327
    .line 328
    const-string v1, "x-flv"

    .line 329
    .line 330
    invoke-static {v4, v1}, LT3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    .line 332
    .line 333
    const-string v1, "3gpp"

    .line 334
    .line 335
    invoke-static {v4, v1}, LT3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    const-string v1, "3gpp2"

    .line 339
    .line 340
    invoke-static {v4, v1}, LT3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    .line 342
    .line 343
    invoke-static {v5, v7}, LT3/a;->b(Ljava/lang/String;Ljava/lang/String;)LT3/a;

    .line 344
    .line 345
    .line 346
    const-string v1, "atom+xml"

    .line 347
    .line 348
    invoke-static {v5, v1}, LT3/a;->b(Ljava/lang/String;Ljava/lang/String;)LT3/a;

    .line 349
    .line 350
    .line 351
    const-string v1, "x-bzip2"

    .line 352
    .line 353
    invoke-static {v5, v1}, LT3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    const-string v1, "dart"

    .line 357
    .line 358
    invoke-static {v5, v1}, LT3/a;->b(Ljava/lang/String;Ljava/lang/String;)LT3/a;

    .line 359
    .line 360
    .line 361
    const-string v1, "vnd.apple.pkpass"

    .line 362
    .line 363
    invoke-static {v5, v1}, LT3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    const-string v1, "vnd.ms-fontobject"

    .line 367
    .line 368
    invoke-static {v5, v1}, LT3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    .line 370
    .line 371
    const-string v1, "epub+zip"

    .line 372
    .line 373
    invoke-static {v5, v1}, LT3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    .line 375
    .line 376
    const-string v1, "x-www-form-urlencoded"

    .line 377
    .line 378
    invoke-static {v5, v1}, LT3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    .line 380
    .line 381
    const-string v1, "pkcs12"

    .line 382
    .line 383
    invoke-static {v5, v1}, LT3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    .line 385
    .line 386
    const-string v1, "binary"

    .line 387
    .line 388
    invoke-static {v5, v1}, LT3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    .line 390
    .line 391
    const-string v1, "geo+json"

    .line 392
    .line 393
    invoke-static {v5, v1}, LT3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    .line 395
    .line 396
    const-string v1, "x-gzip"

    .line 397
    .line 398
    invoke-static {v5, v1}, LT3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    .line 400
    .line 401
    const-string v1, "hal+json"

    .line 402
    .line 403
    invoke-static {v5, v1}, LT3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    .line 405
    .line 406
    invoke-static {v5, v0}, LT3/a;->b(Ljava/lang/String;Ljava/lang/String;)LT3/a;

    .line 407
    .line 408
    .line 409
    const-string v0, "jose"

    .line 410
    .line 411
    invoke-static {v5, v0}, LT3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    .line 413
    .line 414
    const-string v0, "jose+json"

    .line 415
    .line 416
    invoke-static {v5, v0}, LT3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    .line 418
    .line 419
    const-string v0, "json"

    .line 420
    .line 421
    invoke-static {v5, v0}, LT3/a;->b(Ljava/lang/String;Ljava/lang/String;)LT3/a;

    .line 422
    .line 423
    .line 424
    move-result-object v0

    .line 425
    sput-object v0, LT3/a;->i:LT3/a;

    .line 426
    .line 427
    const-string v0, "jwt"

    .line 428
    .line 429
    invoke-static {v5, v0}, LT3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    .line 431
    .line 432
    const-string v0, "manifest+json"

    .line 433
    .line 434
    invoke-static {v5, v0}, LT3/a;->b(Ljava/lang/String;Ljava/lang/String;)LT3/a;

    .line 435
    .line 436
    .line 437
    const-string v0, "vnd.google-earth.kml+xml"

    .line 438
    .line 439
    invoke-static {v5, v0}, LT3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    .line 441
    .line 442
    const-string v0, "vnd.google-earth.kmz"

    .line 443
    .line 444
    invoke-static {v5, v0}, LT3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    .line 446
    .line 447
    const-string v0, "mbox"

    .line 448
    .line 449
    invoke-static {v5, v0}, LT3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    .line 451
    .line 452
    const-string v0, "x-apple-aspen-config"

    .line 453
    .line 454
    invoke-static {v5, v0}, LT3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    .line 456
    .line 457
    const-string v0, "vnd.ms-excel"

    .line 458
    .line 459
    invoke-static {v5, v0}, LT3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    .line 461
    .line 462
    const-string v0, "vnd.ms-outlook"

    .line 463
    .line 464
    invoke-static {v5, v0}, LT3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    .line 466
    .line 467
    const-string v0, "vnd.ms-powerpoint"

    .line 468
    .line 469
    invoke-static {v5, v0}, LT3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    .line 471
    .line 472
    const-string v0, "msword"

    .line 473
    .line 474
    invoke-static {v5, v0}, LT3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    .line 476
    .line 477
    const-string v0, "dash+xml"

    .line 478
    .line 479
    invoke-static {v5, v0}, LT3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    .line 481
    .line 482
    const-string v0, "wasm"

    .line 483
    .line 484
    invoke-static {v5, v0}, LT3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    .line 486
    .line 487
    const-string v0, "x-nacl"

    .line 488
    .line 489
    invoke-static {v5, v0}, LT3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    .line 491
    .line 492
    const-string v0, "x-pnacl"

    .line 493
    .line 494
    invoke-static {v5, v0}, LT3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    .line 496
    .line 497
    const-string v0, "octet-stream"

    .line 498
    .line 499
    invoke-static {v5, v0}, LT3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    .line 501
    .line 502
    invoke-static {v5, v8}, LT3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    .line 504
    .line 505
    const-string v0, "vnd.openxmlformats-officedocument.wordprocessingml.document"

    .line 506
    .line 507
    invoke-static {v5, v0}, LT3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    .line 509
    .line 510
    const-string v0, "vnd.openxmlformats-officedocument.presentationml.presentation"

    .line 511
    .line 512
    invoke-static {v5, v0}, LT3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    .line 514
    .line 515
    const-string v0, "vnd.openxmlformats-officedocument.spreadsheetml.sheet"

    .line 516
    .line 517
    invoke-static {v5, v0}, LT3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    .line 519
    .line 520
    const-string v0, "vnd.oasis.opendocument.graphics"

    .line 521
    .line 522
    invoke-static {v5, v0}, LT3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    .line 524
    .line 525
    const-string v0, "vnd.oasis.opendocument.presentation"

    .line 526
    .line 527
    invoke-static {v5, v0}, LT3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    .line 529
    .line 530
    const-string v0, "vnd.oasis.opendocument.spreadsheet"

    .line 531
    .line 532
    invoke-static {v5, v0}, LT3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    .line 534
    .line 535
    const-string v0, "vnd.oasis.opendocument.text"

    .line 536
    .line 537
    invoke-static {v5, v0}, LT3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    .line 539
    .line 540
    const-string v0, "opensearchdescription+xml"

    .line 541
    .line 542
    invoke-static {v5, v0}, LT3/a;->b(Ljava/lang/String;Ljava/lang/String;)LT3/a;

    .line 543
    .line 544
    .line 545
    const-string v0, "pdf"

    .line 546
    .line 547
    invoke-static {v5, v0}, LT3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    .line 549
    .line 550
    const-string v0, "postscript"

    .line 551
    .line 552
    invoke-static {v5, v0}, LT3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    .line 554
    .line 555
    const-string v0, "protobuf"

    .line 556
    .line 557
    invoke-static {v5, v0}, LT3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    .line 559
    .line 560
    const-string v0, "rdf+xml"

    .line 561
    .line 562
    invoke-static {v5, v0}, LT3/a;->b(Ljava/lang/String;Ljava/lang/String;)LT3/a;

    .line 563
    .line 564
    .line 565
    const-string v0, "rtf"

    .line 566
    .line 567
    invoke-static {v5, v0}, LT3/a;->b(Ljava/lang/String;Ljava/lang/String;)LT3/a;

    .line 568
    .line 569
    .line 570
    const-string v0, "font-sfnt"

    .line 571
    .line 572
    invoke-static {v5, v0}, LT3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    .line 574
    .line 575
    const-string v0, "x-shockwave-flash"

    .line 576
    .line 577
    invoke-static {v5, v0}, LT3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    .line 579
    .line 580
    const-string v0, "vnd.sketchup.skp"

    .line 581
    .line 582
    invoke-static {v5, v0}, LT3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    .line 584
    .line 585
    const-string v0, "soap+xml"

    .line 586
    .line 587
    invoke-static {v5, v0}, LT3/a;->b(Ljava/lang/String;Ljava/lang/String;)LT3/a;

    .line 588
    .line 589
    .line 590
    const-string v0, "x-tar"

    .line 591
    .line 592
    invoke-static {v5, v0}, LT3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    .line 594
    .line 595
    const-string v0, "font-woff"

    .line 596
    .line 597
    invoke-static {v5, v0}, LT3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    .line 599
    .line 600
    const-string v0, "font-woff2"

    .line 601
    .line 602
    invoke-static {v5, v0}, LT3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    .line 604
    .line 605
    const-string v0, "xhtml+xml"

    .line 606
    .line 607
    invoke-static {v5, v0}, LT3/a;->b(Ljava/lang/String;Ljava/lang/String;)LT3/a;

    .line 608
    .line 609
    .line 610
    const-string v0, "xrd+xml"

    .line 611
    .line 612
    invoke-static {v5, v0}, LT3/a;->b(Ljava/lang/String;Ljava/lang/String;)LT3/a;

    .line 613
    .line 614
    .line 615
    const-string v0, "zip"

    .line 616
    .line 617
    invoke-static {v5, v0}, LT3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    .line 619
    .line 620
    const-string v0, "collection"

    .line 621
    .line 622
    invoke-static {v6, v0}, LT3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    .line 624
    .line 625
    const-string v0, "otf"

    .line 626
    .line 627
    invoke-static {v6, v0}, LT3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    .line 629
    .line 630
    const-string v0, "sfnt"

    .line 631
    .line 632
    invoke-static {v6, v0}, LT3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    .line 634
    .line 635
    const-string v0, "ttf"

    .line 636
    .line 637
    invoke-static {v6, v0}, LT3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    .line 639
    .line 640
    const-string v0, "woff"

    .line 641
    .line 642
    invoke-static {v6, v0}, LT3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    .line 644
    .line 645
    const-string v0, "woff2"

    .line 646
    .line 647
    invoke-static {v6, v0}, LT3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    .line 649
    .line 650
    const-string v0, "; "

    .line 651
    .line 652
    invoke-static {v0}, LP3/r;->on(Ljava/lang/String;)LP3/r;

    .line 653
    .line 654
    .line 655
    move-result-object v0

    .line 656
    const-string v1, "="

    .line 657
    .line 658
    invoke-virtual {v0, v1}, LP3/r;->withKeyValueSeparator(Ljava/lang/String;)LP3/q;

    .line 659
    .line 660
    .line 661
    move-result-object v0

    .line 662
    sput-object v0, LT3/a;->j:LP3/q;

    .line 663
    .line 664
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/common/collect/ImmutableListMultimap;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LT3/a;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, LT3/a;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, LT3/a;->c:Lcom/google/common/collect/ImmutableListMultimap;

    .line 9
    .line 10
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, LT3/a;

    .line 2
    .line 3
    invoke-static {}, Lcom/google/common/collect/ImmutableListMultimap;->of()Lcom/google/common/collect/ImmutableListMultimap;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, p0, p1, v1}, LT3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/common/collect/ImmutableListMultimap;)V

    .line 8
    .line 9
    .line 10
    sget-object p0, LT3/a;->h:Ljava/util/HashMap;

    .line 11
    .line 12
    invoke-interface {p0, v0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)LT3/a;
    .locals 2

    .line 1
    new-instance v0, LT3/a;

    .line 2
    .line 3
    sget-object v1, LT3/a;->f:Lcom/google/common/collect/ImmutableListMultimap;

    .line 4
    .line 5
    invoke-direct {v0, p0, p1, v1}, LT3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/common/collect/ImmutableListMultimap;)V

    .line 6
    .line 7
    .line 8
    sget-object p0, LT3/a;->h:Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-interface {p0, v0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    sget-object p0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 14
    .line 15
    invoke-static {p0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    .line 16
    .line 17
    .line 18
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    if-ne p1, p0, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    instance-of v0, p1, LT3/a;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    check-cast p1, LT3/a;

    .line 9
    .line 10
    iget-object v0, p1, LT3/a;->a:Ljava/lang/String;

    .line 11
    .line 12
    iget-object v1, p0, LT3/a;->a:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, LT3/a;->b:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v1, p1, LT3/a;->b:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    iget-object v0, p0, LT3/a;->c:Lcom/google/common/collect/ImmutableListMultimap;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMultimap;->asMap()Lcom/google/common/collect/ImmutableMap;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    new-instance v1, LP0/y;

    .line 37
    .line 38
    const/4 v2, 0x4

    .line 39
    invoke-direct {v1, v2}, LP0/y;-><init>(I)V

    .line 40
    .line 41
    .line 42
    invoke-static {v0, v1}, Lcom/google/common/collect/C;->transformValues(Ljava/util/Map;LP3/p;)Ljava/util/Map;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iget-object p1, p1, LT3/a;->c:Lcom/google/common/collect/ImmutableListMultimap;

    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableMultimap;->asMap()Lcom/google/common/collect/ImmutableMap;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    new-instance v1, LP0/y;

    .line 53
    .line 54
    const/4 v2, 0x4

    .line 55
    invoke-direct {v1, v2}, LP0/y;-><init>(I)V

    .line 56
    .line 57
    .line 58
    invoke-static {p1, v1}, Lcom/google/common/collect/C;->transformValues(Ljava/util/Map;LP3/p;)Ljava/util/Map;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-interface {v0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-eqz p1, :cond_1

    .line 67
    .line 68
    :goto_0
    const/4 p1, 0x1

    .line 69
    return p1

    .line 70
    :cond_1
    const/4 p1, 0x0

    .line 71
    return p1
.end method

.method public hashCode()I
    .locals 5

    .line 1
    iget v0, p0, LT3/a;->e:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, LT3/a;->b:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v1, p0, LT3/a;->c:Lcom/google/common/collect/ImmutableListMultimap;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMultimap;->asMap()Lcom/google/common/collect/ImmutableMap;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    new-instance v2, LP0/y;

    .line 14
    .line 15
    const/4 v3, 0x4

    .line 16
    invoke-direct {v2, v3}, LP0/y;-><init>(I)V

    .line 17
    .line 18
    .line 19
    invoke-static {v1, v2}, Lcom/google/common/collect/C;->transformValues(Ljava/util/Map;LP3/p;)Ljava/util/Map;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iget-object v2, p0, LT3/a;->a:Ljava/lang/String;

    .line 24
    .line 25
    const/4 v3, 0x3

    .line 26
    new-array v3, v3, [Ljava/lang/Object;

    .line 27
    .line 28
    const/4 v4, 0x0

    .line 29
    aput-object v2, v3, v4

    .line 30
    .line 31
    const/4 v2, 0x1

    .line 32
    aput-object v0, v3, v2

    .line 33
    .line 34
    const/4 v0, 0x2

    .line 35
    aput-object v1, v3, v0

    .line 36
    .line 37
    invoke-static {v3}, LP3/u;->hashCode([Ljava/lang/Object;)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    iput v0, p0, LT3/a;->e:I

    .line 42
    .line 43
    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, LT3/a;->d:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, LT3/a;->a:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const/16 v1, 0x2f

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, LT3/a;->b:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, LT3/a;->c:Lcom/google/common/collect/ImmutableListMultimap;

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMultimap;->isEmpty()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-nez v2, :cond_0

    .line 32
    .line 33
    const-string v2, "; "

    .line 34
    .line 35
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    new-instance v2, LP0/y;

    .line 39
    .line 40
    const/4 v3, 0x3

    .line 41
    invoke-direct {v2, v3}, LP0/y;-><init>(I)V

    .line 42
    .line 43
    .line 44
    invoke-static {v1, v2}, Lcom/google/common/collect/F;->transformValues(LQ3/G;LP3/p;)LQ3/G;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    sget-object v2, LT3/a;->j:LP3/q;

    .line 49
    .line 50
    invoke-interface {v1}, LQ3/W;->entries()Ljava/util/Collection;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v2, v0, v1}, LP3/q;->appendTo(Ljava/lang/StringBuilder;Ljava/lang/Iterable;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    iput-object v0, p0, LT3/a;->d:Ljava/lang/String;

    .line 62
    .line 63
    :cond_1
    return-object v0
.end method
