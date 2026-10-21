.class public final enum Landroidx/datastore/preferences/protobuf/FieldType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/datastore/preferences/protobuf/FieldType$Collection;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/datastore/preferences/protobuf/FieldType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum e:Landroidx/datastore/preferences/protobuf/FieldType;

.field public static final enum f:Landroidx/datastore/preferences/protobuf/FieldType;

.field public static final j:[Landroidx/datastore/preferences/protobuf/FieldType;

.field public static final synthetic m:[Landroidx/datastore/preferences/protobuf/FieldType;


# instance fields
.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 86

    .line 1
    new-instance v0, Landroidx/datastore/preferences/protobuf/FieldType;

    .line 2
    .line 3
    sget-object v5, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->b:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    .line 4
    .line 5
    sget-object v11, Landroidx/datastore/preferences/protobuf/JavaType;->p:Landroidx/datastore/preferences/protobuf/JavaType;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    const-string v1, "DOUBLE"

    .line 10
    .line 11
    move-object v4, v5

    .line 12
    move-object v5, v11

    .line 13
    invoke-direct/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    .line 14
    .line 15
    .line 16
    move-object v5, v4

    .line 17
    new-instance v1, Landroidx/datastore/preferences/protobuf/FieldType;

    .line 18
    .line 19
    sget-object v17, Landroidx/datastore/preferences/protobuf/JavaType;->n:Landroidx/datastore/preferences/protobuf/JavaType;

    .line 20
    .line 21
    const/4 v3, 0x1

    .line 22
    const/4 v4, 0x1

    .line 23
    const-string v2, "FLOAT"

    .line 24
    .line 25
    move-object/from16 v6, v17

    .line 26
    .line 27
    invoke-direct/range {v1 .. v6}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    .line 28
    .line 29
    .line 30
    move-object/from16 v18, v1

    .line 31
    .line 32
    new-instance v1, Landroidx/datastore/preferences/protobuf/FieldType;

    .line 33
    .line 34
    sget-object v24, Landroidx/datastore/preferences/protobuf/JavaType;->m:Landroidx/datastore/preferences/protobuf/JavaType;

    .line 35
    .line 36
    const/4 v3, 0x2

    .line 37
    const/4 v4, 0x2

    .line 38
    const-string v2, "INT64"

    .line 39
    .line 40
    move-object/from16 v6, v24

    .line 41
    .line 42
    invoke-direct/range {v1 .. v6}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    .line 43
    .line 44
    .line 45
    move-object/from16 v25, v1

    .line 46
    .line 47
    new-instance v1, Landroidx/datastore/preferences/protobuf/FieldType;

    .line 48
    .line 49
    const/4 v3, 0x3

    .line 50
    const/4 v4, 0x3

    .line 51
    const-string v2, "UINT64"

    .line 52
    .line 53
    invoke-direct/range {v1 .. v6}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    .line 54
    .line 55
    .line 56
    move-object/from16 v26, v1

    .line 57
    .line 58
    new-instance v1, Landroidx/datastore/preferences/protobuf/FieldType;

    .line 59
    .line 60
    sget-object v32, Landroidx/datastore/preferences/protobuf/JavaType;->j:Landroidx/datastore/preferences/protobuf/JavaType;

    .line 61
    .line 62
    const/4 v3, 0x4

    .line 63
    const/4 v4, 0x4

    .line 64
    const-string v2, "INT32"

    .line 65
    .line 66
    move-object/from16 v6, v32

    .line 67
    .line 68
    invoke-direct/range {v1 .. v6}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    .line 69
    .line 70
    .line 71
    move-object/from16 v33, v1

    .line 72
    .line 73
    new-instance v1, Landroidx/datastore/preferences/protobuf/FieldType;

    .line 74
    .line 75
    const/4 v3, 0x5

    .line 76
    const/4 v4, 0x5

    .line 77
    const-string v2, "FIXED64"

    .line 78
    .line 79
    move-object/from16 v6, v24

    .line 80
    .line 81
    invoke-direct/range {v1 .. v6}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    .line 82
    .line 83
    .line 84
    move-object/from16 v34, v1

    .line 85
    .line 86
    new-instance v1, Landroidx/datastore/preferences/protobuf/FieldType;

    .line 87
    .line 88
    const/4 v3, 0x6

    .line 89
    const/4 v4, 0x6

    .line 90
    const-string v2, "FIXED32"

    .line 91
    .line 92
    move-object/from16 v6, v32

    .line 93
    .line 94
    invoke-direct/range {v1 .. v6}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    .line 95
    .line 96
    .line 97
    move-object/from16 v35, v1

    .line 98
    .line 99
    new-instance v1, Landroidx/datastore/preferences/protobuf/FieldType;

    .line 100
    .line 101
    sget-object v41, Landroidx/datastore/preferences/protobuf/JavaType;->q:Landroidx/datastore/preferences/protobuf/JavaType;

    .line 102
    .line 103
    const/4 v3, 0x7

    .line 104
    const/4 v4, 0x7

    .line 105
    const-string v2, "BOOL"

    .line 106
    .line 107
    move-object/from16 v6, v41

    .line 108
    .line 109
    invoke-direct/range {v1 .. v6}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    .line 110
    .line 111
    .line 112
    move-object/from16 v42, v1

    .line 113
    .line 114
    new-instance v1, Landroidx/datastore/preferences/protobuf/FieldType;

    .line 115
    .line 116
    sget-object v48, Landroidx/datastore/preferences/protobuf/JavaType;->r:Landroidx/datastore/preferences/protobuf/JavaType;

    .line 117
    .line 118
    const/16 v3, 0x8

    .line 119
    .line 120
    const/16 v4, 0x8

    .line 121
    .line 122
    const-string v2, "STRING"

    .line 123
    .line 124
    move-object/from16 v6, v48

    .line 125
    .line 126
    invoke-direct/range {v1 .. v6}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    .line 127
    .line 128
    .line 129
    move-object/from16 v49, v1

    .line 130
    .line 131
    new-instance v1, Landroidx/datastore/preferences/protobuf/FieldType;

    .line 132
    .line 133
    sget-object v6, Landroidx/datastore/preferences/protobuf/JavaType;->u:Landroidx/datastore/preferences/protobuf/JavaType;

    .line 134
    .line 135
    const/16 v3, 0x9

    .line 136
    .line 137
    const/16 v4, 0x9

    .line 138
    .line 139
    const-string v2, "MESSAGE"

    .line 140
    .line 141
    invoke-direct/range {v1 .. v6}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    .line 142
    .line 143
    .line 144
    move-object/from16 v56, v1

    .line 145
    .line 146
    move-object/from16 v55, v6

    .line 147
    .line 148
    new-instance v1, Landroidx/datastore/preferences/protobuf/FieldType;

    .line 149
    .line 150
    sget-object v6, Landroidx/datastore/preferences/protobuf/JavaType;->s:Landroidx/datastore/preferences/protobuf/JavaType;

    .line 151
    .line 152
    const/16 v3, 0xa

    .line 153
    .line 154
    const/16 v4, 0xa

    .line 155
    .line 156
    const-string v2, "BYTES"

    .line 157
    .line 158
    invoke-direct/range {v1 .. v6}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    .line 159
    .line 160
    .line 161
    move-object/from16 v63, v1

    .line 162
    .line 163
    move-object/from16 v62, v6

    .line 164
    .line 165
    new-instance v1, Landroidx/datastore/preferences/protobuf/FieldType;

    .line 166
    .line 167
    const/16 v3, 0xb

    .line 168
    .line 169
    const/16 v4, 0xb

    .line 170
    .line 171
    const-string v2, "UINT32"

    .line 172
    .line 173
    move-object/from16 v6, v32

    .line 174
    .line 175
    invoke-direct/range {v1 .. v6}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    .line 176
    .line 177
    .line 178
    move-object/from16 v64, v1

    .line 179
    .line 180
    new-instance v1, Landroidx/datastore/preferences/protobuf/FieldType;

    .line 181
    .line 182
    sget-object v70, Landroidx/datastore/preferences/protobuf/JavaType;->t:Landroidx/datastore/preferences/protobuf/JavaType;

    .line 183
    .line 184
    const/16 v3, 0xc

    .line 185
    .line 186
    const/16 v4, 0xc

    .line 187
    .line 188
    const-string v2, "ENUM"

    .line 189
    .line 190
    move-object/from16 v6, v70

    .line 191
    .line 192
    invoke-direct/range {v1 .. v6}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    .line 193
    .line 194
    .line 195
    move-object/from16 v71, v1

    .line 196
    .line 197
    new-instance v1, Landroidx/datastore/preferences/protobuf/FieldType;

    .line 198
    .line 199
    const/16 v3, 0xd

    .line 200
    .line 201
    const/16 v4, 0xd

    .line 202
    .line 203
    const-string v2, "SFIXED32"

    .line 204
    .line 205
    move-object/from16 v6, v32

    .line 206
    .line 207
    invoke-direct/range {v1 .. v6}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    .line 208
    .line 209
    .line 210
    move-object/from16 v72, v1

    .line 211
    .line 212
    new-instance v1, Landroidx/datastore/preferences/protobuf/FieldType;

    .line 213
    .line 214
    const/16 v3, 0xe

    .line 215
    .line 216
    const/16 v4, 0xe

    .line 217
    .line 218
    const-string v2, "SFIXED64"

    .line 219
    .line 220
    move-object/from16 v6, v24

    .line 221
    .line 222
    invoke-direct/range {v1 .. v6}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    .line 223
    .line 224
    .line 225
    move-object/from16 v73, v1

    .line 226
    .line 227
    new-instance v1, Landroidx/datastore/preferences/protobuf/FieldType;

    .line 228
    .line 229
    const/16 v3, 0xf

    .line 230
    .line 231
    const/16 v4, 0xf

    .line 232
    .line 233
    const-string v2, "SINT32"

    .line 234
    .line 235
    move-object/from16 v6, v32

    .line 236
    .line 237
    invoke-direct/range {v1 .. v6}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    .line 238
    .line 239
    .line 240
    move-object/from16 v74, v1

    .line 241
    .line 242
    new-instance v1, Landroidx/datastore/preferences/protobuf/FieldType;

    .line 243
    .line 244
    const/16 v3, 0x10

    .line 245
    .line 246
    const/16 v4, 0x10

    .line 247
    .line 248
    const-string v2, "SINT64"

    .line 249
    .line 250
    move-object/from16 v6, v24

    .line 251
    .line 252
    invoke-direct/range {v1 .. v6}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    .line 253
    .line 254
    .line 255
    move-object/from16 v75, v1

    .line 256
    .line 257
    new-instance v1, Landroidx/datastore/preferences/protobuf/FieldType;

    .line 258
    .line 259
    const-string v2, "GROUP"

    .line 260
    .line 261
    const/16 v3, 0x11

    .line 262
    .line 263
    const/16 v4, 0x11

    .line 264
    .line 265
    move-object/from16 v6, v55

    .line 266
    .line 267
    invoke-direct/range {v1 .. v6}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    .line 268
    .line 269
    .line 270
    new-instance v6, Landroidx/datastore/preferences/protobuf/FieldType;

    .line 271
    .line 272
    sget-object v23, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->e:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    .line 273
    .line 274
    const/16 v8, 0x12

    .line 275
    .line 276
    const/16 v9, 0x12

    .line 277
    .line 278
    const-string v7, "DOUBLE_LIST"

    .line 279
    .line 280
    move-object/from16 v10, v23

    .line 281
    .line 282
    invoke-direct/range {v6 .. v11}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    .line 283
    .line 284
    .line 285
    move-object v2, v6

    .line 286
    new-instance v12, Landroidx/datastore/preferences/protobuf/FieldType;

    .line 287
    .line 288
    const/16 v14, 0x13

    .line 289
    .line 290
    const/16 v15, 0x13

    .line 291
    .line 292
    const-string v13, "FLOAT_LIST"

    .line 293
    .line 294
    move-object/from16 v16, v23

    .line 295
    .line 296
    invoke-direct/range {v12 .. v17}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    .line 297
    .line 298
    .line 299
    move-object v3, v12

    .line 300
    new-instance v19, Landroidx/datastore/preferences/protobuf/FieldType;

    .line 301
    .line 302
    const/16 v21, 0x14

    .line 303
    .line 304
    const/16 v22, 0x14

    .line 305
    .line 306
    const-string v20, "INT64_LIST"

    .line 307
    .line 308
    invoke-direct/range {v19 .. v24}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    .line 309
    .line 310
    .line 311
    move-object/from16 v4, v19

    .line 312
    .line 313
    new-instance v19, Landroidx/datastore/preferences/protobuf/FieldType;

    .line 314
    .line 315
    const/16 v21, 0x15

    .line 316
    .line 317
    const/16 v22, 0x15

    .line 318
    .line 319
    const-string v20, "UINT64_LIST"

    .line 320
    .line 321
    invoke-direct/range {v19 .. v24}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    .line 322
    .line 323
    .line 324
    move-object/from16 v5, v19

    .line 325
    .line 326
    new-instance v27, Landroidx/datastore/preferences/protobuf/FieldType;

    .line 327
    .line 328
    const/16 v29, 0x16

    .line 329
    .line 330
    const/16 v30, 0x16

    .line 331
    .line 332
    const-string v28, "INT32_LIST"

    .line 333
    .line 334
    move-object/from16 v31, v23

    .line 335
    .line 336
    invoke-direct/range {v27 .. v32}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    .line 337
    .line 338
    .line 339
    move-object/from16 v76, v27

    .line 340
    .line 341
    new-instance v19, Landroidx/datastore/preferences/protobuf/FieldType;

    .line 342
    .line 343
    const/16 v21, 0x17

    .line 344
    .line 345
    const/16 v22, 0x17

    .line 346
    .line 347
    const-string v20, "FIXED64_LIST"

    .line 348
    .line 349
    invoke-direct/range {v19 .. v24}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    .line 350
    .line 351
    .line 352
    move-object/from16 v77, v19

    .line 353
    .line 354
    new-instance v27, Landroidx/datastore/preferences/protobuf/FieldType;

    .line 355
    .line 356
    const/16 v29, 0x18

    .line 357
    .line 358
    const/16 v30, 0x18

    .line 359
    .line 360
    const-string v28, "FIXED32_LIST"

    .line 361
    .line 362
    invoke-direct/range {v27 .. v32}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    .line 363
    .line 364
    .line 365
    move-object/from16 v78, v27

    .line 366
    .line 367
    new-instance v36, Landroidx/datastore/preferences/protobuf/FieldType;

    .line 368
    .line 369
    const/16 v38, 0x19

    .line 370
    .line 371
    const/16 v39, 0x19

    .line 372
    .line 373
    const-string v37, "BOOL_LIST"

    .line 374
    .line 375
    move-object/from16 v40, v23

    .line 376
    .line 377
    invoke-direct/range {v36 .. v41}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    .line 378
    .line 379
    .line 380
    move-object/from16 v79, v36

    .line 381
    .line 382
    new-instance v43, Landroidx/datastore/preferences/protobuf/FieldType;

    .line 383
    .line 384
    const/16 v45, 0x1a

    .line 385
    .line 386
    const/16 v46, 0x1a

    .line 387
    .line 388
    const-string v44, "STRING_LIST"

    .line 389
    .line 390
    move-object/from16 v47, v23

    .line 391
    .line 392
    invoke-direct/range {v43 .. v48}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    .line 393
    .line 394
    .line 395
    new-instance v50, Landroidx/datastore/preferences/protobuf/FieldType;

    .line 396
    .line 397
    const-string v51, "MESSAGE_LIST"

    .line 398
    .line 399
    const/16 v52, 0x1b

    .line 400
    .line 401
    const/16 v53, 0x1b

    .line 402
    .line 403
    move-object/from16 v54, v23

    .line 404
    .line 405
    invoke-direct/range {v50 .. v55}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    .line 406
    .line 407
    .line 408
    move-object/from16 v44, v50

    .line 409
    .line 410
    new-instance v57, Landroidx/datastore/preferences/protobuf/FieldType;

    .line 411
    .line 412
    const-string v58, "BYTES_LIST"

    .line 413
    .line 414
    const/16 v59, 0x1c

    .line 415
    .line 416
    const/16 v60, 0x1c

    .line 417
    .line 418
    move-object/from16 v61, v23

    .line 419
    .line 420
    invoke-direct/range {v57 .. v62}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    .line 421
    .line 422
    .line 423
    new-instance v27, Landroidx/datastore/preferences/protobuf/FieldType;

    .line 424
    .line 425
    const/16 v29, 0x1d

    .line 426
    .line 427
    const/16 v30, 0x1d

    .line 428
    .line 429
    const-string v28, "UINT32_LIST"

    .line 430
    .line 431
    invoke-direct/range {v27 .. v32}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    .line 432
    .line 433
    .line 434
    move-object/from16 v45, v27

    .line 435
    .line 436
    new-instance v65, Landroidx/datastore/preferences/protobuf/FieldType;

    .line 437
    .line 438
    const-string v66, "ENUM_LIST"

    .line 439
    .line 440
    const/16 v67, 0x1e

    .line 441
    .line 442
    const/16 v68, 0x1e

    .line 443
    .line 444
    move-object/from16 v69, v23

    .line 445
    .line 446
    invoke-direct/range {v65 .. v70}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    .line 447
    .line 448
    .line 449
    move-object/from16 v46, v65

    .line 450
    .line 451
    new-instance v27, Landroidx/datastore/preferences/protobuf/FieldType;

    .line 452
    .line 453
    const/16 v29, 0x1f

    .line 454
    .line 455
    const/16 v30, 0x1f

    .line 456
    .line 457
    const-string v28, "SFIXED32_LIST"

    .line 458
    .line 459
    invoke-direct/range {v27 .. v32}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    .line 460
    .line 461
    .line 462
    move-object/from16 v47, v27

    .line 463
    .line 464
    new-instance v19, Landroidx/datastore/preferences/protobuf/FieldType;

    .line 465
    .line 466
    const/16 v21, 0x20

    .line 467
    .line 468
    const/16 v22, 0x20

    .line 469
    .line 470
    const-string v20, "SFIXED64_LIST"

    .line 471
    .line 472
    invoke-direct/range {v19 .. v24}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    .line 473
    .line 474
    .line 475
    move-object/from16 v48, v19

    .line 476
    .line 477
    new-instance v27, Landroidx/datastore/preferences/protobuf/FieldType;

    .line 478
    .line 479
    const/16 v29, 0x21

    .line 480
    .line 481
    const/16 v30, 0x21

    .line 482
    .line 483
    const-string v28, "SINT32_LIST"

    .line 484
    .line 485
    invoke-direct/range {v27 .. v32}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    .line 486
    .line 487
    .line 488
    move-object/from16 v58, v27

    .line 489
    .line 490
    new-instance v19, Landroidx/datastore/preferences/protobuf/FieldType;

    .line 491
    .line 492
    const/16 v21, 0x22

    .line 493
    .line 494
    const/16 v22, 0x22

    .line 495
    .line 496
    const-string v20, "SINT64_LIST"

    .line 497
    .line 498
    invoke-direct/range {v19 .. v24}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    .line 499
    .line 500
    .line 501
    move-object/from16 v59, v19

    .line 502
    .line 503
    new-instance v6, Landroidx/datastore/preferences/protobuf/FieldType;

    .line 504
    .line 505
    sget-object v23, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->f:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    .line 506
    .line 507
    const/16 v8, 0x23

    .line 508
    .line 509
    const/16 v9, 0x23

    .line 510
    .line 511
    const-string v7, "DOUBLE_LIST_PACKED"

    .line 512
    .line 513
    move-object/from16 v10, v23

    .line 514
    .line 515
    invoke-direct/range {v6 .. v11}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    .line 516
    .line 517
    .line 518
    sput-object v6, Landroidx/datastore/preferences/protobuf/FieldType;->e:Landroidx/datastore/preferences/protobuf/FieldType;

    .line 519
    .line 520
    new-instance v12, Landroidx/datastore/preferences/protobuf/FieldType;

    .line 521
    .line 522
    const/16 v14, 0x24

    .line 523
    .line 524
    const/16 v15, 0x24

    .line 525
    .line 526
    const-string v13, "FLOAT_LIST_PACKED"

    .line 527
    .line 528
    move-object/from16 v16, v23

    .line 529
    .line 530
    invoke-direct/range {v12 .. v17}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    .line 531
    .line 532
    .line 533
    new-instance v19, Landroidx/datastore/preferences/protobuf/FieldType;

    .line 534
    .line 535
    const/16 v21, 0x25

    .line 536
    .line 537
    const/16 v22, 0x25

    .line 538
    .line 539
    const-string v20, "INT64_LIST_PACKED"

    .line 540
    .line 541
    invoke-direct/range {v19 .. v24}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    .line 542
    .line 543
    .line 544
    move-object/from16 v7, v19

    .line 545
    .line 546
    new-instance v19, Landroidx/datastore/preferences/protobuf/FieldType;

    .line 547
    .line 548
    const/16 v21, 0x26

    .line 549
    .line 550
    const/16 v22, 0x26

    .line 551
    .line 552
    const-string v20, "UINT64_LIST_PACKED"

    .line 553
    .line 554
    invoke-direct/range {v19 .. v24}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    .line 555
    .line 556
    .line 557
    move-object/from16 v8, v19

    .line 558
    .line 559
    new-instance v27, Landroidx/datastore/preferences/protobuf/FieldType;

    .line 560
    .line 561
    const/16 v29, 0x27

    .line 562
    .line 563
    const/16 v30, 0x27

    .line 564
    .line 565
    const-string v28, "INT32_LIST_PACKED"

    .line 566
    .line 567
    move-object/from16 v31, v23

    .line 568
    .line 569
    invoke-direct/range {v27 .. v32}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    .line 570
    .line 571
    .line 572
    move-object/from16 v9, v27

    .line 573
    .line 574
    new-instance v19, Landroidx/datastore/preferences/protobuf/FieldType;

    .line 575
    .line 576
    const/16 v21, 0x28

    .line 577
    .line 578
    const/16 v22, 0x28

    .line 579
    .line 580
    const-string v20, "FIXED64_LIST_PACKED"

    .line 581
    .line 582
    invoke-direct/range {v19 .. v24}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    .line 583
    .line 584
    .line 585
    move-object/from16 v10, v19

    .line 586
    .line 587
    new-instance v27, Landroidx/datastore/preferences/protobuf/FieldType;

    .line 588
    .line 589
    const/16 v29, 0x29

    .line 590
    .line 591
    const/16 v30, 0x29

    .line 592
    .line 593
    const-string v28, "FIXED32_LIST_PACKED"

    .line 594
    .line 595
    invoke-direct/range {v27 .. v32}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    .line 596
    .line 597
    .line 598
    move-object/from16 v11, v27

    .line 599
    .line 600
    new-instance v36, Landroidx/datastore/preferences/protobuf/FieldType;

    .line 601
    .line 602
    const/16 v38, 0x2a

    .line 603
    .line 604
    const/16 v39, 0x2a

    .line 605
    .line 606
    const-string v37, "BOOL_LIST_PACKED"

    .line 607
    .line 608
    move-object/from16 v40, v23

    .line 609
    .line 610
    invoke-direct/range {v36 .. v41}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    .line 611
    .line 612
    .line 613
    new-instance v27, Landroidx/datastore/preferences/protobuf/FieldType;

    .line 614
    .line 615
    const/16 v29, 0x2b

    .line 616
    .line 617
    const/16 v30, 0x2b

    .line 618
    .line 619
    const-string v28, "UINT32_LIST_PACKED"

    .line 620
    .line 621
    invoke-direct/range {v27 .. v32}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    .line 622
    .line 623
    .line 624
    move-object/from16 v13, v27

    .line 625
    .line 626
    new-instance v65, Landroidx/datastore/preferences/protobuf/FieldType;

    .line 627
    .line 628
    const-string v66, "ENUM_LIST_PACKED"

    .line 629
    .line 630
    const/16 v67, 0x2c

    .line 631
    .line 632
    const/16 v68, 0x2c

    .line 633
    .line 634
    move-object/from16 v69, v23

    .line 635
    .line 636
    invoke-direct/range {v65 .. v70}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    .line 637
    .line 638
    .line 639
    new-instance v27, Landroidx/datastore/preferences/protobuf/FieldType;

    .line 640
    .line 641
    const/16 v29, 0x2d

    .line 642
    .line 643
    const/16 v30, 0x2d

    .line 644
    .line 645
    const-string v28, "SFIXED32_LIST_PACKED"

    .line 646
    .line 647
    invoke-direct/range {v27 .. v32}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    .line 648
    .line 649
    .line 650
    move-object/from16 v14, v27

    .line 651
    .line 652
    new-instance v19, Landroidx/datastore/preferences/protobuf/FieldType;

    .line 653
    .line 654
    const/16 v21, 0x2e

    .line 655
    .line 656
    const/16 v22, 0x2e

    .line 657
    .line 658
    const-string v20, "SFIXED64_LIST_PACKED"

    .line 659
    .line 660
    invoke-direct/range {v19 .. v24}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    .line 661
    .line 662
    .line 663
    move-object/from16 v15, v19

    .line 664
    .line 665
    new-instance v27, Landroidx/datastore/preferences/protobuf/FieldType;

    .line 666
    .line 667
    const/16 v29, 0x2f

    .line 668
    .line 669
    const/16 v30, 0x2f

    .line 670
    .line 671
    const-string v28, "SINT32_LIST_PACKED"

    .line 672
    .line 673
    invoke-direct/range {v27 .. v32}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    .line 674
    .line 675
    .line 676
    new-instance v19, Landroidx/datastore/preferences/protobuf/FieldType;

    .line 677
    .line 678
    const/16 v21, 0x30

    .line 679
    .line 680
    const/16 v22, 0x30

    .line 681
    .line 682
    const-string v20, "SINT64_LIST_PACKED"

    .line 683
    .line 684
    invoke-direct/range {v19 .. v24}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    .line 685
    .line 686
    .line 687
    sput-object v19, Landroidx/datastore/preferences/protobuf/FieldType;->f:Landroidx/datastore/preferences/protobuf/FieldType;

    .line 688
    .line 689
    new-instance v50, Landroidx/datastore/preferences/protobuf/FieldType;

    .line 690
    .line 691
    const-string v51, "GROUP_LIST"

    .line 692
    .line 693
    const/16 v52, 0x31

    .line 694
    .line 695
    const/16 v53, 0x31

    .line 696
    .line 697
    invoke-direct/range {v50 .. v55}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    .line 698
    .line 699
    .line 700
    new-instance v80, Landroidx/datastore/preferences/protobuf/FieldType;

    .line 701
    .line 702
    sget-object v84, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->j:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    .line 703
    .line 704
    sget-object v85, Landroidx/datastore/preferences/protobuf/JavaType;->f:Landroidx/datastore/preferences/protobuf/JavaType;

    .line 705
    .line 706
    const/16 v82, 0x32

    .line 707
    .line 708
    const/16 v83, 0x32

    .line 709
    .line 710
    const-string v81, "MAP"

    .line 711
    .line 712
    invoke-direct/range {v80 .. v85}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    .line 713
    .line 714
    .line 715
    move-object/from16 v16, v0

    .line 716
    .line 717
    const/16 v0, 0x33

    .line 718
    .line 719
    new-array v0, v0, [Landroidx/datastore/preferences/protobuf/FieldType;

    .line 720
    .line 721
    const/16 v17, 0x0

    .line 722
    .line 723
    aput-object v16, v0, v17

    .line 724
    .line 725
    const/16 v16, 0x1

    .line 726
    .line 727
    aput-object v18, v0, v16

    .line 728
    .line 729
    const/16 v18, 0x2

    .line 730
    .line 731
    aput-object v25, v0, v18

    .line 732
    .line 733
    const/16 v18, 0x3

    .line 734
    .line 735
    aput-object v26, v0, v18

    .line 736
    .line 737
    const/16 v18, 0x4

    .line 738
    .line 739
    aput-object v33, v0, v18

    .line 740
    .line 741
    const/16 v18, 0x5

    .line 742
    .line 743
    aput-object v34, v0, v18

    .line 744
    .line 745
    const/16 v18, 0x6

    .line 746
    .line 747
    aput-object v35, v0, v18

    .line 748
    .line 749
    const/16 v18, 0x7

    .line 750
    .line 751
    aput-object v42, v0, v18

    .line 752
    .line 753
    const/16 v18, 0x8

    .line 754
    .line 755
    aput-object v49, v0, v18

    .line 756
    .line 757
    const/16 v18, 0x9

    .line 758
    .line 759
    aput-object v56, v0, v18

    .line 760
    .line 761
    const/16 v18, 0xa

    .line 762
    .line 763
    aput-object v63, v0, v18

    .line 764
    .line 765
    const/16 v18, 0xb

    .line 766
    .line 767
    aput-object v64, v0, v18

    .line 768
    .line 769
    const/16 v18, 0xc

    .line 770
    .line 771
    aput-object v71, v0, v18

    .line 772
    .line 773
    const/16 v18, 0xd

    .line 774
    .line 775
    aput-object v72, v0, v18

    .line 776
    .line 777
    const/16 v18, 0xe

    .line 778
    .line 779
    aput-object v73, v0, v18

    .line 780
    .line 781
    const/16 v18, 0xf

    .line 782
    .line 783
    aput-object v74, v0, v18

    .line 784
    .line 785
    const/16 v18, 0x10

    .line 786
    .line 787
    aput-object v75, v0, v18

    .line 788
    .line 789
    const/16 v18, 0x11

    .line 790
    .line 791
    aput-object v1, v0, v18

    .line 792
    .line 793
    const/16 v1, 0x12

    .line 794
    .line 795
    aput-object v2, v0, v1

    .line 796
    .line 797
    const/16 v1, 0x13

    .line 798
    .line 799
    aput-object v3, v0, v1

    .line 800
    .line 801
    const/16 v1, 0x14

    .line 802
    .line 803
    aput-object v4, v0, v1

    .line 804
    .line 805
    const/16 v1, 0x15

    .line 806
    .line 807
    aput-object v5, v0, v1

    .line 808
    .line 809
    const/16 v1, 0x16

    .line 810
    .line 811
    aput-object v76, v0, v1

    .line 812
    .line 813
    const/16 v1, 0x17

    .line 814
    .line 815
    aput-object v77, v0, v1

    .line 816
    .line 817
    const/16 v1, 0x18

    .line 818
    .line 819
    aput-object v78, v0, v1

    .line 820
    .line 821
    const/16 v1, 0x19

    .line 822
    .line 823
    aput-object v79, v0, v1

    .line 824
    .line 825
    const/16 v1, 0x1a

    .line 826
    .line 827
    aput-object v43, v0, v1

    .line 828
    .line 829
    const/16 v1, 0x1b

    .line 830
    .line 831
    aput-object v44, v0, v1

    .line 832
    .line 833
    const/16 v1, 0x1c

    .line 834
    .line 835
    aput-object v57, v0, v1

    .line 836
    .line 837
    const/16 v1, 0x1d

    .line 838
    .line 839
    aput-object v45, v0, v1

    .line 840
    .line 841
    const/16 v1, 0x1e

    .line 842
    .line 843
    aput-object v46, v0, v1

    .line 844
    .line 845
    const/16 v1, 0x1f

    .line 846
    .line 847
    aput-object v47, v0, v1

    .line 848
    .line 849
    const/16 v1, 0x20

    .line 850
    .line 851
    aput-object v48, v0, v1

    .line 852
    .line 853
    const/16 v1, 0x21

    .line 854
    .line 855
    aput-object v58, v0, v1

    .line 856
    .line 857
    const/16 v1, 0x22

    .line 858
    .line 859
    aput-object v59, v0, v1

    .line 860
    .line 861
    const/16 v1, 0x23

    .line 862
    .line 863
    aput-object v6, v0, v1

    .line 864
    .line 865
    const/16 v1, 0x24

    .line 866
    .line 867
    aput-object v12, v0, v1

    .line 868
    .line 869
    const/16 v1, 0x25

    .line 870
    .line 871
    aput-object v7, v0, v1

    .line 872
    .line 873
    const/16 v1, 0x26

    .line 874
    .line 875
    aput-object v8, v0, v1

    .line 876
    .line 877
    const/16 v1, 0x27

    .line 878
    .line 879
    aput-object v9, v0, v1

    .line 880
    .line 881
    const/16 v1, 0x28

    .line 882
    .line 883
    aput-object v10, v0, v1

    .line 884
    .line 885
    const/16 v1, 0x29

    .line 886
    .line 887
    aput-object v11, v0, v1

    .line 888
    .line 889
    const/16 v1, 0x2a

    .line 890
    .line 891
    aput-object v36, v0, v1

    .line 892
    .line 893
    const/16 v1, 0x2b

    .line 894
    .line 895
    aput-object v13, v0, v1

    .line 896
    .line 897
    const/16 v1, 0x2c

    .line 898
    .line 899
    aput-object v65, v0, v1

    .line 900
    .line 901
    const/16 v1, 0x2d

    .line 902
    .line 903
    aput-object v14, v0, v1

    .line 904
    .line 905
    const/16 v1, 0x2e

    .line 906
    .line 907
    aput-object v15, v0, v1

    .line 908
    .line 909
    const/16 v1, 0x2f

    .line 910
    .line 911
    aput-object v27, v0, v1

    .line 912
    .line 913
    const/16 v1, 0x30

    .line 914
    .line 915
    aput-object v19, v0, v1

    .line 916
    .line 917
    const/16 v1, 0x31

    .line 918
    .line 919
    aput-object v50, v0, v1

    .line 920
    .line 921
    const/16 v1, 0x32

    .line 922
    .line 923
    aput-object v80, v0, v1

    .line 924
    .line 925
    sput-object v0, Landroidx/datastore/preferences/protobuf/FieldType;->m:[Landroidx/datastore/preferences/protobuf/FieldType;

    .line 926
    .line 927
    invoke-static {}, Landroidx/datastore/preferences/protobuf/FieldType;->values()[Landroidx/datastore/preferences/protobuf/FieldType;

    .line 928
    .line 929
    .line 930
    move-result-object v0

    .line 931
    array-length v1, v0

    .line 932
    new-array v1, v1, [Landroidx/datastore/preferences/protobuf/FieldType;

    .line 933
    .line 934
    sput-object v1, Landroidx/datastore/preferences/protobuf/FieldType;->j:[Landroidx/datastore/preferences/protobuf/FieldType;

    .line 935
    .line 936
    array-length v1, v0

    .line 937
    move/from16 v2, v17

    .line 938
    .line 939
    :goto_0
    if-ge v2, v1, :cond_0

    .line 940
    .line 941
    aget-object v3, v0, v2

    .line 942
    .line 943
    sget-object v4, Landroidx/datastore/preferences/protobuf/FieldType;->j:[Landroidx/datastore/preferences/protobuf/FieldType;

    .line 944
    .line 945
    iget v5, v3, Landroidx/datastore/preferences/protobuf/FieldType;->b:I

    .line 946
    .line 947
    aput-object v3, v4, v5

    .line 948
    .line 949
    add-int/lit8 v2, v2, 0x1

    .line 950
    .line 951
    goto :goto_0

    .line 952
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Landroidx/datastore/preferences/protobuf/FieldType;->b:I

    .line 5
    .line 6
    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    const/4 p2, 0x1

    .line 11
    if-eq p1, p2, :cond_1

    .line 12
    .line 13
    const/4 p2, 0x3

    .line 14
    if-eq p1, p2, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p5}, Landroidx/datastore/preferences/protobuf/JavaType;->getBoxedType()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    invoke-virtual {p5}, Landroidx/datastore/preferences/protobuf/JavaType;->getBoxedType()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    :goto_0
    sget-object p1, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->b:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    .line 25
    .line 26
    if-ne p4, p1, :cond_2

    .line 27
    .line 28
    invoke-virtual {p5}, Ljava/lang/Enum;->ordinal()I

    .line 29
    .line 30
    .line 31
    :cond_2
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/datastore/preferences/protobuf/FieldType;
    .locals 1

    .line 1
    const-class v0, Landroidx/datastore/preferences/protobuf/FieldType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroidx/datastore/preferences/protobuf/FieldType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Landroidx/datastore/preferences/protobuf/FieldType;
    .locals 1

    .line 1
    sget-object v0, Landroidx/datastore/preferences/protobuf/FieldType;->m:[Landroidx/datastore/preferences/protobuf/FieldType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Landroidx/datastore/preferences/protobuf/FieldType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Landroidx/datastore/preferences/protobuf/FieldType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public id()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/FieldType;->b:I

    .line 2
    .line 3
    return v0
.end method
