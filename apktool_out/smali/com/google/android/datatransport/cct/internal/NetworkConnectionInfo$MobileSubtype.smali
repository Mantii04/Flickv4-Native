.class public final enum Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum e:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;

.field public static final enum f:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;

.field public static final j:Landroid/util/SparseArray;

.field public static final synthetic m:[Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;


# instance fields
.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 44

    .line 1
    new-instance v0, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;

    .line 2
    .line 3
    const-string v1, "UNKNOWN_MOBILE_SUBTYPE"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;->e:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;

    .line 10
    .line 11
    new-instance v1, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;

    .line 12
    .line 13
    const-string v3, "GPRS"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4, v4}, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    new-instance v3, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;

    .line 20
    .line 21
    const-string v5, "EDGE"

    .line 22
    .line 23
    const/4 v6, 0x2

    .line 24
    invoke-direct {v3, v5, v6, v6}, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;-><init>(Ljava/lang/String;II)V

    .line 25
    .line 26
    .line 27
    new-instance v5, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;

    .line 28
    .line 29
    const-string v7, "UMTS"

    .line 30
    .line 31
    const/4 v8, 0x3

    .line 32
    invoke-direct {v5, v7, v8, v8}, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;-><init>(Ljava/lang/String;II)V

    .line 33
    .line 34
    .line 35
    new-instance v7, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;

    .line 36
    .line 37
    const-string v9, "CDMA"

    .line 38
    .line 39
    const/4 v10, 0x4

    .line 40
    invoke-direct {v7, v9, v10, v10}, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;-><init>(Ljava/lang/String;II)V

    .line 41
    .line 42
    .line 43
    new-instance v9, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;

    .line 44
    .line 45
    const-string v11, "EVDO_0"

    .line 46
    .line 47
    const/4 v12, 0x5

    .line 48
    invoke-direct {v9, v11, v12, v12}, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;-><init>(Ljava/lang/String;II)V

    .line 49
    .line 50
    .line 51
    new-instance v11, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;

    .line 52
    .line 53
    const-string v13, "EVDO_A"

    .line 54
    .line 55
    const/4 v14, 0x6

    .line 56
    invoke-direct {v11, v13, v14, v14}, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;-><init>(Ljava/lang/String;II)V

    .line 57
    .line 58
    .line 59
    new-instance v13, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;

    .line 60
    .line 61
    const-string v15, "RTT"

    .line 62
    .line 63
    move/from16 v16, v14

    .line 64
    .line 65
    const/4 v14, 0x7

    .line 66
    invoke-direct {v13, v15, v14, v14}, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;-><init>(Ljava/lang/String;II)V

    .line 67
    .line 68
    .line 69
    new-instance v15, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;

    .line 70
    .line 71
    move/from16 v17, v14

    .line 72
    .line 73
    const-string v14, "HSDPA"

    .line 74
    .line 75
    move/from16 v18, v12

    .line 76
    .line 77
    const/16 v12, 0x8

    .line 78
    .line 79
    invoke-direct {v15, v14, v12, v12}, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;-><init>(Ljava/lang/String;II)V

    .line 80
    .line 81
    .line 82
    new-instance v14, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;

    .line 83
    .line 84
    move/from16 v19, v12

    .line 85
    .line 86
    const-string v12, "HSUPA"

    .line 87
    .line 88
    move/from16 v20, v10

    .line 89
    .line 90
    const/16 v10, 0x9

    .line 91
    .line 92
    invoke-direct {v14, v12, v10, v10}, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;-><init>(Ljava/lang/String;II)V

    .line 93
    .line 94
    .line 95
    new-instance v12, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;

    .line 96
    .line 97
    move/from16 v21, v10

    .line 98
    .line 99
    const-string v10, "HSPA"

    .line 100
    .line 101
    move/from16 v22, v8

    .line 102
    .line 103
    const/16 v8, 0xa

    .line 104
    .line 105
    invoke-direct {v12, v10, v8, v8}, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;-><init>(Ljava/lang/String;II)V

    .line 106
    .line 107
    .line 108
    new-instance v10, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;

    .line 109
    .line 110
    move/from16 v23, v8

    .line 111
    .line 112
    const-string v8, "IDEN"

    .line 113
    .line 114
    move/from16 v24, v6

    .line 115
    .line 116
    const/16 v6, 0xb

    .line 117
    .line 118
    invoke-direct {v10, v8, v6, v6}, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;-><init>(Ljava/lang/String;II)V

    .line 119
    .line 120
    .line 121
    new-instance v8, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;

    .line 122
    .line 123
    move/from16 v25, v6

    .line 124
    .line 125
    const-string v6, "EVDO_B"

    .line 126
    .line 127
    move/from16 v26, v4

    .line 128
    .line 129
    const/16 v4, 0xc

    .line 130
    .line 131
    invoke-direct {v8, v6, v4, v4}, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;-><init>(Ljava/lang/String;II)V

    .line 132
    .line 133
    .line 134
    new-instance v6, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;

    .line 135
    .line 136
    move/from16 v27, v4

    .line 137
    .line 138
    const-string v4, "LTE"

    .line 139
    .line 140
    move/from16 v28, v2

    .line 141
    .line 142
    const/16 v2, 0xd

    .line 143
    .line 144
    invoke-direct {v6, v4, v2, v2}, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;-><init>(Ljava/lang/String;II)V

    .line 145
    .line 146
    .line 147
    new-instance v4, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;

    .line 148
    .line 149
    move/from16 v29, v2

    .line 150
    .line 151
    const-string v2, "EHRPD"

    .line 152
    .line 153
    move-object/from16 v30, v6

    .line 154
    .line 155
    const/16 v6, 0xe

    .line 156
    .line 157
    invoke-direct {v4, v2, v6, v6}, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;-><init>(Ljava/lang/String;II)V

    .line 158
    .line 159
    .line 160
    new-instance v2, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;

    .line 161
    .line 162
    move/from16 v31, v6

    .line 163
    .line 164
    const-string v6, "HSPAP"

    .line 165
    .line 166
    move-object/from16 v32, v4

    .line 167
    .line 168
    const/16 v4, 0xf

    .line 169
    .line 170
    invoke-direct {v2, v6, v4, v4}, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;-><init>(Ljava/lang/String;II)V

    .line 171
    .line 172
    .line 173
    new-instance v6, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;

    .line 174
    .line 175
    move/from16 v33, v4

    .line 176
    .line 177
    const-string v4, "GSM"

    .line 178
    .line 179
    move-object/from16 v34, v2

    .line 180
    .line 181
    const/16 v2, 0x10

    .line 182
    .line 183
    invoke-direct {v6, v4, v2, v2}, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;-><init>(Ljava/lang/String;II)V

    .line 184
    .line 185
    .line 186
    new-instance v4, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;

    .line 187
    .line 188
    move/from16 v35, v2

    .line 189
    .line 190
    const-string v2, "TD_SCDMA"

    .line 191
    .line 192
    move-object/from16 v36, v6

    .line 193
    .line 194
    const/16 v6, 0x11

    .line 195
    .line 196
    invoke-direct {v4, v2, v6, v6}, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;-><init>(Ljava/lang/String;II)V

    .line 197
    .line 198
    .line 199
    new-instance v2, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;

    .line 200
    .line 201
    move/from16 v37, v6

    .line 202
    .line 203
    const-string v6, "IWLAN"

    .line 204
    .line 205
    move-object/from16 v38, v4

    .line 206
    .line 207
    const/16 v4, 0x12

    .line 208
    .line 209
    invoke-direct {v2, v6, v4, v4}, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;-><init>(Ljava/lang/String;II)V

    .line 210
    .line 211
    .line 212
    new-instance v6, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;

    .line 213
    .line 214
    move/from16 v39, v4

    .line 215
    .line 216
    const-string v4, "LTE_CA"

    .line 217
    .line 218
    move-object/from16 v40, v2

    .line 219
    .line 220
    const/16 v2, 0x13

    .line 221
    .line 222
    invoke-direct {v6, v4, v2, v2}, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;-><init>(Ljava/lang/String;II)V

    .line 223
    .line 224
    .line 225
    new-instance v4, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;

    .line 226
    .line 227
    move/from16 v41, v2

    .line 228
    .line 229
    const/16 v2, 0x64

    .line 230
    .line 231
    move-object/from16 v42, v6

    .line 232
    .line 233
    const-string v6, "COMBINED"

    .line 234
    .line 235
    move-object/from16 v43, v8

    .line 236
    .line 237
    const/16 v8, 0x14

    .line 238
    .line 239
    invoke-direct {v4, v6, v8, v2}, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;-><init>(Ljava/lang/String;II)V

    .line 240
    .line 241
    .line 242
    sput-object v4, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;->f:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;

    .line 243
    .line 244
    const/16 v2, 0x15

    .line 245
    .line 246
    new-array v2, v2, [Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;

    .line 247
    .line 248
    aput-object v0, v2, v28

    .line 249
    .line 250
    aput-object v1, v2, v26

    .line 251
    .line 252
    aput-object v3, v2, v24

    .line 253
    .line 254
    aput-object v5, v2, v22

    .line 255
    .line 256
    aput-object v7, v2, v20

    .line 257
    .line 258
    aput-object v9, v2, v18

    .line 259
    .line 260
    aput-object v11, v2, v16

    .line 261
    .line 262
    aput-object v13, v2, v17

    .line 263
    .line 264
    aput-object v15, v2, v19

    .line 265
    .line 266
    aput-object v14, v2, v21

    .line 267
    .line 268
    aput-object v12, v2, v23

    .line 269
    .line 270
    aput-object v10, v2, v25

    .line 271
    .line 272
    aput-object v43, v2, v27

    .line 273
    .line 274
    aput-object v30, v2, v29

    .line 275
    .line 276
    aput-object v32, v2, v31

    .line 277
    .line 278
    aput-object v34, v2, v33

    .line 279
    .line 280
    aput-object v36, v2, v35

    .line 281
    .line 282
    aput-object v38, v2, v37

    .line 283
    .line 284
    aput-object v40, v2, v39

    .line 285
    .line 286
    aput-object v42, v2, v41

    .line 287
    .line 288
    aput-object v4, v2, v8

    .line 289
    .line 290
    sput-object v2, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;->m:[Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;

    .line 291
    .line 292
    new-instance v2, Landroid/util/SparseArray;

    .line 293
    .line 294
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 295
    .line 296
    .line 297
    sput-object v2, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;->j:Landroid/util/SparseArray;

    .line 298
    .line 299
    move/from16 v4, v28

    .line 300
    .line 301
    invoke-virtual {v2, v4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 302
    .line 303
    .line 304
    move/from16 v0, v26

    .line 305
    .line 306
    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 307
    .line 308
    .line 309
    move/from16 v0, v24

    .line 310
    .line 311
    invoke-virtual {v2, v0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 312
    .line 313
    .line 314
    move/from16 v0, v22

    .line 315
    .line 316
    invoke-virtual {v2, v0, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 317
    .line 318
    .line 319
    move/from16 v0, v20

    .line 320
    .line 321
    invoke-virtual {v2, v0, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 322
    .line 323
    .line 324
    move/from16 v0, v18

    .line 325
    .line 326
    invoke-virtual {v2, v0, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 327
    .line 328
    .line 329
    move/from16 v0, v16

    .line 330
    .line 331
    invoke-virtual {v2, v0, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 332
    .line 333
    .line 334
    move/from16 v0, v17

    .line 335
    .line 336
    invoke-virtual {v2, v0, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 337
    .line 338
    .line 339
    move/from16 v0, v19

    .line 340
    .line 341
    invoke-virtual {v2, v0, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 342
    .line 343
    .line 344
    move/from16 v0, v21

    .line 345
    .line 346
    invoke-virtual {v2, v0, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 347
    .line 348
    .line 349
    move/from16 v0, v23

    .line 350
    .line 351
    invoke-virtual {v2, v0, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 352
    .line 353
    .line 354
    move/from16 v0, v25

    .line 355
    .line 356
    invoke-virtual {v2, v0, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 357
    .line 358
    .line 359
    move/from16 v1, v27

    .line 360
    .line 361
    move-object/from16 v0, v43

    .line 362
    .line 363
    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 364
    .line 365
    .line 366
    move/from16 v1, v29

    .line 367
    .line 368
    move-object/from16 v0, v30

    .line 369
    .line 370
    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 371
    .line 372
    .line 373
    move/from16 v1, v31

    .line 374
    .line 375
    move-object/from16 v0, v32

    .line 376
    .line 377
    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 378
    .line 379
    .line 380
    move/from16 v1, v33

    .line 381
    .line 382
    move-object/from16 v0, v34

    .line 383
    .line 384
    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 385
    .line 386
    .line 387
    move/from16 v1, v35

    .line 388
    .line 389
    move-object/from16 v0, v36

    .line 390
    .line 391
    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 392
    .line 393
    .line 394
    move/from16 v1, v37

    .line 395
    .line 396
    move-object/from16 v0, v38

    .line 397
    .line 398
    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 399
    .line 400
    .line 401
    move/from16 v1, v39

    .line 402
    .line 403
    move-object/from16 v0, v40

    .line 404
    .line 405
    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 406
    .line 407
    .line 408
    move/from16 v1, v41

    .line 409
    .line 410
    move-object/from16 v0, v42

    .line 411
    .line 412
    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 413
    .line 414
    .line 415
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;->b:I

    .line 5
    .line 6
    return-void
.end method

.method public static forNumber(I)Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;->j:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;

    .line 8
    .line 9
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;
    .locals 1

    .line 1
    const-class v0, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;->m:[Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;->b:I

    .line 2
    .line 3
    return v0
.end method
